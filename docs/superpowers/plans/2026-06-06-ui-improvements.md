# KipiList UI Improvements — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Apply 10 UI improvements to KipiList — bottom navigation bar, skeleton screens, touch targets, gesture hints, visual polish, and brand theme palettes.

**Architecture:** Each task is self-contained and produces a working, testable change. Tasks 1–5 touch structure; Tasks 6–10 are isolated tweaks. Execute in order since Task 1 (nav bar) changes the leading button that other tasks also touch.

**Tech Stack:** Flutter 3.x, Riverpod 3.x (codegen), Material 3, `shimmer: ^3.0.0` (already in pubspec), `shared_preferences: ^2.2.2` (already in pubspec), `flutter_animate: ^4.5.2` (already in pubspec).

---

## Context You Must Know Before Starting

- `MainShell` is in `lib/main.dart:461`. It owns the `NavigationDrawer` inside a `Drawer` widget, and the `IndexedStack` with the 5 main screens.
- Every main screen (`AiHomeScreen`, `RecipesScreen`, `PantryScreen`, `MealPlannerScreen`, `ListScreenBody`) has its own `Scaffold` and an `AppBar` with `leading: IconButton(icon: Icon(Icons.menu), onPressed: () => Scaffold.of(context).openDrawer())`.
- `ThemeOption` is defined in `lib/domain/entities/premium_feature.dart:85`.
- `_SmallIconButton` (shopping item ± buttons) is in `lib/app/lists/widgets/shopping_item_tile.dart:316` — uses `InkWell` with 6px padding and a 14px icon (~26px total tap target).
- `_QuantityControl` (pantry ± buttons) is in `lib/app/pantry/screens/pantry_screen.dart:609` — uses `Spacing.xs` (8px) padding and a 20px icon (~36px total tap target).
- The pantry screen ALREADY shows `${item.currentQuantity} / ${item.idealQuantity} ${item.unit.label}` above the progress bar (pantry_screen.dart:450) — Task 6 (Stock Labels) is already implemented; skip it.

---

## File Map

| File | Action |
|------|--------|
| `lib/main.dart` | Remove Drawer/NavigationDrawer, add NavigationBar, reorder IndexedStack |
| `lib/app/shared/widgets/account_menu_sheet.dart` | **Create** — account bottom sheet (Profile/Settings/Premium) |
| `lib/app/ai/screens/ai_home_screen.dart` | Replace menu button, fix stagger animation |
| `lib/app/recipes/screens/recipes_screen.dart` | Replace menu button, skeleton loading, responsive grid |
| `lib/app/pantry/screens/pantry_screen.dart` | Replace menu button, skeleton loading, touch targets |
| `lib/app/meal_planner/screens/meal_planner_screen.dart` | Replace menu button |
| `lib/app/lists/list_screen_body.dart` | Replace menu button, skeleton loading, gesture hint banner |
| `lib/app/lists/widgets/shopping_item_tile.dart` | Touch targets, swipe hint icon, SnackBar dedup |
| `lib/app/lists/widgets/shopping_item_tile_skeleton.dart` | **Create** — shimmer skeleton for list items |
| `lib/app/recipes/widgets/recipe_card_skeleton.dart` | **Create** — shimmer skeleton for recipe cards |
| `lib/app/pantry/widgets/pantry_item_skeleton.dart` | **Create** — shimmer skeleton for pantry items |
| `lib/core/utils/snack_bar_utils.dart` | **Create** — SnackBar dedup utility |
| `lib/domain/entities/premium_feature.dart` | Add 3 brand theme options |

---

## Task 1: Bottom Navigation Bar

**Files:**
- Modify: `lib/main.dart:461–607`
- Create: `lib/app/shared/widgets/account_menu_sheet.dart`

- [ ] **Step 1: Create the AccountMenuSheet widget**

