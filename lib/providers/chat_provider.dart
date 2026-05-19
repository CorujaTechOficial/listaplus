import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/chat_message.dart';
import '../models/shopping_item.dart';
import '../models/shopping_list.dart';
import 'ai_service_provider.dart';
import 'firestore_service_provider.dart';
import 'shopping_list_provider.dart';
import 'shopping_lists_provider.dart';

part 'chat_provider.g.dart';

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

    // Update local state immediately
    final currentHistory = state.value ?? [];
    state = AsyncValue.data([...currentHistory, userMessage]);
    
    // Save user message to Firestore
    await firestoreService.saveChatMessage(listId, userMessage);

    // Prepare context
    String systemPrompt;
    final currentListId = listId;
    if (currentListId != null) {
      final items = ref.read(shoppingListItemsProvider(currentListId)).valueOrNull ?? [];
      final list = (ref.read(shoppingListsProvider).valueOrNull ?? [])
          .where((l) => l.id == currentListId)
          .firstOrNull;
      
      systemPrompt = _buildListSystemPrompt(list, items);
    } else {
      final lists = ref.read(shoppingListsProvider).valueOrNull ?? [];
      // This is a bit heavy, but for a global chat we need context.
      // In a real app we might optimize this.
      final allItems = <String, List<ShoppingItem>>{};
      for (final l in lists) {
        final items = ref.read(shoppingListItemsProvider(l.id)).valueOrNull ?? [];
        allItems[l.name] = items;
      }
      systemPrompt = _buildGlobalSystemPrompt(allItems);
    }

    try {
      final stream = aiService.getChatCompletionStream(
        state.value ?? [],
        systemPrompt: systemPrompt,
      );

      var assistantMessage = ChatMessage(role: 'assistant', content: '');
      state = AsyncValue.data([...state.value!, assistantMessage]);

      await for (final chunk in stream) {
        assistantMessage = assistantMessage.copyWith(
          content: assistantMessage.content + chunk,
        );
        
        final history = state.value!;
        state = AsyncValue.data([...history.sublist(0, history.length - 1), assistantMessage]);
      }

      await firestoreService.saveChatMessage(listId, assistantMessage);
      // coverage:ignore-start
    } on Exception catch (_) {
      // Handle error (maybe add an error message to chat)
      final errorMessage = ChatMessage(
        role: 'assistant',
        content: 'Desculpe, ocorreu um erro ao processar sua solicitação. Verifique sua conexão ou tente novamente mais tarde.',
      );
      state = AsyncValue.data([...state.value!, errorMessage]);
    }
    // coverage:ignore-end
  }

  Future<void> clearHistory() async {
    final firestoreService = ref.read(firestoreServiceProvider);
    await firestoreService.clearChatHistory(listId);
    state = const AsyncValue.data([]);
  }

  // coverage:ignore-start
  String _buildListSystemPrompt(ShoppingList? list, List<ShoppingItem> items) {
    final listName = list?.name ?? 'Lista de Compras';
    final itemsStr = items.map((i) => '- ${i.name} (${i.quantity} ${i.unit.label})${i.isPurchased ? ' [Comprado]' : ''}').join('\n');
    
    return '''Você é um assistente inteligente especializado em ajudar com listas de compras.
Você está auxiliando o usuário com a lista "$listName".

Itens atuais na lista:
$itemsStr

Seu objetivo é:
1. Sugerir itens que podem estar faltando com base nos itens atuais.
2. Dar dicas de receitas com os itens da lista.
3. Ajudar a organizar a lista por categorias.
4. Responder perguntas sobre os produtos.

Seja conciso, amigável e útil.''';
  }

  String _buildGlobalSystemPrompt(Map<String, List<ShoppingItem>> allItems) {
    var context = 'Você é um assistente inteligente especializado em gestão de compras domésticas.\n';
    context += 'O usuário possui as seguintes listas:\n\n';
    
    allItems.forEach((listName, items) {
      context += 'Lista: $listName\n';
      context += items.map((i) => '  - ${i.name}').join('\n');
      context += '\n\n';
    });

    context += '''Seu objetivo é:
1. Analisar os hábitos de compra do usuário em todas as listas.
2. Sugerir melhorias na organização das compras.
3. Ajudar a planejar compras futuras.
4. Responder perguntas gerais sobre produtos e economia doméstica.

Seja conciso, amigável e tenha uma visão holística de todas as listas do usuário.''';
    
    return context;
  }
  // coverage:ignore-end
}
