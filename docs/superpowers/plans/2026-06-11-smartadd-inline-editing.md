# SmartAdd com Memória + Edição Inline — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Reduzir atrito na montagem de lista: SmartAdd pré-preenche metadados de itens recorrentes; preço e quantidade editáveis inline no tile sem abrir dialog.

**Architecture:** `buildItemMemoryMap` é função pura que converte histórico de itens em `Map<String, ItemMemory>`. `recentItemMemoryProvider` chama `loadAllItemsForUser()` e aplica essa função. `QuickAddBar` pré-aquece o provider e mostra chip-row quando uma sugestão tem memória. `_InlinePriceField` / `_InlineQtyField` são `ConsumerStatefulWidget`s privados no tile.

**Tech Stack:** Flutter, Riverpod 3.x (codegen), Firebase Firestore, `riverpod_annotation`

---

## File Map

| Ação | Arquivo |
|---|---|
| Criar | `lib/models/item_memory.dart` |
| Criar | `lib/app/lists/providers/item_memory_provider.dart` |
| Criar (gerado) | `lib/app/lists/providers/item_memory_provider.g.dart` |
| Criar | `test/models/item_memory_test.dart` |
| Modificar | `lib/app/lists/widgets/quick_add_bar.dart` |
| Modificar | `lib/app/lists/widgets/shopping_item_tile.dart` |

---

## Task 1: ItemMemory model + buildItemMemoryMap

**Files:**
- Create: `lib/models/item_memory.dart`
- Create: `test/models/item_memory_test.dart`

- [ ] **Step 1: Write failing tests**

Create `test/models/item_memory_test.dart`:

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/models/item_memory.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/unit.dart';

ShoppingItem _makeItem({
  required String name,
  required DateTime updatedAt,
  double? price,
  int quantity = 1,
  Unit unit = Unit.un,
  String categoryId = 'others',
}) =>
    ShoppingItem(
      shoppingListId: 'list1',
      name: name,
      quantity: quantity,
      categoryId: categoryId,
      unit: unit,
      estimatedPrice: price,
      updatedAt: updatedAt,
    );

void main() {
  group('buildItemMemoryMap', () {
    test('normalizes: trims whitespace and lowercases', () {
      final items = [_makeItem(name: '  Arroz  ', updatedAt: DateTime(2024))];
      final map = buildItemMemoryMap(items);
      expect(map.containsKey('arroz'), isTrue);
    });

    test('most recent entry wins for duplicate names', () {
      final items = [
        _makeItem(name: 'leite', updatedAt: DateTime(2023), price: 5.0, quantity: 1),
        _makeItem(name: 'leite', updatedAt: DateTime(2024), price: 8.0, quantity: 2),
      ];
      final map = buildItemMemoryMap(items);
      expect(map['leite']!.estimatedPrice, 8.0);
      expect(map['leite']!.quantity, 2);
    });

    test('returns empty map for empty list', () {
      expect(buildItemMemoryMap([]), isEmpty);
    });

    test('limits to 200 entries', () {
      final items = List.generate(
        300,
        (i) => _makeItem(
          name: 'item$i',
          updatedAt: DateTime(2024, 1, (i ~/ 28) + 1, i % 28),
        ),
      );
      final map = buildItemMemoryMap(items);
      expect(map.length, 200);
    });

    test('categoryId "others" maps to null', () {
      final items = [_makeItem(name: 'x', updatedAt: DateTime(2024), categoryId: 'others')];
      final map = buildItemMemoryMap(items);
      expect(map['x']!.categoryId, isNull);
    });

    test('real categoryId is preserved', () {
      final items = [_makeItem(name: 'x', updatedAt: DateTime(2024), categoryId: 'dairy')];
      final map = buildItemMemoryMap(items);
      expect(map['x']!.categoryId, 'dairy');
    });
  });
}
```

- [ ] **Step 2: Run tests — expect FAIL (file not found)**

```bash
flutter test test/models/item_memory_test.dart
```

Expected: compile error — `item_memory.dart` not found.

- [ ] **Step 3: Create `lib/models/item_memory.dart`**

```dart
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/unit.dart';

class ItemMemory {
  const ItemMemory({
    this.estimatedPrice,
    required this.quantity,
    required this.unit,
    this.categoryId,
  });

