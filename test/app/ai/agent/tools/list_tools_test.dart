import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/tools/list_tools.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';

void main() {
  group('List tools', () {
    test('get_lists has correct name and no parameters', () {
      final tool = getListsTool;
      expect(tool.name, 'get_lists');
      expect(tool.description, isNotEmpty);
      expect(tool.parameters, isEmpty);
    });

    test('get_current_list has correct name', () {
      final tool = getCurrentListTool;
      expect(tool.name, 'get_current_list');
      expect(tool.parameters, isEmpty);
    });

    test('set_current_list has listId parameter', () {
      final tool = setCurrentListTool;
      expect(tool.name, 'set_current_list');
      expect(tool.parameters.any((p) => p.name == 'listId' && p.required), true);
    });

    test('create_list has name and optional budget', () {
      final tool = createListTool;
      expect(tool.name, 'create_list');
      expect(tool.parameters.any((p) => p.name == 'name' && p.required), true);
      expect(tool.parameters.any((p) => p.name == 'budget' && !p.required && p.type == 'number'), true);
    });

    test('rename_list has listId and name', () {
      final tool = renameListTool;
      expect(tool.name, 'rename_list');
      expect(tool.parameters.any((p) => p.name == 'listId' && p.required), true);
      expect(tool.parameters.any((p) => p.name == 'name' && p.required), true);
    });

    test('delete_list has listId parameter', () {
      final tool = deleteListTool;
      expect(tool.name, 'delete_list');
      expect(tool.parameters.any((p) => p.name == 'listId' && p.required), true);
    });

    test('archive_list has listId parameter', () {
      final tool = archiveListTool;
      expect(tool.name, 'archive_list');
      expect(tool.parameters.any((p) => p.name == 'listId' && p.required), true);
    });

    test('unarchive_list has listId parameter', () {
      final tool = unarchiveListTool;
      expect(tool.name, 'unarchive_list');
      expect(tool.parameters.any((p) => p.name == 'listId' && p.required), true);
    });

    test('allListTools contains all 8 list tools', () {
      expect(allListTools.length, 8);
      final names = allListTools.map((t) => t.name).toSet();
      expect(names, containsAll([
        'get_lists',
        'get_current_list',
        'set_current_list',
        'create_list',
        'rename_list',
        'delete_list',
        'archive_list',
        'unarchive_list',
      ]));
    });

    test('each list tool has proper structure', () {
      for (final tool in allListTools) {
        expect(tool.name, matches(RegExp(r'^[a-z_]+$')));
        expect(tool.description, isNotEmpty);
        expect(tool.parameters, everyElement(isA<AgentToolParameter>()));
      }
    });
  });
}
