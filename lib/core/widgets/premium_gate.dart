import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class PremiumGate extends StatelessWidget {
  const PremiumGate({
    super.key,
    required this.title,
    required this.description,
    required this.onUpgrade,
  });

  final String title;
  final String description;
  final VoidCallback onUpgrade;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(Spacing.xl),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock,
                size: 64,
                color: theme.colorScheme.onSurfaceVariant.withAlpha((0.5 * 255).toInt()),
              ).animate().shake(
                duration: DurationTokens.slow,
                delay: const Duration(milliseconds: 300),
              ),
              const SizedBox(height: Spacing.md),
              Text(
                description,
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.center,
              ).animate().fadeIn(
                duration: DurationTokens.fast,
                delay: const Duration(milliseconds: 200),
              ).slideY(
                begin: 0.2,
                end: 0,
                duration: DurationTokens.fast,
                delay: const Duration(milliseconds: 200),
                curve: Curves.easeOut,
              ),
              const SizedBox(height: Spacing.xs),
              Text(
                l10n.premiumUpgrade,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ).animate().fadeIn(
                duration: DurationTokens.fast,
                delay: const Duration(milliseconds: 300),
              ),
              const SizedBox(height: Spacing.md),
              FilledButton.tonalIcon(
                onPressed: onUpgrade,
                icon: const Icon(Icons.workspace_premium),
                label: Text(l10n.upgrade),
              ).animate().fadeIn(
                duration: DurationTokens.fast,
                delay: const Duration(milliseconds: 400),
              ).scale(
                begin: const Offset(0.8, 0.8),
                end: const Offset(1, 1),
                duration: DurationTokens.fast,
                delay: const Duration(milliseconds: 400),
                curve: Curves.easeOutBack,
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
