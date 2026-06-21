# MD3 Compliance Fixes Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Fix all Material Design 3 violations identified in the KipiList codebase audit.

**Architecture:** Mechanical replacements — no new abstractions. Each task targets one violation type. Run `flutter analyze --fatal-infos` after each task to catch regressions. No logic changes, only widget/token substitutions.

**Tech Stack:** Flutter 3.29+, Material 3, Riverpod, `lib/core/theme/app_theme.dart` as single source of truth.

---

## Skipped (intentional design choices, NOT bugs)

- **Typography scale sizes** (displayLarge=32 vs spec 57) — intentional compact mobile design
- **Font weights** (w800 for display/headline) — brand identity
- **`fontSize: 9/10` in paywall** — layout-specific dense UI
- **InputDecoration no underline** — deliberate filled-card style
- **`Colors.white` in pantry scanner overlay** — correct: camera view needs white contrast
- **`Colors.white` in paywall gradient sections** — correct: on dark gradient background

---

## Files Modified

| File | Change |
|---|---|
| `lib/core/theme/app_theme.dart` | Card/Dialog/BottomSheet `Colors.white` → colorScheme tokens |
| `lib/app/settings/screens/achievements_screen.dart` | 8× hardcoded `Colors.*` → colorScheme/semantic tokens |
| `lib/app/settings/screens/manage_categories_screen.dart` | `ElevatedButton` → `FilledButton` |
| `lib/core/widgets/premium_gate.dart` | `ElevatedButton` → `FilledButton` |
| `lib/app/settings/screens/paywall_screen.dart` | 3× `ElevatedButton` → `FilledButton`/`OutlinedButton` |
| `lib/app/onboarding/screens/onboarding_ai_chat.dart` | `ElevatedButton` → `FilledButton` |
| `lib/app/onboarding/screens/onboarding_slide_ai_demo.dart` | 2× `ElevatedButton` → `FilledButton` |
| `lib/app/onboarding/screens/onboarding_slide_commitments.dart` | `ElevatedButton` → `FilledButton` |
| `lib/app/onboarding/screens/onboarding_slide_personalization.dart` | `ElevatedButton` → `FilledButton` |
| `lib/app/onboarding/screens/onboarding_slide_premium.dart` | 3× `ElevatedButton` → `FilledButton`/`OutlinedButton` |
| `lib/app/onboarding/screens/onboarding_slide_pain_point.dart` | `ElevatedButton` → `FilledButton` |
| `lib/app/lists/widgets/quick_add_bar.dart` | `Colors.grey` → `colorScheme.surfaceContainerHighest` |

---

## Task 1: Fix theme-level surface colors

**File:** `lib/core/theme/app_theme.dart`

MD3 violation: `Colors.white` hardcoded for card, dialog, and bottom sheet. These don't adapt when seed color produces a tinted light scheme.

- [ ] **Step 1: Edit card theme**

In `_buildTheme`, replace card color:
```dart
// Before
color: isDark ? colorScheme.surfaceContainerLow : Colors.white,

// After
color: isDark ? colorScheme.surfaceContainerLow : colorScheme.surfaceContainerLowest,
```

- [ ] **Step 2: Edit dialog theme**

```dart
// Before
backgroundColor: isDark ? colorScheme.surfaceContainerHigh : Colors.white,

// After
backgroundColor: colorScheme.surfaceContainerHigh,
```

- [ ] **Step 3: Edit bottom sheet theme**

```dart
// Before
backgroundColor: isDark ? colorScheme.surfaceContainerHigh : Colors.white,

// After
backgroundColor: colorScheme.surfaceContainerHigh,
```

- [ ] **Step 4: Verify**

```bash
flutter analyze --fatal-infos
```
Expected: 0 new errors.

- [ ] **Step 5: Commit**

```bash
git add lib/core/theme/app_theme.dart
git commit -m "fix(theme): replace hardcoded Colors.white with colorScheme surface tokens"
```

---

## Task 2: Fix achievements_screen hardcoded colors

**File:** `lib/app/settings/screens/achievements_screen.dart`

