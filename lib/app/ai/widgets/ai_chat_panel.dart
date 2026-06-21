import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';
import 'package:shopping_list/models/chat_message.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/suggested_reply.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/models/unit.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import 'package:shopping_list/core/providers/ai_usage_provider.dart';
import 'package:shopping_list/app/ai/widgets/components/chat_bubble.dart';
import 'package:shopping_list/app/ai/widgets/components/chat_history_error.dart';
import 'package:shopping_list/app/ai/widgets/components/chat_input_bar.dart';
import 'package:shopping_list/app/ai/widgets/components/chat_empty_state.dart';
import 'package:shopping_list/app/ai/widgets/components/thinking_indicator.dart';
import 'package:shopping_list/app/ai/widgets/components/long_history_warning.dart';
import 'package:shopping_list/app/ai/widgets/ai_usage_banner.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class AiChatPanel extends ConsumerStatefulWidget {
  const AiChatPanel({
    super.key,
    this.listId,
    this.listName,
    this.compact = false,
    this.onOrganizeRequested,
    this.onItemsAdded,
    this.onNavigateToRecipe,
    this.externalController,
    this.onSendMessage,
    this.isSimulation = false,
  });

  final String? listId;
  final String? listName;
  final bool compact;
  final VoidCallback? onOrganizeRequested;
  final VoidCallback? onItemsAdded;
  final void Function(String recipeId)? onNavigateToRecipe;
  final TextEditingController? externalController;
  final Future<void> Function(String)? onSendMessage;
  final bool isSimulation;

  @override
  AiChatPanelState createState() => AiChatPanelState();
}

