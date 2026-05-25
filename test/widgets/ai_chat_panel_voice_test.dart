import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';
import '../helpers/test_widgets.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('AiChatPanel Voice Input Tests', () {
    testWidgets('free user is redirected to PaywallScreen on mic tap', (WidgetTester tester) async {
      final backend = FakeStorageBackend();
      final revenueCat = FakeRevenueCatService();
      revenueCat.setIsPremium(false);

      await tester.pumpWidget(
        wrapWithProviders(
          const Scaffold(
            body: AiChatPanel(listId: 'list1'),
          ),
          backend: backend,
          revenueCat: revenueCat,
        ),
      );

      await tester.pumpAndSettle();

      // Find the mic button in input footer
      final micButton = find.byKey(const ValueKey('chat_mic_button'));
      expect(micButton, findsOneWidget);

      await tester.tap(micButton);
      await tester.pumpAndSettle();

      // Should show explanation dialog
      expect(find.text('Comando de Voz com IA'), findsOneWidget);

      // Tap plans button to go to paywall
      await tester.tap(find.text('Ver Planos'));
      await tester.pumpAndSettle();

      // Should open PaywallScreen
      expect(find.byType(PaywallScreen), findsOneWidget);
    });

    testWidgets('premium user toggles active recording, cancels and sends', (WidgetTester tester) async {
      final backend = FakeStorageBackend();
      final revenueCat = FakeRevenueCatService();
      revenueCat.setIsPremium(true);

      await tester.pumpWidget(
        wrapWithProviders(
          const Scaffold(
            body: AiChatPanel(listId: 'list1'),
          ),
          backend: backend,
          revenueCat: revenueCat,
        ),
      );

      await tester.pumpAndSettle();

      final micButton = find.byKey(const ValueKey('chat_mic_button'));
      expect(micButton, findsOneWidget);

      // Tap to start recording
      await tester.tap(micButton);
      await tester.pumpAndSettle();

      // Active recording overlay should render
      expect(find.text('Escuta Ativa'), findsOneWidget);
      expect(find.byKey(const ValueKey('voice_cancel_button')), findsOneWidget);
      expect(find.byKey(const ValueKey('voice_stop_button')), findsOneWidget);

      // Tap cancel button
      await tester.tap(find.byKey(const ValueKey('voice_cancel_button')));
      await tester.pumpAndSettle();

      // Overlay should disappear
      expect(find.text('Escuta Ativa'), findsNothing);

      // Tap mic again to record and send
      await tester.tap(micButton);
      await tester.pumpAndSettle();
      expect(find.text('Escuta Ativa'), findsOneWidget);

      // Tap check (stop and send)
      await tester.tap(find.byKey(const ValueKey('voice_stop_button')));
      await tester.pumpAndSettle();

      // Overlay should disappear and status is idle
      expect(find.text('Escuta Ativa'), findsNothing);
    });
  });
}
