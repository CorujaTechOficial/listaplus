import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
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
  bool _showAllPlans = false;

  @override
  void initState() {
    super.initState();
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
            _selectedPackage = pkgs.firstWhere(
              (p) =>
                  p.identifier.toLowerCase().contains('annual') ||
                  p.identifier.toLowerCase().contains('ano'),
              orElse: () => pkgs.first,
            );
          }
          _isLoading = false;
        });
      }
    } on Exception {
      if (mounted) {
        setState(() {
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
      ref.invalidate(premiumProvider);
      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } on Exception catch (e) {
      unawaited(ref.read(analyticsServiceProvider).logPaywallError(e.toString()));
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
    setState(() => _isPurchasing = true);
    try {
      await ref.read(revenueCatServiceProvider).restorePurchases();
      ref.invalidate(premiumProvider);
      if (mounted) {
        Navigator.of(context).pop(true);
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

    return Stack(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.all(Spacing.lg),
          child: Column(
            children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.sm,
              vertical: Spacing.xs,
            ),
            decoration: BoxDecoration(
              color: AppColors.premiumAmber,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              l10n.onboardingAnnualBadge,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: Spacing.md),
          const Icon(
            Icons.workspace_premium,
            size: 64,
            color: AppColors.premiumAmber,
          ),
          const SizedBox(height: Spacing.sm),
          Text(
            l10n.onboardingPremiumTitle,
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: Spacing.xs),
          Text(
            l10n.onboardingPremiumSubtitle,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: Spacing.lg),
          ..._buildPlanCards(theme, l10n),
          const SizedBox(height: Spacing.lg),
          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: _selectedPackage != null ? _purchase : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                foregroundColor: theme.colorScheme.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                l10n.onboardingSubscribeCta,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: Spacing.xs),
          Text(
            l10n.onboardingCancelAnytime,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant
                  .withAlpha((0.7 * 255).toInt()),
            ),
          ),
          const SizedBox(height: Spacing.md),
          TextButton(
            onPressed: _restore,
            child: Text(
              l10n.onboardingRestore,
              style: TextStyle(
                fontSize: 12,
                color: theme.colorScheme.onSurfaceVariant,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: Spacing.sm),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => launchUrl(
                  Uri.parse(
                    'https://listaplus-6547b.web.app/privacidade.html',
                  ),
                  mode: LaunchMode.externalApplication,
                ),
                child: Text(
                  'Pol\u00edtica de Privacidade',
                  style: TextStyle(
                    fontSize: 12,
                    color: theme.colorScheme.onSurfaceVariant,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Text(
                '\u2022',
                style: TextStyle(color: theme.colorScheme.onSurfaceVariant),
              ),
              TextButton(
                onPressed: () => launchUrl(
                  Uri.parse('https://listaplus-6547b.web.app/termos.html'),
                  mode: LaunchMode.externalApplication,
                ),
                child: Text(
                  'Termos de Uso',
                  style: TextStyle(
                    fontSize: 12,
                    color: theme.colorScheme.onSurfaceVariant,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
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

  List<Widget> _buildPlanCards(ThemeData theme, AppLocalizations l10n) {
    final visible = _showAllPlans ? _packages : _packages.take(1).toList();

    return [
      ...visible.map((pkg) {
        final isSelected = _selectedPackage?.identifier == pkg.identifier;
        final isAnnual = pkg.identifier.toLowerCase().contains('annual') ||
            pkg.identifier.toLowerCase().contains('ano');

        return Padding(
          padding: const EdgeInsets.only(bottom: Spacing.sm),
          child: InkWell(
            onTap: () => setState(() => _selectedPackage = pkg),
            borderRadius: BorderRadius.circular(16),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected
                      ? theme.colorScheme.primary
                      : theme.colorScheme.outline
                          .withAlpha((0.3 * 255).toInt()),
                  width: isSelected ? 2 : 1,
                ),
                borderRadius: BorderRadius.circular(16),
                color: isSelected
                    ? theme.colorScheme.primaryContainer
                        .withAlpha((0.1 * 255).toInt())
                    : null,
              ),
              padding: const EdgeInsets.all(Spacing.md),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          isAnnual
                              ? l10n.onboardingAnnualLabel
                              : l10n.onboardingMonthlyLabel,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          pkg.description,
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
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
      if (!_showAllPlans && _packages.length > 1)
        TextButton(
          onPressed: () => setState(() => _showAllPlans = true),
          child: Text(l10n.onboardingViewAllPlans),
        ),
    ];
  }
}