Create `lib/app/shared/widgets/account_menu_sheet.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:shopping_list/app/settings/screens/settings_screen.dart';
import 'package:shopping_list/app/settings/screens/user_profile_screen.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';

class AccountMenuSheet extends StatelessWidget {
  const AccountMenuSheet({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (_) => const AccountMenuSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text('Perfil'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, fadeSlideRoute<void>(const UserProfileScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: Text(l10n.settingsAppBar),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, fadeSlideRoute<void>(const SettingsScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspace_premium_outlined),
            title: Text(l10n.becomePremium),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, fadeSlideRoute<void>(const PaywallScreen()));
            },
          ),
        ],
      ),
    );
  }
}
```

- [ ] **Step 2: Rewrite MainShell._MainShellState.build in main.dart**

Replace the entire `build` method of `_MainShellState` (lines 495–606). The new version removes the `drawer` and adds `bottomNavigationBar`. Note the new tab order: 0=AI, 1=Receitas, 2=Listas, 3=Despensa, 4=Planejador — reorder IndexedStack accordingly. Also fix the QuickActions indices (`action_pantry` → index 3, `action_ai` → index 0):

```dart
@override
Widget build(BuildContext context) {
  final l10n = AppLocalizations.of(context)!;
  return Scaffold(
    key: _scaffoldKey,
    bottomNavigationBar: NavigationBar(
      selectedIndex: _currentTab,
      onDestinationSelected: (index) => setState(() => _currentTab = index),
      destinations: [
        const NavigationDestination(
          icon: Icon(Icons.smart_toy_outlined),
          selectedIcon: Icon(Icons.smart_toy),
          label: 'IA',
        ),
        NavigationDestination(
          icon: const Icon(Icons.restaurant_menu_outlined),
          selectedIcon: const Icon(Icons.restaurant_menu),
          label: l10n.recipes,
        ),
        NavigationDestination(
          icon: const Icon(Icons.list_alt_outlined),
          selectedIcon: const Icon(Icons.list_alt),
          label: l10n.myLists,
        ),
        NavigationDestination(
          icon: const Icon(Icons.inventory_2_outlined),
          selectedIcon: const Icon(Icons.inventory_2),
          label: l10n.pantry,
        ),
        const NavigationDestination(
          icon: Icon(Icons.calendar_month_outlined),
          selectedIcon: Icon(Icons.calendar_month),
          label: 'Cardápio',
        ),
      ],
    ),
    body: IndexedStack(
      index: _currentTab,
      children: const [
        AiHomeScreen(),
        RecipesScreen(),
        ListLoader(),
        PantryScreen(),
        MealPlannerScreen(),
      ],
    ),
  );
}
```

Also update `initState` QuickActions indices:
```dart
_quickActions.initialize((shortcutType) {
  if (shortcutType == 'action_pantry') {
    setState(() => _currentTab = 3); // Despensa is now index 3
  } else if (shortcutType == 'action_ai') {
    setState(() => _currentTab = 0);
  }
});
```

- [ ] **Step 3: Replace menu buttons in all 5 main screens**

In each file below, find `leading: IconButton(icon: const Icon(Icons.menu), onPressed: () => Scaffold.of(context).openDrawer(), ...)` and replace with:

```dart
leading: IconButton(
  icon: const Icon(Icons.person_outline),
  onPressed: () => AccountMenuSheet.show(context),
),
```

Files to update:
- `lib/app/ai/screens/ai_home_screen.dart` (lines ~300–304 and ~231 region — there are two AppBars: one for no-list state and one for list state, update both)
- `lib/app/recipes/screens/recipes_screen.dart` (lines ~112–114)
- `lib/app/pantry/screens/pantry_screen.dart` (lines ~31–33)
- `lib/app/meal_planner/screens/meal_planner_screen.dart` (lines ~155–157)
- `lib/app/lists/list_screen_body.dart` (line ~278–280, inside `SliverAppBar`)

Add the import to each file that doesn't have it:
```dart
import 'package:shopping_list/app/shared/widgets/account_menu_sheet.dart';
```

- [ ] **Step 4: Run the app and verify**

