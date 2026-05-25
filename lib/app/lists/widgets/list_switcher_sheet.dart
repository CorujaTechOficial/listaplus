import 'package:flutter/material.dart';
// coverage:ignore-start
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../models/shopping_list.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/lists/providers/share_provider.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import '../../../theme/page_transitions.dart';
import '../../../theme/tokens.dart';
import 'create_list_dialog.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class ListSwitcherSheet extends ConsumerStatefulWidget {
  const ListSwitcherSheet({super.key, required this.currentListId});

  final String currentListId;

  @override
  ConsumerState<ListSwitcherSheet> createState() => _ListSwitcherSheetState();
}

class _ListSwitcherSheetState extends ConsumerState<ListSwitcherSheet> {
  bool _showArchived = false;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
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
                    _showArchived ? l10n.listHistory : l10n.myLists,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: Icon(_showArchived ? Icons.list_alt : Icons.history),
                    tooltip: _showArchived ? l10n.viewActive : l10n.viewHistory,
                    onPressed: () => setState(() => _showArchived = !_showArchived),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            if (listsAsync.value case final allLists?)
              Builder(builder: (context) {
                final lists = allLists.where((l) => l.isArchived == _showArchived).toList();
                
                if (lists.isEmpty) {
                  return Padding(
                    padding: const EdgeInsets.all(Spacing.xl),
                    child: Center(
                      child: Text(
                        _showArchived ? l10n.noArchivedLists : l10n.noActiveLists,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  );
                }

                return Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: lists.length,
                    itemBuilder: (context, index) {
                      final list = lists[index];
                      final isCurrent = list.id == widget.currentListId;
                      return ListTile(
                        leading: Icon(
                          _showArchived 
                              ? Icons.archive_outlined
                              : (list.isShared ? Icons.group : (isCurrent ? Icons.check_circle : Icons.circle_outlined)),
                          color: _showArchived
                              ? theme.colorScheme.onSurfaceVariant
                              : (list.isShared
                                  ? theme.colorScheme.tertiary
                                  : (isCurrent
                                      ? theme.colorScheme.primary
                                      : theme.colorScheme.onSurfaceVariant)),
                        ),
                        title: Hero(
                          tag: 'list_name_${list.id}',
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              list.name,
                              style: TextStyle(
                                fontWeight:
                                    isCurrent ? FontWeight.w700 : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        subtitle: _showArchived && list.archivedAt != null
                            ? Text(
                                l10n.completedOn('${list.archivedAt!.day}/${list.archivedAt!.month}/${list.archivedAt!.year}'),
                                style: theme.textTheme.bodySmall,
                              )
                            : list.isShared
                                ? Text(
                                    l10n.sharedLabel,
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: theme.colorScheme.tertiary,
                                    ),
                                  )
                                : null,
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (_showArchived)
                              IconButton(
                                icon: const Icon(Icons.unarchive_outlined, size: 20),
                                tooltip: l10n.restore,
                                onPressed: () => _unarchiveList(list),
                              ),
                            if (list.isShared)
                              IconButton(
                                icon: Icon(
                                  Icons.remove_circle_outline,
                                  size: 20,
                                  color: theme.colorScheme.error,
                                ),
                                tooltip: l10n.removeSharedTooltip,
                                onPressed: () => _removeSharedList(list),
                              )
                            else ...[
                              IconButton(
                                icon: const Icon(Icons.edit_outlined, size: 20),
                                tooltip: l10n.rename,
                                onPressed: () => _renameList(list),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.delete_outline,
                                  size: 20,
                                  color: theme.colorScheme.error,
                                ),
                                tooltip: l10n.delete,
                                onPressed: () => _deleteList(list),
                              ),
                            ],
                          ],
                        ),
                        onTap: (isCurrent || _showArchived) ? null : () => _switchList(list.id),
                      );
                    },
                  ),
                );
              })
            else
              const Padding(
                padding: EdgeInsets.all(Spacing.xl),
                child: Center(child: CircularProgressIndicator()),
              ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.sm),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: _importSharedList,
                      icon: const Icon(Icons.cloud_download_outlined),
                      label: Text(l10n.importViaCode),
                    ),
                  ),
                  const SizedBox(width: Spacing.sm),
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: _createList,
                      icon: const Icon(Icons.add),
                      label: Text(l10n.createNewList),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _unarchiveList(ShoppingList list) {
    ref.read(shoppingListsProvider.notifier).unarchiveList(list.id);
  }

  void _switchList(String listId) {
    Navigator.pop(context);
    ref.read(currentListIdProvider.notifier).setCurrentList(listId);
  }

  Future<void> _createList() async {
    final isPremium = ref.read(premiumProvider).value ?? false;
    final listsCount = ref.read(shoppingListsProvider).value?.length ?? 0;
    if (!isPremium && listsCount >= 3) {
      if (!mounted) {
        return;
      }
      await Navigator.push(
        context,
        fadeSlideRoute<void>(const PaywallScreen()),
      );
      return;
    }

    var created = false;
    await showDialog<void>(
      context: context,
      builder: (_) => CreateListDialog(
        onCreate: (name) async {
          await ref.read(shoppingListsProvider.notifier).createList(name);
          ref.invalidate(currentListIdProvider);
          created = true;
        },
      ),
    );
    if (mounted && created) {
      Navigator.pop(context);
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
      builder: (_) {
        final dl10n = AppLocalizations.of(context)!;
        return AlertDialog(
          title: Text(dl10n.deleteListTitle),
          content: Text(dl10n.deleteListContent(list.name)),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text(dl10n.cancel),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text(dl10n.delete),
            ),
          ],
        );
      },
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
      builder: (_) {
        final dl10n = AppLocalizations.of(context)!;
        return AlertDialog(
          title: Text(dl10n.removeSharedListTitle),
          content: Text(dl10n.removeSharedListContent(list.name)),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text(dl10n.cancel),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text(dl10n.remove),
            ),
          ],
        );
      },
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

  Future<void> _importSharedList() async {
    final isPremium = ref.read(premiumProvider).value ?? false;
    final listsCount = ref.read(shoppingListsProvider).value?.length ?? 0;
    if (!isPremium && listsCount >= 3) {
      if (!mounted) {
        return;
      }
      await Navigator.push(
        context,
        fadeSlideRoute<void>(const PaywallScreen()),
      );
      return;
    }

    final l10n = AppLocalizations.of(context)!;
    final codeController = TextEditingController();
    try {
      final code = await showDialog<String>(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(l10n.importListTitle),
          content: TextField(
            controller: codeController,
            textCapitalization: TextCapitalization.characters,
            decoration: InputDecoration(
              hintText: l10n.enterCodeHint,
              border: const OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.cancel),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, codeController.text.trim()),
              child: Text(l10n.import),
            ),
          ],
        ),
      );
      if (code == null || code.isEmpty) {
        return;
      }
      if (!mounted) {
        return;
      }
      try {
        final shareService = ref.read(shareServiceProvider);
        final result = await shareService.importSharedList(code);
        if (!mounted) {
          return;
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.listAdded(result.listName))),
        );
        Navigator.pop(context);
        ref.invalidate(shoppingListsProvider);
        await ref.read(currentListIdProvider.notifier).setCurrentList(result.listId);
      } on Exception catch (e) {
        if (!mounted) {
          return;
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.error(e.toString()))),
        );
      }
    } finally {
      codeController.dispose();
    }
  }
}
// coverage:ignore-end
