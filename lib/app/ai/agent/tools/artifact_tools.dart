import 'tool_core.dart';

final generateArtifactTool = const AgentTool(
  name: 'generate_artifact',
  description: 'Gera um artefato interativo e reativo de interface (GenUI) no chat. '
      'Permite criar calculadoras de eventos (churrasco, festa), otimização de orçamentos, '
      'sugestão de receitas integradas com a despensa, etc. O artefato possui controles '
      'interativos (sliders, switches, etc.) e uma lista de itens associada que atualiza '
      'dinamicamente conforme os controles são alterados.',
  parameters: [
    AgentToolParameter(name: 'title', type: 'string', description: 'Título do artefato', required: true),
    AgentToolParameter(name: 'icon', type: 'string', description: 'Emoji representando o artefato', required: true),
    AgentToolParameter(name: 'description', type: 'string', description: 'Descrição do artefato', required: false),
    AgentToolParameter(
      name: 'controls', type: 'string',
      description: 'JSON string com lista de controles interativos', required: true,
    ),
    AgentToolParameter(
      name: 'items', type: 'string',
      description: 'JSON string com lista de itens', required: true,
    ),
    AgentToolParameter(name: 'baseServings', type: 'number', description: 'Quantidade base de porções', required: true),
    AgentToolParameter(name: 'budget', type: 'number', description: 'Orçamento máximo em reais', required: false),
    AgentToolParameter(name: 'showBudgetBar', type: 'boolean', description: 'Renderiza barra de orçamento', required: false),
    AgentToolParameter(name: 'commitLabel', type: 'string', description: 'Texto do botão de confirmação', required: false),
    AgentToolParameter(
      name: 'commitMode', type: 'string',
      description: 'Modo de inserção: "addAll" ou "addMissing"', required: false,
    ),
  ],
);

final allArtifactTools = [generateArtifactTool];
