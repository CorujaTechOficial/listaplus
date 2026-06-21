import 'package:flutter/material.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ShoppingCompletionView extends StatelessWidget {
  const ShoppingCompletionView({
    super.key,
    required this.onExitShoppingMode,
    required this.itemCount,
    required this.isPremium,
    required this.onUpgrade,
  });

  final VoidCallback onExitShoppingMode;
  final int itemCount;
  final bool isPremium;
  final VoidCallback onUpgrade;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            PhosphorIconsRegular.checkCircle,
            size: 80,
            color: AppSemanticColors.of(context).success,
          ),
          const SizedBox(height: Spacing.md),
          Text(
            l10n.everythingReady,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            l10n.youCompletedList,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          if (!isPremium) ...[
            const SizedBox(height: Spacing.lg),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: Spacing.lg),
              child: Padding(
                padding: const EdgeInsets.all(Spacing.md),
                child: Column(
                  children: [
                    Text(
                      '${l10n.everythingReady} ${l10n.progressItemsOf(itemCount, itemCount)}',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: Spacing.xs),
                    Text(
                      l10n.unlockPremiumTitle,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: Spacing.sm),
                    FilledButton.tonal(
                      onPressed: onUpgrade,
                      child: Text(l10n.becomePremium),
                    ),
                  ],
                ),
              ),
            ),
          ],
          const SizedBox(height: Spacing.lg),
          FilledButton(
            onPressed: onExitShoppingMode,
            child: Text(l10n.exitShoppingMode),
          ),
        ],
      ),
    );
  }
}
