import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'logger_service.dart';
import '../agent/tool.dart';
import '../models/chat_message.dart';
import 'ai_service.dart';

// coverage:ignore-start
class OpenCodeGoService implements AiService {
  OpenCodeGoService({
    required Future<String> Function() getApiKey,
    this.model = 'deepseek-v4-flash',
  }) : _getApiKey = getApiKey;

  final Future<String> Function() _getApiKey;
  final String model;

  static const _baseUrl = 'https://opencode.ai/zen/go/v1/chat/completions';

  Future<Map<String, String>> _headers() async {
    final apiKey = await _getApiKey();
    return {
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    };
  }

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

  bool _hasAudio(List<Map<String, dynamic>> messages) {
    for (final msg in messages) {
      final content = msg['content'];
      if (content is List) {
        for (final item in content) {
          if (item is Map && item['type'] == 'input_audio') {
            return true;
          }
        }
      }
    }
    return false;
  }

  @override
  Future<ChatMessage> getChatCompletion(
    List<ChatMessage> history, {
    String? systemPrompt,
  }) async {
    final messages = _buildMessages(history, systemPrompt: systemPrompt);

    final requestModel = _hasAudio(messages) ? 'google/gemini-2.5-flash' : model;
    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: await _headers(),
      body: jsonEncode({
        'model': requestModel,
        'messages': messages,
      }),
    ).timeout(const Duration(seconds: 30));

    if (response.statusCode != 200) {
      return ChatMessage(
        role: 'assistant',
        content: 'Erro na API: ${response.statusCode}',
      );
    }

    final body = jsonDecode(response.body) as Map<String, dynamic>;
    final choice = (body['choices'] as List?)?.firstOrNull;
    final content = (choice?['message']?['content'] as String?) ?? '';

    return ChatMessage(
      role: 'assistant',
      content: content,
    );
  }

  @override
  Stream<String> getChatCompletionStream(
    List<ChatMessage> history, {
    String? systemPrompt,
  }) async* {
    final messages = _buildMessages(history, systemPrompt: systemPrompt);

    final requestModel = _hasAudio(messages) ? 'google/gemini-2.5-flash' : model;
    final request = http.Request('POST', Uri.parse(_baseUrl))
      ..headers.addAll(await _headers())
      ..body = jsonEncode({
        'model': requestModel,
        'messages': messages,
        'stream': true,
      });

    final client = http.Client();
    http.StreamedResponse response;

    try {
      response = await client.send(request).timeout(const Duration(seconds: 30));
    } on TimeoutException {
      LoggerService.error(TimeoutException('Request timed out'), message: '[OpenCodeGo] Stream timeout', extra: {
        'operation': 'stream_timeout',
        'model': requestModel,
        'timeoutSeconds': 30,
        'hasAudio': _hasAudio(messages),
      });
      client.close();
      yield 'Desculpe, a requisição excedeu o tempo limite.';
      return;
    } on Exception catch (e, st) {
      LoggerService.error(e, stackTrace: st, message: '[OpenCodeGo] Stream connection error', extra: {
        'operation': 'stream_connection_error',
        'model': requestModel,
        'baseUrl': _baseUrl,
        'hasAudio': _hasAudio(messages),
      });
      client.close();
      yield 'Desculpe, ocorreu um erro de conexão.';
      return;
    }

    if (response.statusCode != 200) {
      final responseBody = await response.stream.bytesToString();
      LoggerService.error(Exception('HTTP ${response.statusCode}'), message: '[OpenCodeGo] Stream API error', extra: {
        'operation': 'stream_api_error',
        'httpStatus': response.statusCode,
        'model': requestModel,
        'responseBody': responseBody.substring(0, responseBody.length.clamp(0, 500)),
      });
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
  Stream<String> getChatCompletionStreamWithTools(
    List<Map<String, dynamic>> messages, {
    String? systemPrompt,
    List<Map<String, dynamic>>? tools,
  }) async* {
    final fullMessages = <Map<String, dynamic>>[];
    if (systemPrompt != null) {
      fullMessages.add({'role': 'system', 'content': systemPrompt});
    }
    fullMessages.addAll(messages);

    final requestModel = _hasAudio(fullMessages) ? 'google/gemini-2.5-flash' : model;
    final body = <String, dynamic>{
      'model': requestModel,
      'messages': fullMessages,
      'stream': true,
    };
    if (tools != null && tools.isNotEmpty) {
      body['tools'] = tools;
    }

    final request = http.Request('POST', Uri.parse(_baseUrl))
      ..headers.addAll(await _headers())
      ..body = jsonEncode(body);

    final client = http.Client();
    http.StreamedResponse response;

    try {
      response = await client.send(request).timeout(const Duration(seconds: 30));
    } on TimeoutException {
      LoggerService.error(TimeoutException('Request timed out'), message: '[OpenCodeGo] StreamWithTools timeout', extra: {
        'operation': 'stream_with_tools_timeout',
        'model': requestModel,
        'timeoutSeconds': 30,
        'toolsCount': tools?.length ?? 0,
        'hasAudio': _hasAudio(fullMessages),
      });
      client.close();
      return;
    } on Exception catch (e, st) {
      LoggerService.error(e, stackTrace: st, message: '[OpenCodeGo] StreamWithTools connection error', extra: {
        'operation': 'stream_with_tools_connection_error',
        'model': requestModel,
        'baseUrl': _baseUrl,
        'toolsCount': tools?.length ?? 0,
        'hasAudio': _hasAudio(fullMessages),
      });
      client.close();
      return;
    }

    if (response.statusCode != 200) {
      final responseBody = await response.stream.bytesToString();
      LoggerService.error(Exception('HTTP ${response.statusCode}'), message: '[OpenCodeGo] StreamWithTools API error', extra: {
        'operation': 'stream_with_tools_api_error',
        'httpStatus': response.statusCode,
        'model': requestModel,
        'toolsCount': tools?.length ?? 0,
        'responseBody': responseBody.substring(0, responseBody.length.clamp(0, 500)),
      });
      client.close();
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

    final requestModel = _hasAudio(fullMessages) ? 'google/gemini-2.5-flash' : model;
    final body = <String, dynamic>{
      'model': requestModel,
      'messages': fullMessages,
    };
    if (tools != null && tools.isNotEmpty) {
      body['tools'] = tools;
    }

    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: await _headers(),
      body: jsonEncode(body),
    ).timeout(const Duration(seconds: 30));

    if (response.statusCode != 200) {
      LoggerService.error(Exception('HTTP ${response.statusCode}'), message: '[OpenCodeGo] getChatCompletionWithTools API error', extra: {
        'operation': 'chat_completion_api_error',
        'httpStatus': response.statusCode,
        'model': requestModel,
        'toolsCount': tools?.length ?? 0,
        'responseBody': response.body.substring(0, response.body.length.clamp(0, 500)),
      });
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
    final responseText = content ?? '';

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
