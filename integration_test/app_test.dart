import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integration_test/integration_test.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:shopping_list/main.dart' as app;
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/providers/revenuecat_service_provider.dart';
import 'package:shopping_list/providers/auth_service_provider.dart';
import 'package:shopping_list/services/auth_service.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/category.dart';
import 'package:shopping_list/models/unit.dart';
import 'package:shopping_list/widgets/empty_state.dart';
import 'package:shopping_list/widgets/shopping_item_tile.dart';
import '../test/helpers/fake_storage_backend.dart';
import '../test/helpers/fake_revenuecat_service.dart';

FakeStorageBackend createBackend() => FakeStorageBackend();

extension PumpToEmpty on WidgetTester {
  Future<void> pumpTestApp({FakeStorageBackend? backend}) {
    final b = backend ?? createBackend();
    final revenueCat = FakeRevenueCatService();
    revenueCat.setIsPremium(true);
    return pumpWidget(
      ProviderScope(
        overrides: [
          firestoreServiceProvider.overrideWithValue(b),
          revenueCatServiceProvider.overrideWithValue(revenueCat),
          authServiceProvider.overrideWithValue(AuthService(auth: MockFirebaseAuth())),
        ],
        child: const app.MyApp(),
      ),
    );
  }
}

Future<String> _createDefaultList(WidgetTester tester) async {
  await tester.tap(find.text('Criar Primeira Lista'));
  await tester.pumpAndSettle();
  await tester.enterText(find.byType(TextField), 'Compras');
  await tester.tap(find.text('Criar'));
  await tester.pumpAndSettle();
  return 'Compras';
}

