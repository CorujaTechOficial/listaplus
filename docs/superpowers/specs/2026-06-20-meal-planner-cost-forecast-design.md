# Meal Planner Cost Forecast Design

## Objective

Add practical cost forecasting to the meal planner so users can understand how much they are likely to spend across the day, week, and month, while keeping the experience lightweight, trustworthy, and useful for routine household planning.

This feature must help users answer four questions quickly:

- How much will I spend today?
- Which days will cost more or less?
- How much does each recipe cost to make?
- How much am I likely to spend this month based on what I planned?

## Product Intent

This feature extends KipiList's planning value. It must not turn the meal planner into a finance dashboard. The surface should feel like a calm household assistant that helps users plan better, not a budgeting app that pressures them.

The design must preserve these product principles:

- Lead with practical assistance and visible outcomes.
- Reduce cognitive load at every step.
- Trust beats spectacle.
- Premium polish comes from clarity and consistency, not visual noise.

## Scope

### In Scope

- Add recipe-level yield data.
- Add automatic recipe cost estimation.
- Add optional manual recipe cost override.
- Show recipe total cost and cost per serving.
- Show cost summaries in the meal planner for day, week, planned month, and projected month.
- Show per-day cost context so users can compare expensive and inexpensive days.
- Show partial-data messaging when estimates are incomplete.

### Out of Scope

- Full budgeting workflows, envelopes, or category finance dashboards.
- Historical spend reconciliation against actual receipts.
- Ingredient price history or advanced market-price analytics.
- Push notifications or alerts about forecast overages.
- New backend collections dedicated only to budgeting analytics.

## Existing Codebase Context

The current app already provides the core pieces needed for this feature:

- `Recipe` already stores ingredient lists as `ShoppingItem`, and each ingredient can already carry `estimatedPrice`.
- `MealPlan` already stores `servings`, which can be used to estimate how much of a recipe is consumed in a scheduled meal.
- The meal planner already has a weekly summary surface and day cards that can be upgraded to include cost context.
- Firestore already persists recipes and meal plans under the user document, so the feature can fit into the current storage model.

The design should build on these existing structures rather than introducing a parallel budgeting subsystem.

## Data Model Design

### Recipe

Add the following fields to `Recipe`:

- `yieldServings`: integer, required in the app model, default `1`
- `manualTotalCost`: nullable numeric value representing an optional manual override for the total recipe cost

Derived recipe values:

- `automaticTotalCost`: sum of ingredient `estimatedPrice` values that are available
- `effectiveTotalCost`: `manualTotalCost` when present, otherwise `automaticTotalCost`
- `costPerServing`: `effectiveTotalCost / yieldServings`

### Meal Plan Cost Calculation

No new persisted field is required on `MealPlan` for this first version. Cost should be derived from the linked recipe plus the meal plan `servings`.

Derived meal-plan values:

- `consumptionFactor`: `mealPlan.servings / recipe.yieldServings`
- `plannedMealCost`: `recipe.effectiveTotalCost * consumptionFactor`

Example:

- Recipe total cost: `R$ 40`
- Recipe yield: `4` servings
- Planned meal servings: `2`
- Planned meal cost: `R$ 20`

This keeps the estimate proportional to what the user plans to consume instead of always charging the full recipe cost.

## Cost Confidence Rules

The app must frame all values as estimates, never as exact accounting.

### Cost Source Priority

1. Use `manualTotalCost` when present.
2. Otherwise use automatic cost from ingredient prices.

### Partial Data Handling

If some ingredients are missing price data:

- The recipe still shows an estimate.
- The estimate is labeled as partial.
- Planner summaries that include such recipes should also communicate that the total is based on incomplete price coverage.

### Missing or Invalid Yield

If a recipe has missing or invalid yield:

- Use `1` as the temporary fallback in calculations.
- The editing surface should encourage correction.
- The UI should avoid showing broken or misleading math.

## Planner Summary Design

### Top Summary Surface

Replace the current simple weekly progress summary with a more useful planning summary that still feels light and calm.

The summary block should surface:

- `Today`
- `Week`
- `Planned month`
- `Projected month`

These should appear as concise summary tiles or compact tonal blocks directly below the planner period header.

### Semantics

- `Today`: sum of planned meal costs for the current day
- `Week`: sum of planned meal costs for the visible weekly range
- `Planned month`: sum of all meal costs actually scheduled in the current month
- `Projected month`: estimate extrapolated from the currently visible week

### Projected Month Rule

The monthly projection must support the approved product behavior:

- show the actual planned total for the month
- show a separate projection based on the current week

Projection formula:

- compute the average daily planned cost from the visible week
- multiply that average by the number of days in the focused month

The UI must label this clearly as a projection based on the current week so users do not interpret it as confirmed planned spend.

## Day-Level Planner UX

Each day card in the weekly planner should include cost context in addition to meal count.

