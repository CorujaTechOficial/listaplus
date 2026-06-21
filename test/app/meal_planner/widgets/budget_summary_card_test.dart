import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';
import 'package:shopping_list/app/meal_planner/widgets/budget_goal_sheet.dart';
import 'package:shopping_list/app/meal_planner/widgets/budget_summary_card.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _MockStorage extends Mock implements StorageBackend {}

void main() {
  late _MockStorage storage;
  final now = DateTime(2026, 6, 20);
  final weekStart = DateTime(2026, 6, 16);
  final weekEnd = DateTime(2026, 6, 22);
  final monthStart = DateTime(2026, 6, 1);
  final monthEnd = DateTime(2026, 6, 30);

  setUp(() {
    storage = _MockStorage();
    SharedPreferences.setMockInitialValues({});

    when(() => storage.watchMealPlans(
          start: any(named: 'start'),
          end: any(named: 'end'),
        )).thenAnswer((_) => Stream.value([]));
    when(() => storage.watchRecipes()).thenAnswer((_) => Stream.value([]));
    when(() => storage.loadPantryItems()).thenAnswer((_) async => []);
    when(() => storage.getUserData())
        .thenAnswer((_) async => {'currencyCode': 'BRL'});
  });

  Widget buildSubject() {
    return ProviderScope(
      overrides: [
        firestoreServiceProvider.overrideWithValue(storage),
      ],
      child: MaterialApp(
        theme: AppTheme.light(const Color(0xFF4CAF50)),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: BudgetSummaryCard(
            weekStart: weekStart,
            weekEnd: weekEnd,
            monthStart: monthStart,
            monthEnd: monthEnd,
            focusedDay: now,
          ),
        ),
      ),
    );
  }

  testWidgets('shows week and month costs when no goal', (tester) async {
    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(BudgetSummaryCard)),
    )!;
    // Zero costs show
    expect(find.textContaining('R\$'), findsWidgets);
    // Only the meal progress bar visible (no budget goal set)
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
    // Set budget CTA visible
    expect(find.text(l10n.setBudgetButton), findsOneWidget);
  });

  testWidgets('shows progress bar when goal is set', (tester) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('monthly_budget_goal', 500.0);

    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();

    // Tap to expand the card to reveal the progress bars
    await tester.tap(find.byType(InkWell));
    await tester.pumpAndSettle();

    // Both budget and meal progress bars visible
    expect(find.byType(LinearProgressIndicator), findsNWidgets(2));
    expect(find.text(l10n(tester).setBudgetButton), findsNothing);
  });

  testWidgets('tapping Set budget opens BudgetGoalSheet', (tester) async {
    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(BudgetSummaryCard)),
    )!;
    await tester.tap(find.text(l10n.setBudgetButton));
    await tester.pumpAndSettle();

    expect(find.byType(BudgetGoalSheet), findsOneWidget);
  });
}

AppLocalizations l10n(WidgetTester tester) =>
    AppLocalizations.of(tester.element(find.byType(BudgetSummaryCard)))!;
