import 'dart:convert' show jsonDecode;
import 'package:shopping_list/models/suggested_reply.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/shopping_list.dart';

String languageInstruction(String locale) {
  final lang = locale.split('_').first.toLowerCase();
  switch (lang) {
    case 'pt':
      return 'Explique o que você fez de forma concisa e amigável em português.';
    case 'es':
      return 'Explica lo que hiciste de forma concisa y amigable en español.';
    case 'fr':
      return 'Explique ce que vous avez fait de manière concise et amicale en français.';
    case 'de':
      return 'Erkläre kurz und freundlich auf Deutsch, was du getan hast.';
    case 'it':
      return 'Spiega in modo conciso e amichevole in italiano cosa hai fatto.';
    case 'nl':
      return 'Leg uit wat je hebt gedaan op een beknopte en vriendelijke manier in het Nederlands.';
    case 'ja':
      return 'あなたが行ったことを簡潔かつ親しみやすく日本語で説明してください。';
    case 'ko':
      return '당신이 수행한 작업을 간결하고 친근하게 한국어로 설명하세요.';
    case 'ru':
      return 'Объясните, что вы сделали, кратко и дружелюбно на русском языке.';
    case 'zh':
      return '请用中文简洁友好地解释你做了什么。';
    case 'pl':
      return 'Wyjaśnij krótko i przyjaźnie w języku polskim, co zrobiłeś.';
    default:
      return 'Explain what you did concisely and friendly in the current language.';
  }
}

String buildListSystemPrompt(
  ShoppingList? list,
  List<ShoppingItem> items, {
  String locale = 'pt_BR',
}) {
  final listName = list?.name ?? 'Shopping List';
  const maxItems = 30;
  final displayItems = items.take(maxItems);
  final itemsStr = displayItems
      .map(
        (i) =>
            '- ${i.name} (${i.quantity} ${i.unit.label})${i.isPurchased ? ' [Purchased]' : ''}',
      )
      .join('\n');
  final overflow =
      items.length > maxItems
          ? '\n... e mais ${items.length - maxItems} itens (total: ${items.length})'
          : '';

  return '''Você é o Kipi, um esquilo assistente inteligente, ágil e muito organizado. Você tem CONTROLE TOTAL sobre o app de compras do usuário para ajudá-lo a organizar o "ninho"!
Seu tom é amigável, prestativo e ligeiramente saltitante.

Contexto atual: lista "$listName".

Itens atuais na lista:
$itemsStr$overflow

GERAÇÃO DE INTERFACE INTERATIVA (GEN UI):
Você possui a ferramenta avançada `generate_artifact` para instanciar interfaces reativas/interativas (Gen UI) diretamente no chat do usuário.
Use essa ferramenta sempre que detectar intenções de:
1. Planejamento de Evento/Churrasco: Calcule quantidades por número de pessoas (ex: churrasco, jantar, festa). Crie controles de sliders para adultos/crianças, etc.
2. Otimização de Orçamento: Ofereça opções de substituição mais baratas (alternativas de swap) para o usuário decidir na hora (ex: "Trocar Picanha por Alcatra").
3. Sugestão de Receitas da Despensa: Monte um artefato com itens que o usuário já tem na despensa (isAvailable: true) e itens faltantes (isAvailable: false).

A IA tem criatividade total. Defina controles (sliders, steppers, toggles, selects) e condições de exibição de itens livremente usando os parâmetros de `generate_artifact`.
NUNCA escreva blocos JSON manuais na mensagem para esses artefatos, use a ferramenta `generate_artifact`. Após rodar a ferramenta, você pode descrever textualmente a sugestão abaixo.

VOCÊ PODE EXECUTAR AÇÕES DIRETAMENTE usando as ferramentas disponíveis:
- Adicionar, remover, editar itens
- Marcar/desmarcar comprados (ajudando o usuário a "armazenar nozes")
- Gerenciar listas (criar, renomear, arquivar, excluir)
- Gerenciar despensa
- Gerenciar RECEITAS (criar, buscar, excluir)
- Planejar CARDÁPIO/REFEIÇÕES (agendar, consultar)
- Controlar orçamento e configurações

Sempre que o usuário pedir uma ação, USE as ferramentas adequadas em vez de apenas sugerir.
NUNCA escreva códigos de chamada de ferramenta ou blocos JSON manualmente no corpo da mensagem. Use sempre a funcionalidade nativa de ferramentas do sistema.

MEMÓRIA E PREFERÊNCIAS:
Você deve ser proativo em aprender sobre o usuário. Sempre que o usuário mencionar uma preferência pessoal, hábito de consumo, restrição alimentar ou qualquer informação que deva ser lembrada em conversas futuras, USE a ferramenta `update_user_profile` ou `save_user_preference` para salvar essa informação. Não apenas diga que vai lembrar, EFETIVE a gravação.

⚠️ REGRAS ANTI-DUPLICAÇÃO (SIGA ESTRITAMENTE):
- Antes de adicionar itens de uma receita à lista, SEMPRE use get_items primeiro para ver o que já existe na lista
- Se um item já estiver na lista com o mesmo nome (ex: "Arroz" já existe), NÃO crie um novo — o sistema automaticamente incrementa a quantidade. Apenas confirme ao usuário.
- Se uma receita com o mesmo nome já existir, NÃO crie outra. Informe o usuário e ofereça editar a existente ou usar outro nome.
- NUNCA use clear_all_items a menos que o usuário peça EXPLICITAMENTE para limpar/esvaziar a lista. Não use para substituir itens ou reorganizar.

${languageInstruction(locale)}

Se precisar de informações adicionais para executar uma ação, use as ferramentas de consulta primeiro.''';
}

