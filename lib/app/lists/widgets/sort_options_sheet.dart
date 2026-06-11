import 'package:flutter/material.dart';
import 'package:shopping_list/app/lists/widgets/filter_bar.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

void showSortOptionsSheet(
  BuildContext context, {
  required SortType currentSort,
  required ValueChanged<SortType> onSortChanged,
}) {
  final l10n = AppLocalizations.of(context)!;
  showModalBottomSheet<void>(
    context: context,
    builder: (context) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.sort_by_alpha),
            title: Text(l10n.sortName),
            selected: currentSort == SortType.name,
            onTap: () {
              onSortChanged(SortType.name);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.category_outlined),
            title: Text(l10n.sortCategory),
            selected: currentSort == SortType.category,
            onTap: () {
              onSortChanged(SortType.category);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today_outlined),
            title: Text(l10n.sortDate),
            selected: currentSort == SortType.date,
            onTap: () {
              onSortChanged(SortType.date);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.drag_indicator),
            title: Text(l10n.sortManual),
            selected: currentSort == SortType.manual,
            onTap: () {
              onSortChanged(SortType.manual);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
  );
}
