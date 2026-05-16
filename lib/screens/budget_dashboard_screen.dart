import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/shopping_lists_provider.dart';
import '../providers/shopping_list_provider.dart';
import '../providers/monthly_budget_provider.dart';
import '../providers/premium_provider.dart';
import '../providers/analytics_service_provider.dart';
import 'paywall_screen.dart';

class BudgetDashboardScreen extends ConsumerWidget {
  const BudgetDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPremium = ref.watch(premiumProvider).value ?? false;

    if (!isPremium) {
      return Scaffold(
        appBar: AppBar(title: const Text('Orçamento Mensal')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.lock, size: 64, color: Colors.grey),
              const SizedBox(height: 16),
              const Text('Orçamento mensal global é premium'),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  ref.read(analyticsServiceProvider).logUpgradeTapped('monthly_budget');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const PaywallScreen()),
                  );
                },
                child: const Text('Fazer upgrade'),
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
    final listsAsync = ref.watch(shoppingListsProvider);
    final monthlyBudgetAsync = ref.watch(monthlyBudgetProvider);

    return listsAsync.when(
      data: (lists) => monthlyBudgetAsync.when(
        data: (monthlyBudget) => _buildContent(context, ref, lists, monthlyBudget),
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
          padding: const EdgeInsets.all(16),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text('Orçamento Mensal',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 16),
                    Text(
                      monthlyBudget != null
                          ? 'R\$ ${totalSpent.toStringAsFixed(2)} / R\$ ${monthlyBudget.toStringAsFixed(2)}'
                          : 'Nenhum orçamento definido',
                      style: const TextStyle(fontSize: 24),
                    ),
                    if (monthlyBudget != null && monthlyBudget > 0) ...[
                      const SizedBox(height: 8),
                      LinearProgressIndicator(
                        value: (totalSpent / monthlyBudget).clamp(0.0, 1.0),
                        minHeight: 8,
                      ),
                    ],
                    const SizedBox(height: 16),
                    Text('Total estimado: R\$ ${totalEstimated.toStringAsFixed(2)}'),
                    const SizedBox(height: 8),
                    TextButton.icon(
                      icon: const Icon(Icons.edit),
                      label: const Text('Definir orçamento'),
                      onPressed: () => _setBudget(context, ref, monthlyBudget),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Listas', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...lists.map((list) {
              return Card(
                child: ListTile(
                  title: Text(list.name),
                  trailing: const Icon(Icons.chevron_right),
                ),
              );
            }),
          ],
        );
      },
    );
  }

  Future<void> _setBudget(BuildContext context, WidgetRef ref, double? currentBudget) async {
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
