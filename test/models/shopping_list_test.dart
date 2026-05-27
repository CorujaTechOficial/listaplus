import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/domain/entities/unit.dart';
import 'package:test/test.dart';

void main() {
  group('Unit', () {
    test('has labels', () {
      expect(Unit.un.label, 'un');
      expect(Unit.kg.label, 'kg');
      expect(Unit.L.label, 'L');
      expect(Unit.pack.label, 'pacote');
    });

    test('default is un', () {
      expect(Unit.values.first, Unit.un);
    });
  });

  group('ShoppingList', () {
    test('default constructor generates id and dates', () {
      final list = ShoppingList(name: 'Mercado');
      expect(list.id, isNotEmpty);
      expect(list.name, 'Mercado');
      expect(list.budget, isNull);
      expect(list.createdAt, isA<DateTime>());
      expect(list.updatedAt, isA<DateTime>());
    });

    test('roundtrip JSON preserves all fields', () {
      final list = ShoppingList(
        id: 'test-id',
        name: 'Feira',
        budget: 200,
        createdAt: DateTime(2026, 1, 1),
        updatedAt: DateTime(2026, 1, 2),
      );
      final json = list.toJson();
      final restored = ShoppingList.fromJson(json);

      expect(restored.id, 'test-id');
      expect(restored.name, 'Feira');
      expect(restored.budget, 200.0);
      expect(restored.createdAt, DateTime(2026, 1, 1));
      expect(restored.updatedAt, DateTime(2026, 1, 2));
    });

    test('copyWith updates only specified fields', () {
      final original = ShoppingList(name: 'Original', budget: 100);
      final updated = original.copyWith(name: 'Modificado');

      expect(updated.name, 'Modificado');
      expect(updated.budget, 100);
      expect(updated.id, original.id);
    });

    test('copyWith with no args preserves all fields', () {
      final original = ShoppingList(name: 'Original', budget: 100);
      final copied = original.copyWith();

      expect(copied.name, 'Original');
      expect(copied.budget, 100);
      expect(copied.id, original.id);
    });

    test('fromJson handles null budget', () {
      final json = {
        'id': 'id1',
        'name': 'Teste',
        'budget': null,
        'createdAt': '2026-01-01T00:00:00.000',
        'updatedAt': '2026-01-02T00:00:00.000',
      };
      final list = ShoppingList.fromJson(json);
      expect(list.budget, isNull);
    });

    test('toJson includes budget when null', () {
      final list = ShoppingList(name: 'Sem orçamento');
      final json = list.toJson();
      expect(json['budget'], isNull);
    });
  });

  group('ShoppingItem', () {
    test('id is auto-generated', () {
      final item = ShoppingItem(
        shoppingListId: 'l1',
        name: 'Arroz',
        quantity: 1,
        categoryId: 'others',
      );
      expect(item.id, isNotEmpty);
    });

    test('isPurchased defaults to false', () {
      final item = ShoppingItem(
        shoppingListId: 'l1',
        name: 'Feijão',
        quantity: 2,
        categoryId: 'others',
      );
      expect(item.isPurchased, false);
    });

    test('roundtrip JSON with all fields', () {
      final item = ShoppingItem(
        id: 'item-1',
        shoppingListId: 'list-1',
        name: 'Leite',
        quantity: 3,
        categoryId: 'beverages',
        unit: Unit.L,
        estimatedPrice: 8.50,
        isPurchased: true,
        createdAt: DateTime(2026, 5, 1),
        updatedAt: DateTime(2026, 5, 2),
      );
      final json = item.toJson();
      final restored = ShoppingItem.fromJson(json);

      expect(restored.id, 'item-1');
      expect(restored.shoppingListId, 'list-1');
      expect(restored.name, 'Leite');
      expect(restored.quantity, 3);
      expect(restored.categoryId, 'beverages');
      expect(restored.unit, Unit.L);
      expect(restored.estimatedPrice, 8.50);
      expect(restored.isPurchased, true);
      expect(restored.createdAt, DateTime(2026, 5, 1));
      expect(restored.updatedAt, DateTime(2026, 5, 2));
    });

    test('unit defaults to un', () {
      final item = ShoppingItem(
        shoppingListId: 'l1',
        name: 'Arroz',
        quantity: 1,
        categoryId: 'others',
      );
      expect(item.unit, Unit.un);
    });

    test('fromJson handles missing unit', () {
      final json = {
        'id': 'item-2',
        'shoppingListId': 'list-1',
        'name': 'Pão',
        'quantity': 6,
        'category': 'bakery',
        'estimatedPrice': null,
        'createdAt': '2026-05-01T00:00:00.000',
        'updatedAt': '2026-05-02T00:00:00.000',
      };
      final item = ShoppingItem.fromJson(json);
      expect(item.unit, Unit.un);
    });

    test('copyWith updates unit', () {
      final item = ShoppingItem(
        shoppingListId: 'l1',
        name: 'Item',
        quantity: 1,
        categoryId: 'fruits',
      );
      final copied = item.copyWith(unit: Unit.kg);
      expect(copied.unit, Unit.kg);
      expect(copied.name, 'Item');
    });

    test('fromJson handles null estimatedPrice and missing isPurchased', () {
      final json = {
        'id': 'item-2',
        'shoppingListId': 'list-1',
        'name': 'Pão',
        'quantity': 6,
        'category': 'bakery',
        'estimatedPrice': null,
        'createdAt': '2026-05-01T00:00:00.000',
        'updatedAt': '2026-05-02T00:00:00.000',
      };
      final item = ShoppingItem.fromJson(json);
      expect(item.estimatedPrice, isNull);
      expect(item.isPurchased, false);
      expect(item.categoryId, 'bakery');
    });

    test('fromJson falls back to others for unknown category', () {
      final json = {
        'id': 'item-3',
        'shoppingListId': 'list-1',
        'name': 'Desconhecido',
        'quantity': 1,
        'category': 'invalid_category',
        'createdAt': '2026-05-01T00:00:00.000',
        'updatedAt': '2026-05-02T00:00:00.000',
      };
      final item = ShoppingItem.fromJson(json);
      expect(item.categoryId, 'others');
    });

    test('copyWith respects null parameters', () {
      final item = ShoppingItem(
        shoppingListId: 'l1',
        name: 'Item',
        quantity: 1,
        categoryId: 'fruits',
      );
      final copied = item.copyWith();
      expect(copied.name, 'Item');
      expect(copied.shoppingListId, 'l1');
      expect(copied.quantity, 1);
    });
  });
}