class AiChatPanelState extends ConsumerState<AiChatPanel>
    with WidgetsBindingObserver, SingleTickerProviderStateMixin {
  late final TextEditingController _textController;
  final _scrollController = ScrollController();
  final _focusNode = FocusNode();
  late final AnimationController _waveController;
  bool _isSending = false;
  bool _shouldAutoScroll = true;
  bool _showScrollToBottom = false;
  bool _isKeyboardVisible = false;
  late stt.SpeechToText _speech;
  bool _isListening = false;
  final _textFieldKey = GlobalKey<EditableTextState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _textController = widget.externalController ?? TextEditingController();
    _scrollController.addListener(_scrollListener);
    _focusNode.addListener(() => setState(() {}));
    _speech = stt.SpeechToText();
    _waveController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  void didChangeMetrics() {
    if (!mounted) {
      return;
    }
    final bottom = View.of(context).viewInsets.bottom;
    final visible = bottom > 0;
    if (visible != _isKeyboardVisible) {
      final hadFocus = _focusNode.hasFocus;
      setState(() {
        _isKeyboardVisible = visible;
        if (!visible) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      });
      // Layout change causes TextField to briefly detach — re-request focus
      // so the keyboard stays visible when the user tapped the field.
      if (visible && hadFocus) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && !_focusNode.hasFocus) {
            _focusNode.requestFocus();
          }
        });
      }
    }
  }

  void _scrollListener() {
    if (_scrollController.hasClients) {
      final isNearBottom =
          _scrollController.offset >
          _scrollController.position.maxScrollExtent - 50;
      if (_shouldAutoScroll != isNearBottom) {
        _shouldAutoScroll = isNearBottom;
      }
      final showButton =
          !isNearBottom && _scrollController.position.maxScrollExtent > 0;
      if (_showScrollToBottom != showButton) {
        setState(() => _showScrollToBottom = showButton);
      }
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _scrollController.removeListener(_scrollListener);
    if (widget.externalController == null) {
      _textController.dispose();
    }
    _focusNode.dispose();
    _waveController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom({bool force = false}) {
    if (_scrollController.hasClients && (_shouldAutoScroll || force)) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
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
      await ref
          .read(shoppingListItemsProvider(listId).notifier)
          .addItem(
            listId: listId,
            name: text,
            quantity: 1,
            categoryId: 'others',
            unit: Unit.un,
          );
      widget.onItemsAdded?.call();
      // Quick-add bypasses the assistant — confirm the item landed on the list
      // so the user isn't left wondering why Kipi didn't reply.
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.itemAddedToList),
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 3),
          ),
        );
      }
    } on Exception catch (e) {
      debugPrint('Erro ao adicionar item rápido: $e');
      if (mounted) {
        unawaited(
          ScaffoldMessenger.of(context)
              .showSnackBar(
                SnackBar(
                  content: Text(AppLocalizations.of(context)!.somethingWentWrong),
                ),
              )
              .closed,
        );
      }
    }
  }

  Future<void> _startDictation() async {
    if (_isListening) {
      setState(() => _isListening = false);
      _waveController.stop();
      await _speech.stop();
      return;
    }
    final status = await Permission.microphone.request();
    if (!status.isGranted) {
      return;
    }
    final available = await _speech.initialize(
      onStatus: (val) {
        if (val == 'done' || val == 'notListening') {
          if (mounted) {
            setState(() => _isListening = false);
            _waveController.stop();
          }
        }
      },
      onError: (val) {
        if (mounted) {
          setState(() => _isListening = false);
          _waveController.stop();
        }
      },
    );
    if (!available) {
      return;
    }
    setState(() => _isListening = true);
    unawaited(_waveController.repeat());
    if (!mounted) {
      return;
    }
    final locale = Localizations.localeOf(context);
    await _speech.listen(
      onResult: (val) {
        _textController.text = val.recognizedWords;
      },
      listenOptions: stt.SpeechListenOptions(localeId: locale.toString()),
    );
  }

  Future<void> sendMessage([String? manualText]) async {
    final text = manualText ?? _textController.text.trim();
    if (text.isEmpty || _isSending) {
      return;
    }

    if (widget.onSendMessage != null) {
      setState(() => _isSending = true);
      try {
        await widget.onSendMessage!(text);
        _textController.clear();
      } finally {
        if (mounted) {
          setState(() => _isSending = false);
        }
      }
      return;
    }

    final canSend =
        widget.isSimulation ||
        ref.read(aiUsageStateProvider.notifier).canSend();
    final isPremium =
        widget.isSimulation || (ref.read(premiumProvider).value ?? false);

    unawaited(HapticFeedback.lightImpact());

    setState(() {
      _isSending = true;
      _shouldAutoScroll = true;
    });
    _textController.clear();

    try {
      var sessionId = ref.read(activeChatSessionIdProvider(widget.listId));
      final isNewSession = sessionId == null;
      if (isNewSession) {
        sessionId =
            await ref
                .read(chatSessionsProvider(widget.listId).notifier)
                .startNewSession();
      }
      if (!mounted) {
        return;
      }

      // A new session starts by loading its empty Firestore history. Sending
      // before that build completes lets the empty result overwrite the first
      // user/assistant messages.
      if (isNewSession) {
        await ref.read(chatSessionProvider(widget.listId, sessionId).future);
        if (!mounted) {
          return;
        }
      }

      if (!canSend && !isPremium) {
        final userMessage = ChatMessage(role: 'user', content: text);
        await ref
            .read(chatSessionProvider(widget.listId, sessionId).notifier)
            .addMessage(userMessage);
      } else {
        await ref
            .read(chatSessionProvider(widget.listId, sessionId).notifier)
            .sendMessage(text);
      }
    } finally {
      if (mounted) {
        setState(() => _isSending = false);
      }
    }
  }

  Future<void> _cancelRequest() async {
    final sessionId = ref.read(activeChatSessionIdProvider(widget.listId));
    if (sessionId != null) {
      ref
          .read(chatSessionProvider(widget.listId, sessionId).notifier)
          .cancelRequest();
      if (mounted) {
        setState(() => _isSending = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final sessionId = ref.watch(activeChatSessionIdProvider(widget.listId));
    final chatState = ref.watch(chatSessionProvider(widget.listId, sessionId));
    ref.watch(chatSessionsProvider(widget.listId));
    final isStreaming = ref.watch(chatStreamingProvider(widget.listId));
    final isThinking = ref.watch(chatThinkingProvider(widget.listId));
    final items =
        widget.listId != null
            ? ref.watch(shoppingListItemsProvider(widget.listId!)).value ??
                <ShoppingItem>[]
            : <ShoppingItem>[];

    ref.listen(chatSessionProvider(widget.listId, sessionId), (prev, next) {
      final msgs = next.value;
      if (msgs == null) {
        return;
      }
      if (msgs.isEmpty) {
        if (_showScrollToBottom || !_shouldAutoScroll) {
          setState(() {
            _showScrollToBottom = false;
            _shouldAutoScroll = true;
          });
        }
      } else if (prev?.value?.length != msgs.length) {
        WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
      }
    });

    ref.listen(chatStreamingTextProvider(widget.listId), (_, next) {
      if (next != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
      }
    });

    final messages = chatState.value ?? const <ChatMessage>[];
    final lastMessage = messages.isNotEmpty ? messages.last : null;
    final suggestedReplies =
        lastMessage != null &&
                lastMessage.role != 'user' &&
                !isStreaming &&
                !isThinking &&
                !lastMessage.isTeaser
            ? lastMessage.suggestedReplies
            : null;
    // Suggestions collapse while the keyboard is up so the input is not buried
    // under stacked chrome (usage banner + suggestions + field) on small screens.
    final showSuggestions =
        suggestedReplies != null &&
        suggestedReplies.isNotEmpty &&
        !widget.isSimulation &&
        !_isKeyboardVisible;
    final isPremiumUser = ref.watch(premiumProvider).value ?? false;
    final usageCountVal = ref.watch(aiUsageProvider).value ?? 0;
    final isUsageBannerShowing =
        !isPremiumUser && usageCountVal >= kAiUsageWarningThreshold;
    final showSuggestionsEffective = showSuggestions && !isUsageBannerShowing;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                chatState.when(
                  data: (messages) {
                    if (messages.isEmpty) {
                      return ChatEmptyState(onPromptSelected: sendMessage);
                    }

                    return ListView.builder(
                      controller: _scrollController,
                      padding: const EdgeInsets.fromLTRB(
                        Spacing.md,
                        Spacing.xs,
                        Spacing.md,
                        Spacing.md,
                      ),
                      itemCount: messages.length + (isThinking ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index == 0 && messages.length > 20) {
                          return const LongHistoryWarning();
                        }

                        if (index < messages.length) {
                          final message = messages[index];
                          return ChatBubble(
                            message: message,
                            listId: widget.listId,
                            items: items,
                            isLastMessage: index == messages.length - 1,
                            onScrollToBottom: _scrollToBottom,
                          );
                        } else {
                          return ThinkingIndicator(listId: widget.listId);
                        }
                      },
                    );
                  },
                  loading: () => const _ChatLoadingSkeleton(),
                  error:
                      (err, stack) => _ChatErrorView(
                        error: err,
                        onRetry:
                            () => ref.invalidate(
                              chatSessionProvider(widget.listId, sessionId),
                            ),
                      ),
                ),
                if (_showScrollToBottom)
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: Spacing.md,
                    child: Center(
                      child: TextButton.icon(
                        onPressed: () => _scrollToBottom(force: true),
                        icon: const Icon(
                          Icons.arrow_downward_rounded,
                          size: 16,
                        ),
                        label: Text(
                          AppLocalizations.of(context)!.scrollToBottom,
                          style: theme.textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: theme.colorScheme.primaryContainer,
                          foregroundColor: theme.colorScheme.onPrimaryContainer,
                          padding: const EdgeInsets.symmetric(
                            horizontal: Spacing.md,
                            vertical: Spacing.xs,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              RadiusTokens.full,
                            ),
                            side: BorderSide(
                              color: theme.colorScheme.outlineVariant.withAlpha(
                                (0.3 * 255).toInt(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          if (!widget.isSimulation) const AiUsageBanner(),
          if (showSuggestionsEffective)
            _SuggestedRepliesBar(
              replies: suggestedReplies!,
              onSelected: sendMessage,
            ),
          ChatInputBar(
            controller: _textController,
            focusNode: _focusNode,
            textFieldKey: _textFieldKey,
            isSending: _isSending || isStreaming,
            isListening: _isListening,
            inputBlocked: isStreaming && !isThinking,
            isKeyboardVisible: _isKeyboardVisible,
            onSend: sendMessage,
            onQuickAdd: _quickAddItem,
            onStartDictation: _startDictation,
            onCancelRequest: _cancelRequest,
            listId: widget.listId,
            isSimulation: widget.isSimulation,
            waveController: _waveController,
          ),
        ],
      ),
    );
  }
}

class _ChatErrorView extends StatelessWidget {
  const _ChatErrorView({required this.error, required this.onRetry});

  final Object error;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final offline =
        classifyChatHistoryError(error) == ChatHistoryErrorKind.offline;
    final title =
        offline ? l10n.chatHistoryOfflineTitle : l10n.chatHistoryErrorTitle;
    final body =
        offline ? l10n.chatHistoryOfflineBody : l10n.chatHistoryErrorBody;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              offline ? Icons.wifi_off_rounded : Icons.cloud_off_rounded,
              size: 48,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: Spacing.md),
            Text(
              title,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: Spacing.xs),
            Text(
              body,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                height: 1.4,
                // 0.92 keeps the muted feel while staying clear of the 4.5:1
                // WCAG AA floor on the surface background in both themes.
                color: theme.colorScheme.onSurface.withValues(alpha: 0.92),
              ),
            ),
            const SizedBox(height: Spacing.lg),
            FilledButton.tonalIcon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh_rounded, size: 18),
              label: Text(l10n.retry),
            ),
          ],
        ),
      ),
    );
  }
}

