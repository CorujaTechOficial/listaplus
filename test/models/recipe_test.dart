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

  test(
    'Recipe serializes and deserializes yieldServings and manualTotalCost',
    () {
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
    },
  );

  test('Recipe copyWith updates yieldServings and clears manualTotalCost', () {
    final recipe = Recipe(
      name: 'Cake',
      description: 'Dessert',
      ingredients: <ShoppingItem>[],
      instructions: const <String>['Bake'],
      yieldServings: 8,
      manualTotalCost: 24,
    );

    final updated = recipe.copyWith(yieldServings: 6, manualTotalCost: null);

    expect(updated.yieldServings, 6);
    expect(updated.manualTotalCost, isNull);
  });
}
