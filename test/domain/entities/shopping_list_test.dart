import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/shopping_list.dart';

void main() {
  group('ShoppingList', () {
    test('constructor sets default values', () {
      final list = ShoppingList(id: '1', name: 'Test');
      expect(list.id, '1');
      expect(list.name, 'Test');
      expect(list.budget, isNull);
      expect(list.ownerUid, isNull);
      expect(list.isArchived, false);
      expect(list.createdAt, isA<DateTime>());
      expect(list.updatedAt, isA<DateTime>());
    });

    test('isShared returns true when ownerUid is not null', () {
      final shared = ShoppingList(id: '1', name: 'Shared', ownerUid: 'uid1');
      expect(shared.isShared, true);
    });

    test('isShared returns false when ownerUid is null', () {
      final own = ShoppingList(id: '1', name: 'Own');
      expect(own.isShared, false);
    });

    test('copyWith updates only specified fields', () {
      final list = ShoppingList(id: '1', name: 'Original');
      final copy = list.copyWith(name: 'Updated', budget: 100.0);
      expect(copy.name, 'Updated');
      expect(copy.budget, 100.0);
      expect(copy.id, '1');
      expect(copy.isArchived, false);
    });

    test('copyWith clears nullable fields with null', () {
      final list = ShoppingList(id: '1', name: 'Test', budget: 50.0);
      final copy = list.copyWith(budget: null);
      expect(copy.budget, isNull);
    });
  });
}
