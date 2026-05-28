import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/models/user_profile.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/utils/test_utils.dart';

part 'settings_providers.g.dart';

final userProfileProvider = FutureProvider.autoDispose<UserProfile>((ref) async {
  final backend = ref.watch(firestoreServiceProvider);
  final userData = await backend.getUserData();
  return UserProfile.fromUserDoc(userData);
});

final userProfileServiceProvider = Provider.autoDispose<UserProfileService>((ref) {
  return UserProfileService(ref);
});

class UserProfileService {
  UserProfileService(this._ref);

  final Ref _ref;

  Future<void> updateProfile(UserProfile profile) async {
    final backend = _ref.read(firestoreServiceProvider);
    final prefs = profile.toPreferencesMap();
    for (final entry in prefs.entries) {
      await backend.updatePreference(entry.key, entry.value);
    }
    _ref.invalidate(userProfileProvider);
  }

  Future<void> removeField(String key) async {
    final backend = _ref.read(firestoreServiceProvider);
    await backend.deletePreference(key);
    _ref.invalidate(userProfileProvider);
  }
}

@riverpod
class MonthlyBudget extends _$MonthlyBudget {
  @override
  Future<double?> build() async {
    final service = ref.watch(firestoreServiceProvider);
    final data = await service.getUserData();
    return (data?['monthlyBudget'] as num?)?.toDouble();
  }

  Future<void> setBudget(double? budget) async {
    final service = ref.read(firestoreServiceProvider);
    final previous = state.value;
    state = AsyncValue.data(budget);
    try {
      await service.updateUserData({'monthlyBudget': budget});
    } on Exception {
      state = AsyncValue.data(previous);
      rethrow;
    }
  }
}

class UserStats {
  UserStats({
    this.totalItemsBought = 0,
    this.totalSavings = 0,
    this.currentStreak = 0,
    this.lastPurchaseDate,
  });

  factory UserStats.fromJson(Map<String, dynamic> json) => UserStats(
        totalItemsBought: (json['totalItemsBought'] as num?)?.toInt() ?? 0,
        totalSavings: (json['totalSavings'] as num?)?.toDouble() ?? 0.0,
        currentStreak: (json['currentStreak'] as num?)?.toInt() ?? 0,
        lastPurchaseDate: json['lastPurchaseDate'] != null
            ? DateTime.parse(json['lastPurchaseDate'] as String)
            : null,
      );

  final int totalItemsBought;
  final double totalSavings;
  final int currentStreak;
  final DateTime? lastPurchaseDate;

  UserStats copyWith({
    int? totalItemsBought,
    double? totalSavings,
    int? currentStreak,
    DateTime? lastPurchaseDate,
  }) {
    return UserStats(
      totalItemsBought: totalItemsBought ?? this.totalItemsBought,
      totalSavings: totalSavings ?? this.totalSavings,
      currentStreak: currentStreak ?? this.currentStreak,
      lastPurchaseDate: lastPurchaseDate ?? this.lastPurchaseDate,
    );
  }

  Map<String, dynamic> toJson() => {
        'totalItemsBought': totalItemsBought,
        'totalSavings': totalSavings,
        'currentStreak': currentStreak,
        'lastPurchaseDate': lastPurchaseDate?.toIso8601String(),
      };
}

@riverpod
class UserStatsNotifier extends _$UserStatsNotifier {
  @override
  UserStats build() {
    _loadStats();
    return UserStats();
  }

  Future<void> _loadStats() async {
    final service = ref.read(firestoreServiceProvider);
    final data = await service.getUserData();
    if (data != null && data['userStats'] != null) {
      state = UserStats.fromJson(data['userStats'] as Map<String, dynamic>);
    }
  }

  Future<void> recordPurchase({required int itemCount, double savings = 0}) async {
    final now = DateTime.now();
    int newStreak = state.currentStreak;

    if (state.lastPurchaseDate != null) {
      final last = state.lastPurchaseDate!;
      final todayDate = DateTime(now.year, now.month, now.day);
      final lastDate = DateTime(last.year, last.month, last.day);
      final diffDays = todayDate.difference(lastDate).inDays;
      if (diffDays == 0) {
        newStreak = state.currentStreak;
      } else if (diffDays == 1) {
        newStreak++;
      } else if (diffDays > 1) {
        newStreak = 1;
      }
    } else {
      newStreak = 1;
    }

    state = state.copyWith(
      totalItemsBought: state.totalItemsBought + itemCount,
      totalSavings: state.totalSavings + savings,
      currentStreak: newStreak,
      lastPurchaseDate: now,
    );

    final service = ref.read(firestoreServiceProvider);
    await service.updateUserData({'userStats': state.toJson()});
  }
}

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

      await ref.read(chatSessionProvider(listId, ref.read(activeChatSessionIdProvider(listId))).notifier).sendVoiceMessage(audioBytes, 'm4a');
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
