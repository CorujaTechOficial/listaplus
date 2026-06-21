import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class ChatInputBar extends ConsumerWidget {
  const ChatInputBar({
    super.key,
    required this.controller,
    required this.focusNode,
    this.textFieldKey,
    required this.isSending,
    required this.isListening,
    required this.inputBlocked,
    required this.isKeyboardVisible,
    required this.onSend,
    required this.onQuickAdd,
    required this.onStartDictation,
    required this.onCancelRequest,
    this.listId,
    this.isSimulation = false,
    required this.waveController,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final GlobalKey<EditableTextState>? textFieldKey;
  final bool isSending;
  final bool isListening;
  final bool inputBlocked;
  final bool isKeyboardVisible;
  final VoidCallback onSend;
  final VoidCallback onQuickAdd;
  final VoidCallback onStartDictation;
  final VoidCallback onCancelRequest;
  final String? listId;
  final bool isSimulation;
  final AnimationController waveController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    final inputWidget = ValueListenableBuilder<TextEditingValue>(
      valueListenable: controller,
      builder: (context, value, child) {
        final hasText = value.text.trim().isNotEmpty;
        final charCount = value.text.length;
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: AnimatedContainer(
                duration: DurationTokens.fast,
                decoration: BoxDecoration(
                  color:
                      isListening
                          ? theme.colorScheme.primaryContainer.withValues(
                            alpha: 0.35,
                          )
                          : inputBlocked
                          ? theme.colorScheme.surfaceContainerHigh.withValues(
                            alpha: 0.5,
                          )
                          : theme.colorScheme.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(RadiusTokens.bubble),
                  border: Border.all(
                    color:
                        focusNode.hasFocus
                            ? theme.colorScheme.primary.withValues(alpha: 0.4)
                            : theme.colorScheme.outlineVariant.withValues(
                              alpha: 0.2,
                            ),
                    width: focusNode.hasFocus ? 1.5 : 1.0,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (isListening)
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: _WaveIndicator(controller: waveController),
                      )
                    // Quick-add: drop the typed text straight onto the list
                    // without an AI round-trip. The efficiency path for a user
                    // who already knows the item — enabled only with text and a
                    // real list, so it never competes on an empty field.
                    // playlist_add_rounded signals "add to a list" (vs generic +).
                    // The AnimatedContainer label appears on first type to teach
                    // the gesture without permanent chrome.
                    else if (listId != null && !isSimulation)
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Tooltip(
                          message: l10n.quickAddToList,
                          child: InkWell(
                            key: const ValueKey('chat_quickadd_button'),
                            onTap:
                                (hasText && !inputBlocked) ? onQuickAdd : null,
                            borderRadius: BorderRadius.circular(RadiusTokens.sm),
                            child: AnimatedContainer(
                              duration: DurationTokens.fast,
                              padding: const EdgeInsets.symmetric(
                                horizontal: Spacing.xs,
                                vertical: Spacing.xs,
                              ),
                              decoration: BoxDecoration(
                                color:
                                    hasText && !inputBlocked
                                        ? theme.colorScheme.primary
                                            .withAlpha(20)
                                        : Colors.transparent,
                                borderRadius:
                                    BorderRadius.circular(RadiusTokens.sm),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.playlist_add_rounded,
                                    size: 22,
                                    color:
                                        hasText && !inputBlocked
                                            ? theme.colorScheme.primary
                                            : theme.colorScheme.onSurfaceVariant
                                                .withAlpha(120),
                                  ),
                                  AnimatedSize(
                                    duration: DurationTokens.fast,
                                    curve: Curves.easeOutQuad,
                                    child:
                                        hasText && !inputBlocked
                                            ? Padding(
                                              padding: const EdgeInsets.only(
                                                left: 3,
                                              ),
                                              child: Text(
                                                l10n.quickAddToList,
                                                style: theme
                                                    .textTheme.labelSmall
                                                    ?.copyWith(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            )
                                            : const SizedBox.shrink(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    Expanded(
                      child: TextField(
                        key: textFieldKey,
                        focusNode: focusNode,
                        controller: controller,
                        readOnly: isSimulation || inputBlocked,
                        minLines: 1,
                        maxLines: 5,
                        maxLength: 1000,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          height: 1.4,
                        ),
                        decoration: InputDecoration(
                          hintText:
                              inputBlocked
                                  ? l10n.chatHintBlocked
                                  : isListening
                                  ? l10n.voiceTranscriptionTooltip
                                  : l10n.chatHint,
                          hintStyle: theme.textTheme.bodyMedium?.copyWith(
                            // onSurfaceVariant already carries enough contrast
                            // for placeholder text (WCAG AA); the old 0.45 alpha
                            // dropped it below the 4.5:1 floor. Blocked state is
                            // a disabled affordance, so it can read dimmer.
                            color:
                                inputBlocked
                                    ? theme.colorScheme.onSurfaceVariant
                                        .withAlpha((0.45 * 255).toInt())
                                    : isListening
                                    ? theme.colorScheme.primary
                                    : theme.colorScheme.onSurfaceVariant,
                          ),
                          filled: false,
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: Spacing.sm,
                          ),
                          counterText: charCount > 300 ? '$charCount/1000' : '',
                        ),
                        onSubmitted:
                            !isSending && !inputBlocked
                                ? (_) => onSend()
                                : null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: AnimatedSwitcher(
                        duration: DurationTokens.fast,
                        transitionBuilder:
                            (child, animation) =>
                                ScaleTransition(scale: animation, child: child),
                        child:
                            isSending
                                ? _ChatInputIconButton(
                                  key: const ValueKey('chat_stop_button'),
                                  icon: Icons.stop_rounded,
                                  // Stop is "interrupt generation", not a
                                  // destructive action — a calm neutral fill
                                  // reads as stop without the alarm of error red.
                                  color: theme.colorScheme.onSurface,
                                  background:
                                      theme.colorScheme.surfaceContainerHighest,
                                  onPressed: onCancelRequest,
                                  tooltip: l10n.cancel,
                                )
                                : hasText
                                ? _ChatInputIconButton(
                                  key: const ValueKey('chat_send_button'),
                                  icon: Icons.arrow_upward_rounded,
                                  color: theme.colorScheme.onPrimary,
                                  background: theme.colorScheme.primary,
                                  onPressed: inputBlocked ? null : onSend,
                                  tooltip: l10n.chatHint,
                                )
                                : _ChatInputIconButton(
                                  key: const ValueKey('chat_mic_button'),
                                  icon:
                                      isListening
                                          ? Icons.mic
                                          : Icons.mic_none_rounded,
                                  color:
                                      isListening
                                          ? theme.colorScheme.primary
                                          : theme.colorScheme.onSurfaceVariant
                                              .withAlpha(180),
                                  background: Colors.transparent,
                                  onPressed:
                                      inputBlocked ? null : onStartDictation,
                                  tooltip: l10n.voiceTranscriptionTooltip,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );

    return Container(
      color: theme.colorScheme.surface,
      padding: const EdgeInsets.fromLTRB(
        Spacing.sm,
        Spacing.xs,
        Spacing.sm,
        Spacing.sm,
      ),
      child: SafeArea(top: false, child: inputWidget),
    );
  }
}

class _ChatInputIconButton extends StatelessWidget {
  const _ChatInputIconButton({
    super.key,
    required this.icon,
    required this.color,
    required this.background,
    this.onPressed,
    this.tooltip,
  });

  final IconData icon;
  final Color color;
  final Color background;
  final VoidCallback? onPressed;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      tooltip: tooltip,
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints.tightFor(width: 44, height: 44),
      style: IconButton.styleFrom(
        backgroundColor:
            onPressed == null ? background.withAlpha(120) : background,
        disabledForegroundColor: color.withAlpha(120),
        foregroundColor: color,
      ),
      icon: Icon(icon, size: 21),
    );
  }
}

class _WaveIndicator extends StatelessWidget {
  const _WaveIndicator({required this.controller});
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.only(left: Spacing.sm, right: Spacing.xs),
          child: SizedBox(
            width: 24,
            height: 24,
            child: CustomPaint(
              painter: _WavePainter(
                color: theme.colorScheme.primary,
                value: controller.value,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _WavePainter extends CustomPainter {
  _WavePainter({required this.color, required this.value});
  final Color color;
  final double value;

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = color
          ..strokeWidth = 2.0
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;

    final path = Path();
    for (var i = 0; i < 3; i++) {
      final x = size.width * (i / 2);
      final h =
          size.height * 0.4 * (1 + 0.5 * math.sin(value * 2 * math.pi + i));
      path.moveTo(x, size.height / 2 - h);
      path.lineTo(x, size.height / 2 + h);
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_WavePainter oldDelegate) =>
      oldDelegate.value != value || oldDelegate.color != color;
}
