# Task 3 Report: Expose Planner Summary Data Through Providers

## Scope

- Updated `lib/app/meal_planner/providers/meal_planner_providers.dart`
- Updated `test/app/meal_planner/providers/meal_planner_providers_test.dart`
- Regenerated `lib/app/meal_planner/providers/meal_planner_providers.g.dart` and verified it already matched the current generated output, so no additional diff remained

## What Changed

- Added `recipeCostDetailsProvider(String recipeId)` to expose `RecipeCostDetails?` derived from `recipesProvider`
- Added `mealPlannerDayCostMapProvider({required DateTime start, required DateTime end})` to bucket meal plans by normalized day and aggregate:
  - `totalCost`
  - `mealCount`
  - `hasPartialPricing`
- Added `mealPlannerSummaryProvider(...)` to expose:
  - `todayCost`
  - `weekCost`
  - `plannedMonthCost`
  - `projectedMonthCost`
  - `weekHasPartialPricing`
  - `monthHasPartialPricing`
- Reused Task 2 helpers:
  - `calculateRecipeCostDetails`
  - `calculatePlannedMealCost`

## TDD Record

1. Added failing provider tests first for:
   - recipe cost lookup
   - day cost aggregation
   - planner summary aggregation
2. Ran:

```sh
flutter test test/app/meal_planner/providers/meal_planner_providers_test.dart
```

3. Confirmed RED state with missing provider symbols:
   - `recipeCostDetailsProvider`
   - `mealPlannerDayCostMapProvider`
   - `mealPlannerSummaryProvider`
4. Implemented the providers
5. Ran build runner and reran the focused suite to GREEN

## Verification

Focused provider suite:

```sh
flutter test test/app/meal_planner/providers/meal_planner_providers_test.dart
```

Result: passed (`5` tests)

Full suite:

```sh
flutter test
```

Result: passed (`181` tests)

Build runner:

```sh
dart run build_runner build --delete-conflicting-outputs
```

Result: exit `0` with a warning that `--delete-conflicting-outputs` was ignored by this installed toolchain

## Self-Review

- Provider responsibilities stayed focused on orchestration and aggregation
- Cost math was not duplicated; all pricing calculations go through Task 2 helpers
- Day bucketing normalizes timestamps to calendar dates before aggregation
- Missing recipes are ignored for cost accumulation while preserving the planned meal count for that day
- No changes were made outside the task-owned files

## Concerns

- `meal_planner_providers.dart` and the test file already had unrelated worktree changes before this task. I did not revert them.
- `meal_planner_providers.g.dart` was regenerated successfully, but the generated content already matched the worktree, so there was no new diff to stage for that file.

## Review Fix Follow-up

### Fix Applied

- Updated `mealPlannerDayCostMap` so an unresolved `recipeId` marks that day as `hasPartialPricing: true`
- Updated focused provider tests to require partial-estimate behavior for missing recipe data
- Verified summary providers now propagate the partial state through `weekHasPartialPricing` and `monthHasPartialPricing`

### Commands Run

```sh
flutter test test/app/meal_planner/providers/meal_planner_providers_test.dart
flutter test
```

### Relevant Passing Output

Focused provider suite:

```text
00:00 +5: All tests passed!
```

Full suite:

```text
00:14 +181: All tests passed!
```

### Files Changed

- `lib/app/meal_planner/providers/meal_planner_providers.dart`
- `test/app/meal_planner/providers/meal_planner_providers_test.dart`
- `lib/app/meal_planner/providers/meal_planner_providers.g.dart` unchanged

## Coverage Restoration Follow-up

### Fix Applied

- Restored explicit `mealPlannerSummaryProvider` coverage for a fully resolved recipe data set
- Added assertions for:
  - `todayCost`
  - `weekCost`
  - `plannedMonthCost`
  - `projectedMonthCost`

### Command Run

```sh
flutter test test/app/meal_planner/providers/meal_planner_providers_test.dart
```

### Relevant Passing Output

```text
00:00 +4: Meal planner cost providers mealPlannerSummaryProvider returns exact totals for a fully resolved recipe data set
00:00 +6: All tests passed!
```

### Files Changed

- `test/app/meal_planner/providers/meal_planner_providers_test.dart`
- `lib/app/meal_planner/providers/meal_planner_providers.dart` unchanged
- `lib/app/meal_planner/providers/meal_planner_providers.g.dart` unchanged

## Scope Cleanup Follow-up

### Cleanup Applied

- Removed the unrelated `MealTypes` and `activeMealTypes` additions from `meal_planner_providers.dart`
- Kept the Task 3 cost-summary providers intact:
  - `recipeCostDetailsProvider`
  - `mealPlannerDayCostMapProvider`
  - `mealPlannerSummaryProvider`
- Regenerated Riverpod output; no additional `meal_planner_providers.g.dart` diff remained after regeneration

### Commands Run

```sh
dart run build_runner build --delete-conflicting-outputs
flutter test test/app/meal_planner/providers/meal_planner_providers_test.dart
flutter test
```

### Relevant Passing Output

Focused provider suite:

```text
00:00 +6: All tests passed!
```

Full suite:

```text
00:29 +182: All tests passed!
```

### Files Changed

- `lib/app/meal_planner/providers/meal_planner_providers.dart`
- `lib/app/meal_planner/providers/meal_planner_providers.g.dart` unchanged after regeneration
- `test/app/meal_planner/providers/meal_planner_providers_test.dart` unchanged

## Packaging Fix Follow-up

### Fix Applied

- Added `lib/app/meal_planner/providers/meal_planner_providers.g.dart` to git tracking so the Task 3 package includes the generated Riverpod provider symbols in the reviewed commit range

### Commands Run

```sh
dart run build_runner build --delete-conflicting-outputs
flutter test test/app/meal_planner/providers/meal_planner_providers_test.dart
```

### Relevant Successful Output

Build runner:

```text
Built with build_runner/aot in 1s; wrote 0 outputs.
```

Focused provider suite:

```text
00:00 +6: All tests passed!
```

### Files Changed

- `lib/app/meal_planner/providers/meal_planner_providers.g.dart`
