import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart' show Override;
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/auth_service.dart';
import 'package:shopping_list/providers/auth_service_provider.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/providers/analytics_service_provider.dart';
import 'package:shopping_list/providers/revenuecat_service_provider.dart';
import 'package:shopping_list/providers/ai_service_provider.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/services/analytics_service.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'package:shopping_list/screens/pantry_screen.dart';
import 'package:shopping_list/models/pantry_item.dart';
import 'package:shopping_list/models/unit.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';
import '../helpers/fake_ai_service.dart';

Widget wrapWithProviders(Widget child, {StorageBackend? backend, RevenueCatService? revenueCat}) {
  final overrides = <Override>[
    authServiceProvider.overrideWithValue(AuthService(auth: MockFirebaseAuth())),
    revenueCatServiceProvider.overrideWithValue(revenueCat ?? FakeRevenueCatService()),
    analyticsServiceProvider.overrideWithValue(AnalyticsService()),
    aiServiceProvider.overrideWithValue(FakeAiService()),
  ];
  if (backend != null) {
    overrides.add(firestoreServiceProvider.overrideWithValue(backend));
  }
  return ProviderScope(
    overrides: overrides,
    child: MaterialApp(
      locale: const Locale('pt', 'BR'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: child,
    ),
  );
}

void main() {
  group('PantryScreen', () {
    late FakeStorageBackend backend;

    setUp(() {
      backend = FakeStorageBackend();
    });

    Future<void> pumpScreen(WidgetTester tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const PantryScreen(),
        backend: backend,
      ));
      await tester.pumpAndSettle();
    }

    testWidgets('shows empty state when no items', (tester) async {
      await pumpScreen(tester);
      expect(find.text('Dispensa vazia'), findsOneWidget);
      expect(find.text('Adicione produtos que você quer manter em casa'), findsOneWidget);
      expect(find.byType(FloatingActionButton), findsOneWidget);
    });

    testWidgets('FAB opens AddPantryItemDialog', (tester) async {
      await pumpScreen(tester);
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      expect(find.text('Adicionar à Dispensa'), findsOneWidget);
      expect(find.text('Cancelar'), findsOneWidget);
      expect(find.text('Adicionar'), findsOneWidget);
    });

    testWidgets('shows pantry items with name and quantity', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 2,
        categoryId: 'others',
        unit: Unit.kg,
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      expect(find.text('Arroz'), findsOneWidget);
      expect(find.text('2 / 5 kg'), findsOneWidget);
      expect(find.text('Faltam 3'), findsOneWidget);
    });

    testWidgets('shows deficit info banner when items need restock', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Feijão',
        idealQuantity: 3,
        currentQuantity: 1,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      expect(find.textContaining('precisam ser comprados'), findsOneWidget);
    });

    testWidgets('shows progress bar for tracked items', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Item',
        idealQuantity: 10,
        currentQuantity: 5,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      expect(find.byType(LinearProgressIndicator), findsOneWidget);
    });

    testWidgets('hides progress bar for non-tracked items', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Item',
        idealQuantity: 10,
        currentQuantity: 5,
        categoryId: 'others',
        trackStock: false,
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      expect(find.byType(LinearProgressIndicator), findsNothing);
      expect(find.text('Sem rastreamento'), findsOneWidget);
    });

    testWidgets('shows Consumi button', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 3,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      expect(find.text('Consumi'), findsOneWidget);
    });

    testWidgets('increment and decrement buttons are present', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 3,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      expect(find.byIcon(Icons.add), findsAtLeastNWidgets(1));
      expect(find.byIcon(Icons.remove), findsAtLeastNWidgets(1));
    });

    testWidgets('tapping Consumi decrements quantity', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 3,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      await tester.tap(find.text('Consumi'));
      await tester.pumpAndSettle();

      final items = await backend.loadPantryItems();
      expect(items.first.currentQuantity, 2);
    });

    testWidgets('PopupMenu shows edit, delete options', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 3,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      expect(find.text('Editar'), findsOneWidget);
      expect(find.text('Marcar como comprado'), findsOneWidget);
      expect(find.text('Remover'), findsOneWidget);
    });

    testWidgets('delete from popup removes item', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 3,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Remover'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Remover').last);
      await tester.pumpAndSettle();

      final items = await backend.loadPantryItems();
      expect(items, isEmpty);
    });

    testWidgets('cancel delete does not remove item', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 3,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Remover'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Cancelar').last);
      await tester.pumpAndSettle();

      final items = await backend.loadPantryItems();
      expect(items.length, 1);
    });

    testWidgets('edit popup item opens edit dialog', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 3,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Editar'));
      await tester.pumpAndSettle();

      expect(find.text('Editar Arroz'), findsOneWidget);
      expect(find.text('Salvar'), findsOneWidget);
    });

    testWidgets('edit dialog saves changes', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 3,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Editar'));
      await tester.pumpAndSettle();

      final idealField = find.byType(TextField).first;
      await tester.enterText(idealField, '10');
      await tester.tap(find.text('Salvar'));
      await tester.pumpAndSettle();

      final items = await backend.loadPantryItems();
      expect(items.first.idealQuantity, 10);
    });

    testWidgets('shopping cart icon appears in app bar when items exist', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Item',
        idealQuantity: 5,
        currentQuantity: 1,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      expect(find.byIcon(Icons.shopping_cart), findsOneWidget);
    });

    testWidgets('shopping cart icon absent when pantry is empty', (tester) async {
      await pumpScreen(tester);
      expect(find.byIcon(Icons.shopping_cart), findsNothing);
    });

    testWidgets('can pull to refresh on empty state', (tester) async {
      await pumpScreen(tester);
      await tester.fling(find.byType(SingleChildScrollView).first, const Offset(0, 300), 1000);
      await tester.pumpAndSettle();
      expect(find.text('Dispensa vazia'), findsOneWidget);
    });

    testWidgets('can pull to refresh on list state', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 3,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      await tester.fling(find.byType(ListView), const Offset(0, 300), 1000);
      await tester.pumpAndSettle();
      expect(find.text('Arroz'), findsOneWidget);
    });

    testWidgets('generate shopping list shows snackbar when no items need purchase', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 5, // No deficit
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      await tester.tap(find.byIcon(Icons.shopping_cart));
      await tester.pumpAndSettle();

      expect(find.text('Nenhum item precisa ser comprado'), findsOneWidget);
    });

    testWidgets('generate shopping list opens dialog and creates list', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 2,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      // Tap shopping cart icon in AppBar
      await tester.tap(find.byIcon(Icons.shopping_cart));
      await tester.pumpAndSettle();

      expect(find.text('Nova Lista de Compras'), findsOneWidget);
      expect(find.textContaining('item(ns) serão adicionados'), findsOneWidget);

      await tester.tap(find.text('Criar'));
      await tester.pumpAndSettle();

      final lists = await backend.loadLists();
      expect(lists.length, 1);
      
      final listItems = await backend.loadItems(lists.first.id);
      expect(listItems.length, 1);
      expect(listItems.first.name, 'Arroz');
      expect(listItems.first.quantity, 3); // Deficit
    });

    testWidgets('edit pantry item', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 2,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Editar'));
      await tester.pumpAndSettle();

      expect(find.text('Editar Arroz'), findsOneWidget);

      // Change ideal and current quantity
      await tester.enterText(find.byType(TextField).at(0), '10');
      await tester.enterText(find.byType(TextField).at(1), '8');
      
      await tester.tap(find.text('Salvar'));
      await tester.pumpAndSettle();

      final items = await backend.loadPantryItems();
      expect(items.first.idealQuantity, 10);
      expect(items.first.currentQuantity, 8);
    });

    testWidgets('delete pantry item', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 2,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Remover'));
      await tester.pumpAndSettle();

      expect(find.text('Remover "Arroz" da dispensa?'), findsOneWidget);
      
      await tester.tap(find.text('Remover').last); // The button
      await tester.pumpAndSettle();

      final items = await backend.loadPantryItems();
      expect(items, isEmpty);
    });

    testWidgets('restock pantry item', (tester) async {
      final item = PantryItem(
        id: 'pantry-1',
        name: 'Arroz',
        idealQuantity: 5,
        currentQuantity: 2,
        categoryId: 'others',
      );
      await backend.savePantryItems([item]);
      await pumpScreen(tester);

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Marcar como comprado'));
      await tester.pumpAndSettle();

      final items = await backend.loadPantryItems();
      expect(items.first.currentQuantity, 5); // Restocked to ideal
    });
  });
}
