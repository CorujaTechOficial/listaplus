import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/core/widgets/init_error_screen.dart';

void main() {
  group('InitErrorScreen', () {
    testWidgets('shows error message from Exception', (tester) async {
      await tester.pumpWidget(InitErrorScreen(Exception('Falha no auth')));
      await tester.pump();

      expect(find.text('Error: Exception: Falha no auth'), findsOneWidget);
    });

    testWidgets('shows error message from String', (tester) async {
      await tester.pumpWidget(const InitErrorScreen('Erro de configuracao'));
      await tester.pump();

      expect(find.text('Error: Erro de configuracao'), findsOneWidget);
    });

    testWidgets('renders Scaffold with Center', (tester) async {
      await tester.pumpWidget(const InitErrorScreen('teste'));
      await tester.pump();

      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.byType(Center), findsOneWidget);
    });
  });
}
