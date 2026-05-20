import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/providers/share_provider.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/providers/auth_service_provider.dart';
import 'package:shopping_list/services/auth_service.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/category.dart';
import 'package:shopping_list/providers/revenuecat_service_provider.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';

void main() {
  group('ShareService', () {
    late ProviderContainer container;
    late FakeStorageBackend fakeBackend;
    late FakeRevenueCatService fakeRc;
    late ShoppingList testList;

    setUp(() {
      fakeBackend = FakeStorageBackend();
      fakeRc = FakeRevenueCatService()..setIsPremium(true);
      container = ProviderContainer(overrides: [
        firestoreServiceProvider.overrideWithValue(fakeBackend),
        revenueCatServiceProvider.overrideWithValue(fakeRc),
        authServiceProvider.overrideWithValue(
          AuthService(
            auth: MockFirebaseAuth(
              signedIn: true,
              mockUser: MockUser(uid: 'test-user-123'),
            ),
          ),
        ),
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

    test('createShareCode saves metadata only', () async {
      await fakeBackend.saveLists([testList]);

      final service = container.read(shareServiceProvider);
      final code = await service.createShareCode(testList.id);

      final saved = await fakeBackend.getSharedList(code);
      expect(saved, isNotNull);
      expect(saved!['listId'], testList.id);
      expect(saved['listName'], 'Compartilhavel');
      expect(saved['ownerUid'], isNotNull);
      expect(saved.containsKey('items'), false);
    });

    test('importSharedList with valid code saves shared ref', () async {
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

      expect(result.listId, testList.id);
      expect(result.listName, 'Compartilhavel');

      final refs = await fakeBackend.loadSharedListRefs();
      expect(refs, containsPair(testList.id, 'test-user-123'));
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
