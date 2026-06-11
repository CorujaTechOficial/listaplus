import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/models/item_memory.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/unit.dart';

ShoppingItem _makeItem({
  required String name,
  required DateTime updatedAt,
  double? price,
  int quantity = 1,
  Unit unit = Unit.un,
  String categoryId = 'others',
}) =>
    ShoppingItem(
      shoppingListId: 'list1',
      name: name,
      quantity: quantity,
      categoryId: categoryId,
      unit: unit,
      estimatedPrice: price,
      updatedAt: updatedAt,
    );

void main() {
  group('buildItemMemoryMap', () {
    test('normalizes: trims whitespace and lowercases', () {
      final items = [_makeItem(name: '  Arroz  ', updatedAt: DateTime(2024))];
      final map = buildItemMemoryMap(items);
      expect(map.containsKey('arroz'), isTrue);
    });

    test('most recent entry wins for duplicate names', () {
      final items = [
        _makeItem(name: 'leite', updatedAt: DateTime(2023), price: 5.0, quantity: 1),
        _makeItem(name: 'leite', updatedAt: DateTime(2024), price: 8.0, quantity: 2),
      ];
      final map = buildItemMemoryMap(items);
      expect(map['leite']!.estimatedPrice, 8.0);
      expect(map['leite']!.quantity, 2);
    });

    test('returns empty map for empty list', () {
      expect(buildItemMemoryMap([]), isEmpty);
    });

    test('limits to 200 entries', () {
      final items = List.generate(
        300,
        (i) => _makeItem(
          name: 'item$i',
          updatedAt: DateTime(2024, 1, (i ~/ 28) + 1, i % 28),
        ),
      );
      final map = buildItemMemoryMap(items);
      expect(map.length, 200);
    });

    test('categoryId "others" maps to null', () {
      final items = [_makeItem(name: 'x', updatedAt: DateTime(2024), categoryId: 'others')];
      final map = buildItemMemoryMap(items);
      expect(map['x']!.categoryId, isNull);
    });

    test('real categoryId is preserved', () {
      final items = [_makeItem(name: 'x', updatedAt: DateTime(2024), categoryId: 'dairy')];
      final map = buildItemMemoryMap(items);
      expect(map['x']!.categoryId, 'dairy');
    });
  });
}
