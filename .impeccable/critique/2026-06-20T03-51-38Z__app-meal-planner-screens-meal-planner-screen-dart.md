---
target: a tela de planejador de refeicoes
total_score: 26
p0_count: 0
p1_count: 2
timestamp: 2026-06-20T03-51-38Z
slug: app-meal-planner-screens-meal-planner-screen-dart
---
# Design Critique: Meal Planner Screen

## Design Health Score

| # | Heuristic | Score | Key Issue |
|---|-----------|-------|-----------|
| 1 | Visibility of System Status | 3 | Good visual loaders and snackbar feedbacks, but dragging has no progress cue. |
| 2 | Match System / Real World | 3 | Organized by week/month, but monthly view hardcodes Monday start, ignoring localized Sunday-start expectations. |
| 3 | User Control and Freedom | 3 | Has undo delete, but tapping a meal entry tile bubbles up and triggers adding a new meal. |
| 4 | Consistency and Standards | 2 | Raw spacing/sizing numbers used instead of design system tokens; nested container layout triggers; hardcoded 21 meals limit in progress bar. |
| 5 | Error Prevention | 3 | Confirmation dialogs prevent unexpected list generation. |
| 6 | Recognition Rather Than Recall | 2 | Hidden drag-and-drop feature lacks visual affordance. Dot-indicators in month view hide meal names. |
| 7 | Flexibility and Efficiency of Use | 3 | Shortcut to jump to week on calendar tap; smart shopping list generation subtracts pantry items. |
| 8 | Aesthetic and Minimalist Design | 3 | Clean layout structure, but month view calendar is extremely dense. |
| 9 | Error Recovery | 3 | Good error screens with retry actions for failed network requests. |
| 10 | Help and Documentation | 1 | No inline help explaining pantry integration or list generation. |
| **Total** | | **26/40** | **Acceptable** |

## Anti-Patterns Verdict

**LLM assessment**: The interface is functional and adheres well to basic Material 3 conventions, avoiding typical high-saturation "magic AI slop". However, it suffers from several mechanical visual tells:
- **Redundant layout structures**: Nested containers and raw layout numbers (`crossAxisSpacing: 3`, `padding: const EdgeInsets.all(3)`) create uneven alignment and visual density.
- **Inconsistent metadata rules**: The 21-meal progress metric is hardcoded and conflicts directly with the new configurable meal types feature.

**Deterministic scan**: No rule violations were found in the static code scan of `lib/app/meal_planner`.

**Visual overlays**: No reliable user-visible overlay is available because mutation/browser presentation is not active in this sandbox run.

## Overall Impression
The meal planner is a competent utility screen with high intrinsic value (especially the smart pantry-aware shopping list generator). However, its visual execution feels like a standard boilerplate because of layout token inconsistencies, interactive tap-bubbling bugs, and hardcoded structures that conflict with recent customization features (configurable meal types).

## What's Working
- **Smart Pantry Integration**: Automatically checking available ingredients in the pantry and subtracting them before adding to the shopping list is brilliant.
- **Visual Feedback**: The snackbar with an `Undo` action on deletion is standard, fluid, and reassures the user.
- **Tonal Date Switching**: Fast transition and layout switcher between weekly and monthly calendars.

## Priority Issues

- **[P1] Hardcoded 21-Meal Progress Target**:
  - *Why it matters*: In `WeeklySummaryBar`, progress is calculated against `21` (7 days × 3 meals). This directly breaks logic when a user configures custom meal types (e.g., adding Snack, Pre-workout, etc.), rendering the weekly progress percentage and progress color completely incorrect.
  - *Fix*: Retrieve active types length from `activeMealTypesProvider` and compute the total slots dynamically as `7 * activeTypes.length`.
  - *Suggested command*: `/impeccable layout`
- **[P1] Meal Tile Tap Bubbling Conflict**:
  - *Why it matters*: Tapping a planned meal tile bubbles up to the parent `TactileContainer` (which handles the day card `onTap`) and opens the "Add Meal" dialog. This is highly confusing; tapping a planned item should open details, options, or at least not add a new meal.
  - *Fix*: Add a specific action (or empty `onTap` stopping propagation) to the meal entry tile, or prevent bubbling.
  - *Suggested command*: `/impeccable polish`
- **[P2] Raw Spacing and Sizing Values**:
  - *Why it matters*: Multiple raw dimension values (e.g., `80`, `3`, `2`, `8`, `24`, `36`) are used for spacing and sizing instead of project tokens (`Spacing`, `RadiusTokens`), creating inconsistent densities across devices.
  - *Fix*: Replace all raw numbers with their design tokens.
  - *Suggested command*: `/impeccable layout`
- **[P2] Hardcoded Monday-Start Calendar**:
  - *Why it matters*: Month view starts strictly on Monday by calculating weekday index manually, which displays dates misaligned for users in Sunday-first locales.
  - *Fix*: Localize weekday sequence generation or use localized `DateTime` calculation helpers.
  - *Suggested command*: `/impeccable adapt`

## Persona Red Flags

**Casey (Distracted Mobile User)**:
- The bottom padding on list views is a hardcoded `80` pixels, which may clip the FAB or bottom bar on some taller devices.
- Tapping a meal tile to edit or view details is impossible because it triggers the "Add Meal" sheet. This makes fast, single-handed corrections frustrating.

**Alex (Power User)**:
- No fast reschedule options (like swiping to change date or clone a meal).
- Drag-and-drop is supported via long-press but is invisible: no handle/affordance exists to signal this power-user feature.

## Minor Observations
- `WeeklySummaryBar` has a hardcoded custom color palette for progress (`0xFF4CAF50` green, `0xFFFB8C00` orange) rather than retrieving semantic colors from `Theme.of(context).colorScheme` or custom tokens.
- Calendar header `dateFormat` is localized but grid start day is not.

## Questions to Consider
- Should we allow duplicating or cloning a meal plan to another day quickly?
- Would a user want to see the recipes' main image in the weekly list view or keep it purely text-dense?
