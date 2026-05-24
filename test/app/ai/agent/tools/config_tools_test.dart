import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/tools/config_tools.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';

void main() {
  group('Config tools', () {
    test('allConfigTools contains all tools', () {
      final names = allConfigTools.map((t) => t.name).toSet();
      expect(allConfigTools.length, 8);
      expect(names, containsAll([
        'get_theme', 'set_theme',
        'save_user_preference', 'delete_user_preference',
        'get_user_profile', 'update_user_profile',
        'export_backup', 'import_backup',
      ]));
    });

    test('each tool has valid structure', () {
      for (final tool in allConfigTools) {
        expect(tool.name, matches(RegExp(r'^[a-z_]+$')));
        expect(tool.description, isNotEmpty);
        expect(tool.parameters, everyElement(isA<AgentToolParameter>()));
      }
    });
  });
}
