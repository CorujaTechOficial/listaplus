import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/providers/shopping_lists_provider.dart';
import 'package:shopping_list/providers/shopping_list_provider.dart';
import 'package:shopping_list/providers/budget_provider.dart';
import 'package:shopping_list/providers/current_list_provider.dart';
import 'package:shopping_list/models/category.dart';

void main() {
  group('ShoppingLists (riverpod)', () {
    late ProviderContainer container;

    setUp(() {
      SharedPreferences.setMockInitialValues({});
      container = ProviderContainer();
    });

    tearDown(() {
      container.dispose();
    });

    test('build returns empty list initially', () async {
      final lists = await container.read(shoppingListsProvider.future);
      expect(lists, isEmpty);
    });

    test('createList adds a new list', () async {
      await container.read(shoppingListsProvider.notifier).createList('Nova Lista');
      final lists = await container.read(shoppingListsProvider.future);
      expect(lists.length, 1);
      expect(lists.first.name, 'Nova Lista');
    });

    test('deleteList removes list and switches to another', () async {
      await container.read(shoppingListsProvider.notifier).createList('Lista 1');
      await container.read(shoppingListsProvider.notifier).createList('Lista 2');

      final lists = await container.read(shoppingListsProvider.future);
      await container.read(shoppingListsProvider.notifier).deleteList(lists.first.id);

      final remaining = await container.read(shoppingListsProvider.future);
      expect(remaining.length, 1);
      expect(remaining.first.name, 'Lista 2');
    });

    test('updateList modifies a list', () async {
      await container.read(shoppingListsProvider.notifier).createList('Original');
      final lists = await container.read(shoppingListsProvider.future);
      final updated = lists.first.copyWith(name: 'Modificado');
      await container.read(shoppingListsProvider.notifier).updateList(updated);

      final result = await container.read(shoppingListsProvider.future);
      expect(result.first.name, 'Modificado');
    });

    test('setCurrentList does not throw', () async {
      await container.read(shoppingListsProvider.notifier).createList('Teste');
      final lists = await container.read(shoppingListsProvider.future);
      await container.read(shoppingListsProvider.notifier).setCurrentList(lists.first.id);
    });
  });

  group('CurrentListId (riverpod)', () {
    late ProviderContainer container;

    setUp(() {
      SharedPreferences.setMockInitialValues({});
      container = ProviderContainer();
    });

    tearDown(() {
      container.dispose();
    });

    test('build returns null initially', () async {
      final id = await container.read(currentListIdProvider.future);
      expect(id, isNull);
    });

    test('setCurrentList updates the value', () async {
      await container.read(currentListIdProvider.notifier).setCurrentList('list-1');
      final id = await container.read(currentListIdProvider.future);
      expect(id, 'list-1');
    });
  });

  group('ShoppingListItems (riverpod)', () {
    late ProviderContainer container;

    setUp(() {
      SharedPreferences.setMockInitialValues({});
      container = ProviderContainer();
    });

    tearDown(() {
      container.dispose();
    });

    test('build returns empty list initially', () async {
      final items = await container.read(shoppingListItemsProvider('list-1').future);
      expect(items, isEmpty);
    });

    test('addItem creates and retrieves item', () async {
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Maçã',
        quantity: 5,
        category: Category.fruits,
      );

      final items = await container.read(shoppingListItemsProvider('list-1').future);
      expect(items.length, 1);
      expect(items.first.name, 'Maçã');
    });

    test('toggleItemPurchased toggles isPurchased', () async {
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Item',
        quantity: 1,
        category: Category.others,
      );

      final items = await container.read(shoppingListItemsProvider('list-1').future);
      await container.read(shoppingListItemsProvider('list-1').notifier).togglePurchased(items.first.id);

      final updated = await container.read(shoppingListItemsProvider('list-1').future);
      expect(updated.first.isPurchased, true);
    });

    test('deleteItem removes item', () async {
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Remover',
        quantity: 1,
        category: Category.others,
      );

      final items = await container.read(shoppingListItemsProvider('list-1').future);
      await container.read(shoppingListItemsProvider('list-1').notifier).removeItem(items.first.id);

      final remaining = await container.read(shoppingListItemsProvider('list-1').future);
      expect(remaining, isEmpty);
    });

    test('clearAll removes all items from list', () async {
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'A',
        quantity: 1,
        category: Category.others,
      );
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'B',
        quantity: 1,
        category: Category.others,
      );

      await container.read(shoppingListItemsProvider('list-1').notifier).clearAll();

      final remaining = await container.read(shoppingListItemsProvider('list-1').future);
      expect(remaining, isEmpty);
    });

    test('updateItem modifies an existing item', () async {
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Original',
        quantity: 1,
        category: Category.others,
      );

      final items = await container.read(shoppingListItemsProvider('list-1').future);
      final modified = items.first.copyWith(name: 'Modificado');
      await container.read(shoppingListItemsProvider('list-1').notifier).updateItem(modified);

      final updated = await container.read(shoppingListItemsProvider('list-1').future);
      expect(updated.first.name, 'Modificado');
    });

    test('addItem for different lists works independently', () async {
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Item da 1',
        quantity: 1,
        category: Category.others,
      );
      await container.read(shoppingListItemsProvider('list-2').notifier).addItem(
        listId: 'list-2',
        name: 'Item da 2',
        quantity: 1,
        category: Category.others,
      );

      final list1 = await container.read(shoppingListItemsProvider('list-1').future);
      expect(list1, hasLength(1));
      expect(list1.first.shoppingListId, 'list-1');
    });
  });

  group('BudgetProvider (riverpod)', () {
    late ProviderContainer container;

    setUp(() {
      SharedPreferences.setMockInitialValues({});
      container = ProviderContainer();
    });

    tearDown(() {
      container.dispose();
    });

    test('build returns null initially', () async {
      final budget = await container.read(budgetProvider('list-1').future);
      expect(budget, isNull);
    });

    test('setBudget saves and retrieves value', () async {
      await container.read(budgetProvider('list-1').notifier).setBudget('list-1', 150);
      final budget = await container.read(budgetProvider('list-1').future);
      expect(budget, 150.0);
    });

    test('clearBudget resets to null', () async {
      await container.read(budgetProvider('list-1').notifier).setBudget('list-1', 100);
      await container.read(budgetProvider('list-1').notifier).clearBudget('list-1');

      final budget = await container.read(budgetProvider('list-1').future);
      expect(budget, isNull);
    });

    test('budgets for different lists are independent', () async {
      final storage = await SharedPreferences.getInstance();
      await storage.setDouble('budget_list-1', 100);
      await storage.setDouble('budget_list-2', 200);

      container.invalidate(budgetProvider('list-1'));
      container.invalidate(budgetProvider('list-2'));

      expect(await container.read(budgetProvider('list-1').future), 100.0);
      expect(await container.read(budgetProvider('list-2').future), 200.0);
    });
  });
}