MD3 violation: `Colors.blue`, `Colors.brown`, `Colors.grey`, `Colors.amber`, `Colors.purple` bypass the color system and don't adapt to seed color or dark mode.

- [ ] **Step 1: Replace stat card `Colors.blue` with `semanticColors.info`**

The `_buildStatCard` call for "items purchased" passes `Colors.blue`. Change in `build()`:
```dart
// Before
_buildStatCard(
  context,
  l10n.itemsPurchased,
  stats.totalItemsBought.toString(),
  Icons.shopping_bag,
  Colors.blue,
),

// After
_buildStatCard(
  context,
  l10n.itemsPurchased,
  stats.totalItemsBought.toString(),
  Icons.shopping_bag,
  semanticColors.info,
),
```

- [ ] **Step 2: Replace achievement badge hardcoded colors**

```dart
// Before
_AchievementBadge(
  label: l10n.badgeBeginner,
  icon: Icons.star_border,
  unlocked: stats.totalItemsBought >= 10,
  color: Colors.brown,
),
_AchievementBadge(
  label: l10n.badgeOrganized,
  icon: Icons.check_circle_outline,
  unlocked: stats.totalItemsBought >= 50,
  color: Colors.grey,
),
_AchievementBadge(
  label: l10n.badgeSavingMaster,
  icon: Icons.workspace_premium,
  unlocked: stats.totalSavings >= 100,
  color: Colors.amber,
),
_AchievementBadge(
  label: l10n.badgeSuperPlanner,
  icon: Icons.auto_awesome,
  unlocked: stats.currentStreak >= 7,
  color: Colors.purple,
),

// After
_AchievementBadge(
  label: l10n.badgeBeginner,
  icon: Icons.star_border,
  unlocked: stats.totalItemsBought >= 10,
  color: Theme.of(context).colorScheme.tertiary,
),
_AchievementBadge(
  label: l10n.badgeOrganized,
  icon: Icons.check_circle_outline,
  unlocked: stats.totalItemsBought >= 50,
  color: Theme.of(context).colorScheme.outline,
),
_AchievementBadge(
  label: l10n.badgeSavingMaster,
  icon: Icons.workspace_premium,
  unlocked: stats.totalSavings >= 100,
  color: AppColors.premiumAmber,
),
_AchievementBadge(
  label: l10n.badgeSuperPlanner,
  icon: Icons.auto_awesome,
  unlocked: stats.currentStreak >= 7,
  color: Theme.of(context).colorScheme.secondary,
),
```

Note: `AppColors` is already imported via `app_theme.dart`. Add import if needed:
```dart
import 'package:shopping_list/core/theme/colors.dart';
```

- [ ] **Step 3: Fix hardcoded Colors.grey in `_AchievementBadge.build()`**

```dart
// Before
color: unlocked ? color.withAlpha((0.2 * 255).toInt()) : Colors.grey.withAlpha((0.1 * 255).toInt()),
border: Border.all(
  color: unlocked ? color : Colors.grey.withAlpha((0.3 * 255).toInt()),
  width: 2,
),
child: Icon(
  icon,
  size: 40,
  color: unlocked ? color : Colors.grey.withAlpha((0.5 * 255).toInt()),
),

// After
color: unlocked
    ? color.withAlpha((0.2 * 255).toInt())
    : Theme.of(context).colorScheme.surfaceContainerHighest,
border: Border.all(
  color: unlocked ? color : Theme.of(context).colorScheme.outline.withAlpha(77),
  width: 2,
),
child: Icon(
  icon,
  size: 40,
  color: unlocked ? color : Theme.of(context).colorScheme.outline,
),
```

- [ ] **Step 4: Fix label `Colors.grey` in `_AchievementBadge.build()`**

```dart
// Before
Text(
  label,
  style: TextStyle(
    fontSize: 12,
    fontWeight: unlocked ? FontWeight.bold : FontWeight.normal,
    color: unlocked ? null : Colors.grey,
  ),
),

// After
Text(
  label,
  style: TextStyle(
    fontSize: 12,
    fontWeight: unlocked ? FontWeight.bold : FontWeight.normal,
    color: unlocked ? null : Theme.of(context).colorScheme.outline,
  ),
),
```

