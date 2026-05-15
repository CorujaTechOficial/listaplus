import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/shopping_item.dart';
import '../providers/shopping_list_provider.dart';

class ShoppingItemTile extends ConsumerWidget {
  final ShoppingItem item;

  const ShoppingItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dismissible(
      key: Key(item.id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      onDismissed: (_) => ref.read(shoppingListProvider.notifier).removeItem(item.id),
      child: CheckboxListTile(
        value: item.isPurchased,
        title: Text(
          item.name,
          style: TextStyle(
            decoration: item.isPurchased ? TextDecoration.lineThrough : null,
            color: item.isPurchased ? Colors.grey : null,
          ),
        ),
        subtitle: Text(
          '${item.quantity}x ${item.category.label}'
          '${item.estimatedPrice != null ? ' • R\$ ${item.estimatedPrice!.toStringAsFixed(2)}' : ''}',
        ),
        secondary: IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () => _showEditDialog(context, ref),
        ),
        onChanged: (_) => ref.read(shoppingListProvider.notifier).togglePurchased(item.id),
      ),
    );
  }

  void _showEditDialog(BuildContext context, WidgetRef ref) {
    // TODO: implement edit dialog
  }
}