  final double? estimatedPrice;
  final int quantity;
  final Unit unit;
  final String? categoryId;
}

Map<String, ItemMemory> buildItemMemoryMap(List<ShoppingItem> items) {
  final sorted = List<ShoppingItem>.from(items)
    ..sort((a, b) => b.updatedAt.compareTo(a.updatedAt));
  final result = <String, ItemMemory>{};
  for (final item in sorted.take(200)) {
    final key = item.name.trim().toLowerCase();
    if (result.containsKey(key)) {
      continue;
    }
    result[key] = ItemMemory(
      estimatedPrice: item.estimatedPrice,
      quantity: item.quantity,
      unit: item.unit,
      categoryId: item.categoryId == 'others' ? null : item.categoryId,
    );
  }
  return result;
}
```

- [ ] **Step 4: Run tests — expect PASS**

```bash
flutter test test/models/item_memory_test.dart
```

Expected: 6 tests passed.

- [ ] **Step 5: Commit**

```bash
git add lib/models/item_memory.dart test/models/item_memory_test.dart
git commit -m "feat(lists): add ItemMemory model and buildItemMemoryMap"
```

---

## Task 2: recentItemMemoryProvider

**Files:**
- Create: `lib/app/lists/providers/item_memory_provider.dart`
- Auto-generated: `lib/app/lists/providers/item_memory_provider.g.dart`

- [ ] **Step 1: Create `lib/app/lists/providers/item_memory_provider.dart`**

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/models/item_memory.dart';

part 'item_memory_provider.g.dart';

@riverpod
Future<Map<String, ItemMemory>> recentItemMemory(Ref ref) async {
  final service = ref.watch(firestoreServiceProvider);
  if (service == null) {
    return {};
  }
  try {
    final allItemsByList = await service.loadAllItemsForUser();
    final allItems = allItemsByList.values.expand((items) => items).toList();
    return buildItemMemoryMap(allItems);
  } catch (_) {
    return {};
  }
}
```

- [ ] **Step 2: Run build_runner to generate `.g.dart`**

```bash
dart run build_runner build --delete-conflicting-outputs
```

Expected: `lib/app/lists/providers/item_memory_provider.g.dart` created. No errors.

- [ ] **Step 3: Run analyze**

```bash
flutter analyze lib/app/lists/providers/item_memory_provider.dart
```

Expected: No issues.

- [ ] **Step 4: Commit**

```bash
git add lib/app/lists/providers/item_memory_provider.dart lib/app/lists/providers/item_memory_provider.g.dart
git commit -m "feat(lists): add recentItemMemoryProvider"
```

---

## Task 3: QuickAddBar — SmartAdd com chip-row de prévia

**Files:**
- Modify: `lib/app/lists/widgets/quick_add_bar.dart`

**What changes:**
1. Add `ItemMemory? _prefilledMeta` to state
2. Add `_onSuggestionSelected` method
3. Modify `_submit` to use `_prefilledMeta`
4. Modify `build`: pre-warm provider + `onSelected` + Column wrapper + `_MetaChipRow`
5. Add `_MetaChipRow` private widget at the bottom of the file

- [ ] **Step 1: Add imports at the top of `quick_add_bar.dart`**

Add these imports after the existing imports:

```dart
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import 'package:shopping_list/app/lists/providers/item_memory_provider.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/models/category_data.dart';
import 'package:shopping_list/models/item_memory.dart';
```

- [ ] **Step 2: Add `_prefilledMeta` field and `_onSuggestionSelected` to `_QuickAddBarState`**

Add after `bool _isListening = false;`:

```dart
ItemMemory? _prefilledMeta;

void _onSuggestionSelected(String name) {
  final memory = ref.read(recentItemMemoryProvider).valueOrNull ?? {};
  final key = name.trim().toLowerCase();
  final meta = memory[key];
  if (meta != null) {
    setState(() => _prefilledMeta = meta);
  }
}
```

- [ ] **Step 3: Replace the `_submit` method**

Replace the existing `_submit` method with:

