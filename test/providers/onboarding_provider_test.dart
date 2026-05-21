import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/providers/onboarding_provider.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  group('OnboardingProvider', () {
    test('returns false by default', () async {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final result = await container.read(onboardingProvider.future);

      expect(result, isFalse);
    });

    test('markAsSeen sets flag to true', () async {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      await container.read(onboardingProvider.notifier).markAsSeen();

      final result = await container.read(onboardingProvider.future);
      expect(result, isTrue);
    });

    test('persists across container rebuilds', () async {
      SharedPreferences.setMockInitialValues({});

      var container = ProviderContainer();
      await container.read(onboardingProvider.notifier).markAsSeen();
      container.dispose();

      container = ProviderContainer();
      addTearDown(container.dispose);

      final result = await container.read(onboardingProvider.future);
      expect(result, isTrue);
    });
  });
}
