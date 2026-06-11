import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/app/settings/providers/settings_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/theme/tokens.dart';

class AchievementsScreen extends ConsumerWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final stats = ref.watch(userStatsProvider);
    final theme = Theme.of(context);
    final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';

    return Scaffold(
      appBar: AppBar(title: Text(l10n.myAchievements)),
      body: SafeArea(
        child: ListView(
        padding: const EdgeInsets.all(Spacing.md),
        children: [
          _buildStatCard(
            context,
            l10n.itemsPurchased,
            stats.totalItemsBought.toString(),
            Icons.shopping_bag,
            Colors.blue,
          ),
          const SizedBox(height: Spacing.md),
          _buildStatCard(
            context,
            l10n.totalSavings,
            formatCurrency(stats.totalSavings, currencyCode),
            Icons.savings,
            Colors.green,
          ),
          const SizedBox(height: Spacing.md),
          _buildStatCard(
            context,
            l10n.currentStreak,
            l10n.streakDays(stats.currentStreak),
            Icons.local_fire_department,
            Colors.orange,
          ),
          const SizedBox(height: Spacing.xl),
          Text(
            l10n.unlockedBadges,
            style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: Spacing.md),
          Wrap(
            spacing: Spacing.md,
            runSpacing: Spacing.md,
            children: [
              _AchievementBadge(
                label: l10n.badgeBeginner,
                icon: Icons.star_border,
                unlocked: stats.totalItemsBought >= 10,
                color: Colors.brown,
              ),
              _AchievementBadge(
                label: l10n.badgeOrganized,
                icon: Icons.check_circle_outline,
                unlocked: stats.totalItemsBought >= 50,
                color: Colors.grey,
              ),
              _AchievementBadge(
                label: l10n.badgeSavingMaster,
                icon: Icons.workspace_premium,
                unlocked: stats.totalSavings >= 100,
                color: Colors.amber,
              ),
              _AchievementBadge(
                label: l10n.badgeSuperPlanner,
                icon: Icons.auto_awesome,
                unlocked: stats.currentStreak >= 7,
                color: Colors.purple,
              ),
            ],
          ),
        ],
      ),
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
                color: color.withAlpha((0.1 * 255).toInt()),
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
            color: unlocked ? color.withAlpha((0.2 * 255).toInt()) : Colors.grey.withAlpha((0.1 * 255).toInt()),
            shape: BoxShape.circle,
            border: Border.all(
              color: unlocked ? color : Colors.grey.withAlpha((0.3 * 255).toInt()),
              width: 2,
            ),
          ),
          child: Icon(
            icon,
            size: 40,
            color: unlocked ? color : Colors.grey.withAlpha((0.5 * 255).toInt()),
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
