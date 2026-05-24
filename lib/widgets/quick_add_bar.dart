import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../theme/tokens.dart';
import '../models/unit.dart';
import '../providers/shopping_list_provider.dart';
import '../constants/common_products.dart';
import 'styled_autocomplete.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class QuickAddBar extends ConsumerStatefulWidget {
  const QuickAddBar({super.key, required this.listId});

  final String listId;

  @override
  ConsumerState<QuickAddBar> createState() => _QuickAddBarState();
}

class _QuickAddBarState extends ConsumerState<QuickAddBar> {
  final _focusNode = FocusNode();
  bool _isAdding = false;
  late stt.SpeechToText _speech;
  bool _isListening = false;

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _scanBarcode(TextEditingController controller) async {
    final result = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      builder: (context) => const _BarcodeScannerSheet(),
    );

    if (result != null && result.isNotEmpty) {
      controller.text = 'Produto $result';
      unawaited(HapticFeedback.heavyImpact());
    }
  }

  Future<void> _listen(TextEditingController controller) async {
    if (!_isListening) {
      final status = await Permission.microphone.request();
      if (status.isGranted) {
        final available = await _speech.initialize(
          onStatus: (val) {
            if (val == 'done' || val == 'notListening') {
              if (mounted) {
                setState(() => _isListening = false);
              }
            }
          },
          onError: (val) {
            if (mounted) {
              setState(() => _isListening = false);
            }
          },
        );
        if (available) {
          setState(() => _isListening = true);
          if (!mounted) {
            return;
          }
          final locale = Localizations.localeOf(context);
          await _speech.listen(
            onResult: (val) {
              setState(() {
                controller.text = val.recognizedWords;
              });
            },
            // ignore: deprecated_member_use
            localeId: locale.toString(),
          );
        }
      }
    } else {
      setState(() => _isListening = false);
      await _speech.stop();
    }
  }

  Future<void> _submit(TextEditingController controller) async {
    final name = controller.text.trim();
    if (name.isEmpty || _isAdding) {
      return;
    }

    setState(() => _isAdding = true);
    unawaited(HapticFeedback.lightImpact());

    try {
      await ref.read(shoppingListItemsProvider(widget.listId).notifier).addItem(
            listId: widget.listId,
            name: name,
            quantity: 1,
            categoryId: 'others',
            unit: Unit.un,
          );
      controller.clear();
      _focusNode.requestFocus();
    } finally {
      if (mounted) {
        setState(() => _isAdding = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.outlineVariant.withAlpha((0.3 * 255).toInt()),
            width: 1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha((0.05 * 255).toInt()),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: StyledAutocomplete(
          optionsBuilder: (textEditingValue) {
            if (textEditingValue.text.isEmpty) {
              return const Iterable<String>.empty();
            }
            return commonProducts.where((option) {
              return option.toLowerCase().contains(textEditingValue.text.toLowerCase());
            });
          },
          fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
            return Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      hintText: l10n.addItem,
                      filled: true,
                      fillColor: isDark ? const Color(0xFF232730) : Colors.grey.withAlpha((0.1 * 255).toInt()),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      prefixIcon: Icon(
                        Icons.add_shopping_cart,
                        size: 20,
                        color: focusNode.hasFocus ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant,
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (_isListening)
                            Container(
                              height: 24,
                              width: 60,
                              margin: const EdgeInsets.only(right: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: List.generate(5, (index) => 
                                  Container(
                                    width: 3,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ).animate(onPlay: (c) {
                                    if (!WidgetsBinding.instance.runtimeType.toString().contains('TestWidgetsFlutterBinding')) {
                                      c.repeat(reverse: true);
                                    }
                                  })
                                   .scaleY(
                                     // ignore: prefer_int_literals
                                     begin: 0.5, 
                                     // ignore: prefer_int_literals
                                     end: 2.0, 
                                     duration: Duration(milliseconds: 300 + (index * 100)),
                                     curve: Curves.easeInOut
                                   )
                                ),
                              ),
                            ),
                          _QuickActionButton(
                            icon: Icons.qr_code_scanner,
                            color: Colors.blue,
                            onPressed: () => _scanBarcode(textEditingController),
                          ),
                          _QuickActionButton(
                            icon: _isListening ? Icons.mic : Icons.mic_none,
                            color: _isListening ? theme.colorScheme.error : theme.colorScheme.primary,
                            onPressed: () => _listen(textEditingController),
                            isPulse: _isListening,
                          ),
                        ],
                      ),
                    ),
                    textInputAction: TextInputAction.send,
                    onSubmitted: (_) => _submit(textEditingController),
                    enabled: !_isAdding,
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: _isAdding ? null : () => _submit(textEditingController),
                  child: CircleAvatar(
                    backgroundColor: _isAdding ? theme.colorScheme.surfaceContainerHighest : theme.colorScheme.primary,
                    child: _isAdding
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2.5, color: Colors.white),
                          )
                        : const Icon(Icons.arrow_upward, size: 22, color: Colors.white),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    ).animate().fadeIn(duration: 400.ms).slideY(begin: 0.2, end: 0, curve: Curves.easeOut);
  }
}

class _QuickActionButton extends StatelessWidget {
  const _QuickActionButton({
    required this.icon,
    required this.color,
    required this.onPressed,
    this.isPulse = false,
  });

  final IconData icon;
  final Color color;
  final VoidCallback onPressed;
  final bool isPulse;

  @override
  Widget build(BuildContext context) {
    Widget iconWidget = Icon(icon, size: 20, color: color);
    
    if (isPulse) {
      iconWidget = iconWidget.animate(onPlay: (c) {
            if (!WidgetsBinding.instance.runtimeType.toString().contains('TestWidgetsFlutterBinding')) {
              c.repeat();
            }
          })
          .scale(begin: const Offset(1, 1), end: const Offset(1.2, 1.2), duration: 500.ms)
          .then()
          .scale(begin: const Offset(1.2, 1.2), end: const Offset(1, 1), duration: 500.ms);
    }

    return IconButton(
      icon: iconWidget,
      onPressed: onPressed,
      visualDensity: VisualDensity.compact,
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
    );
  }
}

class _BarcodeScannerSheet extends StatefulWidget {
  const _BarcodeScannerSheet();

  @override
  State<_BarcodeScannerSheet> createState() => _BarcodeScannerSheetState();
}

class _BarcodeScannerSheetState extends State<_BarcodeScannerSheet> {
  final MobileScannerController controller = MobileScannerController();
  bool _hasScanned = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Spacing.md),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Escanear Código de Barras',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          Expanded(
            child: MobileScanner(
              controller: controller,
              onDetect: (capture) {
                if (_hasScanned) {
                  return;
                }
                final List<Barcode> barcodes = capture.barcodes;
                for (final barcode in barcodes) {
                  if (barcode.rawValue != null) {
                    _hasScanned = true;
                    Navigator.pop(context, barcode.rawValue);
                    break;
                  }
                }
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(Spacing.lg),
            child: Text(
              'Aponte a câmera para o código de barras',
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
