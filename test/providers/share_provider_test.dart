import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/providers/share_provider.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/category.dart';
import '../helpers/fake_storage_backend.dart';

void main() {
  group('ShareService', () {
    late ProviderContainer container;
    late FakeStorageBackend fakeBackend;
    late ShoppingList testList;

    setUp(() {
      fakeBackend = FakeStorageBackend();
      container = ProviderContainer(overrides: [
        firestoreServiceProvider.overrideWithValue(fakeBackend),
      ]);
      testList = ShoppingList(name: 'Compartilhavel');
    });

    tearDown(() {
      container.dispose();
    });

    test('shareServiceProvider provides ShareService', () {
      final service = container.read(shareServiceProvider);
      expect(service, isA<ShareService>());
    });

    test('createShareCode generates 8-char code and saves to backend', () async {
      await fakeBackend.saveLists([testList]);

      final service = container.read(shareServiceProvider);
      final code = await service.createShareCode(testList.id);

      expect(code.length, 8);
      expect(code, matches(RegExp(r'^[A-HJ-NP-Z2-9]{8}$')));

      final saved = await fakeBackend.getSharedList(code);
      expect(saved, isNotNull);
      expect(saved!['listName'], 'Compartilhavel');
    });

    test('createShareCode saves items', () async {
      await fakeBackend.saveLists([testList]);
      final item = ShoppingItem(
        name: 'Macarrão',
        shoppingListId: testList.id,
        quantity: 2,
        category: Category.others,
      );
      await fakeBackend.saveItems([item]);

      final service = container.read(shareServiceProvider);
      final code = await service.createShareCode(testList.id);

      final saved = await fakeBackend.getSharedList(code);
      final itemsData = saved!['items'] as List<dynamic>;
      expect(itemsData.length, 1);
      expect(itemsData.first['name'], 'Macarrão');
    });

    test('importSharedList with valid code creates a new list', () async {
      await fakeBackend.saveLists([testList]);
      final item = ShoppingItem(
        name: 'Feijão',
        shoppingListId: testList.id,
        quantity: 1,
        category: Category.others,
      );
      await fakeBackend.saveItems([item]);

      final createService = container.read(shareServiceProvider);
      final code = await createService.createShareCode(testList.id);

      final importService = container.read(shareServiceProvider);
      final result = await importService.importSharedList(code);
      expect(result, contains('Compartilhavel'));
      expect(result, contains('importada com sucesso'));

      final lists = await fakeBackend.loadLists();
      expect(lists.any((l) => l.name.contains('Compartilhavel')), true);
    });

    test('importSharedList with invalid code throws', () async {
      final service = container.read(shareServiceProvider);

      expect(
        () => service.importSharedList('ABCD1234'),
        throwsA(isA<Exception>()),
      );
    });
  });
}
