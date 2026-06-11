import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../theme/tokens.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import '../../../models/unit.dart';
import 'add_item_dialog.dart';
import '../../../utils/test_utils.dart';

class EmptyState extends ConsumerWidget {
  const EmptyState({
    super.key,
    this.icon,
    this.assetPath,
    this.title,
    this.subtitle,
    this.listId,
  });

  final IconData? icon;
  final String? assetPath;
  final String? title;
  final String? subtitle;
  final String? listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    final suggestions = [
      l10n.suggestionMilk,
      l10n.suggestionBread,
      l10n.suggestionEggs,
      l10n.suggestionCoffee,
      l10n.suggestionRice,
      l10n.suggestionFruits,
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
                if (assetPath != null || (icon == null && listId != null))
                  Image.asset(
                    assetPath ?? 'assets/images/kipi/kipi_helper.png',
                    width: 140,
                    height: 140,
                  ).animate(onPlay: (c) => isTestMode ? null : c.repeat(reverse: true)).moveY(
                    begin: -5,
                    end: 5,
                    duration: 2.seconds,
                    curve: Curves.easeInOut,
                  )
                else
                  Icon(
                    icon ?? Icons.shopping_cart_outlined,
                    size: 64,
                    color: theme.colorScheme.outlineVariant,
                  ).animate().scale(
                    duration: 600.ms,
                    curve: Curves.elasticOut,
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
                    l10n.quickSuggestions,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ).animate().fadeIn(delay: 400.ms),
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
                      ).animate().fadeIn(delay: (500 + entry.key * 50).ms).scale(
                        duration: 300.ms,
                        curve: Curves.easeOutBack,
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
                  ).animate().fadeIn(delay: 1.seconds).slideY(begin: 0.2, end: 0),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
