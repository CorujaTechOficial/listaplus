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

class PantryAddSheet extends ConsumerStatefulWidget {
  const PantryAddSheet({super.key, this.initialName});

  final String? initialName;

  static Future<void> show(BuildContext context, {String? initialName}) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => PantryAddSheet(initialName: initialName),
    );
  }

  @override
  ConsumerState<PantryAddSheet> createState() => _PantryAddSheetState();
}

class _PantryAddSheetState extends ConsumerState<PantryAddSheet> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  final _idealController = TextEditingController(text: '2');
  final _currentController = TextEditingController(text: '0');
  final _priceController = TextEditingController();
  String _selectedCategoryId = 'others';
  Unit _selectedUnit = Unit.un;
  bool _trackStock = true;
  DateTime? _expirationDate;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName);
  }

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
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    final safeBottom = MediaQuery.of(context).padding.bottom;

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(RadiusTokens.lg)),
      ),
      padding: EdgeInsets.fromLTRB(
        Spacing.md, 
        Spacing.md, 
        Spacing.md, 
        Spacing.md + bottomInset + (bottomInset > 0 ? 0 : safeBottom),
      ),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Handle for dragging
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: Spacing.md),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.outlineVariant,
                    borderRadius: BorderRadius.circular(RadiusTokens.full),
                  ),
                ),
              ),
              
              Row(
                children: [
                  Text(
                    l10n.addToPantry,
                    style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              const SizedBox(height: Spacing.md),

              StyledAutocomplete(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text.isEmpty) {
                    return const Iterable<String>.empty();
                  }
                  final query = textEditingValue.text.toLowerCase();
                  return commonProducts.where((String option) => option.toLowerCase().contains(query));
                },
                onSelected: (String selection) => setState(() => _nameController.text = selection),
                fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
                  if (textEditingController.text != _nameController.text) {
                    textEditingController.text = _nameController.text;
                  }
                  return TextFormField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      labelText: l10n.productName,
                      prefixIcon: const Icon(Icons.shopping_bag_outlined),
                      filled: true,
                      fillColor: theme.colorScheme.surfaceContainerLow,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(RadiusTokens.md),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    textCapitalization: TextCapitalization.sentences,
                    onFieldSubmitted: (String value) => onFieldSubmitted(),
                    validator: (v) => v == null || v.isEmpty ? l10n.fieldRequired : null,
                  );
                },
              ),
              const SizedBox(height: Spacing.md),

              Row(
                children: [
                  Expanded(
                    child: _buildQuantityField(
                      controller: _currentController,
                      label: l10n.currentQty,
                      icon: Icons.home_outlined,
                      theme: theme,
                    ),
                  ),
                  const SizedBox(width: Spacing.md),
                  Expanded(
                    child: _buildQuantityField(
                      controller: _idealController,
                      label: l10n.idealQty,
                      icon: Icons.flag_outlined,
                      theme: theme,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Spacing.md),

              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<Unit>(
                      initialValue: _selectedUnit,
                      decoration: InputDecoration(
                        labelText: l10n.unit,
                        prefixIcon: const Icon(Icons.straighten),
                        filled: true,
                        fillColor: theme.colorScheme.surfaceContainerLow,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(RadiusTokens.md),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      items: Unit.values.map((u) => DropdownMenuItem(value: u, child: Text(u.label))).toList(),
                      onChanged: (v) => setState(() => _selectedUnit = v!),
                    ),
                  ),
                  const SizedBox(width: Spacing.md),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      initialValue: _selectedCategoryId,
                      decoration: InputDecoration(
                        labelText: l10n.category,
                        prefixIcon: const Icon(Icons.category_outlined),
                        filled: true,
                        fillColor: theme.colorScheme.surfaceContainerLow,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(RadiusTokens.md),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      items: (ref.watch(categoriesProvider).value ?? []).map((cat) {
                        return DropdownMenuItem(value: cat.id, child: Text(cat.name));
                      }).toList(),
                      onChanged: (v) => setState(() => _selectedCategoryId = v!),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Spacing.md),

              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _priceController,
                      decoration: InputDecoration(
                        labelText: l10n.addItemPrice,
                        prefixIcon: const Icon(Icons.payments_outlined),
                        filled: true,
                        fillColor: theme.colorScheme.surfaceContainerLow,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(RadiusTokens.md),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    ),
                  ),
                  const SizedBox(width: Spacing.md),
                  Expanded(
                    child: InkWell(
                      onTap: _selectDate,
                      borderRadius: BorderRadius.circular(RadiusTokens.md),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: Spacing.sm, vertical: 12),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.surfaceContainerLow,
                          borderRadius: BorderRadius.circular(RadiusTokens.md),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today_outlined, size: 20, color: theme.colorScheme.primary),
                            const SizedBox(width: Spacing.sm),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(l10n.expirationDate, style: theme.textTheme.labelSmall),
                                  Text(
                                    _expirationDate == null 
                                      ? l10n.notInformed 
                                      : '${_expirationDate!.day}/${_expirationDate!.month}/${_expirationDate!.year}',
                                    style: theme.textTheme.bodyMedium,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Spacing.md),

              SwitchListTile(
                title: Text(l10n.trackStock),
                subtitle: Text(_trackStock ? l10n.trackStockActive : l10n.trackStockInactive),
                value: _trackStock,
                onChanged: (v) => setState(() => _trackStock = v),
                contentPadding: EdgeInsets.zero,
              ),
              const SizedBox(height: Spacing.lg),

              FilledButton(
                onPressed: _submit,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: Spacing.md),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.md)),
                ),
                child: Text(l10n.add, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuantityField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    required ThemeData theme,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: theme.textTheme.labelSmall),
        const SizedBox(height: 4),
        Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(RadiusTokens.md),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  final val = int.tryParse(controller.text) ?? 0;
                  if (val > 0) {
                    controller.text = (val - 1).toString();
                  }
                },
                icon: const Icon(Icons.remove, size: 18),
              ),
              Expanded(
                child: TextField(
                  controller: controller,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(border: InputBorder.none),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              IconButton(
                onPressed: () {
                  final val = int.tryParse(controller.text) ?? 0;
                  controller.text = (val + 1).toString();
                },
                icon: const Icon(Icons.add, size: 18),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _selectDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _expirationDate ?? DateTime.now().add(const Duration(days: 30)),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 3650)),
    );
    if (picked != null) {
      setState(() => _expirationDate = picked);
    }
  }

  Future<void> _submit() async {
    if (_formKey.currentState!.validate()) {
      await HapticFeedback.lightImpact();
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
        if (mounted) {
          Navigator.pop(context);
        }
      } on Exception catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
        }
      }
    }
  }
}
