import 'package:shopping_list/domain/entities/chat_message.dart';
import 'package:shopping_list/services/ai_service.dart';
import 'dart:collection';

class FakeAiService implements AiService {
  final Queue<AiResponse> _responses = Queue<AiResponse>();
  final List<String> _streamTokens = [];

  void setNextResponse(AiResponse response) {
    _responses.add(response);
  }

  void setStreamTokens(List<String> tokens) {
    _streamTokens.clear();
    _streamTokens.addAll(tokens);
  }

  @override
  Future<ChatMessage> getChatCompletion(
    List<ChatMessage> history, {
    String? systemPrompt,
    AiCancellationToken? cancelToken,
  }) async {
    return ChatMessage(
      role: 'assistant',
      content: 'Fake response',
    );
  }

  @override
  Stream<String> getChatCompletionStream(
    List<ChatMessage> history, {
    String? systemPrompt,
    AiCancellationToken? cancelToken,
  }) async* {
    yield 'Fake ';
    yield 'streamed ';
    yield 'response';
  }

  @override
  Future<AiResponse> getChatCompletionWithTools(
    List<Map<String, dynamic>> messages, {
    String? systemPrompt,
    List<Map<String, dynamic>>? tools,
    AiCancellationToken? cancelToken,
  }) async {
    if (_responses.isNotEmpty) {
      return _responses.removeFirst();
    }
    return const AiResponse(content: 'Fake tool response');
  }

  @override
  Stream<String> getChatCompletionStreamWithTools(
    List<Map<String, dynamic>> messages, {
    String? systemPrompt,
    List<Map<String, dynamic>>? tools,
    AiCancellationToken? cancelToken,
  }) async* {
    if (_streamTokens.isNotEmpty) {
      for (final token in _streamTokens) {
        yield token;
      }
    } else {
      yield 'Fake ';
      yield 'streamed ';
      yield 'response';
    }
  }
}
