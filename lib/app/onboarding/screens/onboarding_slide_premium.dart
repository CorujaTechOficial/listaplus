import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_data_provider.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/models/premium_feature.dart';
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
  String? _errorMessage;
  List<PaywallPackage> _packages = [];
  PaywallPackage? _selectedPackage;

  @override
  void initState() {
    super.initState();
    unawaited(ref.read(analyticsServiceProvider).logPaywallViewed());
    _loadPackages();
  }

  Future<void> _loadPackages() async {
    setState(() => _isLoading = true);
    try {
      final pkgs = await ref
          .read(revenueCatServiceProvider)
          .getPaywallPackages()
          .timeout(const Duration(seconds: 15));
      if (mounted) {
        setState(() {
          _errorMessage = null;
          _packages = pkgs;
          if (pkgs.isNotEmpty) {
            _selectedPackage = pkgs.cast<PaywallPackage?>().firstWhere(
              (p) => p?.rawPackage?.packageType == PackageType.annual,
              orElse:
                  () => pkgs.cast<PaywallPackage?>().firstWhere(
                    (p) => p?.rawPackage?.packageType == PackageType.monthly,
                    orElse: () => pkgs.first,
                  ),
            );
          }
          _isLoading = false;
        });
      }
    } on TimeoutException {
      if (mounted) {
        setState(() {
          _errorMessage = AppLocalizations.of(context)!.paywallLoadingError;
          _isLoading = false;
        });
      }
    } on Exception {
      if (mounted) {
        setState(() {
          _errorMessage = AppLocalizations.of(context)!.paywallLoadingError;
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _purchase() async {
    final pkg = _selectedPackage;
    if (pkg == null) {
      return;
    }
    setState(() => _isPurchasing = true);
    try {
      await ref.read(revenueCatServiceProvider).purchasePackage(pkg);
      unawaited(
        ref.read(analyticsServiceProvider).logPaywallPurchaseCompleted(),
      );
      await ref.read(onboardingProvider.notifier).markAsSeen();
      unawaited(ref.read(analyticsServiceProvider).logOnboardingCompleted());
      ref.invalidate(premiumProvider);
      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } on Exception catch (e) {
      unawaited(
        ref.read(analyticsServiceProvider).logPaywallError(e.toString()),
      );
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
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  Future<void> _restore() async {
    setState(() => _isPurchasing = true);
    try {
      await ref.read(revenueCatServiceProvider).restorePurchases();
      unawaited(
        ref.read(analyticsServiceProvider).logPaywallRestoreCompleted(),
      );
      await ref.read(onboardingProvider.notifier).markAsSeen();
      unawaited(ref.read(analyticsServiceProvider).logOnboardingCompleted());
      ref.invalidate(premiumProvider);
      if (mounted) {
        Navigator.of(context).pop(true);
      }
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
      if (days >= 30) {
        return l10n.paywallTrialMonths(days ~/ 30);
      }
      if (days >= 7) {
        return l10n.paywallTrialWeeks(days ~/ 7);
      }
      return l10n.paywallTrialDays(days);
    }
    return '';
  }

  String _ctaText(AppLocalizations l10n) {
    final pkg = _selectedPackage;
    if (pkg != null && pkg.hasFreeTrial) {
      return l10n.paywallTrialCta;
    }
    return l10n.paywallCtaUnlock;
  }

  String _goalHeadline(AppLocalizations l10n) {
    final data = ref.read(onboardingDataProvider);
    final name = data.displayName.trim();
    final goals = data.goals;
    final firstGoal = goals.isNotEmpty ? goals.first : '';
    final hasName = name.isNotEmpty;

    return switch (firstGoal) {
      'saveMoney' =>
        hasName
            ? l10n.paywallGoalHeadlineSaveMoney(name)
            : l10n.paywallGoalHeadlineNoNameSaveMoney,
      'neverForget' =>
        hasName
            ? l10n.paywallGoalHeadlineNeverForget(name)
            : l10n.paywallGoalHeadlineNoNameNeverForget,
      'faster' =>
        hasName
            ? l10n.paywallGoalHeadlineFaster(name)
            : l10n.paywallGoalHeadlineNoNameFaster,
      'family' =>
        hasName
            ? l10n.paywallGoalHeadlineFamily(name)
            : l10n.paywallGoalHeadlineNoNameFamily,
      'recipes' =>
        hasName
            ? l10n.paywallGoalHeadlineRecipes(name)
            : l10n.paywallGoalHeadlineNoNameRecipes,
      'pantry' =>
        hasName
            ? l10n.paywallGoalHeadlinePantry(name)
            : l10n.paywallGoalHeadlineNoNamePantry,
      _ =>
        hasName
            ? l10n.paywallHeroSubtitlePersonalized(name)
            : l10n.paywallHeroSubtitle,
    };
  }

  Widget _buildHero(ThemeData theme, AppLocalizations l10n) {
    final trialLabel = _trialLabel(l10n);
    final displayName = ref.watch(onboardingDataProvider).displayName.trim();
    final subtitle =
        displayName.isNotEmpty
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
        Spacing.xl,
        Spacing.xl,
        Spacing.xl,
        Spacing.lg,
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
                horizontal: Spacing.sm,
                vertical: Spacing.xxs,
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
          ] else ...[
            const SizedBox(height: Spacing.sm),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.sm,
                vertical: Spacing.xxs,
              ),
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(30),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: AppColors.premiumAmber.withAlpha(180),
                  width: 1,
                ),
              ),
              child: const Text(
                '🎁 Oferta de boas-vindas',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 10,
                  color: AppColors.premiumAmber,
                  letterSpacing: 0.4,
                ),
              ),
            ),
          ],
          const SizedBox(height: Spacing.sm),
          Text(
            _goalHeadline(l10n),
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
              horizontal: Spacing.sm,
              vertical: Spacing.xxs,
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

  Widget _buildBeforeAfter(ThemeData theme, AppLocalizations l10n) {
    final beforeItems = [
      l10n.paywallBeforeItem1,
      l10n.paywallBeforeItem2,
      l10n.paywallBeforeItem3,
      l10n.paywallBeforeItem4,
    ];
    final afterItems = [
      l10n.paywallAfterItem1,
      l10n.paywallAfterItem2,
      l10n.paywallAfterItem3,
      l10n.paywallAfterItem4,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.lg,
        vertical: Spacing.sm,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.paywallBeforeAfterTitle,
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: theme.colorScheme.onSurfaceVariant,
              letterSpacing: 0.8,
            ),
          ),
          const SizedBox(height: Spacing.sm),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(Spacing.sm),
                      color: Colors.red.withAlpha(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.paywallLabelCommon,
                            style: theme.textTheme.labelSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.red.shade700,
                            ),
                          ),
                          const SizedBox(height: Spacing.xs),
                          ...beforeItems.map(
                            (item) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.close,
                                    color: Colors.red,
                                    size: 14,
                                  ),
                                  const SizedBox(width: 6),
                                  Expanded(
                                    child: Text(
                                      item,
                                      style: theme.textTheme.bodySmall
                                          ?.copyWith(
                                            color:
                                                theme
                                                    .colorScheme
                                                    .onSurfaceVariant,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: theme.colorScheme.surfaceContainerHighest,
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        size: 18,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(Spacing.sm),
                      color: Colors.green.withAlpha(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.paywallLabelPro,
                            style: theme.textTheme.labelSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.green.shade700,
                            ),
                          ),
                          const SizedBox(height: Spacing.xs),
                          ...afterItems.map(
                            (item) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.check,
                                    color: Colors.green,
                                    size: 14,
                                  ),
                                  const SizedBox(width: 6),
                                  Expanded(
                                    child: Text(
                                      item,
                                      style: theme.textTheme.bodySmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: theme.colorScheme.onSurface,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBenefits(ThemeData theme, AppLocalizations l10n) {
    final features = [
      PremiumFeature.assistant,
      PremiumFeature.unlimitedLists,
      PremiumFeature.sharing,
      PremiumFeature.pantry,
      PremiumFeature.monthlyBudget,
    ];

    return ColoredBox(
      color: theme.colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.lg,
          vertical: Spacing.sm,
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
            Column(
              children:
                  features
                      .map(
                        (f) => Padding(
                          padding: const EdgeInsets.only(bottom: Spacing.sm),
                          child: _buildBenefitCell(
                            theme,
                            f,
                            l10n,
                            features.indexOf(f),
                          ),
                        ),
                      )
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
    int index,
  ) {
    String description = '';
    switch (feature) {
      case PremiumFeature.assistant:
        description = l10n.paywallFeatureDescAssistant;
        break;
      case PremiumFeature.unlimitedLists:
        description = l10n.paywallFeatureDescUnlimitedLists;
        break;
      case PremiumFeature.sharing:
        description = l10n.paywallFeatureDescSharing;
        break;
      case PremiumFeature.pantry:
        description = l10n.paywallFeatureDescPantry;
        break;
      case PremiumFeature.monthlyBudget:
        description = l10n.paywallFeatureDescBudget;
        break;
      default:
        break;
    }

    return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 28,
              height: 28,
              margin: const EdgeInsets.only(top: 2),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                feature.icon,
                color: theme.colorScheme.primary,
                size: 15,
              ),
            ),
            const SizedBox(width: Spacing.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    feature.localizedLabel(l10n),
                    style: theme.textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    description,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
        .animate(delay: (index * 50).ms)
        .fadeIn(duration: 300.ms)
        .slideX(begin: 0.1, end: 0);
  }

  Widget _buildTestimonial(ThemeData theme, AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.lg,
        vertical: Spacing.sm,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(Spacing.sm),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: theme.colorScheme.outlineVariant),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('⭐⭐⭐⭐⭐', style: TextStyle(fontSize: 11)),
                  const SizedBox(height: Spacing.xs),
                  Text(
                    l10n.paywallTestimonial1Text,
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontStyle: FontStyle.italic,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: Spacing.xs),
                  Text(
                    l10n.paywallTestimonial1Name,
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: Spacing.xs),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(Spacing.sm),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: theme.colorScheme.outlineVariant),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('⭐⭐⭐⭐⭐', style: TextStyle(fontSize: 11)),
                  const SizedBox(height: Spacing.xs),
                  Text(
                    l10n.paywallTestimonial2Text,
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontStyle: FontStyle.italic,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: Spacing.xs),
                  Text(
                    l10n.paywallTestimonial2Name,
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlans(ThemeData theme, AppLocalizations l10n) {
    if (_packages.isEmpty) {
      return const SizedBox.shrink();
    }

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
            final isAnnual = pkg.rawPackage?.packageType == PackageType.annual;
            final isMonthly =
                pkg.rawPackage?.packageType == PackageType.monthly;

            String badgeText = '';
            if (isAnnual &&
                monthlyPkg != null &&
                monthlyPkg.identifier != pkg.identifier) {
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
                      color:
                          isSelected
                              ? theme.colorScheme.primary
                              : theme.colorScheme.outlineVariant,
                      width: isSelected ? 2.5 : 1.5,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    color:
                        isAnnual
                            ? (isSelected
                                ? theme.colorScheme.primaryContainer.withAlpha(
                                  100,
                                )
                                : theme.colorScheme.primaryContainer.withAlpha(
                                  30,
                                ))
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
                                      color:
                                          isSelected
                                              ? theme.colorScheme.primary
                                              : theme.colorScheme.onSurface,
                                    ),
                                  ),
                                  if (isAnnual &&
                                      monthlyPkg != null &&
                                      monthlyPkg.identifier !=
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
                                            color:
                                                isSelected
                                                    ? theme.colorScheme.primary
                                                    : theme
                                                        .colorScheme
                                                        .onSurfaceVariant,
                                            fontWeight:
                                                isSelected
                                                    ? FontWeight.w600
                                                    : null,
                                          ),
                                    ),
                                    Text(
                                      l10n.paywallPricePerDay(
                                        formatCurrency(
                                          pkg.price / 365,
                                          pkg.currencyCode,
                                        ),
                                      ),
                                      style: theme.textTheme.labelSmall
                                          ?.copyWith(
                                            color:
                                                isSelected
                                                    ? theme.colorScheme.primary
                                                    : theme
                                                        .colorScheme
                                                        .onSurfaceVariant,
                                            fontWeight:
                                                isSelected
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
                                            color:
                                                theme
                                                    .colorScheme
                                                    .onSurfaceVariant,
                                          ),
                                    ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                if (isAnnual &&
                                    monthlyPkg != null &&
                                    monthlyPkg.identifier != pkg.identifier)
                                  Text(
                                    l10n.paywallStrikethroughPrice(
                                      monthlyPkg.priceString,
                                    ),
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      decoration: TextDecoration.lineThrough,
                                      color: theme.colorScheme.onSurfaceVariant
                                          .withAlpha((0.5 * 255).toInt()),
                                    ),
                                  ),
                                Text(
                                  pkg.priceString,
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w900,
                                    color:
                                        isSelected
                                            ? theme.colorScheme.primary
                                            : theme.colorScheme.onSurface,
                                  ),
                                ),
                              ],
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

  Widget _buildLegalDot(ThemeData theme) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4),
    child: Text(
      '·',
      style: TextStyle(
        fontSize: 11,
        color: theme.colorScheme.outlineVariant,
      ),
    ),
  );

  Widget _buildLegalLink(
    String label,
    VoidCallback onTap,
    ThemeData theme,
  ) => GestureDetector(
    onTap: onTap,
    child: Text(
      label,
      style: TextStyle(
        fontSize: 11,
        color: theme.colorScheme.onSurfaceVariant.withAlpha(140),
        decoration: TextDecoration.underline,
        decorationColor: theme.colorScheme.onSurfaceVariant.withAlpha(80),
      ),
    ),
  );

  Widget _buildStickyCta(ThemeData theme, AppLocalizations l10n) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        Spacing.lg,
        Spacing.sm,
        Spacing.lg,
        MediaQuery.of(context).padding.bottom + Spacing.xs,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow.withAlpha((0.1 * 255).toInt()),
            blurRadius: 16,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!_isLoading && _errorMessage == null && _packages.isNotEmpty) ...[
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
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
            ),
            const SizedBox(height: Spacing.xs),
            Text(
              l10n.paywallTrialDisclaimer,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Spacing.xs),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock_outline,
                  size: 11,
                  color: theme.colorScheme.onSurfaceVariant.withAlpha(130),
                ),
                const SizedBox(width: 4),
                _buildLegalLink(
                  l10n.paywallPolicy,
                  () => launchUrl(
                    Uri.parse(
                      'https://kipilist-6547b.web.app/privacidade.html',
                    ),
                    mode: LaunchMode.externalApplication,
                  ),
                  theme,
                ),
                _buildLegalDot(theme),
                _buildLegalLink(
                  l10n.paywallTerms,
                  () => launchUrl(
                    Uri.parse('https://kipilist-6547b.web.app/termos.html'),
                    mode: LaunchMode.externalApplication,
                  ),
                  theme,
                ),
                _buildLegalDot(theme),
                _buildLegalLink(l10n.onboardingRestore, _restore, theme),
              ],
            ),
          ],
          if (_errorMessage != null) ...[
            Padding(
              padding: const EdgeInsets.only(bottom: Spacing.sm),
              child: Column(
                children: [
                  Text(
                    _errorMessage!,
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: Spacing.sm),
                  ElevatedButton(
                    onPressed: _loadPackages,
                    child: Text(l10n.retry),
                  ),
                ],
              ),
            ),
          ],
          GestureDetector(
            onTap: _skipOnboarding,
            behavior: HitTestBehavior.opaque,
            child: SizedBox(
              height: 40,
              child: Center(
                child: Text(
                  l10n.paywallSkipNow,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant.withAlpha(
                      (0.25 * 255).toInt(),
                    ),
                  ),
                ),
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
              _buildBeforeAfter(theme, l10n),
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
                        textAlign: TextAlign.center,
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
              _buildBenefits(theme, l10n),
              _buildTestimonial(theme, l10n),
              SizedBox(height: MediaQuery.of(context).padding.bottom + 160),
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