- [ ] **Step 5: Verify**

```bash
flutter analyze --fatal-infos
```
Expected: 0 new errors.

- [ ] **Step 6: Commit**

```bash
git add lib/app/settings/screens/achievements_screen.dart
git commit -m "fix(achievements): replace hardcoded Colors.* with colorScheme adaptive tokens"
```

---

## Task 3: ElevatedButton → FilledButton (simple CTA, no custom style)

**Files:** `onboarding_slide_commitments.dart`, `onboarding_slide_personalization.dart`, `onboarding_slide_pain_point.dart`

These three files each have one `ElevatedButton` with no custom style — pure primary CTA. MD3 primary button = `FilledButton`.

- [ ] **Step 1: onboarding_slide_commitments.dart**

```dart
// Before
ElevatedButton(
  onPressed: _selected.isNotEmpty ? widget.onNext : null,
  child: Text(l10n.onboardingCommitmentsCta),
),

// After
FilledButton(
  onPressed: _selected.isNotEmpty ? widget.onNext : null,
  child: Text(l10n.onboardingCommitmentsCta),
),
```

- [ ] **Step 2: onboarding_slide_personalization.dart**

```dart
// Before
ElevatedButton(
  onPressed: widget.onNext,
  child: Text(l10n.onboardingPersonalizationCta),
),

// After
FilledButton(
  onPressed: widget.onNext,
  child: Text(l10n.onboardingPersonalizationCta),
),
```

- [ ] **Step 3: onboarding_slide_pain_point.dart**

```dart
// Before
ElevatedButton(
  onPressed: _selected.isNotEmpty ? widget.onNext : null,
  child: Text(l10n.onboardingPainCta),
),

// After
FilledButton(
  onPressed: _selected.isNotEmpty ? widget.onNext : null,
  child: Text(l10n.onboardingPainCta),
),
```

- [ ] **Step 4: Verify**

```bash
flutter analyze --fatal-infos
```

- [ ] **Step 5: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_slide_commitments.dart \
        lib/app/onboarding/screens/onboarding_slide_personalization.dart \
        lib/app/onboarding/screens/onboarding_slide_pain_point.dart
git commit -m "fix(onboarding): replace ElevatedButton with FilledButton on primary CTAs"
```

---

## Task 4: ElevatedButton → FilledButton/OutlinedButton (retry error states)

**Files:** `onboarding_slide_premium.dart` (lines 1097 + 1164), `paywall_screen.dart` (line 730)

These are error-state retry buttons — low emphasis. MD3 appropriate widget: `OutlinedButton`.

- [ ] **Step 1: onboarding_slide_premium.dart line ~1097 (first retry)**

Find the block inside `if (_errorMessage != null)` in `_buildBottomBar`:
```dart
// Before
ElevatedButton(
  onPressed: _loadPackages,
  child: Text(l10n.retry),
),

// After
OutlinedButton(
  onPressed: _loadPackages,
  child: Text(l10n.retry),
),
```

- [ ] **Step 2: onboarding_slide_premium.dart line ~1164 (second retry)**

Find the second error block inside the `SingleChildScrollView`:
```dart
// Before
ElevatedButton(
  onPressed: _loadPackages,
  child: Text(l10n.retry),
),

// After
OutlinedButton(
  onPressed: _loadPackages,
  child: Text(l10n.retry),
),
```

- [ ] **Step 3: paywall_screen.dart line ~730 (retry)**

```dart
// Before
ElevatedButton(
  onPressed: _loadPackages,
  child: Text(l10n.retry),
),

// After
OutlinedButton(
  onPressed: _loadPackages,
  child: Text(l10n.retry),
),
```

- [ ] **Step 4: Verify**

```bash
flutter analyze --fatal-infos
```

- [ ] **Step 5: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_slide_premium.dart \
        lib/app/settings/screens/paywall_screen.dart
git commit -m "fix(paywall): replace error-state ElevatedButton with OutlinedButton"
```

---

## Task 5: ElevatedButton → FilledButton (purchase CTAs with custom styles)

**Files:** `onboarding_slide_premium.dart` line 1017, `paywall_screen.dart` line 535