/// Horizontal row of suggested replies pinned just above the input bar.
class _SuggestedRepliesBar extends StatelessWidget {
  const _SuggestedRepliesBar({required this.replies, required this.onSelected});

  final List<SuggestedReply> replies;
  final void Function(String prompt) onSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // Content-sized height (no magic constant) so the bar grows with the
    // user's text scale instead of clipping the chip. Horizontal scroll keeps
    // labels on one line; a maxWidth cap + ellipsis stop a long model-authored
    // label from dominating the row. The right-edge fade hints that more chips
    // sit off-screen when the row overflows.
    final scroller = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.sm,
        vertical: Spacing.xs,
      ),
      child: Row(
        children: [
          for (final (index, reply) in replies.indexed) ...[
            if (index > 0) const SizedBox(width: Spacing.xs),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 240),
              child: ActionChip(
                key: ValueKey('chat_suggestion_${reply.prompt}'),
                avatar: Icon(
                  _suggestionIcon(reply.icon),
                  size: 16,
                  color: theme.colorScheme.primary,
                ),
                label: Text(
                  reply.label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                onPressed: () {
                  unawaited(HapticFeedback.selectionClick());
                  onSelected(reply.prompt);
                },
                side: BorderSide(
                  color: theme.colorScheme.primary.withAlpha(42),
                ),
                backgroundColor: theme.colorScheme.primary.withAlpha(14),
                labelStyle: theme.textTheme.labelMedium?.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ],
      ),
    );

    return ShaderMask(
      shaderCallback:
          (rect) => const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.black, Colors.black, Colors.transparent],
            stops: [0.0, 0.92, 1.0],
          ).createShader(rect),
      blendMode: BlendMode.dstIn,
      child: scroller,
    );
  }

  IconData _suggestionIcon(String icon) {
    return switch (icon) {
      'add' || 'add_circle' => Icons.add_circle_outline_rounded,
      'delete' || 'remove' => Icons.delete_outline_rounded,
      'recipe' || 'restaurant' => Icons.restaurant_menu_rounded,
      'report' || 'pdf' => Icons.picture_as_pdf_outlined,
      'shopping_cart' || 'cart' => Icons.shopping_cart_outlined,
      'check' || 'done' => Icons.check_circle_outline_rounded,
      _ => Icons.arrow_outward_rounded,
    };
  }
}

