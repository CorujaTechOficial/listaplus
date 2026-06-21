import 'package:custom_lint_builder/custom_lint_builder.dart';

import 'rules/avoid_raw_firebase_outside_service.dart';
import 'rules/avoid_raw_material_colors.dart';
import 'rules/prefer_abstract_service_type.dart';
import 'rules/prefer_correct_popup_menu_icon.dart';
import 'rules/prefer_design_tokens.dart';

PluginBase createPlugin() => _ShoppingListLinter();

class _ShoppingListLinter extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => const [
        AvoidRawFirebaseOutsideService(),
        AvoidRawMaterialColors(),
        PreferAbstractServiceType(),
        PreferCorrectPopupMenuIcon(),
        PreferDesignTokens(),
      ];
}