These are primary purchase CTAs with `backgroundColor: colorScheme.primary` — should be `FilledButton` (uses primary by default).

- [ ] **Step 1: onboarding_slide_premium.dart line ~1017**

```dart
// Before
ElevatedButton(
  onPressed: _selectedPackage != null ? _purchase : null,
  style: ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    foregroundColor: theme.colorScheme.onPrimary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(28),
    ),
    elevation: 6,
    shadowColor: theme.colorScheme.primary.withAlpha(120),
  ),
  child: Text(
    _ctaText(l10n),
    style: const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w900,
      letterSpacing: 0.3,
    ),
  ),
),

// After
FilledButton(
  onPressed: _selectedPackage != null ? _purchase : null,
  style: FilledButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(28),
    ),
    elevation: 6,
    shadowColor: theme.colorScheme.primary.withAlpha(120),
  ),
  child: Text(
    _ctaText(l10n),
    style: const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w900,
      letterSpacing: 0.3,
    ),
  ),
),
```

- [ ] **Step 2: paywall_screen.dart line ~535**

```dart
// Before
ElevatedButton(
  onPressed: _selectedPackage != null ? _purchase : null,
  style: ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    foregroundColor: theme.colorScheme.onPrimary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(27),
    ),
    elevation: 4,
    shadowColor: theme.colorScheme.primary.withAlpha(100),
  ),
  child: Text(
    _ctaText(l10n),
    style: const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w900,
      letterSpacing: 0.3,
    ),
  ),
),

// After
FilledButton(
  onPressed: _selectedPackage != null ? _purchase : null,
  style: FilledButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(27),
    ),
    elevation: 4,
    shadowColor: theme.colorScheme.primary.withAlpha(100),
  ),
  child: Text(
    _ctaText(l10n),
    style: const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w900,
      letterSpacing: 0.3,
    ),
  ),
),
```

- [ ] **Step 3: Verify**

```bash
flutter analyze --fatal-infos
```

- [ ] **Step 4: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_slide_premium.dart \
        lib/app/settings/screens/paywall_screen.dart
git commit -m "fix(paywall): replace ElevatedButton with FilledButton on purchase CTAs"
```

---

## Task 6: ElevatedButton → FilledButton (amber CTAs)

**Files:** `onboarding_ai_chat.dart`, `onboarding_slide_ai_demo.dart` (amber button)

Both use `ElevatedButton` with `backgroundColor: AppColors.premiumAmber, foregroundColor: Colors.black`.

- [ ] **Step 1: onboarding_ai_chat.dart**

```dart
// Before
ElevatedButton(
  onPressed: widget.onFinished,
  style: ElevatedButton.styleFrom(
    backgroundColor: AppColors.premiumAmber,
    foregroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  child: Text(
    l10n.onboardingAiDemoContinue,
    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  ),
),

// After
FilledButton(
  onPressed: widget.onFinished,
  style: FilledButton.styleFrom(
    backgroundColor: AppColors.premiumAmber,
    foregroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  child: Text(
    l10n.onboardingAiDemoContinue,
    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  ),
),
```

- [ ] **Step 2: onboarding_slide_ai_demo.dart — amber button**

Find the button inside `_buildCta()` or similar (line ~198):
```dart
// Before
ElevatedButton(
  onPressed: widget.onFinished,
  style: ElevatedButton.styleFrom(
    backgroundColor: AppColors.premiumAmber,
    foregroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  child: Text(
    l10n.onboardingAiDemoContinue,
    ...
  ),
),

// After — same pattern as above
FilledButton(
  onPressed: widget.onFinished,
  style: FilledButton.styleFrom(
    backgroundColor: AppColors.premiumAmber,
    foregroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  child: Text(...),
),
```

- [ ] **Step 3: onboarding_slide_ai_demo.dart — white button on dark background (line ~210)**

This `ElevatedButton` has `backgroundColor: Colors.white, foregroundColor: colorScheme.primary`. Keep white because it's intentionally contrasting against a dark onboarding background.

```dart
// Before
ElevatedButton(
  onPressed: _showCta ? widget.onFinished : null,
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(27),
    ),
    elevation: 4,
    shadowColor: Colors.black.withAlpha(60),
  ),
  ...
),

// After
FilledButton(
  onPressed: _showCta ? widget.onFinished : null,
  style: FilledButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(27),
    ),
    elevation: 4,
    shadowColor: Colors.black.withAlpha(60),
  ),
  ...
),
```

- [ ] **Step 4: Verify**

```bash
flutter analyze --fatal-infos
```

- [ ] **Step 5: Commit**

```bash
git add lib/app/onboarding/screens/onboarding_ai_chat.dart \
        lib/app/onboarding/screens/onboarding_slide_ai_demo.dart
