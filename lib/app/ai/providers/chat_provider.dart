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
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/app/settings/providers/settings_providers.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/core/providers/auth_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/misc_providers.dart';

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
    return service.loadChatSessions(listId);
  }

  void createNewSession() {
    ref.read(activeChatSessionIdProvider(listId).notifier).set(null);
  }

  Future<String> startNewSession() async {
    final newSession = ChatSessionModel(
      title: 'Nova Conversa',
      listId: listId,
    );
    final service = ref.read(firestoreServiceProvider);
    await service.saveChatSession(listId, newSession);
    ref.invalidateSelf();
    ref.read(activeChatSessionIdProvider(listId).notifier).set(newSession.id);
    return newSession.id;
  }

  Future<void> deleteSession(String sessionId) async {
    final service = ref.read(firestoreServiceProvider);
    await service.deleteChatSession(listId, sessionId);
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

    _isCancelled = false;
    _cancelToken = AiCancellationToken();
    final task = _sendMessageInternal(content);
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
        _cancelToken = null;
      }
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
      final systemPrompt = await _getCurrentSystemPrompt();
      finalText = await _streamResponse(aiService, agentResult.messages, systemPrompt, tools, cancelToken: _cancelToken);
      if (_isCancelled) {
        ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
        ref.read(chatStreamingProvider(listId).notifier).setState(false);
        return;
      }
    } on Object catch (e, st) {
      LoggerService.error(e, stackTrace: st, message: '[StreamResponse] Erro no streaming', extra: {
        'operation': 'stream_response',
        'listId': listId,
        'fallbackText': agentResult.fallbackText.characters.take(200).toString(),
        'hasToolCalls': agentResult.messages.any((m) => m['tool_calls'] != null),
      });
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      finalText = agentResult.fallbackText;
      isError = true;
    }

    if (finalText.isEmpty) {
      finalText = agentResult.fallbackText;
      isError = true;
    }

    ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
    ref.read(chatStreamingProvider(listId).notifier).setState(false);
    unawaited(HapticFeedback.mediumImpact());

    final lastMsg = state.value?.lastOrNull;
    if (lastMsg != null) {
      final extracted = _extractSuggestionsFromText(finalText);
      final displayText = extracted.text;
      final llmSuggestions = extracted.suggestions;
      final suggestions = llmSuggestions ?? _generateSuggestedReplies(displayText, listId)
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
      try {
        await firestoreService.saveChatMessage(listId, finalMessage, sessionId: sessionId);
      } on Exception {
        // Silently fail saving assistant message
      }
    }
  }

  Future<void> resumeWithUnlock() async {
    final pending = _pendingUnlock;
    if (pending == null) {
      return;
    }
    _pendingUnlock = null;

    _isCancelled = false;
    _cancelToken = AiCancellationToken();
    final task = _resumeLoopInternal(pending, bypassPremium: true);
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
        _cancelToken = null;
      }
    }
  }

  Future<void> cancelUnlock() async {
    final pending = _pendingUnlock;
    if (pending == null) {
      return;
    }
    _pendingUnlock = null;

    _isCancelled = false;
    _cancelToken = AiCancellationToken();
    final task = _resumeLoopInternal(pending, bypassPremium: false, userDeclined: true);
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
        _cancelToken = null;
      }
    }
  }

  Future<ToolResult> executeToolDirectly(String name, Map<String, dynamic> arguments) async {
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
    final tools = AgentTools.all.map((t) => t.toOpenAIFunction()).toList();

    _AgentResult agentResult;
    try {
      ref.read(chatThinkingProvider(listId).notifier).setState(true);
      ref.read(chatActivityProvider(listId).notifier).setState('Retomando processamento...');

      final updatedMessages = List<Map<String, dynamic>>.from(pending.messages);

      if (userDeclined) {
        // Se o usuário recusou, informamos à IA que a ferramenta falhou por recusa do usuário
        final result = ToolResult.fromError(
          'O usuário optou por não utilizar a interface interativa premium neste momento. Prossiga apenas com texto.',
          toolCallId: pending.toolCall.id,
        );

        // Atualiza o step para erro/cancelado na UI
        final finishedSteps = (state.value?.lastOrNull?.executionSteps ?? [])
            .map((step) {
              return step.id == pending.toolCall.id
                  ? step.copyWith(status: AgentStepStatus.error)
                  : step;
            })
            .toList();
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
      } else {
        // Se foi liberado (bypassPremium), executamos a ferramenta
        final result = await executor.execute(pending.toolCall, bypassPremium: true);

        final finishedSteps = (state.value?.lastOrNull?.executionSteps ?? [])
            .map((step) {
              return step.id == pending.toolCall.id
                  ? step.copyWith(
                      status: result.success ? AgentStepStatus.success : AgentStepStatus.error,
                      resultData: result.resultData,
                    )
                  : step;
            })
            .toList();

        if (pending.toolCall.name == 'generate_artifact' && result.success && result.resultData != null) {
          final artifactJson = result.resultData!['artifact'] as Map<String, dynamic>;
          final artifact = InteractiveArtifact.fromJson(artifactJson);
          _updateAssistantMessage(
            executionSteps: finishedSteps,
            artifact: artifact,
          );
        } else {
          _updateAssistantMessage(executionSteps: finishedSteps);
        }

        final toolContent = result.resultData != null
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
      }
    } on PremiumUnlockException catch (e) {
      debugPrint('[AgentLoop] Bloqueio Premium detectado (recursivo) para ${e.toolCall.name}');
      _pendingUnlock = e;
      return;
    } on Object catch (e, st) {
      LoggerService.error(e, stackTrace: st, message: '[ResumeLoop] Erro ao retomar loop', extra: {
        'listId': listId,
        'tool': pending.toolCall.name,
      });
      // Fallback em caso de erro na retomada
      agentResult = _AgentResult(messages: pending.messages, fallbackText: 'Erro ao retomar processamento.');
    } finally {
      ref.read(chatThinkingProvider(listId).notifier).setState(false);
      ref.read(chatActivityProvider(listId).notifier).setState(null);
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
        final count = idsStr.split(',').where((s) {
          return s.trim().isNotEmpty;
        }).length;
        final action = (args['isPurchased'] as bool? ?? false) ? 'Marcar' : 'Desmarcar';
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
        final budget = args['budget'] != null ? (args['budget'] as num).toDouble() : 0.0;
        return 'Definindo orçamento para R\$${budget.toStringAsFixed(2)}';
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
          final currentItems = await ref.read(shoppingListItemsProvider(listId).future);
          final originalItem = currentItems.where((i) => i.id == itemId).firstOrNull;
          await ref.read(shoppingListItemsProvider(listId).notifier).removeItem(itemId);
          if (originalItem != null) {
            final capturedItem = originalItem;
            reverseCallbacks.add(() async {
              await ref.read(shoppingListItemsProvider(capturedItem.shoppingListId).notifier).restoreItem(capturedItem);
            });
          }
          updatedSteps[i] = step.copyWith(status: AgentStepStatus.undone);
        } else if (resultData.containsKey('previousState') && listId != null) {
          final previousState = Map<String, dynamic>.from(resultData['previousState'] as Map);
          final item = ShoppingItem.fromJson(previousState);
          final currentItems = List<ShoppingItem>.from(
            await ref.read(shoppingListItemsProvider(listId).future),
          );
          await ref.read(shoppingListItemsProvider(listId).notifier).restoreItem(item);
          reverseCallbacks.add(() async {
            await ref.read(shoppingListItemsProvider(listId).notifier).updateItems(currentItems);
          });
          updatedSteps[i] = step.copyWith(status: AgentStepStatus.undone);
        } else if (resultData.containsKey('previousStates')) {
          final previousStates = resultData['previousStates'] as List<dynamic>;
          final items = previousStates.map((e) {
            return ShoppingItem.fromJson(Map<String, dynamic>.from(e as Map));
          }).toList();

          final itemsByList = <String, List<ShoppingItem>>{};
          for (final item in items) {
            itemsByList.putIfAbsent(item.shoppingListId, () {
              return [];
            }).add(item);
          }

          for (final entry in itemsByList.entries) {
            await ref.read(shoppingListItemsProvider(entry.key).notifier).updateItems(entry.value);
          }
          reverseCallbacks.add(() async {
            for (final entry in itemsByList.entries) {
              await ref.read(shoppingListItemsProvider(entry.key).notifier).updateItems(entry.value);
            }
          });
          updatedSteps[i] = step.copyWith(status: AgentStepStatus.undone);
        } else if (resultData.containsKey('previousBudget')) {
          final previousBudgetNum = resultData['previousBudget'] as num?;
          final previousBudget = previousBudgetNum?.toDouble();
          final currentBudget = ref.read(monthlyBudgetProvider).asData?.value;
          await ref.read(monthlyBudgetProvider.notifier).setBudget(previousBudget);
          reverseCallbacks.add(() async {
            await ref.read(monthlyBudgetProvider.notifier).setBudget(currentBudget);
          });
          updatedSteps[i] = step.copyWith(status: AgentStepStatus.undone);
        }
      } on Exception catch (e, st) {
        LoggerService.error(e, stackTrace: st, message: '[Undo] Error rolling back step ${step.id}', extra: {
          'operation': 'undo_step',
          'stepId': step.id,
          'stepName': step.description,
          'listId': listId,
          'stepStatus': step.status.name,
        });
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

    try {
      await ref.read(firestoreServiceProvider).saveChatMessage(listId, updatedMessage, sessionId: sessionId);
    } on Exception catch (e, st) {
      LoggerService.error(e, stackTrace: st, message: '[Undo] Failed to save updated chat message', extra: {
        'operation': 'undo_save_message',
        'listId': listId,
        'messageId': updatedMessage.id,
      });
    }
  }


  Future<void> _sendMessageInternal(
    String content,
  ) async {
    final aiService = ref.read(aiServiceProvider);
    final firestoreService = ref.read(firestoreServiceProvider);

    if (sessionId == null) {
      return;
    }

    final userMessage = ChatMessage(
      role: 'user',
      content: content,
    );

    final previousHistory = state.value ?? [];
    state = AsyncValue.data([...previousHistory, userMessage]);

    try {
        await firestoreService.saveChatMessage(listId, userMessage, sessionId: sessionId!);
        
        // Se for a primeira mensagem ou o título ainda for o padrão, gera um título
        final currentMessages = previousHistory.where((m) => m.role == 'user').length;
        if (currentMessages == 0) {
          unawaited(_generateTitleInBackground(listId, sessionId!, content));
        }
      } on Exception catch (e, st) {
        LoggerService.error(e, stackTrace: st, message: '[Chat] Failed to save user message', extra: {
          'operation': 'save_user_message',
          'listId': listId,
          'messageLength': content.length,
        });
        state = AsyncValue.data(previousHistory);
        return;
      }

    final apiMessages = <Map<String, dynamic>>[];
    // Limita o histórico para não estourar limites de tokens e manter performance
    final historyToSync = previousHistory.length > _maxHistoryMessages 
        ? previousHistory.sublist(previousHistory.length - _maxHistoryMessages)
        : previousHistory;

    for (final msg in historyToSync) {
      apiMessages.add({'role': msg.role, 'content': msg.content});
    }

    apiMessages.add({'role': 'user', 'content': content});

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
      ref.read(chatActivityProvider(listId).notifier).setState('Analisando sua solicitação...');
      agentResult = await _agentLoop(aiService, executor, apiMessages, tools: tools, cancelToken: _cancelToken);
      if (_isCancelled) {
        return;
      }
    } on PremiumUnlockException catch (e) {
      debugPrint('[AgentLoop] Bloqueio Premium detectado para ${e.toolCall.name}');
      _pendingUnlock = e;
      return;
    } on Object catch (e, stackTrace) {
      LoggerService.error(e, stackTrace: stackTrace, message: '[AgentLoop] ERRO no loop principal', extra: {
        'operation': 'agent_loop',
        'listId': listId,
        'messageLength': content.length,
        'historyLength': previousHistory.length,
      });
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      ref.read(chatThinkingProvider(listId).notifier).setState(false);
      ref.read(chatActivityProvider(listId).notifier).setState(null);
      const errorMsg =
          'Desculpe, ocorreu um erro ao processar sua solicitação. Verifique sua conexão ou tente novamente mais tarde.';
      _updateAssistantMessage(content: errorMsg, isError: true);
      final lastMsg = state.value?.lastOrNull;
      if (lastMsg != null) {
        try {
          await firestoreService.saveChatMessage(listId, lastMsg, sessionId: sessionId);
        } on Exception catch (e2, st2) {
          LoggerService.error(e2, stackTrace: st2, message: '[AgentLoop] Failed to save error message', extra: {
            'operation': 'save_error_message',
            'listId': listId,
            'errorContent': lastMsg.content.characters.take(200).toString(),
          });
        }
      }
      return;
    } finally {
      ref.read(chatThinkingProvider(listId).notifier).setState(false);
      ref.read(chatActivityProvider(listId).notifier).setState(null);
    }

    await _finalizeResponse(aiService, agentResult, tools);
  }

  Future<String> _getCurrentSystemPrompt() async {
    final isPremium = await ref.read(premiumProvider.future);
    final authState = ref.read(authProvider);
    final user = authState.value;
    final creationDate = user?.metadata.creationTime ?? DateTime.now();
    final daysOfUse = DateTime.now().difference(creationDate).inDays;
    
    final userStats = ref.read(userStatsProvider);
    final totalBought = userStats.totalItemsBought;
    final streak = userStats.currentStreak;

    final currentLocale = Intl.getCurrentLocale();

    String appVersion = '1.0.0';
    try {
      final packageInfo = await ref.read(packageInfoProvider.future);
      appVersion = packageInfo.version;
    } on Exception {
      // Ignore
    }

    String prompt;
    final currentListId = listId;
    int totalItemsCount = 0;

    if (currentListId != null) {
      final lists = await ref.read(shoppingListsProvider.future);
      final list = lists.where((l) => l.id == currentListId).firstOrNull;
      final items = await ref.read(shoppingListItemsProvider(currentListId).future);
      totalItemsCount = items.length;
      prompt = _buildListSystemPrompt(list, items);
    } else {
      final lists = await ref.read(shoppingListsProvider.future);
      final allItems = <String, List<ShoppingItem>>{};
      for (final l in lists) {
        final items = await ref.read(shoppingListItemsProvider(l.id).future);
        allItems[l.name] = items;
        totalItemsCount += items.length;
      }
      prompt = _buildGlobalSystemPrompt(allItems);
    }

    final today = DateFormat('EEEE, dd/MM/yyyy', currentLocale).format(DateTime.now());

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
      prompt += '\nGAMIFICAÇÃO: Elogie o usuário pelo seu streak de $streak dias ou por ter comprado $totalBought itens no total. Faça-o se sentir um mestre da organização!';
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

    try {
      final profile = await ref.read(userProfileProvider.future);
      if (!profile.isEmpty) {
        final fields = <String>[];
        if (profile.preferredStore != null && profile.preferredStore!.isNotEmpty) {
          fields.add('Mercado preferido: ${profile.preferredStore}');
        }
        if (profile.dietaryRestrictions != null && profile.dietaryRestrictions!.isNotEmpty) {
          fields.add('Restrição alimentar: ${profile.dietaryRestrictions}');
        }
        if (profile.avoidedStores != null && profile.avoidedStores!.isNotEmpty) {
          fields.add('Mercados a evitar: ${profile.avoidedStores}');
        }
        if (profile.notes != null && profile.notes!.isNotEmpty) {
          fields.add('Observações: ${profile.notes}');
        }
        if (fields.isNotEmpty) {
          prompt += '\n\nPerfil do Usuário:\n${fields.map((f) => '- $f').join('\n')}\n'
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
           (newMessages.last.isError || newMessages.last.role == 'assistant' && newMessages.last.content.isEmpty)) {
      final removed = newMessages.removeLast();
      await ref.read(firestoreServiceProvider).deleteChatMessage(listId, removed.id);
    }

    state = AsyncValue.data(newMessages);

    // Encontra a última mensagem do usuário
    final lastUserMessageIndex = newMessages.lastIndexWhere((m) => m.role == 'user');
    if (lastUserMessageIndex != -1) {
      final lastUserMessage = newMessages[lastUserMessageIndex];
      final content = lastUserMessage.content;
      
      if (content.isNotEmpty) {
        newMessages.removeAt(lastUserMessageIndex);
        await ref.read(firestoreServiceProvider).deleteChatMessage(listId, lastUserMessage.id);
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
    const delays = [Duration(seconds: 1), Duration(seconds: 3)];

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

    debugPrint('[AgentLoop] Iniciando com $_maxToolRounds rounds máximos, ${tools.length} ferramentas');
    for (var round = 0; round < _maxToolRounds; round++) {
      if (_isCancelled || (cancelToken?.isCancelled ?? false)) {
        break;
      }
      final systemPrompt = await _getCurrentSystemPrompt();
      debugPrint('[AgentLoop] Round $round — enviando requisição para IA...');
      final response = await callWithRetry(systemPrompt);

      debugPrint('[AgentLoop] Round $round — resposta recebida. toolCalls=${response.toolCalls.length}, content.length=${response.content?.length ?? 0}');

      if (!response.hasToolCalls) {
        debugPrint('[AgentLoop] Round $round — sem tool calls. Final text pronto para streaming.');
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
        'tool_calls':
            response.toolCalls.map((tc) => tc.toJson()).toList(),
      });

      final currentMsg = state.value?.lastOrNull;
      final currentSteps = List<AgentStep>.from(currentMsg?.executionSteps ?? []);

      final newSteps = response.toolCalls.map((tc) {
        return AgentStep(
          id: tc.id,
          description: _friendlyToolDescription(tc),
          status: AgentStepStatus.pending,
          toolName: tc.name,
        );
      }).toList();

      currentSteps.addAll(newSteps);
      _updateAssistantMessage(executionSteps: currentSteps);

      for (final toolCall in response.toolCalls) {
        if (_isCancelled || (cancelToken?.isCancelled ?? false)) {
        break;
      }
        debugPrint('[AgentLoop] Round $round — executando ferramenta: ${toolCall.name}(args: ${toolCall.arguments})');
        
        _updateActivityForTool(toolCall.name);
        unawaited(HapticFeedback.selectionClick());

        final runningSteps = (state.value?.lastOrNull?.executionSteps ?? [])
            .map((step) {
              return step.id == toolCall.id ? step.copyWith(status: AgentStepStatus.running) : step;
            })
            .toList();
        _updateAssistantMessage(executionSteps: runningSteps);
        
        final result = await executor.execute(toolCall);
        debugPrint('[AgentLoop] Round $round — resultado de ${toolCall.name}: ${result.content.characters.take(200)}');

        if (result.requiresUnlock) {
          final finishedSteps = (state.value?.lastOrNull?.executionSteps ?? [])
              .map((step) {
                return step.id == toolCall.id
                    ? step.copyWith(status: AgentStepStatus.requiresUnlock)
                    : step;
              })
              .toList();
          _updateAssistantMessage(executionSteps: finishedSteps);

          throw PremiumUnlockException(
            toolCall: toolCall,
            messages: messages,
            tools: tools,
          );
        }

        final finishedSteps = (state.value?.lastOrNull?.executionSteps ?? [])
            .map((step) {
              return step.id == toolCall.id
                  ? step.copyWith(
                      status: result.success ? AgentStepStatus.success : AgentStepStatus.error,
                      resultData: result.resultData,
                    )
                  : step;
            })
            .toList();
        if (toolCall.name == 'create_recipe' && result.success && result.resultData != null) {
          final recipeId = result.resultData!['recipeId'] as String?;
          if (recipeId != null) {
            _updateAssistantMessage(
              executionSteps: finishedSteps,
              actions: {'view_recipe': recipeId},
            );
          } else {
            _updateAssistantMessage(executionSteps: finishedSteps);
          }
        } else if (toolCall.name == 'generate_artifact' && result.success && result.resultData != null) {
          final artifactJson = result.resultData!['artifact'] as Map<String, dynamic>;
          final artifact = InteractiveArtifact.fromJson(artifactJson);
          _updateAssistantMessage(
            executionSteps: finishedSteps,
            artifact: artifact,
          );
        } else {
          _updateAssistantMessage(executionSteps: finishedSteps);
        }

        final toolContent = result.resultData != null
            ? '${result.content}\n\nDADOS: ${jsonEncode(result.resultData)}'
            : result.content;
        messages.add({
          'role': 'tool',
          'tool_call_id': toolCall.id,
          'content': toolContent,
        });
      }
    }

    final finalSystemPrompt = await _getCurrentSystemPrompt();
    debugPrint('[AgentLoop] Atingido limite de $_maxToolRounds rounds — tentando fallback...');
    final fallbackResponse = await callWithRetry(finalSystemPrompt);

    final fallbackText = fallbackResponse.content ??
        'Não foi possível processar após várias tentativas.';
    debugPrint('[AgentLoop] Fallback concluído. content.length=${fallbackText.length}');
    return _AgentResult(messages: messages, fallbackText: fallbackText);
  }

  void _updateActivityForTool(String toolName) {
    String activity;
    switch (toolName) {
      case 'add_shopping_item':
      case 'add_shopping_items':
        activity = 'Adicionando itens à lista...';
        break;
      case 'remove_shopping_item':
        activity = 'Removendo itens...';
        break;
      case 'update_shopping_item':
        activity = 'Atualizando itens...';
        break;
      case 'create_shopping_list':
        activity = 'Criando nova lista...';
        break;
      case 'get_shopping_list_items':
      case 'get_all_shopping_lists':
        activity = 'Consultando suas listas...';
        break;
      case 'set_budget':
        activity = 'Configurando orçamento...';
        break;
      case 'get_pantry_items':
        activity = 'Verificando sua despensa...';
        break;
      case 'add_pantry_item':
        activity = 'Adicionando à despensa...';
        break;
      case 'create_recipe':
        activity = 'Salvando receita...';
        break;
      case 'schedule_meal':
        activity = 'Organizando seu cardápio...';
        break;
      default:
        activity = 'Processando...';
    }
    ref.read(chatActivityProvider(listId).notifier).setState(activity);
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
        if (tagBuffer.isEmpty && (now.difference(lastUpdate).inMilliseconds > 60)) {
          lastUpdate = now;
          ref.read(chatStreamingTextProvider(listId).notifier).setState(buffer.toString());
        }
      }
      
      ref.read(chatStreamingTextProvider(listId).notifier).setState(buffer.toString());
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      final msgs = state.value ?? [];
      if (msgs.isNotEmpty && msgs.last.role == 'assistant') {
        state = AsyncValue.data([
          ...msgs.sublist(0, msgs.length - 1),
          msgs.last.copyWith(content: buffer.toString()),
        ]);
      }
    } on Exception catch (e, st) {
      LoggerService.error(e, stackTrace: st, message: '[StreamResponse] Erro no streaming interno', extra: {
        'operation': 'stream_response_inner',
        'listId': listId,
        'bufferLength': buffer.length,
        'bufferPreview': buffer.toString().characters.take(100).toString(),
      });
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      if (buffer.isEmpty) {
        rethrow;
      }
    }
    return buffer.toString();
  }

  Future<void> _generateTitleInBackground(String? listId, String sessionId, String firstMessage) async {
    try {
      final aiService = ref.read(aiServiceProvider);
      final prompt = 'Crie um título curtíssimo (máximo 4 palavras) para uma conversa que começa com: "$firstMessage". Retorne apenas o título, sem aspas.';
      final response = await aiService.getChatCompletion([
        ChatMessage(role: 'user', content: prompt),
      ]);

      var title = response.content.trim();
      if (title.startsWith('"') && title.endsWith('"')) {
        title = title.substring(1, title.length - 1);
      }

      final service = ref.read(firestoreServiceProvider);
      final sessions = await service.loadChatSessions(listId);
      final session = sessions.where((s) => s.id == sessionId).firstOrNull;
      if (session != null) {
        await service.saveChatSession(listId, session.copyWith(title: title));
        ref.invalidate(chatSessionsProvider(listId));
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
    final previousMessages = state.value ?? [];
    state = AsyncValue.data([...previousMessages, message]);
    
    try {
      await ref.read(firestoreServiceProvider).saveChatMessage(listId, message);
    } on Exception catch (e, st) {
      LoggerService.error(e, stackTrace: st, message: '[Chat] Failed to save addMessage', extra: {
        'operation': 'add_message',
        'listId': listId,
        'messageRole': message.role,
        'messageLength': message.content.length,
      });
      // Rollback
      state = AsyncValue.data(previousMessages);
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

    final previousMessages = List<ChatMessage>.from(messages);
    final updatedMessage = messages[index].copyWith(feedback: feedback);
    final updatedMessages = List<ChatMessage>.from(messages);
    updatedMessages[index] = updatedMessage;
    state = AsyncValue.data(updatedMessages);

    try {
      await ref.read(firestoreServiceProvider).saveChatMessage(listId, updatedMessage, sessionId: sessionId);
    } on Exception catch (e, st) {
      LoggerService.error(e, stackTrace: st, message: '[Chat] Failed to save feedback', extra: {
        'operation': 'set_feedback',
        'listId': listId,
        'messageId': messageId,
        'feedback': feedback,
      });
      // Rollback
      state = AsyncValue.data(previousMessages);
    }
  }
  Future<void> regenerate(String messageId) async {
    if (_currentTask != null) {
      return;
    }

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
      unawaited(firestore.deleteChatMessage(listId, messages[i].id));
    }

    await _sendAssistantResponse(userContent);
  }

  Future<void> _sendAssistantResponse(String content) async {
    final aiService = ref.read(aiServiceProvider);
    final firestoreService = ref.read(firestoreServiceProvider);
    final previousHistory = state.value ?? [];

    final apiMessages = <Map<String, dynamic>>[];
    final historyToSync = previousHistory.length > _maxHistoryMessages 
        ? previousHistory.sublist(previousHistory.length - _maxHistoryMessages)
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
      ref.read(chatActivityProvider(listId).notifier).setState('Analisando sua solicitação...');
      agentResult = await _agentLoop(aiService, executor, apiMessages, tools: tools, cancelToken: _cancelToken);
      if (_isCancelled) {
        return;
      }
    } on Object catch (e, st) {
      LoggerService.error(e, stackTrace: st, message: '[Regenerate] AgentLoop error', extra: {
        'operation': 'regenerate_agent_loop',
        'listId': listId,
        'contentLength': content.length,
        'historyLength': previousHistory.length,
      });
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      ref.read(chatThinkingProvider(listId).notifier).setState(false);
      ref.read(chatActivityProvider(listId).notifier).setState(null);
      const errorMsg = 'Desculpe, ocorreu um erro ao processar sua solicitação.';
      _updateAssistantMessage(content: errorMsg, isError: true);
      return;
    } finally {
      ref.read(chatThinkingProvider(listId).notifier).setState(false);
      ref.read(chatActivityProvider(listId).notifier).setState(null);
    }

    ref.read(chatStreamingProvider(listId).notifier).setState(true);
    unawaited(HapticFeedback.lightImpact());

    String finalText;
    bool isError = false;
    try {
      final systemPrompt = await _getCurrentSystemPrompt();
      finalText = await _streamResponse(aiService, agentResult.messages, systemPrompt, tools, cancelToken: _cancelToken);
    } on Object catch (e, st) {
      LoggerService.error(e, stackTrace: st, message: '[Regenerate] StreamResponse error', extra: {
        'operation': 'regenerate_stream_response',
        'listId': listId,
        'contentLength': content.length,
        'fallbackText': agentResult.fallbackText.characters.take(200).toString(),
      });
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      finalText = agentResult.fallbackText;
      isError = true;
    }

    ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
    ref.read(chatStreamingProvider(listId).notifier).setState(false);
    
    final lastMsg = state.value?.lastOrNull;
    if (lastMsg != null) {
      final displayContent = finalText.isEmpty ? agentResult.fallbackText : finalText;
      final extracted = _extractSuggestionsFromText(displayContent);
      final displayText = extracted.text;
      final llmSuggestions = extracted.suggestions;
      final suggestions = llmSuggestions ?? _generateSuggestedReplies(displayText, listId)
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
      unawaited(firestoreService.saveChatMessage(listId, finalMessage, sessionId: sessionId));
    }
  }

  Future<void> executeAction(String messageId, String action) async {
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
          final itemNotifier = ref.read(shoppingListItemsProvider(listId).notifier);
          for (final itemData in itemsData) {
            if (itemData is Map<String, dynamic>) {
              final unitStr = itemData['unit'] as String?;
              final catStr = itemData['category'] as String?;
              final unit = unitStr != null
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
        final items = await ref.read(shoppingListItemsProvider(listId).future);
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
        final sorted = List<ShoppingItem>.from(items)
          ..sort((a, b) => categoryOrder[a.categoryId]!
              .compareTo(categoryOrder[b.categoryId]!));
        await ref
            .read(shoppingListItemsProvider(listId).notifier)
            .updateItems(sorted);
    }
  }

  ({String text, List<SuggestedReply>? suggestions}) _extractSuggestionsFromText(String content) {
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

    final jsonStr = content.substring(startIdx + startTag.length, endIdx).trim();
    final cleanText = content.replaceRange(startIdx, endIdx + endTag.length, '').trim();

    try {
      final parsed = jsonDecode(jsonStr) as List<dynamic>;
      final suggestions = parsed.map((e) {
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
      if (lowerContent.contains('receita') || lowerContent.contains('ingrediente')) {
        replies.add('Adicione os itens à lista');
        replies.add('Quais as quantidades?');
      } else if (lowerContent.contains('organizar') || lowerContent.contains('corredor')) {
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
  String _buildListSystemPrompt(
      ShoppingList? list, List<ShoppingItem> items) {
    final listName = list?.name ?? 'Lista de Compras';
    const maxItems = 30;
    final displayItems = items.take(maxItems);
    final itemsStr = displayItems
        .map((i) =>
            '- ${i.name} (${i.quantity} ${i.unit.label})${i.isPurchased ? ' [Comprado]' : ''}')
        .join('\n');
    final overflow =
        items.length > maxItems ? '\n... e mais ${items.length - maxItems} itens (total: ${items.length})' : '';

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

Explique o que você fez de forma concisa e amigável em português.

Se precisar de informações adicionais para executar uma ação, use as ferramentas de consulta primeiro.''';
  }

  String _buildGlobalSystemPrompt(Map<String, List<ShoppingItem>> allItems) {
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
        context +=
            items.map((i) => '  - ${i.name} (${i.quantity} ${i.unit.label})').join('\n');
        context += '\n\n';
      });
    } else {
      allItems.forEach((listName, items) {
        context += '- $listName (${items.length} itens)\n';
      });
      context += '\nUse a ferramenta get_items para consultar os itens de uma lista específica.\n\n';
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

Explique o que você fez de forma concisa e amigável em português.''';

    return context;
  }
  // coverage:ignore-end
}
