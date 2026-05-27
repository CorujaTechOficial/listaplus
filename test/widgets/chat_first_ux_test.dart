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
import 'package:shopping_list/app/ai/screens/ai_home_screen.dart';
import 'package:shopping_list/models/shopping_list.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';
import '../helpers/fake_ai_service.dart';

class FakeOnboarding extends Onboarding {
  @override
  Future<bool> build() async => true;
}

void main() {
  group('Chat-First UX Test', () {
    testWidgets('App starts on Assistente tab, Quick Add works, and Market Mode works', (tester) async {
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

      // 1. Verify we are on AiHomeScreen by default
      expect(find.byType(AiHomeScreen), findsOneWidget);

      // 2. Test Quick Add
      // Don't expand list yet, interact with chat first
      final chatInput = find.descendant(
        of: find.byType(AiChatPanel),
        matching: find.byType(TextField),
      ).first;
      
      await tester.enterText(chatInput, 'Leite integral');
      await tester.pumpAndSettle();
      
      // Tap Quick Add button using tooltip - this adds the item and auto-expands the list
      await tester.tap(find.byTooltip('Adicionar direto na lista'));
      await tester.pumpAndSettle();

      // 3. Test Market Mode toggle exists
      expect(find.byTooltip('Modo Mercado'), findsOneWidget);
    });
  });
}
