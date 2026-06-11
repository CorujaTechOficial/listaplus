import 'dart:async' show unawaited;
import 'package:flutter/foundation.dart' show debugPrint;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/models/chat_session_model.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';

part 'chat_small_providers.g.dart';

class PremiumUnlockException implements Exception {
  PremiumUnlockException({
    required this.toolCall,
    required this.messages,
    required this.tools,
  });
  final AgentToolCall toolCall;
  final List<Map<String, dynamic>> messages;
  final List<Map<String, dynamic>> tools;
}

const int maxToolRounds = 5;
const int maxHistoryMessages = 20;

List<Map<String, dynamic>>? cachedToolsSchema;

@riverpod
class ChatStreaming extends _$ChatStreaming {
  @override
  bool build(String? id) => false;
  void setState(bool value) => state = value;
}

@riverpod
class ChatThinking extends _$ChatThinking {
  @override
  bool build(String? id) => false;
  void setState(bool value) => state = value;
}

@riverpod
class ChatActivity extends _$ChatActivity {
  @override
  String? build(String? id) => null;
  void setState(String? value) => state = value;
}

@riverpod
class ChatStreamingText extends _$ChatStreamingText {
  @override
  String? build(String? id) => null;
  void setState(String? value) => state = value;
}

@riverpod
class ActiveChatSessionId extends _$ActiveChatSessionId {
  @override
  String? build(String? listId) => null;
  void set(String? value) => state = value;
}

@riverpod
class ChatSessions extends _$ChatSessions {
  @override
  Future<List<ChatSessionModel>> build(String? listId) async {
    final service = ref.watch(firestoreServiceProvider);
    if (service == null) return [];
    final sessions = await service.loadChatSessions(listId);
    if (sessions.isNotEmpty) {
      final activeId = ref.read(activeChatSessionIdProvider(listId));
      if (activeId == null) {
        unawaited(Future.microtask(() {
          if (ref.mounted) {
            ref.read(activeChatSessionIdProvider(listId).notifier).set(sessions.first.id);
          }
        }));
      }
    }
    return sessions;
  }

  void createNewSession() {
    ref.read(activeChatSessionIdProvider(listId).notifier).set(null);
  }

  Future<String> startNewSession() async {
    final newSession = ChatSessionModel(title: 'Nova Conversa', listId: listId);
    final service = ref.read(firestoreServiceProvider);
    if (service == null) return newSession.id;
    unawaited(
      service.saveChatSession(listId, newSession).catchError((Object e) {
        debugPrint('[ChatSessions] Error saving session to firestore (proceeding anyway): $e');
        return null;
      }),
    );
    if (!ref.mounted) {
      return newSession.id;
    }
    ref.invalidateSelf();
    ref.read(activeChatSessionIdProvider(listId).notifier).set(newSession.id);
    return newSession.id;
  }

  Future<void> deleteSession(String sessionId) async {
    final service = ref.read(firestoreServiceProvider);
    if (service == null) return;
    await service.deleteChatSession(listId, sessionId);
    if (!ref.mounted) {
      return;
    }
    ref.invalidateSelf();
    if (ref.read(activeChatSessionIdProvider(listId)) == sessionId) {
      ref.read(activeChatSessionIdProvider(listId).notifier).set(null);
    }
  }
}
