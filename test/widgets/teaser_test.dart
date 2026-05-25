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
import 'package:shopping_list/models/ai_usage.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';
import '../helpers/fake_ai_service.dart';

class FakeOnboarding extends Onboarding {
  @override
  Future<bool> build() async => true;
}

void main() {
  testWidgets('Energy Bar and Teaser Effect Test', (tester) async {
    final backend = FakeStorageBackend();
    final list = ShoppingList(id: 'test-list', name: 'Lista Teste');
    await backend.saveLists([list]);
    await backend.setCurrentListId(list.id);

    final revenueCat = FakeRevenueCatService();
    revenueCat.setIsPremium(false); // Not premium to see energy bar

    // Set usage to 7/10 (3 remaining) to trigger low energy colors
    final usage = AiUsage(dailyCount: 7, totalCount: 7, lastReset: DateTime.now());
    await backend.saveAiUsage(usage.toJson());

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

    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    // Navigate to Assistente
    await tester.tap(find.text('Assistente'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    // 1. Verify Energy Bar
    expect(find.text('Energia da IA'), findsOneWidget);
    expect(find.byType(LinearProgressIndicator), findsOneWidget);

    // 2. Exhaust Credits and trigger Teaser
    final exhaustedUsage = AiUsage(dailyCount: 10, totalCount: 50, lastReset: DateTime.now());
    await backend.saveAiUsage(exhaustedUsage.toJson());
    
    // Invalidate provider to refresh state
    final container = ProviderScope.containerOf(tester.element(find.byType(AiChatPanel)));
    container.invalidate(aiUsageStateProvider);
    
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    // Input should be enabled even without credits
    final input = find.byType(TextField).last;
    expect(tester.widget<TextField>(input).enabled, isTrue);

    await tester.enterText(input, 'Como economizar?');
    await tester.tap(find.byIcon(Icons.send));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));

    // Should show user message
    expect(find.text('Como economizar?'), findsOneWidget);

    // Should show teaser message with the button
    expect(find.textContaining('Para economizar nesta compra'), findsOneWidget);
    expect(find.text('Desbloquear Resposta Completa'), findsOneWidget);
    
    // Verify ShaderMask exists (for the fade/blur effect)
    expect(find.byType(ShaderMask), findsAtLeastNWidgets(1));
  });
}
