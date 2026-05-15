import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/widgets/empty_state.dart';
import 'package:shopping_list/widgets/shopping_item_tile.dart';
import 'package:shopping_list/widgets/filter_bar.dart';
import 'package:shopping_list/widgets/add_item_dialog.dart';
import 'package:shopping_list/widgets/create_list_dialog.dart';
import 'package:shopping_list/widgets/budget_dialog.dart';
import 'package:shopping_list/screens/home_screen.dart';
import 'package:shopping_list/main.dart' as app;
import 'package:shopping_list/screens/home_screen.dart' as screens;
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/models/category.dart';
import 'package:shopping_list/providers/current_list_provider.dart';

Widget wrapWithProviders(Widget child) {
  return ProviderScope(child: MaterialApp(home: child));
}

Widget wrapWithApp(Widget child) {
  return MaterialApp(home: child);
}

void main() {
  group('EmptyState', () {
    testWidgets('displays empty list message and icon', (tester) async {
      await tester.pumpWidget(wrapWithApp(const EmptyState()));

      expect(find.text('Sua lista está vazia'), findsOneWidget);
      expect(find.text('Adicione itens para começar'), findsOneWidget);
      expect(find.byIcon(Icons.shopping_cart_outlined), findsOneWidget);
    });
  });

  group('ShoppingItemTile', () {
    setUp(() {
      SharedPreferences.setMockInitialValues({});
    });

    testWidgets('displays item details with price', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Maçã',
        quantity: 3,
        category: Category.fruits,
        estimatedPrice: 2.50,
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
      ));

      expect(find.text('Maçã'), findsOneWidget);
      expect(find.textContaining('3x Frutas'), findsOneWidget);
      expect(find.textContaining('R\$ 2.50'), findsOneWidget);
    });

    testWidgets('displays item without price', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Pão',
        quantity: 1,
        category: Category.bakery,
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
      ));

      expect(find.text('Pão'), findsOneWidget);
      expect(find.text('1x Padaria'), findsOneWidget);
    });

    testWidgets('shows purchased state with line-through style', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Comprado',
        quantity: 1,
        category: Category.others,
        isPurchased: true,
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
      ));

      final title = tester.widget<Text>(find.text('Comprado'));
      expect(title.style?.decoration, TextDecoration.lineThrough);
    });

    testWidgets('toggles item when checkbox is tapped', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item Teste',
        quantity: 1,
        category: Category.others,
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
      ));

      await tester.tap(find.byType(CheckboxListTile));
      await tester.pumpAndSettle();
    });

    testWidgets('dismissible removes item', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Remover',
        quantity: 1,
        category: Category.others,
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
      ));

      await tester.fling(
        find.byType(Dismissible),
        const Offset(-500, 0),
        1000,
      );
      await tester.pumpAndSettle();
    });

    testWidgets('edit button calls show edit dialog', (tester) async {
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Editável',
        quantity: 1,
        category: Category.others,
      );

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
      ));

      await tester.tap(find.byIcon(Icons.edit));
      await tester.pumpAndSettle();
    });
  });

  group('FilterBar', () {
    testWidgets('shows all segments and dropdown', (tester) async {
      await tester.pumpWidget(wrapWithApp(Scaffold(
        body: FilterBar(
          filter: FilterType.all,
          sort: SortType.name,
          onFilterChanged: (_) {},
          onSortChanged: (_) {},
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
            onFilterChanged: (f) => setState(() => result = f),
            onSortChanged: (_) {},
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
          onFilterChanged: (_) {},
          onSortChanged: (s) => result = s,
        ),
      )));

      await tester.tap(find.text('Nome'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Categoria').last);
      await tester.pumpAndSettle();
      expect(result, SortType.category);
    });
  });

  group('AddItemDialog', () {
    setUp(() {
      SharedPreferences.setMockInitialValues({});
    });

    Future<void> openDialog(WidgetTester tester) async {
      await tester.pumpWidget(wrapWithProviders(
        Builder(builder: (context) => ElevatedButton(
          onPressed: () => showDialog(
            context: context,
            builder: (_) => const AddItemDialog(listId: 'list-1'),
          ),
          child: const Text('Open'),
        )),
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
      expect(find.byType(DropdownButtonFormField<Category>), findsOneWidget);
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

      await tester.tap(find.byType(DropdownButtonFormField<Category>));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Frutas').last);
      await tester.pumpAndSettle();

      await tester.tap(find.text('Adicionar'));
      await tester.pumpAndSettle();

      expect(find.text('Adicionar Item'), findsNothing);
    });
  });

  group('CreateListDialog', () {
    testWidgets('shows dialog with text field', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        Builder(builder: (context) => ElevatedButton(
          onPressed: () => showDialog(
            context: context,
            builder: (_) => const CreateListDialog(),
          ),
          child: const Text('Open'),
        )),
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
      ));

      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Criar'));
      await tester.pumpAndSettle();

      expect(result, isNull);
    });

    testWidgets('returns name when done action is submitted', (tester) async {
      String? result;

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
    setUp(() {
      SharedPreferences.setMockInitialValues({});
    });

    Future<void> openDialog(WidgetTester tester, {double? currentBudget}) async {
      await tester.pumpWidget(wrapWithProviders(
        Builder(builder: (context) => ElevatedButton(
          onPressed: () => showDialog(
            context: context,
            builder: (_) => BudgetDialog(listId: 'list-1', currentBudget: currentBudget),
          ),
          child: const Text('Open'),
        )),
      ));

      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();
    }

    testWidgets('shows dialog with input field', (tester) async {
      await openDialog(tester);

      expect(find.text('Orçamento Mensal'), findsOneWidget);
      expect(find.text('Salvar'), findsOneWidget);
      expect(find.text('Cancelar'), findsOneWidget);
      expect(find.text('Remover'), findsNothing);
    });

    testWidgets('saves budget and closes dialog', (tester) async {
      await openDialog(tester);

      await tester.enterText(find.byType(TextField), '150');
      await tester.tap(find.text('Salvar'));
      await tester.pumpAndSettle();

      expect(find.text('Orçamento Mensal'), findsNothing);
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

      expect(find.text('Orçamento Mensal'), findsNothing);
    });

    testWidgets('does not save invalid value', (tester) async {
      await openDialog(tester);

      await tester.enterText(find.byType(TextField), 'abc');
      await tester.tap(find.text('Salvar'));
      await tester.pumpAndSettle();

      expect(find.text('Orçamento Mensal'), findsOneWidget);
    });
  });

  group('HomeScreen', () {
    setUp(() {
      SharedPreferences.setMockInitialValues({});
    });

    testWidgets('shows loading indicator then empty state', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
      ));

      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      await tester.pumpAndSettle();

      expect(find.byType(EmptyState), findsOneWidget);
    });

    testWidgets('renders items from SharedPreferences', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Compras do Mês');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Arroz',
        quantity: 5,
        category: Category.others,
      );

      SharedPreferences.setMockInitialValues({
        'shopping_lists': jsonEncode([list.toJson()]),
        'shopping_items': jsonEncode([item.toJson()]),
        'current_list_id': 'list-1',
      });

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
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
        category: Category.others,
        isPurchased: true,
      );
      final pendingItem = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Pendente',
        quantity: 1,
        category: Category.others,
        isPurchased: false,
      );

      SharedPreferences.setMockInitialValues({
        'shopping_lists': jsonEncode([list.toJson()]),
        'shopping_items': jsonEncode([purchasedItem.toJson(), pendingItem.toJson()]),
        'current_list_id': 'list-1',
      });

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
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

    testWidgets('drawer shows list switching', (tester) async {
      final list1 = ShoppingList(id: 'list-1', name: 'Lista A');
      final list2 = ShoppingList(id: 'list-2', name: 'Lista B');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        category: Category.others,
      );

      SharedPreferences.setMockInitialValues({
        'shopping_lists': jsonEncode([list1.toJson(), list2.toJson()]),
        'shopping_items': jsonEncode([item.toJson()]),
        'current_list_id': 'list-1',
      });

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      expect(find.text('Minhas Listas'), findsOneWidget);
      expect(find.text('Lista A'), findsAtLeastNWidgets(1));
      expect(find.text('Lista B'), findsOneWidget);
      expect(find.text('Nova Lista'), findsOneWidget);
      expect(find.byIcon(Icons.check), findsAtLeastNWidgets(1));
    });

    testWidgets('clear all items button works', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        category: Category.others,
      );

      SharedPreferences.setMockInitialValues({
        'shopping_lists': jsonEncode([list.toJson()]),
        'shopping_items': jsonEncode([item.toJson()]),
        'current_list_id': 'list-1',
      });

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
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

    testWidgets('shows budget progress bar when budget is set', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item = ShoppingItem(
        shoppingListId: 'list-1',
        name: 'Item',
        quantity: 1,
        category: Category.others,
        estimatedPrice: 10,
        isPurchased: true,
      );

      SharedPreferences.setMockInitialValues({
        'shopping_lists': jsonEncode([list.toJson()]),
        'shopping_items': jsonEncode([item.toJson()]),
        'current_list_id': 'list-1',
        'budget_list-1': 100.0,
      });

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
      ));
      await tester.pumpAndSettle();

      expect(find.byType(LinearProgressIndicator), findsOneWidget);
      expect(find.textContaining('R\$'), findsWidgets);
    });

    testWidgets('search button opens search delegate', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final item1 = ShoppingItem(
        shoppingListId: 'list-1', name: 'Maçã', quantity: 1, category: Category.fruits,
      );
      final item2 = ShoppingItem(
        shoppingListId: 'list-1', name: 'Banana', quantity: 1, category: Category.fruits,
      );

      SharedPreferences.setMockInitialValues({
        'shopping_lists': jsonEncode([list.toJson()]),
        'shopping_items': jsonEncode([item1.toJson(), item2.toJson()]),
        'current_list_id': 'list-1',
      });

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
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

      SharedPreferences.setMockInitialValues({
        'shopping_lists': jsonEncode([list.toJson()]),
        'shopping_items': jsonEncode([]),
        'current_list_id': 'list-1',
      });

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.account_balance_wallet));
      await tester.pumpAndSettle();

      expect(find.text('Orçamento Mensal'), findsOneWidget);
    });

    testWidgets('drawer list tap switches list', (tester) async {
      final list1 = ShoppingList(id: 'list-1', name: 'Lista A');
      final list2 = ShoppingList(id: 'list-2', name: 'Lista B');

      SharedPreferences.setMockInitialValues({
        'shopping_lists': jsonEncode([list1.toJson(), list2.toJson()]),
        'shopping_items': jsonEncode([]),
        'current_list_id': 'list-1',
      });

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Lista B'));
      await tester.pumpAndSettle();

      expect(find.text('Minhas Listas'), findsNothing);
    });

    testWidgets('drawer nova lista creates list', (tester) async {
      final list1 = ShoppingList(id: 'list-1', name: 'Lista A');

      SharedPreferences.setMockInitialValues({
        'shopping_lists': jsonEncode([list1.toJson()]),
        'shopping_items': jsonEncode([]),
        'current_list_id': 'list-1',
      });

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Nova Lista'));
      await tester.pumpAndSettle();

      expect(find.text('Criar Lista'), findsOneWidget);

      await tester.enterText(find.byType(TextField), 'Nova Lista');
      await tester.tap(find.text('Criar'));
      await tester.pumpAndSettle();

      expect(find.text('Minhas Listas'), findsNothing);
    });

    testWidgets('sort dropdown changes sort order', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');
      final items = [
        ShoppingItem(shoppingListId: 'list-1', name: 'Banana', quantity: 1, category: Category.fruits),
        ShoppingItem(shoppingListId: 'list-1', name: 'Arroz', quantity: 1, category: Category.others),
      ];

      SharedPreferences.setMockInitialValues({
        'shopping_lists': jsonEncode([list.toJson()]),
        'shopping_items': jsonEncode(items.map((e) => e.toJson()).toList()),
        'current_list_id': 'list-1',
      });

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
      ));
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

      SharedPreferences.setMockInitialValues({
        'shopping_lists': jsonEncode([list.toJson()]),
        'shopping_items': jsonEncode([]),
        'current_list_id': 'list-1',
      });

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      expect(find.text('Adicionar Item'), findsOneWidget);
    });

    testWidgets('shows error state when items fail to load', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista');

      SharedPreferences.setMockInitialValues({
        'shopping_lists': jsonEncode([list.toJson()]),
        'shopping_items': 'invalid json',
        'current_list_id': 'list-1',
      });

      await tester.pumpWidget(wrapWithProviders(
        const HomeScreen(listId: 'list-1'),
      ));
      await tester.pumpAndSettle();

      expect(find.textContaining('Erro:'), findsOneWidget);
    });
  });

  group('NoListsScreen', () {
    setUp(() {
      SharedPreferences.setMockInitialValues({});
    });

    testWidgets('shows empty state and create button', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const app.NoListsScreen(),
      ));

      expect(find.text('Nenhuma lista encontrada'), findsOneWidget);
      expect(find.text('Criar Primeira Lista'), findsOneWidget);
      expect(find.byIcon(Icons.list_alt), findsOneWidget);
    });

    testWidgets('create button opens dialog and creates list', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const app.NoListsScreen(),
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
      final items = [
        ShoppingItem(
          shoppingListId: 'list-1',
          name: 'Maçã',
          quantity: 1,
          category: Category.fruits,
        ),
        ShoppingItem(
          shoppingListId: 'list-1',
          name: 'Banana',
          quantity: 2,
          category: Category.fruits,
        ),
      ];

      SharedPreferences.setMockInitialValues({});

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(body: Builder(builder: (context) => ElevatedButton(
          onPressed: () => showSearch(context: context, delegate: screens.ShoppingSearchDelegate(items)),
          child: const Text('Search'),
        ))),
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
      SharedPreferences.setMockInitialValues({});

      await tester.pumpWidget(const ProviderScope(child: app.MyApp()));

      expect(find.byType(app.MyApp), findsOneWidget);
    });

    testWidgets('main runs the app', (tester) async {
      SharedPreferences.setMockInitialValues({});

      app.main();
      await tester.pumpAndSettle();

      expect(find.byType(app.MyApp), findsOneWidget);
    });
  });

  group('ListLoader', () {
    testWidgets('shows HomeScreen when current list exists', (tester) async {
      final list = ShoppingList(id: 'list-1', name: 'Lista Teste');

      SharedPreferences.setMockInitialValues({
        'shopping_lists': jsonEncode([list.toJson()]),
        'shopping_items': jsonEncode([]),
        'current_list_id': 'list-1',
      });

      await tester.pumpWidget(wrapWithProviders(
        const app.ListLoader(),
      ));
      await tester.pumpAndSettle();

      expect(find.text('Lista Teste'), findsOneWidget);
    });

    testWidgets('shows error state', (tester) async {
      SharedPreferences.setMockInitialValues({});

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
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
