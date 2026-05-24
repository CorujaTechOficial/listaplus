import 'tool_core.dart';

final getThemeTool = const AgentTool(
  name: 'get_theme',
  description: 'Obtém o tema atual (claro, escuro ou sistema)',
);

final setThemeTool = const AgentTool(
  name: 'set_theme',
  description: 'Altera o tema do aplicativo',
  parameters: [
    AgentToolParameter(
      name: 'mode', type: 'string', description: 'Modo do tema: light, dark, ou system', required: true,
      enumValues: ['light', 'dark', 'system'],
    ),
  ],
);

final saveUserPreferenceTool = const AgentTool(
  name: 'save_user_preference',
  description: 'Salva uma preferência ou informação pessoal do usuário '
      'aprendida durante a conversa (ex: restrições alimentares, '
      'mercados preferidos, nome, preferências de categorias). '
      'Use sempre que o usuário compartilhar uma preferência pessoal '
      'para que ela não seja esquecida entre as conversas.',
  parameters: [
    AgentToolParameter(
      name: 'key', type: 'string',
      description: 'Chave da preferência em snake_case (ex: restricao_alimentar, mercado_evitar, nome)',
      required: true,
    ),
    AgentToolParameter(
      name: 'value', type: 'string',
      description: 'Valor da preferência (ex: vegano, Mercado X, João)',
      required: true,
    ),
  ],
);

final deleteUserPreferenceTool = const AgentTool(
  name: 'delete_user_preference',
  description: 'Remove uma preferência do usuário salva anteriormente',
  parameters: [
    AgentToolParameter(name: 'key', type: 'string', description: 'Chave da preferência a ser removida', required: true),
  ],
);

final getUserProfileTool = const AgentTool(
  name: 'get_user_profile',
  description: 'Obtém o perfil completo do usuário com todas as '
      'preferências estruturadas (mercado preferido, restrições '
      'alimentares, mercados a evitar, observações). '
      'Use no início da conversa para personalizar as respostas.',
);

final updateUserProfileTool = const AgentTool(
  name: 'update_user_profile',
  description: 'Atualiza campos estruturados do perfil do usuário. '
      'Use quando o usuário fornecer informações sobre preferências '
      'pessoais que se encaixam nos campos do perfil.',
  parameters: [
    AgentToolParameter(name: 'preferredStore', type: 'string', description: 'Mercado preferido do usuário', required: false),
    AgentToolParameter(name: 'dietaryRestrictions', type: 'string', description: 'Restrições alimentares', required: false),
    AgentToolParameter(name: 'avoidedStores', type: 'string', description: 'Mercados a evitar', required: false),
    AgentToolParameter(name: 'notes', type: 'string', description: 'Observações ou outras preferências', required: false),
  ],
);

final exportBackupTool = const AgentTool(
  name: 'export_backup',
  description: 'Exporta todos os dados do usuário como JSON',
);

final importBackupTool = const AgentTool(
  name: 'import_backup',
  description: 'Importa dados de um backup JSON',
  parameters: [
    AgentToolParameter(name: 'json', type: 'string', description: 'JSON completo do backup', required: true),
  ],
);

final allConfigTools = [
  getThemeTool,
  setThemeTool,
  saveUserPreferenceTool,
  deleteUserPreferenceTool,
  getUserProfileTool,
  updateUserProfileTool,
  exportBackupTool,
  importBackupTool,
];
