import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/themes/atom-one-dark.dart';
import 'package:flutter_highlighter/themes/atom-one-light.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:skeletonizer/skeletonizer.dart';
import '../../../utils/test_utils.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import '../../../models/chat_message.dart';
import 'package:shopping_list/domain/entities/suggested_reply.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/app/ai/agent/tools/agent_tools.dart';
import 'package:shopping_list/app/ai/widgets/animated_typing_dots.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import '../../../theme/tokens.dart';
import '../../../theme/colors.dart';
import '../../../theme/page_transitions.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import '../../../models/category_data.dart';
import '../../../models/unit.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import '../../../models/shopping_item.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import '../../../models/ai_config.dart';
import '../../../widgets/artifact_widgets/artifact_card_shell.dart';
import '../../../widgets/artifact_widgets/artifact_content_renderer.dart';
import 'package:shopping_list/app/lists/widgets/edit_item_dialog.dart';

class AiChatPanel extends ConsumerStatefulWidget {
  const AiChatPanel({
    super.key,
    this.listId,
    this.listName,
    this.compact = false,
    this.onOrganizeRequested,
    this.onItemsAdded,
    this.onNavigateToRecipe,
  });

  final String? listId;
  final String? listName;
  final bool compact;
  final VoidCallback? onOrganizeRequested;
  final VoidCallback? onItemsAdded;
  final void Function(String recipeId)? onNavigateToRecipe;

  @override
  ConsumerState<AiChatPanel> createState() => _AiChatPanelState();
}

