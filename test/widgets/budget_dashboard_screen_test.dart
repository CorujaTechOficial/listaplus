import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/models/category.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/unit.dart';
import 'package:shopping_list/screens/budget_dashboard_screen.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import '../helpers/fake_storage_backend.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';

Widget wrapWithProviders(Widget child, {required FakeStorageBackend backend}) {
  return ProviderScope(
    overrides: [
      firestoreServiceProvider.overrideWithValue(backend),
    ],
    child: MaterialApp(
      locale: const Locale('pt', 'BR'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: child,
    ),
  );
}

void main() {
  group('BudgetDashboardScreen', () {
    late FakeStorageBackend backend;

    setUp(() {
      backend = FakeStorageBackend();
    });

    testWidgets('shows message when listId is null', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const BudgetDashboardScreen(listId: null),
        backend: backend,
      ));

      expect(find.text('Selecione uma lista para ver o dashboard.'), findsOneWidget);
    });

    testWidgets('shows message when list is empty', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const BudgetDashboardScreen(listId: 'list-1'),
        backend: backend,
      ));

      await tester.pumpAndSettle();

      expect(find.text('Nenhum item na lista para analisar.'), findsOneWidget);
    });

    testWidgets('shows message when no items are purchased', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Apple',
        category: Category.fruits,
        unit: Unit.kg,
        quantity: 1,
        estimatedPrice: 10.0, // ignore: prefer_int_literals
      );
      await backend.saveItems([item]);

      await tester.pumpWidget(wrapWithProviders(
        const BudgetDashboardScreen(listId: 'list-1'),
        backend: backend,
      ));

      await tester.pumpAndSettle();

      expect(find.text('Marque itens como comprados para ver a análise.'), findsOneWidget);
    });

    testWidgets('shows total spent and categories when items are purchased', (tester) async {
      final items = [
        ShoppingItem(
          shoppingListId: 'list-1',
          name: 'Apple',
          category: Category.fruits,
          unit: Unit.kg,
          quantity: 2,
          estimatedPrice: 10.0, // ignore: prefer_int_literals
          isPurchased: true,
        ),
        ShoppingItem(
          shoppingListId: 'list-1',
          name: 'Soap',
          category: Category.cleaning,
          unit: Unit.un,
          quantity: 1,
          estimatedPrice: 5.0, // ignore: prefer_int_literals
          isPurchased: true,
        ),
      ];
      await backend.saveItems(items);

      await tester.pumpWidget(wrapWithProviders(
        const BudgetDashboardScreen(listId: 'list-1'),
        backend: backend,
      ));

      await tester.pumpAndSettle();

      expect(find.text('Gasto Total'), findsOneWidget);
      expect(find.text('R\$ 25.00'), findsOneWidget); // 2*10 + 1*5
      expect(find.text('Gastos por Categoria'), findsOneWidget);
      
      // Scroll to make sure items are visible if the screen is small
      await tester.drag(find.byType(ListView), const Offset(0, -300));
      await tester.pumpAndSettle();

      expect(find.text('Frutas'), findsOneWidget);
      expect(find.text('Limpeza'), findsOneWidget);
    });
  });
}
