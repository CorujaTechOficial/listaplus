import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/shopping_list.dart';
import '../models/shopping_item.dart';
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
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isPremium = ref.watch(premiumProvider).value ?? false;

    if (!isPremium) {
      return Scaffold(
        appBar: AppBar(title: Text(l10n.budgetAppBar)),
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
                l10n.budgetPremiumLocked,
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: Spacing.xs),
              Text(
                l10n.budgetUpgradePrompt,
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
                    MaterialPageRoute<void>(builder: (_) => const PaywallScreen()),
                  );
                },
                icon: const Icon(Icons.workspace_premium),
                label: Text(l10n.upgrade),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(l10n.budgetAppBar)),
      body: _BudgetBody(),
    );
  }
}

class _BudgetBody extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final listsAsync = ref.watch(shoppingListsProvider);
    final monthlyBudgetAsync = ref.watch(monthlyBudgetProvider);

    return listsAsync.when(
      data: (lists) => monthlyBudgetAsync.when(
        data: (monthlyBudget) =>
            _buildContent(context, ref, theme, lists, monthlyBudget, l10n),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text(l10n.error(e.toString()))),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text(l10n.error(e.toString()))),
    );
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref,
    ThemeData theme,
    List<ShoppingList> lists,
    double? monthlyBudget,
    AppLocalizations l10n,
  ) {
    var totalSpent = 0.0;
    var totalEstimated = 0.0;

    final itemsFutures = lists.map((ShoppingList list) {
      return ref.read(shoppingListItemsProvider(list.id).future);
    }).toList();

    return FutureBuilder(
      future: Future.wait(itemsFutures),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final allItems = snapshot.data as List<List<ShoppingItem>>;
          for (final List<ShoppingItem> items in allItems) {
            for (final ShoppingItem item in items) {
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
                      l10n.monthlyBudgetTitle,
                      style: theme.textTheme.titleLarge,
                    ),
                    const SizedBox(height: Spacing.md),
                    Text(
                      monthlyBudget != null
                          ? l10n.budgetAmountSpent(totalSpent.toStringAsFixed(2), monthlyBudget.toStringAsFixed(2))
                          : l10n.noBudgetDefined,
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
                      l10n.totalEstimated('R\$ ${totalEstimated.toStringAsFixed(2)}'),
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: Spacing.sm),
                    TextButton.icon(
                      icon: const Icon(Icons.edit, size: 18),
                      label: Text(l10n.setBudgetButton),
                      onPressed: () => _setBudget(context, ref, monthlyBudget),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: Spacing.md),
            Text(
              l10n.budgetLists,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: Spacing.sm),
            ...lists.map((ShoppingList list) {
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
    final l10n = AppLocalizations.of(context)!;
    final controller = TextEditingController(
      text: currentBudget?.toStringAsFixed(2) ?? '',
    );
    final value = await showDialog<double>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(l10n.setBudgetTitle),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: l10n.budgetValueLabel),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () {
              final v = double.tryParse(controller.text);
              Navigator.pop(context, v);
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
    if (value != null && context.mounted) {
      await ref.read(monthlyBudgetProvider.notifier).setBudget(value);
    }
  }
}
