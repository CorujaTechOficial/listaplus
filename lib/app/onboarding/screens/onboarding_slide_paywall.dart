import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:url_launcher/url_launcher.dart';

class OnboardingSlidePaywall extends ConsumerStatefulWidget {
  const OnboardingSlidePaywall({
    super.key,
    required this.onPurchased,
    required this.onRestored,
  });

  final VoidCallback onPurchased;
  final VoidCallback onRestored;

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

  Future<void> _loadPackages() async {
    setState(() {
      _isLoading = true;
      _loadFailed = false;
    });
    try {
      final alreadyPro = await ref
          .read(revenueCatServiceProvider)
          .isEntitlementActive(kipiListProEntitlement);
      if (alreadyPro) {
        widget.onRestored();
        return;
      }
      final pkgs = await ref
          .read(revenueCatServiceProvider)
          .getPaywallPackages()
          .timeout(const Duration(seconds: 15));
      if (!mounted) {
        return;
      }
      setState(() {
        _packages = pkgs;
        _selectedPackage = _pickDefaultPackage(pkgs);
        _isLoading = false;
        _loadFailed = pkgs.isEmpty;
      });
      if (_loadFailed) {
        unawaited(
          ref
              .read(analyticsServiceProvider)
              .logEvent(name: 'paywall_blocked_retry'),
        );
      }
    } on Exception {
      if (mounted) {
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
  }

  /// Preselects annual if available; falls back to monthly; then first.
  PaywallPackage? _pickDefaultPackage(List<PaywallPackage> pkgs) {
    if (pkgs.isEmpty) {
      return null;
    }
    return pkgs.cast<PaywallPackage?>().firstWhere(
          (p) => p?.rawPackage?.packageType == PackageType.annual,
          orElse: () => pkgs.cast<PaywallPackage?>().firstWhere(
                (p) => p?.rawPackage?.packageType == PackageType.monthly,
                orElse: () => pkgs.first,
              ),
        );
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
          SnackBar(
            content: Text(AppLocalizations.of(context)!.purchaseError),
          ),
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
            SnackBar(
              content: Text(AppLocalizations.of(context)!.restoreError),
            ),
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
          SnackBar(
            content: Text(AppLocalizations.of(context)!.restoreError),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    if (_isLoading) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }
    if (_loadFailed) {
      return _RetryView(onRetry: _loadPackages);
    }

    final selected = _selectedPackage;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Spacing.lg),
            Text(
              l10n.obPaywallTitle,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: Spacing.lg),
            for (final pkg in _packages) ...[
              _PackageTile(
                package: pkg,
                selected: pkg.identifier == selected?.identifier,
                onTap: () => setState(() => _selectedPackage = pkg),
              ),
              const SizedBox(height: Spacing.sm),
            ],
            const Spacer(),
            Text(
              _billingDisclosure(l10n),
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: Spacing.sm),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: _isPurchasing ? null : _purchase,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: Spacing.md),
                ),
                child: _isPurchasing
                    ? const SizedBox(
                        width: 22,
                        height: 22,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Text(
                        (selected?.hasFreeTrial ?? false)
                            ? l10n.paywallTrialCta
                            : l10n.paywallCtaUnlock,
                      ),
              ),
            ),
            const SizedBox(height: Spacing.xs),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _isPurchasing ? null : _restore,
                  child: Text(l10n.paywallRestore),
                ),
                TextButton(
                  onPressed: () =>
                      unawaited(launchUrl(Uri.parse(_termsUrl))),
                  child: Text(l10n.paywallTerms),
                ),
                TextButton(
                  onPressed: () =>
                      unawaited(launchUrl(Uri.parse(_privacyUrl))),
                  child: Text(l10n.paywallPolicy),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _billingDisclosure(AppLocalizations l10n) {
    final pkg = _selectedPackage;
    if (pkg == null) {
      return l10n.paywallCancelAnytime;
    }
    final isAnnual = pkg.rawPackage?.packageType == PackageType.annual;
    if (pkg.hasFreeTrial) {
      return isAnnual
          ? l10n.paywallTrialDisclosureAnnual(pkg.trialPeriodDays!, pkg.priceString)
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

class _PackageTile extends StatelessWidget {
  const _PackageTile({
    required this.package,
    required this.selected,
    required this.onTap,
  });

  final PaywallPackage package;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: selected ? scheme.primaryContainer : scheme.surfaceContainerHighest,
      borderRadius: BorderRadius.circular(RadiusTokens.lg),
      child: InkWell(
        borderRadius: BorderRadius.circular(RadiusTokens.lg),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(Spacing.md),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(RadiusTokens.lg),
            border: Border.all(
              color: selected ? scheme.primary : Colors.transparent,
              width: 2,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      package.title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      package.priceString,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              if (selected)
                Icon(Icons.check_circle_rounded, color: scheme.primary),
            ],
          ),
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
            FilledButton(
              onPressed: onRetry,
              child: Text(l10n.obPaywallRetry),
            ),
          ],
        ),
      ),
    );
  }
}
