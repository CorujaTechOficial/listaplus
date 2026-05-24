import 'package:flutter_test/flutter_test.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:shopping_list/data/datasources/firestore/firestore_pantry_ds.dart';
import 'package:shopping_list/domain/entities/pantry_item.dart';

void main() {
  group('FirestorePantryDataSource', () {
    late FakeFirebaseFirestore fakeFirestore;
    late FirestorePantryDataSource ds;

    setUp(() {
      fakeFirestore = FakeFirebaseFirestore();
      ds = FirestorePantryDataSource(firestore: fakeFirestore, uid: 'test-uid');
    });

    test('savePantryItem creates document', () async {
      final item = PantryItem(id: 'p1', name: 'Arroz');
      await ds.savePantryItem(item);
      final doc = await fakeFirestore.collection('users/test-uid/pantry_items').doc('p1').get();
      expect(doc.data()?['name'], 'Arroz');
    });

    test('loadPantryItems returns all saved items', () async {
      await ds.savePantryItem(PantryItem(id: 'p1', name: 'Item 1'));
      await ds.savePantryItem(PantryItem(id: 'p2', name: 'Item 2'));
      final items = await ds.loadPantryItems();
      expect(items.length, 2);
    });

    test('deletePantryItem removes document', () async {
      await ds.savePantryItem(PantryItem(id: 'p1', name: 'To Delete'));
      await ds.deletePantryItem('p1');
      final doc = await fakeFirestore.collection('users/test-uid/pantry_items').doc('p1').get();
      expect(doc.exists, false);
    });
  });
}
