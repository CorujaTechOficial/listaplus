import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/themes/atom-one-dark.dart';
import 'package:flutter_highlighter/themes/atom-one-light.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:url_launcher/url_launcher.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/models/chat_message.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import 'package:shopping_list/widgets/artifact_widgets/artifact_card_shell.dart';
import 'package:shopping_list/widgets/artifact_widgets/artifact_content_renderer.dart';
import 'package:shopping_list/app/lists/widgets/edit_item_dialog.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/utils/test_utils.dart';
import 'agent_action_steps.dart';
import 'package:shopping_list/core/utils/snack_bar_utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ChatBubble extends ConsumerStatefulWidget {
  const ChatBubble({
    super.key,
    required this.message,
    this.listId,
    this.isLastInGroup = true,
    this.isLastMessage = false,
    this.items = const [],
    this.onOrganizeRequested,
    this.onItemsAdded,
    this.onNavigateToRecipe,
    this.onScrollToBottom,
    this.onSuggestedReply,
  });

  final ChatMessage message;
  final String? listId;
  final bool isLastInGroup;
  final bool isLastMessage;
  final List<ShoppingItem> items;
  final VoidCallback? onOrganizeRequested;
  final VoidCallback? onItemsAdded;
  final void Function(String recipeId)? onNavigateToRecipe;
  final VoidCallback? onScrollToBottom;
  final void Function(String prompt)? onSuggestedReply;

  @override
  ConsumerState<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends ConsumerState<ChatBubble> {
  /// Streaming caret blink. A toggled bool (driven by a ~530ms timer) keeps the
  /// markdown re-parse to roughly twice a second instead of every frame; the
  /// caret holds solid when motion is reduced or under test so no timer leaks.
  final ValueNotifier<bool> _caretVisible = ValueNotifier<bool>(true);
  Timer? _caretTimer;

  @override
  void dispose() {
    _caretTimer?.cancel();
    _caretVisible.dispose();
    super.dispose();
  }

  void _syncCaretBlink({required bool active}) {
    if (active) {
      _caretTimer ??= Timer.periodic(
        const Duration(milliseconds: 530),
        (_) => _caretVisible.value = !_caretVisible.value,
      );
    } else if (_caretTimer != null) {
      _caretTimer!.cancel();
      _caretTimer = null;
      _caretVisible.value = true;
    }
  }

  void _copyToClipboard(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    Clipboard.setData(ClipboardData(text: widget.message.content));
    showKipiSnackBar(
      context,
      message: l10n.copiedToClipboard,
      type: SnackBarType.info,
    );
  }

  void _toggleLike() {
    unawaited(HapticFeedback.selectionClick());
    final sessionId = ref.read(activeChatSessionIdProvider(widget.listId));
    ref
        .read(chatSessionProvider(widget.listId, sessionId).notifier)
        .setFeedback(
          widget.message.id,
          widget.message.feedback == 1 ? null : 1,
        );
  }

  void _toggleDislike() {
    unawaited(HapticFeedback.selectionClick());
    final sessionId = ref.read(activeChatSessionIdProvider(widget.listId));
    ref
        .read(chatSessionProvider(widget.listId, sessionId).notifier)
        .setFeedback(
          widget.message.id,
          widget.message.feedback == -1 ? null : -1,
        );
  }

  void _regenerate() {
    unawaited(HapticFeedback.lightImpact());
    final sessionId = ref.read(activeChatSessionIdProvider(widget.listId));
    unawaited(
      ref
          .read(chatSessionProvider(widget.listId, sessionId).notifier)
          .regenerate(widget.message.id),
    );
  }

  Future<void> _editMessage(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    final controller = TextEditingController(text: widget.message.content);
    final newText = await showDialog<String>(
      context: context,
      builder:
          (dialogContext) => AlertDialog(
            title: Text(l10n.editMessage),
            content: TextField(
              controller: controller,
              autofocus: true,
              maxLines: null,
              minLines: 1,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(dialogContext),
                child: Text(l10n.cancel),
              ),
              FilledButton(
                onPressed:
                    () => Navigator.pop(dialogContext, controller.text.trim()),
                child: Text(l10n.save),
              ),
            ],
          ),
    );
    controller.dispose();
    if (newText == null ||
        newText.isEmpty ||
        newText == widget.message.content) {
      return;
    }
    final sessionId = ref.read(activeChatSessionIdProvider(widget.listId));
    unawaited(
      ref
          .read(chatSessionProvider(widget.listId, sessionId).notifier)
          .editMessage(widget.message.id, newText),
    );
  }

  void _showItemOptions(BuildContext context, ShoppingItem item) {
    showDialog<void>(
      context: context,
      builder: (_) => EditItemDialog(listId: widget.listId ?? '', item: item),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isUser = widget.message.role == 'user';
    final theme = Theme.of(context);
    final isStreaming = ref.watch(
      chatStreamingProvider(
        widget.listId,
      ).select((v) => v && widget.isLastMessage),
    );
    final streamingExtra =
        widget.isLastMessage
            ? ref.watch(chatStreamingTextProvider(widget.listId))
            : null;
    final showStreamingContent =
        widget.isLastMessage &&
        isStreaming &&
        !isUser &&
        streamingExtra != null;
    final rawContent =
        showStreamingContent ? streamingExtra : widget.message.content;

    final items = widget.items;

    // Append a caret glyph to streaming AI text so a pause between tokens
    // reads as "still generating" instead of a freeze. The caret blinks (see
    // the streaming branch below); effectiveContent keeps a solid caret for the
    // teaser path, which never streams.
    final effectiveContent = showStreamingContent ? '$rawContent▌' : rawContent;
    final reducedMotion =
        MediaQuery.maybeOf(context)?.disableAnimations ?? false;
    _syncCaretBlink(
      active: showStreamingContent && !reducedMotion && !isTestMode,
    );
    // Actions live only under the last assistant turn — older messages stay a
    // clean transcript. Copy is still available on any message via the
    // selectable markdown body.
    final showMessageActions =
        !isUser &&
        widget.isLastMessage &&
        !isStreaming &&
        !widget.message.isTeaser &&
        widget.message.artifact == null &&
        widget.message.content.isNotEmpty;

    return Padding(
      padding: EdgeInsets.only(
        bottom: widget.isLastInGroup ? Spacing.sm : Spacing.xxs,
      ),
      child: Column(
        crossAxisAlignment:
            isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
                isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!isUser) ...[
                const _KipiAvatar(),
                const SizedBox(width: Spacing.xs),
              ],
              Flexible(
                child:
                    widget.message.artifact != null
                        ? ArtifactCardShell(
                          artifact: widget.message.artifact!,
                          listId: widget.listId,
                          child: ArtifactContentRenderer(
                            artifactId: widget.message.artifact!.id,
                          ),
                        )
                        : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (widget.message.executionSteps != null &&
                                widget.message.executionSteps!.isNotEmpty) ...[
                              AgentActionSteps(
                                messageId: widget.message.id,
                                steps: widget.message.executionSteps!,
                                listId: widget.listId,
                              ),
                              const SizedBox(height: Spacing.xs),
                            ],
                            if (widget.message.isTeaser)
                              _TeaserBubble(
                                effectiveContent: effectiveContent,
                                isUser: isUser,
                                theme: theme,
                                isError: widget.message.isError,
                                items: items,
                                onItemTap:
                                    (item) => _showItemOptions(context, item),
                              )
                            else if (showStreamingContent)
                              ValueListenableBuilder<bool>(
                                valueListenable: _caretVisible,
                                builder:
                                    (context, caretOn, _) =>
                                        _buildMarkdownContent(
                                          context,
                                          caretOn
                                              ? '$rawContent▌'
                                              : '$rawContent ',
                                          isUser,
                                          theme,
                                          widget.message.isError,
                                          items,
                                        ),
                              )
                            else if (widget.message.content.isNotEmpty)
                              _buildMarkdownContent(
                                context,
                                rawContent,
                                isUser,
                                theme,
                                widget.message.isError,
                                items,
                              ),
                            if (showMessageActions)
                              _MessageActions(
                                isLiked: widget.message.feedback == 1,
                                isDisliked: widget.message.feedback == -1,
                                onLike: _toggleLike,
                                onDislike: _toggleDislike,
                                onCopy: () => _copyToClipboard(context),
                                onRegenerate: _regenerate,
                              ),
                          ],
                        ),
              ),
            ],
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
  ) {
    final baseStyle = MarkdownStyleSheet.fromTheme(theme);

    if (isUser) {
      final userStyle = baseStyle.copyWith(
        a: TextStyle(
          color: theme.colorScheme.onSurface.withValues(alpha: 0.9),
          decoration: TextDecoration.underline,
        ),
        p: theme.textTheme.bodyLarge?.copyWith(
          color: theme.colorScheme.onSurface,
          height: 1.5,
        ),
        code: theme.textTheme.bodySmall?.copyWith(
          fontFamily: 'monospace',
          color: theme.colorScheme.onSurface,
          backgroundColor: theme.colorScheme.onSurface.withValues(alpha: 0.15),
        ),
        h1: theme.textTheme.headlineMedium?.copyWith(
          color: theme.colorScheme.onSurface,
          height: 1.3,
        ),
        h2: theme.textTheme.headlineSmall?.copyWith(
          color: theme.colorScheme.onSurface,
          height: 1.3,
        ),
        h3: theme.textTheme.titleMedium?.copyWith(
          color: theme.colorScheme.onSurface,
          height: 1.3,
        ),
        em: TextStyle(
          fontStyle: FontStyle.italic,
          color: theme.colorScheme.onSurface.withValues(alpha: 0.9),
        ),
        strong: TextStyle(
          fontWeight: FontWeight.bold,
          color: theme.colorScheme.onSurface,
        ),
        listBullet: TextStyle(color: theme.colorScheme.onSurface),
        pPadding: const EdgeInsets.only(bottom: Spacing.xs),
      );
      return GestureDetector(
        onLongPress: () {
          unawaited(HapticFeedback.mediumImpact());
          unawaited(_editMessage(context));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          // A faint primary tint reads as "you" — speaker identity no longer
          // rests on bubble position alone.
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer.withValues(alpha: 0.45),
            borderRadius: BorderRadius.circular(RadiusTokens.bubble),
            border: Border.all(
              color: theme.colorScheme.primary.withValues(alpha: 0.20),
            ),
          ),
          child: MarkdownBody(
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
                  unawaited(
                    launchUrl(uri, mode: LaunchMode.externalApplication),
                  );
                }
              }
            },
          ),
        ),
      );
    }

    final aiStyle = baseStyle.copyWith(
      p: (isError
              ? theme.textTheme.bodyLarge?.copyWith(color: theme.colorScheme.error)
              : theme.textTheme.bodyLarge)
          ?.copyWith(
            height: 1.6,
            color: isError
                ? theme.colorScheme.error
                : theme.colorScheme.onSurface,
          ),
      // Headings stay onSurface: green (primary) prose headings read as links
      // and steal the accent that the tappable item-link chips actually use.
      h1: theme.textTheme.headlineMedium?.copyWith(
        color: theme.colorScheme.onSurface,
        height: 1.3,
      ),
      h2: theme.textTheme.headlineSmall?.copyWith(
        color: theme.colorScheme.onSurface,
        height: 1.3,
      ),
      h3: theme.textTheme.titleMedium?.copyWith(
        color: theme.colorScheme.onSurface,
        height: 1.3,
      ),
      code: theme.textTheme.bodySmall?.copyWith(
        fontFamily: 'monospace',
        color: theme.colorScheme.primary,
        backgroundColor: theme.colorScheme.primary.withValues(alpha: 0.08),
      ),
      codeblockDecoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(
          alpha: 0.5,
        ),
        borderRadius: BorderRadius.circular(RadiusTokens.md),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
      ),
      // Full border + tint instead of a colored left side-stripe.
      blockquoteDecoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(
          alpha: 0.4,
        ),
        borderRadius: BorderRadius.circular(RadiusTokens.md),
        border: Border.all(
          color: theme.colorScheme.primary.withValues(alpha: 0.25),
        ),
      ),
      listBullet: TextStyle(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.bold,
      ),
      pPadding: const EdgeInsets.only(bottom: Spacing.sm),
      blockSpacing: 12,
    );
    return GestureDetector(
      onLongPress: () {
        unawaited(HapticFeedback.mediumImpact());
        unawaited(Clipboard.setData(ClipboardData(text: widget.message.content)));
        showKipiSnackBar(
          context,
          message: AppLocalizations.of(context)!.copiedToClipboard,
          type: SnackBarType.info,
        );
      },
      child: AnimatedSize(
        duration: DurationTokens.fast,
        curve: Curves.easeOutQuad,
        alignment: Alignment.topLeft,
        onEnd: widget.onScrollToBottom,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.xxs,
            vertical: Spacing.xs,
          ),
          child: MarkdownBody(
            data: content,
            selectable: true,
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
          ),
        ),
      ),
    );
  }
}

