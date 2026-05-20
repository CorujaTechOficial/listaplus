import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/shopping_item.dart';
import '../models/shopping_list.dart';
import '../models/chat_message.dart';
import '../models/pantry_item.dart';
import 'storage_backend.dart';

class FirestoreService implements StorageBackend {
  // coverage:ignore-start
  FirestoreService({
    FirebaseFirestore? firestore,
    required String uid,
  })  : _db = firestore ?? FirebaseFirestore.instance,
        _uid = uid;
  // coverage:ignore-end

  final FirebaseFirestore _db;
  final String _uid;
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
    if (error is SocketException || error is HttpException || error is TimeoutException) {
      return true;
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

  static Stream<T> _retryStream<T>(Stream<T> Function() fn) {
    return Stream<T>.multi((controller) {
      StreamSubscription<T>? sub;
      var attempt = 0;
      void subscribe() {
        sub = fn().listen(
          (event) {
            attempt = 0; // Fix #62: Reset attempt on success
            controller.add(event);
          },
          onError: (Object e) {
            attempt++;
            if (attempt >= _maxRetries || !_isTransientError(e)) {
              controller.addError(e);
              return;
            }
            final delay = _baseDelay * pow(2, attempt - 1).toInt();
            final jitter = Random().nextInt(100);
            Future<void>.delayed(delay + Duration(milliseconds: jitter)).then((_) {
              sub?.cancel();
              subscribe();
            });
          },
          onDone: controller.close,
          cancelOnError: false,
        );
      }
      subscribe();
      controller.onCancel = () => sub?.cancel();
    });
  }

  @override
  Future<List<ShoppingList>> loadLists() async {
    return _retry(() async {
      final snap = await _db
          .collection('users').doc(_uid).collection('lists')
          .orderBy('updatedAt', descending: true)
          .get();
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return ShoppingList.fromJson(data);
      }).toList();
    });
  }

  @override
  Stream<List<ShoppingList>> watchLists() {
    return _retryStream(() => _db
        .collection('users').doc(_uid).collection('lists')
        .orderBy('updatedAt', descending: true)
        .snapshots()
        .map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return ShoppingList.fromJson(data);
        }).toList()));
  }

  @override
  Future<void> saveList(ShoppingList list) async {
    return _retry(() async {
      await _db
          .collection('users').doc(_uid).collection('lists').doc(list.id)
          .set(list.toJson());
    });
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
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return ShoppingItem.fromJson(data);
      }).toList();
    });
  }

  @override
  Stream<List<ShoppingItem>> watchItems(String listId) {
    return _retryStream(() => _db
        .collection('users').doc(_uid).collection('items')
        .where('shoppingListId', isEqualTo: listId)
        .snapshots()
        .map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return ShoppingItem.fromJson(data);
        }).toList()));
  }

  @override
  Future<void> saveItem(ShoppingItem item) async {
    return _retry(() async {
      await _db
          .collection('users').doc(_uid).collection('items').doc(item.id)
          .set(item.toJson());
    });
  }

  @override
  Future<void> deleteItem(String listId, String itemId) async {
    return _retry(() async {
      await _db
          .collection('users').doc(_uid).collection('items').doc(itemId)
          .delete();
    });
  }

  @override
  Future<void> saveItems(List<ShoppingItem> items) async {
    return _retry(() async {
      final String? listId = items.isNotEmpty ? items.first.shoppingListId : null;
      final itemsRef = _db.collection('users').doc(_uid).collection('items');

      if (listId != null) {
        final existingSnap = await itemsRef
            .where('shoppingListId', isEqualTo: listId)
            .get();
        await _commitBatchInChunks(itemsRef, existingSnap.docs, items);
      } else {
        await _commitBatchInChunks(itemsRef, [], items);
      }
    });
  }

  @override
  Future<void> deleteItemsFromList(String listId) async {
    return _retry(() async {
      final snap = await _db
          .collection('users').doc(_uid).collection('items')
          .where('shoppingListId', isEqualTo: listId)
          .get();
      
      final docs = snap.docs;
      const limit = 500;
      for (var i = 0; i < docs.length; i += limit) {
        final batch = _db.batch();
        final chunk = docs.sublist(i, (i + limit) > docs.length ? docs.length : i + limit);
        for (final doc in chunk) {
          batch.delete(doc.reference);
        }
        await batch.commit();
      }
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
  Future<void> setCurrentListId(String? listId) async {
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
  Future<void> extendPremiumBy24h() async {
    return _retry(() async {
      final docRef = _db.collection('users').doc(_uid);
      await _db.runTransaction((transaction) async {
        final doc = await transaction.get(docRef);
        final currentStr = doc.data()?['premiumUntil'] as String?;
        final now = DateTime.now();

        var current = now;
        if (currentStr != null) {
          final parsed = DateTime.tryParse(currentStr) ?? now;
          if (parsed.isAfter(now)) {
            current = parsed;
          }
        }

        final maxUntil = now.add(const Duration(days: 7));
        final newUntil = current.add(const Duration(hours: 24));
        final capped = newUntil.isAfter(maxUntil) ? maxUntil : newUntil;

        transaction.set(docRef, {'premiumUntil': capped.toIso8601String()}, SetOptions(merge: true));
      });
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
  Future<String?> getLocale() async {
    final data = await getUserData();
    return data?['locale'] as String?;
  }

  @override
  Future<void> setLocale(String? locale) async {
    await updateUserData({'locale': locale});
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
    return _retryStream(() => _db
        .collection('users').doc(_uid).collection('sharedLists')
        .snapshots()
        .map((snap) => {for (final doc in snap.docs) doc.id: doc.data()['ownerUid'] as String}));
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
      final data = doc.data()!;
      data['id'] = doc.id;
      return ShoppingList.fromJson(data);
    });
  }

  @override
  Stream<ShoppingList?> watchListFromUser(String ownerUid, String listId) {
    return _retryStream(() => _db
        .collection('users').doc(ownerUid).collection('lists').doc(listId)
        .snapshots()
        .map((doc) {
          if (!doc.exists) {
            return null;
          }
          final data = doc.data()!;
          data['id'] = doc.id;
          return ShoppingList.fromJson(data);
        }));
  }

  @override
  Future<List<ShoppingItem>> loadItemsFromUser(String ownerUid, String listId) async {
    return _retry(() async {
      final snap = await _db
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

  @override
  Stream<List<ShoppingItem>> watchItemsFromUser(String ownerUid, String listId) {
    return _retryStream(() => _db
        .collection('users').doc(ownerUid).collection('items')
        .where('shoppingListId', isEqualTo: listId)
        .snapshots()
        .map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return ShoppingItem.fromJson(data);
        }).toList()));
  }

  @override
  Future<void> saveItemToUser(String ownerUid, ShoppingItem item) async {
    return _retry(() async {
      await _db
          .collection('users').doc(ownerUid).collection('items').doc(item.id)
          .set(item.toJson());
    });
  }

  @override
  Future<void> deleteItemFromUser(String ownerUid, String listId, String itemId) async {
    return _retry(() async {
      await _db
          .collection('users').doc(ownerUid).collection('items').doc(itemId)
          .delete();
    });
  }

  @override
  Future<void> saveItemsToUser(String ownerUid, List<ShoppingItem> items) async {
    return _retry(() async {
      final String? listId = items.isNotEmpty ? items.first.shoppingListId : null;
      final itemsRef = _db.collection('users').doc(ownerUid).collection('items');

      if (listId != null) {
        final existingSnap = await itemsRef
            .where('shoppingListId', isEqualTo: listId)
            .get();
        await _commitBatchInChunks(itemsRef, existingSnap.docs, items);
      } else {
        await _commitBatchInChunks(itemsRef, [], items);
      }
    });
  }

  @override
  Future<List<PantryItem>> loadPantryItems() async {
    return _retry(() async {
      final snap = await _db
          .collection('users').doc(_uid).collection('pantry')
          .orderBy('updatedAt', descending: true)
          .get();
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return PantryItem.fromJson(data);
      }).toList();
    });
  }

  @override
  Future<void> savePantryItem(PantryItem item) async {
    return _retry(() async {
      await _db
          .collection('users').doc(_uid).collection('pantry').doc(item.id)
          .set(item.toJson());
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
      final docs = snap.docs;
      for (var i = 0; i < docs.length; i += 500) {
        final batch = _db.batch();
        for (final doc in docs.sublist(i, (i + 500) > docs.length ? docs.length : i + 500)) {
          batch.delete(doc.reference);
        }
        await batch.commit();
      }
    });
  }

  Future<void> _commitBatchInChunks(
    CollectionReference itemsRef,
    List<QueryDocumentSnapshot<Map<String, dynamic>>> existingDocs,
    List<ShoppingItem> items,
  ) async {
    final newItemIds = items.map((i) => i.id).toSet();
    final docsToDelete = existingDocs.where((doc) => !newItemIds.contains(doc.id)).toList();

    final deleteOps = docsToDelete.length;
    final setOps = items.length;
    final totalOps = deleteOps + setOps;
    const limit = 500;

    if (totalOps <= limit) {
      final batch = _db.batch();
      for (final doc in docsToDelete) {
        batch.delete(doc.reference);
      }
      for (final item in items) {
        batch.set(itemsRef.doc(item.id), item.toJson());
      }
      await batch.commit();
      return;
    }

    if (deleteOps > 0) {
      for (var i = 0; i < deleteOps; i += limit) {
        final batch = _db.batch();
        final chunk = docsToDelete.sublist(i, (i + limit) > deleteOps ? deleteOps : i + limit);
        for (final doc in chunk) {
          batch.delete(doc.reference);
        }
        await batch.commit();
      }
    }
    if (setOps > 0) {
      for (var i = 0; i < setOps; i += limit) {
        final batch = _db.batch();
        final chunk = items.sublist(i, (i + limit) > setOps ? setOps : i + limit);
        for (final item in chunk) {
          batch.set(itemsRef.doc(item.id), item.toJson());
        }
        await batch.commit();
      }
    }
  }
}
// coverage:ignore-end
