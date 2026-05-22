import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart' show debugPrint;
import 'package:http/http.dart' as http;
import '../agent/tool.dart';
import '../models/chat_message.dart';
import 'ai_service.dart';

// coverage:ignore-start
class OpenCodeGoService implements AiService {
  OpenCodeGoService({
    required String apiKey,
    this.model = 'deepseek-v4-flash',
  }) : _apiKey = apiKey;

  final String _apiKey;
  final String model;

  static const _baseUrl = 'https://opencode.ai/zen/go/v1/chat/completions';

  Map<String, String> _headers() => {
        'Authorization': 'Bearer $_apiKey',
        'Content-Type': 'application/json',
      };

  List<Map<String, dynamic>> _buildMessages(
    List<ChatMessage> history, {
    String? systemPrompt,
  }) {
    final messages = <Map<String, dynamic>>[];
    if (systemPrompt != null) {
      messages.add({'role': 'system', 'content': systemPrompt});
    }
    for (final msg in history) {
      messages.add({
        'role': msg.role == 'user' ? 'user' : 'assistant',
        'content': msg.content,
      });
    }
    return messages;
  }

  @override
  Future<ChatMessage> getChatCompletion(
    List<ChatMessage> history, {
    String? systemPrompt,
  }) async {
    final messages = _buildMessages(history, systemPrompt: systemPrompt);

    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: _headers(),
      body: jsonEncode({
        'model': model,
        'messages': messages,
      }),
    );

    if (response.statusCode != 200) {
      return ChatMessage(
        role: 'assistant',
        content: 'Erro na API: ${response.statusCode}',
      );
    }

    final body = jsonDecode(response.body) as Map<String, dynamic>;
    final choice = (body['choices'] as List?)?.firstOrNull;
    final content = (choice?['message']?['content'] as String?) ?? '';
    final reasoningContent = (choice?['message']?['reasoning_content'] as String?) ?? '';

    return ChatMessage(
      role: 'assistant',
      content: reasoningContent.isNotEmpty && content.isEmpty
          ? reasoningContent
          : content,
    );
  }

  @override
  Stream<String> getChatCompletionStream(
    List<ChatMessage> history, {
    String? systemPrompt,
  }) async* {
    final messages = _buildMessages(history, systemPrompt: systemPrompt);

    final request = http.Request('POST', Uri.parse(_baseUrl))
      ..headers.addAll(_headers())
      ..body = jsonEncode({
        'model': model,
        'messages': messages,
        'stream': true,
      });

    final client = http.Client();
    http.StreamedResponse response;

    try {
      response = await client.send(request);
    } on Exception {
      client.close();
      yield 'Desculpe, ocorreu um erro de conexão.';
      return;
    }

    if (response.statusCode != 200) {
      client.close();
      yield 'Erro na API: ${response.statusCode}';
      return;
    }

    final stream = response.stream
        .transform(utf8.decoder)
        .transform(const LineSplitter());

    await for (final line in stream) {
      if (!line.startsWith('data: ')) {
        continue;
      }

      final data = line.substring(6).trim();
      if (data == '[DONE]') {
        break;
      }

      try {
        final json = jsonDecode(data) as Map<String, dynamic>;
        final choice = (json['choices'] as List?)?.firstOrNull;
        if (choice == null) {
          continue;
        }
        final delta = choice['delta'] as Map<String, dynamic>?;
        if (delta == null) {
          continue;
        }
        final content = delta['content'] as String?;
        if (content != null && content.isNotEmpty) {
          yield content;
        }
      } on FormatException {
        // Skip malformed JSON chunks
      }
    }

    client.close();
  }

  @override
  Future<AiResponse> getChatCompletionWithTools(
    List<Map<String, dynamic>> messages, {
    String? systemPrompt,
    List<Map<String, dynamic>>? tools,
  }) async {
    final fullMessages = <Map<String, dynamic>>[];
    if (systemPrompt != null) {
      fullMessages.add({'role': 'system', 'content': systemPrompt});
    }
    fullMessages.addAll(messages);

    final body = <String, dynamic>{
      'model': model,
      'messages': fullMessages,
    };
    if (tools != null && tools.isNotEmpty) {
      body['tools'] = tools;
    }

    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: _headers(),
      body: jsonEncode(body),
    );

    if (response.statusCode != 200) {
      debugPrint('[OpenCodeGo] API error ${response.statusCode}: ${response.body}');
      return AiResponse(
        content: 'Erro na API: ${response.statusCode}',
      );
    }

    final data = jsonDecode(response.body) as Map<String, dynamic>;
    final choice = (data['choices'] as List?)?.firstOrNull;
    if (choice == null) {
      return const AiResponse(content: 'Resposta vazia da API.');
    }

    final message = choice['message'] as Map<String, dynamic>?;
    if (message == null) {
      return const AiResponse(content: 'Resposta inválida da API.');
    }

    final content = message['content'] as String?;
    final reasoningContent = message['reasoning_content'] as String?;
    final responseText = reasoningContent != null && reasoningContent.isNotEmpty && (content == null || content.isEmpty)
        ? reasoningContent
        : content;

    final rawToolCalls = message['tool_calls'] as List<dynamic>?;
    if (rawToolCalls != null && rawToolCalls.isNotEmpty) {
      final toolCalls = rawToolCalls
          .map((tc) => AgentToolCall.fromJson(tc as Map<String, dynamic>))
          .toList();
      return AiResponse(
        toolCalls: toolCalls,
        reasoningContent: reasoningContent,
      );
    }

    return AiResponse(content: responseText);
  }
}
// coverage:ignore-end
