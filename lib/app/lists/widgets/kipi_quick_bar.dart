import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';
import 'package:uuid/uuid.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/unit.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/widgets/edit_item_dialog.dart';

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
  bool _isAdding = false;

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
      _isAdding = true;
    });
    final newId = const Uuid().v4();
    final newItem = ShoppingItem(
      id: newId,
      shoppingListId: widget.listId,
      name: text,
      quantity: 1,
      categoryId: 'others',
      unit: Unit.un,
    );
    _controller.clear();
    try {
      await ref
          .read(shoppingListItemsProvider(widget.listId).notifier)
          .addItem(
            id: newId,
            listId: widget.listId,
            name: text,
            quantity: 1,
            categoryId: 'others',
            unit: Unit.un,
          );
      if (mounted) {
        final l10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.itemAddedSnack(text)),
            action: SnackBarAction(
              label: l10n.edit,
              onPressed: () {
                showDialog<void>(
                  context: context,
                  builder: (_) => EditItemDialog(
                    listId: widget.listId,
                    item: newItem,
                  ),
                );
              },
            ),
          ),
        );
      }
    } on Exception catch (e) {
      debugPrint('Quick add failed: $e');
      if (mounted) {
        _controller.text = text;
      }
    } finally {
      if (mounted) {
        setState(() {
          _isAdding = false;
        });
      }
    }
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
                  hintText: AppLocalizations.of(context)!.kipiQuickBarHint,
                  hintStyle: TextStyle(
                    color: theme.colorScheme.primary.withAlpha(180),
                    fontSize: 14,
                  ),
                  filled: true,
                  fillColor: isDark
                      ? theme.colorScheme.primaryContainer.withAlpha(40)
                      : theme.colorScheme.primaryContainer.withAlpha(60),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(RadiusTokens.full),
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
            IconButton.filled(
              onPressed: _isAdding ? null : _send,
              icon: _isAdding
                  ? SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.5,
                        color: theme.colorScheme.onPrimary,
                      ),
                    )
                  : const Icon(
                      Icons.arrow_upward,
                      size: 20,
                    ),
            ),

          ],
        ),
      ),
    ).animate().fadeIn(duration: 300.ms).slideY(begin: 0.15, end: 0);
  }
}
