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
