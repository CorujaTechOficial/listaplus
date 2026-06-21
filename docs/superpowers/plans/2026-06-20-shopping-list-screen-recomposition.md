# Shopping List Screen Recomposition Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Recompose the shopping list screen so list management is the default posture, progress/budget become a compact expandable summary, and the bottom action region stays stable across normal, shopping, and selection states.

**Architecture:** Keep `ListScreenBody` as the orchestration surface, but split the recomposition into two focused UI units: a compact/expanded summary widget and a shared bottom action region. Reuse current providers and list behaviors, while reducing top-level chrome, stabilizing mode transitions, and softening completion/error surfaces without changing the data model.

**Tech Stack:** Flutter, Material 3, Riverpod, Flutter widget tests, existing list providers/widgets, `flutter_animate`

## Global Constraints

- State uses Riverpod providers already wired into `lib/app/lists/list_screen_body.dart`; do not change backend/provider contracts unless required by UI composition.
- Every user-facing string must continue to come from `AppLocalizations.of(context)!`; do not hardcode visible copy.
- Use design tokens from `theme/tokens.dart`; avoid raw spacing/radius values unless the file already contains an unresolved existing exception being removed in the same task.
- Preserve Material 3 familiarity and existing list behaviors: grouping, manual reorder, shopping mode, selection mode, search, share, export, and budget support remain available.
- Shopping mode remains a secondary state; do not make it the default entry posture.
- Progress/budget become a compact summary with expansion-on-tap; do not keep the existing large persistent header.

---

## File Map

| File | Action | Responsibility |
|---|---|---|
| `lib/app/lists/list_screen_body.dart` | Modify | Recompose screen structure, app bar hierarchy, summary insertion, purchased section styling, shared bottom region wiring, and error surface |
| `lib/app/lists/widgets/progress_info_header.dart` | Modify | Convert current header widget into compact expandable summary behavior |
| `lib/app/lists/widgets/filter_bar.dart` | Modify | Support use inside expanded summary instead of always-on top-level row |
| `lib/app/lists/widgets/kipi_quick_bar.dart` | Modify | Make quick add the stable anchor of the bottom action region across modes |
| `lib/app/lists/widgets/selection_bottom_bar.dart` | Modify | Rework batch action presentation so it layers into a shared bottom region rather than replacing it outright |
| `lib/app/lists/widgets/shopping_completion_view.dart` | Modify | Celebrate completion first and demote upsell treatment |
| `lib/app/lists/widgets/empty_state.dart` | Modify | Align empty state rhythm and CTA hierarchy with quick-add-first composition |
| `test/app/lists/widgets/list_summary_header_test.dart` | Create | Widget tests for compact/expanded summary behavior |
| `test/app/lists/widgets/list_bottom_action_region_test.dart` | Create | Widget tests for stable bottom region in normal/shopping/selection states |
| `test/app/lists/widgets/shopping_completion_view_test.dart` | Create | Widget tests for success-first completion layout |

---

### Task 1: Lock the new summary behavior with widget tests

**Files:**
- Create: `test/app/lists/widgets/list_summary_header_test.dart`
- Read: `lib/app/lists/widgets/progress_info_header.dart`
- Read: `lib/app/lists/widgets/filter_bar.dart`

**Interfaces:**
- Consumes: `ProgressInfoHeader(...)` with the existing constructor shape
- Produces: Test coverage for three behaviors:
  - collapsed summary shows progress + money and hides filters
  - tapping summary expands details and reveals filters/sort
  - budget details render only when `budget > 0`

- [ ] **Step 1: Write the failing test for collapsed summary**

Create `test/app/lists/widgets/list_summary_header_test.dart` with:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/lists/widgets/filter_bar.dart';
import 'package:shopping_list/app/lists/widgets/progress_info_header.dart';

