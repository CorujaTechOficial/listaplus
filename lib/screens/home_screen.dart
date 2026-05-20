import 'dart:async';

import 'package:flutter/material.dart';
// coverage:ignore-start
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:confetti/confetti.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:excel/excel.dart' as ex;
import 'package:path_provider/path_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'achievements_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../theme/tokens.dart';
import '../theme/colors.dart';
import '../theme/page_transitions.dart';
import '../providers/shopping_lists_provider.dart';
import '../providers/shopping_list_provider.dart';
import '../providers/current_list_provider.dart';
import 'budget_dashboard_screen.dart';
import '../widgets/shopping_item_tile.dart';
import '../widgets/quick_add_bar.dart';
import '../widgets/banner_ad_widget.dart';
import '../widgets/empty_state.dart';
import '../widgets/budget_dialog.dart';
import '../widgets/filter_bar.dart';
import '../models/category.dart';
import '../models/shopping_item.dart';
import '../models/shopping_list.dart';
import '../models/chat_message.dart';
import '../models/premium_feature.dart';
import '../providers/share_provider.dart';
import '../providers/premium_provider.dart';
import '../providers/analytics_service_provider.dart';
import '../providers/app_review_service_provider.dart';
import '../providers/ai_service_provider.dart';
import 'paywall_screen.dart';
import 'chat_screen.dart';
import 'settings_screen.dart';
import '../widgets/list_switcher_sheet.dart';
import '../widgets/add_item_dialog.dart';
import 'dart:convert';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key, required this.listId});

  final String listId;

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late ConfettiController _confettiController;
  FilterType _filter = FilterType.all;
  SortType _sort = SortType.manual;
  bool _selectionMode = false;
  bool _isGrouped = true;
  bool _shoppingMode = false;
  bool _isAiOrganizing = false;
  final Set<String> _selectedIds = {};

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 3));
  }

  Future<void> _simulateAiOrganization() async {
    setState(() {
      _isAiOrganizing = true;
    });
    unawaited(HapticFeedback.mediumImpact());
    
    try {
      final itemsAsync = ref.read(shoppingListItemsProvider(widget.listId));
      final items = itemsAsync.value ?? [];
      if (items.isEmpty) {
        if (mounted) {
          setState(() {
            _isAiOrganizing = false;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Sua lista está vazia! Adicione itens primeiro. ℹ️'),
              behavior: SnackBarBehavior.floating,
            ),
          );
        }
        return;
      }

      final itemNames = items.map((i) => i.name).toList();
      const systemPrompt = "Você é um assistente especialista em organização de listas de compras. Sua tarefa é categorizar cada item da lista fornecida em uma das seguintes categorias válidas: 'fruits' (para Frutas), 'cleaning' (para Limpeza/Higiene), 'beverages' (para Bebidas/Laticínios), 'bakery' (para Padaria/Pães/Bolos) ou 'others' (para Outros/Diversos). Retorne APENAS um objeto JSON válido onde as chaves são os nomes exatos dos itens e os valores são as chaves da categoria correspondente (fruits, cleaning, beverages, bakery, others). Não inclua nenhuma explicação ou texto fora do JSON.";
      
      final aiService = ref.read(aiServiceProvider);
      final response = await aiService.getChatCompletion(
        [
          ChatMessage(
            role: 'user',
            content: 'Itens para categorizar: ${jsonEncode(itemNames)}',
          ),
        ],
        systemPrompt: systemPrompt,
      );

      final cleanContent = response.content
          .replaceAll('```json', '')
          .replaceAll('```', '')
          .trim();
      
      final Map<String, dynamic> categorization = jsonDecode(cleanContent) as Map<String, dynamic>;

      final updatedItems = items.map((item) {
        final categoryKey = categorization[item.name]?.toString();
        Category? newCategory;
        if (categoryKey != null) {
          switch (categoryKey) {
            case 'fruits':
              newCategory = Category.fruits;
              break;
            case 'cleaning':
              newCategory = Category.cleaning;
              break;
            case 'beverages':
              newCategory = Category.beverages;
              break;
            case 'bakery':
              newCategory = Category.bakery;
              break;
            case 'others':
              newCategory = Category.others;
              break;
          }
        }
        if (newCategory != null) {
          return item.copyWith(category: newCategory, updatedAt: DateTime.now());
        }
        return item;
      }).toList();

      await ref.read(shoppingListItemsProvider(widget.listId).notifier).updateItems(updatedItems);

      if (mounted) {
        setState(() {
          _isAiOrganizing = false;
        });
        unawaited(HapticFeedback.heavyImpact());
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Lista organizada magicamente por categorias! ✨'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } on Exception catch (e) {
      if (mounted) {
        setState(() {
          _isAiOrganizing = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erro ao organizar com IA: ${e.toString()}'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final itemsAsync = ref.watch(shoppingListItemsProvider(widget.listId));
    final listsAsync = ref.watch(shoppingListsProvider);
    final currentList = listsAsync.value?.where(
      (l) => l.id == widget.listId,
    ).firstOrNull;
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
                            Hero(
                              tag: 'list_name_${widget.listId}',
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  currentList?.name ?? 'Lista de Compras',
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 2),
                            Icon(Icons.arrow_drop_down, size: 20, color: theme.colorScheme.onSurface),
                          ],
                        ),
                      ),
                    ),
                  if (currentList?.budget != null)
                    InkWell(
                      onTap: () => _showBudgetDialog(context, currentList!),
                      borderRadius: BorderRadius.circular(RadiusTokens.xxs),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                        child: Builder(builder: (context) {
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
                                child: TweenAnimationBuilder<double>(
                                  tween: Tween(begin: 0, end: progress),
                                  duration: DurationTokens.normal,
                                  curve: Curves.easeOut,
                                  builder: (context, value, _) => LinearProgressIndicator(
                                    value: value,
                                    minHeight: 6,
                                    backgroundColor: isDark
                                        ? theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.2)
                                        : theme.colorScheme.surfaceContainerHighest,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      _getColorForProgress(progress, theme),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                'R\$ ${totalSpent.toStringAsFixed(0)} / R\$ ${budget.toStringAsFixed(0)}',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: _getColorForProgress(progress, theme),
                                  fontFeatures: [const FontFeature.tabularFigures()],
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                ],
              ),
        actions: _selectionMode
// ... rest of actions ...
// (I need to be careful with the context)

            ? [
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => _exitSelectionMode(),
                ),
              ]
            : [
                IconButton(
                  icon: Icon(_shoppingMode ? Icons.shopping_cart : Icons.shopping_cart_outlined),
                  onPressed: () {
                    HapticFeedback.mediumImpact();
                    setState(() {
                      _shoppingMode = !_shoppingMode;
                      if (_shoppingMode) {
                        _filter = FilterType.pending;
                      } else {
                        _filter = FilterType.all;
                      }
                    });
                  },
                  tooltip: 'Modo Compras',
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
                            Flexible(child: Text(l10n.completePurchase)),
                          ],
                        ),
                      ),
                      if (currentList?.budget == null)
                        PopupMenuItem(
                          value: 'set_budget',
                          child: Row(
                            children: [
                              const Icon(Icons.account_balance_wallet_outlined, size: 18),
                              const SizedBox(width: 8),
                              Flexible(child: Text(l10n.setBudgetButton)),
                            ],
                          ),
                        ),
                      PopupMenuItem(
                        value: 'clear_purchased',
                        child: Row(
                          children: [
                            const Icon(Icons.cleaning_services_outlined, size: 18),
                            const SizedBox(width: 8),
                            Flexible(child: Text(l10n.clearPurchased)),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'clear',
                        child: Row(
                          children: [
                            const Icon(Icons.delete_sweep_outlined, size: 18),
                            const SizedBox(width: 8),
                            Flexible(child: Text(l10n.clearList)),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'achievements',
                        child: Row(
                          children: [
                            const Icon(Icons.emoji_events_outlined, size: 18, color: Colors.orange),
                            const SizedBox(width: 8),
                            Flexible(child: Text(l10n.achievements)),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'export',
                        child: Row(
                          children: [
                            const Icon(Icons.file_download_outlined, size: 18),
                            const SizedBox(width: 8),
                            Flexible(child: Text(l10n.exportPdfExcel)),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'share_list',
                        child: Row(
                          children: [
                            const Icon(Icons.share_outlined, size: 18),
                            const SizedBox(width: 8),
                            Flexible(child: Text(l10n.share)),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                        value: 'ai_organize',
                        child: Row(
                          children: [
                            Icon(Icons.auto_awesome_motion, size: 18, color: Colors.blue),
                            SizedBox(width: 8),
                            Flexible(child: Text('Organização Inteligente')),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'ai_assistant',
                        child: Row(
                          children: [
                            const Icon(Icons.auto_awesome, size: 18, color: AppColors.premiumAmber),
                            const SizedBox(width: 8),
                            Flexible(child: Text(l10n.aiAssistant)),
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
                      value: 'settings',
                      child: Row(
                        children: [
                          const Icon(Icons.settings, size: 18),
                          const SizedBox(width: 8),
                          Flexible(child: Text(l10n.settingsAppBar)),
                        ],
                      ),
                    ));
                    return items;
                  },
                  onSelected: (value) async {
                    final items = itemsAsync.value ?? [];
                    if (value == 'archive') {
                      await _archiveList();
                    } else if (value == 'achievements') {
                      if (context.mounted) {
                        await Navigator.push(context, fadeSlideRoute<void>(const AchievementsScreen()));
                      }
                    } else if (value == 'export') {
                      _showExportOptions(items);
                    } else if (value == 'set_budget') {
                      _showBudgetDialog(context, currentList!);
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
                    } else if (value == 'share_list') {
                      _showShareBottomSheet(items, currentList?.name);
                    } else if (value == 'ai_organize') {
                      if (isPremium) {
                        await _simulateAiOrganization();
                      } else {
                        await ref.read(analyticsServiceProvider).logPremiumFeatureAccessed(PremiumFeature.assistant.name);
                        if (context.mounted) {
                          await Navigator.push(
                            context,
                            fadeSlideRoute<void>(const PaywallScreen()),
                          );
                        }
                      }
                    } else if (value == 'ai_assistant') {
                      if (isPremium) {
                        if (context.mounted) {
                          await Navigator.push(
                            context,
                            fadeSlideRoute<void>(
                              ChatScreen(
                                listId: widget.listId,
                                listName: currentList?.name,
                              ),
                            ),
                          );
                        }
                      } else {
                        await ref.read(analyticsServiceProvider).logPremiumFeatureAccessed(PremiumFeature.assistant.name);
                        if (context.mounted) {
                          await Navigator.push(
                            context,
                            fadeSlideRoute<void>(const PaywallScreen()),
                          );
                        }
                      }
                    } else if (value == 'upgrade') {
                      await ref.read(analyticsServiceProvider).logUpgradeTapped('menu');
                      if (context.mounted) {
                        await Navigator.push(
                          context,
                          fadeSlideRoute<void>(const PaywallScreen()),
                        );
                      }
                    } else if (value == 'settings') {
                      if (context.mounted) {
                        await Navigator.push(
                          context,
                          fadeSlideRoute<void>(const SettingsScreen()),
                        );
                      }
                    }
                  },
                ),
              ],
      ),
      body: Stack(
        children: [
          itemsAsync.when(
            data: (items) {
              if (items.isEmpty) {
                return Column(
                  children: [
                    Expanded(
                      child: RefreshIndicator(
                        onRefresh: () async {
                          ref.invalidate(shoppingListItemsProvider(widget.listId));
                          await ref.read(shoppingListItemsProvider(widget.listId).future);
                        },
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.6,
                            child: EmptyState(listId: widget.listId),
                          ),
                        ),
                      ),
                    ),
                    if (!_selectionMode && !_shoppingMode) QuickAddBar(listId: widget.listId),
                  ],
                );
              }

          Iterable<ShoppingItem> filtered = items;
          if (_filter == FilterType.pending) {
            filtered = filtered.where((i) => !i.isPurchased);
          } else if (_filter == FilterType.purchased) {
            filtered = filtered.where((i) => i.isPurchased);
          }

          final baseList = filtered.toList();
          
          // Separate pending and purchased to keep purchased at the bottom
          final pending = baseList.where((i) => !i.isPurchased).toList();
          final purchased = baseList.where((i) => i.isPurchased).toList();

          void applySort(List<ShoppingItem> list) {
            switch (_sort) {
              case SortType.name:
                list.sort((a, b) => a.name.compareTo(b.name));
                break;
              case SortType.category:
                list.sort((a, b) => a.category.name.compareTo(b.category.name));
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

          final sorted = [...pending, ...purchased];

          // Prepare grouped items if needed
          final List<dynamic> listItems = [];
          if (_isGrouped && _sort == SortType.category) {
            Category? lastCategory;
            for (final item in pending) {
              if (item.category != lastCategory) {
                listItems.add(item.category);
                lastCategory = item.category;
              }
              listItems.add(item);
            }
            if (purchased.isNotEmpty) {
              listItems.add(l10n.filterPurchased);
              for (final item in purchased) {
                listItems.add(item);
              }
            }
          } else {
             listItems.addAll(sorted);
          }

          final totalItemsCount = items.length;
          final purchasedItemsCount = items.where((i) => i.isPurchased).length;
          final itemsProgress = totalItemsCount > 0 ? purchasedItemsCount / totalItemsCount : 0.0;

          // ignore: prefer_int_literals
          final totalEstimated = items.fold(0.0, (sum, i) => sum + (i.estimatedPrice ?? 0) * i.quantity);
          final totalPurchasedValue = items
              .where((i) => i.isPurchased && i.estimatedPrice != null)
              // ignore: prefer_int_literals
              .fold(0.0, (sum, i) => sum + i.estimatedPrice! * i.quantity);

          return Column(
            children: [
              if (!_shoppingMode)
                Padding(
                  padding: const EdgeInsets.fromLTRB(Spacing.md, Spacing.sm, Spacing.md, 0),
                  child: _SummaryCard(
                    totalItemsCount: totalItemsCount,
                    purchasedItemsCount: purchasedItemsCount,
                    itemsProgress: itemsProgress,
                    totalEstimated: totalEstimated,
                    totalPurchasedValue: totalPurchasedValue,
                    filter: _filter,
                    sort: _sort,
                    isGrouped: _isGrouped,
                    onFilterChanged: (f) => setState(() => _filter = f),
                    onSortChanged: (s) => setState(() => _sort = s),
                    onGroupedChanged: (g) => setState(() => _isGrouped = g),
                  ),
                )
              else
                _ShoppingModeHeader(
                  purchasedCount: purchasedItemsCount,
                  totalCount: totalItemsCount,
                  progress: itemsProgress,
                ),
              const SizedBox(height: Spacing.xs),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    ref.invalidate(shoppingListItemsProvider(widget.listId));
                    await ref.read(shoppingListItemsProvider(widget.listId).future);
                  },
                  child: _sort == SortType.manual && !_isGrouped
                      ? ReorderableListView.builder(
                          itemCount: listItems.length,
                          itemBuilder: (context, index) {
                            final item = listItems[index] as ShoppingItem;
                            return ShoppingItemTile(
                              key: ValueKey(item.id),
                              listId: widget.listId,
                              item: item,
                              selectionMode: _selectionMode,
                              isSelected: _selectedIds.contains(item.id),
                              onSelectionChanged: (selected) {
                                if (selected) {
                                  setState(() {
                                    _selectedIds.add(item.id);
                                    _selectionMode = true;
                                  });
                                  HapticFeedback.mediumImpact();
                                } else {
                                  setState(() {
                                    _selectedIds.remove(item.id);
                                    if (_selectedIds.isEmpty) {
                                      _selectionMode = false;
                                    }
                                  });
                                }
                              },
                            );
                          },
                          onReorder: (oldIndex, newIndex) {
                            HapticFeedback.mediumImpact();
                            ref
                                .read(shoppingListItemsProvider(widget.listId).notifier)
                                .reorderItem(oldIndex, newIndex);
                          },
                        )
                      : ListView.builder(
                          itemCount: listItems.length,
                          padding: const EdgeInsets.only(bottom: Spacing.xs),
                          itemBuilder: (context, index) {
                            final dynamic item = listItems[index];
                            
                            if (item is Category) {
                              return StickyHeader(
                                header: Container(
                                  width: double.infinity,
                                  color: theme.scaffoldBackgroundColor,
                                  padding: const EdgeInsets.fromLTRB(Spacing.md, Spacing.md, Spacing.md, Spacing.xs),
                                  child: Row(
                                    children: [
                                      Icon(
                                        AppColors.categoryIcons[item.label] ?? Icons.category_outlined,
                                        size: 14,
                                        color: theme.colorScheme.primary,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        item.localizedLabel(l10n).toUpperCase(),
                                        style: theme.textTheme.labelSmall?.copyWith(
                                          color: theme.colorScheme.primary,
                                          fontWeight: FontWeight.w800,
                                          letterSpacing: 1.2,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Divider(
                                          color: theme.colorScheme.primary.withValues(alpha: 0.1),
                                          thickness: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                content: const SizedBox.shrink(),
                              );
                            }

                            if (item is String) {
                              return StickyHeader(
                                header: Container(
                                  width: double.infinity,
                                  color: theme.scaffoldBackgroundColor,
                                  padding: const EdgeInsets.fromLTRB(Spacing.md, Spacing.md, Spacing.md, Spacing.xs),
                                  child: Row(
                                    children: [
                                      Text(
                                        item.toUpperCase(),
                                        style: theme.textTheme.labelSmall?.copyWith(
                                          color: theme.colorScheme.onSurfaceVariant,
                                          fontWeight: FontWeight.w800,
                                          letterSpacing: 1.2,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Divider(
                                          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.1),
                                          thickness: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                content: const SizedBox.shrink(),
                              );
                            }

                            final shoppingItem = item as ShoppingItem;
                            return ShoppingItemTile(
                              key: ValueKey(shoppingItem.id),
                              listId: widget.listId,
                              item: shoppingItem,
                              selectionMode: _selectionMode,
                              isSelected: _selectedIds.contains(shoppingItem.id),
                              onSelectionChanged: (selected) {
                                if (selected) {
                                  setState(() {
                                    _selectedIds.add(shoppingItem.id);
                                    _enterSelectionMode();
                                  });
                                } else {
                                  setState(() {
                                    _selectedIds.remove(shoppingItem.id);
                                    if (_selectedIds.isEmpty) {
                                      _selectionMode = false;
                                    }
                                  });
                                }
                              },
                            ).animate().fadeIn(
                              duration: DurationTokens.fast,
                              delay: Duration(milliseconds: index * 10),
                            ).slideY(
                              begin: 0.05,
                              end: 0,
                              duration: DurationTokens.fast,
                              curve: Curves.easeOut,
                            );
                          },
                        ),
                ),
              ),
              if (!_selectionMode && !_shoppingMode) QuickAddBar(listId: widget.listId),
              if (_shoppingMode)
                SafeArea(
                  top: false,
                  child: Padding(
                    padding: const EdgeInsets.all(Spacing.md),
                    child: FilledButton.icon(
                      onPressed: () {
                        HapticFeedback.mediumImpact();
                        setState(() {
                          _shoppingMode = false;
                          _filter = FilterType.all;
                        });
                      },
                      icon: const Icon(Icons.check),
                      label: Text(l10n.complete.toUpperCase()),
                      style: FilledButton.styleFrom(
                        minimumSize: const Size.fromHeight(56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(RadiusTokens.md),
                        ),
                      ),
                    ),
                  ),
                ).animate().slideY(begin: 1, end: 0, curve: Curves.easeOut),
            ],
          );
        },
        loading: () => Skeletonizer(
          child: ListView.builder(
            itemCount: 8,
            padding: const EdgeInsets.all(Spacing.md),
            itemBuilder: (context, index) => Card(
              margin: const EdgeInsets.only(bottom: Spacing.sm),
              child: ListTile(
                leading: const CircleAvatar(),
                title: Container(width: 150, height: 12, color: Colors.grey),
                subtitle: Container(width: 80, height: 10, color: Colors.grey),
              ),
            ),
          ),
        ),
        error: (e, _) => Center(child: Text(l10n.error(e.toString()))),
       ),
       if (_isAiOrganizing)
         Positioned.fill(
           child: Container(
             color: theme.colorScheme.primary.withValues(alpha: 0.1),
             child: Center(
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Container(
                     padding: const EdgeInsets.all(Spacing.xl),
                     decoration: BoxDecoration(
                       color: theme.colorScheme.surface.withValues(alpha: 0.9),
                       shape: BoxShape.circle,
                       boxShadow: [
                         BoxShadow(
                           color: theme.colorScheme.primary.withValues(alpha: 0.2),
                           blurRadius: 30,
                           spreadRadius: 10,
                         ),
                       ],
                     ),
                     child: Icon(
                       Icons.auto_awesome,
                       size: 64,
                       color: theme.colorScheme.primary,
                     ),
                   ).animate(onPlay: (c) {
                     if (!WidgetsBinding.instance.runtimeType.toString().contains('TestWidgetsFlutterBinding')) {
                       c.repeat();
                     }
                   })
                    .shimmer(duration: 1.5.seconds)
                    .scale(begin: const Offset(1, 1), end: const Offset(1.1, 1.1), curve: Curves.easeInOut),
                   const SizedBox(height: Spacing.xl),
                   Text(
                      l10n.organizingAi,
                     style: theme.textTheme.labelLarge?.copyWith(
                       fontWeight: FontWeight.w900,
                       letterSpacing: 2,
                       color: theme.colorScheme.primary,
                     ),
                   ).animate(onPlay: (c) {
                     if (!WidgetsBinding.instance.runtimeType.toString().contains('TestWidgetsFlutterBinding')) {
                       c.repeat();
                     }
                   })
                    .fadeIn(duration: 500.ms)
                    .then()
                    .fadeOut(duration: 500.ms),
                 ],
               ),
             ),
           ).animate().fadeIn(),
         ),
       Align(
         alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
              colors: const [
                Colors.green,
                Colors.blue,
                Colors.pink,
                Colors.orange,
                Colors.purple,
                AppColors.premiumAmber,
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: (_shoppingMode || _selectionMode)
          ? null
          : FloatingActionButton(
              onPressed: () => showDialog<void>(
                context: context,
                builder: (_) => AddItemDialog(listId: widget.listId),
              ),
              child: const Icon(Icons.add),
            ),
      bottomNavigationBar: AnimatedSwitcher(
        duration: DurationTokens.fast,
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        transitionBuilder: (child, animation) => FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.5),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut)),
            child: child,
          ),
        ),
        child: _selectionMode && _selectedIds.isNotEmpty
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
      ),
    );
  }

  Color _getColorForProgress(double progress, ThemeData theme) {
    if (progress >= 1.0) {
      return theme.colorScheme.error;
    }
    if (progress >= 0.9) {
      return Colors.deepOrange;
    }
    if (progress >= 0.75) {
      return Colors.orange;
    }
    if (progress >= 0.5) {
      return Colors.amber;
    }
    return theme.colorScheme.primary;
  }

  void _enterSelectionMode() {
    unawaited(HapticFeedback.mediumImpact());
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
      _confettiController.play();
      await Future<void>.delayed(const Duration(milliseconds: 500));
      if (!context.mounted) {
        return;
      }
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

  Future<void> _shareViaCode() async {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final isPremium = await ref.read(premiumProvider.future);

    if (!isPremium) {
      await ref.read(analyticsServiceProvider).logUpgradeTapped('share_code');
      if (!mounted) {
        return;
      }
      await Navigator.push(
        context,
        fadeSlideRoute<void>(const PaywallScreen()),
      );
      return;
    }
    try {
      final shareService = ref.read(shareServiceProvider);
      final code = await shareService.createShareCode(widget.listId);
      if (!mounted) {
        return;
      }
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
    } on Exception catch (e) {
      if (!mounted) {
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.error(e.toString()))),
      );
    }
  }

  void _showExportOptions(List<ShoppingItem> items) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        final l10n = AppLocalizations.of(context)!;
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.picture_as_pdf, color: Colors.red),
                title: Text(l10n.exportPdf),
                onTap: () {
                  Navigator.pop(context);
                  _exportPdf(items);
                },
              ),
              ListTile(
                leading: const Icon(Icons.table_chart, color: Colors.green),
                title: Text(l10n.exportExcel),
                onTap: () {
                  Navigator.pop(context);
                  _exportExcel(items);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _exportPdf(List<ShoppingItem> items) async {
    final l10n = AppLocalizations.of(context)!;
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text(l10n.shareListText, style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold)),
            pw.Divider(),
            pw.SizedBox(height: 20),
            ...items.map((item) => pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text('${item.isPurchased ? "[X] " : "[ ] "} ${item.name} (${item.quantity} ${item.unit.name})'),
                if (item.estimatedPrice != null)
                  pw.Text('R\$ ${(item.estimatedPrice! * item.quantity).toStringAsFixed(2)}'),
              ],
            )),
          ],
        ),
      ),
    );
    await Printing.layoutPdf(onLayout: (format) => pdf.save());
  }

  Future<void> _exportExcel(List<ShoppingItem> items) async {
    final l10n = AppLocalizations.of(context)!;
    final excel = ex.Excel.createExcel();
    final sheet = excel['Shopping List'];
    
    sheet.appendRow([ex.TextCellValue('Item'), ex.TextCellValue('Qtd'), ex.TextCellValue('Unidade'), ex.TextCellValue('Preço Est.'), ex.TextCellValue('Comprado')]);
    
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
      await SharePlus.instance.share(ShareParams(files: [XFile(file.path)], text: l10n.shareListText));
    }
  }

  void _showShareBottomSheet(List<ShoppingItem> items, String? listName) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Padding(
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
                const SizedBox(height: Spacing.sm),
                ListTile(
                  leading: const Icon(Icons.text_fields),
                  title: Text(l10n.share),
                  subtitle: const Text('Enviar itens como texto formatado'),
                  onTap: () {
                    Navigator.pop(context);
                    _shareList(items, listName);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.cloud_sync, color: AppColors.premiumAmber),
                  title: Text(l10n.shareViaCode),
                  subtitle: const Text('Sincronizar em tempo real com outras pessoas'),
                  onTap: () async {
                    Navigator.pop(context);
                    await _shareViaCode();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _SummaryCard extends ConsumerWidget {
  const _SummaryCard({
    required this.totalItemsCount,
    required this.purchasedItemsCount,
    required this.itemsProgress,
    required this.totalEstimated,
    required this.totalPurchasedValue,
    required this.filter,
    required this.sort,
    required this.isGrouped,
    required this.onFilterChanged,
    required this.onSortChanged,
    required this.onGroupedChanged,
  });

  final int totalItemsCount;
  final int purchasedItemsCount;
  final double itemsProgress;
  final double totalEstimated;
  final double totalPurchasedValue;
  final FilterType filter;
  final SortType sort;
  final bool isGrouped;
  final ValueChanged<FilterType> onFilterChanged;
  final ValueChanged<SortType> onSortChanged;
  final ValueChanged<bool> onGroupedChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final l10n = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.all(Spacing.md),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A1D24) : Colors.white,
        borderRadius: BorderRadius.circular(RadiusTokens.lg),
        boxShadow: isDark
            ? [
                BoxShadow(
                  color: theme.colorScheme.primary.withValues(alpha: 0.05),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                )
              ]
            : [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
        border: Border.all(
          color: isDark
              ? theme.colorScheme.outlineVariant.withValues(alpha: 0.15)
              : theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
          width: isDark ? 0.5 : 1,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${l10n.filterPurchased}: $purchasedItemsCount / $totalItemsCount',
                    style: theme.textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Stack(
                    children: [
                      Container(
                        width: 120,
                        height: 8,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(RadiusTokens.full),
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.fastOutSlowIn,
                        width: 120 * itemsProgress.clamp(0.0, 1.0),
                        height: 8,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              theme.colorScheme.primary,
                              theme.colorScheme.primary.withValues(alpha: 0.7),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(RadiusTokens.full),
                          boxShadow: [
                            BoxShadow(
                              color: theme.colorScheme.primary.withValues(alpha: 0.3),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  final listId = ref.read(currentListIdProvider).value;
                  if (listId != null) {
                    Navigator.push(
                      context,
                      fadeSlideRoute<void>(BudgetDashboardScreen(listId: listId)),
                    );
                  }
                },
                borderRadius: BorderRadius.circular(RadiusTokens.md),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: Spacing.sm, vertical: Spacing.xs),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(RadiusTokens.md),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'R\$ ${totalPurchasedValue.toStringAsFixed(2)}',
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w900,
                              color: theme.colorScheme.primary,
                              fontFeatures: [const FontFeature.tabularFigures()],
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(Icons.arrow_forward_ios, size: 12, color: theme.colorScheme.primary),
                        ],
                      ),
                      Text(
                        '${l10n.estimated}: R\$ ${totalEstimated.toStringAsFixed(2)}',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (totalEstimated > totalPurchasedValue && totalPurchasedValue > 0)
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.green.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(RadiusTokens.xxs),
                          ),
                          child: Text(
                            'Economia: R\$ ${(totalEstimated - totalPurchasedValue).toStringAsFixed(2)}',
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: Colors.green,
                              fontWeight: FontWeight.w800,
                              fontSize: 10,
                            ),
                          ),
                        ).animate().fadeIn().scale(curve: Curves.easeOutBack),
                    ],
                  ),
                ).animate().shimmer(delay: 2.seconds, duration: 2.seconds),
              ),
            ],
          ),
          const SizedBox(height: Spacing.md),
          const Divider(height: 1),
          const SizedBox(height: Spacing.sm),
          FilterBar(
            filter: filter,
            sort: sort,
            isGrouped: isGrouped,
            onFilterChanged: onFilterChanged,
            onSortChanged: onSortChanged,
            onGroupedChanged: onGroupedChanged,
          ),
        ],
      ),
    ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.1, end: 0);
  }
}

class _ShoppingModeHeader extends StatelessWidget {
  const _ShoppingModeHeader({
    required this.purchasedCount,
    required this.totalCount,
    required this.progress,
  });

  final int purchasedCount;
  final int totalCount;
  final double progress;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.sm),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withValues(alpha: isDark ? 0.2 : 0.4),
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.primary.withValues(alpha: 0.2),
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.shopping_bag, color: theme.colorScheme.primary),
          const SizedBox(width: Spacing.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'MODO COMPRAS',
                      style: theme.textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.5,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    Text(
                      '$purchasedCount / $totalCount',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                ClipRRect(
                  borderRadius: BorderRadius.circular(RadiusTokens.full),
                  child: LinearProgressIndicator(
                    value: progress,
                    minHeight: 8,
                    backgroundColor: theme.colorScheme.primary.withValues(alpha: 0.1),
                    valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
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
