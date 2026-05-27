import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/recipes/screens/recipes_screen.dart';
import 'package:shopping_list/services/storage_backend.dart';
import '../helpers/test_widgets.dart';

class MockDelayedBackend extends StorageBackend {
  final StreamController<List<Map<String, dynamic>>> _controller =
      StreamController<List<Map<String, dynamic>>>.broadcast();

  @override
  Stream<List<Map<String, dynamic>>> watchRecipes() => _controller.stream;

  void emit(List<Map<String, dynamic>> data) => _controller.add(data);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  testWidgets('RecipesScreen shows loading then data', (WidgetTester tester) async {
    final mockBackend = MockDelayedBackend();

    await tester.pumpWidget(wrapWithProviders(
      const RecipesScreen(),
      backend: mockBackend,
    ));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    mockBackend.emit([]);
    await tester.pumpAndSettle();

    expect(find.text('Nenhuma receita salva'), findsOneWidget);
  });
}
