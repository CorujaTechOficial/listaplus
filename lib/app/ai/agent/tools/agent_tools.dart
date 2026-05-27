import 'tool_core.dart';
import 'list_tools.dart';
import 'item_tools.dart';
import 'pantry_tools.dart';
import 'recipe_tools.dart';
import 'meal_planner_tools.dart';
import 'budget_tools.dart';
import 'share_tools.dart';
import 'config_tools.dart';
import 'artifact_tools.dart';
import 'system_tools.dart';

class AgentTools {
  static const Set<String> premiumToolNames = {
    'get_budget',
    'set_budget',
    'export_backup',
    'import_backup',
    'generate_artifact',
  };

  static List<AgentTool> get all => [
    ...allListTools,
    ...allItemTools,
    ...allPantryTools,
    ...allRecipeTools,
    ...allMealPlannerTools,
    ...allBudgetTools,
    ...allShareTools,
    ...allConfigTools,
    ...allArtifactTools,
    ...allSystemTools,
  ];
}
