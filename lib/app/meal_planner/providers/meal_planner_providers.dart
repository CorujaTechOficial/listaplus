import 'dart:async';
import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_plan_cost_calculator.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_plan_cost_models.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';
import 'package:shopping_list/app/recipes/providers/recipes_providers.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/models/meal_type.dart';
import 'package:shopping_list/models/recipe.dart';
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

    _subscription = service
        .watchMealPlans(start: start, end: end)
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
            LoggerService.error(
              e,
              stackTrace: s,
              message: 'MealPlansProvider: erro na stream',
            );
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
        LoggerService.log(
          'MealPlansProvider: timeout no carregamento inicial',
          tag: 'MealPlans',
        );
        throw TimeoutException(
          'O servidor demorou muito para responder. Verifique sua conexão.',
        );
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

  Future<void> moveMealPlan(
    String id,
    DateTime newDate,
    String newType,
  ) async {
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
        final key =
            '${ingredient.name.toLowerCase().trim()}_${ingredient.unit.name}';
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
        (pi) =>
            pi.name.toLowerCase().trim() == item.name.toLowerCase().trim() &&
            pi.unit == item.unit,
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

@riverpod
class MealTypes extends _$MealTypes {
  StreamSubscription<List<MealType>>? _subscription;

  @override
  Future<List<MealType>> build() async {
    final service = ref.watch(firestoreServiceProvider);
    if (service == null) return MealType.defaults;

    unawaited(_subscription?.cancel());
    final completer = Completer<List<MealType>>();

    _subscription = service.watchMealTypes().listen(
      (data) {
        if (!completer.isCompleted) {
          completer.complete(data);
        } else {
          state = AsyncValue.data(data);
        }
      },
      onError: (Object e, StackTrace s) {
        if (!completer.isCompleted) {
          completer.completeError(e, s);
        } else {
          state = AsyncValue.error(e, s);
        }
      },
    );

    ref.onDispose(() => _subscription?.cancel());
    return completer.future;
  }

  Future<void> saveMealType(MealType type) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) return;
    await service.saveMealType(type);
  }

  Future<void> deleteMealType(String id) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) return;
    await service.deleteMealType(id);
  }

  Future<void> saveMealTypes(List<MealType> types) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) return;
    await service.saveMealTypes(types);
  }
}

@riverpod
List<MealType> activeMealTypes(Ref ref) {
  final all = ref.watch(mealTypesProvider).value ?? MealType.defaults;
  return all.where((t) => !t.isDeleted).toList()
    ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
}

@riverpod
Future<RecipeCostDetails?> recipeCostDetails(Ref ref, String recipeId) async {
  final recipes = await ref.watch(recipesProvider.future);
  final recipe = recipes.firstWhereOrNull((item) => item.id == recipeId);

  if (recipe == null) {
    return null;
  }

  return calculateRecipeCostDetails(recipe);
}

@riverpod
Future<Map<DateTime, DayMealCostData>> mealPlannerDayCostMap(
  Ref ref, {
  required DateTime start,
  required DateTime end,
}) async {
  final plans = await ref.watch(mealPlansProvider(start: start, end: end).future);
  final recipes = await ref.watch(recipesProvider.future);
  final recipeById = <String, Recipe>{
    for (final recipe in recipes) recipe.id: recipe,
  };
  final buckets = <DateTime, List<MealPlan>>{};

  for (final plan in plans) {
    final dayKey = _normalizeMealPlanDate(plan.date);
    buckets.putIfAbsent(dayKey, () => <MealPlan>[]).add(plan);
  }

  return buckets.map((date, dayPlans) {
    double totalCost = 0;
    bool hasPartialPricing = false;

    for (final plan in dayPlans) {
      final recipe = recipeById[plan.recipeId];
      if (recipe == null) {
        hasPartialPricing = true;
        continue;
      }

      final details = calculateRecipeCostDetails(recipe);
      totalCost += calculatePlannedMealCost(recipe: recipe, mealPlan: plan);
      hasPartialPricing = hasPartialPricing || details.hasPartialPricing;
    }

    return MapEntry(
      date,
      DayMealCostData(
        date: date,
        totalCost: totalCost,
        mealCount: dayPlans.length,
        hasPartialPricing: hasPartialPricing,
      ),
    );
  });
}

@riverpod
Future<MealPlannerSummaryData> mealPlannerSummary(
  Ref ref, {
  required DateTime weekStart,
  required DateTime weekEnd,
  required DateTime monthStart,
  required DateTime monthEnd,
  required DateTime focusedDay,
}) async {
  final weekMap = await ref.watch(
    mealPlannerDayCostMapProvider(start: weekStart, end: weekEnd).future,
  );
  final monthMap = await ref.watch(
    mealPlannerDayCostMapProvider(start: monthStart, end: monthEnd).future,
  );
  final normalizedFocusedDay = _normalizeMealPlanDate(focusedDay);
  final weekCost = weekMap.values.fold<double>(
    0,
    (sum, day) => sum + day.totalCost,
  );
  final plannedMonthCost = monthMap.values.fold<double>(
    0,
    (sum, day) => sum + day.totalCost,
  );
  final daysInMonth = DateTime(monthStart.year, monthStart.month + 1, 0).day;
  final projectedMonthCost = (weekCost / 7) * daysInMonth;

  return MealPlannerSummaryData(
    todayCost: weekMap[normalizedFocusedDay]?.totalCost ?? 0,
    weekCost: weekCost,
    plannedMonthCost: plannedMonthCost,
    projectedMonthCost: projectedMonthCost,
    weekHasPartialPricing: weekMap.values.any((day) => day.hasPartialPricing),
    monthHasPartialPricing: monthMap.values.any((day) => day.hasPartialPricing),
  );
}

DateTime _normalizeMealPlanDate(DateTime date) {
  return DateTime(date.year, date.month, date.day);
}
