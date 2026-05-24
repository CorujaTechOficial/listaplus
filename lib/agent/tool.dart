import 'dart:convert';

class AgentToolParameter {
  const AgentToolParameter({
    required this.name,
    required this.type,
    required this.description,
    this.required = false,
    this.enumValues,
  });

  final String name;
  final String type;
  final String description;
  final bool required;
  final List<String>? enumValues;
}

class AgentTool {
  const AgentTool({
    required this.name,
    required this.description,
    this.parameters = const [],
  });

  final String name;
  final String description;
  final List<AgentToolParameter> parameters;

  Map<String, dynamic> toOpenAIFunction() {
    final properties = <String, dynamic>{};
    final requiredList = <String>[];
    for (final param in parameters) {
      final prop = <String, dynamic>{
        'type': param.type,
        'description': param.description,
      };
      if (param.enumValues != null) {
        prop['enum'] = param.enumValues;
      }
      properties[param.name] = prop;
      if (param.required) {
        requiredList.add(param.name);
      }
    }
    return {
      'type': 'function',
      'function': {
        'name': name,
        'description': description,
        'parameters': {
          'type': 'object',
          'properties': properties,
          'required': requiredList,
        },
      },
    };
  }
}

class AgentToolCall {
  const AgentToolCall({
    required this.id,
    required this.name,
    required this.arguments,
  });

  factory AgentToolCall.fromJson(Map<String, dynamic> json) {
    final function = json['function'] as Map<String, dynamic>;
    return AgentToolCall(
      id: json['id'] as String,
      name: function['name'] as String,
      arguments: _parseArguments(function['arguments'] as String),
    );
  }

  static Map<String, dynamic> _parseArguments(String args) {
    try {
      return Map<String, dynamic>.from(
        jsonDecode(args) as Map,
      );
    } on FormatException {
      return <String, dynamic>{};
    }
  }

  final String id;
  final String name;
  final Map<String, dynamic> arguments;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': 'function',
      'function': {
        'name': name,
        'arguments': const JsonEncoder().convert(arguments),
      },
    };
  }
}

class ToolResult {
  const ToolResult({
    required this.toolCallId,
    required this.content,
    this.success = true,
    this.resultData,
  });

  final String toolCallId;
  final String content;
  final bool success;
  final Map<String, dynamic>? resultData;
}

class AgentTools {
  static const Set<String> premiumToolNames = {
    'get_budget',
    'set_budget',
    'create_share_code',
    'import_shared_list',
    'export_backup',
    'import_backup',
    'generate_artifact',
  };

  static List<AgentTool> get all => [
        ..._listTools,
        ..._itemTools,
        ..._pantryTools,
        ..._recipeTools,
        ..._mealPlannerTools,
        ..._budgetTools,
        ..._shareTools,
        ..._configTools,
        ..._backupTools,
        ..._artifactTools,
      ];

  static List<AgentTool> get _recipeTools => [
        const AgentTool(
          name: 'get_recipes',
          description: 'Obtém a lista de receitas salvas do usuário',
          parameters: [
            AgentToolParameter(
              name: 'query',
              type: 'string',
              description: 'Termo de busca opcional para filtrar pelo nome da receita',
              required: false,
            ),
          ],
        ),
        const AgentTool(
          name: 'create_recipe',
          description: 'Cria uma nova receita no livro de receitas do usuário. '
              'Inclua ingredientes detalhados e instruções passo a passo.',
          parameters: [
            AgentToolParameter(
              name: 'name',
              type: 'string',
              description: 'Nome da receita',
              required: true,
            ),
            AgentToolParameter(
              name: 'description',
              type: 'string',
              description: 'Breve descrição da receita',
              required: true,
            ),
            AgentToolParameter(
              name: 'ingredients',
              type: 'string',
              description: 'JSON string de lista de itens. Estrutura: [{"name": "string", "quantity": num, "unit": "un|kg|g|L|mL|pacote", "category": "Frutas|Limpeza|Bebidas|Padaria|Outros"}]',
              required: true,
            ),
            AgentToolParameter(
              name: 'instructions',
              type: 'string',
              description: 'Lista de strings contendo os passos da receita (separados por ponto e vírgula ou vírgula)',
              required: true,
            ),
            AgentToolParameter(
              name: 'prepTimeMinutes',
              type: 'number',
              description: 'Tempo de preparo em minutos',
              required: false,
            ),
          ],
        ),
        const AgentTool(
          name: 'delete_recipe',
          description: 'Exclui uma receita do livro de receitas',
          parameters: [
            AgentToolParameter(
              name: 'recipeId',
              type: 'string',
              description: 'ID da receita a ser excluída',
              required: true,
            ),
          ],
        ),
      ];

