# Meal Planner Cost Forecast Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add recipe yield and cost estimation so the meal planner can show daily, weekly, planned-month, and projected-month spending forecasts without turning the app into a finance dashboard.

**Architecture:** Extend `Recipe` with additive persisted fields (`yieldServings`, `manualTotalCost`), then centralize cost math in focused meal-planner helper models/providers so UI widgets consume prepared summary data instead of reimplementing calculations. Update recipe editing and detail surfaces to expose the new metadata, then upgrade planner summary and day cards to present calm, localized cost forecasts.

**Tech Stack:** Flutter Material 3, Riverpod 3 with codegen, Firestore-backed `StorageBackend`, Flutter l10n ARB pipeline, Flutter test, Mocktail

## Global Constraints

- Keep Firestore schema changes additive and backward-compatible; do not add new collections for budgeting analytics.
- Every user-visible string must be added to `lib/l10n/app_en.arb`, translated with `scripts/translate_missing.py`, reviewed with `scripts/review_translations.py`, and regenerated with `flutter gen-l10n`.
- After any `@riverpod` provider edits, run `dart run build_runner build --delete-conflicting-outputs`.
- Use existing design tokens from `theme/tokens.dart` and `Theme.of(context).colorScheme`; no raw layout dimensions or raw colors in new UI.
- Preserve the calm product register: no finance-style charts, no nested cards, no heavy dashboard language.
- Treat all monetary values as estimates; missing data must produce explicit partial-estimate messaging instead of fabricated precision.
- Maintain strict typing and analyzer cleanliness under the repo's strict lint rules.

---

## File Structure

| File | Responsibility |
|---|---|
| `lib/models/recipe.dart` | Persist new recipe yield/manual-cost fields and expose serialization-safe defaults |
| `test/models/recipe_test.dart` | Cover model defaults, `copyWith`, and JSON round-trips for new fields |
| `lib/app/meal_planner/providers/meal_plan_cost_models.dart` | New focused value objects for recipe cost details and planner summary aggregates |
| `lib/app/meal_planner/providers/meal_plan_cost_calculator.dart` | New pure helper functions for automatic/manual cost math and partial-data status |
| `test/app/meal_planner/providers/meal_plan_cost_calculator_test.dart` | Unit tests for cost math edge cases |
| `lib/app/meal_planner/providers/meal_planner_providers.dart` | Expose derived cost summaries for day/week/month/projected month and per-day planner data |
| `test/app/meal_planner/providers/meal_planner_providers_test.dart` | Verify provider-level cost aggregation and projection behavior |
| `lib/app/recipes/widgets/add_recipe_dialog.dart` | Add yield/manual-cost inputs and helper copy |
| `lib/app/recipes/screens/recipe_detail_screen.dart` | Show recipe cost/yield summary metadata |
| `test/app/recipes/widgets/add_recipe_dialog_test.dart` | Validate new inputs, save payload, and helper copy |
| `test/app/recipes/screens/recipe_detail_screen_test.dart` | Verify cost/yield summary rendering and partial states |
| `lib/app/meal_planner/widgets/weekly_summary_bar.dart` | Replace progress-only summary with estimate summary tiles |
| `lib/app/meal_planner/widgets/meal_day_card.dart` | Show per-day estimated cost and subtle high/low indicators |
| `lib/app/meal_planner/screens/meal_planner_screen.dart` | Wire derived summary models into weekly/monthly views |
| `test/app/meal_planner/screens/meal_planner_screen_test.dart` | Verify planner summary/day-card presentation |
| `lib/l10n/app_en.arb` | Source-of-truth strings for recipe cost and planner estimate copy |

## Task 1: Extend Recipe Persistence for Yield and Manual Cost

**Files:**
- Create: `test/models/recipe_test.dart`
- Modify: `lib/models/recipe.dart`

**Interfaces:**
- Consumes: `ShoppingItem.estimatedPrice`, existing `Recipe.fromJson`, `Recipe.toJson`, `Recipe.copyWith`
- Produces: `Recipe.yieldServings`, `Recipe.manualTotalCost`, JSON keys `yieldServings`, `manualTotalCost`

