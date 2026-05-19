import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/tokens.dart';
import '../providers/shopping_lists_provider.dart';
import '../providers/shopping_list_provider.dart';
import '../providers/monthly_budget_provider.dart';
import '../providers/premium_provider.dart';
import '../providers/analytics_service_provider.dart';
import '../widgets/banner_ad_widget.dart';
import 'paywall_screen.dart';

class BudgetDashboardScreen extends ConsumerWidget {
  const BudgetDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isPremium = ref.watch(premiumProvider).value ?? false;

    if (!isPremium) {
      return Scaffold(
        appBar: AppBar(title: const Text('Orçamento Mensal')),
        bottomNavigationBar: const SafeArea(child: BannerAdWidget()),
        body: Center(
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
                'Orçamento mensal global é premium',
                style: theme.textTheme.titleMedium,
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
                onPressed: () {
                  ref.read(analyticsServiceProvider).logUpgradeTapped('monthly_budget');
                  if (!context.mounted) {
                    return;
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const PaywallScreen()),
                  );
                },
                icon: const Icon(Icons.workspace_premium),
                label: const Text('Fazer upgrade'),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Orçamento Mensal')),
      body: _BudgetBody(),
    );
  }
}

class _BudgetBody extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final listsAsync = ref.watch(shoppingListsProvider);
    final monthlyBudgetAsync = ref.watch(monthlyBudgetProvider);

    return listsAsync.when(
      data: (lists) => monthlyBudgetAsync.when(
        data: (monthlyBudget) =>
            _buildContent(context, ref, theme, lists, monthlyBudget),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Erro: $e')),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Erro: $e')),
    );
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref,
    ThemeData theme,
    List lists,
    double? monthlyBudget,
  ) {
    var totalSpent = 0.0;
    var totalEstimated = 0.0;

    final itemsFutures = lists.map((list) {
      return ref.read(shoppingListItemsProvider(list.id).future);
    }).toList();

    return FutureBuilder(
      future: Future.wait(itemsFutures),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final allItems = snapshot.data as List;
          for (final items in allItems) {
            for (final item in items) {
              totalEstimated += (item.estimatedPrice ?? 0) * item.quantity;
              if (item.isPurchased && item.estimatedPrice != null) {
                totalSpent += item.estimatedPrice! * item.quantity;
              }
            }
          }
        }

        return ListView(
          padding: const EdgeInsets.all(Spacing.md),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(Spacing.md),
                child: Column(
                  children: [
                    Text(
                      'Orçamento Mensal',
                      style: theme.textTheme.titleLarge,
                    ),
                    const SizedBox(height: Spacing.md),
                    Text(
                      monthlyBudget != null
                          ? 'R\$ ${totalSpent.toStringAsFixed(2)} / R\$ ${monthlyBudget.toStringAsFixed(2)}'
                          : 'Nenhum orçamento definido',
                      style: theme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (monthlyBudget != null && monthlyBudget > 0) ...[
                      const SizedBox(height: Spacing.sm),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(RadiusTokens.sm),
                        child: LinearProgressIndicator(
                          value: (totalSpent / monthlyBudget).clamp(0.0, 1.0),
                          minHeight: 8,
                          backgroundColor: theme.colorScheme.surfaceContainerHighest,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            (totalSpent / monthlyBudget) >= 1
                                ? theme.colorScheme.error
                                : theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                    const SizedBox(height: Spacing.md),
                    Text(
                      'Total estimado: R\$ ${totalEstimated.toStringAsFixed(2)}',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: Spacing.sm),
                    TextButton.icon(
                      icon: const Icon(Icons.edit, size: 18),
                      label: const Text('Definir orçamento'),
                      onPressed: () => _setBudget(context, ref, monthlyBudget),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: Spacing.md),
            Text(
              'Listas',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: Spacing.sm),
            ...lists.map((list) {
              return Padding(
                padding: const EdgeInsets.only(bottom: Spacing.xs),
                child: Card(
                  child: ListTile(
                    title: Text(list.name),
                    trailing: Icon(
                      Icons.chevron_right,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              );
            }),
          ],
        );
      },
    );
  }

  Future<void> _setBudget(
    BuildContext context,
    WidgetRef ref,
    double? currentBudget,
  ) async {
    final controller = TextEditingController(
      text: currentBudget?.toStringAsFixed(2) ?? '',
    );
    final value = await showDialog<double>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Orçamento Mensal'),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Valor (R\$)'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              final v = double.tryParse(controller.text);
              Navigator.pop(context, v);
            },
            child: const Text('Salvar'),
          ),
        ],
      ),
    );
    if (value != null && context.mounted) {
      await ref.read(monthlyBudgetProvider.notifier).setBudget(value);
    }
  }
}
