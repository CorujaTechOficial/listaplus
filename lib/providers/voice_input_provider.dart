import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../utils/test_utils.dart';
import 'chat_provider.dart';

part 'voice_input_provider.g.dart';

enum VoiceInputState { idle, recording, processing, error }

@riverpod
class VoiceInput extends _$VoiceInput {
  RecorderController? _recorderController;

  RecorderController? get recorderController => _recorderController;

  @override
  VoiceInputState build() {
    if (!isTestMode) {
      _recorderController = RecorderController();
    }
    
    ref.onDispose(() {
      _recorderController?.dispose();
    });

    return VoiceInputState.idle;
  }

  Future<bool> startRecording() async {
    if (state == VoiceInputState.recording) {
      return true;
    }

    try {
      if (isTestMode) {
        state = VoiceInputState.recording;
        return true;
      }

      final status = await Permission.microphone.request();
      if (!status.isGranted) {
        state = VoiceInputState.error;
        return false;
      }

      final directory = await getTemporaryDirectory();
      final path = '${directory.path}/voice_input_${DateTime.now().millisecondsSinceEpoch}.m4a';

      state = VoiceInputState.recording;
      await _recorderController?.record(
        path: path,
        recorderSettings: const RecorderSettings(
          androidEncoderSettings: AndroidEncoderSettings(
            androidEncoder: AndroidEncoder.aacLc,
          ),
          iosEncoderSettings: IosEncoderSetting(
            iosEncoder: IosEncoder.kAudioFormatMPEG4AAC,
          ),
          sampleRate: 16000,
        ),
      );
      return true;
    } on Exception catch (e) {
      debugPrint('[VoiceInput] Error starting recording: $e');
      state = VoiceInputState.error;
      return false;
    }
  }

  Future<void> stopRecordingAndSend(String? listId) async {
    if (state != VoiceInputState.recording) {
      return;
    }

    state = VoiceInputState.processing;

    try {
      List<int> audioBytes;
      if (isTestMode) {
        audioBytes = [0, 1, 2, 3];
      } else {
        final path = await _recorderController?.stop();
        if (path == null) {
          state = VoiceInputState.error;
          return;
        }
        final file = File(path);
        if (!await file.exists()) {
          state = VoiceInputState.error;
          return;
        }
        audioBytes = await file.readAsBytes();
        try {
          await file.delete();
        } on Exception {
          // ignore cleanup errors
        }
      }

      await ref.read(chatSessionProvider(listId).notifier).sendVoiceMessage(audioBytes, 'm4a');
      state = VoiceInputState.idle;
    } on Exception catch (e) {
      debugPrint('[VoiceInput] Error stopping/sending recording: $e');
      state = VoiceInputState.error;
    }
  }

  void cancelRecording() async {
    if (state != VoiceInputState.recording) {
      return;
    }

    if (isTestMode) {
      state = VoiceInputState.idle;
      return;
    }

    try {
      final path = await _recorderController?.stop();
      if (path != null) {
        final file = File(path);
        if (await file.exists()) {
          await file.delete();
        }
      }
    } on Exception {
      // ignore
    }

    state = VoiceInputState.idle;
  }
}
