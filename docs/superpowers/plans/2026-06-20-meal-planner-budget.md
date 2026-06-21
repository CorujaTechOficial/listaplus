# Meal Planner Budget Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Surface meal planning costs and a configurable monthly budget goal throughout the meal planner and recipe screens.

**Architecture:** Surface-only — all cost calculations already exist as Riverpod providers (`mealPlannerSummaryProvider`, `mealPlannerDayCostMapProvider`, `recipeCostDetailsProvider`). New work is: one new SharedPreferences provider (`monthlyBudgetGoalProvider`), two new widgets (`BudgetGoalSheet`, `BudgetSummaryCard`), and targeted changes to three existing screens. No new Firestore schema.

**Tech Stack:** Flutter 3.x, Riverpod 3.x with codegen (`@riverpod`, `dart run build_runner`), `shared_preferences`, `intl` (via `formatCurrency`/`resolveCurrencyCode` in `lib/core/utils/formatters.dart`), ARB localization (`flutter gen-l10n`).

## Global Constraints

- Spacing: `Spacing.*` from `lib/core/theme/tokens.dart` (xxs=4, xs=8, sm=12, md=16, lg=24, xl=32, xxl=48). Never raw number literals that match token values.
- Radius: `RadiusTokens.*` (bar=2, xxs=4, xs=6, sm=8, md=12, lg=16). Same rule.
- Duration: `DurationTokens.*` (fast=200ms, normal=350ms, slow=600ms).
- Colors: `theme.colorScheme.*` or `AppColors.*`. Never `Colors.<named>` except `Colors.white/black/transparent`.
- Every user-visible string must use `AppLocalizations.of(context)!`. Never hardcode text.
- After editing `preferences_providers.dart`: run `dart run build_runner build --delete-conflicting-outputs` and commit the updated `.g.dart` file.
- After editing any `.arb` file: run `flutter gen-l10n`. Commit only `app_en.arb`; generated files live in `lib/generated/`.
- Before committing: `flutter analyze --fatal-infos` must pass.
- Test pattern: `ProviderScope` wrapping `MaterialApp` with `localizationsDelegates: AppLocalizations.localizationsDelegates`, `firestoreServiceProvider.overrideWithValue(mockStorage)`, mocktail for mocks.
- `_RecipeCostSummary` in `recipe_detail_screen.dart` already shows cost — do NOT duplicate that work.

## Existing providers to reuse (do not recreate)

| Provider | File | Returns |
|---|---|---|
| `recipeCostDetailsProvider(recipeId)` | `meal_planner_providers.dart` | `AsyncValue<RecipeCostDetails?>` |
| `mealPlannerDayCostMapProvider(start, end)` | `meal_planner_providers.dart` | `AsyncValue<Map<DateTime, DayMealCostData>>` |
| `mealPlannerSummaryProvider(weekStart, weekEnd, monthStart, monthEnd, focusedDay)` | `meal_planner_providers.dart` | `AsyncValue<MealPlannerSummaryData>` |
| `currencySettingProvider` | `preferences_providers.dart` | `AsyncValue<String>` |

## File map

| File | Action | Responsibility |
|---|---|---|
| `lib/core/providers/preferences_providers.dart` | Modify | Add `MonthlyBudgetGoal` provider |
| `lib/core/providers/preferences_providers.g.dart` | Auto-generated | Run build_runner after above |
| `lib/l10n/app_en.arb` | Modify | Add 6 new l10n keys |
| `lib/app/meal_planner/widgets/budget_goal_sheet.dart` | Create | Modal sheet to set/remove monthly budget goal |
| `lib/app/meal_planner/widgets/budget_summary_card.dart` | Create | Card showing today/week/month costs + goal progress |
| `lib/app/meal_planner/screens/meal_planner_screen.dart` | Modify | Wire `BudgetSummaryCard` into `_WeeklyView`; heatmap in `_MonthDayCell` |
| `lib/app/recipes/screens/recipes_screen.dart` | Modify | Add `_RecipeCostMeta` ConsumerWidget inside `_RecipeGridCard` |
| `lib/app/settings/screens/settings_screen.dart` | Modify | Add "Meal planner budget" tile in FINANCE section |
| `test/core/providers/monthly_budget_goal_provider_test.dart` | Create | Unit tests for the new provider |
| `test/app/meal_planner/widgets/budget_goal_sheet_test.dart` | Create | Widget tests for `BudgetGoalSheet` |
| `test/app/meal_planner/widgets/budget_summary_card_test.dart` | Create | Widget tests for `BudgetSummaryCard` |

---

### Task 1: `monthlyBudgetGoalProvider`

**Files:**
- Modify: `lib/core/providers/preferences_providers.dart`
- Auto-generated: `lib/core/providers/preferences_providers.g.dart`
- Create: `test/core/providers/monthly_budget_goal_provider_test.dart`

**Interfaces:**
- Produces: `monthlyBudgetGoalProvider` → `AsyncValue<double?>` (null = no goal set)
- Produces: `ref.read(monthlyBudgetGoalProvider.notifier).setGoal(double? value)` — persists to SharedPreferences

