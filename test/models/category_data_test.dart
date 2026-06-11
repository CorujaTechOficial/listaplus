import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/models/category_data.dart';

void main() {
  group('CategoryData.defaults', () {
    test('has exactly 20 default categories', () {
      expect(CategoryData.defaults.length, 20);
    });

    test('all defaults have non-empty id', () {
      for (final cat in CategoryData.defaults) {
        expect(cat.id, isNotEmpty);
      }
    });

    test('all defaults have non-empty name', () {
      for (final cat in CategoryData.defaults) {
        expect(cat.name, isNotEmpty);
      }
    });

    test('all defaults have sortOrder >= 0', () {
      for (final cat in CategoryData.defaults) {
        expect(cat.sortOrder, greaterThanOrEqualTo(0));
      }
    });

    test('last default is "Outros" with sortOrder 99', () {
      final last = CategoryData.defaults.last;
      expect(last.id, 'others');
      expect(last.name, 'Outros');
      expect(last.sortOrder, 99);
    });

    test('first default is "Frutas" with sortOrder 0', () {
      final first = CategoryData.defaults.first;
      expect(first.id, 'fruits');
      expect(first.name, 'Frutas');
      expect(first.sortOrder, 0);
    });

    test('all ids are unique', () {
      final ids = CategoryData.defaults.map((c) => c.id).toSet();
      expect(ids.length, CategoryData.defaults.length);
    });

    test('all sortOrders are unique except "Outros" (99)', () {
      final orders = CategoryData.defaults.map((c) => c.sortOrder).toSet();
      expect(orders.length, CategoryData.defaults.length);
    });
  });

  group('CategoryData.fromJson', () {
    test('parses complete data correctly', () {
      final json = {
        'id': 'test',
        'name': 'Teste',
        'color': 0xFF4CAF50,
        'iconCodepoint': 58829,
        'sortOrder': 5,
        'createdAt': '2026-06-07T10:00:00.000',
      };
      final cat = CategoryData.fromJson(json);
      expect(cat.id, 'test');
      expect(cat.name, 'Teste');
      expect(cat.color, 0xFF4CAF50);
      expect(cat.sortOrder, 5);
    });

    test('handles missing fields gracefully', () {
      final cat = CategoryData.fromJson({'id': 'fallback'});
      expect(cat.id, 'fallback');
      expect(cat.name, 'fallback');
      expect(cat.sortOrder, 999);
    });
  });

  group('CategoryData.toJson', () {
    test('round-trip preserves all fields', () {
      final cat = CategoryData.defaults.first;
      final json = cat.toJson();
      final restored = CategoryData.fromJson(json);
      expect(restored.id, cat.id);
      expect(restored.name, cat.name);
      expect(restored.sortOrder, cat.sortOrder);
    });
  });

  group('CategoryData.icon', () {
    test('returns IconData with MaterialIcons font', () {
      final cat = CategoryData.defaults.first;
      expect(cat.icon.fontFamily, 'MaterialIcons');
    });
  });

  group('CategoryData.copyWith', () {
    test('overrides specified fields', () {
      final cat = CategoryData.defaults.first;
      final result = cat.copyWith(name: 'Novo Nome');
      expect(result.name, 'Novo Nome');
      expect(result.id, cat.id);
    });
  });
}
