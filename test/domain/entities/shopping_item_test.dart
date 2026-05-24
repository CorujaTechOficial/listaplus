import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/shopping_item.dart';
import 'package:shopping_list/domain/entities/unit.dart';
import 'package:shopping_list/domain/entities/category.dart';

void main() {
  group('ShoppingItem', () {
    test('constructor sets default values', () {
      final item = ShoppingItem(id: '1', shoppingListId: 'list1', name: 'Test');
      expect(item.id, '1');
      expect(item.shoppingListId, 'list1');
      expect(item.name, 'Test');
      expect(item.quantity, 1);
      expect(item.category, Category.others);
      expect(item.unit, Unit.un);
      expect(item.estimatedPrice, isNull);
      expect(item.isPurchased, false);
    });

    test('copyWith updates only specified fields', () {
      final item = ShoppingItem(id: '1', shoppingListId: 'list1', name: 'Item');
      final copy = item.copyWith(name: 'Updated', isPurchased: true);
      expect(copy.name, 'Updated');
      expect(copy.isPurchased, true);
      expect(copy.id, '1');
      expect(copy.shoppingListId, 'list1');
    });

    test('copyWith sets estimatedPrice', () {
      final item = ShoppingItem(id: '1', shoppingListId: 'list1', name: 'Item');
      final copy = item.copyWith(estimatedPrice: 10.0);
      expect(copy.estimatedPrice, 10.0);
    });

    test('copyWith clears estimatedPrice with null', () {
      final item = ShoppingItem(id: '1', shoppingListId: 'list1', name: 'Item', estimatedPrice: 10.0);
      final copy = item.copyWith(estimatedPrice: null);
      expect(copy.estimatedPrice, isNull);
    });
  });
}
