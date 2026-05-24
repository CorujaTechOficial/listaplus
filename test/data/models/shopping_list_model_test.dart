import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/data/models/shopping_list_model.dart';
import 'package:shopping_list/domain/entities/shopping_list.dart';

void main() {
  group('ShoppingListModel', () {
    test('fromJson parses valid JSON', () {
      final json = {
        'id': '1',
        'name': 'Compras',
        'budget': 100.0,
        'ownerUid': null,
        'isArchived': false,
        'archivedAt': null,
        'createdAt': DateTime.now().toIso8601String(),
        'updatedAt': DateTime.now().toIso8601String(),
      };
      final model = ShoppingListModel.fromJson(json);
      expect(model.id, '1');
      expect(model.name, 'Compras');
      expect(model.budget, 100.0);
    });

    test('fromJson handles null dates', () {
      final json = {
        'id': '1',
        'name': 'Test',
        'createdAt': null,
        'updatedAt': null,
      };
      final model = ShoppingListModel.fromJson(json);
      expect(model.createdAt, isA<DateTime>());
    });

    test('toJson produces correct map', () {
      final model = ShoppingListModel(id: '1', name: 'Test', budget: 50);
      final json = model.toJson();
      expect(json['id'], '1');
      expect(json['name'], 'Test');
      expect(json['budget'], 50.0);
      expect(json['isArchived'], false);
    });

    test('toEntity returns correct domain entity', () {
      final model = ShoppingListModel(id: '1', name: 'Test');
      final entity = model.toEntity();
      expect(entity.id, '1');
      expect(entity.name, 'Test');
    });

    test('fromEntity creates model from domain entity', () {
      final entity = ShoppingList(id: '1', name: 'Test', budget: 50.0);
      final model = ShoppingListModel.fromEntity(entity);
      expect(model.id, '1');
      expect(model.name, 'Test');
      expect(model.budget, 50.0);
    });
  });
}
