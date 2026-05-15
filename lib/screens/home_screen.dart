import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import '../providers/shopping_lists_provider.dart';
import '../providers/shopping_list_provider.dart';
import '../providers/budget_provider.dart';
import '../providers/current_list_provider.dart';
import '../widgets/shopping_item_tile.dart';
import '../widgets/add_item_dialog.dart';
import '../widgets/empty_state.dart';
import '../widgets/budget_dialog.dart';
import '../widgets/filter_bar.dart';
import '../widgets/create_list_dialog.dart';
import '../models/shopping_item.dart';
import '../models/shopping_list.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key, required this.listId});

  final String listId;

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  FilterType _filter = FilterType.all;
  SortType _sort = SortType.date;

  @override
  Widget build(BuildContext context) {
    final itemsAsync = ref.watch(shoppingListItemsProvider(widget.listId));
    final budgetAsync = ref.watch(budgetProvider(widget.listId));
    final listsAsync = ref.watch(shoppingListsProvider);
    final currentList = listsAsync.value?.firstWhere(
      (l) => l.id == widget.listId,
      orElse: () => ShoppingList(name: 'Lista'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(currentList?.name ?? 'Lista de Compras'),
            if (budgetAsync.value != null)
              Builder(builder: (context) {
                final items = itemsAsync.value ?? [];
                final totalSpent = items
                    .where((i) => i.isPurchased && i.estimatedPrice != null)
                    // ignore: prefer_int_literals
                    .fold(0.0, (sum, i) => sum + i.estimatedPrice!);
                final budget = budgetAsync.value!;
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
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              final items = itemsAsync.value ?? [];
              showSearch(
                context: context,
                delegate: ShoppingSearchDelegate(items),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_balance_wallet),
            onPressed: () => _showBudgetDialog(context, budgetAsync.value),
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
              }
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text('Minhas Listas')),
            ...listsAsync.value?.map((list) => ListTile(
              title: Text(list.name),
              trailing: widget.listId == list.id ? const Icon(Icons.check) : null,
              onTap: () {
                ref.read(currentListIdProvider.notifier).setCurrentList(list.id);
                Navigator.pop(context);
              },
            )) ?? [],
            const Divider(),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Nova Lista'),
              onTap: () async {
                final name = await showDialog<String>(
                  context: context,
                  builder: (_) => const CreateListDialog(),
                );
                if (name != null && name.isNotEmpty) {
                  await ref.read(shoppingListsProvider.notifier).createList(name);
                  ref.invalidate(currentListIdProvider);
                }
                if (context.mounted) {
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
      body: itemsAsync.when(
        data: (items) {
          if (items.isEmpty) {
            return const EmptyState();
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
                child: _sort == SortType.manual
                    ? ReorderableListView.builder(
                        itemCount: sorted.length,
                        itemBuilder: (context, index) =>
                            ShoppingItemTile(key: ValueKey(sorted[index].id), listId: widget.listId, item: sorted[index]),
                        onReorder: (oldIndex, newIndex) {
                          ref.read(shoppingListItemsProvider(widget.listId).notifier).reorderItem(oldIndex, newIndex);
                        },
                      )
                    : ListView.builder(
                        itemCount: sorted.length,
                        itemBuilder: (context, index) =>
                            ShoppingItemTile(key: ValueKey(sorted[index].id), listId: widget.listId, item: sorted[index]),
                      ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Erro: $e')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(context: context, builder: (_) => AddItemDialog(listId: widget.listId)),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showBudgetDialog(BuildContext context, double? currentBudget) {
    showDialog(
      context: context,
      builder: (_) => BudgetDialog(listId: widget.listId, currentBudget: currentBudget),
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
  ShoppingSearchDelegate(this.items);

  final List<ShoppingItem> items;

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
      itemBuilder: (context, index) => ShoppingItemTile(listId: '', item: results[index]),
    );
  }
}
