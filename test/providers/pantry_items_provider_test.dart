import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/domain/entities/unit.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';

void main() {
  group('PantryItems (riverpod)', () {
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
      container.listen(pantryItemsProvider, (_, _) {});
      container.listen(premiumProvider, (_, _) {});
    });

    tearDown(() {
      container.dispose();
    });

    test('build returns empty list initially', () async {
      final items = await container.read(pantryItemsProvider.future);
      expect(items, isEmpty);
    });

    test('addItem creates and stores a pantry item', () async {
      await container.read(pantryItemsProvider.future);
      await container.read(pantryItemsProvider.notifier).addItem(
        name: 'Arroz',
        idealQuantity: 5,
        categoryId: 'others',
        unit: Unit.kg,
      );
      final items = await fakeBackend.loadPantryItems();
      expect(items.length, 1);
      expect(items.first.name, 'Arroz');
      expect(items.first.idealQuantity, 5);
    });

    test('updateItem modifies an existing item', () async {
      await container.read(pantryItemsProvider.future);
      await container.read(pantryItemsProvider.notifier).addItem(
        name: 'Original',
        idealQuantity: 5,
      );
      final items = await fakeBackend.loadPantryItems();
      final modified = items.first.copyWith(name: 'Modificado', idealQuantity: 10);
      await container.read(pantryItemsProvider.notifier).updateItem(modified);

      final updated = await fakeBackend.loadPantryItems();
      expect(updated.first.name, 'Modificado');
      expect(updated.first.idealQuantity, 10);
    });

    test('removeItem deletes a pantry item', () async {
      await container.read(pantryItemsProvider.future);
      await container.read(pantryItemsProvider.notifier).addItem(
        name: 'Remover',
        idealQuantity: 1,
      );
      final items = await fakeBackend.loadPantryItems();
      await container.read(pantryItemsProvider.notifier).removeItem(items.first.id);

      final remaining = await fakeBackend.loadPantryItems();
      expect(remaining, isEmpty);
    });

    test('setCurrentQuantity updates the current quantity', () async {
      await container.read(pantryItemsProvider.future);
      await container.read(pantryItemsProvider.notifier).addItem(
        name: 'Feijão',
        idealQuantity: 3,
      );
      final items = await fakeBackend.loadPantryItems();
      await container.read(pantryItemsProvider.notifier).setCurrentQuantity(items.first.id, 2);

      final updated = await fakeBackend.loadPantryItems();
      expect(updated.first.currentQuantity, 2);
    });

    test('incrementCurrent increases current by 1', () async {
      await container.read(pantryItemsProvider.future);
      await container.read(pantryItemsProvider.notifier).addItem(
        name: 'Item',
        idealQuantity: 5,
        currentQuantity: 2,
      );
      final items = await fakeBackend.loadPantryItems();
      await container.read(pantryItemsProvider.notifier).incrementCurrent(items.first.id);

      final updated = await fakeBackend.loadPantryItems();
      expect(updated.first.currentQuantity, 3);
    });

    test('decrementCurrent decreases current by 1', () async {
      await container.read(pantryItemsProvider.future);
      await container.read(pantryItemsProvider.notifier).addItem(
        name: 'Item',
        idealQuantity: 5,
        currentQuantity: 3,
      );
      final items = await fakeBackend.loadPantryItems();
      await container.read(pantryItemsProvider.notifier).decrementCurrent(items.first.id);

      final updated = await fakeBackend.loadPantryItems();
      expect(updated.first.currentQuantity, 2);
    });

    test('decrementCurrent does not go below 0', () async {
      await container.read(pantryItemsProvider.future);
      await container.read(pantryItemsProvider.notifier).addItem(
        name: 'Item',
        idealQuantity: 5,
        currentQuantity: 0,
      );
      final items = await fakeBackend.loadPantryItems();
      await container.read(pantryItemsProvider.notifier).decrementCurrent(items.first.id);

      final updated = await fakeBackend.loadPantryItems();
      expect(updated.first.currentQuantity, 0);
    });

    test('consumeItem decrements current by 1', () async {
      await container.read(pantryItemsProvider.future);
      await container.read(pantryItemsProvider.notifier).addItem(
        name: 'Item',
        idealQuantity: 5,
        currentQuantity: 5,
      );
      final items = await fakeBackend.loadPantryItems();
      await container.read(pantryItemsProvider.notifier).consumeItem(items.first.id);

      final updated = await fakeBackend.loadPantryItems();
      expect(updated.first.currentQuantity, 4);
    });

    test('consumeItem does not go below 0', () async {
      await container.read(pantryItemsProvider.future);
      await container.read(pantryItemsProvider.notifier).addItem(
        name: 'Item',
        idealQuantity: 5,
        currentQuantity: 0,
      );
      final items = await fakeBackend.loadPantryItems();
      await container.read(pantryItemsProvider.notifier).consumeItem(items.first.id);

      final updated = await fakeBackend.loadPantryItems();
      expect(updated.first.currentQuantity, 0);
    });

    test('restockItem adds given amount to current quantity', () async {
      await container.read(pantryItemsProvider.future);
      await container.read(pantryItemsProvider.notifier).addItem(
        name: 'Item',
        idealQuantity: 10,
        currentQuantity: 2,
      );
      final items = await fakeBackend.loadPantryItems();
      await container.read(pantryItemsProvider.notifier).restockItem(items.first.id, 5);

      final updated = await fakeBackend.loadPantryItems();
      expect(updated.first.currentQuantity, 7);
    });

    test('restockItem can exceed ideal quantity', () async {
      await container.read(pantryItemsProvider.future);
      await container.read(pantryItemsProvider.notifier).addItem(
        name: 'Item',
        idealQuantity: 10,
        currentQuantity: 2,
      );
      final items = await fakeBackend.loadPantryItems();
      await container.read(pantryItemsProvider.notifier).restockItem(items.first.id, 20);

      final updated = await fakeBackend.loadPantryItems();
      expect(updated.first.currentQuantity, 22);
    });

    test('setIdealQuantity updates ideal quantity', () async {
      await container.read(pantryItemsProvider.future);
      await container.read(pantryItemsProvider.notifier).addItem(
        name: 'Item',
        idealQuantity: 5,
      );
      final items = await fakeBackend.loadPantryItems();
      await container.read(pantryItemsProvider.notifier).setIdealQuantity(items.first.id, 8);

      final updated = await fakeBackend.loadPantryItems();
      expect(updated.first.idealQuantity, 8);
    });

    test('clearAll removes all pantry items', () async {
      await container.read(pantryItemsProvider.future);
      await container.read(pantryItemsProvider.notifier).addItem(name: 'A', idealQuantity: 1);
      await container.read(pantryItemsProvider.notifier).addItem(name: 'B', idealQuantity: 1);
      final items = await fakeBackend.loadPantryItems();
      expect(items.length, 2);

      await container.read(pantryItemsProvider.notifier).clearAll();

      final remaining = await fakeBackend.loadPantryItems();
      expect(remaining, isEmpty);
    });

    test('addItem throws when free user has 10 items', () async {
      await container.read(pantryItemsProvider.future);
      for (int i = 0; i < 10; i++) {
        await container.read(pantryItemsProvider.notifier).addItem(
          name: 'Item $i',
          idealQuantity: 1,
        );
      }
      final items = await fakeBackend.loadPantryItems();
      expect(items.length, 10);

      await expectLater(
        () => container.read(pantryItemsProvider.notifier).addItem(
          name: 'Item 10',
          idealQuantity: 1,
        ),
        throwsException,
      );
    });

    test('allows more than 10 items when premium', () async {
      fakeRevenueCat.setIsPremium(true);
      container.invalidate(premiumProvider);
      await container.read(pantryItemsProvider.future);
      for (int i = 0; i < 10; i++) {
        await container.read(pantryItemsProvider.notifier).addItem(
          name: 'Item $i',
          idealQuantity: 1,
        );
      }
      final items = await fakeBackend.loadPantryItems();
      expect(items.length, 10);

      await container.read(pantryItemsProvider.notifier).addItem(
        name: 'Item 10',
        idealQuantity: 1,
      );
      final updated = await fakeBackend.loadPantryItems();
      expect(updated.length, 11);
    });
  });
}
