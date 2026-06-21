import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/app/settings/widgets/paywall_utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/models/premium_feature.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PaywallScreen extends ConsumerStatefulWidget {
  const PaywallScreen({super.key, this.asSheet = false});

  final bool asSheet;

  @override
  ConsumerState<PaywallScreen> createState() => _PaywallScreenState();
}

class _PaywallScreenState extends ConsumerState<PaywallScreen> {
  bool _isLoading = true;
  bool _isPurchasing = false;
  String? _errorMessage;
  List<PaywallPackage> _packages = [];
  PaywallPackage? _selectedPackage;

  @override
  void initState() {
    super.initState();
    ref.read(analyticsServiceProvider).logPaywallViewed();
    _loadPackages();
  }

  Future<void> _loadPackages() async {
    try {
      final pkgs =
          await ref.read(revenueCatServiceProvider).getPaywallPackages();
      if (mounted) {
        setState(() {
          _packages = pkgs;
          // Priority: Annual > Monthly > First available
          if (pkgs.isNotEmpty) {
            _selectedPackage = pkgs.cast<PaywallPackage?>().firstWhere(
              (p) => p != null && detectPackageType(p) == PackageType.annual,
              orElse:
                  () => pkgs.cast<PaywallPackage?>().firstWhere(
                    (p) => p != null && detectPackageType(p) == PackageType.monthly,
                    orElse: () => pkgs.first,
                  ),
            );
          } else {
            _selectedPackage = null;
          }
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

    setState(() {
      _isPurchasing = true;
      _errorMessage = null;
    });

    try {
      await ref.read(revenueCatServiceProvider).purchasePackage(pkg);
      unawaited(
        ref.read(analyticsServiceProvider).logPaywallPurchaseCompleted(),
      );

      // Invalidate and wait for the new state to propagate
      ref.invalidate(premiumProvider);
      await ref.read(premiumProvider.future);

      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } on PlatformException catch (e) {
      unawaited(
        ref.read(analyticsServiceProvider).logPaywallError(e.toString()),
      );
      if (mounted) {
        setState(() {
          _isPurchasing = false;
          final errorCode = PurchasesErrorHelper.getErrorCode(e);
          if (errorCode != PurchasesErrorCode.purchaseCancelledError) {
            _errorMessage = AppLocalizations.of(context)!.paywallPurchaseError;
          }
        });
      }
    } on Exception catch (e) {
      unawaited(
        ref.read(analyticsServiceProvider).logPaywallError(e.toString()),
      );
      if (mounted) {
        setState(() {
          _errorMessage = AppLocalizations.of(context)!.paywallPurchaseError;
          _isPurchasing = false;
        });
      }
    }
  }

  Future<void> _restore() async {
    setState(() {
      _isPurchasing = true;
      _errorMessage = null;
    });

    try {
      await ref.read(revenueCatServiceProvider).restorePurchases();
      unawaited(
        ref.read(analyticsServiceProvider).logPaywallRestoreCompleted(),
      );

      ref.invalidate(premiumProvider);
      final isPremium = await ref.read(premiumProvider.future);

      if (mounted) {
        if (isPremium) {
          Navigator.of(context).pop(true);
        } else {
          setState(() {
            _errorMessage = AppLocalizations.of(context)!.paywallRestoreError;
            _isPurchasing = false;
          });
        }
      }
    } on Exception catch (e) {
      unawaited(
        ref.read(analyticsServiceProvider).logPaywallError(e.toString()),
      );
      if (mounted) {
        setState(() {
          _errorMessage = AppLocalizations.of(context)!.paywallRestoreError;
          _isPurchasing = false;
        });
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

  // ---------------------------------------------------------------------------
  // Hero — amber-tinted surface with real hierarchy
  // ---------------------------------------------------------------------------

  Widget _buildHero(ThemeData theme, AppLocalizations l10n) {
    final trialLabel = _trialLabel(l10n);
    return Container(
      width: double.infinity,
      // Amber container tint: premium signal without a heavy gradient
      color: AppColors.premiumAmberContainer,
      padding: const EdgeInsets.fromLTRB(
        Spacing.lg,
        Spacing.lg,
        Spacing.lg,
        Spacing.md,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Brand lockup: "KipiList" + PRO badge
          Row(
            children: [
              Text(
                'KipiList',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: AppColors.onPremiumAmber,
                  letterSpacing: -0.3,
                ),
              ),
              const SizedBox(width: Spacing.xs),
              _ProBadge(label: l10n.paywallProLabel),
              if (trialLabel.isNotEmpty) ...[
                const SizedBox(width: Spacing.xs),
                _TrialPill(label: trialLabel),
              ],
            ],
          ),
          const SizedBox(height: Spacing.md),
          // Primary headline — display-weight, maximum punch
          Text(
            l10n.paywallHeroHeadline,
            style: theme.textTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.w800,
              color: AppColors.onPremiumAmber,
              letterSpacing: -1,
              height: 1.1,
            ),
          ),
          const SizedBox(height: Spacing.xs),
          // Subheadline — one clear promise sentence
          Text(
            l10n.paywallHeroSubtitle,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: AppColors.onPremiumAmber.withOpacity(0.8),
              height: 1.45,
            ),
          ),
          const SizedBox(height: Spacing.sm),
          // Social proof: stars + text — amber stars signal premium rating
          _SocialProofLine(text: l10n.paywallSocialProof),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Free vs Pro comparison pill row
  // ---------------------------------------------------------------------------

  Widget _buildFreeVsPro(ThemeData theme, AppLocalizations l10n) {
    final scheme = theme.colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        Spacing.lg,
        Spacing.md,
        Spacing.lg,
        0,
      ),
      child: Row(
        children: [
          Expanded(
            child: _ComparisonChip(
              label: l10n.paywallFreeTier,
              isHighlighted: false,
              scheme: scheme,
              theme: theme,
            ),
          ),
          const SizedBox(width: Spacing.xs),
          Expanded(
            child: _ComparisonChip(
              label: l10n.paywallProTier,
              isHighlighted: true,
              scheme: scheme,
              theme: theme,
            ),
          ),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Benefits — top 4 features as two-line cards in a 2-column grid
  // ---------------------------------------------------------------------------

  Widget _buildBenefits(ThemeData theme, AppLocalizations l10n) {
    // Prioritized set: the 4 most conversion-driving features
    const featuresWithDescs = [
      (PremiumFeature.assistant, _FeatureDesc.assistant),
      (PremiumFeature.unlimitedLists, _FeatureDesc.unlimitedLists),
      (PremiumFeature.sharing, _FeatureDesc.sharing),
      (PremiumFeature.monthlyBudget, _FeatureDesc.budget),
    ];
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        Spacing.lg,
        Spacing.md,
        Spacing.lg,
        0,
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
          // 2-column grid of benefit cards — fixed height, no shrink issues
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    _BenefitCard(
                      feature: featuresWithDescs[0].$1,
                      subtitle: _resolveDesc(featuresWithDescs[0].$2, l10n),
                      label: featuresWithDescs[0].$1.localizedLabel(l10n),
                      theme: theme,
                    ),
                    const SizedBox(height: Spacing.xs),
                    _BenefitCard(
                      feature: featuresWithDescs[2].$1,
                      subtitle: _resolveDesc(featuresWithDescs[2].$2, l10n),
                      label: featuresWithDescs[2].$1.localizedLabel(l10n),
                      theme: theme,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: Spacing.xs),
              Expanded(
                child: Column(
                  children: [
                    _BenefitCard(
                      feature: featuresWithDescs[1].$1,
                      subtitle: _resolveDesc(featuresWithDescs[1].$2, l10n),
                      label: featuresWithDescs[1].$1.localizedLabel(l10n),
                      theme: theme,
                    ),
                    const SizedBox(height: Spacing.xs),
                    _BenefitCard(
                      feature: featuresWithDescs[3].$1,
                      subtitle: _resolveDesc(featuresWithDescs[3].$2, l10n),
                      label: featuresWithDescs[3].$1.localizedLabel(l10n),
                      theme: theme,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _resolveDesc(_FeatureDesc desc, AppLocalizations l10n) {
    return switch (desc) {
      _FeatureDesc.assistant => l10n.paywallBenefit1Desc,
      _FeatureDesc.unlimitedLists => l10n.paywallBenefit2Desc,
      _FeatureDesc.sharing => l10n.paywallFeatureDescSharing,
      _FeatureDesc.budget => l10n.paywallBenefit3Desc,
    };
  }

  // ---------------------------------------------------------------------------
  // Plan selector
  // ---------------------------------------------------------------------------

  Widget _buildPlans(ThemeData theme, AppLocalizations l10n) {
    if (_packages.isEmpty) {
      return const SizedBox.shrink();
    }

    final monthlyPkg = _packages.cast<PaywallPackage?>().firstWhere(
      (p) => p != null && detectPackageType(p) == PackageType.monthly,
      orElse: () => _packages.first,
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(
        Spacing.lg,
        Spacing.md,
        Spacing.lg,
        0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                detectPackageType(pkg) == PackageType.annual;
            final isMonthly =
                detectPackageType(pkg) == PackageType.monthly;

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
              child: _PlanTile(
                name: _mapPackageName(pkg, l10n),
                priceString: pkg.priceString,
                caption: isAnnual && monthlyPkg != null && monthlyPkg.identifier != pkg.identifier
                    ? l10n.paywallPricePerMonth(
                        formatCurrency(pkg.price / 12, pkg.currencyCode),
                      )
                    : (isMonthly ? l10n.paywallPackageMonthlyDesc : null),
                trialText: pkg.hasFreeTrial && pkg.trialPeriodDays != null
                    ? l10n.paywallTrialInCard(pkg.trialPeriodDays!)
                    : null,
                badgeText: badgeText.isNotEmpty ? badgeText : null,
                selected: isSelected,
                onTap: () => setState(() => _selectedPackage = pkg),
                theme: theme,
              ),
            );
          }),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // CTA + footer
  // ---------------------------------------------------------------------------

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

  Widget _buildStickyCta(ThemeData theme, AppLocalizations l10n) {
    if (_isLoading || _errorMessage != null || _packages.isEmpty) {
      return const SizedBox.shrink();
    }
    final scheme = theme.colorScheme;
    return Container(
      padding: EdgeInsets.fromLTRB(
        Spacing.lg,
        Spacing.sm,
        Spacing.lg,
        MediaQuery.of(context).padding.bottom + Spacing.sm,
      ),
      decoration: BoxDecoration(
        color: scheme.surface,
        border: Border(
          top: BorderSide(color: scheme.outlineVariant.withAlpha(90)),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Disclaimer line
          Text(
            _selectedPackage?.hasFreeTrial == true
                ? l10n.paywallTrialSubtitle
                : l10n.paywallCancelAnytime,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodySmall?.copyWith(
              color: scheme.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: Spacing.sm),
          // Primary CTA button — generous padding, primary color
          SizedBox(
            width: double.infinity,
            height: 54,
            child: FilledButton(
              onPressed: (_isPurchasing || _selectedPackage == null)
                  ? null
                  : _purchase,
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(RadiusTokens.lg),
                ),
                elevation: 0,
                padding: const EdgeInsets.symmetric(vertical: Spacing.md),
              ),
              child: _isPurchasing
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text(
                      _ctaText(l10n),
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.2,
                      ),
                    ),
            ),
          ),
          const SizedBox(height: Spacing.xs),
          // Store security line
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                PhosphorIconsRegular.lock,
                size: 13,
                color: scheme.outline,
              ),
              const SizedBox(width: Spacing.xxs),
              Flexible(
                child: Text(
                  l10n.paywallSecuredByStore,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
          // Footer actions: Restore + legal links — restore is in the footer,
          // not the AppBar, so it's discoverable without polluting the header.
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              TextButton(
                onPressed: _isPurchasing ? null : _restore,
                style: TextButton.styleFrom(
                  foregroundColor: scheme.onSurfaceVariant,
                  textStyle: theme.textTheme.labelSmall,
                  minimumSize: const Size(48, 44),
                ),
                child: Text(l10n.paywallRestore),
              ),
              TextButton(
                onPressed: () => unawaited(
                  launchUrl(
                    Uri.parse(
                      'https://kipilist-6547b.web.app/privacidade.html',
                    ),
                    mode: LaunchMode.externalApplication,
                  ),
                ),
                style: TextButton.styleFrom(
                  foregroundColor: scheme.onSurfaceVariant,
                  textStyle: theme.textTheme.labelSmall,
                  minimumSize: const Size(48, 44),
                ),
                child: Text(l10n.paywallPolicy),
              ),
              TextButton(
                onPressed: () => unawaited(
                  launchUrl(
                    Uri.parse('https://kipilist-6547b.web.app/termos.html'),
                    mode: LaunchMode.externalApplication,
                  ),
                ),
                style: TextButton.styleFrom(
                  foregroundColor: scheme.onSurfaceVariant,
                  textStyle: theme.textTheme.labelSmall,
                  minimumSize: const Size(48, 44),
                ),
                child: Text(l10n.paywallTerms),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _mapPackageName(PaywallPackage pkg, AppLocalizations l10n) {
    return switch (detectPackageType(pkg)) {
      PackageType.annual => l10n.paywallPackageAnnual,
      PackageType.monthly => l10n.paywallPackageMonthly,
      PackageType.lifetime => l10n.paywallPackageLifetime,
      _ => pkg.title,
    };
  }

  // ---------------------------------------------------------------------------
  // Root build
  // ---------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    final body = _buildBody(theme, l10n);

    if (widget.asSheet) {
      return body;
    }

    // Screen mode: AppBar has NO restore action — it lives in the footer CTA
    // area instead, making it more visible and less polluting to the header.
    return Scaffold(
      appBar: AppBar(title: Text(l10n.paywallTitle)),
      body: SafeArea(child: body),
    );
  }

  Widget _buildBody(ThemeData theme, AppLocalizations l10n) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              // Sheet drag handle + close/restore header
              if (widget.asSheet) _buildSheetHeader(theme, l10n),
              _buildHero(theme, l10n),
              _buildFreeVsPro(theme, l10n),
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
                        style: TextStyle(
                          color: theme.colorScheme.error,
                        ),
                      ),
                      const SizedBox(height: Spacing.sm),
                      FilledButton(
                        onPressed: _loadPackages,
                        child: Text(l10n.retry),
                      ),
                    ],
                  ),
                )
              else
                _buildPlans(theme, l10n),
              // Bottom spacer to clear the sticky CTA
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
        // Purchasing overlay — uses scheme.scrim for semantic dark overlay
        if (_isPurchasing)
          ColoredBox(
            color: theme.colorScheme.scrim.withAlpha(128),
            child: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
      ],
    );
  }

  Widget _buildSheetHeader(ThemeData theme, AppLocalizations l10n) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: Spacing.sm),
        Container(
          width: 32,
          height: 4,
          decoration: BoxDecoration(
            color: theme.colorScheme.onSurfaceVariant.withAlpha(77),
            borderRadius: BorderRadius.circular(RadiusTokens.bar),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(PhosphorIconsRegular.x),
                color: theme.colorScheme.onSurfaceVariant,
                iconSize: 20,
              ),
              // Restore is kept here in sheet mode for reachability at the top
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
    );
  }
}

// ---------------------------------------------------------------------------
// Internal display helpers — private to this file
// ---------------------------------------------------------------------------

/// Which subtitle text maps to which feature slot.
enum _FeatureDesc { assistant, unlimitedLists, sharing, budget }

/// Small amber "PRO" badge.
class _ProBadge extends StatelessWidget {
  const _ProBadge({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.xs, vertical: Spacing.xxs),
      decoration: BoxDecoration(
        color: AppColors.premiumAmber,
        borderRadius: BorderRadius.circular(RadiusTokens.xs),
      ),
      child: Text(
        label.toUpperCase(),
        style: const TextStyle(
          color: AppColors.onPremiumAmber,
          fontWeight: FontWeight.w800,
          fontSize: 11,
          letterSpacing: 1,
        ),
      ),
    );
  }
}

/// Small pill showing the trial period — amber fill, black text.
class _TrialPill extends StatelessWidget {
  const _TrialPill({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.xs,
        vertical: Spacing.xxs,
      ),
      decoration: BoxDecoration(
        color: AppColors.premiumAmberContainer,
        border: Border.all(color: AppColors.premiumAmber, width: 1),
        borderRadius: BorderRadius.circular(RadiusTokens.full),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: AppColors.onPremiumAmber,
          fontWeight: FontWeight.w700,
          fontSize: 10,
          letterSpacing: 0.3,
        ),
      ),
    );
  }
}

/// Star + social proof text — amber stars, muted body text.
class _SocialProofLine extends StatelessWidget {
  const _SocialProofLine({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          PhosphorIconsFill.star,
          size: 15,
          color: AppColors.premiumAmber,
        ),
        const SizedBox(width: Spacing.xxs),
        Flexible(
          child: Text(
            text,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: AppColors.onPremiumAmber.withOpacity(0.7),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

/// Lightweight Free vs Pro comparison pill.
class _ComparisonChip extends StatelessWidget {
  const _ComparisonChip({
    required this.label,
    required this.isHighlighted,
    required this.scheme,
    required this.theme,
  });

  final String label;
  final bool isHighlighted;
  final ColorScheme scheme;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.sm,
        vertical: Spacing.xs,
      ),
      decoration: BoxDecoration(
        color: isHighlighted
            ? scheme.primaryContainer.withAlpha(160)
            : scheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(RadiusTokens.md),
        border: isHighlighted
            ? Border.all(color: scheme.primary.withAlpha(80), width: 1)
            : Border.all(color: scheme.outlineVariant.withAlpha(90)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isHighlighted) ...[
            Icon(
              PhosphorIconsFill.checkCircle,
              size: 14,
              color: scheme.primary,
            ),
            const SizedBox(width: Spacing.xxs),
          ],
          Flexible(
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: isHighlighted
                    ? scheme.primary
                    : scheme.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Benefit card: icon container + bold title + 1-line subtitle.
/// Uses [surfaceContainerLow] background, [RadiusTokens.lg] corners.
class _BenefitCard extends StatelessWidget {
  const _BenefitCard({
    required this.feature,
    required this.label,
    required this.subtitle,
    required this.theme,
  });

  final PremiumFeature feature;
  final String label;
  final String subtitle;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final scheme = theme.colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(Spacing.md),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(RadiusTokens.lg),
        border: Border.all(color: scheme.outlineVariant.withAlpha(90)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon container — primary container tint, not raw color
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: scheme.primaryContainer,
              borderRadius: BorderRadius.circular(RadiusTokens.sm),
            ),
            child: Icon(
              feature.icon,
              size: 20,
              color: scheme.primary,
            ),
          ),
          const SizedBox(height: Spacing.xs),
          Text(
            label,
            style: theme.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: scheme.onSurface,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            subtitle,
            style: theme.textTheme.bodySmall?.copyWith(
              color: scheme.onSurfaceVariant,
              height: 1.3,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

/// Selectable plan row — green border when selected, amber badge for savings.
class _PlanTile extends StatelessWidget {
  const _PlanTile({
    required this.name,
    required this.priceString,
    required this.selected,
    required this.onTap,
    required this.theme,
    this.caption,
    this.trialText,
    this.badgeText,
  });

  final String name;
  final String priceString;
  final bool selected;
  final VoidCallback onTap;
  final ThemeData theme;
  final String? caption;
  final String? trialText;
  final String? badgeText;

  @override
  Widget build(BuildContext context) {
    final scheme = theme.colorScheme;
    final hasBadge = badgeText != null && badgeText!.isNotEmpty;

    return Semantics(
      selected: selected,
      button: true,
      label: name,
      child: AnimatedContainer(
        duration: DurationTokens.fast,
        curve: Curves.easeOutCubic,
        decoration: BoxDecoration(
          color: selected
              ? scheme.primaryContainer.withAlpha(70)
              : scheme.surface,
          borderRadius: BorderRadius.circular(RadiusTokens.lg),
          border: Border.all(
            color: selected ? scheme.primary : scheme.outlineVariant,
            width: selected ? 2 : 1,
          ),
          boxShadow: selected
              ? [
                  BoxShadow(
                    color: scheme.primary.withAlpha(40),
                    blurRadius: 16,
                    offset: const Offset(0, 6),
                  ),
                ]
              : null,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(RadiusTokens.lg),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Spacing.md,
                    vertical: Spacing.md,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        selected
                            ? PhosphorIconsFill.radioButton
                            : PhosphorIconsRegular.circle,
                        color: selected
                            ? scheme.primary
                            : scheme.onSurfaceVariant.withAlpha(120),
                      ),
                      const SizedBox(width: Spacing.md),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: selected
                                    ? scheme.primary
                                    : scheme.onSurface,
                              ),
                            ),
                            if (caption != null) ...[
                              const SizedBox(height: 2),
                              Text(
                                caption!,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: scheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                            if (trialText != null) ...[
                              const SizedBox(height: Spacing.xxs),
                              Text(
                                trialText!,
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: AppColors.premiumAmber,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                      const SizedBox(width: Spacing.sm),
                      Text(
                        priceString,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                          color: selected ? scheme.primary : scheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),
                if (hasBadge)
                  Positioned(
                    top: -10,
                    right: Spacing.md,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Spacing.xs,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.premiumAmber,
                        borderRadius:
                            BorderRadius.circular(RadiusTokens.full),
                      ),
                      child: Text(
                        badgeText!,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: AppColors.onPremiumAmber,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
