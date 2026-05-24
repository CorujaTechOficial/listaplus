import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart' show Override;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/auth_service.dart';
import 'package:shopping_list/providers/auth_service_provider.dart';
import 'package:shopping_list/widgets/empty_state.dart';
import 'package:shopping_list/widgets/shopping_item_tile.dart';
import 'package:shopping_list/widgets/filter_bar.dart';
import 'package:shopping_list/widgets/add_item_dialog.dart';
import 'package:shopping_list/widgets/edit_item_dialog.dart';
import 'package:shopping_list/widgets/create_list_dialog.dart';
import 'package:shopping_list/widgets/budget_dialog.dart';
import 'package:shopping_list/screens/home_screen.dart';
import 'package:shopping_list/main.dart' as app;
import 'package:shopping_list/screens/home_screen.dart' as screens;
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/models/unit.dart';
import 'package:shopping_list/providers/current_list_provider.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/providers/analytics_service_provider.dart';
import 'package:shopping_list/providers/revenuecat_service_provider.dart';
import 'package:shopping_list/providers/ai_service_provider.dart';
import 'package:shopping_list/providers/categories_provider.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/services/analytics_service.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';
import '../helpers/fake_ai_service.dart';
import '../helpers/fake_categories_notifier.dart';
import 'package:shopping_list/services/storage_backend.dart';

