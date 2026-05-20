import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import '../providers/shopping_list_provider.dart';
import '../theme/tokens.dart';
import '../theme/colors.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class BudgetDashboardScreen extends ConsumerWidget {
  const BudgetDashboardScreen({super.key, this.listId});

  final String? listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    
    if (listId == null) {
      return Scaffold(
        appBar: AppBar(title: Text(l10n.budgetDashboardTitle)),
        body: Center(child: Text(l10n.selectListForDashboard)),
      );
    }

    final itemsAsync = ref.watch(shoppingListItemsProvider(listId!));

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.spendingAnalysis),
      ),
      body: itemsAsync.when(
        data: (items) {
          if (items.isEmpty) {
            return Center(child: Text(l10n.noItemsToAnalyze));
          }

          final Map<String, double> categorySpending = {};
          double totalSpent = 0;

          for (final item in items) {
            if (item.isPurchased && item.estimatedPrice != null) {
              final cost = item.estimatedPrice! * item.quantity;
              categorySpending[item.category.label] = (categorySpending[item.category.label] ?? 0) + cost;
              totalSpent += cost;
            }
          }

          if (totalSpent == 0) {
            return Center(child: Text(l10n.markItemsToSeeAnalysis));
          }

          final sortedCategories = categorySpending.entries.toList()
            ..sort((a, b) => b.value.compareTo(a.value));

          return ListView(
            padding: const EdgeInsets.all(Spacing.md),
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(Spacing.lg),
                  child: Column(
                    children: [
                      Text(
                        l10n.totalSpending,
                        style: theme.textTheme.titleMedium,
                      ),
                      const SizedBox(height: Spacing.xs),
                      Text(
                        'R\$ ${totalSpent.toStringAsFixed(2)}',
                        style: theme.textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w900,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: Spacing.lg),
              SizedBox(
                height: 250,
                child: PieChart(
                  PieChartData(
                    sections: sortedCategories.map((e) {
                      final percentage = (e.value / totalSpent) * 100;
                      return PieChartSectionData(
                        value: e.value,
                        title: '${percentage.toStringAsFixed(0)}%',
                        radius: 50,
                        color: AppColors.categoryColors[e.key] ?? theme.colorScheme.secondary,
                        titleStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      );
                    }).toList(),
                    centerSpaceRadius: 40,
                    sectionsSpace: 2,
                  ),
                ),
              ),
              const SizedBox(height: Spacing.xl),
              Text(
                l10n.spendingByCategory,
                style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: Spacing.md),
              ...sortedCategories.map((e) {
                final percentage = (e.value / totalSpent) * 100;
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: AppColors.categoryColors[e.key] ?? theme.colorScheme.secondary,
                    child: Icon(AppColors.categoryIcons[e.key] ?? Icons.category, color: Colors.white, size: 18),
                  ),
                  title: Text(e.key),
                  subtitle: LinearProgressIndicator(
                    value: percentage / 100,
                    backgroundColor: theme.colorScheme.surfaceContainerHighest,
                    valueColor: AlwaysStoppedAnimation(AppColors.categoryColors[e.key] ?? theme.colorScheme.secondary),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'R\$ ${e.value.toStringAsFixed(2)}',
                        style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${percentage.toStringAsFixed(1)}%',
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                );
              }),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text(l10n.errorGeneric('$e'))),
      ),
    );
  }
}
