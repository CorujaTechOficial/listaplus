import 'tool_core.dart';

final getBudgetTool = const AgentTool(
  name: 'get_budget',
  description: 'Obtém o orçamento mensal configurado',
);

final setBudgetTool = const AgentTool(
  name: 'set_budget',
  description: 'Define o orçamento mensal de compras',
  parameters: [
    AgentToolParameter(name: 'budget', type: 'number', description: 'Valor do orçamento mensal em reais', required: true),
  ],
);

final allBudgetTools = [getBudgetTool, setBudgetTool];
