import 'package:flutter/material.dart';
// coverage:ignore-start
import 'package:flutter/services.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import '../theme/tokens.dart';
import '../theme/colors.dart';
import '../providers/shopping_lists_provider.dart';
import '../providers/shopping_list_provider.dart';
import '../providers/revenuecat_service_provider.dart';
import '../widgets/shopping_item_tile.dart';
import '../widgets/add_item_dialog.dart';
import '../widgets/banner_ad_widget.dart';
import '../widgets/empty_state.dart';
import '../widgets/budget_dialog.dart';
import '../widgets/filter_bar.dart';
import '../widgets/rewarded_ad_button.dart';
import '../widgets/shimmer_list.dart';
import '../models/shopping_item.dart';
import '../models/shopping_list.dart';
import '../providers/share_provider.dart';
import '../providers/premium_provider.dart';
import '../providers/current_list_provider.dart';
import '../providers/analytics_service_provider.dart';
import '../providers/app_review_service_provider.dart';
import 'paywall_screen.dart';
import 'chat_screen.dart';
import 'settings_screen.dart';
import '../widgets/list_switcher_sheet.dart';

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
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final itemsAsync = ref.watch(shoppingListItemsProvider(widget.listId));
    final listsAsync = ref.watch(shoppingListsProvider);
    final currentList = listsAsync.value?.firstWhere(
      (l) => l.id == widget.listId,
      orElse: () => ShoppingList(name: 'Lista'),
    );
    final isPremium = ref.watch(premiumProvider).value ?? false;

    return Scaffold(
      appBar: AppBar(
        title: _selectionMode
            ? Text(l10n.selectedItems(_selectedIds.length))
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: _showListSwitcher,
                      borderRadius: BorderRadius.circular(RadiusTokens.sm),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              currentList?.name ?? 'Lista de Compras',
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(width: 2),
                            Icon(Icons.arrow_drop_down, size: 20, color: theme.colorScheme.onSurface),
                          ],
                        ),
                      ),
                    ),
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
                          const SizedBox(height: Spacing.xxs),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(RadiusTokens.xxs),
                            child: LinearProgressIndicator(
                              value: progress,
                              minHeight: 6,
                              backgroundColor: isDark
                                  ? theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.2)
                                  : theme.colorScheme.surfaceContainerHighest,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                progress >= 1
                                    ? theme.colorScheme.error
                                    : theme.colorScheme.primary,
                              ),
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'R\$ ${totalSpent.toStringAsFixed(0)} / R\$ ${budget.toStringAsFixed(0)}',
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                              fontFeatures: [const FontFeature.tabularFigures()],
                            ),
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
                  onPressed: () =>
                      itemsAsync.value?.isNotEmpty == true ? _enterSelectionMode() : null,
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
                PopupMenuButton(
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (_) {
                    final items = <PopupMenuEntry<String>>[
                      PopupMenuItem(
                        value: 'archive',
                        child: Row(
                          children: [
                            const Icon(Icons.archive_outlined, size: 18),
                            const SizedBox(width: 8),
                            Text(l10n.completePurchase),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'clear_purchased',
                        child: Text(l10n.clearPurchased),
                      ),
                      PopupMenuItem(
                        value: 'clear',
                        child: Text(l10n.clearList),
                      ),
                      PopupMenuItem(
                        value: 'share',
                        child: Text(l10n.share),
                      ),
                      PopupMenuItem(
                        value: 'share_code',
                        child: Text(l10n.shareViaCode),
                      ),
                      PopupMenuItem(
                        value: 'import_code',
                        child: Text(l10n.importViaCode),
                      ),
                      PopupMenuItem(
                        value: 'list_assistant',
                        child: Row(
                          children: [
                            const Icon(Icons.auto_awesome, size: 18),
                            const SizedBox(width: 8),
                            Flexible(child: Text(l10n.listAssistant)),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'global_assistant',
                        child: Row(
                          children: [
                            const Icon(Icons.assistant, size: 18),
                            const SizedBox(width: 8),
                            Flexible(child: Text(l10n.globalAssistant)),
                          ],
                        ),
                      ),
                    ];
                    if (!isPremium) {
                    items.add(const PopupMenuDivider());
                    items.add(
                      PopupMenuItem(
                        value: 'upgrade',
                        child: Row(
                          children: [
                            const Icon(Icons.workspace_premium, size: 18, color: AppColors.premiumAmber),
                            const SizedBox(width: 8),
                            Flexible(child: Text(l10n.becomePremium)),
                          ],
                        ),
                      ),
                    );
                    }
                    items.add(PopupMenuItem(
                      value: 'manage_subscription',
                      child: Text(l10n.manageSubscription),
                    ));
                    items.add(PopupMenuItem(
                      value: 'settings',
                      child: Row(
                        children: [
                          const Icon(Icons.settings, size: 18),
                          const SizedBox(width: 8),
                          Text(l10n.settingsAppBar),
                        ],
                      ),
                    ));
                    return items;
                  },
                  onSelected: (value) async {
                    final items = itemsAsync.value ?? [];
                    if (value == 'archive') {
                      await _archiveList();
                    } else if (value == 'clear_purchased') {
                      await ref
                          .read(shoppingListItemsProvider(widget.listId).notifier)
                          .clearPurchased();
                    } else if (value == 'clear') {
                      final confirm = await showDialog<bool>(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: Text(l10n.confirm),
                          content: Text(l10n.confirmClearList),
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
                      if (confirm == true && context.mounted) {
                        await ref
                            .read(shoppingListItemsProvider(widget.listId).notifier)
                            .clearAll();
                      }
                    } else if (value == 'share') {
                      await _shareList(items, currentList?.name);
                    } else if (value == 'share_code') {
                      final isPremium = ref.read(premiumProvider).value ?? false;
                      if (!isPremium) {
                        await ref
                            .read(analyticsServiceProvider)
                            .logUpgradeTapped('share_code');
                        if (context.mounted) {
                          await Navigator.push(
                            context,
                            MaterialPageRoute<void>(builder: (_) => const PaywallScreen()),
                          );
                        }
                        return;
                      }
                      try {
                        final shareService = ref.read(shareServiceProvider);
                        final code = await shareService.createShareCode(widget.listId);
                        if (context.mounted) {
                          await showDialog<void>(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text(l10n.shareListTitle),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(l10n.shareThisCode),
                                  const SizedBox(height: Spacing.md),
                                  Container(
                                    padding: const EdgeInsets.all(Spacing.md),
                                    decoration: BoxDecoration(
                                      color: isDark
                                          ? theme.colorScheme.primaryContainer.withValues(alpha: 0.15)
                                          : theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
                                      borderRadius: BorderRadius.circular(RadiusTokens.md),
                                    ),
                                    child: SelectableText(
                                      code,
                                      style: theme.textTheme.headlineLarge?.copyWith(
                                        letterSpacing: 4,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
              if (!isPremium) const RewardedAdButton(),
              const SizedBox(height: Spacing.xs),
                                  Text(
                                    l10n.validForLimitedTime,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text(l10n.close),
                                ),
                              ],
                            ),
                          );
                        }
                      } on Exception catch (e) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(l10n.error(e.toString()))),
                          );
                        }
                      }
                     } else if (value == 'import_code') {
                       await _importSharedList();
                     } else if (value == 'list_assistant') {
                        if (context.mounted) {
                          await Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (_) => ChatScreen(
                                listId: widget.listId,
                                listName: currentList?.name,
                              ),
                            ),
                          );
                        }
                     } else if (value == 'global_assistant') {
                        if (context.mounted) {
                          await Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (_) => const ChatScreen(),
                            ),
                          );
                        }
                     } else if (value == 'upgrade') {
                      await ref.read(analyticsServiceProvider).logUpgradeTapped('menu');
                      if (context.mounted) {
                        await Navigator.push(
                          context,
                          MaterialPageRoute<void>(builder: (_) => const PaywallScreen()),
                        );
                      }
                    } else if (value == 'manage_subscription') {
                      try {
                        await ref.read(analyticsServiceProvider).logCustomerCenterOpened();
                        await ref.read(revenueCatServiceProvider).presentCustomerCenter();
                      } on Exception catch (e) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(l10n.error(e.toString()))),
                          );
                        }
                      }
                    } else if (value == 'settings') {
                      if (context.mounted) {
                        await Navigator.push(
                          context,
                          MaterialPageRoute<void>(builder: (_) => const SettingsScreen()),
                        );
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

          Iterable<ShoppingItem> filtered = items;
          if (_filter == FilterType.pending) {
            filtered = filtered.where((i) => !i.isPurchased);
          } else if (_filter == FilterType.purchased) {
            filtered = filtered.where((i) => i.isPurchased);
          }

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

          // ignore: prefer_int_literals
          final totalEstimated = items.fold(0.0, (sum, i) => sum + (i.estimatedPrice ?? 0) * i.quantity);
          final totalPurchased = items
              .where((i) => i.isPurchased && i.estimatedPrice != null)
              // ignore: prefer_int_literals
              .fold(0.0, (sum, i) => sum + i.estimatedPrice! * i.quantity);

          return Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(Spacing.md, Spacing.sm, Spacing.md, 0),
                padding: const EdgeInsets.all(Spacing.sm),
                decoration: BoxDecoration(
                  color: isDark
                      ? const Color(0xFF1A1D24)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(RadiusTokens.md),
                  border: Border.all(
                    color: isDark
                        ? theme.colorScheme.outlineVariant.withValues(alpha: 0.15)
                        : theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
                    width: isDark ? 0.5 : 1,
                  ),
                ),
                child: Column(
                  children: [
                    FilterBar(
                      filter: _filter,
                      sort: _sort,
                      onFilterChanged: (f) => setState(() => _filter = f),
                      onSortChanged: (s) => setState(() => _sort = s),
                    ),
                    const SizedBox(height: Spacing.sm),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: Spacing.sm, vertical: Spacing.xxs),
                      decoration: BoxDecoration(
                        color: isDark
                            ? theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.15)
                            : theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
                        borderRadius: BorderRadius.circular(RadiusTokens.sm),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            l10n.estimated,
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'R\$ ${totalEstimated.toStringAsFixed(2)}',
                            style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              fontFeatures: [const FontFeature.tabularFigures()],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: Spacing.xxs),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: Spacing.sm, vertical: Spacing.xxs),
                      decoration: BoxDecoration(
                        color: isDark
                            ? theme.colorScheme.primaryContainer.withValues(alpha: 0.1)
                            : theme.colorScheme.primaryContainer.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(RadiusTokens.sm),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            l10n.alreadyPurchased,
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                          Text(
                            'R\$ ${totalPurchased.toStringAsFixed(2)}',
                            style: theme.textTheme.titleSmall?.copyWith(
                              color: theme.colorScheme.primary,
                              fontWeight: FontWeight.w700,
                              fontFeatures: [const FontFeature.tabularFigures()],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: Spacing.xs),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    ref.invalidate(shoppingListItemsProvider(widget.listId));
                    await ref.read(shoppingListItemsProvider(widget.listId).future);
                  },
                  child: _sort == SortType.manual
                      ? ReorderableListView.builder(
                          itemCount: sorted.length,
                          itemBuilder: (context, index) => ShoppingItemTile(
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
                            HapticFeedback.mediumImpact();
                            ref
                                .read(shoppingListItemsProvider(widget.listId).notifier)
                                .reorderItem(oldIndex, newIndex);
                          },
                        )
                      : ListView.builder(
                          itemCount: sorted.length,
                          padding: const EdgeInsets.only(bottom: Spacing.xs),
                          itemBuilder: (context, index) => ShoppingItemTile(
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
        loading: () => const ShimmerList(),
        error: (e, _) => Center(child: Text(l10n.error(e.toString()))),
      ),
      floatingActionButton: _selectionMode
          ? null
          : FloatingActionButton(
              onPressed: () =>
                  showDialog<void>(context: context, builder: (_) => AddItemDialog(listId: widget.listId)),
              child: const Icon(Icons.add),
            ),
      bottomNavigationBar: _selectionMode && _selectedIds.isNotEmpty
          ? BottomAppBar(
              color: isDark ? const Color(0xFF1A1D24) : theme.colorScheme.surfaceContainerLow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    icon: Icon(Icons.delete_outline, color: theme.colorScheme.error),
                    label: Text(
                      l10n.delete,
                      style: TextStyle(color: theme.colorScheme.error),
                    ),
                    onPressed: () => _deleteSelected(),
                  ),
                  Container(
                    width: 1,
                    height: 24,
                    color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.check_circle_outline, color: theme.colorScheme.primary),
                    label: Text(
                      l10n.buy,
                      style: TextStyle(color: theme.colorScheme.primary),
                    ),
                    onPressed: () => _markSelected(true),
                  ),
                  Container(
                    width: 1,
                    height: 24,
                    color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
                  ),
                  TextButton.icon(
                    icon: Icon(Icons.undo, color: theme.colorScheme.onSurfaceVariant),
                    label: Text(
                      l10n.unmark,
                      style: TextStyle(color: theme.colorScheme.onSurfaceVariant),
                    ),
                    onPressed: () => _markSelected(false),
                  ),
                ],
              ),
            )
          : !isPremium
              ? const SafeArea(child: BannerAdWidget())
              : null
    );
  }

  void _enterSelectionMode() {
    HapticFeedback.mediumImpact();
    setState(() => _selectionMode = true);
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
    if (confirm == true && context.mounted) {
      // ignore: unawaited_futures
      HapticFeedback.mediumImpact();
      await ref
          .read(shoppingListItemsProvider(widget.listId).notifier)
          .removeItems(_selectedIds.toList());
      _exitSelectionMode();
    }
  }

  Future<void> _markSelected(bool isPurchased) async {
    // ignore: unawaited_futures
    HapticFeedback.lightImpact();
    await ref
        .read(shoppingListItemsProvider(widget.listId).notifier)
        .togglePurchasedBatch(_selectedIds.toList(), isPurchased);
    _exitSelectionMode();
  }

  Future<void> _archiveList() async {
    final l10n = AppLocalizations.of(context)!;
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(l10n.completePurchase),
        content: Text(l10n.confirmArchiveContent),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l10n.complete),
          ),
        ],
      ),
    );

    if (confirm == true && context.mounted) {
      await ref.read(shoppingListsProvider.notifier).archiveList(widget.listId);
      await ref.read(appReviewServiceProvider).registerArchiveAndRequestReview();
      if (context.mounted) {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.listArchived)),
        );
      }
    }
  }

  void _showBudgetDialog(BuildContext context, ShoppingList list) {
    showDialog<void>(
      context: context,
      builder: (_) => BudgetDialog(list: list),
    );
  }

  void _showListSwitcher() {
    showModalBottomSheet<void>(
      context: context,
      builder: (_) => ListSwitcherSheet(currentListId: widget.listId),
    );
  }

  Future<void> _shareList(List<ShoppingItem> items, String? listName) async {
    final l10n = AppLocalizations.of(context)!;
    if (items.isEmpty) {
      return;
    }
    final text = items.asMap().entries.map((e) {
      final i = e.value;
      return '${e.key + 1}. ${i.name} — ${i.quantity}${i.unit.label} (${i.category.label})${i.estimatedPrice != null ? ' R\$${i.estimatedPrice!.toStringAsFixed(2)}' : ''}';
    }).join('\n');
    await SharePlus.instance.share(ShareParams(text: text, subject: listName ?? l10n.shareSubject));
  }

  Future<void> _importSharedList() async {
    final l10n = AppLocalizations.of(context)!;
    final codeController = TextEditingController();
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
    codeController.dispose();
    if (code == null || code.isEmpty) {
      return;
    }
    try {
      final shareService = ref.read(shareServiceProvider);
      final result = await shareService.importSharedList(code);
      if (context.mounted) {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.listAdded(result.listName))),
        );
      }
      ref.invalidate(shoppingListsProvider);
      await ref.read(currentListIdProvider.notifier).setCurrentList(result.listId);
    } on Exception catch (e) {
      if (context.mounted) {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.error(e.toString()))),
        );
      }
    }
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
    final results = items
        .where((i) => i.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) =>
          ShoppingItemTile(listId: listId, item: results[index]),
    );
  }
}
// coverage:ignore-end
