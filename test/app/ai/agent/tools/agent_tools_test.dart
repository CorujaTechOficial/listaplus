import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/tools/agent_tools.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';

void main() {
  group('AgentTools', () {
    test('all contains all 45 tools', () {
      // 8 list + 11 item + 7 pantry + 3 recipe + 3 meal + 2 budget + 2 share + 8 config + 1 artifact
      expect(AgentTools.all.length, 45);
    });

    test('all returns AgentTool instances', () {
      for (final tool in AgentTools.all) {
        expect(tool, isA<AgentTool>());
      }
    });

    test('premiumToolNames contains expected tools', () {
      expect(AgentTools.premiumToolNames, containsAll([
        'get_budget',
        'set_budget',
        'create_share_code',
        'import_shared_list',
        'export_backup',
        'import_backup',
        'generate_artifact',
      ]));
    });

    test('premiumToolNames has exactly 7 tools', () {
      expect(AgentTools.premiumToolNames.length, 7);
    });

    test('each tool has a unique name', () {
      final names = AgentTools.all.map((t) => t.name).toList();
      expect(names.toSet().length, names.length);
    });

    test('all tool names match snake_case', () {
      for (final tool in AgentTools.all) {
        expect(tool.name, matches(RegExp(r'^[a-z_]+$')), reason: 'Tool ${tool.name} is not snake_case');
      }
    });

    test('all tools have descriptions', () {
      for (final tool in AgentTools.all) {
        expect(tool.description, isNotEmpty, reason: 'Tool ${tool.name} has empty description');
      }
    });

    test('toOpenAIFunction works for all tools', () {
      for (final tool in AgentTools.all) {
        final func = tool.toOpenAIFunction();
        expect(func['type'], 'function');
        expect(func['function']['name'], tool.name);
      }
    });
  });
}
