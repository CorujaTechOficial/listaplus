import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/lists/widgets/filter_bar.dart';
import 'package:shopping_list/app/lists/widgets/progress_info_header.dart';
import 'package:shopping_list/core/theme/app_theme.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

void main() {
  const purchasedCount = 3;
  const totalItems = 8;
  const totalEstimated = 120.0;
  const totalPurchased = 56.0;
  const progress = 0.375;
  const currencyCode = 'BRL';

  Widget buildSubject({required double budget}) {
    return MaterialApp(
      theme: AppTheme.fromColorScheme(
        ColorScheme.fromSeed(seedColor: const Color(0xFF2E7D32)),
      ),
      locale: const Locale('pt', 'BR'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            final l10n = AppLocalizations.of(context)!;
            return ProgressInfoHeader(
              purchasedCount: purchasedCount,
              totalItems: totalItems,
              totalEstimated: totalEstimated,
              totalPurchased: totalPurchased,
              progress: progress,
              budget: budget,
              overBudget: false,
              budgetProgress: 0.46,
              filter: FilterType.all,
              sortLabel: l10n.sortManual,
              currencyCode: currencyCode,
              onFilterChanged: (_) {},
              onSortPressed: () {},
            );
          },
        ),
      ),
    );
  }

  AppLocalizations l10nFor(WidgetTester tester) {
    return AppLocalizations.of(
      tester.element(find.byType(ProgressInfoHeader)),
    )!;
  }

  testWidgets('starts collapsed with summary visible', (tester) async {
    await tester.pumpWidget(buildSubject(budget: 100));
    await tester.pumpAndSettle();
    final l10n = l10nFor(tester);

    expect(
      find.text(l10n.progressItemsOf(purchasedCount, totalItems)),
      findsOneWidget,
    );
    expect(
      find.text(formatCurrency(totalPurchased, currencyCode)),
      findsOneWidget,
    );
    expect(
      find.text(
        l10n.progressTotal(formatCurrency(totalEstimated, currencyCode)),
      ),
      findsOneWidget,
    );
    expect(
      find.text(l10n.progressBudget(formatCurrency(100, currencyCode))),
      findsOneWidget,
    );
    expect(find.byType(FilterChip), findsNothing);
    expect(find.byType(ActionChip), findsNothing);
    expect(find.byType(LinearProgressIndicator), findsNWidgets(2));
  });

  testWidgets('expands to reveal filters and sort controls', (tester) async {
    await tester.pumpWidget(buildSubject(budget: 100));
    await tester.pumpAndSettle();
    final l10n = l10nFor(tester);

    expect(find.byType(FilterChip), findsNothing);
    expect(find.byType(ActionChip), findsNothing);

    await tester.tap(
      find.text(l10n.progressItemsOf(purchasedCount, totalItems)),
    );
    await tester.pumpAndSettle();

    expect(find.byType(FilterChip), findsNWidgets(3));
    expect(find.byIcon(Icons.sort), findsOneWidget);
  });

  testWidgets('hides budget details when budget is zero', (tester) async {
    await tester.pumpWidget(buildSubject(budget: 0));
    await tester.pumpAndSettle();
    final l10n = l10nFor(tester);

    expect(
      find.text(l10n.progressBudget(formatCurrency(0, currencyCode))),
      findsNothing,
    );
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
    expect(find.byType(FilterChip), findsNothing);
  });
}
