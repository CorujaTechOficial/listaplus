import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/chat_message.dart';
import '../providers/chat_provider.dart';
import '../providers/premium_provider.dart';
import '../theme/tokens.dart';
import '../theme/page_transitions.dart';
import '../widgets/premium_gate.dart';
import 'paywall_screen.dart';

class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({super.key, this.listId, this.listName});

  final String? listId;
  final String? listName;

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  final _textController = TextEditingController();
  final _scrollController = ScrollController();
  bool _isSending = false;

  // coverage:ignore-start
  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
  // coverage:ignore-end

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  Future<void> _sendMessage() async {
    final text = _textController.text.trim();
    if (text.isEmpty || _isSending) {
      return;
    }

    setState(() => _isSending = true);
    _textController.clear();

    try {
      await ref.read(chatSessionProvider(widget.listId).notifier).sendMessage(text);
      _scrollToBottom();
    } finally {
      if (mounted) {
        setState(() => _isSending = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final premiumAsync = ref.watch(premiumProvider);

    return premiumAsync.when(
      data: (isPremium) {
        if (!isPremium) {
          return PremiumGate(
            title: l10n.aiAssistant,
            description: l10n.aiAssistantDescription,
            // coverage:ignore-start
            onUpgrade: () => Navigator.push(
              context,
              fadeSlideRoute<void>(const PaywallScreen()),
            ),
            // coverage:ignore-end
          );
        }

        final chatState = ref.watch(chatSessionProvider(widget.listId));
        final theme = Theme.of(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(widget.listName ?? l10n.generalAssistant),
            actions: [
              IconButton(
                icon: const Icon(Icons.delete_sweep),
                onPressed: () {
                  showDialog<void>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(l10n.clearHistory),
                      content: Text(l10n.clearHistoryConfirm),
                      actions: [
                        // coverage:ignore-start
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(l10n.cancel),
                        ),
                        // coverage:ignore-end
                        TextButton(
                          onPressed: () {
                            ref.read(chatSessionProvider(widget.listId).notifier).clearHistory();
                            Navigator.pop(context);
                          },
                          child: Text(l10n.clear),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: chatState.when(
                  data: (messages) {
                    if (messages.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.auto_awesome, size: 64, color: theme.colorScheme.primary),
                            const SizedBox(height: 16),
                            Text(
                              widget.listId != null
                                  ? l10n.listHelp
                                  : l10n.generalHelp,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleMedium,
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 32),
                              child: Text(
                                l10n.chatSubtitle,
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      );
                    }

                    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());

                    return ListView.builder(
                      controller: _scrollController,
                      padding: const EdgeInsets.all(16),
                      itemCount: messages.length + (_isSending ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index == messages.length) {
                          return const TypingIndicator();
                        }
                        final message = messages[index];
                        return ChatBubble(message: message).animate().fadeIn(
                          duration: DurationTokens.fast,
                        ).slideX(
                          begin: message.role == 'user' ? 0.3 : -0.3,
                          end: 0,
                          duration: DurationTokens.fast,
                          curve: Curves.easeOut,
                        );
                      },
                    );
                  },
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (e, _) => Center(child: Text(l10n.chatError(e.toString()))), // coverage:ignore-line
                ),
              ),
              _buildInput(),
            ],
          ),
        );
      },
      loading: () => Scaffold(
        appBar: AppBar(title: Text(widget.listName ?? l10n.generalAssistant)),
        body: const Center(child: CircularProgressIndicator()),
      ),
      error: (e, _) => Scaffold(
        appBar: AppBar(title: Text(widget.listName ?? l10n.generalAssistant)),
        body: Center(child: Text(l10n.chatError(e.toString()))),
      ),
    );
  }

  Widget _buildInput() {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (ref.watch(chatSessionProvider(widget.listId)).value?.isEmpty ?? true)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _ShortcutChip(
                    label: 'Sugestão de Receitas',
                    icon: Icons.restaurant_menu,
                    onTap: () {
                      _textController.text = 'Sugira receitas com os itens da minha lista.';
                      _sendMessage();
                    },
                  ),
                  const SizedBox(width: 8),
                  _ShortcutChip(
                    label: 'Dicas de Economia',
                    icon: Icons.savings_outlined,
                    onTap: () {
                      _textController.text = 'Como economizar nesta compra?';
                      _sendMessage();
                    },
                  ),
                  const SizedBox(width: 8),
                  _ShortcutChip(
                    label: 'Organizar Corredores',
                    icon: Icons.map_outlined,
                    onTap: () {
                      _textController.text = 'Organize por corredores de mercado.';
                      _sendMessage();
                    },
                  ),
                ],
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
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: l10n.chatHint,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey.withValues(alpha: 0.1),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: theme.colorScheme.primary,
                  child: IconButton(
                    icon: const Icon(Icons.send, color: Colors.white),
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

class _ShortcutChip extends StatelessWidget {
  const _ShortcutChip({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ActionChip(
      avatar: Icon(icon, size: 16, color: theme.colorScheme.primary),
      label: Text(label, style: theme.textTheme.labelMedium),
      onPressed: onTap,
      backgroundColor: theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.full)),
    );
  }
}

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key, required this.message});

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    final isUser = message.role == 'user';
    final theme = Theme.of(context);

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        decoration: BoxDecoration(
          color: isUser
              ? theme.colorScheme.primary
              : theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16),
            topRight: const Radius.circular(16),
            bottomLeft: Radius.circular(isUser ? 16 : 0),
            bottomRight: Radius.circular(isUser ? 0 : 16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isUser)
              _UserMarkdownContent(content: message.content)
            else
              _AiMarkdownContent(content: message.content),
          ],
        ),
      ),
    );
  }
}

