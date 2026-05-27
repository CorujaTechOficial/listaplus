import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/lists/widgets/quick_add_bar.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/auth_provider.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/services/auth_service.dart';
import 'package:shopping_list/services/analytics_service.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';
import '../helpers/fake_ai_service.dart';
import '../helpers/fake_categories_notifier.dart';

Widget wrapWithProviders(Widget child, {required FakeStorageBackend backend}) {
  return ProviderScope(
    overrides: [
      firestoreServiceProvider.overrideWithValue(backend),
      authServiceProvider.overrideWithValue(AuthService(auth: MockFirebaseAuth())),
      revenueCatServiceProvider.overrideWithValue(FakeRevenueCatService()),
      analyticsServiceProvider.overrideWithValue(AnalyticsService()),
      aiServiceProvider.overrideWithValue(FakeAiService()),
      categoriesProvider.overrideWith(() => FakeCategoriesNotifier()),
    ],
    child: Consumer(builder: (context, ref, _) {
      ref.watch(shoppingListsProvider);
      ref.watch(categoriesProvider);
      return MaterialApp(
        locale: const Locale('pt', 'BR'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(body: child),
      );
    }),
  );
}

void main() {
  group('QuickAddBar', () {
    late FakeStorageBackend backend;

    setUp(() {
      TestWidgetsFlutterBinding.ensureInitialized();
      SharedPreferences.setMockInitialValues({});
      backend = FakeStorageBackend();
    });

    testWidgets('renders input and buttons', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const QuickAddBar(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      expect(find.byType(TextField), findsOneWidget);
      expect(find.byIcon(Icons.arrow_upward), findsOneWidget);
      expect(find.byIcon(Icons.qr_code_scanner), findsOneWidget);
      expect(find.byIcon(Icons.mic_none), findsOneWidget);
    });

    testWidgets('adds item on submit', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const QuickAddBar(listId: 'list-1'),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Leite');
      await tester.tap(find.byIcon(Icons.arrow_upward));
      await tester.pumpAndSettle();

      final items = await backend.loadItems('list-1');
      expect(items.length, 1);
      expect(items.first.name, 'Leite');
      
      // Should clear the input
      final textField = tester.widget<TextField>(find.byType(TextField));
      expect(textField.controller?.text, isEmpty);
    });

    testWidgets('opens AddItemDialog from FAB', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const Scaffold(body: Center(child: Text('test'))),
        backend: backend,
      ));
      await tester.pumpAndSettle();

      expect(find.text('test'), findsOneWidget);
    });
  });
}
