import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';
import 'package:shopping_list/core/utils/formatters.dart';

String friendlyToolDescription(
  AgentToolCall toolCall, {
  required String currency,
}) {
  final name = toolCall.name;
  final args = toolCall.arguments;
  switch (name) {
    case 'get_lists':
      return 'Buscando listas de compras';
    case 'get_current_list':
      return 'Identificando lista atual';
    case 'set_current_list':
      return 'Definindo lista atual';
    case 'create_list':
      return 'Criando lista "${args['name']}"';
    case 'rename_list':
      return 'Renomeando lista';
    case 'delete_list':
      return 'Excluindo lista';
    case 'archive_list':
      return 'Arquivando lista';
    case 'unarchive_list':
      return 'Desarquivando lista';
    case 'get_items':
      return 'Buscando itens da lista';
    case 'add_item':
      return 'Adicionando item "${args['name']}"';
    case 'update_item':
      return 'Atualizando item "${args['name'] ?? ''}"';
    case 'remove_item':
      return 'Removendo item';
    case 'toggle_purchased':
      return 'Alternando marcação de item';
    case 'toggle_purchased_batch':
      final idsStr = args['itemIds'] as String? ?? '';
      final count =
          idsStr.split(',').where((s) {
            return s.trim().isNotEmpty;
          }).length;
      final action =
          (args['isPurchased'] as bool? ?? false) ? 'Marcar' : 'Desmarcar';
      return '$action $count itens como comprados';
    case 'increment_quantity':
      return 'Aumentando quantidade';
    case 'decrement_quantity':
      return 'Diminuindo quantidade';
    case 'clear_purchased':
      return 'Limpando itens comprados';
    case 'clear_all_items':
      return 'Limpando lista';
    case 'reorder_items':
      return 'Reordenando itens';
    case 'get_pantry_items':
      return 'Buscando itens da despensa';
    case 'add_pantry_item':
      return 'Adicionando item "${args['name']}" à despensa';
    case 'update_pantry_item':
      return 'Atualizando item da despensa';
    case 'remove_pantry_item':
      return 'Removendo item da despensa';
    case 'consume_pantry_item':
      return 'Consumindo item da despensa';
    case 'restock_pantry_item':
      return 'Reabastecendo despensa';
    case 'clear_pantry':
      return 'Limpando despensa';
    case 'get_budget':
      return 'Buscando orçamento';
    case 'set_budget':
      final budget =
          args['budget'] != null ? (args['budget'] as num).toDouble() : 0.0;
      return 'Definindo orçamento para ${formatCurrency(budget, currency)}';
    case 'create_share_code':
      return 'Criando código de compartilhamento';
    case 'import_shared_list':
      return 'Importando lista compartilhada';
    case 'get_theme':
      return 'Consultando tema atual';
    case 'set_theme':
      return 'Alterando tema';
    case 'export_backup':
      return 'Exportando backup';
    case 'import_backup':
      return 'Importando backup';
    case 'generate_artifact':
      return 'Gerando interface interativa';
    case 'get_recipes':
      return 'Buscando suas receitas';
    case 'create_recipe':
      return 'Salvando nova receita';
    case 'delete_recipe':
      return 'Excluindo receita';
    case 'get_meal_plan':
      return 'Consultando seu cardápio';
    case 'schedule_meal':
      return 'Agendando refeição no cardápio';
    case 'remove_meal_plan_entry':
      return 'Removendo refeição do cardápio';
    case 'open_paywall':
      return 'Abrindo tela de assinatura';
    case 'request_app_review':
      return 'Solicitando sua avaliação';
    case 'prompt_app_update':
      return 'Verificando atualizações';
    case 'generate_referral_link':
      return 'Gerando seu link de indicação';
    default:
      return 'Executando ferramenta $name';
  }
}

String updateActivityForTool(String toolName) {
  return switch (toolName) {
    // List items
    'add_shopping_item' || 'add_shopping_items' => 'Adding items to list...',
    'remove_shopping_item' => 'Removing items...',
    'update_shopping_item' => 'Updating item...',
    'check_shopping_item' => 'Checking item...',
    'uncheck_shopping_item' => 'Unchecking item...',
    'clear_checked_items' => 'Clearing checked items...',
    'organize_shopping_list' => 'Reorganizing list...',
    // Lists
    'create_shopping_list' => 'Creating new list...',
    'delete_shopping_list' => 'Removing list...',
    'rename_shopping_list' => 'Renaming list...',
    'get_shopping_list_items' || 'get_all_shopping_lists' => 'Querying your lists...',
    'set_budget' => 'Setting budget...',
    // Pantry
    'get_pantry_items' => 'Checking your pantry...',
    'add_pantry_item' => 'Adding to pantry...',
    'remove_pantry_item' => 'Removing from pantry...',
    'update_pantry_item' => 'Updating pantry...',
    // Recipes
    'create_recipe' => 'Saving recipe...',
    'get_recipes' => 'Searching recipes...',
    'delete_recipe' => 'Removing recipe...',
    'add_recipe_to_list' => 'Adding ingredients to list...',
    // Meal plan
    'schedule_meal' => 'Organizing your menu...',
    'get_meal_plan' => 'Loading your menu...',
    'delete_meal_plan_entry' => 'Updating menu...',
    // Categories
    'get_categories' => 'Searching categories...',
    'set_item_category' => 'Categorizing items...',
    // Sharing
    'share_shopping_list' => 'Generating share link...',
    'get_shared_list_info' => 'Searching shared list...',
    // Profile / Settings
    'get_user_profile' => 'Loading your profile...',
    'update_user_profile' => 'Saving your preferences...',
    'get_preferences' => 'Checking your settings...',
    // Artifacts / Generation
    'generate_artifact' => 'Generating personalized content...',
    'search_products' => 'Searching products...',
    'get_price_estimates' => 'Estimating prices...',
    _ => 'Processing...',
  };
}
