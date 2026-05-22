import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/shopping_item.dart';
import '../providers/chat_provider.dart';
import '../providers/current_list_provider.dart';
import '../providers/shopping_list_provider.dart';
import '../providers/shopping_lists_provider.dart';
import '../services/logger_service.dart';
import '../theme/tokens.dart';
import '../widgets/ai_chat_panel.dart';
import '../widgets/empty_state.dart';
import '../widgets/create_list_dialog.dart';

class AiHomeScreen extends ConsumerStatefulWidget {
  const AiHomeScreen({super.key});

  @override
  ConsumerState<AiHomeScreen> createState() => _AiHomeScreenState();
}

class _AiHomeScreenState extends ConsumerState<AiHomeScreen> {
  bool _listExpanded = false;

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
                onPressed: () async {
                  final messenger = ScaffoldMessenger.maybeOf(context);
                  final name = await showDialog<String>(
                    context: context,
                    builder: (_) => const CreateListDialog(),
                  );
                  if (name != null && name.isNotEmpty) {
                    try {
                      await ref.read(shoppingListsProvider.notifier).createList(name);
                      ref.invalidate(currentListIdProvider);
                    } on Exception catch (e, s) {
                      LoggerService.error(e, stackTrace: s, message: 'AiHomeScreen: erro ao criar lista');
                      if (messenger != null) {
                        messenger.showSnackBar(
                          SnackBar(content: Text('Erro ao criar lista: $e')),
                        );
                      }
                    }
                  }
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
    final listAsync = ref.watch(shoppingListsProvider);
    final listName = listAsync.valueOrNull
        ?.where((l) => l.id == listId)
        .firstOrNull
        ?.name;

    final itemsAsync = ref.watch(shoppingListItemsProvider(listId));
    final items = itemsAsync.valueOrNull ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(listName ?? 'Lista de Compras'),
        actions: [
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
          Padding(
            padding: EdgeInsets.only(top: _listExpanded ? 220 : 60),
            child: AiChatPanel(
              listId: listId,
              listName: listName,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: _CompactListCard(
              items: items,
              expanded: _listExpanded,
              onToggle: () => setState(() => _listExpanded = !_listExpanded),
            ),
          ),
        ],
      ),
    );
  }
}

class _CompactListCard extends StatelessWidget {
  const _CompactListCard({
    required this.items,
    required this.expanded,
    required this.onToggle,
  });

  final List<ShoppingItem> items;
  final bool expanded;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final purchased = items.where((i) => i.isPurchased).length;
    final total = items.length;

    return GestureDetector(
      onTap: onToggle,
      child: AnimatedContainer(
        duration: DurationTokens.fast,
        curve: Curves.easeOut,
        margin: const EdgeInsets.fromLTRB(Spacing.md, Spacing.sm, Spacing.md, 0),
        padding: const EdgeInsets.all(Spacing.sm),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(RadiusTokens.lg),
          border: Border.all(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(RadiusTokens.sm),
                  ),
                  child: Icon(
                    Icons.shopping_cart,
                    size: 16,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
                const SizedBox(width: Spacing.sm),
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
            // Expanded list
            AnimatedCrossFade(
              firstChild: const SizedBox.shrink(),
              secondChild: items.isEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(top: Spacing.sm),
                      child: Text(
                        'Nenhum item na lista',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    )
                  : ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 160),
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(top: Spacing.sm),
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          final item = items[index];
                          final isLast = index == items.length - 1;
                          return _CompactItemRow(
                            item: item,
                            showDivider: !isLast,
                          );
                        },
                      ),
                    ),
              crossFadeState: expanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: DurationTokens.fast,
            ),
          ],
        ),
      ),
    );
  }
}

class _CompactItemRow extends StatelessWidget {
  const _CompactItemRow({
    required this.item,
    this.showDivider = true,
  });

  final ShoppingItem item;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Icon(
              item.isPurchased
                  ? Icons.check_circle
                  : Icons.radio_button_unchecked,
              size: 16,
              color: item.isPurchased
                  ? theme.colorScheme.primary
                  : theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(width: Spacing.sm),
            Expanded(
              child: Text(
                item.name,
                style: theme.textTheme.bodySmall?.copyWith(
                  decoration: item.isPurchased
                      ? TextDecoration.lineThrough
                      : null,
                  color: item.isPurchased
                      ? theme.colorScheme.onSurfaceVariant
                      : theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              '${item.quantity} ${item.unit.label}',
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
        if (showDivider)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Divider(
              height: 1,
              color: theme.colorScheme.outlineVariant.withValues(alpha: 0.2),
            ),
          ),
      ],
    );
  }
}
