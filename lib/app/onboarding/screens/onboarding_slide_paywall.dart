import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/settings/widgets/shared_paywall.dart';
import 'package:shopping_list/core/widgets/paywall_components.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class OnboardingSlidePaywall extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;

    return SharedPaywall(
      onPurchased: onPurchased,
      onRestored: onRestored,
      onSkip: onSkip,
      skipIfAlreadyPro: true,
      showTimeline: true,
      headerBuilder: (ctx, _, _) => Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(right: Spacing.sm),
          child: TextButton(
            onPressed: onSkip,
            style: TextButton.styleFrom(
              foregroundColor: scheme.onSurfaceVariant,
            ),
            child: Text(l10n.paywallSkipNow),
          ),
        ),
      ),
      bodyBuilder: (ctx, _) => _buildBody(ctx),
    );
  }

  Widget _buildBody(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

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
          l10n.paywallGoalHeadlineNoNameFaster,
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
            letterSpacing: -0.6,
            height: 1.15,
          ),
        ),
        const SizedBox(height: Spacing.xs),
        Text(
          l10n.paywallHeroFeatureDesc,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: scheme.onSurfaceVariant,
            height: 1.45,
          ),
        ),
        const SizedBox(height: Spacing.sm),
        PaywallRatingLine(text: l10n.paywallSocialProof),
        const SizedBox(height: Spacing.lg),
        PaywallValuePanel(
          title: l10n.paywallFeaturesTitle,
          children: [
            PaywallValueRow(
              icon: PhosphorIconsRegular.sparkle,
              text: l10n.paywallHeroFeatureTitle,
              subtitle: l10n.paywallHeroFeatureDesc,
              emphasized: true,
            ),
            PaywallValueRow(text: l10n.paywallFeatureDescUnlimitedLists),
            PaywallValueRow(text: l10n.paywallFeatureDescSharing),
            PaywallValueRow(text: l10n.paywallFeatureDescPantry),
            PaywallValueRow(
              text: l10n.paywallFeatureDescBudget,
              isLast: true,
            ),
          ],
        ),
      ],
    );
  }
}
