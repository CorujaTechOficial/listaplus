import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class SelectionBottomBar extends StatelessWidget {
  const SelectionBottomBar({
    super.key,
    required this.onCancel,
    required this.onDelete,
  });

  final VoidCallback onCancel;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
            icon: const Icon(Icons.close),
            label: Text(l10n.cancel),
            onPressed: onCancel,
          ),
          TextButton.icon(
            icon: const Icon(Icons.delete_outline, color: Colors.red),
            label: Text(l10n.delete, style: const TextStyle(color: Colors.red)),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}