class _AiChatPanelState extends ConsumerState<AiChatPanel> {
  final _textController = TextEditingController();
  final _scrollController = ScrollController();
  bool _isSending = false;
  bool _showScrollFAB = false;
  bool _shouldAutoScroll = true;
  int _prevMessageCount = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.hasClients) {
      final show = _scrollController.offset < _scrollController.position.maxScrollExtent - 200;
      if (show != _showScrollFAB) {
        setState(() => _showScrollFAB = show);
      }
      
      // Update auto-scroll preference
      final isNearBottom = _scrollController.offset > _scrollController.position.maxScrollExtent - 50;
      if (_shouldAutoScroll != isNearBottom) {
        _shouldAutoScroll = isNearBottom;
      }
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom({bool force = false}) {
    if (_scrollController.hasClients && (_shouldAutoScroll || force)) {
      final isStreaming = ref.read(chatStreamingProvider(widget.listId));
      if (isStreaming && !force) {
        // Use a smoother jump-like animation for streaming
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeOut,
        );
      } else {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: isStreaming ? 50 : 300),
          curve: Curves.easeOut,
        );
      }
    }
  }

  Future<void> _quickAddItem() async {
    final text = _textController.text.trim();
    final listId = widget.listId;
    if (text.isEmpty || listId == null) {
      return;
    }

    unawaited(HapticFeedback.mediumImpact());
    _textController.clear();

    try {
      await ref.read(shoppingListItemsProvider(listId).notifier).addItem(
        listId: listId,
        name: text,
        quantity: 1,
        categoryId: 'others',
        unit: Unit.un,
      );
      widget.onItemsAdded?.call();
    } on Exception catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
      }
    }
  }

  Future<void> _sendMessage() async {
    final text = _textController.text.trim();
    if (text.isEmpty || _isSending) {
      return;
    }

    final canSend = ref.read(aiUsageStateProvider.notifier).canSend();
    final isPremium = ref.read(premiumProvider).value ?? false;
    
    // Feedback háptico ao enviar (Item 22)
    unawaited(HapticFeedback.lightImpact());

    setState(() {
      _isSending = true;
      _shouldAutoScroll = true; // Force auto-scroll on new message
    });
    _textController.clear();

    try {
      var sessionId = ref.read(activeChatSessionIdProvider(widget.listId));
      sessionId ??= await ref.read(chatSessionsProvider(widget.listId).notifier).startNewSession();

      if (!canSend && !isPremium) {
        // Add user message first
        final userMessage = ChatMessage(role: 'user', content: text);
        await ref.read(chatSessionProvider(widget.listId, ref.read(activeChatSessionIdProvider(widget.listId))).notifier).addMessage(userMessage);

        // Trigger Dynamic Teaser Effect
        String teaserText = 'Para economizar nesta compra, você pode aproveitar as promoções sazonais de frutas cítricas, além de considerar a troca de marcas premium por marcas próprias do supermercado, que oferecem qualidade similar por um preço até 30% menor. Outra dica valiosa é de extrema importância para seu bolso e para a organização da sua despensa...';
        try {
          final aiService = ref.read(aiServiceProvider);
          final items = ref.read(shoppingListItemsProvider(widget.listId ?? ''));
          final itemsStr = items.value?.map((i) => i.name).join(', ') ?? '';
          final systemPrompt = 'Você é um assistente de compras de supermercado. O limite diário de uso gratuito do usuário foi atingido. Ele enviou uma mensagem pedindo ajuda. Você quer convencê-lo a assinar o plano Premium para continuar. Responda em no máximo 15 palavras, de forma muito instigante e curiosa, dando um spoiler/teaser muito valioso sobre como economizar ou organizar os itens dele ($itemsStr), mas corte a frase no final com reticências (...) para deixar o mistério de como fazer isso.';
          final response = await aiService.getChatCompletion(
            [ChatMessage(role: 'user', content: text)],
            systemPrompt: systemPrompt,
          );
          if (response.content.trim().isNotEmpty) {
            teaserText = response.content.trim();
            if (!teaserText.endsWith('...')) {
              teaserText = '$teaserText...';
            }
          }
        } on Exception catch (e) {
          debugPrint('Error generating dynamic teaser: $e');
        }

        await ref.read(chatSessionProvider(widget.listId, ref.read(activeChatSessionIdProvider(widget.listId))).notifier).addMessage(
          ChatMessage(
            role: 'assistant',
            content: teaserText,
            isTeaser: true,
          ),
        );
      } else {
        await ref.read(chatSessionProvider(widget.listId, ref.read(activeChatSessionIdProvider(widget.listId))).notifier).sendMessage(text);
        if (!isPremium) {
          await ref.read(aiUsageStateProvider.notifier).recordMessage();
        }
      }
      _scrollToBottom(force: true);
    } finally {
      if (mounted) {
        setState(() => _isSending = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    // Feedback háptico tátil para retenção e percepção de qualidade
    ref.listen(chatThinkingProvider(widget.listId), (prev, next) {
      if (next) {
        HapticFeedback.lightImpact();
      }
    });

    ref.listen(chatStreamingProvider(widget.listId), (prev, next) {
      if (prev == true && next == false) {
        HapticFeedback.mediumImpact();
      }
    });

    final isPremium = ref.watch(premiumProvider).value ?? false;
    final aiUsageAsync = ref.watch(aiUsageStateProvider);
    final canSend = isPremium || (aiUsageAsync.value?.isExhausted == false);

    final chatState = ref.watch(chatSessionProvider(widget.listId, ref.read(activeChatSessionIdProvider(widget.listId))));
    final allMessages = chatState.value ?? [];

    final itemsAsync = widget.listId != null
        ? ref.watch(shoppingListItemsProvider(widget.listId!))
        : const AsyncValue<List<ShoppingItem>>.data([]);
    final items = itemsAsync.value ?? [];

    final lastAssistantMsg = allMessages.where((m) => m.role == 'assistant').lastOrNull;
    final llmSuggestions = lastAssistantMsg?.suggestedReplies ?? [];
    final suggestionChips = llmSuggestions.isNotEmpty
        ? llmSuggestions
        : _getDynamicShortcuts(items, l10n, allMessages)
            .map((s) => SuggestedReply(label: s.label, prompt: s.prompt, icon: ''))
            .toList();
    final isStreaming = ref.watch<bool>(chatStreamingProvider(widget.listId));
    final isThinking = ref.watch<bool>(chatThinkingProvider(widget.listId));
    final activityDescription = ref.watch<String?>(chatActivityProvider(widget.listId));

    return Stack(
      children: [
        Column(
          children: [
            Expanded(
          child: Stack(
            children: [
              chatState.when(
                data: (allMessages) {
                  final messages = allMessages;

                  if (allMessages.isEmpty) {
                    return Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 16),
                            SizedBox(
                              width: 64,
                              height: 64,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  _AiGlowOrb(color: theme.colorScheme.primary),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              l10n.howCanIHelp,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24),
                              child: Text(
                                l10n.chatSubtitleShort,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ),
                            if (suggestionChips.isNotEmpty) ...[
                              const SizedBox(height: 24),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  children: suggestionChips.take(2).map((suggestion) => Card(
                                    margin: const EdgeInsets.only(bottom: 8),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      side: BorderSide(color: theme.colorScheme.outlineVariant.withAlpha((0.4 * 255).toInt())),
                                    ),
                                    color: theme.colorScheme.surfaceContainerLow,
                                    child: InkWell(
                                      onTap: !_isSending ? () {
                                        _textController.text = suggestion.prompt;
                                        _sendMessage();
                                      } : null,
                                      borderRadius: BorderRadius.circular(12),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                        child: Row(
                                          children: [
                                            Icon(_iconFromName(suggestion.icon), color: theme.colorScheme.primary, size: 20),
                                            const SizedBox(width: 12),
                                            Expanded(
                                              child: Text(
                                                suggestion.label,
                                                style: theme.textTheme.bodyMedium?.copyWith(
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Icon(Icons.arrow_forward_ios, size: 12, color: theme.colorScheme.onSurfaceVariant.withAlpha((0.5 * 255).toInt())),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )).toList(),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    );
                  }

                  if (messages.isNotEmpty && (_isSending || isStreaming || messages.length != _prevMessageCount)) {
                    _prevMessageCount = messages.length;
                    Future.microtask(() => _scrollToBottom());
                  }

                  return ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                    itemCount: messages.length + 1 + (isThinking && (messages.isEmpty || messages.last.role != 'assistant') ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Column(
                          children: [
                            if (allMessages.length > 20) ...[
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.amber.withAlpha((0.15 * 255).toInt()),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.amber.withAlpha((0.4 * 255).toInt()),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.warning_amber_rounded,
                                      color: Colors.amber,
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Text(
                                        l10n.longHistoryWarning,
                                        style: theme.textTheme.bodySmall?.copyWith(
                                          color: theme.colorScheme.onSurface,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ],
                        );
                      }
                      
                      final msgIndex = index - 1;
                      if (msgIndex < messages.length) {
                        final message = messages[msgIndex];
                        final isLastMessage = msgIndex == messages.length - 1;
                        final nextMessage = msgIndex < messages.length - 1 ? messages[msgIndex + 1] : null;
                        
                        // Grouping logic: identifies the LAST message in a group to show the avatar and tail
                        final isLastInGroup = nextMessage == null || 
                                              nextMessage.role != message.role || 
                                              nextMessage.senderUid != message.senderUid;
                        
                        // Identifies the FIRST message in a group to show the sender name
                        final prevMessage = msgIndex > 0 ? messages[msgIndex - 1] : null;
                        final isFirstInGroup = prevMessage == null || 
                                              prevMessage.role != message.role || 
                                              prevMessage.senderUid != message.senderUid;

                        return Column(
                          crossAxisAlignment: message.role == 'user' ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                          children: [
                            if (isFirstInGroup)
                              _buildSenderName(message, theme, isFirstInGroup),
                            _GroupChatBubble(
                              message: message,
                              listId: widget.listId,
                              isLastInGroup: isLastInGroup,
                              isLastMessage: isLastMessage,
                              onOrganizeRequested: widget.onOrganizeRequested,
                              onItemsAdded: widget.onItemsAdded,
                              onNavigateToRecipe: widget.onNavigateToRecipe,
                            ).animate().fadeIn(
                              duration: DurationTokens.fast,
                            ).slideX(
                              begin: message.role == 'user' ? 0.3 : -0.3,
                              end: 0,
                              duration: DurationTokens.fast,
                              curve: Curves.easeOut,
                            ),
                          ],
                        );
                      } else {
                        return TypingIndicator(
                          isThinking: isThinking,
                          activityDescription: activityDescription,
                          fallbackText: l10n.loading,
                        );
                      }
                    },
                  );
                },
                loading: () => _buildSkeleton(theme, l10n),
              error: (e, _) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.error_outline, size: 48, color: theme.colorScheme.error),
                      const SizedBox(height: 16),
                      Text(
                        l10n.errorLoadingChat,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        l10n.errorLoadingChatSubtitle,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
              ),
              if (_showScrollFAB)
                Positioned(
                  right: 16,
                  bottom: 16,
                  child: FloatingActionButton.small(
                    heroTag: null,
                    onPressed: () => _scrollToBottom(force: true),
                    backgroundColor: theme.colorScheme.primaryContainer,
                    foregroundColor: theme.colorScheme.onPrimaryContainer,
                    child: const Icon(Icons.arrow_downward),
                  ).animate().scale().fadeIn(),
                ),
            ],
          ),
        ),
            if (!canSend && !isPremium)
              _buildPaywallBanner(context, l10n, theme),
            _buildInput(context, l10n, theme, canSend, suggestionChips, isThinking),
          ],
        ),
      ],
    );
  }

  Widget _buildSenderName(ChatMessage message, ThemeData theme, bool isFirstInGroup) {
    final isUser = message.role == 'user';
    final isGroup = message.senderName != null;
    
    if (isUser) {
      if (isGroup) {
        return Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 2, right: 40),
          child: Text(
            message.senderName ?? '',
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 10,
              color: _getSenderColor(message.senderUid ?? '', theme),
            ),
          ),
        );
      }
      return const SizedBox.shrink();
    }

    final aiConfig = ref.watch(aiConfigStateProvider).value ?? const AiConfig(name: 'IA', iconKey: 'smart_toy');
    return Padding(
      padding: const EdgeInsets.only(bottom: 2, top: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            isGroup ? (message.senderName ?? aiConfig.name) : aiConfig.name,
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 10,
              color: theme.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkeleton(ThemeData theme, AppLocalizations l10n) {
    return Skeletonizer(
      child: Column(
        children: [
          if (!widget.compact) ...[
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: theme.colorScheme.primary.withAlpha((0.1 * 255).toInt()),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          height: 16,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 4),
                        Container(
                          width: 80,
                          height: 12,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 80),
              itemCount: 4,
              itemBuilder: (context, index) {
                final isUser = index % 2 == 0;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Align(
                    alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (!isUser) ...[
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: theme.colorScheme.primary.withAlpha((0.1 * 255).toInt()),
                          ),
                          const SizedBox(width: 8),
                        ],
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                          decoration: BoxDecoration(
                            color: isUser
                                ? theme.colorScheme.primaryContainer
                                : theme.colorScheme.surfaceContainerHigh,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          child: Text(
                            isUser
                                ? 'Pergunta curta do usuário para a IA.'
                                : 'Esta é uma resposta mais longa e simulada do assistente de inteligência artificial da lista plus, detalhando dicas de economia.',
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        if (isUser) ...[
                          const SizedBox(width: 8),
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: theme.colorScheme.secondary.withAlpha((0.1 * 255).toInt()),
                          ),
                        ],
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaywallBanner(BuildContext context, AppLocalizations l10n, ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(Spacing.md),
      margin: const EdgeInsets.symmetric(horizontal: Spacing.sm, vertical: Spacing.xs),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(RadiusTokens.md),
        border: Border.all(color: theme.colorScheme.outlineVariant),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.bolt, color: Colors.amber, size: 20),
              const SizedBox(width: Spacing.sm),
              Expanded(
                child: Text(
                  'Sua energia de IA acabou!',
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: Spacing.xs),
          Text(
            'Assista a um vídeo rápido para ganhar +10 energias ou torne-se Premium para usar sem limites.',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: Spacing.md),
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () async {
                    unawaited(HapticFeedback.lightImpact());
                    final adService = ref.read(adServiceProvider);
                    final success = await adService.showRewardedAd();
                    if (success) {
                      await ref.read(aiUsageStateProvider.notifier).recharge();
                    }
                  },
                  icon: const Icon(Icons.play_circle_outline, size: 18),
                  label: const Text('Recarregar'),
                  style: OutlinedButton.styleFrom(
                    visualDensity: VisualDensity.compact,
                    foregroundColor: theme.colorScheme.primary,
                    side: BorderSide(color: theme.colorScheme.primary),
                  ),
                ),
              ),
              const SizedBox(width: Spacing.sm),
              Expanded(
                child: FilledButton.icon(
                  onPressed: () {
                    unawaited(HapticFeedback.mediumImpact());
                    Navigator.push(context, fadeSlideRoute<void>(const PaywallScreen()));
                  },
                  icon: const Icon(Icons.workspace_premium, size: 18),
                  label: const Text('Seja Pro'),
                  style: FilledButton.styleFrom(
                    visualDensity: VisualDensity.compact,
                    backgroundColor: Colors.amber.shade700,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ).animate().fadeIn(duration: 400.ms).slideY(begin: 0.1, end: 0);
  }

  Widget _buildInput(BuildContext context, AppLocalizations l10n, ThemeData theme, bool canSend, List<SuggestedReply> suggestions, bool isThinking) {
    final hasSuggestions = suggestions.isNotEmpty && !isThinking && !_isSending;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (hasSuggestions)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: suggestions.take(4).map((suggestion) => Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: _SuggestionChip(
                    label: suggestion.label,
                    icon: _iconFromName(suggestion.icon),
                    onTap: !_isSending ? () {
                      _textController.text = suggestion.prompt;
                      _sendMessage();
                    } : null,
                  ),
                )).toList(),
              ),
            ),
          ),
        Container(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 16),
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: ValueListenableBuilder<TextEditingValue>(
                    valueListenable: _textController,
                    builder: (context, value, child) {
                      final charCount = value.text.length;
                      return Container(
                        decoration: BoxDecoration(
                          color: theme.colorScheme.surface,
                          borderRadius: BorderRadius.circular(28),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withAlpha((0.08 * 255).toInt()),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: TextField(
                          controller: _textController,
                          minLines: 1,
                          maxLines: 5,
                          style: theme.textTheme.bodyMedium,
                          decoration: InputDecoration(
                            hintText: l10n.chatHint,
                            hintStyle: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant.withAlpha((0.5 * 255).toInt()),
                            ),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            counterText: charCount > 300 ? '$charCount/1000' : null,
                            suffixIcon: widget.listId != null ? IconButton(
                              icon: Icon(
                                Icons.add_circle_outline,
                                color: theme.colorScheme.primary.withAlpha((0.7 * 255).toInt()),
                                size: 22,
                              ),
                              onPressed: !_isSending ? _quickAddItem : null,
                              tooltip: l10n.addDirectToList,
                            ) : null,
                          ),
                          onSubmitted: !_isSending ? (_) => _sendMessage() : null,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 10),
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: _textController,
                  builder: (context, value, child) {
                    final hasText = value.text.trim().isNotEmpty;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Container(
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: [
                            BoxShadow(
                              color: theme.colorScheme.primary.withAlpha((0.3 * 255).toInt()),
                              blurRadius: 8,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: IconButton(
                          key: const ValueKey('chat_send_button'),
                          onPressed: _isSending
                              ? () => ref.read(chatSessionProvider(widget.listId, ref.read(activeChatSessionIdProvider(widget.listId))).notifier).cancelRequest()
                              : (hasText ? _sendMessage : null),
                          icon: _isSending
                              ? const Icon(Icons.stop_rounded, size: 20)
                              : const Icon(Icons.send_rounded, size: 20),
                          color: theme.colorScheme.onPrimary,
                          padding: const EdgeInsets.all(12),
                          constraints: const BoxConstraints(
                            minWidth: 48,
                            minHeight: 48,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// Energy bar replaced _LowCreditsBanner

// _HeaderRow removed — energy bar and list info moved to AppBar in AiHomeScreen

class _SuggestionChip extends StatelessWidget {
  const _SuggestionChip({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ActionChip(
      avatar: Icon(icon, size: 16, color: onTap != null ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant),
      label: Text(label, style: theme.textTheme.labelMedium),
      onPressed: onTap != null ? () {
        unawaited(HapticFeedback.lightImpact());
        onTap!();
      } : null,
      backgroundColor: onTap != null
          ? theme.colorScheme.primaryContainer.withAlpha((0.3 * 255).toInt())
          : theme.colorScheme.surfaceContainerHighest.withAlpha((0.3 * 255).toInt()),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.full)),
    );
  }
}

class _GroupChatBubble extends ConsumerStatefulWidget {
  const _GroupChatBubble({
    required this.message,
    this.listId,
    this.isLastInGroup = true,
    this.isLastMessage = false,
    this.onOrganizeRequested,
    this.onItemsAdded,
    this.onNavigateToRecipe,
  });

  final ChatMessage message;
  final String? listId;
  final bool isLastInGroup;
  final bool isLastMessage;
  final VoidCallback? onOrganizeRequested;
  final VoidCallback? onItemsAdded;
  final void Function(String recipeId)? onNavigateToRecipe;

  @override
  ConsumerState<_GroupChatBubble> createState() => _GroupChatBubbleState();
}

class _GroupChatBubbleState extends ConsumerState<_GroupChatBubble> {
  int _revealedChars = 0;
  String _lastContent = '';
  Timer? _typeTimer;

  @override
  void dispose() {
    _typeTimer?.cancel();
    super.dispose();
  }

  void _revealAll(String fullContent) {
    _typeTimer?.cancel();
    final charCount = fullContent.characters.length;
    if (_revealedChars < charCount) {
      setState(() => _revealedChars = charCount);
    }
  }

  void _copyToClipboard(BuildContext context) {
    Clipboard.setData(ClipboardData(text: widget.message.content));
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(l10n.copiedToClipboard),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _updateTyping(String fullContent) {
    final charCount = fullContent.characters.length;
    if (charCount <= _revealedChars) {
      return;
    }
    _typeTimer?.cancel();
    _typeTimer = Timer.periodic(const Duration(milliseconds: 16), (timer) {
      if (!mounted || _revealedChars >= charCount) {
        timer.cancel();
        return;
      }
      setState(() {
        _revealedChars = (_revealedChars + 5).clamp(0, charCount);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final isUser = widget.message.role == 'user';
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final actions = widget.message.actions;
    final timeStr = '${widget.message.timestamp.hour.toString().padLeft(2, '0')}:${widget.message.timestamp.minute.toString().padLeft(2, '0')}';
    final isStreaming = ref.watch(chatStreamingProvider(widget.listId));
    final isThinking = ref.watch(chatThinkingProvider(widget.listId));
    final streamingExtra = ref.watch(chatStreamingTextProvider(widget.listId));
    final showStreamingContent = widget.isLastMessage && isStreaming && !isUser && streamingExtra != null;
    final rawContent = showStreamingContent ? streamingExtra : widget.message.content;

    final items = widget.listId != null
        ? ref.watch(shoppingListItemsProvider(widget.listId!)).value ?? []
        : <ShoppingItem>[];

    final effectiveContent = showStreamingContent
        ? rawContent.characters.take(_revealedChars).toString()
        : rawContent;

    if (showStreamingContent && rawContent != _lastContent) {
      _lastContent = rawContent;
      final charCount = rawContent.characters.length;
      _revealedChars = _revealedChars.clamp(0, charCount).toInt();
      if (_revealedChars < charCount) {
        _updateTyping(rawContent);
      }
    }
    if (!showStreamingContent && _lastContent.isNotEmpty) {
      final charCount = _lastContent.characters.length;
      if (_revealedChars < charCount) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) {
            _revealAll(widget.message.content);
          }
        });
      }
      _lastContent = '';
      _typeTimer?.cancel();
    }

    return Padding(
      padding: EdgeInsets.only(
        bottom: widget.isLastInGroup ? 12 : 2,
      ),
      child: Column(
        crossAxisAlignment: isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: widget.message.artifact != null
                      ? ArtifactCardShell(
                          artifact: widget.message.artifact!,
                          listId: widget.listId,
                          child: ArtifactContentRenderer(
                            artifactId: widget.message.artifact!.id,
                          ),
                        )
                          : GestureDetector(
                          onLongPress: () {
                            unawaited(HapticFeedback.mediumImpact());
                            _copyToClipboard(context);
                          },
                          onDoubleTap: () {
                            unawaited(HapticFeedback.mediumImpact());
                            ref.read(chatSessionProvider(widget.listId, ref.read(activeChatSessionIdProvider(widget.listId))).notifier).setFeedback(
                              widget.message.id, 
                              widget.message.feedback == 1 ? null : 1,
                            );
                          },
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                    if (widget.message.executionSteps != null && widget.message.executionSteps!.isNotEmpty) ...[
                                      _AgentActionStepsList(
                                        messageId: widget.message.id,
                                        steps: widget.message.executionSteps!,
                                        listId: widget.listId,
                                      ),
                                      const SizedBox(height: 8),
                                    ],
                                    if (widget.message.isTeaser)
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          ShaderMask(
                                            shaderCallback: (rect) {
                                              return LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [Colors.black, Colors.black.withAlpha((0 * 255).toInt())],
                                                stops: const [0.3, 0.7],
                                              ).createShader(rect);
                                            },
                                            blendMode: BlendMode.dstIn,
                                            child: _buildMarkdownContent(
                                              context,
                                              effectiveContent,
                                              isUser,
                                              theme,
                                              widget.message.isError,
                                              items,
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            child: FilledButton.icon(
                                              onPressed: () {
                                                unawaited(HapticFeedback.lightImpact());
                                                Navigator.push(context, fadeSlideRoute<void>(const PaywallScreen()));
                                              },
                                              icon: const Icon(Icons.workspace_premium, size: 14),
                                              label: Text(l10n.unlockFullResponse, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
                                              style: FilledButton.styleFrom(
                                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                                                minimumSize: const Size(0, 32),
                                                backgroundColor: AppColors.premiumAmber,
                                                foregroundColor: Colors.black,
                                              ),
                                            )
                                                .animate(
                                                  onPlay: (controller) {
                                                    if (!isTestMode) {
                                                      controller.repeat(reverse: true);
                                                    }
                                                  },
                                                )
                                                .scale(
                                                  duration: 1.seconds,
                                                  begin: const Offset(1, 1),
                                                  end: const Offset(1.05, 1.05),
                                                )
                                                .animate(
                                                  onPlay: (controller) {
                                                    if (!isTestMode) {
                                                      controller.repeat();
                                                    }
                                                  },
                                                )
                                                .shimmer(duration: 2.seconds),
                                          ),
                                        ],
                                      )
                                    else if (widget.message.content.isEmpty && !showStreamingContent && widget.isLastMessage && isThinking)
                                       Padding(
                                         padding: const EdgeInsets.symmetric(vertical: 4),
                                         child: Row(
                                           mainAxisSize: MainAxisSize.min,
                                           children: [
                                             RepaintBoundary(child: _AiGlowOrb(color: theme.colorScheme.primary)),
                                             const SizedBox(width: 8),
                                             Text(
                                               ref.watch(chatActivityProvider(widget.listId)) ?? l10n.loading,
                                               style: theme.textTheme.labelSmall?.copyWith(
                                                 color: theme.colorScheme.primary,
                                                 fontWeight: FontWeight.w600,
                                               ),
                                             ),
                                           ],
                                         ),
                                       )
                                     else
                                        AnimatedOpacity(
                                          opacity: showStreamingContent || widget.message.content.isNotEmpty ? 1.0 : 0.0,
                                          duration: const Duration(milliseconds: 300),
                                          child: isUser
                                              ? Container(
                                                  constraints: BoxConstraints(
                                                    maxWidth: MediaQuery.of(context).size.width * 0.8,
                                                  ),
                                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                                                   decoration: BoxDecoration(
                                                     color: theme.colorScheme.primary.withAlpha((0.82 * 255).toInt()),
                                                     borderRadius: BorderRadius.circular(20),
                                                   ),
                                                  child: _buildMarkdownContent(
                                                    context,
                                                    showStreamingContent ? '$effectiveContent ▊' : effectiveContent,
                                                    isUser,
                                                    theme,
                                                    widget.message.isError,
                                                    items,
                                                    isStreaming: showStreamingContent,
                                                  ),
                                                )
                                              : _buildMarkdownContent(
                                                  context,
                                                  showStreamingContent ? '$effectiveContent ▊' : effectiveContent,
                                                  isUser,
                                                  theme,
                                                  widget.message.isError,
                                                  items,
                                                  isStreaming: showStreamingContent,
                                                ),
                                        ),
                                    if (!isUser && widget.message.isError) ...[
                                      const SizedBox(height: 8),
                                      Text(
                                        l10n.errorOscillation,
                                        style: theme.textTheme.bodySmall?.copyWith(
                                          color: theme.colorScheme.onErrorContainer.withAlpha((0.8 * 255).toInt()),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      FilledButton.icon(
                                        onPressed: () {
                                          unawaited(HapticFeedback.lightImpact());
                                          ref.read(chatSessionProvider(widget.listId, ref.read(activeChatSessionIdProvider(widget.listId))).notifier).retryMessage();
                                        },
                                        icon: const Icon(Icons.refresh, size: 16),
                                        label: Text(l10n.retry),
                                        style: FilledButton.styleFrom(
                                          backgroundColor: theme.colorScheme.error,
                                          foregroundColor: theme.colorScheme.onError,
                                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                          minimumSize: const Size(0, 40),
                                          textStyle: theme.textTheme.labelLarge?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                    const SizedBox(height: 4),
                                    if (actions != null && !isUser) ...[
                                      const SizedBox(height: 6),
                                      if (actions.containsKey('add_items'))
                                        Padding(
                                          padding: const EdgeInsets.only(top: 2),
                                          child: _ActionButton(
                                            isFilled: true,
                                            onPressed: () async {
                                              unawaited(HapticFeedback.lightImpact());
                                              await ref.read(chatSessionProvider(widget.listId, ref.read(activeChatSessionIdProvider(widget.listId))).notifier).executeAction(widget.message.id, 'add_items');
                                              widget.onItemsAdded?.call();
                                              if (context.mounted) {
                                                final localizations = AppLocalizations.of(context)!;
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                  SnackBar(
                                                    content: Text(localizations.itemsAddedSuccess),
                                                    action: SnackBarAction(
                                                      label: localizations.viewList,
                                                      onPressed: () {
                                                        if (Navigator.of(context).canPop()) {
                                                          Navigator.of(context).pop();
                                                        } else {
                                                          widget.onItemsAdded?.call();
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                );
                                              }
                                            },
                                            icon: Icons.add_shopping_cart,
                                            label: l10n.addAllToList,
                                          ),
                                        ),
                                      if (actions.containsKey('organize'))
                                        Padding(
                                          padding: const EdgeInsets.only(top: 2),
                                          child: _ActionButton(
                                            isFilled: false,
                                            onPressed: () {
                                              unawaited(HapticFeedback.lightImpact());
                                              if (widget.onOrganizeRequested != null) {
                                                Navigator.pop(context);
                                                widget.onOrganizeRequested!();
                                              } else {
                                                ref.read(chatSessionProvider(widget.listId, ref.read(activeChatSessionIdProvider(widget.listId))).notifier).executeAction(widget.message.id, 'organize');
                                              }
                                            },
                                            icon: Icons.category,
                                            label: l10n.organizeByAisles,
                                          ),
                                        ),
                                      if (actions.containsKey('view_recipe'))
                                        Padding(
                                          padding: const EdgeInsets.only(top: 2),
                                          child: _ActionButton(
                                            isFilled: true,
                                            onPressed: () {
                                              unawaited(HapticFeedback.lightImpact());
                                              final recipeId = actions['view_recipe'] as String?;
                                              if (recipeId != null && widget.onNavigateToRecipe != null) {
                                                widget.onNavigateToRecipe!(recipeId);
                                              }
                                            },
                                            icon: Icons.restaurant,
                                            label: l10n.viewRecipe,
                                          ),
                                        ),
                                    ],
                              ],
                          ),
                          ),
              ),
              if (isUser) ...[
                const SizedBox(width: 8),
              ],
          ],
          ),
          if (!isUser && !widget.message.isError && !widget.message.isTeaser && widget.message.content.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(
                top: 4,
                bottom: 4,
              ),
              child: Row(
                children: [
                  Text(
                    timeStr,
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontSize: 9,
                      color: theme.colorScheme.onSurfaceVariant.withAlpha((0.5 * 255).toInt()),
                    ),
                  ),
                  const SizedBox(width: 12),
                  _FeedbackButton(
                    icon: Icons.copy_rounded,
                    isSelected: false,
                    onTap: () => _copyToClipboard(context),
                  ),
                  const SizedBox(width: 8),
                  _FeedbackButton(
                    icon: widget.message.feedback == 1 ? Icons.thumb_up : Icons.thumb_up_outlined,
                    isSelected: widget.message.feedback == 1,
                    onTap: () {
                      unawaited(HapticFeedback.lightImpact());
                      ref.read(chatSessionProvider(widget.listId, ref.read(activeChatSessionIdProvider(widget.listId))).notifier).setFeedback(
                        widget.message.id,
                        widget.message.feedback == 1 ? null : 1,
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  _FeedbackButton(
                    icon: widget.message.feedback == -1 ? Icons.thumb_down : Icons.thumb_down_outlined,
                    isSelected: widget.message.feedback == -1,
                    onTap: () {
                      unawaited(HapticFeedback.lightImpact());
                      ref.read(chatSessionProvider(widget.listId, ref.read(activeChatSessionIdProvider(widget.listId))).notifier).setFeedback(
                        widget.message.id,
                        widget.message.feedback == -1 ? null : -1,
                      );
                    },
                  ),
                  if (widget.isLastMessage && !isStreaming) ...[
                    const SizedBox(width: 16),
                    TextButton.icon(
                      onPressed: () {
                        unawaited(HapticFeedback.mediumImpact());
                        ref.read(chatSessionProvider(widget.listId, ref.read(activeChatSessionIdProvider(widget.listId))).notifier).regenerate(widget.message.id);
                      },
                      icon: const Icon(Icons.refresh, size: 14),
                      label: Text(l10n.regenerate, style: const TextStyle(fontSize: 10)),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        minimumSize: const Size(0, 24),
                        visualDensity: VisualDensity.compact,
                        foregroundColor: theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ],
              ),
            ),
        ],
      ),
    );
  }

  void _showItemOptions(BuildContext context, ShoppingItem item) {
    final l10n = AppLocalizations.of(context)!;
    unawaited(HapticFeedback.mediumImpact());
    showDialog<void>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(item.name),
        content: Text(l10n.whatToDoWithItem),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              if (widget.listId != null) {
                showDialog<void>(
                  context: context,
                  builder: (_) => EditItemDialog(listId: widget.listId!, item: item),
                );
              }
            },
            child: Text(l10n.viewDetails),
          ),
        ],
      ),
    );
  }

  Widget _buildMarkdownContent(
    BuildContext context, 
    String content, 
    bool isUser, 
    ThemeData theme, 
    bool isError,
    List<ShoppingItem> items,
    {bool isStreaming = false}
  ) {
    final baseStyle = MarkdownStyleSheet.fromTheme(theme);

    if (isUser) {
      final userStyle = baseStyle.copyWith(
        a: TextStyle(color: theme.colorScheme.onPrimary.withAlpha((0.9 * 255).toInt()), decoration: TextDecoration.underline),
        p: TextStyle(color: theme.colorScheme.onPrimary, height: 1.5, fontSize: 15),
        code: TextStyle(
          fontFamily: 'monospace',
          fontSize: 13,
          color: theme.colorScheme.onPrimary,
          backgroundColor: theme.colorScheme.onPrimary.withAlpha((0.15 * 255).toInt()),
        ),
        h1: TextStyle(color: theme.colorScheme.onPrimary, fontWeight: FontWeight.bold, fontSize: 22, height: 1.6),
        h2: TextStyle(color: theme.colorScheme.onPrimary, fontWeight: FontWeight.bold, fontSize: 20, height: 1.5),
        h3: TextStyle(color: theme.colorScheme.onPrimary, fontWeight: FontWeight.w700, fontSize: 18, height: 1.4),
        em: TextStyle(fontStyle: FontStyle.italic, color: theme.colorScheme.onPrimary.withAlpha((0.9 * 255).toInt())),
        strong: TextStyle(fontWeight: FontWeight.bold, color: theme.colorScheme.onPrimary),
        listBullet: TextStyle(color: theme.colorScheme.onPrimary),
        pPadding: const EdgeInsets.only(bottom: 8),
      );
      return MarkdownBody(
        data: content,
        styleSheet: userStyle,
        builders: {
          'code': CodeBlockBuilder(theme: theme),
          'strong': ItemLinkBuilder(
            theme: theme,
            items: items,
            onItemTap: (item) => _showItemOptions(context, item),
          ),
        },
        onTapLink: (text, href, title) async {
          if (href != null) {
            final uri = Uri.parse(href);
            if (await canLaunchUrl(uri)) {
              unawaited(launchUrl(uri, mode: LaunchMode.externalApplication));
            }
          }
        },
      );
    }

    final aiStyle = baseStyle.copyWith(
      p: (isError ? TextStyle(color: theme.colorScheme.error) : theme.textTheme.bodyLarge)?.copyWith(
        height: 1.6,
        fontSize: 15,
        color: theme.colorScheme.onSurface,
      ),
      h1: TextStyle(color: theme.colorScheme.primary, fontWeight: FontWeight.bold, fontSize: 22, height: 1.6),
      h2: TextStyle(color: theme.colorScheme.primary, fontWeight: FontWeight.bold, fontSize: 20, height: 1.5),
      h3: TextStyle(color: theme.colorScheme.primary, fontWeight: FontWeight.w700, fontSize: 18, height: 1.4),
      code: TextStyle(
        fontFamily: 'monospace',
        fontSize: 13,
        color: theme.colorScheme.primary,
        backgroundColor: theme.colorScheme.primary.withAlpha((0.08 * 255).toInt()),
      ),
      codeblockDecoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withAlpha((0.5 * 255).toInt()),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.colorScheme.outlineVariant.withAlpha((0.3 * 255).toInt())),
      ),
      blockquoteDecoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withAlpha((0.3 * 255).toInt()),
        borderRadius: BorderRadius.circular(8),
        border: Border(left: BorderSide(color: theme.colorScheme.primary, width: 4)),
      ),
      listBullet: TextStyle(color: theme.colorScheme.primary, fontWeight: FontWeight.bold),
      pPadding: const EdgeInsets.only(bottom: 12),
      blockSpacing: 12,
    );
    return MarkdownBody(
      data: content,
      styleSheet: aiStyle,
      builders: {
        'code': CodeBlockBuilder(theme: theme),
        'strong': ItemLinkBuilder(
          theme: theme,
          items: items,
          onItemTap: (item) => _showItemOptions(context, item),
        ),
      },
      onTapLink: (text, href, title) async {
        if (href != null) {
          final uri = Uri.parse(href);
          if (await canLaunchUrl(uri)) {
            unawaited(launchUrl(uri, mode: LaunchMode.externalApplication));
          }
        }
      },
    );
  }
}

Color _getSenderColor(String uid, ThemeData theme) {
  final hash = uid.hashCode.abs();
  final colors = [
    theme.colorScheme.primary,
    theme.colorScheme.secondary,
    theme.colorScheme.tertiary,
    const Color(0xFFE91E63),
    const Color(0xFF9C27B0),
    const Color(0xFF00BCD4),
    const Color(0xFFFF9800),
  ];
  return colors[hash % colors.length];
}

class ItemLinkBuilder extends MarkdownElementBuilder {
  ItemLinkBuilder({
    required this.theme,
    required this.items,
    required this.onItemTap,
  });

  final ThemeData theme;
  final List<ShoppingItem> items;
  final void Function(ShoppingItem) onItemTap;

  @override
  Widget? visitElementAfter(md.Element element, TextStyle? preferredStyle) {
    final text = element.textContent;
    final item = items.where((i) => i.name.toLowerCase() == text.toLowerCase()).firstOrNull;

    if (item != null) {
      return GestureDetector(
        onTap: () => onItemTap(item),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withAlpha((0.1 * 255).toInt()),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: theme.colorScheme.primary.withAlpha((0.2 * 255).toInt())),
          ),
          child: Text(
            text,
            style: preferredStyle?.copyWith(
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      );
    }
    return null;
  }
}

class CodeBlockBuilder extends MarkdownElementBuilder {
  CodeBlockBuilder({required this.theme});

  final ThemeData theme;

  @override
  Widget? visitElementAfter(md.Element element, TextStyle? preferredStyle) {
    var language = 'json'; // Default
    if (element.attributes.containsKey('class')) {
      final lg = element.attributes['class']!;
      if (lg.startsWith('language-')) {
        language = lg.substring(9);
      }
    }

    final isDark = theme.brightness == Brightness.dark;
    final highlighterTheme = isDark ? atomOneDarkTheme : atomOneLightTheme;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E1E1E) : const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withAlpha((0.3 * 255).toInt()),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: HighlightView(
                element.textContent,
                language: language,
                theme: highlighterTheme,
                padding: EdgeInsets.zero,
                textStyle: const TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 13,
                  height: 1.5,
                ),
              ),
            ),
          ),
          Positioned(
            top: 6,
            right: 6,
            child: _CodeCopyButton(text: element.textContent),
          ),
        ],
      ),
    );
  }
}

class _CodeCopyButton extends StatefulWidget {
  const _CodeCopyButton({required this.text});
  final String text;

  @override
  State<_CodeCopyButton> createState() => _CodeCopyButtonState();
}

class _CodeCopyButtonState extends State<_CodeCopyButton> {
  bool _copied = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        unawaited(HapticFeedback.lightImpact());
        Clipboard.setData(ClipboardData(text: widget.text));
        setState(() => _copied = true);
        Future.delayed(const Duration(seconds: 2), () {
          if (mounted) {
            setState(() => _copied = false);
          }
        });
      },
      borderRadius: BorderRadius.circular(6),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: _copied 
              ? theme.colorScheme.primaryContainer 
              : theme.colorScheme.surfaceContainerHighest.withAlpha((0.5 * 255).toInt()),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              _copied ? Icons.check : Icons.copy_rounded,
              size: 14,
              color: _copied ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant,
            ),
            if (_copied) ...[
              const SizedBox(width: 4),
              Text(
                AppLocalizations.of(context)!.copy,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}


class TypingIndicator extends StatelessWidget {
  const TypingIndicator({
    super.key,
    this.isThinking = false,
    this.activityDescription,
    this.fallbackText,
  });

  final bool isThinking;
  final String? activityDescription;
  final String? fallbackText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12, left: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest.withAlpha((0.5 * 255).toInt()),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
            bottomLeft: Radius.circular(4),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isThinking) ...[
              RepaintBoundary(child: _AiGlowOrb(color: theme.colorScheme.primary)),
              const SizedBox(width: 12),
              Text(
                activityDescription ?? fallbackText ?? '...',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ),
            ] else
              const SizedBox(
                width: 36,
                child: RepaintBoundary(child: AnimatedTypingDots()),
              ),
          ],
        ),
      ).animate().fadeIn().slideX(begin: -0.1, end: 0),
    );
  }
}

class _AiGlowOrb extends StatelessWidget {
  const _AiGlowOrb({required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: color.withAlpha((0.5 * 255).toInt()),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
      ).animate(onPlay: (c) => isTestMode ? null : c.repeat(reverse: true)).scale(
        begin: const Offset(0.8, 0.8),
        end: const Offset(1.2, 1.2),
        duration: 800.ms,
        curve: Curves.easeInOut,
      ).tint(
        color: color.withAlpha((0.8 * 255).toInt()),
        duration: 800.ms,
      ),
    );
  }
}

class _FeedbackButton extends StatelessWidget {
  const _FeedbackButton({
    required this.icon,
    required this.onTap,
    this.isSelected = false,
  });

  final IconData icon;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: isSelected ? theme.colorScheme.primaryContainer.withAlpha((0.5 * 255).toInt()) : Colors.transparent,
          borderRadius: BorderRadius.circular(RadiusTokens.sm),
        ),
        child: Icon(
          icon,
          size: 14,
          color: isSelected ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant.withAlpha((0.4 * 255).toInt()),
        ),
      ),
    );
  }
}

