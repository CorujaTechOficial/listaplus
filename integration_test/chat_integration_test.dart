import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integration_test/integration_test.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:shopping_list/main.dart' as app;
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/providers/revenuecat_service_provider.dart';
import 'package:shopping_list/providers/auth_service_provider.dart';
import 'package:shopping_list/providers/ai_service_provider.dart';
import 'package:shopping_list/services/auth_service.dart';
import 'package:shopping_list/widgets/ai_chat_panel.dart';
import 'package:shopping_list/providers/onboarding_provider.dart';
import 'package:shopping_list/screens/ai_home_screen.dart';
import '../test/helpers/fake_storage_backend.dart';
import '../test/helpers/fake_revenuecat_service.dart';
import '../test/helpers/fake_ai_service.dart';

import 'package:shopping_list/models/shopping_list.dart';

class FakeOnboarding extends Onboarding {
  @override
  Future<bool> build() async => true;
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Chat Integration Test', () {
    testWidgets('send message, see response, search and suggested replies', (tester) async {
      final backend = FakeStorageBackend();
      final list = ShoppingList(id: 'test-list', name: 'Lista Teste');
      await backend.saveLists([list]);
      await backend.setCurrentListId(list.id);

      final revenueCat = FakeRevenueCatService();
      revenueCat.setIsPremium(true);
      final aiService = FakeAiService();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            firestoreServiceProvider.overrideWithValue(backend),
            revenueCatServiceProvider.overrideWithValue(revenueCat),
            authServiceProvider.overrideWithValue(AuthService(auth: MockFirebaseAuth())),
            aiServiceProvider.overrideWithValue(aiService),
            onboardingProvider.overrideWith(() => FakeOnboarding()),
          ],
          child: const app.MyApp(),
        ),
      );

      await tester.pumpAndSettle();

      // Navigate to Assistente tab
      await tester.tap(find.text('Assistente'));
      await tester.pumpAndSettle();

      expect(find.byType(AiHomeScreen), findsOneWidget);
      expect(find.byType(AiChatPanel), findsOneWidget);

      // 1. Send Message
      final input = find.byType(TextField).last;
      await tester.enterText(input, 'Olá assistente');
      await tester.tap(find.byIcon(Icons.send));
      await tester.pump(); // Start sending
      
      // Should show user message immediately
      expect(find.text('Olá assistente'), findsOneWidget);
      
      // Wait for AI response (fake streamed response)
      // In FakeAiService, it yields 3 chunks. We need to pump multiple times or pumpAndSettle.
      await tester.pumpAndSettle(const Duration(seconds: 1));
      
      // Check response (the fake response is "Fake streamed response")
      expect(find.textContaining('Fake streamed response'), findsOneWidget);

      // 2. Search
      await tester.tap(find.byIcon(Icons.search));
      await tester.pumpAndSettle();
      
      final searchInput = find.widgetWithText(TextField, 'Pesquisar na conversa...');
      await tester.enterText(searchInput, 'Olá');
      await tester.pumpAndSettle();
      
      expect(find.descendant(of: find.byType(AiChatPanel), matching: find.text('Olá assistente')), findsOneWidget);
      expect(find.descendant(of: find.byType(AiChatPanel), matching: find.textContaining('Fake streamed response')), findsNothing);
      
      await tester.enterText(searchInput, 'NotFound');
      await tester.pumpAndSettle();
      
      expect(find.text('Nenhuma mensagem encontrada'), findsOneWidget);
      
      // Close search
      await tester.tap(find.byIcon(Icons.close));
      await tester.pumpAndSettle();

      // 3. Suggested Replies
      // Our logic generates: 'Dicas de economia', 'Criar nova lista', 'Obrigado!' for general context
      expect(find.text('Dicas de economia'), findsOneWidget);
      expect(find.text('Criar nova lista'), findsOneWidget);
      
      // Tap a suggested reply
      await tester.tap(find.text('Dicas de economia'));
      await tester.pumpAndSettle();
      
      // Input should have the text (it gets cleared after sending, but let's see if it starts sending)
      // Since it's a tap-to-send, it should clear the text and show the message
      expect(find.descendant(of: find.byType(AiChatPanel), matching: find.text('Dicas de economia')), findsOneWidget);
    });
  });
}
