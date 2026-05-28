import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/domain/entities/category_data.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/app/lists/widgets/add_edit_category_dialog.dart';

class ManageCategoriesScreen extends ConsumerWidget {
  const ManageCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsync = ref.watch(categoriesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerenciar Categorias'),
      ),
      body: SafeArea(
        child: categoriesAsync.when(
          data: (categories) => _CategoriesList(categories: categories),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Center(child: Text('Erro: $e')),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () => _addCategory(context, ref),
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _addCategory(BuildContext context, WidgetRef ref) async {
    final premiumAsync = ref.read(premiumProvider);
    final categories = ref.read(categoriesProvider).value ?? [];
    final isPremium = premiumAsync.value ?? false;

    if (!isPremium && categories.length >= 10) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Limite de 10 categorias na versão gratuita. Faça upgrade para o Pro!')),
        );
      }
      return;
    }

    if (context.mounted) {
      await showDialog<void>(
        context: context,
        builder: (_) => const AddEditCategoryDialog(),
      );
    }
  }
}

class _CategoriesList extends ConsumerWidget {
  const _CategoriesList({required this.categories});

  final List<CategoryData> categories;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (categories.isEmpty) {
      return const Center(child: Text('Nenhuma categoria.'));
    }

    return ReorderableListView.builder(
      itemCount: categories.length,
      onReorderItem: (oldIndex, newIndex) {
        final updated = List<CategoryData>.from(categories)
          ..insert(newIndex, categories.removeAt(oldIndex));
        ref.read(categoriesProvider.notifier).reorderCategories(updated);
      },
      itemBuilder: (context, index) {
        final cat = categories[index];
        final color = Color(cat.color);
        return ListTile(
          key: ValueKey(cat.id),
          leading: CircleAvatar(
            backgroundColor: color.withAlpha((0.2 * 255).toInt()),
            // ignore: non_const_argument_for_const_parameter
            child: Icon(cat.icon, color: color),
          ),
          title: Text(cat.name),
          subtitle: Text('ID: ${cat.id}'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (cat.id != 'others')
                IconButton(
                  icon: const Icon(Icons.delete_outline, color: Colors.red),
                  onPressed: () => _deleteCategory(context, ref, cat),
                ),
              IconButton(
                icon: const Icon(Icons.edit_outlined),
                onPressed: () => _editCategory(context, ref, cat),
              ),
              const Icon(Icons.drag_handle),
            ],
          ),
        );
      },
    );
  }

  Future<void> _editCategory(BuildContext context, WidgetRef ref, CategoryData cat) async {
    if (context.mounted) {
      await showDialog<void>(
        context: context,
        builder: (_) => AddEditCategoryDialog(existing: cat),
      );
    }
  }

  Future<void> _deleteCategory(BuildContext context, WidgetRef ref, CategoryData cat) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Excluir Categoria'),
        content: Text('Itens com a categoria "${cat.name}" serão movidos para "Outros".\nContinuar?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Cancelar')),
          ElevatedButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Excluir'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await ref.read(categoriesProvider.notifier).deleteCategory(cat.id);
    }
  }
}
