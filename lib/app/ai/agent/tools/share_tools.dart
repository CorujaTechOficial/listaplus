import 'tool_core.dart';

final createShareCodeTool = const AgentTool(
  name: 'create_share_code',
  description: 'Cria um código de compartilhamento para uma lista (Premium)',
  parameters: [
    AgentToolParameter(name: 'listId', type: 'string', description: 'ID da lista a ser compartilhada', required: true),
  ],
);

final importSharedListTool = const AgentTool(
  name: 'import_shared_list',
  description: 'Importa uma lista compartilhada usando um código',
  parameters: [
    AgentToolParameter(name: 'code', type: 'string', description: 'Código de compartilhamento de 8 caracteres', required: true),
  ],
);

final allShareTools = [createShareCodeTool, importSharedListTool];