/// Placeholder transcript shown while a session's history loads. Mirrors the
/// real bubble rhythm (assistant left, user right) so the screen settles into
/// content instead of flashing empty → spinner → messages. Static by design —
/// a calm skeleton over a pulsing one, and safe under reduced motion.
class _ChatLoadingSkeleton extends StatelessWidget {
  const _ChatLoadingSkeleton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final block = theme.colorScheme.surfaceContainerHigh;
    final avatar = theme.colorScheme.primary.withValues(alpha: 0.10);

    Widget bar(double widthFactor, {required bool fromUser}) {
      return Align(
        alignment: fromUser ? Alignment.centerRight : Alignment.centerLeft,
        child: FractionallySizedBox(
          widthFactor: widthFactor,
          child: Container(
            height: 44,
            decoration: BoxDecoration(
              color: block,
              borderRadius: BorderRadius.circular(RadiusTokens.bubble),
            ),
          ),
        ),
      );
    }

    Widget assistantRow(double widthFactor) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(color: avatar, shape: BoxShape.circle),
          ),
          const SizedBox(width: Spacing.xs),
          Expanded(child: bar(widthFactor, fromUser: false)),
        ],
      );
    }

    return ExcludeSemantics(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(
          Spacing.md,
          Spacing.md,
          Spacing.md,
          Spacing.md,
        ),
        children: [
          assistantRow(0.72),
          const SizedBox(height: Spacing.md),
          bar(0.5, fromUser: true),
          const SizedBox(height: Spacing.md),
          assistantRow(0.85),
        ],
      ),
    );
  }
}
