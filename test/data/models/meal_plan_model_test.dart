import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/data/models/meal_plan_model.dart';
import 'package:shopping_list/domain/entities/meal_plan.dart';

void main() {
  group('MealPlanModel', () {
    test('fromJson parses valid JSON', () {
      final json = {
        'id': '1',
        'recipeId': 'r1',
        'date': DateTime(2026, 5, 25).toIso8601String(),
        'mealType': 'lunch',
      };
      final model = MealPlanModel.fromJson(json);
      expect(model.recipeId, 'r1');
      expect(model.mealType, 'lunch');
    });

    test('toEntity and fromEntity roundtrip', () {
      final entity = MealPlan(id: '1', recipeId: 'r1', date: DateTime(2026, 5, 25));
      final model = MealPlanModel.fromEntity(entity);
      final roundtrip = model.toEntity();
      expect(roundtrip.recipeId, 'r1');
    });

    test('toJson produces correct map', () {
      final model = MealPlanModel(id: '1', recipeId: 'r1', date: DateTime(2026, 5, 25));
      final json = model.toJson();
      expect(json['recipeId'], 'r1');
    });
  });
}
