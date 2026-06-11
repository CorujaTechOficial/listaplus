import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../theme/tokens.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

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
  });

  final FilterType filter;
  final SortType sort;
  final bool isGrouped;
  final ValueChanged<FilterType> onFilterChanged;
  final ValueChanged<SortType> onSortChanged;
  final ValueChanged<bool> onGroupedChanged;

  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
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
        ),
        const SizedBox(width: 4),
        IconButton(
          onPressed: () {
            HapticFeedback.selectionClick();
            widget.onGroupedChanged(!widget.isGrouped);
          },
          icon: Icon(
            widget.isGrouped ? Icons.grid_view : Icons.view_agenda_outlined,
            size: 20,
            color: widget.isGrouped ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant,
          ),
          tooltip: 'Agrupar por Categoria',
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHighest.withAlpha((0.5 * 255).toInt()),
            borderRadius: BorderRadius.circular(RadiusTokens.sm),
            border: Border.all(
              color: theme.colorScheme.outlineVariant.withAlpha((0.2 * 255).toInt()),
              width: 0.5,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.sort, size: 16, color: theme.colorScheme.onSurfaceVariant),
              const SizedBox(width: 4),
              SizedBox(
                width: 120,
                child: DropdownButton<SortType>(
                  value: widget.sort,
                  underline: const SizedBox(),
                  borderRadius: BorderRadius.circular(RadiusTokens.sm),
                  isExpanded: true,
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  items: [
                    DropdownMenuItem(value: SortType.name, child: Text(l10n.sortName, overflow: TextOverflow.ellipsis)),
                    DropdownMenuItem(value: SortType.category, child: Text(l10n.sortCategory, overflow: TextOverflow.ellipsis)),
                    DropdownMenuItem(value: SortType.date, child: Text(l10n.sortDate, overflow: TextOverflow.ellipsis)),
                    DropdownMenuItem(value: SortType.manual, child: Text(l10n.sortManual, overflow: TextOverflow.ellipsis)),
                  ],
                  onChanged: (v) {
                    if (v != null) {
                      HapticFeedback.selectionClick();
                      widget.onSortChanged(v);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
