# Paywall CRO Improvements — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Apply 5 high-impact CRO improvements to the paywall (PaywallScreen + PremiumGate) to maximize subscription conversions, without touching purchase logic or analytics.

**Architecture:** Changes are confined to 5 files. No new providers, no new packages, no build_runner runs needed. Only `flutter gen-l10n` after Task 1. Business logic (purchase, restore, RevenueCat) is untouched.

**Tech Stack:** Flutter, Riverpod, `purchases_flutter` (RevenueCat), `flutter gen-l10n` for ARB → Dart.

---

## Background (read before starting)

The current `PaywallScreen` (`lib/app/settings/screens/paywall_screen.dart`) was recently redesigned and works. The following issues were identified via CRO audit:

1. **Benefits section shows 3/9 features** — `PremiumFeature` enum has 9 values but `_buildBenefits()` hardcodes only 3 rows. Users don't see the full value.
2. **"BEST VALUE" badge** — the annual plan badge reads "BEST VALUE · SAVE X%". "MOST POPULAR" activates social bias and converts better. The l10n string `paywallMostPopular` = "MOST POPULAR" already exists.
3. **CTA copy ignores free trial** — `_ctaText()` returns `paywallCtaTrialDays(n)` when trial is available, but the existing `paywallTrialCta` = "Start Free Trial" is cleaner. Trust signals are also 10px (nearly invisible).
4. **PremiumGate uses `Navigator.push` to full-screen paywall** — a modal bottom sheet is less disruptive and converts better. The widget's visual is also generic (lock icon + tonal button).
5. **No trial note inside the plan card** — when the annual package has a free trial, only the hero badge shows this. The plan card itself doesn't reinforce the trial offer.

---

## File Map

| File | Change | Task |
|---|---|---|
| `lib/l10n/app_en.arb` | Add 2 new keys | Task 1 |
| `lib/l10n/app_pt.arb` | Add 2 new keys | Task 1 |
| `lib/app/settings/screens/paywall_screen.dart` | Replace `_buildBenefits` + `_buildBenefitRow`, update badge + CTA + trust signals | Tasks 2, 3, 4 |
| `lib/core/widgets/premium_gate.dart` | Redesign visual + use `showModalBottomSheet` | Task 5 |
| `lib/app/settings/screens/backup_screen.dart` | Update `onUpgrade` to use `showModalBottomSheet` | Task 5 |
| `lib/app/ai/screens/chat_screen.dart` | Update `onUpgrade` to use `showModalBottomSheet` | Task 5 |

> ⚠️ `paywall_screen.dart` and `premium_gate.dart` are wrapped in `// coverage:ignore-start` — no widget tests exist. Verification is `flutter analyze --fatal-infos` only.

---

## Task 1 — L10n: add 2 new keys to EN and PT

**Files:**
- Modify: `lib/l10n/app_en.arb`
- Modify: `lib/l10n/app_pt.arb`

**Purpose:** Add `paywallTrialInCard` (trial reminder inside annual plan card) and `paywallSecuredByStore` (replaces 10px trust signal text).

- [ ] **Step 1.1 — Add keys to `app_en.arb`**

Find the block starting with `"paywallBestValue"` in `lib/l10n/app_en.arb` and add the two new keys immediately after `"paywallCancelAnytime"`:

Locate this existing line (approximately line 398):
```
"paywallCancelAnytime": "Cancel anytime. No commitment.",
```

Insert directly after it:
```json
"paywallTrialInCard": "First {days} days FREE",
"@paywallTrialInCard": {
  "placeholders": {
    "days": { "type": "int" }
  }
},
"paywallSecuredByStore": "Secured by Google Play · Cancel anytime",
```

- [ ] **Step 1.2 — Add keys to `app_pt.arb`**

Locate the same `"paywallCancelAnytime"` entry in `lib/l10n/app_pt.arb` and insert directly after it:
```json
"paywallTrialInCard": "Primeiros {days} dias GRÁTIS",
"@paywallTrialInCard": {
  "placeholders": {
    "days": { "type": "int" }
  }
},
"paywallSecuredByStore": "Pagamento seguro · Cancele quando quiser",
```

- [ ] **Step 1.3 — Run l10n generator**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && flutter gen-l10n
```

Expected: no errors, `lib/generated/l10n/app_localizations.dart` updated with the two new methods `paywallTrialInCard(int days)` and `paywallSecuredByStore`.

- [ ] **Step 1.4 — Verify no analysis errors**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && flutter analyze --fatal-infos 2>&1 | tail -5
```

