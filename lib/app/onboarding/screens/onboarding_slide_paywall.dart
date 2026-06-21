import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shopping_list/app/onboarding/models/user_preferences.dart';
import 'package:shopping_list/app/onboarding/providers/onboarding_data_provider.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/widgets/paywall_components.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:url_launcher/url_launcher.dart';

class OnboardingSlidePaywall extends ConsumerStatefulWidget {
  const OnboardingSlidePaywall({
    super.key,
    required this.onPurchased,
    required this.onRestored,
    required this.onSkip,
  });

  final VoidCallback onPurchased;
  final VoidCallback onRestored;
  final VoidCallback onSkip;

  @override
  ConsumerState<OnboardingSlidePaywall> createState() =>
      _OnboardingSlidePaywallState();
}

class _OnboardingSlidePaywallState
    extends ConsumerState<OnboardingSlidePaywall> {
  bool _isLoading = true;
  bool _isPurchasing = false;
  bool _loadFailed = false;
  List<PaywallPackage> _packages = [];
  PaywallPackage? _selectedPackage;

  static const _termsUrl = 'https://kipilist-6547b.web.app/termos.html';
  static const _privacyUrl = 'https://kipilist-6547b.web.app/privacidade.html';

  @override
  void initState() {
    super.initState();
    unawaited(ref.read(analyticsServiceProvider).logPaywallViewed());
    unawaited(_loadPackages());
  }

  @override
  void dispose() => super.dispose();

  Future<void> _loadPackages({int attempt = 0}) async {
    setState(() {
      _isLoading = true;
      _loadFailed = false;
    });
    try {
      final revenueCat = ref.read(revenueCatServiceProvider);
      if (!revenueCat.isAvailable) {
        if (!mounted) {
          return;
        }
        unawaited(
          ref
              .read(analyticsServiceProvider)
              .logEvent(name: 'paywall_unavailable_skipped'),
        );
        widget.onSkip();
        return;
      }

      final alreadyPro = await revenueCat.isEntitlementActive(
        kipiListProEntitlement,
      );
      if (alreadyPro) {
        if (!mounted) {
          return;
        }
        widget.onRestored();
        return;
      }
      final pkgs = await revenueCat.getPaywallPackages().timeout(
        const Duration(seconds: 15),
      );
      if (!mounted) {
        return;
      }
      setState(() {
        _packages = pkgs;
        _selectedPackage = _pickDefaultPackage(pkgs);
        _isLoading = false;
        _loadFailed = pkgs.isEmpty;
      });
      if (_loadFailed && attempt == 0) {
        await Future<void>.delayed(const Duration(seconds: 2));
        if (mounted) {
          unawaited(_loadPackages(attempt: 1));
        }
        return;
      }
      if (_loadFailed) {
        unawaited(
          ref
              .read(analyticsServiceProvider)
              .logEvent(name: 'paywall_blocked_retry'),
        );
      }
    } on Exception {
      if (!mounted) {
        return;
      }
      if (attempt == 0) {
        await Future<void>.delayed(const Duration(seconds: 2));
        if (mounted) {
          unawaited(_loadPackages(attempt: 1));
        }
        return;
      }
      setState(() {
        _isLoading = false;
        _loadFailed = true;
      });
      unawaited(
        ref
            .read(analyticsServiceProvider)
            .logEvent(name: 'paywall_blocked_retry'),
      );
    }
  }

  /// Preselects annual if available; falls back to monthly; then first.
  PaywallPackage? _pickDefaultPackage(List<PaywallPackage> pkgs) {
    if (pkgs.isEmpty) {
      return null;
    }
    return pkgs.cast<PaywallPackage?>().firstWhere(
      (p) => p?.rawPackage?.packageType == PackageType.annual,
      orElse:
          () => pkgs.cast<PaywallPackage?>().firstWhere(
            (p) => p?.rawPackage?.packageType == PackageType.monthly,
            orElse: () => pkgs.first,
          ),
    );
  }

  PaywallPackage? _packageOfType(PackageType type) {
    for (final p in _packages) {
      if (p.rawPackage?.packageType == type) {
        return p;
      }
    }
    return null;
  }

  /// Annual savings vs paying monthly for a year. Null if not computable.
  int? _annualSavingsPercent() {
    final monthly = _packageOfType(PackageType.monthly);
    final annual = _packageOfType(PackageType.annual);
    if (monthly == null || annual == null || monthly.price <= 0) {
      return null;
    }
    final fullYear = monthly.price * 12;
    if (annual.price >= fullYear) {
      return null;
    }
    return ((fullYear - annual.price) / fullYear * 100).round();
  }

  /// Per-month equivalent of an annual price, in the package currency.
  String? _perMonthString(PaywallPackage pkg) {
    if (pkg.rawPackage?.packageType != PackageType.annual || pkg.price <= 0) {
      return null;
    }
    try {
      final fmt = NumberFormat.simpleCurrency(name: pkg.currencyCode);
      return fmt.format(pkg.price / 12);
    } on Exception {
      return null;
    }
  }

  Future<void> _purchase() async {
    final pkg = _selectedPackage;
    if (pkg == null || _isPurchasing) {
      return;
    }
    setState(() => _isPurchasing = true);
    try {
      await ref.read(revenueCatServiceProvider).purchasePackage(pkg);
      unawaited(
        ref.read(analyticsServiceProvider).logPaywallPurchaseCompleted(),
      );
      ref.invalidate(premiumProvider);
      if (mounted) {
        widget.onPurchased();
      }
    } on PlatformException catch (e) {
      final errorCode = PurchasesErrorHelper.getErrorCode(e);
      if (errorCode == PurchasesErrorCode.purchaseCancelledError) {
        unawaited(
          ref
              .read(analyticsServiceProvider)
              .logEvent(name: 'onboarding_purchase_cancelled'),
        );
      } else if (errorCode == PurchasesErrorCode.paymentPendingError) {
        unawaited(
          ref
              .read(analyticsServiceProvider)
              .logEvent(name: 'onboarding_purchase_pending'),
        );
        if (mounted) {
          setState(() => _isPurchasing = false);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                AppLocalizations.of(context)!.paywallPurchasePending,
              ),
            ),
          );
        }
        return;
      } else {
        unawaited(
          ref.read(analyticsServiceProvider).logPaywallError(e.toString()),
        );
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(AppLocalizations.of(context)!.purchaseError),
            ),
          );
        }
      }
      if (mounted) {
        setState(() => _isPurchasing = false);
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

  Future<void> _restore() async {
    if (_isPurchasing) {
      return;
    }
    setState(() => _isPurchasing = true);
    try {
      await ref.read(revenueCatServiceProvider).restorePurchases();
      final isPro = await ref
          .read(revenueCatServiceProvider)
          .isEntitlementActive(kipiListProEntitlement);
      if (!isPro) {
        if (mounted) {
          setState(() => _isPurchasing = false);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(AppLocalizations.of(context)!.restoreError)),
          );
        }
        return;
      }
      unawaited(
        ref.read(analyticsServiceProvider).logPaywallRestoreCompleted(),
      );
      ref.invalidate(premiumProvider);
      if (mounted) {
        widget.onRestored();
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

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final onboardingData = ref.watch(onboardingDataProvider);

    if (_isLoading) {
      return const _LoadingSkeleton();
    }
    if (_loadFailed) {
      return _RetryView(onRetry: _loadPackages);
    }

    final selected = _selectedPackage;
    final savingsPercent = _annualSavingsPercent();
    final hasTrial = selected?.hasFreeTrial ?? false;

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildSkipBar(l10n, scheme),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHero(theme, scheme, l10n, onboardingData),
                  const SizedBox(height: Spacing.lg),
                  if (hasTrial) ...[
                    _buildTimeline(l10n, selected!.trialPeriodDays!),
                    const SizedBox(height: Spacing.lg),
                  ],
                  PaywallValuePanel(
                    title: l10n.paywallFeaturesTitle,
                    children: [
                      PaywallValueRow(
                        icon: Icons.auto_awesome_rounded,
                        text: l10n.paywallHeroFeatureTitle,
                        subtitle: l10n.paywallHeroFeatureDesc,
                        emphasized: true,
                      ),
                      PaywallValueRow(
                        text: l10n.paywallFeatureDescUnlimitedLists,
                      ),
                      PaywallValueRow(text: l10n.paywallFeatureDescSharing),
                      PaywallValueRow(text: l10n.paywallFeatureDescPantry),
                      PaywallValueRow(
                        text: l10n.paywallFeatureDescBudget,
                        isLast: true,
                      ),
                    ],
                  ),
                  const SizedBox(height: Spacing.lg),
                  Text(
                    l10n.paywallSelectPlan.toUpperCase(),
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.8,
                    ),
                  ),
                  const SizedBox(height: Spacing.sm),
                  for (final pkg in _packages) ...[
                    _buildPlanTile(l10n, pkg, selected, savingsPercent),
                    const SizedBox(height: Spacing.sm),
                  ],
                  const SizedBox(height: Spacing.md),
                ],
              ),
            ),
          ),
          _buildFooter(theme, scheme, l10n, selected, hasTrial),
        ],
      ),
    );
  }

  Widget _buildSkipBar(AppLocalizations l10n, ColorScheme scheme) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: Spacing.sm),
        child: TextButton(
          onPressed: widget.onSkip,
          style: TextButton.styleFrom(foregroundColor: scheme.onSurfaceVariant),
          child: Text(l10n.paywallSkipNow),
        ),
      ),
    );
  }

  Widget _buildHero(
    ThemeData theme,
    ColorScheme scheme,
    AppLocalizations l10n,
    UserPreferences onboardingData,
  ) {
    final headline = _goalHeadline(l10n, onboardingData);
    final subhead = _goalSubhead(l10n, onboardingData);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'KipiList',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w800,
                color: scheme.onSurface,
                letterSpacing: -0.3,
              ),
            ),
            const SizedBox(width: Spacing.xs),
            PaywallProBadge(label: l10n.paywallProLabel),
          ],
        ),
        const SizedBox(height: Spacing.md),
        Text(
          headline,
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
            letterSpacing: -0.6,
            height: 1.15,
          ),
        ),
        const SizedBox(height: Spacing.xs),
        Text(
          subhead,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: scheme.onSurfaceVariant,
            height: 1.45,
          ),
        ),
        const SizedBox(height: Spacing.sm),
        PaywallRatingLine(text: l10n.paywallSocialProof),
        const SizedBox(height: Spacing.xxs),
        Row(
          children: [
            Icon(Icons.auto_awesome_rounded, size: 15, color: scheme.primary),
            const SizedBox(width: Spacing.xxs),
            Flexible(
              child: Text(
                l10n.paywallBasedOnAnswers,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTimeline(AppLocalizations l10n, int trialDays) {
    final reminderDay = trialDays > 2 ? trialDays - 2 : 1;
    return PaywallTrialTimeline(
      trialDays: trialDays,
      todayLabel: l10n.paywallTimelineToday,
      todayDesc: l10n.paywallTimelineTodayDesc,
      reminderLabel: l10n.paywallTimelineDay(reminderDay),
      reminderDesc: l10n.paywallTimelineReminderDesc,
      chargeLabel: l10n.paywallTimelineDay(trialDays),
      chargeDesc: l10n.paywallTimelineChargeDesc,
    );
  }

  // Android appends " (com.package.name (unreviewed))" to the product title.
  // Strip everything from the first " (" so we show only the clean name.
  static String _cleanTitle(String raw) {
    final idx = raw.indexOf(' (');
    return idx == -1 ? raw : raw.substring(0, idx);
  }

  Widget _buildPlanTile(
    AppLocalizations l10n,
    PaywallPackage pkg,
    PaywallPackage? selected,
    int? savingsPercent,
  ) {
    final isAnnual = pkg.rawPackage?.packageType == PackageType.annual;
    final perMonth = _perMonthString(pkg);

    String? badgeText;
    if (isAnnual) {
      badgeText =
          savingsPercent != null
              ? l10n.paywallSavePercent(savingsPercent)
              : l10n.paywallBestValue;
    }

    String? caption;
    if (isAnnual && perMonth != null) {
      caption = l10n.paywallPricePerMonth(perMonth);
    }

    String? trialText;
    if (pkg.hasFreeTrial && pkg.trialPeriodDays != null) {
      trialText = l10n.paywallTrialInCard(pkg.trialPeriodDays!);
    }

    return PaywallPlanTile(
      name: _cleanTitle(pkg.title),
      priceString: pkg.priceString,
      caption: caption,
      trialText: trialText,
      badgeText: badgeText,
      selected: pkg.identifier == selected?.identifier,
      onTap: () => setState(() => _selectedPackage = pkg),
    );
  }

  Widget _buildFooter(
    ThemeData theme,
    ColorScheme scheme,
    AppLocalizations l10n,
    PaywallPackage? selected,
    bool hasTrial,
  ) {
    final ctaText = hasTrial ? l10n.paywallTrialCta : l10n.paywallCtaUnlock;
    return Container(
      decoration: BoxDecoration(
        color: scheme.surface,
        border: Border(
          top: BorderSide(color: scheme.outlineVariant.withAlpha(90)),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(
        Spacing.lg,
        Spacing.md,
        Spacing.lg,
        Spacing.sm,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaywallTrustLines(
            disclaimer:
                hasTrial
                    ? l10n.paywallTrialDisclaimer
                    : l10n.paywallCancelAnytime,
            billing: _billingDisclosure(l10n),
          ),
          const SizedBox(height: Spacing.sm),
          SizedBox(
            width: double.infinity,
            height: 54,
            child: FilledButton(
              onPressed: _isPurchasing ? null : _purchase,
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(RadiusTokens.lg),
                ),
                elevation: 0,
              ),
              child:
                  _isPurchasing
                      ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                      : Text(
                        ctaText,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.2,
                        ),
                      ),
            ),
          ),
          const SizedBox(height: Spacing.xs),
          PaywallSecuredLine(text: l10n.paywallSecuredByStore),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              TextButton(
                onPressed: _isPurchasing ? null : _restore,
                style: TextButton.styleFrom(
                  foregroundColor: scheme.onSurfaceVariant,
                  textStyle: theme.textTheme.labelSmall,
                ),
                child: Text(l10n.paywallRestore),
              ),
              TextButton(
                onPressed: () => unawaited(launchUrl(Uri.parse(_termsUrl))),
                style: TextButton.styleFrom(
                  foregroundColor: scheme.onSurfaceVariant,
                  textStyle: theme.textTheme.labelSmall,
                ),
                child: Text(l10n.paywallTerms),
              ),
              TextButton(
                onPressed: () => unawaited(launchUrl(Uri.parse(_privacyUrl))),
                style: TextButton.styleFrom(
                  foregroundColor: scheme.onSurfaceVariant,
                  textStyle: theme.textTheme.labelSmall,
                ),
                child: Text(l10n.paywallPolicy),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _goalHeadline(AppLocalizations l10n, UserPreferences onboardingData) {
    final displayName = (onboardingData.displayName as String?)?.trim() ?? '';
    final hasName = displayName.isNotEmpty;

    if ((onboardingData.householdSize as String?)?.startsWith('family') ??
        false) {
      return hasName
          ? l10n.paywallGoalHeadlineFamily(displayName)
          : l10n.paywallGoalHeadlineNoNameFamily;
    }

    return switch (onboardingData.mainPain as String?) {
      'forget' =>
        hasName
            ? l10n.paywallGoalHeadlineNeverForget(displayName)
            : l10n.paywallGoalHeadlineNoNameNeverForget,
      'overspend' || 'waste' =>
        hasName
            ? l10n.paywallGoalHeadlineSaveMoney(displayName)
            : l10n.paywallGoalHeadlineNoNameSaveMoney,
      'time' =>
        hasName
            ? l10n.paywallGoalHeadlineFaster(displayName)
            : l10n.paywallGoalHeadlineNoNameFaster,
      _ =>
        hasName
            ? l10n.paywallGoalHeadlineFaster(displayName)
            : l10n.paywallGoalHeadlineNoNameFaster,
    };
  }

  String _goalSubhead(AppLocalizations l10n, UserPreferences onboardingData) {
    return switch (onboardingData.mainPain as String?) {
      'overspend' || 'waste' => l10n.paywallFeatureDescBudget,
      'forget' => l10n.paywallFeatureDescAssistant,
      'time' => l10n.paywallHeroFeatureDesc,
      _ => l10n.paywallHeroFeatureDesc,
    };
  }

  String _billingDisclosure(AppLocalizations l10n) {
    final pkg = _selectedPackage;
    if (pkg == null) {
      return l10n.paywallCancelAnytime;
    }
    final isAnnual = pkg.rawPackage?.packageType == PackageType.annual;
    if (pkg.hasFreeTrial) {
      return isAnnual
          ? l10n.paywallTrialDisclosureAnnual(
            pkg.trialPeriodDays!,
            pkg.priceString,
          )
          : l10n.paywallTrialDisclosureMonthly(
            pkg.trialPeriodDays!,
            pkg.priceString,
          );
    }
    return isAnnual
        ? l10n.paywallBillingAnnual(pkg.priceString)
        : l10n.paywallBillingMonthly(pkg.priceString);
  }
}

class _LoadingSkeleton extends StatelessWidget {
  const _LoadingSkeleton();

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    Widget box(double height, {double? width, double radius = 12}) {
      return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHigh,
          borderRadius: BorderRadius.circular(radius),
        ),
      );
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Spacing.xl),
            box(20, width: 96, radius: 6),
            const SizedBox(height: Spacing.md),
            box(28, width: 240),
            const SizedBox(height: Spacing.sm),
            box(18, width: 180, radius: 9),
            const SizedBox(height: Spacing.xl),
            box(120, radius: 20),
            const SizedBox(height: Spacing.lg),
            box(160, radius: 20),
            const SizedBox(height: Spacing.lg),
            box(72, radius: 16),
            const SizedBox(height: Spacing.sm),
            box(72, radius: 16),
            const Spacer(),
            box(54, radius: 16),
            const SizedBox(height: Spacing.lg),
          ],
        ),
      ),
    );
  }
}

class _RetryView extends StatelessWidget {
  const _RetryView({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud_off_rounded,
              size: 56,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: Spacing.md),
            Text(l10n.paywallLoadingError, textAlign: TextAlign.center),
            const SizedBox(height: Spacing.md),
            FilledButton(onPressed: onRetry, child: Text(l10n.obPaywallRetry)),
          ],
        ),
      ),
    );
  }
}
