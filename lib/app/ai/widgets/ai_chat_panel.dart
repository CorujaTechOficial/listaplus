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
import 'package:shimmer/shimmer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import '../../../utils/test_utils.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../../models/chat_message.dart';
import '../../../providers/chat_provider.dart';
import '../../../providers/auth_provider.dart';
import '../../../widgets/animated_typing_dots.dart';
import '../../../providers/premium_provider.dart';
import '../../../models/ai_usage.dart';
import '../../../providers/ai_usage_provider.dart';
import '../../../theme/tokens.dart';
import '../../../theme/colors.dart';
import '../../../theme/page_transitions.dart';
import '../../../screens/paywall_screen.dart';
import '../../../models/category_data.dart';
import '../../../models/unit.dart';
import '../../../providers/shopping_list_provider.dart';
import '../../../models/shopping_item.dart';
import '../../../providers/voice_input_provider.dart';
import '../../../providers/ai_config_provider.dart';
import '../../../providers/ai_service_provider.dart';
import '../../../models/ai_config.dart';
import '../../../widgets/artifact_widgets/artifact_card_shell.dart';
import '../../../widgets/artifact_widgets/artifact_content_renderer.dart';
import '../../../widgets/edit_item_dialog.dart';
import 'package:audio_waveforms/audio_waveforms.dart';

class AiChatPanel extends ConsumerStatefulWidget {
  const AiChatPanel({
    super.key,
    this.listId,
    this.listName,
    this.compact = false,
    this.onOrganizeRequested,
    this.onItemsAdded,
  });

