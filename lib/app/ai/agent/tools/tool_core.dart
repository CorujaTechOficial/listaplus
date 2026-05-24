import 'dart:convert';

class AgentToolParameter {
  const AgentToolParameter({
    required this.name,
    required this.type,
    required this.description,
    this.required = false,
    this.enumValues,
  });

  final String name;
  final String type;
  final String description;
  final bool required;
  final List<String>? enumValues;
}

class AgentTool {
  const AgentTool({
    required this.name,
    required this.description,
    this.parameters = const [],
  });

  final String name;
  final String description;
  final List<AgentToolParameter> parameters;

  Map<String, dynamic> toOpenAIFunction() {
    final properties = <String, dynamic>{};
    final requiredList = <String>[];
    for (final param in parameters) {
      final prop = <String, dynamic>{
        'type': param.type,
        'description': param.description,
      };
      if (param.enumValues != null) {
        prop['enum'] = param.enumValues;
      }
      properties[param.name] = prop;
      if (param.required) {
        requiredList.add(param.name);
      }
    }
    return {
      'type': 'function',
      'function': {
        'name': name,
        'description': description,
        'parameters': {
          'type': 'object',
          'properties': properties,
          'required': requiredList,
        },
      },
    };
  }
}

class AgentToolCall {
  AgentToolCall({
    required this.id,
    required this.name,
    required this.arguments,
  });

  factory AgentToolCall.fromJson(Map<String, dynamic> json) {
    final function = json['function'] as Map<String, dynamic>;
    return AgentToolCall(
      id: json['id'] as String,
      name: function['name'] as String,
      arguments: _parseArguments(function['arguments'] as String),
    );
  }

  static Map<String, dynamic> _parseArguments(String args) {
    try {
      return Map<String, dynamic>.from(
        jsonDecode(args) as Map,
      );
    } on FormatException {
      return <String, dynamic>{};
    }
  }

  final String id;
  final String name;
  final Map<String, dynamic> arguments;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': 'function',
      'function': {
        'name': name,
        'arguments': const JsonEncoder().convert(arguments),
      },
    };
  }
}

class ToolResult {
  const ToolResult({
    required this.toolCallId,
    required this.content,
    this.success = true,
    this.resultData,
  });

  final String toolCallId;
  final String content;
  final bool success;
  final Map<String, dynamic>? resultData;

  factory ToolResult.fromSuccess(
    String content, {
    String toolCallId = '',
    Map<String, dynamic>? data,
  }) {
    return ToolResult(toolCallId: toolCallId, content: content, success: true, resultData: data);
  }

  factory ToolResult.fromError(
    String content, {
    String toolCallId = '',
  }) {
    return ToolResult(toolCallId: toolCallId, content: content, success: false);
  }
}
