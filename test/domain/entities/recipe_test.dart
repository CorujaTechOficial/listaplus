import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/recipe.dart';

void main() {
  group('Recipe', () {
    test('constructor sets default values', () {
      final recipe = Recipe(id: '1', name: 'Bolo');
      expect(recipe.id, '1');
      expect(recipe.name, 'Bolo');
      expect(recipe.description, isNull);
      expect(recipe.ingredients, isEmpty);
      expect(recipe.steps, isEmpty);
      expect(recipe.prepTime, isNull);
    });

    test('copyWith updates fields', () {
      final recipe = Recipe(id: '1', name: 'Bolo');
      final copy = recipe.copyWith(description: 'Fácil', prepTime: 30);
      expect(copy.description, 'Fácil');
      expect(copy.prepTime, 30);
    });
  });
}
