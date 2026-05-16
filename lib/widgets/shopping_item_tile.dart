import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/shopping_list_provider.dart';
import '../models/shopping_item.dart';
import 'edit_item_dialog.dart';

class ShoppingItemTile extends ConsumerWidget {
  const ShoppingItemTile({
    super.key,
    required this.listId,
    required this.item,
    this.selectionMode = false,
    this.isSelected = false,
    this.onSelectionChanged,
  });

  final String listId;
  final ShoppingItem item;
  final bool selectionMode;
  final bool isSelected;
  final ValueChanged<bool>? onSelectionChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tile = CheckboxListTile(
      value: selectionMode ? isSelected : item.isPurchased,
      title: Text(
        item.name,
        style: TextStyle(
          decoration: !selectionMode && item.isPurchased ? TextDecoration.lineThrough : null,
          color: !selectionMode && item.isPurchased ? Colors.grey : null,
        ),
      ),
      subtitle: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.remove, size: 18),
            onPressed: () => ref.read(shoppingListItemsProvider(listId).notifier).decrementQuantity(item.id),
            constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
            padding: EdgeInsets.zero,
          ),
          Text('${item.quantity}'),
          IconButton(
            icon: const Icon(Icons.add, size: 18),
            onPressed: () => ref.read(shoppingListItemsProvider(listId).notifier).incrementQuantity(item.id),
            constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
            padding: EdgeInsets.zero,
          ),
          const SizedBox(width: 4),
          Text('${item.unit.label} ${item.category.label}'
              '${item.estimatedPrice != null ? ' • R\$ ${item.estimatedPrice!.toStringAsFixed(2)}' : ''}'),
        ],
      ),
      secondary: IconButton(
        icon: const Icon(Icons.edit),
        onPressed: () => _showEditDialog(context, ref),
      ),
      onChanged: selectionMode
          ? (v) => onSelectionChanged?.call(v ?? false)
          : (_) => ref.read(shoppingListItemsProvider(listId).notifier).togglePurchased(item.id),
    );

    if (selectionMode) {
      return tile;
    }

    return Dismissible(
      key: ValueKey('dismiss_${item.id}'),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      onDismissed: (_) {
        final removedItem = item;
        final notifier = ref.read(shoppingListItemsProvider(listId).notifier);
        notifier.removeItem(item.id);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Item removido'),
            action: SnackBarAction(
              label: 'Desfazer',
              onPressed: () => notifier.restoreItem(removedItem),
            ),
          ),
        );
      },
      child: tile,
    );
  }

  void _showEditDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (_) => EditItemDialog(listId: listId, item: item),
    );
  }
}
