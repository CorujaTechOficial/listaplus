import 'package:flutter/material.dart';
// coverage:ignore-start
import 'package:flutter/services.dart';
import '../theme/tokens.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

enum FilterType { all, pending, purchased }

enum SortType { name, category, date, manual }

class FilterBar extends StatefulWidget {
  const FilterBar({
    super.key,
    required this.filter,
    required this.sort,
    required this.onFilterChanged,
    required this.onSortChanged,
  });

  final FilterType filter;
  final SortType sort;
  final ValueChanged<FilterType> onFilterChanged;
  final ValueChanged<SortType> onSortChanged;

  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SegmentedButton<FilterType>(
          segments: [
            ButtonSegment(
              value: FilterType.all,
              label: Text(l10n.filterAll),
              icon: const Icon(Icons.list, size: 16),
            ),
            ButtonSegment(
              value: FilterType.pending,
              label: Text(l10n.filterPending),
              icon: const Icon(Icons.pending, size: 16),
            ),
            ButtonSegment(
              value: FilterType.purchased,
              label: Text(l10n.filterPurchased),
              icon: const Icon(Icons.check_circle, size: 16),
            ),
          ],
              selected: {widget.filter},
              onSelectionChanged: (s) {
                HapticFeedback.selectionClick();
                widget.onFilterChanged(s.first);
              },
              style: SegmentedButton.styleFrom(
                visualDensity: VisualDensity.compact,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(RadiusTokens.sm),
                ),
                padding: const EdgeInsets.symmetric(horizontal: Spacing.xxs),
              ),
            ),
          ),
        ),
        const SizedBox(width: Spacing.xs),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.sm, vertical: 2),
          decoration: BoxDecoration(
            color: isDark
                ? theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.15)
                : theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(RadiusTokens.sm),
            border: Border.all(
              color: theme.colorScheme.outlineVariant.withValues(alpha: 0.2),
              width: 0.5,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.sort, size: 16, color: theme.colorScheme.onSurfaceVariant),
              const SizedBox(width: Spacing.xxs),
              DropdownButton<SortType>(
                value: widget.sort,
                underline: const SizedBox(),
                borderRadius: BorderRadius.circular(RadiusTokens.sm),
                style: theme.textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                items: [
                  DropdownMenuItem(value: SortType.name, child: Text(l10n.sortName)),
                  DropdownMenuItem(value: SortType.category, child: Text(l10n.sortCategory)),
                  DropdownMenuItem(value: SortType.date, child: Text(l10n.sortDate)),
                  DropdownMenuItem(value: SortType.manual, child: Text(l10n.sortManual)),
                ],
                onChanged: (v) {
                  if (v != null) {
                    HapticFeedback.selectionClick();
                    widget.onSortChanged(v);
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
// coverage:ignore-end
