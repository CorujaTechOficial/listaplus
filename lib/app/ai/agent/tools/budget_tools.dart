import 'tool_core.dart';

const getBudgetTool = AgentTool(
  name: 'get_budget',
  description: 'Obtém o orçamento mensal configurado',
);

const setBudgetTool = AgentTool(
  name: 'set_budget',
  description: 'Define o orçamento mensal de compras',
  parameters: [
    AgentToolParameter(name: 'budget', type: 'number', description: 'Valor do orçamento mensal em reais', required: true),
  ],
);

final allBudgetTools = [getBudgetTool, setBudgetTool];
