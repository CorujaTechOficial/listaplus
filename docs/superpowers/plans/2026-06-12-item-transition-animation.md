# Item Transition Animation Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Animate shopping items transitioning from the pending section to the purchased section — exit animation (height collapse + fade out, 250ms) before the Firebase call, entry animation (fade + slide in, 300ms) when the item appears in the purchased section.

**Architecture:** `ShoppingItemTile` migrates from `ConsumerWidget` to `ConsumerStatefulWidget` and gains an `AnimationController` that plays before `togglePurchased` is called. A new public `AnimatedEntryWrapper` widget in the same file wraps each tile in the purchased section in `list_screen_body.dart` and plays a mount animation in `initState`.

**Tech Stack:** Flutter, Riverpod (riverpod_annotation), flutter_test, mocktail

---

## File Map

| File | Change |
|---|---|
| `lib/app/lists/widgets/shopping_item_tile.dart` | Migrate `ShoppingItemTile` to `ConsumerStatefulWidget`; add `AnimatedEntryWrapper` |
| `lib/app/lists/list_screen_body.dart` | Wrap purchased `SliverList` tiles with `AnimatedEntryWrapper` |
| `test/app/lists/widgets/animated_entry_wrapper_test.dart` | New: widget test for entry animation |
| `test/app/lists/widgets/shopping_item_tile_exit_animation_test.dart` | New: widget test for exit animation + guard |

---

## Task 1: `AnimatedEntryWrapper` widget + test

**Files:**
- Modify: `lib/app/lists/widgets/shopping_item_tile.dart` (add at bottom)
- Create: `test/app/lists/widgets/animated_entry_wrapper_test.dart`

- [ ] **Step 1.1: Write the failing test**

Create `test/app/lists/widgets/animated_entry_wrapper_test.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/lists/widgets/shopping_item_tile.dart';

void main() {
  testWidgets('AnimatedEntryWrapper starts at opacity 0 and settles at 1',
      (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AnimatedEntryWrapper(child: Text('hello')),
        ),
      ),
    );

    // Immediately after mount: animation at t=0, opacity = 0
    final fade = tester.widget<FadeTransition>(
      find.byType(FadeTransition).first,
    );
    expect(fade.opacity.value, 0.0);

    // After animation completes: opacity = 1
    await tester.pumpAndSettle();
    final fadeAfter = tester.widget<FadeTransition>(
      find.byType(FadeTransition).first,
    );
    expect(fadeAfter.opacity.value, 1.0);
  });

  testWidgets('AnimatedEntryWrapper child is present in the tree', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AnimatedEntryWrapper(child: Text('target')),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('target'), findsOneWidget);
  });
}
```

- [ ] **Step 1.2: Run test — expect failure**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list"
flutter test test/app/lists/widgets/animated_entry_wrapper_test.dart
```

Expected: `Error: 'AnimatedEntryWrapper' isn't a type.`

- [ ] **Step 1.3: Add `AnimatedEntryWrapper` to `shopping_item_tile.dart`**

Append at the end of `lib/app/lists/widgets/shopping_item_tile.dart`, after all existing classes:

```dart
class AnimatedEntryWrapper extends StatefulWidget {
  const AnimatedEntryWrapper({super.key, required this.child});
  final Widget child;

  @override
  State<AnimatedEntryWrapper> createState() => _AnimatedEntryWrapperState();
}

class _AnimatedEntryWrapperState extends State<AnimatedEntryWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _fade;
  late Animation<Offset> _slide;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _fade = CurvedAnimation(parent: _ctrl, curve: Curves.easeOut);
    _slide = Tween<Offset>(
      begin: const Offset(0, 0.12),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOut));
    _ctrl.forward();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fade,
      child: SlideTransition(
        position: _slide,
        child: widget.child,
      ),
    );
  }
}
```

- [ ] **Step 1.4: Run test — expect pass**

```bash
flutter test test/app/lists/widgets/animated_entry_wrapper_test.dart
```

Expected: `All tests passed!`

- [ ] **Step 1.5: Commit**

```bash
git add lib/app/lists/widgets/shopping_item_tile.dart \
        test/app/lists/widgets/animated_entry_wrapper_test.dart
git commit -m "feat: add AnimatedEntryWrapper for purchased item entry animation"
```

---

## Task 2: Migrate `ShoppingItemTile` to `ConsumerStatefulWidget` + exit animation

**Files:**
- Modify: `lib/app/lists/widgets/shopping_item_tile.dart`
- Create: `test/app/lists/widgets/shopping_item_tile_exit_animation_test.dart`

