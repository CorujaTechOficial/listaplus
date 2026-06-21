import 'package:flutter/material.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

void showExportOptionsSheet(
  BuildContext context, {
  required VoidCallback onExportPdf,
  required VoidCallback onExportExcel,
  required VoidCallback onShareText,
  required VoidCallback onCopyText,
}) {
  showModalBottomSheet<void>(
    context: context,
    useSafeArea: true,
    builder: (BuildContext sheetContext) {
      final l10n = AppLocalizations.of(sheetContext)!;
      final colorScheme = Theme.of(sheetContext).colorScheme;
      final semanticColors = AppSemanticColors.of(sheetContext);
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.picture_as_pdf, color: colorScheme.error),
            title: Text(l10n.exportPdf),
            onTap: () {
              Navigator.pop(sheetContext);
              onExportPdf();
            },
          ),
          ListTile(
            leading: Icon(Icons.table_chart, color: semanticColors.success),
            title: Text(l10n.exportExcel),
            onTap: () {
              Navigator.pop(sheetContext);
              onExportExcel();
            },
          ),
          ListTile(
            leading: Icon(Icons.share_outlined, color: colorScheme.primary),
            title: Text(l10n.share),
            subtitle: Text(l10n.shareAsText),
            onTap: () {
              Navigator.pop(sheetContext);
              onShareText();
            },
          ),
          ListTile(
            leading: Icon(Icons.copy_outlined, color: colorScheme.primary),
            title: Text(l10n.copy),
            onTap: () {
              Navigator.pop(sheetContext);
              onCopyText();
            },
          ),
        ],
      );
    },
  );
}
