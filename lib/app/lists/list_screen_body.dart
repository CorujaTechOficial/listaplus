// coverage:ignore-start
import 'dart:async';
import 'dart:io';
import 'package:confetti/confetti.dart';
import 'package:excel/excel.dart' as ex;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/app/lists/providers/share_provider.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/core/theme/colors.dart';
import '../../theme/page_transitions.dart';
import '../../theme/tokens.dart';
import 'package:shopping_list/app/lists/widgets/add_item_dialog.dart';
import 'package:shopping_list/app/lists/widgets/budget_dialog.dart';
import 'package:shopping_list/app/lists/widgets/empty_state.dart';
import 'package:shopping_list/app/lists/widgets/filter_bar.dart';
import 'package:shopping_list/app/lists/widgets/list_switcher_sheet.dart';
import 'package:shopping_list/app/lists/widgets/quick_add_bar.dart';
import 'package:shopping_list/app/lists/widgets/shopping_item_tile.dart';
import '../../models/category_data.dart';
import '../../models/shopping_item.dart';
import '../../models/shopping_list.dart';
import 'package:shopping_list/app/ai/screens/chat_screen.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import 'package:shopping_list/app/settings/screens/settings_screen.dart';
import 'package:shopping_list/app/settings/screens/user_profile_screen.dart';

class ListScreenBody extends ConsumerStatefulWidget {
  const ListScreenBody({super.key, required this.listId});
  final String listId;
  @override
  ConsumerState<ListScreenBody> createState() => _ListScreenBodyState();
}

class _ListScreenBodyState extends ConsumerState<ListScreenBody> with TickerProviderStateMixin {
  late ConfettiController _confettiController;
  FilterType _filter = FilterType.all;
  SortType _sort = SortType.manual;
  bool _selectionMode = false;
  final Set<String> _selectedIds = {};

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  void _showAddItemDialog() {
    showDialog<void>(context: context, builder: (_) => AddItemDialog(listId: widget.listId));
  }

  void _showListSwitcher() {
    showModalBottomSheet<void>(context: context, builder: (_) => ListSwitcherSheet(currentListId: widget.listId));
  }