- [ ] **Step 1: Write the failing model tests**

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/models/shopping_item.dart';

void main() {
  test('Recipe defaults yieldServings to 1 and manualTotalCost to null', () {
    final recipe = Recipe(
      name: 'Rice',
      description: 'Basic rice',
      ingredients: <ShoppingItem>[],
      instructions: const <String>['Cook'],
    );

    expect(recipe.yieldServings, 1);
    expect(recipe.manualTotalCost, isNull);
  });

  test('Recipe serializes and deserializes yieldServings and manualTotalCost', () {
    final recipe = Recipe(
      id: 'r1',
      name: 'Soup',
      description: 'Hot soup',
      ingredients: <ShoppingItem>[],
      instructions: const <String>['Boil'],
      yieldServings: 4,
      manualTotalCost: 32.5,
    );

    final decoded = Recipe.fromJson(recipe.toJson());

    expect(decoded.yieldServings, 4);
    expect(decoded.manualTotalCost, 32.5);
  });

  test('Recipe copyWith updates yieldServings and clears manualTotalCost', () {
    final recipe = Recipe(
      name: 'Cake',
      description: 'Dessert',
      ingredients: <ShoppingItem>[],
      instructions: const <String>['Bake'],
      yieldServings: 8,
      manualTotalCost: 24,
    );

    final updated = recipe.copyWith(
      yieldServings: 6,
      manualTotalCost: null,
    );

    expect(updated.yieldServings, 6);
    expect(updated.manualTotalCost, isNull);
  });
}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `flutter test test/models/recipe_test.dart`
Expected: FAIL with missing `yieldServings` / `manualTotalCost` members or incorrect `copyWith` behavior

- [ ] **Step 3: Update the model with additive fields and sentinel-safe copyWith**

```dart
class Recipe {
  Recipe({
    String? id,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.instructions,
    this.prepTimeMinutes = 30,
    this.imageUrl,
    DateTime? createdAt,
    this.tags = const [],
    this.yieldServings = 1,
    this.manualTotalCost,
  }) : id = id ?? const Uuid().v4(),
       createdAt = createdAt ?? DateTime.now();

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'] as String?,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      ingredients: ...,
      instructions: ...,
      prepTimeMinutes: json['prepTimeMinutes'] as int? ?? 30,
      imageUrl: json['imageUrl'] as String?,
      createdAt: safeParseDate(json['createdAt']),
      tags: ...,
      yieldServings: (json['yieldServings'] as num?)?.toInt() ?? 1,
      manualTotalCost: (json['manualTotalCost'] as num?)?.toDouble(),
    );
  }

  final int yieldServings;
  final double? manualTotalCost;

  static const Object _sentinel = Object();

  Recipe copyWith({
    ...
    int? yieldServings,
    Object? manualTotalCost = _sentinel,
  }) {
    return Recipe(
      ...
      yieldServings: yieldServings ?? this.yieldServings,
      manualTotalCost:
          identical(manualTotalCost, _sentinel)
              ? this.manualTotalCost
              : manualTotalCost as double?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ...
      'yieldServings': yieldServings,
      'manualTotalCost': manualTotalCost,
    };
  }
}
```

- [ ] **Step 4: Run test to verify it passes**