```bash
flutter analyze --fatal-infos
```

Expected: no errors. Then run the app and verify:
- Bottom nav bar appears with 5 tabs
- Tapping each tab switches screens correctly
- Tapping the person icon in any screen opens the account sheet
- Profile/Settings/Premium links still work from the sheet

- [ ] **Step 5: Commit**

```bash
git add lib/main.dart lib/app/shared/widgets/account_menu_sheet.dart \
  lib/app/ai/screens/ai_home_screen.dart \
  lib/app/recipes/screens/recipes_screen.dart \
  lib/app/pantry/screens/pantry_screen.dart \
  lib/app/meal_planner/screens/meal_planner_screen.dart \
  lib/app/lists/list_screen_body.dart
git commit -m "feat(nav): replace NavigationDrawer with bottom NavigationBar"
```

---

## Task 2: Skeleton Screens

**Files:**
- Create: `lib/app/lists/widgets/shopping_item_tile_skeleton.dart`
- Create: `lib/app/recipes/widgets/recipe_card_skeleton.dart`
- Create: `lib/app/pantry/widgets/pantry_item_skeleton.dart`
- Modify: `lib/app/lists/list_screen_body.dart:554`
- Modify: `lib/app/recipes/screens/recipes_screen.dart:276`
- Modify: `lib/app/pantry/screens/pantry_screen.dart:210`

- [ ] **Step 1: Create ShoppingItemTileSkeleton**

Create `lib/app/lists/widgets/shopping_item_tile_skeleton.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShoppingItemTileSkeleton extends StatelessWidget {
  const ShoppingItemTileSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final base = theme.colorScheme.surfaceContainerHighest;
    final highlight = theme.colorScheme.surface;
    return Shimmer.fromColors(
      baseColor: base,
      highlightColor: highlight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Container(
          height: 64,
          decoration: BoxDecoration(
            color: base,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            children: [
              Container(width: 26, height: 26, decoration: BoxDecoration(color: base, shape: BoxShape.circle)),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 14, width: double.infinity, color: base),
                    const SizedBox(height: 6),
                    Container(height: 10, width: 100, color: base),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Container(width: 72, height: 26, decoration: BoxDecoration(color: base, borderRadius: BorderRadius.circular(20))),
            ],
          ),
        ),
      ),
    );
  }
}
```

- [ ] **Step 2: Create RecipeCardSkeleton**

