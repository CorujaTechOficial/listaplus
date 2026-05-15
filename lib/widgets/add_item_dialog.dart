import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/category.dart';
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
      title: const Text('Adicionar Item'),
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
              TextFormField(
                controller: _quantityController,
                decoration: const InputDecoration(labelText: 'Quantidade'),
                keyboardType: TextInputType.number,
                validator: (v) => v == null || v.isEmpty ? 'Campo obrigatório' : null,
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
              await ref.read(shoppingListItemsProvider(widget.listId).notifier).addItem(
                    listId: widget.listId,
                    name: _nameController.text,
                    quantity: int.parse(_quantityController.text),
                    category: _selectedCategory,
                    estimatedPrice: double.tryParse(_priceController.text),
                  );
              if (context.mounted) Navigator.pop(context);
            }
          },
          child: const Text('Adicionar'),
        ),
      ],
    );
  }
}
