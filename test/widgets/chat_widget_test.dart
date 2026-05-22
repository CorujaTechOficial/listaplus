import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
import 'package:shopping_list/models/shopping_list.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';
import '../helpers/fake_ai_service.dart';

class FakeOnboarding extends Onboarding {
  @override
  Future<bool> build() async => true;
}

void main() {
  group('Chat Widget Integration Test', () {
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
      
      // Wait for AI response
      await tester.pumpAndSettle(const Duration(seconds: 1));
      
      // Check response
      expect(find.textContaining('Fake streamed response'), findsOneWidget);

      // 2. Search
      // Scroll to top to ensure _HeaderRow is visible
      final listFinder = find.byType(ListView).last;
      await tester.drag(listFinder, const Offset(0, 500));
      await tester.pumpAndSettle();

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
      expect(find.text('O que mais posso fazer?'), findsOneWidget);
      expect(find.text('Sugira uma receita'), findsOneWidget);
      
      // Tap a suggested reply
      await tester.tap(find.text('O que mais posso fazer?').first);
      await tester.pumpAndSettle();
      
      // Should show the new message (might find both bubble and new chip)
      expect(find.descendant(of: find.byType(AiChatPanel), matching: find.text('O que mais posso fazer?')), findsAtLeastNWidgets(1));
    });

    testWidgets('quick add item button adds item directly to list', (tester) async {
      final backend = FakeStorageBackend();
      final list = ShoppingList(id: 'test-list', name: 'Lista Teste');
      await backend.saveLists([list]);
      await backend.setCurrentListId(list.id);

      final revenueCat = FakeRevenueCatService();
      revenueCat.setIsPremium(true);

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            firestoreServiceProvider.overrideWithValue(backend),
            revenueCatServiceProvider.overrideWithValue(revenueCat),
            authServiceProvider.overrideWithValue(AuthService(auth: MockFirebaseAuth())),
            aiServiceProvider.overrideWithValue(FakeAiService()),
            onboardingProvider.overrideWith(() => FakeOnboarding()),
          ],
          child: const app.MyApp(),
        ),
      );

      await tester.pumpAndSettle();

      // Navega para Assistente
      await tester.tap(find.text('Assistente'));
      await tester.pumpAndSettle();

      // Digita algo mas usa o botão "+" em vez de Enviar
      final input = find.byType(TextField).last;
      await tester.enterText(input, 'Pão de Queijo');
      await tester.tap(find.byIcon(Icons.add_circle));
      await tester.pumpAndSettle();

      // O texto deve sumir do input
      expect(find.text('Pão de Queijo'), findsNothing);

      // Expandir a lista para ver o item
      await tester.tap(find.text('Lista de Compras'));
      await tester.pumpAndSettle();

      // O item deve aparecer na lista (CompactListCard)
      expect(find.text('Pão de Queijo'), findsOneWidget);
    });

    testWidgets('market mode toggle changes UI', (tester) async {
      final backend = FakeStorageBackend();
      final list = ShoppingList(id: 'test-list', name: 'Lista Teste');
      await backend.saveLists([list]);
      await backend.setCurrentListId(list.id);

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            firestoreServiceProvider.overrideWithValue(backend),
            revenueCatServiceProvider.overrideWithValue(FakeRevenueCatService()),
            authServiceProvider.overrideWithValue(AuthService(auth: MockFirebaseAuth())),
            aiServiceProvider.overrideWithValue(FakeAiService()),
            onboardingProvider.overrideWith(() => FakeOnboarding()),
          ],
          child: const app.MyApp(),
        ),
      );

      await tester.pumpAndSettle();
      await tester.tap(find.text('Assistente'));
      await tester.pumpAndSettle();

      // Verifica que o painel de chat está visível (não está no modo mercado)
      expect(find.byType(AiChatPanel), findsOneWidget);

      // Clica no ícone de cesta (Modo Mercado)
      await tester.tap(find.byIcon(Icons.shopping_basket));
      await tester.pumpAndSettle();

      // No modo mercado, o painel de chat deve sumir
      expect(find.byType(AiChatPanel), findsNothing);
      expect(find.text('Modo Mercado'), findsOneWidget);

      // Clica no ícone de chat (Sair do Modo Mercado)
      await tester.tap(find.byIcon(Icons.chat_bubble_outline));
      await tester.pumpAndSettle();

      // Volta ao normal
      expect(find.byType(AiChatPanel), findsOneWidget);
    });

    testWidgets('user avatar não crasha com displayName vazio', (tester) async {
      final backend = FakeStorageBackend();
      final list = ShoppingList(id: 'test-list', name: 'Lista Teste');
      await backend.saveLists([list]);
      await backend.setCurrentListId(list.id);

      final revenueCat = FakeRevenueCatService();
      revenueCat.setIsPremium(true);
      final aiService = FakeAiService();

      final mockUser = MockUser(
        uid: 'test-uid',
        displayName: '',
        isAnonymous: false,
      );

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            firestoreServiceProvider.overrideWithValue(backend),
            revenueCatServiceProvider.overrideWithValue(revenueCat),
            authServiceProvider.overrideWithValue(AuthService(auth: MockFirebaseAuth(mockUser: mockUser, signedIn: true))),
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

      expect(find.byType(AiChatPanel), findsOneWidget);

      // Envia mensagem para renderizar bolha do usuário com avatar
      final input = find.byType(TextField).last;
      await tester.enterText(input, 'Teste');
      await tester.tap(find.byIcon(Icons.send));
      await tester.pumpAndSettle(const Duration(seconds: 1));

      // Verifica que não crashou (a mensagem do usuário aparece)
      expect(find.text('Teste'), findsOneWidget);
    });
  });

  group('Lógica de avatar - displayName', () {
    test('displayName vazio não causa RangeError na expressão do avatar', () {
      const name = '';
      final char = name.isNotEmpty ? name[0] : 'U';
      expect(char.toUpperCase(), 'U');
    });

    test('displayName null usa fallback U', () {
      const String? name = null;
      final char = name != null && name.isNotEmpty ? name[0] : 'U';
      expect(char.toUpperCase(), 'U');
    });

    test('displayName normal retorna primeira letra maiúscula', () {
      const name = 'joão';
      final char = name.isNotEmpty ? name[0] : 'U';
      expect(char.toUpperCase(), 'J');
    });
  });
}
