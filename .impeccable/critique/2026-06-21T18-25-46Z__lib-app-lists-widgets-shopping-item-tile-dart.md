---
target: item tiles + filter bar (list screen)
total_score: 25
p0_count: 1
p1_count: 2
timestamp: 2026-06-21T18-25-46Z
slug: lib-app-lists-widgets-shopping-item-tile-dart
---
## Design Health Score

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 3 | Progress bar, confetti, exit animations good. Delete watermark at alpha(80) confuses rather than informs |
| 2 | Match System / Real World | 3 | Shopping list metaphor clear. Category badges, price/quantity familiar. Sort icon + sheet pattern is standard |
| 3 | User Control and Freedom | 4 | Dismissible + undo snackbar, reorder drag, selection mode, edit dialog. Full control |
| 4 | Consistency and Standards | 2 | Hardcoded `6px` gap at `shopping_item_tile.dart:244` breaks token system. Delete watermark is a non-standard visual-language element |
| 5 | Error Prevention | 2 | Haptic feedback + confirm dialog for batch delete. No guard against accidental +/- taps while scrolling |
| 6 | Recognition Rather Than Recall | 3 | Icons labeled in filter bar, category badges visible, checkbox states clear |
| 7 | Flexibility and Efficiency | 3 | +/- qty, long-press selection, swipe delete, sort/filter, shopping mode. Solid power-user range |
| 8 | Aesthetic and Minimalist Design | 2 | 9 elements per tile + delete watermark overlay = visual overload |
| 9 | Help Users Recover from Errors | 2 | Undo snackbar exists. Error snackbar on price/qty edit failure. No retry mechanism |
| 10 | Help and Documentation | 1 | 5-second gesture hint banner. No persistent help or contextual guidance |
| **Total** | | **25/40** | **Acceptable** — significant improvements needed |

## Anti-Patterns Verdict

**Not AI-generated.** Uses real Material 3, proper semantic tokens, `colorScheme` throughout. No side-stripe borders, gradient text, glassmorphism, identical card grids, eyebrows, or numbered markers. The app reads as a genuine Flutter project.

**Detector scan**: Not applicable — files are Dart, not markup. Skipped.

## Overall Impression

The shopping list screen has a solid interaction foundation (swipe-to-delete with undo, reorder, selection mode, shopping mode), but the item tiles are carrying too many controls at once. The core issue is density: each tile crams 9+ interactive/decorative elements into a single row, and the Positioned delete watermark adds visual noise without usability value.

## What's Working

1. **Smart spatial reuse** — The expandable ProgressInfoHeader collapses to a summary bar (progress + budget) and expands to reveal full filter/sort controls without taking permanent vertical space.
2. **Shopping mode** — Removes −/+/⋮/drag_handle, reducing tiles to checkbox + name + quantity. Perfect progressive disclosure for when the user is in-store.
3. **Interaction craft** — Haptic feedback on every action (`selectionClick()`, `lightImpact()`, `mediumImpact()`), squeeze animation on check, `TactileContainer` press effect. These make the app feel premium.

## Priority Issues

### [P0] Delete watermark overlay (`shopping_item_tile.dart:363–376`)

**What**: A `Positioned` `delete_outline` icon floats at `right: Spacing.md` (16px) on every tile at 18% opacity (`alpha(80)`). It overlaps the right-edge content area where `more_vert` and `drag_handle` live.

**Why it matters**: The watermark overlaps with the interactive controls zone. It tells users nothing they don't already know (swipe-to-delete is taught by the 5-second gesture banner and the Dismissible background). It's decorative noise that adds visual clutter without function.

**Fix**: Remove the Positioned delete_outline. The Dismissible background + gesture banner already teach swipe-to-delete. If you want a persistent affordance, add a proper icon button with a clear action.

**Suggested command**: `/impeccable distill`

### [P1] Tile density — 9+ elements per row (`shopping_item_tile.dart:157–358`)

**What**: Each tile packs: Checkbox | Item name | Category badge | Inline price | − | quantity | + | more_vert | drag_handle + watermark overlay.

**Why it matters**: On screens narrower than 380px, the −/+ buttons hide but 7+ elements remain. The right-side control cluster has no breathing room — `more_vert` (48×48 touch target via `IconButton`) sits 4px from `drag_handle` (also ~44px). Users can easily tap the wrong control.

