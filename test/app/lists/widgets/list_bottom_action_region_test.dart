import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/lists/list_screen_body.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/lists/widgets/empty_state.dart';
import 'package:shopping_list/app/lists/widgets/filter_bar.dart';
import 'package:shopping_list/app/lists/widgets/kipi_quick_bar.dart';
import 'package:shopping_list/app/lists/widgets/progress_info_header.dart';
import 'package:shopping_list/app/lists/widgets/selection_bottom_bar.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/models/unit.dart';

class _FakeShoppingLists extends ShoppingLists {
  _FakeShoppingLists(this.lists);

  final List<ShoppingList> lists;

  @override
  Stream<List<ShoppingList>> build() => Stream.value(lists);
}

class _FakeShoppingListItems extends ShoppingListItems {
  _FakeShoppingListItems(this.items);

  final List<ShoppingItem> items;
  ShoppingItem? lastAddedItem;
  int? lastReorderOldIndex;
  int? lastReorderNewIndex;

  @override
  Stream<List<ShoppingItem>> build(String listId) => Stream.value(items);

  @override
  Future<void> addItem({
    required String listId,
    required String name,
    required int quantity,
    required String categoryId,
    Unit unit = Unit.un,
    double? estimatedPrice,
    String? id,
  }) async {
    lastAddedItem = ShoppingItem(
      id: id,
      shoppingListId: listId,
      name: name,
      quantity: quantity,
      categoryId: categoryId,
      unit: unit,
      estimatedPrice: estimatedPrice,
    );
  }

  @override
  Future<void> reorderItem(int oldIndex, int newIndex) async {
    lastReorderOldIndex = oldIndex;
    lastReorderNewIndex = newIndex;
  }
}

class _FakePremium extends Premium {
  @override
  Future<bool> build() async => false;
}

class _ErrorShoppingListItems extends ShoppingListItems {
  _ErrorShoppingListItems(this.error);

  final Object error;

  @override
  Stream<List<ShoppingItem>> build(String listId) => Stream.error(error);
}

