import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/data/models/pantry_item_model.dart';
import 'package:shopping_list/domain/entities/pantry_item.dart';
import 'package:shopping_list/domain/entities/unit.dart';

void main() {
  group('PantryItemModel', () {
    test('fromJson parses valid JSON', () {
      final json = {
        'id': '1',
        'name': 'Arroz',
        'quantity': 5,
        'unit': 'kg',
        'categoryId': 'grains',
        'minQuantity': 1,
        'expiryDate': null,
      };
      final model = PantryItemModel.fromJson(json);
      expect(model.id, '1');
      expect(model.name, 'Arroz');
      expect(model.quantity, 5);
      expect(model.unit, Unit.kg);
    });

    test('toEntity and fromEntity roundtrip', () {
      final entity = PantryItem(id: '1', name: 'Arroz', quantity: 5);
      final model = PantryItemModel.fromEntity(entity);
      final roundtrip = model.toEntity();
      expect(roundtrip.name, 'Arroz');
      expect(roundtrip.quantity, 5);
    });

    test('toJson produces correct map', () {
      final model = PantryItemModel(id: '1', name: 'Arroz');
      final json = model.toJson();
      expect(json['name'], 'Arroz');
      expect(json['unit'], 'un');
    });
  });
}
