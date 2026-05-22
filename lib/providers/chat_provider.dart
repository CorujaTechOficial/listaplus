import 'package:flutter/foundation.dart' show debugPrint;
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

@riverpod
class ChatSession extends _$ChatSession {
  @override
  Future<List<ChatMessage>> build(String? listId) async {
    final service = ref.watch(firestoreServiceProvider);
    return service.loadChatMessages(listId);
  }

  Future<void> sendMessage(String content) async {
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

    String systemPrompt;
    final currentListId = listId;
    if (currentListId != null) {
      final items = ref
              .read(shoppingListItemsProvider(currentListId))
              .valueOrNull ??
          [];
      final list = (ref.read(shoppingListsProvider).valueOrNull ?? [])
          .where((l) => l.id == currentListId)
          .firstOrNull;

      systemPrompt = _buildListSystemPrompt(list, items);
    } else {
      final lists = ref.read(shoppingListsProvider).valueOrNull ?? [];
      final allItems = <String, List<ShoppingItem>>{};
      for (final l in lists) {
        final items =
            ref.read(shoppingListItemsProvider(l.id)).valueOrNull ?? [];
        allItems[l.name] = items;
      }
      systemPrompt = _buildGlobalSystemPrompt(allItems);
    }

    final apiMessages = <Map<String, dynamic>>[];
    for (final msg in previousHistory) {
      apiMessages.add({'role': msg.role, 'content': msg.content});
    }
    apiMessages.add({'role': 'user', 'content': content});

    final tools = AgentTools.all.map((t) => t.toOpenAIFunction()).toList();
    final executor = ToolExecutor(ref);

    String finalText;
    try {
      finalText = await _agentLoop(aiService, executor, apiMessages,
          systemPrompt: systemPrompt, tools: tools);
    } on Exception catch (e, stackTrace) {
      debugPrint('[AgentLoop] ERRO no loop principal: $e');
      debugPrint('[AgentLoop] StackTrace: $stackTrace');
      finalText =
          'Desculpe, ocorreu um erro ao processar sua solicitação. Verifique sua conexão ou tente novamente mais tarde.';
    }

    var assistantMessage = ChatMessage(role: 'assistant', content: '');

    state = AsyncValue.data([...state.value ?? [], assistantMessage]);

    assistantMessage = assistantMessage.copyWith(content: finalText);

    final currentSafeHistory = state.value ?? [];
    state = AsyncValue.data(
      currentSafeHistory
          .map(
              (msg) => msg.id == assistantMessage.id ? assistantMessage : msg)
          .toList(),
    );

    try {
      await firestoreService.saveChatMessage(listId, assistantMessage);
    } on Exception {
      // Silently fail saving assistant message
    }
  }

  Future<String> _agentLoop(
    AiService aiService,
    ToolExecutor executor,
    List<Map<String, dynamic>> messages, {
    required String systemPrompt,
    required List<Map<String, dynamic>> tools,
  }) async {
    debugPrint('[AgentLoop] Iniciando com $_maxToolRounds rounds máximos, ${tools.length} ferramentas');
    for (var round = 0; round < _maxToolRounds; round++) {
      debugPrint('[AgentLoop] Round $round — enviando requisição para IA...');
      final response = await aiService.getChatCompletionWithTools(
        messages,
        systemPrompt: systemPrompt,
        tools: tools,
      );

      debugPrint('[AgentLoop] Round $round — resposta recebida. toolCalls=${response.toolCalls.length}, content.length=${response.content?.length ?? 0}');

      if (!response.hasToolCalls) {
        debugPrint('[AgentLoop] Round $round — sem tool calls, retornando conteúdo.');
        return response.content ?? '';
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
        final result = await executor.execute(toolCall);
        debugPrint('[AgentLoop] Round $round — resultado de ${toolCall.name}: ${result.content.substring(0, result.content.length.clamp(0, 200))}');
        messages.add({
          'role': 'tool',
          'tool_call_id': toolCall.id,
          'content': result.content,
        });
      }
    }

    debugPrint('[AgentLoop] Atingido limite de $_maxToolRounds rounds — tentando fallback...');
    final fallbackResponse = await aiService.getChatCompletionWithTools(
      messages,
      systemPrompt: systemPrompt,
      tools: tools,
    );

    final fallbackText = fallbackResponse.content ??
        'Não foi possível processar após várias tentativas.';
    debugPrint('[AgentLoop] Fallback concluído. content.length=${fallbackText.length}');
    return fallbackText;
  }

  Future<void> clearHistory() async {
    final firestoreService = ref.read(firestoreServiceProvider);
    await firestoreService.clearChatHistory(listId);
    state = const AsyncValue.data([]);
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
        final items = ref.read(shoppingListItemsProvider(listId)).valueOrNull ?? [];
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

  // coverage:ignore-start
  String _buildListSystemPrompt(
      ShoppingList? list, List<ShoppingItem> items) {
    final listName = list?.name ?? 'Lista de Compras';
    final itemsStr = items
        .map((i) =>
            '- ${i.name} (${i.quantity} ${i.unit.label})${i.isPurchased ? ' [Comprado]' : ''}')
        .join('\n');

    return '''Você é um assistente inteligente com CONTROLE TOTAL sobre a lista de compras do usuário.

Contexto atual: lista "$listName".

Itens atuais na lista:
$itemsStr

VOCÊ PODE EXECUTAR AÇÕES DIRETAMENTE usando as ferramentas disponíveis:
- Adicionar, remover, editar itens
- Marcar/desmarcar comprados
- Gerenciar listas (criar, renomear, arquivar, excluir)
- Gerenciar despensa
- Controlar orçamento e configurações

Sempre que o usuário pedir uma ação, USE as ferramentas adequadas em vez de apenas sugerir.
Explique o que você fez de forma concisa e amigável em português.

Se precisar de informações adicionais para executar uma ação, use as ferramentas de consulta primeiro.''';
  }

  String _buildGlobalSystemPrompt(Map<String, List<ShoppingItem>> allItems) {
    var context =
        'Você é um assistente inteligente com CONTROLE TOTAL sobre o app de compras do usuário.\n';
    context += 'O usuário possui as seguintes listas:\n\n';

    allItems.forEach((listName, items) {
      context += 'Lista: $listName\n';
      context +=
          items.map((i) => '  - ${i.name} (${i.quantity} ${i.unit.label})').join('\n');
      context += '\n\n';
    });

    context += '''
VOCÊ PODE EXECUTAR AÇÕES DIRETAMENTE usando as ferramentas disponíveis:
- Gerenciar listas (criar, renomear, arquivar, excluir)
- Adicionar, remover, editar itens em qualquer lista
- Gerenciar despensa
- Controlar orçamento, tema e configurações
- Compartilhar listas
- Exportar/importar backup

Sempre que o usuário pedir uma ação, USE as ferramentas adequadas.
Explique o que você fez de forma concisa e amigável em português.''';

    return context;
  }
  // coverage:ignore-end
}