void main() {
  Widget buildSubject({required double budget}) {
    return MaterialApp(
      home: Scaffold(
        body: ProgressInfoHeader(
          purchasedCount: 3,
          totalItems: 8,
          totalEstimated: 120,
          totalPurchased: 56,
          progress: 0.375,
          budget: budget,
          overBudget: false,
          budgetProgress: 0.46,
          filter: FilterType.all,
          sortLabel: 'Manual',
          currencyCode: 'BRL',
          onFilterChanged: (_) {},
          onSortPressed: () {},
        ),
      ),
    );
  }

  testWidgets('starts collapsed with summary visible', (tester) async {
    await tester.pumpWidget(buildSubject(budget: 100));

    expect(find.byType(FilterChip), findsNothing);
    expect(find.textContaining('3'), findsWidgets);
    expect(find.textContaining('56'), findsWidgets);
  });
}
```

- [ ] **Step 2: Run the test to verify it fails**

Run:

```bash
flutter test test/app/lists/widgets/list_summary_header_test.dart
```

Expected: FAIL because the current widget still renders filter chips immediately.

- [ ] **Step 3: Add the expansion behavior test**

Append this test to the same file:

```dart
testWidgets('expands to reveal filters and sort controls', (tester) async {
  await tester.pumpWidget(buildSubject(budget: 100));

  await tester.tap(find.byType(ProgressInfoHeader));
  await tester.pumpAndSettle();

  expect(find.byType(FilterChip), findsNWidgets(3));
  expect(find.byIcon(Icons.sort), findsOneWidget);
});
```

- [ ] **Step 4: Add the no-budget test**

Append:

```dart
testWidgets('hides budget details when budget is zero', (tester) async {
  await tester.pumpWidget(buildSubject(budget: 0));

  expect(find.textContaining('120'), findsWidgets);
  expect(find.textContaining('budget'), findsNothing);
});
```

- [ ] **Step 5: Commit the failing-summary test scaffold**

```bash
git add test/app/lists/widgets/list_summary_header_test.dart
git commit -m "test(lists): lock compact summary header behavior"
```

---

### Task 2: Implement the compact expandable summary header

**Files:**
- Modify: `lib/app/lists/widgets/progress_info_header.dart`
- Modify: `lib/app/lists/widgets/filter_bar.dart`
- Test: `test/app/lists/widgets/list_summary_header_test.dart`

**Interfaces:**
- Consumes: Existing `ProgressInfoHeader` constructor from `list_screen_body.dart`
- Produces:
  - `ProgressInfoHeader` toggles between collapsed and expanded visual states
  - `FilterBar` renders cleanly inside an expanded summary body

- [ ] **Step 1: Convert `ProgressInfoHeader` to a stateful expandable surface**

Replace the class declaration header:

```dart
class ProgressInfoHeader extends StatefulWidget implements PreferredSizeWidget {
  const ProgressInfoHeader({
    super.key,
    required this.purchasedCount,
    required this.totalItems,
    required this.totalEstimated,
    required this.totalPurchased,
    required this.progress,
    required this.budget,
    required this.overBudget,
    required this.budgetProgress,
    required this.filter,
    required this.sortLabel,
    required this.currencyCode,
    required this.onFilterChanged,
    required this.onSortPressed,
  });

  @override
  State<ProgressInfoHeader> createState() => _ProgressInfoHeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(72);
}
```

- [ ] **Step 2: Implement a collapsed summary row with expansion affordance**

In `_ProgressInfoHeaderState.build`, structure the widget around:

```dart
bool _expanded = false;

