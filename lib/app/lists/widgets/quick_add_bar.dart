import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:shopping_list/theme/tokens.dart';
import '../../../models/unit.dart';
import 'package:shopping_list/app/catalog/providers/catalog_providers.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import '../../../constants/common_products.dart';
import 'package:shopping_list/core/widgets/styled_autocomplete.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import 'package:shopping_list/app/lists/providers/item_memory_provider.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/utils/snack_bar_utils.dart';
import 'package:shopping_list/models/category_data.dart';
import 'package:shopping_list/models/item_memory.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
  ItemMemory? _prefilledMeta;

  void _onSuggestionSelected(String name) {
    final memory = ref.read(recentItemMemoryProvider).value ?? {};
    final key = name.trim().toLowerCase();
    final meta = memory[key];
    if (meta != null) {
      setState(() => _prefilledMeta = meta);
    }
  }

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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(RadiusTokens.xxxl),
        ),
      ),
      builder: (context) => const _BarcodeScannerSheet(),
    );

    if (result != null && result.isNotEmpty) {
      controller.text = result;
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

    final meta = _prefilledMeta;
    try {
      await ref
          .read(shoppingListItemsProvider(widget.listId).notifier)
          .addItem(
            listId: widget.listId,
            name: name,
            quantity: meta?.quantity ?? 1,
            categoryId: meta?.categoryId ?? 'others',
            unit: meta?.unit ?? Unit.un,
            estimatedPrice: meta?.estimatedPrice,
          );
      controller.clear();
      setState(() => _prefilledMeta = null);
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

    ref.watch(recentItemMemoryProvider);

    return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.xs,
            vertical: Spacing.xs,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            border: Border(
              top: BorderSide(
                color: theme.colorScheme.outlineVariant.withAlpha(
                  (0.3 * 255).toInt(),
                ),
                width: 1,
              ),
            ),
          ),
          child: SafeArea(
            top: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_prefilledMeta != null)
                  _MetaChipRow(
                    meta: _prefilledMeta!,
                    onClear: () => setState(() => _prefilledMeta = null),
                  ),
                StyledAutocomplete(
                  onSelected: _onSuggestionSelected,
                  optionsBuilder: (textEditingValue) {
                    if (textEditingValue.text.isEmpty) {
                      return const Iterable<String>.empty();
                    }
                    return commonProducts.where((option) {
                      return option.toLowerCase().contains(
                        textEditingValue.text.toLowerCase(),
                      );
                    });
                  },
                  fieldViewBuilder: (
                    context,
                    textEditingController,
                    focusNode,
                    onFieldSubmitted,
                  ) {
                    return Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: textEditingController,
                            focusNode: focusNode,
                            decoration: InputDecoration(
                              hintText: l10n.addItem,
                              filled: true,
                              fillColor:
                                  isDark
                                      ? theme.colorScheme.surfaceContainerHigh
                                      : theme
                                          .colorScheme
                                          .surfaceContainerHighest
                                          .withAlpha(77),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  RadiusTokens.xxl,
                                ),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: Spacing.md,
                                vertical: 10,
                              ),
                              prefixIcon: Icon(
                                PhosphorIconsRegular.shoppingCartSimple,
                                size: 20,
                                color:
                                    focusNode.hasFocus
                                        ? theme.colorScheme.primary
                                        : theme.colorScheme.onSurfaceVariant,
                              ),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (_isListening)
                                    Container(
                                      height: 24,
                                      width: 60,
                                      margin: const EdgeInsets.only(
                                        right: Spacing.xs,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: List.generate(
                                          5,
                                          (index) => Container(
                                                width: 3,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        RadiusTokens.bar,
                                                      ),
                                                ),
                                              )
                                              .animate(
                                                onPlay: (c) {
                                                  if (!WidgetsBinding
                                                      .instance
                                                      .runtimeType
                                                      .toString()
                                                      .contains(
                                                        'TestWidgetsFlutterBinding',
                                                      )) {
                                                    c.repeat(reverse: true);
                                                  }
                                                },
                                              )
                                              .scaleY(
                                                // ignore: prefer_int_literals
                                                begin: 0.5,
                                                // ignore: prefer_int_literals
                                                end: 2.0,
                                                duration: Duration(
                                                  milliseconds:
                                                      300 + (index * 100),
                                                ),
                                                curve: Curves.easeInOut,
                                              ),
                                        ),
                                      ),
                                    ),
                                  _QuickActionButton(
                                    icon: PhosphorIconsRegular.qrCode,
                                    color: theme.colorScheme.primary,
                                    onPressed:
                                        () =>
                                            _scanBarcode(textEditingController),
                                  ),
                                  _QuickActionButton(
                                    icon:
                                        _isListening
                                            ? PhosphorIconsRegular.microphone
                                            : PhosphorIconsRegular.microphone,
                                    color:
                                        _isListening
                                            ? theme.colorScheme.error
                                            : theme.colorScheme.primary,
                                    onPressed:
                                        () => _listen(textEditingController),
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
                        const SizedBox(width: Spacing.xs),
                        IconButton.filled(
                          onPressed:
                              _isAdding
                                  ? null
                                  : () => _submit(textEditingController),
                          icon:
                              _isAdding
                                  ? const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2.5,
                                      color: Colors.white,
                                    ),
                                  )
                                  : const Icon(
                                    PhosphorIconsRegular.arrowUp,
                                    size: 22,
                                    color: Colors.white,
                                  ),
                          style: IconButton.styleFrom(
                            backgroundColor:
                                _isAdding
                                    ? theme.colorScheme.surfaceContainerHighest
                                    : theme.colorScheme.primary,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        )
        .animate()
        .fadeIn(duration: 400.ms)
        .slideY(begin: 0.2, end: 0, curve: Curves.easeOut);
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
      iconWidget = iconWidget
          .animate(
            onPlay: (c) {
              if (!WidgetsBinding.instance.runtimeType.toString().contains(
                'TestWidgetsFlutterBinding',
              )) {
                c.repeat();
              }
            },
          )
          .scale(
            begin: const Offset(1, 1),
            end: const Offset(1.2, 1.2),
            duration: 500.ms,
          )
          .then()
          .scale(
            begin: const Offset(1.2, 1.2),
            end: const Offset(1, 1),
            duration: 500.ms,
          );
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

