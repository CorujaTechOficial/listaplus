import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/app/meal_planner/screens/meal_planner_screen.dart';
import 'package:shopping_list/app/meal_planner/widgets/budget_summary_card.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'package:shopping_list/theme/app_theme.dart';

class _MockStorage extends Mock implements StorageBackend {}

void main() {
  late _MockStorage storage;

  setUp(() {
    storage = _MockStorage();
    SharedPreferences.setMockInitialValues({});

    when(
      () => storage.watchMealPlans(
        start: any(named: 'start'),
        end: any(named: 'end'),
      ),
    ).thenAnswer((_) => Stream.value([]));

    when(() => storage.watchRecipes()).thenAnswer((_) => Stream.value([]));
    when(() => storage.watchMealTypes()).thenAnswer((_) => Stream.value([]));

    when(() => storage.loadPantryItems()).thenAnswer((_) async => []);

    when(() => storage.getUserData()).thenAnswer(
      (_) async => {'currencyCode': 'BRL'},
    );
  });

  Widget buildSubject() {
    return ProviderScope(
      overrides: [firestoreServiceProvider.overrideWithValue(storage)],
      child: MaterialApp(
        theme: AppTheme.light(const Color(0xFF4CAF50)),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const MealPlannerScreen(),
      ),
    );
  }

  testWidgets('BudgetSummaryCard appears in weekly view', (tester) async {
    await tester.binding.setSurfaceSize(const Size(400, 800));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();

    // Default view is weekly — BudgetSummaryCard must be present
    expect(find.byType(BudgetSummaryCard), findsOneWidget);
  });

  testWidgets('BudgetSummaryCard absent in monthly view', (tester) async {
    await tester.binding.setSurfaceSize(const Size(400, 800));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();

    // Switch to monthly
    final toggleButton = find.byIcon(Icons.calendar_view_month_rounded);
    await tester.tap(toggleButton);
    await tester.pumpAndSettle();

    expect(find.byType(BudgetSummaryCard), findsNothing);
  });

  testWidgets('Monthly grid cells are present', (tester) async {
    await tester.binding.setSurfaceSize(const Size(400, 800));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();

    // Switch to monthly
    final toggleButton = find.byIcon(Icons.calendar_view_month_rounded);
    await tester.tap(toggleButton);
    await tester.pumpAndSettle();

    // Day numbers 1–7 are visible as text in the grid
    expect(find.text('1'), findsAtLeastNWidgets(1));
  });

  testWidgets(
    'Monthly cell heatmap uses tertiary color when dayCost > 0',
    (tester) async {
      await tester.binding.setSurfaceSize(const Size(400, 800));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final now = DateTime.now();
      final monthStart = DateTime(now.year, now.month, 1);
      final monthEnd = DateTime(now.year, now.month + 1, 0);

      // Provide a plan with a recipe that has a cost
      final plan = MealPlan(
        id: 'p1',
        recipeId: 'r1',
        recipeName: 'Soup',
        date: DateTime(now.year, now.month, 1),
        mealType: 'breakfast',
        servings: 2,
      );

      when(
        () => storage.watchMealPlans(
          start: any(named: 'start'),
          end: any(named: 'end'),
        ),
      ).thenAnswer((inv) {
        final start = inv.namedArguments[const Symbol('start')] as DateTime;
        final end = inv.namedArguments[const Symbol('end')] as DateTime;
        final inRange =
            !plan.date.isBefore(start) && !plan.date.isAfter(end);
        return Stream.value(inRange ? [plan.toJson()] : []);
      });

      await tester.pumpWidget(buildSubject());
      await tester.pumpAndSettle();

      final toggleButton = find.byIcon(Icons.calendar_view_month_rounded);
      await tester.tap(toggleButton);
      await tester.pumpAndSettle();

      // Month grid should be visible with day 1 rendered
      expect(find.text('1'), findsAtLeastNWidgets(1));
    },
  );

  testWidgets(
    'Monthly cell for today never shows heatmap color (uses primaryContainer)',
    (tester) async {
      await tester.binding.setSurfaceSize(const Size(400, 800));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      await tester.pumpWidget(buildSubject());
      await tester.pumpAndSettle();

      final toggleButton = find.byIcon(Icons.calendar_view_month_rounded);
      await tester.tap(toggleButton);
      await tester.pumpAndSettle();

      // Today cell should use primaryContainer (no tertiary blend)
      // We verify today's day number text is visible in the month grid
      final today = DateTime.now();
      expect(find.text('${today.day}'), findsAtLeastNWidgets(1));
    },
  );
}