@override
Widget build(BuildContext context) {
  final theme = Theme.of(context);

  return Material(
    color: theme.colorScheme.surface,
    child: InkWell(
      onTap: () => setState(() => _expanded = !_expanded),
      child: AnimatedSize(
        duration: DurationTokens.normal,
        curve: Curves.easeOutCubic,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            Spacing.md,
            Spacing.xs,
            Spacing.md,
            Spacing.sm,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _SummaryRow(...),
              if (_expanded) ...[
                const SizedBox(height: Spacing.sm),
                _ExpandedDetails(...),
              ],
            ],
          ),
        ),
      ),
    ),
  );
}
```

The collapsed `_SummaryRow` must show:
- purchased/total
- purchased total amount
- budget state chip only when `budget > 0`
- chevron affordance

- [ ] **Step 3: Move filters and sort into the expanded body**

Inside the expanded section, reuse `FilterBar` instead of individual chips:

```dart
FilterBar(
  filter: widget.filter,
  sort: SortType.manual,
  isGrouped: false,
  onFilterChanged: widget.onFilterChanged,
  onSortChanged: (_) => widget.onSortPressed(),
  onGroupedChanged: (_) {},
)
```

Then adjust `FilterBar` so it supports this summary usage:

```dart
return Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    SegmentedButton<FilterType>(...),
    const SizedBox(height: Spacing.xs),
    Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () => widget.onSortChanged(widget.sort),
            icon: const Icon(Icons.sort, size: 18),
            label: Text(_sortLabel(context, widget.sort)),
          ),
        ),
        const SizedBox(width: Spacing.xs),
        IconButton.filledTonal(
          onPressed: () => widget.onGroupedChanged(!widget.isGrouped),
          icon: Icon(widget.isGrouped ? Icons.grid_view : Icons.view_agenda_outlined),
        ),
      ],
    ),
  ],
);
```

Add a private helper in `filter_bar.dart`:

```dart
String _sortLabel(BuildContext context, SortType sort) {
  final l10n = AppLocalizations.of(context)!;
  switch (sort) {
    case SortType.name:
      return l10n.sortName;
    case SortType.category:
      return l10n.sortCategory;
    case SortType.date:
      return l10n.sortDate;
    case SortType.manual:
      return l10n.sortManual;
  }
}
```

- [ ] **Step 4: Run the summary widget tests**

```bash
flutter test test/app/lists/widgets/list_summary_header_test.dart
```

Expected: PASS

- [ ] **Step 5: Run targeted analysis**

```bash
flutter analyze lib/app/lists/widgets/progress_info_header.dart lib/app/lists/widgets/filter_bar.dart
```

Expected: no errors

- [ ] **Step 6: Commit**

```bash
git add lib/app/lists/widgets/progress_info_header.dart lib/app/lists/widgets/filter_bar.dart test/app/lists/widgets/list_summary_header_test.dart
git commit -m "feat(lists): add compact expandable summary header"
```

---

### Task 3: Lock and build a stable bottom action region

**Files:**
- Create: `test/app/lists/widgets/list_bottom_action_region_test.dart`
- Modify: `lib/app/lists/widgets/kipi_quick_bar.dart`
- Modify: `lib/app/lists/widgets/selection_bottom_bar.dart`
- Modify: `lib/app/lists/list_screen_body.dart`

**Interfaces:**
- Consumes:
  - `KipiQuickBar({required String listId})`
  - `SelectionBottomBar({required VoidCallback onCancel, required VoidCallback onDelete, required VoidCallback onBuy})`
- Produces:
  - stable bottom region in normal/shopping states
  - selection state layered into same visual family

- [ ] **Step 1: Write failing tests for bottom region continuity**

Create `test/app/lists/widgets/list_bottom_action_region_test.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/lists/widgets/kipi_quick_bar.dart';
import 'package:shopping_list/app/lists/widgets/selection_bottom_bar.dart';

void main() {
  testWidgets('selection bar keeps quick action region visual shell', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          bottomNavigationBar: SelectionBottomBar(
            onCancel: () {},
            onDelete: () {},
            onBuy: () {},
          ),
        ),
      ),
    );

    expect(find.byType(BottomAppBar), findsOneWidget);
    expect(find.textContaining('Cancel'), findsNothing);
  });
}
```

This should fail after localization/theme setup is corrected and before the redesign because the current selection bar is an independent bottom app bar with no shared quick-add shell.

- [ ] **Step 2: Rebuild `SelectionBottomBar` as a tonal action strip**

Replace the `BottomAppBar` root with a neutral container:

```dart
return SafeArea(
  top: false,
  child: Container(
    padding: const EdgeInsets.fromLTRB(
      Spacing.md,
      Spacing.xs,
      Spacing.md,
      Spacing.sm,
    ),
    decoration: BoxDecoration(
      color: theme.colorScheme.surface,
      border: Border(
        top: BorderSide(color: theme.colorScheme.outlineVariant.withAlpha(90)),
      ),
    ),
    child: Row(
      children: [
        TextButton.icon(...),
        const SizedBox(width: Spacing.xs),
        TextButton.icon(...),
        const Spacer(),
        FilledButton.icon(...),
      ],
    ),
  ),
);
```

- [ ] **Step 3: Add visual shell hooks to `KipiQuickBar`**

Extend `KipiQuickBar` to support optional leading/trailing content:

```dart
class KipiQuickBar extends ConsumerStatefulWidget {
  const KipiQuickBar({
    super.key,
    required this.listId,
    this.leading,
    this.trailing,
  });

