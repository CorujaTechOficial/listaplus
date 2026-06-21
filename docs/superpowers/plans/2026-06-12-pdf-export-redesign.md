# PDF Export Redesign Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace the plain linear PDF export with a polished document: colored header, budget summary, items grouped by category with zebra striping, purchased items struck through, and a totals footer.

**Architecture:** Single inline refactor of `_exportPdf` in `list_screen_body.dart`. Method signature gains `ShoppingList?` and `List<CategoryData>` params (already available at call site). Uses `pw.MultiPage` with flat widget list for correct pagination. Row-based column layout instead of `pw.Table` for full zebra/category-separator control.

**Tech Stack:** `pdf: ^3.11.3`, `printing: ^5.13.2` (already in pubspec). No new dependencies.

---

## Files

- **Modify:** `lib/app/lists/list_screen_body.dart`
  - Add `import 'package:pdf/pdf.dart';`
  - Update `_exportPdf` call site (line ~367) to pass `currentList` and `categories`
  - Replace `_exportPdf` method body (lines 636–676)

---

## Task 1: Add `package:pdf/pdf.dart` import

**Files:**
- Modify: `lib/app/lists/list_screen_body.dart`

- [ ] **Step 1: Add the import after the existing pdf import (line 9)**

The file already has:
```dart
import 'package:pdf/widgets.dart' as pw;
```

Add immediately after it:
```dart
import 'package:pdf/pdf.dart';
```

- [ ] **Step 2: Verify no analysis errors**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && flutter analyze lib/app/lists/list_screen_body.dart
```

Expected: `No issues found!`

---

## Task 2: Update call site and method signature

**Files:**
- Modify: `lib/app/lists/list_screen_body.dart`

- [ ] **Step 1: Update the `onExportPdf` call site**

Find (around line 367):
```dart
onExportPdf: () => _exportPdf(items),
```

Replace with:
```dart
onExportPdf: () => _exportPdf(items, currentList, categories),
```

Both `currentList` and `categories` are already in scope — `currentList` is declared at line ~210, `categories` at line ~211 in the `build` method.

- [ ] **Step 2: Verify no analysis errors**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && flutter analyze lib/app/lists/list_screen_body.dart
```

