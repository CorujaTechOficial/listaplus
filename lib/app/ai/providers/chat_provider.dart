import 'dart:async' show unawaited;
import 'dart:convert' show base64Encode;
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
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/app/settings/providers/settings_providers.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/settings/providers/settings_providers.dart';

part 'chat_provider.g.dart';

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

class _AgentResult {
  _AgentResult({required this.messages, required this.fallbackText});

  final List<Map<String, dynamic>> messages;
  final String fallbackText;
}

@riverpod
class ChatSession extends _$ChatSession {
  bool _isCancelled = false;
  Future<void>? _currentTask;

  @override
  Future<List<ChatMessage>> build(String? listId) async {
    final service = ref.watch(firestoreServiceProvider);
    return service.loadChatMessages(listId);
  }

  Future<void> sendMessage(String content) async {
    if (_currentTask != null) {
      debugPrint('[ChatSession] Ignorando mensagem concorrente.');
      return;
    }

    _isCancelled = false;
    final task = _sendMessageInternal(content);
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
      }
    }
  }

  Future<void> sendVoiceMessage(List<int> audioBytes, String format) async {
    if (_currentTask != null) {
      debugPrint('[ChatSession] Ignorando mensagem concorrente.');
      return;
    }

    _isCancelled = false;
    final task = _sendMessageInternal('🎙️ Mensagem de voz', audioBytes: audioBytes, audioFormat: format);
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
      }
    }
  }

  void _updateAssistantMessage({
    String? content,
    List<AgentStep>? executionSteps,
    bool? isError,
    List<String>? suggestedReplies,
    InteractiveArtifact? artifact,
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
          await ref.read(shoppingListItemsProvider(listId).notifier).removeItem(itemId);
          updatedSteps[i] = step.copyWith(status: AgentStepStatus.undone);
        } else if (resultData.containsKey('previousState') && listId != null) {
          final previousState = Map<String, dynamic>.from(resultData['previousState'] as Map);
          final item = ShoppingItem.fromJson(previousState);
          await ref.read(shoppingListItemsProvider(listId).notifier).restoreItem(item);
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
          updatedSteps[i] = step.copyWith(status: AgentStepStatus.undone);
        } else if (resultData.containsKey('previousBudget')) {
          final previousBudgetNum = resultData['previousBudget'] as num?;
          final previousBudget = previousBudgetNum?.toDouble();
          await ref.read(monthlyBudgetProvider.notifier).setBudget(previousBudget);
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
      }
    }

    final updatedMessage = message.copyWith(executionSteps: updatedSteps);
    final newList = List<ChatMessage>.from(messages);
    newList[index] = updatedMessage;
    state = AsyncValue.data(newList);

      try {
        await ref.read(firestoreServiceProvider).saveChatMessage(listId, updatedMessage);
      } on Exception catch (e, st) {
        LoggerService.error(e, stackTrace: st, message: '[Undo] Failed to save updated chat message', extra: {
          'operation': 'undo_save_message',
          'listId': listId,
          'messageId': updatedMessage.id,
        });
      }
  }

  Future<void> _sendMessageInternal(
    String content, {
    List<int>? audioBytes,
    String? audioFormat,
  }) async {
    final aiService = ref.read(aiServiceProvider);
    final firestoreService = ref.read(firestoreServiceProvider);

    final userMessage = ChatMessage(
      role: 'user',
      content: content,
    );

    final previousHistory = state.value ?? [];
    state = AsyncValue.data([...previousHistory, userMessage]);

    try {
        await firestoreService.saveChatMessage(listId, userMessage);
      } on Exception catch (e, st) {
        LoggerService.error(e, stackTrace: st, message: '[Chat] Failed to save user message', extra: {
          'operation': 'save_user_message',
          'listId': listId,
          'messageLength': content.length,
          'hasAudio': audioBytes != null,
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

    if (audioBytes != null && audioFormat != null) {
      final base64Audio = base64Encode(audioBytes);
      apiMessages.add({
        'role': 'user',
        'content': [
          {'type': 'text', 'text': content},
          {
            'type': 'input_audio',
            'input_audio': {
              'data': base64Audio,
              'format': audioFormat,
            }
          }
        ],
      });
    } else {
      apiMessages.add({'role': 'user', 'content': content});
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
      agentResult = await _agentLoop(aiService, executor, apiMessages, tools: tools);
      if (_isCancelled) {
        return;
      }
    } on Exception catch (e, stackTrace) {
      LoggerService.error(e, stackTrace: stackTrace, message: '[AgentLoop] ERRO no loop principal', extra: {
        'operation': 'agent_loop',
        'listId': listId,
        'messageLength': content.length,
        'historyLength': previousHistory.length,
        'hasAudio': audioBytes != null,
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
          await firestoreService.saveChatMessage(listId, lastMsg);
        } on Exception catch (e2, st2) {
          LoggerService.error(e2, stackTrace: st2, message: '[AgentLoop] Failed to save error message', extra: {
            'operation': 'save_error_message',
            'listId': listId,
            'errorContent': lastMsg.content.substring(0, lastMsg.content.length.clamp(0, 200)),
          });
        }
      }
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
      finalText = await _streamResponse(aiService, agentResult.messages, systemPrompt, tools);
      if (_isCancelled) {
        ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
        ref.read(chatStreamingProvider(listId).notifier).setState(false);
        return;
      }
    } on Exception catch (e, st) {
      LoggerService.error(e, stackTrace: st, message: '[StreamResponse] Erro no streaming', extra: {
        'operation': 'stream_response',
        'listId': listId,
        'fallbackText': agentResult.fallbackText.substring(0, agentResult.fallbackText.length.clamp(0, 200)),
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
      final finalMessage = lastMsg.copyWith(
        content: finalText,
        isError: isError,
        suggestedReplies: _generateSuggestedReplies(finalText, listId),
      );
      final updatedMessages = <ChatMessage>[...state.value ?? []];
      updatedMessages[updatedMessages.length - 1] = finalMessage;
      state = AsyncValue.data(updatedMessages);

      try {
        await firestoreService.saveChatMessage(listId, finalMessage);
      } on Exception {
        // Silently fail saving assistant message
      }
    }
  }

  Future<String> _getCurrentSystemPrompt() async {
    String prompt;
    final currentListId = listId;
    if (currentListId != null) {
      final lists = await ref.read(shoppingListsProvider.future);
      final list = lists.where((l) => l.id == currentListId).firstOrNull;
      final items = await ref.read(shoppingListItemsProvider(currentListId).future);
      prompt = _buildListSystemPrompt(list, items);
    } else {
      final lists = await ref.read(shoppingListsProvider.future);
      final allItems = <String, List<ShoppingItem>>{};
      for (final l in lists) {
        final items = await ref.read(shoppingListItemsProvider(l.id).future);
        allItems[l.name] = items;
      }
      prompt = _buildGlobalSystemPrompt(allItems);
    }

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
    final lastUserMessage = newMessages.lastWhere((m) => m.role == 'user', orElse: () => ChatMessage(role: 'user', content: ''));
    if (lastUserMessage.content.isNotEmpty) {
      final content = lastUserMessage.content;
      newMessages.removeLast();
      await ref.read(firestoreServiceProvider).deleteChatMessage(listId, lastUserMessage.id);
      state = AsyncValue.data(newMessages);
      
      await sendMessage(content);
    }
  }

  void cancelRequest() {
    _isCancelled = true;
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
          );
        } on Exception {
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
        );
      }).toList();

      currentSteps.addAll(newSteps);
      _updateAssistantMessage(executionSteps: currentSteps);

      for (final toolCall in response.toolCalls) {
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
        debugPrint('[AgentLoop] Round $round — resultado de ${toolCall.name}: ${result.content.substring(0, result.content.length.clamp(0, 200))}');

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
        if (toolCall.name == 'generate_artifact' && result.success && result.resultData != null) {
          final artifactJson = result.resultData!['artifact'] as Map<String, dynamic>;
          final artifact = InteractiveArtifact.fromJson(artifactJson);
          _updateAssistantMessage(
            executionSteps: finishedSteps,
            artifact: artifact,
          );
        } else {
          _updateAssistantMessage(executionSteps: finishedSteps);
        }

        messages.add({
          'role': 'tool',
          'tool_call_id': toolCall.id,
          'content': result.content,
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
    List<Map<String, dynamic>> tools,
  ) async {
    final buffer = StringBuffer();
    final tagBuffer = StringBuffer();
    bool isSuppressing = false;
    DateTime lastUpdate = DateTime.now();

    try {
      await for (final token in aiService.getChatCompletionStreamWithTools(
        messages,
        systemPrompt: systemPrompt,
        tools: tools,
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
        'bufferPreview': buffer.toString().substring(0, buffer.length.clamp(0, 100)),
      });
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      if (buffer.isEmpty) {
        rethrow;
      }
    }
    return buffer.toString();
  }

  Future<void> clearHistory() async {
    final firestoreService = ref.read(firestoreServiceProvider);
    await firestoreService.clearChatHistory(listId);
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

    try {
        await ref.read(firestoreServiceProvider).saveChatMessage(listId, updatedMessage);
      } on Exception catch (e, st) {
        LoggerService.error(e, stackTrace: st, message: '[Chat] Failed to save feedback', extra: {
          'operation': 'set_feedback',
          'listId': listId,
          'messageId': messageId,
          'feedback': feedback,
        });
      }
  }

  Future<void> regenerate(String messageId) async {
    if (_currentTask != null) {
      return;
    }

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

    _isCancelled = false;
    final task = _sendAssistantResponse(userContent);
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
      }
    }
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
      agentResult = await _agentLoop(aiService, executor, apiMessages, tools: tools);
      if (_isCancelled) {
        return;
      }
    } on Exception catch (e, st) {
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
      finalText = await _streamResponse(aiService, agentResult.messages, systemPrompt, tools);
    } on Exception catch (e, st) {
      LoggerService.error(e, stackTrace: st, message: '[Regenerate] StreamResponse error', extra: {
        'operation': 'regenerate_stream_response',
        'listId': listId,
        'contentLength': content.length,
        'fallbackText': agentResult.fallbackText.substring(0, agentResult.fallbackText.length.clamp(0, 200)),
      });
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      finalText = agentResult.fallbackText;
      isError = true;
    }

    ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
    ref.read(chatStreamingProvider(listId).notifier).setState(false);
    
    final lastMsg = state.value?.lastOrNull;
    if (lastMsg != null) {
      final finalMessage = lastMsg.copyWith(
        content: finalText.isEmpty ? agentResult.fallbackText : finalText,
        isError: isError || finalText.isEmpty,
        suggestedReplies: _generateSuggestedReplies(finalText, listId),
      );
      final updatedMessages = <ChatMessage>[...state.value ?? []];
      updatedMessages[updatedMessages.length - 1] = finalMessage;
      state = AsyncValue.data(updatedMessages);
      unawaited(firestoreService.saveChatMessage(listId, finalMessage));
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

    // Add generic ones if needed
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

Explique o que você fez de forma concisa e amigável em português.''';

    return context;
  }
  // coverage:ignore-end
}
