import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user_profile.dart';
import 'firestore_service_provider.dart';

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
