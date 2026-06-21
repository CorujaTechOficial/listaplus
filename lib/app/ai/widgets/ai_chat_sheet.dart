import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class AiChatSheet extends ConsumerWidget {
  const AiChatSheet({
    super.key,
    this.listId,
    this.listName,
    this.onOrganizeRequested,
    this.onItemsAdded,
    this.onNavigateToRecipe,
  });

  final String? listId;
  final String? listName;
  final VoidCallback? onOrganizeRequested;
  final VoidCallback? onItemsAdded;
  final void Function(String recipeId)? onNavigateToRecipe;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      minChildSize: 0.3,
      maxChildSize: 0.9,
      snap: true,
      snapSizes: const [0.3, 0.6, 0.9],
      builder: (context, scrollController) {
        final keyboardHeight = MediaQuery.viewInsetsOf(context).bottom;
        return Padding(
          padding: EdgeInsets.only(bottom: keyboardHeight),
          child: Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(RadiusTokens.xxl),
              ),
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.shadow.withAlpha(
                    (0.1 * 255).toInt(),
                  ),
                  blurRadius: 20,
                  offset: const Offset(0, -5),
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: Spacing.xs),
                Center(
                  child: Container(
                    width: 36,
                    height: 4,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(RadiusTokens.bar),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Spacing.md,
                    vertical: Spacing.xs,
                  ),
                  child: Row(
                    children: [
                      Text(
                        l10n.aiAssistantTitle,
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      TextButton.icon(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close, size: 18),
                        label: Text(l10n.closeSheet),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Spacing.xs,
                            vertical: 0,
                          ),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                Expanded(
                  child: AiChatPanel(
                    listId: listId,
                    listName: listName,
                    compact: true,
                    onOrganizeRequested: onOrganizeRequested,
                    onItemsAdded: onItemsAdded,
                    onNavigateToRecipe: onNavigateToRecipe,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
