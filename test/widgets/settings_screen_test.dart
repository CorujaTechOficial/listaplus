import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/screens/settings_screen.dart';
import 'package:shopping_list/screens/theme_selection_screen.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/providers/revenuecat_service_provider.dart';
import 'package:shopping_list/providers/analytics_service_provider.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
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
      expect(find.text('Financeiro'), findsOneWidget);
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

      await tester.tap(find.text('English'));
      await tester.pumpAndSettle();

      final segmentedButton = tester.widget<SegmentedButton<String>>(find.byType(SegmentedButton<String>).last);
      expect(segmentedButton.selected, {'en'});
    });

    testWidgets('navigates to ThemeSelectionScreen', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const SettingsScreen()));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Cor do tema'));
      await tester.pumpAndSettle();

      expect(find.byType(ThemeSelectionScreen), findsOneWidget);
    });
  });
}
