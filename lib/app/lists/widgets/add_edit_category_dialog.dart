import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/models/category_data.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';

class AddEditCategoryDialog extends ConsumerStatefulWidget {
  const AddEditCategoryDialog({super.key, this.existing});

  final CategoryData? existing;

  @override
  ConsumerState<AddEditCategoryDialog> createState() => _AddEditCategoryDialogState();
}

class _AddEditCategoryDialogState extends ConsumerState<AddEditCategoryDialog> {
  late final TextEditingController _nameCtrl;
  late Color _color;
  late IconData _icon;
  bool _saving = false;

  static final List<Color> _colors = [
    const Color(0xFF4CAF50),
    const Color(0xFF2196F3),
    const Color(0xFFFF9800),
    const Color(0xFFF44336),
    const Color(0xFF9C27B0),
    const Color(0xFF00BCD4),
    const Color(0xFF795548),
    const Color(0xFF607D8B),
    const Color(0xFFE91E63),
    const Color(0xFF3F51B5),
    const Color(0xFF009688),
    const Color(0xFFFF5722),
  ];

  static final List<IconData> _icons = [
    Icons.category,
    Icons.shopping_cart,
    Icons.kitchen,
    Icons.cleaning_services,
    Icons.local_drink,
    Icons.bakery_dining,
    Icons.restaurant,
    Icons.egg,
    Icons.spa,
    Icons.ac_unit,
    Icons.inventory,
    Icons.wine_bar,
    Icons.pets,
    Icons.child_care,
    Icons.medical_services,
    Icons.checkroom,
    Icons.electrical_services,
    Icons.book,
  ];

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.existing?.name ?? '');
    _color = widget.existing != null ? Color(widget.existing!.colorValue.toARGB32()) : _colors[0];
    // ignore: non_const_argument_for_const_parameter
    _icon = widget.existing != null ? IconData(widget.existing!.iconCodepoint) : _icons[0];
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.existing == null ? 'Nova Categoria' : 'Editar Categoria'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameCtrl,
              decoration: const InputDecoration(
                labelText: 'Nome',
                hintText: 'Ex: Carnes',
              ),
              inputFormatters: [LengthLimitingTextInputFormatter(30)],
            ),
            const SizedBox(height: 16),
            const Text('Cor:', style: TextStyle(fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _colors.map((Color c) {
                final selected = _color.toARGB32() == c.toARGB32();
                return GestureDetector(
                  onTap: () => setState(() => _color = c),
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: c,
                      shape: BoxShape.circle,
                      border: selected
                          ? Border.all(color: Colors.white, width: 3)
                          : null,
                      boxShadow: selected
                          ? [BoxShadow(color: c.withAlpha((0.5 * 255).toInt()), blurRadius: 8)]
                          : null,
                    ),
                    child: selected
                        ? const Icon(Icons.check, color: Colors.white, size: 18)
                        : null,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            const Text('Ícone:', style: TextStyle(fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _icons.map((IconData icn) {
                final selected = _icon.codePoint == icn.codePoint;
                return GestureDetector(
                  onTap: () => setState(() => _icon = icn),
                  child: Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: selected ? _color.withAlpha((0.2 * 255).toInt()) : Colors.grey.withAlpha((0.1 * 255).toInt()),
                      borderRadius: BorderRadius.circular(8),
                      border: selected ? Border.all(color: _color, width: 2) : null,
                    ),
                    child: Icon(icn, color: selected ? _color : Colors.grey, size: 22),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: _saving ? null : () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: _saving ? null : _save,
          child: _saving
              ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
              : const Text('Salvar'),
        ),
      ],
    );
  }

  Future<void> _save() async {
    final name = _nameCtrl.text.trim();
    if (name.isEmpty) {
      return;
    }

    setState(() => _saving = true);
    try {
      final cat = CategoryData(
        id: widget.existing?.id ?? name.toLowerCase().replaceAll(RegExp(r'\s+'), '_'),
        name: name,
        color: _color.toARGB32(),
        iconCodepoint: _icon.codePoint,
        sortOrder: widget.existing?.sortOrder ?? 999,
        createdAt: widget.existing?.createdAt ?? DateTime.now(),
      );
      if (widget.existing == null) {
        await ref.read(categoriesProvider.notifier).addCategory(cat);
      } else {
        await ref.read(categoriesProvider.notifier).updateCategory(cat);
      }
      if (mounted) {
        Navigator.pop(context);
      }
    } finally {
      if (mounted) {
        setState(() => _saving = false);
      }
    }
  }
}
