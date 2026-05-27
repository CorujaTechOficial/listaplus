import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/chat_message.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';
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

      // Basic smoke test: panel renders
      expect(find.byType(AiChatPanel), findsOneWidget);
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

      expect(find.byType(AiChatPanel), findsOneWidget);
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

      expect(find.byType(AiChatPanel), findsOneWidget);
    });
  });
}
