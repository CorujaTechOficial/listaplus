import '../agent/tool.dart';
import '../models/chat_message.dart';

class AiResponse {
  const AiResponse({
    this.content,
    this.toolCalls = const [],
    this.reasoningContent,
  });

  final String? content;
  final List<AgentToolCall> toolCalls;
  final String? reasoningContent;

  bool get hasToolCalls => toolCalls.isNotEmpty;
}

abstract class AiService {
  Future<ChatMessage> getChatCompletion(
    List<ChatMessage> history, {
    String? systemPrompt,
  });

  Stream<String> getChatCompletionStream(
    List<ChatMessage> history, {
    String? systemPrompt,
  });

  Future<AiResponse> getChatCompletionWithTools(
    List<Map<String, dynamic>> messages, {
    String? systemPrompt,
    List<Map<String, dynamic>>? tools,
  });
}
