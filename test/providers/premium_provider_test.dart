import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import '../helpers/fake_revenuecat_service.dart';

void main() {
  group('premiumProvider', () {
    late FakeRevenueCatService fakeRevenueCat;
    late ProviderContainer container;

    setUp(() {
      fakeRevenueCat = FakeRevenueCatService();
      container = ProviderContainer(
        overrides: [
          revenueCatServiceProvider.overrideWithValue(fakeRevenueCat),
        ],
      );
      container.listen(premiumProvider, (_, _) {});
    });

    tearDown(() {
      container.dispose();
    });

    test('initial state is false when not premium', () async {
      final isPremium = await container.read(premiumProvider.future);
      expect(isPremium, false);
    });

    test('state is true when revenuecat says so', () async {
      fakeRevenueCat.setIsPremium(true);
      container.invalidate(premiumProvider);

      final isPremium = await container.read(premiumProvider.future);
      expect(isPremium, true);
    });

    test('updates when RC listener triggers', () async {
      // Provider is already loaded by setUp's listen
      await fakeRevenueCat.purchasePackage(
        PaywallPackage(
          identifier: 'test',
          priceString: '0',
          title: 'test',
          description: 'test',
        ),
      );

      await Future<void>.delayed(Duration.zero);

      // Check premium is true after purchase
      final isPremium = await container.read(premiumProvider.future);
      expect(isPremium, true);
    });
  });
}
