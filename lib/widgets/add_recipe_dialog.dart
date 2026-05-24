import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../models/recipe.dart';
import '../models/shopping_item.dart';
import '../models/unit.dart';
import '../providers/recipes_provider.dart';
import '../theme/tokens.dart';

class AddRecipeDialog extends ConsumerStatefulWidget {
  const AddRecipeDialog({super.key});

  @override
  ConsumerState<AddRecipeDialog> createState() => _AddRecipeDialogState();
}

class _AddRecipeDialogState extends ConsumerState<AddRecipeDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _instructionsController = TextEditingController();
  final _prepTimeController = TextEditingController(text: '30');
  final List<TextEditingController> _ingredientControllers = [TextEditingController()];
  bool _isSaving = false;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _instructionsController.dispose();
    _prepTimeController.dispose();
    for (final c in _ingredientControllers) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isSaving = true);

    try {
      final ingredients = _ingredientControllers
          .where((c) => c.text.trim().isNotEmpty)
          .map((c) => ShoppingItem(
                name: c.text.trim(),
                quantity: 1,
                shoppingListId: '', // Recipes don't belong to a specific list
                unit: Unit.un,
              ))
          .toList();

      final instructions = _instructionsController.text
          .split('\n')
          .where((s) => s.trim().isNotEmpty)
          .toList();

      final recipe = Recipe(
        name: _nameController.text.trim(),
        description: _descriptionController.text.trim(),
        ingredients: ingredients,
        instructions: instructions,
        prepTimeMinutes: int.tryParse(_prepTimeController.text) ?? 30,
      );

      await ref.read(recipesProvider.notifier).saveRecipe(recipe);
      if (mounted) Navigator.pop(context);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro ao salvar receita: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Receita'),
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
              child: const Text('SALVAR'),
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
              decoration: const InputDecoration(
                labelText: 'Nome da Receita',
                border: OutlineInputBorder(),
              ),
              validator: (v) => (v == null || v.isEmpty) ? 'Obrigatório' : null,
            ),
            const SizedBox(height: Spacing.md),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Descrição Curta',
                border: OutlineInputBorder(),
              ),
              maxLines: 2,
            ),
            const SizedBox(height: Spacing.md),
            TextFormField(
              controller: _prepTimeController,
              decoration: const InputDecoration(
                labelText: 'Tempo de Preparo (minutos)',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.timer_outlined),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: Spacing.lg),
            Text('Ingredientes', style: theme.textTheme.titleMedium),
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
                          labelText: 'Ingrediente ${index + 1}',
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
              label: const Text('Adicionar Ingrediente'),
            ),
            const SizedBox(height: Spacing.lg),
            Text('Instruções', style: theme.textTheme.titleMedium),
            const SizedBox(height: Spacing.sm),
            TextFormField(
              controller: _instructionsController,
              decoration: const InputDecoration(
                hintText: 'Digite um passo por linha...',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