Create `lib/app/recipes/widgets/recipe_card_skeleton.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class RecipeCardSkeleton extends StatelessWidget {
  const RecipeCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final base = theme.colorScheme.surfaceContainerHighest;
    final highlight = theme.colorScheme.surface;
    return Shimmer.fromColors(
      baseColor: base,
      highlightColor: highlight,
      child: Container(
        decoration: BoxDecoration(
          color: base,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: base,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 12, width: double.infinity, color: base),
                  const SizedBox(height: 6),
                  Container(height: 10, width: 60, color: base),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

- [ ] **Step 3: Create PantryItemSkeleton**

Create `lib/app/pantry/widgets/pantry_item_skeleton.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PantryItemSkeleton extends StatelessWidget {
  const PantryItemSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final base = theme.colorScheme.surfaceContainerHighest;
    final highlight = theme.colorScheme.surface;
    return Shimmer.fromColors(
      baseColor: base,
      highlightColor: highlight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: base,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 14, width: 160, color: base),
              const SizedBox(height: 8),
              Container(height: 8, width: double.infinity, color: base),
              const SizedBox(height: 6),
              Container(height: 10, width: 80, color: base),
            ],
          ),
        ),
      ),
    );
  }
}
```

- [ ] **Step 4: Replace loading state in list_screen_body.dart**

In `lib/app/lists/list_screen_body.dart`, find line ~554:
```dart
loading: () => const SafeArea(child: Center(child: CircularProgressIndicator())),
```

Replace with:
```dart
loading: () => SafeArea(
  child: ListView.builder(
    itemCount: 6,
    itemBuilder: (_, __) => const ShoppingItemTileSkeleton(),
  ),
),
```

Add import at top of file:
```dart
import 'package:shopping_list/app/lists/widgets/shopping_item_tile_skeleton.dart';
```

- [ ] **Step 5: Replace loading state in recipes_screen.dart**

In `lib/app/recipes/screens/recipes_screen.dart`, find lines ~276–285:
```dart
loading: () => Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const CircularProgressIndicator(),
      const SizedBox(height: Spacing.md),
      Text(l10n.loadingRecipes),
    ],
  ),
),
```

Replace with:
```dart
loading: () => GridView.builder(
  padding: const EdgeInsets.all(Spacing.md),
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 0.75,
    crossAxisSpacing: Spacing.md,
    mainAxisSpacing: Spacing.md,
  ),
  itemCount: 4,
  itemBuilder: (_, __) => const RecipeCardSkeleton(),
),
```

Add import at top:
```dart
import 'package:shopping_list/app/recipes/widgets/recipe_card_skeleton.dart';
```

- [ ] **Step 6: Replace loading state in pantry_screen.dart**

In `lib/app/pantry/screens/pantry_screen.dart`, find line ~210:
```dart
loading: () => const Center(child: CircularProgressIndicator()),
```

Replace with:
```dart
loading: () => ListView.builder(
  itemCount: 6,
  itemBuilder: (_, __) => const PantryItemSkeleton(),
),
```

Add import at top:
```dart
import 'package:shopping_list/app/pantry/widgets/pantry_item_skeleton.dart';
```

- [ ] **Step 7: Verify and commit**

```bash
flutter analyze --fatal-infos
```

Expected: no errors.

```bash
git add lib/app/lists/widgets/shopping_item_tile_skeleton.dart \
  lib/app/recipes/widgets/recipe_card_skeleton.dart \
  lib/app/pantry/widgets/pantry_item_skeleton.dart \
  lib/app/lists/list_screen_body.dart \
  lib/app/recipes/screens/recipes_screen.dart \
  lib/app/pantry/screens/pantry_screen.dart
