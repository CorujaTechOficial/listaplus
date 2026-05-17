import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/widgets/init_error_screen.dart';

void main() {
  group('InitErrorScreen', () {
    testWidgets('shows error message from Exception', (tester) async {
      await tester.pumpWidget(InitErrorScreen(Exception('Falha no auth')));

      expect(find.text('Erro ao carregar: Exception: Falha no auth'), findsOneWidget);
    });

    testWidgets('shows error message from String', (tester) async {
      await tester.pumpWidget(const InitErrorScreen('Erro de configuracao'));

      expect(find.text('Erro ao carregar: Erro de configuracao'), findsOneWidget);
    });

    testWidgets('renders Scaffold with Center', (tester) async {
      await tester.pumpWidget(const InitErrorScreen('teste'));

      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.byType(Center), findsOneWidget);
    });
  });
}
