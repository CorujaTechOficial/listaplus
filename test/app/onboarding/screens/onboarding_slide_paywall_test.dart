import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_data_provider.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_paywall.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/analytics_service.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/services/revenuecat_service_noop.dart';

class _FakeRevenueCat implements RevenueCatService {
  @override
  bool get isAvailable => true;

  @override
  Future<List<PaywallPackage>> getPaywallPackages() async => [
    PaywallPackage(
      identifier: 'annual',
      priceString: r'$39.99',
      price: 39.99,
      currencyCode: 'USD',
      title: 'Annual',
      description: '',
      trialPeriodDays: 7,
    ),
    PaywallPackage(
      identifier: 'monthly',
      priceString: r'$4.99',
      price: 4.99,
      currencyCode: 'USD',
      title: 'Monthly',
      description: '',
    ),
  ];

  @override
  Future<bool> isEntitlementActive(String entitlementId) async => false;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  testWidgets('soft paywall has a skip option', (tester) async {
    final binding = TestWidgetsFlutterBinding.ensureInitialized();
    await binding.setSurfaceSize(const Size(430, 1200));

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          revenueCatServiceProvider.overrideWithValue(_FakeRevenueCat()),
          analyticsServiceProvider.overrideWithValue(AnalyticsService()),
        ],
        child: const MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Scaffold(
            body: OnboardingSlidePaywall(
              onPurchased: _noop,
              onRestored: _noop,
              onSkip: _noop,
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Skip for now'), findsOneWidget);
    expect(find.text('Start Free Trial'), findsOneWidget);
  });

  testWidgets(
    'paywall uses a goal-led headline and upfront trial reassurance',
    (tester) async {
      final binding = TestWidgetsFlutterBinding.ensureInitialized();
      await binding.setSurfaceSize(const Size(430, 1200));

      final container = ProviderContainer(
        overrides: [
          revenueCatServiceProvider.overrideWithValue(_FakeRevenueCat()),
          analyticsServiceProvider.overrideWithValue(AnalyticsService()),
        ],
      );
      addTearDown(container.dispose);

      container.read(onboardingDataProvider.notifier).updateMainPain('time');

      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: const MaterialApp(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: Scaffold(
              body: OnboardingSlidePaywall(
                onPurchased: _noop,
                onRestored: _noop,
                onSkip: _noop,
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Shop in half the time!'), findsOneWidget);
      expect(
        find.text('Cancel anytime · No charge until your trial ends'),
        findsOneWidget,
      );
    },
  );

  testWidgets('soft paywall skips itself when RevenueCat is unavailable', (
    tester,
  ) async {
    final binding = TestWidgetsFlutterBinding.ensureInitialized();
    await binding.setSurfaceSize(const Size(430, 1200));
    var skipped = false;

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          revenueCatServiceProvider.overrideWithValue(RevenueCatServiceNoop()),
          analyticsServiceProvider.overrideWithValue(AnalyticsService()),
        ],
        child: MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Scaffold(
            body: OnboardingSlidePaywall(
              onPurchased: _noop,
              onRestored: _noop,
              onSkip: () => skipped = true,
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(skipped, isTrue);
  });
}

void _noop() {}
