import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/screens/backup_screen.dart';
import 'package:shopping_list/widgets/premium_gate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/providers/revenuecat_service_provider.dart';
import 'package:shopping_list/providers/analytics_service_provider.dart';
import 'package:shopping_list/services/analytics_service.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import '../helpers/fake_revenuecat_service.dart';
import '../helpers/fake_storage_backend.dart';

Widget wrapWithProviders(Widget child, {bool isPremium = false}) {
  final revenueCat = FakeRevenueCatService();
  revenueCat.setIsPremium(isPremium);
  final backend = FakeStorageBackend();

  return ProviderScope(
    overrides: [
      revenueCatServiceProvider.overrideWithValue(revenueCat),
      analyticsServiceProvider.overrideWithValue(AnalyticsService()),
      firestoreServiceProvider.overrideWithValue(backend),
    ],
    child: MaterialApp(
      locale: const Locale('pt', 'BR'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: child,
    ),
  );
}
// ...
void main() {
  group('BackupScreen', () {
    testWidgets('shows PremiumGate when not premium', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const BackupScreen(), isPremium: false));
      await tester.pumpAndSettle();

      expect(find.byType(PremiumGate), findsOneWidget);
    });

    testWidgets('shows Export and Import tiles when premium', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const BackupScreen(), isPremium: true));
      await tester.pumpAndSettle();

      expect(find.byType(PremiumGate), findsNothing);
      expect(find.text('Exportar dados'), findsOneWidget);
      expect(find.text('Importar dados'), findsOneWidget);
    });

    testWidgets('tapping Import opens dialog', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const BackupScreen(), isPremium: true));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Importar dados'));
      await tester.pumpAndSettle();

      expect(find.text('Importar JSON'), findsOneWidget);
      expect(find.byType(TextField), findsOneWidget);
      
      // Close dialog
      await tester.tap(find.text('Cancelar'));
      await tester.pumpAndSettle();
      expect(find.text('Importar JSON'), findsNothing);
    });
  });
}
