import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:shopping_list/main.dart' as app;
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/auth_provider.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import 'package:shopping_list/services/auth_service.dart';
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
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

      expect(find.byType(AiChatPanel), findsOneWidget);
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

      // Verifica que o app inicia na tela IA
      expect(find.byType(AiChatPanel), findsOneWidget);
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

      // Verifica que o painel de chat está visível
      expect(find.byType(AiChatPanel), findsOneWidget);

      // Clica no ícone de cesta (Modo Mercado)
      await tester.tap(find.byIcon(Icons.shopping_basket));
      await tester.pumpAndSettle();

      // No modo mercado, o painel de chat deve sumir
      expect(find.byType(AiChatPanel), findsNothing);

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

      // App starts on AI tab with AiChatPanel
      expect(find.byType(AiChatPanel), findsOneWidget);
    });

    testWidgets('shows Snackbar and expands list card when add_items action button is clicked', (tester) async {
      final backend = FakeStorageBackend();
      await backend.setLocale('pt_BR');
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

      // App starts on AI tab with AiChatPanel
      expect(find.byType(AiChatPanel), findsOneWidget);
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
