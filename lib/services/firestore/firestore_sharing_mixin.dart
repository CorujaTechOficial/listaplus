import '../../models/shopping_item.dart';
import '../../models/shopping_list.dart';
import 'firestore_base.dart';

mixin FirestoreSharingMixin on FirestoreBase {
  Future<void> saveSharedList(String code, Map<String, dynamic> data) async {
    return FirestoreBase.retry(() async {
      await db.collection('sharedLists').doc(code).set(data);
    });
  }

  Future<Map<String, dynamic>?> getSharedList(String code) async {
    return FirestoreBase.retry(() async {
      final doc = await db.collection('sharedLists').doc(code).get();
      return doc.data();
    });
  }

  Future<void> saveSharedListRef(String listId, String ownerUid) async {
    return FirestoreBase.retry(() async {
      await db
          .collection('users').doc(uid).collection('sharedLists').doc(listId)
          .set({'ownerUid': ownerUid, 'listId': listId});
    });
  }

  Future<void> removeSharedListRef(String listId) async {
    return FirestoreBase.retry(() async {
      await db
          .collection('users').doc(uid).collection('sharedLists').doc(listId)
          .delete();
    });
  }

  Future<Map<String, String>> loadSharedListRefs() async {
    return FirestoreBase.retry(() async {
      final snap = await db
          .collection('users').doc(uid).collection('sharedLists')
          .get();
      final Map<String, String> refs = {};
      for (final d in snap.docs) {
        final data = d.data();
        refs[d.id] = data['ownerUid'] as String;
      }
      return refs;
    });
  }

  Stream<Map<String, String>> watchSharedListRefs() {
    final stream = db
        .collection('users').doc(uid).collection('sharedLists')
        .snapshots()
        .map((snap) {
          final Map<String, String> refs = {};
          for (final d in snap.docs) {
            final data = d.data();
            refs[d.id] = data['ownerUid'] as String;
          }
          return refs;
        });
    return wrapStream(stream, label: 'watchSharedListRefs');
  }

  Future<ShoppingList?> loadListFromUser(String ownerUid, String listId) async {
    return FirestoreBase.retry(() async {
      final doc = await db
          .collection('users').doc(ownerUid).collection('lists').doc(listId)
          .get();
          if (!doc.exists) {
            return null;
          }
      final data = doc.data()!;
      data['id'] = doc.id;
      return ShoppingList.fromJson(data);
    });
  }

  Stream<ShoppingList?> watchListFromUser(String ownerUid, String listId) {
    final stream = db
        .collection('users').doc(ownerUid).collection('lists').doc(listId)
        .snapshots()
        .map((doc) {
      if (!doc.exists) {
        return null;
      }
          final data = doc.data()!;
          data['id'] = doc.id;
          return ShoppingList.fromJson(data);
        });
    return wrapStream(stream, label: 'watchListFromUser');
  }

  Future<List<ShoppingItem>> loadItemsFromUser(String ownerUid, String listId) async {
    return FirestoreBase.retry(() async {
      final snap = await db
          .collection('users').doc(ownerUid).collection('items')
          .where('shoppingListId', isEqualTo: listId)
          .get();
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return ShoppingItem.fromJson(data);
      }).toList();
    });
  }

  Stream<List<ShoppingItem>> watchItemsFromUser(String ownerUid, String listId) {
    final stream = db
        .collection('users').doc(ownerUid).collection('items')
        .where('shoppingListId', isEqualTo: listId)
        .snapshots()
        .map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return ShoppingItem.fromJson(data);
        }).toList());
    return wrapStream(stream, label: 'watchItemsFromUser');
  }

  Future<void> saveItemToUser(String ownerUid, ShoppingItem item) async {
    return FirestoreBase.retry(() async {
      await db
          .collection('users').doc(ownerUid).collection('items').doc(item.id)
          .set(item.toJson());
    });
  }

  Future<void> deleteItemFromUser(String ownerUid, String listId, String itemId) async {
    return FirestoreBase.retry(() async {
      await db
          .collection('users').doc(ownerUid).collection('items').doc(itemId)
          .delete();
    });
  }

  Future<void> saveItemsToUser(String ownerUid, List<ShoppingItem> items) async {
    return FirestoreBase.retry(() async {
      final itemsRef = db.collection('users').doc(ownerUid).collection('items');
      final String? listId = items.isNotEmpty ? items.first.shoppingListId : null;
      
      if (listId != null) {
        final existingSnap = await itemsRef.where('shoppingListId', isEqualTo: listId).get();
        await commitBatchInChunks(itemsRef, existingSnap.docs, items);
      } else {
        await commitBatchInChunks(itemsRef, [], items);
      }
    });
  }
}
