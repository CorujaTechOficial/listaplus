import 'package:flutter/material.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class GestureHintBanner extends StatelessWidget {
  const GestureHintBanner({super.key, required this.onDismiss});

  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Spacing.sm,
        vertical: Spacing.xxs,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withAlpha(120),
        borderRadius: BorderRadius.circular(RadiusTokens.lg),
        border: Border.all(
          color: theme.colorScheme.primary.withAlpha(60),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.sm,
          vertical: Spacing.sm,
        ),
        child: Row(
          children: [
            Icon(
              PhosphorIconsRegular.handPointing,
              size: 18,
              color: theme.colorScheme.onPrimaryContainer,
            ),
            const SizedBox(width: Spacing.xs),
            Expanded(
              child: Text(
                l10n.gestureHint,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ),
            const SizedBox(width: Spacing.xs),
            GestureDetector(
              onTap: onDismiss,
              child: Icon(
                PhosphorIconsRegular.x,
                size: 18,
                color: theme.colorScheme.onPrimaryContainer.withAlpha(140),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
