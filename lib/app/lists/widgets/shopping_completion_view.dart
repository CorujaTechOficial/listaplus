import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class ShoppingCompletionView extends StatelessWidget {
  const ShoppingCompletionView({
    super.key,
    required this.onExitShoppingMode,
  });

  final VoidCallback onExitShoppingMode;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.check_circle_outline, size: 80, color: Colors.green),
          const SizedBox(height: 16),
          Text(
            l10n.everythingReady,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            l10n.youCompletedList,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: onExitShoppingMode,
            child: Text(l10n.exitShoppingMode),
          ),
        ],
      ),
    );
  }
}
