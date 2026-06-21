import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_create_list.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

void main() {
  Widget buildSubject(Future<void> Function(String) onCreate) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(body: OnboardingSlideCreateList(onCreate: onCreate)),
    );
  }

  testWidgets('requires a name and creates the first list', (tester) async {
    String? createdName;

    await tester.pumpWidget(
      buildSubject((name) async {
        createdName = name;
      }),
    );
    await tester.pumpAndSettle();

    final createButton = find.widgetWithText(FilledButton, 'Create');
    expect(tester.widget<FilledButton>(createButton).onPressed, isNull);

    await tester.enterText(find.byType(TextField), '  Weekly groceries  ');
    await tester.pump();
    expect(tester.widget<FilledButton>(createButton).onPressed, isNotNull);

    await tester.tap(createButton);
    await tester.pump();

    expect(createdName, 'Weekly groceries');
  });
}
