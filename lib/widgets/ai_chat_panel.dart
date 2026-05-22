import 'dart:async' show unawaited;
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
import 'package:shimmer/shimmer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import '../utils/test_utils.dart';
import '../generated/l10n/app_localizations.dart';
import '../models/chat_message.dart';
import '../providers/chat_provider.dart';
import '../providers/auth_provider.dart';
import 'animated_typing_dots.dart';
import '../providers/premium_provider.dart';
import '../models/ai_usage.dart';
import '../providers/ai_usage_provider.dart';
import '../theme/tokens.dart';
import '../theme/page_transitions.dart';
import '../screens/paywall_screen.dart';
import '../models/category.dart';
import '../models/unit.dart';
import '../providers/shopping_list_provider.dart';
import '../models/shopping_item.dart';

class AiChatPanel extends ConsumerStatefulWidget {
  const AiChatPanel({
    super.key,
    this.listId,
    this.listName,
    this.compact = false,
    this.onOrganizeRequested,
  });

  final String? listId;
  final String? listName;
  final bool compact;
  final VoidCallback? onOrganizeRequested;

  @override
  ConsumerState<AiChatPanel> createState() => _AiChatPanelState();
}

class _AiChatPanelState extends ConsumerState<AiChatPanel> {
  final _textController = TextEditingController();
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();
  final _speech = stt.SpeechToText();
  bool _isSending = false;
  bool _showScrollFAB = false;
  bool _isSearching = false;
  String _searchQuery = '';
  bool _shouldAutoScroll = true;
  bool _isListening = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  Future<void> _listen() async {
    if (!_isListening) {
      final locale = Localizations.localeOf(context).toString();
      final available = await _speech.initialize(
        onStatus: (val) => debugPrint('Speech status: $val'),
        onError: (val) => debugPrint('Speech error: $val'),
      );
      if (available) {
        setState(() => _isListening = true);
        unawaited(HapticFeedback.lightImpact());
        await _speech.listen(
          onResult: (val) => setState(() {
            _textController.text = val.recognizedWords;
          }),
          listenOptions: stt.SpeechListenOptions(
            localeId: locale,
          ),
        );
      }
    } else {
      setState(() => _isListening = false);
      await _speech.stop();
      if (_textController.text.isNotEmpty) {
        unawaited(_sendMessage());
      }
    }
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
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom({bool force = false}) {
    if (_scrollController.hasClients && (_shouldAutoScroll || force)) {
      final isStreaming = ref.read(chatStreamingProvider(widget.listId));
      if (isStreaming && !force) {
        // Use jumpTo for a "glued" effect during streaming
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
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
        category: Category.others,
        unit: Unit.un,
      );
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
      if (!canSend && !isPremium) {
        // Add user message first
        final userMessage = ChatMessage(role: 'user', content: text);
        await ref.read(chatSessionProvider(widget.listId).notifier).addMessage(userMessage);

        // Trigger Teaser Effect
        await ref.read(chatSessionProvider(widget.listId).notifier).addMessage(
          ChatMessage(
            role: 'assistant',
            content: 'Para economizar nesta compra, você pode aproveitar as promoções sazonais de frutas cítricas, além de considerar a troca de marcas premium por marcas próprias do supermercado, que oferecem qualidade similar por um preço até 30% menor. Outra dica valiosa é de extrema importância para seu bolso e para a organização da sua despensa...',
            isTeaser: true,
          ),
        );
      } else {
        await ref.read(chatSessionProvider(widget.listId).notifier).sendMessage(text);
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
    final isPremium = ref.watch(premiumProvider).value ?? false;
    final aiUsageAsync = ref.watch(aiUsageStateProvider);
    final canSend = isPremium || (aiUsageAsync.valueOrNull?.isExhausted == false);
    final remaining = aiUsageAsync.valueOrNull?.remainingDaily ?? 0;

    final itemsAsync = widget.listId != null 
        ? ref.watch(shoppingListItemsProvider(widget.listId!))
        : const AsyncValue<List<ShoppingItem>>.data([]);
    final items = itemsAsync.valueOrNull ?? [];
    final shortcuts = _getDynamicShortcuts(items, l10n);

    final chatState = ref.watch(chatSessionProvider(widget.listId));
    final isStreaming = ref.watch<bool>(chatStreamingProvider(widget.listId));
    final isThinking = ref.watch<bool>(chatThinkingProvider(widget.listId));
    final activityDescription = ref.watch<String?>(chatActivityProvider(widget.listId));

    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              chatState.when(
                data: (allMessages) {
                  final messages = _searchQuery.isEmpty
                      ? allMessages
                      : allMessages
                          .where((m) => m.content.toLowerCase().contains(_searchQuery.toLowerCase()))
                          .toList();

                  if (allMessages.isEmpty) {
                    return Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (!widget.compact) _HeaderRow(
                              l10n: l10n,
                              theme: theme,
                              isPremium: isPremium,
                              aiUsageAsync: aiUsageAsync,
                              remaining: remaining,
                              listName: widget.listName,
                              isSearching: _isSearching,
                              onSearchToggle: () => setState(() {
                                _isSearching = !_isSearching;
                                if (!_isSearching) {
                                  _searchQuery = '';
                                  _searchController.clear();
                                }
                              }),
                            ),
                            if (_isSearching)
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                child: TextField(
                                  controller: _searchController,
                                  autofocus: true,
                                  decoration: InputDecoration(
                                    hintText: 'Pesquisar na conversa...',
                                    prefixIcon: const Icon(Icons.search, size: 20),
                                    suffixIcon: IconButton(
                                      icon: const Icon(Icons.close, size: 20),
                                      onPressed: () => setState(() {
                                        _isSearching = false;
                                        _searchQuery = '';
                                        _searchController.clear();
                                      }),
                                    ),
                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(RadiusTokens.full),
                                    ),
                                  ),
                                  onChanged: (value) => setState(() => _searchQuery = value),
                                ),
                              ),
                            if (_isSearching && _searchQuery.isNotEmpty && messages.isEmpty)
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 32),
                                child: Column(
                                  children: [
                                    Icon(Icons.search_off, size: 48, color: theme.colorScheme.outline),
                                    const SizedBox(height: 16),
                                    Text(
                                      'Nenhuma mensagem encontrada',
                                      style: theme.textTheme.bodyMedium?.copyWith(
                                        color: theme.colorScheme.outline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            Icon(Icons.auto_awesome, size: 48, color: theme.colorScheme.primary),
                            const SizedBox(height: 12),
                            Text(
                              widget.listId != null ? l10n.listHelp : l10n.generalHelp,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleSmall,
                            ),
                            const SizedBox(height: 4),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24),
                              child: Text(
                                l10n.chatSubtitle,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }

                  // Use a simpler way to scroll that doesn't trigger on every build
                  if (messages.isNotEmpty) {
                    Future.microtask(() => _scrollToBottom());
                  }

                  return ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.fromLTRB(12, 12, 12, 80),
                    itemCount: messages.length + 1 + (isThinking || (_isSending && !isStreaming) ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Column(
                          children: [
                            if (!widget.compact) _HeaderRow(
                              l10n: l10n,
                              theme: theme,
                              isPremium: isPremium,
                              aiUsageAsync: aiUsageAsync,
                              remaining: remaining,
                              listName: widget.listName,
                              isSearching: _isSearching,
                              onSearchToggle: () => setState(() {
                                _isSearching = !_isSearching;
                                if (!_isSearching) {
                                  _searchQuery = '';
                                  _searchController.clear();
                                }
                              }),
                            ),
                            if (_isSearching)
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                child: TextField(
                                  controller: _searchController,
                                  autofocus: true,
                                  decoration: InputDecoration(
                                    hintText: 'Pesquisar na conversa...',
                                    prefixIcon: const Icon(Icons.search, size: 20),
                                    suffixIcon: IconButton(
                                      icon: const Icon(Icons.close, size: 20),
                                      onPressed: () => setState(() {
                                        _isSearching = false;
                                        _searchQuery = '';
                                        _searchController.clear();
                                      }),
                                    ),
                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(RadiusTokens.full),
                                    ),
                                  ),
                                  onChanged: (value) => setState(() => _searchQuery = value),
                                ),
                              ),
                            if (_isSearching && _searchQuery.isNotEmpty && messages.isEmpty)
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 32),
                                child: Column(
                                  children: [
                                    Icon(Icons.search_off, size: 48, color: theme.colorScheme.outline),
                                    const SizedBox(height: 16),
                                    Text(
                                      'Nenhuma mensagem encontrada',
                                      style: theme.textTheme.bodyMedium?.copyWith(
                                        color: theme.colorScheme.outline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                            ).animate().fadeIn(
                              duration: DurationTokens.fast,
                            ).slideX(
                              begin: message.role == 'user' ? 0.3 : -0.3,
                              end: 0,
                              duration: DurationTokens.fast,
                              curve: Curves.easeOut,
                            ),
                            if (isLastMessage && 
                                message.role == 'assistant' && 
                                message.suggestedReplies != null && 
                                message.suggestedReplies!.isNotEmpty &&
                                !isThinking &&
                                !_isSending)
                              Padding(
                                padding: const EdgeInsets.only(left: 44, top: 4, bottom: 8),
                                child: Wrap(
                                  spacing: 8,
                                  runSpacing: 4,
                                  children: message.suggestedReplies!.map((reply) => _SuggestedReplyChip(
                                    label: reply,
                                    onTap: () {
                                      _textController.text = reply;
                                      _sendMessage();
                                    },
                                  )).toList(),
                                ),
                              ),
                          ],
                        );
                      } else {
                        return TypingIndicator(
                          isThinking: isThinking,
                          activityDescription: activityDescription,
                        );
                      }
                    },
                  );
                },
                loading: () => Skeletonizer(
                  child: ListView.builder(
                    padding: const EdgeInsets.fromLTRB(12, 12, 12, 80),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return _GroupChatBubble(
                        message: ChatMessage(
                          id: 'skeleton-$index',
                          role: index % 2 == 0 ? 'user' : 'assistant',
                          content: index % 2 == 0 
                              ? 'Texto curto de exemplo.' 
                              : 'Este é um texto bem maior para simular uma resposta detalhada da IA carregando na tela com múltiplos detalhes.',
                          timestamp: DateTime.now(),
                        ),
                        isLastInGroup: true,
                      );
                    },
                  ),
                ),
                error: (e, _) => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.error_outline, size: 48, color: theme.colorScheme.error),
                        const SizedBox(height: 16),
                        Text(
                          'Ops! Algo deu errado ao carregar o chat.',
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Verifique sua conexão ou tente novamente mais tarde.',
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
                    onPressed: _scrollToBottom,
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
        _buildInput(context, l10n, theme, canSend, shortcuts),
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

    return Padding(
      padding: const EdgeInsets.only(left: 40, bottom: 2, top: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.auto_awesome, size: 10, color: theme.colorScheme.primary),
          const SizedBox(width: 4),
          Text(
            isGroup ? (message.senderName ?? 'IA') : 'IA',
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

  Widget _buildPaywallBanner(BuildContext context, AppLocalizations l10n, ThemeData theme) {
    final content = Row(
      children: [
        const Icon(Icons.workspace_premium, size: 20),
        const SizedBox(width: Spacing.sm),
        Expanded(
          child: Text(
            'Desbloqueie IA ilimitada',
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Icon(Icons.arrow_forward_ios, size: 12),
      ],
    );

    return GestureDetector(
      onTap: () => Navigator.push(context, fadeSlideRoute<void>(const PaywallScreen())),
      child: Container(
        padding: const EdgeInsets.all(Spacing.sm),
        margin: const EdgeInsets.symmetric(horizontal: Spacing.sm, vertical: Spacing.xs),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.primaryContainer.withValues(alpha: 0.5),
              theme.colorScheme.secondaryContainer.withValues(alpha: 0.3),
            ],
          ),
          borderRadius: BorderRadius.circular(RadiusTokens.md),
          border: Border.all(color: theme.colorScheme.primary.withValues(alpha: 0.2)),
        ),
        child: isTestMode 
          ? content
          : Shimmer.fromColors(
              baseColor: theme.colorScheme.primary,
              highlightColor: theme.colorScheme.primaryContainer,
              period: const Duration(seconds: 3),
              child: content,
            ),
      ),
    );
  }

  Widget _buildInput(BuildContext context, AppLocalizations l10n, ThemeData theme, bool canSend, List<_ShortcutData> shortcuts) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: shortcuts.map((shortcut) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: _ShortcutChip(
                  label: shortcut.label,
                  icon: shortcut.icon,
                  onTap: !_isSending ? () {
                    _textController.text = shortcut.prompt;
                    _sendMessage();
                  } : null,
                ),
              )).toList(),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 5,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    enabled: !_isSending,
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: _isListening ? 'Ouvindo...' : l10n.chatHint,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: _isListening ? theme.colorScheme.primaryContainer.withValues(alpha: 0.3) : Colors.grey.withValues(alpha: 0.1),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      prefixIcon: IconButton(
                        icon: _isListening 
                          ? const RepaintBoundary(child: _MicRipple())
                          : Icon(Icons.mic_none, color: theme.colorScheme.onSurfaceVariant),
                        onPressed: !_isSending ? _listen : null,
                      ),
                      suffixIcon: widget.listId != null ? IconButton(
                        icon: Icon(
                          Icons.add_circle, 
                          color: theme.colorScheme.primary,
                          size: 26,
                        ),
                        onPressed: !_isSending ? _quickAddItem : null,
                        tooltip: 'Adicionar direto na lista',
                      ) : null,
                    ),
                    onSubmitted: !_isSending ? (_) => _sendMessage() : null,
                  ),
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: theme.colorScheme.primary,
                  child: _isSending
                      ? IconButton(
                          icon: const Icon(Icons.stop, color: Colors.white),
                          onPressed: () {
                            ref.read(chatSessionProvider(widget.listId).notifier).cancelRequest();
                          },
                        )
                      : IconButton(
                          icon: const Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                          onPressed: _sendMessage,
                        ),
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

class _HeaderRow extends StatelessWidget {
  const _HeaderRow({
    required this.l10n,
    required this.theme,
    required this.isPremium,
    required this.aiUsageAsync,
    required this.remaining,
    required this.listName,
    required this.isSearching,
    required this.onSearchToggle,
  });

  final AppLocalizations l10n;
  final ThemeData theme;
  final bool isPremium;
  final AsyncValue<AiUsage> aiUsageAsync;
  final int remaining;
  final String? listName;
  final bool isSearching;
  final VoidCallback onSearchToggle;

  @override
  Widget build(BuildContext context) {
    final progress = (remaining / AiUsageLimits.dailyLimit).clamp(0.0, 1.0);
    final energyColor = remaining > 5 
        ? Colors.green 
        : (remaining > 2 ? Colors.amber : Colors.orange);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.xs),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.auto_awesome, size: 16, color: theme.colorScheme.primary),
              const SizedBox(width: Spacing.xs),
              Text(
                listName ?? l10n.generalAssistant,
                style: theme.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: theme.colorScheme.primary,
                ),
              ),
              const Spacer(),
              if (!isPremium && aiUsageAsync.hasValue)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Energia da IA',
                      style: theme.textTheme.labelSmall?.copyWith(
                        fontSize: 8,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 2),
                    SizedBox(
                      width: 60,
                      height: 4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: LinearProgressIndicator(
                          value: progress,
                          backgroundColor: theme.colorScheme.surfaceContainerHighest,
                          valueColor: AlwaysStoppedAnimation<Color>(energyColor),
                        ),
                      ),
                    ),
                  ],
                ),
              const SizedBox(width: 8),
              IconButton(
                icon: Icon(
                  isSearching ? Icons.search_off : Icons.search,
                  size: 18,
                  color: isSearching ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant,
                ),
                onPressed: onSearchToggle,
                visualDensity: VisualDensity.compact,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ShortcutChip extends StatelessWidget {
  const _ShortcutChip({
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
          ? theme.colorScheme.primaryContainer.withValues(alpha: 0.3)
          : theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.full)),
    );
  }
}

