import 'dart:async';
import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';
import 'package:shopping_list/app/recipes/providers/recipes_providers.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/services/logger_service.dart';

part 'meal_planner_providers.g.dart';

@riverpod
class MealPlans extends _$MealPlans {
  StreamSubscription<List<MealPlan>>? _subscription;

  @override
  Future<List<MealPlan>> build({DateTime? start, DateTime? end}) async {
    final service = ref.watch(firestoreServiceProvider);
    if (service == null) return [];

    unawaited(_subscription?.cancel());

    final completer = Completer<List<MealPlan>>();

    _subscription = service.watchMealPlans(start: start, end: end)
        .map((list) => list.map(MealPlan.fromJson).toList())
        .listen(
      (data) {
        if (!completer.isCompleted) {
          completer.complete(data);
        } else {
          state = AsyncValue.data(data);
        }
      },
      onError: (Object e, StackTrace s) {
        LoggerService.error(e, stackTrace: s, message: 'MealPlansProvider: erro na stream');
        if (!completer.isCompleted) {
          completer.completeError(e, s);
        } else {
          state = AsyncValue.error(e, s);
        }
      },
    );

    ref.onDispose(() => _subscription?.cancel());

    return completer.future.timeout(
      const Duration(seconds: 15),
      onTimeout: () {
        LoggerService.log('MealPlansProvider: timeout no carregamento inicial', tag: 'MealPlans');
        throw TimeoutException('O servidor demorou muito para responder. Verifique sua conexão.');
      },
    );
  }

  Future<void> saveMealPlan(MealPlan mealPlan) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) return;
    await service.saveMealPlan(mealPlan.toJson());
  }

  Future<void> deleteMealPlan(String id) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) return;
    await service.deleteMealPlan(id);
  }

  Future<void> moveMealPlan(String id, DateTime newDate, MealType newType) async {
    final plans = state.value ?? [];
    final existing = plans.firstWhere((p) => p.id == id);
    final updated = existing.copyWith(date: newDate, mealType: newType);
    await saveMealPlan(updated);
  }

  /// Generates a shopping list from all recipes planned this week.
  /// Returns the number of items added to the list.
  /// Throws [Exception] if no active list is found.
  Future<int> generateShoppingListFromWeek() async {
    final plans = state.value ?? [];
    if (plans.isEmpty) {
      return 0;
    }

    // Get the current list ID
    final currentListId = await ref.read(currentListIdProvider.future);
    if (currentListId == null) {
      throw Exception('no_list');
    }

    // Load all recipes to find ingredients
    final recipes = await ref.read(recipesProvider.future);

    // Load pantry items to check availability
    final pantryItems = await ref.read(pantryItemsProvider.future);

    // Build a deduplicated ingredient list
    final ingredientMap = <String, ShoppingItem>{};

    for (final plan in plans) {
      final recipe = recipes.where((r) => r.id == plan.recipeId).firstOrNull;
      if (recipe == null) {
        continue;
      }

      for (final ingredient in recipe.ingredients) {
        final key = '${ingredient.name.toLowerCase().trim()}_${ingredient.unit.name}';
        final scaledQty = (ingredient.quantity > 0
                ? ingredient.quantity * plan.servings
                : plan.servings)
            .clamp(1, 9999);
        if (ingredientMap.containsKey(key)) {
          // Sum quantities for same ingredient+unit
          final existing = ingredientMap[key]!;
          ingredientMap[key] = ShoppingItem(
            shoppingListId: currentListId,
            name: existing.name,
            quantity: existing.quantity + scaledQty,
            categoryId: existing.categoryId,
            unit: existing.unit,
            estimatedPrice: existing.estimatedPrice,
          );
        } else {
          ingredientMap[key] = ShoppingItem(
            shoppingListId: currentListId,
            name: ingredient.name,
            quantity: scaledQty,
            categoryId: ingredient.categoryId,
            unit: ingredient.unit,
            estimatedPrice: ingredient.estimatedPrice,
          );
        }
      }
    }

    // Smart Logic: Subtract available quantities from pantry
    final filteredIngredientMap = <String, ShoppingItem>{};
    for (final entry in ingredientMap.entries) {
      final item = entry.value;
      
      // Find matching item in pantry (same name and unit)
      final inPantry = pantryItems.firstWhereOrNull(
        (pi) => pi.name.toLowerCase().trim() == item.name.toLowerCase().trim() && 
                pi.unit == item.unit
      );

      if (inPantry != null) {
        final availableQty = inPantry.currentQuantity;
        final neededQty = (item.quantity - availableQty).clamp(0, 9999).toInt();
        
        if (neededQty > 0) {
          filteredIngredientMap[entry.key] = item.copyWith(quantity: neededQty);
        }
      } else {
        filteredIngredientMap[entry.key] = item;
      }
    }

    if (filteredIngredientMap.isEmpty) {
      return 0;
    }

    // Add all items to the current list
    final itemsNotifier = ref.read(
      shoppingListItemsProvider(currentListId).notifier,
    );

    for (final item in filteredIngredientMap.values) {
      await itemsNotifier.addItem(
        listId: currentListId,
        name: item.name,
        quantity: item.quantity,
        categoryId: item.categoryId,
        unit: item.unit,
        estimatedPrice: item.estimatedPrice,
      );
    }

    return filteredIngredientMap.length;
  }
}
