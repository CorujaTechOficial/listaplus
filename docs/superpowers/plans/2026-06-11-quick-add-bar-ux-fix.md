# Quick Add Bar UX Fix Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Transform `KipiQuickBar` from an AI chat launcher into a direct item-add input, with a snackbar "X adicionado · Editar" escape hatch.

**Architecture:** Single file change in `kipi_quick_bar.dart`. Replace `_send()` body — instead of opening `AiChatPanel`, generate a UUID pre-call, invoke `addItem`, show a snackbar with an "Editar" action that opens `EditItemDialog` with a minimal `ShoppingItem` built from the pre-generated ID and typed name. No provider changes, no ARB changes (both l10n keys already exist).

**Tech Stack:** Flutter, Riverpod, `package:uuid/uuid.dart` (already a dep), `ShoppingItem`, `EditItemDialog`

---

## File Map

| File | Action |
|---|---|
| `lib/app/lists/widgets/kipi_quick_bar.dart` | Modify — replace `_send()`, remove AI imports/state |

---

### Task 1: Verify test scaffold and `EditItemDialog` contract

**Files:**
- Read: `lib/app/lists/widgets/kipi_quick_bar.dart`
- Read: `lib/app/lists/widgets/edit_item_dialog.dart`

- [ ] **Step 1: Confirm `EditItemDialog` constructor signature**

Open `lib/app/lists/widgets/edit_item_dialog.dart` line 12–13. Confirm:
```dart
class EditItemDialog extends ConsumerStatefulWidget {
  const EditItemDialog({super.key, required this.listId, required this.item});
  final String listId;
  final ShoppingItem item;
```
It takes a full `ShoppingItem` — not an ID. Noted.

- [ ] **Step 2: Confirm `addItem` accepts `id:` parameter**

Open `lib/app/lists/providers/item_providers.dart` line 84–92. Confirm:
```dart
Future<void> addItem({
  required String listId,
  required String name,
  required int quantity,
  required String categoryId,
  Unit unit = Unit.un,
  double? estimatedPrice,
  String? id,
}) async {
```
The `id:` named parameter exists. Noted.

- [ ] **Step 3: Confirm `itemAddedSnack` and `edit` l10n keys exist**

Run:
```bash
grep -n "itemAddedSnack\|\"edit\"" "lib/l10n/app_en.arb"
```
Expected output contains:
```
"edit": "Edit",
"itemAddedSnack": "{name} added",
```
No ARB changes needed.

---

### Task 2: Rewrite `_send()` in `KipiQuickBar`

**Files:**
- Modify: `lib/app/lists/widgets/kipi_quick_bar.dart`

- [ ] **Step 1: Add new imports, remove AI import**

At the top of `kipi_quick_bar.dart`, make these changes:

Remove:
```dart
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';
```

Add (after existing imports):
```dart
import 'package:uuid/uuid.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/unit.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/widgets/edit_item_dialog.dart';
```

- [ ] **Step 2: Rename `_isSending` to `_isAdding` throughout the file**

In `_KipiQuickBarState`, rename the field and all usages:

Old declaration:
```dart
bool _isSending = false;
```
New declaration:
```dart
bool _isAdding = false;
```

In `_send()` and `build()`, replace every `_isSending` → `_isAdding`.

- [ ] **Step 3: Replace the entire `_send()` method body**

Replace the existing `_send()` method with:

```dart
Future<void> _send() async {
  final text = _controller.text.trim();
  if (text.isEmpty) {
    return;
  }
  unawaited(HapticFeedback.lightImpact());
  setState(() {
    _isAdding = true;
  });
  final newId = const Uuid().v4();
  final newItem = ShoppingItem(
    id: newId,
    shoppingListId: widget.listId,
    name: text,
    quantity: 1,
    categoryId: 'others',
    unit: Unit.un,
  );
  _controller.clear();
  try {
    await ref
        .read(shoppingListItemsProvider(widget.listId).notifier)
        .addItem(
          id: newId,
          listId: widget.listId,
          name: text,
          quantity: 1,
          categoryId: 'others',
          unit: Unit.un,
        );
    if (mounted) {
      final l10n = AppLocalizations.of(context)!;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.itemAddedSnack(text)),
          action: SnackBarAction(
            label: l10n.edit,
            onPressed: () {
              showDialog<void>(
                context: context,
                builder: (_) => EditItemDialog(
                  listId: widget.listId,
                  item: newItem,
                ),
              );
            },
          ),
        ),
      );
    }
  } on Exception catch (e) {
    debugPrint('Quick add failed: $e');
    if (mounted) {
      _controller.text = text;
    }
  } finally {
    if (mounted) {
      setState(() {
        _isAdding = false;
      });
    }
  }
}
```

Note: `newItem` is constructed before `addItem` so the snackbar closure captures a fully initialized object, even if `addItem` fails (in which case `_controller.text` is restored and snackbar is NOT shown because the exception path returns early).

- [ ] **Step 4: Update `_isAdding` usage in `build()`**

In the `build()` method, the send button currently references `_isSending`. After the rename in Step 2, confirm it now reads `_isAdding`:

```dart
IconButton.filled(
  onPressed: _isAdding ? null : _send,
  icon: _isAdding
      ? SizedBox(
          width: 18,
          height: 18,
          child: CircularProgressIndicator(
            strokeWidth: 2.5,
            color: theme.colorScheme.onPrimary,
          ),
        )
      : const Icon(
          Icons.arrow_upward,
          size: 20,
        ),
),
```

No change needed if Step 2 rename was done correctly — just verify.

- [ ] **Step 5: Run static analysis**

```bash
flutter analyze lib/app/lists/widgets/kipi_quick_bar.dart
```

Expected: no errors. Fix any lint issues before continuing.

- [ ] **Step 6: Commit**

```bash
git add lib/app/lists/widgets/kipi_quick_bar.dart
git commit -m "feat(lists): replace AI quick bar with direct add-item input

Typing and submitting in the bottom bar now adds the item directly
instead of opening the AI chat modal. A snackbar with 'Edit' action
lets users adjust quantity/category/price after quick-add.

AI assistant remains accessible via the overflow menu."
```

---

### Task 3: Manual verification

- [ ] **Step 1: Build and run on device/simulator**

```bash
flutter run
```

- [ ] **Step 2: Verify golden path**

1. Open any list
2. Type "leite" in the bottom bar
3. Tap send (or press keyboard submit)
4. Confirm: item "leite" appears in list immediately
5. Confirm: snackbar shows "leite adicionado" with "Editar" action
6. Tap "Editar" — confirm `EditItemDialog` opens with "leite" pre-filled

- [ ] **Step 3: Verify error resilience**

1. Enable Airplane mode
2. Type "arroz" and send
3. Confirm: field text is restored (not lost)
4. Confirm: no snackbar shown on failure

- [ ] **Step 4: Verify mic still works**

1. Tap mic icon
2. Speak "feijão"
3. Confirm field populates with "feijão"
4. Tap send → item added

- [ ] **Step 5: Verify AI still accessible**

1. Tap `⋮` overflow menu in app bar
2. Confirm "AI Assistant" option is present
3. Tap it → confirm chat screen opens
