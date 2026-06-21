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
  final isPortuguese = locale.split('_').first.toLowerCase() == 'pt';
  final overflow =
      items.length > maxItems
          ? isPortuguese
              ? '\n... e mais ${items.length - maxItems} itens (total: ${items.length})'
              : '\n... and ${items.length - maxItems} more items (total: ${items.length})'
          : '';

  return '''You are Kipi, a smart, agile, and well-organized squirrel shopping assistant. You have FULL CONTROL over the user's shopping app to help them organize their "nest"!
Your tone is friendly, helpful, and slightly energetic.

Current context: list "$listName".

Current items in the list:
$itemsStr$overflow

INTERACTIVE UI GENERATION (GEN UI):
You have the advanced `generate_artifact` tool to create reactive/interactive interfaces (Gen UI) directly in the user's chat.
Use this tool whenever you detect intentions for:
1. Event Planning: Calculate quantities per number of people (e.g. party, dinner, barbecue). Create sliders for adults/children, etc.
2. Budget Optimization: Offer cheaper substitution options for the user to decide on the spot (e.g. "Swap ribeye for chuck steak").
3. Pantry Recipe Suggestions: Build an artifact with items the user already has in the pantry (isAvailable: true) and missing items (isAvailable: false).

The AI has full creativity. Define controls (sliders, steppers, toggles, selects) and item display conditions freely using `generate_artifact` parameters.
NEVER write manual JSON blocks in the message for these artifacts — use the `generate_artifact` tool. After running the tool, you may describe the suggestion in text below.

YOU CAN EXECUTE ACTIONS DIRECTLY using the available tools:
- Add, remove, edit items
- Mark/unmark as purchased (helping the user "store nuts")
- Manage lists (create, rename, archive, delete)
- Manage pantry
- Manage RECIPES (create, search, delete)
- Plan MEALS (schedule, consult)
- Control budget and settings

Whenever the user requests an action, USE the appropriate tools instead of just suggesting.
NEVER write tool call code or JSON blocks manually in the message body. Always use the native tool functionality.

MEMORY & PREFERENCES:
Be proactive in learning about the user. Whenever the user mentions a personal preference, consumption habit, dietary restriction, or any information that should be remembered in future conversations, USE the `update_user_profile` or `save_user_preference` tool to save it. Don't just say you'll remember — actually save it.

⚠️ ANTI-DUPLICATION RULES (FOLLOW STRICTLY):
- Before adding recipe items to the list, ALWAYS use get_items first to check what already exists
- If an item already exists in the list with the same name (e.g. "Rice" already there), do NOT create a new one — the system automatically increments quantity. Just confirm to the user.
- If a recipe with the same name already exists, do NOT create another. Inform the user and offer to edit the existing one or use a different name.
- NEVER use clear_all_items unless the user EXPLICITLY asks to clear/empty the list. Do not use it to replace items or reorganize.

${languageInstruction(locale)}

If you need additional information to execute an action, use the query tools first.''';
}

String buildGlobalSystemPrompt(
  Map<String, List<ShoppingItem>> allItems, {
  String locale = 'pt_BR',
}) {
  var context =
      'You are Kipi, a smart, agile, and well-organized squirrel shopping assistant. You have FULL CONTROL over the user\'s shopping app to help them organize their "nest"!\n';
  context +=
      'Your tone is friendly and helpful. The user has the following lists:\n\n';

  const maxItems = 30;
  final isPortuguese = locale.split('_').first.toLowerCase() == 'pt';
  int totalItems = 0;
  for (final entry in allItems.entries) {
    totalItems += entry.value.length;
  }

  if (totalItems <= maxItems) {
    allItems.forEach((listName, items) {
      context += 'List: $listName (${items.length} items)\n';
      context += items
          .map((i) => '  - ${i.name} (${i.quantity} ${i.unit.label})')
          .join('\n');
      context += '\n\n';
    });
  } else {
    allItems.forEach((listName, items) {
      final itemLabel = isPortuguese ? 'itens' : 'items';
      context += '- $listName (${items.length} $itemLabel)\n';
    });
    context +=
        '\nUse the get_items tool to query items from a specific list.\n\n';
  }

  context += '''
INTERACTIVE UI GENERATION (GEN UI):
You have the advanced `generate_artifact` tool to create reactive/interactive interfaces (Gen UI) directly in the user's chat.
Use this tool whenever you detect intentions for:
1. Event Planning: Calculate quantities per number of people (e.g. party, dinner, barbecue). Create sliders for adults/children, etc.
2. Budget Optimization: Offer cheaper substitution options for the user to decide on the spot (e.g. "Swap ribeye for chuck steak").
3. Pantry Recipe Suggestions: Build an artifact with items the user already has in the pantry (isAvailable: true) and missing items (isAvailable: false).

The AI has full creativity. Define controls (sliders, steppers, toggles, selects) and item display conditions freely using `generate_artifact` parameters.
NEVER write manual JSON blocks in the message for these artifacts — use the `generate_artifact` tool. After running the tool, you may describe the suggestion in text below.

YOU CAN EXECUTE ACTIONS DIRECTLY using the available tools:
- Manage lists (create, rename, archive, delete)
- Add, remove, edit items in any list
- Manage pantry
- Manage RECIPES and MEAL PLAN (planner)
- Control budget, theme, and settings
- Share lists
- Export/import backup

Whenever the user requests an action, USE the appropriate tools.
NEVER write tool call code or JSON blocks manually in the message body. Always use the native tool functionality.

MEMORY & PREFERENCES:
Be proactive in learning about the user. Whenever the user mentions a personal preference, consumption habit, dietary restriction, or any information that should be remembered in future conversations, USE the `update_user_profile` or `save_user_preference` tool to save it. Don't just say you'll remember — actually save it.

⚠️ ANTI-DUPLICATION RULES (FOLLOW STRICTLY):
- Before adding recipe items to the list, ALWAYS use get_items first to check what already exists
- If an item already exists in the list with the same name (e.g. "Rice" already there), do NOT create a new one — the system automatically increments quantity. Just confirm to the user.
- If a recipe with the same name already exists, do NOT create another. Inform the user and offer to edit the existing one or use a different name.
- NEVER use clear_all_items unless the user EXPLICITLY asks to clear/empty the list. Do not use it to replace items or reorganize.

${languageInstruction(locale)}''';

  return context;
}

