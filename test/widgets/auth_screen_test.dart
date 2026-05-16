import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/screens/auth_screen.dart';
import '../helpers/test_widgets.dart';

void main() {
  group('AuthScreen', () {
    testWidgets('displays login prompt and google button', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const AuthScreen()));
      await tester.pumpAndSettle();

      expect(find.text('Lista Plus'), findsOneWidget);
      expect(find.text('Entrar com Google'), findsOneWidget);
      expect(find.text('Continuar como visitante'), findsOneWidget);
      expect(find.byIcon(Icons.g_mobiledata), findsOneWidget);
      expect(find.byIcon(Icons.shopping_cart), findsOneWidget);
    });

    testWidgets('continuar como visitante pops the screen', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        Builder(builder: (context) => Navigator(
          onGenerateRoute: (_) => MaterialPageRoute(
            builder: (_) => Scaffold(
              body: ElevatedButton(
                onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const AuthScreen())),
                child: const Text('Abrir Login'),
              ),
            ),
          ),
        )),
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Abrir Login'));
      await tester.pumpAndSettle();

      expect(find.text('Entrar com Google'), findsOneWidget);

      await tester.tap(find.text('Continuar como visitante'));
      await tester.pumpAndSettle();

      expect(find.text('Entrar com Google'), findsNothing);
    });
  });
}
