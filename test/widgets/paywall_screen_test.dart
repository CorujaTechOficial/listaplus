import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/screens/paywall_screen.dart';
import '../helpers/test_widgets.dart';

void main() {
  testWidgets('displays app bar title', (tester) async {
    await tester.pumpWidget(wrapWithProviders(const PaywallScreen()));
    await tester.pump();
    expect(find.text('Lista Plus Premium'), findsOneWidget);
  });

  testWidgets('navigates to paywall screen', (tester) async {
    await tester.pumpWidget(wrapWithProviders(
      Builder(builder: (context) => Navigator(
        onGenerateRoute: (_) => MaterialPageRoute(
          builder: (_) => Scaffold(
            body: ElevatedButton(
              onPressed: () =>
                Navigator.push(context, MaterialPageRoute(builder: (_) => const PaywallScreen())),
              child: const Text('Abrir Premium'),
            ),
          ),
        ),
      )),
    ));
    await tester.pump();
    await tester.tap(find.text('Abrir Premium'));
    for (int i = 0; i < 10; i++) {
      await tester.pump(const Duration(milliseconds: 50));
    }
    expect(find.text('Lista Plus Premium'), findsOneWidget);
  });
}
