import 'dart:async';
import 'package:shopping_list/theme/tokens.dart';
import 'dart:io';
import 'package:confetti/confetti.dart';
import 'package:excel/excel.dart' as ex;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/app/lists/widgets/shopping_item_tile_skeleton.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:shopping_list/app/shared/widgets/account_menu_sheet.dart';
import 'package:shopping_list/app/lists/widgets/app_bar_list_selector.dart';
import 'package:shopping_list/app/lists/widgets/budget_dialog.dart';
import 'package:shopping_list/app/lists/widgets/empty_state.dart';
import 'package:shopping_list/app/lists/widgets/filter_bar.dart';
import 'package:shopping_list/app/lists/widgets/kipi_quick_bar.dart';
import 'package:shopping_list/app/lists/widgets/shopping_item_tile.dart';
import '../../models/category_data.dart';
import '../../models/shopping_item.dart';
import '../../models/shopping_list.dart';
import 'package:shopping_list/app/ai/screens/chat_screen.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/app/settings/screens/settings_screen.dart';
import 'package:shopping_list/app/settings/screens/user_profile_screen.dart';
import 'package:shopping_list/app/catalog/models/catalog_category.dart';
import 'package:shopping_list/app/catalog/screens/catalog_home_screen.dart';
import 'package:shopping_list/app/lists/widgets/progress_info_header.dart';
import 'package:shopping_list/app/lists/widgets/shopping_completion_view.dart';
import 'package:shopping_list/app/lists/widgets/gesture_hint_banner.dart';
import 'package:shopping_list/app/lists/widgets/selection_bottom_bar.dart';
import 'package:shopping_list/app/lists/widgets/sort_options_sheet.dart';
import 'package:shopping_list/app/lists/widgets/share_list_sheet.dart';
import 'package:shopping_list/app/lists/widgets/export_options_sheet.dart';
import 'package:shopping_list/core/providers/misc_providers.dart';
import 'package:shopping_list/app/shared/widgets/tactile_container.dart';

class ListScreenBody extends ConsumerStatefulWidget {
  const ListScreenBody({super.key, required this.listId});
  final String listId;
  @override
  ConsumerState<ListScreenBody> createState() => _ListScreenBodyState();
}

