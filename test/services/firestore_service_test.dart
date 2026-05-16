import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/models/category.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/services/firestore_service.dart';

void main() {
  const testUid = 'test-user-123';

  late FakeFirebaseFirestore fakeFirestore;
  late MockFirebaseAuth mockAuth;
  late FirestoreService service;

  setUp(() {
    fakeFirestore = FakeFirebaseFirestore();
    mockAuth = MockFirebaseAuth(
      mockUser: MockUser(uid: testUid),
      signedIn: true,
    );
    service = FirestoreService(firestore: fakeFirestore, auth: mockAuth);
  });

  group('FirestoreService lists', () {
    test('loadLists returns empty list when no data', () async {
      final lists = await service.loadLists();
      expect(lists, isEmpty);
    });

    test('saveLists then loadLists returns saved lists', () async {
      final list = ShoppingList(name: 'Mercado');
      await service.saveLists([list]);

      final loaded = await service.loadLists();
      expect(loaded.length, 1);
      expect(loaded[0].name, 'Mercado');
      expect(loaded[0].id, list.id);
    });

    test('saveLists persists to correct user path', () async {
      final list = ShoppingList(name: 'Mercado');
      await service.saveLists([list]);

      final snap = await fakeFirestore
          .collection('users').doc(testUid).collection('lists')
          .get();
      expect(snap.docs.length, 1);
      expect(snap.docs.first.data()['name'], 'Mercado');
    });

    test('deleteList removes list', () async {
      final list = ShoppingList(name: 'Feira');
      await service.saveLists([list]);
      await service.deleteList(list.id);

      final loaded = await service.loadLists();
      expect(loaded, isEmpty);
    });

    test('loadLists returns lists ordered by updatedAt descending', () async {
      final older = ShoppingList(
        name: 'Older',
        updatedAt: DateTime(2026, 1, 1),
      );
      final newer = ShoppingList(
        name: 'Newer',
        updatedAt: DateTime(2026, 6, 1),
      );
      await service.saveLists([older, newer]);

      final loaded = await service.loadLists();
      expect(loaded.length, 2);
      expect(loaded[0].name, 'Newer');
      expect(loaded[1].name, 'Older');
    });
  });

  group('FirestoreService items', () {
    test('loadItems returns empty list when no items', () async {
      final items = await service.loadItems('list-1');
      expect(items, isEmpty);
    });

    test('saveItems then loadItems returns saved items', () async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Arroz',
        quantity: 1,
        category: Category.others,
      );
      await service.saveItems([item]);

      final loaded = await service.loadItems('list-1');
      expect(loaded.length, 1);
      expect(loaded[0].name, 'Arroz');
    });

    test('loadItems filters by listId', () async {
      final item1 = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item1',
        quantity: 1,
        category: Category.others,
      );
      final item2 = ShoppingItem(
        shoppingListId: 'list-2',
        name: 'Item2',
        quantity: 1,
        category: Category.others,
      );
      await service.saveItems([item1, item2]);

      final loaded = await service.loadItems('list-1');
      expect(loaded.length, 1);
      expect(loaded[0].name, 'Item1');
    });

    test('saveItems persists to correct user path', () async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Arroz',
        quantity: 1,
        category: Category.others,
      );
      await service.saveItems([item]);

      final snap = await fakeFirestore
          .collection('users').doc(testUid).collection('items')
          .get();
      expect(snap.docs.length, 1);
      expect(snap.docs.first.data()['name'], 'Arroz');
    });
  });

  group('FirestoreService deleteItemsFromList', () {
    test('removes only items from given list', () async {
      final item1 = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item1',
        quantity: 1,
        category: Category.others,
      );
      final item2 = ShoppingItem(
        shoppingListId: 'list-2',
        name: 'Item2',
        quantity: 1,
        category: Category.others,
      );
      await service.saveItems([item1, item2]);
      await service.deleteItemsFromList('list-1');

      final fromList1 = await service.loadItems('list-1');
      expect(fromList1, isEmpty);

      final fromList2 = await service.loadItems('list-2');
      expect(fromList2.length, 1);
      expect(fromList2[0].name, 'Item2');
    });

    test('does nothing when list has no items', () async {
      await service.deleteItemsFromList('nonexistent');
    });
  });

  group('FirestoreService currentListId', () {
    test('getCurrentListId returns null initially', () async {
      final id = await service.getCurrentListId();
      expect(id, isNull);
    });

    test('setCurrentListId then getCurrentListId returns the id', () async {
      await service.setCurrentListId('list-1');
      final id = await service.getCurrentListId();
      expect(id, 'list-1');
    });

    test('setCurrentListId overwrites previous value', () async {
      await service.setCurrentListId('list-1');
      await service.setCurrentListId('list-2');
      final id = await service.getCurrentListId();
      expect(id, 'list-2');
    });

    test('currentListId stored on user doc', () async {
      await service.setCurrentListId('list-1');
      final snap =
          await fakeFirestore.collection('users').doc(testUid).get();
      expect(snap.data()?['currentListId'], 'list-1');
    });
  });

  group('FirestoreService user data', () {
    test('getUserData returns null initially', () async {
      final data = await service.getUserData();
      expect(data, isNull);
    });

    test('updateUserData merges data correctly', () async {
      await service.updateUserData({'isPremium': true});
      final data = await service.getUserData();
      expect(data?['isPremium'], true);
    });

    test('getIsPremium returns false initially', () async {
      final isPremium = await service.getIsPremium();
      expect(isPremium, false);
    });

    test('setIsPremium persists to backend', () async {
      await service.setIsPremium(true);
      final isPremium = await service.getIsPremium();
      expect(isPremium, true);
    });

    test('getThemeMode returns null initially', () async {
      final mode = await service.getThemeMode();
      expect(mode, isNull);
    });

    test('setThemeMode persists value', () async {
      await service.setThemeMode('dark');
      final mode = await service.getThemeMode();
      expect(mode, 'dark');
    });
  });
}
