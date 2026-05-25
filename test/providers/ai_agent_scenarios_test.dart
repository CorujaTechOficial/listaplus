import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/agent/tool.dart';
import 'package:shopping_list/models/chat_message.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/services/ai_service.dart';
import '../helpers/fake_storage_backend.dart';

class MockAiService implements AiService {
  MockAiService({
    required this.responses,
    required this.streamTokens,
  });

  final List<AiResponse> responses;
  final List<String> streamTokens;
  int _responseIndex = 0;

  @override
  Future<ChatMessage> getChatCompletion(List<ChatMessage> history, {String? systemPrompt}) async {
    return ChatMessage(role: 'assistant', content: 'Not implemented');
  }

  @override
  Stream<String> getChatCompletionStream(List<ChatMessage> history, {String? systemPrompt}) async* {
    for (final token in streamTokens) {
      yield token;
    }
  }

  @override
  Future<AiResponse> getChatCompletionWithTools(
    List<Map<String, dynamic>> messages, {
    String? systemPrompt,
    List<Map<String, dynamic>>? tools,
  }) async {
    if (_responseIndex < responses.length) {
      return responses[_responseIndex++];
    }
    return const AiResponse(content: 'No more responses mocked');
  }

  @override
  Stream<String> getChatCompletionStreamWithTools(
    List<Map<String, dynamic>> messages, {
    String? systemPrompt,
    List<Map<String, dynamic>>? tools,
  }) async* {
    for (final token in streamTokens) {
      yield token;
    }
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late ProviderContainer container;
  late FakeStorageBackend fakeStorage;

  setUp(() {
    fakeStorage = FakeStorageBackend();
  });

  tearDown(() {
    container.dispose();
  });

  group('AI Conversational Scenarios', () {
    test('scenario: multi-tool call in one turn', () async {
      final mockAi = MockAiService(
        responses: [
          const AiResponse(
            toolCalls: [
              AgentToolCall(id: '1', name: 'add_item', arguments: {'listId': 'l1', 'name': 'Milk', 'quantity': 1}),
              AgentToolCall(id: '2', name: 'add_item', arguments: {'listId': 'l1', 'name': 'Bread', 'quantity': 2}),
            ],
          ),
          const AiResponse(content: 'I added Milk and Bread for you.'),
        ],
        streamTokens: ['I ', 'added ', 'Milk ', 'and ', 'Bread ', 'for ', 'you.'],
      );

      container = ProviderContainer(
        overrides: [
          firestoreServiceProvider.overrideWithValue(fakeStorage),
          aiServiceProvider.overrideWithValue(mockAi),
        ],
      );

      await fakeStorage.saveLists([ShoppingList(id: 'l1', name: 'Market')]);
      
      final chatNotifier = container.read(chatSessionProvider('l1').notifier);
      await container.read(chatSessionProvider('l1').future);
      await chatNotifier.sendMessage('Add milk and 2 bread');

      final messages = container.read(chatSessionProvider('l1')).value!;
      expect(messages.length, 2);
      expect(messages.last.content, 'I added Milk and Bread for you.');
    });

    test('scenario: sequential tool calls (rounds)', () async {
      final mockAi = MockAiService(
        responses: [
          const AiResponse(
            toolCalls: [
              AgentToolCall(id: '1', name: 'get_lists', arguments: {}),
            ],
          ),
          const AiResponse(
            toolCalls: [
              AgentToolCall(id: '2', name: 'add_item', arguments: {'listId': 'l1', 'name': 'Eggs', 'quantity': 12}),
            ],
          ),
          const AiResponse(content: 'Found your lists and added Eggs to the Market list.'),
        ],
        streamTokens: ['Found ', 'your ', 'lists ', 'and ', 'added ', 'Eggs ', 'to ', 'the ', 'Market ', 'list.'],
      );

      container = ProviderContainer(
        overrides: [
          firestoreServiceProvider.overrideWithValue(fakeStorage),
          aiServiceProvider.overrideWithValue(mockAi),
        ],
      );

      await fakeStorage.saveLists([ShoppingList(id: 'l1', name: 'Market')]);

      final chatNotifier = container.read(chatSessionProvider(null).notifier);
      await container.read(chatSessionProvider(null).future);
      await chatNotifier.sendMessage('Add eggs to my market list');

      final messages = container.read(chatSessionProvider(null)).value!;
      expect(messages.length, 2);
      expect(messages.last.content, contains('added Eggs'));
    });

    test('scenario: handles "strange" content with pseudo-code', () async {
      const strangeContent = 'Sure! I will do that for you.\n```json\n{"action": "add_item", "params": {"name": "Test"}}\n```';
      
      final mockAi = MockAiService(
        responses: [
          const AiResponse(content: strangeContent),
        ],
        streamTokens: [strangeContent],
      );

      container = ProviderContainer(
        overrides: [
          firestoreServiceProvider.overrideWithValue(fakeStorage),
          aiServiceProvider.overrideWithValue(mockAi),
        ],
      );

      final chatNotifier = container.read(chatSessionProvider(null).notifier);
      await container.read(chatSessionProvider(null).future);
      await chatNotifier.sendMessage('Do something strange');

      final messages = container.read(chatSessionProvider(null)).value!;
      expect(messages.length, 2);
      expect(messages.last.content, strangeContent);
    });

    test('scenario: reasoning content leakage', () async {
      final mockAi = MockAiService(
        responses: [
          const AiResponse(
            content: 'Here are your items.',
            reasoningContent: 'The user asked for items, I should call get_items.',
          ),
        ],
        streamTokens: ['Here ', 'are ', 'your ', 'items.'],
      );

      container = ProviderContainer(
        overrides: [
          firestoreServiceProvider.overrideWithValue(fakeStorage),
          aiServiceProvider.overrideWithValue(mockAi),
        ],
      );

      final chatNotifier = container.read(chatSessionProvider(null).notifier);
      await container.read(chatSessionProvider(null).future);
      await chatNotifier.sendMessage('Show items');

      final messages = container.read(chatSessionProvider(null)).value!;
      expect(messages.length, 2);
      expect(messages.last.content, 'Here are your items.');
    });

    test('scenario: manual tool call hallucination', () async {
      const hallucinatedCode = 'Vou adicionar o leite para você.\n```json\n{"tool": "add_item", "args": {"name": "Leite"}}\n```';
      
      final mockAi = MockAiService(
        responses: [
          const AiResponse(content: hallucinatedCode),
        ],
        streamTokens: ['Vou ', 'adicionar ', 'o ', 'leite ', 'para ', 'você.\n', '```json\n', '{"tool": "add_item", "args": {"name": "Leite"}}\n', '```'],
      );

      container = ProviderContainer(
        overrides: [
          firestoreServiceProvider.overrideWithValue(fakeStorage),
          aiServiceProvider.overrideWithValue(mockAi),
        ],
      );

      final chatNotifier = container.read(chatSessionProvider(null).notifier);
      await container.read(chatSessionProvider(null).future);
      await chatNotifier.sendMessage('Adiciona leite');

      final messages = container.read(chatSessionProvider(null)).value!;
      expect(messages.length, 2);
      expect(messages.last.content, hallucinatedCode);
    });

    test('scenario: filters DSML tool-calling tags from stream', () async {
      final tokens = [
        'Aqui estão seus itens.\n',
        '<｜｜DSML｜｜tool_calls>\n',
        '<｜｜DSML｜｜invoke name="get_items">\n',
        '<｜｜DSML｜｜parameter name="listId" string="true">l1</｜｜DSML｜｜parameter>\n',
        '</｜｜DSML｜｜invoke>\n',
        '</｜｜DSML｜｜tool_calls>',
        '\nEspero que ajude!'
      ];
      
      final mockAi = MockAiService(
        responses: [
          const AiResponse(content: 'Aqui estão seus itens.\nEspero que ajude!'),
        ],
        streamTokens: tokens,
      );

      container = ProviderContainer(
        overrides: [
          firestoreServiceProvider.overrideWithValue(fakeStorage),
          aiServiceProvider.overrideWithValue(mockAi),
        ],
      );

      final chatNotifier = container.read(chatSessionProvider(null).notifier);
      await container.read(chatSessionProvider(null).future);
      await chatNotifier.sendMessage('Mostrar itens');

      final messages = container.read(chatSessionProvider(null)).value!;
      expect(messages.length, 2);
      // Content should NOT contain DSML tags
      expect(messages.last.content, isNot(contains('<｜｜DSML｜｜')));
      expect(messages.last.content, contains('Aqui estão seus itens.'));
      expect(messages.last.content, contains('Espero que ajude!'));
    });

    test('scenario: filters highly fragmented DSML tags from stream', () async {
      // Simula a tag sendo enviada caractere por caractere
      final opening = '<｜｜DSML｜｜tool_calls>'.split('');
      final closing = '</｜｜DSML｜｜tool_calls>'.split('');
      final tokens = [
        'Olá! ',
        ...opening,
        'INTERNAL_STUFF',
        ...closing,
        '\nComo posso ajudar?'
      ];
      
      final mockAi = MockAiService(
        responses: [
          const AiResponse(content: 'Olá! \nComo posso ajudar?'),
        ],
        streamTokens: tokens,
      );

      container = ProviderContainer(
        overrides: [
          firestoreServiceProvider.overrideWithValue(fakeStorage),
          aiServiceProvider.overrideWithValue(mockAi),
        ],
      );

      final chatNotifier = container.read(chatSessionProvider(null).notifier);
      await container.read(chatSessionProvider(null).future);
      await chatNotifier.sendMessage('Oi');

      final messages = container.read(chatSessionProvider(null)).value!;
      // A tag deve ser totalmente removida, mas o texto ao redor mantido
      expect(messages.last.content, isNot(contains('<')));
      expect(messages.last.content, isNot(contains('INTERNAL_STUFF')));
      expect(messages.last.content, contains('Olá!'));
      expect(messages.last.content, contains('Como posso ajudar?'));
    });
  });
}
