import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/meal_plan.dart';

void main() {
  group('MealPlan', () {
    test('constructor sets fields', () {
      final date = DateTime(2026, 5, 25);
      final plan = MealPlan(id: '1', recipeId: 'r1', date: date);
      expect(plan.id, '1');
      expect(plan.recipeId, 'r1');
      expect(plan.date, date);
      expect(plan.mealType, isNull);
    });

    test('copyWith updates fields', () {
      final plan = MealPlan(id: '1', recipeId: 'r1', date: DateTime(2026, 5, 25));
      final copy = plan.copyWith(mealType: 'lunch');
      expect(copy.mealType, 'lunch');
      expect(copy.recipeId, 'r1');
    });

    test('copyWith clears mealType with null', () {
      final plan = MealPlan(id: '1', recipeId: 'r1', date: DateTime(2026, 5, 25), mealType: 'lunch');
      final copy = plan.copyWith(mealType: null);
      expect(copy.mealType, isNull);
    });
  });
}
