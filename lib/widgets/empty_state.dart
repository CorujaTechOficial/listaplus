import 'package:flutter/material.dart';
// coverage:ignore-start
import 'package:flutter_animate/flutter_animate.dart';
import '../theme/tokens.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({
    super.key,
    this.icon,
    this.title,
    this.subtitle,
  });

  final IconData? icon;
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.xl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: isDark
                    ? theme.colorScheme.primaryContainer.withValues(alpha: 0.15)
                    : theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon ?? Icons.shopping_cart_outlined,
                size: 48,
                color: theme.colorScheme.primary.withValues(alpha: 0.6),
              ),
            )
                .animate()
                .fadeIn(duration: const Duration(milliseconds: 600))
                .scale(delay: const Duration(milliseconds: 200), duration: const Duration(milliseconds: 400), curve: Curves.easeOutBack),
            const SizedBox(height: Spacing.lg),
            Text(
              title ?? 'Sua lista está vazia',
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            )
                .animate()
                .fadeIn(duration: const Duration(milliseconds: 500), delay: const Duration(milliseconds: 300))
                .slideY(begin: 0.2, end: 0, duration: const Duration(milliseconds: 500), curve: Curves.easeOut),
            const SizedBox(height: Spacing.xs),
            Text(
              subtitle ?? 'Adicione itens para começar',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            )
                .animate()
                .fadeIn(duration: const Duration(milliseconds: 500), delay: const Duration(milliseconds: 400))
                .slideY(begin: 0.15, end: 0, duration: const Duration(milliseconds: 500), curve: Curves.easeOut),
          ],
        ),
      ),
    );
  }
}
// coverage:ignore-end