  final String? listId;
  final String? listName;
  final bool compact;
  final VoidCallback? onOrganizeRequested;
  final VoidCallback? onItemsAdded;

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
  int _prevMessageCount = 0;

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
      if (!canSend && !isPremium) {
        // Add user message first
        final userMessage = ChatMessage(role: 'user', content: text);
        await ref.read(chatSessionProvider(widget.listId).notifier).addMessage(userMessage);

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

        await ref.read(chatSessionProvider(widget.listId).notifier).addMessage(
          ChatMessage(
            role: 'assistant',
            content: teaserText,
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
    final aiConfigAsync = ref.watch(aiConfigStateProvider);
    final aiConfig = aiConfigAsync.value ?? const AiConfig(name: 'IA', iconKey: 'auto_awesome');
    final aiUsageAsync = ref.watch(aiUsageStateProvider);
    final canSend = isPremium || (aiUsageAsync.value?.isExhausted == false);
    final remaining = aiUsageAsync.value?.remainingDaily ?? 0;

    final chatState = ref.watch(chatSessionProvider(widget.listId));
    final allMessages = chatState.value ?? [];

    final itemsAsync = widget.listId != null 
        ? ref.watch(shoppingListItemsProvider(widget.listId!))
        : const AsyncValue<List<ShoppingItem>>.data([]);
    final items = itemsAsync.value ?? [];
    // ignore: prefer_int_literals
    final totalValue = items.fold(0.0, (sum, item) => sum + (item.estimatedPrice ?? 0) * item.quantity);

    final shortcuts = _getDynamicShortcuts(items, l10n, allMessages);
    final isStreaming = ref.watch<bool>(chatStreamingProvider(widget.listId));
    final isThinking = ref.watch<bool>(chatThinkingProvider(widget.listId));
    final activityDescription = ref.watch<String?>(chatActivityProvider(widget.listId));

    final voiceState = ref.watch(voiceInputProvider);

    return Stack(
      children: [
        Column(
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
                              totalValue: totalValue,
                              listId: widget.listId,
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
                            const SizedBox(height: 16),
                            SizedBox(
                              width: 90,
                              height: 90,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  _AiGlowOrb(color: theme.colorScheme.primary),
                                  CircleAvatar(
                                    radius: 32,
                                    backgroundColor: theme.colorScheme.primaryContainer,
                                    child: Icon(aiConfig.iconData, size: 32, color: theme.colorScheme.primary),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              widget.listId != null ? l10n.listHelp : l10n.generalHelp,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
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
                            if (widget.listName != null) ...[
                              const SizedBox(height: 12),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.secondaryContainer.withAlpha((0.3 * 255).toInt()),
                                  borderRadius: BorderRadius.circular(RadiusTokens.md),
                                  border: Border.all(color: theme.colorScheme.secondary.withAlpha((0.2 * 255).toInt())),
                                ),
                                child: Text(
                                  'Lista: ${widget.listName}',
                                  style: theme.textTheme.labelMedium?.copyWith(
                                    color: theme.colorScheme.onSecondaryContainer,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                            if (shortcuts.isNotEmpty) ...[
                              const SizedBox(height: 24),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Perguntas sugeridas:',
                                    style: theme.textTheme.labelMedium?.copyWith(
                                      color: theme.colorScheme.onSurfaceVariant.withAlpha((0.6 * 255).toInt()),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  children: shortcuts.take(3).map((shortcut) => Card(
                                    margin: const EdgeInsets.only(bottom: 8),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      side: BorderSide(color: theme.colorScheme.outlineVariant.withAlpha((0.4 * 255).toInt())),
                                    ),
                                    color: theme.colorScheme.surfaceContainerLow,
                                    child: InkWell(
                                      onTap: !_isSending ? () {
                                        _textController.text = shortcut.prompt;
                                        _sendMessage();
                                      } : null,
                                      borderRadius: BorderRadius.circular(12),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                        child: Row(
                                          children: [
                                            Icon(shortcut.icon, color: theme.colorScheme.primary, size: 20),
                                            const SizedBox(width: 12),
                                            Expanded(
                                              child: Text(
                                                shortcut.label,
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
                    padding: const EdgeInsets.fromLTRB(12, 12, 12, 80),
                    itemCount: messages.length + 1 + (isThinking && (messages.isEmpty || messages.last.role != 'assistant') ? 1 : 0),
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
                              totalValue: totalValue,
                              listId: widget.listId,
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
                                        'Histórico longo: o assistente foca nas últimas mensagens para otimizar o desempenho.',
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Respostas rápidas:',
                                      style: theme.textTheme.labelSmall?.copyWith(
                                        color: theme.colorScheme.onSurfaceVariant.withAlpha((0.6 * 255).toInt()),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Wrap(
                                      spacing: 8,
                                      runSpacing: 4,
                                      children: message.suggestedReplies!.take(2).toList().asMap().entries.map((MapEntry<int, String> entry) {
                                        final index = entry.key;
                                        final reply = entry.value;
                                        return _SuggestedReplyChip(
                                          label: reply,
                                          onTap: () {
                                            _textController.text = reply;
                                            _sendMessage();
                                          },
                                        ).animate()
                                         .fadeIn(
                                           duration: DurationTokens.normal,
                                           delay: Duration(milliseconds: index * 100),
                                         )
                                         .slideY(
                                           begin: 0.3,
                                           end: 0,
                                           duration: DurationTokens.normal,
                                           curve: Curves.easeOutBack,
                                           delay: Duration(milliseconds: index * 100),
                                         );
                                      }).toList(),
                                    ),
                                  ],
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
        ),
        if (voiceState == VoiceInputState.recording)
          _buildCompactVoiceIndicator(context, l10n, theme),
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

    final aiConfig = ref.watch(aiConfigStateProvider).value ?? const AiConfig(name: 'IA', iconKey: 'auto_awesome');
    return Padding(
      padding: const EdgeInsets.only(left: 40, bottom: 2, top: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(aiConfig.iconData, size: 10, color: theme.colorScheme.primary),
          const SizedBox(width: 4),
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
              theme.colorScheme.primaryContainer.withAlpha((0.5 * 255).toInt()),
              theme.colorScheme.secondaryContainer.withAlpha((0.3 * 255).toInt()),
            ],
          ),
          borderRadius: BorderRadius.circular(RadiusTokens.md),
          border: Border.all(color: theme.colorScheme.primary.withAlpha((0.2 * 255).toInt())),
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
    final isPremium = ref.watch(premiumProvider).value ?? false;
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
                color: Colors.black.withAlpha((0.05 * 255).toInt()),
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
                  child: ValueListenableBuilder<TextEditingValue>(
                    valueListenable: _textController,
                    builder: (context, value, child) {
                      final charCount = value.text.length;
                      return TextField(
                        controller: _textController,
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: _isListening ? 'Ouvindo...' : l10n.chatHint,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: _isListening ? theme.colorScheme.primaryContainer.withAlpha((0.3 * 255).toInt()) : Colors.grey.withAlpha((0.1 * 255).toInt()),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          counterText: charCount > 300 ? '$charCount/1000' : null,
                          counterStyle: theme.textTheme.labelSmall?.copyWith(
                            color: charCount > 800 ? theme.colorScheme.error : theme.colorScheme.onSurfaceVariant.withAlpha((0.6 * 255).toInt()),
                          ),
                          prefixIcon: _isListening 
                              ? const RepaintBoundary(child: _MicRipple())
                              : null,
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
                      );
                    },
                  ),
                ),
                const SizedBox(width: 8),
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: _textController,
                  builder: (context, value, child) {
                    final hasText = value.text.trim().isNotEmpty;
                    return CircleAvatar(
                      backgroundColor: theme.colorScheme.primary,
                      child: _isSending
                          ? IconButton(
                              key: const ValueKey('chat_stop_button'),
                              icon: const Icon(Icons.stop, color: Colors.white),
                              onPressed: () {
                                ref.read(chatSessionProvider(widget.listId).notifier).cancelRequest();
                              },
                            )
                          : hasText
                              ? IconButton(
                                  key: const ValueKey('chat_send_button'),
                                  icon: const Icon(
                                    Icons.send,
                                    color: Colors.white,
                                  ),
                                  onPressed: _sendMessage,
                                )
                              : _isListening
                                  ? IconButton(
                                      key: const ValueKey('chat_mic_listening_button'),
                                      icon: const Icon(Icons.stop, color: Colors.white),
                                      onPressed: _listen,
                                    )
                                  : IconButton(
                                      key: const ValueKey('chat_mic_button'),
                                      tooltip: isPremium ? l10n.aiVoiceCommandTooltip : l10n.voiceTranscriptionTooltip,
                                      icon: const Icon(
                                        Icons.mic,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        if (!isPremium) {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              content: const Text('Comandos de voz avançados são Pro. Ativando ditado básico...'),
                                              duration: const Duration(seconds: 4),
                                              action: SnackBarAction(
                                                label: 'Ver Pro',
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    fadeSlideRoute<void>(const PaywallScreen()),
                                                  );
                                                },
                                              ),
                                            ),
                                          );
                                          _listen();
                                        } else {
                                          ref.read(voiceInputProvider.notifier).startRecording();
                                        }
                                      },
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

  Widget _buildCompactVoiceIndicator(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
  ) {
    final voiceNotifier = ref.read(voiceInputProvider.notifier);
    final controller = voiceNotifier.recorderController;

    return Container(
      margin: const EdgeInsets.fromLTRB(12, 0, 12, 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withAlpha((0.9 * 255).toInt()),
        borderRadius: BorderRadius.circular(RadiusTokens.lg),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha((0.1 * 255).toInt()),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.mic, color: Colors.redAccent, size: 20)
              .animate(onPlay: (c) => isTestMode ? null : c.repeat(reverse: true))
              .scale(end: const Offset(1.2, 1.2), duration: 600.ms),
          const SizedBox(width: 12),
          Expanded(
            child: SizedBox(
              height: 32,
              child: controller != null
                  ? AudioWaveforms(
                      size: const Size(double.infinity, 32),
                      recorderController: controller,
                      enableGesture: false,
                      waveStyle: WaveStyle(
                        waveColor: theme.colorScheme.primary,
                        showDurationLabel: false,
                        spacing: 4,
                        extendWaveform: true,
                        waveCap: StrokeCap.round,
                      ),
                    )
                  : const Text('Ouvindo...', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(width: 12),
          IconButton.filledTonal(
            icon: const Icon(Icons.close, size: 18),
            onPressed: () => ref.read(voiceInputProvider.notifier).cancelRecording(),
            style: IconButton.styleFrom(
              backgroundColor: theme.colorScheme.errorContainer,
              foregroundColor: theme.colorScheme.onErrorContainer,
              minimumSize: const Size(32, 32),
              padding: EdgeInsets.zero,
            ),
          ),
          const SizedBox(width: 8),
          IconButton.filled(
            icon: const Icon(Icons.check, size: 18),
            onPressed: () => ref.read(voiceInputProvider.notifier).stopRecordingAndSend(widget.listId),
            style: IconButton.styleFrom(
              backgroundColor: theme.colorScheme.primary,
              foregroundColor: theme.colorScheme.onPrimary,
              minimumSize: const Size(32, 32),
              padding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
    ).animate().slideY(begin: 0.5, end: 0).fadeIn();
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
    this.listId,
    this.listName,
    required this.isSearching,
    required this.onSearchToggle,
    this.totalValue = 0,
  });

  final AppLocalizations l10n;
  final ThemeData theme;
  final bool isPremium;
  final AsyncValue<AiUsage> aiUsageAsync;
  final int remaining;
  final String? listId;
  final String? listName;
  final bool isSearching;
  final VoidCallback onSearchToggle;
  final double totalValue;

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
              Hero(
                tag: 'ai_assistant_icon_${listId ?? "global"}',
                child: Icon(Icons.auto_awesome, size: 16, color: theme.colorScheme.primary),
              ),
              const SizedBox(width: Spacing.xs),
              Text(
                listName ?? l10n.generalAssistant,
                style: theme.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: theme.colorScheme.primary,
                ),
              ),
              if (totalValue > 0) ...[
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withAlpha((0.1 * 255).toInt()),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'R\$ ${totalValue.toStringAsFixed(2)}',
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ],
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
          ? theme.colorScheme.primaryContainer.withAlpha((0.3 * 255).toInt())
          : theme.colorScheme.surfaceContainerHighest.withAlpha((0.3 * 255).toInt()),
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
        style: theme.textTheme.labelMedium?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w600,
        ),
      ),
      onPressed: () {
        unawaited(HapticFeedback.lightImpact());
        onTap();
      },
      backgroundColor: theme.colorScheme.primaryContainer.withAlpha((0.25 * 255).toInt()),
      side: BorderSide(color: theme.colorScheme.primary.withAlpha((0.35 * 255).toInt())),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.full)),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
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
  });

  final ChatMessage message;
  final String? listId;
  final bool isLastInGroup;
  final bool isLastMessage;
  final VoidCallback? onOrganizeRequested;
  final VoidCallback? onItemsAdded;

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
    if (_revealedChars < fullContent.length) {
      setState(() => _revealedChars = fullContent.length);
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
    if (fullContent.length <= _revealedChars) {
      return;
    }
    _typeTimer?.cancel();
    _typeTimer = Timer.periodic(const Duration(milliseconds: 16), (timer) {
      if (!mounted || _revealedChars >= fullContent.length) {
        timer.cancel();
        return;
      }
      setState(() {
        _revealedChars = (_revealedChars + 5).clamp(0, fullContent.length);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final isUser = widget.message.role == 'user';
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final aiConfig = ref.watch(aiConfigStateProvider).value ?? const AiConfig(name: 'IA', iconKey: 'auto_awesome');
    final actions = widget.message.actions;
    final timeStr = '${widget.message.timestamp.hour.toString().padLeft(2, '0')}:${widget.message.timestamp.minute.toString().padLeft(2, '0')}';
    final authState = ref.watch<AsyncValue<User?>>(authProvider);
    final user = authState.value;
    final isStreaming = ref.watch(chatStreamingProvider(widget.listId));
    final isThinking = ref.watch(chatThinkingProvider(widget.listId));
    final streamingExtra = ref.watch(chatStreamingTextProvider(widget.listId));
    final showStreamingContent = widget.isLastMessage && isStreaming && !isUser && streamingExtra != null;
    final rawContent = showStreamingContent ? streamingExtra : widget.message.content;

    final items = widget.listId != null 
        ? ref.watch(shoppingListItemsProvider(widget.listId!)).value ?? []
        : <ShoppingItem>[];

    final effectiveContent = showStreamingContent
        ? rawContent.substring(0, _revealedChars.clamp(0, rawContent.length))
        : (widget.message.isTeaser ? rawContent : rawContent);

    if (showStreamingContent && rawContent != _lastContent) {
      _lastContent = rawContent;
      _revealedChars = _revealedChars.clamp(0, rawContent.length).toInt();
      if (_revealedChars < rawContent.length) {
        _updateTyping(rawContent);
      }
    }
    if (!showStreamingContent && _lastContent.isNotEmpty) {
      if (_revealedChars < _lastContent.length) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) {
            _revealAll(widget.message.content);
          }
        });
      }
      _lastContent = '';
      _typeTimer?.cancel();
    }

    final borderRadius = BorderRadius.only(
      topLeft: const Radius.circular(16),
      topRight: const Radius.circular(16),
      bottomLeft: Radius.circular(isUser ? 16 : (widget.isLastInGroup ? 4 : 16)),
      bottomRight: Radius.circular(isUser ? (widget.isLastInGroup ? 4 : 16) : 16),
    );

    return Padding(
      padding: EdgeInsets.only(bottom: widget.isLastInGroup ? 6 : 1),
      child: Column(
        crossAxisAlignment: isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (!isUser) ...[
                if (widget.isLastInGroup)
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4, bottom: 2),
                    child: Hero(
                      tag: 'ai_chat_avatar_${widget.message.id}',
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: theme.colorScheme.primaryContainer,
                        child: Icon(aiConfig.iconData, size: 14, color: theme.colorScheme.primary),
                      ),
                    ),
                  )
                else
                  const SizedBox(width: 32),
              ],
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
                            ref.read(chatSessionProvider(widget.listId).notifier).setFeedback(
                              widget.message.id, 
                              widget.message.feedback == 1 ? null : 1,
                            );
                          },
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width * 0.82,
                                ),
                                decoration: BoxDecoration(
                                  color: widget.message.isError
                                      ? theme.colorScheme.errorContainer
                                      : (isUser
                                          ? theme.colorScheme.primary
                                          : theme.colorScheme.surfaceContainerHighest),
                                  borderRadius: borderRadius,
                                  border: !isUser
                                      ? Border.all(
                                          color: theme.colorScheme.outlineVariant.withAlpha((0.3 * 255).toInt()),
                                        )
                                      : null,
                                ),
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
                                              label: const Text('Desbloquear Resposta Completa', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
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
                                               ref.watch(chatActivityProvider(widget.listId)) ?? 'Pensando...',
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
                                         child: _buildMarkdownContent(
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
                                        'Isso pode ocorrer devido a oscilações de rede ou indisponibilidade temporária. Por favor, tente novamente.',
                                        style: theme.textTheme.bodySmall?.copyWith(
                                          color: theme.colorScheme.onErrorContainer.withAlpha((0.8 * 255).toInt()),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      FilledButton.icon(
                                        onPressed: () {
                                          unawaited(HapticFeedback.lightImpact());
                                          ref.read(chatSessionProvider(widget.listId).notifier).retryMessage();
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
                                    const SizedBox(height: 2),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          timeStr,
                                          style: theme.textTheme.labelSmall?.copyWith(
                                            fontSize: 9,
                                            color: isUser
                                                ? theme.colorScheme.onPrimary.withAlpha((0.7 * 255).toInt())
                                                : theme.colorScheme.onSurfaceVariant.withAlpha((0.5 * 255).toInt()),
                                          ),
                                        ),
                                        if (!isUser && (widget.message.content.isNotEmpty || showStreamingContent) && !widget.message.isError) ...[
                                          const SizedBox(width: 6),
                                          GestureDetector(
                                            onTap: () {
                                              unawaited(HapticFeedback.selectionClick());
                                              _copyToClipboard(context);
                                            },
                                            child: Icon(
                                              Icons.copy_rounded,
                                              size: 12,
                                              color: theme.colorScheme.onSurfaceVariant.withAlpha((0.4 * 255).toInt()),
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
                                            onPressed: () async {
                                              unawaited(HapticFeedback.lightImpact());
                                              await ref.read(chatSessionProvider(widget.listId).notifier).executeAction(widget.message.id, 'add_items');
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
                                                Navigator.pop(context); // Close chat sheet
                                                widget.onOrganizeRequested!();
                                              } else {
                                                ref.read(chatSessionProvider(widget.listId).notifier).executeAction(widget.message.id, 'organize');
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
                              if (!isUser)
                                Positioned(
                                  top: -8,
                                  left: 8,
                                  child: Icon(
                                    Icons.auto_awesome,
                                    size: 14,
                                    color: theme.colorScheme.primary.withAlpha((0.8 * 255).toInt()),
                                  ).animate(onPlay: (c) => isTestMode ? null : c.repeat(reverse: true))
                                   .shimmer(duration: 2.seconds)
                                   .scale(begin: const Offset(0.9, 0.9), end: const Offset(1.1, 1.1)),
                                ),
                            ],
                          ),
                        ),
              ),
              if (isUser) ...[
                if (widget.isLastInGroup)
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
          if (!isUser && !widget.message.isError && !widget.message.isTeaser && widget.message.content.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 44, top: 4, bottom: 4),
              child: Row(
                children: [
                  _FeedbackButton(
                    icon: widget.message.feedback == 1 ? Icons.thumb_up : Icons.thumb_up_outlined,
                    isSelected: widget.message.feedback == 1,
                    onTap: () {
                      unawaited(HapticFeedback.lightImpact());
                      ref.read(chatSessionProvider(widget.listId).notifier).setFeedback(
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
                      ref.read(chatSessionProvider(widget.listId).notifier).setFeedback(
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
                        ref.read(chatSessionProvider(widget.listId).notifier).regenerate(widget.message.id);
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

  void _showItemOptions(BuildContext context, ShoppingItem item) {
    unawaited(HapticFeedback.mediumImpact());
    showDialog<void>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(item.name),
        content: const Text('O que deseja fazer com este item?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
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
            child: const Text('Ver Detalhes'),
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
    if (isUser) {
      final userStyle = MarkdownStyleSheet(
        a: TextStyle(color: theme.colorScheme.onPrimary.withAlpha((0.7 * 255).toInt()), decoration: TextDecoration.underline),
        p: TextStyle(color: theme.colorScheme.onPrimary),
        code: TextStyle(
          fontFamily: 'monospace',
          fontSize: 13,
          color: theme.colorScheme.onPrimary,
          backgroundColor: theme.colorScheme.onPrimary.withAlpha((0.15 * 255).toInt()),
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
        blockquote: TextStyle(color: theme.colorScheme.onPrimary.withAlpha((0.7 * 255).toInt()), fontStyle: FontStyle.italic),
        listBullet: TextStyle(color: theme.colorScheme.onPrimary),
        codeblockDecoration: BoxDecoration(
          color: theme.colorScheme.onPrimary.withAlpha((0.1 * 255).toInt()),
          borderRadius: BorderRadius.circular(6),
        ),
        horizontalRuleDecoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: theme.colorScheme.onPrimary.withAlpha((0.3 * 255).toInt())),
          ),
        ),
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
                color: (isDark ? Colors.white : Colors.black).withAlpha((0.5 * 255).toInt()),
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
          color: theme.colorScheme.primary.withAlpha((0.2 * 255).toInt()),
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
              child: AgentActionBlock(step: step).animate().fadeIn(duration: 200.ms).slideY(begin: 0.1, end: 0),
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
                      .read(chatSessionProvider(listId).notifier)
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
  });

  final AgentStep step;

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
    Widget leading;
    switch (status) {
      case AgentStepStatus.pending:
        leading = Icon(
          Icons.radio_button_unchecked,
          size: 14,
          color: theme.colorScheme.onSurfaceVariant.withAlpha((0.5 * 255).toInt()),
        );
        break;
      case AgentStepStatus.running:
        leading = SizedBox(
          width: 14,
          height: 14,
          child: CircularProgressIndicator(
            strokeWidth: 1.5,
            valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
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
    }

    // Text style based on status
    final textStyle = theme.textTheme.bodyMedium?.copyWith(
      fontSize: 12,
      fontWeight: status == AgentStepStatus.running ? FontWeight.w600 : FontWeight.normal,
      decoration: status == AgentStepStatus.undone ? TextDecoration.lineThrough : null,
      color: status == AgentStepStatus.undone
          ? theme.colorScheme.onSurfaceVariant.withAlpha((0.5 * 255).toInt())
          : (status == AgentStepStatus.running ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant),
    );

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(RadiusTokens.sm),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withAlpha((0.4 * 255).toInt()),
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
                      step.description,
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

