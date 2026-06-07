import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';

class KipiQuickBar extends ConsumerStatefulWidget {
  const KipiQuickBar({super.key, required this.listId});

  final String listId;

  @override
  ConsumerState<KipiQuickBar> createState() => _KipiQuickBarState();
}

class _KipiQuickBarState extends ConsumerState<KipiQuickBar> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  late stt.SpeechToText _speech;
  bool _isListening = false;
  bool _isSending = false;

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _listen() async {
    if (_isListening) {
      setState(() {
        _isListening = false;
      });
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
            setState(() {
              _isListening = false;
            });
          }
        }
      },
      onError: (_) {
        if (mounted) {
          setState(() {
            _isListening = false;
          });
        }
      },
    );
    if (!available) {
      return;
    }
    setState(() {
      _isListening = true;
    });
    if (!mounted) {
      return;
    }
    final locale = Localizations.localeOf(context);
    await _speech.listen(
      onResult: (val) {
        setState(() {
          _controller.text = val.recognizedWords;
        });
      },
      // ignore: deprecated_member_use
      localeId: locale.toString(),
    );
  }

  Future<void> _send() async {
    final text = _controller.text.trim();
    if (text.isEmpty) {
      return;
    }
    unawaited(HapticFeedback.lightImpact());
    setState(() {
      _isSending = true;
    });
    final aiController = TextEditingController(text: text);
    _controller.clear();
    if (!mounted) {
      return;
    }
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.85,
        child: AiChatPanel(
          listId: widget.listId,
          externalController: aiController,
        ),
      ),
    );
    if (mounted) {
      setState(() {
        _isSending = false;
      });
    }
    aiController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.sm, vertical: Spacing.sm),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.outlineVariant.withAlpha(77),
            width: 1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(13),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                focusNode: _focusNode,
                decoration: InputDecoration(
                  hintText: '✨ Fala com o Kipi...',
                  hintStyle: TextStyle(
                    color: theme.colorScheme.primary.withAlpha(180),
                    fontSize: 14,
                  ),
                  filled: true,
                  fillColor: isDark
                      ? theme.colorScheme.primaryContainer.withAlpha(40)
                      : theme.colorScheme.primaryContainer.withAlpha(60),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: Spacing.md,
                    vertical: Spacing.xs,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isListening ? Icons.mic : Icons.mic_none,
                      color: _isListening
                          ? theme.colorScheme.error
                          : theme.colorScheme.primary,
                      size: 20,
                    ),
                    onPressed: _listen,
                    visualDensity: VisualDensity.compact,
                  ),
                ),
                textInputAction: TextInputAction.send,
                onSubmitted: (_) => _send(),
              ),
            ),
            const SizedBox(width: Spacing.xs),
            GestureDetector(
              onTap: _isSending ? null : _send,
              child: CircleAvatar(
                backgroundColor: _isSending
                    ? theme.colorScheme.surfaceContainerHighest
                    : theme.colorScheme.primary,
                child: _isSending
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.5,
                          color: Colors.white,
                        ),
                      )
                    : const Icon(Icons.arrow_upward, size: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    ).animate().fadeIn(duration: 300.ms).slideY(begin: 0.15, end: 0);
  }
}
