import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/shopping_item.dart';
import '../models/shopping_list.dart';
import '../models/chat_message.dart';
import '../models/pantry_item.dart';
import 'storage_backend.dart';

class FirestoreService implements StorageBackend {
  // coverage:ignore-start
  FirestoreService({
    FirebaseFirestore? firestore,
    FirebaseAuth? auth,
  })  : _db = firestore ?? FirebaseFirestore.instance,
        _auth = auth ?? FirebaseAuth.instance;
  // coverage:ignore-end

  final FirebaseFirestore _db;
  final FirebaseAuth _auth;

  String get _uid => _auth.currentUser!.uid;
// coverage:ignore-start

  static const _maxRetries = 5;
  static const _baseDelay = Duration(milliseconds: 500);

  static bool _isTransientError(Object error) {
    if (error is FirebaseException) {
      return error.code == 'unavailable' ||
          error.code == 'deadline-exceeded' ||
          error.code == 'resource-exhausted' ||
          error.code == 'aborted' ||
          error.code == 'internal';
    }
    return false;
  }

  static Future<T> _retry<T>(Future<T> Function() fn) async {
    var attempt = 0;
    while (true) {
      try {
        return await fn();
      } on Object catch (e) {
        attempt++;
        if (attempt >= _maxRetries || !_isTransientError(e)) {
          rethrow;
        }
        final delay = _baseDelay * pow(2, attempt - 1).toInt();
        final jitter = Random().nextInt(100);
        await Future<void>.delayed(delay + Duration(milliseconds: jitter));
      }
    }
  }

  @override
  Future<List<ShoppingList>> loadLists() async {
    return _retry(() async {
      final snap = await _db
          .collection('users').doc(_uid).collection('lists')
          .orderBy('updatedAt', descending: true)
          .get();
      return snap.docs.map((d) => ShoppingList.fromJson(d.data())).toList();
    });
  }

  @override
  Stream<List<ShoppingList>> watchLists() {
    return _db
        .collection('users').doc(_uid).collection('lists')
        .orderBy('updatedAt', descending: true)
        .snapshots()
        .map((snap) => snap.docs.map((d) => ShoppingList.fromJson(d.data())).toList());
  }

  @override
  Future<void> saveLists(List<ShoppingList> lists) async {
    return _retry(() async {
      final batch = _db.batch();
      final listsRef = _db.collection('users').doc(_uid).collection('lists');
      for (final list in lists) {
        batch.set(listsRef.doc(list.id), list.toJson());
      }
      await batch.commit();
    });
  }

  @override
  Future<void> deleteList(String listId) async {
    return _retry(() async {
      await _db
          .collection('users').doc(_uid).collection('lists').doc(listId)
          .delete();
    });
  }

  @override
  Future<List<ShoppingItem>> loadItems(String listId) async {
    return _retry(() async {
      final snap = await _db
          .collection('users').doc(_uid).collection('items')
          .where('shoppingListId', isEqualTo: listId)
          .get();
      return snap.docs.map((d) => ShoppingItem.fromJson(d.data())).toList();
    });
  }

  @override
  Stream<List<ShoppingItem>> watchItems(String listId) {
    return _db
        .collection('users').doc(_uid).collection('items')
        .where('shoppingListId', isEqualTo: listId)
        .snapshots()
        .map((snap) => snap.docs.map((d) => ShoppingItem.fromJson(d.data())).toList());
  }

  @override
  Future<void> saveItems(List<ShoppingItem> items) async {
    return _retry(() async {
      final batch = _db.batch();
      final itemsRef = _db.collection('users').doc(_uid).collection('items');
      for (final item in items) {
        batch.set(itemsRef.doc(item.id), item.toJson());
      }
      await batch.commit();
    });
  }

  @override
  Future<void> deleteItemsFromList(String listId) async {
    return _retry(() async {
      final snap = await _db
          .collection('users').doc(_uid).collection('items')
          .where('shoppingListId', isEqualTo: listId)
          .get();
      final batch = _db.batch();
      for (final doc in snap.docs) {
        batch.delete(doc.reference);
      }
      await batch.commit();
    });
  }

  @override
  Future<String?> getCurrentListId() async {
    return _retry(() async {
      final doc = await _db.collection('users').doc(_uid).get();
      return doc.data()?['currentListId'] as String?;
    });
  }

  @override
  Future<void> setCurrentListId(String listId) async {
    return _retry(() async {
      await _db.collection('users').doc(_uid).set(
        {'currentListId': listId},
        SetOptions(merge: true),
      );
    });
  }

  @override
  Future<Map<String, dynamic>?> getUserData() async {
    return _retry(() async {
      final doc = await _db.collection('users').doc(_uid).get();
      return doc.data();
    });
  }

  @override
  Future<void> updateUserData(Map<String, dynamic> data) async {
    return _retry(() async {
      await _db.collection('users').doc(_uid).set(data, SetOptions(merge: true));
    });
  }

  @override
  Future<bool> getIsPremium() async {
    final data = await getUserData();
    return data?['isPremium'] as bool? ?? false;
  }

  @override
  Future<void> setIsPremium(bool value) async {
    await updateUserData({'isPremium': value});
  }

  @override
  Future<String?> getThemeMode() async {
    final data = await getUserData();
    return data?['themeMode'] as String?;
  }

  @override
  Future<void> setThemeMode(String mode) async {
    await updateUserData({'themeMode': mode});
  }

