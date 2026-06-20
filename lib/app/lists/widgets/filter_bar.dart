import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

enum FilterType { all, pending, purchased }

enum SortType { name, category, date, manual }

class FilterBar extends StatefulWidget {
  const FilterBar({
    super.key,
    required this.filter,
    required this.sort,
    required this.isGrouped,
    required this.onFilterChanged,
    required this.onSortChanged,
    required this.onGroupedChanged,
    this.sortLabelOverride,
  });

  final FilterType filter;
  final SortType sort;
  final bool isGrouped;
  final ValueChanged<FilterType> onFilterChanged;
  final ValueChanged<SortType> onSortChanged;
  final ValueChanged<bool> onGroupedChanged;
  final String? sortLabelOverride;

  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SegmentedButton<FilterType>(
          segments: [
            ButtonSegment(
              value: FilterType.all,
              label: Text(AppLocalizations.of(context)!.filterAll),
              icon: const Icon(Icons.list, size: 16),
            ),
            ButtonSegment(
              value: FilterType.pending,
              label: Text(AppLocalizations.of(context)!.filterPending),
              icon: const Icon(Icons.pending, size: 16),
            ),
            ButtonSegment(
              value: FilterType.purchased,
              label: Text(AppLocalizations.of(context)!.filterPurchased),
              icon: const Icon(Icons.check_circle, size: 16),
            ),
          ],
          selected: {widget.filter},
          onSelectionChanged: (Set<FilterType> selected) {
            HapticFeedback.selectionClick();
            widget.onFilterChanged(selected.first);
          },
          showSelectedIcon: false,
          style: const ButtonStyle(
            visualDensity: VisualDensity.compact,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        const SizedBox(height: Spacing.xs),
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () {
                  HapticFeedback.selectionClick();
                  widget.onSortChanged(widget.sort);
                },
                icon: const Icon(Icons.sort, size: 18),
                label: Text(
                  widget.sortLabelOverride ?? _sortLabel(context, widget.sort),
                ),
                style: OutlinedButton.styleFrom(
                  foregroundColor: theme.colorScheme.onSurface,
                  padding: const EdgeInsets.symmetric(
                    horizontal: Spacing.sm,
                    vertical: Spacing.sm,
                  ),
                ),
              ),
            ),
            const SizedBox(width: Spacing.xs),
            IconButton.filledTonal(
              onPressed: () {
                HapticFeedback.selectionClick();
                widget.onGroupedChanged(!widget.isGrouped);
              },
              icon: Icon(
                widget.isGrouped ? Icons.grid_view : Icons.view_agenda_outlined,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

String _sortLabel(BuildContext context, SortType sort) {
  final l10n = AppLocalizations.of(context)!;
  switch (sort) {
    case SortType.name:
      return l10n.sortName;
    case SortType.category:
      return l10n.sortCategory;
    case SortType.date:
      return l10n.sortDate;
    case SortType.manual:
      return l10n.sortManual;
  }
}