```dart
Future<void> _submit(TextEditingController controller) async {
  final name = controller.text.trim();
  if (name.isEmpty || _isAdding) return;

  setState(() => _isAdding = true);
  unawaited(HapticFeedback.lightImpact());

  final meta = _prefilledMeta;
  try {
    await ref.read(shoppingListItemsProvider(widget.listId).notifier).addItem(
          listId: widget.listId,
          name: name,
          quantity: meta?.quantity ?? 1,
          categoryId: meta?.categoryId ?? 'others',
          unit: meta?.unit ?? Unit.un,
          estimatedPrice: meta?.estimatedPrice,
        );
    controller.clear();
    setState(() => _prefilledMeta = null);
    _focusNode.requestFocus();
  } finally {
    if (mounted) {
      setState(() => _isAdding = false);
    }
  }
}
```

- [ ] **Step 4: Modify `build` — 3 surgical changes**

**4a.** In `build`, add this line right before `return Container(`:

```dart
ref.watch(recentItemMemoryProvider);
```

**4b.** Add `onSelected: _onSuggestionSelected,` to the `StyledAutocomplete` constructor (it currently has no `onSelected`). Place it before `optionsBuilder:`:

```dart
StyledAutocomplete(
  onSelected: _onSuggestionSelected,
  optionsBuilder: ...
```

**4c.** Change `child: SafeArea(top: false, child: StyledAutocomplete(...))` — keep `StyledAutocomplete` and everything inside it unchanged, but wrap the `SafeArea` child in a `Column`:

```dart
child: SafeArea(
  top: false,
  child: Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (_prefilledMeta != null)
        _MetaChipRow(
          meta: _prefilledMeta!,
          onClear: () => setState(() => _prefilledMeta = null),
        ),
      StyledAutocomplete(
        // all existing parameters unchanged — only add onSelected above
      ),
    ],
  ),
),
```

- [ ] **Step 5: Add `_MetaChipRow` widget at the bottom of `quick_add_bar.dart`**

After the `_BarcodeScannerSheet` class, add:

```dart
class _MetaChipRow extends ConsumerWidget {
  const _MetaChipRow({required this.meta, required this.onClear});

  final ItemMemory meta;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final categories = ref.watch(categoriesProvider).value ?? <CategoryData>[];
    final cat = categories.where((c) => c.id == meta.categoryId).firstOrNull;
    final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 12, bottom: 4),
      child: Row(
        children: [
          if (cat != null) ...[
            Icon(Icons.label_outline, size: 13, color: theme.colorScheme.primary),
            const SizedBox(width: 4),
            Text(
              cat.name,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(width: 8),
          ],
          if (meta.estimatedPrice != null) ...[
            Text(
              formatCurrency(meta.estimatedPrice!, currencyCode),
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 8),
          ],
          Text(
            '${meta.quantity} ${meta.unit.label}',
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onClear,
            child: Icon(
              Icons.close,
              size: 16,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
```

- [ ] **Step 6: Run analyze**

```bash
flutter analyze lib/app/lists/widgets/quick_add_bar.dart
```

Expected: No errors.

- [ ] **Step 7: Commit**

```bash
git add lib/app/lists/widgets/quick_add_bar.dart
git commit -m "feat(lists): SmartAdd — prefill metadata from item history"
```

---

## Task 4: ShoppingItemTile — edição inline de preço

**Files:**
- Modify: `lib/app/lists/widgets/shopping_item_tile.dart`

**What changes:**
1. Add `_InlinePriceField` `ConsumerStatefulWidget` at the bottom of the file
2. Replace the `if (item.estimatedPrice != null) Text(formatCurrency(...))` with `_InlinePriceField` (only when `!isShoppingMode && !selectionMode`)

- [ ] **Step 1: Add `_InlinePriceField` widget at the bottom of `shopping_item_tile.dart`**

After the existing private widgets (`_SmallIconButton`, `_CustomCheckbox`), add:

