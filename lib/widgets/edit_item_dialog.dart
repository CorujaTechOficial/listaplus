import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/category.dart';
import '../models/unit.dart';
import '../models/shopping_item.dart';
import '../providers/shopping_list_provider.dart';

class EditItemDialog extends ConsumerStatefulWidget {
  const EditItemDialog({super.key, required this.listId, required this.item});

  final String listId;
  final ShoppingItem item;

  @override
  ConsumerState<EditItemDialog> createState() => _EditItemDialogState();
}

class _EditItemDialogState extends ConsumerState<EditItemDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _quantityController;
  late final TextEditingController _priceController;
  late Category _selectedCategory;
  late Unit _selectedUnit;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.item.name);
    _quantityController = TextEditingController(text: widget.item.quantity.toString());
    _priceController = TextEditingController(
      text: widget.item.estimatedPrice?.toStringAsFixed(2) ?? '',
    );
    _selectedCategory = widget.item.category;
    _selectedUnit = widget.item.unit;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _quantityController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Editar Item'),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nome do item'),
                validator: (v) => v == null || v.isEmpty ? 'Campo obrigatório' : null,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _quantityController,
                      decoration: const InputDecoration(labelText: 'Quantidade'),
                      keyboardType: TextInputType.number,
                      validator: (v) => v == null || v.isEmpty ? 'Campo obrigatório' : null,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: DropdownButtonFormField<Unit>(
                      value: _selectedUnit,
                      decoration: const InputDecoration(labelText: 'Unidade'),
                      items: Unit.values.map((u) {
                        return DropdownMenuItem(value: u, child: Text(u.label));
                      }).toList(),
                      onChanged: (v) => setState(() => _selectedUnit = v!),
                    ),
                  ),
                ],
              ),
              DropdownButtonFormField<Category>(
                value: _selectedCategory,
                decoration: const InputDecoration(labelText: 'Categoria'),
                items: Category.values.map((cat) {
                  return DropdownMenuItem(value: cat, child: Text(cat.label));
                }).toList(),
                onChanged: (v) => setState(() => _selectedCategory = v!),
              ),
              TextFormField(
                controller: _priceController,
                decoration: const InputDecoration(labelText: 'Preço estimado (R\$)'),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancelar')),
        ElevatedButton(
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              final updated = widget.item.copyWith(
                name: _nameController.text,
                quantity: int.parse(_quantityController.text),
                category: _selectedCategory,
                unit: _selectedUnit,
                estimatedPrice: double.tryParse(_priceController.text),
                updatedAt: DateTime.now(),
              );
              await ref.read(shoppingListItemsProvider(widget.listId).notifier).updateItem(updated);
              if (context.mounted) {
                Navigator.pop(context);
              }
            }
          },
          child: const Text('Salvar'),
        ),
      ],
    );
  }
}
