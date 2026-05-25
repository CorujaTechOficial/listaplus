import 'package:flutter/material.dart';
// coverage:ignore-start
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../theme/tokens.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import '../../../models/unit.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import '../../../constants/common_products.dart';
import 'package:shopping_list/core/widgets/styled_autocomplete.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

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
  String _selectedCategoryId = 'others';
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
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return AlertDialog(
      title: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(Spacing.xs),
            decoration: BoxDecoration(
              color: isDark
                  ? theme.colorScheme.primaryContainer.withAlpha((0.15 * 255).toInt())
                  : theme.colorScheme.primaryContainer.withAlpha((0.3 * 255).toInt()),
              borderRadius: BorderRadius.circular(RadiusTokens.sm),
            ),
            child: Icon(
              Icons.add_shopping_cart,
              size: 20,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(width: Spacing.sm),
          Text(l10n.addItem),
        ],
      ),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              StyledAutocomplete(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text.isEmpty) {
                    return const Iterable<String>.empty();
                  }
                  final query = textEditingValue.text.toLowerCase();
                  return commonProducts.where((String option) {
                    return option.toLowerCase().contains(query);
                  });
                },
                onSelected: (String selection) {
                  _nameController.text = selection;
                },
                fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
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

                  return TextFormField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      labelText: l10n.itemName,
                      prefixIcon: const Icon(Icons.shopping_bag_outlined),
                    ),
                    autofocus: true,
                    onFieldSubmitted: (String value) => onFieldSubmitted(),
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
                      decoration: InputDecoration(
                        labelText: l10n.quantityShort,
                        prefixIcon: const Icon(Icons.numbers),
                      ),
                      keyboardType: TextInputType.number,
                    validator: (v) => v == null || v.isEmpty ? l10n.fieldRequired : null,
                    ),
                  ),
                  const SizedBox(width: Spacing.sm),
                  Expanded(
                    child: DropdownButtonFormField<Unit>(
                      initialValue: _selectedUnit,
                      decoration: InputDecoration(
                        labelText: l10n.unit,
                        prefixIcon: const Icon(Icons.straighten),
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
              DropdownButtonFormField<String>(
                initialValue: _selectedCategoryId,
                decoration: InputDecoration(
                  labelText: l10n.category,
                  prefixIcon: const Icon(Icons.category_outlined),
                ),
                items: (ref.watch(categoriesProvider).value ?? []).map((cat) {
                  return DropdownMenuItem(value: cat.id, child: Text(cat.name));
                }).toList(),
                onChanged: (v) => setState(() => _selectedCategoryId = v!),
              ),
              const SizedBox(height: Spacing.sm),
              TextFormField(
                controller: _priceController,
                decoration: InputDecoration(
                  labelText: l10n.estimatedPrice,
                  prefixIcon: const Icon(Icons.payments_outlined),
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
          child: Text(l10n.cancel),
        ),
        FilledButton(
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              // ignore: unawaited_futures
              HapticFeedback.lightImpact();
              await ref.read(shoppingListItemsProvider(widget.listId).notifier).addItem(
                    listId: widget.listId,
                    name: _nameController.text,
                    quantity: int.tryParse(_quantityController.text) ?? 1,
                    categoryId: _selectedCategoryId,
                    unit: _selectedUnit,
                    estimatedPrice: double.tryParse(_priceController.text),
                  );
              if (context.mounted) {
                Navigator.pop(context);
              }
            }
          },
          child: Text(l10n.add),
        ),
      ],
      actionsPadding: const EdgeInsets.fromLTRB(Spacing.md, 0, Spacing.md, Spacing.md),
    );
  }
}
// coverage:ignore-end
