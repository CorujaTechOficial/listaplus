import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/tokens.dart';
import '../models/category.dart';
import '../models/unit.dart';
import '../providers/pantry_items_provider.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class AddPantryItemDialog extends ConsumerStatefulWidget {
  const AddPantryItemDialog({super.key});

  @override
  ConsumerState<AddPantryItemDialog> createState() => _AddPantryItemDialogState();
}

class _AddPantryItemDialogState extends ConsumerState<AddPantryItemDialog> {
  static const List<String> _commonProducts = [
    'Abacaxi', 'Absorvente', 'Achocolatado', 'Açúcar', 'Água Sanitária', 'Alface',
    'Alho', 'Amaciante', 'Amendoim', 'Arroz', 'Azeite', 'Azeitona', 'Bacon',
    'Balas', 'Banana', 'Batata', 'Batata Palha', 'Biscoito', 'Bolacha', 'Bolo',
    'Brócolis', 'Café', 'Carne', 'Cebola', 'Cenoura', 'Cerveja', 'Chá', 'Chocolate',
    'Condicionador', 'Couve', 'Creme de Leite', 'Creme Dental', 'Desinfetante',
    'Desodorante', 'Detergente', 'Ervilha', 'Esponja de Aço', 'Extrato de Tomate',
    'Farinha de Mandioca', 'Farinha de Trigo', 'Feijão', 'Fósforo', 'Frango',
    'Frios', 'Gelatina', 'Goma de Mascar', 'Hambúrguer', 'Hidratante', 'Iogurte',
    'Leite', 'Leite Condensado', 'Limão', 'Linguiça', 'Macarrão', 'Maçã',
    'Maionese', 'Mamão', 'Manteiga', 'Margarina', 'Manga', 'Melancia', 'Melão',
    'Milho', 'Molho de Tomate', 'Mortadela', 'Óleo', 'Ovos', 'Pão', 'Papel Higiênico',
    'Papel Toalha', 'Peixe', 'Pera', 'Pipoca', 'Pizza', 'Presunto', 'Queijo',
    'Refrigerante', 'Sabão em Barra', 'Sabão em Pó', 'Sabonete', 'Salgadinho',
    'Salsicha', 'Sal', 'Shampoo', 'Sorvete', 'Suco', 'Tomate', 'Uva', 'Vinagre',
  ];

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _idealController = TextEditingController(text: '2');
  final _currentController = TextEditingController(text: '0');
  final _priceController = TextEditingController();
  Category _selectedCategory = Category.others;
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
                  ? theme.colorScheme.primaryContainer.withValues(alpha: 0.15)
                  : theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
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
              Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text.isEmpty) {
                    return const Iterable<String>.empty();
                  }
                  final query = textEditingValue.text.toLowerCase();
                  return _commonProducts.where((String option) {
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
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Spacing.sm),
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<Unit>(
                      value: _selectedUnit,
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
                    child: DropdownButtonFormField<Category>(
                      value: _selectedCategory,
                      decoration: InputDecoration(
                        labelText: l10n.category,
                        prefixIcon: const Icon(Icons.category_outlined),
                      ),
                      items: Category.values.map((cat) {
                        return DropdownMenuItem(value: cat, child: Text(cat.label));
                      }).toList(),
                      onChanged: (v) => setState(() => _selectedCategory = v!),
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
                  category: _selectedCategory,
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