git commit -m "feat(ui): add shimmer skeleton screens for loading states"
```

---

## Task 3: Touch Targets on ± Buttons

**Files:**
- Modify: `lib/app/lists/widgets/shopping_item_tile.dart:316–337` (`_SmallIconButton`)
- Modify: `lib/app/pantry/screens/pantry_screen.dart:609–648` (`_QuantityControl`)

- [ ] **Step 1: Fix _SmallIconButton touch target**

In `lib/app/lists/widgets/shopping_item_tile.dart`, find the `_SmallIconButton.build` method (lines ~322–336):

```dart
@override
Widget build(BuildContext context) {
  final theme = Theme.of(context);
  return InkWell(
    onTap: onPressed,
    borderRadius: BorderRadius.circular(20),
    child: Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withAlpha(100),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 14, color: theme.colorScheme.onSurfaceVariant),
    ),
  );
}
```

Replace with:

```dart
@override
Widget build(BuildContext context) {
  final theme = Theme.of(context);
  return SizedBox(
    width: 44,
    height: 44,
    child: InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(22),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHighest.withAlpha(100),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 14, color: theme.colorScheme.onSurfaceVariant),
        ),
      ),
    ),
  );
}
```

- [ ] **Step 2: Fix _QuantityControl touch target**

In `lib/app/pantry/screens/pantry_screen.dart`, find the `_QuantityControl.build` method (lines ~621–647). The current padding is `const EdgeInsets.all(Spacing.xs)` (8px), giving ~36px total. Change to `Spacing.sm` (12px) to reach 44px:

Find:
```dart
child: Padding(
  padding: const EdgeInsets.all(Spacing.xs),
  child: Icon(
```

Replace with:
```dart
child: Padding(
  padding: const EdgeInsets.all(Spacing.sm),
  child: Icon(
```

- [ ] **Step 3: Verify and commit**

```bash
flutter analyze --fatal-infos
git add lib/app/lists/widgets/shopping_item_tile.dart \
  lib/app/pantry/screens/pantry_screen.dart
git commit -m "fix(a11y): increase touch target size for quantity +/- buttons to 44px"
```

---

## Task 4: Swipe Delete Visual Hint

**Files:**
- Modify: `lib/app/lists/widgets/shopping_item_tile.dart`

The `tileContent` variable holds the tile widget (an `InkWell` wrapping a `Padding`/`Row`). We need to wrap it in a `Stack` to add the faint icon.

- [ ] **Step 1: Locate tileContent and wrap in Stack**

In `lib/app/lists/widgets/shopping_item_tile.dart`, find where `tileContent` is assigned. Look for the variable assignment near line ~55 that starts with `final tileContent = ...` (it's the `InkWell`). 

After `tileContent` is built and before the `if (!selectionMode && !isPurchased)` check (around line ~230), add this wrapping logic.

Find the final return statement that either returns `tileContent` directly (line ~230) or wraps it in `Dismissible` (line ~233). In both cases, update `tileContent` itself by wrapping the `InkWell` in a `Stack`:

Find the line where `tileContent` is defined (the start of the `InkWell(...)` assignment). It should look like:
```dart
final tileContent = InkWell(
```

Change to:
```dart
final tileContent = Stack(
  children: [
    InkWell(
```

Then after the closing `)` of the `InkWell`, before the `);` that closes the `tileContent` assignment, add:

```dart
    if (!selectionMode)
      Positioned(
        right: 16,
        top: 0,
        bottom: 0,
        child: Align(
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.delete_outline,
            size: 18,
            color: theme.colorScheme.error.withAlpha(25),
          ),
        ),
      ),
  ],
);
```

- [ ] **Step 2: Verify and commit**

```bash
flutter analyze --fatal-infos
git add lib/app/lists/widgets/shopping_item_tile.dart
git commit -m "feat(ux): add faint swipe-to-delete hint icon on list items"
```

---

## Task 5: AI Card Stagger Animation Fix

**Files:**
- Modify: `lib/app/ai/screens/ai_home_screen.dart:464–471`

- [ ] **Step 1: Cap stagger at 5 items and reduce duration**

In `lib/app/ai/screens/ai_home_screen.dart`, find the `itemBuilder` inside the `ListView.builder` at the expanded list card (around line ~464):

```dart
itemBuilder: (context, index) {
  return ShoppingItemTile(
    listId: listId,
    item: items[index],
  ).animate().fadeIn(
    duration: 200.ms,
    delay: (index * 30).ms,
  );
},
```

Replace with:

```dart
itemBuilder: (context, index) {
  final tile = ShoppingItemTile(
    listId: listId,
    item: items[index],
  );
  if (index >= 5) return tile;
  return tile.animate().fadeIn(
    duration: 150.ms,
    delay: (index * 30).ms,
  );
},
```

- [ ] **Step 2: Verify and commit**

```bash
flutter analyze --fatal-infos
git add lib/app/ai/screens/ai_home_screen.dart
git commit -m "perf(ui): cap AI card stagger animation at 5 items, reduce duration to 150ms"
```

---

## Task 6: Pantry Stock Labels (SKIP — Already Implemented)

The pantry screen already shows `${item.currentQuantity} / ${item.idealQuantity} ${item.unit.label}` above the progress bar at `pantry_screen.dart:450`. No changes needed.

---

## Task 7: Responsive Recipe Grid Aspect Ratio

**Files:**
- Modify: `lib/app/recipes/screens/recipes_screen.dart:245–252`

- [ ] **Step 1: Wrap GridView with LayoutBuilder**

In `lib/app/recipes/screens/recipes_screen.dart`, find the `GridView.builder` at line ~245:

```dart
child: GridView.builder(
  padding: const EdgeInsets.all(Spacing.md),
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 0.75,
```

Replace with:

```dart
child: LayoutBuilder(
  builder: (context, constraints) {
    final ratio = constraints.maxWidth < 380 ? 0.65 : 0.75;
    return GridView.builder(
      padding: const EdgeInsets.all(Spacing.md),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: ratio,
```

Close the new `LayoutBuilder` builder function after the `GridView.builder`'s closing `)`:

```dart
    );
  },
),
```

Note: remove the `const` from `SliverGridDelegateWithFixedCrossAxisCount` since `ratio` is now a variable.

- [ ] **Step 2: Verify and commit**

```bash
flutter analyze --fatal-infos
git add lib/app/recipes/screens/recipes_screen.dart
git commit -m "fix(ui): responsive recipe grid aspect ratio for small screens"
```

---

## Task 8: SnackBar Deduplication

**Files:**
- Create: `lib/core/utils/snack_bar_utils.dart`
- Modify: `lib/app/lists/widgets/shopping_item_tile.dart:252` (dismiss SnackBar)

- [ ] **Step 1: Create snack_bar_utils.dart**

Create `lib/core/utils/snack_bar_utils.dart`:

```dart
import 'package:flutter/material.dart';

void showUniqueSnackBar(
  BuildContext context, {
  required Widget content,
  SnackBarAction? action,
}) {
  if (!context.mounted) return;
  final messenger = ScaffoldMessenger.of(context);
  messenger.clearSnackBars();
  messenger.showSnackBar(
    SnackBar(content: content, action: action),
  );
}
```

- [ ] **Step 2: Update dismiss SnackBar in shopping_item_tile.dart**

In `lib/app/lists/widgets/shopping_item_tile.dart`, add import:
```dart
import 'package:shopping_list/core/utils/snack_bar_utils.dart';
```

Find the `onDismissed` callback (line ~251):
```dart
if (context.mounted) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(l10n.itemRemoved),
      action: SnackBarAction(
        label: l10n.undo,
        onPressed: () => notifier.restoreItem(removedItem),
      ),
    ),
  );
}
```

Replace with:
```dart
showUniqueSnackBar(
  context,
  content: Text(l10n.itemRemoved),
  action: SnackBarAction(
    label: l10n.undo,
    onPressed: () => notifier.restoreItem(removedItem),
  ),
);
```

- [ ] **Step 3: Verify and commit**

```bash
flutter analyze --fatal-infos
git add lib/core/utils/snack_bar_utils.dart lib/app/lists/widgets/shopping_item_tile.dart
git commit -m "fix(ux): deduplicate SnackBars on rapid item deletion"
```

---

## Task 9: Gesture Hint Banner

**Files:**
- Modify: `lib/app/lists/list_screen_body.dart`

The banner appears once when the list has items, stored in `SharedPreferences`. It dismisses on tap or after 5 seconds.

- [ ] **Step 1: Add state and SharedPreferences logic**

`list_screen_body.dart` is a `ConsumerStatefulWidget`. Add two fields to `_ListScreenBodyState`:

```dart
bool _showGestureHint = false;
```

In `initState`, add:

```dart
@override
void initState() {
  super.initState();
  _checkGestureHint();
}

