import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/data/models/recipe_model.dart';
import 'package:shopping_list/domain/entities/recipe.dart';

void main() {
  group('RecipeModel', () {
    test('fromJson parses valid JSON', () {
      final json = {
        'id': '1',
        'name': 'Bolo',
        'description': 'Fácil',
        'ingredients': ['farinha', 'ovos'],
        'steps': ['misturar', 'assar'],
        'prepTime': 30,
      };
      final model = RecipeModel.fromJson(json);
      expect(model.name, 'Bolo');
      expect(model.ingredients.length, 2);
    });

    test('toEntity and fromEntity roundtrip', () {
      final entity = Recipe(id: '1', name: 'Bolo');
      final model = RecipeModel.fromEntity(entity);
      final roundtrip = model.toEntity();
      expect(roundtrip.name, 'Bolo');
    });

    test('toJson produces correct map', () {
      final model = RecipeModel(id: '1', name: 'Bolo');
      final json = model.toJson();
      expect(json['name'], 'Bolo');
    });
  });
}
