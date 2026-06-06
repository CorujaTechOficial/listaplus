# Paywall Redesign — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Redesign `PaywallScreen` to ultra-minimal layout — Kipi hero → 3 benefit rows → plan cards (no radio buttons) → sticky CTA — removing Before/After, feature grid, and testimonials sections.

**Architecture:** All changes are confined to one screen file (`paywall_screen.dart`) plus the two primary ARB files (`app_en.arb`, `app_pt_BR.arb`). Business logic (purchase, restore, analytics) is untouched. Five methods are removed, two are renamed/refactored, two new helpers added.

**Tech Stack:** Flutter, Riverpod, RevenueCat (`purchases_flutter`), `flutter gen-l10n` for ARB → Dart codegen.

**Spec:** `docs/superpowers/specs/2026-06-06-paywall-redesign-design.md`

---

## File Map

| File | Change |
|---|---|
| `lib/l10n/app_en.arb` | Add 7 new keys, update 3 existing keys |
| `lib/l10n/app_pt_BR.arb` | Add 7 new keys, update 3 existing keys |
| `lib/app/settings/screens/paywall_screen.dart` | Refactor UI — remove 5 methods, rename 2, add 2 new helpers |

> ⚠️ `paywall_screen.dart` is wrapped in `// coverage:ignore-start` — no widget tests exist or are expected. Verification is done via `flutter analyze` and manual visual check.

---

## Task 1 — ARB strings: add new keys + update existing

**Files:**
- Modify: `lib/l10n/app_en.arb`
- Modify: `lib/l10n/app_pt_BR.arb`

### app_en.arb

- [ ] **Step 1.1 — Update `paywallSocialProof`, `paywallCtaUnlock`, `paywallSafeCheckout` in app_en.arb**

Find and replace each value in `lib/l10n/app_en.arb`:

```
OLD: "paywallSocialProof": "Join thousands of smart shoppers saving time and money",
NEW: "paywallSocialProof": "+2,400 families use it",

OLD: "paywallCtaUnlock": "Unlock KipiList PRO",
NEW: "paywallCtaUnlock": "Unlock PRO",

OLD: "paywallSafeCheckout": "Secure payment via App Store/Play Store",
NEW: "paywallSafeCheckout": "Secure payment",
```

- [ ] **Step 1.2 — Add new keys after `"paywallRestore": "Restore",` in app_en.arb**

Insert the following block immediately after `"paywallRestore": "Restore",`:

```json
  "paywallHeroHeadline": "Kipi AI always by your side",
  "paywallHeroSubtitle": "Add items, organize lists and save time with AI in your pocket",
  "paywallBenefit1Desc": "Adds, organizes and suggests items 24/7",
  "paywallBenefit2Desc": "No 3-list limit",
  "paywallBenefit3Desc": "Expense tracking and family lists",
  "paywallPackageMonthlyDesc": "Full flexibility",
  "paywallCtaTrialDays": "Start free — {days} days",
  "@paywallCtaTrialDays": {
    "placeholders": {
      "days": {
        "type": "int"
      }
    }
  },
```

### app_pt_BR.arb

- [ ] **Step 1.3 — Update `paywallSocialProof`, `paywallCtaUnlock`, `paywallSafeCheckout` in app_pt_BR.arb**

Find and replace each value in `lib/l10n/app_pt_BR.arb`:

```
OLD: "paywallSocialProof": "Junte-se a milhares de usuários economizando tempo e dinheiro",
NEW: "paywallSocialProof": "+2.400 famílias usam",

OLD: "paywallCtaUnlock": "Desbloquear KipiList PRO",
NEW: "paywallCtaUnlock": "Desbloquear PRO",

OLD: "paywallSafeCheckout": "Pagamento seguro via App Store/Play Store",
NEW: "paywallSafeCheckout": "Pagamento seguro",
```

- [ ] **Step 1.4 — Add new keys after `"paywallRestore": "Restaurar",` in app_pt_BR.arb**