class _ListScreenBodyState extends ConsumerState<ListScreenBody>
    with TickerProviderStateMixin {
  late ConfettiController _confettiController;
  FilterType _filter = FilterType.all;
  SortType _sort = SortType.manual;
  bool _selectionMode = false;
  bool _shoppingMode = false;
  bool _completionRegistered = false;
  bool _showGestureHint = false;
  final Set<String> _selectedIds = {};

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(
      duration: const Duration(seconds: 2),
    );
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

  String _getSortLabel(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (_sort) {
      case SortType.name:
        return l10n.sortName;
      case SortType.category:
        return l10n.sortCategory;
      case SortType.date:
        return l10n.sortDate;
      case SortType.manual:
        return l10n.sortManual;
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
      builder:
          (_) => AlertDialog(
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
      await ref
          .read(shoppingListItemsProvider(widget.listId).notifier)
          .removeItems(_selectedIds.toList());
      _exitSelectionMode();
    }
  }

  Future<void> _markSelected(bool isPurchased) async {
    final idsToToggle = _selectedIds.toList();
    await ref
        .read(shoppingListItemsProvider(widget.listId).notifier)
        .togglePurchasedBatch(idsToToggle, isPurchased);
    if (isPurchased) {
      ref.invalidate(shoppingListItemsProvider(widget.listId));
      final updatedItems = await ref.read(
        shoppingListItemsProvider(widget.listId).future,
      );
      final pendingCount =
          updatedItems
              .where((i) => !i.isPurchased && !_selectedIds.contains(i.id))
              .length;
      if (pendingCount == 0) {
        if (!WidgetsBinding.instance.runtimeType.toString().contains(
          'TestWidgetsFlutterBinding',
        )) {
          _confettiController.play();
        }
      }
    }
    _exitSelectionMode();
  }

  Future<void> _clearPurchased() async {
    await ref
        .read(shoppingListItemsProvider(widget.listId).notifier)
        .clearPurchased();
  }

  ({int oldIndex, int newIndex})? _mapPendingReorderToFullIndices({
    required List<ShoppingItem> items,
    required List<ShoppingItem> pendingItems,
    required int oldIndex,
    required int newIndex,
  }) {
    if (oldIndex < 0 || oldIndex >= pendingItems.length) {
      return null;
    }
    if (newIndex < 0 || newIndex > pendingItems.length) {
      return null;
    }

    final movedItem = pendingItems[oldIndex];
    final oldFullIndex = items.indexWhere((item) => item.id == movedItem.id);
    if (oldFullIndex == -1) {
      return null;
    }

    if (newIndex == oldIndex) {
      return (oldIndex: oldFullIndex, newIndex: oldFullIndex);
    }
    if (newIndex == oldIndex + 1) {
      return (oldIndex: oldFullIndex, newIndex: oldFullIndex + 1);
    }

    final remainingPendingItems = [...pendingItems]..removeAt(oldIndex);
    final itemsWithoutMoved = [...items]..removeAt(oldFullIndex);
    final targetPendingIndex = newIndex > oldIndex ? newIndex - 1 : newIndex;

    if (remainingPendingItems.isEmpty) {
      return (oldIndex: oldFullIndex, newIndex: oldFullIndex + 1);
    }

    final insertionIndexAfterRemoval =
        targetPendingIndex >= remainingPendingItems.length
            ? itemsWithoutMoved.indexWhere(
                  (item) => item.id == remainingPendingItems.last.id,
                ) +
                1
            : itemsWithoutMoved.indexWhere(
              (item) => item.id == remainingPendingItems[targetPendingIndex].id,
            );

    if (insertionIndexAfterRemoval < 0) {
      return null;
    }

    if (targetPendingIndex < remainingPendingItems.length &&
        insertionIndexAfterRemoval >= itemsWithoutMoved.length + 1) {
      return null;
    }

    final mappedNewIndex =
        oldFullIndex < insertionIndexAfterRemoval
            ? insertionIndexAfterRemoval + 1
            : insertionIndexAfterRemoval;

    if (mappedNewIndex < 0 || mappedNewIndex > items.length) {
      return null;
    }

    return (oldIndex: oldFullIndex, newIndex: mappedNewIndex);
  }

  void _registerCompletionReview(int itemCount) {
    if (_completionRegistered) {
      return;
    }
    _completionRegistered = true;
    unawaited(
      ref
          .read(appReviewServiceProvider)
          .registerCompletionAndRequestReview(itemCount: itemCount),
    );
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
      appBar:
          _selectionMode || _shoppingMode
              ? AppBar(
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
                title: Text(
                  _shoppingMode
                      ? l10n.shoppingMode
                      : l10n.selectedItems(_selectedIds.length),
                ),
                actions: [
                  if (_selectionMode)
                    IconButton(
                      icon: const Icon(Icons.delete_outline),
                      onPressed: _deleteSelected,
                    ),
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
          if (_shoppingMode && pending.isEmpty && items.isNotEmpty) {
            _registerCompletionReview(items.length);
          } else if (pending.isNotEmpty) {
            _completionRegistered = false;
          }

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

          final totalEstimated = items.fold<double>(
            0,
            (sum, i) => sum + (i.estimatedPrice ?? 0) * i.quantity,
          );
          final purchasedItemsList = items.where((i) => i.isPurchased).toList();
          final totalPurchased = purchasedItemsList.fold<double>(
            0,
            (sum, i) => sum + (i.estimatedPrice ?? 0) * i.quantity,
          );
          final progress =
              items.isEmpty ? 0.0 : purchased.length / items.length;

          final budget = currentList?.budget ?? 0.0;
          final overBudget = budget > 0 && totalPurchased > budget;
          final budgetProgress =
              budget > 0 ? (totalPurchased / budget).clamp(0.0, 1.0) : 0.0;
          final shouldShowSummary = !_selectionMode && items.isNotEmpty;

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
                      icon: Icon(
                        _shoppingMode
                            ? Icons.shopping_basket
                            : Icons.shopping_basket_outlined,
                      ),
                      onPressed:
                          () => setState(() => _shoppingMode = !_shoppingMode),
                      tooltip: l10n.shoppingMode,
                    ),
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed:
                          () => showSearch(
                            context: context,
                            delegate: ShoppingSearchDelegate(
                              widget.listId,
                              items,
                              categoriesMap,
                            ),
                          ),
                    ),
                    PopupMenuButton<String>(
                      icon: const Icon(Icons.more_vert),
                      onSelected: (val) {
                        if (val == 'clear') {
                          _clearPurchased();
                        }
                        if (val == 'share') {
                          ShareListSheet.show(
                            context,
                            listId: widget.listId,
                            items: items,
                            listName: currentList?.name,
                          );
                        }
                        if (val == 'budget' && currentList != null) {
                          _showBudgetDialog(context, currentList);
                        }
                        if (val == 'export') {
                          showExportOptionsSheet(
                            context,
                            onExportPdf:
                                () =>
                                    _exportPdf(items, currentList, categories),
                            onExportExcel: () => _exportExcel(items),
                            onShareText:
                                () =>
                                    _shareItemsAsText(items, currentList?.name),
                            onCopyText:
                                () =>
                                    _copyItemsAsText(items, currentList?.name),
                          );
                        }
                        if (val == 'settings') {
                          Navigator.push(
                            context,
                            fadeSlideRoute<void>(const SettingsScreen()),
                          );
                        }
                        if (val == 'profile') {
                          Navigator.push(
                            context,
                            fadeSlideRoute<void>(const UserProfileScreen()),
                          );
                        }
                        if (val == 'ai') {
                          if (isPremium) {
                            Navigator.push(
                              context,
                              fadeSlideRoute<void>(
                                ChatScreen(
                                  listId: widget.listId,
                                  listName: currentList?.name,
                                ),
                              ),
                            );
                          } else {
                            Navigator.push(
                              context,
                              fadeSlideRoute<void>(const PaywallScreen()),
                            );
                          }
                        }
                      },
                      itemBuilder:
                          (context) => [
                            PopupMenuItem(
                              value: 'ai',
                              child: Text(l10n.aiAssistant),
                            ),
                            const PopupMenuDivider(),
                            PopupMenuItem(
                              value: 'share',
                              child: Text(l10n.share),
                            ),
                            PopupMenuItem(
                              value: 'budget',
                              child: Text(l10n.listBudgetTitle),
                            ),
                            PopupMenuItem(
                              value: 'clear',
                              child: Text(l10n.clearPurchased),
                            ),
                            PopupMenuItem(
                              value: 'export',
                              child: Text(l10n.exportPdfExcel),
                            ),
                            const PopupMenuDivider(),
                            PopupMenuItem(
                              value: 'profile',
                              child: Text(l10n.profile),
                            ),
                            PopupMenuItem(
                              value: 'settings',
                              child: Text(l10n.settingsAppBar),
                            ),
                          ],
                    ),
                  ],
                ),
              if (shouldShowSummary)
                SliverToBoxAdapter(
                  child: ProgressInfoHeader(
                    key: ValueKey('list_summary_${_shoppingMode ? 'shopping' : 'default'}'),
                    purchasedCount: purchased.length,
                    totalItems: items.length,
                    totalEstimated: totalEstimated,
                    totalPurchased: totalPurchased,
                    progress: progress,
                    budget: budget,
                    overBudget: overBudget,
                    budgetProgress: budgetProgress,
                    filter: _filter,
                    sortLabel: _getSortLabel(context),
                    currencyCode: currencyCode,
                    onFilterChanged: (f) => setState(() => _filter = f),
                    onSortPressed:
                        () => showSortOptionsSheet(
                          context,
                          currentSort: _sort,
                          onSortChanged: (s) => setState(() => _sort = s),
                        ),
                  ),
                ),
              if (_shoppingMode && pending.isEmpty && items.isNotEmpty)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: ShoppingCompletionView(
                    onExitShoppingMode:
                        () => setState(() => _shoppingMode = false),
                    itemCount: items.length,
                    isPremium: isPremium,
                    onUpgrade:
                        () => Navigator.push(
                          context,
                          fadeSlideRoute<void>(const PaywallScreen()),
                        ),
                  ),
                ),
              if (items.isEmpty)
                SliverFillRemaining(
                  hasScrollBody: true,
                  child: EmptyState(listId: widget.listId),
                )
              else ...[
                if (_showGestureHint && items.isNotEmpty)
                  SliverToBoxAdapter(
                    child: GestureHintBanner(onDismiss: _dismissGestureHint),
                  ),
                if (_filter != FilterType.purchased && pending.isNotEmpty)
                  if (_sort == SortType.manual)
                    SliverReorderableList(
                      itemCount: pending.length,
                      itemBuilder: (context, index) {
                        final item = pending[index];
                        return KeyedSubtree(
                          key: ValueKey(item.id),
                          child: ShoppingItemTile(
                            listId: widget.listId,
                            item: item,
                            selectionMode: _selectionMode,
                            isShoppingMode: _shoppingMode,
                            isSelected: _selectedIds.contains(item.id),
                            dragHandleIndex: index,
                            onSelectionChanged:
                                (selected) =>
                                    _handleSelection(item.id, selected),
                          ),
                        );
                      },
                      onReorderItem: (oldIndex, newIndex) {
                        final mappedIndices = _mapPendingReorderToFullIndices(
                          items: items,
                          pendingItems: pending,
                          oldIndex: oldIndex,
                          newIndex: newIndex,
                        );
                        if (mappedIndices == null) {
                          return;
                        }
                        ref
                            .read(
                              shoppingListItemsProvider(widget.listId).notifier,
                            )
                            .reorderItem(
                              mappedIndices.oldIndex,
                              mappedIndices.newIndex,
                            );
                      },
                    )
                  else
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => ShoppingItemTile(
                          listId: widget.listId,
                          item: pending[index],
                          selectionMode: _selectionMode,
                          isShoppingMode: _shoppingMode,
                          isSelected: _selectedIds.contains(pending[index].id),
                          onSelectionChanged:
                              (selected) =>
                                  _handleSelection(pending[index].id, selected),
                        ),
                        childCount: pending.length,
                      ),
                    ),
                if (_filter == FilterType.all && purchased.isNotEmpty)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        Spacing.md,
                        Spacing.lg,
                        Spacing.md,
                        Spacing.xs,
                      ),
                      child: Row(
                        children: [
                          Text(
                            l10n.filterPurchased,
                            style: theme.textTheme.titleSmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: Spacing.xs),
                          Text(
                            '${purchased.length}',
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
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
                        onSelectionChanged:
                            (selected) =>
                                _handleSelection(purchased[index].id, selected),
                      ),
                      childCount: purchased.length,
                    ),
                  ),
                const SliverPadding(padding: EdgeInsets.only(bottom: 140)),
              ],
            ],
          );
        },
        loading:
            () => CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverAppBar(
                  foregroundColor: theme.colorScheme.onSurface,
                  surfaceTintColor: theme.colorScheme.surfaceTint,
                  pinned: true,
                  floating: true,
                  leading: IconButton(
                    icon: const Icon(Icons.person_outline),
                    onPressed: () => AccountMenuSheet.show(context),
                  ),
                  title: AppBarListSelector(currentListId: widget.listId),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (_, _) => const ShoppingItemTileSkeleton(),
                    childCount: 6,
                  ),
                ),
              ],
            ),
        error: (e, s) {
          debugPrint('Error: $e');
          return SafeArea(
            child: EmptyState(
              icon: Icons.error_outline,
              title: l10n.errorLoadingLists,
              subtitle: e.toString(),
            ),
          );
        },
      ),
      bottomNavigationBar:
          _selectionMode
              ? SelectionBottomBar(
                onCancel: _exitSelectionMode,
                onDelete: _deleteSelected,
                onBuy: () => _markSelected(true),
              )
              : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SafeArea(
                    top: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (_shoppingMode)
                          _ShoppingExitBar(
                            onExit: () => setState(() => _shoppingMode = false),
                          )
                        else
                          _CatalogEntryButton(listId: widget.listId),
                        KipiQuickBar(listId: widget.listId),
                      ],
                    ),
                  ),
                ],
              ),
    );
  }

  void _showBudgetDialog(BuildContext context, ShoppingList list) {
    showDialog<void>(
      context: context,
      builder: (_) => BudgetDialog(list: list),
    );
  }

  Future<void> _exportPdf(
    List<ShoppingItem> items,
    ShoppingList? currentList,
    List<CategoryData> categories,
  ) async {
    final l10n = AppLocalizations.of(context)!;
    final currencyCode = resolveCurrencyCode(
      ref.read(currencySettingProvider),
      Localizations.localeOf(context),
    );
    final listName =
        (currentList?.name.trim().isNotEmpty ?? false)
            ? currentList!.name.trim()
            : l10n.shareListText;
    final budget = currentList?.budget ?? 0.0;
    final categoriesMap = {
      for (final c in categories) c.id: c.localizedName(l10n),
    };

    final pending = items.where((i) => !i.isPurchased).toList();
    final purchased = items.where((i) => i.isPurchased).toList();

    final totalEstimated = items.fold<double>(
      0,
      (sum, i) => sum + (i.estimatedPrice ?? 0) * i.quantity,
    );
    final totalPurchased = purchased.fold<double>(
      0,
      (sum, i) => sum + (i.estimatedPrice ?? 0) * i.quantity,
    );

    final primaryColor = PdfColor.fromHex('#388E3C');
    final headerBg = PdfColor.fromHex('#F5F5F5');
    final zebraColor = PdfColor.fromHex('#FAFAFA');
    final categoryBg = PdfColor.fromHex('#E8F5E9');
    final mutedText = PdfColor.fromHex('#9E9E9E');
    final dividerColor = PdfColor.fromHex('#E0E0E0');
    final darkText = PdfColor.fromHex('#424242');

    pw.Widget buildTableHeader() => pw.Container(
      color: headerBg,
      padding: const pw.EdgeInsets.symmetric(
        horizontal: Spacing.xs,
        vertical: 6,
      ),
      child: pw.Row(
        children: [
          pw.SizedBox(width: Spacing.md),
          pw.Expanded(
            flex: 4,
            child: pw.Text(
              'ITEM',
              style: pw.TextStyle(
                fontSize: 9,
                fontWeight: pw.FontWeight.bold,
                color: darkText,
              ),
            ),
          ),
          pw.SizedBox(
            width: 60,
            child: pw.Text(
              'QTD',
              textAlign: pw.TextAlign.center,
              style: pw.TextStyle(
                fontSize: 9,
                fontWeight: pw.FontWeight.bold,
                color: darkText,
              ),
            ),
          ),
          pw.SizedBox(
            width: 70,
            child: pw.Text(
              'PREÇO EST.',
              textAlign: pw.TextAlign.right,
              style: pw.TextStyle(
                fontSize: 9,
                fontWeight: pw.FontWeight.bold,
                color: darkText,
              ),
            ),
          ),
        ],
      ),
    );

    List<pw.Widget> buildItemRows(List<ShoppingItem> list, bool muted) {
      final grouped = <String, List<ShoppingItem>>{};
      for (final item in list) {
        (grouped[item.categoryId] ??= []).add(item);
      }
      final rows = <pw.Widget>[];
      var rowIndex = 0;
      for (final entry in grouped.entries) {
        final catName = categoriesMap[entry.key] ?? entry.key;
        rows.add(
          pw.Container(
            color: categoryBg,
            padding: const pw.EdgeInsets.symmetric(
              horizontal: Spacing.xs,
              vertical: Spacing.xxs,
            ),
            child: pw.Text(
              catName.toUpperCase(),
              style: pw.TextStyle(
                fontSize: 8,
                fontWeight: pw.FontWeight.bold,
                color: primaryColor,
              ),
            ),
          ),
        );
        for (final item in entry.value) {
          final bg = rowIndex.isEven ? zebraColor : PdfColors.white;
          rowIndex++;
          rows.add(
            pw.Container(
              color: bg,
              padding: const pw.EdgeInsets.symmetric(
                horizontal: Spacing.xs,
                vertical: 5,
              ),
              child: pw.Row(
                children: [
                  pw.SizedBox(
                    width: 16,
                    child: pw.Text(
                      item.isPurchased ? '☑' : '☐',
                      style: pw.TextStyle(
                        color: muted ? mutedText : PdfColors.black,
                      ),
                    ),
                  ),
                  pw.Expanded(
                    flex: 4,
                    child: pw.Text(
                      item.name,
                      style: pw.TextStyle(
                        fontSize: 10,
                        color: muted ? mutedText : PdfColors.black,
                        decoration:
                            muted ? pw.TextDecoration.lineThrough : null,
                      ),
                    ),
                  ),
                  pw.SizedBox(
                    width: 60,
                    child: pw.Text(
                      '${item.quantity} ${item.unit.label}',
                      textAlign: pw.TextAlign.center,
                      style: pw.TextStyle(
                        fontSize: 10,
                        color: muted ? mutedText : PdfColors.black,
                      ),
                    ),
                  ),
                  pw.SizedBox(
                    width: 70,
                    child: pw.Text(
                      item.estimatedPrice != null
                          ? formatCurrency(
                            item.estimatedPrice! * item.quantity,
                            currencyCode,
                          )
                          : '—',
                      textAlign: pw.TextAlign.right,
                      style: pw.TextStyle(
                        fontSize: 10,
                        color: muted ? mutedText : PdfColors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      }
      return rows;
    }

    final now = DateTime.now();
    final exportDate =
        '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year} '
        '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';

    final pdf = pw.Document();
    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(Spacing.xl),
        build:
            (context) => [
              pw.Container(
                decoration: pw.BoxDecoration(
                  color: primaryColor,
                  borderRadius: pw.BorderRadius.circular(RadiusTokens.sm),
                ),
                padding: const pw.EdgeInsets.all(20),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      listName,
                      style: pw.TextStyle(
                        fontSize: 22,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.white,
                      ),
                    ),
                    pw.SizedBox(height: Spacing.xxs),
                    pw.Text(
                      '$exportDate  ·  ${items.length} itens  ·  ${purchased.length} comprados',
                      style: const pw.TextStyle(
                        fontSize: 10,
                        color: PdfColors.white,
                      ),
                    ),
                  ],
                ),
              ),
              pw.SizedBox(height: Spacing.sm),
              if (budget > 0) ...[
                pw.Container(
                  decoration: pw.BoxDecoration(
                    border: pw.Border.all(color: dividerColor),
                    borderRadius: pw.BorderRadius.circular(RadiusTokens.xs),
                  ),
                  padding: const pw.EdgeInsets.symmetric(
                    horizontal: Spacing.md,
                    vertical: 10,
                  ),
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text(
                        'Orçamento: ${formatCurrency(budget, currencyCode)}',
                        style: const pw.TextStyle(fontSize: 10),
                      ),
                      pw.Text(
                        'Gasto: ${formatCurrency(totalPurchased, currencyCode)}',
                        style: pw.TextStyle(
                          fontSize: 10,
                          fontWeight: pw.FontWeight.bold,
                          color:
                              totalPurchased > budget
                                  ? PdfColors.red
                                  : primaryColor,
                        ),
                      ),
                      pw.Text(
                        'Saldo: ${formatCurrency(budget - totalPurchased, currencyCode)}',
                        style: const pw.TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
                pw.SizedBox(height: Spacing.sm),
              ],
              if (pending.isNotEmpty) ...[
                pw.Text(
                  'PENDENTES (${pending.length})',
                  style: pw.TextStyle(
                    fontSize: 11,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(height: 6),
                buildTableHeader(),
                ...buildItemRows(pending, false),
                pw.SizedBox(height: Spacing.md),
              ],
              if (purchased.isNotEmpty) ...[
                pw.Text(
                  'COMPRADOS (${purchased.length})',
                  style: pw.TextStyle(
                    fontSize: 11,
                    fontWeight: pw.FontWeight.bold,
                    color: mutedText,
                  ),
                ),
                pw.SizedBox(height: 6),
                buildTableHeader(),
                ...buildItemRows(purchased, true),
                pw.SizedBox(height: Spacing.md),
              ],
              pw.Divider(),
              pw.SizedBox(height: Spacing.xxs),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text(
                    'Total estimado: ${formatCurrency(totalEstimated, currencyCode)}',
                    style: pw.TextStyle(
                      fontSize: 10,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(
                    'Total comprado: ${formatCurrency(totalPurchased, currencyCode)}',
                    style: pw.TextStyle(
                      fontSize: 10,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 6),
              pw.Center(
                child: pw.Text(
                  'Gerado por Kipi List',
                  style: pw.TextStyle(fontSize: 8, color: mutedText),
                ),
              ),
            ],
      ),
    );

    await Printing.layoutPdf(onLayout: (format) => pdf.save());
  }

  Future<void> _exportExcel(List<ShoppingItem> items) async {
    final l10n = AppLocalizations.of(context)!;
    final excel = ex.Excel.createExcel();
    final sheet = excel['Shopping List'];
    sheet.appendRow([
      ex.TextCellValue('Item'),
      ex.TextCellValue('Qtd'),
      ex.TextCellValue('Unidade'),
      ex.TextCellValue('Preço Est.'),
      ex.TextCellValue('Comprado'),
    ]);
    for (final item in items) {
      sheet.appendRow([
        ex.TextCellValue(item.name),
        ex.IntCellValue(item.quantity),
        ex.TextCellValue(item.unit.name),
        ex.DoubleCellValue(item.estimatedPrice ?? 0),
        ex.TextCellValue(item.isPurchased ? l10n.yesLabel : l10n.noLabel),
      ]);
    }
    final bytes = excel.encode();
    if (bytes != null) {
      final tempDir = await getTemporaryDirectory();
      final file = File('${tempDir.path}/lista_compras.xlsx');
      await file.writeAsBytes(bytes);
      await SharePlus.instance.share(
        ShareParams(files: [XFile(file.path)], text: l10n.shareListText),
      );
    }
  }

  String _formatItemsAsText(List<ShoppingItem> items, String? listName) {
    final l10n = AppLocalizations.of(context)!;
    final title =
        listName?.trim().isNotEmpty == true
            ? listName!.trim()
            : l10n.shareListText;
    final lines = items
        .map((item) {
          final checkbox = item.isPurchased ? '☑' : '☐';
          return '$checkbox ${item.name} - ${item.quantity}${item.unit.label}';
        })
        .join('\n');
    return '$title\n\n$lines\n\n${l10n.shareReferralText('https://kipilist-6547b.web.app')}';
  }

  Future<void> _shareItemsAsText(
    List<ShoppingItem> items,
    String? listName,
  ) async {
    final l10n = AppLocalizations.of(context)!;
    await SharePlus.instance.share(
      ShareParams(
        text: _formatItemsAsText(items, listName),
        subject: listName ?? l10n.shareSubject,
      ),
    );
  }

  Future<void> _copyItemsAsText(
    List<ShoppingItem> items,
    String? listName,
  ) async {
    final l10n = AppLocalizations.of(context)!;
    await Clipboard.setData(
      ClipboardData(text: _formatItemsAsText(items, listName)),
    );
    if (mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(l10n.copiedToClipboard)));
    }
  }

  void _showInviteSheet(String listId) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    showModalBottomSheet<void>(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      builder:
          (context) => Padding(
            padding: const EdgeInsets.all(Spacing.md),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.shareListTitle,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: Spacing.md),
                ListTile(
                  leading: const Icon(Icons.group_add),
                  title: Text(l10n.inviteToList),
                  subtitle: Text(l10n.shareRealtime),
                  onTap: () {
                    Navigator.pop(context);
                    unawaited(shareViaCode(context, ref, widget.listId));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.share),
                  title: Text(l10n.shareApp),
                  subtitle: Text(l10n.shareAppDescription),
                  onTap: () {
                    Navigator.pop(context);
                    shareReferral(context);
                  },
                ),
              ],
            ),
          ),
    );
  }
}

class _ShoppingExitBar extends StatelessWidget {
  const _ShoppingExitBar({required this.onExit});
  final VoidCallback onExit;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(Spacing.sm, Spacing.sm, Spacing.sm, 0),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.outlineVariant.withAlpha(90),
          ),
        ),
      ),
      child: OutlinedButton.icon(
        onPressed: onExit,
        icon: const Icon(Icons.close, size: 18),
        label: Text(l10n.exit),
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(40),
          foregroundColor: theme.colorScheme.secondary,
          side: BorderSide(color: theme.colorScheme.secondary.withAlpha(100)),
        ),
      ),
    );
  }
}

