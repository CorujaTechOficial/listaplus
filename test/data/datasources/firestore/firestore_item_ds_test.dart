import 'package:flutter_test/flutter_test.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:shopping_list/data/datasources/firestore/firestore_item_ds.dart';
import 'package:shopping_list/domain/entities/shopping_item.dart';

void main() {
  group('FirestoreItemDataSource', () {
    late FakeFirebaseFirestore fakeFirestore;
    late FirestoreItemDataSource ds;

    setUp(() {
      fakeFirestore = FakeFirebaseFirestore();
      ds = FirestoreItemDataSource(firestore: fakeFirestore, uid: 'test-uid');
    });

    test('saveItem creates document', () async {
      final item = ShoppingItem(id: 'i1', shoppingListId: 'l1', name: 'Arroz');
      await ds.saveItem(item);
      final doc = await fakeFirestore.collection('users/test-uid/items').doc('i1').get();
      expect(doc.data()?['name'], 'Arroz');
      expect(doc.data()?['shoppingListId'], 'l1');
    });

    test('loadItems returns items filtered by listId', () async {
      await ds.saveItem(ShoppingItem(id: 'i1', shoppingListId: 'l1', name: 'Arroz'));
      await ds.saveItem(ShoppingItem(id: 'i2', shoppingListId: 'l1', name: 'Feijão'));
      await ds.saveItem(ShoppingItem(id: 'i3', shoppingListId: 'l2', name: 'Leite'));

      final items = await ds.loadItems('l1');
      expect(items.length, 2);
      expect(items.map((e) => e.name), containsAll(['Arroz', 'Feijão']));
    });

    test('deleteItem removes document', () async {
      await ds.saveItem(ShoppingItem(id: 'i1', shoppingListId: 'l1', name: 'To Delete'));
      await ds.deleteItem('l1', 'i1');
      final doc = await fakeFirestore.collection('users/test-uid/items').doc('i1').get();
      expect(doc.exists, false);
    });

    test('watchItems returns stream of filtered items', () async {
      await ds.saveItem(ShoppingItem(id: 'i1', shoppingListId: 'l1', name: 'Arroz'));
      await ds.saveItem(ShoppingItem(id: 'i2', shoppingListId: 'l1', name: 'Feijão'));

      final items = await ds.watchItems('l1').first;
      expect(items.length, 2);
    });

    test('saveItems batch saves multiple items', () async {
      final items = [
        ShoppingItem(id: 'i1', shoppingListId: 'l1', name: 'Item 1'),
        ShoppingItem(id: 'i2', shoppingListId: 'l1', name: 'Item 2'),
      ];
      await ds.saveItems(items);
      final snapshot = await fakeFirestore.collection('users/test-uid/items').get();
      expect(snapshot.docs.length, 2);
    });
  });
}