Run: `flutter test test/models/recipe_test.dart`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add lib/models/recipe.dart test/models/recipe_test.dart
git commit -m "feat: extend recipe model with yield and manual cost"
```

## Task 2: Add Pure Cost Calculation Helpers and Aggregation Models

**Files:**
- Create: `lib/app/meal_planner/providers/meal_plan_cost_models.dart`
- Create: `lib/app/meal_planner/providers/meal_plan_cost_calculator.dart`
- Create: `test/app/meal_planner/providers/meal_plan_cost_calculator_test.dart`

**Interfaces:**
- Consumes: `Recipe`, `MealPlan`, `ShoppingItem.estimatedPrice`
- Produces:
  - `RecipeCostDetails calculateRecipeCostDetails(Recipe recipe)`
  - `double calculatePlannedMealCost({required Recipe recipe, required MealPlan mealPlan})`
  - `MealPlannerSummaryData`
  - `DayMealCostData`

- [ ] **Step 1: Write the failing helper tests**

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_plan_cost_calculator.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/unit.dart';

void main() {
  Recipe buildRecipe({
    double? manualTotalCost,
    int yieldServings = 4,
    List<double?> prices = const <double?>[10, 5, null],
  }) {
    return Recipe(
      id: 'r1',
      name: 'Recipe',
      description: 'Desc',
      ingredients: prices
          .asMap()
          .entries
          .map(
            (entry) => ShoppingItem(
              shoppingListId: 'list1',
              name: 'Ingredient ${entry.key}',
              quantity: 1,
              unit: Unit.un,
              estimatedPrice: entry.value,
            ),
          )
          .toList(),
      instructions: const <String>['Cook'],
      yieldServings: yieldServings,
      manualTotalCost: manualTotalCost,
    );
  }

  test('calculateRecipeCostDetails uses manual cost when present', () {
    final details = calculateRecipeCostDetails(buildRecipe(manualTotalCost: 40));

    expect(details.automaticTotalCost, 15);
    expect(details.effectiveTotalCost, 40);
    expect(details.costPerServing, 10);
    expect(details.hasPartialPricing, isTrue);
  });

  test('calculatePlannedMealCost scales by servings over recipe yield', () {
    final cost = calculatePlannedMealCost(
      recipe: buildRecipe(manualTotalCost: 40, yieldServings: 4),
      mealPlan: MealPlan(
        date: DateTime(2026, 6, 20),
        recipeId: 'r1',
        recipeName: 'Recipe',
        servings: 2,
      ),
    );

    expect(cost, 20);
  });

  test('calculateRecipeCostDetails falls back to yield 1 when invalid', () {
    final details = calculateRecipeCostDetails(buildRecipe(yieldServings: 0));

    expect(details.normalizedYieldServings, 1);
    expect(details.costPerServing, 15);
  });
}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `flutter test test/app/meal_planner/providers/meal_plan_cost_calculator_test.dart`
Expected: FAIL with missing calculator functions and helper model types

- [ ] **Step 3: Add focused immutable helper models**

```dart
class RecipeCostDetails {
  const RecipeCostDetails({
    required this.automaticTotalCost,
    required this.effectiveTotalCost,
    required this.costPerServing,
    required this.normalizedYieldServings,
    required this.hasPartialPricing,
    required this.pricedIngredientCount,
    required this.totalIngredientCount,
  });

  final double automaticTotalCost;
  final double effectiveTotalCost;
  final double costPerServing;
  final int normalizedYieldServings;
  final bool hasPartialPricing;
  final int pricedIngredientCount;
  final int totalIngredientCount;
}

class DayMealCostData {
  const DayMealCostData({
    required this.date,
    required this.totalCost,
    required this.mealCount,
    required this.hasPartialPricing,
  });

  final DateTime date;
  final double totalCost;
  final int mealCount;
  final bool hasPartialPricing;
}

class MealPlannerSummaryData {
  const MealPlannerSummaryData({
    required this.todayCost,
    required this.weekCost,
    required this.plannedMonthCost,
    required this.projectedMonthCost,
    required this.weekHasPartialPricing,
    required this.monthHasPartialPricing,
  });