Expected: `No issues found!`

- [ ] **Step 1.5 — Commit**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && git add lib/l10n/app_en.arb lib/l10n/app_pt.arb lib/generated/ && git commit -m "feat(l10n): add paywallTrialInCard and paywallSecuredByStore strings"
```

---

## Task 2 — Benefits Grid: show all 9 PremiumFeature values

**Files:**
- Modify: `lib/app/settings/screens/paywall_screen.dart`

**Purpose:** Replace the 3-item hardcoded list with a compact 2-column grid that shows all 9 premium features. Each cell has an icon + localized label. No subtitles — compactness maximizes perceived value.

**Key context:**
- `PremiumFeature` is defined in `lib/domain/entities/premium_feature.dart`
- `PremiumFeature.values` returns all 9: `unlimitedLists, sharing, history, export, themes, monthlyBudget, assistant, pantry, interactiveArtifacts`
- `feature.icon` → `IconData` (already on the enum)
- `feature.localizedLabel(l10n)` → localized string (already on the enum, uses existing `pref*` l10n keys)
- The file currently imports from `lib/theme/colors.dart` and `lib/theme/tokens.dart`

- [ ] **Step 2.1 — Add PremiumFeature import to `paywall_screen.dart`**

Find the import block at the top of `lib/app/settings/screens/paywall_screen.dart`. Add after the existing imports:

```dart
import 'package:shopping_list/domain/entities/premium_feature.dart';
```

- [ ] **Step 2.2 — Replace `_buildBenefits()` and `_buildBenefitRow()` methods**

In `lib/app/settings/screens/paywall_screen.dart`, find the method `_buildBenefits(ThemeData theme, AppLocalizations l10n)` (starts around line 256) and its helper `_buildBenefitRow(...)` (starts around line 283). Replace BOTH methods entirely with:

```dart
Widget _buildBenefits(ThemeData theme, AppLocalizations l10n) {
  return ColoredBox(
    color: theme.colorScheme.surface,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.lg, vertical: Spacing.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.paywallFeaturesTitle,
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: theme.colorScheme.onSurfaceVariant,
              letterSpacing: 0.8,
            ),
          ),
          const SizedBox(height: Spacing.sm),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: Spacing.xs,
            crossAxisSpacing: Spacing.xs,
            childAspectRatio: 3.8,
            children: PremiumFeature.values
                .map((feature) => _buildBenefitCell(theme, feature, l10n))
                .toList(),
          ),
        ],
      ),
    ),
  );
}

