import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';

class OnboardingSlideAction extends StatelessWidget {
  const OnboardingSlideAction({super.key, required this.onContinue});

  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        const SizedBox(height: Spacing.xl),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Spacing.lg),
          child: Column(
            children: [
              Text(
                'O que você precisa comprar?',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              )
                  .animate()
                  .fadeIn(duration: 400.ms)
                  .slideY(begin: -0.1, end: 0),
              const SizedBox(height: Spacing.xs),
              Text(
                'Fala pro Kipi — ele monta sua lista em segundos.',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ).animate(delay: 200.ms).fadeIn(duration: 400.ms),
            ],
          ),
        ),
        const SizedBox(height: Spacing.md),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: Spacing.md),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: theme.colorScheme.outlineVariant,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(13),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const AiChatPanel(
                listId: null,
                compact: false,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(Spacing.md),
          child: TextButton(
            onPressed: onContinue,
            child: Text(
              'Pular por agora',
              style: TextStyle(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
