import 'package:shopping_list/models/chat_message.dart';
import 'package:shopping_list/services/ai_service.dart';

class FakeAiService implements AiService {
  @override
  Future<ChatMessage> getChatCompletion(
    List<ChatMessage> history, {
    String? systemPrompt,
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
  }) async {
    return const AiResponse(content: 'Fake tool response');
  }
}
