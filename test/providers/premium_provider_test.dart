import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/providers/premium_provider.dart';
import 'package:shopping_list/providers/revenuecat_service_provider.dart';
import 'package:shopping_list/providers/credits_provider.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import '../helpers/fake_revenuecat_service.dart';

class FakeCredits extends Credits {
  FakeCredits(this._value);
  final DateTime? _value;

  @override
  Future<DateTime?> build() async => _value;
}

void main() {
  group('premiumProvider', () {
    late FakeRevenueCatService fakeRevenueCat;
    late ProviderContainer container;

    setUp(() {
      fakeRevenueCat = FakeRevenueCatService();
      container = ProviderContainer(
        overrides: [
          revenueCatServiceProvider.overrideWithValue(fakeRevenueCat),
          creditsProvider.overrideWith(() => FakeCredits(null)),
        ],
      );
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

    test('state is true when credits are active', () async {
      final tomorrow = DateTime.now().add(const Duration(days: 1));
      
      final container2 = ProviderContainer(
        overrides: [
          revenueCatServiceProvider.overrideWithValue(fakeRevenueCat),
          creditsProvider.overrideWith(() => FakeCredits(tomorrow)),
        ],
      );
      
      final isPremium = await container2.read(premiumProvider.future);
      expect(isPremium, true);
      container2.dispose();
    });

    test('state is false when credits are expired', () async {
      final yesterday = DateTime.now().subtract(const Duration(days: 1));
      
      final container2 = ProviderContainer(
        overrides: [
          revenueCatServiceProvider.overrideWithValue(fakeRevenueCat),
          creditsProvider.overrideWith(() => FakeCredits(yesterday)),
        ],
      );
      
      final isPremium = await container2.read(premiumProvider.future);
      expect(isPremium, false);
      container2.dispose();
    });

    test('updates when RC listener triggers', () async {
      final emissions = <bool>[];
      container.listen<AsyncValue<bool>>(
        premiumProvider,
        (previous, next) {
          next.whenData((value) => emissions.add(value));
        },
        fireImmediately: true,
      );
      
      // Wait for initial value to be processed
      await container.read(premiumProvider.future);
      
      // Trigger listener via purchase
      await fakeRevenueCat.purchasePackage(
        PaywallPackage(
          identifier: 'test',
          priceString: '0',
          title: 'test',
          description: 'test',
        ),
      );

      // Give it a microtask to process the stream update
      await Future<void>.delayed(Duration.zero);

      expect(emissions, [false, true]);
    });
  });
}
