import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/widgets/paywall_components.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/logger_service.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/core/utils/snack_bar_utils.dart';
import 'package:url_launcher/url_launcher.dart';

import 'paywall_utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

typedef PaywallHeaderBuilder = Widget Function(
  BuildContext context,
  AppLocalizations l10n,
  VoidCallback onRestore,
);

typedef PaywallBodyBuilder = Widget Function(
  BuildContext context,
  AppLocalizations l10n,
);

typedef PaywallPackageNameBuilder = String Function(
  PaywallPackage pkg,
  AppLocalizations l10n,
);

typedef PaywallBadgeTextBuilder = String? Function(
  PaywallPackage pkg,
  bool isAnnual,
  int? savingsPercent,
  AppLocalizations l10n,
);

typedef PaywallFooterActionsBuilder = List<Widget> Function(
  BuildContext context,
  AppLocalizations l10n,
);

class SharedPaywall extends ConsumerStatefulWidget {
  const SharedPaywall({
    super.key,
    required this.onPurchased,
    required this.onRestored,
    this.onSkip,
    this.onUnavailableContinue,
    this.headerBuilder,
    this.bodyBuilder,
    this.packageNameBuilder,
    this.badgeTextBuilder,
    this.footerActionsBuilder,
    this.showPurchasingOverlay = false,
    this.skipIfAlreadyPro = true,
    this.showTimeline = false,
  });

  final VoidCallback onPurchased;
  final VoidCallback onRestored;
  final VoidCallback? onSkip;
  final VoidCallback? onUnavailableContinue;
  final PaywallHeaderBuilder? headerBuilder;
  final PaywallBodyBuilder? bodyBuilder;
  final PaywallPackageNameBuilder? packageNameBuilder;
  final PaywallBadgeTextBuilder? badgeTextBuilder;
  final PaywallFooterActionsBuilder? footerActionsBuilder;
  final bool showPurchasingOverlay;
  final bool skipIfAlreadyPro;
  final bool showTimeline;

  @override
  ConsumerState<SharedPaywall> createState() => SharedPaywallState();
}

class SharedPaywallState extends ConsumerState<SharedPaywall> {
  bool _isLoading = true;
  bool _isPurchasing = false;
  bool _loadFailed = false;
  bool _unavailable = false;
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

  bool get isPurchasing => _isPurchasing;

  Future<void> restorePurchases() => _restore();

  Future<void> purchaseSelected() => _purchase();