Insert the following block immediately after `"paywallRestore": "Restaurar",`:

```json
  "paywallHeroHeadline": "Kipi IA sempre do seu lado",
  "paywallHeroSubtitle": "Adicione itens, organize listas e economize tempo com IA no bolso",
  "paywallBenefit1Desc": "Adiciona, organiza e sugere itens 24h",
  "paywallBenefit2Desc": "Sem o limite de 3 listas",
  "paywallBenefit3Desc": "Controle de gastos e listas em família",
  "paywallPackageMonthlyDesc": "Flexibilidade total",
  "paywallCtaTrialDays": "Começar grátis — {days} dias",
  "@paywallCtaTrialDays": {
    "placeholders": {
      "days": {
        "type": "int"
      }
    }
  },
```

- [ ] **Step 1.5 — Run `flutter gen-l10n`**

```bash
flutter gen-l10n
```

Expected: completes with no errors. Generates updated `lib/generated/l10n/app_localizations.dart` (and per-locale delegates).

- [ ] **Step 1.6 — Commit**

```bash
git add lib/l10n/app_en.arb lib/l10n/app_pt_BR.arb
git commit -m "feat(i18n): add paywall redesign strings and update social proof copy"
```

---

## Task 2 — Replace `_buildHeader` with `_buildHero`

**Files:**
- Modify: `lib/app/settings/screens/paywall_screen.dart`

- [ ] **Step 2.1 — Replace the entire `_buildHeader` method with `_buildHero`**

Remove the existing `_buildHeader` method (lines ~163–236) and replace with:

```dart
Widget _buildHero(ThemeData theme, AppLocalizations l10n) {
  final trialLabel = _trialLabel(l10n);
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          theme.colorScheme.primary.withAlpha((0.9 * 255).toInt()),
          theme.colorScheme.tertiary.withAlpha((0.7 * 255).toInt()),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    padding: const EdgeInsets.fromLTRB(
      Spacing.xl, Spacing.xl, Spacing.xl, Spacing.lg,
    ),
    child: Column(
      children: [
        Image.asset(
          'assets/images/kipi/kipi_welcome.png',
          height: 100,
          filterQuality: FilterQuality.high,
        ),
        if (trialLabel.isNotEmpty) ...[
          const SizedBox(height: Spacing.sm),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.sm, vertical: Spacing.xxs,
            ),
            decoration: BoxDecoration(
              color: AppColors.premiumAmber,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              trialLabel,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 12,
                color: Colors.black,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
        const SizedBox(height: Spacing.sm),
        Text(
          l10n.paywallHeroHeadline,
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w900,
            color: Colors.white,
            height: 1.2,
          ),
        ),
        const SizedBox(height: Spacing.xs),
        Text(
          l10n.paywallHeroSubtitle,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall?.copyWith(
            color: Colors.white.withAlpha((0.85 * 255).toInt()),
            height: 1.45,
          ),
        ),
        const SizedBox(height: Spacing.sm),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.sm, vertical: Spacing.xxs,
          ),
          decoration: BoxDecoration(
            color: Colors.white.withAlpha((0.15 * 255).toInt()),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('⭐⭐⭐⭐⭐', style: TextStyle(fontSize: 10)),
              const SizedBox(width: 5),
              Text(
                l10n.paywallSocialProof,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: Colors.white.withAlpha((0.9 * 255).toInt()),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
```

- [ ] **Step 2.2 — Run `flutter analyze`**

```bash
flutter analyze --fatal-infos
```

Expected: no errors or warnings. If `_buildHeader` is still referenced somewhere, the analyzer will point to the exact line.

- [ ] **Step 2.3 — Commit**

```bash
git add lib/app/settings/screens/paywall_screen.dart
git commit -m "feat(paywall): replace header with Kipi Welcome hero"
```

---

## Task 3 — Replace feature/before-after/testimonial sections with `_buildBenefits`

