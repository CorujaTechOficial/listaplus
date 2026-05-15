import 'package:flutter/material.dart';

enum FilterType { all, pending, purchased }
enum SortType { name, category, date }

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
    return Row(
      children: [
        SegmentedButton<FilterType>(
          segments: const [
            ButtonSegment(value: FilterType.all, label: Text('Todos')),
            ButtonSegment(value: FilterType.pending, label: Text('Pendentes')),
            ButtonSegment(value: FilterType.purchased, label: Text('Comprados')),
          ],
          selected: {widget.filter},
          onSelectionChanged: (s) => widget.onFilterChanged(s.first),
        ),
        const Spacer(),
        DropdownButton<SortType>(
          value: widget.sort,
          items: const [
            DropdownMenuItem(value: SortType.name, child: Text('Nome')),
            DropdownMenuItem(value: SortType.category, child: Text('Categoria')),
            DropdownMenuItem(value: SortType.date, child: Text('Data')),
          ],
          onChanged: (v) => v != null ? widget.onSortChanged(v) : null,
        ),
      ],
    );
  }
}