```dart
class _InlinePriceField extends ConsumerStatefulWidget {
  const _InlinePriceField({required this.item, required this.listId});

  final ShoppingItem item;
  final String listId;

  @override
  ConsumerState<_InlinePriceField> createState() => _InlinePriceFieldState();
}

class _InlinePriceFieldState extends ConsumerState<_InlinePriceField> {
  bool _editing = false;
  late TextEditingController _ctrl;
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    final price = widget.item.estimatedPrice;
    _ctrl = TextEditingController(
      text: price != null ? price.toStringAsFixed(2) : '',
    );
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && _editing) {
        _save();
      }
    });
  }

  @override
  void dispose() {
    _ctrl.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final text = _ctrl.text.trim().replaceAll(',', '.');
    final newPrice = double.tryParse(text);
    setState(() => _editing = false);
    if (newPrice == widget.item.estimatedPrice) {
      return;
    }
    final updated = widget.item.copyWith(
      estimatedPrice: (newPrice != null && newPrice > 0) ? newPrice : null,
      updatedAt: DateTime.now(),
    );
    try {
      await ref
          .read(shoppingListItemsProvider(widget.listId).notifier)
          .updateItem(updated);
    } catch (e) {
      _ctrl.text = widget.item.estimatedPrice?.toStringAsFixed(2) ?? '';
      if (mounted) {
        showUniqueSnackBar(
          context,
          content: Text(
            AppLocalizations.of(context)!.errorGeneric(message: e.toString()),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';

    if (_editing) {
      return SizedBox(
        width: 72,
        height: 24,
        child: TextField(
          controller: _ctrl,
          focusNode: _focusNode,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          textInputAction: TextInputAction.done,
          onSubmitted: (_) => _save(),
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w800,
          ),
          decoration: const InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            border: OutlineInputBorder(),
          ),
        ),
      );
    }

    final price = widget.item.estimatedPrice;
    return GestureDetector(
      onTap: () {
        setState(() => _editing = true);
        WidgetsBinding.instance.addPostFrameCallback(
          (_) => _focusNode.requestFocus(),
        );
      },
      child: price != null
          ? Text(
              formatCurrency(price * widget.item.quantity, currencyCode),
              style: theme.textTheme.labelSmall?.copyWith(
                color: widget.item.isPurchased
                    ? theme.colorScheme.outline
                    : theme.colorScheme.primary,
                fontWeight: FontWeight.w800,
              ),
            )
          : Icon(
              Icons.add_circle_outline,
              size: 14,
              color: theme.colorScheme.outlineVariant,
            ),
    );
  }
}
```

- [ ] **Step 2: Replace the price `Text` with `_InlinePriceField` in `ShoppingItemTile.build`**

Find this block in `ShoppingItemTile.build` (inside the subtitle `Row`):

```dart
if (item.estimatedPrice != null)
  Text(
    formatCurrency(item.estimatedPrice! * item.quantity, currencyCode),
    style: theme.textTheme.labelSmall?.copyWith(
      color: isPurchased ? theme.colorScheme.outline : theme.colorScheme.primary,
      fontWeight: FontWeight.w800,
    ),
  ),
```

Replace with:

```dart
if (!isShoppingMode && !selectionMode)
  _InlinePriceField(item: item, listId: listId)
else if (item.estimatedPrice != null)
  Text(
    formatCurrency(item.estimatedPrice! * item.quantity, currencyCode),
    style: theme.textTheme.labelSmall?.copyWith(
      color: isPurchased ? theme.colorScheme.outline : theme.colorScheme.primary,
      fontWeight: FontWeight.w800,
    ),
  ),
```

Also remove `currencyCode` from the tile's `build` method if it becomes unused (it's used in other places too — check first with analyze).

- [ ] **Step 3: Run analyze**

```bash
flutter analyze lib/app/lists/widgets/shopping_item_tile.dart
```

Expected: No errors. Fix any unused variable warnings.

- [ ] **Step 4: Commit**

```bash
git add lib/app/lists/widgets/shopping_item_tile.dart
git commit -m "feat(lists): inline price editing on ShoppingItemTile"
```

---

## Task 5: ShoppingItemTile — edição inline de quantidade

**Files:**
- Modify: `lib/app/lists/widgets/shopping_item_tile.dart`

**What changes:**
1. Add `_InlineQtyField` widget at the bottom of the file
2. Replace `Center(child: Text('${item.quantity}', ...))` with `_InlineQtyField`

- [ ] **Step 1: Add `_InlineQtyField` widget at the bottom of `shopping_item_tile.dart`**

After `_InlinePriceField`, add:

