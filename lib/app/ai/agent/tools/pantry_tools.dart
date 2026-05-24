import 'tool_core.dart';

final getPantryItemsTool = const AgentTool(
  name: 'get_pantry_items',
  description: 'Lista todos os itens da despensa/estoque',
);

final addPantryItemTool = const AgentTool(
  name: 'add_pantry_item',
  description: 'Adiciona um item à despensa',
  parameters: [
    AgentToolParameter(name: 'name', type: 'string', description: 'Nome do item', required: true),
    AgentToolParameter(name: 'idealQuantity', type: 'number', description: 'Quantidade ideal em estoque', required: true),
    AgentToolParameter(name: 'currentQuantity', type: 'number', description: 'Quantidade atual em estoque', required: false),
    AgentToolParameter(
      name: 'unit', type: 'string', description: 'Unidade', required: false,
      enumValues: ['un', 'kg', 'g', 'L', 'mL', 'pacote'],
    ),
    AgentToolParameter(
      name: 'category', type: 'string', description: 'Categoria', required: false,
      enumValues: ['Frutas', 'Limpeza', 'Bebidas', 'Padaria', 'Outros'],
    ),
    AgentToolParameter(name: 'estimatedPrice', type: 'number', description: 'Preço estimado', required: false),
  ],
);

final updatePantryItemTool = const AgentTool(
  name: 'update_pantry_item',
  description: 'Atualiza os dados de um item da despensa',
  parameters: [
    AgentToolParameter(name: 'itemId', type: 'string', description: 'ID do item na despensa', required: true),
    AgentToolParameter(name: 'name', type: 'string', description: 'Novo nome', required: false),
    AgentToolParameter(name: 'idealQuantity', type: 'number', description: 'Nova quantidade ideal', required: false),
    AgentToolParameter(
      name: 'unit', type: 'string', description: 'Nova unidade', required: false,
      enumValues: ['un', 'kg', 'g', 'L', 'mL', 'pacote'],
    ),
    AgentToolParameter(
      name: 'category', type: 'string', description: 'Nova categoria', required: false,
      enumValues: ['Frutas', 'Limpeza', 'Bebidas', 'Padaria', 'Outros'],
    ),
  ],
);

final removePantryItemTool = const AgentTool(
  name: 'remove_pantry_item',
  description: 'Remove um item da despensa',
  parameters: [
    AgentToolParameter(name: 'itemId', type: 'string', description: 'ID do item na despensa', required: true),
  ],
);

final consumePantryItemTool = const AgentTool(
  name: 'consume_pantry_item',
  description: 'Consome/usa uma quantidade de um item da despensa',
  parameters: [
    AgentToolParameter(name: 'itemId', type: 'string', description: 'ID do item na despensa', required: true),
    AgentToolParameter(name: 'quantity', type: 'number', description: 'Quantidade a consumir', required: false),
  ],
);

final restockPantryItemTool = const AgentTool(
  name: 'restock_pantry_item',
  description: 'Reabastece/recompõe o estoque de um item na despensa',
  parameters: [
    AgentToolParameter(name: 'itemId', type: 'string', description: 'ID do item na despensa', required: true),
    AgentToolParameter(name: 'amount', type: 'number', description: 'Quantidade a adicionar ao estoque', required: true),
  ],
);

final clearPantryTool = const AgentTool(
  name: 'clear_pantry',
  description: 'Limpa TODOS os itens da despensa',
);

final allPantryTools = [
  getPantryItemsTool,
  addPantryItemTool,
  updatePantryItemTool,
  removePantryItemTool,
  consumePantryItemTool,
  restockPantryItemTool,
  clearPantryTool,
];