// _BubbleActionButton removed — feedback unified outside bubble

class _ShortcutData {
  const _ShortcutData({
    required this.label,
    required this.prompt,
    required this.icon,
  });

  final String label;
  final String prompt;
  final IconData icon;
}

IconData _iconFromName(String name) {
  switch (name) {
    case 'add_shopping_cart': return Icons.add_shopping_cart;
    case 'receipt_long': return Icons.receipt_long;
    case 'restaurant_menu': return Icons.restaurant_menu;
    case 'menu_book': return Icons.menu_book;
    case 'local_fire_department': return Icons.local_fire_department;
    case 'eco': return Icons.eco;
    case 'cleaning_services': return Icons.cleaning_services;
    case 'savings': return Icons.savings;
    case 'trending_up': return Icons.trending_up;
    case 'cake': return Icons.cake;
    case 'shopping_cart': return Icons.shopping_cart;
    case 'check_circle': return Icons.check_circle;
    case 'delete': return Icons.delete;
    case 'edit': return Icons.edit;
    case 'share': return Icons.share;
    case 'map': return Icons.map;
    case 'search': return Icons.search;
    case 'lightbulb': return Icons.lightbulb;
    case 'tips_and_updates': return Icons.tips_and_updates;
    case 'organize': return Icons.category;
    case 'kitchen': return Icons.kitchen;
    case 'grocery': return Icons.local_grocery_store;
    case 'calendar_month': return Icons.calendar_month;
    case 'schedule': return Icons.schedule;
    case 'group_add': return Icons.group_add;
    case 'archive': return Icons.archive;
    case 'checklist': return Icons.checklist;
    case 'nutrition': return Icons.set_meal;
    case 'price_check': return Icons.price_check;
    case 'repeat': return Icons.repeat;
    case 'star': return Icons.star;
    case 'timer': return Icons.timer;
    case 'today': return Icons.today;
    default: return Icons.lightbulb;
  }
}

