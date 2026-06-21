import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/meal_planner/widgets/budget_goal_sheet.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  Widget buildSubject({double? initialGoal}) {
    SharedPreferences.setMockInitialValues(
      initialGoal != null ? {'monthly_budget_goal': initialGoal} : {},
    );
    return ProviderScope(
      child: MaterialApp(
        theme: AppTheme.light(const Color(0xFF4CAF50)),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: Builder(
            builder: (ctx) => TextButton(
              onPressed: () => BudgetGoalSheet.show(ctx),
              child: const Text('open'),
            ),
          ),
        ),
      ),
    );
  }

  testWidgets('shows sheet with empty field when no goal', (tester) async {
    await tester.pumpWidget(buildSubject());
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    expect(find.byType(BudgetGoalSheet), findsOneWidget);
    final field = tester.widget<TextField>(find.byType(TextField));
    expect(field.controller?.text, isEmpty);
  });

  testWidgets('pre-populates field with current goal', (tester) async {
    await tester.pumpWidget(buildSubject(initialGoal: 800.0));
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    expect(find.text('800.00'), findsOneWidget);
  });

  testWidgets('shows Remove goal button only when goal exists', (tester) async {
    await tester.pumpWidget(buildSubject(initialGoal: 500.0));
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(BudgetGoalSheet)),
    )!;
    expect(find.text(l10n.mealPlannerBudgetRemoveGoal), findsOneWidget);
  });

  testWidgets('does not show Remove goal button when no goal', (tester) async {
    await tester.pumpWidget(buildSubject());
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(BudgetGoalSheet)),
    )!;
    expect(find.text(l10n.mealPlannerBudgetRemoveGoal), findsNothing);
  });

  testWidgets('Save button does nothing when field is empty', (tester) async {
    await tester.pumpWidget(buildSubject());
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(BudgetGoalSheet)),
    )!;
    await tester.tap(find.text(l10n.save));
    await tester.pumpAndSettle();

    // Sheet still visible (no valid value)
    expect(find.byType(BudgetGoalSheet), findsOneWidget);
  });
}
