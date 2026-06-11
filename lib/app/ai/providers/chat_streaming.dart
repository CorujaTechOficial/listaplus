import 'package:characters/characters.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/services/ai_service.dart';
import 'package:shopping_list/services/logger_service.dart';
import 'package:shopping_list/app/ai/providers/chat_small_providers.dart';

Future<String> localStreamText(
  String text, {
  required bool isCancelled,
  required Ref ref,
  required String? listId,
}) async {
  const chunkSize = 12;
  const chunkDelay = Duration(milliseconds: 18);

  final buffer = StringBuffer();
  var i = 0;

  while (i < text.length) {
    if (isCancelled) {
      break;
    }
    final end = (i + chunkSize).clamp(0, text.length);
    buffer.write(text.substring(i, end));
    i = end;

    ref
        .read(chatStreamingTextProvider(listId).notifier)
        .setState(buffer.toString());

    if (i < text.length) {
      await Future<void>.delayed(chunkDelay);
    }
  }

  return buffer.toString();
}

Future<String> streamResponse(
  AiService aiService,
  List<Map<String, dynamic>> messages,
  String systemPrompt,
  List<Map<String, dynamic>> tools, {
  required bool isCancelled,
  required Ref ref,
  required String? listId,
  AiCancellationToken? cancelToken,
}) async {
  final buffer = StringBuffer();
  final tagBuffer = StringBuffer();
  bool isSuppressing = false;
  DateTime lastUpdate = DateTime.now();

  try {
    await for (final token in aiService.getChatCompletionStreamWithTools(
      messages,
      systemPrompt: systemPrompt,
      tools: tools,
      cancelToken: cancelToken,
    )) {
      if (isSuppressing) {
        tagBuffer.write(token);
        if (tagBuffer.toString().contains('</tool_calls>')) {
          isSuppressing = false;
          tagBuffer.clear();
        }
        continue;
      }

      if (token.contains('<tool')) {
        isSuppressing = true;
        tagBuffer.write(token);
        if (tagBuffer.toString().contains('</tool_calls>')) {
          isSuppressing = false;
          tagBuffer.clear();
        }
        continue;
      }

      if (token.startsWith('<') || tagBuffer.isNotEmpty) {
        tagBuffer.write(token);
        final currentTag = tagBuffer.toString();

        if (currentTag.contains('<tool')) {
          isSuppressing = true;
          if (currentTag.contains('</tool_calls>')) {
            isSuppressing = false;
            tagBuffer.clear();
          }
          continue;
        }

        if (currentTag.length > 100) {
          buffer.write(currentTag);
          tagBuffer.clear();
        } else if (currentTag.endsWith('>') || currentTag.endsWith('\n')) {
          buffer.write(currentTag);
          tagBuffer.clear();
        }
      } else {
        buffer.write(token);
      }

      final now = DateTime.now();
      if (tagBuffer.isEmpty &&
          (now.difference(lastUpdate).inMilliseconds > 30)) {
        lastUpdate = now;
        ref
            .read(chatStreamingTextProvider(listId).notifier)
            .setState(buffer.toString());
      }
    }

    ref
        .read(chatStreamingTextProvider(listId).notifier)
        .setState(buffer.toString());
    ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
  } on Exception catch (e, st) {
    LoggerService.error(
      e,
      stackTrace: st,
      message: '[StreamResponse] Erro no streaming interno',
      extra: {
        'operation': 'stream_response_inner',
        'listId': listId,
        'bufferLength': buffer.length,
        'bufferPreview': buffer.toString().characters.take(100).toString(),
      },
    );
    ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
    if (buffer.isEmpty) {
      rethrow;
    }
  }
  return buffer.toString();
}