**Fix**: Move `more_vert` into the overflow or behind long-press. The category badge + price could stack vertically or collapse into a single condensed line. The watermarked delete icon removal alone reduces density.

**Suggested command**: `/impeccable layout`

### [P1] Token inconsistency (`shopping_item_tile.dart:244`)

**What**: `const SizedBox(width: 6)` between category badge and price. The project uses `Spacing` tokens (xxs=4, xs=8, sm=12, md=16).

**Why it matters**: Breaks the token contract. Small inconsistency signals lower quality and makes future spacing changes harder.

**Fix**: Replace with `Spacing.xxs` (4) or `Spacing.xs` (8) — pick based on whether the tighter or looser rhythm fits.

**Suggested command**: `/impeccable polish`

### [P2] FilterBar sort button looks like a toggle but opens a sheet (`filter_bar.dart:82–99`)

**What**: The `OutlinedButton.icon` with `Icons.sort` suggests direct manipulation (tap to sort by that mode), but tapping opens a modal bottom sheet. The label updates after selection, but immediate feedback is missing.

**Why it matters**: Mild inconsistency between affordance and behavior. The button shows `Sort: Manual` but tapping doesn't sort — it opens a picker. New users might expect the first tap to sort without entering a sheet.

**Fix**: Either add a direct-tap-to-sort on first press with a dropdown arrow for the sheet, or rename the button to make the sheet action clearer.

**Suggested command**: `/impeccable clarify`

### [P2] Cognitive load — 4/8 checklist failures

**What**: Fails on Single focus, Grouping, Visual hierarchy, One thing at a time, Minimal choices.

**Why it matters**: Users scanning a list while shopping need quick visual parsing. The density of interactive elements per row makes fast scanning harder than it should be.

**Fix**: Progressive disclosure. Shopping mode already does this well — carry that ethos into normal mode. Hide advanced actions (more_vert, drag_handle) behind a simpler default layout.

**Suggested command**: `/impeccable distill`

## Persona Red Flags

**Alex (Power User)**: No keyboard shortcuts, but the haptics + swipe + long-press selection + batch operations cover most power needs. The main friction is that `more_vert` per-item is the only way to edit beyond quantity/price — no "edit all selected" flow.

**Casey (Distracted Mobile User)**: The −/+ buttons at 44×44 are good touch targets, but the right-side cluster places `more_vert` and `drag_handle` in the same thumb zone with only 4px separation. On a 375px-wide phone, Casey will accidentally tap `drag_handle` when aiming for `more_vert`. The delete watermark adds visual noise without function.

**Jordan (Confused First-Timer)**: The sort button opens a sheet instead of sorting directly — this might confuse someone who expects a direct action. The watermark delete icon floating on each tile suggests it's tappable, but it's not — Jordan might tap it repeatedly expecting something to happen.

## Minor Observations

- `_InlinePriceField` at `shopping_item_tile.dart:572` uses `Spacing.lg` (24) as a `height` constant — spacing tokens shouldn't serve as sizing constants
- Category badge hardcodes `fontSize: 10` at line 239 instead of trusting `labelSmall`'s default size
- `AnimatedEntryWrapper` uses `ValueKey('_animated_entry_fade')` — a static key shared by all entries could cause `SliverList` to confuse items
- 380px breakpoint for hiding −/+ is tight — many devices in the 360–375px range (older iPhones, small Androids) will never see the stepper buttons
- `_kQuantityControlsBreakpoint` is used in `_SmallIconButton` visibility AND `_InlineQtyField` width, which couples two concerns

## Questions to Consider

1. **The delete watermark tries to hint swipe-to-delete at 18% opacity — but the user doesn't associate a subtle low-opacity trash icon with a swipe gesture. Is this UI decoration that could be removed entirely, since the 5-second gesture banner + Dismissible red background already teach the interaction?**

2. **The tile gives users three ways to change quantity: tap-to-type in the inline field OR press −/+ buttons. Does offering both paths simultaneously reduce learnability (Jordan) more than it adds speed (Alex)? What if normal mode used only tap-to-edit and shopping mode used only stepper buttons?**

3. **The sort button currently feels like a "select sort mode" button rather than a "sort now" action. Would cycling directly through sort modes on repeated taps (with visual feedback) be faster than the bottom sheet detour?**