  final double todayCost;
  final double weekCost;
  final double plannedMonthCost;
  final double projectedMonthCost;
  final bool weekHasPartialPricing;
  final bool monthHasPartialPricing;
}
```

- [ ] **Step 4: Implement pure calculator helpers**

```dart
RecipeCostDetails calculateRecipeCostDetails(Recipe recipe) {
  final pricedIngredients = recipe.ingredients
      .where((item) => item.estimatedPrice != null)
      .toList(growable: false);
  final automaticTotalCost = pricedIngredients.fold<double>(
    0,
    (sum, item) => sum + (item.estimatedPrice ?? 0),
  );
  final normalizedYield = recipe.yieldServings > 0 ? recipe.yieldServings : 1;
  final effectiveTotalCost = recipe.manualTotalCost ?? automaticTotalCost;

  return RecipeCostDetails(
    automaticTotalCost: automaticTotalCost,
    effectiveTotalCost: effectiveTotalCost,
    costPerServing: effectiveTotalCost / normalizedYield,
    normalizedYieldServings: normalizedYield,
    hasPartialPricing: pricedIngredients.length != recipe.ingredients.length,
    pricedIngredientCount: pricedIngredients.length,
    totalIngredientCount: recipe.ingredients.length,
  );
}

double calculatePlannedMealCost({
  required Recipe recipe,
  required MealPlan mealPlan,
}) {
  final details = calculateRecipeCostDetails(recipe);
  final consumptionFactor = mealPlan.servings / details.normalizedYieldServings;
  return details.effectiveTotalCost * consumptionFactor;
}
```

- [ ] **Step 5: Run test to verify it passes**

Run: `flutter test test/app/meal_planner/providers/meal_plan_cost_calculator_test.dart`
Expected: PASS

- [ ] **Step 6: Commit**

```bash
git add \
  lib/app/meal_planner/providers/meal_plan_cost_models.dart \
  lib/app/meal_planner/providers/meal_plan_cost_calculator.dart \
  test/app/meal_planner/providers/meal_plan_cost_calculator_test.dart
