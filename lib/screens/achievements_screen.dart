import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/user_stats_provider.dart';
import '../theme/tokens.dart';

class AchievementsScreen extends ConsumerWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stats = ref.watch(userStatsNotifierProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Minhas Conquistas')),
      body: ListView(
        padding: const EdgeInsets.all(Spacing.md),
        children: [
          _buildStatCard(
            context,
            'Itens Comprados',
            stats.totalItemsBought.toString(),
            Icons.shopping_bag,
            Colors.blue,
          ),
          const SizedBox(height: Spacing.md),
          _buildStatCard(
            context,
            'Economia Total',
            'R\$ ${stats.totalSavings.toStringAsFixed(2)}',
            Icons.savings,
            Colors.green,
          ),
          const SizedBox(height: Spacing.md),
          _buildStatCard(
            context,
            'Sequência Atual',
            '${stats.currentStreak} dias',
            Icons.local_fire_department,
            Colors.orange,
          ),
          const SizedBox(height: Spacing.xl),
          Text(
            'Medalhas Desbloqueadas',
            style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: Spacing.md),
          Wrap(
            spacing: Spacing.md,
            runSpacing: Spacing.md,
            children: [
              _AchievementBadge(
                label: 'Iniciante',
                icon: Icons.star_border,
                unlocked: stats.totalItemsBought >= 10,
                color: Colors.brown,
              ),
              _AchievementBadge(
                label: 'Organizado',
                icon: Icons.check_circle_outline,
                unlocked: stats.totalItemsBought >= 50,
                color: Colors.grey,
              ),
              _AchievementBadge(
                label: 'Mestre da Economia',
                icon: Icons.workspace_premium,
                unlocked: stats.totalSavings >= 100,
                color: Colors.amber,
              ),
              _AchievementBadge(
                label: 'Super Planejador',
                icon: Icons.auto_awesome,
                unlocked: stats.currentStreak >= 7,
                color: Colors.purple,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, String title, String value, IconData icon, Color color) {
    final theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.md),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(Spacing.sm),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color),
            ),
            const SizedBox(width: Spacing.md),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: theme.textTheme.labelMedium),
                Text(value, style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _AchievementBadge extends StatelessWidget {
  const _AchievementBadge({
    required this.label,
    required this.icon,
    required this.unlocked,
    required this.color,
  });

  final String label;
  final IconData icon;
  final bool unlocked;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: unlocked ? color.withValues(alpha: 0.2) : Colors.grey.withValues(alpha: 0.1),
            shape: BoxShape.circle,
            border: Border.all(
              color: unlocked ? color : Colors.grey.withValues(alpha: 0.3),
              width: 2,
            ),
          ),
          child: Icon(
            icon,
            size: 40,
            color: unlocked ? color : Colors.grey.withValues(alpha: 0.5),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: unlocked ? FontWeight.bold : FontWeight.normal,
            color: unlocked ? null : Colors.grey,
          ),
        ),
      ],
    );
  }
}
