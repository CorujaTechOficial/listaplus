import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_data_provider.dart';
import 'package:shopping_list/app/onboarding/screens/onboarding_screen.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/auth_provider.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/services/analytics_service.dart';
import 'package:shopping_list/services/auth_service.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/services/storage_backend.dart';

class _FakeStorageBackend implements StorageBackend {
  ShoppingList? lastSavedList;
  String? currentListId;

  @override
  Future<void> saveList(ShoppingList list) async {
    lastSavedList = list;
  }

  @override
  Future<void> setCurrentListId(String? listId) async {
    currentListId = listId;
  }

  @override
  Stream<List<ShoppingList>> watchLists() => Stream.value(<ShoppingList>[]);

  @override
  Stream<Map<String, String>> watchSharedListRefs() =>
      Stream.value(<String, String>{});

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

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

class _FakeAuthService implements AuthService {
  @override
  Stream<User?> get authStateChanges => const Stream<User?>.empty();

  @override
  User? get currentUser => null;

  @override
  bool get isAnonymous => true;

  @override
  Future<User?> signInWithApple() async => null;

  @override
  Future<User?> signInWithGoogle() async => null;

  @override
  Future<void> signOut() async {}
}

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues(<String, Object>{});
  });

  Widget buildSubject({StorageBackend? storage}) {
    return ProviderScope(
      overrides: [
        analyticsServiceProvider.overrideWithValue(AnalyticsService()),
        authServiceProvider.overrideWithValue(_FakeAuthService()),
        if (storage != null)
          firestoreServiceProvider.overrideWithValue(storage),
        revenueCatServiceProvider.overrideWithValue(_FakeRevenueCat()),
      ],
      child: const MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: OnboardingScreen(),
      ),
    );
  }

  testWidgets('quiz answers persist and auto-advance through the flow', (
    tester,
  ) async {
    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();

    await tester.tap(find.text('Get Started'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Just me'));
    await tester.pumpAndSettle();

    expect(find.text('How often do you shop for groceries?'), findsOneWidget);
    final container = ProviderScope.containerOf(
      tester.element(find.byType(OnboardingScreen)),
    );
    expect(container.read(onboardingDataProvider).householdSize, 'solo');
  });

  testWidgets('hook page has no skip affordance and back is blocked', (
    tester,
  ) async {
    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();

    expect(find.text('Skip'), findsNothing);
    expect(find.text('Smarter shopping starts here'), findsOneWidget);

    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();

    expect(find.text('Smarter shopping starts here'), findsOneWidget);
  });

  testWidgets(
    'after the last quiz answer the flow goes straight to plan loading',
    (tester) async {
      await tester.pumpWidget(buildSubject());
      await tester.pumpAndSettle();

      await tester.tap(find.text('Get Started'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Just me'));
      await tester.pumpAndSettle();
      final binding = TestWidgetsFlutterBinding.ensureInitialized();
      await binding.setSurfaceSize(const Size(430, 1200));

      await tester.tap(find.text('Once a week'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('I spend more than planned'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('As much as possible'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Notes app'));
      await tester.pumpAndSettle();

      expect(find.text("You're in good company"), findsNothing);
    },
  );

  testWidgets('creating the first list advances to the paywall', (
    tester,
  ) async {
    final binding = TestWidgetsFlutterBinding.ensureInitialized();
    await binding.setSurfaceSize(const Size(430, 1200));
    final storage = _FakeStorageBackend();

    await tester.pumpWidget(buildSubject(storage: storage));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Get Started'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Just me'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Once a week'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('I spend more than planned'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('As much as possible'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Notes app'));
    await tester.pump();

    await tester.pump(const Duration(seconds: 5));
    await tester.pumpAndSettle();

    expect(find.text('Your plan is ready!'), findsOneWidget);
    await tester.tap(find.byType(FilledButton).last);
    await tester.pumpAndSettle();

    await tester.tap(find.text('Not now'));
    await tester.pumpAndSettle();

    expect(find.text('Create List'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'Weekly groceries');
    await tester.pump();
    await tester.tap(find.widgetWithText(FilledButton, 'Create'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    await tester.pumpAndSettle();

    expect(storage.lastSavedList?.name, 'Weekly groceries');
    expect(storage.currentListId, isNotNull);
    expect(find.text('Skip for now'), findsOneWidget);
  });
}
