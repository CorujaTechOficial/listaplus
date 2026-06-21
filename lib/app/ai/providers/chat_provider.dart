import 'dart:async' show unawaited;
import 'dart:convert' show jsonEncode;
import 'dart:ui' show Locale, PlatformDispatcher;
import 'package:shopping_list/models/suggested_reply.dart';
import 'package:characters/characters.dart';
import 'package:intl/intl.dart';
import 'package:flutter/foundation.dart' show debugPrint;
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../services/logger_service.dart';
import 'package:shopping_list/app/ai/agent/tools/tool_core.dart';
import 'package:shopping_list/app/ai/agent/tools/agent_tools.dart';
import 'package:shopping_list/app/ai/agent/executors/tool_executor.dart';
import '../../../services/ai_service.dart';
import '../../../models/chat_message.dart';
import '../../../models/unit.dart';
import '../../../models/shopping_item.dart';
import '../../../models/shopping_list.dart';
import '../../../models/interactive_artifact.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/settings/providers/settings_providers.dart';
import 'package:shopping_list/core/providers/auth_provider.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/misc_providers.dart';
import '../utils/ai_utils.dart';
import 'package:shopping_list/models/user_profile.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shopping_list/app/ai/providers/chat_small_providers.dart';
export 'package:shopping_list/app/ai/providers/chat_small_providers.dart';
import 'package:shopping_list/app/ai/providers/chat_helpers.dart';
import 'package:shopping_list/app/ai/providers/chat_streaming.dart';
import 'package:shopping_list/app/ai/providers/chat_tool_descriptions.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

part 'chat_provider.g.dart';

class _AgentResult {
  _AgentResult({required this.messages, required this.fallbackText});

  final List<Map<String, dynamic>> messages;
  final String fallbackText;
}

typedef _UndoCallback = Future<void> Function();

@Riverpod(keepAlive: true)
class ChatSession extends _$ChatSession {
  bool _isCancelled = false;
  AiCancellationToken? _cancelToken;
  Future<void>? _currentTask;
  PremiumUnlockException? _pendingUnlock;
  // Cache do system prompt para a invocação atual — evita múltiplos awaits
  // dentro do mesmo agent loop (era reconstruído a cada round).
  String? _cachedSystemPrompt;

  AppLocalizations get _l10n {
    final configuredLocale = ref.read(localeSettingProvider).value;
    final requestedLocale =
        configuredLocale == null
            ? PlatformDispatcher.instance.locale
            : _parseLocale(configuredLocale);

    for (final supported in AppLocalizations.supportedLocales) {
      if (supported.languageCode == requestedLocale.languageCode &&
          supported.countryCode == requestedLocale.countryCode) {
        return lookupAppLocalizations(supported);
      }
    }
    for (final supported in AppLocalizations.supportedLocales) {
      if (supported.languageCode == requestedLocale.languageCode) {
        return lookupAppLocalizations(supported);
      }
    }
    return lookupAppLocalizations(const Locale('en'));
  }

  Locale _parseLocale(String value) {
    final parts = value.replaceAll('-', '_').split('_');
    return parts.length > 1 ? Locale(parts[0], parts[1]) : Locale(parts[0]);
  }

  String _localizedAiError(Object error) {
    if (error is! AiServiceException) {
      return _l10n.aiError;
    }
    return switch (error.type) {
      AiServiceErrorType.api =>
        error.statusCode == 429
            ? _l10n.aiRateLimitError
            : _l10n.aiApiError(error.statusCode ?? 0),
      AiServiceErrorType.timeout => _l10n.aiTimeoutError,
      AiServiceErrorType.connection => _l10n.aiConnectionError,
      AiServiceErrorType.emptyResponse => _l10n.aiEmptyResponseError,
      AiServiceErrorType.invalidResponse => _l10n.aiInvalidResponseError,
    };
  }

  @override
  Future<List<ChatMessage>> build(String? listId, String? sessionId) async {
    if (sessionId == null) {
      return [];
    }

    ref.onDispose(() {
      _isCancelled = true;
      _cancelToken?.cancel();
      _currentTask = null;
    });
    final service = ref.watch(firestoreServiceProvider);
    if (service == null) return [];
    return service.loadChatMessages(listId, sessionId: sessionId);
  }

