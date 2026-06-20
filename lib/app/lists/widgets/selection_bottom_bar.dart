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
    final cancelAction = TactileContainer(
      passThrough: true,
      child: TextButton.icon(
        icon: const Icon(Icons.close),
        label: Text(l10n.cancel, overflow: TextOverflow.ellipsis),
        onPressed: onCancel,
      ),
    );
    final deleteAction = TactileContainer(
      passThrough: true,
      child: TextButton.icon(
        icon: Icon(Icons.delete_outline, color: theme.colorScheme.error),
        label: Text(
          l10n.delete,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: theme.colorScheme.error),
        ),
        onPressed: onDelete,
      ),
    );
    final buyAction = TactileContainer(
      passThrough: true,
      child: FilledButton.icon(
        icon: const Icon(Icons.check),
        label: Text(l10n.buy, overflow: TextOverflow.ellipsis),
        onPressed: onBuy,
      ),
    );

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
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 380) {
              return Wrap(
                spacing: Spacing.xs,
                runSpacing: Spacing.xs,
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  cancelAction,
                  deleteAction,
                  buyAction,
                ],
              );
            }

            return Row(
              children: [
                Flexible(flex: 2, child: cancelAction),
                const SizedBox(width: Spacing.xs),
                Flexible(flex: 2, child: deleteAction),
                const Spacer(),
                Flexible(child: buyAction),
              ],
            );
          },
        ),
      ),
    );
  }
}
