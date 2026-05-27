import 'tool_core.dart';

const openPaywallTool = AgentTool(
  name: 'open_paywall',
  description: 'Abre a tela de assinatura Premium do aplicativo para que o usuário possa ver os planos e benefícios.',
);

const requestAppReviewTool = AgentTool(
  name: 'request_app_review',
  description: 'Solicita que o usuário avalie o aplicativo na loja (Play Store/App Store). '
      'Use somente quando o usuário demonstrar alta satisfação ou gratidão com o serviço.',
);

const promptAppUpdateTool = AgentTool(
  name: 'prompt_app_update',
  description: 'Verifica e solicita que o usuário atualize o aplicativo para a versão mais recente.',
);

const createShareCodeTool = AgentTool(
  name: 'create_share_code',
  description: 'Cria um código de compartilhamento para que o usuário possa convidar outra pessoa '
      'para sincronizar e editar a lista em tempo real. '
      'Sempre sugira isso quando o usuário mencionar familiares, parceiros ou trabalho em equipe.',
  parameters: [
    AgentToolParameter(
      name: 'listId',
      type: 'string',
      description: 'O ID da lista a ser compartilhada.',
      required: true,
    ),
  ],
);

const generateReferralLinkTool = AgentTool(
  name: 'generate_referral_link',
  description: 'Gera um link de convite personalizado. Se o convidado baixar o app, '
      'o usuário ganha dias de Premium. Excelente para converter usuários gratuitos '
      'que querem funções Pro sem pagar.',
);

const importSharedListTool = AgentTool(
  name: 'import_shared_list',
  description: 'Importa uma lista compartilhada usando um código de 8 caracteres fornecido pelo usuário.',
  parameters: [
    AgentToolParameter(
      name: 'code',
      type: 'string',
      description: 'O código de compartilhamento.',
      required: true,
    ),
  ],
);

const allSystemTools = [
  openPaywallTool,
  requestAppReviewTool,
  promptAppUpdateTool,
  generateReferralLinkTool,
  createShareCodeTool,
  importSharedListTool,
];
