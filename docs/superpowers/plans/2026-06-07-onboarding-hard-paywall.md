# Onboarding Hard Paywall — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Substituir o slide premium fraco do onboarding por um paywall de alta conversão com hero gradient, feature grid, plan cards com badge dinâmico, CTA trial-aware, personalização por nome e skip discreto.

**Architecture:** `OnboardingSlidePremium` é reescrito para ter a mesma estrutura do `PaywallScreen` (hero + benefits grid + plan cards + sticky CTA). O `OnboardingSlideShare` é removido do fluxo. Dois novos strings ARB são adicionados para personalização.

**Tech Stack:** Flutter, Riverpod 3.x (codegen), RevenueCat (`purchases_flutter`), `AppLocalizations`, `AppColors.premiumAmber`, `PremiumFeature` enum, `onboardingDataProvider`

---

## Arquivos Modificados

| Arquivo | Ação |
|---|---|
| `lib/l10n/app_en.arb` | Adicionar 2 strings: `onboardingMaybeLater`, `paywallHeroSubtitlePersonalized` |
| `lib/app/onboarding/screens/onboarding_slide_premium.dart` | Reescrever completamente |
| `lib/app/onboarding/screens/onboarding_screen.dart` | Remover `OnboardingSlideShare` do PageView |

Após editar o ARB, rodar `flutter gen-l10n` (gera `lib/generated/l10n/app_localizations*.dart` — não editar manualmente).

---

## Task 1: Adicionar strings ARB

**Files:**
- Modify: `lib/l10n/app_en.arb`

- [ ] **1.1** Abrir `lib/l10n/app_en.arb`. Localizar a linha com `"onboardingMaybeLater"` — se não existir, adicionar **após** a linha `"onboardingRestoreDesc"`:

```json
"onboardingMaybeLater": "Maybe later",
"@onboardingMaybeLater": { "description": "Discrete skip link at the bottom of the onboarding paywall" },
"paywallHeroSubtitlePersonalized": "Hey {name}, organize your shopping the right way.",
"@paywallHeroSubtitlePersonalized": {
  "description": "Paywall hero subtitle with user's name from AI chat",
  "placeholders": {
    "name": { "type": "String" }
  }
}
```

- [ ] **1.2** Rodar geração de localização:

```bash
flutter gen-l10n
```

Esperado: sem erros. Os arquivos `lib/generated/l10n/app_localizations*.dart` são regenerados.

- [ ] **1.3** Verificar que os novos métodos existem no arquivo gerado:

```bash
grep -n "onboardingMaybeLater\|paywallHeroSubtitlePersonalized" lib/generated/l10n/app_localizations_en.dart
```

Esperado: 2 linhas encontradas.

- [ ] **1.4** Commit:

```bash
git add lib/l10n/app_en.arb lib/generated/l10n/
git commit -m "feat(l10n): add onboardingMaybeLater and paywallHeroSubtitlePersonalized strings"
```

---

## Task 2: Remover OnboardingSlideShare do fluxo

**Files:**
- Modify: `lib/app/onboarding/screens/onboarding_screen.dart`

- [ ] **2.1** Abrir `lib/app/onboarding/screens/onboarding_screen.dart`.

Remover o import do Share slide (linha ~5):
```dart
// REMOVER esta linha:
import 'package:shopping_list/app/onboarding/screens/onboarding_slide_share.dart';
```

- [ ] **2.2** Corrigir `_slideCount` — atualmente retorna `4 : 3`, deve retornar `3 : 2` (AI chat conta como etapa separada, não como slide do PageView):

Localizar (linha ~59):
```dart
int get _slideCount =>
    _showAiChat ? 4 : 3; // Login → Share → Premium (after AI chat)
```

Substituir por:
```dart
int get _slideCount =>
    _showAiChat ? 3 : 2; // Login → Premium (after AI chat)
```

- [ ] **2.3** Remover `const OnboardingSlideShare()` do `PageView.children` (linha ~83):

Localizar o bloco:
```dart
children: [
  OnboardingSlideWelcomeLogin(
    onLoggedIn: _goToNext,
    onSkipped: _goToNext,
  ),
  const OnboardingSlideShare(),
  const OnboardingSlidePremium(),
],
```

