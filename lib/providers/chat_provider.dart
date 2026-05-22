import 'dart:async' show unawaited;
import 'package:flutter/foundation.dart' show debugPrint;
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../agent/tool.dart';
import '../agent/tool_executor.dart';
import '../services/ai_service.dart';
import '../models/chat_message.dart';
import '../models/category.dart';
import '../models/unit.dart';
import '../models/shopping_item.dart';
import '../models/shopping_list.dart';
import 'ai_service_provider.dart';
import 'firestore_service_provider.dart';
import 'shopping_list_provider.dart';
import 'shopping_lists_provider.dart';

part 'chat_provider.g.dart';

const int _maxToolRounds = 5;
const int _maxHistoryMessages = 20;

final chatStreamingProvider = StateProvider.family<bool, String?>((ref, id) => false);
final chatThinkingProvider = StateProvider.family<bool, String?>((ref, id) => false);
final chatActivityProvider = StateProvider.family<String?, String?>((ref, id) => null);

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

  Future<void> _sendMessageInternal(String content) async {
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
    } on Exception {
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

    _AgentResult agentResult;
    try {
      ref.read(chatThinkingProvider(listId).notifier).state = true;
      ref.read(chatActivityProvider(listId).notifier).state = 'Analisando sua solicitação...';
      agentResult = await _agentLoop(aiService, executor, apiMessages, tools: tools);
      if (_isCancelled) {
        return;
      }
    } on Exception catch (e, stackTrace) {
      ref.read(chatThinkingProvider(listId).notifier).state = false;
      ref.read(chatActivityProvider(listId).notifier).state = null;
      debugPrint('[AgentLoop] ERRO no loop principal: $e');
      debugPrint('[AgentLoop] StackTrace: $stackTrace');
      const errorMsg =
          'Desculpe, ocorreu um erro ao processar sua solicitação. Verifique sua conexão ou tente novamente mais tarde.';
      final errorMessage = ChatMessage(role: 'assistant', content: errorMsg, isError: true);
      state = AsyncValue.data([...state.value ?? [], errorMessage]);
      try {
        await firestoreService.saveChatMessage(listId, errorMessage);
      } on Exception {
        // Silently fail
      }
      return;
    } finally {
      ref.read(chatThinkingProvider(listId).notifier).state = false;
      ref.read(chatActivityProvider(listId).notifier).state = null;
    }

    ref.read(chatStreamingProvider(listId).notifier).state = true;
    unawaited(HapticFeedback.lightImpact());

    final tempMessage = ChatMessage(role: 'assistant', content: '');
    state = AsyncValue.data([...state.value ?? [], tempMessage]);

    String finalText;
    bool isError = false;
    try {
      final systemPrompt = await _getCurrentSystemPrompt();
      finalText = await _streamResponse(aiService, agentResult.messages, systemPrompt, tools);
      if (_isCancelled) {
        ref.read(chatStreamingProvider(listId).notifier).state = false;
        return;
      }
    } on Exception catch (e) {
      debugPrint('[StreamResponse] Erro no streaming: $e');
      finalText = agentResult.fallbackText;
      isError = true;
    }

    if (finalText.isEmpty) {
      finalText = agentResult.fallbackText;
      isError = true;
    }

    ref.read(chatStreamingProvider(listId).notifier).state = false;
    unawaited(HapticFeedback.mediumImpact());

    final finalMessage = ChatMessage(
      role: 'assistant',
      content: finalText,
      id: tempMessage.id,
      timestamp: tempMessage.timestamp,
      isError: isError,
      suggestedReplies: _generateSuggestedReplies(finalText, listId),
    );
    final updatedMessages = <ChatMessage>[...state.value ?? []];
    if (updatedMessages.isNotEmpty) {
      updatedMessages[updatedMessages.length - 1] = finalMessage;
      state = AsyncValue.data(updatedMessages);
    } else {
      state = AsyncValue.data([finalMessage]);
    }

    try {
      await firestoreService.saveChatMessage(listId, finalMessage);
    } on Exception {
      // Silently fail saving assistant message
    }
  }

  Future<String> _getCurrentSystemPrompt() async {
    final currentListId = listId;
    if (currentListId != null) {
      final lists = await ref.read(shoppingListsProvider.future);
      final list = lists.where((l) => l.id == currentListId).firstOrNull;
      final items = await ref.read(shoppingListItemsProvider(currentListId).future);
      return _buildListSystemPrompt(list, items);
    } else {
      final lists = await ref.read(shoppingListsProvider.future);
      final allItems = <String, List<ShoppingItem>>{};
      for (final l in lists) {
        final items = await ref.read(shoppingListItemsProvider(l.id).future);
        allItems[l.name] = items;
      }
      return _buildGlobalSystemPrompt(allItems);
    }
  }

  Future<void> retryMessage() async {
    if (_currentTask != null) {
      return;
    }
    
    final messages = state.valueOrNull ?? [];
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
    ref.read(chatStreamingProvider(listId).notifier).state = false;
    ref.read(chatThinkingProvider(listId).notifier).state = false;

    // Remove the temp empty message if it exists
    final messages = state.valueOrNull ?? [];
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

      for (final toolCall in response.toolCalls) {
        debugPrint('[AgentLoop] Round $round — executando ferramenta: ${toolCall.name}(args: ${toolCall.arguments})');
        
        // Update activity description based on tool name
        _updateActivityForTool(toolCall.name);
        unawaited(HapticFeedback.selectionClick());
        
        final result = await executor.execute(toolCall);
        debugPrint('[AgentLoop] Round $round — resultado de ${toolCall.name}: ${result.content.substring(0, result.content.length.clamp(0, 200))}');
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
      default:
        activity = 'Processando...';
    }
    ref.read(chatActivityProvider(listId).notifier).state = activity;
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
        // Se já estamos suprimindo, acumulamos no tagBuffer e checamos se fechou
        if (isSuppressing) {
          tagBuffer.write(token);
          if (tagBuffer.toString().contains('</｜｜DSML｜｜tool_calls>')) {
            isSuppressing = false;
            tagBuffer.clear();
          }
          continue;
        }

        // Lógica de detecção de início de supressão
        if (token.contains('<｜｜DSML｜｜')) {
          isSuppressing = true;
          tagBuffer.write(token);
          // Checa se já fechou no mesmo token
          if (tagBuffer.toString().contains('</｜｜DSML｜｜tool_calls>')) {
            isSuppressing = false;
            tagBuffer.clear();
          }
          continue;
        }

        // Caso especial: o token pode ser apenas parte de uma tag (ex: "<")
        if (token.startsWith('<') || tagBuffer.isNotEmpty) {
          tagBuffer.write(token);
          final currentTag = tagBuffer.toString();
          
          if (currentTag.contains('<｜｜DSML｜｜')) {
            isSuppressing = true;
            // Checa se já fechou
            if (currentTag.contains('</｜｜DSML｜｜tool_calls>')) {
              isSuppressing = false;
              tagBuffer.clear();
            }
            continue;
          }
          
          // Se o buffer ficar muito grande e não parecer uma tag, liberamos
          if (currentTag.length > 100) {
            buffer.write(currentTag);
            tagBuffer.clear();
          } else if (currentTag.endsWith('>') || currentTag.endsWith('\n')) {
            // Se fechou uma tag ou linha que não é DSML, liberamos
            buffer.write(currentTag);
            tagBuffer.clear();
          }
          // Caso contrário, continuamos acumulando no tagBuffer
        } else {
          buffer.write(token);
        }

        // Throttling: Atualiza o estado apenas a cada 60ms ou se for o fim
        final now = DateTime.now();
        if (tagBuffer.isEmpty && (now.difference(lastUpdate).inMilliseconds > 60)) {
          lastUpdate = now;
          final msgs = state.value ?? [];
          if (msgs.isNotEmpty && msgs.last.role == 'assistant') {
            state = AsyncValue.data([
              ...msgs.sublist(0, msgs.length - 1),
              msgs.last.copyWith(content: buffer.toString()),
            ]);
          }
        }
      }
      
      // Flush final obrigatório se sobrou algo ou se o buffer final é diferente do estado
      final msgs = state.value ?? [];
      if (msgs.isNotEmpty && msgs.last.role == 'assistant') {
        state = AsyncValue.data([
          ...msgs.sublist(0, msgs.length - 1),
          msgs.last.copyWith(content: buffer.toString()),
        ]);
      }
    } on Exception catch (e) {
      debugPrint('[StreamResponse] Erro no streaming: $e');
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
    } on Exception {
      // Silently fail
    }
  }

  Future<void> setFeedback(String messageId, int? feedback) async {
    final messages = state.valueOrNull ?? [];
    final index = messages.indexWhere((m) => m.id == messageId);
    if (index == -1) {
      return;
    }

    final updatedMessage = messages[index].copyWith(feedback: feedback);
    final updatedMessages = List<ChatMessage>.from(messages);
    updatedMessages[index] = updatedMessage;
    state = AsyncValue.data(updatedMessages);

    try {
      await ref.read(firestoreServiceProvider).saveChatMessage(listId, updatedMessage);
    } on Exception {
      // Silently fail
    }
  }

  Future<void> regenerate(String messageId) async {
    if (_currentTask != null) {
      return;
    }

    final messages = state.valueOrNull ?? [];
    final index = messages.indexWhere((m) => m.id == messageId);
    if (index == -1) {
      return;
    }

    // Find the previous user message
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

    // Remove from the assistant message onwards
    final newMessages = messages.sublist(0, index);
    state = AsyncValue.data(newMessages);

    // Delete removed messages from Firestore
    final firestore = ref.read(firestoreServiceProvider);
    for (int i = index; i < messages.length; i++) {
      unawaited(firestore.deleteChatMessage(listId, messages[i].id));
    }

    // Trigger AI response for the existing user message
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

    _AgentResult agentResult;
    try {
      ref.read(chatThinkingProvider(listId).notifier).state = true;
      ref.read(chatActivityProvider(listId).notifier).state = 'Analisando sua solicitação...';
      agentResult = await _agentLoop(aiService, executor, apiMessages, tools: tools);
      if (_isCancelled) {
        return;
      }
    } on Exception catch (e) {
      ref.read(chatThinkingProvider(listId).notifier).state = false;
      ref.read(chatActivityProvider(listId).notifier).state = null;
      debugPrint('[AgentLoop] ERRO no loop principal: $e');
      const errorMsg = 'Desculpe, ocorreu um erro ao processar sua solicitação.';
      final errorMessage = ChatMessage(role: 'assistant', content: errorMsg, isError: true);
      state = AsyncValue.data([...state.value ?? [], errorMessage]);
      return;
    } finally {
      ref.read(chatThinkingProvider(listId).notifier).state = false;
      ref.read(chatActivityProvider(listId).notifier).state = null;
    }

    ref.read(chatStreamingProvider(listId).notifier).state = true;
    unawaited(HapticFeedback.lightImpact());

    final tempMessage = ChatMessage(role: 'assistant', content: '');
    state = AsyncValue.data([...state.value ?? [], tempMessage]);

    String finalText;
    bool isError = false;
    try {
      final systemPrompt = await _getCurrentSystemPrompt();
      finalText = await _streamResponse(aiService, agentResult.messages, systemPrompt, tools);
    } on Exception {
      finalText = agentResult.fallbackText;
      isError = true;
    }

    ref.read(chatStreamingProvider(listId).notifier).state = false;
    final finalMessage = tempMessage.copyWith(
      content: finalText.isEmpty ? agentResult.fallbackText : finalText,
      isError: isError || finalText.isEmpty,
      suggestedReplies: _generateSuggestedReplies(finalText, listId),
    );
    
    final updatedMessages = <ChatMessage>[...state.value ?? []];
    if (updatedMessages.isNotEmpty) {
      updatedMessages[updatedMessages.length - 1] = finalMessage;
      state = AsyncValue.data(updatedMessages);
      unawaited(firestoreService.saveChatMessage(listId, finalMessage));
    }
  }

  Future<void> executeAction(String messageId, String action) async {
    final messages = state.valueOrNull ?? [];
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
              final category = catStr != null
                  ? Category.values.firstWhere(
                      (c) => c.name == catStr,
                      orElse: () => Category.others,
                    )
                  : Category.others;
              await itemNotifier.addItem(
                listId: listId,
                name: itemData['name'] as String? ?? '',
                quantity: (itemData['quantity'] as num?)?.toInt() ?? 1,
                unit: unit,
                category: category,
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
          Category.fruits: 0,
          Category.cleaning: 1,
          Category.beverages: 2,
          Category.bakery: 3,
          Category.others: 4,
        };
        final sorted = List<ShoppingItem>.from(items)
          ..sort((a, b) => categoryOrder[a.category]!
              .compareTo(categoryOrder[b.category]!));
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

    return '''Você é um assistente inteligente com CONTROLE TOTAL sobre a lista de compras do usuário.

Contexto atual: lista "$listName".

Itens atuais na lista:
$itemsStr$overflow

VOCÊ PODE EXECUTAR AÇÕES DIRETAMENTE usando as ferramentas disponíveis:
- Adicionar, remover, editar itens
- Marcar/desmarcar comprados
- Gerenciar listas (criar, renomear, arquivar, excluir)
- Gerenciar despensa
- Controlar orçamento e configurações

Sempre que o usuário pedir uma ação, USE as ferramentas adequadas em vez de apenas sugerir.
NUNCA escreva códigos de chamada de ferramenta ou blocos JSON manualmente no corpo da mensagem. Use sempre a funcionalidade nativa de ferramentas do sistema.
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
VOCÊ PODE EXECUTAR AÇÕES DIRETAMENTE usando as ferramentas disponíveis:
- Gerenciar listas (criar, renomear, arquivar, excluir)
- Adicionar, remover, editar itens em qualquer lista
- Gerenciar despensa
- Controlar orçamento, tema e configurações
- Compartilhar listas
- Exportar/importar backup

Sempre que o usuário pedir uma ação, USE as ferramentas adequadas.
NUNCA escreva códigos de chamada de ferramenta ou blocos JSON manualmente no corpo da mensagem. Use sempre a funcionalidade nativa de ferramentas do sistema.
Explique o que você fez de forma concisa e amigável em português.''';

    return context;
  }
  // coverage:ignore-end
}