- [ ] **Step 1: Write the failing test**

Create `test/core/providers/monthly_budget_goal_provider_test.dart`:

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  test('monthlyBudgetGoalProvider returns null when no value stored', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final goal = await container.read(monthlyBudgetGoalProvider.future);
    expect(goal, isNull);
  });

  test('setGoal persists the value', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    await container.read(monthlyBudgetGoalProvider.notifier).setGoal(800.0);

    final goal = await container.read(monthlyBudgetGoalProvider.future);
    expect(goal, 800.0);
  });

  test('setGoal(null) removes the value', () async {
    SharedPreferences.setMockInitialValues({'monthly_budget_goal': 800.0});
    final container = ProviderContainer();
    addTearDown(container.dispose);

    await container.read(monthlyBudgetGoalProvider.notifier).setGoal(null);

    final goal = await container.read(monthlyBudgetGoalProvider.future);
    expect(goal, isNull);
  });
}
```

- [ ] **Step 2: Run test to verify it fails**

```bash
flutter test test/core/providers/monthly_budget_goal_provider_test.dart -v
```

Expected: FAIL with "monthlyBudgetGoalProvider not found"

- [ ] **Step 3: Add provider to `preferences_providers.dart`**

At the end of `lib/core/providers/preferences_providers.dart`, after the closing `}` of `DefaultScreen`, add:

```dart
@riverpod
class MonthlyBudgetGoal extends _$MonthlyBudgetGoal {
  static const _key = 'monthly_budget_goal';

  @override
  Future<double?> build() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(_key);
  }

  Future<void> setGoal(double? value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value == null) {
      await prefs.remove(_key);
    } else {
      await prefs.setDouble(_key, value);
    }
    state = AsyncValue.data(value);
  }
}
```

- [ ] **Step 4: Regenerate codegen**

```bash
dart run build_runner build --delete-conflicting-outputs
```

Expected: `preferences_providers.g.dart` updated with `MonthlyBudgetGoalProvider`.

- [ ] **Step 5: Run test to verify it passes**

```bash
flutter test test/core/providers/monthly_budget_goal_provider_test.dart -v
```

Expected: 3 tests PASS.

- [ ] **Step 6: Analyze**

```bash
flutter analyze --fatal-infos
```

Expected: no new errors.

- [ ] **Step 7: Commit**

```bash
git add lib/core/providers/preferences_providers.dart \
        lib/core/providers/preferences_providers.g.dart \
        test/core/providers/monthly_budget_goal_provider_test.dart
git commit -m "feat: add monthlyBudgetGoalProvider (SharedPreferences)"
```

---

### Task 2: L10n keys

**Files:**
- Modify: `lib/l10n/app_en.arb`

**Interfaces:**
- Produces: `l10n.mealPlannerBudgetMonthCost(String amount)` → `"Month: {amount}"`
- Produces: `l10n.mealPlannerBudgetWeekCost(String amount)` → `"Week: {amount}"`
- Produces: `l10n.mealPlannerBudgetTodayCost(String amount)` → `"Today: {amount}"`
- Produces: `l10n.mealPlannerBudgetRemoveGoal` → `"Remove goal"`
- Produces: `l10n.mealPlannerBudgetGoalNav` → `"Meal planner budget"`
- Produces: `l10n.mealPlannerBudgetGoalSubtitle` → `"Monthly spending goal for meal planning"`

**Reuse — do NOT add new keys for these (already exist):**
- `l10n.budgetEditTitle` → `"Monthly Budget"` (sheet title)
- `l10n.budgetAmountLabel` → `"Budget amount"` (field label)
- `l10n.noBudgetDefined` → `"No budget set"` (empty state)
- `l10n.setBudgetButton` → `"Set budget"` (CTA when no goal)
- `l10n.budgetAmountSpent(spent: X, budget: Y)` → `"{spent} / {budget}"` (progress label)
- `l10n.save` / `l10n.cancel` (sheet buttons)
- `l10n.mealPlannerServings(int count)` (ICU plural for yield count in recipe cards)
- `l10n.recipeEstimatedCostPerServing(String cost)` → `"{cost} / serving"`
- `l10n.recipeEstimatePartial` → `"Partial estimate based on ingredients with price."`

- [ ] **Step 1: Add keys to `app_en.arb`**

Find the block around `"mealPlannerWeekEmpty"` (line ~1133). After the closing `"mealPlannerWeekEmptyHint"` entry, add:

```json
  "mealPlannerBudgetMonthCost": "Month: {amount}",
  "@mealPlannerBudgetMonthCost": {
    "placeholders": {
      "amount": {"type": "String"}
    }
  },
  "mealPlannerBudgetWeekCost": "Week: {amount}",
  "@mealPlannerBudgetWeekCost": {
    "placeholders": {
      "amount": {"type": "String"}
    }
  },
  "mealPlannerBudgetTodayCost": "Today: {amount}",
  "@mealPlannerBudgetTodayCost": {
    "placeholders": {
      "amount": {"type": "String"}
    }
  },
  "mealPlannerBudgetRemoveGoal": "Remove goal",
  "mealPlannerBudgetGoalNav": "Meal planner budget",
  "mealPlannerBudgetGoalSubtitle": "Monthly spending goal for meal planning",