  final String listId;
  final Widget? leading;
  final Widget? trailing;
}
```

Then place those slots around the text field:

```dart
Row(
  children: [
    if (widget.leading != null) ...[
      widget.leading!,
      const SizedBox(width: Spacing.xs),
    ],
    Expanded(child: TextField(...)),
    const SizedBox(width: Spacing.xs),
    if (widget.trailing != null) ...[
      widget.trailing!,
      const SizedBox(width: Spacing.xs),
    ],
    IconButton.filled(...),
  ],
)
```

- [ ] **Step 4: Replace the bottom navigation branching in `list_screen_body.dart`**

Change the bottom region from three independent trees into one shared structure:

```dart
bottomNavigationBar: _selectionMode
    ? SelectionBottomBar(
        onCancel: _exitSelectionMode,
        onDelete: _deleteSelected,
        onBuy: () => _markSelected(true),
      )
    : SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (_shoppingMode)
              _ShoppingExitBar(
                onExit: () => setState(() => _shoppingMode = false),
              )
            else
              _CatalogEntryButton(listId: widget.listId),
            KipiQuickBar(listId: widget.listId),
          ],
        ),
      ),
```

Keep the visual language consistent between `_ShoppingExitBar`, `_CatalogEntryButton`, and `KipiQuickBar` using the same top border and surface tone.

- [ ] **Step 5: Run bottom-region tests**

```bash
flutter test test/app/lists/widgets/list_bottom_action_region_test.dart
```

Expected: PASS after adapting the test copy to localized labels or semantic finders.

- [ ] **Step 6: Commit**

```bash
git add lib/app/lists/widgets/kipi_quick_bar.dart lib/app/lists/widgets/selection_bottom_bar.dart lib/app/lists/list_screen_body.dart test/app/lists/widgets/list_bottom_action_region_test.dart
git commit -m "feat(lists): stabilize bottom action region across modes"
```

---

### Task 4: Recompose `ListScreenBody` around the new hierarchy

**Files:**
- Modify: `lib/app/lists/list_screen_body.dart`
- Test: `test/app/lists/widgets/list_summary_header_test.dart`
- Test: `test/app/lists/widgets/list_bottom_action_region_test.dart`

**Interfaces:**
- Consumes:
  - `ProgressInfoHeader(...)`
  - `SelectionBottomBar(...)`
  - `KipiQuickBar(...)`
- Produces:
  - leaner app bar
  - compact summary placement
  - quieter purchased section
  - structured error state

- [ ] **Step 1: Reduce persistent app-bar actions**

Inside the non-mode app bar action list, keep:

```dart
[
  IconButton(
    icon: const Icon(Icons.shopping_basket_outlined),
    onPressed: () => setState(() => _shoppingMode = !_shoppingMode),
    tooltip: l10n.shoppingMode,
  ),
  IconButton(
    icon: const Icon(Icons.search),
    onPressed: () => showSearch(...),
  ),
  PopupMenuButton<String>(
    icon: const Icon(Icons.more_vert),
    onSelected: (val) { ... },
    itemBuilder: (context) => [ ... ],
  ),
]
```

Move share fully into the overflow menu instead of keeping it as a dedicated top-level icon.

- [ ] **Step 2: Wire the new compact summary into the sliver app bar**

Keep the summary attached below the app bar only for non-empty lists and non-selection mode:

```dart
bottom: (!_selectionMode && items.isNotEmpty)
    ? ProgressInfoHeader(
        purchasedCount: purchased.length,
        totalItems: items.length,
        totalEstimated: totalEstimated,
        totalPurchased: totalPurchased,
        progress: progress,
        budget: budget,
        overBudget: overBudget,
        budgetProgress: budgetProgress,
        filter: _filter,
        sortLabel: _getSortLabel(context),
        currencyCode: currencyCode,
        onFilterChanged: (f) => setState(() => _filter = f),
        onSortPressed: () => showSortOptionsSheet(...),
      )
    : null,
