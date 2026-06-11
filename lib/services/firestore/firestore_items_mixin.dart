import '../../models/shopping_item.dart';
import 'firestore_base.dart';

mixin FirestoreItemsMixin on FirestoreBase {
  Future<List<ShoppingItem>> loadItems(String listId) async {
    return FirestoreBase.retry(() async {
      final snap = await db
          .collection('users').doc(uid).collection('items')
          .where('shoppingListId', isEqualTo: listId)
          .get();
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return ShoppingItem.fromJson(data);
      }).toList();
    });
  }

  Future<Map<String, List<ShoppingItem>>> loadAllItemsForUser() async {
    final snap = await queryGetWithCacheFallback(
      db.collection('users').doc(uid).collection('items'),
    );
    final result = <String, List<ShoppingItem>>{};
    for (final doc in snap.docs) {
      final data = doc.data();
      data['id'] = doc.id;
      final item = ShoppingItem.fromJson(data);
      final listId = item.shoppingListId;
      result.putIfAbsent(listId, () => []).add(item);
    }
    return result;
  }

  Stream<List<ShoppingItem>> watchItems(String listId) {
    final stream = db
        .collection('users').doc(uid).collection('items')
        .where('shoppingListId', isEqualTo: listId)
        .snapshots()
        .map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return ShoppingItem.fromJson(data);
        }).toList());
    return wrapStream(stream, label: 'watchItems');
  }

  Future<void> saveItem(ShoppingItem item) async {
    return FirestoreBase.retry(() async {
      await db
          .collection('users').doc(uid).collection('items').doc(item.id)
          .set(item.toJson());
    });
  }

  Future<void> deleteItem(String listId, String itemId) async {
    return FirestoreBase.retry(() async {
      await db
          .collection('users').doc(uid).collection('items').doc(itemId)
          .delete();
    });
  }

  Future<void> saveItems(List<ShoppingItem> items) async {
    return FirestoreBase.retry(() async {
      final String? listId = items.isNotEmpty ? items.first.shoppingListId : null;
      final itemsRef = db.collection('users').doc(uid).collection('items');

      if (listId != null) {
        final existingSnap = await itemsRef
            .where('shoppingListId', isEqualTo: listId)
            .get();
        await commitBatchInChunks(itemsRef, existingSnap.docs, items);
      } else {
        await commitBatchInChunks(itemsRef, [], items);
      }
    });
  }

  Future<void> deleteItemsFromList(String listId) async {
    return FirestoreBase.retry(() async {
      final snap = await db
          .collection('users').doc(uid).collection('items')
          .where('shoppingListId', isEqualTo: listId)
          .get();
      
      final docs = snap.docs;
      const limit = 500;
      for (var i = 0; i < docs.length; i += limit) {
        final batch = db.batch();
        final chunk = docs.sublist(i, (i + limit) > docs.length ? docs.length : i + limit);
        for (final doc in chunk) {
          batch.delete(doc.reference);
        }
        await batch.commit();
      }
    }, label: 'deleteItemsFromList');
  }
}
