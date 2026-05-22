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
      
      // Tap Quick Add button using tooltip
      await tester.tap(find.byTooltip('Adicionar direto na lista'));
      await tester.pumpAndSettle();
      
      // Expand list to verify items
      final cardHeader = find.byIcon(Icons.shopping_cart);
      await tester.tap(cardHeader);
      await tester.pumpAndSettle();

      // Should clear input and add item (check compact list)
      expect(find.text('Leite integral'), findsOneWidget);

      // 3. Test Interactive Compact List (Toggle Purchased)
      // Checkbox is inside ShoppingItemTile
      await tester.tap(find.text('Leite integral'));
      await tester.pumpAndSettle();
      
      // Should show checked checkbox
      expect(
        tester.widget<Checkbox>(find.byType(Checkbox).first).value,
        isTrue,
      );

      // 4. Test Market Mode Toggle
      // Collapse list first to click the action button in AppBar
      await tester.tap(cardHeader);
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.shopping_basket));
      await tester.pumpAndSettle();
      
      expect(find.text('Modo Mercado'), findsOneWidget);
      expect(find.byType(AiChatPanel), findsNothing);
      expect(find.byType(LinearProgressIndicator), findsOneWidget);
      
      // Toggle back
      await tester.tap(find.byIcon(Icons.chat_bubble_outline));
      await tester.pumpAndSettle();
      
      expect(find.text('Modo Mercado'), findsNothing);
    });
  });
}
