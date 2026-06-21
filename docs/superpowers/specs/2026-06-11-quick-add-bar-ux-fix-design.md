# Quick Add Bar UX Fix

## Problem

`KipiQuickBar` has hint text "What do you need to buy?" but pressing send opens an AI chat modal (`AiChatPanel`). Users expect to add items directly. There is no visible add-item button when the list has items (the `AddItemDialog` trigger only exists in `EmptyState`).

## Goal

Transform the bottom input bar into a direct item-add field. Remove AI coupling entirely. Keep catalog button and snackbar escape hatch for users who want to set quantity/category/price.

## Decisions

| Decision | Choice |
|---|---|
| Quick bar behavior | Add item directly (no dialog) |
| Post-add feedback | Snackbar "X adicionado · Editar" with `EditItemDialog` action |
| AI entry point | Overflow menu only (already exists via `PopupMenuButton`) |
| Catalog button | Stays in bottom area above the add field (no change) |
| Voice input | Kept — mic populates field, user still sends manually |

## Architecture

### Files changed

**`lib/app/lists/widgets/kipi_quick_bar.dart`** — primary change

- Remove: `showModalBottomSheet` with `AiChatPanel`
- Remove: `aiController` local variable
- Remove: import `ai_chat_panel.dart`
- Add: import `package:uuid/uuid.dart`
- Add: import `edit_item_dialog.dart`
- Rename state field: `_isSending` → `_isAdding` (semantics only)
- Replace `_send()` body:

```dart
Future<void> _send() async {
  final text = _controller.text.trim();
  if (text.isEmpty) return;
  unawaited(HapticFeedback.lightImpact());
  setState(() => _isAdding = true);
  final newId = const Uuid().v4();
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
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(/* l10n: itemAdded(text) */),
          action: SnackBarAction(
            label: /* l10n: edit */,
            onPressed: () => showDialog<void>(
              context: context,
              builder: (_) => EditItemDialog(listId: widget.listId, itemId: newId),
            ),
          ),
        ),
      );
    }
  } finally {
    if (mounted) setState(() => _isAdding = false);
  }
}
```

### No other files change

- `list_screen_body.dart` — no change (bottom nav already wires `KipiQuickBar`)
- `_CatalogEntryButton` — no change
- `item_providers.dart` — no change (`addItem` already accepts `id:`)
- `edit_item_dialog.dart` — verify it accepts `itemId` to load by ID (check before implementing)

## UX Flow

```
user types "leite" → send button / keyboard submit
  ↓
generate newId = Uuid().v4()
  ↓
addItem(id: newId, name: "leite", qty: 1, categoryId: 'others', unit: Unit.un)
  ↓
field clears, focus retained (ready for next item)
  ↓
SnackBar: "Leite adicionado" + action "Editar"
  ↓
[optional] user taps "Editar" → EditItemDialog opens with that item
```

## Edge Cases

- **Empty input**: `_send()` returns early (already handled)
- **Add fails (exception)**: `_isAdding` resets via `finally`; field text is already cleared — consider NOT clearing before await completes, or restoring text on failure
- **User taps "Editar" after snackbar dismisses**: SnackBar action is gone, user can long-press item in list to edit (existing behavior)

## Open Question Before Implementation

Verify `EditItemDialog` API: does it accept an `itemId` String and load the item, or does it require a full `ShoppingItem` object? If it requires the full object, pass a minimal `ShoppingItem` constructed with `newId` and the typed name instead.

## Localization

Add to `app_en.arb`:
```json
"itemAdded": "{name} added",
"@itemAdded": { "placeholders": { "name": { "type": "String" } } }
```

Run `flutter gen-l10n` and `python3 scripts/translate_missing.py` after adding.
