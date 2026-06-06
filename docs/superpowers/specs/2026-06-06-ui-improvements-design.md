# KipiList UI Improvements — Design Spec

**Date:** 2026-06-06  
**Status:** Approved  
**Scope:** 10 UI improvements across navigation, touch targets, loading states, animations, and visual polish

---

## 1. Bottom Navigation Bar (replacing Drawer)

**Problem:** The current `NavigationDrawer` hides all 5 main sections behind a gesture/hamburger tap — poor for single-hand use in a supermarket.

**Design:**
- Replace `NavigationDrawer` in `MainShell` (lib/main.dart) with `NavigationBar` (Material 3 bottom bar).
- 5 destinations: AI (smart_toy), Receitas (restaurant_menu), Listas (list_alt), Despensa (inventory), Planejador (calendar_month).
- Profile, Settings, and Premium move to an account `IconButton` in the AppBar (person_outline icon).
- Drawer-triggered quick actions (create list, etc.) remain accessible via FAB or AppBar actions on the relevant screen.
- `IndexedStack` body stays — no navigation stack change needed.

**Constraints:**
- Account menu (Profile / Settings / Premium) opens as a `ModalBottomSheet` or `PopupMenuButton` from the AppBar icon.
- Home screen quick actions shortcuts remain functional — they deep-link to a specific tab index.

---

## 2. Skeleton Screens for Loading States

**Problem:** `CircularProgressIndicator` on blank screen feels slow and generic.

**Design:**
- Add `shimmer` package (already likely available or add to pubspec).
- Create `ShoppingItemTileSkeleton` widget: a shimmer row matching the tile's height and layout (circle + two lines + button placeholders).
- Create `RecipeCardSkeleton` widget: shimmer card matching the grid card shape.
- Replace all `CircularProgressIndicator` loading bodies in:
  - `list_screen_body.dart` (list loading state)
  - `recipes_screen.dart` (grid loading state)
  - `pantry_screen.dart` (list loading state)
- Show 6 skeleton tiles (lists) or 4 skeleton cards (recipes grid) during load.

---

## 3. Touch Targets on Quantity ± Buttons

**Problem:** Quantity buttons in `ShoppingItemTile` are 32px — below the 48dp minimum.

**Design:**
- Increase the tap area of each `+`/`-` `IconButton` to minimum 44px via `minimumSize` on `ButtonStyle` or wrapping with `SizedBox(width: 44, height: 44)`.
- Visual size of the icon/circle stays the same (no layout change to the tile appearance).
- Apply the same fix to pantry quantity controls in `pantry_screen.dart`.

---

## 4. Gesture Hint on Empty State

**Problem:** New users don't know about swipe-to-delete or long-press-to-select.

**Design:**
- Add a one-time hint banner inside `empty_state.dart` when the list becomes non-empty for the first time.
- Banner: a subtle `Container` at the top of the list (inside `list_screen_body.dart`) with an info icon + text: "Segure para selecionar • Deslize para remover".
- Stored via `SharedPreferences` key `hint_gestures_shown` — shows once, dismissed on tap or after 5 seconds.
- Style: `surfaceContainerHighest` background, `bodySmall` text, 8px vertical padding, full border-radius.

---

## 5. Pantry Stock Labels

**Problem:** Stock progress bars are purely visual — no numeric context at a glance.

**Design:**
- In the pantry item tile (inside `pantry_screen.dart`), add a `Text` label to the right of the progress bar showing `"actual / ideal unit"` (e.g., `"3 / 5 kg"`).
- This data is already rendered nearby — just reposition/add a `Text` widget alongside the bar.
- Style: `labelSmall`, `onSurfaceVariant` color, right-aligned.

---

## 6. SnackBar Deduplication

**Problem:** Rapid deletes stack multiple SnackBars, creating visual noise.

