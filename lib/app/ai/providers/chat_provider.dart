import 'dart:async' show unawaited;
import 'dart:convert' show jsonDecode, jsonEncode;
import 'package:shopping_list/domain/entities/suggested_reply.dart';
import 'package:characters/characters.dart';
import 'package:intl/intl.dart';
import 'package:flutter/foundation.dart' show debugPrint;
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../services/logger_service.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';
import 'package:shopping_list/app/ai/agent/tools/agent_tools.dart';
import 'package:shopping_list/app/ai/agent/executors/tool_executor.dart';
import '../../../services/ai_service.dart';
import '../../../models/chat_message.dart';
import '../../../models/unit.dart';
import '../../../models/shopping_item.dart';
import '../../../models/shopping_list.dart';
import '../../../models/interactive_artifact.dart';
import '../../../models/chat_session_model.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/app/settings/providers/settings_providers.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/core/providers/auth_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/misc_providers.dart';
import '../utils/ai_utils.dart';
import 'package:shopping_list/models/user_profile.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'chat_provider.g.dart';

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

const int _maxToolRounds = 5;
const int _maxHistoryMessages = 20;

// Cache estático dos schemas de tools — construído uma única vez em toda a vida
// do app, pois o schema nunca muda em runtime.
List<Map<String, dynamic>>? _cachedToolsSchema;

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

class _AgentResult {
  _AgentResult({required this.messages, required this.fallbackText});

  final List<Map<String, dynamic>> messages;
  final String fallbackText;
}

typedef _UndoCallback = Future<void> Function();

@riverpod
class ChatSession extends _$ChatSession {
  bool _isCancelled = false;
  AiCancellationToken? _cancelToken;
  Future<void>? _currentTask;
  PremiumUnlockException? _pendingUnlock;
  // Cache do system prompt para a invocação atual — evita múltiplos awaits
  // dentro do mesmo agent loop (era reconstruído a cada round).
  String? _cachedSystemPrompt;

  @override
  Future<List<ChatMessage>> build(String? listId, String? sessionId) async {
    if (sessionId == null) {
      return [];
    }

    ref.onDispose(() {
      _isCancelled = true;
      _cancelToken?.cancel();
      _currentTask = null;
    });
    final service = ref.watch(firestoreServiceProvider);
    return service.loadChatMessages(listId, sessionId: sessionId);
  }

