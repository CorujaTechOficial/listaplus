import '../../models/shopping_list.dart';
import 'firestore_base.dart';

mixin FirestoreListsMixin on FirestoreBase {
  Future<List<ShoppingList>> loadLists() async {
    return FirestoreBase.retry(() async {
      final snap = await db
          .collection('users').doc(uid).collection('lists')
          .orderBy('updatedAt', descending: true)
          .get();
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return ShoppingList.fromJson(data);
      }).toList();
    }, label: 'loadLists');
  }

  Stream<List<ShoppingList>> watchLists() {
    final stream = db
        .collection('users').doc(uid).collection('lists')
        .snapshots()
        .map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return ShoppingList.fromJson(data);
        }).toList());
    return wrapStream(stream, label: 'watchLists');
  }

  Future<void> saveList(ShoppingList list) async {
    return FirestoreBase.retry(() async {
      await db
          .collection('users').doc(uid).collection('lists').doc(list.id)
          .set(list.toJson());
    }, label: 'saveList');
  }

  Future<void> saveLists(List<ShoppingList> lists) async {
    return FirestoreBase.retry(() async {
      final listsRef = db.collection('users').doc(uid).collection('lists');
      const limit = 500;
      for (var i = 0; i < lists.length; i += limit) {
        final batch = db.batch();
        final chunk = lists.sublist(i, (i + limit) > lists.length ? lists.length : i + limit);
        for (final list in chunk) {
          batch.set(listsRef.doc(list.id), list.toJson());
        }
        await batch.commit();
      }
    });
  }

  Future<void> deleteList(String listId) async {
    return FirestoreBase.retry(() async {
      await db
          .collection('users').doc(uid).collection('lists').doc(listId)
          .delete();
    }, label: 'deleteList');
  }
}