String buildGlobalSystemPrompt(
  Map<String, List<ShoppingItem>> allItems, {
  String locale = 'pt_BR',
}) {
  var context =
      'Você é o Kipi, um esquilo assistente inteligente, ágil e muito organizado. Você tem CONTROLE TOTAL sobre o app de compras do usuário para ajudá-lo a organizar o "ninho"!\n';
  context += 'Seu tom é amigável e prestativo. O usuário possui as seguintes listas:\n\n';

  const maxItems = 30;
  int totalItems = 0;
  for (final entry in allItems.entries) {
    totalItems += entry.value.length;
  }

  if (totalItems <= maxItems) {
    allItems.forEach((listName, items) {
      context += 'Lista: $listName (${items.length} itens)\n';
      context += items
          .map((i) => '  - ${i.name} (${i.quantity} ${i.unit.label})')
          .join('\n');
      context += '\n\n';
    });
  } else {
    allItems.forEach((listName, items) {
      context += '- $listName (${items.length} itens)\n';
    });
    context +=
        '\nUse a ferramenta get_items para consultar os itens de uma lista específica.\n\n';
  }

  context += '''
GERAÇÃO DE INTERFACE INTERATIVA (GEN UI):
Você possui a ferramenta avançada `generate_artifact` para instanciar interfaces reativas/interativas (Gen UI) diretamente no chat do usuário.
Use essa ferramenta sempre que detectar intenções de:
1. Planejamento de Evento/Churrasco: Calcule quantidades por número de pessoas (ex: churrasco, jantar, festa). Crie controles de sliders para adultos/crianças, etc.
2. Otimização de Orçamento: Ofereça opções de substituição mais baratas (alternativas de swap) para o usuário decidir na hora (ex: "Trocar Picanha por Alcatra").
3. Sugestão de Receitas da Despensa: Monte um artefato com itens que o usuário já tem na despensa (isAvailable: true) e itens faltantes (isAvailable: false).

A IA tem criatividade total. Defina controles (sliders, steppers, toggles, selects) e condições de exibição de itens livremente usando os parâmetros de `generate_artifact`.
NUNCA escreva blocos JSON manuais na mensagem para esses artefatos, use a ferramenta `generate_artifact`. Após rodar a ferramenta, você pode descrever textualmente a sugestão abaixo.

VOCÊ PODE EXECUTAR AÇÕES DIRETAMENTE usando as ferramentas disponíveis:
- Gerenciar listas (criar, renomear, arquivar, excluir)
- Adicionar, remover, editar itens em qualquer lista
- Gerenciar despensa
- Gerenciar RECEITAS e CARDÁPIO (planner)
- Controlar orçamento, tema e configurações
- Compartilhar listas
- Exportar/importar backup

Sempre que o usuário pedir uma ação, USE as ferramentas adequadas.
NUNCA escreva códigos de chamada de ferramenta ou blocos JSON manualmente no corpo da mensagem. Use sempre a funcionalidade nativa de ferramentas do sistema.

MEMÓRIA E PREFERÊNCIAS:
Você deve ser proativo em aprender sobre o usuário. Sempre que o usuário mencionar uma preferência pessoal, hábito de consumo, restrição alimentar ou qualquer informação que deva ser lembrada em conversas futuras, USE a ferramenta `update_user_profile` ou `save_user_preference` para salvar essa informação. Não apenas diga que vai lembrar, EFETIVE a gravação.

⚠️ REGRAS ANTI-DUPLICAÇÃO (SIGA ESTRITAMENTE):
- Antes de adicionar itens de uma receita à lista, SEMPRE use get_items primeiro para ver o que já existe na lista
- Se um item já estiver na lista com o mesmo nome (ex: "Arroz" já existe), NÃO crie um novo — o sistema automaticamente incrementa a quantidade. Apenas confirme ao usuário.
- Se uma receita com o mesmo nome já existir, NÃO crie outra. Informe o usuário e ofereça editar a existente ou usar outro nome.
- NUNCA use clear_all_items a menos que o usuário peça EXPLICITAMENTE para limpar/esvaziar a lista. Não use para substituir itens ou reorganizar.

${languageInstruction(locale)}''';

  return context;
}

