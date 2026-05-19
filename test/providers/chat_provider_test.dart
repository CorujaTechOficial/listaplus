import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/models/chat_message.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/providers/chat_provider.dart';
import 'package:shopping_list/providers/ai_service_provider.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/providers/shopping_lists_provider.dart';
import '../helpers/fake_ai_service.dart';
import '../helpers/fake_storage_backend.dart';

void main() {
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
  });
}
