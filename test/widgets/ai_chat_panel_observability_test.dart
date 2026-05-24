import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/models/chat_message.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/widgets/ai_chat_panel.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/test_widgets.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Agentic Observability UI Tests', () {
    testWidgets('renders different step statuses correctly', (WidgetTester tester) async {
      final backend = FakeStorageBackend();
      final list = ShoppingList(id: 'list1', name: 'Market');
      await backend.saveLists([list]);
      await backend.setCurrentListId('list1');

      final steps = [
        AgentStep(
          id: 'step-pending',
          description: 'Ação Pendente',
          status: AgentStepStatus.pending,
        ),
        AgentStep(
          id: 'step-running',
          description: 'Ação Executando',
          status: AgentStepStatus.running,
        ),
        AgentStep(
          id: 'step-success',
          description: 'Ação Sucesso',
          status: AgentStepStatus.success,
          resultData: const {'itemId': 'item-1', 'listId': 'list1'},
        ),
        AgentStep(
          id: 'step-error',
          description: 'Ação Erro',
          status: AgentStepStatus.error,
        ),
        AgentStep(
          id: 'step-undone',
          description: 'Ação Desfeita',
          status: AgentStepStatus.undone,
        ),
      ];

      final message = ChatMessage(
        id: 'msg-assistant-1',
        role: 'assistant',
        content: 'Aqui está o progresso das ações.',
        executionSteps: steps,
      );

      await backend.saveChatMessage('list1', message);

      // Render the AiChatPanel
      await tester.pumpWidget(
        wrapWithProviders(
          const Scaffold(
            body: AiChatPanel(listId: 'list1'),
          ),
          backend: backend,
        ),
      );

      await tester.pump();
      await tester.pump(const Duration(milliseconds: 100));

      // Verify descriptions are rendered
      expect(find.text('Ação Pendente'), findsOneWidget);
      expect(find.text('Ação Executando'), findsOneWidget);
      expect(find.text('Ação Sucesso'), findsOneWidget);
      expect(find.text('Ação Erro'), findsOneWidget);
      expect(find.text('Ação Desfeita'), findsOneWidget);

      // Verify progress indicator is rendered for running step
      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      // Verify success and error icons are present
      expect(find.byIcon(Icons.check_circle_outline), findsOneWidget);
      expect(find.byIcon(Icons.error_outline), findsOneWidget);
      expect(find.byIcon(Icons.remove_circle_outline), findsOneWidget);

      // Verify "Desfazer" undo button is visible since there is a success step with resultData
      expect(find.text('Desfazer'), findsOneWidget);
    });

    testWidgets('expanding and collapsing step details accordion works', (WidgetTester tester) async {
      final backend = FakeStorageBackend();
      final list = ShoppingList(id: 'list1', name: 'Market');
      await backend.saveLists([list]);
      await backend.setCurrentListId('list1');

      final step = AgentStep(
        id: 'step-success',
        description: 'Adicionar Item',
        status: AgentStepStatus.success,
        resultData: const {
          'itemId': 'item-1',
          'listId': 'list1',
          'previousState': {
            'id': 'item-1',
            'shoppingListId': 'list1',
            'name': 'Maçã',
            'quantity': 5,
            'category': 'fruits',
            'unit': 'un',
            'estimatedPrice': 1.5,
          }
        },
      );

      final message = ChatMessage(
        id: 'msg-assistant-2',
        role: 'assistant',
        content: 'Adicionei maçã.',
        executionSteps: [step],
      );

      await backend.saveChatMessage('list1', message);

      await tester.pumpWidget(
        wrapWithProviders(
          const Scaffold(
            body: AiChatPanel(listId: 'list1'),
          ),
          backend: backend,
        ),
      );

      await tester.pumpAndSettle();

      // Accordion should be collapsed initially, so "Estado anterior" shouldn't be found
      expect(find.textContaining('Estado anterior:'), findsNothing);

      // Tap on the step item to expand
      await tester.tap(find.text('Adicionar Item'));
      await tester.pumpAndSettle();

      // Now it should show details
      expect(find.textContaining('Estado anterior: 5 un [Frutas] (R\$ 1.50)'), findsOneWidget);

      // Tap on it again to collapse
      await tester.tap(find.text('Adicionar Item'));
      await tester.pumpAndSettle();

      // Should be collapsed again
      expect(find.textContaining('Estado anterior:'), findsNothing);
    });

    testWidgets('clicking undo button calls undoMessageActions', (WidgetTester tester) async {
      final backend = FakeStorageBackend();
      final list = ShoppingList(id: 'list1', name: 'Market');
      await backend.saveLists([list]);
      await backend.setCurrentListId('list1');

      final step = AgentStep(
        id: 'step-success',
        description: 'Adicionar Item',
        status: AgentStepStatus.success,
        resultData: const {'itemId': 'item-1', 'listId': 'list1'},
      );

      final message = ChatMessage(
        id: 'msg-assistant-3',
        role: 'assistant',
        content: 'Adicionei.',
        executionSteps: [step],
      );

      await backend.saveChatMessage('list1', message);

      await tester.pumpWidget(
        wrapWithProviders(
          const Scaffold(
            body: AiChatPanel(listId: 'list1'),
          ),
          backend: backend,
        ),
      );

      await tester.pumpAndSettle();

      // Find undo button and tap it
      final undoButton = find.text('Desfazer');
      expect(undoButton, findsOneWidget);

      await tester.tap(undoButton);
      await tester.pumpAndSettle();

      // The step status should update to undone
      expect(find.byIcon(Icons.remove_circle_outline), findsOneWidget);
    });

    testWidgets('renders retry button when error occurs and calls retryMessage', (WidgetTester tester) async {
      final backend = FakeStorageBackend();
      final list = ShoppingList(id: 'list1', name: 'Market');
      await backend.saveLists([list]);
      await backend.setCurrentListId('list1');

      final userMessage = ChatMessage(
        id: 'msg-user-1',
        role: 'user',
        content: 'Qual a receita?',
      );
      final errorMessage = ChatMessage(
        id: 'msg-assistant-err',
        role: 'assistant',
        content: 'Erro de conexao',
        isError: true,
      );

      await backend.saveChatMessage('list1', userMessage);
      await backend.saveChatMessage('list1', errorMessage);

      await tester.pumpWidget(
        wrapWithProviders(
          const Scaffold(
            body: AiChatPanel(listId: 'list1'),
          ),
          backend: backend,
        ),
      );

      await tester.pumpAndSettle();

      // The error message should be displayed
      expect(find.text('Erro de conexao'), findsOneWidget);

      // The retry button with text "Tentar novamente" should be displayed inside the bubble
      final retryButton = find.text('Tentar novamente');
      expect(retryButton, findsOneWidget);

      // Tap on the retry button
      await tester.tap(retryButton);
      await tester.pumpAndSettle();

      // The old error message and user message should be cleared from the DB history
      final messages = await backend.loadChatMessages('list1');
      expect(messages.any((m) => m.id == 'msg-assistant-err'), isFalse);
      expect(messages.any((m) => m.id == 'msg-user-1'), isFalse);
    });
  });
}
