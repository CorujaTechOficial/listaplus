import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/pantry_item.dart';
import 'package:shopping_list/domain/entities/unit.dart';

void main() {
  group('PantryItem', () {
    test('constructor sets default values', () {
      final item = PantryItem(id: '1', name: 'Arroz');
      expect(item.id, '1');
      expect(item.name, 'Arroz');
      expect(item.quantity, 1);
      expect(item.unit, Unit.un);
      expect(item.categoryId, 'others');
      expect(item.minQuantity, 0);
      expect(item.expiryDate, isNull);
      expect(item.isLow, false);
    });

    test('isLow returns true when quantity <= minQuantity', () {
      final item = PantryItem(id: '1', name: 'Arroz', quantity: 1, minQuantity: 5);
      expect(item.isLow, true);
    });

    test('copyWith updates fields', () {
      final item = PantryItem(id: '1', name: 'Arroz', quantity: 1);
      final copy = item.copyWith(quantity: 5);
      expect(copy.quantity, 5);
      expect(copy.name, 'Arroz');
    });

    test('copyWith clears expiryDate with null', () {
      final item = PantryItem(id: '1', name: 'Arroz', expiryDate: DateTime(2026, 6, 1));
      final copy = item.copyWith(expiryDate: null);
      expect(copy.expiryDate, isNull);
    });
  });
}