  static List<AgentTool> get _mealPlannerTools => [
        const AgentTool(
          name: 'get_meal_plan',
          description: 'Obtém o planejamento de refeições para um período específico',
          parameters: [
            AgentToolParameter(
              name: 'startDate',
              type: 'string',
              description: 'Data de início (ISO 8601)',
              required: false,
            ),
            AgentToolParameter(
              name: 'endDate',
              type: 'string',
              description: 'Data de fim (ISO 8601)',
              required: false,
            ),
          ],
        ),
        const AgentTool(
          name: 'schedule_meal',
          description: 'Agenda uma receita para um dia e tipo de refeição específicos no planejador.',
          parameters: [
            AgentToolParameter(
              name: 'recipeId',
              type: 'string',
              description: 'ID da receita',
              required: true,
            ),
            AgentToolParameter(
              name: 'date',
              type: 'string',
              description: 'Data da refeição (ISO 8601)',
              required: true,
            ),
            AgentToolParameter(
              name: 'mealType',
              type: 'string',
              description: 'Tipo de refeição',
              required: true,
              enumValues: ['breakfast', 'lunch', 'dinner', 'snack'],
            ),
            AgentToolParameter(
              name: 'servings',
              type: 'number',
              description: 'Número de porções',
              required: false,
            ),
          ],
        ),
        const AgentTool(
          name: 'remove_meal_plan_entry',
          description: 'Remove uma entrada do planejamento de refeições',
          parameters: [
            AgentToolParameter(
              name: 'mealPlanId',
              type: 'string',
              description: 'ID da entrada no planejamento',
              required: true,
            ),
          ],
        ),
      ];

  static List<AgentTool> get _listTools => [
        const AgentTool(
          name: 'get_lists',
          description:
              'Lista todas as listas de compras do usuário, incluindo arquivadas e compartilhadas',
          parameters: [],
        ),
        const AgentTool(
          name: 'get_current_list',
          description: 'Obtém a lista de compras atualmente selecionada',
          parameters: [],
        ),
        const AgentTool(
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
        ),
        const AgentTool(
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
        ),
        const AgentTool(
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
        ),
        const AgentTool(
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
        ),
        const AgentTool(
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
        ),
        const AgentTool(
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
        ),
      ];

