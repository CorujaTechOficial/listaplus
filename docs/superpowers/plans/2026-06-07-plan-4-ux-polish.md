# UX Polish & Performance — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development to implement this plan task-by-task.
> **Delegate to:** Opencode DeepSeek (`opencode run -m opencode-go/deepseek-v4-flash "..."`)

**Goal:** Fix performance issues on large lists, improve UX flow in shopping list and paywall, and add missing haptic feedback to primary interactions.

**Architecture:** Replace `AnimatedSwitcher` wrapping entire list bodies with targeted animations. Reduce `flutter_animate` stagger on scroll items. Fix recipe grid delegate. Add haptics to chips and menus.

**Tech Stack:** Flutter `flutter_animate`, `AnimatedSwitcher`, `SliverGridDelegateWithMaxCrossAxisExtent`, `HapticFeedback`

**Rules:**
- Never change business logic. Performance and UX changes only.
- After each file, run: `flutter analyze --fatal-infos lib/app/<feature>/`
- Do NOT add comments.

---

## Files Modified

| File | Issue |
|------|-------|
| `lib/app/lists/list_screen_body.dart` | `AnimatedSwitcher` wrapping entire body — jank on filter |
| `lib/app/ai/screens/ai_home_screen.dart` | `flutter_animate` stagger on list items — frame drops |
| `lib/app/recipes/screens/recipes_screen.dart` | Grid `childAspectRatio` inconsistency, `AnimationLimiter` on many items |
| `lib/app/settings/screens/paywall_screen.dart` | "Best Value" badge needs visual distinction |
| Various | Missing `HapticFeedback` on `FilterChip`, `PopupMenu`, key interactions |

---

### Task 1: Fix AnimatedSwitcher jank in list_screen_body.dart

**Files:**
- Modify: `lib/app/lists/list_screen_body.dart`

- [ ] **Step 1: Find the AnimatedSwitcher at line ~261**

Currently the entire list body is wrapped in `AnimatedSwitcher`, which rebuilds all items when filter/sort changes. This causes visible jank on lists with 30+ items.

Find the `AnimatedSwitcher` and replace with a direct `Column`/`Widget` — keep any `AnimatedSwitcher` only on the top-level toggle between empty/loading/list states (not on the list content itself):

```dart
// Instead of AnimatedSwitcher wrapping the whole body:
// Keep AnimatedSwitcher only for state changes (empty ↔ list), not for filter changes
// The list itself should use keys to animate individual items if needed
```

Specifically: if `AnimatedSwitcher` wraps a `ListView`, move the transition to only wrap the empty-state/list-state switch. Filter/sort changes should update in-place without re-triggering the switcher animation.

- [ ] **Step 2: Fix the error state at line ~631**

Find `Text(e.toString())` in the error state. Replace with user-friendly error + retry:
```dart
Center(
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      const Icon(Icons.cloud_off_rounded, size: 48),
      const SizedBox(height: 8),
      Text(l10n.listErrorGeneric),
      const SizedBox(height: 16),
      FilledButton.tonal(
        onPressed: () => ref.invalidate(shoppingListItemsProvider(listId)),
        child: Text(l10n.catalogRetry),
      ),
    ],
  ),
)
```

- [ ] **Step 3: Analyze lists**

```bash
flutter analyze --fatal-infos lib/app/lists/
```
Expected: `No issues found`

---

### Task 2: Fix flutter_animate stagger in ai_home_screen.dart

**Files:**
- Modify: `lib/app/ai/screens/ai_home_screen.dart`

- [ ] **Step 1: Reduce animation stagger on list items**

Find the `flutter_animate` chain on list items (conversation cards, message items). Current pattern likely:
```dart
.animate(delay: (index * 50).ms)
.fadeIn()
.slideY()
```

Replace with a maximum stagger cap to prevent frame drops:
```dart
.animate(delay: (min(index, 5) * 50).ms) // cap at 5 items worth of delay
.fadeIn(duration: 200.ms)
// remove .slideY() — reduce from 2 simultaneous animations to 1
```

Import `dart:math` for `min` if not already imported.

- [ ] **Step 2: Analyze AI screens**

```bash
flutter analyze --fatal-infos lib/app/ai/
```
Expected: `No issues found`

