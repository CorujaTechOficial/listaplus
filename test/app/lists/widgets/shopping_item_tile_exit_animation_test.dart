import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/widgets/shopping_item_tile.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/shopping_item.dart';

class _FakeShoppingListItems extends ShoppingListItems {
  int toggleCount = 0;
  String? lastToggledId;
  final ShoppingItem _item;
  _FakeShoppingListItems(this._item);

  @override
  Stream<List<ShoppingItem>> build(String listId) => Stream.value([_item]);

  @override
  Future<void> togglePurchased(String id) async {
    toggleCount++;
    lastToggledId = id;
  }
}

ShoppingItem _makeItem({bool isPurchased = false}) => ShoppingItem(
      id: 'item1',
      shoppingListId: 'list1',
      name: 'Leite',
      quantity: 1,
      isPurchased: isPurchased,
    );

Widget _buildSubject(ShoppingItem item, _FakeShoppingListItems fake) {
  return ProviderScope(
    overrides: [
      shoppingListItemsProvider.overrideWith(() => fake),
    ],
    child: MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: ShoppingItemTile(listId: 'list1', item: item),
      ),
    ),
  );
}

void main() {
  testWidgets(
      'tapping pending item plays exit animation before calling togglePurchased',
      (tester) async {
    final item = _makeItem();
    final fake = _FakeShoppingListItems(item);

    await tester.pumpWidget(_buildSubject(item, fake));
    await tester.pumpAndSettle();

    await tester.tap(find.byType(Checkbox));

    // 100ms in: exit animation running — togglePurchased not yet called
    await tester.pump(const Duration(milliseconds: 100));
    expect(fake.toggleCount, 0);

    // Advance past 250ms animation duration and settle all async work
    await tester.pump(const Duration(milliseconds: 200)); // total 300ms, animation done at 250ms
    await tester.pumpAndSettle(); // flush all pending frames and microtasks
    expect(fake.toggleCount, 1);
    expect(fake.lastToggledId, 'item1');
  });

  testWidgets(
      'double-tap during exit animation is guarded — togglePurchased called once',
      (tester) async {
    final item = _makeItem();
    final fake = _FakeShoppingListItems(item);

    await tester.pumpWidget(_buildSubject(item, fake));
    await tester.pumpAndSettle();

    await tester.tap(find.byType(Checkbox)); // first tap
    await tester.pump(const Duration(milliseconds: 80)); // mid-animation
    await tester.tap(find.byType(Checkbox)); // second tap (should be guarded)

    await tester.pumpAndSettle();
    await tester.pump();

    expect(fake.toggleCount, 1);
  });

  testWidgets(
      'tapping purchased item calls togglePurchased immediately (no animation)',
      (tester) async {
    final item = _makeItem(isPurchased: true);
    final fake = _FakeShoppingListItems(item);

    await tester.pumpWidget(_buildSubject(item, fake));
    await tester.pumpAndSettle();

    await tester.tap(find.byType(Checkbox));
    await tester.pump(); // no animation delay
    await tester.pump(); // flush async

    expect(fake.toggleCount, 1);
  });
}
