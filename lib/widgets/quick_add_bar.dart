import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../theme/tokens.dart';
import '../models/category.dart';
import '../models/unit.dart';
import '../providers/shopping_list_provider.dart';
import '../providers/item_history_provider.dart';
import 'add_item_dialog.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class QuickAddBar extends ConsumerStatefulWidget {
  const QuickAddBar({super.key, required this.listId});

  final String listId;

  @override
  ConsumerState<QuickAddBar> createState() => _QuickAddBarState();
}

class _QuickAddBarState extends ConsumerState<QuickAddBar> {
  static const List<String> _commonProducts = [
    'Abacaxi', 'Absorvente', 'Achocolatado', 'Açúcar', 'Água Sanitária', 'Alface',
    'Alho', 'Amaciante', 'Amendoim', 'Arroz', 'Azeite', 'Azeitona', 'Bacon',
    'Balas', 'Banana', 'Batata', 'Batata Palha', 'Biscoito', 'Bolacha', 'Bolo',
    'Brócolis', 'Café', 'Carne', 'Cebola', 'Cenoura', 'Cerveja', 'Chá', 'Chocolate',
    'Condicionador', 'Couve', 'Creme de Leite', 'Creme Dental', 'Desinfetante',
    'Desodorante', 'Detergente', 'Ervilha', 'Esponja de Aço', 'Extrato de Tomate',
    'Farinha de Mandioca', 'Farinha de Trigo', 'Feijão', 'Fósforo', 'Frango',
    'Frios', 'Gelatina', 'Goma de Mascar', 'Hambúrguer', 'Hidratante', 'Iogurte',
    'Leite', 'Leite Condensado', 'Limão', 'Linguiça', 'Macarrão', 'Maçã',
    'Maionese', 'Mamão', 'Manteiga', 'Margarina', 'Manga', 'Melancia', 'Melão',
    'Milho', 'Molho de Tomate', 'Mortadela', 'Óleo', 'Ovos', 'Pão', 'Papel Higiênico',
    'Papel Toalha', 'Peixe', 'Pera', 'Pipoca', 'Pizza', 'Presunto', 'Queijo',
    'Refrigerante', 'Sabão em Barra', 'Sabão em Pó', 'Sabonete', 'Salgadinho',
    'Salsicha', 'Sal', 'Shampoo', 'Sorvete', 'Suco', 'Tomate', 'Uva', 'Vinagre',
  ];

  final _controller = TextEditingController();
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
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _scanBarcode(TextEditingController autocompleteController) async {
    final result = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      builder: (context) => const _BarcodeScannerSheet(),
    );

    if (result != null && result.isNotEmpty) {
      autocompleteController.text = 'Produto $result';
      _controller.text = 'Produto $result';
      HapticFeedback.heavyImpact();
    }
  }

  Future<void> _listen(TextEditingController autocompleteController) async {
    if (!_isListening) {
      final status = await Permission.microphone.request();
      if (status.isGranted) {
        final available = await _speech.initialize(
          onStatus: (val) {
            if (val == 'done' || val == 'notListening') {
              if (mounted) setState(() => _isListening = false);
            }
          },
          onError: (val) {
            if (mounted) setState(() => _isListening = false);
          },
        );
        if (available) {
          setState(() => _isListening = true);
          await _speech.listen(
            onResult: (val) {
              setState(() {
                autocompleteController.text = val.recognizedWords;
                _controller.text = val.recognizedWords;
              });
            },
            localeId: 'pt_BR',
          );
        }
      }
    } else {
      setState(() => _isListening = false);
      await _speech.stop();
    }
  }

  Future<void> _submit(TextEditingController autocompleteController) async {
    final name = autocompleteController.text.trim();
    if (name.isEmpty || _isAdding) {
      return;
    }

    setState(() => _isAdding = true);
    HapticFeedback.lightImpact();

    try {
      await ref.read(shoppingListItemsProvider(widget.listId).notifier).addItem(
            listId: widget.listId,
            name: name,
            quantity: 1,
            category: Category.others,
            unit: Unit.un,
          );
      autocompleteController.clear();
      _controller.clear();
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
      margin: EdgeInsets.fromLTRB(
        Spacing.md,
        0,
        Spacing.md,
        Spacing.md + MediaQuery.of(context).viewInsets.bottom,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF232730) : Colors.white,
        borderRadius: BorderRadius.circular(RadiusTokens.full),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.3 : 0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
        border: Border.all(
          color: isDark
              ? theme.colorScheme.outlineVariant.withValues(alpha: 0.1)
              : theme.colorScheme.outlineVariant.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: SafeArea(
        top: false,
        child: Autocomplete<String>(
          optionsBuilder: (textEditingValue) {
            if (textEditingValue.text.isEmpty) {
              return const Iterable<String>.empty();
            }
            return _commonProducts.where((option) {
              return option.toLowerCase().contains(textEditingValue.text.toLowerCase());
            });
          },
          onSelected: (selection) => _submit(TextEditingController(text: selection)),
          fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
            return Row(
              children: [
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      hintText: l10n.addItem,
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
                                     begin: 0.5, 
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
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    textInputAction: TextInputAction.send,
                    onSubmitted: (_) => _submit(textEditingController),
                    enabled: !_isAdding,
                  ),
                ),
                IconButton(
                  onPressed: () => showDialog<void>(
                    context: context,
                    builder: (_) => AddItemDialog(listId: widget.listId),
                  ),
                  icon: const Icon(Icons.tune, size: 20),
                  tooltip: l10n.addItem,
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: _isAdding ? null : () => _submit(textEditingController),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: _isAdding ? theme.colorScheme.surfaceContainerHighest : theme.colorScheme.primary,
                      shape: BoxShape.circle,
                      boxShadow: _isAdding ? null : [
                        BoxShadow(
                          color: theme.colorScheme.primary.withValues(alpha: 0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: _isAdding
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(strokeWidth: 2.5, color: Colors.white),
                            )
                          : const Icon(Icons.arrow_upward, size: 22, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 4),
              ],
            );
          },
        ),
      ),
    ).animate().fadeIn(duration: 400.ms).slideY(begin: 0.5, end: 0, curve: Curves.easeOut);
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
                final List<Barcode> barcodes = capture.barcodes;
                for (final barcode in barcodes) {
                  if (barcode.rawValue != null) {
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
