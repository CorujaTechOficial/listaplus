import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/chat_message.dart';
import '../../models/chat_session_model.dart';
import 'firestore_base.dart';

mixin FirestoreChatMixin on FirestoreBase {
  CollectionReference<Map<String, dynamic>> _getChatSessionsColl(String? listId) {
    return listId != null
        ? db.collection('users').doc(uid).collection('lists').doc(listId).collection('chat_sessions')
        : db.collection('users').doc(uid).collection('global_chat_sessions');
  }

  CollectionReference<Map<String, dynamic>> _getChatMessagesColl(String? listId, String sessionId) {
    return _getChatSessionsColl(listId).doc(sessionId).collection('messages');
  }

  Future<List<ChatSessionModel>> loadChatSessions(String? listId) async {
    return FirestoreBase.retry(() async {
      // 1. Check for legacy messages
      final legacyColl = listId != null
          ? db.collection('users').doc(uid).collection('lists').doc(listId).collection('chat_messages')
          : db.collection('users').doc(uid).collection('global_chat_messages');
      
      final legacySnap = await queryGetWithCacheFallback(legacyColl);
      if (legacySnap.docs.isNotEmpty) {
        // Migration: Move legacy messages to a new session
        final legacySession = ChatSessionModel(
          title: 'Conversa Anterior',
          createdAt: DateTime.now().subtract(const Duration(days: 1)),
          listId: listId,
        );
        
        await saveChatSession(listId, legacySession);
        final batch = db.batch();
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
      final snap = await queryGetWithCacheFallback(coll.orderBy('updatedAt', descending: true));
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return ChatSessionModel.fromJson(data);
      }).toList();
    });
  }

  Future<void> saveChatSession(String? listId, ChatSessionModel session) async {
    return FirestoreBase.retry(() async {
      final coll = _getChatSessionsColl(listId);
      await coll.doc(session.id).set(session.toJson());
    });
  }

  Future<void> updateChatSessionTitle(String? listId, String sessionId, String title) async {
    return FirestoreBase.retry(() async {
      final coll = _getChatSessionsColl(listId);
      await coll.doc(sessionId).update({
        'title': title,
        'updatedAt': DateTime.now().toIso8601String(),
      });
    });
  }

  Future<void> deleteChatSession(String? listId, String sessionId) async {
    return FirestoreBase.retry(() async {
      final sessionRef = _getChatSessionsColl(listId).doc(sessionId);
      
      // Delete messages first
      final messagesColl = sessionRef.collection('messages');
      final snap = await queryGetWithCacheFallback(messagesColl);
      if (snap.docs.isNotEmpty) {
        final batch = db.batch();
        for (final doc in snap.docs) {
          batch.delete(doc.reference);
        }
        await batch.commit();
      }
      
      await sessionRef.delete();
    });
  }

  Future<List<ChatMessage>> loadChatMessages(String? listId, {String? sessionId}) async {
    if (sessionId == null) {
      return [];
    }
    return FirestoreBase.retry(() async {
      final coll = _getChatMessagesColl(listId, sessionId);
      final snap = await queryGetWithCacheFallback(coll.orderBy('timestamp'));
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return ChatMessage.fromJson(data);
      }).toList();
    });
  }

  Future<void> saveChatMessage(String? listId, ChatMessage message, {String? sessionId}) async {
    if (sessionId == null) {
      return;
    }
    return FirestoreBase.retry(() async {
      final coll = _getChatMessagesColl(listId, sessionId);
      await coll.doc(message.id).set(message.toJson());
      
      // Update session's updatedAt - use set with merge if document might not exist
      await _getChatSessionsColl(listId).doc(sessionId).set({
        'updatedAt': DateTime.now().toIso8601String(),
      }, SetOptions(merge: true));
    });
  }

  Future<void> deleteChatMessage(String? listId, String messageId, {String? sessionId}) async {
    if (sessionId == null) {
      return;
    }
    return FirestoreBase.retry(() async {
      final coll = _getChatMessagesColl(listId, sessionId);
      await coll.doc(messageId).delete();
    });
  }

  Future<void> clearChatHistory(String? listId, {String? sessionId}) async {
    if (sessionId == null) {
      return;
    }
    return FirestoreBase.retry(() async {
      final coll = _getChatMessagesColl(listId, sessionId);
      final snap = await coll.get();
      const limit = 500;
      for (var i = 0; i < snap.docs.length; i += limit) {
        final batch = db.batch();
        final chunk = snap.docs.sublist(i, (i + limit) > snap.docs.length ? snap.docs.length : i + limit);
        for (final doc in chunk) {
          batch.delete(doc.reference);
        }
        await batch.commit();
      }
    });
  }
}
