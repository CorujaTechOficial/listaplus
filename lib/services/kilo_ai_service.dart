import 'dart:convert';

import 'package:flutter/foundation.dart' show debugPrint;
import 'package:dart_openai/dart_openai.dart';
import '../agent/tool.dart';
import '../models/chat_message.dart';
import 'ai_service.dart';

// coverage:ignore-start
class KiloAiService implements AiService {
  KiloAiService({
    required String apiKey,
    this.model = 'kilo-auto/free',
  }) : _apiKey = apiKey;

  final String _apiKey;
  final String model;

  void _ensureConfig() {
    if (_apiKey.isEmpty) {
      debugPrint('[KiloAiService] API key is empty — KILO_API_KEY not provided via --dart-define');
      throw Exception('KILO_API_KEY não configurada. Passe --dart-define=KILO_API_KEY=xxx ao executar.');
    }
    OpenAI.apiKey = _apiKey;
    OpenAI.baseUrl = 'https://api.kilo.ai/api/gateway';
  }

  @override
  Future<ChatMessage> getChatCompletion(
    List<ChatMessage> history, {
    String? systemPrompt,
  }) async {
    _ensureConfig();
    final messages = <OpenAIChatCompletionChoiceMessageModel>[];

    if (systemPrompt != null) {
      messages.add(OpenAIChatCompletionChoiceMessageModel(
        role: OpenAIChatMessageRole.system,
        content: [
          OpenAIChatCompletionChoiceMessageContentItemModel.text(systemPrompt),
        ],
      ));
    }

    for (final msg in history) {
      messages.add(OpenAIChatCompletionChoiceMessageModel(
        role: msg.role == 'user'
            ? OpenAIChatMessageRole.user
            : OpenAIChatMessageRole.assistant,
        content: [
          OpenAIChatCompletionChoiceMessageContentItemModel.text(msg.content),
        ],
      ));
    }

    final chatCompletion = await OpenAI.instance.chat.create(
      model: model,
      messages: messages,
    );

    final choice = chatCompletion.choices.firstOrNull;
    final response = choice?.message.content?.firstOrNull?.text ?? '';

    return ChatMessage(
      role: 'assistant',
      content: response,
    );
  }

  @override
  Stream<String> getChatCompletionStream(
    List<ChatMessage> history, {
    String? systemPrompt,
  }) async* {
    _ensureConfig();
    final messages = <OpenAIChatCompletionChoiceMessageModel>[];

    if (systemPrompt != null) {
      messages.add(OpenAIChatCompletionChoiceMessageModel(
        role: OpenAIChatMessageRole.system,
        content: [
          OpenAIChatCompletionChoiceMessageContentItemModel.text(systemPrompt),
        ],
      ));
    }

    for (final msg in history) {
      messages.add(OpenAIChatCompletionChoiceMessageModel(
        role: msg.role == 'user'
            ? OpenAIChatMessageRole.user
            : OpenAIChatMessageRole.assistant,
        content: [
          OpenAIChatCompletionChoiceMessageContentItemModel.text(msg.content),
        ],
      ));
    }

    final chatStream = OpenAI.instance.chat.createStream(
      model: model,
      messages: messages,
    );

    yield* chatStream.map((event) {
      final choice = event.choices.firstOrNull;
      final content = choice?.delta.content;
      if (content == null || content.isEmpty) {
        return '';
      }
      return content.firstOrNull?.text ?? '';
    });
  }

  @override
  Future<AiResponse> getChatCompletionWithTools(
    List<Map<String, dynamic>> messages, {
    String? systemPrompt,
    List<Map<String, dynamic>>? tools,
  }) async {
    _ensureConfig();
    final openAiMessages = <OpenAIChatCompletionChoiceMessageModel>[];

    if (systemPrompt != null) {
      openAiMessages.add(OpenAIChatCompletionChoiceMessageModel(
        role: OpenAIChatMessageRole.system,
        content: [
          OpenAIChatCompletionChoiceMessageContentItemModel.text(systemPrompt),
        ],
      ));
    }

    for (final msg in messages) {
      final role = msg['role'] as String;
      final content = msg['content'] as String?;
      final roleEnum = _chatRole(role);

      if (roleEnum == OpenAIChatMessageRole.tool) {
        final toolCallId = msg['tool_call_id'] as String;
        openAiMessages.add(RequestFunctionMessage(
          role: roleEnum,
          content: content != null
              ? [
                  OpenAIChatCompletionChoiceMessageContentItemModel.text(content)
                ]
              : null,
          toolCallId: toolCallId,
        ));
      } else {
        openAiMessages.add(OpenAIChatCompletionChoiceMessageModel(
          role: roleEnum,
          content: content != null
              ? [
                  OpenAIChatCompletionChoiceMessageContentItemModel.text(content)
                ]
              : null,
        ));
      }
    }

    List<OpenAIToolModel>? openAiTools;
    if (tools != null && tools.isNotEmpty) {
      openAiTools = tools.map((t) {
        final function = t['function'] as Map<String, dynamic>;
        return OpenAIToolModel(
          type: 'function',
          function: OpenAIFunctionModel(
            name: function['name'] as String,
            description: function['description'] as String?,
            parametersSchema:
                function['parameters'] as Map<String, dynamic>? ?? <String, dynamic>{},
          ),
        );
      }).toList();
    }

    final chatCompletion = await OpenAI.instance.chat.create(
      model: model,
      messages: openAiMessages,
      tools: openAiTools,
    );

    final choice = chatCompletion.choices.firstOrNull;
    if (choice == null) {
      return const AiResponse(content: 'Resposta vazia da API.');
    }

    final responseMessage = choice.message;
    final rawContent = responseMessage.content;
    final content = rawContent?.firstOrNull?.text;
    final rawToolCalls = responseMessage.toolCalls;

    if (rawToolCalls != null && rawToolCalls.isNotEmpty) {
      final toolCalls = rawToolCalls.map((tc) {
        final args = tc.function.arguments is String
            ? (jsonDecode(tc.function.arguments as String)
                as Map<String, dynamic>)
            : Map<String, dynamic>.from(tc.function.arguments as Map);
        return AgentToolCall(
          id: tc.id ?? '',
          name: tc.function.name ?? '',
          arguments: args,
        );
      }).toList();
      return AiResponse(toolCalls: toolCalls);
    }

    return AiResponse(content: content);
  }

  OpenAIChatMessageRole _chatRole(String role) {
    switch (role) {
      case 'user':
        return OpenAIChatMessageRole.user;
      case 'assistant':
        return OpenAIChatMessageRole.assistant;
      case 'tool':
        return OpenAIChatMessageRole.tool;
      default:
        return OpenAIChatMessageRole.user;
    }
  }
}
// coverage:ignore-end
