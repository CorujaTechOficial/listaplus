import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../models/shopping_item.dart';
import '../providers/chat_provider.dart';
import '../providers/current_list_provider.dart';
import '../providers/shopping_list_provider.dart';
import '../providers/shopping_lists_provider.dart';
import '../theme/tokens.dart';
import '../widgets/ai_chat_panel.dart';
import '../widgets/empty_state.dart';
import '../widgets/create_list_dialog.dart';
import '../widgets/list_switcher_sheet.dart';
import '../widgets/shopping_item_tile.dart';

class AiHomeScreen extends ConsumerStatefulWidget {
  const AiHomeScreen({super.key});

  @override
  ConsumerState<AiHomeScreen> createState() => _AiHomeScreenState();
}

class _AiHomeScreenState extends ConsumerState<AiHomeScreen> {
  bool _listExpanded = false;
  bool _isMarketMode = false;

  @override
  Widget build(BuildContext context) {
    final currentListIdAsync = ref.watch(currentListIdProvider);

    return currentListIdAsync.when(
      data: (listId) {
        if (listId == null) {
          return _buildNoList();
        }
        return _buildChat(listId);
      },
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (e, _) => Scaffold(
        body: Center(child: Text('Erro: $e')),
      ),
    );
  }

  Widget _buildNoList() {
    return Scaffold(
      appBar: AppBar(title: const Text('Assistente IA')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(Spacing.xl),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const EmptyState(
                icon: Icons.smart_toy,
                title: 'Bem-vindo ao Assistente IA',
                subtitle: 'Crie uma lista de compras para começar a usar o chat inteligente.',
              ),
              const SizedBox(height: Spacing.lg),
              FilledButton.tonalIcon(
                onPressed: () {
                  showDialog<void>(
                    context: context,
                    builder: (_) => CreateListDialog(
                      onCreate: (name) async {
                        await ref.read(shoppingListsProvider.notifier).createList(name);
                        ref.invalidate(currentListIdProvider);
                      },
                    ),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text('Criar Primeira Lista'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChat(String listId) {
    final theme = Theme.of(context);
    final listAsync = ref.watch(shoppingListsProvider);
    final listName = listAsync.value
        ?.where((l) => l.id == listId)
        .firstOrNull
        ?.name;

    final itemsAsync = ref.watch(shoppingListItemsProvider(listId));
    final items = itemsAsync.value ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Hero(
              tag: 'ai_assistant_icon_$listId',
              child: Icon(Icons.auto_awesome, size: 20, color: theme.colorScheme.primary),
            ),
            const SizedBox(width: Spacing.sm),
            Text(listName ?? 'Lista de Compras'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.swap_horiz),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (_) => ListSwitcherSheet(currentListId: listId),
              );
            },
            tooltip: 'Trocar lista',
          ),
          IconButton(
            icon: Icon(_isMarketMode ? Icons.chat_bubble_outline : Icons.shopping_basket),
            onPressed: () => setState(() => _isMarketMode = !_isMarketMode),
            tooltip: _isMarketMode ? 'Voltar para o Chat' : 'Modo Mercado',
          ),
          IconButton(
            icon: const Icon(Icons.delete_sweep),
            onPressed: () {
              ref.read(chatSessionProvider(listId).notifier).clearHistory();
            },
            tooltip: 'Limpar histórico',
          ),
        ],
      ),
      body: Stack(
        children: [
          if (_isMarketMode)
            _CompactListCard(
              listId: listId,
              items: items,
              expanded: true,
              isMarketMode: true,
              onToggle: () => setState(() => _isMarketMode = false),
            )
          else ...[
            // Chat Panel is the main background
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: AiChatPanel(
                  listId: listId,
                  listName: listName,
                  onItemsAdded: () {
                    setState(() {
                      _listExpanded = true;
                    });
                    Timer(const Duration(seconds: 3), () {
                      if (mounted) {
                        setState(() {
                          _listExpanded = false;
                        });
                      }
                    });
                  },
                ),
              ),
            ),
            
            // Backdrop blur when list is expanded
            if (_listExpanded)
              Positioned.fill(
                child: GestureDetector(
                  onTap: () => setState(() => _listExpanded = false),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Container(
                      color: Colors.black.withAlpha((0.3 * 255).toInt()),
                    ),
                  ),
                ),
              ).animate().fadeIn(duration: 200.ms),

            // Shopping List Card at the top
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: _CompactListCard(
                listId: listId,
                items: items,
                expanded: _listExpanded,
                isMarketMode: false,
                onToggle: () => setState(() => _listExpanded = !_listExpanded),
              ),
            ),
          ],
        ],
      ),
      floatingActionButton: _isMarketMode
          ? FloatingActionButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) {
                    return DraggableScrollableSheet(
                      initialChildSize: 0.75,
                      minChildSize: 0.4,
                      maxChildSize: 0.95,
                      builder: (context, scrollController) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(16),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 8),
                                width: 40,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.outlineVariant,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                              Expanded(
                                child: AiChatPanel(
                                  listId: listId,
                                  listName: listName,
                                  compact: true,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              },
              child: const Icon(Icons.chat),
            )
          : null,
    );
  }
}

