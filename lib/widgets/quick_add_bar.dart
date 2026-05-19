import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/tokens.dart';
import '../models/category.dart';
import '../models/unit.dart';
import '../providers/shopping_list_provider.dart';
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

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _submit(TextEditingController autocompleteController) async {
    final name = autocompleteController.text.trim();
    if (name.isEmpty || _isAdding) {
      return;
    }

    setState(() => _isAdding = true);
    // ignore: unawaited_futures
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
      padding: EdgeInsets.fromLTRB(
        Spacing.md,
        Spacing.sm,
        Spacing.md,
        Spacing.sm + MediaQuery.of(context).viewInsets.bottom,
      ),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A1D24) : Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
        border: Border(
          top: BorderSide(
            color: isDark
                ? theme.colorScheme.outlineVariant.withValues(alpha: 0.15)
                : theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
            width: isDark ? 0.5 : 1,
          ),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text.isEmpty) {
              return const Iterable<String>.empty();
            }
            final query = textEditingValue.text.toLowerCase();
            return _commonProducts.where((String option) {
              return option.toLowerCase().contains(query);
            });
          },
          onSelected: (String selection) {
            _controller.text = selection;
            // O Autocomplete vai atualizar o textEditingController internamente antes de chamar onSelected?
            // Melhor passar o controller explicitamente se possível, mas fieldViewBuilder já dá um.
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
                      prefixIcon: const Icon(Icons.add_shopping_cart, size: 20),
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: Spacing.md,
                        vertical: Spacing.sm,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(RadiusTokens.full),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: isDark
                          ? theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.2)
                          : theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
                    ),
                    textInputAction: TextInputAction.send,
                    onSubmitted: (_) => _submit(textEditingController),
                    enabled: !_isAdding,
                  ),
                ),
                const SizedBox(width: Spacing.xs),
                IconButton(
                  onPressed: () => showDialog<void>(
                    context: context,
                    builder: (_) => AddItemDialog(listId: widget.listId),
                  ),
                  icon: const Icon(Icons.tune, size: 20),
                  tooltip: l10n.addItem,
                ),
                const SizedBox(width: Spacing.xs),
                IconButton.filled(
                  onPressed: _isAdding ? null : () => _submit(textEditingController),
                  icon: _isAdding
                      ? const SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                        )
                      : const Icon(Icons.arrow_upward, size: 20),
                  style: IconButton.styleFrom(
                    backgroundColor: theme.colorScheme.primary,
                    foregroundColor: theme.colorScheme.onPrimary,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
