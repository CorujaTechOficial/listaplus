import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../tools/tool_core.dart';
import '../tools/agent_tools.dart';
import 'list_executor.dart';
import 'item_executor.dart';
import 'pantry_executor.dart';
import 'budget_executor.dart';
import 'share_executor.dart';
import 'config_executor.dart';
import '../../../../providers/premium_provider.dart';
import '../../../../services/logger_service.dart';

class ToolExecutor {
  ToolExecutor(Ref ref) : _container = ref.container;

  ToolExecutor.fromContainer(this._container);

  final ProviderContainer _container;

  final ListExecutor _listExecutor = const ListExecutor();
  final ItemExecutor _itemExecutor = const ItemExecutor();
  final PantryExecutor _pantryExecutor = const PantryExecutor();
  final BudgetExecutor _budgetExecutor = const BudgetExecutor();
  final ShareExecutor _shareExecutor = const ShareExecutor();
  final ConfigExecutor _configExecutor = const ConfigExecutor();

  Future<ToolResult> execute(AgentToolCall call) async {
    if (AgentTools.premiumToolNames.contains(call.name)) {
      final isPremium = _container.read(premiumProvider).value ?? false;
      if (!isPremium) {
        return ToolResult(
          toolCallId: call.id,
          content: 'Esta funcionalidade requer assinatura Premium.',
          success: false,
        );
      }
    }

    try {
      switch (call.name) {
        // --- List tools ---
        case 'get_lists':
          return _listExecutor.getLists(_container);
        case 'get_current_list':
          return _listExecutor.getCurrentList(_container);
        case 'set_current_list':
          return _listExecutor.setCurrentList(_container, call.arguments);
        case 'create_list':
          return _listExecutor.createList(_container, call.arguments);
        case 'rename_list':
          return _listExecutor.renameList(_container, call.arguments);
        case 'delete_list':
          return _listExecutor.deleteList(_container, call.arguments);
        case 'archive_list':
          return _listExecutor.archiveList(_container, call.arguments);
        case 'unarchive_list':
          return _listExecutor.unarchiveList(_container, call.arguments);

        // --- Item tools ---
        case 'get_items':
          return _itemExecutor.getItems(_container, call.arguments);
        case 'add_item':
          return _itemExecutor.addItem(_container, call.arguments);
        case 'update_item':
          return _itemExecutor.updateItem(_container, call.arguments);
        case 'remove_item':
          return _itemExecutor.removeItem(_container, call.arguments);
        case 'toggle_purchased':
          return _itemExecutor.togglePurchased(_container, call.arguments);
        case 'toggle_purchased_batch':
          return _itemExecutor.togglePurchasedBatch(_container, call.arguments);
        case 'increment_quantity':
          return _itemExecutor.incrementQuantity(_container, call.arguments);
        case 'decrement_quantity':
          return _itemExecutor.decrementQuantity(_container, call.arguments);
        case 'clear_purchased':
          return _itemExecutor.clearPurchased(_container, call.arguments);
        case 'clear_all_items':
          return _itemExecutor.clearAllItems(_container, call.arguments);
        case 'reorder_items':
          return _itemExecutor.reorderItems(_container, call.arguments);

        // --- Pantry tools ---
        case 'get_pantry_items':
          return _pantryExecutor.getPantryItems(_container);
        case 'add_pantry_item':
          return _pantryExecutor.addPantryItem(_container, call.arguments);
        case 'update_pantry_item':
          return _pantryExecutor.updatePantryItem(_container, call.arguments);
        case 'remove_pantry_item':
          return _pantryExecutor.removePantryItem(_container, call.arguments);
        case 'consume_pantry_item':
          return _pantryExecutor.consumePantryItem(_container, call.arguments);
        case 'restock_pantry_item':
          return _pantryExecutor.restockPantryItem(_container, call.arguments);
        case 'clear_pantry':
          return _pantryExecutor.clearPantry(_container);

        // --- Budget tools ---
        case 'get_budget':
          return _budgetExecutor.getBudget(_container);
        case 'set_budget':
          return _budgetExecutor.setBudget(_container, call.arguments);

        // --- Share tools ---
        case 'create_share_code':
          return _shareExecutor.createShareCode(_container, call.arguments);
        case 'import_shared_list':
          return _shareExecutor.importSharedList(_container, call.arguments);

        // --- Config tools ---
        case 'get_theme':
          return _configExecutor.getTheme(_container);
        case 'set_theme':
          return _configExecutor.setTheme(_container, call.arguments);
        case 'save_user_preference':
          return _configExecutor.saveUserPreference(_container, call.arguments);
        case 'delete_user_preference':
          return _configExecutor.deleteUserPreference(_container, call.arguments);
        case 'get_user_profile':
          return _configExecutor.getUserProfile(_container);
        case 'update_user_profile':
          return _configExecutor.updateUserProfile(_container, call.arguments);

        // --- Backup tools ---
        case 'export_backup':
          return _configExecutor.exportBackup(_container);
        case 'import_backup':
          return _configExecutor.importBackup(_container, call.arguments);
        case 'generate_artifact':
          return _configExecutor.generateArtifact(_container, call.arguments);

        // --- Recipe tools ---
        case 'get_recipes':
          return _configExecutor.getRecipes(_container, call.arguments);
        case 'create_recipe':
          return _configExecutor.createRecipe(_container, call.arguments);
        case 'delete_recipe':
          return _configExecutor.deleteRecipe(_container, call.arguments);

        // --- Meal Planner tools ---
        case 'get_meal_plan':
          return _configExecutor.getMealPlan(_container, call.arguments);
        case 'schedule_meal':
          return _configExecutor.scheduleMeal(_container, call.arguments);
        case 'remove_meal_plan_entry':
          return _configExecutor.removeMealPlanEntry(_container, call.arguments);

        default:
          return ToolResult(
            toolCallId: call.id,
            content: 'Ferramenta desconhecida: ${call.name}',
            success: false,
          );
      }
    } on Exception catch (e, st) {
      LoggerService.error(e, stackTrace: st, message: '[ToolExecutor] Error executing ${call.name}', extra: {
        'operation': 'execute_tool',
        'toolName': call.name,
        'toolId': call.id,
        'arguments': call.arguments,
      });
      return ToolResult(
        toolCallId: call.id,
        content: 'Erro ao executar ${call.name}: $e',
        success: false,
      );
    }
  }
}
