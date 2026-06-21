import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

/// Bottom sheet that surfaces Kipi's capabilities in a scannable,
/// tappable format — so users discover features beyond the empty-state prompts.
/// Appears from an info icon in the chat input area or the app bar overflow.
class CapabilitiesHelpSheet extends StatelessWidget {
  const CapabilitiesHelpSheet({super.key, this.onPromptSelected});

  /// Called when the user taps an example prompt chip.
  /// If null, the sheet just closes without sending a message.
  final void Function(String prompt)? onPromptSelected;

  static Future<void> show(
    BuildContext context, {
    void Function(String prompt)? onPromptSelected,
  }) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => CapabilitiesHelpSheet(onPromptSelected: onPromptSelected),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    final categories = _buildCategories(l10n);

    return DraggableScrollableSheet(
      initialChildSize: 0.65,
      minChildSize: 0.4,
      maxChildSize: 0.92,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(RadiusTokens.lg),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Drag handle
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: Spacing.xs),
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.outlineVariant,
                    borderRadius: BorderRadius.circular(RadiusTokens.bar),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  Spacing.lg,
                  Spacing.sm,
                  Spacing.lg,
                  Spacing.xs,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        PhosphorIconsRegular.sparkle,
                        size: 20,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(width: Spacing.sm),
                    Expanded(
                      child: Text(
                        l10n.aiCapabilitiesTitle,
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(PhosphorIconsRegular.x),
                      onPressed: () => Navigator.pop(context),
                      tooltip: l10n.close,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  padding: const EdgeInsets.fromLTRB(
                    Spacing.md,
                    Spacing.sm,
                    Spacing.md,
                    Spacing.xl,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, categoryIndex) {
                    final category = categories[categoryIndex];
                    return _CategorySection(
                      category: category,
                      index: categoryIndex,
                      onPromptSelected: (prompt) {
                        Navigator.pop(context);
                        onPromptSelected?.call(prompt);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<_CapabilityCategory> _buildCategories(AppLocalizations l10n) {
    return [
      _CapabilityCategory(
        icon: PhosphorIconsRegular.shoppingCart,
        title: l10n.aiCapabilitiesLists,
        examples: [
          _Example(
            label: l10n.aiWelcomeSuggestCreateList,
            prompt: l10n.aiWelcomeSuggestCreateListPrompt,
          ),
          _Example(
            label: 'Organize by category',
            prompt: 'Kipi, organize my list by category',
          ),
          _Example(
            label: 'Check what\'s missing',
            prompt: 'What am I missing for a complete weekly shop?',
          ),
        ],
      ),
      _CapabilityCategory(
        icon: PhosphorIconsRegular.piggyBank,
        title: l10n.aiCapabilitiesBudget,
        examples: [
          _Example(
            label: l10n.aiWelcomeSuggestSave,
            prompt: l10n.aiWelcomeSuggestSavePrompt,
          ),
          _Example(
            label: 'Estimate my total',
            prompt: 'How much might my list cost roughly?',
          ),
          _Example(
            label: 'Cheaper alternatives',
            prompt: 'Suggest cheaper alternatives for items on my list',
          ),
        ],
      ),
      _CapabilityCategory(
        icon: PhosphorIconsRegular.forkKnife,
        title: l10n.aiCapabilitiesRecipes,
        examples: [
          _Example(
            label: l10n.aiWelcomeSuggestBarbecue,
            prompt: l10n.aiWelcomeSuggestBarbecuePrompt,
          ),
          _Example(
            label: 'Weekly meal plan',
            prompt: 'Plan a week of meals and add ingredients to my list',
          ),
          _Example(
            label: 'Recipe from what I have',
            prompt: 'Suggest a recipe using items already on my list',
          ),
        ],
      ),
      _CapabilityCategory(
        icon: PhosphorIconsRegular.sparkle,
        title: l10n.aiCapabilitiesOrganize,
        examples: [
          _Example(
            label: 'Remove what I bought',
            prompt: 'Remove all checked items from my list',
          ),
          _Example(
            label: 'Duplicate for next week',
            prompt: 'Add unchecked items from last week to a new list',
          ),
          _Example(
            label: 'Add pantry items',
            prompt: 'Add items I usually need but am running low on',
          ),
        ],
      ),
    ];
  }
}

class _CategorySection extends StatelessWidget {
  const _CategorySection({
    required this.category,
    required this.index,
    required this.onPromptSelected,
  });

  final _CapabilityCategory category;
  final int index;
  final void Function(String prompt) onPromptSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final reducedMotion =
        MediaQuery.maybeOf(context)?.disableAnimations ?? false;

    Widget content = Padding(
      padding: const EdgeInsets.only(bottom: Spacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Spacing.sm),
          Row(
            children: [
              Icon(
                category.icon,
                size: 18,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: Spacing.xs),
              Text(
                category.title,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          const SizedBox(height: Spacing.xs),
          Wrap(
            spacing: Spacing.xs,
            runSpacing: Spacing.xs,
            children: [
              for (final example in category.examples)
                _ExampleChip(
                  example: example,
                  onTap: () {
                    HapticFeedback.selectionClick();
                    onPromptSelected(example.prompt);
                  },
                ),
            ],
          ),
        ],
      ),
    );

    if (!reducedMotion) {
      content = content
          .animate()
          .fadeIn(
            delay: (index * 60).ms,
            duration: 240.ms,
          )
          .slideY(begin: 0.12, end: 0, curve: Curves.easeOutCubic);
    }

    return content;
  }
}

class _ExampleChip extends StatelessWidget {
  const _ExampleChip({required this.example, required this.onTap});

  final _Example example;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ActionChip(
      label: Text(
        example.label,
        style: theme.textTheme.labelMedium?.copyWith(
          color: theme.colorScheme.onSurface,
          fontWeight: FontWeight.w500,
        ),
      ),
      onPressed: onTap,
      side: BorderSide(
        color: theme.colorScheme.primary.withAlpha(40),
      ),
      backgroundColor: theme.colorScheme.primary.withAlpha(10),
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.xs,
        vertical: Spacing.xxs,
      ),
    );
  }
}

class _CapabilityCategory {
  const _CapabilityCategory({
    required this.icon,
    required this.title,
    required this.examples,
  });

  final IconData icon;
  final String title;
  final List<_Example> examples;
}

class _Example {
  const _Example({required this.label, required this.prompt});

  final String label;
  final String prompt;
}
