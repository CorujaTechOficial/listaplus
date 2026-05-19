import '../models/chat_message.dart';

abstract class AiService {
  Future<ChatMessage> getChatCompletion(
    List<ChatMessage> history, {
    String? systemPrompt,
  });

  Stream<String> getChatCompletionStream(
    List<ChatMessage> history, {
    String? systemPrompt,
  });
}
