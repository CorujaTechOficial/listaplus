import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/tokens.dart';
import '../providers/categories_provider.dart';
import '../models/unit.dart';
import '../models/shopping_item.dart';
import '../providers/shopping_list_provider.dart';
import '../constants/common_products.dart';
import 'styled_autocomplete.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

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
  late String _selectedCategoryId;
  late Unit _selectedUnit;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.item.name);
    _quantityController = TextEditingController(text: widget.item.quantity.toString());
    _priceController = TextEditingController(
      text: widget.item.estimatedPrice?.toStringAsFixed(2) ?? '',
    );
    _selectedCategoryId = widget.item.categoryId;
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
    final l10n = AppLocalizations.of(context)!;
    return AlertDialog(
      title: Text(l10n.editItem),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              StyledAutocomplete(
                initialValue: TextEditingValue(text: _nameController.text),
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text.isEmpty) {
                    return const Iterable<String>.empty();
                  }
                  final query = textEditingValue.text.toLowerCase();
                  return commonProducts.where((String option) {
                    return option.toLowerCase().contains(query);
                  });
                },
                // coverage:ignore-start
                onSelected: (String selection) {
                  _nameController.text = selection;
                },
                // coverage:ignore-end
                fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
                  // coverage:ignore-start
                  textEditingController.addListener(() {
                    if (_nameController.text != textEditingController.text) {
                      _nameController.text = textEditingController.text;
                    }
                  });
                  
                  _nameController.addListener(() {
                    if (textEditingController.text != _nameController.text) {
                      textEditingController.text = _nameController.text;
                    }
                  });
                  // coverage:ignore-end

                  return TextFormField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    decoration: InputDecoration(labelText: l10n.itemName),
                    onFieldSubmitted: (String value) => onFieldSubmitted(), // coverage:ignore-line
                    validator: (v) => v == null || v.isEmpty ? l10n.fieldRequired : null,
                  );
                },
              ),
              const SizedBox(height: Spacing.sm),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _quantityController,
                      decoration: InputDecoration(labelText: l10n.quantityFull),
                      keyboardType: TextInputType.number,
                      validator: (v) => v == null || v.isEmpty ? l10n.fieldRequired : null,
                    ),
                  ),
                  const SizedBox(width: Spacing.sm),
                  Expanded(
                    child: DropdownButtonFormField<Unit>(
                      initialValue: _selectedUnit,
                      decoration: InputDecoration(labelText: l10n.unit),
                      items: Unit.values.map((u) {
                        return DropdownMenuItem(value: u, child: Text(u.label));
                      }).toList(),
                      onChanged: (v) => setState(() => _selectedUnit = v!),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Spacing.sm),
              DropdownButtonFormField<String>(
                initialValue: _selectedCategoryId,
                decoration: InputDecoration(labelText: l10n.category),
                items: (ref.watch(categoriesProvider).value ?? []).map((cat) {
                  return DropdownMenuItem(value: cat.id, child: Text(cat.name));
                }).toList(),
                onChanged: (v) => setState(() => _selectedCategoryId = v!),
              ),
              const SizedBox(height: Spacing.sm),
              TextFormField(
                controller: _priceController,
                decoration: InputDecoration(labelText: l10n.estimatedPrice),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.cancel)),
        ElevatedButton(
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              final updated = widget.item.copyWith(
                name: _nameController.text,
                quantity: int.tryParse(_quantityController.text) ?? 1,
                categoryId: _selectedCategoryId,
                unit: _selectedUnit,
                estimatedPrice: double.tryParse(_priceController.text),
                updatedAt: DateTime.now(),
              );
              await ref
                  .read(shoppingListItemsProvider(widget.listId).notifier)
                  .updateItem(updated);
              if (context.mounted) {
                Navigator.pop(context);
              }
            }
          },
          child: Text(l10n.save),
        ),
      ],
    );
  }
}
