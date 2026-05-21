import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/screens/onboarding_screen.dart';
import 'package:shopping_list/providers/analytics_service_provider.dart';
import 'package:shopping_list/services/analytics_service.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

Widget wrapOnboarding() {
  return ProviderScope(
    overrides: [
      analyticsServiceProvider.overrideWithValue(AnalyticsService()),
    ],
    child: const MaterialApp(
      locale: Locale('pt', 'BR'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: OnboardingScreen(),
    ),
  );
}

void main() {
  group('OnboardingScreen', () {
    testWidgets('shows first slide content', (tester) async {
      await tester.pumpWidget(wrapOnboarding());

      expect(find.text('Organize todas as suas compras'), findsOneWidget);
    });

    testWidgets('shows skip button', (tester) async {
      await tester.pumpWidget(wrapOnboarding());

      expect(find.text('Pular'), findsOneWidget);
    });

    testWidgets('shows CTA button on all slides', (tester) async {
      await tester.pumpWidget(wrapOnboarding());

      expect(find.text('Começar 7 dias grátis'), findsOneWidget);
    });

    testWidgets('shows disclaimer text', (tester) async {
      await tester.pumpWidget(wrapOnboarding());

      expect(find.text('Cancele quando quiser. Sem compromisso.'), findsOneWidget);
    });

    testWidgets('can swipe to second slide', (tester) async {
      await tester.pumpWidget(wrapOnboarding());

      expect(find.text('Organize todas as suas compras'), findsOneWidget);

      await tester.drag(find.byType(PageView), const Offset(-500, 0));
      await tester.pumpAndSettle();

      expect(find.text('Inteligência Artificial a seu favor'), findsOneWidget);
    });

    testWidgets('can swipe to third slide', (tester) async {
      await tester.pumpWidget(wrapOnboarding());

      await tester.drag(find.byType(PageView), const Offset(-500, 0));
      await tester.pumpAndSettle();
      await tester.drag(find.byType(PageView), const Offset(-500, 0));
      await tester.pumpAndSettle();

      expect(find.text('Compartilhe com quem você ama'), findsOneWidget);
    });

    testWidgets('can swipe to CTA slide', (tester) async {
      await tester.pumpWidget(wrapOnboarding());

      await tester.drag(find.byType(PageView), const Offset(-500, 0));
      await tester.pumpAndSettle();
      await tester.drag(find.byType(PageView), const Offset(-500, 0));
      await tester.pumpAndSettle();
      await tester.drag(find.byType(PageView), const Offset(-500, 0));
      await tester.pumpAndSettle();

      expect(find.text('7 dias GRÁTIS — Oferta exclusiva'), findsOneWidget);
    });
  });
}
