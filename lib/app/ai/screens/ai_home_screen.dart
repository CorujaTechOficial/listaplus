import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/chat_message.dart';
import 'package:shopping_list/models/suggested_reply.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/app/lists/widgets/app_bar_list_selector.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';
import 'package:shopping_list/app/ai/widgets/chat_history_drawer.dart';
import 'package:shopping_list/app/lists/widgets/empty_state.dart';
import 'package:shopping_list/app/lists/widgets/create_list_dialog.dart';
import 'package:shopping_list/app/lists/widgets/shopping_item_tile.dart';
import 'package:shopping_list/app/ai/providers/system_action_provider.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import 'package:shopping_list/core/providers/misc_providers.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shopping_list/app/lists/providers/share_provider.dart';
import 'package:shopping_list/app/shared/widgets/account_menu_sheet.dart';
import 'package:shopping_list/app/ai/widgets/capabilities_help_sheet.dart';
import 'package:shopping_list/app/recipes/screens/recipe_detail_screen.dart';

class AiHomeScreen extends ConsumerStatefulWidget {
  const AiHomeScreen({super.key});

  @override
  ConsumerState<AiHomeScreen> createState() => _AiHomeScreenState();
}

class _AiHomeScreenState extends ConsumerState<AiHomeScreen> {
  bool _listExpanded = false;

