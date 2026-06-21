import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/app/ai/widgets/components/chat_bubble.dart';
import 'package:shopping_list/app/ai/widgets/components/chat_empty_state.dart';
import 'package:shopping_list/app/ai/widgets/components/chat_input_bar.dart';
import 'package:shopping_list/app/ai/widgets/components/thinking_indicator.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/chat_message.dart';

Widget _app(Widget child) {
  return ProviderScope(
    child: MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(body: child),
    ),
  );
}

void main() {
  testWidgets('mic button keeps its position when keyboard visibility changes', (
    tester,
  ) async {
    final controller = TextEditingController();
    final focusNode = FocusNode();
    final waveController = AnimationController(
      vsync: const TestVSync(),
      duration: const Duration(milliseconds: 300),
    );

    Widget buildInput({required bool keyboardVisible}) {
      return _app(
        Align(
          alignment: Alignment.bottomCenter,
          child: ChatInputBar(
            controller: controller,
            focusNode: focusNode,
            isSending: false,
            isListening: false,
            inputBlocked: false,
            isKeyboardVisible: keyboardVisible,
            onSend: () {},
            onQuickAdd: () {},
            onStartDictation: () {},
            onCancelRequest: () {},
            listId: 'list-1',
            waveController: waveController,
          ),
        ),
      );
    }

    await tester.pumpWidget(buildInput(keyboardVisible: false));
    final closedPosition = tester.getTopLeft(
      find.byKey(const ValueKey('chat_mic_button')),
    );

    await tester.pumpWidget(buildInput(keyboardVisible: true));
    await tester.pumpAndSettle();
    final openPosition = tester.getTopLeft(
      find.byKey(const ValueKey('chat_mic_button')),
    );

    expect(openPosition, closedPosition);

    controller.dispose();
    focusNode.dispose();
    waveController.dispose();
  });

  testWidgets('assistant message exposes feedback and copy actions', (
    tester,
  ) async {
    await tester.pumpWidget(
      _app(
        ChatBubble(
          message: ChatMessage(role: 'assistant', content: 'Resposta pronta'),
          isLastMessage: true,
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byKey(const ValueKey('chat_like_button')), findsOneWidget);
    expect(find.byKey(const ValueKey('chat_copy_button')), findsOneWidget);
  });

  testWidgets('streaming chunk is rendered without character timer', (
    tester,
  ) async {
    await tester.pumpWidget(
      _app(
        ChatBubble(
          message: ChatMessage(role: 'assistant', content: ''),
          isLastMessage: true,
        ),
      ),
    );

    final context = tester.element(find.byType(ChatBubble));
    final container = ProviderScope.containerOf(context);
    container.read(chatStreamingProvider(null).notifier).setState(true);
    container
        .read(chatStreamingTextProvider(null).notifier)
        .setState('Chunk completo em um frame');

    await tester.pump();

    // Streaming text carries a trailing caret glyph to signal generation.
    expect(
      find.textContaining('Chunk completo em um frame'),
      findsOneWidget,
    );
  });

  testWidgets('empty state shows short capability labels, not long prompts', (
    tester,
  ) async {
    await tester.pumpWidget(_app(ChatEmptyState(onPromptSelected: (_) {})));
    await tester.pumpAndSettle();

    final l10n = await AppLocalizations.delegate.load(const Locale('en'));

    // Capability labels are the short, capability-framed strings.
    expect(find.text(l10n.aiWelcomeSuggestCreateList), findsOneWidget);
    expect(find.text(l10n.aiWelcomeSuggestBarbecue), findsOneWidget);
    expect(find.text(l10n.aiWelcomeSuggestSave), findsOneWidget);

    // The long prompt text must never be rendered as a chip label (the bug
    // that caused ellipsis truncation on device).
    expect(find.text(l10n.aiWelcomeSuggestCreateListPrompt), findsNothing);
    expect(find.text(l10n.aiWelcomeSuggestSavePrompt), findsNothing);

    // No-name greeting when no display name is set.
    expect(find.text(l10n.chatEmptyGreetingNoName), findsOneWidget);
  });

  testWidgets('tapping a capability sends the full prompt, not the label', (
    tester,
  ) async {
    String? sent;
    await tester.pumpWidget(
      _app(ChatEmptyState(onPromptSelected: (p) => sent = p)),
    );
    await tester.pumpAndSettle();

    final l10n = await AppLocalizations.delegate.load(const Locale('en'));
    await tester.tap(find.text(l10n.aiWelcomeSuggestBarbecue));
    await tester.pump();

    expect(sent, l10n.aiWelcomeSuggestBarbecuePrompt);
  });

  testWidgets('thinking indicator announces generation as a live region', (
    tester,
  ) async {
    final handle = tester.ensureSemantics();
    await tester.pumpWidget(_app(const ThinkingIndicator()));
    await tester.pump();

    final l10n = await AppLocalizations.delegate.load(const Locale('en'));
    final semantics = tester.getSemantics(find.byType(ThinkingIndicator));

    // Single live-region announcement with the generic generating label.
    expect(semantics.label, l10n.aiGeneratingResponse);
    expect(semantics.hasFlag(SemanticsFlag.isLiveRegion), isTrue);

    // Dispose the indicator so the repeating typing-dots animation timer is
    // cancelled, then flush the zero-duration teardown timers before the test
    // ends.
    await tester.pumpWidget(_app(const SizedBox.shrink()));
    await tester.pumpAndSettle();
    handle.dispose();
  });

  testWidgets('assistant markdown growth is smoothly anchored', (tester) async {
    await tester.pumpWidget(
      _app(
        ChatBubble(
          message: ChatMessage(role: 'assistant', content: 'Resposta pronta'),
        ),
      ),
    );

    final animatedSize = tester.widget<AnimatedSize>(
      find.ancestor(
        of: find.text('Resposta pronta'),
        matching: find.byType(AnimatedSize),
      ),
    );

    expect(animatedSize.duration, const Duration(milliseconds: 200));
    expect(animatedSize.curve, Curves.easeOutQuad);
    expect(animatedSize.alignment, Alignment.topLeft);
  });
}
