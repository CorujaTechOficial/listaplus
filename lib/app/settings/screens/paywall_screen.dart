// coverage:ignore-start
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:url_launcher/url_launcher.dart';

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
      final pkgs = await ref.read(revenueCatServiceProvider).getPaywallPackages();
      if (mounted) {
        setState(() {
          _packages = pkgs;
          // Priority: Annual > Monthly > First available
          if (pkgs.isNotEmpty) {
            _selectedPackage = pkgs.cast<PaywallPackage?>().firstWhere(
                  (p) => p?.rawPackage?.packageType == PackageType.annual,
                  orElse: () => pkgs.cast<PaywallPackage?>().firstWhere(
                        (p) => p?.rawPackage?.packageType == PackageType.monthly,
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
      unawaited(ref.read(analyticsServiceProvider).logPaywallPurchaseCompleted());
      
      // Invalidate and wait for the new state to propagate
      ref.invalidate(premiumProvider);
      await ref.read(premiumProvider.future);
      
      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } on PlatformException catch (e) {
      unawaited(ref.read(analyticsServiceProvider).logPaywallError(e.toString()));
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
      unawaited(ref.read(analyticsServiceProvider).logPaywallError(e.toString()));
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
      unawaited(ref.read(analyticsServiceProvider).logPaywallRestoreCompleted());
      
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
      unawaited(ref.read(analyticsServiceProvider).logPaywallError(e.toString()));
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

    final body = _buildBody(theme, l10n);

    if (widget.asSheet) {
      return body;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.paywallTitle),
        actions: [
          TextButton(
            onPressed: _restore,
            child: Text(l10n.paywallRestore),
          ),
        ],
      ),
      body: SafeArea(child: body),
    );
  }

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
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.close),
                        color: theme.colorScheme.onSurfaceVariant,
                        iconSize: 20,
                      ),
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
}

// coverage:ignore-end
