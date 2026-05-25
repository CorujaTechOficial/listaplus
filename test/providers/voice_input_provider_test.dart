import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/settings/providers/settings_providers.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/app/ai/providers/ai_config_providers.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_ai_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('VoiceInputProvider', () {
    late ProviderContainer container;
    late FakeStorageBackend fakeStorage;
    late FakeAiService fakeAi;

    setUp(() {
      fakeStorage = FakeStorageBackend();
      fakeAi = FakeAiService();
      container = ProviderContainer(
        overrides: [
          firestoreServiceProvider.overrideWithValue(fakeStorage),
          aiServiceProvider.overrideWithValue(fakeAi),
        ],
      );
    });

    tearDown(() {
      container.dispose();
    });

    test('initial state is idle', () {
      final state = container.read(voiceInputProvider);
      expect(state, VoiceInputState.idle);
      expect(container.read(voiceInputProvider.notifier).recorderController, isNull);
    });

    test('startRecording changes state to recording', () async {
      final result = await container.read(voiceInputProvider.notifier).startRecording();
      expect(result, isTrue);
      expect(container.read(voiceInputProvider), VoiceInputState.recording);

      // Subsequent calls in recording state should also return true
      final secondResult = await container.read(voiceInputProvider.notifier).startRecording();
      expect(secondResult, isTrue);
    });

    test('stopRecordingAndSend returns early if not recording', () async {
      await container.read(voiceInputProvider.notifier).stopRecordingAndSend('list1');
      expect(container.read(voiceInputProvider), VoiceInputState.idle);
    });

    test('stopRecordingAndSend sends voice message and resets to idle', () async {
      container.listen(chatSessionProvider('list1'), (_, __) {});
      await container.read(chatSessionProvider('list1').future);

      await container.read(voiceInputProvider.notifier).startRecording();
      expect(container.read(voiceInputProvider), VoiceInputState.recording);

      await container.read(voiceInputProvider.notifier).stopRecordingAndSend('list1');
      expect(container.read(voiceInputProvider), VoiceInputState.idle);

      final chatMessages = container.read(chatSessionProvider('list1')).value!;
      expect(chatMessages.isNotEmpty, isTrue);
      expect(chatMessages.first.content, '🎙️ Mensagem de voz');
    });

    test('cancelRecording returns early if not recording', () {
      container.read(voiceInputProvider.notifier).cancelRecording();
      expect(container.read(voiceInputProvider), VoiceInputState.idle);
    });

    test('cancelRecording resets to idle', () async {
      await container.read(voiceInputProvider.notifier).startRecording();
      expect(container.read(voiceInputProvider), VoiceInputState.recording);

      container.read(voiceInputProvider.notifier).cancelRecording();
      expect(container.read(voiceInputProvider), VoiceInputState.idle);
    });
  });
}