Recommended day-level content:

- number of meals planned
- estimated total cost for that day
- optional lightweight badge for highest-cost day or lowest-cost day within the visible week

This comparison should stay subtle. It should help users spot heavier and lighter days without making the planner feel judgmental or alarmist.

When the user opens or inspects a day's meals, each scheduled meal should show:

- recipe name
- meal type
- planned servings
- recipe yield
- estimated cost for that scheduled meal
- cost-per-serving context when useful

If one recipe is driving most of the day cost, that should be understandable from the meal content itself rather than through a separate analytics modal.

## Recipe Detail UX

The recipe detail screen should gain a compact summary section near the top content area showing:

- yield in servings or plates
- average total recipe cost
- average cost per serving

This section should feel like practical metadata, not a premium upsell module or a finance card.

## Recipe Editing UX

The recipe creation and editing surface should add:

- `yield servings` input
- optional `manual total cost` input
- short helper copy explaining that when manual cost is empty, the app estimates total cost from ingredient prices

The helper text must remain concise and localized through ARB strings.

Because KipiList supports many locales, every new visible label, helper, state message, and estimate disclaimer must be added to `lib/l10n/app_en.arb` and propagated through the translation workflow.

## Calculation Details

### Recipe Cost

- `automaticTotalCost = sum(ingredient.estimatedPrice for ingredients with price)`
- `effectiveTotalCost = manualTotalCost ?? automaticTotalCost`
- `costPerServing = effectiveTotalCost / max(yieldServings, 1)`

### Planned Meal Cost

- `plannedMealCost = effectiveTotalCost * (mealPlan.servings / max(yieldServings, 1))`

### Day Cost

- sum of `plannedMealCost` for all meals on the day

### Week Cost

- sum of `plannedMealCost` for all meals in the visible week

### Planned Month Cost

- sum of `plannedMealCost` for all meals scheduled in the focused month

### Projected Month Cost

- `visibleWeekAverageDailyCost * numberOfDaysInFocusedMonth`

## Edge Cases

### Recipes With No Price Data

- Show the recipe cost section with explicit incomplete-estimate wording.
- Do not hide the section.
- Do not fabricate values beyond the available data.

### Mixed Price Coverage

- If only part of the ingredient list has prices, show the estimate as partial.
- Planner totals should also indicate they are based on recipes with partial pricing coverage.

### Large Servings

- If planned servings exceed recipe yield, scale linearly.
- No artificial cap should be applied beyond safe numeric handling.

### Zero Planned Meals

- Keep the planner empty state simple and educational.
- Do not show heavy cost scaffolding when there are no meals to summarize.

### Month View vs Week View

- Monthly totals should still be available when the planner is focused on month mode.
- Weekly projection logic should use the currently focused week context, not an arbitrary week.

## Content and Copy Rules

All cost-oriented labels must prefer household-planning language over finance language.

Preferred language:

- estimated
- average
- projected
- cost to make
- per serving

Avoid language that makes the feature feel punitive or accounting-heavy, such as:

- debt
- overspend warning
- budget breach
- deficit

## Visual Design Direction

The UI should follow the existing KipiList product register:

- restrained color use
- tonal surfaces
- strong readability
- familiar controls
- no dashboard theatrics

Specific design constraints:

- Use the existing Material 3 plus KipiList token system.
- Keep summary surfaces calm and compact.
- Avoid nested cards.
- Avoid decorative gradients or finance-style charts.
- Use subtle emphasis for higher-cost and lower-cost days.
- Preserve dark-mode compatibility through `Theme.of(context).colorScheme`.

## Accessibility

- Cost labels and metadata must maintain WCAG AA contrast.
- Summary tiles and day-level cost indicators must be readable at a glance.
- Any cost comparison badge must remain understandable without relying only on color.
- Inputs for yield and manual cost must have clear labels and error-safe keyboard behavior.

## Architecture Notes

The feature should be implemented as derived domain logic close to existing recipe and meal planner providers instead of duplicating values across the UI.

Recommended architectural direction:

- extend `Recipe` model serialization and copy semantics
- add derived calculator helpers for recipe and meal-plan costs
- expose planner summary data from providers so widgets consume prepared values
- keep Firestore schema changes additive and backward-compatible

This preserves the existing app architecture and minimizes risk.

## Testing Strategy

The implementation should be covered by:

- model tests for new recipe fields and serialization
- provider tests for recipe cost calculations
- provider tests for day, week, planned month, and projected month totals
- edge-case tests for partial price coverage and missing yield
- widget tests for key planner summary states and recipe detail presentation

## Success Criteria

The feature is successful when:

- users can see recipe yield and average recipe cost without extra navigation
- users can understand which days are likely to cost more or less
- users can see a realistic weekly and monthly spend forecast from meal plans
- the feature feels like planning assistance, not financial pressure
- the planner remains visually calm and easy to scan