  @override
  void initState() {
    super.initState();
    // Listen to system actions from the AI agent
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _checkFirstLaunchWelcome();
        ref.listenManual(systemActionProvider, (previous, next) {
          if (next == null) {
            return;
          }
          _handleSystemAction(next);
        });
      }
    });
  }

  Future<void> _checkFirstLaunchWelcome() async {
    final prefs = await SharedPreferences.getInstance();
    final hasSeenWelcome = prefs.getBool('has_seen_ai_welcome') ?? false;
    if (hasSeenWelcome) {
      return;
    }

    final listId = await ref.read(currentListIdProvider.future);
    if (listId == null) {
      return;
    }

    // Marca como visto após obter um listId válido para evitar salvar com null
    await prefs.setBool('has_seen_ai_welcome', true);

    if (!mounted) {
      return;
    }

    final l10n = AppLocalizations.of(context)!;
    final sessionId =
        await ref.read(chatSessionsProvider(listId).notifier).startNewSession();

    if (!mounted) {
      return;
    }

    final welcomeMsg = ChatMessage(
      role: 'assistant',
      content: l10n.aiWelcomeContent,
      suggestedReplies: [
        SuggestedReply(
          label: l10n.aiWelcomeSuggestCreateList,
          prompt: l10n.aiWelcomeSuggestCreateListPrompt,
          icon: 'add_shopping_cart',
        ),
        SuggestedReply(
          label: l10n.aiWelcomeSuggestSave,
          prompt: l10n.aiWelcomeSuggestSavePrompt,
          icon: 'savings',
        ),
      ],
    );

    try {
      final service = ref.read(firestoreServiceProvider);
      if (service == null) {
        throw Exception('Usuário não autenticado');
      }
      await service.saveChatMessage(listId, welcomeMsg, sessionId: sessionId);
      // Invalida para carregar a mensagem na UI
      ref.invalidate(chatSessionProvider(listId, sessionId));
    } on Exception catch (e) {
      debugPrint('Erro ao enviar mensagem de boas-vindas: $e');
    }
  }

  void _showShareSheet(String listId) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    showModalBottomSheet<void>(
      context: context,
      builder:
          (context) => SafeArea(
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
                  const SizedBox(height: Spacing.md),
                  ListTile(
                    leading: const Icon(Icons.group_add),
                    title: Text(l10n.inviteToList),
                    subtitle: Text(l10n.shareRealtime),
                    onTap: () {
                      Navigator.pop(context);
                      _shareViaCode(listId);
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

  Future<void> _shareViaCode(String listId) async {
    final isPremium = await ref.read(premiumProvider.future);
    if (!isPremium) {
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
      final code = await ref.read(shareServiceProvider).createShareCode(listId);
      if (!mounted) {
        return;
      }
      await showDialog<void>(
        context: context,
        builder:
            (_) => AlertDialog(
              title: Text(AppLocalizations.of(context)!.shareListTitle),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(AppLocalizations.of(context)!.shareThisCode),
                  const SizedBox(height: Spacing.md),
                  SelectableText(
                    code,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      letterSpacing: 4,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(AppLocalizations.of(context)!.close),
                ),
              ],
            ),
      );
    } on Object catch (e) {
      debugPrint('Erro ao gerar código de compartilhamento: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.somethingWentWrong)),
        );
      }
    }
  }

  void _shareReferral() {
    final l10n = AppLocalizations.of(context)!;
    SharePlus.instance.share(
      ShareParams(
        text: l10n.shareReferralText('https://kipilist.com/invite'),
        subject: l10n.shareReferralSubject,
      ),
    );
  }

  void _handleSystemAction(SystemActionType action) {
    switch (action) {
      case SystemActionType.openPaywall:
        Navigator.push(context, fadeSlideRoute<void>(const PaywallScreen()));
      case SystemActionType.requestReview:
        ref.read(appReviewServiceProvider).requestReview();
      case SystemActionType.promptUpdate:
        ref.read(updateServiceProvider).checkForUpdates();
      case SystemActionType.shareReferral:
        _shareReferral();
    }
  }

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
      loading:
          () => const Scaffold(
            body: SafeArea(child: Center(child: CircularProgressIndicator())),
          ),
      error:
          (e, _) =>
              Scaffold(
                body: SafeArea(
                  child: Center(
                    child: Text(AppLocalizations.of(context)!.somethingWentWrong),
                  ),
                ),
              ),
    );
  }

  Widget _buildNoList() {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.aiAssistant),
        leading: IconButton(
          icon: const Icon(Icons.person_outline),
          onPressed: () => AccountMenuSheet.show(context),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(Spacing.xl),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  EmptyState(
                    assetPath: 'assets/images/kipi/kipi_welcome.png',
                    title: l10n.welcomeAiAssistant,
                    subtitle: l10n.createListToStartAi,
                  ),
                  const SizedBox(height: Spacing.lg),
                  FilledButton.tonalIcon(
                    onPressed: () {
                      showDialog<void>(
                        context: context,
                        builder:
                            (_) => CreateListDialog(
                              onCreate: (name) async {
                                await ref
                                    .read(shoppingListsProvider.notifier)
                                    .createList(name);
                              },
                            ),
                      );
                    },
                    icon: const Icon(Icons.add),
                    label: Text(l10n.createFirstList),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            const Expanded(child: AiChatPanel(listId: null, listName: null)),
          ],
        ),
      ),
    );
  }

  Widget _buildChat(String listId) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final listAsync = ref.watch(shoppingListsProvider);
    final listName =
        listAsync.value?.where((l) => l.id == listId).firstOrNull?.name;

    final itemsAsync = ref.watch(shoppingListItemsProvider(listId));
    final items = itemsAsync.value ?? [];
    final purchased = items.where((i) => i.isPurchased).length;
    final total = items.length;

    final totalValue = items.fold(
      // ignore: prefer_int_literals
      0.0,
      (sum, item) => sum + (item.estimatedPrice ?? 0) * item.quantity,
    );
    final currencyCode = resolveCurrencyCode(
      ref.watch(currencySettingProvider),
      Localizations.localeOf(context),
    );

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.person_outline),
          onPressed: () => AccountMenuSheet.show(context),
        ),
        title: AppBarListSelector(currentListId: listId),
        // Same chat essentials as the per-list ChatScreen: new-chat and history
        // sit in the bar in the same place; secondary modes (market mode,
        // invite) live in the overflow so the bar stays calm around the chat.
        actions: [
          IconButton(
            icon: const Icon(Icons.add_comment),
            tooltip: l10n.newChat,
            onPressed: () async {
              final notifier = ref.read(chatSessionsProvider(listId).notifier);
              notifier.createNewSession();
              if (!context.mounted) return;
              ScaffoldMessenger.of(context)
                ..clearSnackBars()
                ..showSnackBar(
                  SnackBar(
                    content: Text(l10n.newChatStarted),
                    behavior: SnackBarBehavior.floating,
                    duration: const Duration(seconds: 4),
                  ),
                );
            },
          ),
          Builder(
            builder:
                (ctx) => IconButton(
                  icon: const Icon(Icons.history),
                  tooltip: l10n.conversationHistoryTitle,
                  onPressed: () => Scaffold.of(ctx).openEndDrawer(),
                ),
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            onSelected: (value) {
              switch (value) {
                case 'market':
                  _openMarketSheet(
                    listId: listId,
                    items: items,
                    purchased: purchased,
                    total: total,
                    totalValue: totalValue,
                    currencyCode: currencyCode,
                  );
                case 'share':
                  _showShareSheet(listId);
                case 'capabilities':
                  if (context.mounted) {
                    unawaited(
                      CapabilitiesHelpSheet.show(
                        context,
                        onPromptSelected: (prompt) async {
                          var sessionId = ref.read(
                            activeChatSessionIdProvider(listId),
                          );
                          sessionId ??= await ref
                              .read(chatSessionsProvider(listId).notifier)
                              .startNewSession();
                          if (context.mounted) {
                            unawaited(
                              ref
                                  .read(
                                    chatSessionProvider(listId, sessionId)
                                        .notifier,
                                  )
                                  .sendMessage(prompt),
                            );
                          }
                        },
                      ),
                    );
                  }
              }
            },
            itemBuilder:
                (_) => [
                   PopupMenuItem<String>(
                    value: 'market',
                    child: Row(
                      children: [
                        const Icon(Icons.shopping_basket, size: 20),
                        const SizedBox(width: Spacing.sm),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(l10n.marketMode),
                              Text(
                                l10n.marketModeDescription,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurfaceVariant,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'share',
                    child: Row(
                      children: [
                        const Icon(Icons.share, size: 20),
                        const SizedBox(width: Spacing.sm),
                        Text(l10n.inviteToList),
                      ],
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'capabilities',
                    child: Row(
                      children: [
                        const Icon(Icons.auto_awesome_outlined, size: 20),
                        const SizedBox(width: Spacing.sm),
                        Text(l10n.aiCapabilitiesTitle),
                      ],
                    ),
                  ),
                ],
          ),
        ],
      ),

      endDrawer: ChatHistoryDrawer(listId: listId),
      body: SafeArea(
        // Chat is always the base surface — market mode opens over it as a
        // peekable sheet (see _openMarketSheet) instead of replacing it, so the
        // assistant is never hidden and there is one progress vocabulary.
        child: Column(
                  children: [
                    // The list-progress strip only communicates something once
                    // the list has items; on an empty first-run it is a 0% bar
                    // competing with the chat empty state, so hide it.
                    if (total > 0)
                      GestureDetector(
                        onTap:
                            () =>
                                setState(() => _listExpanded = !_listExpanded),
                        child: AnimatedContainer(
                          duration: DurationTokens.fast,
                          padding: const EdgeInsets.symmetric(
                            horizontal: Spacing.md,
                            vertical: Spacing.xs,
                          ),
                          decoration: BoxDecoration(
                            color:
                                _listExpanded
                                    ? theme.colorScheme.primaryContainer
                                        .withAlpha((0.3 * 255).toInt())
                                    : Colors.transparent,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_basket,
                                size: 16,
                                color: theme.colorScheme.primary,
                              ),
                              const SizedBox(width: Spacing.xs),
                              Text(
                                l10n.itemsPurchasedShort(purchased, total),
                                style: theme.textTheme.labelMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: theme.colorScheme.onSurface,
                                ),
                              ),
                              if (totalValue > 0) ...[
                                const SizedBox(width: Spacing.xs),
                                Text(
                                  formatCurrency(totalValue, currencyCode),
                                  style: theme.textTheme.labelSmall?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                              const Spacer(),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: 64,
                                    height: 3,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        RadiusTokens.bar,
                                      ),
                                      child: LinearProgressIndicator(
                                        value:
                                            total > 0 ? purchased / total : 0.0,
                                        backgroundColor: theme
                                            .colorScheme
                                            .primary
                                            .withAlpha((0.15 * 255).toInt()),
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                              theme.colorScheme.primary,
                                            ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: Spacing.xs),
                                  AnimatedRotation(
                                    turns: _listExpanded ? 0.5 : 0,
                                    duration: DurationTokens.fast,
                                    curve: Curves.easeInOutBack,
                                    child: Icon(
                                      Icons.expand_more,
                                      size: 20,
                                      color: theme.colorScheme.onSurfaceVariant,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    if (total > 0)
                      AnimatedSize(
                        duration: DurationTokens.normal,
                        curve: Curves.easeInOut,
                        alignment: Alignment.topCenter,
                        child:
                            _listExpanded
                                ? ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxHeight: 200,
                                  ),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: Spacing.xxs,
                                    ),
                                    itemCount: items.length,
                                    itemBuilder: (context, index) {
                                      final tile = ShoppingItemTile(
                                        listId: listId,
                                        item: items[index],
                                      );
                                      if (index >= 5) {
                                        return tile;
                                      }
                                      return tile.animate().fadeIn(
                                        duration: 150.ms,
                                        delay: (index * 30).ms,
                                      );
                                    },
                                  ),
                                )
                                : const SizedBox.shrink(),
                      ),
                    Expanded(
                      child: AiChatPanel(
                        listId: listId,
                        listName: listName,
                        onItemsAdded: () {
                          setState(() {
                            _listExpanded = true;
                          });
                        },
                        onNavigateToRecipe: (recipeId) {
                          Navigator.push(
                            context,
                            fadeSlideRoute<void>(
                              RecipeDetailScreen(recipeId: recipeId),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
      ),
    );
  }

  /// Market mode opens over the chat as a draggable sheet — the assistant stays
  /// mounted behind it. "Finish shopping" pops the sheet back to the chat.
  void _openMarketSheet({
    required String listId,
    required List<ShoppingItem> items,
    required int purchased,
    required int total,
    required double totalValue,
    required String currencyCode,
  }) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) {
        return DraggableScrollableSheet(
          initialChildSize: 0.75,
          minChildSize: 0.4,
          maxChildSize: 0.95,
          expand: false,
          builder: (context, scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(RadiusTokens.lg),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: Spacing.xs),
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(RadiusTokens.bar),
                    ),
                  ),
                  Expanded(
                    child: _ListHeroCard(
                      listId: listId,
                      items: items,
                      purchased: purchased,
                      total: total,
                      totalValue: totalValue,
                      currencyCode: currencyCode,
                      expanded: true,
                      isMarketMode: true,
                      onToggle: () => Navigator.pop(sheetContext),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class _ListHeroCard extends StatelessWidget {
  const _ListHeroCard({
    required this.listId,
    required this.items,
    required this.purchased,
    required this.total,
    required this.totalValue,
    required this.currencyCode,
    required this.expanded,
    required this.isMarketMode,
    required this.onToggle,
  });

  final String listId;
  final List<ShoppingItem> items;
  final int purchased;
  final int total;
  final double totalValue;
  final String currencyCode;
  final bool expanded;
  final bool isMarketMode;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final allPurchased = total > 0 && purchased == total;
    final progress = total > 0 ? purchased / total : 0.0;

    if (isMarketMode) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(Spacing.md),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerLow,
          border: Border(
            bottom: BorderSide(color: theme.colorScheme.outline.withAlpha(60)),
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.shopping_basket,
                    size: 24,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: Spacing.sm),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.marketMode,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                        Text(
                          l10n.itemsPurchasedCount(purchased, total),
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (allPurchased)
                    Icon(
                      Icons.check_circle,
                      color: AppSemanticColors.of(context).success,
                      size: 32,
                    ).animate().scale(
                      duration: 400.ms,
                      curve: Curves.easeOutBack,
                    ),
                ],
              ),
              const SizedBox(height: Spacing.sm),
              LinearProgressIndicator(
                value: progress,
                borderRadius: BorderRadius.circular(RadiusTokens.full),
                minHeight: 10,
                backgroundColor: theme.colorScheme.surfaceContainerHighest,
              ),
              if (expanded) ...[
                const SizedBox(height: Spacing.md),
                Expanded(
                  child:
                      items.isEmpty
                          ? Center(
                            child: Text(
                              l10n.noItemsInList,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          )
                          : ListView.builder(
                            padding: const EdgeInsets.symmetric(
                              vertical: Spacing.xs,
                            ),
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              return ShoppingItemTile(
                                listId: listId,
                                item: items[index],
                              );
                            },
                          ),
                ),
                if (allPurchased)
                  Padding(
                    padding: const EdgeInsets.only(top: Spacing.md),
                    child: FilledButton.icon(
                      onPressed: onToggle,
                      icon: const Icon(Icons.done_all),
                      label: Text(l10n.finishShopping),
                      style: FilledButton.styleFrom(
                        minimumSize: const Size(double.infinity, 54),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(RadiusTokens.md),
                        ),
                      ),
                    ),
                  ).animate().fadeIn(delay: 200.ms).slideY(begin: 0.2, end: 0),
              ],
            ],
          ),
        ),
      );
    }

    // Market mode is the only caller, so the card always takes the flat branch
    // above. The old gradient + elevation variant (a second, louder rendering of
    // the same progress data) was unreachable and duplicated the flat list
    // strip in _buildChat — removed to keep one calm progress vocabulary.
    return const SizedBox.shrink();
  }
}