void main() {
  const listId = 'list-1';

  Widget buildApp({
    required Widget child,
    required _FakeShoppingLists lists,
    required ShoppingListItems items,
  }) {
    return ProviderScope(
      overrides: [
        firestoreServiceProvider.overrideWithValue(null),
        premiumProvider.overrideWith(() => _FakePremium()),
        shoppingListsProvider.overrideWith(() => lists),
        shoppingListItemsProvider.overrideWith(() => items),
      ],
      child: MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: child,
      ),
    );
  }

  AppLocalizations l10n(WidgetTester tester) {
    return AppLocalizations.of(tester.element(find.byType(Scaffold).first))!;
  }

  testWidgets(
    'list screen keeps the bottom action region stable across modes',
    (tester) async {
      final fakeLists = _FakeShoppingLists([
        ShoppingList(id: listId, name: 'Mercado'),
      ]);
      final fakeItems = _FakeShoppingListItems([
        ShoppingItem(
          id: 'item-1',
          shoppingListId: listId,
          name: 'Leite',
          quantity: 1,
        ),
      ]);

      await tester.pumpWidget(
        buildApp(
          child: const ListScreenBody(listId: listId),
          lists: fakeLists,
          items: fakeItems,
        ),
      );
      await tester.pumpAndSettle();

      final strings = l10n(tester);

      expect(
        find.byKey(const ValueKey('list_bottom_action_shell')),
        findsOneWidget,
      );
      expect(find.text(strings.catalogBrowse), findsOneWidget);
      expect(find.text(strings.exit), findsNothing);

      await tester.tap(find.byTooltip(strings.shoppingMode));
      await tester.pumpAndSettle();

      expect(
        find.byKey(const ValueKey('list_bottom_action_shell')),
        findsOneWidget,
      );
      expect(find.text(strings.catalogBrowse), findsNothing);
      expect(find.text(strings.exit), findsOneWidget);
      expect(find.text(strings.buy), findsNothing);

      await tester.tap(find.text(strings.exit));
      await tester.pumpAndSettle();

      expect(find.text(strings.catalogBrowse), findsOneWidget);
      expect(find.text(strings.exit), findsNothing);
    },
  );

  testWidgets('selection bar keeps the shared bottom action shell', (
    tester,
  ) async {
    final fakeLists = _FakeShoppingLists(const []);
    final fakeItems = _FakeShoppingListItems(const []);

    await tester.pumpWidget(
      buildApp(
        child: Scaffold(
          bottomNavigationBar: SelectionBottomBar(
            onCancel: () {},
            onDelete: () {},
            onBuy: () {},
          ),
        ),
        lists: fakeLists,
        items: fakeItems,
      ),
    );
    await tester.pumpAndSettle();

    final strings = l10n(tester);

    expect(
      find.byKey(const ValueKey('list_bottom_action_shell')),
      findsOneWidget,
    );
    expect(find.text(strings.cancel), findsOneWidget);
    expect(find.text(strings.delete), findsOneWidget);
    expect(find.text(strings.buy), findsOneWidget);
  });

  testWidgets('selection bar keeps actions accessible on narrow widths', (
    tester,
  ) async {
    final fakeLists = _FakeShoppingLists(const []);
    final fakeItems = _FakeShoppingListItems(const []);

    await tester.binding.setSurfaceSize(const Size(320, 640));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(
      buildApp(
        child: Scaffold(
          bottomNavigationBar: SelectionBottomBar(
            onCancel: () {},
            onDelete: () {},
            onBuy: () {},
          ),
        ),
        lists: fakeLists,
        items: fakeItems,
      ),
    );
    await tester.pumpAndSettle();

    final strings = l10n(tester);

    expect(
      find.byKey(const ValueKey('list_bottom_action_shell')),
      findsOneWidget,
    );
    expect(find.byType(SingleChildScrollView), findsWidgets);
    expect(find.text(strings.cancel), findsOneWidget);
    expect(find.text(strings.delete), findsOneWidget);
    expect(find.text(strings.buy), findsOneWidget);
  });

  testWidgets(
    'quick bar restores the localized success snackbar and edit action',
    (tester) async {
      final fakeLists = _FakeShoppingLists([
        ShoppingList(id: listId, name: 'Mercado'),
      ]);
      final fakeItems = _FakeShoppingListItems(const []);

      await tester.pumpWidget(
        buildApp(
          child: const Scaffold(
            bottomNavigationBar: KipiQuickBar(listId: listId),
          ),
          lists: fakeLists,
          items: fakeItems,
        ),
      );
      await tester.pumpAndSettle();

      final strings = l10n(tester);

      await tester.enterText(find.byType(TextField), 'Banana');
      await tester.tap(find.byType(IconButton).last);
      await tester.pump();
      await tester.pumpAndSettle();

      expect(find.text(strings.itemAddedSnack('Banana')), findsOneWidget);
      expect(find.text(strings.edit), findsOneWidget);
      expect(fakeItems.lastAddedItem?.name, 'Banana');

      await tester.tap(find.text(strings.edit));
      await tester.pumpAndSettle();

      expect(find.text(strings.editItem), findsOneWidget);
    },
  );

  testWidgets(
    'manual reorder restores drag handles and maps pending indices across purchased items',
    (tester) async {
      final fakeLists = _FakeShoppingLists([
        ShoppingList(id: listId, name: 'Mercado'),
      ]);
      final fakeItems = _FakeShoppingListItems([
        ShoppingItem(
          id: 'item-1',
          shoppingListId: listId,
          name: 'Banana',
          quantity: 1,
        ),
        ShoppingItem(
          id: 'item-2',
          shoppingListId: listId,
          name: 'Cafe',
          quantity: 1,
          isPurchased: true,
        ),
        ShoppingItem(
          id: 'item-3',
          shoppingListId: listId,
          name: 'Leite',
          quantity: 1,
        ),
      ]);

      await tester.pumpWidget(
        buildApp(
          child: const ListScreenBody(listId: listId),
          lists: fakeLists,
          items: fakeItems,
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(SliverReorderableList), findsOneWidget);
      expect(find.byType(ReorderableDragStartListener), findsNWidgets(2));

      final reorderable = tester.widget<SliverReorderableList>(
        find.byType(SliverReorderableList),
      );

      expect(reorderable.onReorderItem, isNotNull);
      reorderable.onReorderItem!.call(0, 2);
      await tester.pump();

      expect(fakeItems.lastReorderOldIndex, 0);
      expect(fakeItems.lastReorderNewIndex, 3);
    },
  );

  testWidgets('summary renders inline and share lives in overflow', (
    tester,
  ) async {
    final fakeLists = _FakeShoppingLists([
      ShoppingList(id: listId, name: 'Mercado'),
    ]);
    final fakeItems = _FakeShoppingListItems([
      ShoppingItem(
        id: 'item-1',
        shoppingListId: listId,
        name: 'Banana',
        quantity: 1,
      ),
    ]);

    await tester.pumpWidget(
      buildApp(
        child: const ListScreenBody(listId: listId),
        lists: fakeLists,
        items: fakeItems,
      ),
    );
    await tester.pumpAndSettle();

    final strings = l10n(tester);

    expect(find.byTooltip(strings.inviteToList), findsNothing);
    expect(find.byType(PopupMenuButton<String>), findsOneWidget);
    expect(find.byType(ProgressInfoHeader), findsOneWidget);
    expect(
      find.ancestor(
        of: find.byType(ProgressInfoHeader),
        matching: find.byType(SliverAppBar),
      ),
      findsNothing,
    );
    expect(find.byType(SegmentedButton<FilterType>), findsNothing);

    await tester.tap(find.byType(ProgressInfoHeader));
    await tester.pumpAndSettle();

    expect(find.byType(SegmentedButton<FilterType>), findsOneWidget);

    await tester.tap(find.byTooltip(strings.shoppingMode));
    await tester.pumpAndSettle();

    expect(find.byType(ProgressInfoHeader), findsOneWidget);
    expect(find.byType(SegmentedButton<FilterType>), findsNothing);

    await tester.tap(find.byType(PopupMenuButton<String>));
    await tester.pumpAndSettle();

    expect(find.text(strings.share), findsOneWidget);
  });

  testWidgets('error state uses structured empty state messaging', (
    tester,
  ) async {
    final fakeLists = _FakeShoppingLists([
      ShoppingList(id: listId, name: 'Mercado'),
    ]);
    final errorItems = _ErrorShoppingListItems(Exception('boom'));

    await tester.pumpWidget(
      buildApp(
        child: const ListScreenBody(listId: listId),
        lists: fakeLists,
        items: errorItems,
      ),
    );
    await tester.pumpAndSettle();

    final strings = l10n(tester);

    expect(find.byType(EmptyState), findsOneWidget);
    expect(find.text(strings.errorLoadingItems), findsOneWidget);
    expect(find.text('Exception: boom'), findsOneWidget);
  });
}
