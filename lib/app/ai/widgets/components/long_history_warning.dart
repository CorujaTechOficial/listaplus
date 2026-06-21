import 'package:flutter/material.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class LongHistoryWarning extends StatelessWidget {
  const LongHistoryWarning({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
        vertical: Spacing.xs,
      ),
      padding: const EdgeInsets.all(Spacing.sm),
      decoration: BoxDecoration(
        color: AppColors.premiumAmber.withAlpha((0.15 * 255).toInt()),
        borderRadius: BorderRadius.circular(RadiusTokens.md),
        border: Border.all(
          color: AppColors.premiumAmber.withAlpha((0.4 * 255).toInt()),
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.warning_amber_rounded,
            color: AppColors.premiumAmber,
          ),
          const SizedBox(width: Spacing.sm),
          Expanded(
            child: Text(
              l10n.longHistoryWarning,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
