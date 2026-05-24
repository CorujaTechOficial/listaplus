import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';

void main() {
  group('AgentToolParameter', () {
    test('creates with all fields', () {
      final param = AgentToolParameter(
        name: 'test_param',
        type: 'string',
        description: 'A test parameter',
        required: true,
      );
      expect(param.name, 'test_param');
      expect(param.type, 'string');
      expect(param.description, 'A test parameter');
      expect(param.required, true);
      expect(param.enumValues, isNull);
    });

    test('creates with enum values', () {
      final param = AgentToolParameter(
        name: 'mode',
        type: 'string',
        description: 'Mode selection',
        required: true,
        enumValues: ['light', 'dark'],
      );
      expect(param.enumValues, ['light', 'dark']);
    });

    test('defaults required to false', () {
      final param = AgentToolParameter(
        name: 'opt',
        type: 'string',
        description: 'Optional',
      );
      expect(param.required, false);
    });
  });

  group('AgentTool', () {
    test('creates with name and description', () {
      final tool = AgentTool(
        name: 'test_tool',
        description: 'A test tool',
      );
      expect(tool.name, 'test_tool');
      expect(tool.description, 'A test tool');
      expect(tool.parameters, isEmpty);
    });

    test('creates with parameters', () {
      final tool = AgentTool(
        name: 'test_tool',
        description: 'A test tool',
        parameters: [
          AgentToolParameter(name: 'param1', type: 'string', description: 'Param 1', required: true),
          AgentToolParameter(name: 'param2', type: 'number', description: 'Param 2'),
        ],
      );
      expect(tool.parameters.length, 2);
    });

    test('toOpenAIFunction returns correct format', () {
      final tool = AgentTool(
        name: 'test_tool',
        description: 'A test tool',
        parameters: [
          AgentToolParameter(name: 'param1', type: 'string', description: 'A param', required: true),
          AgentToolParameter(name: 'param2', type: 'number', description: 'Another param'),
        ],
      );
      final result = tool.toOpenAIFunction();
      expect(result['type'], 'function');
      expect(result['function']['name'], 'test_tool');
      expect(result['function']['description'], 'A test tool');
      expect(result['function']['parameters']['required'], ['param1']);
      final props = result['function']['parameters']['properties'] as Map;
      expect(props['param1']['type'], 'string');
      expect(props['param2']['type'], 'number');
    });

    test('toOpenAIFunction includes enum values', () {
      final tool = AgentTool(
        name: 'enum_tool',
        description: 'Has enum',
        parameters: [
          AgentToolParameter(
            name: 'mode',
            type: 'string',
            description: 'Pick one',
            required: true,
            enumValues: ['a', 'b', 'c'],
          ),
        ],
      );
      final result = tool.toOpenAIFunction();
      final props = result['function']['parameters']['properties'] as Map;
      expect(props['mode']['enum'], ['a', 'b', 'c']);
    });

    test('toOpenAIFunction handles no required params', () {
      final tool = AgentTool(
        name: 'no_req',
        description: 'No required params',
        parameters: [
          AgentToolParameter(name: 'opt', type: 'string', description: 'Optional'),
        ],
      );
      final result = tool.toOpenAIFunction();
      expect(result['function']['parameters']['required'], isEmpty);
    });
  });

  group('AgentToolCall', () {
    test('creates with parsed arguments', () {
      final call = AgentToolCall(
        id: 'call_1',
        name: 'test',
        arguments: {'key': 'value'},
      );
      expect(call.id, 'call_1');
      expect(call.name, 'test');
      expect(call.arguments, {'key': 'value'});
    });

    test('handles empty arguments', () {
      final call = AgentToolCall(
        id: 'call_2',
        name: 'test',
        arguments: <String, dynamic>{},
      );
      expect(call.arguments, isEmpty);
    });

    test('toJson returns correct format', () {
      final call = AgentToolCall(
        id: 'call_1',
        name: 'test',
        arguments: {'key': 'value'},
      );
      final json = call.toJson();
      expect(json['id'], 'call_1');
      expect(json['type'], 'function');
      expect(json['function']['name'], 'test');
      expect(json['function']['arguments'], '{"key":"value"}');
    });

    group('fromJson', () {
      test('creates from valid JSON', () {
        final call = AgentToolCall.fromJson({
          'id': 'call_abc',
          'function': {'name': 'get_lists', 'arguments': '{}'},
        });
        expect(call.id, 'call_abc');
        expect(call.name, 'get_lists');
        expect(call.arguments, <String, dynamic>{});
      });

      test('handles invalid arguments JSON', () {
        final call = AgentToolCall.fromJson({
          'id': 'call_xyz',
          'function': {'name': 'test', 'arguments': 'bad json'},
        });
        expect(call.arguments, <String, dynamic>{});
      });
    });
  });

  group('ToolResult', () {
    test('creates with success', () {
      final result = ToolResult(
        toolCallId: 'call_1',
        content: 'Done!',
        success: true,
      );
      expect(result.toolCallId, 'call_1');
      expect(result.content, 'Done!');
      expect(result.success, true);
      expect(result.resultData, isNull);
    });

    test('creates with resultData', () {
      final result = ToolResult(
        toolCallId: 'call_1',
        content: 'Done!',
        success: true,
        resultData: {'key': 'value'},
      );
      expect(result.resultData, {'key': 'value'});
    });

    test('fromSuccess creates success result', () {
      final result = ToolResult.fromSuccess('OK', toolCallId: 'call_1');
      expect(result.content, 'OK');
      expect(result.success, true);
      expect(result.toolCallId, 'call_1');
    });

    test('fromSuccess creates with data', () {
      final result = ToolResult.fromSuccess('OK', data: {'count': 5});
      expect(result.resultData, {'count': 5});
    });

    test('fromError creates error result', () {
      final result = ToolResult.fromError('FAIL', toolCallId: 'call_2');
      expect(result.content, 'FAIL');
      expect(result.success, false);
      expect(result.toolCallId, 'call_2');
    });
  });
}
