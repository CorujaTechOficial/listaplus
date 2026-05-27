import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});

  group('ShoppingLists Race Condition Repro', () {
    test('createList does not throw when provider is disposed during async op', () async {
      final fakeBackend = FakeStorageBackend();
      final fakeRevenueCat = FakeRevenueCatService();

      final container = ProviderContainer(overrides: [
        firestoreServiceProvider.overrideWithValue(fakeBackend),
        revenueCatServiceProvider.overrideWithValue(fakeRevenueCat),
      ]);

      // Listen first to keep the provider alive
      container.listen(shoppingListsProvider, (_, _) {});
      await container.read(shoppingListsProvider.future);

      // 2. Start createList
      final notifier = container.read(shoppingListsProvider.notifier);
      final future = notifier.createList('Repro List');

      // 3. Dispose the container/provider immediately before the async operation completes
      container.dispose();

      // 4. Await the future. It should not throw "Ref used after disposal"
      try {
        await future;
      } on Object catch (e) {
        expect(e.toString(), isNot(contains('disposed')));
      }
    });
  });
}
