import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/data/models/shopping_item_model.dart';
import 'package:shopping_list/domain/entities/shopping_item.dart';
import 'package:shopping_list/domain/entities/category.dart';
import 'package:shopping_list/domain/entities/unit.dart';

void main() {
  group('ShoppingItemModel', () {
    test('fromJson parses valid JSON', () {
      final json = {
        'id': '1',
        'shoppingListId': 'list1',
        'name': 'Item',
        'quantity': 2,
        'category': 'fruits',
        'unit': 'kg',
        'estimatedPrice': 10.0,
        'isPurchased': false,
      };
      final model = ShoppingItemModel.fromJson(json);
      expect(model.id, '1');
      expect(model.name, 'Item');
      expect(model.quantity, 2);
      expect(model.category, Category.fruits);
      expect(model.unit, Unit.kg);
    });

    test('fromJson uses defaults for missing fields', () {
      final json = {'id': '1', 'shoppingListId': 'list1', 'name': 'Item'};
      final model = ShoppingItemModel.fromJson(json);
      expect(model.quantity, 1);
      expect(model.category, Category.others);
      expect(model.unit, Unit.un);
    });

    test('toJson produces correct map', () {
      final model = ShoppingItemModel(id: '1', shoppingListId: 'list1', name: 'Item');
      final json = model.toJson();
      expect(json['id'], '1');
      expect(json['unit'], 'un');
      expect(json['category'], 'others');
    });

    test('toEntity returns domain entity', () {
      final model = ShoppingItemModel(id: '1', shoppingListId: 'list1', name: 'Item');
      final entity = model.toEntity();
      expect(entity.name, 'Item');
    });

    test('fromEntity creates model from entity', () {
      final entity = ShoppingItem(id: '1', shoppingListId: 'list1', name: 'Item');
      final model = ShoppingItemModel.fromEntity(entity);
      expect(model.id, '1');
    });
  });
}
