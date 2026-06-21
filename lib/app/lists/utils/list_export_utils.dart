import 'dart:io';
import 'package:excel/excel.dart' as ex;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/models/category_data.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/shopping_list.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/utils/snack_bar_utils.dart';

Future<void> exportPdf({
  required BuildContext context,
  required List<ShoppingItem> items,
  required ShoppingList? currentList,
  required List<CategoryData> categories,
  required String currencyCode,
}) async {
  final l10n = AppLocalizations.of(context)!;
  final listName =
      (currentList?.name.trim().isNotEmpty ?? false)
          ? currentList!.name.trim()
          : l10n.shareListText;
  final budget = currentList?.budget ?? 0.0;
  final categoriesMap = {
    for (final c in categories) c.id: c.localizedName(l10n),
  };

  final pending = items.where((i) => !i.isPurchased).toList();
  final purchased = items.where((i) => i.isPurchased).toList();

  final totalEstimated = items.fold<double>(
    0,
    (sum, i) => sum + (i.estimatedPrice ?? 0) * i.quantity,
  );
  final totalPurchased = purchased.fold<double>(
    0,
    (sum, i) => sum + (i.estimatedPrice ?? 0) * i.quantity,
  );

  final primaryColor = PdfColor.fromHex('#388E3C');
  final headerBg = PdfColor.fromHex('#F5F5F5');
  final zebraColor = PdfColor.fromHex('#FAFAFA');
  final categoryBg = PdfColor.fromHex('#E8F5E9');
  final mutedText = PdfColor.fromHex('#9E9E9E');
  final dividerColor = PdfColor.fromHex('#E0E0E0');
  final darkText = PdfColor.fromHex('#424242');

  pw.Widget buildTableHeader() => pw.Container(
    color: headerBg,
    padding: const pw.EdgeInsets.symmetric(
      horizontal: Spacing.xs,
      vertical: 6,
    ),
    child: pw.Row(
      children: [
        pw.SizedBox(width: Spacing.md),
        pw.Expanded(
          flex: 4,
          child: pw.Text(
            'ITEM',
            style: pw.TextStyle(
              fontSize: 9,
              fontWeight: pw.FontWeight.bold,
              color: darkText,
            ),
          ),
        ),
        pw.SizedBox(
          width: 60,
          child: pw.Text(
            'QTD',
            textAlign: pw.TextAlign.center,
            style: pw.TextStyle(
              fontSize: 9,
              fontWeight: pw.FontWeight.bold,
              color: darkText,
            ),
          ),
        ),
        pw.SizedBox(
          width: 70,
          child: pw.Text(
            'PREÇO EST.',
            textAlign: pw.TextAlign.right,
            style: pw.TextStyle(
              fontSize: 9,
              fontWeight: pw.FontWeight.bold,
              color: darkText,
            ),
          ),
        ),
      ],
    ),
  );

  List<pw.Widget> buildItemRows(List<ShoppingItem> list, bool muted) {
    final grouped = <String, List<ShoppingItem>>{};
    for (final item in list) {
      (grouped[item.categoryId] ??= []).add(item);
    }
    final rows = <pw.Widget>[];
    var rowIndex = 0;
    for (final entry in grouped.entries) {
      final catName = categoriesMap[entry.key] ?? entry.key;
      rows.add(
        pw.Container(
          color: categoryBg,
          padding: const pw.EdgeInsets.symmetric(
            horizontal: Spacing.xs,
            vertical: Spacing.xxs,
          ),
          child: pw.Text(
            catName.toUpperCase(),
            style: pw.TextStyle(
              fontSize: 8,
              fontWeight: pw.FontWeight.bold,
              color: primaryColor,
            ),
          ),
        ),
      );
      for (final item in entry.value) {
        final bg = rowIndex.isEven ? zebraColor : PdfColors.white;
        rowIndex++;
        rows.add(
          pw.Container(
            color: bg,
            padding: const pw.EdgeInsets.symmetric(
              horizontal: Spacing.xs,
              vertical: 5,
            ),
            child: pw.Row(
              children: [
                pw.SizedBox(
                  width: 16,
                  child: pw.Text(
                    item.isPurchased ? '☑' : '☐',
                    style: pw.TextStyle(
                      color: muted ? mutedText : PdfColors.black,
                    ),
                  ),
                ),
                pw.Expanded(
                  flex: 4,
                  child: pw.Text(
                    item.name,
                    style: pw.TextStyle(
                      fontSize: 10,
                      color: muted ? mutedText : PdfColors.black,
                      decoration:
                          muted ? pw.TextDecoration.lineThrough : null,
                    ),
                  ),
                ),
                pw.SizedBox(
                  width: 60,
                  child: pw.Text(
                    '${item.quantity} ${item.unit.label}',
                    textAlign: pw.TextAlign.center,
                    style: pw.TextStyle(
                      fontSize: 10,
                      color: muted ? mutedText : PdfColors.black,
                    ),
                  ),
                ),
                pw.SizedBox(
                  width: 70,
                  child: pw.Text(
                    item.estimatedPrice != null
                        ? formatCurrency(
                          item.estimatedPrice! * item.quantity,
                          currencyCode,
                        )
                        : '—',
                    textAlign: pw.TextAlign.right,
                    style: pw.TextStyle(
                      fontSize: 10,
                      color: muted ? mutedText : PdfColors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }
    return rows;
  }

  final now = DateTime.now();
  final exportDate =
      '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year} '
      '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';

  final pdf = pw.Document();
  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin: const pw.EdgeInsets.all(Spacing.xl),
      build:
          (context) => [
            pw.Container(
              decoration: pw.BoxDecoration(
                color: primaryColor,
                borderRadius: pw.BorderRadius.circular(RadiusTokens.sm),
              ),
              padding: const pw.EdgeInsets.all(20),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    listName,
                    style: pw.TextStyle(
                      fontSize: 22,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColors.white,
                    ),
                  ),
                  pw.SizedBox(height: Spacing.xxs),
                  pw.Text(
                    '$exportDate  ·  ${items.length} itens  ·  ${purchased.length} comprados',
                    style: const pw.TextStyle(
                      fontSize: 10,
                      color: PdfColors.white,
                    ),
                  ),
                ],
              ),
            ),
            pw.SizedBox(height: Spacing.sm),
            if (budget > 0) ...[
              pw.Container(
                decoration: pw.BoxDecoration(
                  border: pw.Border.all(color: dividerColor),
                  borderRadius: pw.BorderRadius.circular(RadiusTokens.xs),
                ),
                padding: const pw.EdgeInsets.symmetric(
                  horizontal: Spacing.md,
                  vertical: 10,
                ),
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text(
                      'Orçamento: ${formatCurrency(budget, currencyCode)}',
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                    pw.Text(
                      'Gasto: ${formatCurrency(totalPurchased, currencyCode)}',
                      style: pw.TextStyle(
                        fontSize: 10,
                        fontWeight: pw.FontWeight.bold,
                        color:
                            totalPurchased > budget
                                ? PdfColors.red
                                : primaryColor,
                      ),
                    ),
                    pw.Text(
                      'Saldo: ${formatCurrency(budget - totalPurchased, currencyCode)}',
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              pw.SizedBox(height: Spacing.sm),
            ],
            if (pending.isNotEmpty) ...[
              pw.Text(
                'PENDENTES (${pending.length})',
                style: pw.TextStyle(
                  fontSize: 11,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 6),
              buildTableHeader(),
              ...buildItemRows(pending, false),
              pw.SizedBox(height: Spacing.md),
            ],
            if (purchased.isNotEmpty) ...[
              pw.Text(
                'COMPRADOS (${purchased.length})',
                style: pw.TextStyle(
                  fontSize: 11,
                  fontWeight: pw.FontWeight.bold,
                  color: mutedText,
                ),
              ),
              pw.SizedBox(height: 6),
              buildTableHeader(),
              ...buildItemRows(purchased, true),
              pw.SizedBox(height: Spacing.md),
            ],
            pw.Divider(),
            pw.SizedBox(height: Spacing.xxs),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  'Total estimado: ${formatCurrency(totalEstimated, currencyCode)}',
                  style: pw.TextStyle(
                    fontSize: 10,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.Text(
                  'Total comprado: ${formatCurrency(totalPurchased, currencyCode)}',
                  style: pw.TextStyle(
                    fontSize: 10,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              ],
            ),
            pw.SizedBox(height: 6),
            pw.Center(
              child: pw.Text(
                'Gerado por Kipi List',
                style: pw.TextStyle(fontSize: 8, color: mutedText),
              ),
            ),
          ],
    ),
  );

  await Printing.layoutPdf(onLayout: (format) => pdf.save());
}

Future<void> exportExcel({
  required BuildContext context,
  required List<ShoppingItem> items,
}) async {
  final l10n = AppLocalizations.of(context)!;
  final excel = ex.Excel.createExcel();
  final sheet = excel['Shopping List'];
  sheet.appendRow([
    ex.TextCellValue('Item'),
    ex.TextCellValue('Qtd'),
    ex.TextCellValue('Unidade'),
    ex.TextCellValue('Preço Est.'),
    ex.TextCellValue('Comprado'),
  ]);
  for (final item in items) {
    sheet.appendRow([
      ex.TextCellValue(item.name),
      ex.IntCellValue(item.quantity),
      ex.TextCellValue(item.unit.name),
      ex.DoubleCellValue(item.estimatedPrice ?? 0),
      ex.TextCellValue(item.isPurchased ? l10n.yesLabel : l10n.noLabel),
    ]);
  }
  final bytes = excel.encode();
  if (bytes != null) {
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/lista_compras.xlsx');
    await file.writeAsBytes(bytes);
    await SharePlus.instance.share(
      ShareParams(files: [XFile(file.path)], text: l10n.shareListText),
    );
  }
}

String formatItemsAsText({
  required BuildContext context,
  required List<ShoppingItem> items,
  required String? listName,
}) {
  final l10n = AppLocalizations.of(context)!;
  final title =
      listName?.trim().isNotEmpty == true
          ? listName!.trim()
          : l10n.shareListText;
  final lines = items
      .map((item) {
        final checkbox = item.isPurchased ? '☑' : '☐';
        return '$checkbox ${item.name} - ${item.quantity}${item.unit.label}';
      })
      .join('\n');
  return '$title\n\n$lines\n\n${l10n.shareReferralText('https://kipilist-6547b.web.app')}';
}

Future<void> shareItemsAsText({
  required BuildContext context,
  required List<ShoppingItem> items,
  required String? listName,
}) async {
  final l10n = AppLocalizations.of(context)!;
  await SharePlus.instance.share(
    ShareParams(
      text: formatItemsAsText(context: context, items: items, listName: listName),
      subject: listName ?? l10n.shareSubject,
    ),
  );
}

Future<void> copyItemsAsText({
  required BuildContext context,
  required List<ShoppingItem> items,
  required String? listName,
}) async {
  final l10n = AppLocalizations.of(context)!;
  await Clipboard.setData(
    ClipboardData(
      text: formatItemsAsText(context: context, items: items, listName: listName),
    ),
  );
  if (context.mounted) {
    showKipiSnackBar(
      context,
      message: l10n.copiedToClipboard,
      type: SnackBarType.info,
    );
  }
}