git commit -m "fix(onboarding): replace ElevatedButton with FilledButton on amber/white CTAs"
```

---

## Task 7: ElevatedButton → FilledButton (settings + core)

**Files:** `manage_categories_screen.dart`, `premium_gate.dart`

- [ ] **Step 1: manage_categories_screen.dart — error dialog delete button**

```dart
// Before
ElevatedButton(
  onPressed: () => Navigator.pop(ctx, true),
  style: ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.error,
    foregroundColor: theme.colorScheme.onError,
  ),
  child: Text(l10n.deleteCategory),
),

// After
FilledButton(
  onPressed: () => Navigator.pop(ctx, true),
  style: FilledButton.styleFrom(
    backgroundColor: theme.colorScheme.error,
    foregroundColor: theme.colorScheme.onError,
  ),
  child: Text(l10n.deleteCategory),
),
```

- [ ] **Step 2: premium_gate.dart — upgrade CTA**

```dart
// Before
ElevatedButton(
  onPressed: () => _openPaywall(context),
  style: ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    foregroundColor: theme.colorScheme.onPrimary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(RadiusTokens.full),
    ),
    elevation: 3,
  ),
  child: Text(
    l10n.upgrade,
    style: const TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 16,
    ),
  ),
),

// After
FilledButton(
  onPressed: () => _openPaywall(context),
  style: FilledButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(RadiusTokens.full),
    ),
    elevation: 3,
  ),
  child: Text(
    l10n.upgrade,
    style: const TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 16,
    ),
  ),
),
```

Note: `backgroundColor` and `foregroundColor` removed because `FilledButton` uses `colorScheme.primary`/`colorScheme.onPrimary` by default.

- [ ] **Step 3: Verify**

```bash
flutter analyze --fatal-infos
```

- [ ] **Step 4: Commit**

```bash
git add lib/app/settings/screens/manage_categories_screen.dart \
        lib/core/widgets/premium_gate.dart
git commit -m "fix(settings,core): replace ElevatedButton with FilledButton"
```

---

## Task 8: Fix Colors.grey in quick_add_bar.dart

**File:** `lib/app/lists/widgets/quick_add_bar.dart`

Light mode `fillColor` uses `Colors.grey.withAlpha(0.1 * 255)` instead of colorScheme token.

- [ ] **Step 1: Replace fillColor**

Find the `TextField` inside `fieldViewBuilder` (around line 196):
```dart
// Before
fillColor: isDark ? theme.colorScheme.surfaceContainerHigh : Colors.grey.withAlpha((0.1 * 255).toInt()),

// After
fillColor: isDark
    ? theme.colorScheme.surfaceContainerHigh
    : theme.colorScheme.surfaceContainerHighest.withAlpha(77),
```

- [ ] **Step 2: Verify**

```bash
flutter analyze --fatal-infos
```

- [ ] **Step 3: Commit**

```bash
git add lib/app/lists/widgets/quick_add_bar.dart
git commit -m "fix(lists): replace Colors.grey with colorScheme.surfaceContainerHighest in quick_add_bar"
```

---

## Final Verification

After all tasks complete:

- [ ] **Full analyze**

```bash
flutter analyze --fatal-infos
```

Expected: 0 errors, 0 warnings introduced by these changes.

- [ ] **Build check**

```bash
flutter build appbundle --no-tree-shake-icons --dart-define=REVENUECAT_API_KEY=goog_lUoZUpDVyhVroFRzwgArMnFxIQv 2>&1 | tail -20
```

Expected: successful AAB build.