**Files:**
- Modify: `lib/app/settings/screens/paywall_screen.dart`

- [ ] **Step 3.1 — Delete the five obsolete methods**

Remove the following methods entirely from the file:
- `_buildFeaturesList` (lines ~238–295)
- `_buildBeforeAfter` (lines ~297–349)
- `_comparisonCard` (lines ~351–421)
- `_buildTestimonials` (lines ~423–449)
- `_testimonialCard` (lines ~452–499)

- [ ] **Step 3.2 — Add `_buildBenefits` and `_buildBenefitRow` after `_buildHero`**

```dart
Widget _buildBenefits(ThemeData theme, AppLocalizations l10n) {
  final benefits = [
    (Icons.auto_awesome, l10n.paywallFeatureSmartAI, l10n.paywallBenefit1Desc),
    (Icons.all_inclusive, l10n.paywallFeatureUnlimitedLists, l10n.paywallBenefit2Desc),
    (Icons.bar_chart, l10n.paywallFeatureExpenseControl, l10n.paywallBenefit3Desc),
  ];

  return ColoredBox(
    color: theme.colorScheme.surface,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.lg, vertical: Spacing.xs),
      child: Column(
        children: [
          for (int i = 0; i < benefits.length; i++) ...[
            _buildBenefitRow(theme, benefits[i].$1, benefits[i].$2, benefits[i].$3),
            if (i < benefits.length - 1)
              Divider(
                color: theme.colorScheme.outlineVariant.withAlpha(80),
                height: 1,
              ),
          ],
        ],
      ),
    ),
  );
}

Widget _buildBenefitRow(
  ThemeData theme,
  IconData icon,
  String title,
  String subtitle,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: Spacing.sm),
    child: Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(9),
          ),
          child: Icon(icon, color: theme.colorScheme.primary, size: 18),
        ),
        const SizedBox(width: Spacing.sm),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                subtitle,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
```

- [ ] **Step 3.3 — Run `flutter analyze`**

```bash
flutter analyze --fatal-infos
```

Expected: no errors. If any of the removed methods are still referenced in `_buildBody`, the analyzer will flag them.

- [ ] **Step 3.4 — Commit**

```bash
git add lib/app/settings/screens/paywall_screen.dart
git commit -m "feat(paywall): replace feature/before-after/testimonials with 3-row benefits"
```

---

## Task 4 — Replace `_buildPackagesList` with card-based `_buildPlans`

**Files:**
- Modify: `lib/app/settings/screens/paywall_screen.dart`

- [ ] **Step 4.1 — Remove `_buildPackagesList` and add `_buildPlans`**

Remove the entire `_buildPackagesList` method and replace with:

