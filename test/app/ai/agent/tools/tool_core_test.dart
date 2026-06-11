import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';

void main() {
  group('AgentTool', () {
    group('toOpenAIFunction', () {
      test('returns correct structure for tool with no parameters', () {
        const tool = AgentTool(name: 'test_tool', description: 'A test tool');
        final result = tool.toOpenAIFunction();
        expect(result['type'], 'function');
        expect(result['function']['name'], 'test_tool');
        expect(result['function']['description'], 'A test tool');
        expect(result['function']['parameters']['type'], 'object');
        expect(result['function']['parameters']['properties'], isEmpty);
        expect(result['function']['parameters']['required'], isEmpty);
      });

      test('includes required parameter in required list', () {
        const param = AgentToolParameter(
          name: 'item',
          type: 'string',
          description: 'Item name',
          required: true,
        );
        const tool = AgentTool(name: 'add', description: 'Add item', parameters: [param]);
        final result = tool.toOpenAIFunction();
        expect(result['function']['parameters']['required'], ['item']);
        expect(result['function']['parameters']['properties']['item']['type'], 'string');
      });

      test('excludes optional parameter from required list', () {
        const param = AgentToolParameter(
          name: 'optional_field',
          type: 'integer',
          description: 'Optional value',
        );
        const tool = AgentTool(name: 'test', description: 'Test', parameters: [param]);
        final result = tool.toOpenAIFunction();
        expect(result['function']['parameters']['required'], isEmpty);
      });

      test('includes enum values when present', () {
        const param = AgentToolParameter(
          name: 'color',
          type: 'string',
          description: 'Color',
          required: true,
          enumValues: ['red', 'green', 'blue'],
        );
        const tool = AgentTool(name: 'pick', description: 'Pick color', parameters: [param]);
        final result = tool.toOpenAIFunction();
        expect(result['function']['parameters']['properties']['color']['enum'], ['red', 'green', 'blue']);
      });

      test('handles multiple parameters', () {
        const param1 = AgentToolParameter(name: 'name', type: 'string', description: 'Name', required: true);
        const param2 = AgentToolParameter(name: 'age', type: 'integer', description: 'Age');
        const tool = AgentTool(name: 'create', description: 'Create', parameters: [param1, param2]);
        final result = tool.toOpenAIFunction();
        expect(result['function']['parameters']['properties'].length, 2);
        expect(result['function']['parameters']['required'], ['name']);
      });
    });
  });

  group('AgentToolCall', () {
    group('fromJson', () {
      test('parses valid tool call correctly', () {
        final json = {
          'id': 'call_123',
          'function': {
            'name': 'add_item',
            'arguments': '{"name": "Leite", "quantity": "2"}',
          },
        };
        final call = AgentToolCall.fromJson(json);
        expect(call.id, 'call_123');
        expect(call.name, 'add_item');
        expect(call.arguments, {'name': 'Leite', 'quantity': '2'});
      });

      test('handles malformed JSON arguments gracefully', () {
        final json = {
          'id': 'call_456',
          'function': {
            'name': 'add_item',
            'arguments': 'not valid json',
          },
        };
        final call = AgentToolCall.fromJson(json);
        expect(call.id, 'call_456');
        expect(call.name, 'add_item');
        expect(call.arguments, isEmpty);
      });

      test('handles empty string arguments', () {
        final json = {
          'id': 'call_789',
          'function': {
            'name': 'get_lists',
            'arguments': '',
          },
        };
        final call = AgentToolCall.fromJson(json);
        expect(call.id, 'call_789');
        expect(call.name, 'get_lists');
        expect(call.arguments, isEmpty);
      });
    });

    group('toJson', () {
      test('produces valid round-trip', () {
        final call = AgentToolCall(
          id: 'call_1',
          name: 'test',
          arguments: {'key': 'value'},
        );
        final json = call.toJson();
        expect(json['id'], 'call_1');
        expect(json['function']['name'], 'test');
        expect(json['function']['arguments'], '{"key":"value"}');
      });
    });
  });

  group('ToolResult', () {
    test('fromSuccess creates successful result', () {
      final result = ToolResult.fromSuccess('Success!', data: {'key': 1});
      expect(result.success, isTrue);
      expect(result.content, 'Success!');
      expect(result.resultData, {'key': 1});
      expect(result.requiresUnlock, isFalse);
    });

    test('fromError creates error result', () {
      final result = ToolResult.fromError('Error!', requiresUnlock: true);
      expect(result.success, isFalse);
      expect(result.content, 'Error!');
      expect(result.requiresUnlock, isTrue);
    });

    test('fromError defaults requiresUnlock to false', () {
      final result = ToolResult.fromError('Error!');
      expect(result.requiresUnlock, isFalse);
    });

    test('fromSuccess defaults toolCallId to empty', () {
      final result = ToolResult.fromSuccess('OK');
      expect(result.toolCallId, '');
    });
  });
}
