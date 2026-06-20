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
      ingredients:
          prices
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
    final details = calculateRecipeCostDetails(
      buildRecipe(manualTotalCost: 40),
    );

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
