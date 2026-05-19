import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/providers/backup_provider.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/category.dart';
import '../helpers/fake_storage_backend.dart';

void main() {
  group('BackupService', () {
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

    test('backupProvider provides BackupService', () {
      final service = container.read(backupProvider);
      expect(service, isA<BackupService>());
    });

    test('exportToJson returns valid JSON with empty data', () async {
      final service = container.read(backupProvider);
      final json = await service.exportToJson();
      final data = jsonDecode(json) as Map<String, dynamic>;
      expect(data['version'], 1);
      expect(data['lists'], <String, dynamic>{});
      expect(data['exportedAt'], isA<String>());
    });

    test('exportToJson includes lists and items', () async {
      final list = ShoppingList(name: 'Feira');
      await fakeBackend.saveLists([list]);
      final item = ShoppingItem(
        name: 'Banana',
        shoppingListId: list.id,
        quantity: 3,
        category: Category.fruits,
      );
      await fakeBackend.saveItems([item]);

      final service = container.read(backupProvider);
      final json = await service.exportToJson();
      final data = jsonDecode(json) as Map<String, dynamic>;
      final listsData = data['lists'] as Map<String, dynamic>;
      expect(listsData.length, 1);
      expect(listsData.containsKey(list.id), true);
    });

    test('importFromJson creates lists and items', () async {
      final list = ShoppingList(name: 'Mercado');
      final item = ShoppingItem(
        name: 'Arroz',
        shoppingListId: list.id,
        quantity: 2,
        category: Category.others,
      );
      final exportJson = jsonEncode({
        'version': 1,
        'exportedAt': DateTime.now().toIso8601String(),
        'lists': {
          list.id: {
            'list': list.toJson(),
            'items': [item.toJson()],
          },
        },
      });

      final service = container.read(backupProvider);
      final result = await service.importFromJson(exportJson);
      expect(result, contains('importadas com sucesso'));

      final lists = await fakeBackend.loadLists();
      expect(lists.length, 1);
      expect(lists.first.name, 'Mercado');

      final items = await fakeBackend.loadItems(list.id);
      expect(items.length, 1);
      expect(items.first.name, 'Arroz');
    });

    test('importFromJson handles empty items list', () async {
      final list = ShoppingList(name: 'Vazia');
      final exportJson = jsonEncode({
        'version': 1,
        'exportedAt': DateTime.now().toIso8601String(),
        'lists': {
          list.id: {
            'list': list.toJson(),
            'items': <Map<String, dynamic>>[],
          },
        },
      });

      final service = container.read(backupProvider);
      final result = await service.importFromJson(exportJson);
      expect(result, contains('1 listas importadas'));

      final items = await fakeBackend.loadItems(list.id);
      expect(items, isEmpty);
    });

    test('importFromJson imports multiple lists', () async {
      final listA = ShoppingList(name: 'Lista A');
      final listB = ShoppingList(name: 'Lista B');
      final exportJson = jsonEncode({
        'version': 1,
        'exportedAt': DateTime.now().toIso8601String(),
        'lists': {
          listA.id: {'list': listA.toJson(), 'items': <Map<String, dynamic>>[]},
          listB.id: {'list': listB.toJson(), 'items': <Map<String, dynamic>>[]},
        },
      });

      final service = container.read(backupProvider);
      final result = await service.importFromJson(exportJson);
      expect(result, '2 listas importadas com sucesso!');

      final lists = await fakeBackend.loadLists();
      expect(lists.length, 2);
    });

    test('roundtrip export then import preserves data', () async {
      final list = ShoppingList(name: 'Original');
      await fakeBackend.saveLists([list]);
      final item = ShoppingItem(
        name: 'Item Original',
        shoppingListId: list.id,
        quantity: 1,
        category: Category.others,
      );
      await fakeBackend.saveItems([item]);

      final service = container.read(backupProvider);
      final json = await service.exportToJson();

      await fakeBackend.deleteList(list.id);
      await fakeBackend.deleteItemsFromList(list.id);

      await service.importFromJson(json);

      final lists = await fakeBackend.loadLists();
      expect(lists.length, 1);
      expect(lists.first.name, 'Original');

      final items = await fakeBackend.loadItems(list.id);
      expect(items.length, 1);
      expect(items.first.name, 'Item Original');
    });
  });
}
