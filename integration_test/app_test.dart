import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integration_test/integration_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/main.dart' as app;
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/category.dart';
import 'package:shopping_list/models/unit.dart';
import 'package:shopping_list/widgets/empty_state.dart';
import 'package:shopping_list/widgets/shopping_item_tile.dart';

Future<void> cleanStorage() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove('shopping_lists');
  await prefs.remove('shopping_items');
  await prefs.remove('current_list_id');
  final keys = prefs.getKeys().toList();
  for (final key in keys) {
    if (key.startsWith('budget_')) {
      await prefs.remove(key);
    }
  }
}

extension PumpToEmpty on WidgetTester {
  Future<void> pumpApp() async {
    await pumpWidget(const ProviderScope(child: app.MyApp()));
    await pumpAndSettle();
  }
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Fluxo completo', () {
    setUp(() async {
      await cleanStorage();
    });

    testWidgets('cria lista, adiciona itens, marca comprado, filtra, deleta', (tester) async {
      await tester.pumpApp();

      expect(find.text('Nenhuma lista encontrada'), findsOneWidget);
      expect(find.text('Criar Primeira Lista'), findsOneWidget);

      await tester.tap(find.text('Criar Primeira Lista'));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Compras');
      await tester.tap(find.text('Criar'));
      await tester.pumpAndSettle();

      expect(find.text('Compras'), findsAtLeastNWidgets(1));
      expect(find.byType(EmptyState), findsOneWidget);

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      expect(find.text('Adicionar Item'), findsOneWidget);

      await tester.enterText(find.byType(TextFormField).first, 'Arroz');
      await tester.tap(find.text('Adicionar'));
      await tester.pumpAndSettle();

      expect(find.text('Arroz'), findsOneWidget);

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextFormField).first, 'Feijão');
      await tester.tap(find.text('Adicionar'));
      await tester.pumpAndSettle();

      expect(find.text('Feijão'), findsOneWidget);

      await tester.tap(find.text('Arroz'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Pendentes'));
      await tester.pumpAndSettle();

      expect(find.text('Arroz'), findsNothing);

      await tester.tap(find.text('Todos'));
      await tester.pumpAndSettle();

      expect(find.text('Arroz'), findsOneWidget);
      expect(find.text('Feijão'), findsOneWidget);

      await tester.tap(find.text('Comprados'));
      await tester.pumpAndSettle();

      expect(find.text('Feijão'), findsNothing);

      await tester.tap(find.text('Todos'));
      await tester.pumpAndSettle();

      await tester.fling(
        find.text('Feijão'),
        const Offset(-500, 0),
        1000,
      );
      await tester.pumpAndSettle();

      expect(find.text('Feijão'), findsNothing);

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Limpar lista'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Remover'));
      await tester.pumpAndSettle();

