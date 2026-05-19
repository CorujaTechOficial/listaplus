import 'package:flutter/material.dart';
import '../theme/tokens.dart';

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
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.xl),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock,
                size: 64,
                color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
              ),
              const SizedBox(height: Spacing.md),
              Text(
                description,
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Spacing.xs),
              Text(
                'Faça upgrade para desbloquear',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: Spacing.md),
              FilledButton.tonalIcon(
                onPressed: onUpgrade,
                icon: const Icon(Icons.workspace_premium),
                label: const Text('Fazer upgrade'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
