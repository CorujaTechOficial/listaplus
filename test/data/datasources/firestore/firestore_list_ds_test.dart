import 'package:flutter_test/flutter_test.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:shopping_list/data/datasources/firestore/firestore_list_ds.dart';
import 'package:shopping_list/domain/entities/shopping_list.dart';

void main() {
  group('FirestoreListDataSource', () {
    late FakeFirebaseFirestore fakeFirestore;
    late FirestoreListDataSource ds;

    setUp(() {
      fakeFirestore = FakeFirebaseFirestore();
      ds = FirestoreListDataSource(firestore: fakeFirestore, uid: 'test-uid');
    });

    test('saveList creates document', () async {
      final list = ShoppingList(id: '1', name: 'Compras');
      await ds.saveList(list);
      final doc = await fakeFirestore.collection('users/test-uid/lists').doc('1').get();
      expect(doc.data()?['name'], 'Compras');
    });

    test('loadLists returns saved lists', () async {
      await ds.saveList(ShoppingList(id: '1', name: 'Lista 1'));
      await ds.saveList(ShoppingList(id: '2', name: 'Lista 2'));
      final lists = await ds.loadLists();
      expect(lists.length, 2);
    });

    test('deleteList removes document', () async {
      await ds.saveList(ShoppingList(id: '1', name: 'To Delete'));
      await ds.deleteList('1');
      final doc = await fakeFirestore.collection('users/test-uid/lists').doc('1').get();
      expect(doc.exists, false);
    });
  });
}
