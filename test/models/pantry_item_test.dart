import 'package:shopping_list/models/pantry_item.dart';
import 'package:shopping_list/models/unit.dart';
import 'package:test/test.dart';

void main() {
  group('PantryItem', () {
    test('default constructor generates id and dates', () {
      final item = PantryItem(name: 'Arroz', idealQuantity: 5);
      expect(item.id, isNotEmpty);
      expect(item.name, 'Arroz');
      expect(item.idealQuantity, 5);
      expect(item.currentQuantity, 0);
      expect(item.categoryId, 'others');
      expect(item.unit, Unit.un);
      expect(item.estimatedPrice, isNull);
      expect(item.trackStock, true);
      expect(item.createdAt, isA<DateTime>());
      expect(item.updatedAt, isA<DateTime>());
    });

    test('roundtrip JSON preserves all fields', () {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Feijão',
        idealQuantity: 3,
        currentQuantity: 1,
        categoryId: 'fruits',
        unit: Unit.kg,
        estimatedPrice: 8.50,
        trackStock: true,
        createdAt: DateTime(2026, 5, 1),
        updatedAt: DateTime(2026, 5, 2),
      );
      final json = item.toJson();
      final restored = PantryItem.fromJson(json);

      expect(restored.id, 'pantry-1');
      expect(restored.name, 'Feijão');
      expect(restored.idealQuantity, 3);
      expect(restored.currentQuantity, 1);
      expect(restored.categoryId, 'fruits');
      expect(restored.unit, Unit.kg);
      expect(restored.estimatedPrice, 8.50);
      expect(restored.trackStock, true);
      expect(restored.createdAt, DateTime(2026, 5, 1));
      expect(restored.updatedAt, DateTime(2026, 5, 2));
    });

    test('trackStock defaults to true', () {
      final item = PantryItem(name: 'Leite', idealQuantity: 2);
      expect(item.trackStock, true);
    });

    test('trackStock can be set to false', () {
      final item = PantryItem(name: 'Alface', idealQuantity: 3, trackStock: false);
      expect(item.trackStock, false);
      expect(item.name, 'Alface');
    });

    test('fromJson handles null estimatedPrice and missing trackStock', () {
      final json = {
        'id': 'pantry-2',
        'name': 'Pão',
        'idealQuantity': 10,
        'currentQuantity': 2,
        'category': 'bakery',
        'unit': 'un',
        'estimatedPrice': null,
        'createdAt': '2026-05-01T00:00:00.000',
        'updatedAt': '2026-05-02T00:00:00.000',
      };
      final item = PantryItem.fromJson(json);
      expect(item.estimatedPrice, isNull);
      expect(item.trackStock, true);
      expect(item.unit, Unit.un);
    });

    test('fromJson falls back to others for unknown category', () {
      final json = {
        'id': 'pantry-3',
        'name': 'Desconhecido',
        'idealQuantity': 1,
        'category': 'invalid_category',
        'createdAt': '2026-05-01T00:00:00.000',
        'updatedAt': '2026-05-02T00:00:00.000',
      };
      final item = PantryItem.fromJson(json);
      expect(item.categoryId, 'others');
    });

    test('fromJson falls back to un for unknown unit', () {
      final json = {
        'id': 'pantry-4',
        'name': 'Estranho',
        'idealQuantity': 1,
        'category': 'others',
        'unit': 'invalid_unit',
        'createdAt': '2026-05-01T00:00:00.000',
        'updatedAt': '2026-05-02T00:00:00.000',
      };
      final item = PantryItem.fromJson(json);
      expect(item.unit, Unit.un);
    });

    test('copyWith updates only specified fields', () {
      final original = PantryItem(name: 'Original', idealQuantity: 5, currentQuantity: 2);
      final updated = original.copyWith(name: 'Modificado');

      expect(updated.name, 'Modificado');
      expect(updated.idealQuantity, 5);
      expect(updated.currentQuantity, 2);
      expect(updated.id, original.id);
    });

    test('copyWith with no args preserves all fields', () {
      final original = PantryItem(name: 'Original', idealQuantity: 5);
      final copied = original.copyWith();

      expect(copied.name, 'Original');
      expect(copied.idealQuantity, 5);
      expect(copied.id, original.id);
    });

    test('copyWith updates specific fields independently', () {
      final original = PantryItem(
        name: 'Item',
        idealQuantity: 5,
        currentQuantity: 2,
        categoryId: 'fruits',
      );
      final updated = original.copyWith(categoryId: 'bakery', currentQuantity: 4);

      expect(updated.name, 'Item');
      expect(updated.idealQuantity, 5);
      expect(updated.currentQuantity, 4);
      expect(updated.categoryId, 'bakery');
    });

    test('deficit returns 0 when current >= ideal', () {
      final item = PantryItem(name: 'Teste', idealQuantity: 5, currentQuantity: 5);
      expect(item.deficit, 0);
    });

    test('deficit returns positive when current < ideal', () {
      final item = PantryItem(name: 'Teste', idealQuantity: 5, currentQuantity: 2);
      expect(item.deficit, 3);
    });

    test('deficit is clamped to 0', () {
      final item = PantryItem(name: 'Teste', idealQuantity: 5, currentQuantity: 10);
      expect(item.deficit, 0);
    });

    test('needsRestock returns true when deficit > 0', () {
      final item = PantryItem(name: 'Teste', idealQuantity: 5, currentQuantity: 2);
      expect(item.needsRestock, true);
    });

    test('needsRestock returns false when deficit == 0', () {
      final item = PantryItem(name: 'Teste', idealQuantity: 5, currentQuantity: 5);
      expect(item.needsRestock, false);
    });

    test('needsRestock returns false when current exceeds ideal', () {
      final item = PantryItem(name: 'Teste', idealQuantity: 5, currentQuantity: 10);
      expect(item.needsRestock, false);
    });
  });
}