  @override
  Future<void> saveSharedList(String code, Map<String, dynamic> data) async {
    return _retry(() async {
      await _db.collection('sharedLists').doc(code).set(data);
    });
  }

  @override
  Future<Map<String, dynamic>?> getSharedList(String code) async {
    return _retry(() async {
      final doc = await _db.collection('sharedLists').doc(code).get();
      return doc.data();
    });
  }

  @override
  Future<void> saveSharedListRef(String listId, String ownerUid) async {
    return _retry(() async {
      await _db
          .collection('users').doc(_uid).collection('sharedLists').doc(listId)
          .set({'ownerUid': ownerUid, 'addedAt': DateTime.now().toIso8601String()});
    });
  }

  @override
  Future<Map<String, String>> loadSharedListRefs() async {
    return _retry(() async {
      final snap = await _db
          .collection('users').doc(_uid).collection('sharedLists')
          .get();
      return {for (final doc in snap.docs) doc.id: doc.data()['ownerUid'] as String};
    });
  }

  @override
  Stream<Map<String, String>> watchSharedListRefs() {
    return _db
        .collection('users').doc(_uid).collection('sharedLists')
        .snapshots()
        .map((snap) => {for (final doc in snap.docs) doc.id: doc.data()['ownerUid'] as String});
  }

  @override
  Future<void> removeSharedListRef(String listId) async {
    return _retry(() async {
      await _db
          .collection('users').doc(_uid).collection('sharedLists').doc(listId)
          .delete();
    });
  }

  @override
  Future<ShoppingList?> loadListFromUser(String ownerUid, String listId) async {
    return _retry(() async {
      final doc = await _db
          .collection('users').doc(ownerUid).collection('lists').doc(listId)
          .get();
      if (!doc.exists) {
        return null;
      }
      return ShoppingList.fromJson(doc.data()!);
    });
  }

  @override
  Stream<ShoppingList?> watchListFromUser(String ownerUid, String listId) {
    return _db
        .collection('users').doc(ownerUid).collection('lists').doc(listId)
        .snapshots()
        .map((doc) => doc.exists ? ShoppingList.fromJson(doc.data()!) : null);
  }

  @override
  Future<List<ShoppingItem>> loadItemsFromUser(String ownerUid, String listId) async {
    return _retry(() async {
      final snap = await _db
          .collection('users').doc(ownerUid).collection('items')
          .where('shoppingListId', isEqualTo: listId)
          .get();
      return snap.docs.map((d) => ShoppingItem.fromJson(d.data())).toList();
    });
  }

  @override
  Stream<List<ShoppingItem>> watchItemsFromUser(String ownerUid, String listId) {
    return _db
        .collection('users').doc(ownerUid).collection('items')
        .where('shoppingListId', isEqualTo: listId)
        .snapshots()
        .map((snap) => snap.docs.map((d) => ShoppingItem.fromJson(d.data())).toList());
  }

  @override
  Future<void> saveItemsToUser(String ownerUid, List<ShoppingItem> items) async {
    return _retry(() async {
      final batch = _db.batch();
      final itemsRef = _db.collection('users').doc(ownerUid).collection('items');
      for (final item in items) {
        batch.set(itemsRef.doc(item.id), item.toJson());
      }
      await batch.commit();
    });
  }

  @override
  Future<List<PantryItem>> loadPantryItems() async {
    return _retry(() async {
      final snap = await _db
          .collection('users').doc(_uid).collection('pantry')
          .orderBy('updatedAt', descending: true)
          .get();
      return snap.docs.map((d) => PantryItem.fromJson(d.data())).toList();
    });
  }

  @override
  Future<void> savePantryItems(List<PantryItem> items) async {
    return _retry(() async {
      final batch = _db.batch();
      final pantryRef = _db.collection('users').doc(_uid).collection('pantry');
      for (final item in items) {
        batch.set(pantryRef.doc(item.id), item.toJson());
      }
      await batch.commit();
    });
  }

  @override
  Future<void> deletePantryItem(String id) async {
    return _retry(() async {
      await _db
          .collection('users').doc(_uid).collection('pantry').doc(id)
          .delete();
    });
  }

  @override
  Future<List<ChatMessage>> loadChatMessages(String? listId) async {
    return _retry(() async {
      final collection = listId != null
          ? _db.collection('users').doc(_uid).collection('lists').doc(listId).collection('chat_messages')
          : _db.collection('users').doc(_uid).collection('global_chat_messages');
      
      final snap = await collection.orderBy('timestamp', descending: false).get();
      return snap.docs.map((d) => ChatMessage.fromJson(d.data())).toList();
    });
  }

  @override
  Future<void> saveChatMessage(String? listId, ChatMessage message) async {
    return _retry(() async {
      final collection = listId != null
          ? _db.collection('users').doc(_uid).collection('lists').doc(listId).collection('chat_messages')
          : _db.collection('users').doc(_uid).collection('global_chat_messages');
      
      await collection.doc(message.id).set(message.toJson());
    });
  }

  @override
  Future<void> clearChatHistory(String? listId) async {
    return _retry(() async {
      final collection = listId != null
          ? _db.collection('users').doc(_uid).collection('lists').doc(listId).collection('chat_messages')
          : _db.collection('users').doc(_uid).collection('global_chat_messages');
      
      final snap = await collection.get();
      final batch = _db.batch();
      for (final doc in snap.docs) {
        batch.delete(doc.reference);
      }
      await batch.commit();
    });
  }
}
// coverage:ignore-end
