import 'tool_core.dart';

final getMealPlanTool = const AgentTool(
  name: 'get_meal_plan',
  description: 'Obtém o planejamento de refeições para um período específico',
  parameters: [
    AgentToolParameter(name: 'startDate', type: 'string', description: 'Data de início (ISO 8601)', required: false),
    AgentToolParameter(name: 'endDate', type: 'string', description: 'Data de fim (ISO 8601)', required: false),
  ],
);

final scheduleMealTool = const AgentTool(
  name: 'schedule_meal',
  description: 'Agenda uma receita para um dia e tipo de refeição específicos no planejador.',
  parameters: [
    AgentToolParameter(name: 'recipeId', type: 'string', description: 'ID da receita', required: true),
    AgentToolParameter(name: 'date', type: 'string', description: 'Data da refeição (ISO 8601)', required: true),
    AgentToolParameter(
      name: 'mealType', type: 'string', description: 'Tipo de refeição', required: true,
      enumValues: ['breakfast', 'lunch', 'dinner', 'snack'],
    ),
    AgentToolParameter(name: 'servings', type: 'number', description: 'Número de porções', required: false),
  ],
);

final removeMealPlanEntryTool = const AgentTool(
  name: 'remove_meal_plan_entry',
  description: 'Remove uma entrada do planejamento de refeições',
  parameters: [
    AgentToolParameter(name: 'mealPlanId', type: 'string', description: 'ID da entrada no planejamento', required: true),
  ],
);

final allMealPlannerTools = [getMealPlanTool, scheduleMealTool, removeMealPlanEntryTool];
