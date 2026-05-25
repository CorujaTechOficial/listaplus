import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/settings/screens/settings_screen.dart';
import 'package:shopping_list/app/settings/screens/theme_selection_screen.dart';
import 'package:shopping_list/app/settings/screens/budget_dashboard_screen.dart';
import 'package:shopping_list/app/settings/screens/backup_screen.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/services/analytics_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

void main() {
  group('SettingsScreen', () {
    setUp(() {
      TestWidgetsFlutterBinding.ensureInitialized();
      SharedPreferences.setMockInitialValues({});
    });

    testWidgets('renders sections correctly', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const SettingsScreen()));
      await tester.pumpAndSettle();

      expect(find.text('Aparência'), findsOneWidget);
      expect(find.text('Idioma'), findsOneWidget);

      final financeiroFinder = find.text('Financeiro');
      await tester.dragUntilVisible(financeiroFinder, find.byType(ListView), const Offset(0, -100));
      await tester.pumpAndSettle();
      expect(financeiroFinder, findsOneWidget);

      await tester.drag(find.byType(ListView), const Offset(0, -400));
      await tester.pumpAndSettle();

      expect(find.text('Dados'), findsOneWidget);
      expect(find.text('Sobre'), findsOneWidget);
    });

    testWidgets('can change theme mode', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const SettingsScreen()));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Escuro'));
      await tester.pumpAndSettle();

      final segmentedButton = tester.widget<SegmentedButton<ThemeMode>>(find.byType(SegmentedButton<ThemeMode>).first);
      expect(segmentedButton.selected, {ThemeMode.dark});
    });

    testWidgets('can change language', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const SettingsScreen()));
      await tester.pumpAndSettle();

      final englishFinder = find.text('English');
      await tester.dragUntilVisible(englishFinder, find.byType(ListView), const Offset(0, -100));
      await tester.pumpAndSettle();

      await tester.tap(englishFinder);
      await tester.pumpAndSettle();

      final segmentedButton = tester.widget<SegmentedButton<String?>>(find.byType(SegmentedButton<String?>).last);
      expect(segmentedButton.selected, <String?>{'en'});
    });

    testWidgets('navigates to ThemeSelectionScreen', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const SettingsScreen()));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Cor do tema'));
      await tester.pumpAndSettle();

      expect(find.byType(ThemeSelectionScreen), findsOneWidget);
    });

    testWidgets('monthly budget navigates to BudgetDashboardScreen when premium', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const SettingsScreen(), isPremium: true));
      await tester.pumpAndSettle();

      final tile = find.text('Orçamento mensal');
      await tester.dragUntilVisible(tile, find.byType(ListView), const Offset(0, -100));
      await tester.pumpAndSettle();

      await tester.tap(tile);
      await tester.pumpAndSettle();

      expect(find.byType(BudgetDashboardScreen), findsOneWidget);
    });

    testWidgets('monthly budget navigates to PaywallScreen when free', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const SettingsScreen(), isPremium: false));
      await tester.pumpAndSettle();

      final tile = find.text('Orçamento mensal');
      await tester.dragUntilVisible(tile, find.byType(ListView), const Offset(0, -100));
      await tester.pumpAndSettle();

      await tester.tap(tile);
      await tester.pumpAndSettle();

      expect(find.byType(PaywallScreen), findsOneWidget);
    });

    testWidgets('backup navigates to BackupScreen when premium', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const SettingsScreen(), isPremium: true));
      await tester.pumpAndSettle();

      final tile = find.text('Backup');
      await tester.dragUntilVisible(tile, find.byType(ListView), const Offset(0, -100));
      await tester.pumpAndSettle();

      await tester.tap(tile);
      await tester.pumpAndSettle();

      expect(find.byType(BackupScreen), findsOneWidget);
    });

    testWidgets('backup navigates to PaywallScreen when free', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const SettingsScreen(), isPremium: false));
      await tester.pumpAndSettle();

      final tile = find.text('Backup');
      await tester.dragUntilVisible(tile, find.byType(ListView), const Offset(0, -100));
      await tester.pumpAndSettle();

      await tester.tap(tile);
      await tester.pumpAndSettle();

      expect(find.byType(PaywallScreen), findsOneWidget);
    });
  });
}