```dart
class _InlineQtyField extends ConsumerStatefulWidget {
  const _InlineQtyField({required this.item, required this.listId});

  final ShoppingItem item;
  final String listId;

  @override
  ConsumerState<_InlineQtyField> createState() => _InlineQtyFieldState();
}

class _InlineQtyFieldState extends ConsumerState<_InlineQtyField> {
  bool _editing = false;
  late TextEditingController _ctrl;
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _ctrl = TextEditingController(text: '${widget.item.quantity}');
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && _editing) {
        _save();
      }
    });
  }

  @override
  void dispose() {
    _ctrl.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final newQty = int.tryParse(_ctrl.text.trim());
    setState(() => _editing = false);
    if (newQty == null || newQty < 1 || newQty == widget.item.quantity) {
      _ctrl.text = '${widget.item.quantity}';
      return;
    }
    final updated = widget.item.copyWith(
      quantity: newQty,
      updatedAt: DateTime.now(),
    );
    try {
      await ref
          .read(shoppingListItemsProvider(widget.listId).notifier)
          .updateItem(updated);
    } catch (e) {
      _ctrl.text = '${widget.item.quantity}';
      if (mounted) {
        showUniqueSnackBar(
          context,
          content: Text(
            AppLocalizations.of(context)!.errorGeneric(message: e.toString()),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isSmallScreen = screenWidth < _kQuantityControlsBreakpoint;

    if (_editing) {
      return SizedBox(
        width: isSmallScreen ? 36 : 32,
        height: 24,
        child: TextField(
          controller: _ctrl,
          focusNode: _focusNode,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          textInputAction: TextInputAction.done,
          onSubmitted: (_) => _save(),
          style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w800),
          decoration: const InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
            border: OutlineInputBorder(),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        _ctrl.text = '${widget.item.quantity}';
        setState(() => _editing = true);
        WidgetsBinding.instance.addPostFrameCallback(
          (_) => _focusNode.requestFocus(),
        );
      },
      child: SizedBox(
        width: isSmallScreen ? null : 32,
        child: Center(
          child: Text(
            '${widget.item.quantity}',
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w800,
              fontFeatures: isSmallScreen
                  ? null
                  : [const FontFeature.tabularFigures()],
            ),
          ),
        ),
      ),
    );
  }
}
```

- [ ] **Step 2: Replace the quantity `Center(child: Text(...))` in the tile**

Find this block in the `Builder` inside `if (!selectionMode && !isShoppingMode)`:

```dart
SizedBox(
  width: isSmallScreen ? null : 32,
  child: Center(
    child: Text(
      '${item.quantity}',
      style: theme.textTheme.bodyMedium?.copyWith(
        fontWeight: FontWeight.w800,
        fontFeatures: isSmallScreen
            ? null
            : [const FontFeature.tabularFigures()],
      ),
    ),
  ),
),
```

Replace with:

```dart
_InlineQtyField(item: item, listId: listId),
```

- [ ] **Step 3: Run analyze**

```bash
flutter analyze lib/app/lists/widgets/shopping_item_tile.dart
```

Expected: No errors.

- [ ] **Step 4: Run all tests**

```bash
flutter test
```

Expected: All tests pass (no regressions).

- [ ] **Step 5: Commit**

```bash
git add lib/app/lists/widgets/shopping_item_tile.dart
git commit -m "feat(lists): inline quantity editing on ShoppingItemTile"
```

---

## Done Criteria

- [ ] `flutter test` passes
- [ ] `flutter analyze --fatal-infos` passes
- [ ] Adicionar "Arroz" com histórico → chip-row mostra prévia → confirmar → item adicionado com preço/qty/categoria
- [ ] Toque no preço do tile → campo inline → digitar novo valor → Firestore atualiza sem abrir dialog
- [ ] Toque no número de quantidade → campo inline → digitar novo valor → Firestore atualiza
- [ ] Sem histórico / provider falha → QuickAddBar funciona igual ao comportamento anterior
- [ ] Modo shopping (`isShoppingMode: true`) → sem campos inline (comportamento anterior preservado)
- [ ] Modo seleção (`selectionMode: true`) → sem campos inline (comportamento anterior preservado)
