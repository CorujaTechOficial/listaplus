import 'package:dart_openai/dart_openai.dart';
import '../models/chat_message.dart';
import 'ai_service.dart';

// coverage:ignore-start
class KiloAiService implements AiService {
  KiloAiService({
    required String apiKey,
    this.model = 'kilo-auto/free',
  }) {
    OpenAI.apiKey = apiKey;
    OpenAI.baseUrl = 'https://api.kilo.ai/api/gateway';
  }

  final String model;

  @override
  Future<ChatMessage> getChatCompletion(
    List<ChatMessage> history, {
    String? systemPrompt,
  }) async {
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

    final response = chatCompletion.choices.first.message.content?.first.text ?? '';

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
      final content = event.choices.first.delta.content;
      if (content == null || content.isEmpty) {
        return '';
      }
      return content.first?.text ?? '';
    });
  }
}
// coverage:ignore-end