Expected: error about `_exportPdf` signature mismatch (because we haven't updated the method yet — this is expected at this step).

---

## Task 3: Replace `_exportPdf` method body

**Files:**
- Modify: `lib/app/lists/list_screen_body.dart`

- [ ] **Step 1: Replace the entire `_exportPdf` method**

Find and replace the entire method from `Future<void> _exportPdf(List<ShoppingItem> items) async {` through its closing `}` (lines 636–676) with:

```dart
Future<void> _exportPdf(
  List<ShoppingItem> items,
  ShoppingList? currentList,
  List<CategoryData> categories,
) async {
  final l10n = AppLocalizations.of(context)!;
  final currencyCode = ref.read(currencySettingProvider).value ?? 'BRL';
  final listName = (currentList?.name.trim().isNotEmpty ?? false)
      ? currentList!.name.trim()
      : l10n.shareListText;
  final budget = currentList?.budget ?? 0.0;
  final categoriesMap = {for (final c in categories) c.id: c.name};

  final pending = items.where((i) => !i.isPurchased).toList();
  final purchased = items.where((i) => i.isPurchased).toList();

  final totalEstimated = items.fold<double>(
      0, (sum, i) => sum + (i.estimatedPrice ?? 0) * i.quantity);
  final totalPurchased = purchased.fold<double>(
      0, (sum, i) => sum + (i.estimatedPrice ?? 0) * i.quantity);

  final primaryColor = PdfColor.fromHex('#388E3C');
  final headerBg = PdfColor.fromHex('#F5F5F5');
  final zebraColor = PdfColor.fromHex('#FAFAFA');
  final categoryBg = PdfColor.fromHex('#E8F5E9');
  final mutedText = PdfColor.fromHex('#9E9E9E');
  final dividerColor = PdfColor.fromHex('#E0E0E0');
  final darkText = PdfColor.fromHex('#424242');

  pw.Widget buildTableHeader() => pw.Container(
        color: headerBg,
        padding: const pw.EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: pw.Row(
          children: [
            pw.SizedBox(width: 16),
            pw.Expanded(
              flex: 4,
              child: pw.Text('ITEM',
                  style: pw.TextStyle(
                      fontSize: 9,
                      fontWeight: pw.FontWeight.bold,
                      color: darkText)),
            ),
            pw.SizedBox(
              width: 60,
              child: pw.Text('QTD',
                  textAlign: pw.TextAlign.center,
                  style: pw.TextStyle(
                      fontSize: 9,
                      fontWeight: pw.FontWeight.bold,
                      color: darkText)),
            ),
            pw.SizedBox(
              width: 70,
              child: pw.Text('PREÇO EST.',
                  textAlign: pw.TextAlign.right,
                  style: pw.TextStyle(
                      fontSize: 9,
                      fontWeight: pw.FontWeight.bold,
                      color: darkText)),
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
      rows.add(pw.Container(
        color: categoryBg,
        padding: const pw.EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: pw.Text(
          catName.toUpperCase(),
          style: pw.TextStyle(
              fontSize: 8,
              fontWeight: pw.FontWeight.bold,
              color: primaryColor),
        ),
      ));
      for (final item in entry.value) {
        final bg = rowIndex.isEven ? zebraColor : PdfColors.white;
        rowIndex++;
        rows.add(pw.Container(
          color: bg,
          padding: const pw.EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: pw.Row(
            children: [
              pw.SizedBox(
                width: 16,
                child: pw.Text(
                  item.isPurchased ? '☑' : '☐',
                  style:
                      pw.TextStyle(color: muted ? mutedText : PdfColors.black),
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
                      color: muted ? mutedText : PdfColors.black),
                ),
              ),
              pw.SizedBox(
                width: 70,
                child: pw.Text(
                  item.estimatedPrice != null
                      ? formatCurrency(
                          item.estimatedPrice! * item.quantity, currencyCode)
                      : '—',
                  textAlign: pw.TextAlign.right,
                  style: pw.TextStyle(
                      fontSize: 10,
                      color: muted ? mutedText : PdfColors.black),
                ),
              ),
            ],
          ),
        ));
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
      margin: const pw.EdgeInsets.all(32),
      build: (context) => [
        pw.Container(
          decoration: pw.BoxDecoration(
            color: primaryColor,
            borderRadius: pw.BorderRadius.circular(8),
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
                    color: PdfColors.white),
              ),
              pw.SizedBox(height: 4),
              pw.Text(
                '$exportDate  ·  ${items.length} itens  ·  ${purchased.length} comprados',
                style: pw.TextStyle(fontSize: 10, color: PdfColors.white),
              ),
            ],
          ),
        ),
        pw.SizedBox(height: 12),
        if (budget > 0) ...[
          pw.Container(
            decoration: pw.BoxDecoration(
              border: pw.Border.all(color: dividerColor),
              borderRadius: pw.BorderRadius.circular(6),
            ),
            padding:
                const pw.EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                    'Orçamento: ${formatCurrency(budget, currencyCode)}',
                    style: pw.TextStyle(fontSize: 10)),
                pw.Text(
                  'Gasto: ${formatCurrency(totalPurchased, currencyCode)}',
                  style: pw.TextStyle(
                    fontSize: 10,
                    fontWeight: pw.FontWeight.bold,
                    color: totalPurchased > budget
                        ? PdfColors.red
                        : primaryColor,
                  ),
                ),
                pw.Text(
                    'Saldo: ${formatCurrency(budget - totalPurchased, currencyCode)}',
                    style: pw.TextStyle(fontSize: 10)),
              ],
            ),
          ),
          pw.SizedBox(height: 12),
        ],
        if (pending.isNotEmpty) ...[
          pw.Text(
            'PENDENTES (${pending.length})',
            style:
                pw.TextStyle(fontSize: 11, fontWeight: pw.FontWeight.bold),
          ),
          pw.SizedBox(height: 6),
          buildTableHeader(),
          ...buildItemRows(pending, false),
          pw.SizedBox(height: 16),
        ],
        if (purchased.isNotEmpty) ...[
          pw.Text(
            'COMPRADOS (${purchased.length})',
            style: pw.TextStyle(
                fontSize: 11,
                fontWeight: pw.FontWeight.bold,
                color: mutedText),
          ),
          pw.SizedBox(height: 6),
          buildTableHeader(),
          ...buildItemRows(purchased, true),
          pw.SizedBox(height: 16),
        ],
        pw.Divider(),
        pw.SizedBox(height: 4),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text(
              'Total estimado: ${formatCurrency(totalEstimated, currencyCode)}',
              style: pw.TextStyle(
                  fontSize: 10, fontWeight: pw.FontWeight.bold),
            ),
            pw.Text(
              'Total comprado: ${formatCurrency(totalPurchased, currencyCode)}',
              style: pw.TextStyle(
                  fontSize: 10, fontWeight: pw.FontWeight.bold),
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
```

- [ ] **Step 2: Run static analysis**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && flutter analyze lib/app/lists/list_screen_body.dart
```

Expected: `No issues found!`

- [ ] **Step 3: Commit**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && git add lib/app/lists/list_screen_body.dart && git commit -m "feat: redesign PDF export with styled header, categories and totals"
```

---

## Task 4: Manual test

- [ ] **Step 1: Run the app**

```bash
cd "/Users/absondutragalvao/corujatech projetos/shopping_list" && flutter run
```

- [ ] **Step 2: Test scenario A — list with items and no budget**

1. Open any list with at least 3 items across 2+ categories
2. Tap `⋮` → Export → PDF
3. Verify: green header with list name + date, items grouped by category with grey category rows, zebra striping, totals footer

- [ ] **Step 3: Test scenario B — list with budget set**

1. Set a budget via `⋮` → Budget
2. Export PDF
3. Verify: budget row appears between header and items with Orçamento / Gasto / Saldo
4. Spend more than budget and export again — verify "Gasto" text turns red

- [ ] **Step 4: Test scenario C — mixed purchased/pending**

1. Mark some items as purchased
2. Export PDF
3. Verify: PENDENTES section with checkboxes, COMPRADOS section with grey struck-through text

- [ ] **Step 5: Test scenario D — empty purchased or pending**

1. Export when all items are pending (no purchased) — verify COMPRADOS section absent
2. Export when all items are purchased — verify PENDENTES section absent