  void _showSortOptions() {
    final l10n = AppLocalizations.of(context)!;
    showModalBottomSheet<void>(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.sort_by_alpha),
              title: Text(l10n.sortName),
              selected: _sort == SortType.name,
              onTap: () {
                setState(() => _sort = SortType.name);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.category_outlined),
              title: Text(l10n.sortCategory),
              selected: _sort == SortType.category,
              onTap: () {
                setState(() => _sort = SortType.category);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today_outlined),
              title: Text(l10n.sortDate),
              selected: _sort == SortType.date,
              onTap: () {
                setState(() => _sort = SortType.date);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.drag_indicator),
              title: Text(l10n.sortManual),
              selected: _sort == SortType.manual,
              onTap: () {
                setState(() => _sort = SortType.manual);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  String _getSortLabel() {
    switch (_sort) {
      case SortType.name:
        return 'A-Z';
      case SortType.category:
        return 'Categoria';
      case SortType.date:
        return 'Data';
      case SortType.manual:
        return 'Manual';
    }
  }

  void _handleSelection(String id, bool selected) {
    setState(() {
      if (selected) {
        _selectedIds.add(id);
        _selectionMode = true;
      } else {
        _selectedIds.remove(id);
        if (_selectedIds.isEmpty) {
          _selectionMode = false;
        }
      }
    });
  }

  void _exitSelectionMode() {
    setState(() {
      _selectionMode = false;
      _selectedIds.clear();
    });
  }

  Future<void> _deleteSelected() async {
    final l10n = AppLocalizations.of(context)!;
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(l10n.confirm),
        content: Text(l10n.confirmDeleteItems(_selectedIds.length)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l10n.remove),
          ),
        ],
      ),
    );
    if (confirm == true && mounted) {
      await ref.read(shoppingListItemsProvider(widget.listId).notifier).removeItems(_selectedIds.toList());
      _exitSelectionMode();
    }
  }

  Future<void> _markSelected(bool isPurchased) async {
    final idsToToggle = _selectedIds.toList();
    await ref.read(shoppingListItemsProvider(widget.listId).notifier).togglePurchasedBatch(idsToToggle, isPurchased);
    if (isPurchased) {
      ref.invalidate(shoppingListItemsProvider(widget.listId));
      final updatedItems = await ref.read(shoppingListItemsProvider(widget.listId).future);
      final pendingCount = updatedItems.where((i) => !i.isPurchased && !idsToToggle.contains(i.id)).length;
      if (pendingCount == 0) {
        if (!WidgetsBinding.instance.runtimeType.toString().contains('TestWidgetsFlutterBinding')) {
          _confettiController.play();
        }
      }
    }
    _exitSelectionMode();
  }

  Future<void> _clearPurchased() async {
    await ref.read(shoppingListItemsProvider(widget.listId).notifier).clearPurchased();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final itemsAsync = ref.watch(shoppingListItemsProvider(widget.listId));
    final lists = ref.watch(shoppingListsProvider).value ?? [];
    final currentList = lists.where((l) => l.id == widget.listId).firstOrNull;
    final categories = ref.watch(categoriesProvider).value ?? <CategoryData>[];
    final categoriesMap = {for (final cat in categories) cat.id: cat};
    final isPremium = ref.watch(premiumProvider).value ?? false;

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: itemsAsync.when(
        data: (items) {
          final pending = items.where((i) => !i.isPurchased).toList();
          final purchased = items.where((i) => i.isPurchased).toList();

          void applySort(List<ShoppingItem> list) {
            switch (_sort) {
              case SortType.name:
                list.sort((a, b) => a.name.compareTo(b.name));
                break;
              case SortType.category:
                list.sort((a, b) => a.categoryId.compareTo(b.categoryId));
                break;
              case SortType.date:
                list.sort((a, b) => b.updatedAt.compareTo(a.updatedAt));
                break;
              case SortType.manual:
                break;
            }
          }

          applySort(pending);
          applySort(purchased);

          // ignore: prefer_int_literals
          final totalEstimated = items.fold(0.0, (sum, i) => sum + (i.estimatedPrice ?? 0) * i.quantity);
          final progress = items.isEmpty ? 0.0 : purchased.length / items.length;

          return CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverAppBar.large(
                backgroundColor: theme.colorScheme.surface,
                surfaceTintColor: Colors.transparent,
                stretch: true,
                centerTitle: true,
                leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  tooltip: l10n.openMenu,
                ),
                title: InkWell(
                  onTap: _showListSwitcher,
                  borderRadius: BorderRadius.circular(RadiusTokens.full),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainerLow,
                      borderRadius: BorderRadius.circular(RadiusTokens.full),
                      border: Border.all(color: theme.colorScheme.outlineVariant, width: 0.5),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            currentList?.name ?? l10n.appTitle,
                            style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Icon(Icons.unfold_more, size: 16, color: theme.colorScheme.primary),
                      ],
                    ),
                  ),
                ),
                actions: [
                  if (_selectionMode)
                    IconButton(icon: const Icon(Icons.delete_outline), onPressed: _deleteSelected)
                  else ...[
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () => showSearch(
                        context: context,
                        delegate: ShoppingSearchDelegate(widget.listId, items, categoriesMap),
                      ),
                    ),
                    PopupMenuButton<String>(
                      icon: const Icon(Icons.more_vert),
                      onSelected: (val) {
                        if (val == 'clear') {
                          _clearPurchased();
                        }
                        if (val == 'share') {
                          _showShareBottomSheet(items, currentList?.name);
                        }
                        if (val == 'budget' && currentList != null) {
                          _showBudgetDialog(context, currentList);
                        }
                        if (val == 'export') {
                          _showExportOptions(items);
                        }
                        if (val == 'settings') {
                          Navigator.push(context, fadeSlideRoute<void>(const SettingsScreen()));
                        }
                        if (val == 'profile') {
                          Navigator.push(context, fadeSlideRoute<void>(const UserProfileScreen()));
                        }
                        if (val == 'ai') {
                          if (isPremium) {
                            Navigator.push(context, fadeSlideRoute<void>(ChatScreen(listId: widget.listId, listName: currentList?.name)));
                          } else {
                            Navigator.push(context, fadeSlideRoute<void>(const PaywallScreen()));
                          }
                        }
                      },
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 'ai',
                          child: Text(l10n.aiAssistant),
                        ),
                        const PopupMenuDivider(),
                        PopupMenuItem(value: 'share', child: Text(l10n.share)),
                        PopupMenuItem(value: 'budget', child: Text(l10n.listBudgetTitle)),
                        PopupMenuItem(value: 'clear', child: Text(l10n.clearPurchased)),
                        PopupMenuItem(value: 'export', child: Text(l10n.exportPdfExcel)),
                        const PopupMenuDivider(),
                        const PopupMenuItem(value: 'profile', child: Text('Perfil')),
                        PopupMenuItem(value: 'settings', child: Text(l10n.settingsAppBar)),
                      ],
                    ),
                  ],
                ],
              ),
              if (items.isNotEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${purchased.length} de ${items.length} itens',
                              style: theme.textTheme.labelMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                            ),
                            Text(
                              'Total: R\$ ${totalEstimated.toStringAsFixed(2)}',
                              style: theme.textTheme.labelLarge?.copyWith(
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(RadiusTokens.full),
                          child: LinearProgressIndicator(
                            value: progress,
                            minHeight: 4,
                            backgroundColor: theme.colorScheme.surfaceContainerHighest,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if (items.isEmpty)
                SliverFillRemaining(hasScrollBody: true, child: EmptyState(listId: widget.listId))
              else ...[
                SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        FilterChip(
                          label: Text(l10n.filterAll),
                          selected: _filter == FilterType.all,
                          onSelected: (s) => setState(() => _filter = FilterType.all),
                        ),
                        const SizedBox(width: 8),
                        FilterChip(
                          label: Text(l10n.filterPending),
                          selected: _filter == FilterType.pending,
                          onSelected: (s) => setState(() => _filter = FilterType.pending),
                        ),
                        const SizedBox(width: 8),
                        FilterChip(
                          label: Text(l10n.filterPurchased),
                          selected: _filter == FilterType.purchased,
                          onSelected: (s) => setState(() => _filter = FilterType.purchased),
                        ),
                        const SizedBox(width: 12),
                        Container(width: 1, height: 24, color: theme.colorScheme.outlineVariant),
                        const SizedBox(width: 12),
                        ActionChip(
                          avatar: const Icon(Icons.sort, size: 16),
                          label: Text(_getSortLabel()),
                          onPressed: _showSortOptions,
                          side: BorderSide.none,
                          backgroundColor: theme.colorScheme.surfaceContainerLow,
                        ),
                      ],
                    ),
                  ),
                ),
                if (_filter != FilterType.purchased && pending.isNotEmpty)
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => ShoppingItemTile(
                        listId: widget.listId,
                        item: pending[index],
                        selectionMode: _selectionMode,
                        isSelected: _selectedIds.contains(pending[index].id),
                        onSelectionChanged: (selected) => _handleSelection(pending[index].id, selected),
                      ),
                      childCount: pending.length,
                    ),
                  ),
                if (_filter == FilterType.all && purchased.isNotEmpty)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
                      child: Row(
                        children: [
                          Text(
                            l10n.filterPurchased.toUpperCase(),
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.2,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(child: Divider(color: theme.colorScheme.outlineVariant, thickness: 0.5)),
                        ],
                      ),
                    ),
                  ),
                if (_filter != FilterType.pending && purchased.isNotEmpty)
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => ShoppingItemTile(
                        listId: widget.listId,
                        item: purchased[index],
                        selectionMode: _selectionMode,
                        isSelected: _selectedIds.contains(purchased[index].id),
                        onSelectionChanged: (selected) => _handleSelection(purchased[index].id, selected),
                      ),
                      childCount: purchased.length,
                    ),
                  ),
                const SliverPadding(padding: EdgeInsets.only(bottom: 140)),
              ],
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, s) {
          debugPrint('Error: $e');
          return Center(child: Text(e.toString()));
        },
      ),
      floatingActionButton: _selectionMode
          ? FloatingActionButton.extended(
              onPressed: () => _markSelected(true),
              icon: const Icon(Icons.check),
              label: Text(l10n.buy),
              backgroundColor: theme.colorScheme.primary,
              foregroundColor: theme.colorScheme.onPrimary,
            )
          : FloatingActionButton.extended(
              onPressed: _showAddItemDialog,
              icon: const Icon(Icons.add),
              label: Text(l10n.addItem),
            ),
      bottomNavigationBar: _selectionMode
          ? BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(icon: const Icon(Icons.close), label: Text(l10n.cancel), onPressed: _exitSelectionMode),
                  TextButton.icon(
                    icon: const Icon(Icons.delete_outline, color: Colors.red),
                    label: const Text('Excluir', style: TextStyle(color: Colors.red)),
                    onPressed: _deleteSelected,
                  ),
                ],
              ),
            )
          : QuickAddBar(listId: widget.listId),
    );
  }

  void _showBudgetDialog(BuildContext context, ShoppingList list) {
    showDialog<void>(context: context, builder: (_) => BudgetDialog(list: list));
  }

  void _showExportOptions(List<ShoppingItem> items) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        final l10n = AppLocalizations.of(context)!;
        return SafeArea(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            ListTile(leading: const Icon(Icons.picture_as_pdf, color: Colors.red), title: Text(l10n.exportPdf), onTap: () { Navigator.pop(context); _exportPdf(items); }),
            ListTile(leading: const Icon(Icons.table_chart, color: Colors.green), title: Text(l10n.exportExcel), onTap: () { Navigator.pop(context); _exportExcel(items); }),
          ]),
        );
      },
    );
  }

  Future<void> _exportPdf(List<ShoppingItem> items) async {
    final l10n = AppLocalizations.of(context)!;
    final pdf = pw.Document();
    pdf.addPage(pw.Page(build: (context) => pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
      pw.Text(l10n.shareListText, style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold)),
      pw.Divider(),
      pw.SizedBox(height: 20),
      ...items.map((item) => pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceBetween, children: [
        pw.Text('${item.isPurchased ? "[X] " : "[ ] "} ${item.name} (${item.quantity} ${item.unit.name})'),
        if (item.estimatedPrice != null) pw.Text('R\$ ${(item.estimatedPrice! * item.quantity).toStringAsFixed(2)}'),
      ])),
    ])));
    await Printing.layoutPdf(onLayout: (format) => pdf.save());
  }

  Future<void> _exportExcel(List<ShoppingItem> items) async {
    final l10n = AppLocalizations.of(context)!;
    final excel = ex.Excel.createExcel();
    final sheet = excel['Shopping List'];
    sheet.appendRow([ex.TextCellValue('Item'), ex.TextCellValue('Qtd'), ex.TextCellValue('Unidade'), ex.TextCellValue('Preço Est.'), ex.TextCellValue('Comprado')]);
    for (final item in items) {
      sheet.appendRow([ex.TextCellValue(item.name), ex.IntCellValue(item.quantity), ex.TextCellValue(item.unit.name), ex.DoubleCellValue(item.estimatedPrice ?? 0), ex.TextCellValue(item.isPurchased ? l10n.yesLabel : l10n.noLabel)]);
    }
    final bytes = excel.encode();
    if (bytes != null) {
      final tempDir = await getTemporaryDirectory();
      final file = File('${tempDir.path}/lista_compras.xlsx');
      await file.writeAsBytes(bytes);
      await SharePlus.instance.share(ShareParams(files: [XFile(file.path)], text: l10n.shareListText));
    }
  }

  void _showShareBottomSheet(List<ShoppingItem> items, String? listName) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    showModalBottomSheet<void>(
      context: context,
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(l10n.shareListTitle, style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(height: 16),
            ListTile(leading: const Icon(Icons.text_fields), title: Text(l10n.share), subtitle: Text(l10n.shareAsText), onTap: () { Navigator.pop(context); _shareList(items, listName); }),
            ListTile(leading: const Icon(Icons.cloud_sync, color: AppColors.premiumAmber), title: Text(l10n.shareViaCode), subtitle: Text(l10n.shareRealtime), onTap: () async { Navigator.pop(context); await _shareViaCode(); }),
          ]),
        ),
      ),
    );
  }

  Future<void> _shareList(List<ShoppingItem> items, String? listName) async {
    final l10n = AppLocalizations.of(context)!;
    if (items.isEmpty) {
      return;
    }
    final text = items.asMap().entries.map((e) {
      final i = e.value;
      return '${e.key + 1}. ${i.name} — ${i.quantity}${i.unit.label}';
    }).join('\n');
    await SharePlus.instance.share(ShareParams(text: text, subject: listName ?? l10n.shareSubject));
  }

  Future<void> _shareViaCode() async {
    final isPremium = await ref.read(premiumProvider.future);
    if (!isPremium) {
      if (!mounted) {
        return;
      }
      await Navigator.push(context, fadeSlideRoute<void>(const PaywallScreen()));
      return;
    }
    try {
      final code = await ref.read(shareServiceProvider).createShareCode(widget.listId);
      if (!mounted) {
        return;
      }
      await showDialog<void>(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(AppLocalizations.of(context)!.shareListTitle),
          content: Column(mainAxisSize: MainAxisSize.min, children: [
            Text(AppLocalizations.of(context)!.shareThisCode),
            const SizedBox(height: 16),
            SelectableText(code, style: Theme.of(context).textTheme.headlineLarge?.copyWith(letterSpacing: 4, fontWeight: FontWeight.w800)),
          ]),
          actions: [TextButton(onPressed: () => Navigator.pop(context), child: Text(AppLocalizations.of(context)!.close))],
        ),
      );
    } on Object catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
      }
    }
  }
}

class ShoppingSearchDelegate extends SearchDelegate<String> {
  ShoppingSearchDelegate(this.listId, this.allItems, this.categoriesMap);
  final String listId;
  final List<ShoppingItem> allItems;
  final Map<String, CategoryData> categoriesMap;

  @override
  List<Widget> buildActions(BuildContext context) => [IconButton(icon: const Icon(Icons.clear), onPressed: () => query = '')];
  @override
  Widget buildLeading(BuildContext context) => IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => close(context, ''));
  @override
  Widget buildResults(BuildContext context) => _buildResults(context);
  @override
  Widget buildSuggestions(BuildContext context) => _buildResults(context);

  Widget _buildResults(BuildContext context) {
    final results = allItems.where((i) => i.name.toLowerCase().contains(query.toLowerCase())).toList();
    if (results.isEmpty) {
      return const Center(child: Icon(Icons.search_off, size: 48, color: Colors.grey));
    }
    return ListView.builder(itemCount: results.length, itemBuilder: (context, index) => ShoppingItemTile(listId: listId, item: results[index]));
  }
}
// coverage:ignore-end