List<_ShortcutData> _getDynamicShortcuts(List<ShoppingItem> items, AppLocalizations l10n, List<ChatMessage> messages) {
  final shortcuts = <_ShortcutData>[];
  final itemNames = items.map((e) => e.name.toLowerCase()).toList();

  final userText = messages
      .where((m) => m.role == 'user')
      .map((m) => m.content.toLowerCase())
      .join(' ');

  final weekday = DateTime.now().weekday;
  final dailySuggestion = weekday == DateTime.saturday || weekday == DateTime.sunday
      ? const _ShortcutData(
          label: 'Almoço de fim de semana',
          prompt: 'Sugira um cardápio e lista para um almoço especial de fim de semana.',
          icon: Icons.brunch_dining,
        )
      : const _ShortcutData(
          label: 'Marmitas da semana',
          prompt: 'Como planejar marmitas saudáveis com economia para esta semana?',
          icon: Icons.backpack_outlined,
        );

  final hasAskedEconomy = userText.contains('economia') || userText.contains('economizar') || userText.contains('preço') || userText.contains('barat');
  if (hasAskedEconomy) {
    shortcuts.add(const _ShortcutData(
      label: 'Itens mais caros?',
      prompt: 'Quais são os itens com maior probabilidade de encarecer minha conta nesta lista?',
      icon: Icons.trending_up,
    ));
    shortcuts.add(const _ShortcutData(
      label: 'Substitutos baratos?',
      prompt: 'Sugira opções de marcas ou ingredientes mais em conta para os itens da minha lista.',
      icon: Icons.compare_arrows,
    ));
  } else {
    shortcuts.add(_ShortcutData(
      label: l10n.economyTips,
      prompt: l10n.economyTipsPrompt,
      icon: Icons.savings_outlined,
    ));
  }

  if (itemNames.any((name) => name.contains('carne') || name.contains('picanha') || name.contains('linguiça')) &&
      itemNames.any((name) => name.contains('carvão') || name.contains('acendedor'))) {
    shortcuts.add(const _ShortcutData(
      label: 'Falta para o churrasco?',
      prompt: 'O que falta para o meu churrasco com os itens que já tenho na lista?',
      icon: Icons.local_fire_department,
    ));
  }

  if (itemNames.any((name) => name.contains('farinha')) &&
      itemNames.any((name) => name.contains('ovo') || name.contains('leite'))) {
    shortcuts.add(const _ShortcutData(
      label: 'Receitas de bolo?',
      prompt: 'Sugira receitas de bolo simples com os ingredientes que tenho.',
      icon: Icons.cake,
    ));
  }

  if (itemNames.any((name) => name.contains('alface') || name.contains('tomate') || name.contains('rúcula'))) {
    shortcuts.add(const _ShortcutData(
      label: 'Dicas para salada?',
      prompt: 'Como posso deixar minha salada mais gostosa com esses ingredientes?',
      icon: Icons.eco,
    ));
  }

  if (itemNames.any((name) => name.contains('detergente') || name.contains('sabão') || name.contains('limpeza'))) {
    shortcuts.add(const _ShortcutData(
      label: 'Faxina eficiente?',
      prompt: 'Dicas de como usar esses produtos de limpeza de forma eficiente.',
      icon: Icons.cleaning_services,
    ));
  }

  shortcuts.add(_ShortcutData(
    label: l10n.organizeAisles,
    prompt: l10n.organizeAislesPrompt,
    icon: Icons.map_outlined,
  ));

  shortcuts.add(dailySuggestion);

  if (shortcuts.length < 4) {
    shortcuts.add(_ShortcutData(
      label: l10n.quickRecipe,
      prompt: l10n.quickRecipePrompt,
      icon: Icons.restaurant_menu,
    ));
  }

  final uniqueShortcuts = <String, _ShortcutData>{};
  for (final s in shortcuts) {
    uniqueShortcuts[s.label] = s;
  }

  return uniqueShortcuts.values.take(4).toList();
}