Future<void> _checkGestureHint() async {
  final prefs = await SharedPreferences.getInstance();
  final shown = prefs.getBool('hint_gestures_shown') ?? false;
  if (!shown && mounted) {
    setState(() => _showGestureHint = true);
    Future.delayed(const Duration(seconds: 5), _dismissGestureHint);
  }
}

Future<void> _dismissGestureHint() async {
  if (!mounted) return;
  setState(() => _showGestureHint = false);
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('hint_gestures_shown', true);
}
```

Add import at top of file if not present:
```dart
import 'package:shared_preferences/shared_preferences.dart';
```

- [ ] **Step 2: Add hint banner widget and insert into the sliver list**

Inside the `itemsAsync.when(data: (items) { ... })` block, after the list has items (i.e., where the sliver content starts), insert a `SliverToBoxAdapter` for the hint banner. Place it as the FIRST sliver, before the item list:

```dart
if (_showGestureHint && items.isNotEmpty)
  SliverToBoxAdapter(
    child: GestureDetector(
      onTap: _dismissGestureHint,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(999),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.info_outline, size: 14, color: Theme.of(context).colorScheme.onSurfaceVariant),
            const SizedBox(width: 6),
            Text(
              'Segure para selecionar • Deslize para remover',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    ),
  ),
```

- [ ] **Step 3: Verify and commit**

```bash
flutter analyze --fatal-infos
git add lib/app/lists/list_screen_body.dart
git commit -m "feat(ux): add one-time gesture hint banner in shopping list"
```

---

## Task 10: Brand Theme Palettes

**Files:**
- Modify: `lib/domain/entities/premium_feature.dart:96–107`

The `ThemeOption.options` list is a `const List`. Add 3 brand palettes at the beginning (free, non-premium). The existing `ThemeSelectionScreen` and `fromColorValue` method will work automatically.

- [ ] **Step 1: Add brand palette options**

In `lib/domain/entities/premium_feature.dart`, find the `options` list (line ~96):

```dart
static const List<ThemeOption> options = [
  ThemeOption(name: 'Verde', color: Colors.green, isPremium: false),
  ThemeOption(name: 'Azul', color: Colors.blue, isPremium: false),
  ThemeOption(name: 'Roxo', color: Colors.purple, isPremium: false),
  ...
```

Add 3 brand options at the start:

```dart
static const List<ThemeOption> options = [
  ThemeOption(name: 'Fresco', color: Color(0xFF2E7D32), isPremium: false),
  ThemeOption(name: 'Oceano', color: Color(0xFF0277BD), isPremium: false),
  ThemeOption(name: 'Cálido', color: Color(0xFFE65100), isPremium: false),
  ThemeOption(name: 'Verde', color: Colors.green, isPremium: false),
  ThemeOption(name: 'Azul', color: Colors.blue, isPremium: false),
  ThemeOption(name: 'Roxo', color: Colors.purple, isPremium: false),
  ThemeOption(name: 'Vermelho', color: Colors.red, isPremium: true),
  ThemeOption(name: 'Laranja', color: Colors.orange, isPremium: true),
  ThemeOption(name: 'Rosa', color: Colors.pink, isPremium: true),
  ThemeOption(name: 'Índigo', color: Colors.indigo, isPremium: true),
  ThemeOption(name: 'Âmbar', color: Colors.amber, isPremium: true),
  ThemeOption(name: 'Teal', color: Colors.teal, isPremium: true),
  ThemeOption(name: 'Marrom', color: Colors.brown, isPremium: true),
];
```

Note: `Color(0xFF...)` requires `dart:ui` or `package:flutter/material.dart`. The file already imports `Colors` from Flutter, so `Color` is available. Keep the existing `const` keyword on the list (the named `Color` constructor is const-compatible).

- [ ] **Step 2: Verify and commit**

```bash
flutter analyze --fatal-infos
git add lib/domain/entities/premium_feature.dart
git commit -m "feat(theme): add 3 brand palette presets (Fresco, Oceano, Cálido)"
```

---

## Final Verification

- [ ] **Run full analysis**

```bash
flutter analyze --fatal-infos
```

Expected: 0 errors, 0 warnings, 0 infos.

- [ ] **Manual smoke test checklist**

- [ ] Bottom nav bar shows 5 tabs, all work
- [ ] Person icon in any screen opens account sheet with Profile/Settings/Premium
- [ ] Shimmer appears while list/recipes/pantry loads
- [ ] Quantity ± buttons have larger tap area (no visual change)
- [ ] Faint delete icon visible at trailing edge of list items
- [ ] AI expanded list shows items without lag
- [ ] Recipes grid adapts on narrow screens
- [ ] Rapid item deletion shows only one SnackBar (no stack)
- [ ] Gesture hint banner appears once in a list with items, dismisses on tap or after 5s
- [ ] Theme selection shows Fresco, Oceano, Cálido at top of grid (free, no lock icon)