Substituir por:
```dart
children: [
  OnboardingSlideWelcomeLogin(
    onLoggedIn: _goToNext,
    onSkipped: _goToNext,
  ),
  const OnboardingSlidePremium(),
],
```

- [ ] **2.4** Rodar análise para confirmar sem erros:

```bash
flutter analyze lib/app/onboarding/screens/onboarding_screen.dart
```

Esperado: `No issues found!`

- [ ] **2.5** Commit:

```bash
git add lib/app/onboarding/screens/onboarding_screen.dart
git commit -m "feat(onboarding): remove share slide, go directly to premium paywall"
```

---

## Task 3: Reescrever OnboardingSlidePremium

**Files:**
- Modify: `lib/app/onboarding/screens/onboarding_slide_premium.dart`

Este é o núcleo da feature. O arquivo é reescrito por completo com a estrutura:
`Stack → SingleChildScrollView (hero + benefits + plans + spacer) + Positioned sticky CTA`.

- [ ] **3.1** Substituir o conteúdo completo de `lib/app/onboarding/screens/onboarding_slide_premium.dart` por:

```dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_data_provider.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/domain/entities/premium_feature.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:url_launcher/url_launcher.dart';

class OnboardingSlidePremium extends ConsumerStatefulWidget {
  const OnboardingSlidePremium({super.key});

  @override
  ConsumerState<OnboardingSlidePremium> createState() =>
      _OnboardingSlidePremiumState();
}

class _OnboardingSlidePremiumState
    extends ConsumerState<OnboardingSlidePremium> {
  bool _isLoading = true;
  bool _isPurchasing = false;
  List<PaywallPackage> _packages = [];
  PaywallPackage? _selectedPackage;

  @override
  void initState() {
    super.initState();
    unawaited(ref.read(analyticsServiceProvider).logPaywallViewed());
    _loadPackages();
  }

  Future<void> _loadPackages() async {
    try {
      final pkgs =
          await ref.read(revenueCatServiceProvider).getPaywallPackages();
      if (mounted) {
        setState(() {
          _packages = pkgs;
          if (pkgs.isNotEmpty) {
            _selectedPackage = pkgs.cast<PaywallPackage?>().firstWhere(
                  (p) => p?.rawPackage?.packageType == PackageType.annual,
                  orElse: () => pkgs.cast<PaywallPackage?>().firstWhere(
                        (p) => p?.rawPackage?.packageType == PackageType.monthly,
                        orElse: () => pkgs.first,
                      ),
                );
          }
          _isLoading = false;
        });
      }
    } on Exception {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _purchase() async {
    final pkg = _selectedPackage;
    if (pkg == null) return;
    setState(() => _isPurchasing = true);
    try {
      await ref.read(revenueCatServiceProvider).purchasePackage(pkg);
      unawaited(
        ref.read(analyticsServiceProvider).logPaywallPurchaseCompleted(),
      );
      await ref.read(onboardingProvider.notifier).markAsSeen();
      unawaited(ref.read(analyticsServiceProvider).logOnboardingCompleted());
      ref.invalidate(premiumProvider);
      if (mounted) Navigator.of(context).pop(true);
    } on Exception catch (e) {
      unawaited(ref.read(analyticsServiceProvider).logPaywallError(e.toString()));
      if (mounted) {
        setState(() => _isPurchasing = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.purchaseError)),
        );
      }
    }
  }

  Future<void> _skipOnboarding() async {
    await ref.read(onboardingProvider.notifier).markAsSeen();
    unawaited(ref.read(analyticsServiceProvider).logOnboardingCompleted());
    if (mounted) Navigator.of(context).pop();
  }

  Future<void> _restore() async {
    setState(() => _isPurchasing = true);
    try {
      await ref.read(revenueCatServiceProvider).restorePurchases();
      ref.invalidate(premiumProvider);
      if (mounted) Navigator.of(context).pop(true);
    } on Exception {
      if (mounted) {
        setState(() => _isPurchasing = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.restoreError)),
        );
      }
    }
  }

  String _trialLabel(AppLocalizations l10n) {
    final pkg = _selectedPackage;
    if (pkg != null && pkg.hasFreeTrial) {
      final days = pkg.trialPeriodDays!;
      if (days >= 30) return l10n.paywallTrialMonths(days ~/ 30);
      if (days >= 7) return l10n.paywallTrialWeeks(days ~/ 7);
      return l10n.paywallTrialDays(days);
    }
    return '';
  }

  String _ctaText(AppLocalizations l10n) {
    final pkg = _selectedPackage;
    if (pkg != null && pkg.hasFreeTrial) return l10n.paywallTrialCta;
    return l10n.paywallCtaUnlock;
  }

  Widget _buildHero(ThemeData theme, AppLocalizations l10n) {
    final trialLabel = _trialLabel(l10n);
    final displayName =
        ref.watch(onboardingDataProvider).displayName.trim();
    final subtitle = displayName.isNotEmpty
        ? l10n.paywallHeroSubtitlePersonalized(displayName)
        : l10n.paywallHeroSubtitle;

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
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 10,
                  color: theme.colorScheme.onTertiary,
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
            subtitle,
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

  Widget _buildBenefits(ThemeData theme, AppLocalizations l10n) {
    return ColoredBox(
      color: theme.colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.lg, vertical: Spacing.sm,
        ),
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
                  .map((f) => _buildBenefitCell(theme, f, l10n))
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

  Widget _buildPlans(ThemeData theme, AppLocalizations l10n) {
    if (_packages.isEmpty) return const SizedBox.shrink();

    final monthlyPkg = _packages.cast<PaywallPackage?>().firstWhere(
      (p) => p?.rawPackage?.packageType == PackageType.monthly,
      orElse: () => null,
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
            final isAnnual =
                pkg.rawPackage?.packageType == PackageType.annual;
            final isMonthly =
                pkg.rawPackage?.packageType == PackageType.monthly;

            String badgeText = '';
            if (isAnnual &&
                monthlyPkg != null &&
                monthlyPkg!.identifier != pkg.identifier) {
              final yearlyCostMonthly = monthlyPkg.price * 12;
              final savings =
                  ((yearlyCostMonthly - pkg.price) / yearlyCostMonthly * 100)
                      .round();
              badgeText =
                  '${l10n.paywallMostPopular} · ${l10n.paywallSavePercent(savings)}';
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
                            ? theme.colorScheme.primaryContainer
                                .withAlpha(100)
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
                                    style:
                                        theme.textTheme.titleSmall?.copyWith(
                                      fontWeight: FontWeight.w800,
                                      color: isSelected
                                          ? theme.colorScheme.primary
                                          : theme.colorScheme.onSurface,
                                    ),
                                  ),
                                  if (isAnnual &&
                                      monthlyPkg != null &&
                                      monthlyPkg!.identifier !=
                                          pkg.identifier) ...[
                                    Text(
                                      l10n.paywallPricePerMonth(
                                        formatCurrency(
                                          pkg.price / 12,
                                          pkg.currencyCode,
                                        ),
                                      ),
                                      style: theme.textTheme.bodySmall
                                          ?.copyWith(
                                        color: isSelected
                                            ? theme.colorScheme.primary
                                            : theme
                                                .colorScheme.onSurfaceVariant,
                                        fontWeight: isSelected
                                            ? FontWeight.w600
                                            : null,
                                      ),
                                    ),
                                    if (pkg.hasFreeTrial &&
                                        pkg.trialPeriodDays != null)
                                      Text(
                                        l10n.paywallTrialInCard(
                                          pkg.trialPeriodDays!,
                                        ),
                                        style: theme.textTheme.labelSmall
                                            ?.copyWith(
                                          color: AppColors.premiumAmber,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 10,
                                        ),
                                      ),
                                  ] else if (isMonthly)
                                    Text(
                                      l10n.paywallPackageMonthlyDesc,
                                      style: theme.textTheme.bodySmall
                                          ?.copyWith(
                                        color: theme
                                            .colorScheme.onSurfaceVariant,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Text(
                              pkg.priceString,
                              style:
                                  theme.textTheme.titleMedium?.copyWith(
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
                              horizontal: Spacing.xs, vertical: 3,
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

  Widget _buildStickyCta(ThemeData theme, AppLocalizations l10n) {
    if (_isLoading || _packages.isEmpty) return const SizedBox.shrink();
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
            color: theme.colorScheme.shadow.withAlpha((0.08 * 255).toInt()),
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
                shadowColor:
                    theme.colorScheme.primary.withAlpha(100),
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
              Icon(Icons.lock_outline,
                  size: 13, color: theme.colorScheme.outline),
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
          const SizedBox(height: Spacing.xxs),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => launchUrl(
                  Uri.parse(
                      'https://kipilist-6547b.web.app/privacidade.html'),
                  mode: LaunchMode.externalApplication,
                ),
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.symmetric(
                    horizontal: Spacing.xs, vertical: 2,
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
                  fontSize: 10, color: theme.colorScheme.outline,
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
                    horizontal: Spacing.xs, vertical: 2,
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
              Text(
                '·',
                style: TextStyle(
                  fontSize: 10, color: theme.colorScheme.outline,
                ),
              ),
              TextButton(
                onPressed: _restore,
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.symmetric(
                    horizontal: Spacing.xs, vertical: 2,
                  ),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(
                  l10n.onboardingRestore,
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
          const SizedBox(height: Spacing.xs),
          GestureDetector(
            onTap: _skipOnboarding,
            child: Text(
              l10n.onboardingMaybeLater,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant
                    .withAlpha((0.4 * 255).toInt()),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _mapPackageName(PaywallPackage pkg, AppLocalizations l10n) {
    return switch (pkg.rawPackage?.packageType) {
      PackageType.annual => l10n.paywallPackageAnnual,
      PackageType.monthly => l10n.paywallPackageMonthly,
      PackageType.lifetime => l10n.paywallPackageLifetime,
      _ => pkg.title,
    };
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              _buildHero(theme, l10n),
              _buildBenefits(theme, l10n),
              const SizedBox(height: Spacing.sm),
              if (_isLoading)
                const Padding(
                  padding: EdgeInsets.all(Spacing.lg),
                  child: CircularProgressIndicator.adaptive(),
                )
              else
                _buildPlans(theme, l10n),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom + 160,
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
            child: const Center(child: CircularProgressIndicator.adaptive()),
          ),
      ],
    );
  }
}
```