Widget _buildBenefitCell(
  ThemeData theme,
  PremiumFeature feature,
  AppLocalizations l10n,
) {
  return Row(
    children: [
      Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: theme.colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(feature.icon, color: theme.colorScheme.primary, size: 15),
      ),
      const SizedBox(width: Spacing.xs),
      Expanded(
        child: Text(
          feature.localizedLabel(l10n),
          style: theme.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.w700,
            color: theme.colorScheme.onSurface,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}
```

- [ ] **Step 2.3 — Analyze**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && flutter analyze --fatal-infos 2>&1 | tail -5
```

Expected: `No issues found!`

- [ ] **Step 2.4 — Commit**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && git add lib/app/settings/screens/paywall_screen.dart && git commit -m "feat(paywall): replace 3-item benefits with 2-column grid of all 9 premium features"
```

---

## Task 3 — Plan Card: "MOST POPULAR" badge + trial note in card

**Files:**
- Modify: `lib/app/settings/screens/paywall_screen.dart`

**Purpose:**
1. Replace `paywallBestValue` with `paywallMostPopular` on the annual badge (the l10n string `paywallMostPopular` = "MOST POPULAR" already exists at line ~390 of `app_en.arb`).
2. Keep the savings percentage inline inside the card (currently only shown in the badge).
3. When the annual package has a free trial, add a small "First X days FREE" line inside the annual card (using the new `paywallTrialInCard(days)` from Task 1).

**Key context (current code in `_buildPlans()` around line 327):**
- `badgeText` is currently: `'${l10n.paywallBestValue} · ${l10n.paywallSavePercent(savings)}'`
- The annual card's subtitle shows `l10n.paywallPricePerMonth(...)` — the savings X% is only in the badge
- `pkg.hasFreeTrial` and `pkg.trialPeriodDays` are already available from `PaywallPackage`

- [ ] **Step 3.1 — Update badge text and add savings inline in annual card**

In `_buildPlans()`, find:
```dart
badgeText =
    '${l10n.paywallBestValue} · ${l10n.paywallSavePercent(savings)}';
```

Replace with:
```dart
badgeText =
    '${l10n.paywallMostPopular} · ${l10n.paywallSavePercent(savings)}';
```

- [ ] **Step 3.2 — Add trial note inside annual card**

In `_buildPlans()`, find the column inside the plan card that contains the package name and price-per-month text. It looks like:

```dart
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      _mapPackageName(pkg, l10n),
      ...
    ),
    if (isAnnual &&
        monthlyPkg != null &&
        monthlyPkg.identifier != pkg.identifier)
      Text(
        l10n.paywallPricePerMonth(...),
        ...
      )
    else if (isMonthly)
      Text(
        l10n.paywallPackageMonthlyDesc,
        ...
      ),
  ],
),
```

Replace the inner `if (isAnnual ...)` / `else if (isMonthly)` block with:

```dart
if (isAnnual &&
    monthlyPkg != null &&
    monthlyPkg.identifier != pkg.identifier) ...[
  Text(
    l10n.paywallPricePerMonth(
      formatCurrency(
        pkg.price / 12,
        pkg.currencyCode,
      ),
    ),
    style: theme.textTheme.bodySmall?.copyWith(
      color: isSelected
          ? theme.colorScheme.primary
          : theme.colorScheme.onSurfaceVariant,
      fontWeight: isSelected ? FontWeight.w600 : null,
    ),
  ),
  if (pkg.hasFreeTrial && pkg.trialPeriodDays != null)
    Text(
      l10n.paywallTrialInCard(pkg.trialPeriodDays!),
      style: theme.textTheme.labelSmall?.copyWith(
        color: AppColors.premiumAmber,
        fontWeight: FontWeight.w800,
        fontSize: 10,
      ),
    ),
] else if (isMonthly)
  Text(
    l10n.paywallPackageMonthlyDesc,
    style: theme.textTheme.bodySmall?.copyWith(
      color: theme.colorScheme.onSurfaceVariant,
    ),
  ),
```

- [ ] **Step 3.3 — Analyze**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && flutter analyze --fatal-infos 2>&1 | tail -5
```

Expected: `No issues found!`

- [ ] **Step 3.4 — Commit**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && git add lib/app/settings/screens/paywall_screen.dart && git commit -m "feat(paywall): MOST POPULAR badge + trial note inside annual plan card"
```

---

## Task 4 — CTA copy + Trust Signals

**Files:**
- Modify: `lib/app/settings/screens/paywall_screen.dart`

**Purpose:**
1. CTA button: when `_selectedPackage?.hasFreeTrial == true`, show `l10n.paywallTrialCta` ("Start Free Trial") instead of the awkward `paywallCtaTrialDays(n)`.
2. Trust signal row: increase font from 10px to 12px and use the new `paywallSecuredByStore` string (from Task 1) instead of the concatenated `paywallSafeCheckout · paywallCancelAnytime` text.

**Key context:**
- `_ctaText(AppLocalizations l10n)` method (around line 493) currently returns `l10n.paywallCtaTrialDays(pkg.trialPeriodDays!)` when trial is available
- `_buildStickyCta()` around line 504 contains the trust signal row with `fontSize: 10`
- `l10n.paywallTrialCta` = "Start Free Trial" (already in app_en.arb line ~356)

- [ ] **Step 4.1 — Fix `_ctaText()` to use "Start Free Trial" copy**

Find the `_ctaText(AppLocalizations l10n)` method:
```dart
String _ctaText(AppLocalizations l10n) {
  final pkg = _selectedPackage;
  if (pkg == null) {
    return l10n.paywallCtaUnlock;
  }
  if (pkg.hasFreeTrial && pkg.trialPeriodDays != null) {
    return l10n.paywallCtaTrialDays(pkg.trialPeriodDays!);
  }
  return l10n.paywallCtaUnlock;
}
```

Replace with:
```dart
String _ctaText(AppLocalizations l10n) {
  final pkg = _selectedPackage;
  if (pkg == null) {
    return l10n.paywallCtaUnlock;
  }
  if (pkg.hasFreeTrial) {
    return l10n.paywallTrialCta;
  }
  return l10n.paywallCtaUnlock;
}
```

- [ ] **Step 4.2 — Fix trust signal font size and copy**

In `_buildStickyCta()`, find the `Row` that contains the lock icon and trust signal text:

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.lock_outline, size: 11, color: theme.colorScheme.outline),
    const SizedBox(width: 4),
    Text(
      '${l10n.paywallSafeCheckout} · ${l10n.paywallCancelAnytime}',
      style: theme.textTheme.labelSmall?.copyWith(
        fontSize: 10,
        color: theme.colorScheme.onSurfaceVariant
            .withAlpha((0.7 * 255).toInt()),
      ),
    ),
  ],
),
```