class _MessageActions extends StatelessWidget {
  const _MessageActions({
    required this.isLiked,
    required this.isDisliked,
    required this.onLike,
    required this.onDislike,
    required this.onCopy,
    required this.onRegenerate,
  });

  final bool isLiked;
  final bool isDisliked;
  final VoidCallback onLike;
  final VoidCallback onDislike;
  final VoidCallback onCopy;
  final VoidCallback onRegenerate;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.only(top: Spacing.xxs),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            key: const ValueKey('chat_like_button'),
            onPressed: onLike,
            tooltip: l10n.goodResponse,
            visualDensity: VisualDensity.compact,
            constraints: const BoxConstraints.tightFor(width: 44, height: 44),
            icon: AnimatedSwitcher(
              duration: DurationTokens.fast,
              child: Icon(
                isLiked ? PhosphorIconsFill.thumbsUp : PhosphorIconsRegular.thumbsUp,
                key: ValueKey(isLiked),
                size: 18,
                color:
                    isLiked
                        ? theme.colorScheme.primary
                        : theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          IconButton(
            key: const ValueKey('chat_dislike_button'),
            onPressed: onDislike,
            tooltip: l10n.badResponse,
            visualDensity: VisualDensity.compact,
            constraints: const BoxConstraints.tightFor(width: 44, height: 44),
            icon: AnimatedSwitcher(
              duration: DurationTokens.fast,
              child: Icon(
                isDisliked
                    ? PhosphorIconsFill.thumbsDown
                    : PhosphorIconsRegular.thumbsDown,
                key: ValueKey(isDisliked),
                size: 18,
                color:
                    isDisliked
                        ? theme.colorScheme.error
                        : theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          IconButton(
            key: const ValueKey('chat_regenerate_button'),
            onPressed: onRegenerate,
            tooltip: l10n.regenerate,
            visualDensity: VisualDensity.compact,
            constraints: const BoxConstraints.tightFor(width: 44, height: 44),
            icon: Icon(
              PhosphorIconsRegular.arrowCounterClockwise,
              size: 18,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          IconButton(
            key: const ValueKey('chat_copy_button'),
            onPressed: onCopy,
            tooltip: l10n.copy,
            visualDensity: VisualDensity.compact,
            constraints: const BoxConstraints.tightFor(width: 44, height: 44),
            icon: Icon(
              PhosphorIconsRegular.copy,
              size: 18,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

/// Kipi's mark inside the conversation — keeps the assistant's identity present
/// where she actually works, not only on the empty state. Decorative, so it is
/// hidden from the semantics tree.
class _KipiAvatar extends StatelessWidget {
  const _KipiAvatar();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ExcludeSemantics(
      child: Container(
        width: 32,
        height: 32,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: theme.colorScheme.primary.withValues(alpha: 0.10),
          shape: BoxShape.circle,
        ),
        clipBehavior: Clip.antiAlias,
        child: Image.asset(
          'assets/images/kipi/kipi_helper.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class _TeaserBubble extends StatelessWidget {
  const _TeaserBubble({
    required this.effectiveContent,
    required this.isUser,
    required this.theme,
    required this.isError,
    required this.items,
    required this.onItemTap,
  });

  final String effectiveContent;
  final bool isUser;
  final ThemeData theme;
  final bool isError;
  final List<ShoppingItem> items;
  final void Function(ShoppingItem) onItemTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    // Calmer teaser: the text reads solid for most of the bubble and fades only
    // at the very bottom (a hint of "more"), and the unlock CTA sits BELOW the
    // bubble instead of being planted over the faded text. Less of an
    // interruption, still premium amber for the upgrade moment.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.black.withAlpha(0)],
              stops: const [0.7, 1.0],
            ).createShader(rect);
          },
          blendMode: BlendMode.dstIn,
          child: _TeaserMarkdownContent(
            content: effectiveContent,
            isUser: isUser,
            theme: theme,
            isError: isError,
            items: items,
            onItemTap: onItemTap,
          ),
        ),
        const SizedBox(height: Spacing.xs),
        FilledButton.icon(
              onPressed: () {
                unawaited(HapticFeedback.lightImpact());
                // Same calm sheet the usage banner opens — one presentation
                // for "upgrade from chat" keeps the conversation visible
                // behind it instead of a full-page takeover.
                showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  builder: (_) => const PaywallScreen(asSheet: true),
                );
              },
              icon: const Icon(PhosphorIconsRegular.crown, size: 14),
              label: Text(
                l10n.unlockFullResponse,
                style: theme.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: Spacing.sm,
                  vertical: 0,
                ),
                minimumSize: const Size(0, 40),
                backgroundColor: AppColors.premiumAmber,
                foregroundColor: AppColors.onPremiumAmber,
              ),
            )
            .animate()
            .fadeIn(duration: DurationTokens.fast)
            .slideY(begin: 0.15, end: 0, curve: Curves.easeOut),
      ],
    );
  }
}

class _TeaserMarkdownContent extends StatelessWidget {
  const _TeaserMarkdownContent({
    required this.content,
    required this.isUser,
    required this.theme,
    required this.isError,
    required this.items,
    required this.onItemTap,
  });

  final String content;
  final bool isUser;
  final ThemeData theme;
  final bool isError;
  final List<ShoppingItem> items;
  final void Function(ShoppingItem) onItemTap;

  @override
  Widget build(BuildContext context) {
    final baseStyle = MarkdownStyleSheet.fromTheme(theme);
    final aiStyle = baseStyle.copyWith(
      p: (isError
              ? theme.textTheme.bodyLarge?.copyWith(color: theme.colorScheme.error)
              : theme.textTheme.bodyLarge)
          ?.copyWith(
            height: 1.6,
            color: isError
                ? theme.colorScheme.error
                : theme.colorScheme.onSurface,
          ),
      listBullet: TextStyle(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.bold,
      ),
      pPadding: const EdgeInsets.only(bottom: Spacing.sm),
      blockSpacing: 12,
    );
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(RadiusTokens.bubble),
      ),
      child: MarkdownBody(
        data: content,
        styleSheet: aiStyle,
        builders: {
          'strong': ItemLinkBuilder(
            theme: theme,
            items: items,
            onItemTap: onItemTap,
          ),
        },
      ),
    );
  }
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
    final item =
        items
            .where((i) => i.name.toLowerCase() == text.toLowerCase())
            .firstOrNull;

    if (item != null) {
      // A list item the assistant referenced. Render it as a tappable item
      // chip — leading cart glyph instead of a hyperlink underline — so it
      // reads as "tap to open this item", which is the underused affordance.
      return GestureDetector(
        onTap: () => onItemTap(item),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.xs,
            vertical: Spacing.xxs,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(RadiusTokens.sm),
            border: Border.all(
              color: theme.colorScheme.primary.withValues(alpha: 0.28),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                PhosphorIconsRegular.shoppingCart,
                size: 13,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: Spacing.xxs),
              Text(
                text,
                style: preferredStyle?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
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
      margin: const EdgeInsets.symmetric(vertical: Spacing.sm),
      decoration: BoxDecoration(
        color:
            isDark
                ? theme.colorScheme.surfaceContainerHighest
                : theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(RadiusTokens.md),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              Spacing.md,
              Spacing.md,
              Spacing.md,
              Spacing.md,
            ),
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
    final l10n = AppLocalizations.of(context)!;
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
      borderRadius: BorderRadius.circular(RadiusTokens.xs),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.xs,
          vertical: Spacing.xxs,
        ),
        decoration: BoxDecoration(
          color:
              _copied
                  ? theme.colorScheme.primaryContainer
                  : theme.colorScheme.surfaceContainerHighest.withValues(
                    alpha: 0.5,
                  ),
          borderRadius: BorderRadius.circular(RadiusTokens.xs),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              _copied ? PhosphorIconsRegular.check : PhosphorIconsRegular.copy,
              size: 14,
              color:
                  _copied
                      ? theme.colorScheme.onPrimaryContainer
                      : theme.colorScheme.onSurfaceVariant,
            ),
            if (_copied) ...[
              const SizedBox(width: Spacing.xxs),
              Text(
                l10n.copiedToClipboard,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
