import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/providers/recipes_provider.dart';
import 'package:shopping_list/screens/recipes_screen.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/models/recipe.dart';
import '../helpers/test_widgets.dart';

class MockDelayedBackend extends StorageBackend {
  final StreamController<List<Map<String, dynamic>>> _controller = StreamController<List<Map<String, dynamic>>>.broadcast();

  @override
  Stream<List<Map<String, dynamic>>> watchRecipes() => _controller.stream;

  void emit(List<Map<String, dynamic>> data) => _controller.add(data);
  void emitError(Object e) => _controller.addError(e);

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

  testWidgets('RecipesScreen shows error on timeout', (WidgetTester tester) async {
    final mockBackend = MockDelayedBackend();
    
    await tester.pumpWidget(wrapWithProviders(
      const RecipesScreen(),
      backend: mockBackend,
    ));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // RecipesProvider has a 15s timeout
    await tester.pump(const Duration(seconds: 16));
    
    // Pump several times to ensure all microtasks and Riverpod states are processed
    for (int i = 0; i < 5; i++) {
        await tester.pump(const Duration(milliseconds: 100));
    }

    expect(find.text('Erro ao carregar receitas'), findsOneWidget);
    expect(find.textContaining('O servidor demorou muito para responder'), findsOneWidget);
  });
}