      expect(find.byType(EmptyState), findsOneWidget);
    });
  });

  group('Orçamento', () {
    setUp(() async {
      await cleanStorage();
    });

    testWidgets('define e remove orçamento com progresso', (tester) async {
      await tester.pumpApp();

      await tester.tap(find.text('Criar Primeira Lista'));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Compras');
      await tester.tap(find.text('Criar'));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextFormField).first, 'Item Caro');
      await tester.tap(find.text('Adicionar'));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.account_balance_wallet));
      await tester.pumpAndSettle();

      expect(find.text('Orçamento Mensal'), findsOneWidget);

      await tester.enterText(find.byType(TextField), '500');
      await tester.tap(find.text('Salvar'));
      await tester.pumpAndSettle();

      expect(find.byType(LinearProgressIndicator), findsOneWidget);

      await tester.tap(find.byIcon(Icons.account_balance_wallet));
      await tester.pumpAndSettle();

      expect(find.text('Remover'), findsOneWidget);

      await tester.tap(find.text('Remover'));
      await tester.pumpAndSettle();

      expect(find.byType(LinearProgressIndicator), findsNothing);
    });
  });

  group('Busca', () {
    setUp(() async {
      await cleanStorage();
    });

    testWidgets('filtra itens pela busca', (tester) async {
      await tester.pumpApp();

      await tester.tap(find.text('Criar Primeira Lista'));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Compras');
      await tester.tap(find.text('Criar'));
      await tester.pumpAndSettle();

      for (final name in ['Maçã', 'Banana', 'Arroz']) {
        await tester.tap(find.byType(FloatingActionButton));
        await tester.pumpAndSettle();

        await tester.enterText(find.byType(TextFormField).first, name);
        await tester.tap(find.text('Adicionar'));
        await tester.pumpAndSettle();
      }

      await tester.tap(find.byIcon(Icons.search));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Maç');
      await tester.pumpAndSettle();

      expect(find.text('Maçã'), findsOneWidget);
      expect(find.text('Banana'), findsNothing);
      expect(find.text('Arroz'), findsNothing);

      await tester.tap(find.byIcon(Icons.clear));
      await tester.pumpAndSettle();

      expect(find.text('Maçã'), findsOneWidget);
      expect(find.text('Banana'), findsOneWidget);
      expect(find.text('Arroz'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.arrow_back));
      await tester.pumpAndSettle();
    });
  });

  group('Drawer e múltiplas listas', () {
    setUp(() async {
      await cleanStorage();
    });

    testWidgets('alterna listas pelo drawer', (tester) async {
      await cleanStorage();

      final listA = ShoppingList(name: 'Lista A');
      final listB = ShoppingList(name: 'Lista B');
      final itemA = ShoppingItem(
        name: 'Item da A',
        shoppingListId: listA.id,
        quantity: 1,
        category: Category.others,
      );

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
        'shopping_lists',
        json.encode([listA.toJson(), listB.toJson()]),
      );
      await prefs.setString('current_list_id', listA.id);
      await prefs.setString(
        'shopping_items',
        json.encode([itemA.toJson()]),
      );

      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(home: app.ListLoader()),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Item da A'), findsOneWidget);
      expect(find.text('Lista A'), findsAtLeastNWidgets(1));

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      expect(find.text('Minhas Listas'), findsOneWidget);
      expect(find.text('Lista A'), findsAtLeastNWidgets(1));
      expect(find.text('Lista B'), findsAtLeastNWidgets(1));
      expect(find.byIcon(Icons.check), findsAtLeastNWidgets(1));

      await tester.tap(find.text('Lista B'));
      await tester.pumpAndSettle();

      expect(find.text('Item da A'), findsNothing);
      expect(find.byType(EmptyState), findsOneWidget);

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Lista A'));
      await tester.pumpAndSettle();

      expect(find.text('Item da A'), findsOneWidget);
    });
  });

  group('Unidade de medida', () {
    setUp(() async {
      await cleanStorage();
    });

    testWidgets('adiciona item com kg e exibe no tile', (tester) async {
      await tester.pumpApp();

      await tester.tap(find.text('Criar Primeira Lista'));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Compras');
      await tester.tap(find.text('Criar'));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextFormField).first, 'Arroz');

      await tester.tap(find.byType(DropdownButtonFormField<Unit>));
      await tester.pumpAndSettle();
      await tester.tap(find.text('kg').last);
      await tester.pumpAndSettle();

      await tester.tap(find.text('Adicionar'));
      await tester.pumpAndSettle();

      expect(find.text('Arroz'), findsOneWidget);
      expect(find.textContaining('1kg'), findsOneWidget);
    });
  });

  group('Limpar comprados', () {
    setUp(() async {
      await cleanStorage();
    });

    testWidgets('remove apenas itens comprados', (tester) async {
      await tester.pumpApp();

      await tester.tap(find.text('Criar Primeira Lista'));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Compras');
      await tester.tap(find.text('Criar'));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextFormField).first, 'Item A');
      await tester.tap(find.text('Adicionar'));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextFormField).first, 'Item B');
      await tester.tap(find.text('Adicionar'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Item A'));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Limpar comprados'));
      await tester.pumpAndSettle();

      expect(find.text('Item A'), findsNothing);
      expect(find.text('Item B'), findsOneWidget);
    });
  });

  group('Compartilhar', () {
    setUp(() async {
      await cleanStorage();
    });

    testWidgets('menu compartilhar está presente', (tester) async {
      await tester.pumpApp();

      await tester.tap(find.text('Criar Primeira Lista'));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Compras');
      await tester.tap(find.text('Criar'));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextFormField).first, 'Item');
      await tester.tap(find.text('Adicionar'));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      expect(find.text('Compartilhar'), findsOneWidget);
    });
  });

  group('Ordenação manual', () {
    setUp(() async {
      await cleanStorage();
    });

    testWidgets('altera ordenação para Manual', (tester) async {
      await tester.pumpApp();

      await tester.tap(find.text('Criar Primeira Lista'));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Compras');
      await tester.tap(find.text('Criar'));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextFormField).first, 'Item A');
      await tester.tap(find.text('Adicionar'));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextFormField).first, 'Item B');
      await tester.tap(find.text('Adicionar'));
      await tester.pumpAndSettle();

      expect(find.byType(ShoppingItemTile), findsNWidgets(2));

      await tester.tap(find.text('Data'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Manual').last);
      await tester.pumpAndSettle();

      expect(find.byType(ShoppingItemTile), findsNWidgets(2));
      expect(find.text('Item A'), findsOneWidget);
      expect(find.text('Item B'), findsOneWidget);
    });
  });
}