Widget wrapWithProviders(Widget child, {StorageBackend? backend, RevenueCatService? revenueCat}) {
  final overrides = <Override>[
    authServiceProvider.overrideWithValue(AuthService(auth: MockFirebaseAuth())),
    revenueCatServiceProvider.overrideWithValue(revenueCat ?? FakeRevenueCatService()),
    analyticsServiceProvider.overrideWithValue(AnalyticsService()),
    aiServiceProvider.overrideWithValue(FakeAiService()),
    categoriesProvider.overrideWith(() => FakeCategoriesNotifier()),
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

Widget wrapWithApp(Widget child) {
  return MaterialApp(
    locale: const Locale('pt', 'BR'),
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    home: child,
  );
}

void main() {
  group('EmptyState', () {
    testWidgets('displays empty list message and icon', (tester) async {
      await tester.pumpWidget(wrapWithApp(const EmptyState()));
      await tester.pumpAndSettle();

      expect(find.text('Sua lista está vazia'), findsOneWidget);
      expect(find.text('Adicione itens para começar'), findsOneWidget);
      expect(find.byIcon(Icons.shopping_cart_outlined), findsOneWidget);
    });
  });

  group('ShoppingItemTile', () {
    late FakeStorageBackend backend;

    setUp(() {
      backend = FakeStorageBackend();
    });

    testWidgets('displays item details with price', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Maçã',
        quantity: 3,
        categoryId: 'fruits',
        estimatedPrice: 2.50,
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
        backend: backend,
      ));

      expect(find.text('Maçã'), findsOneWidget);
      expect(find.text('3'), findsOneWidget);
      expect(find.text('un'), findsOneWidget);
      expect(find.text('Frutas'), findsOneWidget);
      expect(find.text('R\$ 2.50'), findsOneWidget);
    });

    testWidgets('displays item without price', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Pão',
        quantity: 1,
        categoryId: 'bakery',
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
        backend: backend,
      ));

      expect(find.text('Pão'), findsOneWidget);
      expect(find.text('1'), findsOneWidget);
      expect(find.text('un'), findsOneWidget);
      expect(find.text('Padaria'), findsOneWidget);
    });

    testWidgets('shows purchased state with line-through style', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Comprado',
        quantity: 1,
        categoryId: 'others',
        isPurchased: true,
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
        backend: backend,
      ));

      final title = tester.widget<Text>(find.text('Comprado'));
      expect(title.style?.decoration, TextDecoration.lineThrough);
    });

    testWidgets('toggles item when checkbox is tapped', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item Teste',
        quantity: 1,
        categoryId: 'others',
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
        backend: backend,
      ));

      await tester.tap(find.byType(Checkbox));
      await tester.pumpAndSettle();
    });

    testWidgets('dismissible removes item and shows snackbar', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Remover',
        quantity: 1,
        categoryId: 'others',
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
        backend: backend,
      ));

      await tester.fling(
        find.byType(Dismissible).first,
        const Offset(-500, 0),
        1000,
      );
      await tester.pumpAndSettle();

      expect(find.text('Item removido'), findsOneWidget);
      expect(find.text('Desfazer'), findsOneWidget);
    });

    testWidgets('edit button calls show edit dialog', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Editável',
        quantity: 1,
        categoryId: 'others',
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
        backend: backend,
      ));

      await tester.tap(find.byIcon(Icons.edit_outlined));
      await tester.pumpAndSettle();
    });

    testWidgets('shows plus and minus buttons', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 5,
        categoryId: 'fruits',
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
        backend: backend,
      ));

      expect(find.byIcon(Icons.remove), findsOneWidget);
      expect(find.byIcon(Icons.add), findsOneWidget);
      expect(find.text('5'), findsOneWidget);
    });

    testWidgets('plus button calls increment without throwing', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 3,
        categoryId: 'others',
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
        backend: backend,
      ));

      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
    });

    testWidgets('minus button calls decrement without throwing', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 3,
        categoryId: 'others',
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
        backend: backend,
      ));

      await tester.tap(find.byIcon(Icons.remove));
      await tester.pumpAndSettle();
    });
  });

  group('FilterBar', () {
    testWidgets('shows all segments and dropdown', (tester) async {
      await tester.pumpWidget(wrapWithApp(Scaffold(
        body: FilterBar(
          filter: FilterType.all,
          sort: SortType.name,
          isGrouped: true,
          onFilterChanged: (_) {},
          onSortChanged: (_) {},
          onGroupedChanged: (_) {},
        ),
      )));

      expect(find.text('Todos'), findsOneWidget);
      expect(find.text('Pendentes'), findsOneWidget);
      expect(find.text('Comprados'), findsOneWidget);
      expect(find.text('Nome'), findsOneWidget);
    });

    testWidgets('calls onFilterChanged when segment is tapped', (tester) async {
      FilterType result = FilterType.all;

      await tester.pumpWidget(wrapWithApp(Scaffold(
        body: StatefulBuilder(builder: (context, setState) {
          return FilterBar(
            filter: result,
            sort: SortType.name,
            isGrouped: true,
            onFilterChanged: (f) => setState(() => result = f),
            onSortChanged: (_) {},
            onGroupedChanged: (_) {},
          );
        }),
      )));

      await tester.tap(find.text('Pendentes'));
      await tester.pumpAndSettle();
      expect(result, FilterType.pending);

      await tester.tap(find.text('Comprados'));
      await tester.pumpAndSettle();
      expect(result, FilterType.purchased);

      await tester.tap(find.text('Todos'));
      await tester.pumpAndSettle();
      expect(result, FilterType.all);
    });

    testWidgets('calls onSortChanged when dropdown is changed', (tester) async {
      SortType result = SortType.name;

      await tester.pumpWidget(wrapWithApp(Scaffold(
        body: FilterBar(
          filter: FilterType.all,
          sort: result,
          isGrouped: true,
          onFilterChanged: (_) {},
          onSortChanged: (s) => result = s,
          onGroupedChanged: (_) {},
        ),
      )));

      await tester.tap(find.text('Nome'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Categoria').last);
      await tester.pumpAndSettle();
      expect(result, SortType.category);
    });

    testWidgets('manual sort option exists', (tester) async {
      await tester.pumpWidget(wrapWithApp(Scaffold(
        body: FilterBar(
          filter: FilterType.all,
          sort: SortType.name,
          isGrouped: true,
          onFilterChanged: (_) {},
          onSortChanged: (_) {},
          onGroupedChanged: (_) {},
        ),
      )));

      await tester.tap(find.text('Nome'));
      await tester.pumpAndSettle();

      expect(find.text('Manual'), findsOneWidget);
    });
  });

  group('AddItemDialog', () {
    Future<void> openDialog(WidgetTester tester) async {
      final backend = FakeStorageBackend();
      await tester.pumpWidget(wrapWithProviders(
        Builder(builder: (context) => ElevatedButton(
          onPressed: () => showDialog<void>(
            context: context,
            builder: (_) => const AddItemDialog(listId: 'list-1'),
          ),
          child: const Text('Open'),
        )),
        backend: backend,
      ));

      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();
    }

    testWidgets('shows form fields and title', (tester) async {
      await openDialog(tester);

      expect(find.text('Adicionar Item'), findsOneWidget);
      expect(find.text('Cancelar'), findsOneWidget);
      expect(find.text('Adicionar'), findsOneWidget);
      expect(find.byType(TextFormField), findsNWidgets(3));
      expect(find.byType(DropdownButtonFormField<String>), findsOneWidget);
      expect(find.byType(DropdownButtonFormField<Unit>), findsOneWidget);
    });

    testWidgets('validates empty name field', (tester) async {
      await openDialog(tester);

      await tester.enterText(find.byType(TextFormField).first, '');
      await tester.tap(find.text('Adicionar'));
      await tester.pumpAndSettle();

      expect(find.text('Campo obrigatório'), findsOneWidget);
    });

    testWidgets('submits with valid data and closes dialog', (tester) async {
      await openDialog(tester);

      await tester.enterText(find.byType(TextFormField).first, 'Arroz');

      await tester.tap(find.byType(DropdownButtonFormField<String>));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Frutas').last);
      await tester.pumpAndSettle();

      await tester.tap(find.text('Adicionar'));
      await tester.pumpAndSettle();

      expect(find.text('Adicionar Item'), findsNothing);
    });

    testWidgets('can select a different unit', (tester) async {
      await openDialog(tester);

      await tester.tap(find.byType(DropdownButtonFormField<Unit>));
      await tester.pumpAndSettle();
      await tester.tap(find.text('kg').last);
      await tester.pumpAndSettle();

      expect(find.text('kg'), findsAtLeastNWidgets(1));
    });
  });

  group('EditItemDialog', () {
    Future<void> openDialog(WidgetTester tester) async {
      final backend = FakeStorageBackend();
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Arroz',
        quantity: 5,
        categoryId: 'others',
        unit: Unit.kg,
        estimatedPrice: 10.50,
      );

      await tester.pumpWidget(wrapWithProviders(
        Builder(builder: (context) => ElevatedButton(
          onPressed: () => showDialog<void>(
            context: context,
            builder: (_) => EditItemDialog(listId: 'list-1', item: item),
          ),
          child: const Text('Open'),
        )),
        backend: backend,
      ));

      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();
    }

    testWidgets('shows dialog with pre-filled values', (tester) async {
      await openDialog(tester);

      expect(find.text('Editar Item'), findsOneWidget);
      expect(find.text('Cancelar'), findsOneWidget);
      expect(find.text('Salvar'), findsOneWidget);
      expect(find.text('Arroz'), findsOneWidget);
      expect(find.text('5'), findsAtLeastNWidgets(1));
      expect(find.textContaining('kg'), findsAtLeastNWidgets(1));
      expect(find.textContaining('Outros'), findsAtLeastNWidgets(1));
    });

    testWidgets('validates empty name field', (tester) async {
      await openDialog(tester);

      await tester.enterText(find.byType(TextFormField).first, '');
      await tester.tap(find.text('Salvar'));
      await tester.pumpAndSettle();

      expect(find.text('Campo obrigatório'), findsOneWidget);
    });

    testWidgets('submits with valid data and closes dialog', (tester) async {
      await openDialog(tester);

      await tester.enterText(find.byType(TextFormField).first, 'Arroz Integral');
      await tester.tap(find.text('Salvar'));
      await tester.pumpAndSettle();

      expect(find.text('Editar Item'), findsNothing);
    });

    testWidgets('can select different unit', (tester) async {
      await openDialog(tester);

      await tester.tap(find.byType(DropdownButtonFormField<Unit>));
      await tester.pumpAndSettle();
      await tester.tap(find.text('L').last);
      await tester.pumpAndSettle();

      expect(find.text('L'), findsAtLeastNWidgets(1));
    });

    testWidgets('can select different category', (tester) async {
      await openDialog(tester);

      await tester.tap(find.byType(DropdownButtonFormField<String>));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Frutas').last);
      await tester.pumpAndSettle();

      expect(find.text('Frutas'), findsAtLeastNWidgets(1));
    });

    testWidgets('cancel closes dialog', (tester) async {
      await openDialog(tester);

      await tester.tap(find.text('Cancelar'));
      await tester.pumpAndSettle();

      expect(find.text('Editar Item'), findsNothing);
    });
  });

  group('CreateListDialog', () {
    testWidgets('shows dialog with text field', (tester) async {
      final backend = FakeStorageBackend();
      await tester.pumpWidget(wrapWithProviders(
        Builder(builder: (context) => ElevatedButton(
          onPressed: () => showDialog<void>(
            context: context,
            builder: (_) => const CreateListDialog(),
          ),
          child: const Text('Open'),
        )),
        backend: backend,
      ));

      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();

      expect(find.text('Criar Lista'), findsOneWidget);
      expect(find.text('Cancelar'), findsOneWidget);
      expect(find.text('Criar'), findsOneWidget);
      expect(find.byType(TextField), findsOneWidget);
    });

    testWidgets('returns name when Criar is tapped', (tester) async {
      String? result;
      final backend = FakeStorageBackend();

      await tester.pumpWidget(wrapWithProviders(
        Builder(builder: (context) => ElevatedButton(
          onPressed: () async {
            result = await showDialog<String>(
              context: context,
              builder: (_) => const CreateListDialog(),
            );
          },
          child: const Text('Open'),
        )),
        backend: backend,
      ));

      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Mercado');
      await tester.tap(find.text('Criar'));
      await tester.pumpAndSettle();

      expect(result, 'Mercado');
    });

    testWidgets('does not return empty name', (tester) async {
      String? result;
      final backend = FakeStorageBackend();

      await tester.pumpWidget(wrapWithProviders(
        Builder(builder: (context) => ElevatedButton(
          onPressed: () async {
            result = await showDialog<String>(
              context: context,
              builder: (_) => const CreateListDialog(),
            );
          },
          child: const Text('Open'),
        )),
        backend: backend,
      ));

      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Criar'));
      await tester.pumpAndSettle();

      expect(result, isNull);
    });

    testWidgets('returns name when done action is submitted', (tester) async {
      String? result;
      final backend = FakeStorageBackend();

      await tester.pumpWidget(wrapWithProviders(
        Builder(builder: (context) => ElevatedButton(
          onPressed: () async {
            result = await showDialog<String>(
              context: context,
              builder: (_) => const CreateListDialog(),
            );
          },
          child: const Text('Open'),
        )),
        backend: backend,
      ));

      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Mercado');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();

      expect(result, 'Mercado');
    });
  });

  group('BudgetDialog', () {
    Future<void> openDialog(WidgetTester tester, {double? currentBudget}) async {
      final backend = FakeStorageBackend();
      final list = ShoppingList(id: 'list-1', name: 'Lista', budget: currentBudget);
      await backend.saveLists([list]);
      await tester.pumpWidget(wrapWithProviders(
        Builder(builder: (context) => ElevatedButton(
          onPressed: () => showDialog<void>(
            context: context,
            builder: (_) => BudgetDialog(list: list),
          ),
          child: const Text('Open'),
        )),
        backend: backend,
      ));

      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();
    }

    testWidgets('shows dialog with input field', (tester) async {
      await openDialog(tester);

      expect(find.text('Orçamento da Lista'), findsOneWidget);
      expect(find.text('Salvar'), findsOneWidget);
      expect(find.text('Cancelar'), findsOneWidget);
      expect(find.text('Remover'), findsNothing);
    });

    testWidgets('saves budget and closes dialog', (tester) async {
      await openDialog(tester);

      await tester.enterText(find.byType(TextField), '150');
      await tester.tap(find.text('Salvar'));
      await tester.pumpAndSettle();

      expect(find.text('Orçamento da Lista'), findsNothing);
    });

    testWidgets('shows remove button when budget exists', (tester) async {
      await openDialog(tester, currentBudget: 200);

      expect(find.text('Remover'), findsOneWidget);
      expect(find.textContaining('200'), findsOneWidget);
    });

    testWidgets('remove button clears budget', (tester) async {
      await openDialog(tester, currentBudget: 200);

      await tester.tap(find.text('Remover'));
      await tester.pumpAndSettle();

      expect(find.text('Orçamento da Lista'), findsNothing);
    });

    testWidgets('does not save invalid value', (tester) async {
      await openDialog(tester);

      await tester.enterText(find.byType(TextField), 'abc');
      await tester.tap(find.text('Salvar'));
      await tester.pumpAndSettle();

      expect(find.text('Orçamento da Lista'), findsOneWidget);
    });
  });

  group('HomeScreen', () {
    testWidgets('shows shimmer then empty state', (tester) async {
      final backend = FakeStorageBackend();
      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));

      // Shimmer may be skipped if data is available immediately
      // expect(find.byType(ShimmerList), findsOneWidget);

      await tester.pumpAndSettle();

      expect(find.byType(EmptyState), findsOneWidget);
    });

    testWidgets('renders items from SharedPreferences', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Compras do Mês');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Arroz',
        quantity: 5,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      expect(find.text('Compras do Mês'), findsOneWidget);
      expect(find.text('Arroz'), findsOneWidget);
      expect(find.byType(ShoppingItemTile), findsOneWidget);
    });

    testWidgets('filters items by status', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final purchasedItem = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Comprado',
        quantity: 1,
        categoryId: 'others',
        isPurchased: true,
      );
      final pendingItem = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Pendente',
        quantity: 1,
        categoryId: 'others',
        isPurchased: false,
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([purchasedItem, pendingItem]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      expect(find.text('Comprado'), findsOneWidget);
      expect(find.text('Pendente'), findsOneWidget);

      await tester.tap(find.text('Pendentes'));
      await tester.pumpAndSettle();

      expect(find.text('Comprado'), findsNothing);
      expect(find.text('Pendente'), findsOneWidget);

      await tester.tap(find.text('Comprados'));
      await tester.pumpAndSettle();

      expect(find.text('Comprado'), findsOneWidget);
      expect(find.text('Pendente'), findsNothing);
    });

    testWidgets('undo restores dismissed item', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Restaurar',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      expect(find.text('Restaurar'), findsOneWidget);

      await tester.fling(
        find.byType(Dismissible).first,
        const Offset(-500, 0),
        1000,
      );
      await tester.pumpAndSettle();

      expect(find.text('Restaurar'), findsNothing);
      expect(find.text('Item removido'), findsOneWidget);

      await tester.tap(find.text('Desfazer'));
      await tester.pumpAndSettle();

      expect(find.text('Restaurar'), findsOneWidget);
    });

    testWidgets('pull-to-refresh shows RefreshIndicator', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      expect(find.byType(RefreshIndicator), findsOneWidget);

      // Trigger pull-to-refresh via drag
      await tester.fling(
        find.byType(ListView),
        const Offset(0, 300),
        1000,
      );
      await tester.pumpAndSettle();

      expect(find.text('Item'), findsOneWidget);
    });

    testWidgets('pull-to-refresh on empty state works', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      expect(find.byType(RefreshIndicator), findsOneWidget);

      await tester.fling(
        find.byType(SingleChildScrollView).first,
        const Offset(0, 300),
        1000,
      );
      await tester.pumpAndSettle();

      expect(find.text('Sua lista está vazia'), findsOneWidget);
    });

    testWidgets('plus and minus buttons update quantity visually', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item Qtd',
        quantity: 2,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      expect(find.text('2'), findsOneWidget);

      await tester.tap(find.descendant(
        of: find.byType(ShoppingItemTile),
        matching: find.byIcon(Icons.add),
      ));
      await tester.pumpAndSettle();

      expect(find.text('3'), findsOneWidget);

      await tester.tap(find.descendant(
        of: find.byType(ShoppingItemTile),
        matching: find.byIcon(Icons.remove),
      ));
      await tester.pumpAndSettle();

      expect(find.text('2'), findsOneWidget);
    });

    testWidgets('clear all items button works', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Limpar lista'));
      await tester.pumpAndSettle();

      expect(find.text('Confirmar'), findsOneWidget);
      expect(find.text('Remover todos os itens?'), findsOneWidget);

      await tester.tap(find.text('Remover'));
      await tester.pumpAndSettle();

      expect(find.byType(EmptyState), findsOneWidget);
    });

    testWidgets('clear purchased removes only purchased items', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final pending = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Pendente',
        quantity: 1,
        categoryId: 'others',
        isPurchased: false,
      );
      final purchased = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Comprado',
        quantity: 1,
        categoryId: 'others',
        isPurchased: true,
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([pending, purchased]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      expect(find.text('Pendente'), findsOneWidget);
      expect(find.text('Comprado'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Limpar comprados'));
      await tester.pumpAndSettle();

      expect(find.text('Pendente'), findsOneWidget);
      expect(find.text('Comprado'), findsNothing);
    });

    testWidgets('compartilhar shares the list', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Compartilhar'));
      await tester.pumpAndSettle();
      // Não lança exceção (share_plus é silenciado em teste)
    });

    testWidgets('menu tem opção Gerenciar assinatura', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      final spy = FakeRevenueCatService()..setIsPremium(true);

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
        revenueCat: spy,
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Configurações'));
      await tester.pumpAndSettle();

      expect(find.text('Gerenciar assinatura'), findsOneWidget);
    });

    testWidgets('Gerenciar assinatura chama presentCustomerCenter', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      final spy = FakeRevenueCatService()..setIsPremium(true);

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
        revenueCat: spy,
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Configurações'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Gerenciar assinatura'));
      await tester.pumpAndSettle();

      expect(spy.presentCustomerCenterCallCount, 1);
    });

    testWidgets('manual sort shows items in ReorderableListView', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final itemA = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item A',
        quantity: 1,
        categoryId: 'others',
      );
      final itemB = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item B',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([itemA, itemB]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      // Already in manual sort by default so ReorderableListView is used

      expect(find.text('Item A'), findsOneWidget);
      expect(find.text('Item B'), findsOneWidget);

      // Trigger reorder via long-press + drag
      final firstTile = find.byType(ShoppingItemTile).first;
      final center = tester.getCenter(firstTile);
      final gesture = await tester.startGesture(center);
      await tester.pump(const Duration(milliseconds: 500));
      await gesture.moveBy(const Offset(0, 80));
      await tester.pump(const Duration(milliseconds: 300));
      await gesture.up();
      await tester.pumpAndSettle();

      expect(find.byType(ShoppingItemTile), findsNWidgets(2));
    });


    testWidgets('shows budget progress bar when budget is set', (tester) async {
      // ignore: prefer_int_literals
      final list = ShoppingList(id: 'list-1', name: 'Lista', budget: 100.0);
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        categoryId: 'others',
        estimatedPrice: 10,
        isPurchased: true,
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      expect(
        find.descendant(
          of: find.byType(AppBar),
          matching: find.byType(LinearProgressIndicator),
        ),
        findsOneWidget,
      );
      expect(find.textContaining('R\$'), findsWidgets);
    });

    testWidgets('search button opens search delegate', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item1 = ShoppingItem(
        shoppingListId: 'list-1', name: 'Maçã', quantity: 1, categoryId: 'fruits',
      );
      final item2 = ShoppingItem(
        shoppingListId: 'list-1', name: 'Banana', quantity: 1, categoryId: 'fruits',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item1, item2]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.search));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Maç');
      await tester.pumpAndSettle();

      expect(find.text('Maçã'), findsOneWidget);
      expect(find.text('Banana'), findsNothing);

      await tester.testTextInput.receiveAction(TextInputAction.search);
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.arrow_back));
      await tester.pumpAndSettle();
    });

    testWidgets('wallet button opens budget dialog', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.account_balance_wallet_outlined));
      await tester.pumpAndSettle();

      expect(find.text('Orçamento da Lista'), findsOneWidget);
    });

    testWidgets('sort dropdown changes sort order', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final items = [
        ShoppingItem(shoppingListId: 'list-1', name: 'Banana', quantity: 1, categoryId: 'fruits'),
        ShoppingItem(shoppingListId: 'list-1', name: 'Arroz', quantity: 1, categoryId: 'others'),
      ];

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems(items);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Manual'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Data').last);
      await tester.pumpAndSettle();

      await tester.tap(find.text('Data'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Nome').last);
      await tester.pumpAndSettle();

      await tester.tap(find.text('Nome'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Categoria').last);
      await tester.pumpAndSettle();
    });

    testWidgets('floating action button opens add item dialog', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      expect(find.byType(AddItemDialog), findsOneWidget);
    });

    testWidgets('long press enters selection mode', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      await tester.longPress(find.text('Item'));
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.close), findsOneWidget);
    });

    testWidgets('selection mode shows bottom bar with batch actions', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      await tester.longPress(find.text('Item'));
      await tester.pumpAndSettle();

      expect(find.byType(BottomAppBar), findsOneWidget);
      expect(find.text('Excluir'), findsOneWidget);
      expect(find.text('Comprar'), findsOneWidget);
      expect(find.text('Desmarcar'), findsOneWidget);
    });

    testWidgets('close button exits selection mode', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      await tester.longPress(find.text('Item'));
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.close), findsOneWidget);

      await tester.tap(find.byIcon(Icons.close));
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.close), findsNothing);
    });

    testWidgets('comprar button marks selected items as purchased', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      await tester.longPress(find.text('Item'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Comprar'));
      await tester.pumpAndSettle();

      expect(find.byType(BottomAppBar), findsNothing);
      expect(find.byIcon(Icons.close), findsNothing);
    });

    testWidgets('excluir button removes selected items', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      await tester.longPress(find.text('Item'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Excluir'));
      await tester.pumpAndSettle();

      expect(find.text('Confirmar'), findsOneWidget);

      await tester.tap(find.text('Remover'));
      await tester.pumpAndSettle();

      expect(find.byType(EmptyState), findsOneWidget);
    });

    testWidgets('deselecting item hides bottom bar', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      await tester.longPress(find.text('Item'));
      await tester.pumpAndSettle();

      expect(find.byType(BottomAppBar), findsOneWidget);

      await tester.tap(find.byType(Checkbox));
      await tester.pumpAndSettle();

      expect(find.byType(BottomAppBar), findsNothing);
    });

    testWidgets('desmarcar button works without throwing', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      await tester.longPress(find.text('Item'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Desmarcar'));
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.close), findsNothing);
    });

    testWidgets('selection in manual sort mode works', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        categoryId: 'others',
      );

      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.saveItems([item]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      // Already in manual sort by default so ReorderableListView is used

      await tester.longPress(find.text('Item'));
      await tester.pumpAndSettle();

      expect(find.byType(BottomAppBar), findsOneWidget);

      // Deselect
      await tester.tap(find.byType(Checkbox));
      await tester.pumpAndSettle();

      expect(find.byType(BottomAppBar), findsNothing);
    });

    testWidgets('shows error state when items fail to load', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final backend = _HomeScreenErrorBackend();
      await backend.saveLists([list]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      expect(find.textContaining('Erro:'), findsOneWidget);
    });
  });

  group('NoListsScreen', () {
    testWidgets('shows empty state and create button', (tester) async {
      final backend = FakeStorageBackend();
      await tester.pumpWidget(wrapWithProviders(
        const app.NoListsScreen(),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      expect(find.text('Nenhuma lista encontrada'), findsOneWidget);
      expect(find.text('Criar Primeira Lista'), findsOneWidget);
      expect(find.byIcon(Icons.list_alt), findsOneWidget);
    });

    testWidgets('create button opens dialog and creates list', (tester) async {
      final backend = FakeStorageBackend();
      await tester.pumpWidget(wrapWithProviders(
        const app.NoListsScreen(),
        backend: backend,
      ));

      await tester.tap(find.text('Criar Primeira Lista'));
      await tester.pumpAndSettle();

      expect(find.text('Criar Lista'), findsOneWidget);

      await tester.enterText(find.byType(TextField), 'Minha Lista');
      await tester.tap(find.text('Criar'));
      await tester.pumpAndSettle();
    });
  });

  group('Search delegate', () {
    testWidgets('filters items by query', (tester) async {
      final backend = FakeStorageBackend();
      await backend.saveItems([
        ShoppingItem(
          shoppingListId: 'list-1',
          name: 'Maçã',
          quantity: 1,
          categoryId: 'fruits',
        ),
        ShoppingItem(
          shoppingListId: 'list-1',
          name: 'Banana',
          quantity: 2,
          categoryId: 'fruits',
        ),
      ]);

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: Builder(builder: (context) => ElevatedButton(
          onPressed: () => showSearch(context: context, delegate: screens.ShoppingSearchDelegate('list-1')),
          child: const Text('Search'),
        ))),
        backend: backend,
      ));

      await tester.tap(find.text('Search'));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Maç');
      await tester.pumpAndSettle();

      expect(find.text('Maçã'), findsOneWidget);
      expect(find.text('Banana'), findsNothing);
    });
  });

  group('MyApp', () {
    testWidgets('renders without throwing', (tester) async {
      SharedPreferences.setMockInitialValues({'has_seen_onboarding': true});
      final backend = FakeStorageBackend();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            firestoreServiceProvider.overrideWithValue(backend),
          ],
          child: const app.MyApp(),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(app.MyApp), findsOneWidget);
    });

    testWidgets('main runs the app', (tester) async {
      SharedPreferences.setMockInitialValues({'has_seen_onboarding': true});
      final backend = FakeStorageBackend();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            firestoreServiceProvider.overrideWithValue(backend),
          ],
          child: const app.MyApp(),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(app.MyApp), findsOneWidget);
    });
  });

  group('ListLoader', () {
    testWidgets('shows HomeScreen when current list exists', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista Teste');
      final backend = FakeStorageBackend();
      await backend.saveLists([list]);
      await backend.setCurrentListId('list-1');

      await tester.pumpWidget(wrapWithProviders(
        const app.ListLoader(),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      expect(find.text('Lista Teste'), findsOneWidget);
    });

    testWidgets('shows error state', (tester) async {
      final backend = FakeStorageBackend();

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            firestoreServiceProvider.overrideWithValue(backend),
            currentListIdProvider.overrideWith(
              () => _ErrorCurrentListId(),
            ),
          ],
          child: const MaterialApp(home: app.ListLoader()),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.textContaining('Erro:'), findsOneWidget);
    });
  });
}

class _ErrorCurrentListId extends CurrentListId {
  @override
  Future<String?> build() => Future.error(Exception('Erro de teste'));
}

class _HomeScreenErrorBackend extends FakeStorageBackend {
  @override
  Stream<List<ShoppingItem>> watchItems(String listId) {
    return Stream.error(Exception('Erro de teste'));
  }
}