class _ActionButton extends StatefulWidget {
  const _ActionButton({
    required this.label,
    required this.icon,
    required this.onPressed,
    this.isFilled = false,
  });

  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final bool isFilled;

  @override
  State<_ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<_ActionButton> {
  bool _isSuccess = false;

  void _handlePress() {
    widget.onPressed();
    if (mounted) {
      setState(() => _isSuccess = true);
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
          setState(() => _isSuccess = false);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final label = _isSuccess ? l10n.addedFeedback : widget.label;
    final icon = _isSuccess ? Icons.check : widget.icon;
    final color = _isSuccess ? Colors.green : theme.colorScheme.primary;

    return TextButton.icon(
      onPressed: _isSuccess ? null : _handlePress,
      icon: Icon(icon, size: 14),
      label: Text(label, style: const TextStyle(fontSize: 11)),
      style: TextButton.styleFrom(
        foregroundColor: color,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        minimumSize: const Size(0, 28),
        textStyle: theme.textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w700),
      ),
    ).animate(target: _isSuccess ? 1 : 0).shimmer(duration: 400.ms);
  }
}

class _AgentActionStepsList extends ConsumerWidget {
  const _AgentActionStepsList({
    required this.messageId,
    required this.steps,
    this.listId,
  });

  final String messageId;
  final List<AgentStep> steps;
  final String? listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    
    // Check if there is at least one successful undoable action
    final isUndoable = steps.any((step) {
      if (step.status != AgentStepStatus.success) {
        return false;
      }
      final rd = step.resultData;
      if (rd == null) {
        return false;
      }
      return rd.containsKey('itemId') ||
          rd.containsKey('previousState') ||
          rd.containsKey('previousStates') ||
          rd.containsKey('previousBudget');
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ...steps.map((step) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: AgentActionBlock(step: step, listId: listId).animate().fadeIn(duration: 200.ms).slideY(begin: 0.1, end: 0),
            )),
        if (isUndoable)
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 2, bottom: 4),
              child: TextButton.icon(
                onPressed: () async {
                  unawaited(HapticFeedback.mediumImpact());
                  await ref
                      .read(chatSessionProvider(listId, ref.read(activeChatSessionIdProvider(listId))).notifier)
                      .undoMessageActions(messageId);
                },
                icon: const Icon(Icons.undo, size: 14),
                label: const Text(
                  'Desfazer',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  minimumSize: const Size(0, 24),
                  visualDensity: VisualDensity.compact,
                  foregroundColor: theme.colorScheme.error,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(RadiusTokens.full),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class AgentActionBlock extends StatefulWidget {
  const AgentActionBlock({
    super.key,
    required this.step,
    this.listId,
  });

  final AgentStep step;
  final String? listId;

  @override
  State<AgentActionBlock> createState() => _AgentActionBlockState();
}

class _AgentActionBlockState extends State<AgentActionBlock> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final step = widget.step;
    final status = step.status;
    final hasDetails = step.resultData != null && (
      step.resultData!.containsKey('itemId') ||
      step.resultData!.containsKey('previousState') ||
      step.resultData!.containsKey('previousStates') ||
      step.resultData!.containsKey('previousBudget')
    );

    // Build leading status indicator
    final isPremiumTool = AgentTools.premiumToolNames.contains(step.toolName);
    Widget leading;
    switch (status) {
      case AgentStepStatus.pending:
        leading = Icon(
          isPremiumTool ? Icons.workspace_premium : Icons.radio_button_unchecked,
          size: 14,
          color: isPremiumTool 
              ? Colors.amber.withAlpha((0.8 * 255).toInt())
              : theme.colorScheme.onSurfaceVariant.withAlpha((0.5 * 255).toInt()),
        );
        break;
      case AgentStepStatus.running:
        leading = SizedBox(
          width: 14,
          height: 14,
          child: CircularProgressIndicator(
            strokeWidth: 1.5,
            valueColor: AlwaysStoppedAnimation<Color>(
              isPremiumTool ? Colors.amber : theme.colorScheme.primary,
            ),
          ),
        );
        break;
      case AgentStepStatus.success:
        leading = Icon(
          Icons.check_circle_outline,
          size: 14,
          color: theme.colorScheme.primary,
        );
        break;
      case AgentStepStatus.error:
        leading = Icon(
          Icons.error_outline,
          size: 14,
          color: theme.colorScheme.error,
        );
        break;
      case AgentStepStatus.undone:
        leading = Icon(
          Icons.remove_circle_outline,
          size: 14,
          color: theme.colorScheme.onSurfaceVariant.withAlpha((0.5 * 255).toInt()),
        ).animate().shake(duration: 400.ms);
        break;
      case AgentStepStatus.requiresUnlock:
        leading = const Icon(
          Icons.workspace_premium,
          size: 14,
          color: Colors.amber,
        ).animate(onPlay: (controller) => controller.repeat(reverse: true))
         .scale(begin: const Offset(1, 1), end: const Offset(1.2, 1.2), duration: 600.ms);
        break;
    }

    // Text style based on status
    final isLocked = status == AgentStepStatus.requiresUnlock;
    final textStyle = theme.textTheme.bodyMedium?.copyWith(
      fontSize: 12,
      fontWeight: (status == AgentStepStatus.running || isLocked) ? FontWeight.w600 : FontWeight.normal,
      decoration: status == AgentStepStatus.undone ? TextDecoration.lineThrough : null,
      color: status == AgentStepStatus.undone
          ? theme.colorScheme.onSurfaceVariant.withAlpha((0.5 * 255).toInt())
          : (isLocked ? Colors.amber.shade700 : (status == AgentStepStatus.running ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant)),
    );

    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: isLocked ? Colors.amber.withAlpha((0.05 * 255).toInt()) : theme.colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(RadiusTokens.sm),
            border: Border.all(
              color: isLocked 
                  ? Colors.amber.withAlpha((0.3 * 255).toInt())
                  : theme.colorScheme.outlineVariant.withAlpha((0.4 * 255).toInt()),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (status == AgentStepStatus.success && hasDetails)
                    ? () {
                        unawaited(HapticFeedback.selectionClick());
                        setState(() {
                          _isExpanded = !_isExpanded;
                        });
                      }
                    : null,
                borderRadius: BorderRadius.circular(RadiusTokens.sm),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    children: [
                      leading,
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          isLocked ? '${step.description} (Premium)' : step.description,
                          style: textStyle,
                        ),
                      ),
                      if (status == AgentStepStatus.success && hasDetails) ...[
                        const SizedBox(width: 8),
                        Icon(
                          _isExpanded ? Icons.expand_less : Icons.expand_more,
                          size: 16,
                          color: theme.colorScheme.onSurfaceVariant.withAlpha((0.6 * 255).toInt()),
                        ),
                      ],
                    ],
                  ),
                ),
              ).animate(target: status == AgentStepStatus.undone ? 1 : 0)
               .slideX(begin: 0, end: -0.05, duration: 300.ms, curve: Curves.easeInOut)
               .then()
               .slideX(begin: 0, end: 0.05, duration: 300.ms, curve: Curves.easeInOut),
              if (_isExpanded && status == AgentStepStatus.success && hasDetails)
                _buildStepDetails(step, theme),
            ],
          ),
        ),
        if (isLocked)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: _PremiumUnlockCard(listId: widget.listId),
          ),
      ],
    );
  }

  Widget _buildStepDetails(AgentStep step, ThemeData theme) {
    final result = step.resultData;
    if (result == null) {
      return const SizedBox.shrink();
    }

    final details = <Widget>[];

    if (result.containsKey('itemId') && !result.containsKey('previousState')) {
      details.add(Row(
        children: [
          Icon(Icons.add, size: 12, color: theme.colorScheme.primary),
          const SizedBox(width: 4),
          Text(
            'Item adicionado à lista.',
            style: theme.textTheme.bodySmall?.copyWith(fontSize: 11, color: theme.colorScheme.onSurfaceVariant),
          ),
        ],
      ));
    } else if (result.containsKey('previousState')) {
      try {
        final prevMap = Map<String, dynamic>.from(result['previousState'] as Map);
        final item = ShoppingItem.fromJson(prevMap);
        final priceStr = item.estimatedPrice != null ? ' (R\$ ${item.estimatedPrice!.toStringAsFixed(2)})' : '';
        final prevCategoryName = CategoryData.defaults.firstWhere(
          (c) => c.id == item.categoryId,
          orElse: () => CategoryData.defaults.last,
        ).name;
        details.add(Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.info_outline, size: 12, color: theme.colorScheme.onSurfaceVariant),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                'Estado anterior: ${item.quantity} ${item.unit.label} [$prevCategoryName]$priceStr',
                style: theme.textTheme.bodySmall?.copyWith(
                  fontSize: 11,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ));
      } on Object catch (e) {
        debugPrint('Error parsing previousState: $e');
      }
    } else if (result.containsKey('previousStates')) {
      try {
        final list = result['previousStates'] as List<dynamic>;
        details.add(Row(
          children: [
            Icon(Icons.checklist, size: 12, color: theme.colorScheme.onSurfaceVariant),
            const SizedBox(width: 4),
            Text(
              '${list.length} itens afetados pela ação.',
              style: theme.textTheme.bodySmall?.copyWith(fontSize: 11, color: theme.colorScheme.onSurfaceVariant),
            ),
          ],
        ));
      } on Object catch (e) {
        debugPrint('Error parsing previousStates: $e');
      }
    } else if (result.containsKey('previousBudget')) {
      final prevBudgetNum = result['previousBudget'] as num?;
      final prevBudget = prevBudgetNum?.toDouble();
      final prevBudgetStr = prevBudget != null ? 'R\$ ${prevBudget.toStringAsFixed(2)}' : 'Nenhum';
      details.add(Row(
        children: [
          Icon(Icons.account_balance_wallet, size: 12, color: theme.colorScheme.onSurfaceVariant),
          const SizedBox(width: 4),
          Text(
            'Orçamento anterior: $prevBudgetStr',
            style: theme.textTheme.bodySmall?.copyWith(fontSize: 11, color: theme.colorScheme.onSurfaceVariant),
          ),
        ],
      ));
    }

    if (details.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(left: 32, bottom: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: details,
      ),
    );
  }
}

