import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';
import '../models/chat_message.dart';

class AiCancellationToken {
  bool _isCancelled = false;
  bool get isCancelled => _isCancelled;
  void Function()? _onCancel;

  void cancel() {
    if (_isCancelled) {
      return;
    }
    _isCancelled = true;
    _onCancel?.call();
  }

  void onCancel(void Function() callback) {
    _onCancel = callback;
    if (_isCancelled) {
      callback();
    }
  }
}

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
    AiCancellationToken? cancelToken,
  });

  Stream<String> getChatCompletionStream(
    List<ChatMessage> history, {
    String? systemPrompt,
    AiCancellationToken? cancelToken,
  });

  Future<AiResponse> getChatCompletionWithTools(
    List<Map<String, dynamic>> messages, {
    String? systemPrompt,
    List<Map<String, dynamic>>? tools,
    AiCancellationToken? cancelToken,
  });

  Stream<String> getChatCompletionStreamWithTools(
    List<Map<String, dynamic>> messages, {
    String? systemPrompt,
    List<Map<String, dynamic>>? tools,
    AiCancellationToken? cancelToken,
  });
}