```

- [ ] **Step 2: Run gen-l10n**

```bash
flutter gen-l10n
```

Expected: no errors, `lib/generated/l10n/app_localizations.dart` updated.

- [ ] **Step 3: Translate new keys**

```bash
python3 scripts/translate_missing.py
python3 scripts/review_translations.py
flutter gen-l10n
```

- [ ] **Step 4: Commit**

```bash
git add lib/l10n/app_en.arb lib/l10n/ lib/generated/
git commit -m "feat: add l10n keys for meal planner budget feature"
```

---

### Task 3: `BudgetGoalSheet`

**Files:**
- Create: `lib/app/meal_planner/widgets/budget_goal_sheet.dart`
- Create: `test/app/meal_planner/widgets/budget_goal_sheet_test.dart`

**Interfaces:**
- Produces: `BudgetGoalSheet.show(BuildContext context)` — static method, call from anywhere
- Consumes: `monthlyBudgetGoalProvider` (to read current goal and set/remove)
- Consumes: `l10n.budgetEditTitle`, `l10n.budgetAmountLabel`, `l10n.mealPlannerBudgetRemoveGoal`, `l10n.save`, `l10n.cancel`

- [ ] **Step 1: Write failing tests**

Create `test/app/meal_planner/widgets/budget_goal_sheet_test.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shopping_list/app/meal_planner/widgets/budget_goal_sheet.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  Widget buildSubject({double? initialGoal}) {
    SharedPreferences.setMockInitialValues(
      initialGoal != null ? {'monthly_budget_goal': initialGoal} : {},
    );
    return ProviderScope(
      child: MaterialApp(
        theme: AppTheme.light(const Color(0xFF4CAF50)),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: Builder(
            builder: (ctx) => TextButton(
              onPressed: () => BudgetGoalSheet.show(ctx),
              child: const Text('open'),
            ),
          ),
        ),
      ),
    );
  }

  testWidgets('shows sheet with empty field when no goal', (tester) async {
    await tester.pumpWidget(buildSubject());
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    expect(find.byType(BudgetGoalSheet), findsOneWidget);
    final field = tester.widget<TextField>(find.byType(TextField));
    expect(field.controller?.text, isEmpty);
  });

  testWidgets('pre-populates field with current goal', (tester) async {
    await tester.pumpWidget(buildSubject(initialGoal: 800.0));
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    expect(find.text('800.00'), findsOneWidget);
  });

  testWidgets('shows Remove goal button only when goal exists', (tester) async {
    await tester.pumpWidget(buildSubject(initialGoal: 500.0));
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(BudgetGoalSheet)),
    )!;
    expect(find.text(l10n.mealPlannerBudgetRemoveGoal), findsOneWidget);
  });

  testWidgets('does not show Remove goal button when no goal', (tester) async {
    await tester.pumpWidget(buildSubject());
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(BudgetGoalSheet)),
    )!;
    expect(find.text(l10n.mealPlannerBudgetRemoveGoal), findsNothing);
  });

  testWidgets('Save button does nothing when field is empty', (tester) async {
    await tester.pumpWidget(buildSubject());
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(BudgetGoalSheet)),
    )!;
    await tester.tap(find.text(l10n.save));
    await tester.pumpAndSettle();

    // Sheet still visible (no valid value)
    expect(find.byType(BudgetGoalSheet), findsOneWidget);
  });
}
```

- [ ] **Step 2: Run to verify tests fail**

```bash
flutter test test/app/meal_planner/widgets/budget_goal_sheet_test.dart -v
```

Expected: FAIL — `BudgetGoalSheet` not found.

- [ ] **Step 3: Create `budget_goal_sheet.dart`**

Create `lib/app/meal_planner/widgets/budget_goal_sheet.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class BudgetGoalSheet extends ConsumerStatefulWidget {
  const BudgetGoalSheet({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const BudgetGoalSheet(),
    );
  }

  @override
  ConsumerState<BudgetGoalSheet> createState() => _BudgetGoalSheetState();
}

class _BudgetGoalSheetState extends ConsumerState<BudgetGoalSheet> {
  late final TextEditingController _controller;
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final goalAsync = ref.watch(monthlyBudgetGoalProvider);

    // Pre-populate field once provider loads
    if (!_initialized && goalAsync.hasValue) {
      _initialized = true;
      final goal = goalAsync.value;
      if (goal != null) {
        _controller.text = goal.toStringAsFixed(2);
      }
    }

