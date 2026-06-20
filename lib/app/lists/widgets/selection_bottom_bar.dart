import 'package:flutter/material.dart';
import 'package:shopping_list/app/shared/widgets/tactile_container.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class SelectionBottomBar extends StatelessWidget {
  const SelectionBottomBar({
    super.key,
    required this.onCancel,
    required this.onDelete,
    required this.onBuy,
  });

  final VoidCallback onCancel;
  final VoidCallback onDelete;
  final VoidCallback onBuy;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return SafeArea(
      top: false,
      child: Container(
        key: const ValueKey('list_bottom_action_shell'),
        padding: const EdgeInsets.fromLTRB(
          Spacing.md,
          Spacing.xs,
          Spacing.md,
          Spacing.sm,
        ),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          border: Border(
            top: BorderSide(
              color: theme.colorScheme.outlineVariant.withAlpha(90),
            ),
          ),
        ),
        child: Row(
          children: [
            TactileContainer(
              passThrough: true,
              child: TextButton.icon(
                icon: const Icon(Icons.close),
                label: Text(l10n.cancel),
                onPressed: onCancel,
              ),
            ),
            const SizedBox(width: Spacing.xs),
            TactileContainer(
              passThrough: true,
              child: TextButton.icon(
                icon: Icon(
                  Icons.delete_outline,
                  color: theme.colorScheme.error,
                ),
                label: Text(
                  l10n.delete,
                  style: TextStyle(color: theme.colorScheme.error),
                ),
                onPressed: onDelete,
              ),
            ),
            const Spacer(),
            TactileContainer(
              passThrough: true,
              child: FilledButton.icon(
                icon: const Icon(Icons.check),
                label: Text(l10n.buy),
                onPressed: onBuy,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