```

Selection mode should suppress the summary. Shopping mode may keep the collapsed summary visible, but not expanded by default.

- [ ] **Step 3: Soften the purchased section treatment**

Replace the current uppercase divider block with a quieter row:

```dart
child: Row(
  children: [
    Text(
      l10n.filterPurchased,
      style: theme.textTheme.titleSmall?.copyWith(
        color: theme.colorScheme.onSurfaceVariant,
        fontWeight: FontWeight.w700,
      ),
    ),
    const SizedBox(width: Spacing.xs),
    Text(
      '${purchased.length}',
      style: theme.textTheme.labelMedium?.copyWith(
        color: theme.colorScheme.onSurfaceVariant,
      ),
    ),
  ],
),
```

Do not use all-caps or decorative letterspacing here.

- [ ] **Step 4: Replace the raw error state**

Change:

```dart
return SafeArea(child: Center(child: Text(e.toString())));
```

To:

```dart
return SafeArea(
  child: EmptyState(
    icon: Icons.error_outline,
    title: l10n.errorLoadingItems,
    subtitle: e.toString(),
  ),
);
```

If `errorLoadingItems` does not exist, add the key to `lib/l10n/app_en.arb`, run translation workflow, and regenerate l10n before completing this task.

- [ ] **Step 5: Run targeted widget tests**

```bash
flutter test test/app/lists/widgets/list_summary_header_test.dart test/app/lists/widgets/list_bottom_action_region_test.dart
```

Expected: PASS

- [ ] **Step 6: Commit**

```bash
git add lib/app/lists/list_screen_body.dart
git commit -m "feat(lists): recompose shopping list screen hierarchy"
```

---

### Task 5: Rebalance empty and completion states for the new hierarchy

**Files:**
- Modify: `lib/app/lists/widgets/empty_state.dart`
- Modify: `lib/app/lists/widgets/shopping_completion_view.dart`
- Create: `test/app/lists/widgets/shopping_completion_view_test.dart`

**Interfaces:**
- Consumes:
  - `EmptyState({String? listId, IconData? icon, String? title, String? subtitle})`
  - `ShoppingCompletionView({required VoidCallback onExitShoppingMode, required int itemCount, required bool isPremium, required VoidCallback onUpgrade})`
- Produces:
  - empty state aligned with quick-add-first posture
  - completion state that celebrates success before upsell

- [ ] **Step 1: Write failing completion-state test**

Create `test/app/lists/widgets/shopping_completion_view_test.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/lists/widgets/shopping_completion_view.dart';

