import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/lists/widgets/filter_bar.dart';
import 'package:shopping_list/app/lists/widgets/progress_info_header.dart';
import 'package:shopping_list/core/theme/app_theme.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

void main() {
  Widget buildSubject({required double budget}) {
    return MaterialApp(
      theme: AppTheme.fromColorScheme(
        ColorScheme.fromSeed(seedColor: const Color(0xFF2E7D32)),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: ProgressInfoHeader(
          purchasedCount: 3,
          totalItems: 8,
          totalEstimated: 120,
          totalPurchased: 56,
          progress: 0.375,
          budget: budget,
          overBudget: false,
          budgetProgress: 0.46,
          filter: FilterType.all,
          sortLabel: 'Manual',
          currencyCode: 'BRL',
          onFilterChanged: (_) {},
          onSortPressed: () {},
        ),
      ),
    );
  }

  testWidgets('starts collapsed with summary visible', (tester) async {
    await tester.pumpWidget(buildSubject(budget: 100));
    await tester.pumpAndSettle();

    expect(find.byType(FilterChip), findsNothing);
    expect(find.byType(ActionChip), findsNothing);
    expect(find.textContaining('3'), findsWidgets);
    expect(find.textContaining('56'), findsWidgets);
    expect(find.byType(LinearProgressIndicator), findsNWidgets(2));
  });

  testWidgets('expands to reveal filters and sort controls', (tester) async {
    await tester.pumpWidget(buildSubject(budget: 100));
    await tester.pumpAndSettle();

    expect(find.byType(FilterChip), findsNothing);
    expect(find.byType(ActionChip), findsNothing);

    await tester.tap(find.byType(ProgressInfoHeader));
    await tester.pumpAndSettle();

    expect(find.byType(FilterChip), findsNWidgets(3));
    expect(find.byIcon(Icons.sort), findsOneWidget);
  });

  testWidgets('hides budget details when budget is zero', (tester) async {
    await tester.pumpWidget(buildSubject(budget: 0));
    await tester.pumpAndSettle();

    expect(find.byType(LinearProgressIndicator), findsOneWidget);
    expect(find.byType(FilterChip), findsNothing);
  });
}
