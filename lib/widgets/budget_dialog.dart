import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/shopping_list.dart';
import '../providers/shopping_lists_provider.dart';

class BudgetDialog extends ConsumerStatefulWidget {
  const BudgetDialog({super.key, required this.list});

  final ShoppingList list;

  @override
  ConsumerState<BudgetDialog> createState() => _BudgetDialogState();
}

class _BudgetDialogState extends ConsumerState<BudgetDialog> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.list.budget?.toStringAsFixed(2) ?? '',
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Orçamento Mensal'),
      content: TextField(
        controller: _controller,
        decoration: const InputDecoration(
          labelText: 'Valor do orçamento (R\$)',
          prefixText: 'R\$ ',
        ),
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
      ),
      actions: [
        if (widget.list.budget != null)
          TextButton(
            onPressed: () {
              ref.read(shoppingListsProvider.notifier).updateList(
                widget.list.copyWith(budget: null, updatedAt: DateTime.now()),
              );
              Navigator.pop(context);
            },
            child: const Text('Remover'),
          ),
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancelar')),
        ElevatedButton(
          onPressed: () {
            final value = double.tryParse(_controller.text);
            if (value != null && value > 0) {
              ref.read(shoppingListsProvider.notifier).updateList(
                widget.list.copyWith(budget: value, updatedAt: DateTime.now()),
              );
              Navigator.pop(context);
            }
          },
          child: const Text('Salvar'),
        ),
      ],
    );
  }
}
