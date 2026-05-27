import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/tools/artifact_tools.dart';

void main() {
  group('Artifact tools', () {
    test('allArtifactTools contains generate_artifact', () {
      expect(allArtifactTools.length, 1);
      expect(allArtifactTools.first.name, 'generate_artifact');
    });

    test('generate_artifact has all parameters', () {
      const tool = generateArtifactTool;
      expect(tool.parameters.any((p) => p.name == 'title' && p.required), true);
      expect(tool.parameters.any((p) => p.name == 'icon' && p.required), true);
      expect(tool.parameters.any((p) => p.name == 'controls' && p.required), true);
      expect(tool.parameters.any((p) => p.name == 'items' && p.required), true);
      expect(tool.parameters.any((p) => p.name == 'baseServings' && p.required), true);
    });

    test('tool has valid structure', () {
      expect(generateArtifactTool.name, matches(RegExp(r'^[a-z_]+$')));
      expect(generateArtifactTool.description, isNotEmpty);
    });
  });
}