class _SuggestedReplyChip extends StatelessWidget {
  const _SuggestedReplyChip({
    required this.label,
    required this.onTap,
  });

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ActionChip(
      label: Text(
        label,
        style: theme.textTheme.labelSmall?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w600,
        ),
      ),
      onPressed: () {
        unawaited(HapticFeedback.lightImpact());
        onTap();
      },
      backgroundColor: theme.colorScheme.primaryContainer.withValues(alpha: 0.2),
      side: BorderSide(color: theme.colorScheme.primary.withValues(alpha: 0.2)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.full)),
      visualDensity: VisualDensity.compact,
      padding: EdgeInsets.zero,
    );
  }
}

class _GroupChatBubble extends ConsumerWidget {
  const _GroupChatBubble({
    required this.message,
    this.listId,
    this.isLastInGroup = true,
    this.isLastMessage = false,
    this.onOrganizeRequested,
  });

  final ChatMessage message;
  final String? listId;
  final bool isLastInGroup;
  final bool isLastMessage;
  final VoidCallback? onOrganizeRequested;

  void _copyToClipboard(BuildContext context) {
    Clipboard.setData(ClipboardData(text: message.content));
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(l10n.copiedToClipboard),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isUser = message.role == 'user';
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final actions = message.actions;
    final timeStr = '${message.timestamp.hour.toString().padLeft(2, '0')}:${message.timestamp.minute.toString().padLeft(2, '0')}';
    final authState = ref.watch<AsyncValue<User?>>(authProvider);
    final user = authState.valueOrNull;
    final isStreaming = ref.watch(chatStreamingProvider(listId));

    final borderRadius = BorderRadius.only(
      topLeft: const Radius.circular(16),
      topRight: const Radius.circular(16),
      bottomLeft: Radius.circular(isUser ? 16 : (isLastInGroup ? 4 : 16)),
      bottomRight: Radius.circular(isUser ? (isLastInGroup ? 4 : 16) : 16),
    );

    return Padding(
      padding: EdgeInsets.only(bottom: isLastInGroup ? 6 : 1),
      child: Column(
        crossAxisAlignment: isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (!isUser) ...[
                if (isLastInGroup)
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4, bottom: 2),
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: theme.colorScheme.primaryContainer,
                      child: Icon(Icons.auto_awesome, size: 14, color: theme.colorScheme.primary),
                    ),
                  )
                else
                  const SizedBox(width: 32),
              ],
              Flexible(
                child: GestureDetector(
                  onLongPress: () {
                    unawaited(HapticFeedback.mediumImpact());
                    _copyToClipboard(context);
                  },
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding: isUser ? null : const EdgeInsets.all(1.2),
                        decoration: isUser
                            ? null
                            : BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    theme.colorScheme.primary.withValues(alpha: 0.4),
                                    theme.colorScheme.secondary.withValues(alpha: 0.2),
                                    theme.colorScheme.primary.withValues(alpha: 0.1),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: borderRadius,
                              ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.82,
                          ),
                          decoration: BoxDecoration(
                            color: message.isError
                                ? theme.colorScheme.errorContainer
                                : (isUser
                                    ? theme.colorScheme.primary
                                    : theme.colorScheme.surfaceContainerHighest),
                            borderRadius: borderRadius,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (message.isTeaser)
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    ShaderMask(
                                      shaderCallback: (rect) {
                                        return LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [Colors.black, Colors.black.withValues(alpha: 0)],
                                          stops: const [0.3, 0.7],
                                        ).createShader(rect);
                                      },
                                      blendMode: BlendMode.dstIn,
                                      child: _buildMarkdownContent(
                                        context,
                                        message.content,
                                        isUser,
                                        theme,
                                        message.isError,
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
                                        label: const Text('Desbloquear Resposta Completa', style: TextStyle(fontSize: 11)),
                                        style: FilledButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                                          minimumSize: const Size(0, 32),
                                          backgroundColor: theme.colorScheme.primary,
                                          foregroundColor: theme.colorScheme.onPrimary,
                                        ),
                                      ).animate(onPlay: (c) => isTestMode ? null : c.repeat()).shimmer(duration: 2.seconds),
                                    ),
                                  ],
                                )
                              else
                                _buildMarkdownContent(
                                  context,
                                  isLastMessage && isStreaming && !isUser
                                      ? '${message.content} ▊'
                                      : message.content,
                                  isUser,
                                  theme,
                                  message.isError,
                                  isStreaming: isLastMessage && isStreaming,
                                ),
                              const SizedBox(height: 2),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    timeStr,
                                    style: theme.textTheme.labelSmall?.copyWith(
                                      fontSize: 9,
                                      color: isUser
                                          ? theme.colorScheme.onPrimary.withValues(alpha: 0.7)
                                          : theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
                                    ),
                                  ),
                                  if (!isUser && message.content.isNotEmpty) ...[
                                    const SizedBox(width: 6),
                                    if (message.isError)
                                      GestureDetector(
                                        onTap: () {
                                          unawaited(HapticFeedback.lightImpact());
                                          ref.read(chatSessionProvider(listId).notifier).retryMessage();
                                        },
                                        child: Icon(Icons.refresh, size: 12, color: theme.colorScheme.error),
                                      )
                                    else
                                      GestureDetector(
                                        onTap: () {
                                          unawaited(HapticFeedback.selectionClick());
                                          _copyToClipboard(context);
                                        },
                                        child: Icon(
                                          Icons.copy_rounded,
                                          size: 12,
                                          color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
                                        ),
                                      ),
                                  ],
                                ],
                              ),
                              if (actions != null && !isUser) ...[
                                const SizedBox(height: 6),
                                if (actions.containsKey('add_items'))
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: _ActionButton(
                                      isFilled: true,
                                      onPressed: () {
                                        unawaited(HapticFeedback.lightImpact());
                                        ref.read(chatSessionProvider(listId).notifier).executeAction(message.id, 'add_items');
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
                                        if (onOrganizeRequested != null) {
                                          Navigator.pop(context); // Close chat sheet
                                          onOrganizeRequested!();
                                        } else {
                                          ref.read(chatSessionProvider(listId).notifier).executeAction(message.id, 'organize');
                                        }
                                      },
                                      icon: Icons.auto_awesome,
                                      label: l10n.organizeByAisles,
                                    ),
                                  ),
                              ],
                            ],
                          ),
                        ),
                      ),
                      if (!isUser)
                        Positioned(
                          top: -8,
                          left: 8,
                          child: Icon(
                            Icons.auto_awesome,
                            size: 14,
                            color: theme.colorScheme.primary.withValues(alpha: 0.8),
                          ).animate(onPlay: (c) => isTestMode ? null : c.repeat(reverse: true))
                           .shimmer(duration: 2.seconds)
                           .scale(begin: const Offset(0.9, 0.9), end: const Offset(1.1, 1.1)),
                        ),
                    ],
                  ),
                ),
              ),
              if (isUser) ...[
                if (isLastInGroup)
                  Padding(
                    padding: const EdgeInsets.only(left: 2, right: 4, bottom: 2),
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: theme.colorScheme.secondaryContainer,
                      backgroundImage: user?.photoURL != null ? NetworkImage(user!.photoURL!) : null,
                      child: user?.photoURL == null
                          ? Text(
                              (user?.displayName?.isNotEmpty == true ? user!.displayName![0] : 'U').toUpperCase(),
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: theme.colorScheme.onSecondaryContainer,
                              ),
                            )
                          : null,
                    ),
                  )
                else
                  const SizedBox(width: 32),
              ],
            ],
          ),
          if (!isUser && !message.isError && !message.isTeaser && message.content.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 44, top: 4, bottom: 4),
              child: Row(
                children: [
                  _FeedbackButton(
                    icon: message.feedback == 1 ? Icons.thumb_up : Icons.thumb_up_outlined,
                    isSelected: message.feedback == 1,
                    onTap: () {
                      unawaited(HapticFeedback.lightImpact());
                      ref.read(chatSessionProvider(listId).notifier).setFeedback(
                        message.id, 
                        message.feedback == 1 ? null : 1,
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  _FeedbackButton(
                    icon: message.feedback == -1 ? Icons.thumb_down : Icons.thumb_down_outlined,
                    isSelected: message.feedback == -1,
                    onTap: () {
                      unawaited(HapticFeedback.lightImpact());
                      ref.read(chatSessionProvider(listId).notifier).setFeedback(
                        message.id, 
                        message.feedback == -1 ? null : -1,
                      );
                    },
                  ),
                  if (isLastMessage && !isStreaming) ...[
                    const SizedBox(width: 16),
                    TextButton.icon(
                      onPressed: () {
                        unawaited(HapticFeedback.mediumImpact());
                        ref.read(chatSessionProvider(listId).notifier).regenerate(message.id);
                      },
                      icon: const Icon(Icons.refresh, size: 14),
                      label: const Text('Regenerar', style: TextStyle(fontSize: 10)),
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

  Widget _buildMarkdownContent(
    BuildContext context, 
    String content, 
    bool isUser, 
    ThemeData theme, 
    bool isError,
    {bool isStreaming = false}
  ) {
    if (isUser) {
      final userStyle = MarkdownStyleSheet(
        a: TextStyle(color: theme.colorScheme.onPrimary.withValues(alpha: 0.7), decoration: TextDecoration.underline),
        p: TextStyle(color: theme.colorScheme.onPrimary),
        code: TextStyle(
          fontFamily: 'monospace',
          fontSize: 13,
          color: theme.colorScheme.onPrimary,
          backgroundColor: theme.colorScheme.onPrimary.withValues(alpha: 0.15),
        ),
        h1: TextStyle(color: theme.colorScheme.onPrimary, fontWeight: FontWeight.bold, fontSize: 20),
        h2: TextStyle(color: theme.colorScheme.onPrimary, fontWeight: FontWeight.bold, fontSize: 18),
        h3: TextStyle(color: theme.colorScheme.onPrimary, fontWeight: FontWeight.w600, fontSize: 16),
        h4: TextStyle(color: theme.colorScheme.onPrimary, fontWeight: FontWeight.w600, fontSize: 15),
        h5: TextStyle(color: theme.colorScheme.onPrimary, fontWeight: FontWeight.w600, fontSize: 14),
        h6: TextStyle(color: theme.colorScheme.onPrimary, fontWeight: FontWeight.w600, fontSize: 13),
        em: TextStyle(fontStyle: FontStyle.italic, color: theme.colorScheme.onPrimary),
        strong: TextStyle(fontWeight: FontWeight.bold, color: theme.colorScheme.onPrimary),
        del: TextStyle(decoration: TextDecoration.lineThrough, color: theme.colorScheme.onPrimary),
        blockquote: TextStyle(color: theme.colorScheme.onPrimary.withValues(alpha: 0.7), fontStyle: FontStyle.italic),
        listBullet: TextStyle(color: theme.colorScheme.onPrimary),
        codeblockDecoration: BoxDecoration(
          color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(6),
        ),
        horizontalRuleDecoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: theme.colorScheme.onPrimary.withValues(alpha: 0.3)),
          ),
        ),
      );
      return MarkdownBody(
        data: content,
        styleSheet: userStyle,
        builders: {
          'code': CodeBlockBuilder(theme: theme),
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

    final aiStyle = MarkdownStyleSheet.fromTheme(theme).copyWith(
      p: isError ? TextStyle(color: theme.colorScheme.error) : null,
      codeblockDecoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(8),
      ),
    );
    return MarkdownBody(
      data: content,
      styleSheet: aiStyle,
      builders: {
        'code': CodeBlockBuilder(theme: theme),
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
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF282C34) : const Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
            child: HighlightView(
              element.textContent,
              language: language,
              theme: highlighterTheme,
              padding: EdgeInsets.zero,
              textStyle: const TextStyle(
                fontFamily: 'monospace',
                fontSize: 12,
              ),
            ),
          ),
          Positioned(
            top: 4,
            right: 4,
            child: IconButton(
              icon: Icon(
                Icons.copy_all_rounded,
                size: 16,
                color: (isDark ? Colors.white : Colors.black).withValues(alpha: 0.5),
              ),
              onPressed: () {
                unawaited(HapticFeedback.lightImpact());
                Clipboard.setData(ClipboardData(text: element.textContent));
              },
              visualDensity: VisualDensity.compact,
            ),
          ),
        ],
      ),
    );
  }
}

class _MicRipple extends StatelessWidget {
  const _MicRipple();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RepaintBoundary(
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: theme.colorScheme.primary.withValues(alpha: 0.2),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(Icons.mic, color: theme.colorScheme.primary, size: 20),
        ),
      ).animate(onPlay: (c) => isTestMode ? null : c.repeat()).scale(
        begin: const Offset(1, 1),
        end: const Offset(1.3, 1.3),
        duration: 1.seconds,
        curve: Curves.easeInOut,
      ).then().fadeOut(),
    );
  }
}