---

### Task 3: Fix recipes grid and animation

**Files:**
- Modify: `lib/app/recipes/screens/recipes_screen.dart`

- [ ] **Step 1: Fix inconsistent grid aspect ratio at lines ~133-137**

Find:
```dart
SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,
  childAspectRatio: someCalculation, // varies by screen width
  ...
)
```

Replace with:
```dart
const SliverGridDelegateWithMaxCrossAxisExtent(
  maxCrossAxisExtent: 220,
  childAspectRatio: 0.72,
  crossAxisSpacing: 12,
  mainAxisSpacing: 12,
)
```
This produces consistent card sizes across all screen widths.

- [ ] **Step 2: Reduce AnimationLimiter impact at lines ~153-163**

Find the `AnimationLimiter` + `ScaleAnimation`/`FadeInAnimation` on GridView items.

Keep `AnimationLimiter` but cap the stagger:
```dart
// In itemBuilder, add duration cap:
AnimationConfiguration.staggeredGrid(
  position: index,
  duration: const Duration(milliseconds: 200), // was probably 375ms
  columnCount: 2,
  child: ScaleAnimation(
    scale: 0.95, // was probably 0.5 — subtle is better for performance
    child: FadeInAnimation(child: recipeCard),
  ),
)
```

- [ ] **Step 3: Fix recipe_detail_screen.dart ingredient state**

At lines ~165-167, `_preparedIngredients` Set state is lost on scroll because the widget rebuilds. Ensure the state is in a `StatefulWidget` that persists (not inside a builder). If it's already in a `StatefulWidget`, verify the Set is defined at the state level, not in `build()`.

- [ ] **Step 4: Analyze recipes**

```bash
flutter analyze --fatal-infos lib/app/recipes/
```
Expected: `No issues found`

---

### Task 4: Enhance paywall "Best Value" badge

**Files:**
- Modify: `lib/app/settings/screens/paywall_screen.dart`

- [ ] **Step 1: Find the plan cards and "Best Value" badge**

Find the recommended plan card. Currently shows a text badge only.

Wrap the recommended plan `Card` or `Container` with a visual distinction:
```dart
// Add a colored border + background tint to the recommended card:
Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(RadiusTokens.lg),
    border: Border.all(
      color: theme.colorScheme.primary,
      width: 2.5,
    ),
    color: theme.colorScheme.primaryContainer.withAlpha(60),
  ),
  child: /* existing card content */,
)
```

The "Best Value" text badge should become a `Chip` or `Container` with filled primary color:
```dart
Container(
  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
  decoration: BoxDecoration(
    color: theme.colorScheme.primary,
    borderRadius: BorderRadius.circular(RadiusTokens.full),
  ),
  child: Text(
    'Best Value', // already a key or existing string
    style: theme.textTheme.labelSmall?.copyWith(
      color: theme.colorScheme.onPrimary,
      fontWeight: FontWeight.bold,
    ),
  ),
)
```

- [ ] **Step 2: Analyze settings**

```bash
flutter analyze --fatal-infos lib/app/settings/
```
Expected: `No issues found`

---

### Task 5: Add missing haptic feedback

**Files:**
- Modify: `lib/app/lists/list_screen_body.dart`
- Modify: `lib/app/pantry/screens/pantry_screen.dart`

- [ ] **Step 1: Add haptics to FilterChip onSelected in list_screen_body.dart**

Find all `FilterChip(onSelected: ...)` calls. Add haptic at the start of the callback:
```dart
onSelected: (value) {
  unawaited(HapticFeedback.selectionClick());
  // existing logic
},
```

- [ ] **Step 2: Add haptics to PopupMenu in list_screen_body.dart**

Find `PopupMenuButton` `onSelected` callback:
```dart
onSelected: (value) {
  unawaited(HapticFeedback.lightImpact());
  // existing logic
},
```

- [ ] **Step 3: Add haptics to pantry selection actions**

In `pantry_screen.dart`, find the restock and delete selected buttons' `onPressed`:
```dart
onPressed: () {
  unawaited(HapticFeedback.mediumImpact());
  // existing logic
},
```

- [ ] **Step 4: Final full analysis**

```bash
flutter analyze --fatal-infos lib/
```
Expected: `No issues found`
