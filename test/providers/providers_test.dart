import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:shopping_list/providers/shopping_lists_provider.dart';
import 'package:shopping_list/providers/shopping_list_provider.dart';
import 'package:shopping_list/providers/current_list_provider.dart';
import 'package:shopping_list/providers/dark_mode_provider.dart';
import 'package:shopping_list/providers/premium_provider.dart';
import 'package:shopping_list/providers/auth_service_provider.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/providers/credits_provider.dart';
import 'package:shopping_list/providers/monthly_budget_provider.dart';
import 'package:shopping_list/providers/theme_color_provider.dart';
import 'package:shopping_list/providers/revenuecat_service_provider.dart';
import 'package:shopping_list/services/auth_service.dart';
import 'package:shopping_list/models/category.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';

void main() {
  group('ShoppingLists (riverpod)', () {
    late ProviderContainer container;
    late FakeStorageBackend fakeBackend;
    late FakeRevenueCatService fakeRevenueCat;

    setUp(() {
      fakeBackend = FakeStorageBackend();
      fakeRevenueCat = FakeRevenueCatService();
      container = ProviderContainer(overrides: [
        firestoreServiceProvider.overrideWithValue(fakeBackend),
        revenueCatServiceProvider.overrideWithValue(fakeRevenueCat),
      ]);
    });

    tearDown(() {
      container.dispose();
    });

    test('build returns empty list initially', () async {
      final lists = await container.read(shoppingListsProvider.future);
      expect(lists, isEmpty);
    });

    test('createList adds a new list', () async {
      await container.read(shoppingListsProvider.future);
      await container.read(shoppingListsProvider.notifier).createList('Nova Lista');
      final lists = await fakeBackend.loadLists();
      expect(lists.length, 1);
      expect(lists.first.name, 'Nova Lista');
    });

    test('createList throws when free user has 3 lists', () async {
      await container.read(shoppingListsProvider.future);
      await container.read(shoppingListsProvider.notifier).createList('Lista 1');
      await container.read(shoppingListsProvider.notifier).createList('Lista 2');
      await container.read(shoppingListsProvider.notifier).createList('Lista 3');
      expect(
        () async => container.read(shoppingListsProvider.notifier).createList('Lista 4'),
        throwsException,
      );
    });

    test('deleteList removes list and switches to another', () async {
      await container.read(shoppingListsProvider.future);
      final l1 = await container.read(shoppingListsProvider.notifier).createList('Lista 1');
      await container.read(shoppingListsProvider.notifier).createList('Lista 2');

      await container.read(shoppingListsProvider.notifier).deleteList(l1.id);

      final remaining = await fakeBackend.loadLists();
      expect(remaining.length, 1);
      expect(remaining.first.name, 'Lista 2');
    });

    test('updateList modifies a list', () async {
      await container.read(shoppingListsProvider.future);
      final l1 = await container.read(shoppingListsProvider.notifier).createList('Original');
      final updated = l1.copyWith(name: 'Modificado');
      await container.read(shoppingListsProvider.notifier).updateList(updated);

      final result = await fakeBackend.loadLists();
      expect(result.first.name, 'Modificado');
    });

    test('setCurrentList does not throw', () async {
      await container.read(shoppingListsProvider.future);
      await container.read(shoppingListsProvider.notifier).createList('Teste');
      await container.read(shoppingListsProvider.notifier).setCurrentList('test-id');
      final id = await fakeBackend.getCurrentListId();
      expect(id, 'test-id');
    });
  });

  group('CurrentListId (riverpod)', () {
    late ProviderContainer container;
    late FakeStorageBackend fakeBackend;

    setUp(() {
      fakeBackend = FakeStorageBackend();
      container = ProviderContainer(overrides: [
        firestoreServiceProvider.overrideWithValue(fakeBackend),
      ]);
    });

    tearDown(() {
      container.dispose();
    });

    test('build returns null initially', () async {
      final id = await container.read(currentListIdProvider.future);
      expect(id, isNull);
    });

    test('setCurrentList updates the value', () async {
      await container.read(currentListIdProvider.future);
      await container.read(currentListIdProvider.notifier).setCurrentList('list-1');
      final id = await fakeBackend.getCurrentListId();
      expect(id, 'list-1');
    });
  });

  group('ShoppingListItems (riverpod)', () {
    late ProviderContainer container;
    late FakeStorageBackend fakeBackend;

    setUp(() {
      fakeBackend = FakeStorageBackend();
      container = ProviderContainer(overrides: [
        firestoreServiceProvider.overrideWithValue(fakeBackend),
      ]);
    });

    tearDown(() {
      container.dispose();
    });

    test('build returns empty list initially', () async {
      final items = await container.read(shoppingListItemsProvider('list-1').future);
      expect(items, isEmpty);
    });

    test('addItem creates and retrieves item', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Maçã',
        quantity: 5,
        category: Category.fruits,
      );
      final items = await fakeBackend.loadItems('list-1');
      expect(items.length, 1);
      expect(items.first.name, 'Maçã');
    });

    test('toggleItemPurchased toggles isPurchased', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Item',
        quantity: 1,
        category: Category.others,
      );
      final itemsBefore = await fakeBackend.loadItems('list-1');
      await container.read(shoppingListItemsProvider('list-1').notifier).togglePurchased(itemsBefore.first.id);

      final updated = await fakeBackend.loadItems('list-1');
      expect(updated.first.isPurchased, true);
    });

    test('deleteItem removes item', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Remover',
        quantity: 1,
        category: Category.others,
      );
      final items = await fakeBackend.loadItems('list-1');
      await container.read(shoppingListItemsProvider('list-1').notifier).removeItem(items.first.id);

      final remaining = await fakeBackend.loadItems('list-1');
      expect(remaining, isEmpty);
    });

    test('clearPurchased removes only purchased items', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Pendente',
        quantity: 1,
        category: Category.others,
      );
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Comprado',
        quantity: 1,
        category: Category.others,
      );
      final items = await fakeBackend.loadItems('list-1');
      await container.read(shoppingListItemsProvider('list-1').notifier).togglePurchased(items.last.id);
      await container.read(shoppingListItemsProvider('list-1').notifier).clearPurchased();

      final remaining = await fakeBackend.loadItems('list-1');
      expect(remaining.length, 1);
      expect(remaining.first.name, 'Pendente');
    });

    test('reorderItem moves item down (oldIndex < newIndex)', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Item A',
        quantity: 1,
        category: Category.others,
      );
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Item B',
        quantity: 1,
        category: Category.others,
      );
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Item C',
        quantity: 1,
        category: Category.others,
      );
      await container.read(shoppingListItemsProvider('list-1').notifier).reorderItem(0, 2);
      final items = await fakeBackend.loadItems('list-1');
      expect(items[0].name, 'Item B');
      expect(items[1].name, 'Item A');
      expect(items[2].name, 'Item C');
    });

    test('reorderItem moves item up (oldIndex > newIndex)', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Item A',
        quantity: 1,
        category: Category.others,
      );
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Item B',
        quantity: 1,
        category: Category.others,
      );

      await container.read(shoppingListItemsProvider('list-1').notifier).reorderItem(1, 0);
      final items = await fakeBackend.loadItems('list-1');
      expect(items.first.name, 'Item B');
    });

    test('clearAll removes all items from list', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
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

      final remaining = await fakeBackend.loadItems('list-1');
      expect(remaining, isEmpty);
    });

    test('updateItem modifies an existing item', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Original',
        quantity: 1,
        category: Category.others,
      );
      final items = await fakeBackend.loadItems('list-1');
      final modified = items.first.copyWith(name: 'Modificado');
      await container.read(shoppingListItemsProvider('list-1').notifier).updateItem(modified);

      final updated = await fakeBackend.loadItems('list-1');
      expect(updated.first.name, 'Modificado');
    });

    test('incrementQuantity increases quantity by 1', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Item',
        quantity: 3,
        category: Category.others,
      );
      final items = await fakeBackend.loadItems('list-1');
      await container.read(shoppingListItemsProvider('list-1').notifier).incrementQuantity(items.first.id);
      final updated = await fakeBackend.loadItems('list-1');
      expect(updated.first.quantity, 4);
    });

    test('decrementQuantity decreases quantity by 1', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Item',
        quantity: 3,
        category: Category.others,
      );
      final items = await fakeBackend.loadItems('list-1');
      await container.read(shoppingListItemsProvider('list-1').notifier).decrementQuantity(items.first.id);
      final updated = await fakeBackend.loadItems('list-1');
      expect(updated.first.quantity, 2);
    });

    test('decrementQuantity does not go below 1', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Item',
        quantity: 1,
        category: Category.others,
      );
      final items = await fakeBackend.loadItems('list-1');
      await container.read(shoppingListItemsProvider('list-1').notifier).decrementQuantity(items.first.id);
      final updated = await fakeBackend.loadItems('list-1');
      expect(updated.first.quantity, 1);
    });

    test('removeItems removes multiple items by id', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
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
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'C',
        quantity: 1,
        category: Category.others,
      );
      final items = await fakeBackend.loadItems('list-1');
      final ids = [items[0].id, items[2].id];
      await container.read(shoppingListItemsProvider('list-1').notifier).removeItems(ids);

      final remaining = await fakeBackend.loadItems('list-1');
      expect(remaining.length, 1);
      expect(remaining.first.name, 'B');
    });

    test('togglePurchasedBatch marks multiple items as purchased', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
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
      final items = await fakeBackend.loadItems('list-1');
      final ids = items.map((e) => e.id).toList();
      await container.read(shoppingListItemsProvider('list-1').notifier).togglePurchasedBatch(ids, true);

      final updated = await fakeBackend.loadItems('list-1');
      expect(updated.every((e) => e.isPurchased), true);
    });

    test('togglePurchasedBatch marks multiple items as unpurchased', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
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
      final items = await fakeBackend.loadItems('list-1');
      final ids = items.map((e) => e.id).toList();
      await container.read(shoppingListItemsProvider('list-1').notifier).togglePurchasedBatch(ids, true);
      await container.read(shoppingListItemsProvider('list-1').notifier).togglePurchasedBatch(ids, false);

      final updated = await fakeBackend.loadItems('list-1');
      expect(updated.every((e) => !e.isPurchased), true);
    });

    test('restoreItem adds back a removed item', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
      await container.read(shoppingListItemsProvider('list-1').notifier).addItem(
        listId: 'list-1',
        name: 'Item',
        quantity: 1,
        category: Category.others,
      );
      final items = await fakeBackend.loadItems('list-1');
      await container.read(shoppingListItemsProvider('list-1').notifier).removeItem(items.first.id);

      final remaining = await fakeBackend.loadItems('list-1');
      expect(remaining, isEmpty);

      await container.read(shoppingListItemsProvider('list-1').notifier).restoreItem(items.first);

      final restored = await fakeBackend.loadItems('list-1');
      expect(restored.length, 1);
      expect(restored.first.name, 'Item');
    });

    test('addItem for different lists works independently', () async {
      await container.read(shoppingListItemsProvider('list-1').future);
      await container.read(shoppingListItemsProvider('list-2').future);
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

      final list1 = await fakeBackend.loadItems('list-1');
      expect(list1, hasLength(1));
      expect(list1.first.shoppingListId, 'list-1');
    });
  });

  group('DarkMode (riverpod)', () {
    late ProviderContainer container;
    late FakeStorageBackend fakeBackend;

    setUp(() {
      fakeBackend = FakeStorageBackend();
      container = ProviderContainer(overrides: [
        firestoreServiceProvider.overrideWithValue(fakeBackend),
      ]);
    });

    tearDown(() {
      container.dispose();
    });

    test('build returns ThemeMode.system initially', () async {
      final mode = await container.read(darkModeProvider.future);
      expect(mode, ThemeMode.system);
    });

    test('setMode changes to dark', () async {
      await container.read(darkModeProvider.notifier).setMode(ThemeMode.dark);
      final mode = await container.read(darkModeProvider.future);
      expect(mode, ThemeMode.dark);
    });

    test('setMode changes to light', () async {
      await container.read(darkModeProvider.notifier).setMode(ThemeMode.light);
      final mode = await container.read(darkModeProvider.future);
      expect(mode, ThemeMode.light);
    });

    test('read stored value on build', () async {
      await fakeBackend.setThemeMode('dark');
      container.invalidate(darkModeProvider);
      final mode = await container.read(darkModeProvider.future);
      expect(mode, ThemeMode.dark);
    });
  });

  group('AuthServiceProvider', () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer(overrides: [
        authServiceProvider.overrideWithValue(AuthService(auth: MockFirebaseAuth())),
      ]);
    });

    tearDown(() {
      container.dispose();
    });

    test('build returns an AuthService instance', () {
      final service = container.read(authServiceProvider);
      expect(service, isA<AuthService>());
    });
  });

  group('Premium (riverpod)', () {
    late ProviderContainer container;
    late FakeRevenueCatService fakeRevenueCat;
    late FakeStorageBackend fakeBackend;

    setUp(() {
      fakeRevenueCat = FakeRevenueCatService();
      fakeBackend = FakeStorageBackend();
      container = ProviderContainer(overrides: [
        revenueCatServiceProvider.overrideWithValue(fakeRevenueCat),
        firestoreServiceProvider.overrideWithValue(fakeBackend),
      ]);
    });

    tearDown(() {
      container.dispose();
    });

    test('build returns false initially', () async {
      final isPremium = await container.read(premiumProvider.future);
      expect(isPremium, false);
    });

    test('build returns true when entitlement is active', () async {
      fakeRevenueCat.setIsPremium(true);
      container.invalidate(premiumProvider);
      final isPremium = await container.read(premiumProvider.future);
      expect(isPremium, true);
    });

    test('build returns true when credits are active', () async {
      final date = DateTime.now().add(const Duration(hours: 1));
      await fakeBackend.updateUserData({'premiumUntil': date.toIso8601String()});
      container.invalidate(premiumProvider);

      final isPremium = await container.read(premiumProvider.future);
      expect(isPremium, true);
    });
  });

  group('Credits (riverpod)', () {
    late ProviderContainer container;
    late FakeStorageBackend fakeBackend;

    setUp(() {
      fakeBackend = FakeStorageBackend();
      container = ProviderContainer(overrides: [
        firestoreServiceProvider.overrideWithValue(fakeBackend),
      ]);
    });
    test('build returns null when no premiumUntil exists', () async {
      final credits = await container.read(creditsProvider.future);
      expect(credits, null);
    });

    test('build returns DateTime when premiumUntil exists', () async {
      final date = DateTime(2026, 5, 19);
      await fakeBackend.updateUserData({'premiumUntil': date.toIso8601String()});
      container.invalidate(creditsProvider);
      
      final credits = await container.read(creditsProvider.future);
      expect(credits, date);
    });

    test('extendBy24h updates storage and invalidates providers', () async {
      final now = DateTime.now();
      await container.read(creditsProvider.notifier).extendBy24h();
      
      final credits = await container.read(creditsProvider.future);
      expect(credits!.isAfter(now), true);
      expect(credits.difference(now).inHours >= 23, true);
    });

    test('getActiveDays returns 0 when null', () async {
      final days = await container.read(creditsProvider.notifier).getActiveDays();
      expect(days, 0);
    });

    test('getActiveDays returns correct count', () async {
      final futureDate = DateTime.now().add(const Duration(days: 2));
      await fakeBackend.updateUserData({'premiumUntil': futureDate.toIso8601String()});
      container.invalidate(creditsProvider);

      final days = await container.read(creditsProvider.notifier).getActiveDays();
      expect(days, 2);
    });
  });
  group('MonthlyBudget (riverpod)', () {
    late ProviderContainer container;
    late FakeStorageBackend fakeBackend;

    setUp(() {
      fakeBackend = FakeStorageBackend();
      container = ProviderContainer(overrides: [
        firestoreServiceProvider.overrideWithValue(fakeBackend),
      ]);
    });

    tearDown(() {
      container.dispose();
    });

    test('build returns null when no budget exists', () async {
      final budget = await container.read(monthlyBudgetProvider.future);
      expect(budget, null);
    });

    test('setBudget saves to storage', () async {
      await container.read(monthlyBudgetProvider.notifier).setBudget(500);
      final budget = await container.read(monthlyBudgetProvider.future);
      expect(budget, 500);
    });

    test('removeBudget clears from storage', () async {
      await container.read(monthlyBudgetProvider.notifier).setBudget(500);
      await container.read(monthlyBudgetProvider.notifier).setBudget(null);
      final budget = await container.read(monthlyBudgetProvider.future);
      expect(budget, null);
    });
  });

  group('ThemeColor (riverpod)', () {
    late ProviderContainer container;
    late FakeStorageBackend fakeBackend;

    setUp(() {
      fakeBackend = FakeStorageBackend();
      container = ProviderContainer(overrides: [
        firestoreServiceProvider.overrideWithValue(fakeBackend),
      ]);
    });

    tearDown(() {
      container.dispose();
    });

    test('build returns default color when none saved', () async {
      final color = await container.read(themeColorProvider.future);
      expect(color, Colors.green.toARGB32());
    });

    test('setColor updates storage', () async {
      final newColor = Colors.blue.toARGB32();
      await container.read(themeColorProvider.notifier).setColor(newColor);
      final color = await container.read(themeColorProvider.future);
      expect(color, newColor);
    });
  });
}
