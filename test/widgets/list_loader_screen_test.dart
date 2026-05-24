import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart' show Override;
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/auth_service.dart';
import 'package:shopping_list/services/analytics_service.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'package:shopping_list/providers/auth_service_provider.dart';
import 'package:shopping_list/providers/analytics_service_provider.dart';
import 'package:shopping_list/providers/revenuecat_service_provider.dart';
import 'package:shopping_list/providers/ai_service_provider.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/screens/home_screen.dart';
import 'package:shopping_list/widgets/shopping_item_tile.dart';
import 'package:shopping_list/main.dart' show ListLoader, NoListsScreen;
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';
import '../helpers/fake_ai_service.dart';

// ---------------------------------------------------------------------------
// Helper — encapsula ProviderScope + MaterialApp em pt-BR
// ---------------------------------------------------------------------------

Widget _wrap(
  Widget child, {
  StorageBackend? backend,
  RevenueCatService? revenueCat,
}) {
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

// ---------------------------------------------------------------------------
// Tests — Tela 3 (ListLoader)
// ---------------------------------------------------------------------------

void main() {
  group('Tela 3 — ListLoader', () {
    // -----------------------------------------------------------------------
    // Caso 1: nenhuma lista cadastrada → NoListsScreen
    // -----------------------------------------------------------------------
    testWidgets(
      'exibe NoListsScreen quando não há currentListId',
      (tester) async {
        final backend = FakeStorageBackend();
        // Não define currentListId → getCurrentListId retorna null

        await tester.pumpWidget(_wrap(const ListLoader(), backend: backend));
        await tester.pumpAndSettle();

        expect(find.byType(NoListsScreen), findsOneWidget);
        expect(find.text('Nenhuma lista encontrada'), findsOneWidget);
        expect(find.text('Crie sua primeira lista para começar'), findsOneWidget);
        expect(find.text('Criar Primeira Lista'), findsOneWidget);
      },
    );

    // -----------------------------------------------------------------------
    // Caso 2: há uma lista → HomeScreen é exibida
    // -----------------------------------------------------------------------
    testWidgets(
      'exibe HomeScreen quando há currentListId configurado',
      (tester) async {
        final backend = FakeStorageBackend();
        final list = ShoppingList(id: 'list-1', name: 'Mercado');
        await backend.saveLists([list]);
        await backend.setCurrentListId('list-1');

        await tester.pumpWidget(_wrap(const ListLoader(), backend: backend));
        await tester.pumpAndSettle();

        expect(find.byType(HomeScreen), findsOneWidget);
        // O nome da lista aparece na AppBar
        expect(find.text('Mercado'), findsOneWidget);
      },
    );

    // -----------------------------------------------------------------------
    // Caso 3: HomeScreen renderiza itens corretamente (via HomeScreen direto)
    // Nota: Testamos via HomeScreen diretamente pois o ListLoader usa o
    // currentListIdProvider que resolve assíncronamente no FakeBackend.
    // -----------------------------------------------------------------------
    testWidgets(
      'ShoppingItemTile renderiza itens da lista de compras corretamente',
      (tester) async {
        final backend = FakeStorageBackend();
        final item1 = ShoppingItem(
          shoppingListId: 'list-1',
          name: 'Arroz',
          quantity: 2,
        );

        await tester.pumpWidget(_wrap(
          Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item1)),
          backend: backend,
        ));
        await tester.pumpAndSettle();

        expect(find.text('Arroz'), findsOneWidget);
        expect(find.text('2'), findsOneWidget);
        expect(find.byType(ShoppingItemTile), findsOneWidget);
      },
    );

    // -----------------------------------------------------------------------
    // Caso 4: estado sem timer pendente (evita erro de Timer pendente)
    // -----------------------------------------------------------------------
    testWidgets(
      'ListLoader carrega sem lançar exceções',
      (tester) async {
        final backend = FakeStorageBackend();

        await tester.pumpWidget(_wrap(const ListLoader(), backend: backend));
        await tester.pumpAndSettle();

        // Não deve haver exceções
        expect(tester.takeException(), isNull);
        // Deve estar em um estado estável (NoListsScreen ou HomeScreen)
        final noLists = find.byType(NoListsScreen);
        final home = find.byType(HomeScreen);
        expect(noLists.evaluate().isNotEmpty || home.evaluate().isNotEmpty, isTrue);
      },
    );

    // -----------------------------------------------------------------------
    // Caso 5: NoListsScreen — botão "Criar Primeira Lista" abre diálogo
    // -----------------------------------------------------------------------
    testWidgets(
      'NoListsScreen — botão Criar Primeira Lista abre CreateListDialog',
      (tester) async {
        final backend = FakeStorageBackend();

        await tester.pumpWidget(_wrap(const ListLoader(), backend: backend));
        await tester.pumpAndSettle();

        await tester.tap(find.text('Criar Primeira Lista'));
        await tester.pumpAndSettle();

        // O diálogo de criação de lista deve aparecer
        expect(find.text('Criar Lista'), findsOneWidget);
        expect(find.text('Criar'), findsOneWidget);
        expect(find.text('Cancelar'), findsOneWidget);
      },
    );

    // -----------------------------------------------------------------------
    // Caso 6: NoListsScreen — criação de lista via diálogo muda para HomeScreen
    // -----------------------------------------------------------------------
    testWidgets(
      'NoListsScreen — criar lista via diálogo navega para HomeScreen',
      (tester) async {
        final backend = FakeStorageBackend();

        await tester.pumpWidget(_wrap(const ListLoader(), backend: backend));
        await tester.pumpAndSettle();

        // Abre o diálogo
        await tester.tap(find.text('Criar Primeira Lista'));
        await tester.pumpAndSettle();

        // Digita o nome e confirma
        await tester.enterText(find.byType(TextField), 'Minha Lista');
        await tester.tap(find.text('Criar'));
        await tester.pumpAndSettle();

        // Após criar, o ListLoader deve renderizar HomeScreen
        expect(find.byType(HomeScreen), findsOneWidget);
      },
    );

    // -----------------------------------------------------------------------
    // Caso 7: lista vazia → EmptyState é exibido dentro do HomeScreen
    // -----------------------------------------------------------------------
    testWidgets(
      'HomeScreen exibe EmptyState quando a lista está vazia',
      (tester) async {
        final backend = FakeStorageBackend();
        final list = ShoppingList(id: 'list-1', name: 'Lista Vazia');
        await backend.saveLists([list]);
        await backend.setCurrentListId('list-1');
        // Sem itens

        await tester.pumpWidget(_wrap(const ListLoader(), backend: backend));
        await tester.pumpAndSettle();

        expect(find.text('Sua lista está vazia'), findsOneWidget);
      },
    );

    // -----------------------------------------------------------------------
    // Caso 8: FAB de adicionar item visível na HomeScreen (via HomeScreen direto)
    // O FAB pode ficar fora da tela quando dentro de ListLoader; testamos
    // diretamente no HomeScreen para garantir que ele existe.
    // -----------------------------------------------------------------------
    testWidgets(
      'HomeScreen exibe FloatingActionButton para adicionar item',
      (tester) async {
        final backend = FakeStorageBackend();
        final list = ShoppingList(id: 'list-1', name: 'Lista');
        await backend.saveLists([list]);
        await backend.setCurrentListId('list-1');

        await tester.pumpWidget(_wrap(
          const HomeScreen(listId: 'list-1'),
          backend: backend,
        ));
        await tester.pumpAndSettle();

        expect(find.byType(FloatingActionButton), findsOneWidget);
      },
    );

    // -----------------------------------------------------------------------
    // Caso 9: FAB abre diálogo de adicionar item (via HomeScreen direto)
    // -----------------------------------------------------------------------
    testWidgets(
      'HomeScreen — FAB abre dialog Adicionar Item',
      (tester) async {
        final backend = FakeStorageBackend();
        final list = ShoppingList(id: 'list-1', name: 'Lista');
        await backend.saveLists([list]);
        await backend.setCurrentListId('list-1');

        await tester.pumpWidget(_wrap(
          const HomeScreen(listId: 'list-1'),
          backend: backend,
        ));
        await tester.pumpAndSettle();

        final fab = find.byType(FloatingActionButton);
        await tester.ensureVisible(fab);
        await tester.tap(fab, warnIfMissed: false);
        await tester.pumpAndSettle();

        expect(find.text('Adicionar Item'), findsOneWidget);
      },
    );

    // -----------------------------------------------------------------------
    // Caso 10: AppBar mostra nome da lista atual
    // -----------------------------------------------------------------------
    testWidgets(
      'HomeScreen — AppBar mostra o nome da lista configurada',
      (tester) async {
        final backend = FakeStorageBackend();
        final list = ShoppingList(id: 'list-abc', name: 'Supermercado Extra');
        await backend.saveLists([list]);
        await backend.setCurrentListId('list-abc');

        await tester.pumpWidget(_wrap(const ListLoader(), backend: backend));
        await tester.pumpAndSettle();

        expect(find.text('Supermercado Extra'), findsOneWidget);
      },
    );

    // -----------------------------------------------------------------------
    // Caso 11: AppBar tem botão de menu (more_vert)
    // -----------------------------------------------------------------------
    testWidgets(
      'HomeScreen — AppBar contém PopupMenuButton com ícone more_vert',
      (tester) async {
        final backend = FakeStorageBackend();
        final list = ShoppingList(id: 'list-1', name: 'Lista');
        await backend.saveLists([list]);
        await backend.setCurrentListId('list-1');

        await tester.pumpWidget(_wrap(const ListLoader(), backend: backend));
        await tester.pumpAndSettle();

        expect(find.byIcon(Icons.more_vert), findsOneWidget);
      },
    );

    // -----------------------------------------------------------------------
    // Caso 12: itens marcados como comprados aparecem com estilo riscado
    // Usamos HomeScreen diretamente pois o texto pode estar em widget
    // deslocado fora do viewport no ListLoader.
    // -----------------------------------------------------------------------
    testWidgets(
      'ShoppingItemTile — item comprado exibe estilo de texto riscado',
      (tester) async {
        final backend = FakeStorageBackend();
        final item = ShoppingItem(
          shoppingListId: 'list-1',
          name: 'Comprado',
          quantity: 1,
          isPurchased: true,
        );

        await tester.pumpWidget(_wrap(
          Scaffold(body: ShoppingItemTile(listId: 'list-1', item: item)),
          backend: backend,
        ));
        await tester.pumpAndSettle();

        // O texto 'Comprado' deve estar visível
        expect(find.text('Comprado'), findsOneWidget);
        // Deve ter o estilo lineThrough
        final title = tester.widget<Text>(find.text('Comprado'));
        expect(title.style?.decoration, TextDecoration.lineThrough);
      },
    );
  });
}