git commit -m "feat: add meal planner cost calculators"
```

## Task 3: Expose Planner Summary Data Through Providers

**Files:**
- Modify: `lib/app/meal_planner/providers/meal_planner_providers.dart`
- Modify: `test/app/meal_planner/providers/meal_planner_providers_test.dart`

**Interfaces:**
- Consumes:
  - `Recipes.build()`
  - `MealPlans.build({DateTime? start, DateTime? end})`
  - `calculateRecipeCostDetails(Recipe recipe)`
  - `calculatePlannedMealCost({required Recipe recipe, required MealPlan mealPlan})`
- Produces:
  - `mealPlannerSummaryProvider`
  - `mealPlannerDayCostMapProvider`
  - `recipeCostDetailsProvider(String recipeId)`

- [ ] **Step 1: Write the failing provider tests**

```dart
test('mealPlannerSummaryProvider returns week, planned month, and projected month totals', () async {
  final weekStart = DateTime(2026, 6, 15);
  final weekEnd = DateTime(2026, 6, 21);
  final monthStart = DateTime(2026, 6, 1);
  final monthEnd = DateTime(2026, 6, 30);

  final plans = <MealPlan>[
    MealPlan(
      date: DateTime(2026, 6, 20),
      recipeId: 'r1',
      recipeName: 'Lunch',
      servings: 2,
    ),
    MealPlan(
      date: DateTime(2026, 6, 21),
      recipeId: 'r2',
      recipeName: 'Dinner',
      servings: 1,
    ),
  ];

  final recipes = <Recipe>[
    Recipe(
      id: 'r1',
      name: 'Lunch',
      description: 'Desc',
      ingredients: <ShoppingItem>[],
      instructions: const <String>['Cook'],
      yieldServings: 4,
      manualTotalCost: 40,
    ),
    Recipe(
      id: 'r2',
      name: 'Dinner',
      description: 'Desc',
      ingredients: <ShoppingItem>[],
      instructions: const <String>['Cook'],
      yieldServings: 2,
      manualTotalCost: 20,
    ),
  ];

  when(() => mockStorage.watchMealPlans(
        start: any(named: 'start'),
        end: any(named: 'end'),
      )).thenAnswer((_) => Stream.value(plans.map((p) => p.toJson()).toList()));
  when(() => mockStorage.watchRecipes())
      .thenAnswer((_) => Stream.value(recipes.map((r) => r.toJson()).toList()));

  final summary = await container.read(
    mealPlannerSummaryProvider(
      weekStart: weekStart,
      weekEnd: weekEnd,
      monthStart: monthStart,
      monthEnd: monthEnd,
      focusedDay: DateTime(2026, 6, 20),
    ).future,
  );

  expect(summary.todayCost, 20);
  expect(summary.weekCost, 30);
  expect(summary.plannedMonthCost, 30);
  expect(summary.projectedMonthCost, closeTo(128.57, 0.01));
});
```

- [ ] **Step 2: Run test to verify it fails**

Run: `flutter test test/app/meal_planner/providers/meal_planner_providers_test.dart`
Expected: FAIL with missing summary providers and missing aggregation fields

- [ ] **Step 3: Add derived summary providers and day-cost mapping**

```dart
@riverpod
Future<RecipeCostDetails?> recipeCostDetails(
  Ref ref,
  String recipeId,
) async {
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
  final recipeById = <String, Recipe>{for (final recipe in recipes) recipe.id: recipe};
  final buckets = <DateTime, List<MealPlan>>{};

  for (final plan in plans) {
    final key = DateTime(plan.date.year, plan.date.month, plan.date.day);
    buckets.putIfAbsent(key, () => <MealPlan>[]).add(plan);
  }

  return buckets.map((date, dayPlans) {
    double totalCost = 0;
    bool hasPartialPricing = false;
    for (final plan in dayPlans) {
      final recipe = recipeById[plan.recipeId];
      if (recipe == null) {
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
```

- [ ] **Step 4: Add the planner summary provider**

```dart
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

  final normalizedFocusedDay = DateTime(
    focusedDay.year,
    focusedDay.month,
    focusedDay.day,
  );
  final weekCost = weekMap.values.fold<double>(0, (sum, day) => sum + day.totalCost);
  final plannedMonthCost = monthMap.values.fold<double>(0, (sum, day) => sum + day.totalCost);
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
```

- [ ] **Step 5: Regenerate Riverpod code and rerun the provider suite**

Run: `dart run build_runner build --delete-conflicting-outputs`
Expected: PASS with regenerated `meal_planner_providers.g.dart`

Run: `flutter test test/app/meal_planner/providers/meal_planner_providers_test.dart`
Expected: PASS

- [ ] **Step 6: Commit**

```bash
git add \
  lib/app/meal_planner/providers/meal_planner_providers.dart \
  lib/app/meal_planner/providers/meal_planner_providers.g.dart \
  test/app/meal_planner/providers/meal_planner_providers_test.dart
git commit -m "feat: expose meal planner cost summaries"
```

## Task 4: Add Localized Recipe Cost Inputs and Detail Summary

**Files:**
- Modify: `lib/app/recipes/widgets/add_recipe_dialog.dart`
- Modify: `lib/app/recipes/screens/recipe_detail_screen.dart`
- Modify: `lib/l10n/app_en.arb`
- Modify: `lib/generated/l10n/app_localizations*.dart`
- Create: `test/app/recipes/widgets/add_recipe_dialog_test.dart`
- Create: `test/app/recipes/screens/recipe_detail_screen_test.dart`

**Interfaces:**
- Consumes:
  - `Recipe.yieldServings`
  - `Recipe.manualTotalCost`
  - `recipeCostDetailsProvider(String recipeId)`
- Produces:
  - saved recipe payloads containing `yieldServings` and `manualTotalCost`
  - localized strings for estimate labels, helper copy, and partial states

- [ ] **Step 1: Write the failing widget tests**

```dart
testWidgets('AddRecipeDialog saves yieldServings and manualTotalCost', (tester) async {
  await tester.pumpWidget(buildRecipeDialogApp());

  await tester.enterText(find.byType(TextFormField).at(0), 'Soup');
  await tester.enterText(find.text('Prep time (minutes)'), '30');
  await tester.enterText(find.text('Yield servings'), '4');
  await tester.enterText(find.text('Manual total cost'), '42.50');
  await tester.tap(find.text('Save recipe'));
  await tester.pumpAndSettle();

  verify(() => mockRecipesNotifier.saveRecipe(
        any(that: predicate<Recipe>((recipe) {
          return recipe.yieldServings == 4 && recipe.manualTotalCost == 42.5;
        })),
      )).called(1);
});

testWidgets('RecipeDetailScreen shows yield and estimated costs', (tester) async {
  final recipe = Recipe(
    id: 'r1',
    name: 'Soup',
    description: 'Desc',
    ingredients: <ShoppingItem>[],
    instructions: const <String>['Cook'],
    yieldServings: 4,
    manualTotalCost: 40,
  );

  await tester.pumpWidget(buildRecipeDetailApp(recipe));
  await tester.pumpAndSettle();

  expect(find.text('Serves 4'), findsOneWidget);
  expect(find.text('Estimated total cost'), findsOneWidget);
  expect(find.text('R\$ 40.00'), findsWidgets);
  expect(find.text('R\$ 10.00 / serving'), findsOneWidget);
});
```

- [ ] **Step 2: Run tests to verify they fail**

Run: `flutter test test/app/recipes/widgets/add_recipe_dialog_test.dart`
Expected: FAIL with missing localized labels or missing saved fields

Run: `flutter test test/app/recipes/screens/recipe_detail_screen_test.dart`
Expected: FAIL with missing summary UI

- [ ] **Step 3: Add the new ARB keys in English**

```json
{
  "recipeYieldServings": "Yield servings",
  "recipeManualTotalCost": "Manual total cost",
  "recipeManualTotalCostHint": "Leave empty to estimate from ingredient prices.",
  "recipeEstimatedTotalCost": "Estimated total cost",
  "recipeEstimatedCostPerServing": "{cost} / serving",
  "@recipeEstimatedCostPerServing": {
    "placeholders": {
      "cost": {
        "type": "String"
      }
    }
  },
  "recipeServesCount": "Serves {count}",
  "@recipeServesCount": {
    "placeholders": {
      "count": {
        "type": "int"
      }
    }
  },
  "recipeEstimatePartial": "Partial estimate based on ingredients with price.",
  "mealPlannerEstimatePartial": "Estimate based on recipes with partial price data."
}
```

- [ ] **Step 4: Update the recipe form and detail UI**

```dart
final _yieldServingsController = TextEditingController(text: '1');
final _manualTotalCostController = TextEditingController();

...

TextFormField(
  controller: _yieldServingsController,
  keyboardType: TextInputType.number,
  decoration: InputDecoration(
    labelText: l10n.recipeYieldServings,
    border: const OutlineInputBorder(),
    prefixIcon: const Icon(Icons.room_service_outlined),
  ),
)

TextFormField(
  controller: _manualTotalCostController,
  keyboardType: const TextInputType.numberWithOptions(decimal: true),
  decoration: InputDecoration(
    labelText: l10n.recipeManualTotalCost,
    helperText: l10n.recipeManualTotalCostHint,
    border: const OutlineInputBorder(),
    prefixIcon: const Icon(Icons.attach_money_rounded),
  ),
)

final recipe = Recipe(
  ...
  yieldServings: int.tryParse(_yieldServingsController.text) ?? 1,
  manualTotalCost: double.tryParse(
    _manualTotalCostController.text.replaceAll(',', '.'),
  ),
);
```

```dart
final detailsAsync = ref.watch(recipeCostDetailsProvider(widget.recipeId));

...

detailsAsync.whenData((details) {
  if (details == null) {
    return const SizedBox.shrink();
  }
  return Container(
    padding: const EdgeInsets.all(Spacing.md),
    decoration: BoxDecoration(
      color: theme.colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(RadiusTokens.lg),
      border: Border.all(color: theme.colorScheme.outlineVariant.withAlpha(80)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.recipeServesCount(details.normalizedYieldServings)),
        Text(l10n.recipeEstimatedTotalCost),
        Text(formatCurrency(details.effectiveTotalCost)),
        Text(
          l10n.recipeEstimatedCostPerServing(
            formatCurrency(details.costPerServing),
          ),
        ),
        if (details.hasPartialPricing) Text(l10n.recipeEstimatePartial),
      ],
    ),
  );
});
```

- [ ] **Step 5: Translate and regenerate localization outputs**

Run: `python3 scripts/translate_missing.py`
Expected: PASS with updated locale ARBs

Run: `python3 scripts/review_translations.py`
Expected: PASS with no placeholder or brand violations

Run: `flutter gen-l10n`
Expected: PASS with regenerated `lib/generated/l10n/`

- [ ] **Step 6: Run recipe widget tests**

Run: `flutter test test/app/recipes/widgets/add_recipe_dialog_test.dart`
Expected: PASS

Run: `flutter test test/app/recipes/screens/recipe_detail_screen_test.dart`
Expected: PASS

- [ ] **Step 7: Commit**

```bash
git add \
  lib/app/recipes/widgets/add_recipe_dialog.dart \
  lib/app/recipes/screens/recipe_detail_screen.dart \
  lib/l10n/app_en.arb \
  lib/l10n/*.arb \
  lib/generated/l10n/ \
  test/app/recipes/widgets/add_recipe_dialog_test.dart \
  test/app/recipes/screens/recipe_detail_screen_test.dart
git commit -m "feat: add recipe yield and cost metadata ui"
```

## Task 5: Upgrade Planner Summary and Day Cards to Show Cost Forecasts

**Files:**
- Modify: `lib/app/meal_planner/widgets/weekly_summary_bar.dart`
- Modify: `lib/app/meal_planner/widgets/meal_day_card.dart`
- Modify: `lib/app/meal_planner/screens/meal_planner_screen.dart`
- Create: `test/app/meal_planner/screens/meal_planner_screen_test.dart`

**Interfaces:**
- Consumes:
  - `mealPlannerSummaryProvider(...)`
  - `mealPlannerDayCostMapProvider(start: ..., end: ...)`
  - `MealPlannerSummaryData`
  - `DayMealCostData`
- Produces:
  - summary tiles for `Today`, `Week`, `Planned month`, `Projected month`
  - day-card cost labels and subtle highest/lowest-day indicators

- [ ] **Step 1: Write the failing planner widget test**

```dart
testWidgets('MealPlannerScreen shows estimate summary and day cost labels', (tester) async {
  await tester.pumpWidget(buildMealPlannerApp());
  await tester.pumpAndSettle();

  expect(find.text('Today'), findsOneWidget);
  expect(find.text('Week'), findsOneWidget);
  expect(find.text('Planned month'), findsOneWidget);
  expect(find.text('Projected month'), findsOneWidget);
  expect(find.textContaining('Estimate based on recipes with partial price data.'), findsOneWidget);
  expect(find.textContaining('R\$'), findsWidgets);
});
```

- [ ] **Step 2: Run the planner widget test to verify it fails**

Run: `flutter test test/app/meal_planner/screens/meal_planner_screen_test.dart`
Expected: FAIL with missing summary UI and missing day-cost labels

- [ ] **Step 3: Replace the progress-only summary with cost summary tiles**

```dart
class WeeklySummaryBar extends StatelessWidget {
  const WeeklySummaryBar({
    super.key,
    required this.summary,
  });

  final MealPlannerSummaryData summary;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
        vertical: Spacing.xs,
      ),
      padding: const EdgeInsets.all(Spacing.md),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(RadiusTokens.lg),
        border: Border.all(color: theme.colorScheme.outlineVariant.withAlpha(80)),
      ),
      child: Column(
        children: [
          Wrap(
            spacing: Spacing.sm,
            runSpacing: Spacing.sm,
            children: [
              _SummaryTile(label: l10n.todayLabel, value: formatCurrency(summary.todayCost)),
              _SummaryTile(label: l10n.weekLabel, value: formatCurrency(summary.weekCost)),
              _SummaryTile(label: l10n.mealPlannerPlannedMonth, value: formatCurrency(summary.plannedMonthCost)),
              _SummaryTile(label: l10n.mealPlannerProjectedMonth, value: formatCurrency(summary.projectedMonthCost)),
            ],
          ),
          if (summary.weekHasPartialPricing || summary.monthHasPartialPricing)
            Padding(
              padding: const EdgeInsets.only(top: Spacing.sm),
              child: Text(
                l10n.mealPlannerEstimatePartial,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
```

- [ ] **Step 4: Wire summary/day-cost data into the screen and day cards**

```dart
final summaryAsync = ref.watch(
  mealPlannerSummaryProvider(
    weekStart: _weekStart,
    weekEnd: _weekEnd,
    monthStart: _monthStart,
    monthEnd: _monthEnd,
    focusedDay: _focusedDay,
  ),
);

final dayCostsAsync = ref.watch(
  mealPlannerDayCostMapProvider(start: _weekStart, end: _weekEnd),
);
```

```dart
MealDayCard(
  date: date,
  plans: dayPlans,
  isToday: isToday,
  onTap: () => onAddMeal(date),
  onDeleteMeal: onDeleteMeal,
  dayCost: dayCosts[DateTime(date.year, date.month, date.day)],
  isHighestCostDay: highestCostDate == normalizedDate,
  isLowestCostDay: lowestCostDate == normalizedDate,
)
```

```dart
if (dayCost != null) ...[
  const SizedBox(width: Spacing.xs),
  Text(
    formatCurrency(dayCost!.totalCost),
    style: theme.textTheme.labelMedium?.copyWith(
      color: theme.colorScheme.onSurfaceVariant,
      fontWeight: FontWeight.w600,
    ),
  ),
]
```

- [ ] **Step 5: Run the planner widget test and targeted analyzer**

Run: `flutter test test/app/meal_planner/screens/meal_planner_screen_test.dart`
Expected: PASS

Run: `flutter analyze --fatal-infos lib/app/meal_planner/ lib/app/recipes/ lib/models/recipe.dart`
Expected: PASS with no analyzer errors

- [ ] **Step 6: Commit**

```bash
git add \
  lib/app/meal_planner/widgets/weekly_summary_bar.dart \
  lib/app/meal_planner/widgets/meal_day_card.dart \
  lib/app/meal_planner/screens/meal_planner_screen.dart \
  test/app/meal_planner/screens/meal_planner_screen_test.dart
git commit -m "feat: show meal planner cost forecasts"
```

## Task 6: Final Regression Sweep

**Files:**
- Modify: none required unless regressions surface
- Test: `test/models/recipe_test.dart`
- Test: `test/app/meal_planner/providers/meal_plan_cost_calculator_test.dart`
- Test: `test/app/meal_planner/providers/meal_planner_providers_test.dart`
- Test: `test/app/recipes/widgets/add_recipe_dialog_test.dart`
- Test: `test/app/recipes/screens/recipe_detail_screen_test.dart`
- Test: `test/app/meal_planner/screens/meal_planner_screen_test.dart`

**Interfaces:**
- Consumes: all new model, provider, UI, and l10n interfaces from Tasks 1-5
- Produces: verified green regression surface for the feature branch

- [ ] **Step 1: Run the focused feature test suite**

Run:

```bash
flutter test \
  test/models/recipe_test.dart \
  test/app/meal_planner/providers/meal_plan_cost_calculator_test.dart \
  test/app/meal_planner/providers/meal_planner_providers_test.dart \
  test/app/recipes/widgets/add_recipe_dialog_test.dart \
  test/app/recipes/screens/recipe_detail_screen_test.dart \
  test/app/meal_planner/screens/meal_planner_screen_test.dart
```

Expected: PASS

- [ ] **Step 2: Run generated-code and localization verification**

Run: `dart run build_runner build --delete-conflicting-outputs`
Expected: PASS with no stale provider outputs

Run: `python3 scripts/review_translations.py`
Expected: PASS

- [ ] **Step 3: Run the broader app verification for touched domains**

Run: `flutter analyze --fatal-infos`
Expected: PASS or only pre-existing unrelated infos already accepted by the branch

Run: `flutter test`
Expected: PASS or only pre-existing unrelated failures documented before merge

- [ ] **Step 4: Commit**

```bash
git add .
git commit -m "test: verify meal planner cost forecast feature"
```
