import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';
import '../helpers/test_widgets.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('AiChatPanel Voice Input Tests', () {
    testWidgets('free user is shown snackbar with Pro link on mic tap', (WidgetTester tester) async {
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

      final micButton = find.byKey(const ValueKey('chat_mic_button'));
      expect(micButton, findsOneWidget);

      await tester.tap(micButton);
      await tester.pump();

      // Should show snackbar with basic dictation info
      expect(
        find.text('Comandos de voz avançados são Pro. Ativando ditado básico...'),
        findsOneWidget,
      );

      // Verify the snackbar action label exists
      expect(find.text('Ver Pro'), findsOneWidget);
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

      // Active recording indicator should render (compact voice bar)
      expect(find.text('Escuta Ativa'), findsOneWidget);
      expect(find.byKey(const ValueKey('voice_cancel_button')), findsOneWidget);
      expect(find.byKey(const ValueKey('voice_stop_button')), findsOneWidget);

      // Tap cancel button
      await tester.tap(find.byKey(const ValueKey('voice_cancel_button')));
      await tester.pumpAndSettle();

      // Indicator should disappear
      expect(find.text('Escuta Ativa'), findsNothing);

      // Tap mic again to record
      await tester.tap(micButton);
      await tester.pumpAndSettle();
      expect(find.text('Escuta Ativa'), findsOneWidget);

      // Tap check (stop and send)
      await tester.tap(find.byKey(const ValueKey('voice_stop_button')));
      await tester.pumpAndSettle();

      // Indicator should disappear after sending
      expect(find.text('Escuta Ativa'), findsNothing);
    });
  });
}
