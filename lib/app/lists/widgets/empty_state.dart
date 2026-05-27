import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// coverage:ignore-start
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../theme/tokens.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import '../../../models/unit.dart';
import 'add_item_dialog.dart';

class EmptyState extends ConsumerWidget {
  const EmptyState({
    super.key,
    this.icon,
    this.title,
    this.subtitle,
    this.listId,
  });

  final IconData? icon;
  final String? title;
  final String? subtitle;
  final String? listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    final suggestions = [
      'Leite', 'Pão', 'Ovos', 'Frutas', 'Café', 'Arroz'
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight.isFinite ? constraints.maxHeight : 0,
            ),
            padding: const EdgeInsets.symmetric(horizontal: Spacing.xl, vertical: Spacing.xxl),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon ?? Icons.shopping_cart_outlined,
                  size: 64,
                  color: theme.colorScheme.outlineVariant,
                ),
                const SizedBox(height: Spacing.lg),
                Text(
                  title ?? l10n.emptyListTitle,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Spacing.xs),
                Text(
                  subtitle ?? l10n.emptyListSubtitle,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
                
                if (title == null && listId != null) ...[
                  const SizedBox(height: Spacing.xxl),
                  Text(
                    'Sugestões rápidas',
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: Spacing.md),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    alignment: WrapAlignment.center,
                    children: suggestions.asMap().entries.map((entry) {
                      return ActionChip(
                        label: Text(entry.value),
                        onPressed: () {
                          HapticFeedback.lightImpact();
                          ref.read(shoppingListItemsProvider(listId!).notifier).addItem(
                            listId: listId!,
                            name: entry.value,
                            quantity: 1,
                            categoryId: 'others',
                            unit: Unit.un,
                          );
                        },
                        backgroundColor: theme.colorScheme.surfaceContainerLow,
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(RadiusTokens.full),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: Spacing.xxl),
                  FilledButton.tonalIcon(
                    onPressed: () {
                      HapticFeedback.mediumImpact();
                      showDialog<void>(
                        context: context,
                        builder: (context) => AddItemDialog(listId: listId!),
                      );
                    },
                    icon: const Icon(Icons.add),
                    label: Text(l10n.addItem),
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
// coverage:ignore-end