    return Container(
      margin: const EdgeInsets.all(Spacing.md),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(RadiusTokens.lg),
      ),
      padding: EdgeInsets.fromLTRB(
        Spacing.lg,
        Spacing.lg,
        Spacing.lg,
        MediaQuery.of(context).viewInsets.bottom + Spacing.lg,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.budgetEditTitle,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: Spacing.lg),
          TextField(
            controller: _controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            autofocus: true,
            decoration: InputDecoration(
              labelText: l10n.budgetAmountLabel,
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: Spacing.lg),
          Row(
            children: [
              if (goalAsync.value != null)
                TextButton(
                  onPressed: () async {
                    await ref
                        .read(monthlyBudgetGoalProvider.notifier)
                        .setGoal(null);
                    if (context.mounted) {
                      Navigator.pop(context);
                    }
                  },
                  child: Text(l10n.mealPlannerBudgetRemoveGoal),
                ),
              const Spacer(),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.cancel),
              ),
              const SizedBox(width: Spacing.xs),
              FilledButton(
                onPressed: () async {
                  final raw = _controller.text.replaceAll(',', '.');
                  final value = double.tryParse(raw);
                  if (value == null || value <= 0) {
                    return;
                  }
                  await ref
                      .read(monthlyBudgetGoalProvider.notifier)
                      .setGoal(value);
                  if (context.mounted) {
                    Navigator.pop(context);
                  }
                },
                child: Text(l10n.save),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
```

- [ ] **Step 4: Run tests to verify they pass**

```bash
flutter test test/app/meal_planner/widgets/budget_goal_sheet_test.dart -v
```

Expected: 5 tests PASS.

- [ ] **Step 5: Analyze**

```bash
flutter analyze --fatal-infos
```

- [ ] **Step 6: Commit**

```bash
git add lib/app/meal_planner/widgets/budget_goal_sheet.dart \
        test/app/meal_planner/widgets/budget_goal_sheet_test.dart
git commit -m "feat: add BudgetGoalSheet for setting meal planner monthly budget goal"
```

---

### Task 4: `BudgetSummaryCard`

**Files:**
- Create: `lib/app/meal_planner/widgets/budget_summary_card.dart`
- Create: `test/app/meal_planner/widgets/budget_summary_card_test.dart`

**Interfaces:**
- Produces: `BudgetSummaryCard({weekStart, weekEnd, monthStart, monthEnd, focusedDay})`
- Consumes: `mealPlannerSummaryProvider(...)` for costs
- Consumes: `monthlyBudgetGoalProvider` for goal
- Consumes: `currencySettingProvider` + `resolveCurrencyCode` for formatting
- Consumes: `BudgetGoalSheet.show(context)` when user taps "Edit goal" or "Set budget"

- [ ] **Step 1: Write failing tests**

Create `test/app/meal_planner/widgets/budget_summary_card_test.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_plan_cost_models.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';
import 'package:shopping_list/app/meal_planner/widgets/budget_summary_card.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _MockStorage extends Mock implements StorageBackend {}

void main() {
  late _MockStorage storage;
  final now = DateTime(2026, 6, 20);
  final weekStart = DateTime(2026, 6, 16);
  final weekEnd = DateTime(2026, 6, 22);
  final monthStart = DateTime(2026, 6, 1);
  final monthEnd = DateTime(2026, 6, 30);

  setUp(() {
    storage = _MockStorage();
    SharedPreferences.setMockInitialValues({});

    when(() => storage.watchMealPlans(
          start: any(named: 'start'),
          end: any(named: 'end'),
        )).thenAnswer((_) => Stream.value([]));
    when(() => storage.watchRecipes()).thenAnswer((_) => Stream.value([]));
    when(() => storage.loadPantryItems()).thenAnswer((_) async => []);
    when(() => storage.getUserData())
        .thenAnswer((_) async => {'currencyCode': 'BRL'});
  });

  Widget buildSubject() {
    return ProviderScope(
      overrides: [
        firestoreServiceProvider.overrideWithValue(storage),
      ],
      child: MaterialApp(
        theme: AppTheme.light(const Color(0xFF4CAF50)),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: BudgetSummaryCard(
            weekStart: weekStart,
            weekEnd: weekEnd,
            monthStart: monthStart,
            monthEnd: monthEnd,
            focusedDay: now,
          ),
        ),
      ),
    );
  }

  testWidgets('shows week and month costs when no goal', (tester) async {
    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(BudgetSummaryCard)),
    )!;
    // Zero costs show
    expect(find.textContaining('R\$'), findsWidgets);
    // No progress bar visible (no goal)
    expect(find.byType(LinearProgressIndicator), findsNothing);
    // Set budget CTA visible
    expect(find.text(l10n.setBudgetButton), findsOneWidget);
  });

  testWidgets('shows progress bar when goal is set', (tester) async {
    SharedPreferences.setMockInitialValues({'monthly_budget_goal': 500.0});
    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();

    expect(find.byType(LinearProgressIndicator), findsOneWidget);
    expect(find.text(l10n(tester).setBudgetButton), findsNothing);
  });

  testWidgets('tapping Set budget opens BudgetGoalSheet', (tester) async {
    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(BudgetSummaryCard)),
    )!;
    await tester.tap(find.text(l10n.setBudgetButton));
    await tester.pumpAndSettle();

    expect(find.byType(BudgetGoalSheet), findsOneWidget);
  });
}

AppLocalizations l10n(WidgetTester tester) =>
    AppLocalizations.of(tester.element(find.byType(BudgetSummaryCard)))!;
