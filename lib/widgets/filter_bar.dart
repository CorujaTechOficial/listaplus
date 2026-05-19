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
    final isDark = theme.brightness == Brightness.dark;
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _FilterChip(
                  label: l10n.filterAll,
                  icon: Icons.list,
                  selected: widget.filter == FilterType.all,
                  onTap: () {
                    HapticFeedback.selectionClick();
                    widget.onFilterChanged(FilterType.all);
                  },
                  theme: theme,
                ),
                const SizedBox(width: Spacing.xs),
                _FilterChip(
                  label: l10n.filterPending,
                  icon: Icons.pending,
                  selected: widget.filter == FilterType.pending,
                  onTap: () {
                    HapticFeedback.selectionClick();
                    widget.onFilterChanged(FilterType.pending);
                  },
                  theme: theme,
                ),
                const SizedBox(width: Spacing.xs),
                _FilterChip(
                  label: l10n.filterPurchased,
                  icon: Icons.check_circle,
                  selected: widget.filter == FilterType.purchased,
                  onTap: () {
                    HapticFeedback.selectionClick();
                    widget.onFilterChanged(FilterType.purchased);
                  },
                  theme: theme,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: Spacing.xs),
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

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
    required this.theme,
  });

  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(RadiusTokens.full),
        child: AnimatedContainer(
          duration: DurationTokens.fast,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: selected
                ? theme.colorScheme.secondaryContainer
                : Colors.transparent,
            borderRadius: BorderRadius.circular(RadiusTokens.full),
            border: Border.all(
              color: selected
                  ? theme.colorScheme.secondary.withValues(alpha: 0.5)
                  : theme.colorScheme.outlineVariant,
              width: 1,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 16,
                color: selected
                    ? theme.colorScheme.onSecondaryContainer
                    : theme.colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: 4),
              Text(
                label,
                style: theme.textTheme.labelMedium?.copyWith(
                  fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                  color: selected
                      ? theme.colorScheme.onSecondaryContainer
                      : theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// coverage:ignore-end
