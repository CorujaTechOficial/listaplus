import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/widgets/paywall_components.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/models/premium_feature.dart';
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
  bool _paywallUnavailable = false;
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
      final revenueCat = ref.read(revenueCatServiceProvider);
      if (!revenueCat.isAvailable) {
        if (mounted) {
          setState(() {
            _packages = [];
            _selectedPackage = null;
            _paywallUnavailable = true;
            _isLoading = false;
            _errorMessage = null;
          });
        }
        return;
      }

      final pkgs = await revenueCat.getPaywallPackages();
      if (mounted) {
        setState(() {
          _packages = pkgs;
          _paywallUnavailable = false;
          // Priority: Annual > Monthly > First available
          if (pkgs.isNotEmpty) {
            _selectedPackage = pkgs.cast<PaywallPackage?>().firstWhere(
              (p) => p != null && _packageType(p) == PackageType.annual,
              orElse:
                  () => pkgs.cast<PaywallPackage?>().firstWhere(
                    (p) => p != null && _packageType(p) == PackageType.monthly,
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

  PaywallPackage? _packageOfType(PackageType type) {
    for (final pkg in _packages) {
      if (_packageType(pkg) == type) {
        return pkg;
      }
    }
    return null;
  }

  PackageType? _packageType(PaywallPackage pkg) {
    final rawType = pkg.rawPackage?.packageType;
    if (rawType != null) {
      return rawType;
    }

    final fingerprint = '${pkg.identifier} ${pkg.title}'.toLowerCase();
    if (fingerprint.contains('annual') || fingerprint.contains('year')) {
      return PackageType.annual;
    }
    if (fingerprint.contains('monthly') || fingerprint.contains('month')) {
      return PackageType.monthly;
    }
    if (fingerprint.contains('lifetime')) {
      return PackageType.lifetime;
    }
    return null;
  }

  int? _annualSavingsPercent() {
    final monthlyPkg = _packageOfType(PackageType.monthly);
    final annualPkg = _packageOfType(PackageType.annual);
    if (monthlyPkg == null || annualPkg == null || monthlyPkg.price <= 0) {
      return null;
    }
    final yearlyMonthlyCost = monthlyPkg.price * 12;
    if (annualPkg.price >= yearlyMonthlyCost) {
      return null;
    }
    return ((yearlyMonthlyCost - annualPkg.price) / yearlyMonthlyCost * 100)
        .round();
  }

  String _billingDisclosure(AppLocalizations l10n, PaywallPackage? pkg) {
    if (pkg == null) {
      return l10n.paywallCancelAnytime;
    }
    final isAnnual = _packageType(pkg) == PackageType.annual;
    if (pkg.hasFreeTrial && pkg.trialPeriodDays != null) {
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

  String? _perMonthString(PaywallPackage pkg) {
    if (_packageType(pkg) != PackageType.annual || pkg.price <= 0) {
      return null;
    }
    return formatCurrency(pkg.price / 12, pkg.currencyCode);
  }

  Widget _buildHero(ThemeData theme, AppLocalizations l10n) {
    final scheme = theme.colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        Spacing.lg,
        Spacing.lg,
        Spacing.lg,
        Spacing.xs,
      ),
      child: Column(
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
            l10n.paywallHeroHeadline,
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w800,
              color: scheme.onSurface,
              letterSpacing: -0.6,
              height: 1.15,
            ),
          ),
          const SizedBox(height: Spacing.xs),
          Text(
            l10n.paywallHeroSubtitle,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: scheme.onSurfaceVariant,
              height: 1.45,
            ),
          ),
          const SizedBox(height: Spacing.sm),
          PaywallRatingLine(text: l10n.paywallSocialProof),
        ],
      ),
    );
  }

  Widget _buildBenefits(ThemeData theme, AppLocalizations l10n) {
    const features = PremiumFeature.values;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.lg,
        vertical: Spacing.sm,
      ),
      child: PaywallValuePanel(
        title: l10n.paywallFeaturesTitle,
        children: [
          for (int i = 0; i < features.length; i++)
            PaywallValueRow(
              icon: features[i].icon,
              text: features[i].localizedLabel(l10n),
              isLast: i == features.length - 1,
            ),
        ],
      ),
    );
  }

  Widget _buildPlans(ThemeData theme, AppLocalizations l10n) {
    if (_packages.isEmpty) {
      return const SizedBox.shrink();
    }

    final monthlyPkg = _packageOfType(PackageType.monthly) ?? _packages.first;
    final annualSavings = _annualSavingsPercent();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: Spacing.sm),
            child: Text(
              l10n.paywallSelectPlan.toUpperCase(),
              style: theme.textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: theme.colorScheme.onSurfaceVariant,
                letterSpacing: 0.8,
              ),
            ),
          ),
          ..._packages.map((pkg) {
            final isSelected = _selectedPackage?.identifier == pkg.identifier;
            final packageType = _packageType(pkg);
            final isAnnual = packageType == PackageType.annual;
            final isMonthly = packageType == PackageType.monthly;
            final isComparableAnnual =
                isAnnual && monthlyPkg.identifier != pkg.identifier;

            String? badgeText;
            if (isComparableAnnual && annualSavings != null) {
              badgeText =
                  '${l10n.paywallMostPopular} · ${l10n.paywallSavePercent(annualSavings)}';
            }

            String? caption;
            if (isComparableAnnual) {
              caption = l10n.paywallPricePerMonth(
                _perMonthString(pkg) ?? pkg.priceString,
              );
            } else if (isMonthly) {
              caption = l10n.paywallPackageMonthlyDesc;
            }

            String? trialText;
            if (isAnnual && pkg.hasFreeTrial && pkg.trialPeriodDays != null) {
              trialText = l10n.paywallTrialInCard(pkg.trialPeriodDays!);
            }

            return Padding(
              padding: const EdgeInsets.only(bottom: Spacing.sm),
              child: PaywallPlanTile(
                name: _mapPackageName(pkg, l10n),
                priceString: pkg.priceString,
                caption: caption,
                trialText: trialText,
                badgeText: badgeText,
                selected: isSelected,
                onTap: () => setState(() => _selectedPackage = pkg),
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
      return l10n.paywallTrialCta;
    }
    return l10n.paywallCtaUnlock;
  }

  Widget _buildStickyCta(ThemeData theme, AppLocalizations l10n) {
    if (_isLoading ||
        _errorMessage != null ||
        _packages.isEmpty ||
        _paywallUnavailable) {
      return const SizedBox.shrink();
    }
    final selected = _selectedPackage;
    final scheme = theme.colorScheme;
    return Container(
      padding: EdgeInsets.fromLTRB(
        Spacing.lg,
        Spacing.md,
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
          PaywallTrustLines(
            disclaimer:
                (selected?.hasFreeTrial ?? false)
                    ? l10n.paywallTrialDisclaimer
                    : l10n.paywallCancelAnytime,
            billing: _billingDisclosure(l10n, selected),
          ),
          const SizedBox(height: Spacing.sm),
          SizedBox(
            width: double.infinity,
            height: 54,
            child: FilledButton(
              onPressed: _selectedPackage != null ? _purchase : null,
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(RadiusTokens.lg),
                ),
                elevation: 0,
              ),
              child: Text(
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
          PaywallSecuredLine(text: l10n.paywallSecuredByStore),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              TextButton(
                onPressed:
                    () => launchUrl(
                      Uri.parse(
                        'https://kipilist-6547b.web.app/privacidade.html',
                      ),
                      mode: LaunchMode.externalApplication,
                    ),
                style: TextButton.styleFrom(
                  minimumSize: const Size(48, 44),
                  foregroundColor: scheme.onSurfaceVariant,
                  textStyle: theme.textTheme.labelSmall,
                ),
                child: Text(l10n.paywallPolicy),
              ),
              Text('·', style: TextStyle(color: scheme.outline)),
              TextButton(
                onPressed:
                    () => launchUrl(
                      Uri.parse('https://kipilist-6547b.web.app/termos.html'),
                      mode: LaunchMode.externalApplication,
                    ),
                style: TextButton.styleFrom(
                  minimumSize: const Size(48, 44),
                  foregroundColor: scheme.onSurfaceVariant,
                  textStyle: theme.textTheme.labelSmall,
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
    return switch (_packageType(pkg)) {
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
          TextButton(onPressed: _restore, child: Text(l10n.paywallRestore)),
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
                      color: theme.colorScheme.onSurfaceVariant.withAlpha(
                        (0.3 * 255).toInt(),
                      ),
                      borderRadius: BorderRadius.circular(RadiusTokens.bar),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
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
              else if (_paywallUnavailable)
                Padding(
                  padding: const EdgeInsets.all(Spacing.lg),
                  child: Column(
                    children: [
                      Text(
                        l10n.paywallContinueFree,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge,
                      ),
                      const SizedBox(height: Spacing.md),
                      FilledButton(
                        onPressed: () => Navigator.of(context).maybePop(),
                        child: Text(l10n.paywallContinueFree),
                      ),
                    ],
                  ),
                )
              else if (_errorMessage != null)
                Padding(
                  padding: const EdgeInsets.all(Spacing.lg),
                  child: Column(
                    children: [
                      Text(
                        _errorMessage!,
                        style: TextStyle(color: theme.colorScheme.error),
                      ),
                      const SizedBox(height: Spacing.sm),
                      OutlinedButton(
                        onPressed: _loadPackages,
                        child: Text(l10n.retry),
                      ),
                    ],
                  ),
                )
              else
                _buildPlans(theme, l10n),
              SizedBox(height: MediaQuery.of(context).padding.bottom + 240),
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
