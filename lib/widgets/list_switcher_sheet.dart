import 'package:flutter/material.dart';
// coverage:ignore-start
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/shopping_list.dart';
import '../providers/current_list_provider.dart';
import '../providers/shopping_lists_provider.dart';
import '../theme/tokens.dart';
import 'create_list_dialog.dart';

class ListSwitcherSheet extends ConsumerStatefulWidget {
  const ListSwitcherSheet({super.key, required this.currentListId});

  final String currentListId;

  @override
  ConsumerState<ListSwitcherSheet> createState() => _ListSwitcherSheetState();
}

class _ListSwitcherSheetState extends ConsumerState<ListSwitcherSheet> {
  @override
  Widget build(BuildContext context) {
    final listsAsync = ref.watch(shoppingListsProvider);
    final theme = Theme.of(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: Spacing.sm),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.md,
                vertical: Spacing.sm,
              ),
              child: Row(
                children: [
                  Text(
                    'Minhas Listas',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            if (listsAsync.value case final lists?)
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: lists.length,
                  itemBuilder: (context, index) {
                    final list = lists[index];
                    final isCurrent = list.id == widget.currentListId;
                    return ListTile(
                      leading: Icon(
                        list.isShared ? Icons.group : (isCurrent ? Icons.check_circle : Icons.circle_outlined),
                        color: list.isShared
                            ? theme.colorScheme.tertiary
                            : (isCurrent
                                ? theme.colorScheme.primary
                                : theme.colorScheme.onSurfaceVariant),
                      ),
                      title: Text(
                        list.name,
                        style: TextStyle(
                          fontWeight:
                              isCurrent ? FontWeight.w700 : FontWeight.normal,
                        ),
                      ),
                      subtitle: list.isShared
                          ? Text(
                              'Compartilhada',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.tertiary,
                              ),
                            )
                          : null,
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (list.isShared)
                            IconButton(
                              icon: Icon(
                                Icons.remove_circle_outline,
                                size: 20,
                                color: theme.colorScheme.error,
                              ),
                              onPressed: () => _removeSharedList(list),
                            )
                          else ...[
                            IconButton(
                              icon: const Icon(Icons.edit_outlined, size: 20),
                              onPressed: () => _renameList(list),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.delete_outline,
                                size: 20,
                                color: theme.colorScheme.error,
                              ),
                              onPressed: () => _deleteList(list),
                            ),
                          ],
                        ],
                      ),
                      onTap: isCurrent ? null : () => _switchList(list.id),
                    );
                  },
                ),
              )
            else
              const Padding(
                padding: EdgeInsets.all(Spacing.xl),
                child: Center(child: CircularProgressIndicator()),
              ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(Spacing.md),
              child: FilledButton.tonalIcon(
                onPressed: _createList,
                icon: const Icon(Icons.add),
                label: const Text('Criar nova lista'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _switchList(String listId) {
    Navigator.pop(context);
    ref.read(currentListIdProvider.notifier).setCurrentList(listId);
  }

  Future<void> _createList() async {
    final name = await showDialog<String>(
      context: context,
      builder: (_) => const CreateListDialog(),
    );
    if (name == null || name.isEmpty) {
      return;
    }
    if (!mounted) {
      return;
    }
    try {
      await ref.read(shoppingListsProvider.notifier).createList(name);
      if (!mounted) {
        return;
      }
      Navigator.pop(context);
      ref.invalidate(currentListIdProvider);
    } on Exception catch (e) {
      if (!mounted) {
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }

  Future<void> _renameList(ShoppingList list) async {
    final name = await showDialog<String>(
      context: context,
      builder: (_) => CreateListDialog(initialName: list.name),
    );
    if (name == null || name.isEmpty) {
      return;
    }
    if (!mounted) {
      return;
    }
    await ref.read(shoppingListsProvider.notifier).updateList(
      list.copyWith(name: name),
    );
  }

  Future<void> _deleteList(ShoppingList list) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Excluir lista'),
        content: Text(
          'Tem certeza que deseja excluir "${list.name}"? '
          'Todos os itens serão removidos.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Excluir'),
          ),
        ],
      ),
    );
    if (confirm != true) {
      return;
    }
    if (!mounted) {
      return;
    }
    await ref.read(shoppingListsProvider.notifier).deleteList(list.id);
    if (!mounted) {
      return;
    }
    Navigator.pop(context);
    ref.invalidate(currentListIdProvider);
  }

  Future<void> _removeSharedList(ShoppingList list) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Remover lista compartilhada'),
        content: Text(
          'Remover "${list.name}" da sua lista de listas? '
          'A lista original não será afetada.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Remover'),
          ),
        ],
      ),
    );
    if (confirm != true) {
      return;
    }
    if (!mounted) {
      return;
    }
    await ref.read(shoppingListsProvider.notifier).removeSharedList(list.id);
    if (!mounted) {
      return;
    }
    if (list.id == widget.currentListId) {
      Navigator.pop(context);
      ref.invalidate(currentListIdProvider);
    }
  }
}
// coverage:ignore-end
