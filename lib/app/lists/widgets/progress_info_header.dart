import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/app/lists/widgets/filter_bar.dart';
import 'package:shopping_list/core/theme/tokens.dart';
import 'package:shopping_list/core/utils/formatters.dart';

class ProgressInfoHeader extends StatelessWidget implements PreferredSizeWidget {
  const ProgressInfoHeader({
    super.key,
    required this.purchasedCount,
    required this.totalItems,
    required this.totalEstimated,
    required this.totalPurchased,
    required this.progress,
    required this.budget,
    required this.overBudget,
    required this.budgetProgress,
    required this.filter,
    required this.sortLabel,
    required this.currencyCode,
    required this.onFilterChanged,
    required this.onSortPressed,
  });

  final int purchasedCount;
  final int totalItems;
  final double totalEstimated;
  final double totalPurchased;
  final double progress;
  final double budget;
  final bool overBudget;
  final double budgetProgress;
  final FilterType filter;
  final String sortLabel;
  final String currencyCode;
  final ValueChanged<FilterType> onFilterChanged;
  final VoidCallback onSortPressed;

  @override
  Size get preferredSize => Size.fromHeight(budget > 0 ? 160 : 120);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return Container(
      color: theme.colorScheme.surface,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.progressItemsOf(purchasedCount, totalItems),
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                        if (budget > 0)
                          Text(
                            l10n.progressBudget(formatCurrency(budget, currencyCode)),
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: overBudget
                                  ? theme.colorScheme.error
                                  : theme.colorScheme.outline,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          formatCurrency(totalPurchased, currencyCode),
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: overBudget
                                ? theme.colorScheme.error
                                : theme.colorScheme.primary,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          l10n.progressTotal(formatCurrency(totalEstimated, currencyCode)),
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: theme.colorScheme.outline,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(RadiusTokens.full),
                  child: LinearProgressIndicator(
                    value: progress,
                    minHeight: 6,
                    backgroundColor: theme.colorScheme.surfaceContainerHighest,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
                  ),
                ),
                if (budget > 0) ...[
                  const SizedBox(height: 4),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(RadiusTokens.full),
                    child: LinearProgressIndicator(
                      value: budgetProgress > 1.0 ? 1.0 : budgetProgress,
                      minHeight: 6,
                      backgroundColor: theme.colorScheme.surfaceContainerHighest,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        overBudget
                            ? theme.colorScheme.error
                            : Colors.orange,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                FilterChip(
                  label: Text(l10n.filterAll),
                  selected: filter == FilterType.all,
                  onSelected: (_) => onFilterChanged(FilterType.all),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(RadiusTokens.full),
                  ),
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: Text(l10n.filterPending),
                  selected: filter == FilterType.pending,
                  onSelected: (_) => onFilterChanged(FilterType.pending),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(RadiusTokens.full),
                  ),
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: Text(l10n.filterPurchased),
                  selected: filter == FilterType.purchased,
                  onSelected: (_) => onFilterChanged(FilterType.purchased),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(RadiusTokens.full),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  width: 1,
                  height: 24,
                  color: theme.colorScheme.outlineVariant,
                ),
                const SizedBox(width: 12),
                ActionChip(
                  avatar: const Icon(Icons.sort, size: 16),
                  label: Text(sortLabel),
                  onPressed: onSortPressed,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(RadiusTokens.full),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