class _PremiumUnlockCard extends ConsumerWidget {
  const _PremiumUnlockCard({this.listId});
  final String? listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(RadiusTokens.md),
        border: Border.all(color: Colors.amber.withAlpha((0.5 * 255).toInt()), width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha((0.05 * 255).toInt()),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.auto_awesome, color: Colors.amber, size: 20),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Recurso Avançado',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Esta interface interativa utiliza inteligência artificial avançada e é exclusiva para membros Pro ou via anúncio rápido.',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: () {
                unawaited(HapticFeedback.mediumImpact());
                // Abre paywall
                ref.read(chatSessionProvider(listId, ref.read(activeChatSessionIdProvider(listId))).notifier).executeToolDirectly('open_paywall', {});
              },
              icon: const Icon(Icons.workspace_premium, size: 18),
              label: const Text('Seja Premium'),
              style: FilledButton.styleFrom(
                backgroundColor: Colors.amber.shade700,
                foregroundColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () async {
                unawaited(HapticFeedback.lightImpact());
                final adService = ref.read(adServiceProvider);
                final success = await adService.showRewardedAd();
                if (success) {
                  await ref.read(chatSessionProvider(listId, ref.read(activeChatSessionIdProvider(listId))).notifier).resumeWithUnlock();
                }
              },
              icon: const Icon(Icons.play_circle_outline, size: 18),
              label: const Text('Liberar com Anúncio'),
              style: OutlinedButton.styleFrom(
                foregroundColor: theme.colorScheme.primary,
                side: BorderSide(color: theme.colorScheme.primary),
              ),
            ),
          ),
          const SizedBox(height: 4),
          TextButton(
            onPressed: () {
              unawaited(HapticFeedback.lightImpact());
              ref.read(chatSessionProvider(listId, ref.read(activeChatSessionIdProvider(listId))).notifier).cancelUnlock();
            },
            child: Text(
              'Continuar sem interface interativa',
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant.withAlpha((0.7 * 255).toInt()),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 400.ms).slideY(begin: 0.1, end: 0);
  }
}


