import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
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
    await service.saveMealPlan(mealPlan.toJson());
  }

  Future<void> deleteMealPlan(String id) async {
    final service = ref.read(firestoreServiceProvider);
    await service.deleteMealPlan(id);
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


    if (ingredientMap.isEmpty) {
      return 0;
    }

    // Add all items to the current list
    final itemsNotifier = ref.read(
      shoppingListItemsProvider(currentListId).notifier,
    );

    for (final item in ingredientMap.values) {
      await itemsNotifier.addItem(
        listId: currentListId,
        name: item.name,
        quantity: item.quantity,
        categoryId: item.categoryId,
        unit: item.unit,
        estimatedPrice: item.estimatedPrice,
      );
    }

    return ingredientMap.length;
  }
}
