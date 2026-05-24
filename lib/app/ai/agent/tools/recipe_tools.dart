import 'tool_core.dart';

final getRecipesTool = const AgentTool(
  name: 'get_recipes',
  description: 'Obtém a lista de receitas salvas do usuário',
  parameters: [
    AgentToolParameter(
      name: 'query', type: 'string',
      description: 'Termo de busca opcional para filtrar pelo nome da receita', required: false,
    ),
  ],
);

final createRecipeTool = const AgentTool(
  name: 'create_recipe',
  description: 'Cria uma nova receita no livro de receitas do usuário. '
      'Inclua ingredientes detalhados e instruções passo a passo.',
  parameters: [
    AgentToolParameter(name: 'name', type: 'string', description: 'Nome da receita', required: true),
    AgentToolParameter(name: 'description', type: 'string', description: 'Breve descrição da receita', required: true),
    AgentToolParameter(
      name: 'ingredients', type: 'string',
      description: 'JSON string de lista de itens. Estrutura: [{"name": "string", "quantity": num, '
          '"unit": "un|kg|g|L|mL|pacote", "category": "Frutas|Limpeza|Bebidas|Padaria|Outros"}]',
      required: true,
    ),
    AgentToolParameter(
      name: 'instructions', type: 'string',
      description: 'Lista de strings contendo os passos da receita (separados por ponto e vírgula ou vírgula)',
      required: true,
    ),
    AgentToolParameter(name: 'prepTimeMinutes', type: 'number', description: 'Tempo de preparo em minutos', required: false),
  ],
);

final deleteRecipeTool = const AgentTool(
  name: 'delete_recipe',
  description: 'Exclui uma receita do livro de receitas',
  parameters: [
    AgentToolParameter(name: 'recipeId', type: 'string', description: 'ID da receita a ser excluída', required: true),
  ],
);

final allRecipeTools = [getRecipesTool, createRecipeTool, deleteRecipeTool];
