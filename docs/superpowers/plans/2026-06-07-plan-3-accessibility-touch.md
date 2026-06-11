# Accessibility & Touch Targets — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development to implement this plan task-by-task.
> **Delegate to:** Gemini CLI (`gemini -p "..." --yolo --skip-trust`)

**Goal:** Fix all touch targets below 44px and add missing Semantics labels to interactive elements, ensuring compliance with iOS HIG (44pt) and Material Design (48dp) minimums.

**Architecture:** Replace `GestureDetector`/raw `Container` tap areas and `TextButton` with `shrinkWrap` with proper `IconButton`/`TextButton` with correct constraints. Add `Semantics` wrappers to `Dismissible` and navigation dots.

**Tech Stack:** Flutter `Semantics`, `IconButton`, `TextButton`, `BoxConstraints`

**Rules:**
- After each file, run: `flutter analyze --fatal-infos lib/app/<feature>/`
- Do NOT add comments. Follow existing style.
- `always_put_control_body_on_new_line` lint is active.
- All user-visible strings in Semantics labels MUST use `l10n.*`.

---

## Files Modified

| File | Issue |
|------|-------|
| `lib/app/settings/screens/paywall_screen.dart` | `TextButton` with `shrinkWrap` — well below 44px |
| `lib/app/lists/widgets/shopping_item_tile.dart` | `more_vert` with `compact` density, `Dismissible` no Semantics |
| `lib/app/meal_planner/widgets/meal_day_card.dart` | Delete `IconButton` with `compact` density |
| `lib/app/onboarding/screens/onboarding_screen.dart` | `OnboardingDots` missing Semantics |

---

### Task 1: Fix paywall_screen.dart — shrinkWrap TextButton

**Files:**
- Modify: `lib/app/settings/screens/paywall_screen.dart`

- [ ] **Step 1: Find and fix the shrinkWrap TextButtons at lines ~509-532**

These are Privacy Policy / Terms of Service links. They currently use:
```dart
TextButton(
  style: TextButton.styleFrom(
    minimumSize: Size.zero,
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    padding: ...,
  ),
  ...
)
```

Replace with:
```dart
TextButton(
  style: TextButton.styleFrom(
    minimumSize: const Size(44, 44),
    padding: const EdgeInsets.symmetric(horizontal: 8),
  ),
  ...
)
```

Remove `tapTargetSize: MaterialTapTargetSize.shrinkWrap` entirely.

- [ ] **Step 2: Fix IntrinsicHeight + Spacer layout at lines ~315-362**

The paywall uses `IntrinsicHeight` with multiple `Spacer()` inside a `ScrollView` — this breaks with accessibility font scaling.

Find the parent layout and replace `IntrinsicHeight` with:
```dart
Column(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    // ... existing content without Spacers
    const SizedBox(height: 24), // replace Spacers with fixed/responsive gaps
  ],
)
```

- [ ] **Step 3: Analyze settings/paywall**

```bash
flutter analyze --fatal-infos lib/app/settings/
```
Expected: `No issues found`

---

### Task 2: Fix shopping_item_tile.dart — compact density and Dismissible Semantics

**Files:**
- Modify: `lib/app/lists/widgets/shopping_item_tile.dart`

- [ ] **Step 1: Fix more_vert IconButton compact density at line ~407**

Find:
```dart
IconButton(
  icon: const Icon(Icons.more_vert),
  iconSize: 20,
  visualDensity: VisualDensity.compact,
  ...
)
```

Replace with:
```dart
IconButton(
  icon: const Icon(Icons.more_vert),
  iconSize: 20,
  constraints: const BoxConstraints(minWidth: 44, minHeight: 44),
  ...
)
```
Remove `visualDensity: VisualDensity.compact`.

- [ ] **Step 2: Add Semantics to Dismissible at line ~316**

Find the `Dismissible` widget. Wrap it with `Semantics`:
```dart
Semantics(
  label: l10n.listDelete,
  hint: 'Swipe to delete',
  child: Dismissible(
    // existing content unchanged
  ),
)
```

- [ ] **Step 3: Add "Select All" to selection mode BottomAppBar at line ~650**

Find the selection-mode `BottomAppBar` or `BottomNavigationBar` that has only cancel + delete.
Add a "Select All" `IconButton`:
```dart
IconButton(
  icon: const Icon(Icons.select_all),
  tooltip: l10n.listSelectAll,
  onPressed: _selectAll, // add this method: sets _selectedIds to all item ids
)
```

Add the `_selectAll` method to the state class:
```dart
void _selectAll() {
  setState(() {
    _selectedItemIds = items.map((i) => i.id).toSet();
  });
}
```
(Adapt to actual field names found in the file.)

- [ ] **Step 4: Analyze lists**

```bash
flutter analyze --fatal-infos lib/app/lists/
```
Expected: `No issues found`

---

### Task 3: Fix meal_day_card.dart — delete button touch target

**Files:**
- Modify: `lib/app/meal_planner/widgets/meal_day_card.dart`

- [ ] **Step 1: Fix delete IconButton at lines ~414-423**

Find:
```dart
IconButton(
  icon: const Icon(Icons.delete),
  iconSize: 18,
  visualDensity: VisualDensity.compact,
  ...
)
```

Replace with:
```dart
IconButton(
  icon: const Icon(Icons.delete),
  iconSize: 18,
  constraints: const BoxConstraints(minWidth: 44, minHeight: 44),
  ...
)
```
Remove `visualDensity: VisualDensity.compact`.

- [ ] **Step 2: Add drag coachmark hint**

At the `LongPressDraggable` widget (line ~34-46), add a `Tooltip`:
```dart
Tooltip(
  message: l10n.mealDragHint,
  child: LongPressDraggable(
    // existing content unchanged
  ),
)
```

Also add `"mealDragHint": "Hold to drag and move"` to `lib/l10n/app_en.arb`, then run `flutter gen-l10n`.

- [ ] **Step 3: Analyze meal planner**

```bash
flutter analyze --fatal-infos lib/app/meal_planner/
```
Expected: `No issues found`

---

### Task 4: Fix OnboardingDots Semantics

**Files:**
- Modify: `lib/app/onboarding/screens/onboarding_screen.dart` (or wherever `OnboardingDots` is defined)

- [ ] **Step 1: Find OnboardingDots widget and add Semantics**

Find the dots indicator widget. Wrap it or add internal Semantics:
```dart
Semantics(
  label: 'Page ${currentIndex + 1} of ${totalPages}',
  child: /* existing dots widget */,
)
```

If `OnboardingDots` is a separate widget file, add the Semantics inside that file's `build` method.

- [ ] **Step 2: Add Semantics to each onboarding PageView slide**

In the `PageView.builder` or `PageView` children, wrap each page with:
```dart
Semantics(
  label: 'Onboarding slide ${index + 1} of ${slides.length}',
  child: /* existing slide widget */,
)
```

- [ ] **Step 3: Analyze onboarding**

```bash
flutter analyze --fatal-infos lib/app/onboarding/
```
Expected: `No issues found`

---

### Task 5: Final accessibility verification

- [ ] **Step 1: Full analysis**

```bash
flutter analyze --fatal-infos lib/
```

- [ ] **Step 2: Grep for remaining compact density**

```bash
grep -rn "VisualDensity.compact\|shrinkWrap\|Size.zero" lib/app/ --include="*.dart"
```
Review each hit — compact density on non-interactive widgets is OK; on tappable targets, fix.
