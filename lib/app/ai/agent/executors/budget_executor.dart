import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../tools/tool_core.dart';
import 'package:shopping_list/app/settings/providers/settings_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import '../utils/ai_utils.dart';

class BudgetExecutor {
  const BudgetExecutor();

  Future<ToolResult> getBudget(ProviderContainer container) async {
    final budget = await AiUtils.awaitFuture(
      container.read(monthlyBudgetProvider.future),
      defaultValue: null,
      label: 'monthlyBudgetProvider',
    );
    if (budget == null) {
      return const ToolResult(toolCallId: '', content: 'Nenhum orçamento mensal definido.');
    }
    final currencyCode = container.read(currencySettingProvider).value ?? 'BRL';
    return ToolResult(
      toolCallId: '',
      content: 'Orçamento mensal: ${formatCurrency(budget, currencyCode)}',
    );
  }

  Future<ToolResult> setBudget(ProviderContainer container, Map<String, dynamic> args) async {
    final budget = (args['budget'] as num).toDouble();
    final previousBudget = await AiUtils.awaitFuture(
      container.read(monthlyBudgetProvider.future),
      defaultValue: null,
      label: 'monthlyBudgetProvider',
    );
    await container.read(monthlyBudgetProvider.notifier).setBudget(budget);
    final currencyCode = container.read(currencySettingProvider).value ?? 'BRL';
    return ToolResult(
      toolCallId: '',
      content: 'Orçamento mensal definido como ${formatCurrency(budget, currencyCode)}.',
      resultData: {'previousBudget': previousBudget},
    );
  }
}
