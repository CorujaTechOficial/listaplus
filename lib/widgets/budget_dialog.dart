import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/budget_provider.dart';

class BudgetDialog extends ConsumerStatefulWidget {
  final double? currentBudget;
  const BudgetDialog({super.key, this.currentBudget});

  @override
  ConsumerState<BudgetDialog> createState() => _BudgetDialogState();
}

class _BudgetDialogState extends ConsumerState<BudgetDialog> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.currentBudget?.toStringAsFixed(2) ?? '',
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
        if (widget.currentBudget != null)
          TextButton(
            onPressed: () {
              ref.read(budgetProvider.notifier).clearBudget();
              Navigator.pop(context);
            },
            child: const Text('Remover'),
          ),
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancelar')),
        ElevatedButton(
          onPressed: () {
            final value = double.tryParse(_controller.text);
            if (value != null && value > 0) {
              ref.read(budgetProvider.notifier).setBudget(value);
              Navigator.pop(context);
            }
          },
          child: const Text('Salvar'),
        ),
      ],
    );
  }
}
