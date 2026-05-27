import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';
import 'package:shopping_list/domain/entities/ai_usage.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';
import '../helpers/test_widgets.dart';

void main() {
  testWidgets('Energy Bar and Teaser Effect Test', (tester) async {
    final backend = FakeStorageBackend();
    final revenueCat = FakeRevenueCatService();
    revenueCat.setIsPremium(false);

    final usage = AiUsage(dailyCount: 7, totalCount: 7, lastReset: DateTime.now());
    await backend.saveAiUsage(usage.toJson());

    await tester.pumpWidget(
      wrapWithProviders(
        const Scaffold(
          body: AiChatPanel(listId: 'test-list'),
        ),
        backend: backend,
        revenueCat: revenueCat,
      ),
    );

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
    expect(tester.widget<TextField>(input).enabled, isNot(equals(false)));

    await tester.enterText(input, 'Como economizar?');
    await tester.pump();
    await tester.tap(find.byKey(const ValueKey('chat_send_button')));
    await tester.pump();
    await tester.pump(const Duration(seconds: 3));

    // Should show user message
    expect(find.text('Como economizar?'), findsOneWidget);

    // Should show teaser message with the button
    expect(find.textContaining('Fake response'), findsOneWidget);
    expect(find.text('Desbloquear Resposta Completa'), findsOneWidget);

    // Verify ShaderMask exists (for the fade/blur effect)
    expect(find.byType(ShaderMask), findsAtLeastNWidgets(1));
  });
}