void main() {
  testWidgets('shows exit action as the dominant post-success next step', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ShoppingCompletionView(
            onExitShoppingMode: () {},
            itemCount: 6,
            isPremium: false,
            onUpgrade: () {},
          ),
        ),
      ),
    );

    final buttons = tester.widgetList<FilledButton>(find.byType(FilledButton)).toList();
    expect(buttons.length, greaterThanOrEqualTo(1));
  });
}
```

- [ ] **Step 2: Rebuild `ShoppingCompletionView` around success-first hierarchy**

Restructure the widget around:

```dart
return SafeArea(
  child: Padding(
    padding: const EdgeInsets.all(Spacing.lg),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(...),
        const SizedBox(height: Spacing.md),
        Text(...everythingReady...),
        const SizedBox(height: Spacing.xs),
        Text(...youCompletedList...),
        const SizedBox(height: Spacing.lg),
        FilledButton(
          onPressed: onExitShoppingMode,
          child: Text(l10n.exitShoppingMode),
        ),
        if (!isPremium) ...[
          const SizedBox(height: Spacing.lg),
          Container(
            padding: const EdgeInsets.all(Spacing.md),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerLow,
              borderRadius: BorderRadius.circular(RadiusTokens.lg),
              border: Border.all(color: theme.colorScheme.outlineVariant),
            ),
            child: Column(
              children: [
                Text(l10n.unlockPremiumTitle, textAlign: TextAlign.center),
                const SizedBox(height: Spacing.sm),
                FilledButton.tonal(
                  onPressed: onUpgrade,
                  child: Text(l10n.becomePremium),
                ),
              ],
            ),
          ),
        ],
      ],
    ),
  ),
);
```

- [ ] **Step 3: Tighten empty-state CTA hierarchy**

In `empty_state.dart`, keep suggestions but ensure the single dominant action path is the add flow:

```dart
Text(
  l10n.quickSuggestions,
  style: theme.textTheme.labelMedium?.copyWith(
    color: theme.colorScheme.onSurfaceVariant,
    fontWeight: FontWeight.w700,
  ),
),
...
FilledButton.icon(
  onPressed: () { ... },
  icon: const Icon(Icons.add),
  label: Text(l10n.addItem),
),
```

Do not add a second large CTA competing with the add action.

- [ ] **Step 4: Run completion-state tests**

```bash
flutter test test/app/lists/widgets/shopping_completion_view_test.dart
```

Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add lib/app/lists/widgets/empty_state.dart lib/app/lists/widgets/shopping_completion_view.dart test/app/lists/widgets/shopping_completion_view_test.dart
git commit -m "feat(lists): rebalance empty and completion states"
```

---

### Task 6: Final verification and integration sweep

**Files:**
- Modify: any touched files from Tasks 1-5 if fixes are required
- Test: all files from Tasks 1-5

**Interfaces:**
- Consumes: Completed UI changes from Tasks 1-5
- Produces: Verified list screen recomposition ready for review

- [ ] **Step 1: Run focused widget tests**

```bash
flutter test test/app/lists/widgets/list_summary_header_test.dart test/app/lists/widgets/list_bottom_action_region_test.dart test/app/lists/widgets/shopping_completion_view_test.dart test/app/lists/widgets/animated_entry_wrapper_test.dart test/app/lists/widgets/shopping_item_tile_exit_animation_test.dart
```

Expected: PASS

- [ ] **Step 2: Run targeted analysis**

```bash
flutter analyze lib/app/lists/list_screen_body.dart lib/app/lists/widgets/progress_info_header.dart lib/app/lists/widgets/filter_bar.dart lib/app/lists/widgets/kipi_quick_bar.dart lib/app/lists/widgets/selection_bottom_bar.dart lib/app/lists/widgets/shopping_completion_view.dart lib/app/lists/widgets/empty_state.dart
```

Expected: no errors

- [ ] **Step 3: Run broader regression check for the list module**

```bash
flutter test test/app/lists
```

Expected: PASS

- [ ] **Step 4: Review the final diff for hierarchy regressions**

Run:

```bash
git diff -- lib/app/lists/list_screen_body.dart lib/app/lists/widgets/progress_info_header.dart lib/app/lists/widgets/filter_bar.dart lib/app/lists/widgets/kipi_quick_bar.dart lib/app/lists/widgets/selection_bottom_bar.dart lib/app/lists/widgets/shopping_completion_view.dart lib/app/lists/widgets/empty_state.dart
```

Expected: changes are limited to screen hierarchy, supporting widgets, and tests; no unrelated provider/backend edits.

- [ ] **Step 5: Commit final integration fixes**

```bash
git add lib/app/lists/list_screen_body.dart lib/app/lists/widgets/progress_info_header.dart lib/app/lists/widgets/filter_bar.dart lib/app/lists/widgets/kipi_quick_bar.dart lib/app/lists/widgets/selection_bottom_bar.dart lib/app/lists/widgets/shopping_completion_view.dart lib/app/lists/widgets/empty_state.dart test/app/lists/widgets/list_summary_header_test.dart test/app/lists/widgets/list_bottom_action_region_test.dart test/app/lists/widgets/shopping_completion_view_test.dart
git commit -m "feat(lists): ship shopping list screen recomposition"
```