class TypingIndicator extends StatelessWidget {
  const TypingIndicator({
    super.key, 
    this.isThinking = false,
    this.activityDescription,
  });

  final bool isThinking;
  final String? activityDescription;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12, left: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
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
                activityDescription ?? 'Pensando...',
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
              color: color.withValues(alpha: 0.5),
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
        color: color.withValues(alpha: 0.8),
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
          color: isSelected ? theme.colorScheme.primaryContainer.withValues(alpha: 0.5) : Colors.transparent,
          borderRadius: BorderRadius.circular(RadiusTokens.sm),
        ),
        child: Icon(
          icon,
          size: 14,
          color: isSelected ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
        ),
      ),
    );
  }
}

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

List<_ShortcutData> _getDynamicShortcuts(List<ShoppingItem> items, AppLocalizations l10n) {
  final shortcuts = <_ShortcutData>[];
  final itemNames = items.map((e) => e.name.toLowerCase()).toList();

  // Rule 1: BBQ (Churrasco)
  if (itemNames.any((name) => name.contains('carne') || name.contains('picanha') || name.contains('linguiça')) &&
      itemNames.any((name) => name.contains('carvão') || name.contains('acendedor'))) {
    shortcuts.add(const _ShortcutData(
      label: 'O que falta para o churrasco?',
      prompt: 'O que falta para o meu churrasco com os itens que já tenho na lista?',
      icon: Icons.local_fire_department,
    ));
  }

  // Rule 2: Cake (Bolo)
  if (itemNames.any((name) => name.contains('farinha')) &&
      itemNames.any((name) => name.contains('ovo') || name.contains('leite'))) {
    shortcuts.add(const _ShortcutData(
      label: 'Receitas de bolo?',
      prompt: 'Sugira receitas de bolo simples com os ingredientes que tenho.',
      icon: Icons.cake,
    ));
  }

  // Rule 3: Healthy/Salad
  if (itemNames.any((name) => name.contains('alface') || name.contains('tomate') || name.contains('rúcula'))) {
    shortcuts.add(const _ShortcutData(
      label: 'Dicas para salada?',
      prompt: 'Como posso deixar minha salada mais gostosa com esses ingredientes?',
      icon: Icons.eco,
    ));
  }

  // Rule 4: Cleaning
  if (itemNames.any((name) => name.contains('detergente') || name.contains('sabão') || name.contains('limpeza'))) {
    shortcuts.add(const _ShortcutData(
      label: 'Faxina eficiente?',
      prompt: 'Dicas de como usar esses produtos de limpeza de forma eficiente.',
      icon: Icons.cleaning_services,
    ));
  }

  // Always include Economy Tips and Organize
  shortcuts.add(_ShortcutData(
    label: l10n.economyTips,
    prompt: l10n.economyTipsPrompt,
    icon: Icons.savings_outlined,
  ));

  shortcuts.add(_ShortcutData(
    label: l10n.organizeAisles,
    prompt: l10n.organizeAislesPrompt,
    icon: Icons.map_outlined,
  ));

  // If we still have room, add Quick Recipe
  if (shortcuts.length < 4) {
    shortcuts.add(_ShortcutData(
      label: l10n.quickRecipe,
      prompt: l10n.quickRecipePrompt,
      icon: Icons.restaurant_menu,
    ));
  }
  
  return shortcuts.take(4).toList();
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
    final color = _isSuccess ? Colors.green : null;

    if (widget.isFilled) {
      return FilledButton.icon(
        onPressed: _isSuccess ? null : _handlePress,
        icon: Icon(icon, size: 14),
        label: Text(label, style: const TextStyle(fontSize: 11)),
        style: FilledButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          minimumSize: const Size(0, 28),
          textStyle: theme.textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w700),
        ),
      ).animate(target: _isSuccess ? 1 : 0).shimmer(duration: 400.ms);
    }

    return OutlinedButton.icon(
      onPressed: _isSuccess ? null : _handlePress,
      icon: Icon(icon, size: 14),
      label: Text(label, style: const TextStyle(fontSize: 11)),
      style: OutlinedButton.styleFrom(
        foregroundColor: color,
        side: color != null ? BorderSide(color: color) : null,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        minimumSize: const Size(0, 28),
        textStyle: theme.textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w700),
      ),
    ).animate(target: _isSuccess ? 1 : 0).shake(duration: 400.ms);
  }
}
