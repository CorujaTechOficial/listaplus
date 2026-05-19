import 'package:flutter/material.dart';
// coverage:ignore-start
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/tokens.dart';
import '../models/category.dart';
import '../models/unit.dart';
import '../providers/shopping_list_provider.dart';

class AddItemDialog extends ConsumerStatefulWidget {
  const AddItemDialog({super.key, required this.listId});

  final String listId;

  @override
  ConsumerState<AddItemDialog> createState() => _AddItemDialogState();
}

class _AddItemDialogState extends ConsumerState<AddItemDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _quantityController = TextEditingController(text: '1');
  final _priceController = TextEditingController();
  Category _selectedCategory = Category.others;
  Unit _selectedUnit = Unit.un;

  @override
  void dispose() {
    _nameController.dispose();
    _quantityController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return AlertDialog(
      title: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(Spacing.xs),
            decoration: BoxDecoration(
              color: isDark
                  ? theme.colorScheme.primaryContainer.withValues(alpha: 0.15)
                  : theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(RadiusTokens.sm),
            ),
            child: Icon(
              Icons.add_shopping_cart,
              size: 20,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(width: Spacing.sm),
          const Text('Adicionar Item'),
        ],
      ),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Nome do item',
                  prefixIcon: Icon(Icons.shopping_bag_outlined),
                ),
                autofocus: true,
                validator: (v) => v == null || v.isEmpty ? 'Campo obrigatório' : null,
              ),
              const SizedBox(height: Spacing.sm),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _quantityController,
                      decoration: const InputDecoration(
                        labelText: 'Qtd',
                        prefixIcon: Icon(Icons.numbers),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (v) => v == null || v.isEmpty ? 'Campo obrigatório' : null,
                    ),
                  ),
                  const SizedBox(width: Spacing.sm),
                  Expanded(
                    child: DropdownButtonFormField<Unit>(
                      value: _selectedUnit,
                      decoration: const InputDecoration(
                        labelText: 'Unidade',
                        prefixIcon: Icon(Icons.straighten),
                      ),
                      items: Unit.values.map((u) {
                        return DropdownMenuItem(value: u, child: Text(u.label));
                      }).toList(),
                      onChanged: (v) => setState(() => _selectedUnit = v!),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Spacing.sm),
              DropdownButtonFormField<Category>(
                value: _selectedCategory,
                decoration: const InputDecoration(
                  labelText: 'Categoria',
                  prefixIcon: Icon(Icons.category_outlined),
                ),
                items: Category.values.map((cat) {
                  return DropdownMenuItem(value: cat, child: Text(cat.label));
                }).toList(),
                onChanged: (v) => setState(() => _selectedCategory = v!),
              ),
              const SizedBox(height: Spacing.sm),
              TextFormField(
                controller: _priceController,
                decoration: const InputDecoration(
                  labelText: 'Preço estimado (R\$)',
                  prefixIcon: Icon(Icons.payments_outlined),
                ),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        FilledButton(
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              // ignore: unawaited_futures
              HapticFeedback.lightImpact();
              await ref.read(shoppingListItemsProvider(widget.listId).notifier).addItem(
                    listId: widget.listId,
                    name: _nameController.text,
                    quantity: int.parse(_quantityController.text),
                    category: _selectedCategory,
                    unit: _selectedUnit,
                    estimatedPrice: double.tryParse(_priceController.text),
                  );
              if (context.mounted) {
                Navigator.pop(context);
              }
            }
          },
          child: const Text('Adicionar'),
        ),
      ],
      actionsPadding: const EdgeInsets.fromLTRB(Spacing.md, 0, Spacing.md, Spacing.md),
    );
  }
}
// coverage:ignore-end