  Future<void> _loadPackages({int attempt = 0}) async {
    setState(() {
      _isLoading = true;
      _loadFailed = false;
      _unavailable = false;
    });
    try {
      final revenueCat = ref.read(revenueCatServiceProvider);
      if (!revenueCat.isAvailable) {
        if (!mounted) return;
        if (widget.onSkip != null) {
          unawaited(
            ref
                .read(analyticsServiceProvider)
                .logEvent(name: 'paywall_unavailable_skipped'),
          );
          widget.onSkip!();
          return;
        }
        setState(() {
          _isLoading = false;
          _unavailable = true;
        });
        return;
      }

      if (widget.skipIfAlreadyPro) {
        final alreadyPro = await revenueCat.isEntitlementActive(
          kipiListProEntitlement,
        );
        if (alreadyPro) {
          if (!mounted) return;
          widget.onRestored();
          return;
        }
      }

      final pkgs = await revenueCat.getPaywallPackages().timeout(
        const Duration(seconds: 15),
      );
      if (!mounted) return;

      setState(() {
        _packages = pkgs;
        _selectedPackage = pickDefaultPackage(pkgs);
        _isLoading = false;
        _loadFailed = pkgs.isEmpty;
      });

      if (_loadFailed && attempt < 2) {
        final delay = switch (attempt) {
          0 => const Duration(seconds: 2),
          1 => const Duration(seconds: 5),
          _ => const Duration(seconds: 2),
        };
        await Future<void>.delayed(delay);
        if (mounted) {
          unawaited(_loadPackages(attempt: attempt + 1));
        }
        return;
      }
      if (_loadFailed) {
        LoggerService.log(
          'Paywall: offerings empty after $attempt attempts',
          tag: 'Paywall',
        );
        unawaited(
          ref
              .read(analyticsServiceProvider)
              .logEvent(name: 'paywall_blocked_retry'),
        );
      }
    } on Exception catch (e) {
      if (!mounted) return;
      LoggerService.log(
        'Paywall: load error (attempt $attempt): $e',
        tag: 'Paywall',
      );
      if (attempt < 2) {
        final delay = switch (attempt) {
          0 => const Duration(seconds: 2),
          1 => const Duration(seconds: 5),
          _ => const Duration(seconds: 2),
        };
        await Future<void>.delayed(delay);
        if (mounted) {
          unawaited(_loadPackages(attempt: attempt + 1));
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

  Future<void> _purchase() async {
    final pkg = _selectedPackage;
    if (pkg == null || _isPurchasing) return;

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
              .logEvent(name: 'paywall_purchase_cancelled'),
        );
      } else if (errorCode == PurchasesErrorCode.paymentPendingError) {
        unawaited(
          ref
              .read(analyticsServiceProvider)
              .logEvent(name: 'paywall_purchase_pending'),
        );
        if (mounted) {
          setState(() => _isPurchasing = false);
          showKipiSnackBar(
            context,
            message: AppLocalizations.of(context)!.paywallPurchasePending,
            type: SnackBarType.info,
          );
        }
        return;
      } else {
        unawaited(
          ref
              .read(analyticsServiceProvider)
              .logPaywallError(e.toString()),
        );
        if (mounted) {
          showKipiSnackBar(
            context,
            message: AppLocalizations.of(context)!.purchaseError,
            type: SnackBarType.error,
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
        showKipiSnackBar(
          context,
          message: AppLocalizations.of(context)!.purchaseError,
          type: SnackBarType.error,
        );
      }
    }
  }

  Future<void> _restore() async {
    if (_isPurchasing) return;
    setState(() => _isPurchasing = true);

    try {
      await ref.read(revenueCatServiceProvider).restorePurchases();
      final isPro = await ref
          .read(revenueCatServiceProvider)
          .isEntitlementActive(kipiListProEntitlement);
      if (!isPro) {
        if (mounted) {
          setState(() => _isPurchasing = false);
          showKipiSnackBar(
            context,
            message: AppLocalizations.of(context)!.restoreError,
            type: SnackBarType.error,
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
        showKipiSnackBar(
          context,
          message: AppLocalizations.of(context)!.restoreError,
          type: SnackBarType.error,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const _LoadingSkeleton();
    }
    if (_loadFailed) {
      return _buildErrorWithHeader();
    }
    if (_unavailable) {
      return _buildUnavailable();
    }

    return _buildContent();
  }

  Widget _buildErrorWithHeader() {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        if (widget.headerBuilder != null)
          widget.headerBuilder!(context, l10n, _restore),
        Expanded(
          child: _RetryView(onRetry: _loadPackages),
        ),
      ],
    );
  }

  Widget _buildUnavailable() {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              l10n.paywallContinueFree,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: Spacing.md),
            if (widget.onUnavailableContinue != null)
              FilledButton(
                onPressed: widget.onUnavailableContinue,
                child: Text(l10n.paywallContinueFree),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final selected = _selectedPackage;
    final hasTrial =
        widget.showTimeline && (selected?.hasFreeTrial ?? false);
    final savingsPercent = annualSavingsPercent(_packages);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (widget.headerBuilder != null)
          widget.headerBuilder!(context, l10n, _restore),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.bodyBuilder != null)
                  widget.bodyBuilder!(context, l10n),
                if (hasTrial) ...[
                  const SizedBox(height: Spacing.lg),
                  _buildTimeline(l10n, selected!.trialPeriodDays!),
                ],
                const SizedBox(height: Spacing.lg),
                _buildSelectPlanLabel(theme, scheme, l10n),
                const SizedBox(height: Spacing.sm),
                for (final pkg in _packages)
                  Padding(
                    padding: const EdgeInsets.only(bottom: Spacing.sm),
                    child: _buildPlanTile(
                      l10n,
                      pkg,
                      selected,
                      savingsPercent,
                    ),
                  ),
                const SizedBox(height: Spacing.md),
              ],
            ),
          ),
        ),
        _buildFooter(theme, scheme, l10n, selected, hasTrial),
      ],
    );
  }

  Widget _buildSelectPlanLabel(
    ThemeData theme,
    ColorScheme scheme,
    AppLocalizations l10n,
  ) {
    return Text(
      l10n.paywallSelectPlan.toUpperCase(),
      style: theme.textTheme.labelSmall?.copyWith(
        color: scheme.onSurfaceVariant,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.8,
      ),
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

  Widget _buildPlanTile(
    AppLocalizations l10n,
    PaywallPackage pkg,
    PaywallPackage? selected,
    int? savingsPercent,
  ) {
    final isAnnual = detectPackageType(pkg) == PackageType.annual;
    final perMonth = perMonthString(pkg);

    final name = widget.packageNameBuilder?.call(pkg, l10n) ??
        cleanPackageTitle(pkg.title);

    String? badgeText;
    if (isAnnual) {
      if (widget.badgeTextBuilder != null) {
        badgeText = widget.badgeTextBuilder!(
          pkg,
          true,
          savingsPercent,
          l10n,
        );
      }
      badgeText ??=
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
      name: name,
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
            billing: _billingDisclosure(l10n, selected),
          ),
          const SizedBox(height: Spacing.sm),
          SizedBox(
            width: double.infinity,
            height: 54,
            child: FilledButton(
              onPressed: (_isPurchasing || selected == null) ? null : _purchase,
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(RadiusTokens.lg),
                ),
                elevation: 0,
              ),
              child:
                  _isPurchasing && !widget.showPurchasingOverlay
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
          if (widget.footerActionsBuilder != null)
            ...widget.footerActionsBuilder!(context, l10n)
          else
            _buildDefaultActions(l10n, scheme, theme),
        ],
      ),
    );
  }

  String _billingDisclosure(AppLocalizations l10n, PaywallPackage? pkg) {
    if (pkg == null) {
      return l10n.paywallCancelAnytime;
    }
    final isAnnual = detectPackageType(pkg) == PackageType.annual;
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

  Widget _buildDefaultActions(
    AppLocalizations l10n,
    ColorScheme scheme,
    ThemeData theme,
  ) {
    return Wrap(
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
    );
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
              PhosphorIconsRegular.cloudSlash,
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
