import 'package:flutter/material.dart';
// coverage:ignore-start
import 'package:flutter/services.dart';
import '../theme/tokens.dart';

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
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SegmentedButton<FilterType>(
              segments: const [
                ButtonSegment(
                  value: FilterType.all,
                  label: Text('Todos'),
                  icon: Icon(Icons.list, size: 16),
                ),
                ButtonSegment(
                  value: FilterType.pending,
                  label: Text('Pendentes'),
                  icon: Icon(Icons.pending, size: 16),
                ),
                ButtonSegment(
                  value: FilterType.purchased,
                  label: Text('Comprados'),
                  icon: Icon(Icons.check_circle, size: 16),
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
                items: const [
                  DropdownMenuItem(value: SortType.name, child: Text('Nome')),
                  DropdownMenuItem(value: SortType.category, child: Text('Categoria')),
                  DropdownMenuItem(value: SortType.date, child: Text('Data')),
                  DropdownMenuItem(value: SortType.manual, child: Text('Manual')),
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
