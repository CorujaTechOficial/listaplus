import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/agent/tool.dart';
import 'package:shopping_list/providers/chat_provider.dart';
import 'package:shopping_list/providers/shopping_list_provider.dart';
import 'package:shopping_list/providers/shopping_lists_provider.dart';
import 'package:shopping_list/providers/pantry_items_provider.dart';
import 'package:shopping_list/providers/monthly_budget_provider.dart';
import 'package:shopping_list/providers/ai_service_provider.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/providers/premium_provider.dart';
import 'package:shopping_list/services/ai_service.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_ai_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late ProviderContainer container;
  late FakeStorageBackend fakeStorage;
  late FakeAiService fakeAi;

  setUp(() async {
    fakeStorage = FakeStorageBackend();
    fakeAi = FakeAiService();
    container = ProviderContainer(
      overrides: [
        firestoreServiceProvider.overrideWithValue(fakeStorage),
        aiServiceProvider.overrideWithValue(fakeAi),
        premiumProvider.overrideWith(() => FakePremium()),
      ],
    );
    // Wait for initial build of providers
    await container.read(premiumProvider.future);
  });

  tearDown(() {
    container.dispose();
  });

  group('AI Comprehensive Tool Scenarios', () {
    test('Scenario: Full List Lifecycle (Create, Rename, Archive, Delete)', () async {
      // 1. Create List
      fakeAi.setNextResponse(const AiResponse(
        toolCalls: [
          AgentToolCall(
            id: 'call_1',
            name: 'create_list',
            arguments: {'name': 'Festinha', 'budget': 200.0},
          ),
        ],
      ));
      
      final chatNotifier = container.read(chatSessionProvider(null).notifier);
      await chatNotifier.sendMessage('Crie uma lista chamada Festinha com orçamento de 200 reais');
      
      final lists = await container.read(shoppingListsProvider.future);
      expect(lists.any((l) => l.name == 'Festinha' && l.budget == 200.0), true);
      final listId = lists.firstWhere((l) => l.name == 'Festinha').id;

      // 2. Rename List
      fakeAi.setNextResponse(AiResponse(
        toolCalls: [
          AgentToolCall(
            id: 'call_2',
            name: 'rename_list',
            arguments: {'listId': listId, 'name': 'Churrasco'},
          ),
        ],
      ));
      await chatNotifier.sendMessage('Mude o nome da lista para Churrasco');
      expect((await container.read(shoppingListsProvider.future)).any((l) => l.name == 'Churrasco'), true);

      // 3. Archive List
      fakeAi.setNextResponse(AiResponse(
        toolCalls: [
          AgentToolCall(
            id: 'call_3',
            name: 'archive_list',
            arguments: {'listId': listId},
          ),
        ],
      ));
      await chatNotifier.sendMessage('Arquive essa lista');
      final archivedList = (await container.read(shoppingListsProvider.future)).firstWhere((l) => l.id == listId);
      expect(archivedList.isArchived, true);

      // 4. Delete List
      fakeAi.setNextResponse(AiResponse(
        toolCalls: [
          AgentToolCall(
            id: 'call_4',
            name: 'delete_list',
            arguments: {'listId': listId},
          ),
        ],
      ));
      await chatNotifier.sendMessage('Exclua a lista Churrasco permanentemente');
      expect((await container.read(shoppingListsProvider.future)).any((l) => l.id == listId), false);
    });

    test('Scenario: Advanced Item Operations (Batch, Reorder, Clear)', () async {
      // Setup: Create a list with items
      final list = await container.read(shoppingListsProvider.notifier).createList('Mercado');
      final listId = list.id;
      final itemNotifier = container.read(shoppingListItemsProvider(listId).notifier);
      await itemNotifier.addItem(listId: listId, name: 'Arroz', quantity: 1, categoryId: 'others');
      await itemNotifier.addItem(listId: listId, name: 'Feijão', quantity: 1, categoryId: 'others');
      await itemNotifier.addItem(listId: listId, name: 'Carne', quantity: 1, categoryId: 'others');
      
      final initialItems = await container.read(shoppingListItemsProvider(listId).future);
      final arrozId = initialItems[0].id;
      final feijaoId = initialItems[1].id;

      // 1. Batch toggle purchased
      fakeAi.setNextResponse(AiResponse(
        toolCalls: [
          AgentToolCall(
            id: 'call_batch',
            name: 'toggle_purchased_batch',
            arguments: {'itemIds': '$arrozId, $feijaoId', 'isPurchased': true},
          ),
        ],
      ));
      
      final chatNotifier = container.read(chatSessionProvider(listId).notifier);
      await chatNotifier.sendMessage('Marque arroz e feijão como comprados');
      
      var items = await container.read(shoppingListItemsProvider(listId).future);
      expect(items.firstWhere((i) => i.name == 'Arroz').isPurchased, true);
      expect(items.firstWhere((i) => i.name == 'Feijão').isPurchased, true);

      // 2. Clear Purchased
      fakeAi.setNextResponse(AiResponse(
        toolCalls: [
          AgentToolCall(
            id: 'call_clear',
            name: 'clear_purchased',
            arguments: {'listId': listId},
          ),
        ],
      ));
      await chatNotifier.sendMessage('Limpe os itens comprados');
      items = await container.read(shoppingListItemsProvider(listId).future);
      expect(items.length, 1);
      expect(items[0].name, 'Carne');

      // 3. Reorder Items (Add one more first)
      await itemNotifier.addItem(listId: listId, name: 'Ovos', quantity: 12, categoryId: 'others');
      fakeAi.setNextResponse(AiResponse(
        toolCalls: [
          AgentToolCall(
            id: 'call_reorder',
            name: 'reorder_items',
            arguments: {'listId': listId, 'oldIndex': 1, 'newIndex': 0},
          ),
        ],
      ));
      await chatNotifier.sendMessage('Coloque os ovos no topo da lista');
      items = await container.read(shoppingListItemsProvider(listId).future);
      expect(items[0].name, 'Ovos');
    });

    test('Scenario: Pantry Management (Add, Consume, Restock)', () async {
      final chatNotifier = container.read(chatSessionProvider(null).notifier);

      // 1. Add Pantry Item
      fakeAi.setNextResponse(const AiResponse(
        toolCalls: [
          AgentToolCall(
            id: 'p1',
            name: 'add_pantry_item',
            arguments: {
              'name': 'Leite',
              'idealQuantity': 4,
              'currentQuantity': 2,
              'unit': 'L'
            },
          ),
        ],
      ));
      await chatNotifier.sendMessage('Adicione 4 litros de leite como estoque ideal na despensa. Atualmente tenho 2.');
      
      var pantry = await container.read(pantryItemsProvider.future);
      expect(pantry.any((i) => i.name == 'Leite' && i.currentQuantity == 2), true);
      final leiteId = pantry.firstWhere((i) => i.name == 'Leite').id;

      // 2. Consume Item
      fakeAi.setNextResponse(AiResponse(
        toolCalls: [
          AgentToolCall(
            id: 'p2',
            name: 'consume_pantry_item',
            arguments: {'itemId': leiteId, 'quantity': 1},
          ),
        ],
      ));
      await chatNotifier.sendMessage('Usei 1 litro de leite');
      pantry = await container.read(pantryItemsProvider.future);
      expect(pantry.firstWhere((i) => i.id == leiteId).currentQuantity, 1);

      // 3. Restock
      fakeAi.setNextResponse(AiResponse(
        toolCalls: [
          AgentToolCall(
            id: 'p3',
            name: 'restock_pantry_item',
            arguments: {'itemId': leiteId, 'amount': 3},
          ),
        ],
      ));
      await chatNotifier.sendMessage('Comprei mais 3 litros de leite para a despensa');
      pantry = await container.read(pantryItemsProvider.future);
      expect(pantry.firstWhere((i) => i.id == leiteId).currentQuantity, 4);
    });

    test('Scenario: Settings & Configurations (Budget, Theme)', () async {
      final chatNotifier = container.read(chatSessionProvider(null).notifier);

      // 1. Set Monthly Budget
      fakeAi.setNextResponse(const AiResponse(
        toolCalls: [
          AgentToolCall(
            id: 'b1',
            name: 'set_budget',
            arguments: {'budget': 1500.0},
          ),
        ],
      ));
      await chatNotifier.sendMessage('Meu orçamento mensal é de 1500 reais');
      
      // Force reload budget from storage
      container.invalidate(monthlyBudgetProvider);
      final budget = await container.read(monthlyBudgetProvider.future);
      expect(budget, 1500.0);
    });

    test('Scenario: Multi-Tool Complex Request', () async {
      // User asks to create a list AND add multiple items in one go
      fakeAi.setNextResponse(const AiResponse(
        toolCalls: [
          AgentToolCall(
            id: 'c1',
            name: 'create_list',
            arguments: {'name': 'Frutas da Semana'},
          ),
        ],
      ));
      
      final chatNotifier = container.read(chatSessionProvider(null).notifier);
      
      // We need to wait and see what list ID was generated
      await chatNotifier.sendMessage('Crie uma lista "Frutas da Semana"');
      
      final lists = await container.read(shoppingListsProvider.future);
      final list = lists.firstWhere((l) => l.name == 'Frutas da Semana');
      final listId = list.id;

      // Now add items to that specific list
      fakeAi.setNextResponse(AiResponse(
        toolCalls: [
          AgentToolCall(
            id: 'c2',
            name: 'add_item',
            arguments: {'listId': listId, 'name': 'Banana', 'quantity': 6},
          ),
          AgentToolCall(
            id: 'c3',
            name: 'add_item',
            arguments: {'listId': listId, 'name': 'Maçã', 'quantity': 4},
          ),
        ],
      ));

      await chatNotifier.sendMessage('Coloque 6 bananas e 4 maçãs nela');
      
      final items = await container.read(shoppingListItemsProvider(listId).future);
      expect(items.any((i) => i.name == 'Banana' && i.quantity == 6), true);
      expect(items.any((i) => i.name == 'Maçã' && i.quantity == 4), true);
    });

    test('Scenario: Theme and Budget Tools', () async {
       fakeAi.setNextResponse(const AiResponse(
        toolCalls: [
          AgentToolCall(
            id: 't1',
            name: 'set_theme',
            arguments: {'mode': 'light'},
          ),
           AgentToolCall(
            id: 'b1',
            name: 'set_budget',
            arguments: {'budget': 1200.0},
          ),
        ],
      ));
       final chatNotifier = container.read(chatSessionProvider(null).notifier);
       await chatNotifier.sendMessage('Coloque tema claro e orçamento de 1200');
       
       container.invalidate(monthlyBudgetProvider);
       final budget = await container.read(monthlyBudgetProvider.future);
       expect(budget, 1200.0);
    });
  });
}

class FakePremium extends Premium {
  @override
  Stream<bool> build() => Stream.value(true);
}
