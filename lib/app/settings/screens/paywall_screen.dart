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

  Widget _buildFeaturesList(ThemeData theme, AppLocalizations l10n) {
    final features = [
      (l10n.paywallFeatureUnlimitedLists, Icons.all_inclusive),
      (l10n.paywallFeatureSmartAI, Icons.auto_awesome),
      (l10n.paywallFeatureExpenseControl, Icons.bar_chart),
      (l10n.paywallFeatureSharing, Icons.group),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.paywallFeaturesTitle,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: Spacing.sm),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: features.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: Spacing.sm,
              mainAxisSpacing: Spacing.sm,
              childAspectRatio: 2.5,
            ),
            itemBuilder: (context, index) {
              final f = features[index];
              return Container(
                padding: const EdgeInsets.all(Spacing.xs),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerLow,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: theme.colorScheme.outlineVariant.withAlpha(100)),
                ),
                child: Row(
                  children: [
                    Icon(f.$2, color: theme.colorScheme.primary, size: 20),
                    const SizedBox(width: Spacing.xs),
                    Expanded(
                      child: Text(
                        f.$1,
                        style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBeforeAfter(ThemeData theme, AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.paywallBeforeAfterTitle,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: Spacing.sm),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _comparisonCard(
                  theme,
                  l10n.paywallLabelCommon,
                  Icons.sentiment_dissatisfied,
                  [
                    l10n.paywallBeforeItem1,
                    l10n.paywallBeforeItem2,
                    l10n.paywallBeforeItem3,
                    l10n.paywallBeforeItem4,
                  ],
                  theme.colorScheme.surfaceContainerHighest.withAlpha(100),
                  theme.colorScheme.outline,
                ),
              ),
              const SizedBox(width: Spacing.sm),
              Expanded(
                child: _comparisonCard(
                  theme,
                  l10n.paywallLabelPro,
                  Icons.auto_awesome,
                  [
                    l10n.paywallAfterItem1,
                    l10n.paywallAfterItem2,
                    l10n.paywallAfterItem3,
                    l10n.paywallAfterItem4,
                  ],
                  theme.colorScheme.primaryContainer.withAlpha(150),
                  theme.colorScheme.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _comparisonCard(
    ThemeData theme,
    String label,
    IconData icon,
    List<String> items,
    Color bgColor,
    Color accentColor,
  ) {
    final isPro = label == 'KipiList PRO';
    return Container(
      padding: const EdgeInsets.all(Spacing.sm),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: accentColor.withAlpha(50)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: accentColor.withAlpha(40),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 12, color: accentColor),
              ),
              const SizedBox(width: 6),
              Text(
                label,
                style: theme.textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: accentColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: Spacing.sm),
          ...items.map((item) => Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Icon(
                    isPro ? Icons.check_circle : Icons.error_outline,
                    size: 12,
                    color: isPro ? Colors.green : theme.colorScheme.error.withAlpha(150),
                  ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    item,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withAlpha(isPro ? 255 : 180),
                      fontSize: 11,
                      fontWeight: isPro ? FontWeight.w500 : null,
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget _buildTestimonials(ThemeData theme, AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.paywallTestimonialsTitle,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: Spacing.sm),
          _testimonialCard(
            theme,
            l10n.paywallTestimonial1Name,
            l10n.paywallTestimonial1Text,
          ),
          const SizedBox(height: Spacing.xs),
          _testimonialCard(
            theme,
            l10n.paywallTestimonial2Name,
            l10n.paywallTestimonial2Text,
          ),
        ],
      ),
    );
  }

  Widget _testimonialCard(ThemeData theme, String name, String text) {
    return Container(
      padding: const EdgeInsets.all(Spacing.sm),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: theme.colorScheme.outline.withAlpha((0.15 * 255).toInt()),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: theme.colorScheme.primaryContainer,
            child: Text(
              name[0],
              style: theme.textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
          const SizedBox(width: Spacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: theme.textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  text,
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

  Widget _buildPackagesList(ThemeData theme, AppLocalizations l10n) {
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
            style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: Spacing.md),
          ..._packages.map((pkg) {
            final isSelected = _selectedPackage?.identifier == pkg.identifier;
            final isAnnual = pkg.rawPackage?.packageType == PackageType.annual;
            final isMonthly = pkg.rawPackage?.packageType == PackageType.monthly;
            
            String badgeText = '';
            if (isAnnual && monthlyPkg != null && monthlyPkg.identifier != pkg.identifier) {
              final yearlyCostMonthly = monthlyPkg.price * 12;
              final savings = ((yearlyCostMonthly - pkg.price) / yearlyCostMonthly * 100).round();
              badgeText = '${l10n.paywallBestValue} - ${l10n.paywallSavePercent(savings)}';
            } else if (isMonthly) {
              badgeText = l10n.paywallMostPopular;
            }

            return Padding(
              padding: const EdgeInsets.only(bottom: Spacing.md),
              child: InkWell(
                onTap: () => setState(() => _selectedPackage = pkg),
                borderRadius: BorderRadius.circular(20),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected ? theme.colorScheme.primary : theme.colorScheme.outlineVariant,
                      width: isSelected ? 2.5 : 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: isAnnual 
                      ? (isSelected ? theme.colorScheme.primaryContainer.withAlpha(120) : theme.colorScheme.primaryContainer.withAlpha(40)) 
                      : (isSelected ? theme.colorScheme.surfaceContainerHighest : theme.colorScheme.surface),
                    boxShadow: isSelected ? [
                      BoxShadow(
                        color: theme.colorScheme.primary.withAlpha(30),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      )
                    ] : null,
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(Spacing.md),
                        child: Row(
                          children: [
                            Radio<String>(
                              value: pkg.identifier,
                              groupValue: _selectedPackage?.identifier,
                              onChanged: (val) {
                                if (val != null) {
                                  setState(() => _selectedPackage = pkg);
                                }
                              },
                              activeColor: theme.colorScheme.primary,
                              visualDensity: VisualDensity.compact,
                            ),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _mapPackageName(pkg, l10n),
                                    style: theme.textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: isSelected ? theme.colorScheme.primary : null,
                                    ),
                                  ),
                                  if (isAnnual && monthlyPkg != null && monthlyPkg.identifier != pkg.identifier)
                                    Text(
                                      l10n.paywallPricePerMonth(formatCurrency(pkg.price / 12, pkg.currencyCode)),
                                      style: theme.textTheme.bodySmall?.copyWith(
                                        color: isSelected ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant,
                                        fontWeight: isSelected ? FontWeight.bold : null,
                                      ),
                                    )
                                  else
                                    Text(
                                      pkg.description,
                                      style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                                    ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  pkg.priceString,
                                  style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
                                ),
                                if (isAnnual)
                                  Text(
                                    'Pague uma vez/ano',
                                    style: theme.textTheme.labelSmall?.copyWith(fontSize: 9, color: theme.colorScheme.outline),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      if (badgeText.isNotEmpty)
                        Positioned(
                          top: -12,
                          right: 20,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: isAnnual ? AppColors.premiumAmber : theme.colorScheme.secondary,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withAlpha(40),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                )
                              ],
                            ),
                            child: Text(
                              badgeText,
                              style: TextStyle(
                                fontSize: 10, 
                                fontWeight: FontWeight.w900, 
                                color: isAnnual ? Colors.black : theme.colorScheme.onSecondary,
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
    if (pkg.hasFreeTrial) {
      return l10n.paywallCtaTrial;
    }
    return l10n.paywallCtaUnlock;
  }

  Widget _buildStickyCta(ThemeData theme, AppLocalizations l10n) {
    if (_isLoading || _errorMessage != null || _packages.isEmpty) {
      return const SizedBox.shrink();
    }
    return Container(
      padding: EdgeInsets.fromLTRB(Spacing.lg, Spacing.sm, Spacing.lg, MediaQuery.of(context).padding.bottom + Spacing.sm),
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
            height: 56,
            child: ElevatedButton(
              onPressed: _selectedPackage != null ? _purchase : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                foregroundColor: theme.colorScheme.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                elevation: 4,
                shadowColor: theme.colorScheme.primary.withAlpha(100),
              ),
              child: Text(
                _ctaText(l10n),
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900, letterSpacing: 0.5),
              ),
            ),
          ),
          const SizedBox(height: Spacing.xs),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.security, size: 12, color: theme.colorScheme.outline),
              const SizedBox(width: 4),
              Text(
                l10n.paywallSafeCheckout,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant.withAlpha((0.7 * 255).toInt()),
                ),
              ),
            ],
          ),
          Text(
            l10n.paywallCancelAnytime,
            style: theme.textTheme.labelSmall?.copyWith(
              fontSize: 10,
              color: theme.colorScheme.outline,
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

  Widget _buildFooterLinks(ThemeData theme, AppLocalizations l10n) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            launchUrl(
              Uri.parse('https://kipilist-6547b.web.app/privacidade.html'),
              mode: LaunchMode.externalApplication,
            );
          },
          child: Text(
            l10n.paywallPolicy,
            style: TextStyle(
              fontSize: 12,
              color: theme.colorScheme.onSurfaceVariant,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        Text(
          '•',
          style: TextStyle(color: theme.colorScheme.onSurfaceVariant),
        ),
        TextButton(
          onPressed: () {
            launchUrl(
              Uri.parse('https://kipilist-6547b.web.app/termos.html'),
              mode: LaunchMode.externalApplication,
            );
          },
          child: Text(
            l10n.paywallTerms,
            style: TextStyle(
              fontSize: 12,
              color: theme.colorScheme.onSurfaceVariant,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
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
                      color: theme.colorScheme.onSurfaceVariant.withAlpha((0.3 * 255).toInt()),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
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
              const SizedBox(height: Spacing.md),
              _buildBeforeAfter(theme, l10n),
              const SizedBox(height: Spacing.lg),
              _buildFeaturesList(theme, l10n),
              const SizedBox(height: Spacing.md),
              _buildTestimonials(theme, l10n),
              const SizedBox(height: Spacing.md),
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
                      Text(_errorMessage!, style: const TextStyle(color: Colors.red)),
                      const SizedBox(height: Spacing.sm),
                      ElevatedButton(onPressed: _loadPackages, child: Text(l10n.retry)),
                    ],
                  ),
                )
              else
                _buildPackagesList(theme, l10n),
              const SizedBox(height: Spacing.xl),
              _buildFooterLinks(theme, l10n),
              SizedBox(height: MediaQuery.of(context).padding.bottom + 140),
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