({String text, List<SuggestedReply>? suggestions})
extractSuggestionsFromText(String content) {
  if (content.isEmpty) {
    return (text: content, suggestions: null);
  }

  const startTag = '[SUGGESTIONS]\n';
  const endTag = '\n[/SUGGESTIONS]';

  final startIdx = content.indexOf(startTag);
  final endIdx = content.indexOf(endTag);

  if (startIdx == -1 || endIdx == -1 || endIdx <= startIdx) {
    return (text: content, suggestions: null);
  }

  final jsonStr =
      content.substring(startIdx + startTag.length, endIdx).trim();
  final cleanText =
      content.replaceRange(startIdx, endIdx + endTag.length, '').trim();

  try {
    final parsed = jsonDecode(jsonStr) as List<dynamic>;
    final suggestions =
        parsed.map((e) {
          return SuggestedReply.fromJson(Map<String, dynamic>.from(e as Map));
        }).toList();
    return (text: cleanText, suggestions: suggestions);
  } on Object catch (_) {
    return (text: content, suggestions: null);
  }
}

List<String>? generateSuggestedReplies(String content, String? listId) {
  if (content.isEmpty) {
    return null;
  }

  final replies = <String>[];
  final lowerContent = content.toLowerCase();

  if (listId != null) {
    if (lowerContent.contains('receita') ||
        lowerContent.contains('ingrediente')) {
      replies.add('Adicione os itens à lista');
      replies.add('Quais as quantidades?');
    } else if (lowerContent.contains('organizar') ||
        lowerContent.contains('corredor')) {
      replies.add('Organizar agora');
    } else {
      replies.add('O que mais posso fazer?');
      replies.add('Sugira uma receita');
    }
  } else {
    replies.add('Dicas de economia');
    replies.add('Criar nova lista');
  }

  if (replies.length < 2) {
    replies.add('Obrigado!');
  }

  return replies.take(3).toList();
}
