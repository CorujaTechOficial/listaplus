import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/unit.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import 'package:shopping_list/app/recipes/providers/recipes_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

import 'package:shopping_list/theme/tokens.dart';

class AddRecipeDialog extends ConsumerStatefulWidget {
  const AddRecipeDialog({super.key, this.recipe});

  final Recipe? recipe;

  @override
  ConsumerState<AddRecipeDialog> createState() => _AddRecipeDialogState();
}

class _AddRecipeDialogState extends ConsumerState<AddRecipeDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _instructionsController = TextEditingController();
  final _prepTimeController = TextEditingController(text: '30');
  final _imageUrlController = TextEditingController();
  final _tagController = TextEditingController();
  final List<TextEditingController> _ingredientControllers = [TextEditingController()];
  bool _isSaving = false;
  File? _pickedImage;
  List<String> _selectedTags = [];

  bool get _isEditing => widget.recipe != null;

  @override
  void initState() {
    super.initState();
    final recipe = widget.recipe;
    if (recipe != null) {
      _nameController.text = recipe.name;
      _descriptionController.text = recipe.description;
      _instructionsController.text = recipe.instructions.join('\n');
      _prepTimeController.text = recipe.prepTimeMinutes.toString();
      _imageUrlController.text = recipe.imageUrl ?? '';
      _selectedTags = List.from(recipe.tags);
      _ingredientControllers.clear();
      if (recipe.ingredients.isEmpty) {
        _ingredientControllers.add(TextEditingController());
      } else {
        for (final ing in recipe.ingredients) {
          _ingredientControllers.add(TextEditingController(text: ing.name));
        }
      }
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _instructionsController.dispose();
    _prepTimeController.dispose();
    _imageUrlController.dispose();
    _tagController.dispose();
    for (final c in _ingredientControllers) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() => _isSaving = true);

    try {
      final l10n = AppLocalizations.of(context)!;

      final ingredients = _ingredientControllers
          .where((c) => c.text.trim().isNotEmpty)
          .map((c) => ShoppingItem(
                name: c.text.trim(),
                quantity: 1,
                shoppingListId: '',
                unit: Unit.un,
              ))
          .toList();

      final instructions = _instructionsController.text
          .split('\n')
          .where((s) => s.trim().isNotEmpty)
          .toList();

      final rawImageUrl = _imageUrlController.text.trim();
      String? imageUrl;
      if (_pickedImage != null) {
        final id = widget.recipe?.id ?? '';
        imageUrl = await ref.read(recipesProvider.notifier).uploadRecipeImage(
              id,
              _pickedImage!.path,
            );
      }
      imageUrl ??= rawImageUrl.isEmpty ? null : rawImageUrl;

      final recipe = Recipe(
        id: widget.recipe?.id,
        name: _nameController.text.trim(),
        description: _descriptionController.text.trim(),
        ingredients: ingredients,
        instructions: instructions,
        prepTimeMinutes: int.tryParse(_prepTimeController.text) ?? 30,
        imageUrl: imageUrl,
        createdAt: widget.recipe?.createdAt,
        tags: _selectedTags,
      );

      if (_isEditing) {
        await ref.read(recipesProvider.notifier).updateRecipe(recipe);
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.recipeSaved)),
          );
        }
      } else {
        await ref.read(recipesProvider.notifier).saveRecipe(recipe);
      }
      if (mounted) {
        Navigator.pop(context);
      }
    } on Exception catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${AppLocalizations.of(context)!.errorLoadingRecipes}: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isSaving = false);
      }
    }
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() => _pickedImage = File(picked.path));
    }
  }

  void _addTag(String tag) {
    final trimmed = tag.trim();
    if (trimmed.isNotEmpty && !_selectedTags.contains(trimmed)) {
      setState(() => _selectedTags.add(trimmed));
    }
    _tagController.clear();
  }

  void _removeTag(String tag) {
    setState(() => _selectedTags.remove(tag));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final categoriesAsync = ref.watch(categoriesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(_isEditing ? l10n.editRecipeTitle : l10n.newRecipeTitle),
        actions: [
          if (_isSaving)
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
            )
          else
            TextButton(
              onPressed: _save,
              child: Text(_isEditing ? l10n.saveChanges : l10n.saveRecipe),
            ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(Spacing.md),
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: l10n.recipeName,
                border: const OutlineInputBorder(),
              ),
              validator: (v) => (v == null || v.isEmpty) ? l10n.requiredField : null,
            ),
            const SizedBox(height: Spacing.md),
            TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: l10n.shortDescription,
                border: const OutlineInputBorder(),
              ),
              maxLines: 2,
            ),
            const SizedBox(height: Spacing.md),
            TextFormField(
              controller: _prepTimeController,
              decoration: InputDecoration(
                labelText: l10n.prepTimeMinutes,
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.timer_outlined),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: Spacing.lg),
            Text(l10n.recipeImage, style: theme.textTheme.titleMedium),
            const SizedBox(height: Spacing.sm),
            if (_pickedImage != null || _imageUrlController.text.isNotEmpty)
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(RadiusTokens.md),
                    child: _pickedImage != null
                        ? Image.file(_pickedImage!, height: 150, width: double.infinity, fit: BoxFit.cover)
                        : Image.network(_imageUrlController.text, height: 150, width: double.infinity, fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: 4,
                    right: 4,
                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      style: IconButton.styleFrom(backgroundColor: Colors.black54),
                      onPressed: () => setState(() {
                        _pickedImage = null;
                        _imageUrlController.clear();
                      }),
                    ),
                  ),
                ],
              ),
            const SizedBox(height: Spacing.sm),
            Row(
              children: [
                OutlinedButton.icon(
                  onPressed: _pickImage,
                  icon: const Icon(Icons.image_outlined),
                  label: Text(l10n.addPhoto),
                ),
                const SizedBox(width: Spacing.sm),
                Expanded(
                  child: TextFormField(
                    controller: _imageUrlController,
                    decoration: InputDecoration(
                      hintText: l10n.imageUrlPlaceholder,
                      border: const OutlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: Spacing.lg),
            Text(l10n.recipeTags, style: theme.textTheme.titleMedium),
            const SizedBox(height: Spacing.sm),
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: [
                ..._selectedTags.map(
                  (tag) => Chip(
                    label: Text(tag, style: const TextStyle(fontSize: 12)),
                    deleteIcon: const Icon(Icons.close, size: 16),
                    onDeleted: () => _removeTag(tag),
                  ),
                ),
              ],
            ),
            if (_selectedTags.isNotEmpty) const SizedBox(height: Spacing.sm),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _tagController,
                    decoration: InputDecoration(
                      hintText: l10n.tags,
                      border: const OutlineInputBorder(),
                      isDense: true,
                    ),
                    onSubmitted: _addTag,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: () => _addTag(_tagController.text),
                ),
              ],
            ),
            if (categoriesAsync.value != null) ...[
              const SizedBox(height: Spacing.xs),
              Text(l10n.suggestedTags, style: theme.textTheme.labelSmall),
              const SizedBox(height: 4),
              Wrap(
                spacing: 4,
                runSpacing: 2,
                children: categoriesAsync.value!.map(
                  (cat) => ActionChip(
                    label: Text(cat.name, style: const TextStyle(fontSize: 11)),
                    onPressed: _selectedTags.contains(cat.name) ? null : () => _addTag(cat.name),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                  ),
                ).toList(),
              ),
            ],
            const SizedBox(height: Spacing.lg),
            Text(l10n.ingredients, style: theme.textTheme.titleMedium),
            const SizedBox(height: Spacing.sm),
            ..._ingredientControllers.asMap().entries.map((entry) {
              final index = entry.key;
              final controller = entry.value;
              return Padding(
                padding: const EdgeInsets.only(bottom: Spacing.sm),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: controller,
                        decoration: InputDecoration(
                          labelText: '${l10n.ingredients} ${index + 1}',
                          border: const OutlineInputBorder(),
                          isDense: true,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.remove_circle_outline),
                      onPressed: () {
                        if (_ingredientControllers.length > 1) {
                          setState(() {
                            _ingredientControllers.removeAt(index);
                          });
                        }
                      },
                    ),
                  ],
                ),
              );
            }),
            TextButton.icon(
              onPressed: () {
                setState(() {
                  _ingredientControllers.add(TextEditingController());
                });
              },
              icon: const Icon(Icons.add),
              label: Text(l10n.addIngredient),
            ),
            const SizedBox(height: Spacing.lg),
            Text(l10n.instructions, style: theme.textTheme.titleMedium),
            const SizedBox(height: Spacing.sm),
            TextFormField(
              controller: _instructionsController,
              decoration: InputDecoration(
                hintText: l10n.instructionsHint,
                border: const OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
