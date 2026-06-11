import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

void showExportOptionsSheet(
  BuildContext context, {
  required VoidCallback onExportPdf,
  required VoidCallback onExportExcel,
}) {
  final l10n = AppLocalizations.of(context)!;
  showModalBottomSheet<void>(
    context: context,
    builder: (context) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.picture_as_pdf, color: Colors.red),
            title: Text(l10n.exportPdf),
            onTap: () {
              Navigator.pop(context);
              onExportPdf();
            },
          ),
          ListTile(
            leading: const Icon(Icons.table_chart, color: Colors.green),
            title: Text(l10n.exportExcel),
            onTap: () {
              Navigator.pop(context);
              onExportExcel();
            },
          ),
        ],
      ),
    ),
  );
}