class _CompactListCard extends StatelessWidget {
  const _CompactListCard({
    required this.listId,
    required this.items,
    required this.expanded,
    required this.isMarketMode,
    required this.onToggle,
  });

  final String listId;
  final List<ShoppingItem> items;
  final bool expanded;
  final bool isMarketMode;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final purchased = items.where((i) => i.isPurchased).length;
    final total = items.length;
    final allPurchased = total > 0 && purchased == total;

    return AnimatedSize(
      duration: DurationTokens.normal,
      curve: Curves.easeInOut,
      child: GestureDetector(
        onTap: isMarketMode ? null : onToggle,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
            isMarketMode ? 0 : Spacing.md,
            isMarketMode ? 0 : Spacing.sm,
            isMarketMode ? 0 : Spacing.md,
            isMarketMode ? 0 : Spacing.xs,
          ),
          padding: const EdgeInsets.all(Spacing.sm),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(isMarketMode ? 0 : RadiusTokens.lg),
            border: isMarketMode
                ? null
                : Border.all(
                    color: theme.colorScheme.outlineVariant.withAlpha((0.3 * 255).toInt()),
                  ),
            boxShadow: isMarketMode
                ? null
                : [
                    BoxShadow(
                      color: Colors.black.withAlpha((0.06 * 255).toInt()),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
          ),
          child: Column(
            mainAxisSize: isMarketMode ? MainAxisSize.max : MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              if (!isMarketMode)
                Row(
                  children: [
                    Hero(
                      tag: 'ai_assistant_icon_$listId',
                      child: Icon(Icons.auto_awesome, size: 14, color: theme.colorScheme.primary),
                    ),
                    const SizedBox(width: Spacing.xs),
                    Text(
                      'Lista de Compras',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.secondaryContainer,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '$purchased/$total',
                        style: theme.textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: theme.colorScheme.onSecondaryContainer,
                        ),
                      ),
                    ),
                    const SizedBox(width: Spacing.xs),
                    AnimatedRotation(
                      turns: expanded ? 0.5 : 0,
                      duration: DurationTokens.fast,
                      child: Icon(
                        Icons.expand_more,
                        size: 20,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              if (isMarketMode)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Spacing.sm, horizontal: Spacing.md),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Hero(
                            tag: 'ai_assistant_icon_$listId',
                            child: Icon(Icons.auto_awesome, size: 24, color: theme.colorScheme.primary),
                          ),
                          const SizedBox(width: Spacing.sm),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Modo Mercado',
                                  style: theme.textTheme.headlineSmall?.copyWith(
                                    fontWeight: FontWeight.w900,
                                    color: theme.colorScheme.primary,
                                  ),
                                ),
                                Text(
                                  '$purchased de $total itens comprados',
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (allPurchased)
                            const Icon(Icons.check_circle, color: Colors.green, size: 32)
                                .animate()
                                .scale(duration: 400.ms, curve: Curves.easeOutBack),
                        ],
                      ),
                      const SizedBox(height: Spacing.sm),
                      LinearProgressIndicator(
                        value: total > 0 ? purchased / total : 0,
                        borderRadius: BorderRadius.circular(RadiusTokens.full),
                        minHeight: 10,
                        backgroundColor: theme.colorScheme.surfaceContainerHighest,
                      ),
                    ],
                  ),
                ),
              // Expanded list
              if (expanded)
                items.isEmpty
                    ? Padding(
                        padding: const EdgeInsets.all(Spacing.lg),
                        child: Center(
                          child: Text(
                            'Nenhum item na lista',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      )
                    : isMarketMode
                        ? Expanded(
                            child: ListView.builder(
                              padding: const EdgeInsets.symmetric(
                                vertical: Spacing.md,
                                horizontal: Spacing.sm,
                              ),
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                final item = items[index];
                                return ShoppingItemTile(
                                  listId: listId,
                                  item: item,
                                  viewMode: ShoppingItemViewMode.market,
                                );
                              },
                            ),
                          )
                        : ConstrainedBox(
                            constraints: const BoxConstraints(maxHeight: 200),
                            child: ListView.builder(
                              shrinkWrap: true,
                              padding: const EdgeInsets.symmetric(vertical: Spacing.xs),
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                final item = items[index];
                                return ShoppingItemTile(
                                  listId: listId,
                                  item: item,
                                  viewMode: ShoppingItemViewMode.compact,
                                );
                              },
                            ),
                          ),
              if (isMarketMode && allPurchased)
                Padding(
                  padding: const EdgeInsets.all(Spacing.md),
                  child: FilledButton.icon(
                    onPressed: () => onToggle(), // Effectively exits market mode
                    icon: const Icon(Icons.done_all),
                    label: const Text('Concluir Compras'),
                    style: FilledButton.styleFrom(
                      minimumSize: const Size(double.infinity, 54),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(RadiusTokens.md),
                      ),
                    ),
                  ),
                ).animate().fadeIn(delay: 200.ms).slideY(begin: 0.2, end: 0),
            ],
          ),
        ),
      ),
    );
  }
}