**Design:**
- Create a `SnackBarService` (or a simple global helper method) that calls `ScaffoldMessenger.of(context).clearSnackBars()` before showing a new one when the action type matches the last shown action.
- Specifically for delete/undo actions: if a SnackBar is already showing with an undo for the same list, update the item count ("2 itens removidos") instead of stacking.
- Implement as a utility in `lib/core/utils/snack_bar_utils.dart`.

---

## 7. Responsive Recipe Grid Aspect Ratio

**Problem:** Fixed `childAspectRatio: 0.75` is too tall on small screens (< 380px width).

**Design:**
- In `recipes_screen.dart`, wrap the `GridView` with a `LayoutBuilder`.
- Set aspect ratio: `screenWidth < 380 ? 0.65 : 0.75`.
- No other layout changes needed.

---

## 8. Swipe Delete Visual Hint

**Problem:** No passive indicator that items are swipeable — users must discover it by accident.

**Design:**
- In `shopping_item_tile.dart`, render a faint delete icon on the trailing edge of each non-selected item.
- Icon: `Icons.delete_outline`, color: `colorScheme.error.withAlpha(25)` (very subtle, ~10% opacity).
- Positioned absolutely inside the tile's `Stack`, right-aligned, centered vertically.
- Disappears (alpha → 0) when in selection mode.
- No animation — purely static passive hint.

---

## 9. AI Card Stagger Animation — Performance Fix

**Problem:** 200ms stagger per item feels slow with many items.

**Design:**
- In `ai_home_screen.dart`, reduce stagger interval from 200ms to 80ms.
- Cap animated items: only the first 5 items receive the stagger animation; remaining items appear instantly (delay = 0).
- No visual change to the cards themselves.

---

## 10. Custom Brand Theme Palettes

**Problem:** Dynamic color produces generic-looking themes; no brand differentiation.

**Design:**
- In `theme_selection_screen.dart`, add 3 preset brand palettes alongside the existing dynamic color option:
  - **"Fresco"** — seed color `#2E7D32` (deep green)
  - **"Oceano"** — seed color `#0277BD` (deep blue)  
  - **"Cálido"** — seed color `#E65100` (deep orange)
- Palettes stored as `Color` seeds; `AppTheme.light(seed)` and `AppTheme.dark(seed)` already accept a seed — just pass the new value.
- Persist selected palette seed in `SharedPreferences` key `theme_palette_seed`.
- UI: horizontal scrollable row of palette preview chips (40×40 filled circles) above the existing dark/light toggle.
- Premium gate: all 3 palettes are free; dynamic system color remains the default.

---

## Implementation Order

1. Bottom Navigation Bar — biggest structural change, do first
2. Skeleton Screens — requires shimmer dependency
3. Touch Targets ± buttons — quick win
4. Swipe Delete Visual Hint — quick win
5. AI Card Stagger Fix — quick win
6. Pantry Stock Labels — quick win
7. Responsive Recipe Grid — quick win
8. SnackBar Deduplication — utility creation
9. Gesture Hint on Empty State — SharedPreferences dependency
10. Custom Brand Theme Palettes — last, touches settings screen

---

## Files Affected

| File | Changes |
|------|---------|
| `lib/main.dart` | Replace NavigationDrawer with NavigationBar; add account menu to AppBar |
| `lib/app/lists/list_screen_body.dart` | Skeleton loading, gesture hint banner |
| `lib/app/lists/widgets/shopping_item_tile.dart` | Touch targets, swipe hint icon |
| `lib/app/lists/widgets/empty_state.dart` | No change (hint is in list_screen_body) |
| `lib/app/ai/screens/ai_home_screen.dart` | Stagger animation fix |
| `lib/app/recipes/screens/recipes_screen.dart` | Responsive grid, skeleton loading |
| `lib/app/pantry/screens/pantry_screen.dart` | Stock labels, touch targets, skeleton loading |
| `lib/app/settings/screens/theme_selection_screen.dart` | Brand palette chips |
| `lib/core/utils/snack_bar_utils.dart` | New utility file |
| `pubspec.yaml` | Add `shimmer` package |
