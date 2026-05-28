import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import '../models/shopping_item.dart';
import '../models/shopping_list.dart';
import '../models/chat_message.dart';
import '../models/chat_session_model.dart';
import '../models/pantry_item.dart';
import '../models/category_data.dart';
import 'logger_service.dart';
import 'storage_backend.dart';

class FirestoreService implements StorageBackend {
  // coverage:ignore-start
  FirestoreService({
    FirebaseFirestore? firestore,
    required String uid,
  })  : _db = firestore ?? FirebaseFirestore.instance,
        _uid = uid {
    debugPrint('FirestoreService initialized for UID: $_uid');
    // Enable persistence for better offline behavior
    try {
      _db.settings = const Settings(persistenceEnabled: true, cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED);
    } on Object catch (_) {
      // Ignored — FakeFirebaseFirestore (test) doesn't expose a settings setter.
    }
  }
  // coverage:ignore-end

  final FirebaseFirestore _db;
  final String _uid;
// coverage:ignore-start

  static const _maxRetries = 3;
  static const _baseDelay = Duration(milliseconds: 300);
  static const _operationTimeout = Duration(seconds: 15);
  static const _streamTimeout = Duration(seconds: 20);

  static bool isTransientError(Object error) {
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

  static Future<T> _retry<T>(Future<T> Function() fn, {String? label}) async {
    var attempt = 0;
    while (true) {
      try {
        return await fn().timeout(_operationTimeout);
      } on Object catch (e) {
        attempt++;
        if (attempt >= _maxRetries || !isTransientError(e)) {
          LoggerService.error(e, message: 'Firestore._retry falhou após $attempt tentativas${label != null ? " [$label]" : ""}');
          rethrow;
        }
        LoggerService.log('Firestore._retry: tentativa $attempt/$_maxRetries falhou - $e${label != null ? " [$label]" : ""}', tag: 'FirestoreService');
        final delay = _baseDelay * pow(2, attempt - 1).toInt();
        final jitter = Random().nextInt(100);
        await Future<void>.delayed(delay + Duration(milliseconds: jitter));
      }
    }
  }

  Stream<T> _wrapStream<T>(Stream<T> stream, {String? label}) {
    bool hasEmitted = false;
    final controller = StreamController<T>();
    
    final Timer timeoutTimer = Timer(_streamTimeout, () {
      if (!hasEmitted && !controller.isClosed) {
        LoggerService.log('Firestore Stream Timeout ($label) para UID: $_uid', tag: 'FirestoreService');
        controller.addError(TimeoutException('Tempo esgotado ao conectar com o servidor ($label). Verifique sua conexão.'));
      }
    });

    final sub = stream.listen(
      (data) {
        hasEmitted = true;
        timeoutTimer.cancel();
        if (!controller.isClosed) {
          controller.add(data);
        }
      },
      onError: (Object e) {
        timeoutTimer.cancel();
        LoggerService.error(e, message: 'Firestore Stream Error ($label)');
        if (!controller.isClosed) {
          controller.addError(e);
        }
      },
      onDone: () {
        timeoutTimer.cancel();
        if (!controller.isClosed) {
          controller.close();
        }
      },
      cancelOnError: false,
    );

    controller.onCancel = () {
      timeoutTimer.cancel();
      sub.cancel();
    };

    return controller.stream;
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
    }, label: 'loadLists');
  }

  @override
  Stream<List<ShoppingList>> watchLists() {
    final stream = _db
        .collection('users').doc(_uid).collection('lists')
        .snapshots()
        .map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return ShoppingList.fromJson(data);
        }).toList());
    return _wrapStream(stream, label: 'watchLists');
  }

  @override
  Future<void> saveList(ShoppingList list) async {
    return _retry(() async {
      await _db
          .collection('users').doc(_uid).collection('lists').doc(list.id)
          .set(list.toJson());
    }, label: 'saveList');
  }

  @override
  Future<void> saveLists(List<ShoppingList> lists) async {
    return _retry(() async {
      final listsRef = _db.collection('users').doc(_uid).collection('lists');
      const limit = 500;
      for (var i = 0; i < lists.length; i += limit) {
        final batch = _db.batch();
        final chunk = lists.sublist(i, (i + limit) > lists.length ? lists.length : i + limit);
        for (final list in chunk) {
          batch.set(listsRef.doc(list.id), list.toJson());
        }
        await batch.commit();
      }
    });
  }

  @override
  Future<void> deleteList(String listId) async {
    return _retry(() async {
      await _db
          .collection('users').doc(_uid).collection('lists').doc(listId)
          .delete();
    }, label: 'deleteList');
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
    final stream = _db
        .collection('users').doc(_uid).collection('items')
        .where('shoppingListId', isEqualTo: listId)
        .snapshots()
        .map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return ShoppingItem.fromJson(data);
        }).toList());
    return _wrapStream(stream, label: 'watchItems');
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
    }, label: 'deleteItemsFromList');
  }

  @override
  Future<String?> getCurrentListId() async {
    return _retry(() async {
      final doc = await _db.collection('users').doc(_uid).get();
      return doc.data()?['currentListId'] as String?;
    }, label: 'getCurrentListId');
  }

  @override
  Future<void> setCurrentListId(String? listId) async {
    return _retry(() async {
      await _db.collection('users').doc(_uid).set(
        {'currentListId': listId},
        SetOptions(merge: true),
      );
    }, label: 'setCurrentListId');
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
  Future<void> updatePreference(String key, String value) async {
    return _retry(() async {
      await _db.collection('users').doc(_uid).set({
        'preferences': {key: value}
      }, SetOptions(merge: true));
    });
  }

  @override
  Future<void> deletePreference(String key) async {
    return _retry(() async {
      await _db.collection('users').doc(_uid).update({
        'preferences.$key': FieldValue.delete(),
      });
    });
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

  // --- Sharing logic ---

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
          .set({'ownerUid': ownerUid, 'listId': listId});
    });
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
  Future<Map<String, String>> loadSharedListRefs() async {
    return _retry(() async {
      final snap = await _db
          .collection('users').doc(_uid).collection('sharedLists')
          .get();
      final Map<String, String> refs = {};
      for (final d in snap.docs) {
        final data = d.data();
        refs[d.id] = data['ownerUid'] as String;
      }
      return refs;
    });
  }

  @override
  Stream<Map<String, String>> watchSharedListRefs() {
    final stream = _db
        .collection('users').doc(_uid).collection('sharedLists')
        .snapshots()
        .map((snap) {
          final Map<String, String> refs = {};
          for (final d in snap.docs) {
            final data = d.data();
            refs[d.id] = data['ownerUid'] as String;
          }
          return refs;
        });
    return _wrapStream(stream, label: 'watchSharedListRefs');
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
    final stream = _db
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
    return _wrapStream(stream, label: 'watchListFromUser');
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
    final stream = _db
        .collection('users').doc(ownerUid).collection('items')
        .where('shoppingListId', isEqualTo: listId)
        .snapshots()
        .map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return ShoppingItem.fromJson(data);
        }).toList());
    return _wrapStream(stream, label: 'watchItemsFromUser');
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
      final itemsRef = _db.collection('users').doc(ownerUid).collection('items');
      final String? listId = items.isNotEmpty ? items.first.shoppingListId : null;
      
      if (listId != null) {
        final existingSnap = await itemsRef.where('shoppingListId', isEqualTo: listId).get();
        await _commitBatchInChunks(itemsRef, existingSnap.docs, items);
      } else {
        await _commitBatchInChunks(itemsRef, [], items);
      }
    });
  }

  // --- Pantry items ---

  @override
  Future<List<PantryItem>> loadPantryItems() async {
    return _retry(() async {
      final snap = await _db.collection('users').doc(_uid).collection('pantry').get();
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
      await _db.collection('users').doc(_uid).collection('pantry').doc(item.id).set(item.toJson());
    });
  }

  @override
  Future<void> savePantryItems(List<PantryItem> items) async {
    return _retry(() async {
      final pantryRef = _db.collection('users').doc(_uid).collection('pantry');
      
      // Sincronização Cirúrgica: Apenas salvamos o que foi enviado.
      // A deleção deve ser tratada individualmente por deletePantryItem
      // para evitar condições de corrida em ambientes multi-sessão.
      const limit = 500;
      for (var i = 0; i < items.length; i += limit) {
        final batch = _db.batch();
        final chunk = items.sublist(i, (i + limit) > items.length ? items.length : i + limit);
        for (final item in chunk) {
          batch.set(pantryRef.doc(item.id), item.toJson());
        }
        await batch.commit();
      }
    });
  }

  @override
  Future<void> deletePantryItem(String id) async {
    return _retry(() async {
      await _db.collection('users').doc(_uid).collection('pantry').doc(id).delete();
    });
  }

  @override
  Future<Map<String, dynamic>?> getAiUsage() async {
    return _retry(() async {
      final doc = await _db.collection('users').doc(_uid).get();
      return doc.data()?['aiUsage'] as Map<String, dynamic>?;
    });
  }

  @override
  Future<void> saveAiUsage(Map<String, dynamic> data) async {
    return _retry(() async {
      await _db.collection('users').doc(_uid).set({
        'aiUsage': data
      }, SetOptions(merge: true));
    });
  }

  CollectionReference<Map<String, dynamic>> _getChatSessionsColl(String? listId) {
    return listId != null
        ? _db.collection('users').doc(_uid).collection('lists').doc(listId).collection('chat_sessions')
        : _db.collection('users').doc(_uid).collection('global_chat_sessions');
  }

  CollectionReference<Map<String, dynamic>> _getChatMessagesColl(String? listId, String sessionId) {
    return _getChatSessionsColl(listId).doc(sessionId).collection('messages');
  }

  @override
  Future<List<ChatSessionModel>> loadChatSessions(String? listId) async {
    return _retry(() async {
      // 1. Check for legacy messages
      final legacyColl = listId != null
          ? _db.collection('users').doc(_uid).collection('lists').doc(listId).collection('chat_messages')
          : _db.collection('users').doc(_uid).collection('global_chat_messages');
      
      final legacySnap = await legacyColl.get();
      if (legacySnap.docs.isNotEmpty) {
        // Migration: Move legacy messages to a new session
        final legacySession = ChatSessionModel(
          title: 'Conversa Anterior',
          createdAt: DateTime.now().subtract(const Duration(days: 1)),
          listId: listId,
        );
        
        await saveChatSession(listId, legacySession);
        final batch = _db.batch();
        for (final doc in legacySnap.docs) {
          final messageData = doc.data();
          final newDocRef = _getChatMessagesColl(listId, legacySession.id).doc(doc.id);
          batch.set(newDocRef, messageData);
          batch.delete(doc.reference);
        }
        await batch.commit();
      }

      // 2. Load sessions
      final coll = _getChatSessionsColl(listId);
      final snap = await coll.orderBy('updatedAt', descending: true).get();
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return ChatSessionModel.fromJson(data);
      }).toList();
    });
  }

  @override
  Future<void> saveChatSession(String? listId, ChatSessionModel session) async {
    return _retry(() async {
      final coll = _getChatSessionsColl(listId);
      await coll.doc(session.id).set(session.toJson());
    });
  }

  @override
  Future<void> deleteChatSession(String? listId, String sessionId) async {
    return _retry(() async {
      final sessionRef = _getChatSessionsColl(listId).doc(sessionId);
      
      // Delete messages first
      final messagesColl = sessionRef.collection('messages');
      final snap = await messagesColl.get();
      if (snap.docs.isNotEmpty) {
        final batch = _db.batch();
        for (final doc in snap.docs) {
          batch.delete(doc.reference);
        }
        await batch.commit();
      }
      
      await sessionRef.delete();
    });
  }

  @override
  Future<List<ChatMessage>> loadChatMessages(String? listId, {String? sessionId}) async {
    if (sessionId == null) {
      return [];
    }
    return _retry(() async {
      final coll = _getChatMessagesColl(listId, sessionId);
      final snap = await coll.orderBy('timestamp').get();
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return ChatMessage.fromJson(data);
      }).toList();
    });
  }

  @override
  Future<void> saveChatMessage(String? listId, ChatMessage message, {String? sessionId}) async {
    if (sessionId == null) {
      return;
    }
    return _retry(() async {
      final coll = _getChatMessagesColl(listId, sessionId);
      await coll.doc(message.id).set(message.toJson());
      
      // Update session's updatedAt
      await _getChatSessionsColl(listId).doc(sessionId).update({
        'updatedAt': DateTime.now().toIso8601String(),
      });
    });
  }

  @override
  Future<void> deleteChatMessage(String? listId, String messageId, {String? sessionId}) async {
    if (sessionId == null) {
      return;
    }
    return _retry(() async {
      final coll = _getChatMessagesColl(listId, sessionId);
      await coll.doc(messageId).delete();
    });
  }

  @override
  Future<void> clearChatHistory(String? listId, {String? sessionId}) async {
    if (sessionId == null) {
      return;
    }
    return _retry(() async {
      final coll = _getChatMessagesColl(listId, sessionId);
      final snap = await coll.get();
      const limit = 500;
      for (var i = 0; i < snap.docs.length; i += limit) {
        final batch = _db.batch();
        final chunk = snap.docs.sublist(i, (i + limit) > snap.docs.length ? snap.docs.length : i + limit);
        for (final doc in chunk) {
          batch.delete(doc.reference);
        }
        await batch.commit();
      }
    });
  }

  @override
  Future<List<CategoryData>> loadCategories() async {
    return _retry(() async {
      final snap = await _db.collection('users').doc(_uid).collection('categories').get();
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return CategoryData.fromJson(data);
      }).toList();
    });
  }

  @override
  Stream<List<CategoryData>> watchCategories() {
    final stream = _db
        .collection('users').doc(_uid).collection('categories')
        .snapshots()
        .map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return CategoryData.fromJson(data);
        }).toList());
    return _wrapStream(stream, label: 'watchCategories');
  }

  @override
  Future<void> saveCategory(CategoryData cat) async {
    return _retry(() async {
      await _db.collection('users').doc(_uid).collection('categories').doc(cat.id).set(cat.toJson());
    });
  }

  @override
  Future<void> deleteCategory(String categoryId) async {
    return _retry(() async {
      await _db.collection('users').doc(_uid).collection('categories').doc(categoryId).delete();
    });
  }

  @override
  Future<void> saveCategories(List<CategoryData> categories) async {
    return _retry(() async {
      final catRef = _db.collection('users').doc(_uid).collection('categories');
      
      // Sincronização Cirúrgica: Salvamos os estados atuais das categorias.
      // Evitamos deletar o que não está na lista local para não apagar categorias
      // criadas simultaneamente em outros dispositivos ou sessões.
      const limit = 500;
      for (var i = 0; i < categories.length; i += limit) {
        final batch = _db.batch();
        final chunk = categories.sublist(i, (i + limit) > categories.length ? categories.length : i + limit);
        for (final cat in chunk) {
          batch.set(catRef.doc(cat.id), cat.toJson());
        }
        await batch.commit();
      }
    });
  }

  @override
  Future<List<Map<String, dynamic>>> loadRecipes() async {
    return _retry(() async {
      final snap = await _db.collection('users').doc(_uid).collection('recipes').orderBy('createdAt', descending: true).get();
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return data;
      }).toList();
    });
  }

  @override
  Stream<List<Map<String, dynamic>>> watchRecipes() {
    final stream = _db
        .collection('users').doc(_uid).collection('recipes')
        .snapshots()
        .map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return data;
        }).toList());
    return _wrapStream(stream, label: 'watchRecipes');
  }

  @override
  Future<void> saveRecipe(Map<String, dynamic> recipe) async {
    return _retry(() async {
      final id = recipe['id'] as String;
      await _db
          .collection('users').doc(_uid).collection('recipes').doc(id)
          .set(recipe);
    });
  }

  @override
  Future<void> deleteRecipe(String id) async {
    return _retry(() async {
      await _db
          .collection('users').doc(_uid).collection('recipes').doc(id)
          .delete();
    });
  }

  @override
  Future<String?> uploadRecipeImage(String recipeId, String filePath) async {
    try {
      final ref = FirebaseStorage.instance
          .ref('users/$_uid/recipe_images/$recipeId');
      await ref.putFile(File(filePath));
      return await ref.getDownloadURL();
    } on Object catch (e) {
      LoggerService.error(e, message: 'uploadRecipeImage: erro ao fazer upload');
      return null;
    }
  }

  @override
  Future<List<Map<String, dynamic>>> loadMealPlans({DateTime? start, DateTime? end}) async {
    return _retry(() async {
      var query = _db.collection('users').doc(_uid).collection('meal_plans') as Query<Map<String, dynamic>>;
      if (start != null) {
        query = query.where('date', isGreaterThanOrEqualTo: start.toIso8601String());
      }
      if (end != null) {
        query = query.where('date', isLessThanOrEqualTo: end.toIso8601String());
      }
      final snap = await query.get();
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return data;
      }).toList();
    }, label: 'loadMealPlans');
  }

  @override
  Stream<List<Map<String, dynamic>>> watchMealPlans({DateTime? start, DateTime? end}) {
    var query = _db.collection('users').doc(_uid).collection('meal_plans') as Query<Map<String, dynamic>>;
    if (start != null) {
      query = query.where('date', isGreaterThanOrEqualTo: start.toIso8601String());
    }
    if (end != null) {
      query = query.where('date', isLessThanOrEqualTo: end.toIso8601String());
    }
    final stream = query.snapshots().map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return data;
        }).toList());
    return _wrapStream(stream, label: 'watchMealPlans');
  }

  @override
  Future<void> saveMealPlan(Map<String, dynamic> mealPlan) async {
    return _retry(() async {
      final id = mealPlan['id'] as String;
      await _db
          .collection('users').doc(_uid).collection('meal_plans').doc(id)
          .set(mealPlan);
    });
  }

  @override
  Future<void> deleteMealPlan(String id) async {
    return _retry(() async {
      await _db
          .collection('users').doc(_uid).collection('meal_plans').doc(id)
          .delete();
    });
  }

  Future<void> _commitBatchInChunks(
    CollectionReference itemsRef,
    List<QueryDocumentSnapshot<Map<String, dynamic>>> existingDocs,
    List<ShoppingItem> items,
  ) async {
    final newItemIds = items.map((i) => i.id).toSet();
    final docsToDelete = existingDocs.where((doc) => !newItemIds.contains(doc.id)).toList();
    const limit = 500;
    final totalOps = docsToDelete.length + items.length;
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
    final allDeleteRefs = docsToDelete.map((d) => d.reference).toList();
    for (var i = 0; i < allDeleteRefs.length; i += limit) {
      final batch = _db.batch();
      final chunk = allDeleteRefs.sublist(i, (i + limit) > allDeleteRefs.length ? allDeleteRefs.length : i + limit);
      for (final ref in chunk) {
        batch.delete(ref);
      }
      await batch.commit();
    }
    for (var i = 0; i < items.length; i += limit) {
      final batch = _db.batch();
      final chunk = items.sublist(i, (i + limit) > items.length ? items.length : i + limit);
      for (final item in chunk) {
        batch.set(itemsRef.doc(item.id), item.toJson());
      }
      await batch.commit();
    }
  }

  @override
  Future<void> saveFeedback(Map<String, dynamic> feedbackData) async {
    return _retry(() async {
      await _db.collection('feedback').add(feedbackData);
    }, label: 'saveFeedback');
  }
}
// coverage:ignore-end