```dart
Widget _buildPlans(ThemeData theme, AppLocalizations l10n) {
  if (_packages.isEmpty) {
    return const SizedBox.shrink();
  }

  final monthlyPkg = _packages.cast<PaywallPackage?>().firstWhere(
    (p) => p?.rawPackage?.packageType == PackageType.monthly,
    orElse: () => _packages.first,
  );

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
    child: Column(
      children: [
        Text(
          l10n.paywallSelectPlan,
          style: theme.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.w700,
            color: theme.colorScheme.onSurfaceVariant,
            letterSpacing: 0.8,
          ),
        ),
        const SizedBox(height: Spacing.sm),
        ..._packages.map((pkg) {
          final isSelected = _selectedPackage?.identifier == pkg.identifier;
          final isAnnual = pkg.rawPackage?.packageType == PackageType.annual;
          final isMonthly = pkg.rawPackage?.packageType == PackageType.monthly;

          String badgeText = '';
          if (isAnnual &&
              monthlyPkg != null &&
              monthlyPkg.identifier != pkg.identifier) {
            final yearlyCostMonthly = monthlyPkg.price * 12;
            final savings =
                ((yearlyCostMonthly - pkg.price) / yearlyCostMonthly * 100)
                    .round();
            badgeText =
                '${l10n.paywallBestValue} · ${l10n.paywallSavePercent(savings)}';
          }

          return Padding(
            padding: const EdgeInsets.only(bottom: Spacing.sm),
            child: InkWell(
              onTap: () => setState(() => _selectedPackage = pkg),
              borderRadius: BorderRadius.circular(16),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected
                        ? theme.colorScheme.primary
                        : theme.colorScheme.outlineVariant,
                    width: isSelected ? 2.5 : 1.5,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  color: isAnnual
                      ? (isSelected
                          ? theme.colorScheme.primaryContainer.withAlpha(100)
                          : theme.colorScheme.primaryContainer.withAlpha(30))
                      : (isSelected
                          ? theme.colorScheme.surfaceContainerHighest
                          : theme.colorScheme.surface),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Spacing.sm),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _mapPackageName(pkg, l10n),
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: isSelected
                                        ? theme.colorScheme.primary
                                        : theme.colorScheme.onSurface,
                                  ),
                                ),
                                if (isAnnual &&
                                    monthlyPkg != null &&
                                    monthlyPkg.identifier != pkg.identifier)
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
                                      fontWeight: isSelected
                                          ? FontWeight.w600
                                          : null,
                                    ),
                                  )
                                else if (isMonthly)
                                  Text(
                                    l10n.paywallPackageMonthlyDesc,
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: theme.colorScheme.onSurfaceVariant,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Text(
                            pkg.priceString,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w900,
                              color: isSelected
                                  ? theme.colorScheme.primary
                                  : theme.colorScheme.onSurface,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (badgeText.isNotEmpty)
                      Positioned(
                        top: -10,
                        right: 16,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Spacing.xs,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.premiumAmber,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withAlpha(40),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Text(
                            badgeText,
                            style: const TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        }),
      ],
    ),
  );
}
```

- [ ] **Step 4.2 — Run `flutter analyze`**

```bash
flutter analyze --fatal-infos
```

Expected: no errors.

- [ ] **Step 4.3 — Commit**

```bash
git add lib/app/settings/screens/paywall_screen.dart
git commit -m "feat(paywall): replace package list radio buttons with tappable plan cards"
```

---

## Task 5 — Wire up `_buildBody`, update `_ctaText`, absorb footer into sticky CTA, remove dead code

**Files:**
- Modify: `lib/app/settings/screens/paywall_screen.dart`

- [ ] **Step 5.1 — Replace `_ctaText`**

Replace the entire `_ctaText` method with:

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

- [ ] **Step 5.2 — Replace `_buildStickyCta` (absorb footer links, update microcopy)**

Replace the entire `_buildStickyCta` method with:

```dart
Widget _buildStickyCta(ThemeData theme, AppLocalizations l10n) {
  if (_isLoading || _errorMessage != null || _packages.isEmpty) {
    return const SizedBox.shrink();
  }
  return Container(
    padding: EdgeInsets.fromLTRB(
      Spacing.lg,
      Spacing.sm,
      Spacing.lg,
      MediaQuery.of(context).padding.bottom + Spacing.sm,
    ),
    decoration: BoxDecoration(
      color: theme.colorScheme.surface,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withAlpha((0.08 * 255).toInt()),
          blurRadius: 10,
          offset: const Offset(0, -4),
        ),
      ],
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          height: 54,
          child: ElevatedButton(
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
        ),
        const SizedBox(height: Spacing.xs),
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
        const SizedBox(height: Spacing.xxs),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => launchUrl(
                Uri.parse('https://kipilist-6547b.web.app/privacidade.html'),
                mode: LaunchMode.externalApplication,
              ),
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: const EdgeInsets.symmetric(
                  horizontal: Spacing.xs,
                  vertical: 2,
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                l10n.paywallPolicy,
                style: TextStyle(
                  fontSize: 10,
                  color: theme.colorScheme.onSurfaceVariant
                      .withAlpha((0.7 * 255).toInt()),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Text(
              '·',
              style: TextStyle(
                fontSize: 10,
                color: theme.colorScheme.outline,
              ),
            ),
            TextButton(
              onPressed: () => launchUrl(
                Uri.parse('https://kipilist-6547b.web.app/termos.html'),
                mode: LaunchMode.externalApplication,
              ),
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: const EdgeInsets.symmetric(
                  horizontal: Spacing.xs,
                  vertical: 2,
                ),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                l10n.paywallTerms,
                style: TextStyle(
                  fontSize: 10,
                  color: theme.colorScheme.onSurfaceVariant
                      .withAlpha((0.7 * 255).toInt()),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
```

