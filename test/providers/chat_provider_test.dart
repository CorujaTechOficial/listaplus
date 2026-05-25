import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/models/chat_message.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/settings/providers/settings_providers.dart';
import 'package:shopping_list/models/shopping_item.dart';
import '../helpers/fake_ai_service.dart';
import '../helpers/fake_storage_backend.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late ProviderContainer container;
  late FakeStorageBackend fakeStorage;
  late FakeAiService fakeAi;

  setUp(() {
    fakeStorage = FakeStorageBackend();
    fakeAi = FakeAiService();
    container = ProviderContainer(
      overrides: [
        firestoreServiceProvider.overrideWithValue(fakeStorage),
        aiServiceProvider.overrideWithValue(fakeAi),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  group('ChatSessionProvider', () {
    test('initial state is empty or loaded from firestore', () async {
      final msg = ChatMessage(role: 'user', content: 'Hello');
      await fakeStorage.saveChatMessage('list1', msg);

      final state = await container.read(chatSessionProvider('list1').future);
      expect(state.length, 1);
      expect(state.first.content, 'Hello');
    });

    test('sendMessage updates state and saves to firestore', () async {
      container.listen(chatSessionProvider('list1'), (_, __) {});
      await container.read(chatSessionProvider('list1').future);

      // Mock some items for context
      final list = ShoppingList(id: 'list1', name: 'Market');
      await fakeStorage.saveLists([list]);
      
      await container.read(chatSessionProvider('list1').notifier).sendMessage('What should I buy?');

      final state = container.read(chatSessionProvider('list1')).value;
      expect(state, isNotNull);
      expect(state!.length, 2, reason: 'State should contain user and assistant messages');
      expect(state[0].role, 'user');
      expect(state[1].role, 'assistant');

      final saved = await fakeStorage.loadChatMessages('list1');
      expect(saved.length, 2);
    });

    test('clearHistory removes all messages', () async {
      container.listen(chatSessionProvider('list1'), (_, __) {});
      await container.read(chatSessionProvider('list1').future);
      await container.read(chatSessionProvider('list1').notifier).sendMessage('Hi');
      await container.read(chatSessionProvider('list1').notifier).clearHistory();

      final state = container.read(chatSessionProvider('list1')).value!;
      expect(state, isEmpty);

      final saved = await fakeStorage.loadChatMessages('list1');
      expect(saved, isEmpty);
    });

    test('global chat uses global system prompt', () async {
      container.listen(chatSessionProvider(null), (_, __) {});
      await container.read(chatSessionProvider(null).future);

      final list = ShoppingList(id: 'list1', name: 'Market');
      await fakeStorage.saveLists([list]);
      await container.read(shoppingListsProvider.future);
      
      await container.read(chatSessionProvider(null).notifier).sendMessage('General help');

      final state = container.read(chatSessionProvider(null)).value;
      expect(state, isNotNull);
      expect(state!.length, 2);
    });

    group('undoMessageActions', () {
      test('does nothing when message has no execution steps', () async {
        final msg = ChatMessage(id: 'msg1', role: 'assistant', content: 'Did nothing');
        await fakeStorage.saveChatMessage('list1', msg);
        container.listen(chatSessionProvider('list1'), (_, __) {});
        await container.read(chatSessionProvider('list1').future);

        await container.read(chatSessionProvider('list1').notifier).undoMessageActions('msg1');

        final state = container.read(chatSessionProvider('list1')).value!;
        expect(state.first.executionSteps, isNull);
      });

      test('rolls back add_item step and marks it undone', () async {
        final list = ShoppingList(id: 'list1', name: 'Market');
        await fakeStorage.saveLists([list]);
        
        final item = ShoppingItem(
          id: 'item-1',
          shoppingListId: 'list1',
          name: 'Apples',
          quantity: 2,
          categoryId: 'fruits',
        );
        await fakeStorage.saveItem(item);

        final step = AgentStep(
          id: 'step-1',
          description: 'Adicionar Apples',
          status: AgentStepStatus.success,
          resultData: const {'itemId': 'item-1', 'listId': 'list1'},
        );
        final msg = ChatMessage(
          id: 'msg-1',
          role: 'assistant',
          content: 'Adicionei Apples.',
          executionSteps: [step],
        );

        await fakeStorage.saveChatMessage('list1', msg);
        container.listen(chatSessionProvider('list1'), (_, __) {});
        await container.read(chatSessionProvider('list1').future);

        final itemsBefore = await fakeStorage.loadItems('list1');
        expect(itemsBefore.any((i) => i.id == 'item-1'), isTrue);

        await container.read(chatSessionProvider('list1').notifier).undoMessageActions('msg-1');

        final itemsAfter = await fakeStorage.loadItems('list1');
        expect(itemsAfter.any((i) => i.id == 'item-1'), isFalse);

        final state = container.read(chatSessionProvider('list1')).value!;
        expect(state.first.executionSteps!.first.status, AgentStepStatus.undone);
      });

      test('rolls back remove_item step (previousState) and marks it undone', () async {
        final list = ShoppingList(id: 'list1', name: 'Market');
        await fakeStorage.saveLists([list]);

        final step = AgentStep(
          id: 'step-2',
          description: 'Remover Bananas',
          status: AgentStepStatus.success,
          resultData: const {
            'previousState': {
              'id': 'item-2',
              'shoppingListId': 'list1',
              'name': 'Bananas',
              'quantity': 3,
              'category': 'fruits',
            },
            'listId': 'list1',
          },
        );
        final msg = ChatMessage(
          id: 'msg-2',
          role: 'assistant',
          content: 'Removi Bananas.',
          executionSteps: [step],
        );

        await fakeStorage.saveChatMessage('list1', msg);
        container.listen(chatSessionProvider('list1'), (_, __) {});
        await container.read(chatSessionProvider('list1').future);

        final itemsBefore = await fakeStorage.loadItems('list1');
        expect(itemsBefore.any((i) => i.id == 'item-2'), isFalse);

        await container.read(chatSessionProvider('list1').notifier).undoMessageActions('msg-2');

        final itemsAfter = await fakeStorage.loadItems('list1');
        expect(itemsAfter.any((i) => i.id == 'item-2'), isTrue);
        expect(itemsAfter.firstWhere((i) => i.id == 'item-2').quantity, 3);

        final state = container.read(chatSessionProvider('list1')).value!;
        expect(state.first.executionSteps!.first.status, AgentStepStatus.undone);
      });

      test('rolls back batch action (previousStates) and marks it undone', () async {
        final list = ShoppingList(id: 'list1', name: 'Market');
        await fakeStorage.saveLists([list]);

        final step = AgentStep(
          id: 'step-3',
          description: 'Marcar comprados',
          status: AgentStepStatus.success,
          resultData: const {
            'previousStates': [
              {
                'id': 'item-3',
                'shoppingListId': 'list1',
                'name': 'Milk',
                'quantity': 1,
                'category': 'others',
                'isPurchased': false,
              },
              {
                'id': 'item-4',
                'shoppingListId': 'list1',
                'name': 'Bread',
                'quantity': 2,
                'category': 'bakery',
                'isPurchased': false,
              }
            ],
          },
        );
        final msg = ChatMessage(
          id: 'msg-3',
          role: 'assistant',
          content: 'Marquei comprados.',
          executionSteps: [step],
        );

        await fakeStorage.saveChatMessage('list1', msg);
        container.listen(chatSessionProvider('list1'), (_, __) {});
        await container.read(chatSessionProvider('list1').future);

        await container.read(chatSessionProvider('list1').notifier).undoMessageActions('msg-3');

        final itemsAfter = await fakeStorage.loadItems('list1');
        expect(itemsAfter.any((i) => i.id == 'item-3'), isTrue);
        expect(itemsAfter.any((i) => i.id == 'item-4'), isTrue);

        final state = container.read(chatSessionProvider('list1')).value!;
        expect(state.first.executionSteps!.first.status, AgentStepStatus.undone);
      });

      test('rolls back budget update (previousBudget) and marks it undone', () async {
        final list = ShoppingList(id: 'list1', name: 'Market');
        await fakeStorage.saveLists([list]);

        // Listen to monthlyBudgetProvider to keep it active
        container.listen(monthlyBudgetProvider, (_, __) {});
        await container.read(monthlyBudgetProvider.future);

        final step = AgentStep(
          id: 'step-4',
          description: 'Definir orcamento',
          status: AgentStepStatus.success,
          resultData: const {'previousBudget': 150.5},
        );
        final msg = ChatMessage(
          id: 'msg-4',
          role: 'assistant',
          content: 'Defini orcamento.',
          executionSteps: [step],
        );

        await fakeStorage.saveChatMessage('list1', msg);
        container.listen(chatSessionProvider('list1'), (_, __) {});
        await container.read(chatSessionProvider('list1').future);

        await container.read(chatSessionProvider('list1').notifier).undoMessageActions('msg-4');

        final budget = await container.read(monthlyBudgetProvider.future);
        expect(budget, 150.5);

        final userData = await fakeStorage.getUserData();
        expect(userData?['monthlyBudget'], 150.5);

        final state = container.read(chatSessionProvider('list1')).value!;
        expect(state.first.executionSteps!.first.status, AgentStepStatus.undone);
      });
    });
  });
}
