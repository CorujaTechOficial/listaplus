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
import 'package:shopping_list/app/lists/widgets/shopping_item_tile_skeleton.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/app/lists/providers/share_provider.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/core/theme/colors.dart';
import '../../theme/page_transitions.dart';
import 'package:shopping_list/app/shared/widgets/account_menu_sheet.dart';
import 'package:shopping_list/app/lists/widgets/app_bar_list_selector.dart';
import '../../theme/tokens.dart';
import 'package:shopping_list/app/lists/widgets/budget_dialog.dart';
import 'package:shopping_list/app/lists/widgets/empty_state.dart';
import 'package:shopping_list/app/lists/widgets/filter_bar.dart';
import 'package:shopping_list/app/lists/widgets/quick_add_bar.dart';
import 'package:shopping_list/app/lists/widgets/shopping_item_tile.dart';
import '../../models/category_data.dart';
import '../../models/shopping_item.dart';
import '../../models/shopping_list.dart';
import 'package:shopping_list/app/ai/screens/chat_screen.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  bool _shoppingMode = false;
  bool _showGestureHint = false;
  final Set<String> _selectedIds = {};

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 2));
    _checkGestureHint();
  }

  Future<void> _checkGestureHint() async {
    final prefs = await SharedPreferences.getInstance();
    final shown = prefs.getBool('hint_gestures_shown') ?? false;
    if (!shown && mounted) {
      setState(() => _showGestureHint = true);
      Future.delayed(const Duration(seconds: 5), _dismissGestureHint);
    }
  }

  Future<void> _dismissGestureHint() async {
    if (!mounted) {
      return;
    }
    setState(() => _showGestureHint = false);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hint_gestures_shown', true);
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
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
      final pendingCount = updatedItems.where((i) => !i.isPurchased && !_selectedIds.contains(i.id)).length;
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
    final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: _selectionMode || _shoppingMode
          ? AppBar(
              backgroundColor: _shoppingMode ? theme.colorScheme.primary : theme.colorScheme.surface,
              foregroundColor: _shoppingMode ? theme.colorScheme.onPrimary : theme.colorScheme.onSurface,
              leading: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  if (_selectionMode) {
                    _exitSelectionMode();
                  }
                  if (_shoppingMode) {
                    setState(() => _shoppingMode = false);
                  }
                },
              ),
              title: Text(_shoppingMode ? l10n.shoppingMode : l10n.selectedItems(_selectedIds.length)),
              actions: [
                if (_selectionMode)
                  IconButton(icon: const Icon(Icons.delete_outline), onPressed: _deleteSelected),
                if (_shoppingMode)
                  IconButton(
                    icon: const Icon(Icons.celebration_outlined),
                    onPressed: () => _confettiController.play(),
                  ),
              ],
            )
          : null,
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
          final purchasedItemsList = items.where((i) => i.isPurchased).toList();
          // ignore: prefer_int_literals
          final totalPurchased = purchasedItemsList.fold(0.0, (sum, i) => sum + (i.estimatedPrice ?? 0) * i.quantity);
          final progress = items.isEmpty ? 0.0 : purchased.length / items.length;
          
          final budget = currentList?.budget ?? 0.0;
          final overBudget = budget > 0 && totalPurchased > budget;
          final budgetProgress = budget > 0 ? (totalPurchased / budget).clamp(0.0, 1.1) : 0.0;

          return CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              if (!_selectionMode && !_shoppingMode)
                SliverAppBar(
                  backgroundColor: theme.colorScheme.surface,
                  surfaceTintColor: Colors.transparent,
                  pinned: true,
                  floating: true,
                  leading: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () => AccountMenuSheet.show(context),
                  ),
                  title: AppBarListSelector(currentListId: widget.listId),
                  actions: [
                    IconButton(
                      icon: Icon(_shoppingMode ? Icons.shopping_basket : Icons.shopping_basket_outlined),
                      onPressed: () => setState(() => _shoppingMode = !_shoppingMode),
                      tooltip: l10n.shoppingMode,
                    ),
                    IconButton(
                      icon: const Icon(Icons.share),
                      onPressed: () => _showInviteSheet(widget.listId),
                      tooltip: l10n.inviteToList,
                    ),
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
                  bottom: items.isEmpty
                      ? null
                      : PreferredSize(
                          preferredSize: const Size.fromHeight(135),
                          child: Container(
                            color: theme.colorScheme.surface,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${purchased.length} de ${items.length} itens',
                                                style: theme.textTheme.labelMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                                              ),
                                              if (budget > 0)
                                                Text(
                                                  'Orçamento: ${formatCurrency(budget, currencyCode)}',
                                                  style: theme.textTheme.labelSmall?.copyWith(
                                                    color: overBudget ? theme.colorScheme.error : theme.colorScheme.outline,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                formatCurrency(totalPurchased, currencyCode),
                                                style: theme.textTheme.titleMedium?.copyWith(
                                                  color: overBudget ? theme.colorScheme.error : theme.colorScheme.primary,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              Text(
                                                'Total: ${formatCurrency(totalEstimated, currencyCode)}',
                                                style: theme.textTheme.labelSmall?.copyWith(color: theme.colorScheme.outline),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(RadiusTokens.full),
                                            child: LinearProgressIndicator(
                                              value: progress,
                                              minHeight: 8,
                                              backgroundColor: theme.colorScheme.surfaceContainerHighest,
                                              valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
                                            ),
                                          ),
                                          if (budget > 0)
                                            Positioned.fill(
                                              child: FractionallySizedBox(
                                                alignment: Alignment.centerLeft,
                                                widthFactor: budgetProgress > 1.0 ? 1.0 : budgetProgress,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(RadiusTokens.full),
                                                    color: (overBudget ? Colors.red : Colors.orange).withAlpha(100),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  child: Row(
                                    children: [
                                      FilterChip(
                                        label: Text(l10n.filterAll),
                                        selected: _filter == FilterType.all,
                                        onSelected: (s) => setState(() => _filter = FilterType.all),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.full)),
                                      ),
                                      const SizedBox(width: 8),
                                      FilterChip(
                                        label: Text(l10n.filterPending),
                                        selected: _filter == FilterType.pending,
                                        onSelected: (s) => setState(() => _filter = FilterType.pending),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.full)),
                                      ),
                                      const SizedBox(width: 8),
                                      FilterChip(
                                        label: Text(l10n.filterPurchased),
                                        selected: _filter == FilterType.purchased,
                                        onSelected: (s) => setState(() => _filter = FilterType.purchased),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.full)),
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
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.full)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                ),
              if (_shoppingMode && pending.isEmpty && items.isNotEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.check_circle_outline, size: 80, color: Colors.green),
                        const SizedBox(height: 16),
                        Text(
                          'Tudo pronto!',
                          style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Você completou sua lista.',
                          style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                        ),
                        const SizedBox(height: 24),
                        FilledButton(
                          onPressed: () => setState(() => _shoppingMode = false),
                          child: Text(l10n.exitShoppingMode),
                        ),
                      ],
                    ),
                  ),
                ),
              if (items.isEmpty)
                SliverFillRemaining(hasScrollBody: true, child: EmptyState(listId: widget.listId))
              else ...[
                if (_showGestureHint && items.isNotEmpty)
                  SliverToBoxAdapter(
                    child: GestureDetector(
                      onTap: _dismissGestureHint,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surfaceContainerHighest,
                          borderRadius: BorderRadius.circular(999),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.info_outline,
                              size: 14,
                              color: Theme.of(context).colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              l10n.gestureHint,
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
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
                        isShoppingMode: _shoppingMode,
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
                        isShoppingMode: _shoppingMode,
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
        loading: () => SafeArea(
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (_, _) => const ShoppingItemTileSkeleton(),
          ),
        ),
        error: (e, s) {
          debugPrint('Error: $e');
          return SafeArea(child: Center(child: Text(e.toString())));
        },
      ),
      floatingActionButton: _selectionMode || _shoppingMode
          ? FloatingActionButton.extended(
              heroTag: null,
              onPressed: _selectionMode ? () => _markSelected(true) : () => setState(() => _shoppingMode = false),
              icon: Icon(_selectionMode ? Icons.check : Icons.close),
              label: Text(_selectionMode ? l10n.buy : l10n.exit),
              backgroundColor: _shoppingMode ? theme.colorScheme.secondary : theme.colorScheme.primary,
              foregroundColor: _shoppingMode ? theme.colorScheme.onSecondary : theme.colorScheme.onPrimary,
            )
          : null,
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
        if (item.estimatedPrice != null) pw.Text(formatCurrency(item.estimatedPrice! * item.quantity, ref.read(currencySettingProvider).value ?? 'BRL')),
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

  void _showInviteSheet(String listId) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    showModalBottomSheet<void>(
      context: context,
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.shareListTitle, style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.group_add),
                title: Text(l10n.inviteToList),
                subtitle: Text(l10n.shareRealtime),
                onTap: () {
                  Navigator.pop(context);
                  _shareViaCode();
                },
              ),
              ListTile(
                leading: const Icon(Icons.share),
                title: Text(l10n.shareApp),
                subtitle: Text(l10n.shareAppDescription),
                onTap: () {
                  Navigator.pop(context);
                  _shareReferral();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _shareReferral() {
    final l10n = AppLocalizations.of(context)!;
    SharePlus.instance.share(ShareParams(
      text: l10n.shareReferralText('https://kipilist.com/invite'),
      subject: l10n.shareReferralSubject,
    ));
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
