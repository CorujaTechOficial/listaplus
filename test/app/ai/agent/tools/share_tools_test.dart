import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/tools/share_tools.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';

void main() {
  group('Share tools', () {
    test('allShareTools contains all tools', () {
      final names = allShareTools.map((t) => t.name).toSet();
      expect(allShareTools.length, 2);
      expect(names, containsAll(['create_share_code', 'import_shared_list']));
    });

    test('each tool has valid structure', () {
      for (final tool in allShareTools) {
        expect(tool.name, matches(RegExp(r'^[a-z_]+$')));
        expect(tool.description, isNotEmpty);
        expect(tool.parameters, everyElement(isA<AgentToolParameter>()));
      }
    });
  });
}
