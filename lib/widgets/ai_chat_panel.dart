import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../generated/l10n/app_localizations.dart';
import '../models/chat_message.dart';
import '../providers/chat_provider.dart';
import '../providers/premium_provider.dart';
import '../models/ai_usage.dart';
import '../providers/ai_usage_provider.dart';
import '../theme/tokens.dart';
import '../theme/page_transitions.dart';
import '../screens/paywall_screen.dart';

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
  final _scrollController = ScrollController();
  bool _isSending = false;

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

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

    final canSend = ref.read(aiUsageStateProvider.notifier).canSend();
    final isPremium = ref.read(premiumProvider).value ?? false;
    if (!canSend && !isPremium) {
      return;
    }

    setState(() => _isSending = true);
    _textController.clear();

    try {
      if (!isPremium) {
        await ref.read(aiUsageStateProvider.notifier).recordMessage();
      }
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
    final theme = Theme.of(context);
    final isPremium = ref.watch(premiumProvider).value ?? false;
    final aiUsageAsync = ref.watch(aiUsageStateProvider);
    final canSend = isPremium || (aiUsageAsync.valueOrNull?.isExhausted == false);
    final remaining = aiUsageAsync.valueOrNull?.remainingDaily ?? 0;
    final isLowCredits = !isPremium && remaining > 0 && remaining <= 3;

    final chatState = ref.watch(chatSessionProvider(widget.listId));

    return Column(
      children: [
        Expanded(
          child: chatState.when(
            data: (messages) {
              if (messages.isEmpty) {
                return Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (isLowCredits) _LowCreditsBanner(l10n: l10n, theme: theme, remaining: remaining),
                        if (!widget.compact) _HeaderRow(
                          l10n: l10n,
                          theme: theme,
                          isPremium: isPremium,
                          aiUsageAsync: aiUsageAsync,
                          remaining: remaining,
                          listName: widget.listName,
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

              WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());

              return ListView(
                controller: _scrollController,
                padding: const EdgeInsets.all(12),
                children: [
                  if (isLowCredits) _LowCreditsBanner(l10n: l10n, theme: theme, remaining: remaining),
                  if (!widget.compact) _HeaderRow(
                    l10n: l10n,
                    theme: theme,
                    isPremium: isPremium,
                    aiUsageAsync: aiUsageAsync,
                    remaining: remaining,
                    listName: widget.listName,
                  ),
                  ...messages.map((message) => _GroupChatBubble(
                    message: message,
                    listId: widget.listId,
                    onOrganizeRequested: widget.onOrganizeRequested,
                  ).animate().fadeIn(
                    duration: DurationTokens.fast,
                  ).slideX(
                    begin: message.role == 'user' ? 0.3 : -0.3,
                    end: 0,
                    duration: DurationTokens.fast,
                    curve: Curves.easeOut,
                  )),
                  if (_isSending) const TypingIndicator(),
                ],
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(child: Text(l10n.chatError(e.toString()))),
          ),
        ),
        if (!canSend && !isPremium)
          _buildPaywallBanner(context, l10n, theme),
        _buildInput(context, l10n, theme, canSend),
      ],
    );
  }

  Widget _buildPaywallBanner(BuildContext context, AppLocalizations l10n, ThemeData theme) {
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
        child: Row(
          children: [
            Icon(Icons.workspace_premium, color: theme.colorScheme.primary, size: 20),
            const SizedBox(width: Spacing.sm),
            Expanded(
              child: Text(
                'Desbloqueie IA ilimitada',
                style: theme.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 12, color: theme.colorScheme.primary),
          ],
        ),
      ),
    );
  }

  Widget _buildInput(BuildContext context, AppLocalizations l10n, ThemeData theme, bool canSend) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _ShortcutChip(
                  label: l10n.quickRecipe,
                  icon: Icons.restaurant_menu,
                  onTap: canSend
                      ? () {
                          _textController.text = 'Sugira receitas com os itens da minha lista.';
                          _sendMessage();
                        }
                      : null,
                ),
                const SizedBox(width: 8),
                _ShortcutChip(
                  label: l10n.economyTips,
                  icon: Icons.savings_outlined,
                  onTap: canSend
                      ? () {
                          _textController.text = 'Como economizar nesta compra?';
                          _sendMessage();
                        }
                      : null,
                ),
                const SizedBox(width: 8),
                _ShortcutChip(
                  label: l10n.organizeAisles,
                  icon: Icons.map_outlined,
                  onTap: canSend
                      ? () {
                          _textController.text = 'Organize por corredores de mercado.';
                          _sendMessage();
                        }
                      : null,
                ),
                const SizedBox(width: 8),
                _ShortcutChip(
                  label: l10n.recipeSuggestion,
                  icon: Icons.local_fire_department,
                  onTap: canSend
                      ? () {
                          _textController.text = 'O que falta para um churrasco?';
                          _sendMessage();
                        }
                      : null,
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
                    enabled: canSend,
                    decoration: InputDecoration(
                      hintText: canSend ? l10n.chatHint : 'Limite de mensagens atingido',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: canSend
                          ? Colors.grey.withValues(alpha: 0.1)
                          : theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    onSubmitted: canSend ? (_) => _sendMessage() : null,
                  ),
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: canSend
                      ? theme.colorScheme.primary
                      : theme.colorScheme.surfaceContainerHighest,
                  child: IconButton(
                    icon: Icon(
                      Icons.send,
                      color: canSend ? Colors.white : theme.colorScheme.onSurfaceVariant,
                    ),
                    onPressed: canSend && !_isSending ? _sendMessage : null,
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

class _LowCreditsBanner extends StatelessWidget {
  const _LowCreditsBanner({
    required this.l10n,
    required this.theme,
    required this.remaining,
  });

  final AppLocalizations l10n;
  final ThemeData theme;
  final int remaining;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: theme.colorScheme.errorContainer.withValues(alpha: 0.3),
      child: Row(
        children: [
          Icon(Icons.warning_amber_rounded, size: 16, color: theme.colorScheme.error),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              l10n.aiCreditsRemaining(remaining),
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.error,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HeaderRow extends StatelessWidget {
  const _HeaderRow({
    required this.l10n,
    required this.theme,
    required this.isPremium,
    required this.aiUsageAsync,
    required this.remaining,
    required this.listName,
  });

  final AppLocalizations l10n;
  final ThemeData theme;
  final bool isPremium;
  final AsyncValue<AiUsage> aiUsageAsync;
  final int remaining;
  final String? listName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.xs),
      child: Row(
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(RadiusTokens.full),
              ),
              child: Text(
                '$remaining restantes',
                style: theme.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: theme.colorScheme.primary,
                ),
              ),
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
      onPressed: onTap,
      backgroundColor: onTap != null
          ? theme.colorScheme.primaryContainer.withValues(alpha: 0.3)
          : theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(RadiusTokens.full)),
    );
  }
}

class _GroupChatBubble extends ConsumerWidget {
  const _GroupChatBubble({required this.message, this.listId, this.onOrganizeRequested});

  final ChatMessage message;
  final String? listId;
  final VoidCallback? onOrganizeRequested;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isUser = message.role == 'user';
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final isGroup = message.senderName != null;
    final actions = message.actions;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          if (isGroup && isUser)
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 2),
              child: Text(
                message.senderName!,
                style: theme.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: _getSenderColor(message.senderUid!, theme),
                ),
              ),
            ),
          if (isGroup && !isUser)
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 2),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.auto_awesome, size: 10, color: theme.colorScheme.primary),
                  const SizedBox(width: 4),
                  Text(
                    'IA',
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          Align(
            alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8,
              ),
              decoration: BoxDecoration(
                color: isUser
                    ? theme.colorScheme.primary
                    : theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(14),
                  topRight: const Radius.circular(14),
                  bottomLeft: Radius.circular(isUser ? 14 : 2),
                  bottomRight: Radius.circular(isUser ? 2 : 14),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildMarkdownContent(context, message.content, isUser, theme),
                  if (actions != null && !isUser) ...[
                    const SizedBox(height: 8),
                    if (actions.containsKey('add_items'))
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: FilledButton.icon(
                          onPressed: () {
                            ref.read(chatSessionProvider(listId).notifier).executeAction(message.id, 'add_items');
                          },
                          icon: const Icon(Icons.add_shopping_cart, size: 16),
                          label: Text(l10n.addAllToList),
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                            minimumSize: const Size(0, 32),
                            textStyle: theme.textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    if (actions.containsKey('organize'))
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: OutlinedButton.icon(
                          onPressed: () {
                            if (onOrganizeRequested != null) {
                              Navigator.pop(context); // Close chat sheet
                              onOrganizeRequested!();
                            } else {
                              ref.read(chatSessionProvider(listId).notifier).executeAction(message.id, 'organize');
                            }
                          },
                          icon: const Icon(Icons.auto_awesome, size: 16),
                          label: Text(l10n.organizeByAisles),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                            minimumSize: const Size(0, 32),
                            textStyle: theme.textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMarkdownContent(BuildContext context, String content, bool isUser, ThemeData theme) {
    if (isUser) {
      final userStyle = MarkdownStyleSheet(
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
        h4: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
        h5: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14),
        h6: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13),
        em: const TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
        strong: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        del: const TextStyle(decoration: TextDecoration.lineThrough, color: Colors.white),
        blockquote: const TextStyle(color: Colors.white70, fontStyle: FontStyle.italic),
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
        styleSheet: userStyle,
        onTapLink: (text, href, title) {
          if (href != null) {
            launchUrl(Uri.parse(href));
          }
        },
      );
    }

    final aiStyle = MarkdownStyleSheet.fromTheme(theme).copyWith(
      codeblockDecoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(6),
      ),
    );
    return MarkdownBody(
      data: content,
      styleSheet: aiStyle,
      onTapLink: (text, href, title) {
        if (href != null) {
          launchUrl(Uri.parse(href));
        }
      },
    );
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
}

class TypingIndicator extends StatelessWidget {
  const TypingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
        ),
        child: const SizedBox(
          width: 36,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(3, (i) {
          return AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              final delay = i * 200;
              final t = (_controller.value * 1200 - delay).clamp(0, 600) / 600;
              final size = Tween<double>(begin: 5, end: 9).transform(
                Curves.easeInOut.transform(t),
              );
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.5),
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
