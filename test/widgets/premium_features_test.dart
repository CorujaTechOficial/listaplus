import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/screens/home_screen.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import 'package:shopping_list/services/analytics_service.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import '../helpers/fake_revenuecat_service.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_ai_service.dart';

void main() {
  group('Premium Features UI', () {
    late FakeRevenueCatService fakeRevenueCat;
    late FakeStorageBackend fakeBackend;
    late ShoppingList testList;

    setUp(() {
      fakeRevenueCat = FakeRevenueCatService();
      fakeBackend = FakeStorageBackend();
      testList = ShoppingList(id: 'test-list', name: 'Test List');
      fakeBackend.saveList(testList);
      fakeBackend.setCurrentListId(testList.id);
    });

    Widget wrap(Widget child, {bool isPremium = false}) {
      fakeRevenueCat.setIsPremium(isPremium);
      return ProviderScope(
        overrides: [
          revenueCatServiceProvider.overrideWithValue(fakeRevenueCat),
          firestoreServiceProvider.overrideWithValue(fakeBackend),
          analyticsServiceProvider.overrideWithValue(AnalyticsService()),
          aiServiceProvider.overrideWithValue(FakeAiService()),
        ],
        child: MaterialApp(
          home: child,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale('pt', 'BR'),
        ),
      );
    }

    testWidgets('ai assistant menu item leads to paywall when free', (tester) async {
      await tester.pumpWidget(wrap(HomeScreen(listId: testList.id), isPremium: false));
      
      final container = ProviderScope.containerOf(tester.element(find.byType(HomeScreen)));
      await tester.runAsync(() => container.read(premiumProvider.future));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Assistente de IA'));
      await tester.pumpAndSettle();

      expect(find.byType(PaywallScreen), findsOneWidget);
    });

    testWidgets('become premium menu item visible for free users', (tester) async {
      await tester.pumpWidget(wrap(HomeScreen(listId: testList.id), isPremium: false));
      
      final container = ProviderScope.containerOf(tester.element(find.byType(HomeScreen)));
      await tester.runAsync(() => container.read(premiumProvider.future));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();
      expect(find.text('Tornar-se Premium'), findsOneWidget);
    });

    testWidgets('become premium menu item hidden for premium users', (tester) async {
      await tester.pumpWidget(wrap(HomeScreen(listId: testList.id), isPremium: true));
      
      final container = ProviderScope.containerOf(tester.element(find.byType(HomeScreen)));
      await tester.runAsync(() => container.read(premiumProvider.future));
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.more_vert));
      await tester.pumpAndSettle();
      expect(find.text('Tornar-se Premium'), findsNothing);
    });
  });
}
