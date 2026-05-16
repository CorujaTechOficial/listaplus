import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import '../providers/shopping_lists_provider.dart';
import '../providers/shopping_list_provider.dart';
import '../providers/revenuecat_service_provider.dart';
import '../widgets/shopping_item_tile.dart';
import '../widgets/add_item_dialog.dart';
import '../widgets/empty_state.dart';
import '../widgets/budget_dialog.dart';
import '../widgets/filter_bar.dart';
import '../models/shopping_item.dart';
import '../models/shopping_list.dart';
import '../providers/share_provider.dart';
import '../providers/premium_provider.dart';
import '../providers/analytics_service_provider.dart';
import 'paywall_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key, required this.listId});

  final String listId;

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  FilterType _filter = FilterType.all;
  SortType _sort = SortType.date;
  bool _selectionMode = false;
  final Set<String> _selectedIds = {};

  @override
  Widget build(BuildContext context) {
    final itemsAsync = ref.watch(shoppingListItemsProvider(widget.listId));
    final listsAsync = ref.watch(shoppingListsProvider);
    final currentList = listsAsync.value?.firstWhere(
      (l) => l.id == widget.listId,
      orElse: () => ShoppingList(name: 'Lista'),
    );

    return Scaffold(
      appBar: AppBar(
        title: _selectionMode
            ? Text('${_selectedIds.length} selecionado${_selectedIds.length != 1 ? 's' : ''}')
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(currentList?.name ?? 'Lista de Compras'),
                  if (currentList?.budget != null)
                    Builder(builder: (context) {
                final items = itemsAsync.value ?? [];
                final totalSpent = items
                    .where((i) => i.isPurchased && i.estimatedPrice != null)
                    // ignore: prefer_int_literals
                    .fold(0.0, (sum, i) => sum + i.estimatedPrice!);
                final budget = currentList!.budget!;
                final progress = (totalSpent / budget).clamp(0.0, 1.0);
                return Column(
                  children: [
                    const SizedBox(height: 4),
                    LinearProgressIndicator(value: progress, minHeight: 4),
                    Text(
                      'R\$ ${totalSpent.toStringAsFixed(0)} / R\$ ${budget.toStringAsFixed(0)}',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                );
              }),
          ],
        ),
        actions: _selectionMode
            ? [
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => _exitSelectionMode(),
                ),
              ]
            : [
                IconButton(
                  icon: const Icon(Icons.checklist),
                  onPressed: () => itemsAsync.value?.isNotEmpty == true ? _enterSelectionMode() : null,
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    final items = itemsAsync.value ?? [];
                    showSearch(
                      context: context,
                      delegate: ShoppingSearchDelegate(items, widget.listId),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.account_balance_wallet),
                  onPressed: () => _showBudgetDialog(context, currentList!),
                ),
                PopupMenuButton(icon: const Icon(Icons.more_vert),
                  itemBuilder: (_) => [
                    const PopupMenuItem(
                      value: 'clear_purchased',
                      child: Text('Limpar comprados'),
                    ),
                    const PopupMenuItem(
                      value: 'clear',
                      child: Text('Limpar lista'),
                    ),
                    const PopupMenuItem(
                      value: 'share',
                      child: Text('Compartilhar'),
                    ),
                    const PopupMenuItem(
                      value: 'share_code',
                      child: Text('Compartilhar via código'),
                    ),
                    const PopupMenuItem(
                      value: 'manage_subscription',
                      child: Text('Gerenciar assinatura'),
                    ),
                  ],
                  onSelected: (value) async {
                    final items = itemsAsync.value ?? [];
                    if (value == 'clear_purchased') {
                      await ref.read(shoppingListItemsProvider(widget.listId).notifier).clearPurchased();
                    } else if (value == 'clear') {
                      final confirm = await showDialog<bool>(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: const Text('Confirmar'),
                          content: const Text('Remover todos os itens?'),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancelar')),
                            TextButton(onPressed: () => Navigator.pop(context, true), child: const Text('Remover')),
                          ],
                        ),
                      );
                      if (confirm == true && context.mounted) {
                        await ref.read(shoppingListItemsProvider(widget.listId).notifier).clearAll();
                      }
                    } else if (value == 'share') {
                      await _shareList(items, currentList?.name);
                    } else if (value == 'share_code') {
                      final isPremium = ref.read(premiumProvider).value ?? false;
                      if (!isPremium) {
                        await ref.read(analyticsServiceProvider).logUpgradeTapped('share_code');
                        if (context.mounted) {
                          await Navigator.push(context, MaterialPageRoute(builder: (_) => const PaywallScreen()));
                        }
                        return;
                      }
                      try {
                        final shareService = ref.read(shareServiceProvider);
                        final code = await shareService.createShareCode(widget.listId);
                        if (context.mounted) {
                          await showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: const Text('Compartilhar Lista'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text('Compartilhe este código:'),
                                  const SizedBox(height: 16),
                                  Container(
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).colorScheme.surfaceContainerHighest,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: SelectableText(
                                      code,
                                      style: const TextStyle(fontSize: 24, letterSpacing: 4, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text('Válido por tempo limitado', style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
                                ],
                              ),
                              actions: [
                                TextButton(onPressed: () => Navigator.pop(context), child: const Text('Fechar')),
                              ],
                            ),
                          );
                        }
                      } on Exception catch (e) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Erro: $e')));
                        }
                      }
                    } else if (value == 'manage_subscription') {
                      try {
                        await ref.read(analyticsServiceProvider).logCustomerCenterOpened();
                        await ref.read(revenueCatServiceProvider).presentCustomerCenter();
                      } on Exception catch (e) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Erro: $e')));
                        }
                      }
                    }
                  },
                ),
              ],
            ),
      body: itemsAsync.when(
        data: (items) {
          if (items.isEmpty) {
            return RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(shoppingListItemsProvider(widget.listId));
                await ref.read(shoppingListItemsProvider(widget.listId).future);
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: const EmptyState(),
                ),
              ),
            );
          }

          // Apply filter
          Iterable<ShoppingItem> filtered = items;
          if (_filter == FilterType.pending) {
            filtered = filtered.where((i) => !i.isPurchased);
          } else if (_filter == FilterType.purchased) {
            filtered = filtered.where((i) => i.isPurchased);
          }

          // Apply sort
          final sorted = filtered.toList();
          switch (_sort) {
            case SortType.name:
              sorted.sort((a, b) => a.name.compareTo(b.name));
              break;
            case SortType.category:
              sorted.sort((a, b) => a.category.name.compareTo(b.category.name));
              break;
            case SortType.date:
              sorted.sort((a, b) => b.updatedAt.compareTo(a.updatedAt));
              break;
            case SortType.manual:
              break;
          }

          // Calculate totals
          // ignore: prefer_int_literals
          final totalEstimated = items.fold(0.0, (sum, i) => sum + (i.estimatedPrice ?? 0) * i.quantity);
          final totalPurchased = items
              .where((i) => i.isPurchased && i.estimatedPrice != null)
              // ignore: prefer_int_literals
              .fold(0.0, (sum, i) => sum + i.estimatedPrice! * i.quantity);

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    FilterBar(
                      filter: _filter,
                      sort: _sort,
                      onFilterChanged: (f) => setState(() => _filter = f),
                      onSortChanged: (s) => setState(() => _sort = s),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Estimado: R\$ ${totalEstimated.toStringAsFixed(2)}'),
                        Text('Comprado: R\$ ${totalPurchased.toStringAsFixed(2)}'),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    ref.invalidate(shoppingListItemsProvider(widget.listId));
                    await ref.read(shoppingListItemsProvider(widget.listId).future);
                  },
                  child: _sort == SortType.manual
                      ? ReorderableListView.builder(
                          itemCount: sorted.length,
                          itemBuilder: (context, index) =>
                              ShoppingItemTile(
                                key: ValueKey(sorted[index].id),
                                listId: widget.listId,
                                item: sorted[index],
                                selectionMode: _selectionMode,
                                isSelected: _selectedIds.contains(sorted[index].id),
                                onSelectionChanged: (selected) {
                                  setState(() {
                                    if (selected) {
                                      _selectedIds.add(sorted[index].id);
                                    } else {
                                      _selectedIds.remove(sorted[index].id);
                                    }
                                  });
                                },
                              ),
                          onReorder: (oldIndex, newIndex) {
                            ref.read(shoppingListItemsProvider(widget.listId).notifier).reorderItem(oldIndex, newIndex);
                          },
                        )
                      : ListView.builder(
                          itemCount: sorted.length,
                          itemBuilder: (context, index) =>
                              ShoppingItemTile(
                                key: ValueKey(sorted[index].id),
                                listId: widget.listId,
                                item: sorted[index],
                                selectionMode: _selectionMode,
                                isSelected: _selectedIds.contains(sorted[index].id),
                                onSelectionChanged: (selected) {
                                  setState(() {
                                    if (selected) {
                                      _selectedIds.add(sorted[index].id);
                                    } else {
                                      _selectedIds.remove(sorted[index].id);
                                    }
                                  });
                                },
                              ),
                        ),
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Erro: $e')),
      ),
      floatingActionButton: _selectionMode
          ? null
          : FloatingActionButton(
              onPressed: () => showDialog(context: context, builder: (_) => AddItemDialog(listId: widget.listId)),
              child: const Icon(Icons.add),
            ),
      bottomNavigationBar: _selectionMode && _selectedIds.isNotEmpty
          ? BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    icon: const Icon(Icons.delete_outline),
                    label: const Text('Excluir'),
                    onPressed: () => _deleteSelected(),
                  ),
                  TextButton.icon(
                    icon: const Icon(Icons.check_circle_outline),
                    label: const Text('Comprar'),
                    onPressed: () => _markSelected(true),
                  ),
                  TextButton.icon(
                    icon: const Icon(Icons.undo),
                    label: const Text('Desmarcar'),
                    onPressed: () => _markSelected(false),
                  ),
                ],
              ),
            )
          : null,
    );
  }

  void _enterSelectionMode() {
    setState(() => _selectionMode = true);
  }

  void _exitSelectionMode() {
    setState(() {
      _selectionMode = false;
      _selectedIds.clear();
    });
  }

  Future<void> _deleteSelected() async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Confirmar'),
        content: Text('Remover ${_selectedIds.length} item(ns)?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancelar')),
          TextButton(onPressed: () => Navigator.pop(context, true), child: const Text('Remover')),
        ],
      ),
    );
    if (confirm == true && context.mounted) {
      await ref.read(shoppingListItemsProvider(widget.listId).notifier).removeItems(_selectedIds.toList());
      _exitSelectionMode();
    }
  }

  Future<void> _markSelected(bool isPurchased) async {
    await ref.read(shoppingListItemsProvider(widget.listId).notifier).togglePurchasedBatch(
      _selectedIds.toList(),
      isPurchased,
    );
    _exitSelectionMode();
  }

  void _showBudgetDialog(BuildContext context, ShoppingList list) {
    showDialog(
      context: context,
      builder: (_) => BudgetDialog(list: list),
    );
  }

  Future<void> _shareList(List<ShoppingItem> items, String? listName) async {
    if (items.isEmpty) {
      return;
    }
    final text = items.asMap().entries.map((e) {
      final i = e.value;
      return '${e.key + 1}. ${i.name} — ${i.quantity}${i.unit.label} (${i.category.label})${i.estimatedPrice != null ? ' R\$${i.estimatedPrice!.toStringAsFixed(2)}' : ''}';
    }).join('\n');
    await SharePlus.instance.share(ShareParams(text: text, subject: listName ?? 'Lista de Compras'));
  }
}

class ShoppingSearchDelegate extends SearchDelegate<String> {
  ShoppingSearchDelegate(this.items, this.listId);

  final List<ShoppingItem> items;
  final String listId;

  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(icon: const Icon(Icons.clear), onPressed: () => query = ''),
      ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, ''),
      );

  @override
  Widget buildResults(BuildContext context) => _buildResults();

  @override
  Widget buildSuggestions(BuildContext context) => _buildResults();

  Widget _buildResults() {
    final results = items.where((i) => i.name.toLowerCase().contains(query.toLowerCase())).toList();
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) => ShoppingItemTile(listId: listId, item: results[index]),
    );
  }
}