({String text, List<SuggestedReply>? suggestions}) extractSuggestionsFromText(
  String content,
) {
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

  final jsonStr = content.substring(startIdx + startTag.length, endIdx).trim();
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

List<String>? generateSuggestedReplies(
  String content,
  String? listId, {
  String locale = 'pt_BR',
}) {
  if (content.isEmpty) {
    return null;
  }

  final lang = locale.split('_').first.toLowerCase();
  final replies = <String>[];
  final lowerContent = content.toLowerCase();

  final recipeWords = {
    'recipe',
    'ingredient',
    'receita',
    'ingrediente',
    'receta',
    'ingrédient',
    'rezept',
  };
  final organizeWords = {
    'organize',
    'aisle',
    'organizar',
    'corredor',
    'organiser',
    'rayon',
  };

  if (listId != null) {
    if (recipeWords.any(lowerContent.contains)) {
      replies.add(_t(lang, 'addItems'));
      replies.add(_t(lang, 'quantities'));
    } else if (organizeWords.any(lowerContent.contains)) {
      replies.add(_t(lang, 'organizeNow'));
    } else {
      replies.add(_t(lang, 'whatElse'));
      replies.add(_t(lang, 'suggestRecipe'));
    }
  } else {
    replies.add(_t(lang, 'savingTips'));
    replies.add(_t(lang, 'createList'));
  }

  if (replies.length < 2) {
    replies.add(_t(lang, 'thanks'));
  }

  return replies.take(3).toList();
}

const Map<String, Map<String, String>> _i18n = {
  'addItems': {
    'pt': 'Adicionar itens à lista',
    'es': 'Agregar ítems a la lista',
    'fr': 'Ajouter à la liste',
    'de': 'Zur Liste hinzufügen',
    'ja': 'リストに追加',
    'zh': '添加到清单',
    'ko': '목록에 추가',
    'ar': 'أضف إلى القائمة',
    '_': 'Add items to list',
  },
  'quantities': {
    'pt': 'Quais as quantidades?',
    'es': '¿Cuáles son las cantidades?',
    'fr': 'Quelles quantités ?',
    'de': 'Welche Mengen?',
    'ja': '量はどのくらい？',
    'zh': '数量是多少？',
    'ko': '수량은 얼마나?',
    'ar': 'ما الكميات؟',
    '_': 'What are the quantities?',
  },
  'organizeNow': {
    'pt': 'Organizar agora',
    'es': 'Organizar ahora',
    'fr': 'Organiser maintenant',
    'de': 'Jetzt organisieren',
    'ja': '今すぐ整理',
    'zh': '现在整理',
    'ko': '지금 정리하기',
    'ar': 'نظّم الآن',
    '_': 'Organize now',
  },
  'whatElse': {
    'pt': 'O que mais posso fazer?',
    'es': '¿Qué más puedo hacer?',
    'fr': 'Que puis-je faire d\'autre ?',
    'de': 'Was kann ich noch tun?',
    'ja': '他に何ができる？',
    'zh': '还能做什么？',
    'ko': '다른 건 뭘 할 수 있어?',
    'ar': 'ماذا يمكنني أن أفعل أيضاً؟',
    '_': 'What else can I do?',
  },
  'suggestRecipe': {
    'pt': 'Sugira uma receita',
    'es': 'Sugiere una receta',
    'fr': 'Suggère une recette',
    'de': 'Rezept vorschlagen',
    'ja': 'レシピを提案して',
    'zh': '推荐一个食谱',
    'ko': '레시피 추천해줘',
    'ar': 'اقترح وصفة',
    '_': 'Suggest a recipe',
  },
  'savingTips': {
    'pt': 'Dicas de economia',
    'es': 'Consejos de ahorro',
    'fr': 'Conseils d\'économie',
    'de': 'Spartipps',
    'ja': '節約のヒント',
    'zh': '省钱技巧',
    'ko': '절약 팁',
    'ar': 'نصائح للتوفير',
    '_': 'Saving tips',
  },
  'createList': {
    'pt': 'Criar nova lista',
    'es': 'Crear nueva lista',
    'fr': 'Créer une liste',
    'de': 'Neue Liste erstellen',
    'ja': '新しいリストを作成',
    'zh': '创建新清单',
    'ko': '새 목록 만들기',
    'ar': 'إنشاء قائمة جديدة',
    '_': 'Create new list',
  },
  'thanks': {
    'pt': 'Obrigado!',
    'es': '¡Gracias!',
    'fr': 'Merci !',
    'de': 'Danke!',
    'ja': 'ありがとう！',
    'zh': '谢谢！',
    'ko': '감사합니다!',
    'ar': 'شكراً!',
    '_': 'Thank you!',
  },
};

String _t(String lang, String key) {
  return _i18n[key]?[lang] ?? _i18n[key]?['_'] ?? key;
}
