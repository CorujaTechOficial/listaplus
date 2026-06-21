# PDF Export Redesign

**Date:** 2026-06-12
**Status:** Approved
**Scope:** `lib/app/lists/list_screen_body.dart` — `_exportPdf` method only

---

## Goal

Transform the current plain PDF export into a polished document that serves three use cases: personal use (take to the store), family review (check purchased vs. pending), and expense tracking (budget vs. spent).

---

## Approach

Inline refactor of `_exportPdf` in `list_screen_body.dart`. No new files. Extract a clean method body that builds a `pw.Document` using structured layout components.

---

## Method Signature Change

```dart
// Before
Future<void> _exportPdf(List<ShoppingItem> items)

// After
Future<void> _exportPdf(
  List<ShoppingItem> items,
  ShoppingList? currentList,
  List<CategoryData> categories,
)
```

Call site update (inside `showExportOptionsSheet` callback):
```dart
onExportPdf: () => _exportPdf(items, currentList, categories),
```

---

## New Imports

```dart
import 'package:pdf/pdf.dart';
import 'package:intl/intl.dart';
```

---

## PDF Layout (A4, 32pt margins, pw.MultiPage)

### 1. Header Block
- Background: `#388E3C` (green), rounded corners 8pt
- List name: white, bold, 22pt
- Subtitle: date (dd/MM/yyyy HH:mm) · total items · purchased count, white, 10pt

### 2. Budget Row (conditional — only if `budget > 0`)
- Bordered container, 3 columns: Orçamento / Gasto / Saldo
- "Gasto" text turns red if `totalPurchased > budget`, green otherwise

### 3. Pending Section
- Label: "PENDENTES (N)" bold 11pt
- Bordered container with:
  - Table header row: background `#F5F5F5`, columns ITEM / QTD / PREÇO EST.
  - Items grouped by category:
    - Category separator row: background `#E8F5E9`, category name uppercase, green 8pt bold
    - Item rows: zebra (`#FAFAFA` / white), checkbox + name + `qty item.unit.label` + price

### 4. Purchased Section
- Label: "COMPRADOS (M)" bold 11pt, color `#9E9E9E`
- Same table structure but:
  - Item text color: `#9E9E9E`
  - Item name has `TextDecoration.lineThrough`

### 5. Footer
- Divider
- Row: "Total estimado: R$ X" | "Total comprado: R$ Y"
- Centered caption: "Gerado por Kipi List" in muted text

---

## Color Palette

| Token | Hex | Usage |
|---|---|---|
| `primaryColor` | `#388E3C` | Header bg, category label text |
| `headerBg` | `#F5F5F5` | Table column headers |
| `zebraColor` | `#FAFAFA` | Even item rows |
| `categoryBg` | `#E8F5E9` | Category separator rows |
| `mutedText` | `#9E9E9E` | Purchased items, footer caption |
| `dividerColor` | `#E0E0E0` | Borders, dividers |

All colors hardcoded — PDF has no Flutter theme access.

---

## Table Column Layout (using Row, not pw.Table)

```
[16pt checkbox] [Expanded flex:4 name] [60pt qty+unit] [70pt price]
```

Using `pw.Row` + fixed `pw.SizedBox` widths instead of `pw.Table` — gives full control over zebra striping and category separator rows.

---

## Data Preparation

Inside `_exportPdf`:
- `categoriesMap`: `{for (final c in categories) c.id: c.name}`
- `pending`: `items.where((i) => !i.isPurchased).toList()`
- `purchased`: `items.where((i) => i.isPurchased).toList()`
- `totalEstimated`: fold `estimatedPrice * quantity` over all items
- `totalPurchased`: fold over purchased items only
- Grouping: `Map<String, List<ShoppingItem>>` built by iterating items

---

## Out of Scope

- Excel export redesign
- New files / services
- App theme integration in PDF
- Custom fonts (uses pdf package defaults)