```

- [ ] **Step 2: Run to verify tests fail**

```bash
flutter test test/app/meal_planner/widgets/budget_summary_card_test.dart -v
```

Expected: FAIL — `BudgetSummaryCard` not found.

- [ ] **Step 3: Create `budget_summary_card.dart`**

Create `lib/app/meal_planner/widgets/budget_summary_card.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';
import 'package:shopping_list/app/meal_planner/widgets/budget_goal_sheet.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class BudgetSummaryCard extends ConsumerWidget {
  const BudgetSummaryCard({
    super.key,
    required this.weekStart,
    required this.weekEnd,
    required this.monthStart,
    required this.monthEnd,
    required this.focusedDay,
  });

  final DateTime weekStart;
  final DateTime weekEnd;
  final DateTime monthStart;
  final DateTime monthEnd;
  final DateTime focusedDay;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final summaryAsync = ref.watch(
      mealPlannerSummaryProvider(
        weekStart: weekStart,
        weekEnd: weekEnd,
        monthStart: monthStart,
        monthEnd: monthEnd,
        focusedDay: focusedDay,
      ),
    );
    final goalAsync = ref.watch(monthlyBudgetGoalProvider);
    final currencyCode = resolveCurrencyCode(
      ref.watch(currencySettingProvider).value ?? '',
      Localizations.localeOf(context),
    );

    final summary = summaryAsync.value;
    final goal = goalAsync.value;

    if (summary == null) {
      return const SizedBox.shrink();
    }

    final monthCost = summary.plannedMonthCost;
    final weekCost = summary.weekCost;
    final todayCost = summary.todayCost;
    final monthPartial = summary.monthHasPartialPricing ? '~' : '';
    final weekPartial = summary.weekHasPartialPricing ? '~' : '';

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
        vertical: Spacing.xs,
      ),
      padding: const EdgeInsets.all(Spacing.md),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(RadiusTokens.lg),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withAlpha(80),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row
          Row(
            children: [
              Icon(
                Icons.savings_outlined,
                size: 16,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: Spacing.xs),
              Expanded(
                child: Text(
                  l10n.monthlyBudgetNav,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              if (goal != null)
                GestureDetector(
                  onTap: () => BudgetGoalSheet.show(context),
                  child: Text(
                    l10n.setBudgetButton,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: Spacing.xs),

          // Goal progress (only when goal is set)
          if (goal != null) ...[
            Row(
              children: [
                Expanded(
                  child: Text(
                    l10n.budgetAmountSpent(
                      spent: '${formatCurrency(monthCost, currencyCode)}$monthPartial',
                      budget: formatCurrency(goal, currencyCode),
                    ),
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '${((monthCost / goal) * 100).clamp(0, 999).round()}%',
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: _progressColor(monthCost / goal, theme.colorScheme),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: Spacing.xs),
            ClipRRect(
              borderRadius: BorderRadius.circular(RadiusTokens.bar),
              child: TweenAnimationBuilder<double>(
                tween: Tween<double>(
                  begin: 0,
                  end: (monthCost / goal).clamp(0.0, 1.0),
                ),
                duration: DurationTokens.slow,
                curve: Curves.easeOutCubic,
                builder: (context, value, _) => LinearProgressIndicator(
                  value: value,
                  backgroundColor: theme.colorScheme.surfaceContainerHigh,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    _progressColor(monthCost / goal, theme.colorScheme),
                  ),
                  minHeight: 6,
                ),
              ),
            ),
            const SizedBox(height: Spacing.xs),
          ],

          // Week and today costs
          Row(
            children: [
              Expanded(
                child: Text(
                  l10n.mealPlannerBudgetWeekCost(
                    '${formatCurrency(weekCost, currencyCode)}$weekPartial',
                  ),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
              Text(
                l10n.mealPlannerBudgetTodayCost(
                  formatCurrency(todayCost, currencyCode),
                ),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),

          // Month cost when no goal (show raw value + set CTA)
          if (goal == null) ...[
            const SizedBox(height: Spacing.xs),
            Row(
              children: [
                Expanded(
                  child: Text(
                    l10n.mealPlannerBudgetMonthCost(
                      '${formatCurrency(monthCost, currencyCode)}$monthPartial',
                    ),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () => BudgetGoalSheet.show(context),
                  icon: const Icon(Icons.add, size: 14),
                  label: Text(l10n.setBudgetButton),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Spacing.xs,
                      vertical: Spacing.xxs,
                    ),
                    visualDensity: VisualDensity.compact,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Color _progressColor(double ratio, ColorScheme scheme) {
    if (ratio >= 1.0) {
      return scheme.error;
    }
    if (ratio >= 0.9) {
      return const Color(0xFFFB8C00);
    }
    return const Color(0xFF4CAF50);
  }
}
```

- [ ] **Step 4: Run tests**

```bash
flutter test test/app/meal_planner/widgets/budget_summary_card_test.dart -v
```

Expected: 3 tests PASS.

- [ ] **Step 5: Analyze**

```bash
flutter analyze --fatal-infos
```

- [ ] **Step 6: Commit**

```bash
git add lib/app/meal_planner/widgets/budget_summary_card.dart \
        test/app/meal_planner/widgets/budget_summary_card_test.dart
git commit -m "feat: add BudgetSummaryCard showing monthly/weekly/today costs"
```

---

### Task 5: Integrate into `MealPlannerScreen` + monthly heatmap

**Files:**
- Modify: `lib/app/meal_planner/screens/meal_planner_screen.dart`

**Changes:**
1. `_WeeklyView` — add 4 new params (`weekEnd`, `monthStart`, `monthEnd`, `focusedDay`); add `BudgetSummaryCard` after `WeeklySummaryBar`.
2. `_MonthlyView` — watch `mealPlannerDayCostMapProvider`; compute `maxDayCost`; pass `dayCost`, `maxDayCost`, `currencyCode` to `_MonthDayCell`.
3. `_MonthDayCell` — add `dayCost`, `maxDayCost`, `currencyCode` params; render heatmap color + long-press `Tooltip`.

- [ ] **Step 1: Update `_WeeklyView` params and add `BudgetSummaryCard`**

In `meal_planner_screen.dart`, find the `_WeeklyView` class definition (~line 424) and update:

```dart
class _WeeklyView extends StatelessWidget {
  const _WeeklyView({
    super.key,
    required this.plans,
    required this.weekStart,
    required this.weekEnd,
    required this.monthStart,
    required this.monthEnd,
    required this.focusedDay,
    required this.isSameDay,
    required this.onAddMeal,
    required this.onDeleteMeal,
  });

  final List<MealPlan> plans;
  final DateTime weekStart;
  final DateTime weekEnd;
  final DateTime monthStart;
  final DateTime monthEnd;
  final DateTime focusedDay;
  final bool Function(DateTime, DateTime) isSameDay;
  final Future<void> Function(DateTime) onAddMeal;
  final Future<void> Function(MealPlan) onDeleteMeal;
```

In `_WeeklyView.build()`, after `WeeklySummaryBar(plans: plans),`, add:

```dart
BudgetSummaryCard(
  weekStart: weekStart,
  weekEnd: weekEnd,
  monthStart: monthStart,
  monthEnd: monthEnd,
  focusedDay: focusedDay,
),
```

Add the import at the top of the file:
```dart
import 'package:shopping_list/app/meal_planner/widgets/budget_summary_card.dart';
```

In `_MealPlannerScreenState.build()`, find where `_WeeklyView(...)` is constructed and add the new params:

```dart
_WeeklyView(
  key: const ValueKey('weekly'),
  plans: plans,
  weekStart: _weekStart,
  weekEnd: _weekEnd,
  monthStart: _monthStart,
  monthEnd: _monthEnd,
  focusedDay: _focusedDay,
  isSameDay: _isSameDay,
  onAddMeal: _openAddSheet,
  onDeleteMeal: _deleteMealPlan,
),
```

- [ ] **Step 2: Update `_MonthlyView` for heatmap**

Find `_MonthlyView` (already a `ConsumerWidget`). Add to `build()`:

After `final activeTypes = ref.watch(activeMealTypesProvider);`, add:

```dart
final costMapAsync = ref.watch(
  mealPlannerDayCostMapProvider(start: monthStart, end: monthEnd),
);
final costMap = costMapAsync.value ?? {};
final maxDayCost = costMap.values.isEmpty
    ? 0.0
    : costMap.values
        .map((d) => d.totalCost)
        .reduce((a, b) => a > b ? a : b);
final currencyCode = resolveCurrencyCode(
  ref.watch(currencySettingProvider).value ?? '',
  Localizations.localeOf(context),
);
```

Add at the top of `meal_planner_screen.dart` if not already present:
```dart
import 'package:shopping_list/core/utils/formatters.dart';
```

In `_MonthlyView`'s `GridView.builder itemBuilder`, where `_MonthDayCell(...)` is constructed, add the new params:

```dart
return _MonthDayCell(
  date: date,
  plans: dayPlans,
  isToday: isToday,
  theme: theme,
  onTap: () => onDayTap(date),
  activeTypes: activeTypes,
  dayCost: costMap[DateTime(date.year, date.month, date.day)]?.totalCost ?? 0.0,
  maxDayCost: maxDayCost,
  currencyCode: currencyCode,
);
```

- [ ] **Step 3: Update `_MonthDayCell` for heatmap**

Find `_MonthDayCell` class and add new params:

```dart
class _MonthDayCell extends StatelessWidget {
  const _MonthDayCell({
    required this.date,
    required this.plans,
    required this.isToday,
    required this.theme,
    required this.onTap,
    required this.activeTypes,
    this.dayCost = 0.0,
    this.maxDayCost = 0.0,
    this.currencyCode = 'BRL',
  });

  final DateTime date;
  final List<MealPlan> plans;
  final bool isToday;
  final ThemeData theme;
  final VoidCallback onTap;
  final List<MealType> activeTypes;
  final double dayCost;
  final double maxDayCost;
  final String currencyCode;
```

In `_MonthDayCell.build()`, replace the `Material` widget with a `Tooltip` wrapping it. Also update the `Material` color to include the heatmap:

```dart
@override
Widget build(BuildContext context) {
  // ... existing mealTypeIds sort code stays unchanged ...

  final intensity = (maxDayCost > 0 && dayCost > 0)
      ? (dayCost / maxDayCost).clamp(0.0, 1.0)
      : 0.0;

  final baseColor = isToday
      ? theme.colorScheme.primaryContainer
      : theme.colorScheme.surfaceContainerLow;

  final cellColor = (!isToday && intensity > 0)
      ? Color.alphaBlend(
          theme.colorScheme.tertiary.withAlpha((intensity * 80).toInt()),
          baseColor,
        )
      : baseColor;

  return Tooltip(
    message: dayCost > 0 ? formatCurrency(dayCost, currencyCode) : '',
    triggerMode: TooltipTriggerMode.longPress,
    child: Material(
      color: cellColor,
      borderRadius: BorderRadius.circular(RadiusTokens.sm),
      child: InkWell(
        // ... rest of the existing InkWell content unchanged ...
```

- [ ] **Step 4: Run existing meal planner tests**

```bash
flutter test test/app/meal_planner/ -v
```

Expected: all existing tests PASS.

- [ ] **Step 5: Analyze**

```bash
flutter analyze --fatal-infos
```

- [ ] **Step 6: Commit**

```bash
git add lib/app/meal_planner/screens/meal_planner_screen.dart
git commit -m "feat: wire BudgetSummaryCard into weekly view and add monthly cost heatmap"
```

---

### Task 6: Recipe grid card cost row

**Files:**
- Modify: `lib/app/recipes/screens/recipes_screen.dart`

**Change:** Add `_RecipeCostMeta` (a new private `ConsumerWidget` in the same file) and use it inside `_RecipeGridCard`. The detail screen already shows costs — this adds a compact version to the grid card.

**Note:** `_RecipeGridCard` stays a `StatelessWidget`. `_RecipeCostMeta` is the `ConsumerWidget` placed inside it.

- [ ] **Step 1: Write a failing test**

Create `test/app/recipes/screens/recipes_screen_cost_test.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shopping_list/app/recipes/screens/recipes_screen.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'package:shopping_list/theme/app_theme.dart';

class _MockStorage extends Mock implements StorageBackend {}

void main() {
  late _MockStorage storage;

  setUp(() {
    storage = _MockStorage();
    when(() => storage.watchRecipes()).thenAnswer(
      (_) => Stream.value([
        Recipe(
          id: 'r1',
          name: 'Frango Assado',
          description: 'Delicioso',
          ingredients: [
            ShoppingItem(
              name: 'Frango',
              quantity: 1,
              estimatedPrice: 30,
              shoppingListId: 'l1',
              categoryId: 'c1',
            ),
          ],
          instructions: ['Assar'],
          yieldServings: 4,
          manualTotalCost: 40,
        ).toJson(),
      ]),
    );
    when(() => storage.loadPantryItems()).thenAnswer((_) async => []);
    when(() => storage.getUserData())
        .thenAnswer((_) async => {'currencyCode': 'BRL'});
    when(() => storage.watchLists()).thenAnswer((_) => Stream.value([]));
    when(() => storage.watchSharedListRefs())
        .thenAnswer((_) => Stream.value({}));
  });

  Widget buildSubject() {
    return ProviderScope(
      overrides: [
        firestoreServiceProvider.overrideWithValue(storage),
      ],
      child: MaterialApp(
        theme: AppTheme.light(const Color(0xFF4CAF50)),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const RecipesScreen(),
      ),
    );
  }

  testWidgets('recipe grid card shows yield and cost', (tester) async {
    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(RecipesScreen)),
    )!;
    // Cost per serving: R$ 40 / 4 = R$ 10
    expect(
      find.text(
        l10n.recipeEstimatedCostPerServing(formatCurrency(10, 'BRL')),
      ),
      findsOneWidget,
    );
    // Yield servings
    expect(find.text(l10n.mealPlannerServings(4)), findsOneWidget);
  });
}
```

- [ ] **Step 2: Run to verify test fails**

```bash
flutter test test/app/recipes/screens/recipes_screen_cost_test.dart -v
```

Expected: FAIL (no cost metadata visible in grid card).

- [ ] **Step 3: Add `_RecipeCostMeta` to `recipes_screen.dart`**

Add the following private widget at the bottom of `lib/app/recipes/screens/recipes_screen.dart` (before the final `}`):

```dart
class _RecipeCostMeta extends ConsumerWidget {
  const _RecipeCostMeta({super.key, required this.recipe});

  final Recipe recipe;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final costAsync = ref.watch(recipeCostDetailsProvider(recipe.id));
    final currencyCode = resolveCurrencyCode(
      ref.watch(currencySettingProvider).value ?? '',
      Localizations.localeOf(context),
    );
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return costAsync.maybeWhen(
      data: (cost) {
        if (cost == null || cost.effectiveTotalCost == 0) {
          return const SizedBox.shrink();
        }
        final partial = cost.hasPartialPricing ? '~' : '';
        return Text(
          [
            if (recipe.yieldServings > 1)
              l10n.mealPlannerServings(recipe.yieldServings),
            '${formatCurrency(cost.effectiveTotalCost, currencyCode)}$partial',
            l10n.recipeEstimatedCostPerServing(
              '${formatCurrency(cost.costPerServing, currencyCode)}$partial',
            ),
          ].join(' · '),
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}
```

Add required imports at the top of `recipes_screen.dart` if not already present:

```dart
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
```

- [ ] **Step 4: Use `_RecipeCostMeta` inside `_RecipeGridCard`**

In `_RecipeGridCard.build()`, find the padding section with the recipe name and `_PantryAvailabilityBadge`. After `_PantryAvailabilityBadge(ingredients: recipe.ingredients),`, add:

```dart
const SizedBox(height: Spacing.xxs),
_RecipeCostMeta(recipe: recipe),
```

- [ ] **Step 5: Run tests**

```bash
flutter test test/app/recipes/screens/recipes_screen_cost_test.dart -v
```

Expected: PASS.

- [ ] **Step 6: Run full recipe tests**

```bash
flutter test test/app/recipes/ -v
```

Expected: all PASS.

- [ ] **Step 7: Analyze**

```bash
flutter analyze --fatal-infos
```

- [ ] **Step 8: Commit**

```bash
git add lib/app/recipes/screens/recipes_screen.dart \
        test/app/recipes/screens/recipes_screen_cost_test.dart
git commit -m "feat: show yield and cost per serving in recipe grid cards"
```

---

### Task 7: Settings cell for budget goal

**Files:**
- Modify: `lib/app/settings/screens/settings_screen.dart`

**Change:** Add a new `ListTile` in the existing "FINANCE & DATA" section (after the `monthlyBudgetNav` tile that opens `BudgetDashboardScreen`) to open `BudgetGoalSheet`.

- [ ] **Step 1: Add import and tile**

In `lib/app/settings/screens/settings_screen.dart`, add the import:

```dart
import 'package:shopping_list/app/meal_planner/widgets/budget_goal_sheet.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
```

(Note: `preferences_providers.dart` is already imported — check before adding duplicate.)

In `SettingsScreen.build()`, find the line after the closing `),` of the existing `monthlyBudgetNav` `ListTile` (around line 386) and insert:

```dart
Consumer(
  builder: (context, ref, _) {
    final goalAsync = ref.watch(monthlyBudgetGoalProvider);
    final currencyCode = resolveCurrencyCode(
      ref.watch(currencySettingProvider).value ?? '',
      Localizations.localeOf(context),
    );
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final goal = goalAsync.value;
    final subtitle = goal != null
        ? formatCurrency(goal, currencyCode)
        : l10n.noBudgetDefined;
    return ListTile(
      leading: Icon(
        Icons.restaurant_menu_outlined,
        color: theme.colorScheme.primary,
      ),
      title: Text(l10n.mealPlannerBudgetGoalNav),
      subtitle: Text(subtitle),
      trailing: Icon(
        Icons.chevron_right,
        color: theme.colorScheme.onSurfaceVariant,
      ),
      onTap: () => BudgetGoalSheet.show(context),
    );
  },
),
```

Add imports at the top if not already present:

```dart
import 'package:shopping_list/core/utils/formatters.dart';
```

- [ ] **Step 2: Analyze**

```bash
flutter analyze --fatal-infos
```

- [ ] **Step 3: Run all tests**

```bash
flutter test
```

Expected: all tests PASS.

- [ ] **Step 4: Commit**

```bash
git add lib/app/settings/screens/settings_screen.dart
git commit -m "feat: add meal planner budget goal tile in settings FINANCE section"
```

---

## Self-Review Checklist

- [x] **Spec coverage:**
  - Monthly budget goal (set/remove): `BudgetGoalSheet` + `monthlyBudgetGoalProvider` ✓
  - Budget summary in meal planner (today/week/month + goal progress): `BudgetSummaryCard` ✓
  - Recipe cards cost + yield: `_RecipeCostMeta` in `_RecipeGridCard` ✓
  - Monthly heatmap: `_MonthDayCell` heatmap + tooltip ✓
  - Settings entry: Task 7 ✓
  - Detail screen: already done (existing `_RecipeCostSummary`) — not in scope ✓

- [x] **No placeholders:** All code blocks are complete. No TBD or TODO.

- [x] **Type consistency:**
  - `monthlyBudgetGoalProvider` → `AsyncValue<double?>` — used as `.value` in `BudgetSummaryCard` and `BudgetGoalSheet` ✓
  - `mealPlannerSummaryProvider(weekStart:, weekEnd:, monthStart:, monthEnd:, focusedDay:)` — named params match provider signature in `meal_planner_providers.dart` ✓
  - `BudgetSummaryCard` params match usage in `_WeeklyView` ✓
  - `_MonthDayCell` new params (`dayCost`, `maxDayCost`, `currencyCode`) match call site in `_MonthlyView` ✓
  - `resolveCurrencyCode(String, Locale)` — matches signature in `formatters.dart` ✓