class _CatalogEntryButton extends ConsumerWidget {
  const _CatalogEntryButton({required this.listId});
  final String listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final locale = Localizations.localeOf(context);
    final offCountryTag = localeCountryToOffTag(locale.countryCode);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(Spacing.sm, Spacing.sm, Spacing.sm, 0),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.outlineVariant.withAlpha(90),
          ),
        ),
      ),
      child: TactileContainer(
        passThrough: true,
        child: OutlinedButton.icon(
          onPressed:
              () => Navigator.push<void>(
                context,
                MaterialPageRoute(
                  builder:
                      (_) => CatalogHomeScreen(
                        listId: listId,
                        offCountryTag: offCountryTag,
                      ),
                ),
              ),
          icon: const Icon(Icons.grid_view_rounded, size: 18),
          label: Text(l10n.catalogBrowse),
          style: OutlinedButton.styleFrom(
            minimumSize: const Size.fromHeight(40),
            foregroundColor: theme.colorScheme.primary,
          ),
        ),
      ),
    );
  }
}

class ShoppingSearchDelegate extends SearchDelegate<String> {
  ShoppingSearchDelegate(this.listId, this.allItems, this.categoriesMap);
  final String listId;
  final List<ShoppingItem> allItems;
  final Map<String, CategoryData> categoriesMap;

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
  Widget buildResults(BuildContext context) => _buildResults(context);
  @override
  Widget buildSuggestions(BuildContext context) => _buildResults(context);

  Widget _buildResults(BuildContext context) {
    final results =
        allItems
            .where((i) => i.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
    if (results.isEmpty) {
      return Center(
        child: Icon(
          Icons.search_off,
          size: 48,
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
      );
    }
    return ListView.builder(
      itemCount: results.length,
      itemBuilder:
          (context, index) =>
              ShoppingItemTile(listId: listId, item: results[index]),
    );
  }
}