Future<void> _addItem(WidgetTester tester, String name) async {
  await tester.tap(find.byType(FloatingActionButton));
  await tester.pumpAndSettle();
  await tester.enterText(find.byType(TextFormField).first, name);
  await tester.tap(find.text('Adicionar'));
  await tester.pumpAndSettle();
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Fluxo completo', () {
    testWidgets('cria lista, adiciona itens, marca comprado, filtra, deleta', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      expect(find.text('Nenhuma lista encontrada'), findsOneWidget);
      expect(find.text('Criar Primeira Lista'), findsOneWidget);

      await _createDefaultList(tester);

      expect(find.text('Compras'), findsAtLeastNWidgets(1));
      expect(find.byType(EmptyState), findsOneWidget);

      await _addItem(tester, 'Arroz');
      expect(find.text('Arroz'), findsOneWidget);

      await _addItem(tester, 'Feijão');
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
    testWidgets('define e remove orçamento com progresso', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      await _createDefaultList(tester);

      await _addItem(tester, 'Item Caro');

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
    testWidgets('filtra itens pela busca', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      await _createDefaultList(tester);

      for (final name in ['Maçã', 'Banana', 'Arroz']) {
        await _addItem(tester, name);
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
    testWidgets('alterna listas pelo drawer', (tester) async {
      final backend = createBackend();
      final listA = ShoppingList(name: 'Lista A');
      final listB = ShoppingList(name: 'Lista B');
      final itemA = ShoppingItem(
        name: 'Item da A',
        shoppingListId: listA.id,
        quantity: 1,
        category: Category.others,
      );
      await backend.saveLists([listA, listB]);
      await backend.saveItems([itemA]);
      await backend.setCurrentListId(listA.id);

      await tester.pumpTestApp(backend: backend);
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
    testWidgets('adiciona item com kg e exibe no tile', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      await _createDefaultList(tester);

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
    testWidgets('remove apenas itens comprados', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      await _createDefaultList(tester);

      await _addItem(tester, 'Item A');
      await _addItem(tester, 'Item B');

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
    testWidgets('menu compartilhar está presente', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      await _createDefaultList(tester);

      await _addItem(tester, 'Item');

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      expect(find.text('Compartilhar'), findsOneWidget);
    });
  });

  group('Editar item', () {
    testWidgets('abre edição, altera nome e salva', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      await _createDefaultList(tester);

      await _addItem(tester, 'Arroz');

      expect(find.text('Arroz'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.edit));
      await tester.pumpAndSettle();

      expect(find.text('Editar Item'), findsOneWidget);

      await tester.enterText(find.byType(TextFormField).first, 'Arroz Integral');
      await tester.tap(find.text('Salvar'));
      await tester.pumpAndSettle();

      expect(find.text('Arroz Integral'), findsOneWidget);
      expect(find.text('Arroz'), findsNothing);
    });
  });

  group('Renomear lista', () {
    testWidgets('renomeia lista pelo drawer', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      await _createDefaultList(tester);

      expect(find.text('Compras'), findsAtLeastNWidgets(1));

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      await tester.tap(find.descendant(
        of: find.widgetWithText(ListTile, 'Compras'),
        matching: find.byIcon(Icons.more_vert),
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Renomear'));
      await tester.pumpAndSettle();

      expect(find.text('Renomear Lista'), findsOneWidget);

      await tester.enterText(find.byType(TextField), 'Mercado');
      await tester.tap(find.text('Salvar'));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      expect(find.text('Mercado'), findsAtLeastNWidgets(1));
    });
  });

  group('Excluir lista', () {
    testWidgets('exclui lista não atual pelo drawer', (tester) async {
      final backend = createBackend();
      final listA = ShoppingList(name: 'Lista A');
      final listB = ShoppingList(name: 'Lista B');
      await backend.saveLists([listA, listB]);
      await backend.setCurrentListId(listA.id);

      await tester.pumpTestApp(backend: backend);
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      expect(find.text('Lista B'), findsOneWidget);

      await tester.tap(find.descendant(
        of: find.widgetWithText(ListTile, 'Lista B'),
        matching: find.byIcon(Icons.more_vert),
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Excluir'));
      await tester.pumpAndSettle();

      expect(find.text('Excluir Lista'), findsOneWidget);

      await tester.tap(find.text('Excluir'));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      expect(find.text('Lista B'), findsNothing);
      expect(find.text('Lista A'), findsAtLeastNWidgets(1));
    });

    testWidgets('exclui lista atual e alterna para outra', (tester) async {
      final backend = createBackend();
      final listA = ShoppingList(name: 'Lista A');
      final listB = ShoppingList(name: 'Lista B');
      await backend.saveLists([listA, listB]);
      await backend.setCurrentListId(listA.id);

      await tester.pumpTestApp(backend: backend);
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      await tester.tap(find.descendant(
        of: find.widgetWithText(ListTile, 'Lista A'),
        matching: find.byIcon(Icons.more_vert),
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Excluir'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Excluir'));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      expect(find.text('Lista A'), findsNothing);
      expect(find.text('Lista B'), findsAtLeastNWidgets(1));
      expect(find.byIcon(Icons.check), findsAtLeastNWidgets(1));
    });
  });

  group('Busca funcional', () {
    testWidgets('itens na busca podem ser marcados como comprados', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      await _createDefaultList(tester);

      for (final name in ['Maçã', 'Banana']) {
        await _addItem(tester, name);
      }

      await tester.tap(find.byIcon(Icons.search));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Maç');
      await tester.pumpAndSettle();

      expect(find.text('Maçã'), findsOneWidget);

      await tester.tap(find.byType(CheckboxListTile));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.arrow_back));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Comprados'));
      await tester.pumpAndSettle();

      expect(find.text('Maçã'), findsOneWidget);
      expect(find.text('Banana'), findsNothing);
    });
  });

  group('Desfazer exclusão', () {
    testWidgets('swipe remove item e desfaz com snackbar', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      await _createDefaultList(tester);

      await _addItem(tester, 'Item Restaurado');

      expect(find.text('Item Restaurado'), findsOneWidget);

      await tester.fling(
        find.byType(Dismissible),
        const Offset(-500, 0),
        1000,
      );
      await tester.pumpAndSettle();

      expect(find.text('Item Restaurado'), findsNothing);
      expect(find.text('Item removido'), findsOneWidget);

      await tester.tap(find.text('Desfazer'));
      await tester.pumpAndSettle();

      expect(find.text('Item Restaurado'), findsOneWidget);
    });
  });

  group('Modo escuro', () {
    testWidgets('alterna modo escuro pelo drawer', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      await _createDefaultList(tester);

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      expect(find.text('Modo escuro'), findsOneWidget);

      await tester.tap(find.byType(Switch));
      await tester.pumpAndSettle();
    });
  });

  group('Pull-to-refresh', () {
    testWidgets('arrastar para recarregar não quebra', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      await _createDefaultList(tester);

      await _addItem(tester, 'Item');

      expect(find.byType(RefreshIndicator), findsOneWidget);

      await tester.fling(
        find.byType(ListView),
        const Offset(0, 300),
        1000,
      );
      await tester.pumpAndSettle();

      expect(find.text('Item'), findsOneWidget);
    });
  });

  group('Quantidade +/-', () {
    testWidgets('botões mais e menos alteram quantidade', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      await _createDefaultList(tester);

      await _addItem(tester, 'Arroz');

      expect(find.text('1'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();

      expect(find.text('2'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();

      expect(find.text('3'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.remove));
      await tester.pumpAndSettle();

      expect(find.text('2'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.remove));
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pumpAndSettle();

      expect(find.text('1'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.remove));
      await tester.pumpAndSettle();

      expect(find.text('1'), findsOneWidget);
    });
  });

  group('Seleção múltipla', () {
    testWidgets('seleciona, marca como comprado e remove em lote', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      await _createDefaultList(tester);

      for (final name in ['Arroz', 'Feijão', 'Macarrão']) {
        await _addItem(tester, name);
      }

      expect(find.text('Arroz'), findsOneWidget);
      expect(find.text('Feijão'), findsOneWidget);
      expect(find.text('Macarrão'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.checklist));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(CheckboxListTile).first);
      await tester.pumpAndSettle();

      expect(find.byType(BottomAppBar), findsOneWidget);
      expect(find.text('1 selecionado'), findsOneWidget);

      await tester.tap(find.text('Comprar'));
      await tester.pumpAndSettle();

      expect(find.byType(BottomAppBar), findsNothing);

      await tester.tap(find.byIcon(Icons.checklist));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(CheckboxListTile).last);
      await tester.pumpAndSettle();
      await tester.tap(find.byType(CheckboxListTile).first);
      await tester.pumpAndSettle();

      expect(find.text('2 selecionados'), findsOneWidget);

      await tester.tap(find.text('Excluir'));
      await tester.pumpAndSettle();

      expect(find.text('Confirmar'), findsOneWidget);

      await tester.tap(find.text('Remover'));
      await tester.pumpAndSettle();

      expect(find.byType(ShoppingItemTile), findsOneWidget);
      expect(find.byIcon(Icons.checklist), findsOneWidget);
    });
  });

  group('Ordenação manual', () {
    testWidgets('altera ordenação para Manual', (tester) async {
      await tester.pumpTestApp();
      await tester.pumpAndSettle();

      await _createDefaultList(tester);

      await _addItem(tester, 'Item A');
      await _addItem(tester, 'Item B');

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
