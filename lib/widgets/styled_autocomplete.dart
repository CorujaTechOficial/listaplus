import 'package:flutter/material.dart';
import '../theme/tokens.dart';

class StyledAutocomplete<T extends String> extends StatelessWidget {
  const StyledAutocomplete({
    super.key,
    required this.optionsBuilder,
    required this.fieldViewBuilder,
    this.onSelected,
    this.initialValue,
  });

  final void Function(T selection)? onSelected;
  final Iterable<T> Function(TextEditingValue textEditingValue) optionsBuilder;
  final Widget Function(
    BuildContext context,
    TextEditingController textEditingController,
    FocusNode focusNode,
    VoidCallback onFieldSubmitted,
  ) fieldViewBuilder;
  final TextEditingValue? initialValue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Autocomplete<T>(
      initialValue: initialValue,
      optionsBuilder: optionsBuilder,
      onSelected: onSelected,
      fieldViewBuilder: fieldViewBuilder,
      optionsViewBuilder: (context, onSelected, options) {
        final optionsList = options.toList();
        if (optionsList.isEmpty) {
          return const SizedBox.shrink();
        }

        return Align(
          alignment: Alignment.topLeft,
          child: Material(
            elevation: 8,
            shadowColor: theme.shadowColor.withAlpha((0.3 * 255).toInt()),
            borderRadius: BorderRadius.circular(RadiusTokens.md),
            clipBehavior: Clip.antiAlias,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 220,
                minWidth: 200,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerLow,
                  borderRadius: BorderRadius.circular(RadiusTokens.md),
                  border: Border.all(
                    color: theme.colorScheme.outlineVariant.withAlpha((0.3 * 255).toInt()),
                  ),
                ),
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: Spacing.xxs),
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: optionsList.length,
                  separatorBuilder: (context, index) => Divider(
                    height: 1,
                    thickness: 0.5,
                    indent: Spacing.md,
                    endIndent: Spacing.md,
                    color: theme.colorScheme.outlineVariant.withAlpha((0.2 * 255).toInt()),
                  ),
                  itemBuilder: (context, index) {
                    final option = optionsList[index];
                    return InkWell(
                      onTap: () => onSelected(option),
                      borderRadius: index == 0
                          ? const BorderRadius.vertical(top: Radius.circular(RadiusTokens.md))
                          : index == optionsList.length - 1
                              ? const BorderRadius.vertical(bottom: Radius.circular(RadiusTokens.md))
                              : null,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Spacing.md,
                          vertical: Spacing.sm,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_bag_outlined,
                              size: 18,
                              color: theme.colorScheme.primary,
                            ),
                            const SizedBox(width: Spacing.sm),
                            Expanded(
                              child: Text(
                                option,
                                style: theme.textTheme.bodyLarge?.copyWith(
                                  color: theme.colorScheme.onSurface,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
