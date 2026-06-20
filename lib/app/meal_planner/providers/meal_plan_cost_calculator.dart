import 'package:shopping_list/app/meal_planner/providers/meal_plan_cost_models.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/models/recipe.dart';

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