- [ ] **Step 2.1: Write the failing test**

Create `test/app/lists/widgets/shopping_item_tile_exit_animation_test.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/widgets/shopping_item_tile.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/shopping_item.dart';

// Extends the public ShoppingListItems class — no access to private generated base needed.
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

    // Past 250ms animation duration: togglePurchased must have been called
    await tester.pump(const Duration(milliseconds: 200));
    await tester.pump(); // flush async togglePurchased
    expect(fake.toggleCount, 1);
    expect(fake.lastToggledId, 'item1');
  });

  testWidgets('double-tap during exit animation is guarded — togglePurchased called once',
      (tester) async {
    final item = _makeItem();
    final fake = _FakeShoppingListItems(item);

    await tester.pumpWidget(_buildSubject(item, fake));
    await tester.pumpAndSettle();

    await tester.tap(find.byType(Checkbox)); // first tap
    await tester.pump(const Duration(milliseconds: 80)); // mid-animation
    await tester.tap(find.byType(Checkbox)); // second tap (guarded)

    await tester.pumpAndSettle();
    await tester.pump();

    expect(fake.toggleCount, 1);
  });

  testWidgets('tapping purchased item calls togglePurchased immediately (no animation)',
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
```

- [ ] **Step 2.2: Run test — expect failure**

```bash
flutter test test/app/lists/widgets/shopping_item_tile_exit_animation_test.dart
```

Expected failure: tests pass but without the guard (double-tap test fails), or compilation succeeds but animation doesn't delay `togglePurchased`.

- [ ] **Step 2.3: Migrate `ShoppingItemTile` in `shopping_item_tile.dart`**

**2.3a — Change the class declaration:**

Replace:
```dart
class ShoppingItemTile extends ConsumerWidget {
  const ShoppingItemTile({
    super.key,
    required this.listId,
    required this.item,
    this.selectionMode = false,
    this.isShoppingMode = false,
    this.isSelected = false,
    this.onSelectionChanged,
    this.dragHandleIndex,
  });

  final String listId;
  final ShoppingItem item;
  final bool selectionMode;
  final bool isShoppingMode;
  final bool isSelected;
  final ValueChanged<bool>? onSelectionChanged;
  final int? dragHandleIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
```

With:
```dart
class ShoppingItemTile extends ConsumerStatefulWidget {
  const ShoppingItemTile({
    super.key,
    required this.listId,
    required this.item,
    this.selectionMode = false,
    this.isShoppingMode = false,
    this.isSelected = false,
    this.onSelectionChanged,
    this.dragHandleIndex,
  });

  final String listId;
  final ShoppingItem item;
  final bool selectionMode;
  final bool isShoppingMode;
  final bool isSelected;
  final ValueChanged<bool>? onSelectionChanged;
  final int? dragHandleIndex;

  @override
  ConsumerState<ShoppingItemTile> createState() => _ShoppingItemTileState();
}

class _ShoppingItemTileState extends ConsumerState<ShoppingItemTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _exitController;
  late Animation<double> _sizeAnim;
  late Animation<double> _opacityAnim;
  bool _exiting = false;

  @override
  void initState() {
    super.initState();
    _exitController = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    _sizeAnim = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: _exitController, curve: Curves.easeIn),
    );
    _opacityAnim = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: _exitController, curve: Curves.easeIn),
    );
  }

  @override
  void dispose() {
    _exitController.dispose();
    super.dispose();
  }

  Future<void> _handleToggle() async {
    if (widget.item.isPurchased) {
      unawaited(HapticFeedback.lightImpact());
      await ref
          .read(shoppingListItemsProvider(widget.listId).notifier)
          .togglePurchased(widget.item.id);
    } else {
      if (_exiting) return;
      setState(() => _exiting = true);
      unawaited(HapticFeedback.mediumImpact());
      await _exitController.forward();
      if (!mounted) return;
      await ref
          .read(shoppingListItemsProvider(widget.listId).notifier)
          .togglePurchased(widget.item.id);
      if (widget.isShoppingMode && mounted) {
        _askToAddToPantry();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
```

**2.3b — Inside `build`, prefix all widget properties:**

Make these replacements throughout the build method body:
- `item.` → `widget.item.`
- `listId` → `widget.listId`
- `selectionMode` → `widget.selectionMode`
- `isShoppingMode` → `widget.isShoppingMode`
- `isSelected` → `widget.isSelected`
- `onSelectionChanged` → `widget.onSelectionChanged`
- `dragHandleIndex` → `widget.dragHandleIndex`