Replace with:
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.lock_outline, size: 13, color: theme.colorScheme.outline),
    const SizedBox(width: 4),
    Text(
      l10n.paywallSecuredByStore,
      style: theme.textTheme.labelSmall?.copyWith(
        fontSize: 12,
        color: theme.colorScheme.onSurfaceVariant
            .withAlpha((0.7 * 255).toInt()),
      ),
    ),
  ],
),
```

- [ ] **Step 4.3 — Analyze**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && flutter analyze --fatal-infos 2>&1 | tail -5
```

Expected: `No issues found!`

- [ ] **Step 4.4 — Commit**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && git add lib/app/settings/screens/paywall_screen.dart && git commit -m "feat(paywall): Start Free Trial CTA + 12px trust signal with secured by store text"
```

---

## Task 5 — PremiumGate redesign + modal bottom sheet

**Files:**
- Modify: `lib/core/widgets/premium_gate.dart`
- Modify: `lib/app/settings/screens/backup_screen.dart`
- Modify: `lib/app/ai/screens/chat_screen.dart`

**Purpose:** The `PremiumGate` (shown when a free user tries a locked feature) is the highest-intent moment — the user has already decided to try a premium feature. Current design: generic lock icon + tonal button. Improvements:
1. Make the full area tappable (not just the button).
2. Open the paywall as a `showModalBottomSheet` instead of a full `Navigator.push` — less disruptive, higher intent.
3. Better visual: amber "PRO" chip instead of generic lock icon, bolder CTA button.

**Key context:**
- `PremiumGate` is a `StatelessWidget` with props `title`, `description`, `onUpgrade`
- Used in `backup_screen.dart` (with analytics tracking before opening paywall) and `chat_screen.dart`
- `PaywallScreen(asSheet: true)` already works as a draggable bottom sheet
- The `asSheet` mode shows drag handle + close/restore row at top
- `flutter_animate` is already imported in `premium_gate.dart`

- [ ] **Step 5.1 — Rewrite `premium_gate.dart`**

Replace the entire content of `lib/core/widgets/premium_gate.dart` with:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';

class PremiumGate extends StatelessWidget {
  const PremiumGate({
    super.key,
    required this.title,
    required this.description,
    this.onUpgrade,
  });

  final String title;
  final String description;
  final VoidCallback? onUpgrade;

  void _openPaywall(BuildContext context) {
    if (onUpgrade != null) {
      onUpgrade!();
    }
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) => const PaywallScreen(asSheet: true),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => _openPaywall(context),
          behavior: HitTestBehavior.opaque,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(Spacing.xl),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      color: AppColors.premiumAmber.withAlpha(20),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.workspace_premium,
                      size: 36,
                      color: AppColors.premiumAmber,
                    ),
                  ).animate().scale(
                        begin: const Offset(0.7, 0.7),
                        end: const Offset(1.0, 1.0),
                        duration: DurationTokens.fast,
                        curve: Curves.easeOutBack,
                      ),
                  const SizedBox(height: Spacing.md),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Spacing.sm,
                      vertical: Spacing.xxs,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.premiumAmber,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'PRO',
                      style: theme.textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        letterSpacing: 1,
                        fontSize: 10,
                      ),
                    ),
                  ).animate().fadeIn(
                        duration: DurationTokens.fast,
                        delay: const Duration(milliseconds: 150),
                      ),
                  const SizedBox(height: Spacing.sm),
                  Text(
                    description,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ).animate().fadeIn(
                        duration: DurationTokens.fast,
                        delay: const Duration(milliseconds: 200),
                      ).slideY(
                        begin: 0.2,
                        end: 0,
                        duration: DurationTokens.fast,
                        delay: const Duration(milliseconds: 200),
                        curve: Curves.easeOut,
                      ),
                  const SizedBox(height: Spacing.xs),
                  Text(
                    l10n.premiumUpgrade,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  ).animate().fadeIn(
                        duration: DurationTokens.fast,
                        delay: const Duration(milliseconds: 300),
                      ),
                  const SizedBox(height: Spacing.lg),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () => _openPaywall(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                        foregroundColor: theme.colorScheme.onPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
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
                  ).animate().fadeIn(
                        duration: DurationTokens.fast,
                        delay: const Duration(milliseconds: 400),
                      ).scale(
                        begin: const Offset(0.9, 0.9),
                        end: const Offset(1, 1),
                        duration: DurationTokens.fast,
                        delay: const Duration(milliseconds: 400),
                        curve: Curves.easeOutBack,
                      ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

> Note: `onUpgrade` is now `VoidCallback?` (was `required VoidCallback`). Call sites that pass `onUpgrade` still work — the callback fires before the bottom sheet opens (for analytics). Call sites that don't pass it also work.

- [ ] **Step 5.2 — Update `backup_screen.dart` call site**

In `lib/app/settings/screens/backup_screen.dart`, find:
```dart
return PremiumGate(
  title: l10n.backupTitle,
  description: l10n.backupPremiumDescription,
  onUpgrade: () {
    ref.read(analyticsServiceProvider).logUpgradeTapped('backup');
    if (!context.mounted) {
      return;
    }
    Navigator.push(
      context,
      fadeSlideRoute<void>(const PaywallScreen()),
    );
  },
);
```

Replace with:
```dart
return PremiumGate(
  title: l10n.backupTitle,
  description: l10n.backupPremiumDescription,
  onUpgrade: () =>
      ref.read(analyticsServiceProvider).logUpgradeTapped('backup'),
);
```

> The paywall navigation is now handled inside `PremiumGate._openPaywall()`. The analytics callback still fires first.

- [ ] **Step 5.3 — Update `chat_screen.dart` call site**

In `lib/app/ai/screens/chat_screen.dart`, find:
```dart
return PremiumGate(
  title: l10n.aiAssistant,
  description: l10n.aiAssistantDescription,
  onUpgrade: () => Navigator.push(
    context,
    fadeSlideRoute<void>(const PaywallScreen()),
  ),
);
```

Replace with:
```dart
return PremiumGate(
  title: l10n.aiAssistant,
  description: l10n.aiAssistantDescription,
);
```

> No analytics tracking on this call site — `onUpgrade` can be omitted.

- [ ] **Step 5.4 — Check for unused imports in `backup_screen.dart` and `chat_screen.dart`**

After removing the `Navigator.push(... PaywallScreen())` call from each file, check if the `PaywallScreen` and `fadeSlideRoute` imports are still used elsewhere in each file. If not, remove those import lines.

In `backup_screen.dart`:
```bash
grep -n "PaywallScreen\|fadeSlideRoute" "/Users/absondutragalvao/corujatech projetos/shopping_list/lib/app/settings/screens/backup_screen.dart"
```

In `chat_screen.dart`:
```bash
grep -n "PaywallScreen\|fadeSlideRoute" "/Users/absondutragalvao/corujatech projetos/shopping_list/lib/app/ai/screens/chat_screen.dart"
```

Remove any import lines for symbols that no longer appear in the file.

- [ ] **Step 5.5 — Analyze**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && flutter analyze --fatal-infos 2>&1 | tail -5
```

Expected: `No issues found!`

- [ ] **Step 5.6 — Commit**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && git add lib/core/widgets/premium_gate.dart lib/app/settings/screens/backup_screen.dart lib/app/ai/screens/chat_screen.dart && git commit -m "feat(premium-gate): amber PRO icon, full-area tap, opens paywall as modal bottom sheet"
```

---

## Post-Implementation Checklist

- [ ] Run `flutter analyze --fatal-infos` — must pass clean
- [ ] Open the app and navigate to Settings → Premium to see the paywall full-screen
- [ ] Open a list and trigger the PremiumGate (e.g., go to Backup if free user)
- [ ] Verify PremiumGate opens paywall as bottom sheet (not full-screen navigation)
- [ ] Verify the benefits grid shows all 9 features in 2 columns
- [ ] Verify the annual plan badge reads "MOST POPULAR · SAVE X%"
- [ ] If the annual package has a free trial: verify "Start Free Trial" CTA and trial note inside card
- [ ] If no trial: verify "Unlock PRO" CTA still shows
- [ ] Verify trust signal text is 12px and reads the new string