- [ ] **3.2** Rodar análise no arquivo modificado:

```bash
flutter analyze lib/app/onboarding/screens/onboarding_slide_premium.dart
```

Esperado: `No issues found!`

- [ ] **3.3** Rodar análise geral do projeto:

```bash
flutter analyze --fatal-infos
```

Esperado: `No issues found!`

- [ ] **3.4** Commit:

```bash
git add lib/app/onboarding/screens/onboarding_slide_premium.dart
git commit -m "feat(paywall): rewrite onboarding premium slide with hero gradient, feature grid, trial CTA, personalization and discrete skip"
```

---

## Task 4: Verificação final

- [ ] **4.1** Build de release para confirmar que compila:

```bash
flutter build appbundle --no-tree-shake-icons
```

Esperado: `Built build/app/outputs/bundle/release/app-release.aab`

- [ ] **4.2** Confirmar que os arquivos gerados de l10n foram commitados (Task 1 deve ter feito isso). Se não:

```bash
git status lib/generated/
```

Se houver arquivos modificados não commitados:
```bash
git add lib/generated/l10n/
git commit -m "chore(l10n): regenerate localizations"
```

---

## Resumo das mudanças

| O que mudou | Impacto esperado |
|---|---|
| Hero gradient + mascote + social proof | Primeira impressão premium |
| Feature grid 2 colunas (9 features) | Demonstra valor claro antes do preço |
| Plan cards com badge "MOST POPULAR · Save X%" | Ancora valor no plano anual |
| CTA "Start Free Trial" / "Unlock PRO" (trial-aware) | Reduz percepção de risco |
| Personalização com nome do AI chat | Conexão emocional |
| Skip como texto quase invisível no rodapé | Menos saídas acidentais |
| Trust signal 🔒 + Privacy + Terms + Restore | Credibilidade e compliance |
| Remoção do Slide de Share | Fluxo mais direto ao paywall |