Remove the `WidgetRef ref` parameter from `build` (it's now accessed via `this.ref` in ConsumerState).

**2.3c — Replace `onTap` handler in `InkWell`:**

Replace:
```dart
onTap: selectionMode
    ? () => onSelectionChanged?.call(!isSelected)
    : () async {
        if (isPurchased) {
          unawaited(HapticFeedback.lightImpact());
        } else {
          unawaited(HapticFeedback.mediumImpact());
        }
        await ref.read(shoppingListItemsProvider(listId).notifier).togglePurchased(item.id);
        if (isShoppingMode && !isPurchased && context.mounted) {
          _askToAddToPantry(context, ref);
        }
      },
```

With:
```dart
onTap: widget.selectionMode
    ? () => widget.onSelectionChanged?.call(!widget.isSelected)
    : _handleToggle,
```

**2.3d — Replace `Checkbox.onChanged` handler:**

Replace:
```dart
onChanged: selectionMode
    ? (v) {
        HapticFeedback.selectionClick();
        onSelectionChanged?.call(v ?? false);
      }
    : (v) async {
        if (isPurchased) {
          unawaited(HapticFeedback.lightImpact());
        } else {
          unawaited(HapticFeedback.mediumImpact());
        }
        await ref.read(shoppingListItemsProvider(listId).notifier).togglePurchased(item.id);
        if (isShoppingMode && !isPurchased && context.mounted) {
          _askToAddToPantry(context, ref);
        }
      },
```

With:
```dart
onChanged: widget.selectionMode
    ? (v) {
        HapticFeedback.selectionClick();
        widget.onSelectionChanged?.call(v ?? false);
      }
    : (_) => _handleToggle(),
```

**2.3e — Replace the return statement at the end of `build`:**

Replace:
```dart
    if (selectionMode) {
      return tileContent;
    }

    return Dismissible(
      key: ValueKey('dismiss_${item.id}'),
      ...
      child: tileContent,
    );
  }
```

With:
```dart
    Widget child;
    if (widget.selectionMode) {
      child = tileContent;
    } else {
      child = Dismissible(
        key: ValueKey('dismiss_${widget.item.id}'),
        direction: DismissDirection.endToStart,
        background: Container(
          margin: const EdgeInsets.symmetric(horizontal: Spacing.sm, vertical: Spacing.xxs),
          decoration: BoxDecoration(
            color: theme.colorScheme.errorContainer,
            borderRadius: BorderRadius.circular(RadiusTokens.lg),
          ),
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: Spacing.lg),
          child: Icon(Icons.delete_outline, color: theme.colorScheme.onErrorContainer),
        ),
        onDismissed: (direction) {
          HapticFeedback.mediumImpact();
          final removedItem = widget.item;
          final notifier = ref.read(shoppingListItemsProvider(widget.listId).notifier);
          notifier.removeItem(widget.item.id);
          showUniqueSnackBar(
            context,
            content: Text(l10n.itemRemoved),
            action: SnackBarAction(
              label: l10n.undo,
              onPressed: () => notifier.restoreItem(removedItem),
            ),
          );
        },
        child: tileContent,
      );
    }

    return SizeTransition(
      sizeFactor: _sizeAnim,
      axisAlignment: -1,
      child: FadeTransition(
        opacity: _opacityAnim,
        child: child,
      ),
    );
  }
```

**2.3f — Update `_showEditDialog` and `_askToAddToPantry` signatures:**

Replace:
```dart
  void _showEditDialog(BuildContext context, WidgetRef ref) {
    showDialog<void>(
      context: context,
      builder: (_) => EditItemDialog(listId: listId, item: item),
    );
  }

  void _askToAddToPantry(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(l10n.addToPantryPrompt(item.name)),
        action: SnackBarAction(
          label: l10n.yes,
          onPressed: () {
            ref.read(pantryItemsProvider.notifier).addItem(
              name: item.name,
              idealQuantity: item.quantity,
              currentQuantity: item.quantity,
              categoryId: item.categoryId,
              unit: item.unit,
              estimatedPrice: item.estimatedPrice,
            );
          },
        ),
      ),
    );
  }
```

With:
```dart
  void _showEditDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (_) => EditItemDialog(listId: widget.listId, item: widget.item),
    );
  }

  void _askToAddToPantry() {
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(l10n.addToPantryPrompt(widget.item.name)),
        action: SnackBarAction(
          label: l10n.yes,
          onPressed: () {
            ref.read(pantryItemsProvider.notifier).addItem(
              name: widget.item.name,
              idealQuantity: widget.item.quantity,
              currentQuantity: widget.item.quantity,
              categoryId: widget.item.categoryId,
              unit: widget.item.unit,
              estimatedPrice: widget.item.estimatedPrice,
            );
          },
        ),
      ),
    );
  }
```

Also update the call site for `_showEditDialog` inside the build method from:
```dart
onPressed: () => _showEditDialog(context, ref),
```
to:
```dart
onPressed: () => _showEditDialog(context),
```

- [ ] **Step 2.4: Verify it compiles**

```bash
flutter analyze lib/app/lists/widgets/shopping_item_tile.dart
```

Expected: no errors (warnings about unused imports are acceptable if any).

- [ ] **Step 2.5: Run the exit animation tests**

```bash
flutter test test/app/lists/widgets/shopping_item_tile_exit_animation_test.dart
```

Expected: `All tests passed!`

- [ ] **Step 2.6: Run full test suite to check for regressions**

```bash
flutter test
```

Expected: all existing tests pass.

- [ ] **Step 2.7: Commit**

```bash
git add lib/app/lists/widgets/shopping_item_tile.dart \
        test/app/lists/widgets/shopping_item_tile_exit_animation_test.dart
git commit -m "feat: add exit animation to ShoppingItemTile on purchase"
```

---

## Task 3: Wrap purchased tiles with `AnimatedEntryWrapper` in `list_screen_body.dart`

**Files:**
- Modify: `lib/app/lists/list_screen_body.dart` (line ~568)

No new test — the entry animation widget is already tested in Task 1. The integration is mechanical.

- [ ] **Step 3.1: Wrap purchased `SliverList` tiles**

In `lib/app/lists/list_screen_body.dart`, find the purchased `SliverList` (around line 568):

```dart
if (_filter != FilterType.pending && purchased.isNotEmpty)
  SliverList(
    delegate: SliverChildBuilderDelegate(
      (context, index) => ShoppingItemTile(
        listId: widget.listId,
        item: purchased[index],
        selectionMode: _selectionMode,
        isShoppingMode: _shoppingMode,
        isSelected: _selectedIds.contains(purchased[index].id),
        onSelectionChanged:
            (selected) =>
                _handleSelection(purchased[index].id, selected),
      ),
      childCount: purchased.length,
    ),
  ),
```

Replace with:

```dart
if (_filter != FilterType.pending && purchased.isNotEmpty)
  SliverList(
    delegate: SliverChildBuilderDelegate(
      (context, index) => AnimatedEntryWrapper(
        key: ValueKey('entry_${purchased[index].id}'),
        child: ShoppingItemTile(
          listId: widget.listId,
          item: purchased[index],
          selectionMode: _selectionMode,
          isShoppingMode: _shoppingMode,
          isSelected: _selectedIds.contains(purchased[index].id),
          onSelectionChanged:
              (selected) =>
                  _handleSelection(purchased[index].id, selected),
        ),
      ),
      childCount: purchased.length,
    ),
  ),
```

`AnimatedEntryWrapper` is already accessible — `list_screen_body.dart` already imports `shopping_item_tile.dart`.

- [ ] **Step 3.2: Verify compile + analyze**

```bash
flutter analyze lib/app/lists/list_screen_body.dart
```

Expected: no errors.

- [ ] **Step 3.3: Run full test suite**

```bash
flutter test
```

Expected: all tests pass.

- [ ] **Step 3.4: Commit**

```bash
git add lib/app/lists/list_screen_body.dart
git commit -m "feat: animate purchased items entering the completed section"
```

---

## Self-Review Checklist

- [x] **`AnimatedEntryWrapper`** — implemented, tested, public (accessible from `list_screen_body.dart`)
- [x] **Exit animation (250ms)** — `SizeTransition` + `FadeTransition`, plays before `togglePurchased`
- [x] **Double-tap guard** — `_exiting` bool, tested
- [x] **Un-marking guard** — purchased → un-marking skips animation, calls directly, tested
- [x] **`_askToAddToPantry`** — still fires after Firebase resolves in `_handleToggle`
- [x] **Dismissible** — still wrapped, `onDismissed` uses `widget.*` props correctly
- [x] **Drag handle** — unchanged in build, no regression
- [x] **Selection mode** — no exit animation in selection path (only calls `onSelectionChanged`)
- [x] **`_showEditDialog`** — signature updated, call site updated
- [x] **Entry animation** — `AnimatedEntryWrapper` wraps purchased tiles with unique `ValueKey`
