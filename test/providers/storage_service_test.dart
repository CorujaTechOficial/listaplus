import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/providers/storage_service.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/category.dart';

void main() {
  group('StorageService', () {
    late StorageService storage;

    setUp(() {
      SharedPreferences.setMockInitialValues({});
      storage = StorageService();
    });

    test('loadLists returns empty list when no data', () async {
      final lists = await storage.loadLists();
      expect(lists, isEmpty);
    });

    test('saveLists and loadLists roundtrip', () async {
      await storage.saveLists([ShoppingList(name: 'Lista 1')]);
      final lists = await storage.loadLists();
      expect(lists.length, 1);
      expect(lists.first.name, 'Lista 1');
    });

    test('saveLists multiple lists', () async {
      await storage.saveLists([
        ShoppingList(name: 'A'),
        ShoppingList(name: 'B'),
      ]);
      final lists = await storage.loadLists();
      expect(lists.length, 2);
    });

    test('loadItems returns empty list when no data', () async {
      final items = await storage.loadItems('list-1');
      expect(items, isEmpty);
    });

    test('saveItems and loadItems roundtrip', () async {
      await storage.saveItems([
        ShoppingItem(
          shoppingListId: 'list-1',
          name: 'Item 1',
          quantity: 2,
          category: Category.others,
        ),
      ]);
      final items = await storage.loadItems('list-1');
      expect(items.length, 1);
      expect(items.first.name, 'Item 1');
    });

    test('loadItems filters by listId', () async {
      await storage.saveItems([
        ShoppingItem(
          shoppingListId: 'list-1',
          name: 'Da lista 1',
          quantity: 1,
          category: Category.others,
        ),
        ShoppingItem(
          shoppingListId: 'list-2',
          name: 'Da lista 2',
          quantity: 1,
          category: Category.others,
        ),
      ]);
      final items = await storage.loadItems('list-1');
      expect(items.length, 1);
      expect(items.first.name, 'Da lista 1');
    });

    test('currentListId get/set', () async {
      final id = await storage.getCurrentListId();
      expect(id, isNull);

      await storage.setCurrentListId('list-1');
      final loaded = await storage.getCurrentListId();
      expect(loaded, 'list-1');
    });

    test('deleteItemsFromList removes only items from given list', () async {
      await storage.saveItems([
        ShoppingItem(
          shoppingListId: 'list-1',
          name: 'Item A',
          quantity: 1,
          category: Category.others,
        ),
        ShoppingItem(
          shoppingListId: 'list-2',
          name: 'Item B',
          quantity: 1,
          category: Category.others,
        ),
      ]);

      await storage.deleteItemsFromList('list-1');

      final remaining = await storage.loadItems('list-2');
      expect(remaining.length, 1);
      expect(remaining.first.name, 'Item B');

      final removed = await storage.loadItems('list-1');
      expect(removed, isEmpty);
    });

    test('deleteItemsFromList does nothing when no items stored', () async {
      await storage.deleteItemsFromList('nonexistent');
      // should not throw
    });
  });
}