class _BarcodeScannerSheet extends ConsumerStatefulWidget {
  const _BarcodeScannerSheet();

  @override
  ConsumerState<_BarcodeScannerSheet> createState() =>
      _BarcodeScannerSheetState();
}

class _BarcodeScannerSheetState extends ConsumerState<_BarcodeScannerSheet> {
  final MobileScannerController controller = MobileScannerController();
  bool _hasScanned = false;
  bool _isLooking = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(RadiusTokens.xxxl),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Spacing.md),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.scanBarcodeTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                IconButton(
                  icon: const Icon(PhosphorIconsRegular.x, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          Expanded(
            child: MobileScanner(
              controller: controller,
              onDetect: (capture) async {
                if (_hasScanned || _isLooking) {
                  return;
                }
                final barcodes = capture.barcodes;
                for (final barcode in barcodes) {
                  final rawValue = barcode.rawValue;
                  if (rawValue != null) {
                    _hasScanned = true;
                    setState(() => _isLooking = true);

                    final product = await ref.read(
                      barcodeProductProvider(rawValue).future,
                    );

                    if (!mounted) {
                      return;
                    }
                    // ignore: use_build_context_synchronously
                    final nav = Navigator.of(context);
                    // ignore: use_build_context_synchronously
                    final notFoundMsg =
                        AppLocalizations.of(context)!.catalogProductNotFound;

                    if (product != null) {
                      nav.pop(product.displayName);
                    } else {
                      nav.pop(null);
                      // ignore: use_build_context_synchronously
                      showKipiSnackBar(
                        context,
                        message: notFoundMsg,
                        type: SnackBarType.warning,
                      );
                    }
                    break;
                  }
                }
              },
            ),
          ),
          if (_isLooking)
            const Padding(
              padding: EdgeInsets.all(Spacing.md),
              child: CircularProgressIndicator(),
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

class _MetaChipRow extends ConsumerWidget {
  const _MetaChipRow({required this.meta, required this.onClear});

  final ItemMemory meta;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final categories = ref.watch(categoriesProvider).value ?? <CategoryData>[];
    final cat = categories.where((c) => c.id == meta.categoryId).firstOrNull;
    final currencyCode = resolveCurrencyCode(
      ref.watch(currencySettingProvider),
      Localizations.localeOf(context),
    );

    return Padding(
      padding: const EdgeInsets.only(
        left: Spacing.md,
        right: Spacing.sm,
        bottom: Spacing.xxs,
      ),
      child: Row(
        children: [
          if (cat != null) ...[
            Icon(
              PhosphorIconsRegular.tag,
              size: 13,
              color: theme.colorScheme.primary,
            ),
            const SizedBox(width: Spacing.xxs),
            Text(
              cat.localizedName(AppLocalizations.of(context)!),
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(width: Spacing.xs),
          ],
          if (meta.estimatedPrice != null) ...[
            Text(
              formatCurrency(meta.estimatedPrice!, currencyCode),
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: Spacing.xs),
          ],
          Text(
            '${meta.quantity} ${meta.unit.label}',
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onClear,
            child: Icon(
              PhosphorIconsRegular.x,
              size: 16,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