class _UserMarkdownContent extends StatelessWidget {
  const _UserMarkdownContent({required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    final style = MarkdownStyleSheet(
      a: const TextStyle(color: Colors.white70, decoration: TextDecoration.underline),
      p: const TextStyle(color: Colors.white),
      code: TextStyle(
        fontFamily: 'monospace',
        fontSize: 13,
        color: Colors.white,
        backgroundColor: Colors.white.withValues(alpha: 0.15),
      ),
      h1: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      h2: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      h3: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
      em: const TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
      strong: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      listBullet: const TextStyle(color: Colors.white),
      codeblockDecoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(6),
      ),
      horizontalRuleDecoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.white.withValues(alpha: 0.3)),
        ),
      ),
    );
    return MarkdownBody(
      data: content,
      styleSheet: style,
      onTapLink: (text, href, title) {
        if (href != null) {
          launchUrl(Uri.parse(href));
        }
      },
    );
  }
}

class _AiMarkdownContent extends StatelessWidget {
  const _AiMarkdownContent({required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = MarkdownStyleSheet.fromTheme(theme).copyWith(
      codeblockDecoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(6),
      ),
    );
    return MarkdownBody(
      data: content,
      styleSheet: style,
      onTapLink: (text, href, title) {
        if (href != null) {
          launchUrl(Uri.parse(href));
        }
      },
    );
  }
}

// coverage:ignore-start
class TypingIndicator extends StatelessWidget {
  const TypingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: const SizedBox(
          width: 40,
          child: _AnimatedTypingDots(),
        ),
      ),
    );
  }
}

class _AnimatedTypingDots extends StatefulWidget {
  const _AnimatedTypingDots();

  @override
  State<_AnimatedTypingDots> createState() => _AnimatedTypingDotsState();
}

class _AnimatedTypingDotsState extends State<_AnimatedTypingDots>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(3, (i) {
        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final delay = i * 200;
            final t = (_controller.value * 1200 - delay).clamp(0, 600) / 600;
            final size = Tween<double>(begin: 6, end: 10).transform(
              Curves.easeInOut.transform(t),
            );
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onSurfaceVariant,
                  shape: BoxShape.circle,
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
// coverage:ignore-end
