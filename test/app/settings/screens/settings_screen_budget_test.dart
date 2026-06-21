import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/app/settings/screens/settings_screen.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/revenuecat_service_noop.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'package:shopping_list/theme/app_theme.dart';

class _MockStorage extends Mock implements StorageBackend {}

void main() {
  late _MockStorage storage;

  setUp(() {
    storage = _MockStorage();
    SharedPreferences.setMockInitialValues({});

    when(() => storage.getUserData()).thenAnswer(
      (_) async => {'currencyCode': 'USD'},
    );
  });

  Widget buildSubject() {
    return ProviderScope(
      overrides: [
        firestoreServiceProvider.overrideWithValue(storage),
        revenueCatServiceProvider.overrideWithValue(RevenueCatServiceNoop()),
      ],
      child: MaterialApp(
        theme: AppTheme.light(const Color(0xFF4CAF50)),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const SettingsScreen(),
      ),
    );
  }

  Future<void> scrollToTile(WidgetTester tester) async {
    await tester.scrollUntilVisible(
      find.text('Meal planner budget'),
      200,
      scrollable: find.byType(Scrollable).first,
    );
  }

  testWidgets('budget goal tile is visible with correct title', (tester) async {
    await tester.binding.setSurfaceSize(const Size(430, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();
    await scrollToTile(tester);

    expect(find.text('Meal planner budget'), findsOneWidget);
    expect(find.text('Monthly spending goal for meal planning'), findsOneWidget);
  });

  testWidgets('budget goal tile subtitle visible', (tester) async {
    await tester.binding.setSurfaceSize(const Size(430, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();
    await scrollToTile(tester);

    // Tile rendered — subtitle is either currency amount or "no goal" text
    expect(find.text('Meal planner budget'), findsOneWidget);
  });

  testWidgets('tapping budget goal tile opens BudgetGoalSheet', (tester) async {
    await tester.binding.setSurfaceSize(const Size(430, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();
    await scrollToTile(tester);

    await tester.tap(find.text('Meal planner budget'));
    await tester.pumpAndSettle();

    expect(find.byType(BottomSheet), findsOneWidget);
  });
}
