import 'tool_core.dart';

final getItemsTool = const AgentTool(
  name: 'get_items',
  description: 'Lista os itens de uma lista de compras. Se nenhum listId for informado, usa a lista atual.',
  parameters: [
    AgentToolParameter(
      name: 'listId',
      type: 'string',
      description: 'ID da lista (opcional)',
      required: false,
    ),
  ],
);

final addItemTool = const AgentTool(
  name: 'add_item',
  description: 'Adiciona um item à lista de compras',
  parameters: [
    AgentToolParameter(name: 'listId', type: 'string', description: 'ID da lista', required: true),
    AgentToolParameter(name: 'name', type: 'string', description: 'Nome do item', required: true),
    AgentToolParameter(name: 'quantity', type: 'number', description: 'Quantidade do item', required: true),
    AgentToolParameter(
      name: 'unit', type: 'string', description: 'Unidade de medida', required: false,
      enumValues: ['un', 'kg', 'g', 'L', 'mL', 'pacote'],
    ),
    AgentToolParameter(
      name: 'category', type: 'string', description: 'Categoria do item', required: false,
      enumValues: ['Frutas', 'Limpeza', 'Bebidas', 'Padaria', 'Outros'],
    ),
    AgentToolParameter(name: 'estimatedPrice', type: 'number', description: 'Preço estimado unitário do item', required: false),
  ],
);

final updateItemTool = const AgentTool(
  name: 'update_item',
  description: 'Atualiza os dados de um item existente',
  parameters: [
    AgentToolParameter(name: 'itemId', type: 'string', description: 'ID do item', required: true),
    AgentToolParameter(name: 'name', type: 'string', description: 'Novo nome do item', required: false),
    AgentToolParameter(name: 'quantity', type: 'number', description: 'Nova quantidade', required: false),
    AgentToolParameter(
      name: 'unit', type: 'string', description: 'Nova unidade de medida', required: false,
      enumValues: ['un', 'kg', 'g', 'L', 'mL', 'pacote'],
    ),
    AgentToolParameter(
      name: 'category', type: 'string', description: 'Nova categoria', required: false,
      enumValues: ['Frutas', 'Limpeza', 'Bebidas', 'Padaria', 'Outros'],
    ),
    AgentToolParameter(name: 'estimatedPrice', type: 'number', description: 'Novo preço estimado', required: false),
  ],
);

final removeItemTool = const AgentTool(
  name: 'remove_item',
  description: 'Remove um item da lista de compras',
  parameters: [
    AgentToolParameter(name: 'itemId', type: 'string', description: 'ID do item a ser removido', required: true),
  ],
);

final togglePurchasedTool = const AgentTool(
  name: 'toggle_purchased',
  description: 'Alterna o status de comprado/não comprado de um item',
  parameters: [
    AgentToolParameter(name: 'itemId', type: 'string', description: 'ID do item', required: true),
  ],
);

final togglePurchasedBatchTool = const AgentTool(
  name: 'toggle_purchased_batch',
  description: 'Marca ou desmarca múltiplos itens como comprados de uma vez',
  parameters: [
    AgentToolParameter(
      name: 'itemIds', type: 'string',
      description: 'Lista de IDs dos itens separados por vírgula', required: true,
    ),
    AgentToolParameter(
      name: 'isPurchased', type: 'boolean',
      description: 'true para marcar como comprado, false para desmarcar', required: true,
    ),
  ],
);

final incrementQuantityTool = const AgentTool(
  name: 'increment_quantity',
  description: 'Aumenta em 1 a quantidade de um item',
  parameters: [
    AgentToolParameter(name: 'itemId', type: 'string', description: 'ID do item', required: true),
  ],
);

final decrementQuantityTool = const AgentTool(
  name: 'decrement_quantity',
  description: 'Diminui em 1 a quantidade de um item (mínimo 1)',
  parameters: [
    AgentToolParameter(name: 'itemId', type: 'string', description: 'ID do item', required: true),
  ],
);

final clearPurchasedTool = const AgentTool(
  name: 'clear_purchased',
  description: 'Remove todos os itens marcados como comprados de uma lista',
  parameters: [
    AgentToolParameter(name: 'listId', type: 'string', description: 'ID da lista', required: true),
  ],
);

final clearAllItemsTool = const AgentTool(
  name: 'clear_all_items',
  description: 'Remove TODOS os itens de uma lista de compras',
  parameters: [
    AgentToolParameter(name: 'listId', type: 'string', description: 'ID da lista', required: true),
  ],
);

final reorderItemsTool = const AgentTool(
  name: 'reorder_items',
  description: 'Reordena um item dentro da lista movendo de uma posição para outra',
  parameters: [
    AgentToolParameter(name: 'listId', type: 'string', description: 'ID da lista', required: true),
    AgentToolParameter(name: 'oldIndex', type: 'number', description: 'Índice atual do item (começa em 0)', required: true),
    AgentToolParameter(name: 'newIndex', type: 'number', description: 'Novo índice do item (começa em 0)', required: true),
  ],
);

final allItemTools = [
  getItemsTool,
  addItemTool,
  updateItemTool,
  removeItemTool,
  togglePurchasedTool,
  togglePurchasedBatchTool,
  incrementQuantityTool,
  decrementQuantityTool,
  clearPurchasedTool,
  clearAllItemsTool,
  reorderItemsTool,
];
