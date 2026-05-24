// ignore_for_file: avoid_print, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart' show Override;
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/providers/revenuecat_service_provider.dart';
import 'package:shopping_list/providers/analytics_service_provider.dart';
import 'package:shopping_list/providers/ai_service_provider.dart';
import 'package:shopping_list/providers/auth_service_provider.dart';
import 'package:shopping_list/providers/categories_provider.dart';
import 'package:shopping_list/services/auth_service.dart';
import 'package:shopping_list/services/analytics_service.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/screens/home_screen.dart';
import 'package:shopping_list/widgets/shopping_item_tile.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'helpers/fake_storage_backend.dart';
import 'helpers/fake_revenuecat_service.dart';
import 'helpers/fake_ai_service.dart';
import 'helpers/fake_categories_notifier.dart';

Widget wrapWithProviders(Widget child, {StorageBackend? backend, RevenueCatService? revenueCat}) {
  final overrides = <Override>[
    authServiceProvider.overrideWithValue(AuthService(auth: MockFirebaseAuth())),
    revenueCatServiceProvider.overrideWithValue(revenueCat ?? FakeRevenueCatService()),
    analyticsServiceProvider.overrideWithValue(AnalyticsService()),
    aiServiceProvider.overrideWithValue(FakeAiService()),
    categoriesProvider.overrideWith(() => FakeCategoriesNotifier()),
  ];
  if (backend != null) {
    overrides.add(firestoreServiceProvider.overrideWithValue(backend));
  }
  return ProviderScope(
    overrides: overrides,
    child: MaterialApp(
      locale: const Locale('pt', 'BR'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: child,
    ),
  );
}

void main() {
  testWidgets('debug layout', (tester) async {
    final list = ShoppingList(id: 'list-1', name: 'Compras do Mês');
    final item = ShoppingItem(
      shoppingListId: 'list-1',
      name: 'Arroz',
      quantity: 5,
      categoryId: 'others',
    );

    final backend = FakeStorageBackend();
    await backend.saveLists([list]);
    await backend.saveItems([item]);
    await backend.setCurrentListId('list-1');

    await tester.pumpWidget(wrapWithProviders(
      const HomeScreen(listId: 'list-1'),
      backend: backend,
    ));
    
    // Single pump to avoid shimmer timeout
    await tester.pump();

    // Check layout
    final binding = tester.binding;
    print('=== LAYOUT DEBUG ===');
    print('Physical size: ${binding.window.physicalSize}');
    print('DPR: ${binding.window.devicePixelRatio}');
    
    // Check all Scrollable widgets
    int scrollIdx = 0;
    for (final e in find.byType(Scrollable).evaluate()) {
      final box = e.renderObject as RenderBox;
      final widget = e.widget as Scrollable;
      final ctrl = widget.controller;
      print('Scrollable $scrollIdx: pos=${box.localToGlobal(Offset.zero)}, size=${box.size}');
      if (ctrl != null) {
        print('  offset=${ctrl.offset}, maxScrollExtent=${ctrl.position.maxScrollExtent}');
      }
      scrollIdx++;
    }

    // Check tile
    final tiles = find.byType(ShoppingItemTile, skipOffstage: false);
    if (tiles.evaluate().isNotEmpty) {
      final box = tester.renderObject(tiles) as RenderBox;
      print('Tile: pos=${box.localToGlobal(Offset.zero)}, size=${box.size}');
    }

    // Check Stacks
    for (final e in find.byType(Stack).evaluate()) {
      final box = e.renderObject as RenderBox;
      print('Stack: pos=${box.localToGlobal(Offset.zero)}, size=${box.size}');
    }

    // Check Columns
    for (final e in find.byType(Column).evaluate()) {
      final box = e.renderObject as RenderBox;
      final col = e.widget as Column;
      print('Column(mainAxisSize=${col.mainAxisSize}): pos=${box.localToGlobal(Offset.zero)}, size=${box.size}');
    }
    
    print('=== END LAYOUT DEBUG ===');
  });
}
