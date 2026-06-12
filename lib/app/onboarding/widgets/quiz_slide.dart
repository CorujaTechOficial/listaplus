import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/app/onboarding/models/quiz_config.dart';
import 'package:shopping_list/theme/tokens.dart';

class QuizSlide extends StatelessWidget {
  const QuizSlide({super.key, required this.config});

  final QuizConfig config;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(
              config.title,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn(duration: DurationTokens.normal).slideY(begin: 0.1),
            const SizedBox(height: Spacing.xl),
            for (final (index, option) in config.options.indexed) ...[
              _OptionTile(
                option: option,
                selected: option.id == config.selectedId,
                onTap: () => config.onSelected(option.id),
              ).animate(delay: Duration(milliseconds: 60 * index)).fadeIn().slideY(begin: 0.15),
              const SizedBox(height: Spacing.sm),
            ],
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

class _OptionTile extends StatelessWidget {
  const _OptionTile({
    required this.option,
    required this.selected,
    required this.onTap,
  });

  final QuizOption option;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: selected ? scheme.primaryContainer : scheme.surfaceContainerHighest,
      borderRadius: BorderRadius.circular(RadiusTokens.lg),
      child: InkWell(
        borderRadius: BorderRadius.circular(RadiusTokens.lg),
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.md,
            vertical: Spacing.md,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(RadiusTokens.lg),
            border: Border.all(
              color: selected ? scheme.primary : Colors.transparent,
              width: 2,
            ),
          ),
          child: Row(
            children: [
              Text(option.emoji, style: const TextStyle(fontSize: 24)),
              const SizedBox(width: Spacing.sm),
              Expanded(
                child: Text(
                  option.label,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              if (selected) Icon(Icons.check_circle_rounded, color: scheme.primary),
            ],
          ),
        ),
      ),
    );
  }
}
