import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import 'package:shopping_list/models/unit.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';
import 'package:shopping_list/constants/common_products.dart';
import 'package:shopping_list/core/widgets/styled_autocomplete.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/utils/snack_bar_utils.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
  static const double _dragHandleWidth = Spacing.xl + Spacing.xs;
  static const double _dragHandleHeight = Spacing.xxs;
  static const double _iconSizeSmall = Spacing.sm + Spacing.xs; // 12 + 8 = 20

  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  final _idealController = TextEditingController(text: '2');
  final _currentController = TextEditingController(text: '0');
  final _priceController = TextEditingController();
  String _selectedCategoryId = 'others';
  Unit _selectedUnit = Unit.un;
  bool _trackStock = true;
  DateTime? _expirationDate;
  bool _isSubmitting = false;
  bool _keepAdding = false;

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
    final screenWidth = MediaQuery.of(context).size.width;
    final useMobileLayout = screenWidth < 400;

    final currencyCode = resolveCurrencyCode(
      ref.watch(currencySettingProvider),
      Localizations.localeOf(context),
    );

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(RadiusTokens.xl),
        ),
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
                  width: _dragHandleWidth,
                  height: _dragHandleHeight,
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
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(PhosphorIconsRegular.x),
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
                  return commonProducts.where(
                    (String option) => option.toLowerCase().contains(query),
                  );
                },
                onSelected:
                    (String selection) =>
                        setState(() => _nameController.text = selection),
                fieldViewBuilder: (
                  context,
                  textEditingController,
                  focusNode,
                  onFieldSubmitted,
                ) {
                  if (textEditingController.text != _nameController.text) {
                    textEditingController.text = _nameController.text;
                  }
                  return TextFormField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    enabled: !_isSubmitting,
                    decoration: InputDecoration(
                      labelText: l10n.productName,
                      prefixIcon: const Icon(PhosphorIconsRegular.shoppingBag),
                      filled: true,
                      fillColor: theme.colorScheme.surfaceContainerLow,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(RadiusTokens.md),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    textCapitalization: TextCapitalization.sentences,
                    onFieldSubmitted: (String value) => onFieldSubmitted(),
                    validator:
                        (v) =>
                            v == null || v.isEmpty ? l10n.fieldRequired : null,
                  );
                },
              ),
              const SizedBox(height: Spacing.md),

              if (useMobileLayout) ...[
                _buildQuantityField(
                  controller: _currentController,
                  label: l10n.currentQty,
                  icon: PhosphorIconsRegular.house,
                  theme: theme,
                  enabled: !_isSubmitting,
                ),
                const SizedBox(height: Spacing.md),
                _buildQuantityField(
                  controller: _idealController,
                  label: l10n.idealQty,
                  icon: PhosphorIconsRegular.flag,
                  theme: theme,
                  enabled: !_isSubmitting,
                ),
              ] else ...[
                Row(
                  children: [
                    Expanded(
                      child: _buildQuantityField(
                        controller: _currentController,
                        label: l10n.currentQty,
                        icon: PhosphorIconsRegular.house,
                        theme: theme,
                        enabled: !_isSubmitting,
                      ),
                    ),
                    const SizedBox(width: Spacing.md),
                    Expanded(
                      child: _buildQuantityField(
                        controller: _idealController,
                        label: l10n.idealQty,
                        icon: PhosphorIconsRegular.flag,
                        theme: theme,
                        enabled: !_isSubmitting,
                      ),
                    ),
                  ],
                ),
              ],
              const SizedBox(height: Spacing.md),

              if (useMobileLayout) ...[
                DropdownButtonFormField<Unit>(
                  initialValue: _selectedUnit,
                  decoration: InputDecoration(
                    labelText: l10n.unit,
                    prefixIcon: const Icon(PhosphorIconsRegular.ruler),
                    filled: true,
                    fillColor: theme.colorScheme.surfaceContainerLow,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(RadiusTokens.md),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  items:
                      Unit.values
                          .map(
                            (u) => DropdownMenuItem(
                              value: u,
                              child: Text(u.label),
                            ),
                          )
                          .toList(),
                  onChanged:
                      _isSubmitting
                          ? null
                          : (v) => setState(() => _selectedUnit = v!),
                ),
                const SizedBox(height: Spacing.md),
                DropdownButtonFormField<String>(
                  initialValue: _selectedCategoryId,
                  decoration: InputDecoration(
                    labelText: l10n.category,
                    prefixIcon: const Icon(PhosphorIconsRegular.squaresFour),
                    filled: true,
                    fillColor: theme.colorScheme.surfaceContainerLow,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(RadiusTokens.md),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  items:
                      (ref.watch(categoriesProvider).value ?? []).map((cat) {
                        return DropdownMenuItem(
                          value: cat.id,
                          child: Text(cat.localizedName(l10n)),
                        );
                      }).toList(),
                  onChanged:
                      _isSubmitting
                          ? null
                          : (v) => setState(() => _selectedCategoryId = v!),
                ),
              ] else ...[
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<Unit>(
                        initialValue: _selectedUnit,
                        decoration: InputDecoration(
                          labelText: l10n.unit,
                          prefixIcon: const Icon(PhosphorIconsRegular.ruler),
                          filled: true,
                          fillColor: theme.colorScheme.surfaceContainerLow,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(RadiusTokens.md),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        items:
                            Unit.values
                                .map(
                                  (u) => DropdownMenuItem(
                                    value: u,
                                    child: Text(u.label),
                                  ),
                                )
                                .toList(),
                        onChanged:
                            _isSubmitting
                                ? null
                                : (v) => setState(() => _selectedUnit = v!),
                      ),
                    ),
                    const SizedBox(width: Spacing.md),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        initialValue: _selectedCategoryId,
                        decoration: InputDecoration(
                          labelText: l10n.category,
                          prefixIcon: const Icon(PhosphorIconsRegular.squaresFour),
                          filled: true,
                          fillColor: theme.colorScheme.surfaceContainerLow,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(RadiusTokens.md),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        items:
                            (ref.watch(categoriesProvider).value ?? []).map((
                              cat,
                            ) {
                              return DropdownMenuItem(
                                value: cat.id,
                                child: Text(cat.localizedName(l10n)),
                              );
                            }).toList(),
                        onChanged:
                            _isSubmitting
                                ? null
                                : (v) =>
                                    setState(() => _selectedCategoryId = v!),
                      ),
                    ),
                  ],
                ),
              ],
              const SizedBox(height: Spacing.md),

              if (useMobileLayout) ...[
                TextFormField(
                  controller: _priceController,
                  enabled: !_isSubmitting,
                  decoration: InputDecoration(
                    labelText: l10n.addItemPrice,
                    prefixText: '$currencyCode ',
                    prefixIcon: const Icon(PhosphorIconsRegular.creditCard),
                    filled: true,
                    fillColor: theme.colorScheme.surfaceContainerLow,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(RadiusTokens.md),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
                const SizedBox(height: Spacing.md),
                _buildExpirationDatePicker(theme, l10n),
              ] else ...[
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _priceController,
                        enabled: !_isSubmitting,
                        decoration: InputDecoration(
                          labelText: l10n.addItemPrice,
                          prefixText: '$currencyCode ',
                          prefixIcon: const Icon(PhosphorIconsRegular.creditCard),
                          filled: true,
                          fillColor: theme.colorScheme.surfaceContainerLow,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(RadiusTokens.md),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                    ),
                    const SizedBox(width: Spacing.md),
                    Expanded(
                      child: _buildExpirationDatePicker(theme, l10n),
                    ),
                  ],
                ),
              ],
              const SizedBox(height: Spacing.md),

              SwitchListTile(
                title: Text(l10n.trackStock),
                subtitle: Text(
                  _trackStock ? l10n.trackStockActive : l10n.trackStockInactive,
                ),
                value: _trackStock,
                onChanged:
                    _isSubmitting
                        ? null
                        : (v) => setState(() => _trackStock = v),
                contentPadding: EdgeInsets.zero,
              ),
              SwitchListTile(
                title: Text(l10n.keepAdding),
                subtitle: Text(l10n.keepAddingSubtitle),
                value: _keepAdding,
                onChanged:
                    _isSubmitting
                        ? null
                        : (v) => setState(() => _keepAdding = v),
                contentPadding: EdgeInsets.zero,
              ),
              const SizedBox(height: Spacing.lg),

              FilledButton(
                onPressed: _isSubmitting ? null : _submit,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: Spacing.md),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(RadiusTokens.md),
                  ),
                ),
                child:
                    _isSubmitting
                        ? SizedBox(
                          height: Spacing.md,
                          width: Spacing.md,
                          child: CircularProgressIndicator(
                            strokeWidth: RadiusTokens.bar,
                            color: theme.colorScheme.onPrimary,
                          ),
                        )
                        : Text(l10n.add),
              ),
            ],
          ),
        ),
      ),
    ).animate().fadeIn(duration: DurationTokens.normal).slideY(
      begin: 0.05,
      end: 0,
      duration: DurationTokens.normal,
      curve: Curves.easeOutCubic,
    );
  }

  Widget _buildQuantityField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    required ThemeData theme,
    required bool enabled,
  }) {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        filled: true,
        fillColor: theme.colorScheme.surfaceContainerLow,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusTokens.md),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: Spacing.xs),
      ),
      isEmpty: false,
      child: Row(
        children: [
          IconButton(
            onPressed:
                enabled
                    ? () {
                      final val = int.tryParse(controller.text) ?? 0;
                      if (val > 0) {
                        controller.text = (val - 1).toString();
                      }
                    }
                    : null,
            icon: const Icon(PhosphorIconsRegular.minus, size: _iconSizeSmall),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: Spacing.xl, minHeight: Spacing.xl),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              textAlign: TextAlign.center,
              enabled: enabled,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
          ),
          IconButton(
            onPressed:
                enabled
                    ? () {
                      final val = int.tryParse(controller.text) ?? 0;
                      controller.text = (val + 1).toString();
                    }
                    : null,
            icon: const Icon(PhosphorIconsRegular.plus, size: _iconSizeSmall),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: Spacing.xl, minHeight: Spacing.xl),
          ),
        ],
      ),
    );
  }

  Widget _buildExpirationDatePicker(ThemeData theme, AppLocalizations l10n) {
    return InkWell(
      onTap: _isSubmitting ? null : _selectDate,
      borderRadius: BorderRadius.circular(RadiusTokens.md),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: l10n.expirationDate,
          prefixIcon: const Icon(PhosphorIconsRegular.calendarBlank),
          filled: true,
          fillColor: theme.colorScheme.surfaceContainerLow,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(RadiusTokens.md),
            borderSide: BorderSide.none,
          ),
        ),
        isEmpty: _expirationDate == null,
        child: Text(
          _expirationDate == null
              ? ''
              : DateFormat.yMd(
                  Localizations.localeOf(context).toString(),
                ).format(_expirationDate!),
          style: theme.textTheme.bodyMedium,
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate:
          _expirationDate ?? DateTime.now().add(const Duration(days: 30)),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 3650)),
    );
    if (picked != null) {
      setState(() => _expirationDate = picked);
    }
  }

  Future<void> _submit() async {
    if (_isSubmitting) {
      return;
    }
    if (_formKey.currentState!.validate()) {
      setState(() => _isSubmitting = true);
      await HapticFeedback.lightImpact();
      final addedName = _nameController.text.trim();
      try {
        await ref
            .read(pantryItemsProvider.notifier)
            .addItem(
              name: addedName,
              idealQuantity: int.tryParse(_idealController.text) ?? 2,
              currentQuantity: int.tryParse(_currentController.text) ?? 0,
              categoryId: _selectedCategoryId,
              unit: _selectedUnit,
              estimatedPrice: double.tryParse(_priceController.text),
              trackStock: _trackStock,
            );
        if (mounted) {
          if (_keepAdding) {
            setState(() {
              _nameController.clear();
              _priceController.clear();
              _idealController.text = '2';
              _currentController.text = '0';
              _expirationDate = null;
              _isSubmitting = false;
            });
            _formKey.currentState?.reset();
            
            final l10n = AppLocalizations.of(context)!;
            showKipiSnackBar(
              context,
              message: l10n.pantryItemAdded,
              type: SnackBarType.success,
            );
          } else {
            Navigator.pop(context);
          }
        }
      } on Exception catch (_) {
        if (mounted) {
          setState(() => _isSubmitting = false);
          showKipiSnackBar(
            context,
            message: AppLocalizations.of(context)!.errorUnexpected,
            type: SnackBarType.error,
          );
        }
      }
    }
  }
}