  static List<AgentTool> get _itemTools => [
        const AgentTool(
          name: 'get_items',
          description:
              'Lista os itens de uma lista de compras. Se nenhum listId for informado, usa a lista atual.',
          parameters: [
            AgentToolParameter(
              name: 'listId',
              type: 'string',
              description: 'ID da lista (opcional)',
              required: false,
            ),
          ],
        ),
        const AgentTool(
          name: 'add_item',
          description: 'Adiciona um item à lista de compras',
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
              description: 'Nome do item',
              required: true,
            ),
            AgentToolParameter(
              name: 'quantity',
              type: 'number',
              description: 'Quantidade do item',
              required: true,
            ),
            AgentToolParameter(
              name: 'unit',
              type: 'string',
              description: 'Unidade de medida',
              required: false,
              enumValues: ['un', 'kg', 'g', 'L', 'mL', 'pacote'],
            ),
            AgentToolParameter(
              name: 'category',
              type: 'string',
              description: 'Categoria do item',
              required: false,
              enumValues: ['Frutas', 'Limpeza', 'Bebidas', 'Padaria', 'Outros'],
            ),
            AgentToolParameter(
              name: 'estimatedPrice',
              type: 'number',
              description: 'Preço estimado unitário do item',
              required: false,
            ),
          ],
        ),
        const AgentTool(
          name: 'update_item',
          description: 'Atualiza os dados de um item existente',
          parameters: [
            AgentToolParameter(
              name: 'itemId',
              type: 'string',
              description: 'ID do item',
              required: true,
            ),
            AgentToolParameter(
              name: 'name',
              type: 'string',
              description: 'Novo nome do item',
              required: false,
            ),
            AgentToolParameter(
              name: 'quantity',
              type: 'number',
              description: 'Nova quantidade',
              required: false,
            ),
            AgentToolParameter(
              name: 'unit',
              type: 'string',
              description: 'Nova unidade de medida',
              required: false,
              enumValues: ['un', 'kg', 'g', 'L', 'mL', 'pacote'],
            ),
            AgentToolParameter(
              name: 'category',
              type: 'string',
              description: 'Nova categoria',
              required: false,
              enumValues: ['Frutas', 'Limpeza', 'Bebidas', 'Padaria', 'Outros'],
            ),
            AgentToolParameter(
              name: 'estimatedPrice',
              type: 'number',
              description: 'Novo preço estimado',
              required: false,
            ),
          ],
        ),
        const AgentTool(
          name: 'remove_item',
          description: 'Remove um item da lista de compras',
          parameters: [
            AgentToolParameter(
              name: 'itemId',
              type: 'string',
              description: 'ID do item a ser removido',
              required: true,
            ),
          ],
        ),
        const AgentTool(
          name: 'toggle_purchased',
          description: 'Alterna o status de comprado/não comprado de um item',
          parameters: [
            AgentToolParameter(
              name: 'itemId',
              type: 'string',
              description: 'ID do item',
              required: true,
            ),
          ],
        ),
        const AgentTool(
          name: 'toggle_purchased_batch',
          description: 'Marca ou desmarca múltiplos itens como comprados de uma vez',
          parameters: [
            AgentToolParameter(
              name: 'itemIds',
              type: 'string',
              description: 'Lista de IDs dos itens separados por vírgula',
              required: true,
            ),
            AgentToolParameter(
              name: 'isPurchased',
              type: 'boolean',
              description: 'true para marcar como comprado, false para desmarcar',
              required: true,
            ),
          ],
        ),
        const AgentTool(
          name: 'increment_quantity',
          description: 'Aumenta em 1 a quantidade de um item',
          parameters: [
            AgentToolParameter(
              name: 'itemId',
              type: 'string',
              description: 'ID do item',
              required: true,
            ),
          ],
        ),
        const AgentTool(
          name: 'decrement_quantity',
          description: 'Diminui em 1 a quantidade de um item (mínimo 1)',
          parameters: [
            AgentToolParameter(
              name: 'itemId',
              type: 'string',
              description: 'ID do item',
              required: true,
            ),
          ],
        ),
        const AgentTool(
          name: 'clear_purchased',
          description: 'Remove todos os itens marcados como comprados de uma lista',
          parameters: [
            AgentToolParameter(
              name: 'listId',
              type: 'string',
              description: 'ID da lista',
              required: true,
            ),
          ],
        ),
        const AgentTool(
          name: 'clear_all_items',
          description: 'Remove TODOS os itens de uma lista de compras',
          parameters: [
            AgentToolParameter(
              name: 'listId',
              type: 'string',
              description: 'ID da lista',
              required: true,
            ),
          ],
        ),
        const AgentTool(
          name: 'reorder_items',
          description: 'Reordena um item dentro da lista movendo de uma posição para outra',
          parameters: [
            AgentToolParameter(
              name: 'listId',
              type: 'string',
              description: 'ID da lista',
              required: true,
            ),
            AgentToolParameter(
              name: 'oldIndex',
              type: 'number',
              description: 'Índice atual do item (começa em 0)',
              required: true,
            ),
            AgentToolParameter(
              name: 'newIndex',
              type: 'number',
              description: 'Novo índice do item (começa em 0)',
              required: true,
            ),
          ],
        ),
      ];

  static List<AgentTool> get _pantryTools => [
        const AgentTool(
          name: 'get_pantry_items',
          description: 'Lista todos os itens da despensa/estoque',
          parameters: [],
        ),
        const AgentTool(
          name: 'add_pantry_item',
          description: 'Adiciona um item à despensa',
          parameters: [
            AgentToolParameter(
              name: 'name',
              type: 'string',
              description: 'Nome do item',
              required: true,
            ),
            AgentToolParameter(
              name: 'idealQuantity',
              type: 'number',
              description: 'Quantidade ideal em estoque',
              required: true,
            ),
            AgentToolParameter(
              name: 'currentQuantity',
              type: 'number',
              description: 'Quantidade atual em estoque',
              required: false,
            ),
            AgentToolParameter(name: 'unit', type: 'string', description: 'Unidade', required: false, enumValues: [
              'un',
              'kg',
              'g',
              'L',
              'mL',
              'pacote',
            ]),
            AgentToolParameter(
              name: 'category',
              type: 'string',
              description: 'Categoria',
              required: false,
              enumValues: ['Frutas', 'Limpeza', 'Bebidas', 'Padaria', 'Outros'],
            ),
            AgentToolParameter(
              name: 'estimatedPrice',
              type: 'number',
              description: 'Preço estimado',
              required: false,
            ),
          ],
        ),
        const AgentTool(
          name: 'update_pantry_item',
          description: 'Atualiza os dados de um item da despensa',
          parameters: [
            AgentToolParameter(
              name: 'itemId',
              type: 'string',
              description: 'ID do item na despensa',
              required: true,
            ),
            AgentToolParameter(
              name: 'name',
              type: 'string',
              description: 'Novo nome',
              required: false,
            ),
            AgentToolParameter(
              name: 'idealQuantity',
              type: 'number',
              description: 'Nova quantidade ideal',
              required: false,
            ),
            AgentToolParameter(
              name: 'unit',
              type: 'string',
              description: 'Nova unidade',
              required: false,
              enumValues: ['un', 'kg', 'g', 'L', 'mL', 'pacote'],
            ),
            AgentToolParameter(
              name: 'category',
              type: 'string',
              description: 'Nova categoria',
              required: false,
              enumValues: ['Frutas', 'Limpeza', 'Bebidas', 'Padaria', 'Outros'],
            ),
          ],
        ),
        const AgentTool(
          name: 'remove_pantry_item',
          description: 'Remove um item da despensa',
          parameters: [
            AgentToolParameter(
              name: 'itemId',
              type: 'string',
              description: 'ID do item na despensa',
              required: true,
            ),
          ],
        ),
        const AgentTool(
          name: 'consume_pantry_item',
          description: 'Consome/usa uma quantidade de um item da despensa',
          parameters: [
            AgentToolParameter(
              name: 'itemId',
              type: 'string',
              description: 'ID do item na despensa',
              required: true,
            ),
            AgentToolParameter(
              name: 'quantity',
              type: 'number',
              description: 'Quantidade a consumir',
              required: false,
            ),
          ],
        ),
        const AgentTool(
          name: 'restock_pantry_item',
          description: 'Reabastece/recompõe o estoque de um item na despensa',
          parameters: [
            AgentToolParameter(
              name: 'itemId',
              type: 'string',
              description: 'ID do item na despensa',
              required: true,
            ),
            AgentToolParameter(
              name: 'amount',
              type: 'number',
              description: 'Quantidade a adicionar ao estoque',
              required: true,
            ),
          ],
        ),
        const AgentTool(
          name: 'clear_pantry',
          description: 'Limpa TODOS os itens da despensa',
          parameters: [],
        ),
      ];

  static List<AgentTool> get _budgetTools => [
        const AgentTool(
          name: 'get_budget',
          description: 'Obtém o orçamento mensal configurado',
          parameters: [],
        ),
        const AgentTool(
          name: 'set_budget',
          description: 'Define o orçamento mensal de compras',
          parameters: [
            AgentToolParameter(
              name: 'budget',
              type: 'number',
              description: 'Valor do orçamento mensal em reais',
              required: true,
            ),
          ],
        ),
      ];

  static List<AgentTool> get _shareTools => [
        const AgentTool(
          name: 'create_share_code',
          description:
              'Cria um código de compartilhamento para uma lista (Premium)',
          parameters: [
            AgentToolParameter(
              name: 'listId',
              type: 'string',
              description: 'ID da lista a ser compartilhada',
              required: true,
            ),
          ],
        ),
        const AgentTool(
          name: 'import_shared_list',
          description: 'Importa uma lista compartilhada usando um código',
          parameters: [
            AgentToolParameter(
              name: 'code',
              type: 'string',
              description: 'Código de compartilhamento de 8 caracteres',
              required: true,
            ),
          ],
        ),
      ];

  static List<AgentTool> get _configTools => [
        const AgentTool(
          name: 'get_theme',
          description: 'Obtém o tema atual (claro, escuro ou sistema)',
          parameters: [],
        ),
        const AgentTool(
          name: 'set_theme',
          description: 'Altera o tema do aplicativo',
          parameters: [
            AgentToolParameter(
              name: 'mode',
              type: 'string',
              description: 'Modo do tema: light, dark, ou system',
              required: true,
              enumValues: ['light', 'dark', 'system'],
            ),
          ],
        ),
        const AgentTool(
          name: 'save_user_preference',
          description: 'Salva uma preferência ou informação pessoal do usuário '
              'aprendida durante a conversa (ex: restrições alimentares, '
              'mercados preferidos, nome, preferências de categorias). '
              'Use sempre que o usuário compartilhar uma preferência pessoal '
              'para que ela não seja esquecida entre as conversas.',
          parameters: [
            AgentToolParameter(
              name: 'key',
              type: 'string',
              description:
                  'Chave da preferência em snake_case (ex: restricao_alimentar, '
                  'mercado_evitar, nome)',
              required: true,
            ),
            AgentToolParameter(
              name: 'value',
              type: 'string',
              description:
                  'Valor da preferência (ex: vegano, Mercado X, João)',
              required: true,
            ),
          ],
        ),
        const AgentTool(
          name: 'delete_user_preference',
          description:
              'Remove uma preferência do usuário salva anteriormente',
          parameters: [
            AgentToolParameter(
              name: 'key',
              type: 'string',
              description: 'Chave da preferência a ser removida',
              required: true,
            ),
          ],
        ),
        const AgentTool(
          name: 'get_user_profile',
          description: 'Obtém o perfil completo do usuário com todas as '
              'preferências estruturadas (mercado preferido, restrições '
              'alimentares, mercados a evitar, observações). '
              'Use no início da conversa para personalizar as respostas.',
          parameters: [],
        ),
        const AgentTool(
          name: 'update_user_profile',
          description: 'Atualiza campos estruturados do perfil do usuário. '
              'Use quando o usuário fornecer informações sobre preferências '
              'pessoais que se encaixam nos campos do perfil.',
          parameters: [
            AgentToolParameter(
              name: 'preferredStore',
              type: 'string',
              description: 'Mercado preferido do usuário (ex: Supermercado X)',
              required: false,
            ),
            AgentToolParameter(
              name: 'dietaryRestrictions',
              type: 'string',
              description: 'Restrições alimentares (ex: vegano, vegetariano, sem glúten)',
              required: false,
            ),
            AgentToolParameter(
              name: 'avoidedStores',
              type: 'string',
              description: 'Mercados a evitar (ex: Mercado Y, Mercado Z)',
              required: false,
            ),
            AgentToolParameter(
              name: 'notes',
              type: 'string',
              description: 'Observações ou outras preferências',
              required: false,
            ),
          ],
        ),
      ];

  static List<AgentTool> get _backupTools => [
        const AgentTool(
          name: 'export_backup',
          description: 'Exporta todos os dados do usuário como JSON',
          parameters: [],
        ),
        const AgentTool(
          name: 'import_backup',
          description: 'Importa dados de um backup JSON',
          parameters: [
            AgentToolParameter(
              name: 'json',
              type: 'string',
              description: 'JSON completo do backup',
              required: true,
            ),
          ],
        ),
      ];

  static List<AgentTool> get _artifactTools => [
        const AgentTool(
          name: 'generate_artifact',
          description: 'Gera um artefato interativo e reativo de interface (GenUI) no chat. '
              'Permite criar calculadoras de eventos (churrasco, festa), otimização de orçamentos, '
              'sugestão de receitas integradas com a despensa, etc. O artefato possui controles interativos (sliders, switches, etc.) '
              'e uma lista de itens associada que atualiza dinamicamente conforme os controles são alterados.',
          parameters: [
            AgentToolParameter(
              name: 'title',
              type: 'string',
              description: 'Título do artefato (ex: "Churrasco da Galera", "Receita de Estrogonofe")',
              required: true,
            ),
            AgentToolParameter(
              name: 'icon',
              type: 'string',
              description: 'Um emoji ou ícone curto representando o artefato (ex: "🔥", "🍳", "💰", "🎂")',
              required: true,
            ),
            AgentToolParameter(
              name: 'description',
              type: 'string',
              description: 'Descrição amigável explicando o propósito do artefato',
              required: false,
            ),
            AgentToolParameter(
              name: 'controls',
              type: 'string',
              description: 'JSON string contendo a lista de controles interativos. Cada controle deve ter a estrutura: '
                  '{"id": "string", "type": "slider|stepper|toggle|select", "label": "string", "value": dynamic, '
                  '"min": num, "max": num, "step": num, "options": ["string"], "affectsMultiplier": bool, "filtersItems": bool}',
              required: true,
            ),
            AgentToolParameter(
              name: 'items',
              type: 'string',
              description: 'JSON string contendo a lista de itens. Cada item deve ter a estrutura: '
                  '{"name": "string", "baseQuantity": num, "unit": "un|kg|g|L|mL|pacote", "category": "Frutas|Limpeza|Bebidas|Padaria|Outros", '
                  '"estimatedPrice": num, "isAvailable": bool, "conditions": {"controlId": expectedValue}, '
                  '"alternatives": [{"name": "string", "quantity": num, "unit": "string", "estimatedPrice": num}]}',
              required: true,
            ),
            AgentToolParameter(
              name: 'baseServings',
              type: 'number',
              description: 'Quantidade base de pessoas ou porções para a qual as quantidades de itens foram calculadas (ex: 10.0)',
              required: true,
            ),
            AgentToolParameter(
              name: 'budget',
              type: 'number',
              description: 'Orçamento máximo sugerido ou planejado em reais (opcional)',
              required: false,
            ),
            AgentToolParameter(
              name: 'showBudgetBar',
              type: 'boolean',
              description: 'Se true, renderiza uma barra de orçamento reativa comparando o custo com o budget',
              required: false,
            ),
            AgentToolParameter(
              name: 'commitLabel',
              type: 'string',
              description: 'Texto personalizado para o botão de confirmação (ex: "Sincronizar Churrasco", "Comprar Ingredientes Faltantes")',
              required: false,
            ),
            AgentToolParameter(
              name: 'commitMode',
              type: 'string',
              description: 'Modo de inserção na lista: "addAll" (adiciona todos os itens visíveis) ou "addMissing" (adiciona apenas os que não estão disponíveis)',
              required: false,
            ),
          ],
        ),
      ];
}
