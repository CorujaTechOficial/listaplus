import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import 'package:shopping_list/domain/entities/unit.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';
import 'package:shopping_list/constants/common_products.dart';
import 'package:shopping_list/core/widgets/styled_autocomplete.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class AddPantryItemDialog extends ConsumerStatefulWidget {
  const AddPantryItemDialog({super.key});

  @override
  ConsumerState<AddPantryItemDialog> createState() => _AddPantryItemDialogState();
}

class _AddPantryItemDialogState extends ConsumerState<AddPantryItemDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _idealController = TextEditingController(text: '2');
  final _currentController = TextEditingController(text: '0');
  final _priceController = TextEditingController();
  String _selectedCategoryId = 'others';
  Unit _selectedUnit = Unit.un;
  bool _trackStock = true;

  @override
  void dispose() {
    _nameController.dispose();
    _idealController.dispose();
    _currentController.dispose();
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
              Icons.inventory_2_outlined,
              size: 20,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(width: Spacing.sm),
          Text(l10n.addToPantry),
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
                      labelText: l10n.productName,
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
                      controller: _idealController,
                      decoration: InputDecoration(
                        labelText: l10n.idealQty,
                        prefixIcon: const Icon(Icons.flag_outlined),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      validator: (v) => v == null || v.isEmpty ? l10n.fieldRequired : null,
                    ),
                  ),
                  const SizedBox(width: Spacing.sm),
                  Expanded(
                    child: TextFormField(
                      controller: _currentController,
                      decoration: InputDecoration(
                        labelText: l10n.currentQty,
                        prefixIcon: const Icon(Icons.home_outlined),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Spacing.sm),
              Row(
                children: [
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
                  const SizedBox(width: Spacing.sm),
                  Expanded(
                    child: DropdownButtonFormField<String>(
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
                  ),
                ],
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
              const SizedBox(height: Spacing.sm),
              SwitchListTile(
                title: Text(l10n.trackStock),
                subtitle: Text(
                    _trackStock
                        ? l10n.trackStockActive
                        : l10n.trackStockInactive,
                  style: theme.textTheme.bodySmall,
                ),
                value: _trackStock,
                onChanged: (v) => setState(() => _trackStock = v),
                contentPadding: EdgeInsets.zero,
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
              try {
                await ref.read(pantryItemsProvider.notifier).addItem(
                  name: _nameController.text,
                  idealQuantity: int.tryParse(_idealController.text) ?? 2,
                  currentQuantity: int.tryParse(_currentController.text) ?? 0,
                  categoryId: _selectedCategoryId,
                  unit: _selectedUnit,
                  estimatedPrice: double.tryParse(_priceController.text),
                  trackStock: _trackStock,
                );
                if (context.mounted) {
                  Navigator.pop(context);
                }
              } on Exception catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(e.toString())),
                  );
                }
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
