import 'package:flutter/material.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CatalogSearchBar extends StatelessWidget {
  const CatalogSearchBar({
    super.key,
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.autofocus = false,
  });

  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return TextField(
      controller: controller,
      autofocus: autofocus,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(PhosphorIconsRegular.magnifyingGlass, size: 20),
        suffixIcon: ListenableBuilder(
          listenable: controller,
          builder:
              (_, _) =>
                  controller.text.isNotEmpty
                      ? IconButton(
                        icon: const Icon(PhosphorIconsRegular.x, size: 18),
                        onPressed: () {
                          controller.clear();
                          onChanged?.call('');
                        },
                      )
                      : const SizedBox.shrink(),
        ),
        filled: true,
        fillColor: scheme.surfaceContainerHighest,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusTokens.full),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: Spacing.md,
          vertical: Spacing.sm,
        ),
      ),
    );
  }
}