  Future<void> sendMessage(String content) async {
    if (_currentTask != null) {
      debugPrint('[ChatSession] Ignorando mensagem concorrente.');
      return;
    }

    final keepAliveLink = ref.keepAlive();
    _isCancelled = false;
    _cachedSystemPrompt = null; // invalida cache para nova mensagem
    _cancelToken = AiCancellationToken();
    final task = _sendMessageInternal(content);
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
        _cancelToken = null;
        _cachedSystemPrompt = null;
      }
      keepAliveLink.close();
    }
  }

  Future<void> _finalizeResponse(
    AiService aiService,
    _AgentResult agentResult,
    List<Map<String, dynamic>> tools,
  ) async {
    final firestoreService = ref.read(firestoreServiceProvider);
    ref.read(chatStreamingProvider(listId).notifier).setState(true);
    unawaited(HapticFeedback.lightImpact());

    String finalText;
    bool isError = false;
    try {
      if (agentResult.fallbackText.isNotEmpty) {
        // O agent loop já tem o texto final — fazemos streaming LOCAL da resposta
        // em vez de uma segunda chamada HTTP ao modelo. Economiza 1-3s de latência
        // e um round-trip de rede por mensagem.
        finalText = await localStreamText(
          agentResult.fallbackText,
          isCancelled: _isCancelled,
          ref: ref,
          listId: listId,
        );
      } else {
        // Fallback: streaming real via rede (edge case — texto vazio do loop)
        final systemPrompt =
            _cachedSystemPrompt ?? await _getCurrentSystemPrompt();
        if (_isCancelled) {
          return;
        }
        finalText = await streamResponse(
          aiService,
          agentResult.messages,
          systemPrompt,
          tools,
          isCancelled: _isCancelled,
          ref: ref,
          listId: listId,
          cancelToken: _cancelToken,
        );
      }
      if (_isCancelled) {
        ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
        ref.read(chatStreamingProvider(listId).notifier).setState(false);
        return;
      }
    } on Object catch (e, st) {
      if (_isCancelled) {
        return;
      }
      LoggerService.error(
        e,
        stackTrace: st,
        message: '[StreamResponse] Erro no streaming',
        extra: {
          'operation': 'stream_response',
          'listId': listId,
          'fallbackText':
              agentResult.fallbackText.characters.take(200).toString(),
          'hasToolCalls': agentResult.messages.any(
            (m) => m['tool_calls'] != null,
          ),
        },
      );
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      finalText =
          agentResult.fallbackText.isEmpty
              ? _localizedAiError(e)
              : agentResult.fallbackText;
      isError = true;
    }

    if (finalText.isEmpty) {
      finalText = agentResult.fallbackText;
      isError = true;
    }

    if (!_isCancelled) {
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      ref.read(chatStreamingProvider(listId).notifier).setState(false);
    }
    unawaited(HapticFeedback.mediumImpact());

    // Only ever write the AI reply onto the assistant placeholder — never the
    // user's own message. copyWith preserves role/id, so overwriting a 'user'
    // message here would corrupt it (AI text rendered as a user bubble) and
    // make the user's original prompt disappear.
    final currentMessages = state.value ?? <ChatMessage>[];
    final lastAssistantIndex = currentMessages.lastIndexWhere(
      (m) => m.role == 'assistant',
    );
    if (lastAssistantIndex != -1) {
      final lastMsg = currentMessages[lastAssistantIndex];
      final extracted = extractSuggestionsFromText(finalText);
      final displayText = extracted.text;
      final llmSuggestions = extracted.suggestions;
      final suggestions =
          llmSuggestions ??
          generateSuggestedReplies(
                displayText,
                listId,
                locale: Intl.getCurrentLocale(),
              )
              ?.map((s) => SuggestedReply(label: s, prompt: s, icon: 'chat'))
              .toList();
      final finalMessage = lastMsg.copyWith(
        content: displayText,
        isError: isError,
        suggestedReplies: suggestions,
      );
      final updatedMessages = <ChatMessage>[...currentMessages];
      updatedMessages[lastAssistantIndex] = finalMessage;
      state = AsyncValue.data(updatedMessages);

      final sessionId = ref.read(activeChatSessionIdProvider(listId));
      if (firestoreService != null) {
        unawaited(
          firestoreService
              .saveChatMessage(listId, finalMessage, sessionId: sessionId)
              .catchError((_) => null),
        );
      }
    }
  }

  Future<void> resumeWithUnlock() async {
    final pending = _pendingUnlock;
    if (pending == null) {
      return;
    }
    _pendingUnlock = null;

    final keepAliveLink = ref.keepAlive();
    _isCancelled = false;
    _cachedSystemPrompt = null;
    _cancelToken = AiCancellationToken();
    final task = _resumeLoopInternal(pending, bypassPremium: true);
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
        _cancelToken = null;
        _cachedSystemPrompt = null;
      }
      keepAliveLink.close();
    }
  }

  Future<void> cancelUnlock() async {
    final pending = _pendingUnlock;
    if (pending == null) {
      return;
    }
    _pendingUnlock = null;

    final keepAliveLink = ref.keepAlive();
    _isCancelled = false;
    _cachedSystemPrompt = null;
    _cancelToken = AiCancellationToken();
    final task = _resumeLoopInternal(
      pending,
      bypassPremium: false,
      userDeclined: true,
    );
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
        _cancelToken = null;
        _cachedSystemPrompt = null;
      }
      keepAliveLink.close();
    }
  }

  Future<ToolResult> executeToolDirectly(
    String name,
    Map<String, dynamic> arguments,
  ) async {
    final executor = ToolExecutor(ref);
    final call = AgentToolCall(
      id: 'direct_${DateTime.now().millisecondsSinceEpoch}',
      name: name,
      arguments: arguments,
    );
    return executor.execute(call);
  }

  Future<void> _resumeLoopInternal(
    PremiumUnlockException pending, {
    required bool bypassPremium,
    bool userDeclined = false,
  }) async {
    final aiService = ref.read(aiServiceProvider);
    final executor = ToolExecutor(ref);
    _cachedSystemPrompt = null;
    // Usa cache estático de tools para evitar recriar 45+ Maps a cada invocação
    cachedToolsSchema ??=
        AgentTools.all.map((t) => t.toOpenAIFunction()).toList();
    final tools = cachedToolsSchema!;

    _AgentResult agentResult;
    try {
      ref.read(chatThinkingProvider(listId).notifier).setState(true);
      ref
          .read(chatActivityProvider(listId).notifier)
          .setState('Retomando processamento...');

      final updatedMessages = List<Map<String, dynamic>>.from(pending.messages);

      if (userDeclined) {
        // Se o usuário recusou, informamos à IA que a ferramenta falhou por recusa do usuário
        final result = ToolResult.fromError(
          'The user declined to use the premium interactive interface at this moment. Continue with text only.',
          toolCallId: pending.toolCall.id,
        );

        // Atualiza o step para erro/cancelado na UI
        final finishedSteps =
            (state.value?.lastOrNull?.executionSteps ?? []).map((step) {
              return step.id == pending.toolCall.id
                  ? step.copyWith(status: AgentStepStatus.error)
                  : step;
            }).toList();
        _updateAssistantMessage(executionSteps: finishedSteps);

        updatedMessages.add({
          'role': 'tool',
          'tool_call_id': pending.toolCall.id,
          'content': result.content,
        });

        agentResult = await _agentLoop(
          aiService,
          executor,
          updatedMessages,
          tools: pending.tools,
          cancelToken: _cancelToken,
        );
        if (_isCancelled) {
          return;
        }
      } else {
        // Se foi liberado (bypassPremium), executamos a ferramenta
        final result = await executor.execute(
          pending.toolCall,
          bypassPremium: true,
        );
        if (_isCancelled) {
          return;
        }

        final finishedSteps =
            (state.value?.lastOrNull?.executionSteps ?? []).map((step) {
              return step.id == pending.toolCall.id
                  ? step.copyWith(
                    status:
                        result.success
                            ? AgentStepStatus.success
                            : AgentStepStatus.error,
                    resultData: result.resultData,
                  )
                  : step;
            }).toList();

        if (pending.toolCall.name == 'generate_artifact' &&
            result.success &&
            result.resultData != null) {
          final artifactJson =
              result.resultData!['artifact'] as Map<String, dynamic>;
          final artifact = InteractiveArtifact.fromJson(artifactJson);
          _updateAssistantMessage(
            executionSteps: finishedSteps,
            artifact: artifact,
          );
        } else {
          _updateAssistantMessage(executionSteps: finishedSteps);
        }

        final toolContent =
            result.resultData != null
                ? '${result.content}\n\nDADOS: ${jsonEncode(result.resultData)}'
                : result.content;
        updatedMessages.add({
          'role': 'tool',
          'tool_call_id': pending.toolCall.id,
          'content': toolContent,
        });

        agentResult = await _agentLoop(
          aiService,
          executor,
          updatedMessages,
          tools: pending.tools,
          cancelToken: _cancelToken,
        );
        if (_isCancelled) {
          return;
        }
      }
    } on PremiumUnlockException catch (e) {
      if (_isCancelled) {
        return;
      }
      debugPrint(
        '[AgentLoop] Bloqueio Premium detectado (recursivo) para ${e.toolCall.name}',
      );
      _pendingUnlock = e;
      return;
    } on Object catch (e, st) {
      if (_isCancelled) {
        return;
      }
      LoggerService.error(
        e,
        stackTrace: st,
        message: '[ResumeLoop] Erro ao retomar loop',
        extra: {'listId': listId, 'tool': pending.toolCall.name},
      );
      // Fallback em caso de erro na retomada
      agentResult = _AgentResult(
        messages: pending.messages,
        fallbackText: 'Error resuming processing.',
      );
    } finally {
      if (!_isCancelled) {
        ref.read(chatThinkingProvider(listId).notifier).setState(false);
        ref.read(chatActivityProvider(listId).notifier).setState(null);
      }
    }

    await _finalizeResponse(aiService, agentResult, tools);
  }

  void _updateAssistantMessage({
    String? content,
    List<AgentStep>? executionSteps,
    bool? isError,
    List<SuggestedReply>? suggestedReplies,
    InteractiveArtifact? artifact,
    Map<String, dynamic>? actions,
  }) {
    final currentList = state.value ?? [];
    if (currentList.isEmpty) {
      return;
    }
    final lastIndex = currentList.length - 1;
    final lastMsg = currentList[lastIndex];
    if (lastMsg.role != 'assistant') {
      return;
    }

    final updated = lastMsg.copyWith(
      content: content,
      executionSteps: executionSteps,
      isError: isError,
      suggestedReplies: suggestedReplies,
      artifact: artifact,
      actions: actions,
    );

    final newList = List<ChatMessage>.from(currentList);
    newList[lastIndex] = updated;
    state = AsyncValue.data(newList);
  }

  Future<void> undoMessageActions(String messageId) async {
    final keepAliveLink = ref.keepAlive();
    try {
      if (!ref.mounted) {
        return;
      }
      final messages = state.value ?? [];
      final index = messages.indexWhere((m) {
        return m.id == messageId;
      });
      if (index == -1) {
        return;
      }

      final message = messages[index];
      final steps = message.executionSteps;
      if (steps == null || steps.isEmpty) {
        return;
      }

      final updatedSteps = List<AgentStep>.from(steps);
      final reverseCallbacks = <_UndoCallback>[];

      for (int i = updatedSteps.length - 1; i >= 0; i--) {
        final step = updatedSteps[i];
        if (step.status != AgentStepStatus.success) {
          continue;
        }

        final resultData = step.resultData;
        if (resultData == null) {
          continue;
        }

        try {
          final listId = resultData['listId'] as String?;

          if (resultData.containsKey('itemId') && listId != null) {
            final itemId = resultData['itemId'] as String;
            final currentItems = await ref.read(
              shoppingListItemsProvider(listId).future,
            );
            final originalItem =
                currentItems.where((i) => i.id == itemId).firstOrNull;
            await ref
                .read(shoppingListItemsProvider(listId).notifier)
                .removeItem(itemId);
            if (originalItem != null) {
              final capturedItem = originalItem;
              reverseCallbacks.add(() async {
                await ref
                    .read(
                      shoppingListItemsProvider(
                        capturedItem.shoppingListId,
                      ).notifier,
                    )
                    .restoreItem(capturedItem);
              });
            }
            updatedSteps[i] = step.copyWith(status: AgentStepStatus.undone);
          } else if (resultData.containsKey('previousState') &&
              listId != null) {
            final previousState = Map<String, dynamic>.from(
              resultData['previousState'] as Map,
            );
            final item = ShoppingItem.fromJson(previousState);
            final currentItems = List<ShoppingItem>.from(
              await ref.read(shoppingListItemsProvider(listId).future),
            );
            await ref
                .read(shoppingListItemsProvider(listId).notifier)
                .restoreItem(item);
            reverseCallbacks.add(() async {
              await ref
                  .read(shoppingListItemsProvider(listId).notifier)
                  .updateItems(currentItems);
            });
            updatedSteps[i] = step.copyWith(status: AgentStepStatus.undone);
          } else if (resultData.containsKey('previousStates')) {
            final previousStates =
                resultData['previousStates'] as List<dynamic>;
            final items =
                previousStates.map((e) {
                  return ShoppingItem.fromJson(
                    Map<String, dynamic>.from(e as Map),
                  );
                }).toList();

            final itemsByList = <String, List<ShoppingItem>>{};
            for (final item in items) {
              itemsByList
                  .putIfAbsent(item.shoppingListId, () {
                    return [];
                  })
                  .add(item);
            }

            for (final entry in itemsByList.entries) {
              await ref
                  .read(shoppingListItemsProvider(entry.key).notifier)
                  .updateItems(entry.value);
            }
            reverseCallbacks.add(() async {
              for (final entry in itemsByList.entries) {
                await ref
                    .read(shoppingListItemsProvider(entry.key).notifier)
                    .updateItems(entry.value);
              }
            });
            updatedSteps[i] = step.copyWith(status: AgentStepStatus.undone);
          } else if (resultData.containsKey('previousBudget')) {
            final previousBudgetNum = resultData['previousBudget'] as num?;
            final previousBudget = previousBudgetNum?.toDouble();
            final currentBudget = ref.read(monthlyBudgetProvider).asData?.value;
            await ref
                .read(monthlyBudgetProvider.notifier)
                .setBudget(previousBudget);
            reverseCallbacks.add(() async {
              await ref
                  .read(monthlyBudgetProvider.notifier)
                  .setBudget(currentBudget);
            });
            updatedSteps[i] = step.copyWith(status: AgentStepStatus.undone);
          }
        } on Exception catch (e, st) {
          LoggerService.error(
            e,
            stackTrace: st,
            message: '[Undo] Error rolling back step ${step.id}',
            extra: {
              'operation': 'undo_step',
              'stepId': step.id,
              'stepName': step.description,
              'listId': listId,
              'stepStatus': step.status.name,
            },
          );
          // Reverse already-applied undos to avoid partial Firestore state
          for (final reverse in reverseCallbacks.reversed) {
            try {
              await reverse();
            } on Exception {
              // Best-effort reverse; log is already captured above
            }
          }
          break;
        }
      }

      final updatedMessage = message.copyWith(executionSteps: updatedSteps);
      final newList = List<ChatMessage>.from(messages);
      newList[index] = updatedMessage;
      state = AsyncValue.data(newList);

      final firestoreService = ref.read(firestoreServiceProvider);
      if (firestoreService != null) {
        await firestoreService
            .saveChatMessage(listId, updatedMessage, sessionId: sessionId)
            .catchError((Object e, StackTrace st) {
              LoggerService.error(
                e,
                stackTrace: st,
                message: '[Undo] Failed to save updated chat message',
                extra: {
                  'operation': 'undo_save_message',
                  'listId': listId,
                  'messageId': updatedMessage.id,
                },
              );
              return null;
            });
      }
    } finally {
      keepAliveLink.close();
    }
  }

  Future<void> _sendMessageInternal(String content) async {
    if (!ref.mounted) {
      return;
    }
    final aiService = ref.read(aiServiceProvider);
    final firestoreService = ref.read(firestoreServiceProvider);
    if (firestoreService == null) return;

    if (sessionId == null) {
      return;
    }

    if (sessionId!.startsWith('onboarding_demo_')) {
      await _simulateOnboardingChat(content);
      return;
    }

    final userMessage = ChatMessage(role: 'user', content: content);

    final previousHistory = state.value ?? [];
    state = AsyncValue.data([...previousHistory, userMessage]);

    unawaited(
      firestoreService
          .saveChatMessage(listId, userMessage, sessionId: sessionId!)
          .catchError((Object e, StackTrace st) {
            LoggerService.error(
              e,
              stackTrace: st,
              message: '[Chat] Failed to save user message',
              extra: {
                'operation': 'save_user_message',
                'listId': listId,
                'messageLength': content.length,
              },
            );
            return null;
          }),
    );

    // Se for a primeira mensagem ou o título ainda for o padrão, gera um título
    final currentMessages =
        previousHistory.where((m) => m.role == 'user').length;
    if (currentMessages == 0) {
      unawaited(_generateTitleInBackground(listId, sessionId!, content));
    }

    final apiMessages = <Map<String, dynamic>>[];
    // Limita o histórico para não estourar limites de tokens e manter performance
    final historyToSync =
        previousHistory.length > maxHistoryMessages
            ? previousHistory.sublist(
              previousHistory.length - maxHistoryMessages,
            )
            : previousHistory;

    for (final msg in historyToSync) {
      apiMessages.add({'role': msg.role, 'content': msg.content});
    }

    apiMessages.add({'role': 'user', 'content': content});

    // Usa cache estático de tools para evitar recriar 45+ Maps a cada mensagem
    cachedToolsSchema ??=
        AgentTools.all.map((t) => t.toOpenAIFunction()).toList();
    final tools = cachedToolsSchema!;
    final executor = ToolExecutor(ref);

    final assistantMessage = ChatMessage(
      role: 'assistant',
      content: '',
      executionSteps: [],
    );
    state = AsyncValue.data([...state.value ?? [], assistantMessage]);

    _AgentResult agentResult;
    try {
      ref.read(chatThinkingProvider(listId).notifier).setState(true);
      ref
          .read(chatActivityProvider(listId).notifier)
          .setState('Analyzing your request...');
      agentResult = await _agentLoop(
        aiService,
        executor,
        apiMessages,
        tools: tools,
        cancelToken: _cancelToken,
      );
      if (_isCancelled) {
        return;
      }
    } on PremiumUnlockException catch (e) {
      if (_isCancelled) {
        return;
      }
      debugPrint(
        '[AgentLoop] Bloqueio Premium detectado para ${e.toolCall.name}',
      );
      _pendingUnlock = e;
      return;
    } on Object catch (e, stackTrace) {
      if (_isCancelled) {
        return;
      }
      LoggerService.error(
        e,
        stackTrace: stackTrace,
        message: '[AgentLoop] ERRO no loop principal',
        extra: {
          'operation': 'agent_loop',
          'listId': listId,
          'messageLength': content.length,
          'historyLength': previousHistory.length,
        },
      );
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      ref.read(chatThinkingProvider(listId).notifier).setState(false);
      ref.read(chatActivityProvider(listId).notifier).setState(null);
      final errorMsg = _localizedAiError(e);
      _updateAssistantMessage(content: errorMsg, isError: true);
      final lastMsg = state.value?.lastOrNull;
      if (lastMsg != null) {
        unawaited(
          firestoreService
              .saveChatMessage(listId, lastMsg, sessionId: sessionId)
              .catchError((Object e2, StackTrace st2) {
                if (_isCancelled) {
                  return null;
                }
                LoggerService.error(
                  e2,
                  stackTrace: st2,
                  message: '[AgentLoop] Failed to save error message',
                  extra: {
                    'operation': 'save_error_message',
                    'listId': listId,
                    'errorContent':
                        lastMsg.content.characters.take(200).toString(),
                  },
                );
                return null;
              }),
        );
      }
      return;
    } finally {
      if (!_isCancelled) {
        ref.read(chatThinkingProvider(listId).notifier).setState(false);
        ref.read(chatActivityProvider(listId).notifier).setState(null);
      }
    }

    await _finalizeResponse(aiService, agentResult, tools);
  }

  Future<void> _simulateOnboardingChat(String content) async {
    final userMessage = ChatMessage(role: 'user', content: content);
    final previousHistory = state.value ?? [];
    state = AsyncValue.data([...previousHistory, userMessage]);

    final assistantMessage = ChatMessage(
      role: 'assistant',
      content: '',
      executionSteps: [],
    );
    state = AsyncValue.data([...state.value ?? [], assistantMessage]);

    ref.read(chatThinkingProvider(listId).notifier).setState(true);

    if (content.contains('organizar') || content.contains('preferida')) {
      ref.read(chatActivityProvider(listId).notifier).setState('Thinking...');
      await Future<void>.delayed(const Duration(milliseconds: 600));
      if (_isCancelled) {
        return;
      }

      ref
          .read(chatActivityProvider(listId).notifier)
          .setState('Verificando detalhes...');
      await Future<void>.delayed(const Duration(milliseconds: 600));
      if (_isCancelled) {
        return;
      }

      final finishedSteps = [
        AgentStep(
          id: 'step_1',
          description: 'Buscar receita recomendada',
          status: AgentStepStatus.success,
          toolName: 'get_recipes',
        ),
      ];
      _updateAssistantMessage(executionSteps: finishedSteps);

      ref
          .read(chatActivityProvider(listId).notifier)
          .setState('Crafting response...');
      await Future<void>.delayed(const Duration(milliseconds: 400));
      if (_isCancelled) {
        return;
      }

      ref.read(chatThinkingProvider(listId).notifier).setState(false);
      ref.read(chatActivityProvider(listId).notifier).setState(null);

      String food = 'your favorite dish';
      final match = RegExp(
        r'favorite (?:is|dish is|food is) ([^.?]+)',
      ).firstMatch(content);
      if (match != null) {
        food = match.group(1)!.trim();
      }

      final mockResponse =
          'Sure! Here are the main ingredients to make $food:\n\n'
          '- 📋 Main base/dough\n'
          '- 🍅 Special sauce\n'
          '- 🧀 Fresh cheese\n'
          '- 🌿 Selected spices and condiments\n\n'
          'Would you like me to add all these items to your shopping list at once?';

      ref.read(chatStreamingProvider(listId).notifier).setState(true);
      final streamedText = await localStreamText(
        mockResponse,
        isCancelled: _isCancelled,
        ref: ref,
        listId: listId,
      );
      ref.read(chatStreamingProvider(listId).notifier).setState(false);
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);

      _updateAssistantMessage(
        content: streamedText,
        suggestedReplies: [
          SuggestedReply(
            label: 'Yes, add everything!',
            prompt: 'Great! Go ahead and add everything to my shopping list.',
            icon: 'check',
          ),
        ],
      );
    } else {
      ref.read(chatActivityProvider(listId).notifier).setState('Thinking...');
      await Future<void>.delayed(const Duration(milliseconds: 600));
      if (_isCancelled) {
        return;
      }

      ref
          .read(chatActivityProvider(listId).notifier)
          .setState('Adding items to list...');
      await Future<void>.delayed(const Duration(milliseconds: 1000));
      if (_isCancelled) {
        return;
      }

      final finishedSteps = [
        AgentStep(
          id: 'step_2',
          description: 'Add ingredients to list',
          status: AgentStepStatus.success,
          toolName: 'add_shopping_items',
        ),
      ];
      _updateAssistantMessage(executionSteps: finishedSteps);

      ref
          .read(chatActivityProvider(listId).notifier)
          .setState('Crafting response...');
      await Future<void>.delayed(const Duration(milliseconds: 400));
      if (_isCancelled) {
        return;
      }

      ref.read(chatThinkingProvider(listId).notifier).setState(false);
      ref.read(chatActivityProvider(listId).notifier).setState(null);

      const mockResponse =
          'Done! All the necessary ingredients have been successfully added to your shopping list. 🛒✨';

      ref.read(chatStreamingProvider(listId).notifier).setState(true);
      final streamedText = await localStreamText(
        mockResponse,
        isCancelled: _isCancelled,
        ref: ref,
        listId: listId,
      );
      ref.read(chatStreamingProvider(listId).notifier).setState(false);
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);

      _updateAssistantMessage(content: streamedText);
    }
  }

  Future<String> _getCurrentSystemPrompt() async {
    // Lê valores síncronos imediatamente (sem await)
    final authState = ref.read(authProvider);
    final user = authState.value;
    final creationDate = user?.metadata.creationTime ?? DateTime.now();
    final daysOfUse = DateTime.now().difference(creationDate).inDays;
    final userStats = ref.read(userStatsProvider);
    final totalBought = userStats.totalItemsBought;
    final streak = userStats.currentStreak;
    final currentLocale = Intl.getCurrentLocale();
    final currentListId = listId;

    final premiumState = ref.read(premiumProvider);
    final packageInfoState = ref.read(packageInfoProvider);
    final shoppingListsState = ref.read(shoppingListsProvider);
    final shoppingListItemsState =
        currentListId != null
            ? ref.read(shoppingListItemsProvider(currentListId))
            : null;
    final userProfileState = ref.read(userProfileProvider);

    final isPremium =
        premiumState.hasValue
            ? (premiumState.value ?? false)
            : await AiUtils.awaitFuture<bool>(
              ref.read(premiumProvider.future),
              defaultValue: false,
              label: 'premiumProvider',
            );

    final packageInfo =
        packageInfoState.hasValue
            ? packageInfoState.value
            : await AiUtils.awaitFuture<PackageInfo?>(
              ref.read(packageInfoProvider.future),
              defaultValue: null,
              label: 'packageInfoProvider',
            );

    final lists =
        shoppingListsState.hasValue
            ? (shoppingListsState.value ?? const <ShoppingList>[])
            : await AiUtils.awaitFuture<List<ShoppingList>>(
              ref.read(shoppingListsProvider.future),
              defaultValue: const <ShoppingList>[],
              timeout: const Duration(seconds: 1),
              label: 'shoppingListsProvider',
            );

    final primaryItems =
        (currentListId != null)
            ? (shoppingListItemsState?.hasValue ?? false)
                ? (shoppingListItemsState!.value ?? const <ShoppingItem>[])
                : await AiUtils.awaitFuture<List<ShoppingItem>>(
                  ref.read(shoppingListItemsProvider(currentListId).future),
                  defaultValue: const <ShoppingItem>[],
                  timeout: const Duration(seconds: 1),
                  label: 'shoppingListItemsProvider',
                )
            : const <ShoppingItem>[];

    final profile =
        userProfileState.hasValue
            ? userProfileState.value
            : await AiUtils.awaitFuture<UserProfile?>(
              ref.read(userProfileProvider.future),
              defaultValue: null,
              timeout: const Duration(seconds: 1),
              label: 'userProfileProvider',
            );

    final appVersion = packageInfo?.version ?? '1.0.0';

    String prompt;
    int totalItemsCount = 0;

    if (currentListId != null) {
      final list = lists.where((l) => l.id == currentListId).firstOrNull;
      totalItemsCount = primaryItems.length;
      prompt = buildListSystemPrompt(list, primaryItems, locale: currentLocale);
    } else {
      // Modo global: busca todos os itens em uma única query
      final allItems = <String, List<ShoppingItem>>{};
      if (lists.isNotEmpty) {
        final firestoreService = ref.read(firestoreServiceProvider)!;
        final itemsByListId = await firestoreService.loadAllItemsForUser();
        for (final list in lists) {
          final items = itemsByListId[list.id] ?? const <ShoppingItem>[];
          allItems[list.name] = items;
          totalItemsCount += items.length;
        }
      }
      prompt = buildGlobalSystemPrompt(allItems, locale: currentLocale);
    }

    final today = DateFormat(
      'EEEE, dd/MM/yyyy',
      currentLocale,
    ).format(DateTime.now());

    final userContext = '''
\n--- USER STATUS ---
- Plan: ${isPremium ? 'Premium (Pro)' : 'Free'}
- App Language: $currentLocale
- Today: $today
- Total items across all lists: $totalItemsCount
- Items purchased (history): $totalBought
- Days using app: $daysOfUse
- Shopping streak (consecutive days): $streak
- App Version: $appVersion
-------------------
''';

    prompt = userContext + prompt;

    prompt += '''

LANGUAGE:
The app interface language is $currentLocale. ALWAYS respond in the language the user writes in.
If the user writes in English, reply in English. If they write in their native language, reply in that language.
Use the same language as the user regardless of the app locale.
''';

    prompt += '''

CONTEXTUAL SUGGESTIONS:
At the end of each response, include a suggestions block predicting what the user will want to do next:

[SUGGESTIONS]
[{"label":"Button text","prompt":"Full phrase sent on tap","icon":"add_shopping_cart"},{"label":"View recipe","prompt":"Show me the full recipe","icon":"menu_book"}]
[/SUGGESTIONS]

Rules:
- Always 2-3 suggestions.
- label: short (<30 chars), actionable, in the user's language.
- prompt: full sentence that will be sent when tapped, in the user's language.
- icon: pick from add_shopping_cart, receipt_long, restaurant_menu, menu_book, local_fire_department, eco, cleaning_services, savings, trending_up, cake, shopping_cart, check_circle, delete, edit, share, map, search, lightbulb, tips_and_updates, organize, kitchen, grocery, calendar_month, schedule, group_add, archive, checklist, nutrition, price_check, repeat, star, timer, today.
- Base suggestions on the conversation context, list items, and user profile.
- If no relevant suggestions, omit the block.''';

    // Adicionar instruções de gamificação
    if (streak > 1 || totalBought > 10) {
      prompt +=
          '\nGAMIFICATION: Compliment the user on their $streak-day streak or having purchased $totalBought items total. Make them feel like an organization champion!';
    }

    prompt += '''

SYSTEM ACTIONS:
You have special tools to interact with the app system:
- `open_paywall`: If the user is on the 'Free' plan and tries to use Pro features (budget, sharing, backup, advanced Gen UI) or expresses interest in supporting the app financially, open the plans screen.
- `request_app_review`: If the user praises the app or thanks you for valuable help, ask for a review.
- `prompt_app_update`: If the user asks about bugs or new features, suggest updating.
- `generate_referral_link`: Suggest this if the user wants Premium but can't afford it. Explain it's a win-win: they get 7 Pro days and the invited friend also gets 7 days to try.

Be subtle and act like a concierge. Help first, sell second.''';

    // Usa o `profile` já buscado em paralelo acima (não requer novo await)
    try {
      if (profile != null && !profile.isEmpty) {
        final fields = <String>[];
        if (profile.preferredStore != null &&
            profile.preferredStore!.isNotEmpty) {
          fields.add('Preferred store: ${profile.preferredStore}');
        }
        if (profile.dietaryRestrictions != null &&
            profile.dietaryRestrictions!.isNotEmpty) {
          fields.add('Dietary restrictions: ${profile.dietaryRestrictions}');
        }
        if (profile.avoidedStores != null &&
            profile.avoidedStores!.isNotEmpty) {
          fields.add('Stores to avoid: ${profile.avoidedStores}');
        }
        if (profile.notes != null && profile.notes!.isNotEmpty) {
          fields.add('Notes: ${profile.notes}');
        }
        if (fields.isNotEmpty) {
          prompt +=
              '\n\nUser Profile:\n${fields.map((f) => '- $f').join('\n')}\n'
              'Keep this profile in mind when suggesting items, recipes or actions. '
              'Use get_user_profile to read the full profile, '
              'update_user_profile to update profile fields, '
              'save_user_preference to save miscellaneous preferences, '
              'and delete_user_preference to remove preferences.';
        }
      }
    } on Exception {
      // Silently ignore — profile is not critical
    }

    return prompt;
  }

  Future<void> retryMessage() async {
    if (_currentTask != null) {
      return;
    }

    final keepAliveLink = ref.keepAlive();
    _isCancelled = false;
    _cancelToken = AiCancellationToken();
    final task = _retryMessageInternal();
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
        _cancelToken = null;
      }
      keepAliveLink.close();
    }
  }

  Future<void> _retryMessageInternal() async {
    final messages = state.value ?? [];
    if (messages.isEmpty) {
      return;
    }

    // Remove as mensagens de erro do final
    final newMessages = List<ChatMessage>.from(messages);
    while (newMessages.isNotEmpty &&
        (newMessages.last.isError ||
            newMessages.last.role == 'assistant' &&
                newMessages.last.content.isEmpty)) {
      final removed = newMessages.removeLast();
      final firestoreService = ref.read(firestoreServiceProvider);
      if (firestoreService != null) {
        await firestoreService.deleteChatMessage(
          listId,
          removed.id,
          sessionId: sessionId,
        );
      }
      if (_isCancelled) {
        return;
      }
    }

    if (!_isCancelled) {
      state = AsyncValue.data(newMessages);
    }

    // Encontra a última mensagem do usuário
    final lastUserMessageIndex = newMessages.lastIndexWhere(
      (m) => m.role == 'user',
    );
    if (lastUserMessageIndex != -1) {
      final lastUserMessage = newMessages[lastUserMessageIndex];
      final content = lastUserMessage.content;

      if (content.isNotEmpty) {
        newMessages.removeAt(lastUserMessageIndex);
        final firestoreService = ref.read(firestoreServiceProvider);
        if (firestoreService != null) {
          await firestoreService.deleteChatMessage(
            listId,
            lastUserMessage.id,
            sessionId: sessionId,
          );
        }
        if (_isCancelled) {
          return;
        }

        state = AsyncValue.data(newMessages);

        await _sendMessageInternal(content);
      }
    }
  }

  void cancelRequest() {
    _isCancelled = true;
    _cancelToken?.cancel();
    _currentTask = null;
    ref.read(chatStreamingProvider(listId).notifier).setState(false);
    ref.read(chatThinkingProvider(listId).notifier).setState(false);
    ref.read(chatStreamingTextProvider(listId).notifier).setState(null);

    // Remove the temp empty message if it exists
    final messages = state.value ?? [];
    if (messages.isNotEmpty &&
        messages.last.role == 'assistant' &&
        messages.last.content.isEmpty) {
      state = AsyncValue.data(messages.sublist(0, messages.length - 1));
    }
  }

  Future<_AgentResult> _agentLoop(
    AiService aiService,
    ToolExecutor executor,
    List<Map<String, dynamic>> messages, {
    required List<Map<String, dynamic>> tools,
    AiCancellationToken? cancelToken,
  }) async {
    const maxRetries = 2;
    // Delays reduzidos: 500ms e 2s (era 1s e 3s) — acelera recuperação de erros
    const delays = [Duration(milliseconds: 500), Duration(seconds: 2)];

    Future<AiResponse> callWithRetry(String systemPrompt) async {
      for (var attempt = 0; attempt <= maxRetries; attempt++) {
        try {
          return await aiService.getChatCompletionWithTools(
            messages,
            systemPrompt: systemPrompt,
            tools: tools,
            cancelToken: cancelToken,
          );
        } catch (_) {
          if (attempt == maxRetries) {
            rethrow;
          }
          await Future<void>.delayed(delays[attempt]);
        }
      }
      throw Exception('Unreachable');
    }

    debugPrint(
      '[AgentLoop] Iniciando com $maxToolRounds rounds máximos, ${tools.length} ferramentas',
    );

    // Gera o system prompt UMA ÚNICA VEZ para toda a duração do agent loop.
    // Antes era recalculado a cada round (maxToolRounds vezes), cada chamada
    // fazendo 5-7 awaits desnecessários (premium, packageInfo, items, perfil...).
    _cachedSystemPrompt ??= await _getCurrentSystemPrompt();
    final systemPrompt = _cachedSystemPrompt!;

    for (var round = 0; round < maxToolRounds; round++) {
      if (_isCancelled || (cancelToken?.isCancelled ?? false)) {
        break;
      }
      // Feedback de status contextual por round
      final roundActivity = switch (round) {
        0 => 'Pensando...',
        1 => 'Verificando detalhes...',
        2 => 'Refinando a resposta...',
        _ => 'Finalizando...',
      };
      ref.read(chatActivityProvider(listId).notifier).setState(roundActivity);
      debugPrint('[AgentLoop] Round $round — enviando requisição para IA...');
      final response = await callWithRetry(systemPrompt);

      debugPrint(
        '[AgentLoop] Round $round — resposta recebida. toolCalls=${response.toolCalls.length}, content.length=${response.content?.length ?? 0}',
      );

      if (!response.hasToolCalls) {
        debugPrint(
          '[AgentLoop] Round $round — sem tool calls. Final text pronto para streaming.',
        );
        ref
            .read(chatActivityProvider(listId).notifier)
            .setState('Crafting response...');
        return _AgentResult(
          messages: messages,
          fallbackText: response.content ?? '',
        );
      }

      messages.add({
        'role': 'assistant',
        'content': null,
        if (response.reasoningContent != null)
          'reasoning_content': response.reasoningContent,
        'tool_calls': response.toolCalls.map((tc) => tc.toJson()).toList(),
      });

      final currentMsg = state.value?.lastOrNull;
      final currentSteps = List<AgentStep>.from(
        currentMsg?.executionSteps ?? [],
      );

      final currency =
          ref.read(currencySettingProvider).value ??
          inferCurrencyFromLocale(PlatformDispatcher.instance.locale);
      final newSteps =
          response.toolCalls.map((tc) {
            return AgentStep(
              id: tc.id,
              description: friendlyToolDescription(tc, currency: currency),
              status: AgentStepStatus.pending,
              toolName: tc.name,
            );
          }).toList();

      currentSteps.addAll(newSteps);
      _updateAssistantMessage(executionSteps: currentSteps);

      if (_isCancelled || (cancelToken?.isCancelled ?? false)) {
        break;
      }

      if (response.toolCalls.length == 1) {
        // Caso comum: tool única — caminho simples sem overhead de paralelismo
        final toolCall = response.toolCalls.first;
        debugPrint(
          '[AgentLoop] Round $round — executando ferramenta: ${toolCall.name}(args: ${toolCall.arguments})',
        );
        ref
            .read(chatActivityProvider(listId).notifier)
            .setState(updateActivityForTool(toolCall.name));
        unawaited(HapticFeedback.selectionClick());

        final runningSteps =
            (state.value?.lastOrNull?.executionSteps ?? []).map((step) {
              return step.id == toolCall.id
                  ? step.copyWith(status: AgentStepStatus.running)
                  : step;
            }).toList();
        _updateAssistantMessage(executionSteps: runningSteps);

        final result = await executor.execute(toolCall);
        debugPrint(
          '[AgentLoop] Round $round — resultado de ${toolCall.name}: ${result.content.characters.take(200)}',
        );

        if (result.requiresUnlock) {
          final finishedSteps =
              (state.value?.lastOrNull?.executionSteps ?? []).map((step) {
                return step.id == toolCall.id
                    ? step.copyWith(status: AgentStepStatus.requiresUnlock)
                    : step;
              }).toList();
          _updateAssistantMessage(executionSteps: finishedSteps);
          throw PremiumUnlockException(
            toolCall: toolCall,
            messages: messages,
            tools: tools,
          );
        }

        final finishedSteps =
            (state.value?.lastOrNull?.executionSteps ?? []).map((step) {
              return step.id == toolCall.id
                  ? step.copyWith(
                    status:
                        result.success
                            ? AgentStepStatus.success
                            : AgentStepStatus.error,
                    resultData: result.resultData,
                  )
                  : step;
            }).toList();

        if (toolCall.name == 'create_recipe' &&
            result.success &&
            result.resultData != null) {
          final recipeId = result.resultData!['recipeId'] as String?;
          if (recipeId != null) {
            _updateAssistantMessage(
              executionSteps: finishedSteps,
              actions: {'view_recipe': recipeId},
            );
          } else {
            _updateAssistantMessage(executionSteps: finishedSteps);
          }
        } else if (toolCall.name == 'generate_artifact' &&
            result.success &&
            result.resultData != null) {
          final artifactJson =
              result.resultData!['artifact'] as Map<String, dynamic>;
          final artifact = InteractiveArtifact.fromJson(artifactJson);
          _updateAssistantMessage(
            executionSteps: finishedSteps,
            artifact: artifact,
          );
        } else {
          _updateAssistantMessage(executionSteps: finishedSteps);
        }

        final toolContent =
            result.resultData != null
                ? '${result.content}\n\nDADOS: ${jsonEncode(result.resultData)}'
                : result.content;
        messages.add({
          'role': 'tool',
          'tool_call_id': toolCall.id,
          'content': toolContent,
        });
      } else {
        // Múltiplas tools: executa TODAS em paralelo com Future.wait.
        // O modelo OpenAI/DeepSeek retorna múltiplos tool_calls quando as
        // operações são independentes entre si — este é o comportamento esperado
        // pela spec (cada chamada tem seu próprio tool_call_id).
        // Usa o nome da primeira ferramenta como feedback visual principal
        ref
            .read(chatActivityProvider(listId).notifier)
            .setState(updateActivityForTool(response.toolCalls.first.name));
        debugPrint(
          '[AgentLoop] Round $round — executando ${response.toolCalls.length} ferramentas em PARALELO',
        );

        // Marca todas como "running" de uma vez
        final allRunningSteps =
            (state.value?.lastOrNull?.executionSteps ?? []).map((step) {
              final isInBatch = response.toolCalls.any(
                (tc) => tc.id == step.id,
              );
              return isInBatch
                  ? step.copyWith(status: AgentStepStatus.running)
                  : step;
            }).toList();
        _updateAssistantMessage(executionSteps: allRunningSteps);
        unawaited(HapticFeedback.selectionClick());

        // Dispara todas em paralelo
        final results = await Future.wait(
          response.toolCalls.map((tc) {
            debugPrint(
              '[AgentLoop] Round $round — (paralelo) ${tc.name}(args: ${tc.arguments})',
            );
            return executor.execute(tc);
          }),
        );

        // Verifica premium unlock antes de processar (lança para o primeiro que precisar)
        for (var i = 0; i < response.toolCalls.length; i++) {
          if (results[i].requiresUnlock) {
            final tc = response.toolCalls[i];
            final finishedSteps =
                (state.value?.lastOrNull?.executionSteps ?? []).map((step) {
                  return step.id == tc.id
                      ? step.copyWith(status: AgentStepStatus.requiresUnlock)
                      : step;
                }).toList();
            _updateAssistantMessage(executionSteps: finishedSteps);
            throw PremiumUnlockException(
              toolCall: tc,
              messages: messages,
              tools: tools,
            );
          }
        }

        // Processa resultados em ordem (mantém consistência do histórico)
        InteractiveArtifact? pendingArtifact;
        Map<String, dynamic>? pendingActions;
        final batchFinishedSteps = List<AgentStep>.from(
          state.value?.lastOrNull?.executionSteps ?? [],
        );

        for (var i = 0; i < response.toolCalls.length; i++) {
          final toolCall = response.toolCalls[i];
          final result = results[i];

          debugPrint(
            '[AgentLoop] Round $round — resultado de ${toolCall.name}: ${result.content.characters.take(200)}',
          );

          // Atualiza step individual no batch
          for (var j = 0; j < batchFinishedSteps.length; j++) {
            if (batchFinishedSteps[j].id == toolCall.id) {
              batchFinishedSteps[j] = batchFinishedSteps[j].copyWith(
                status:
                    result.success
                        ? AgentStepStatus.success
                        : AgentStepStatus.error,
                resultData: result.resultData,
              );
            }
          }

          // Coleta metadados especiais
          if (toolCall.name == 'create_recipe' &&
              result.success &&
              result.resultData != null) {
            final recipeId = result.resultData!['recipeId'] as String?;
            if (recipeId != null) {
              pendingActions = {'view_recipe': recipeId};
            }
          } else if (toolCall.name == 'generate_artifact' &&
              result.success &&
              result.resultData != null) {
            final artifactJson =
                result.resultData!['artifact'] as Map<String, dynamic>;
            pendingArtifact = InteractiveArtifact.fromJson(artifactJson);
          }

          final toolContent =
              result.resultData != null
                  ? '${result.content}\n\nDADOS: ${jsonEncode(result.resultData)}'
                  : result.content;
          messages.add({
            'role': 'tool',
            'tool_call_id': toolCall.id,
            'content': toolContent,
          });
        }

        // Um único setState após processar todos os resultados do batch
        _updateAssistantMessage(
          executionSteps: batchFinishedSteps,
          artifact: pendingArtifact,
          actions: pendingActions,
        );
      }
    }

    // Reusa o system prompt já em cache (não recalcula)
    debugPrint(
      '[AgentLoop] Atingido limite de $maxToolRounds rounds — tentando fallback...',
    );
    final fallbackResponse = await callWithRetry(systemPrompt);

    final fallbackText =
        fallbackResponse.content ??
        'Could not process after multiple attempts.';
    debugPrint(
      '[AgentLoop] Fallback concluído. content.length=${fallbackText.length}',
    );
    return _AgentResult(messages: messages, fallbackText: fallbackText);
  }

  Future<void> _generateTitleInBackground(
    String? listId,
    String sessionId,
    String firstMessage,
  ) async {
    try {
      if (_isCancelled || !ref.mounted) {
        return;
      }

      final aiService = ref.read(aiServiceProvider);
      final prompt =
          'Create a very short title (max 4 words) for a conversation that starts with: "$firstMessage". Return only the title, no quotes.';
      final response = await aiService
          .getChatCompletion([ChatMessage(role: 'user', content: prompt)])
          .timeout(const Duration(seconds: 15));

      if (_isCancelled || !ref.mounted) {
        return;
      }

      var title = response.content.trim();
      if (title.startsWith('"') && title.endsWith('"')) {
        title = title.substring(1, title.length - 1);
      }

      final service = ref.read(firestoreServiceProvider);
      if (service == null) return;
      final sessions = await service.loadChatSessions(listId);

      if (_isCancelled || !ref.mounted) {
        return;
      }

      final session = sessions.where((s) => s.id == sessionId).firstOrNull;
      if (session != null) {
        await service.saveChatSession(listId, session.copyWith(title: title));
        if (!_isCancelled && ref.mounted) {
          ref.invalidate(chatSessionsProvider(listId));
        }
      }
    } on Exception catch (e) {
      debugPrint('Error generating chat title: $e');
    }
  }

  Future<void> clearHistory() async {
    cancelRequest();
    if (!ref.mounted) {
      return;
    }
    final firestoreService = ref.read(firestoreServiceProvider);
    if (firestoreService == null) return;
    await firestoreService.clearChatHistory(listId, sessionId: sessionId);
    state = const AsyncValue.data([]);
  }

  Future<void> addMessage(ChatMessage message) async {
    if (!ref.mounted) {
      return;
    }
    final keepAliveLink = ref.keepAlive();
    try {
      final previousMessages = state.value ?? [];
      state = AsyncValue.data([...previousMessages, message]);
      final firestoreService = ref.read(firestoreServiceProvider);
      if (firestoreService == null) return;
      await firestoreService
          .saveChatMessage(listId, message, sessionId: sessionId)
          .catchError((Object e, StackTrace st) {
            LoggerService.error(
              e,
              stackTrace: st,
              message: '[Chat] Failed to save addMessage',
              extra: {
                'operation': 'add_message',
                'listId': listId,
                'messageRole': message.role,
                'messageLength': message.content.length,
              },
            );
            return null;
          });
    } finally {
      keepAliveLink.close();
    }
  }

  Future<void> setFeedback(String messageId, int? feedback) async {
    if (!ref.mounted) {
      return;
    }
    final messages = state.value ?? [];
    final index = messages.indexWhere((m) {
      return m.id == messageId;
    });
    if (index == -1) {
      return;
    }

    final updatedMessage = messages[index].copyWith(feedback: feedback);
    final updatedMessages = List<ChatMessage>.from(messages);
    updatedMessages[index] = updatedMessage;
    state = AsyncValue.data(updatedMessages);

    final firestoreService = ref.read(firestoreServiceProvider);
    if (firestoreService == null) return;
    unawaited(
      firestoreService
          .saveChatMessage(listId, updatedMessage, sessionId: sessionId)
          .catchError((Object e, StackTrace st) {
            LoggerService.error(
              e,
              stackTrace: st,
              message: '[Chat] Failed to save feedback',
              extra: {
                'operation': 'set_feedback',
                'listId': listId,
                'messageId': messageId,
                'feedback': feedback,
              },
            );
            return null;
          }),
    );
  }

  Future<void> regenerate(String messageId) async {
    if (_currentTask != null) {
      return;
    }

    final keepAliveLink = ref.keepAlive();
    _isCancelled = false;
    _cancelToken = AiCancellationToken();
    final task = _regenerateInternal(messageId);
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
        _cancelToken = null;
      }
      keepAliveLink.close();
    }
  }

  Future<void> _regenerateInternal(String messageId) async {
    if (!ref.mounted) {
      return;
    }
    final messages = state.value ?? [];
    final index = messages.indexWhere((m) {
      return m.id == messageId;
    });
    if (index == -1) {
      return;
    }

    int userMessageIndex = -1;
    for (int i = index - 1; i >= 0; i--) {
      if (messages[i].role == 'user') {
        userMessageIndex = i;
        break;
      }
    }

    if (userMessageIndex == -1) {
      return;
    }

    final userContent = messages[userMessageIndex].content;

    final newMessages = messages.sublist(0, index);
    state = AsyncValue.data(newMessages);

    final firestore = ref.read(firestoreServiceProvider);
    if (firestore == null) {
      return;
    }
    for (int i = index; i < messages.length; i++) {
      unawaited(
        firestore.deleteChatMessage(
          listId,
          messages[i].id,
          sessionId: sessionId,
        ),
      );
    }

    if (!_isCancelled) {
      await _sendAssistantResponse(userContent);
    }
  }

  /// Edits a user message in place, discards everything that came after it,
  /// and re-runs the assistant from the edited prompt.
  Future<void> editMessage(String messageId, String newContent) async {
    if (_currentTask != null) {
      return;
    }
    final trimmed = newContent.trim();
    if (trimmed.isEmpty) {
      return;
    }

    final keepAliveLink = ref.keepAlive();
    _isCancelled = false;
    _cancelToken = AiCancellationToken();
    final task = _editMessageInternal(messageId, trimmed);
    _currentTask = task;
    try {
      await task;
    } finally {
      if (_currentTask == task) {
        _currentTask = null;
        _cancelToken = null;
      }
      keepAliveLink.close();
    }
  }

  Future<void> _editMessageInternal(String messageId, String newContent) async {
    if (!ref.mounted) {
      return;
    }
    final messages = state.value ?? [];
    final index = messages.indexWhere((m) => m.id == messageId);
    if (index == -1 || messages[index].role != 'user') {
      return;
    }

    final updatedUser = messages[index].copyWith(content: newContent);
    state = AsyncValue.data([...messages.sublist(0, index), updatedUser]);

    final firestore = ref.read(firestoreServiceProvider);
    if (firestore == null) {
      return;
    }
    unawaited(
      firestore
          .saveChatMessage(listId, updatedUser, sessionId: sessionId)
          .catchError((_) => null),
    );
    for (int i = index + 1; i < messages.length; i++) {
      unawaited(
        firestore.deleteChatMessage(
          listId,
          messages[i].id,
          sessionId: sessionId,
        ),
      );
    }

    if (!_isCancelled) {
      await _sendAssistantResponse(newContent);
    }
  }

  Future<void> _sendAssistantResponse(String content) async {
    if (!ref.mounted) {
      return;
    }
    final aiService = ref.read(aiServiceProvider);
    final firestoreService = ref.read(firestoreServiceProvider);
    if (firestoreService == null) {
      return;
    }
    final previousHistory = state.value ?? [];

    final apiMessages = <Map<String, dynamic>>[];
    final historyToSync =
        previousHistory.length > maxHistoryMessages
            ? previousHistory.sublist(
              previousHistory.length - maxHistoryMessages,
            )
            : previousHistory;

    for (final msg in historyToSync) {
      apiMessages.add({'role': msg.role, 'content': msg.content});
    }

    final tools = AgentTools.all.map((t) => t.toOpenAIFunction()).toList();
    final executor = ToolExecutor(ref);

    final assistantMessage = ChatMessage(
      role: 'assistant',
      content: '',
      executionSteps: [],
    );
    state = AsyncValue.data([...state.value ?? [], assistantMessage]);

    _AgentResult agentResult;
    try {
      ref.read(chatThinkingProvider(listId).notifier).setState(true);
      ref
          .read(chatActivityProvider(listId).notifier)
          .setState('Analyzing your request...');
      agentResult = await _agentLoop(
        aiService,
        executor,
        apiMessages,
        tools: tools,
        cancelToken: _cancelToken,
      );
      if (_isCancelled) {
        return;
      }
    } on Object catch (e, st) {
      if (_isCancelled) {
        return;
      }
      LoggerService.error(
        e,
        stackTrace: st,
        message: '[Regenerate] AgentLoop error',
        extra: {
          'operation': 'regenerate_agent_loop',
          'listId': listId,
          'contentLength': content.length,
          'historyLength': previousHistory.length,
        },
      );
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      ref.read(chatThinkingProvider(listId).notifier).setState(false);
      ref.read(chatActivityProvider(listId).notifier).setState(null);
      final errorMsg = _localizedAiError(e);
      _updateAssistantMessage(content: errorMsg, isError: true);
      return;
    } finally {
      if (!_isCancelled) {
        ref.read(chatThinkingProvider(listId).notifier).setState(false);
        ref.read(chatActivityProvider(listId).notifier).setState(null);
      }
    }

    if (!_isCancelled) {
      ref.read(chatStreamingProvider(listId).notifier).setState(true);
    }
    unawaited(HapticFeedback.lightImpact());

    String finalText;
    bool isError = false;
    try {
      final systemPrompt = await _getCurrentSystemPrompt();
      if (_isCancelled) {
        return;
      }
      finalText = await streamResponse(
        aiService,
        agentResult.messages,
        systemPrompt,
        tools,
        isCancelled: _isCancelled,
        ref: ref,
        listId: listId,
        cancelToken: _cancelToken,
      );
    } on Object catch (e, st) {
      if (_isCancelled) {
        return;
      }
      LoggerService.error(
        e,
        stackTrace: st,
        message: '[Regenerate] StreamResponse error',
        extra: {
          'operation': 'regenerate_stream_response',
          'listId': listId,
          'contentLength': content.length,
          'fallbackText':
              agentResult.fallbackText.characters.take(200).toString(),
        },
      );
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      finalText =
          agentResult.fallbackText.isEmpty
              ? _localizedAiError(e)
              : agentResult.fallbackText;
      isError = true;
    }

    if (!_isCancelled) {
      ref.read(chatStreamingTextProvider(listId).notifier).setState(null);
      ref.read(chatStreamingProvider(listId).notifier).setState(false);
    }

    final lastMsg = state.value?.lastOrNull;
    if (lastMsg != null) {
      final displayContent =
          finalText.isEmpty ? agentResult.fallbackText : finalText;
      final extracted = extractSuggestionsFromText(displayContent);
      final displayText = extracted.text;
      final llmSuggestions = extracted.suggestions;
      final suggestions =
          llmSuggestions ??
          generateSuggestedReplies(
                displayText,
                listId,
                locale: Intl.getCurrentLocale(),
              )
              ?.map((s) => SuggestedReply(label: s, prompt: s, icon: 'chat'))
              .toList();
      final finalMessage = lastMsg.copyWith(
        content: displayText,
        isError: isError || finalText.isEmpty,
        suggestedReplies: suggestions,
      );
      final updatedMessages = <ChatMessage>[...state.value ?? []];
      updatedMessages[updatedMessages.length - 1] = finalMessage;
      state = AsyncValue.data(updatedMessages);
      if (firestoreService != null) {
        unawaited(
          firestoreService.saveChatMessage(
            listId,
            finalMessage,
            sessionId: sessionId,
          ),
        );
      }
    }
  }

  Future<void> executeAction(String messageId, String action) async {
    final keepAliveLink = ref.keepAlive();
    try {
      final messages = state.value ?? [];
      final message = messages.where((m) => m.id == messageId).firstOrNull;
      if (message == null || message.actions == null) {
        return;
      }

      switch (action) {
        case 'add_items':
          final itemsData = message.actions!['add_items'];
          if (itemsData is List) {
            final listId = this.listId;
            if (listId == null) {
              return;
            }
            final itemNotifier = ref.read(
              shoppingListItemsProvider(listId).notifier,
            );
            for (final itemData in itemsData) {
              if (itemData is Map<String, dynamic>) {
                final unitStr = itemData['unit'] as String?;
                final catStr = itemData['category'] as String?;
                final unit =
                    unitStr != null
                        ? Unit.values.firstWhere(
                          (u) => u.name == unitStr,
                          orElse: () => Unit.un,
                        )
                        : Unit.un;
                final categoryId = catStr ?? 'others';
                await itemNotifier.addItem(
                  listId: listId,
                  name: itemData['name'] as String? ?? '',
                  quantity: (itemData['quantity'] as num?)?.toInt() ?? 1,
                  unit: unit,
                  categoryId: categoryId,
                );
              }
            }
          }
          break;
        case 'organize':
          final listId = this.listId;
          if (listId == null) {
            return;
          }
          final itemsState = ref.read(shoppingListItemsProvider(listId));
          final items =
              itemsState.hasValue
                  ? (itemsState.value ?? const <ShoppingItem>[])
                  : await ref.read(shoppingListItemsProvider(listId).future);
          if (items.isEmpty) {
            return;
          }
          final categoryOrder = {
            'fruits': 0,
            'cleaning': 1,
            'beverages': 2,
            'bakery': 3,
            'others': 4,
          };
          final sorted = List<ShoppingItem>.from(items)..sort(
            (a, b) => categoryOrder[a.categoryId]!.compareTo(
              categoryOrder[b.categoryId]!,
            ),
          );
          await ref
              .read(shoppingListItemsProvider(listId).notifier)
              .updateItems(sorted);
      }
    } finally {
      keepAliveLink.close();
    }
  }
}