- [ ] **Step 5.3 — Remove `_buildFooterLinks`**

Delete the entire `_buildFooterLinks` method (it is now inlined into `_buildStickyCta`).

- [ ] **Step 5.4 — Replace `_buildBody` with the new layout order**

Replace the entire `_buildBody` method with:

```dart
Widget _buildBody(ThemeData theme, AppLocalizations l10n) {
  return Stack(
    children: [
      SingleChildScrollView(
        child: Column(
          children: [
            if (widget.asSheet) ...[
              Padding(
                padding: const EdgeInsets.only(top: Spacing.sm),
                child: Container(
                  width: 32,
                  height: 4,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onSurfaceVariant
                        .withAlpha((0.3 * 255).toInt()),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: Spacing.lg),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox.shrink(),
                    TextButton(
                      onPressed: _restore,
                      child: Text(
                        l10n.paywallRestore,
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            _buildHero(theme, l10n),
            _buildBenefits(theme, l10n),
            const SizedBox(height: Spacing.sm),
            if (_isLoading)
              const Padding(
                padding: EdgeInsets.all(Spacing.lg),
                child: CircularProgressIndicator.adaptive(),
              )
            else if (_errorMessage != null)
              Padding(
                padding: const EdgeInsets.all(Spacing.lg),
                child: Column(
                  children: [
                    Text(
                      _errorMessage!,
                      style: const TextStyle(color: Colors.red),
                    ),
                    const SizedBox(height: Spacing.sm),
                    ElevatedButton(
                      onPressed: _loadPackages,
                      child: Text(l10n.retry),
                    ),
                  ],
                ),
              )
            else
              _buildPlans(theme, l10n),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom + 140,
            ),
          ],
        ),
      ),
      Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: _buildStickyCta(theme, l10n),
      ),
      if (_isPurchasing)
        Container(
          color: Colors.black54,
          child: const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        ),
    ],
  );
}
```

- [ ] **Step 5.5 — Run `flutter analyze`**

```bash
flutter analyze --fatal-infos
```

Expected: no errors, no warnings. The file should have zero references to `_buildHeader`, `_buildBeforeAfter`, `_comparisonCard`, `_buildFeaturesList`, `_buildTestimonials`, `_testimonialCard`, `_buildFooterLinks`, or `_buildPackagesList`.

- [ ] **Step 5.6 — Final commit**

```bash
git add lib/app/settings/screens/paywall_screen.dart
git commit -m "feat(paywall): wire up new layout, update CTA text, absorb footer links into sticky bar"
```

---

## Post-Implementation Checklist

- [ ] Run `flutter analyze --fatal-infos` one final time — zero issues
- [ ] Hot-reload the app and open the paywall from Settings
- [ ] Verify: hero shows `kipi_welcome.png`, amber trial badge appears if trial active, social proof pill visible
- [ ] Verify: 3 benefit rows visible, separated by dividers, IA listed first
- [ ] Verify: Annual plan card selected by default, badge shows correct % OFF, tapping Monthly switches selection without radio buttons
- [ ] Verify: CTA button always visible at bottom, text says trial days if trial active
- [ ] Verify: Privacy Policy and Terms links open browser correctly
- [ ] Verify: Restore purchase flow works unchanged
- [ ] Verify: Sheet mode (`asSheet: true`) shows drag handle + Restaurar button correctly
