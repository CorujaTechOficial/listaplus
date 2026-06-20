import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/lists/widgets/kipi_quick_bar.dart';
import 'package:shopping_list/app/lists/widgets/selection_bottom_bar.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

void main() {
  Widget buildApp({required Widget child}) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(body: const SizedBox.shrink(), bottomNavigationBar: child),
    );
  }

  testWidgets('selection bar uses the shared bottom action shell', (
    tester,
  ) async {
    await tester.pumpWidget(
      buildApp(
        child: SelectionBottomBar(
          onCancel: () {},
          onDelete: () {},
          onBuy: () {},
        ),
      ),
    );

    expect(
      find.byKey(const ValueKey('list_bottom_action_shell')),
      findsOneWidget,
    );
    expect(find.byType(BottomAppBar), findsNothing);
    expect(find.byType(TextButton), findsNWidgets(2));
    expect(find.byType(FilledButton), findsOneWidget);
  });

  testWidgets('quick bar exposes leading and trailing shell slots', (
    tester,
  ) async {
    await tester.pumpWidget(
      buildApp(
        child: const KipiQuickBar(
          listId: 'list-1',
          leading: SizedBox(
            key: ValueKey('leading_slot'),
            width: 16,
            height: 16,
          ),
          trailing: SizedBox(
            key: ValueKey('trailing_slot'),
            width: 16,
            height: 16,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(
      find.byKey(const ValueKey('list_bottom_action_shell')),
      findsOneWidget,
    );
    expect(find.byKey(const ValueKey('leading_slot')), findsOneWidget);
    expect(find.byKey(const ValueKey('trailing_slot')), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
  });
}
