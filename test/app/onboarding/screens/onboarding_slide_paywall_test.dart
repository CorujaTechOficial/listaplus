import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_paywall.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/analytics_service.dart';
import 'package:shopping_list/services/revenuecat_service.dart';

class _FakeRevenueCat implements RevenueCatService {
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
  testWidgets('hard paywall has no close, skip or free-continue affordance', (tester) async {
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
            body: OnboardingSlidePaywall(onPurchased: _noop, onRestored: _noop),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.close), findsNothing);
    expect(find.byIcon(Icons.close_rounded), findsNothing);
    expect(find.text('Start Free Trial'), findsOneWidget); // annual w/ trial preselected
  });
}

void _noop() {}
