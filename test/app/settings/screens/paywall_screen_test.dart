import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
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
  testWidgets('main paywall surfaces upfront trial billing clarity', (
    tester,
  ) async {
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
          home: PaywallScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Start Free Trial'), findsOneWidget);
    expect(
      find.text('Cancel anytime · No charge until your trial ends'),
      findsOneWidget,
    );
    expect(
      find.text(
        'Today: no charge. Then \$39.99/year after 7 days. Cancel anytime.',
      ),
      findsOneWidget,
    );
  });

  testWidgets('sheet paywall keeps annual plan preselected and comparable', (
    tester,
  ) async {
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
          home: Scaffold(body: PaywallScreen(asSheet: true)),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('MOST POPULAR · SAVE 33%'), findsOneWidget);
    expect(find.text('Only \$3.33/month'), findsOneWidget);
    expect(
      find.text('Secured by Google Play · Cancel anytime'),
      findsAtLeastNWidgets(1),
    );
  });

  testWidgets(
    'paywall does not show offer-load error when RevenueCat is unavailable',
    (tester) async {
      final binding = TestWidgetsFlutterBinding.ensureInitialized();
      await binding.setSurfaceSize(const Size(430, 1200));

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            revenueCatServiceProvider.overrideWithValue(
              RevenueCatServiceNoop(),
            ),
            analyticsServiceProvider.overrideWithValue(AnalyticsService()),
          ],
          child: const MaterialApp(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: PaywallScreen(),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Error loading offers. Try again.'), findsNothing);
      expect(
        find.text('Continue with the free version'),
        findsAtLeastNWidgets(1),
      );
    },
  );
}