  Future<void> sendMessage(String content) async {
    if (_currentTask != null) {
      debugPrint('[ChatSession] Ignorando mensagem concorrente.');
      return;
    }

    final keepAliveLink = ref.keepAlive();
    _isCancelled = false;
    _cachedSystemPrompt = null; // invalida cache para nova mensagem
    _cancelToken = AiCancellationToken();
    final task = _sendMessageInternal(content);
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
        _cancelToken = null;
        _cachedSystemPrompt = null;
      }
      keepAliveLink.close();
    }
  }

  Future<void> _finalizeResponse(
    AiService aiService,
    _AgentResult agentResult,
    List<Map<String, dynamic>> tools,
  ) async {
    final firestoreService = ref.read(firestoreServiceProvider);
    ref.read(chatStreamingProvider(listId).notifier).setState(true);
    unawaited(HapticFeedback.lightImpact());

    String finalText;
    bool isError = false;
    try {
      if (agentResult.fallbackText.isNotEmpty) {
        // O agent loop já tem o texto final — fazemos streaming LOCAL da resposta
        // em vez de uma segunda chamada HTTP ao modelo. Economiza 1-3s de latência
        // e um round-trip de rede por mensagem.
        finalText = await _localStreamText(agentResult.fallbackText);
      } else {
        // Fallback: streaming real via rede (edge case — texto vazio do loop)
        final systemPrompt =
            _cachedSystemPrompt ?? await _getCurrentSystemPrompt();
        if (_isCancelled) {
          return;
        }
        finalText = await _streamResponse(
          aiService,
          agentResult.messages,
          systemPrompt,
          tools,
          cancelToken: _cancelToken,
        );
      }
      if (_isCancelled) {
        ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
        ref.read(chatStreamingProvider(listId).notifier).setState(false);
        return;
      }
    } on Object catch (e, st) {
      if (_isCancelled) {
        return;
      }
      LoggerService.error(
        e,
        stackTrace: st,
        message: '[StreamResponse] Erro no streaming',
        extra: {
          'operation': 'stream_response',
          'listId': listId,
          'fallbackText':
              agentResult.fallbackText.characters.take(200).toString(),
          'hasToolCalls': agentResult.messages.any(
            (m) => m['tool_calls'] != null,
          ),
        },
      );
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      finalText = agentResult.fallbackText;
      isError = true;
    }

    if (finalText.isEmpty) {
      finalText = agentResult.fallbackText;
      isError = true;
    }

    if (!_isCancelled) {
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      ref.read(chatStreamingProvider(listId).notifier).setState(false);
    }
    unawaited(HapticFeedback.mediumImpact());

    final lastMsg = state.value?.lastOrNull;
    if (lastMsg != null) {
      final extracted = _extractSuggestionsFromText(finalText);
      final displayText = extracted.text;
      final llmSuggestions = extracted.suggestions;
      final suggestions =
          llmSuggestions ??
          _generateSuggestedReplies(displayText, listId)
              ?.map((s) => SuggestedReply(label: s, prompt: s, icon: 'chat'))
              .toList();
      final finalMessage = lastMsg.copyWith(
        content: displayText,
        isError: isError,
        suggestedReplies: suggestions,
      );
      final updatedMessages = <ChatMessage>[...state.value ?? []];
      updatedMessages[updatedMessages.length - 1] = finalMessage;
      state = AsyncValue.data(updatedMessages);

      final sessionId = ref.read(activeChatSessionIdProvider(listId));
      unawaited(
        firestoreService.saveChatMessage(
          listId,
          finalMessage,
          sessionId: sessionId,
        ).catchError((_) => null),
      );
    }
  }

  Future<void> resumeWithUnlock() async {
    final pending = _pendingUnlock;
    if (pending == null) {
      return;
    }
    _pendingUnlock = null;

    final keepAliveLink = ref.keepAlive();
    _isCancelled = false;
    _cachedSystemPrompt = null;
    _cancelToken = AiCancellationToken();
    final task = _resumeLoopInternal(pending, bypassPremium: true);
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
        _cancelToken = null;
        _cachedSystemPrompt = null;
      }
      keepAliveLink.close();
    }
  }

  Future<void> cancelUnlock() async {
    final pending = _pendingUnlock;
    if (pending == null) {
      return;
    }
    _pendingUnlock = null;

    final keepAliveLink = ref.keepAlive();
    _isCancelled = false;
    _cachedSystemPrompt = null;
    _cancelToken = AiCancellationToken();
    final task = _resumeLoopInternal(
      pending,
      bypassPremium: false,
      userDeclined: true,
    );
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
        _cancelToken = null;
        _cachedSystemPrompt = null;
      }
      keepAliveLink.close();
    }
  }

  Future<ToolResult> executeToolDirectly(
    String name,
    Map<String, dynamic> arguments,
  ) async {
    final executor = ToolExecutor(ref);
    final call = AgentToolCall(
      id: 'direct_${DateTime.now().millisecondsSinceEpoch}',
      name: name,
      arguments: arguments,
    );
    return executor.execute(call);
  }

  Future<void> _resumeLoopInternal(
    PremiumUnlockException pending, {
    required bool bypassPremium,
    bool userDeclined = false,
  }) async {
    final aiService = ref.read(aiServiceProvider);
    final executor = ToolExecutor(ref);
    _cachedSystemPrompt = null;
    // Usa cache estático de tools para evitar recriar 45+ Maps a cada invocação
    _cachedToolsSchema ??= AgentTools.all.map((t) => t.toOpenAIFunction()).toList();
    final tools = _cachedToolsSchema!;

    _AgentResult agentResult;
    try {
      ref.read(chatThinkingProvider(listId).notifier).setState(true);
      ref
          .read(chatActivityProvider(listId).notifier)
          .setState('Retomando processamento...');

      final updatedMessages = List<Map<String, dynamic>>.from(pending.messages);

      if (userDeclined) {
        // Se o usuário recusou, informamos à IA que a ferramenta falhou por recusa do usuário
        final result = ToolResult.fromError(
          'O usuário optou por não utilizar a interface interativa premium neste momento. Prossiga apenas com texto.',
          toolCallId: pending.toolCall.id,
        );

        // Atualiza o step para erro/cancelado na UI
        final finishedSteps =
            (state.value?.lastOrNull?.executionSteps ?? []).map((step) {
              return step.id == pending.toolCall.id
                  ? step.copyWith(status: AgentStepStatus.error)
                  : step;
            }).toList();
        _updateAssistantMessage(executionSteps: finishedSteps);

        updatedMessages.add({
          'role': 'tool',
          'tool_call_id': pending.toolCall.id,
          'content': result.content,
        });

        agentResult = await _agentLoop(
          aiService,
          executor,
          updatedMessages,
          tools: pending.tools,
          cancelToken: _cancelToken,
        );
        if (_isCancelled) {
          return;
        }
      } else {
        // Se foi liberado (bypassPremium), executamos a ferramenta
        final result = await executor.execute(
          pending.toolCall,
          bypassPremium: true,
        );
        if (_isCancelled) {
          return;
        }

        final finishedSteps =
            (state.value?.lastOrNull?.executionSteps ?? []).map((step) {
              return step.id == pending.toolCall.id
                  ? step.copyWith(
                    status:
                        result.success
                            ? AgentStepStatus.success
                            : AgentStepStatus.error,
                    resultData: result.resultData,
                  )
                  : step;
            }).toList();

        if (pending.toolCall.name == 'generate_artifact' &&
            result.success &&
            result.resultData != null) {
          final artifactJson =
              result.resultData!['artifact'] as Map<String, dynamic>;
          final artifact = InteractiveArtifact.fromJson(artifactJson);
          _updateAssistantMessage(
            executionSteps: finishedSteps,
            artifact: artifact,
          );
        } else {
          _updateAssistantMessage(executionSteps: finishedSteps);
        }

        final toolContent =
            result.resultData != null
                ? '${result.content}\n\nDADOS: ${jsonEncode(result.resultData)}'
                : result.content;
        updatedMessages.add({
          'role': 'tool',
          'tool_call_id': pending.toolCall.id,
          'content': toolContent,
        });

        agentResult = await _agentLoop(
          aiService,
          executor,
          updatedMessages,
          tools: pending.tools,
          cancelToken: _cancelToken,
        );
        if (_isCancelled) {
          return;
        }
      }
    } on PremiumUnlockException catch (e) {
      if (_isCancelled) {
        return;
      }
      debugPrint(
        '[AgentLoop] Bloqueio Premium detectado (recursivo) para ${e.toolCall.name}',
      );
      _pendingUnlock = e;
      return;
    } on Object catch (e, st) {
      if (_isCancelled) {
        return;
      }
      LoggerService.error(
        e,
        stackTrace: st,
        message: '[ResumeLoop] Erro ao retomar loop',
        extra: {'listId': listId, 'tool': pending.toolCall.name},
      );
      // Fallback em caso de erro na retomada
      agentResult = _AgentResult(
        messages: pending.messages,
        fallbackText: 'Erro ao retomar processamento.',
      );
    } finally {
      if (!_isCancelled) {
        ref.read(chatThinkingProvider(listId).notifier).setState(false);
        ref.read(chatActivityProvider(listId).notifier).setState(null);
      }
    }

    await _finalizeResponse(aiService, agentResult, tools);
  }

  void _updateAssistantMessage({
    String? content,
    List<AgentStep>? executionSteps,
    bool? isError,
    List<SuggestedReply>? suggestedReplies,
    InteractiveArtifact? artifact,
    Map<String, dynamic>? actions,
  }) {
    final currentList = state.value ?? [];
    if (currentList.isEmpty) {
      return;
    }
    final lastIndex = currentList.length - 1;
    final lastMsg = currentList[lastIndex];
    if (lastMsg.role != 'assistant') {
      return;
    }

    final updated = lastMsg.copyWith(
      content: content,
      executionSteps: executionSteps,
      isError: isError,
      suggestedReplies: suggestedReplies,
      artifact: artifact,
      actions: actions,
    );

    final newList = List<ChatMessage>.from(currentList);
    newList[lastIndex] = updated;
    state = AsyncValue.data(newList);
  }

  String _friendlyToolDescription(AgentToolCall toolCall) {
    final name = toolCall.name;
    final args = toolCall.arguments;
    switch (name) {
      case 'get_lists':
        return 'Buscando listas de compras';
      case 'get_current_list':
        return 'Identificando lista atual';
      case 'set_current_list':
        return 'Definindo lista atual';
      case 'create_list':
        return 'Criando lista "${args['name']}"';
      case 'rename_list':
        return 'Renomeando lista';
      case 'delete_list':
        return 'Excluindo lista';
      case 'archive_list':
        return 'Arquivando lista';
      case 'unarchive_list':
        return 'Desarquivando lista';
      case 'get_items':
        return 'Buscando itens da lista';
      case 'add_item':
        return 'Adicionando item "${args['name']}"';
      case 'update_item':
        return 'Atualizando item "${args['name'] ?? ''}"';
      case 'remove_item':
        return 'Removendo item';
      case 'toggle_purchased':
        return 'Alternando marcação de item';
      case 'toggle_purchased_batch':
        final idsStr = args['itemIds'] as String? ?? '';
        final count =
            idsStr.split(',').where((s) {
              return s.trim().isNotEmpty;
            }).length;
        final action =
            (args['isPurchased'] as bool? ?? false) ? 'Marcar' : 'Desmarcar';
        return '$action $count itens como comprados';
      case 'increment_quantity':
        return 'Aumentando quantidade';
      case 'decrement_quantity':
        return 'Diminuindo quantidade';
      case 'clear_purchased':
        return 'Limpando itens comprados';
      case 'clear_all_items':
        return 'Limpando lista';
      case 'reorder_items':
        return 'Reordenando itens';
      case 'get_pantry_items':
        return 'Buscando itens da despensa';
      case 'add_pantry_item':
        return 'Adicionando item "${args['name']}" à despensa';
      case 'update_pantry_item':
        return 'Atualizando item da despensa';
      case 'remove_pantry_item':
        return 'Removendo item da despensa';
      case 'consume_pantry_item':
        return 'Consumindo item da despensa';
      case 'restock_pantry_item':
        return 'Reabastecendo despensa';
      case 'clear_pantry':
        return 'Limpando despensa';
      case 'get_budget':
        return 'Buscando orçamento';
      case 'set_budget':
        final budget =
            args['budget'] != null ? (args['budget'] as num).toDouble() : 0.0;
        final moeda = ref.read(currencySettingProvider).value ?? 'BRL';
        return 'Definindo orçamento para ${formatCurrency(budget, moeda)}';
      case 'create_share_code':
        return 'Criando código de compartilhamento';
      case 'import_shared_list':
        return 'Importando lista compartilhada';
      case 'get_theme':
        return 'Consultando tema atual';
      case 'set_theme':
        return 'Alterando tema';
      case 'export_backup':
        return 'Exportando backup';
      case 'import_backup':
        return 'Importando backup';
      case 'generate_artifact':
        return 'Gerando interface interativa';
      case 'get_recipes':
        return 'Buscando suas receitas';
      case 'create_recipe':
        return 'Salvando nova receita';
      case 'delete_recipe':
        return 'Excluindo receita';
      case 'get_meal_plan':
        return 'Consultando seu cardápio';
      case 'schedule_meal':
        return 'Agendando refeição no cardápio';
      case 'remove_meal_plan_entry':
        return 'Removendo refeição do cardápio';
      case 'open_paywall':
        return 'Abrindo tela de assinatura';
      case 'request_app_review':
        return 'Solicitando sua avaliação';
      case 'prompt_app_update':
        return 'Verificando atualizações';
      case 'generate_referral_link':
        return 'Gerando seu link de indicação';
      default:
        return 'Executando ferramenta $name';
    }
  }

  Future<void> undoMessageActions(String messageId) async {
    final keepAliveLink = ref.keepAlive();
    try {
      final messages = state.value ?? [];
      final index = messages.indexWhere((m) {
        return m.id == messageId;
      });
      if (index == -1) {
        return;
      }

      final message = messages[index];
      final steps = message.executionSteps;
      if (steps == null || steps.isEmpty) {
        return;
      }

      final updatedSteps = List<AgentStep>.from(steps);
      final reverseCallbacks = <_UndoCallback>[];

      for (int i = updatedSteps.length - 1; i >= 0; i--) {
        final step = updatedSteps[i];
        if (step.status != AgentStepStatus.success) {
          continue;
        }

        final resultData = step.resultData;
        if (resultData == null) {
          continue;
        }

        try {
          final listId = resultData['listId'] as String?;

          if (resultData.containsKey('itemId') && listId != null) {
            final itemId = resultData['itemId'] as String;
            final currentItems = await ref.read(
              shoppingListItemsProvider(listId).future,
            );
            final originalItem =
                currentItems.where((i) => i.id == itemId).firstOrNull;
            await ref
                .read(shoppingListItemsProvider(listId).notifier)
                .removeItem(itemId);
            if (originalItem != null) {
              final capturedItem = originalItem;
              reverseCallbacks.add(() async {
                await ref
                    .read(
                      shoppingListItemsProvider(
                        capturedItem.shoppingListId,
                      ).notifier,
                    )
                    .restoreItem(capturedItem);
              });
            }
            updatedSteps[i] = step.copyWith(status: AgentStepStatus.undone);
          } else if (resultData.containsKey('previousState') && listId != null) {
            final previousState = Map<String, dynamic>.from(
              resultData['previousState'] as Map,
            );
            final item = ShoppingItem.fromJson(previousState);
            final currentItems = List<ShoppingItem>.from(
              await ref.read(shoppingListItemsProvider(listId).future),
            );
            await ref
                .read(shoppingListItemsProvider(listId).notifier)
                .restoreItem(item);
            reverseCallbacks.add(() async {
              await ref
                  .read(shoppingListItemsProvider(listId).notifier)
                  .updateItems(currentItems);
            });
            updatedSteps[i] = step.copyWith(status: AgentStepStatus.undone);
          } else if (resultData.containsKey('previousStates')) {
            final previousStates = resultData['previousStates'] as List<dynamic>;
            final items =
                previousStates.map((e) {
                  return ShoppingItem.fromJson(
                    Map<String, dynamic>.from(e as Map),
                  );
                }).toList();

            final itemsByList = <String, List<ShoppingItem>>{};
            for (final item in items) {
              itemsByList
                  .putIfAbsent(item.shoppingListId, () {
                    return [];
                  })
                  .add(item);
            }

            for (final entry in itemsByList.entries) {
              await ref
                  .read(shoppingListItemsProvider(entry.key).notifier)
                  .updateItems(entry.value);
            }
            reverseCallbacks.add(() async {
              for (final entry in itemsByList.entries) {
                await ref
                    .read(shoppingListItemsProvider(entry.key).notifier)
                    .updateItems(entry.value);
              }
            });
            updatedSteps[i] = step.copyWith(status: AgentStepStatus.undone);
          } else if (resultData.containsKey('previousBudget')) {
            final previousBudgetNum = resultData['previousBudget'] as num?;
            final previousBudget = previousBudgetNum?.toDouble();
            final currentBudget = ref.read(monthlyBudgetProvider).asData?.value;
            await ref
                .read(monthlyBudgetProvider.notifier)
                .setBudget(previousBudget);
            reverseCallbacks.add(() async {
              await ref
                  .read(monthlyBudgetProvider.notifier)
                  .setBudget(currentBudget);
            });
            updatedSteps[i] = step.copyWith(status: AgentStepStatus.undone);
          }
        } on Exception catch (e, st) {
          LoggerService.error(
            e,
            stackTrace: st,
            message: '[Undo] Error rolling back step ${step.id}',
            extra: {
              'operation': 'undo_step',
              'stepId': step.id,
              'stepName': step.description,
              'listId': listId,
              'stepStatus': step.status.name,
            },
          );
          // Reverse already-applied undos to avoid partial Firestore state
          for (final reverse in reverseCallbacks.reversed) {
            try {
              await reverse();
            } on Exception {
              // Best-effort reverse; log is already captured above
            }
          }
          break;
        }
      }

      final updatedMessage = message.copyWith(executionSteps: updatedSteps);
      final newList = List<ChatMessage>.from(messages);
      newList[index] = updatedMessage;
      state = AsyncValue.data(newList);

      await ref
          .read(firestoreServiceProvider)
          .saveChatMessage(listId, updatedMessage, sessionId: sessionId)
          .catchError((Object e, StackTrace st) {
        LoggerService.error(
          e,
          stackTrace: st,
          message: '[Undo] Failed to save updated chat message',
          extra: {
            'operation': 'undo_save_message',
            'listId': listId,
            'messageId': updatedMessage.id,
          },
        );
        return null;
      });
    } finally {
      keepAliveLink.close();
    }
  }

  Future<void> _sendMessageInternal(String content) async {
    final aiService = ref.read(aiServiceProvider);
    final firestoreService = ref.read(firestoreServiceProvider);

    if (sessionId == null) {
      return;
    }

    if (sessionId!.startsWith('onboarding_demo_')) {
      await _simulateOnboardingChat(content);
      return;
    }

    final userMessage = ChatMessage(role: 'user', content: content);

    final previousHistory = state.value ?? [];
    state = AsyncValue.data([...previousHistory, userMessage]);

    unawaited(
      firestoreService.saveChatMessage(
        listId,
        userMessage,
        sessionId: sessionId!,
      ).catchError((Object e, StackTrace st) {
        LoggerService.error(
          e,
          stackTrace: st,
          message: '[Chat] Failed to save user message',
          extra: {
            'operation': 'save_user_message',
            'listId': listId,
            'messageLength': content.length,
          },
        );
        return null;
      }),
    );

    // Se for a primeira mensagem ou o título ainda for o padrão, gera um título
    final currentMessages =
        previousHistory.where((m) => m.role == 'user').length;
    if (currentMessages == 0) {
      unawaited(_generateTitleInBackground(listId, sessionId!, content));
    }

    final apiMessages = <Map<String, dynamic>>[];
    // Limita o histórico para não estourar limites de tokens e manter performance
    final historyToSync =
        previousHistory.length > _maxHistoryMessages
            ? previousHistory.sublist(
              previousHistory.length - _maxHistoryMessages,
            )
            : previousHistory;

    for (final msg in historyToSync) {
      apiMessages.add({'role': msg.role, 'content': msg.content});
    }

    apiMessages.add({'role': 'user', 'content': content});

    // Usa cache estático de tools para evitar recriar 45+ Maps a cada mensagem
    _cachedToolsSchema ??= AgentTools.all.map((t) => t.toOpenAIFunction()).toList();
    final tools = _cachedToolsSchema!;
    final executor = ToolExecutor(ref);

    final assistantMessage = ChatMessage(
      role: 'assistant',
      content: '',
      executionSteps: [],
    );
    state = AsyncValue.data([...state.value ?? [], assistantMessage]);

    _AgentResult agentResult;
    try {
      ref.read(chatThinkingProvider(listId).notifier).setState(true);
      ref
          .read(chatActivityProvider(listId).notifier)
          .setState('Analisando sua solicitação...');
      agentResult = await _agentLoop(
        aiService,
        executor,
        apiMessages,
        tools: tools,
        cancelToken: _cancelToken,
      );
      if (_isCancelled) {
        return;
      }
    } on PremiumUnlockException catch (e) {
      if (_isCancelled) {
        return;
      }
      debugPrint(
        '[AgentLoop] Bloqueio Premium detectado para ${e.toolCall.name}',
      );
      _pendingUnlock = e;
      return;
    } on Object catch (e, stackTrace) {
      if (_isCancelled) {
        return;
      }
      LoggerService.error(
        e,
        stackTrace: stackTrace,
        message: '[AgentLoop] ERRO no loop principal',
        extra: {
          'operation': 'agent_loop',
          'listId': listId,
          'messageLength': content.length,
          'historyLength': previousHistory.length,
        },
      );
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      ref.read(chatThinkingProvider(listId).notifier).setState(false);
      ref.read(chatActivityProvider(listId).notifier).setState(null);
      const errorMsg =
          'Desculpe, ocorreu um erro ao processar sua solicitação. Verifique sua conexão ou tente novamente mais tarde.';
      _updateAssistantMessage(content: errorMsg, isError: true);
      final lastMsg = state.value?.lastOrNull;
      if (lastMsg != null) {
        unawaited(
          firestoreService.saveChatMessage(
            listId,
            lastMsg,
            sessionId: sessionId,
          ).catchError((Object e2, StackTrace st2) {
            if (_isCancelled) {
              return null;
            }
            LoggerService.error(
              e2,
              stackTrace: st2,
              message: '[AgentLoop] Failed to save error message',
              extra: {
                'operation': 'save_error_message',
                'listId': listId,
                'errorContent': lastMsg.content.characters.take(200).toString(),
              },
            );
            return null;
          }),
        );
      }
      return;
    } finally {
      if (!_isCancelled) {
        ref.read(chatThinkingProvider(listId).notifier).setState(false);
        ref.read(chatActivityProvider(listId).notifier).setState(null);
      }
    }

    await _finalizeResponse(aiService, agentResult, tools);
  }

  Future<void> _simulateOnboardingChat(String content) async {
    final userMessage = ChatMessage(role: 'user', content: content);
    final previousHistory = state.value ?? [];
    state = AsyncValue.data([...previousHistory, userMessage]);

    final assistantMessage = ChatMessage(
      role: 'assistant',
      content: '',
      executionSteps: [],
    );
    state = AsyncValue.data([...state.value ?? [], assistantMessage]);

    ref.read(chatThinkingProvider(listId).notifier).setState(true);

    if (content.contains('organizar') || content.contains('preferida')) {
      ref.read(chatActivityProvider(listId).notifier).setState('Pensando...');
      await Future<void>.delayed(const Duration(milliseconds: 600));
      if (_isCancelled) {
        return;
      }

      ref.read(chatActivityProvider(listId).notifier).setState('Verificando detalhes...');
      await Future<void>.delayed(const Duration(milliseconds: 600));
      if (_isCancelled) {
        return;
      }

      final finishedSteps = [
        AgentStep(
          id: 'step_1',
          description: 'Buscar receita recomendada',
          status: AgentStepStatus.success,
          toolName: 'get_recipes',
        ),
      ];
      _updateAssistantMessage(executionSteps: finishedSteps);

      ref.read(chatActivityProvider(listId).notifier).setState('Elaborando resposta...');
      await Future<void>.delayed(const Duration(milliseconds: 400));
      if (_isCancelled) {
        return;
      }

      ref.read(chatThinkingProvider(listId).notifier).setState(false);
      ref.read(chatActivityProvider(listId).notifier).setState(null);

      String food = 'sua comida favorita';
      final match = RegExp(r'preferida é ([^.?]+)').firstMatch(content);
      if (match != null) {
        food = match.group(1)!.trim();
      }

      final mockResponse = 'Com certeza! Aqui estão os ingredientes principais para fazer $food:\n\n'
          '- 📋 Massa/Base principal\n'
          '- 🍅 Molho especial\n'
          '- 🧀 Queijo fresco\n'
          '- 🌿 Temperos e condimentos selecionados\n\n'
          'Gostaria que eu adicione todos esses itens à sua lista de compras de uma vez?';

      ref.read(chatStreamingProvider(listId).notifier).setState(true);
      final streamedText = await _localStreamText(mockResponse);
      ref.read(chatStreamingProvider(listId).notifier).setState(false);
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);

      _updateAssistantMessage(
        content: streamedText,
        suggestedReplies: [
          SuggestedReply(
            label: 'Sim, adicionar tudo!',
            prompt: 'Incrível! Já pode colocar tudo na minha lista de compras?',
            icon: 'check',
          ),
        ],
      );
    } else {
      ref.read(chatActivityProvider(listId).notifier).setState('Pensando...');
      await Future<void>.delayed(const Duration(milliseconds: 600));
      if (_isCancelled) {
        return;
      }

      ref.read(chatActivityProvider(listId).notifier).setState('Adicionando itens à lista...');
      await Future<void>.delayed(const Duration(milliseconds: 1000));
      if (_isCancelled) {
        return;
      }

      final finishedSteps = [
        AgentStep(
          id: 'step_2',
          description: 'Adicionar ingredientes à lista',
          status: AgentStepStatus.success,
          toolName: 'add_shopping_items',
        ),
      ];
      _updateAssistantMessage(executionSteps: finishedSteps);

      ref.read(chatActivityProvider(listId).notifier).setState('Elaborando resposta...');
      await Future<void>.delayed(const Duration(milliseconds: 400));
      if (_isCancelled) {
        return;
      }

      ref.read(chatThinkingProvider(listId).notifier).setState(false);
      ref.read(chatActivityProvider(listId).notifier).setState(null);

      const mockResponse = 'Prontinho! Todos os ingredientes necessários foram adicionados à sua lista de compras com sucesso. 🛒✨';

      ref.read(chatStreamingProvider(listId).notifier).setState(true);
      final streamedText = await _localStreamText(mockResponse);
      ref.read(chatStreamingProvider(listId).notifier).setState(false);
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);

      _updateAssistantMessage(content: streamedText);
    }
  }

  Future<String> _getCurrentSystemPrompt() async {
    // Lê valores síncronos imediatamente (sem await)
    final authState = ref.read(authProvider);
    final user = authState.value;
    final creationDate = user?.metadata.creationTime ?? DateTime.now();
    final daysOfUse = DateTime.now().difference(creationDate).inDays;
    final userStats = ref.read(userStatsProvider);
    final totalBought = userStats.totalItemsBought;
    final streak = userStats.currentStreak;
    final currentLocale = Intl.getCurrentLocale();
    final currentListId = listId;

    final premiumState = ref.read(premiumProvider);
    final packageInfoState = ref.read(packageInfoProvider);
    final shoppingListsState = ref.read(shoppingListsProvider);
    final shoppingListItemsState = currentListId != null ? ref.read(shoppingListItemsProvider(currentListId)) : null;
    final userProfileState = ref.read(userProfileProvider);

    final isPremium = premiumState.hasValue
        ? (premiumState.value ?? false)
        : await AiUtils.awaitFuture<bool>(
            ref.read(premiumProvider.future),
            defaultValue: false,
            label: 'premiumProvider',
          );

    final packageInfo = packageInfoState.hasValue
        ? packageInfoState.value
        : await AiUtils.awaitFuture<PackageInfo?>(
            ref.read(packageInfoProvider.future),
            defaultValue: null,
            label: 'packageInfoProvider',
          );

    final lists = shoppingListsState.hasValue
        ? (shoppingListsState.value ?? const <ShoppingList>[])
        : await AiUtils.awaitFuture<List<ShoppingList>>(
            ref.read(shoppingListsProvider.future),
            defaultValue: const <ShoppingList>[],
            label: 'shoppingListsProvider',
          );

    final primaryItems = (currentListId != null)
        ? (shoppingListItemsState?.hasValue ?? false)
            ? (shoppingListItemsState!.value ?? const <ShoppingItem>[])
            : await AiUtils.awaitFuture<List<ShoppingItem>>(
                ref.read(shoppingListItemsProvider(currentListId).future),
                defaultValue: const <ShoppingItem>[],
                label: 'shoppingListItemsProvider',
              )
        : const <ShoppingItem>[];

    final profile = userProfileState.hasValue
        ? userProfileState.value
        : await AiUtils.awaitFuture<UserProfile?>(
            ref.read(userProfileProvider.future),
            defaultValue: null,
            label: 'userProfileProvider',
          );

    final appVersion = packageInfo?.version ?? '1.0.0';

    String prompt;
    int totalItemsCount = 0;

    if (currentListId != null) {
      final list = lists.where((l) => l.id == currentListId).firstOrNull;
      totalItemsCount = primaryItems.length;
      prompt = _buildListSystemPrompt(list, primaryItems, locale: currentLocale);
    } else {
      // Modo global: busca itens de TODAS as listas em paralelo
      final allItems = <String, List<ShoppingItem>>{};
      if (lists.isNotEmpty) {
        final itemFutures = lists.map((l) {
          final itemsState = ref.read(shoppingListItemsProvider(l.id));
          if (itemsState.hasValue) {
            return Future.value(itemsState.value ?? const <ShoppingItem>[]);
          }
          return AiUtils.awaitFuture<List<ShoppingItem>>(
            ref.read(shoppingListItemsProvider(l.id).future),
            defaultValue: const <ShoppingItem>[],
            timeout: const Duration(seconds: 5),
            label: 'shoppingListItemsProvider (${l.name})',
          );
        });
        final allResults = await Future.wait(itemFutures);
        for (var i = 0; i < lists.length; i++) {
          allItems[lists[i].name] = allResults[i];
          totalItemsCount += allResults[i].length;
        }
      }
      prompt = _buildGlobalSystemPrompt(allItems, locale: currentLocale);
    }

    final today = DateFormat(
      'EEEE, dd/MM/yyyy',
      currentLocale,
    ).format(DateTime.now());

    // Injetar Contexto de Status do Usuário
    final userContext = '''
\n--- STATUS DO USUÁRIO ---
- Plano: ${isPremium ? 'Premium (Pro)' : 'Gratuito'}
- Idioma do App: $currentLocale
- Data atual: $today
- Total de itens em todas as listas: $totalItemsCount
- Itens comprados (histórico): $totalBought
- Dias de uso do app: $daysOfUse dias
- Streak de compras (dias seguidos): $streak dias
- Versão do App: $appVersion
--------------------------
''';

    prompt = userContext + prompt;

    // Adicionar instruções de idioma
    prompt += '''

IMPORTANTE SOBRE O IDIOMA:
O idioma de interface do usuário é $currentLocale. Você DEVE responder SEMPRE no idioma que o usuário utilizar para falar com você.
Se ele falar em inglês, responda em inglês. Se falar em português, responda em português.
Se o idioma do usuário for diferente de $currentLocale, use o idioma do usuário, mas mantenha termos técnicos do app conforme a interface.
''';

    // Sugestões contextuais geradas pela IA
    prompt += '''

GERAÇÃO DE SUGESTÕES:
Ao final de cada resposta, inclua um bloco de sugestões prevendo o que o usuário vai querer fazer em seguida:

[SUGGESTIONS]
[{"label":"Texto do botão","prompt":"Texto a enviar quando tocar","icon":"add_shopping_cart"},{"label":"Ver receita","prompt":"Mostre a receita completa","icon":"menu_book"}]
[/SUGGESTIONS]

Regras:
- Sempre 2-3 sugestões.
- label: curto (<30 chars), acionável.
- prompt: frase completa que será enviada ao tocar.
- icon: escolha de add_shopping_cart, receipt_long, restaurant_menu, menu_book, local_fire_department, eco, cleaning_services, savings, trending_up, cake, shopping_cart, check_circle, delete, edit, share, map, search, lightbulb, tips_and_updates, organize, kitchen, grocery, calendar_month, schedule, group_add, archive, checklist, nutrition, price_check, repeat, star, timer, today.
- Baseie as sugestões no contexto da conversa, nos itens da lista e no perfil do usuário.
- Se não houver sugestões relevantes, omita o bloco.''';

    // Adicionar instruções de gamificação
    if (streak > 1 || totalBought > 10) {
      prompt +=
          '\nGAMIFICAÇÃO: Elogie o usuário pelo seu streak de $streak dias ou por ter comprado $totalBought itens no total. Faça-o se sentir um mestre da organização!';
    }

    // Adicionar instruções de ferramentas de sistema
    prompt += '''

AÇÕES DE SISTEMA:
Você tem ferramentas especiais para interagir com o sistema do app:
- `open_paywall`: Se o usuário for 'Gratuito' e tentar usar funções Pro (orçamento, compartilhamento, backup, Gen UI avançada) ou se demonstrar interesse em ajudar o app financeiramente, abra a tela de planos.
- `request_app_review`: Se o usuário elogiar muito o app ou agradecer por uma ajuda valiosa, peça uma avaliação.
- `prompt_app_update`: Se houver dúvidas sobre bugs ou novas funções, sugira atualizar.
- `generate_referral_link`: Sugira isso se o usuário quiser Premium mas não puder pagar no momento. Explique que é um sistema 'Ganha-Ganha': ele ganha 7 dias de Pro e o amigo convidado também ganha 7 dias para testar.

Seja sutil e aja como um concierge. Ajude primeiro, venda depois.''';

    // Usa o `profile` já buscado em paralelo acima (não requer novo await)
    try {
      if (profile != null && !profile.isEmpty) {
        final fields = <String>[];
        if (profile.preferredStore != null &&
            profile.preferredStore!.isNotEmpty) {
          fields.add('Mercado preferido: ${profile.preferredStore}');
        }
        if (profile.dietaryRestrictions != null &&
            profile.dietaryRestrictions!.isNotEmpty) {
          fields.add('Restrição alimentar: ${profile.dietaryRestrictions}');
        }
        if (profile.avoidedStores != null &&
            profile.avoidedStores!.isNotEmpty) {
          fields.add('Mercados a evitar: ${profile.avoidedStores}');
        }
        if (profile.notes != null && profile.notes!.isNotEmpty) {
          fields.add('Observações: ${profile.notes}');
        }
        if (fields.isNotEmpty) {
          prompt +=
              '\n\nPerfil do Usuário:\n${fields.map((f) => '- $f').join('\n')}\n'
              'Lembre-se desse perfil ao sugerir itens, receitas ou ações. '
              'Use get_user_profile para consultar o perfil completo, '
              'update_user_profile para atualizar campos do perfil, '
              'save_user_preference para salvar preferências diversas '
              'e delete_user_preference para remover preferências.';
        }
      }
    } on Exception {
      // Silently ignore — profile is not critical
    }

    return prompt;
  }

  Future<void> retryMessage() async {
    if (_currentTask != null) {
      return;
    }

    final keepAliveLink = ref.keepAlive();
    _isCancelled = false;
    _cancelToken = AiCancellationToken();
    final task = _retryMessageInternal();
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
        _cancelToken = null;
      }
      keepAliveLink.close();
    }
  }

  Future<void> _retryMessageInternal() async {
    final messages = state.value ?? [];
    if (messages.isEmpty) {
      return;
    }

    // Remove as mensagens de erro do final
    final newMessages = List<ChatMessage>.from(messages);
    while (newMessages.isNotEmpty &&
        (newMessages.last.isError ||
            newMessages.last.role == 'assistant' &&
                newMessages.last.content.isEmpty)) {
      final removed = newMessages.removeLast();
      await ref
          .read(firestoreServiceProvider)
          .deleteChatMessage(listId, removed.id, sessionId: sessionId);
      if (_isCancelled) {
        return;
      }
    }

    if (!_isCancelled) {
      state = AsyncValue.data(newMessages);
    }

    // Encontra a última mensagem do usuário
    final lastUserMessageIndex = newMessages.lastIndexWhere(
      (m) => m.role == 'user',
    );
    if (lastUserMessageIndex != -1) {
      final lastUserMessage = newMessages[lastUserMessageIndex];
      final content = lastUserMessage.content;

      if (content.isNotEmpty) {
        newMessages.removeAt(lastUserMessageIndex);
        await ref
            .read(firestoreServiceProvider)
            .deleteChatMessage(listId, lastUserMessage.id, sessionId: sessionId);
        if (_isCancelled) {
          return;
        }

        state = AsyncValue.data(newMessages);

        await _sendMessageInternal(content);
      }
    }
  }

  void cancelRequest() {
    _isCancelled = true;
    _cancelToken?.cancel();
    _currentTask = null;
    ref.read(chatStreamingProvider(listId).notifier).setState(false);
    ref.read(chatThinkingProvider(listId).notifier).setState(false);
    ref.read(chatStreamingTextProvider(listId).notifier).setState(null);

    // Remove the temp empty message if it exists
    final messages = state.value ?? [];
    if (messages.isNotEmpty &&
        messages.last.role == 'assistant' &&
        messages.last.content.isEmpty) {
      state = AsyncValue.data(messages.sublist(0, messages.length - 1));
    }
  }

  Future<_AgentResult> _agentLoop(
    AiService aiService,
    ToolExecutor executor,
    List<Map<String, dynamic>> messages, {
    required List<Map<String, dynamic>> tools,
    AiCancellationToken? cancelToken,
  }) async {
    const maxRetries = 2;
    // Delays reduzidos: 500ms e 2s (era 1s e 3s) — acelera recuperação de erros
    const delays = [Duration(milliseconds: 500), Duration(seconds: 2)];

    Future<AiResponse> callWithRetry(String systemPrompt) async {
      for (var attempt = 0; attempt <= maxRetries; attempt++) {
        try {
          return await aiService.getChatCompletionWithTools(
            messages,
            systemPrompt: systemPrompt,
            tools: tools,
            cancelToken: cancelToken,
          );
        } catch (_) {
          if (attempt == maxRetries) {
            rethrow;
          }
          await Future<void>.delayed(delays[attempt]);
        }
      }
      throw Exception('Unreachable');
    }

    debugPrint(
      '[AgentLoop] Iniciando com $_maxToolRounds rounds máximos, ${tools.length} ferramentas',
    );

    // Gera o system prompt UMA ÚNICA VEZ para toda a duração do agent loop.
    // Antes era recalculado a cada round (_maxToolRounds vezes), cada chamada
    // fazendo 5-7 awaits desnecessários (premium, packageInfo, items, perfil...).
    _cachedSystemPrompt ??= await _getCurrentSystemPrompt();
    final systemPrompt = _cachedSystemPrompt!;

    for (var round = 0; round < _maxToolRounds; round++) {
      if (_isCancelled || (cancelToken?.isCancelled ?? false)) {
        break;
      }
      // Feedback de status contextual por round
      final roundActivity = switch (round) {
        0 => 'Pensando...',
        1 => 'Verificando detalhes...',
        2 => 'Refinando a resposta...',
        _ => 'Finalizando...',
      };
      ref.read(chatActivityProvider(listId).notifier).setState(roundActivity);
      debugPrint('[AgentLoop] Round $round — enviando requisição para IA...');
      final response = await callWithRetry(systemPrompt);

      debugPrint(
        '[AgentLoop] Round $round — resposta recebida. toolCalls=${response.toolCalls.length}, content.length=${response.content?.length ?? 0}',
      );

      if (!response.hasToolCalls) {
        debugPrint(
          '[AgentLoop] Round $round — sem tool calls. Final text pronto para streaming.',
        );
        ref.read(chatActivityProvider(listId).notifier).setState('Elaborando resposta...');
        return _AgentResult(
          messages: messages,
          fallbackText: response.content ?? '',
        );
      }

      messages.add({
        'role': 'assistant',
        'content': null,
        if (response.reasoningContent != null)
          'reasoning_content': response.reasoningContent,
        'tool_calls': response.toolCalls.map((tc) => tc.toJson()).toList(),
      });

      final currentMsg = state.value?.lastOrNull;
      final currentSteps = List<AgentStep>.from(
        currentMsg?.executionSteps ?? [],
      );

      final newSteps =
          response.toolCalls.map((tc) {
            return AgentStep(
              id: tc.id,
              description: _friendlyToolDescription(tc),
              status: AgentStepStatus.pending,
              toolName: tc.name,
            );
          }).toList();

      currentSteps.addAll(newSteps);
      _updateAssistantMessage(executionSteps: currentSteps);

      if (_isCancelled || (cancelToken?.isCancelled ?? false)) {
        break;
      }

      if (response.toolCalls.length == 1) {
        // Caso comum: tool única — caminho simples sem overhead de paralelismo
        final toolCall = response.toolCalls.first;
        debugPrint(
          '[AgentLoop] Round $round — executando ferramenta: ${toolCall.name}(args: ${toolCall.arguments})',
        );
        _updateActivityForTool(toolCall.name);
        unawaited(HapticFeedback.selectionClick());

        final runningSteps =
            (state.value?.lastOrNull?.executionSteps ?? []).map((step) {
              return step.id == toolCall.id
                  ? step.copyWith(status: AgentStepStatus.running)
                  : step;
            }).toList();
        _updateAssistantMessage(executionSteps: runningSteps);

        final result = await executor.execute(toolCall);
        debugPrint(
          '[AgentLoop] Round $round — resultado de ${toolCall.name}: ${result.content.characters.take(200)}',
        );

        if (result.requiresUnlock) {
          final finishedSteps =
              (state.value?.lastOrNull?.executionSteps ?? []).map((step) {
                return step.id == toolCall.id
                    ? step.copyWith(status: AgentStepStatus.requiresUnlock)
                    : step;
              }).toList();
          _updateAssistantMessage(executionSteps: finishedSteps);
          throw PremiumUnlockException(
            toolCall: toolCall,
            messages: messages,
            tools: tools,
          );
        }

        final finishedSteps =
            (state.value?.lastOrNull?.executionSteps ?? []).map((step) {
              return step.id == toolCall.id
                  ? step.copyWith(
                    status:
                        result.success
                            ? AgentStepStatus.success
                            : AgentStepStatus.error,
                    resultData: result.resultData,
                  )
                  : step;
            }).toList();

        if (toolCall.name == 'create_recipe' &&
            result.success &&
            result.resultData != null) {
          final recipeId = result.resultData!['recipeId'] as String?;
          if (recipeId != null) {
            _updateAssistantMessage(
              executionSteps: finishedSteps,
              actions: {'view_recipe': recipeId},
            );
          } else {
            _updateAssistantMessage(executionSteps: finishedSteps);
          }
        } else if (toolCall.name == 'generate_artifact' &&
            result.success &&
            result.resultData != null) {
          final artifactJson =
              result.resultData!['artifact'] as Map<String, dynamic>;
          final artifact = InteractiveArtifact.fromJson(artifactJson);
          _updateAssistantMessage(
            executionSteps: finishedSteps,
            artifact: artifact,
          );
        } else {
          _updateAssistantMessage(executionSteps: finishedSteps);
        }

        final toolContent =
            result.resultData != null
                ? '${result.content}\n\nDADOS: ${jsonEncode(result.resultData)}'
                : result.content;
        messages.add({
          'role': 'tool',
          'tool_call_id': toolCall.id,
          'content': toolContent,
        });
      } else {
        // Múltiplas tools: executa TODAS em paralelo com Future.wait.
        // O modelo OpenAI/DeepSeek retorna múltiplos tool_calls quando as
        // operações são independentes entre si — este é o comportamento esperado
        // pela spec (cada chamada tem seu próprio tool_call_id).
        // Usa o nome da primeira ferramenta como feedback visual principal
        _updateActivityForTool(response.toolCalls.first.name);
        debugPrint(
          '[AgentLoop] Round $round — executando ${response.toolCalls.length} ferramentas em PARALELO',
        );

        // Marca todas como "running" de uma vez
        final allRunningSteps =
            (state.value?.lastOrNull?.executionSteps ?? []).map((step) {
              final isInBatch = response.toolCalls.any((tc) => tc.id == step.id);
              return isInBatch
                  ? step.copyWith(status: AgentStepStatus.running)
                  : step;
            }).toList();
        _updateAssistantMessage(executionSteps: allRunningSteps);
        unawaited(HapticFeedback.selectionClick());

        // Dispara todas em paralelo
        final results = await Future.wait(
          response.toolCalls.map((tc) {
            debugPrint(
              '[AgentLoop] Round $round — (paralelo) ${tc.name}(args: ${tc.arguments})',
            );
            return executor.execute(tc);
          }),
        );

        // Verifica premium unlock antes de processar (lança para o primeiro que precisar)
        for (var i = 0; i < response.toolCalls.length; i++) {
          if (results[i].requiresUnlock) {
            final tc = response.toolCalls[i];
            final finishedSteps =
                (state.value?.lastOrNull?.executionSteps ?? []).map((step) {
                  return step.id == tc.id
                      ? step.copyWith(status: AgentStepStatus.requiresUnlock)
                      : step;
                }).toList();
            _updateAssistantMessage(executionSteps: finishedSteps);
            throw PremiumUnlockException(
              toolCall: tc,
              messages: messages,
              tools: tools,
            );
          }
        }

        // Processa resultados em ordem (mantém consistência do histórico)
        InteractiveArtifact? pendingArtifact;
        Map<String, dynamic>? pendingActions;
        final batchFinishedSteps = List<AgentStep>.from(
          state.value?.lastOrNull?.executionSteps ?? [],
        );

        for (var i = 0; i < response.toolCalls.length; i++) {
          final toolCall = response.toolCalls[i];
          final result = results[i];

          debugPrint(
            '[AgentLoop] Round $round — resultado de ${toolCall.name}: ${result.content.characters.take(200)}',
          );

          // Atualiza step individual no batch
          for (var j = 0; j < batchFinishedSteps.length; j++) {
            if (batchFinishedSteps[j].id == toolCall.id) {
              batchFinishedSteps[j] = batchFinishedSteps[j].copyWith(
                status:
                    result.success ? AgentStepStatus.success : AgentStepStatus.error,
                resultData: result.resultData,
              );
            }
          }

          // Coleta metadados especiais
          if (toolCall.name == 'create_recipe' &&
              result.success &&
              result.resultData != null) {
            final recipeId = result.resultData!['recipeId'] as String?;
            if (recipeId != null) {
              pendingActions = {'view_recipe': recipeId};
            }
          } else if (toolCall.name == 'generate_artifact' &&
              result.success &&
              result.resultData != null) {
            final artifactJson =
                result.resultData!['artifact'] as Map<String, dynamic>;
            pendingArtifact = InteractiveArtifact.fromJson(artifactJson);
          }

          final toolContent =
              result.resultData != null
                  ? '${result.content}\n\nDADOS: ${jsonEncode(result.resultData)}'
                  : result.content;
          messages.add({
            'role': 'tool',
            'tool_call_id': toolCall.id,
            'content': toolContent,
          });
        }

        // Um único setState após processar todos os resultados do batch
        _updateAssistantMessage(
          executionSteps: batchFinishedSteps,
          artifact: pendingArtifact,
          actions: pendingActions,
        );
      }
    }

    // Reusa o system prompt já em cache (não recalcula)
    debugPrint(
      '[AgentLoop] Atingido limite de $_maxToolRounds rounds — tentando fallback...',
    );
    final fallbackResponse = await callWithRetry(systemPrompt);

    final fallbackText =
        fallbackResponse.content ??
        'Não foi possível processar após várias tentativas.';
    debugPrint(
      '[AgentLoop] Fallback concluído. content.length=${fallbackText.length}',
    );
    return _AgentResult(messages: messages, fallbackText: fallbackText);
  }

  void _updateActivityForTool(String toolName) {
    final activity = switch (toolName) {
      // Itens de lista
      'add_shopping_item' || 'add_shopping_items' => 'Adicionando itens à lista...',
      'remove_shopping_item' => 'Removendo itens...',
      'update_shopping_item' => 'Atualizando item...',
      'check_shopping_item' => 'Marcando item...',
      'uncheck_shopping_item' => 'Desmarcando item...',
      'clear_checked_items' => 'Limpando itens marcados...',
      'organize_shopping_list' => 'Reorganizando lista...',
      // Listas
      'create_shopping_list' => 'Criando nova lista...',
      'delete_shopping_list' => 'Removendo lista...',
      'rename_shopping_list' => 'Renomeando lista...',
      'get_shopping_list_items' || 'get_all_shopping_lists' => 'Consultando suas listas...',
      'set_budget' => 'Configurando orçamento...',
      // Despensa
      'get_pantry_items' => 'Verificando sua despensa...',
      'add_pantry_item' => 'Adicionando à despensa...',
      'remove_pantry_item' => 'Removendo da despensa...',
      'update_pantry_item' => 'Atualizando despensa...',
      // Receitas
      'create_recipe' => 'Salvando receita...',
      'get_recipes' => 'Buscando receitas...',
      'delete_recipe' => 'Removendo receita...',
      'add_recipe_to_list' => 'Adicionando ingredientes à lista...',
      // Cardápio / Plano de refeições
      'schedule_meal' => 'Organizando seu cardápio...',
      'get_meal_plan' => 'Carregando seu cardápio...',
      'delete_meal_plan_entry' => 'Atualizando cardápio...',
      // Categorias
      'get_categories' => 'Buscando categorias...',
      'set_item_category' => 'Categorizando itens...',
      // Compartilhamento
      'share_shopping_list' => 'Gerando link de compartilhamento...',
      'get_shared_list_info' => 'Buscando lista compartilhada...',
      // Perfil / Configurações
      'get_user_profile' => 'Carregando seu perfil...',
      'update_user_profile' => 'Salvando suas preferências...',
      'get_preferences' => 'Verificando suas configurações...',
      // Artefatos / Geração
      'generate_artifact' => 'Gerando conteúdo personalizado...',
      'search_products' => 'Buscando produtos...',
      'get_price_estimates' => 'Estimando preços...',
      _ => 'Processando...',
    };
    ref.read(chatActivityProvider(listId).notifier).setState(activity);
  }

  /// Simula o efeito de streaming exibindo o [text] localmente em chunks,
  /// sem fazer nenhuma requisição HTTP adicional. Usado quando o agent loop
  /// já retornou o texto final em [_AgentResult.fallbackText].
  ///
  /// Parâmetros de tuning:
  ///   chunkSize = 12 chars → ~50 chars/s a 18ms de delay → resposta de 500 chars
  ///   em ~0.9s de animação, muito mais rápido que uma chamada de rede real.
  Future<String> _localStreamText(String text) async {
    const chunkSize = 12;
    const chunkDelay = Duration(milliseconds: 18);

    final buffer = StringBuffer();
    var i = 0;

    while (i < text.length) {
      if (_isCancelled) {
        break;
      }
      final end = (i + chunkSize).clamp(0, text.length);
      buffer.write(text.substring(i, end));
      i = end;

      ref
          .read(chatStreamingTextProvider(listId).notifier)
          .setState(buffer.toString());

      if (i < text.length) {
        await Future<void>.delayed(chunkDelay);
      }
    }

    return buffer.toString();
  }

  Future<String> _streamResponse(
    AiService aiService,
    List<Map<String, dynamic>> messages,
    String systemPrompt,
    List<Map<String, dynamic>> tools, {
    AiCancellationToken? cancelToken,
  }) async {
    final buffer = StringBuffer();
    final tagBuffer = StringBuffer();
    bool isSuppressing = false;
    DateTime lastUpdate = DateTime.now();

    try {
      await for (final token in aiService.getChatCompletionStreamWithTools(
        messages,
        systemPrompt: systemPrompt,
        tools: tools,
        cancelToken: cancelToken,
      )) {
        if (isSuppressing) {
          tagBuffer.write(token);
          if (tagBuffer.toString().contains('</｜｜DSML｜｜tool_calls>')) {
            isSuppressing = false;
            tagBuffer.clear();
          }
          continue;
        }

        if (token.contains('<｜｜DSML｜｜')) {
          isSuppressing = true;
          tagBuffer.write(token);
          if (tagBuffer.toString().contains('</｜｜DSML｜｜tool_calls>')) {
            isSuppressing = false;
            tagBuffer.clear();
          }
          continue;
        }

        if (token.startsWith('<') || tagBuffer.isNotEmpty) {
          tagBuffer.write(token);
          final currentTag = tagBuffer.toString();

          if (currentTag.contains('<｜｜DSML｜｜')) {
            isSuppressing = true;
            if (currentTag.contains('</｜｜DSML｜｜tool_calls>')) {
              isSuppressing = false;
              tagBuffer.clear();
            }
            continue;
          }

          if (currentTag.length > 100) {
            buffer.write(currentTag);
            tagBuffer.clear();
          } else if (currentTag.endsWith('>') || currentTag.endsWith('\n')) {
            buffer.write(currentTag);
            tagBuffer.clear();
          }
        } else {
          buffer.write(token);
        }

        final now = DateTime.now();
        // Throttle reduzido de 60ms → 30ms: texto aparece ~2x mais fluido
        // sem sobrecarregar o UI thread (33fps vs 16fps de atualização)
        if (tagBuffer.isEmpty &&
            (now.difference(lastUpdate).inMilliseconds > 30)) {
          lastUpdate = now;
          ref
              .read(chatStreamingTextProvider(listId).notifier)
              .setState(buffer.toString());
        }
      }

      ref
          .read(chatStreamingTextProvider(listId).notifier)
          .setState(buffer.toString());
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      final msgs = state.value ?? [];
      if (msgs.isNotEmpty && msgs.last.role == 'assistant') {
        state = AsyncValue.data([
          ...msgs.sublist(0, msgs.length - 1),
          msgs.last.copyWith(content: buffer.toString()),
        ]);
      }
    } on Exception catch (e, st) {
      LoggerService.error(
        e,
        stackTrace: st,
        message: '[StreamResponse] Erro no streaming interno',
        extra: {
          'operation': 'stream_response_inner',
          'listId': listId,
          'bufferLength': buffer.length,
          'bufferPreview': buffer.toString().characters.take(100).toString(),
        },
      );
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      if (buffer.isEmpty) {
        rethrow;
      }
    }
    return buffer.toString();
  }

  Future<void> _generateTitleInBackground(
    String? listId,
    String sessionId,
    String firstMessage,
  ) async {
    try {
      if (_isCancelled || !ref.mounted) {
        return;
      }

      final aiService = ref.read(aiServiceProvider);
      final prompt =
          'Crie um título curtíssimo (máximo 4 palavras) para uma conversa que começa com: "$firstMessage". Retorne apenas o título, sem aspas.';
      final response = await aiService.getChatCompletion([
        ChatMessage(role: 'user', content: prompt),
      ]).timeout(const Duration(seconds: 15));

      if (_isCancelled || !ref.mounted) {
        return;
      }

      var title = response.content.trim();
      if (title.startsWith('"') && title.endsWith('"')) {
        title = title.substring(1, title.length - 1);
      }

      final service = ref.read(firestoreServiceProvider);
      final sessions = await service.loadChatSessions(listId);

      if (_isCancelled || !ref.mounted) {
        return;
      }

      final session = sessions.where((s) => s.id == sessionId).firstOrNull;
      if (session != null) {
        await service.saveChatSession(listId, session.copyWith(title: title));
        if (!_isCancelled && ref.mounted) {
          ref.invalidate(chatSessionsProvider(listId));
        }
      }
    } on Exception catch (e) {
      debugPrint('Error generating chat title: $e');
    }
  }

  Future<void> clearHistory() async {
    cancelRequest();
    final firestoreService = ref.read(firestoreServiceProvider);
    await firestoreService.clearChatHistory(listId, sessionId: sessionId);
    state = const AsyncValue.data([]);
  }

  Future<void> addMessage(ChatMessage message) async {
    final keepAliveLink = ref.keepAlive();
    try {
      final previousMessages = state.value ?? [];
      state = AsyncValue.data([...previousMessages, message]);

      await ref
          .read(firestoreServiceProvider)
          .saveChatMessage(listId, message, sessionId: sessionId)
          .catchError((Object e, StackTrace st) {
        LoggerService.error(
          e,
          stackTrace: st,
          message: '[Chat] Failed to save addMessage',
          extra: {
            'operation': 'add_message',
            'listId': listId,
            'messageRole': message.role,
            'messageLength': message.content.length,
          },
        );
        return null;
      });
    } finally {
      keepAliveLink.close();
    }
  }

  Future<void> setFeedback(String messageId, int? feedback) async {
    final messages = state.value ?? [];
    final index = messages.indexWhere((m) {
      return m.id == messageId;
    });
    if (index == -1) {
      return;
    }

    final updatedMessage = messages[index].copyWith(feedback: feedback);
    final updatedMessages = List<ChatMessage>.from(messages);
    updatedMessages[index] = updatedMessage;
    state = AsyncValue.data(updatedMessages);

    unawaited(
      ref
          .read(firestoreServiceProvider)
          .saveChatMessage(listId, updatedMessage, sessionId: sessionId)
          .catchError((Object e, StackTrace st) {
        LoggerService.error(
          e,
          stackTrace: st,
          message: '[Chat] Failed to save feedback',
          extra: {
            'operation': 'set_feedback',
            'listId': listId,
            'messageId': messageId,
            'feedback': feedback,
          },
        );
        return null;
      }),
    );
  }

  Future<void> regenerate(String messageId) async {
    if (_currentTask != null) {
      return;
    }

    final keepAliveLink = ref.keepAlive();
    _isCancelled = false;
    _cancelToken = AiCancellationToken();
    final task = _regenerateInternal(messageId);
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
        _cancelToken = null;
      }
      keepAliveLink.close();
    }
  }

  Future<void> _regenerateInternal(String messageId) async {
    final messages = state.value ?? [];
    final index = messages.indexWhere((m) {
      return m.id == messageId;
    });
    if (index == -1) {
      return;
    }

    int userMessageIndex = -1;
    for (int i = index - 1; i >= 0; i--) {
      if (messages[i].role == 'user') {
        userMessageIndex = i;
        break;
      }
    }

    if (userMessageIndex == -1) {
      return;
    }

    final userContent = messages[userMessageIndex].content;

    final newMessages = messages.sublist(0, index);
    state = AsyncValue.data(newMessages);

    final firestore = ref.read(firestoreServiceProvider);
    for (int i = index; i < messages.length; i++) {
      unawaited(firestore.deleteChatMessage(listId, messages[i].id, sessionId: sessionId));
    }

    if (!_isCancelled) {
      await _sendAssistantResponse(userContent);
    }
  }

  Future<void> _sendAssistantResponse(String content) async {
    final aiService = ref.read(aiServiceProvider);
    final firestoreService = ref.read(firestoreServiceProvider);
    final previousHistory = state.value ?? [];

    final apiMessages = <Map<String, dynamic>>[];
    final historyToSync =
        previousHistory.length > _maxHistoryMessages
            ? previousHistory.sublist(
              previousHistory.length - _maxHistoryMessages,
            )
            : previousHistory;

    for (final msg in historyToSync) {
      apiMessages.add({'role': msg.role, 'content': msg.content});
    }

    final tools = AgentTools.all.map((t) => t.toOpenAIFunction()).toList();
    final executor = ToolExecutor(ref);

    final assistantMessage = ChatMessage(
      role: 'assistant',
      content: '',
      executionSteps: [],
    );
    state = AsyncValue.data([...state.value ?? [], assistantMessage]);

    _AgentResult agentResult;
    try {
      ref.read(chatThinkingProvider(listId).notifier).setState(true);
      ref
          .read(chatActivityProvider(listId).notifier)
          .setState('Analisando sua solicitação...');
      agentResult = await _agentLoop(
        aiService,
        executor,
        apiMessages,
        tools: tools,
        cancelToken: _cancelToken,
      );
      if (_isCancelled) {
        return;
      }
    } on Object catch (e, st) {
      if (_isCancelled) {
        return;
      }
      LoggerService.error(
        e,
        stackTrace: st,
        message: '[Regenerate] AgentLoop error',
        extra: {
          'operation': 'regenerate_agent_loop',
          'listId': listId,
          'contentLength': content.length,
          'historyLength': previousHistory.length,
        },
      );
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      ref.read(chatThinkingProvider(listId).notifier).setState(false);
      ref.read(chatActivityProvider(listId).notifier).setState(null);
      const errorMsg =
          'Desculpe, ocorreu um erro ao processar sua solicitação.';
      _updateAssistantMessage(content: errorMsg, isError: true);
      return;
    } finally {
      if (!_isCancelled) {
        ref.read(chatThinkingProvider(listId).notifier).setState(false);
        ref.read(chatActivityProvider(listId).notifier).setState(null);
      }
    }

    if (!_isCancelled) {
      ref.read(chatStreamingProvider(listId).notifier).setState(true);
    }
    unawaited(HapticFeedback.lightImpact());

    String finalText;
    bool isError = false;
    try {
      final systemPrompt = await _getCurrentSystemPrompt();
      if (_isCancelled) {
        return;
      }
      finalText = await _streamResponse(
        aiService,
        agentResult.messages,
        systemPrompt,
        tools,
        cancelToken: _cancelToken,
      );
    } on Object catch (e, st) {
      if (_isCancelled) {
        return;
      }
      LoggerService.error(
        e,
        stackTrace: st,
        message: '[Regenerate] StreamResponse error',
        extra: {
          'operation': 'regenerate_stream_response',
          'listId': listId,
          'contentLength': content.length,
          'fallbackText':
              agentResult.fallbackText.characters.take(200).toString(),
        },
      );
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      finalText = agentResult.fallbackText;
      isError = true;
    }

    if (!_isCancelled) {
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      ref.read(chatStreamingProvider(listId).notifier).setState(false);
    }

    final lastMsg = state.value?.lastOrNull;
    if (lastMsg != null) {
      final displayContent =
          finalText.isEmpty ? agentResult.fallbackText : finalText;
      final extracted = _extractSuggestionsFromText(displayContent);
      final displayText = extracted.text;
      final llmSuggestions = extracted.suggestions;
      final suggestions =
          llmSuggestions ??
          _generateSuggestedReplies(displayText, listId)
              ?.map((s) => SuggestedReply(label: s, prompt: s, icon: 'chat'))
              .toList();
      final finalMessage = lastMsg.copyWith(
        content: displayText,
        isError: isError || finalText.isEmpty,
        suggestedReplies: suggestions,
      );
      final updatedMessages = <ChatMessage>[...state.value ?? []];
      updatedMessages[updatedMessages.length - 1] = finalMessage;
      state = AsyncValue.data(updatedMessages);
      unawaited(
        firestoreService.saveChatMessage(
          listId,
          finalMessage,
          sessionId: sessionId,
        ),
      );
    }
  }

  Future<void> executeAction(String messageId, String action) async {
    final keepAliveLink = ref.keepAlive();
    try {
      final messages = state.value ?? [];
      final message = messages.where((m) => m.id == messageId).firstOrNull;
      if (message == null || message.actions == null) {
        return;
      }

      switch (action) {
        case 'add_items':
          final itemsData = message.actions!['add_items'];
          if (itemsData is List) {
            final listId = this.listId;
            if (listId == null) {
              return;
            }
            final itemNotifier = ref.read(
              shoppingListItemsProvider(listId).notifier,
            );
            for (final itemData in itemsData) {
              if (itemData is Map<String, dynamic>) {
                final unitStr = itemData['unit'] as String?;
                final catStr = itemData['category'] as String?;
                final unit =
                    unitStr != null
                        ? Unit.values.firstWhere(
                          (u) => u.name == unitStr,
                          orElse: () => Unit.un,
                        )
                        : Unit.un;
                final categoryId = catStr ?? 'others';
                await itemNotifier.addItem(
                  listId: listId,
                  name: itemData['name'] as String? ?? '',
                  quantity: (itemData['quantity'] as num?)?.toInt() ?? 1,
                  unit: unit,
                  categoryId: categoryId,
                );
              }
            }
          }
          break;
        case 'organize':
          final listId = this.listId;
          if (listId == null) {
            return;
          }
          final itemsState = ref.read(shoppingListItemsProvider(listId));
          final items = itemsState.hasValue
              ? (itemsState.value ?? const <ShoppingItem>[])
              : await ref.read(shoppingListItemsProvider(listId).future);
          if (items.isEmpty) {
            return;
          }
          final categoryOrder = {
            'fruits': 0,
            'cleaning': 1,
            'beverages': 2,
            'bakery': 3,
            'others': 4,
          };
          final sorted = List<ShoppingItem>.from(items)..sort(
            (a, b) => categoryOrder[a.categoryId]!.compareTo(
              categoryOrder[b.categoryId]!,
            ),
          );
          await ref
              .read(shoppingListItemsProvider(listId).notifier)
              .updateItems(sorted);
      }
    } finally {
      keepAliveLink.close();
    }
  }

  ({String text, List<SuggestedReply>? suggestions})
  _extractSuggestionsFromText(String content) {
    if (content.isEmpty) {
      return (text: content, suggestions: null);
    }

    const startTag = '[SUGGESTIONS]\n';
    const endTag = '\n[/SUGGESTIONS]';

    final startIdx = content.indexOf(startTag);
    final endIdx = content.indexOf(endTag);

    if (startIdx == -1 || endIdx == -1 || endIdx <= startIdx) {
      return (text: content, suggestions: null);
    }

    final jsonStr =
        content.substring(startIdx + startTag.length, endIdx).trim();
    final cleanText =
        content.replaceRange(startIdx, endIdx + endTag.length, '').trim();

    try {
      final parsed = jsonDecode(jsonStr) as List<dynamic>;
      final suggestions =
          parsed.map((e) {
            return SuggestedReply.fromJson(Map<String, dynamic>.from(e as Map));
          }).toList();
      return (text: cleanText, suggestions: suggestions);
    } on Object catch (_) {
      return (text: content, suggestions: null);
    }
  }

  List<String>? _generateSuggestedReplies(String content, String? listId) {
    if (content.isEmpty) {
      return null;
    }

    final replies = <String>[];
    final lowerContent = content.toLowerCase();

    if (listId != null) {
      if (lowerContent.contains('receita') ||
          lowerContent.contains('ingrediente')) {
        replies.add('Adicione os itens à lista');
        replies.add('Quais as quantidades?');
      } else if (lowerContent.contains('organizar') ||
          lowerContent.contains('corredor')) {
        replies.add('Organizar agora');
      } else {
        replies.add('O que mais posso fazer?');
        replies.add('Sugira uma receita');
      }
    } else {
      replies.add('Dicas de economia');
      replies.add('Criar nova lista');
    }

    if (replies.length < 2) {
      replies.add('Obrigado!');
    }

    return replies.take(3).toList();
  }

  // coverage:ignore-start
  String _languageInstruction(String locale) {
    final lang = locale.split('_').first.toLowerCase();
    switch (lang) {
      case 'pt':
        return 'Explique o que você fez de forma concisa e amigável em português.';
      case 'es':
        return 'Explica lo que hiciste de forma concisa y amigable en español.';
      case 'fr':
        return 'Explique ce que vous avez fait de manière concise et amicale en français.';
      case 'de':
        return 'Erkläre kurz und freundlich auf Deutsch, was du getan hast.';
      case 'it':
        return 'Spiega in modo conciso e amichevole in italiano cosa hai fatto.';
      case 'nl':
        return 'Leg uit wat je hebt gedaan op een beknopte en vriendelijke manier in het Nederlands.';
      case 'ja':
        return 'あなたが行ったことを簡潔かつ親しみやすく日本語で説明してください。';
      case 'ko':
        return '당신이 수행한 작업을 간결하고 친근하게 한국어로 설명하세요.';
      case 'ru':
        return 'Объясните, что вы сделали, кратко и дружелюбно на русском языке.';
      case 'zh':
        return '请用中文简洁友好地解释你做了什么。';
      case 'pl':
        return 'Wyjaśnij krótko i przyjaźnie w języku polskim, co zrobiłeś.';
      default:
        return 'Explain what you did concisely and friendly in the current language.';
    }
  }

  String _buildListSystemPrompt(
    ShoppingList? list,
    List<ShoppingItem> items, {
    String locale = 'pt_BR',
  }) {
    final listName = list?.name ?? 'Lista de Compras';
    const maxItems = 30;
    final displayItems = items.take(maxItems);
    final itemsStr = displayItems
        .map(
          (i) =>
              '- ${i.name} (${i.quantity} ${i.unit.label})${i.isPurchased ? ' [Comprado]' : ''}',
        )
        .join('\n');
    final overflow =
        items.length > maxItems
            ? '\n... e mais ${items.length - maxItems} itens (total: ${items.length})'
            : '';

    return '''Você é um assistente inteligente com CONTROLE TOTAL sobre o app do usuário.

Contexto atual: lista "$listName".

Itens atuais na lista:
$itemsStr$overflow

GERAÇÃO DE INTERFACE INTERATIVA (GEN UI):
Você possui a ferramenta avançada `generate_artifact` para instanciar interfaces reativas/interativas (Gen UI) diretamente no chat do usuário.
Use essa ferramenta sempre que detectar intenções de:
1. Planejamento de Evento/Churrasco: Calcule quantidades por número de pessoas (ex: churrasco, jantar, festa). Crie controles de sliders para adultos/crianças, etc.
2. Otimização de Orçamento: Ofereça opções de substituição mais baratas (alternativas de swap) para o usuário decidir na hora (ex: "Trocar Picanha por Alcatra").
3. Sugestão de Receitas da Despensa: Monte um artefato com itens que o usuário já tem na despensa (isAvailable: true) e itens faltantes (isAvailable: false).

A IA tem criatividade total. Defina controles (sliders, steppers, toggles, selects) e condições de exibição de itens livremente usando os parâmetros de `generate_artifact`.
NUNCA escreva blocos JSON manuais na mensagem para esses artefatos, use a ferramenta `generate_artifact`. Após rodar a ferramenta, você pode descrever textualmente a sugestão abaixo.

VOCÊ PODE EXECUTAR AÇÕES DIRETAMENTE usando as ferramentas disponíveis:
- Adicionar, remover, editar itens
- Marcar/desmarcar comprados
- Gerenciar listas (criar, renomear, arquivar, excluir)
- Gerenciar despensa
- Gerenciar RECEITAS (criar, buscar, excluir)
- Planejar CARDÁPIO/REFEIÇÕES (agendar, consultar)
- Controlar orçamento e configurações

Sempre que o usuário pedir uma ação, USE as ferramentas adequadas em vez de apenas sugerir.
NUNCA escreva códigos de chamada de ferramenta ou blocos JSON manualmente no corpo da mensagem. Use sempre a funcionalidade nativa de ferramentas do sistema.

MEMÓRIA E PREFERÊNCIAS:
Você deve ser proativo em aprender sobre o usuário. Sempre que o usuário mencionar uma preferência pessoal, hábito de consumo, restrição alimentar ou qualquer informação que deva ser lembrada em conversas futuras, USE a ferramenta `update_user_profile` ou `save_user_preference` para salvar essa informação. Não apenas diga que vai lembrar, EFETIVE a gravação.

⚠️ REGRAS ANTI-DUPLICAÇÃO (SIGA ESTRITAMENTE):
- Antes de adicionar itens de uma receita à lista, SEMPRE use get_items primeiro para ver o que já existe na lista
- Se um item já estiver na lista com o mesmo nome (ex: "Arroz" já existe), NÃO crie um novo — o sistema automaticamente incrementa a quantidade. Apenas confirme ao usuário.
- Se uma receita com o mesmo nome já existir, NÃO crie outra. Informe o usuário e ofereça editar a existente ou usar outro nome.
- NUNCA use clear_all_items a menos que o usuário peça EXPLICITAMENTE para limpar/esvaziar a lista. Não use para substituir itens ou reorganizar.

${_languageInstruction(locale)}

Se precisar de informações adicionais para executar uma ação, use as ferramentas de consulta primeiro.''';
  }

  String _buildGlobalSystemPrompt(
    Map<String, List<ShoppingItem>> allItems, {
    String locale = 'pt_BR',
  }) {
    var context =
        'Você é um assistente inteligente com CONTROLE TOTAL sobre o app de compras do usuário.\n';
    context += 'O usuário possui as seguintes listas:\n\n';

    const maxItems = 30;
    int totalItems = 0;
    for (final entry in allItems.entries) {
      totalItems += entry.value.length;
    }

    if (totalItems <= maxItems) {
      allItems.forEach((listName, items) {
        context += 'Lista: $listName (${items.length} itens)\n';
        context += items
            .map((i) => '  - ${i.name} (${i.quantity} ${i.unit.label})')
            .join('\n');
        context += '\n\n';
      });
    } else {
      allItems.forEach((listName, items) {
        context += '- $listName (${items.length} itens)\n';
      });
      context +=
          '\nUse a ferramenta get_items para consultar os itens de uma lista específica.\n\n';
    }

    context += '''
GERAÇÃO DE INTERFACE INTERATIVA (GEN UI):
Você possui a ferramenta avançada `generate_artifact` para instanciar interfaces reativas/interativas (Gen UI) diretamente no chat do usuário.
Use essa ferramenta sempre que detectar intenções de:
1. Planejamento de Evento/Churrasco: Calcule quantidades por número de pessoas (ex: churrasco, jantar, festa). Crie controles de sliders para adultos/crianças, etc.
2. Otimização de Orçamento: Ofereça opções de substituição mais baratas (alternativas de swap) para o usuário decidir na hora (ex: "Trocar Picanha por Alcatra").
3. Sugestão de Receitas da Despensa: Monte um artefato com itens que o usuário já tem na despensa (isAvailable: true) e itens faltantes (isAvailable: false).

A IA tem criatividade total. Defina controles (sliders, steppers, toggles, selects) e condições de exibição de itens livremente usando os parâmetros de `generate_artifact`.
NUNCA escreva blocos JSON manuais na mensagem para esses artefatos, use a ferramenta `generate_artifact`. Após rodar a ferramenta, você pode descrever textualmente a sugestão abaixo.

VOCÊ PODE EXECUTAR AÇÕES DIRETAMENTE usando as ferramentas disponíveis:
- Gerenciar listas (criar, renomear, arquivar, excluir)
- Adicionar, remover, editar itens em qualquer lista
- Gerenciar despensa
- Gerenciar RECEITAS e CARDÁPIO (planner)
- Controlar orçamento, tema e configurações
- Compartilhar listas
- Exportar/importar backup

Sempre que o usuário pedir uma ação, USE as ferramentas adequadas.
NUNCA escreva códigos de chamada de ferramenta ou blocos JSON manualmente no corpo da mensagem. Use sempre a funcionalidade nativa de ferramentas do sistema.

MEMÓRIA E PREFERÊNCIAS:
Você deve ser proativo em aprender sobre o usuário. Sempre que o usuário mencionar uma preferência pessoal, hábito de consumo, restrição alimentar ou qualquer informação que deva ser lembrada em conversas futuras, USE a ferramenta `update_user_profile` ou `save_user_preference` para salvar essa informação. Não apenas diga que vai lembrar, EFETIVE a gravação.

⚠️ REGRAS ANTI-DUPLICAÇÃO (SIGA ESTRITAMENTE):
- Antes de adicionar itens de uma receita à lista, SEMPRE use get_items primeiro para ver o que já existe na lista
- Se um item já estiver na lista com o mesmo nome (ex: "Arroz" já existe), NÃO crie um novo — o sistema automaticamente incrementa a quantidade. Apenas confirme ao usuário.
- Se uma receita com o mesmo nome já existir, NÃO crie outra. Informe o usuário e ofereça editar a existente ou usar outro nome.
- NUNCA use clear_all_items a menos que o usuário peça EXPLICITAMENTE para limpar/esvaziar a lista. Não use para substituir itens ou reorganizar.

${_languageInstruction(locale)}''';

    return context;
  }

  // coverage:ignore-end
}
