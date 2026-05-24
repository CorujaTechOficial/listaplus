import 'tool_core.dart';

final getListsTool = const AgentTool(
  name: 'get_lists',
  description: 'Lista todas as listas de compras do usuário, incluindo arquivadas e compartilhadas',
);

final getCurrentListTool = const AgentTool(
  name: 'get_current_list',
  description: 'Obtém a lista de compras atualmente selecionada',
);

final setCurrentListTool = const AgentTool(
  name: 'set_current_list',
  description: 'Define qual lista de compras é a atual/ativa',
  parameters: [
    AgentToolParameter(
      name: 'listId',
      type: 'string',
      description: 'ID da lista de compras',
      required: true,
    ),
  ],
);

final createListTool = const AgentTool(
  name: 'create_list',
  description: 'Cria uma nova lista de compras',
  parameters: [
    AgentToolParameter(
      name: 'name',
      type: 'string',
      description: 'Nome da nova lista',
      required: true,
    ),
    AgentToolParameter(
      name: 'budget',
      type: 'number',
      description: 'Orçamento da lista em reais',
      required: false,
    ),
  ],
);

final renameListTool = const AgentTool(
  name: 'rename_list',
  description: 'Renomeia uma lista de compras existente',
  parameters: [
    AgentToolParameter(
      name: 'listId',
      type: 'string',
      description: 'ID da lista',
      required: true,
    ),
    AgentToolParameter(
      name: 'name',
      type: 'string',
      description: 'Novo nome da lista',
      required: true,
    ),
  ],
);

final deleteListTool = const AgentTool(
  name: 'delete_list',
  description: 'Exclui permanentemente uma lista de compras e todos os seus itens',
  parameters: [
    AgentToolParameter(
      name: 'listId',
      type: 'string',
      description: 'ID da lista a ser excluída',
      required: true,
    ),
  ],
);

final archiveListTool = const AgentTool(
  name: 'archive_list',
  description: 'Arquiva uma lista de compras (esconde da visualização principal)',
  parameters: [
    AgentToolParameter(
      name: 'listId',
      type: 'string',
      description: 'ID da lista a ser arquivada',
      required: true,
    ),
  ],
);

final unarchiveListTool = const AgentTool(
  name: 'unarchive_list',
  description: 'Desarquiva uma lista de compras (restaura à visualização principal)',
  parameters: [
    AgentToolParameter(
      name: 'listId',
      type: 'string',
      description: 'ID da lista a ser desarquivada',
      required: true,
    ),
  ],
);

final allListTools = [
  getListsTool,
  getCurrentListTool,
  setCurrentListTool,
  createListTool,
  renameListTool,
  deleteListTool,
  archiveListTool,
  unarchiveListTool,
];
