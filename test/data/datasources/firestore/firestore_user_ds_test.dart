import 'package:flutter_test/flutter_test.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:shopping_list/data/datasources/firestore/firestore_user_ds.dart';
import 'package:shopping_list/domain/entities/user_profile.dart';

void main() {
  group('FirestoreUserDataSource', () {
    late FakeFirebaseFirestore fakeFirestore;
    late FirestoreUserDataSource ds;

    setUp(() {
      fakeFirestore = FakeFirebaseFirestore();
      ds = FirestoreUserDataSource(firestore: fakeFirestore, uid: 'test-uid');
    });

    test('updateUserData sets document fields', () async {
      final profile = UserProfile(uid: 'test-uid', displayName: 'João');
      await ds.updateUserData(profile);
      final doc = await fakeFirestore.collection('users').doc('test-uid').get();
      expect(doc.data()?['displayName'], 'João');
    });

    test('getCurrentListId returns null when not set', () async {
      final listId = await ds.getCurrentListId();
      expect(listId, isNull);
    });

    test('getCurrentListId returns saved list id', () async {
      await ds.setCurrentListId('list-123');
      final listId = await ds.getCurrentListId();
      expect(listId, 'list-123');
    });

    test('setCurrentListId updates existing document', () async {
      final profile = UserProfile(uid: 'test-uid', displayName: 'Maria');
      await ds.updateUserData(profile);
      await ds.setCurrentListId('list-456');
      final doc = await fakeFirestore.collection('users').doc('test-uid').get();
      expect(doc.data()?['currentListId'], 'list-456');
      expect(doc.data()?['displayName'], 'Maria');
    });
  });
}
