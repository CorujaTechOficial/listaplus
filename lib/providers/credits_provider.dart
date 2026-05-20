import 'package:riverpod_annotation/riverpod_annotation.dart';
// coverage:ignore-start
import 'firestore_service_provider.dart';

part 'credits_provider.g.dart';

@riverpod
class Credits extends _$Credits {
  @override
  Future<DateTime?> build() async {
    final storage = ref.watch(firestoreServiceProvider);
    final userData = await storage.getUserData();
    final premiumUntil = userData?['premiumUntil'] as String?;
    if (premiumUntil == null) {
      return null;
    }
    return DateTime.tryParse(premiumUntil);
  }

  Future<void> extendBy24h() async {
    final storage = ref.read(firestoreServiceProvider);
    await storage.extendPremiumBy24h();
    ref.invalidateSelf();
  }

  Future<int> getActiveDays() async {
    final until = await future;
    if (until == null) {
      return 0;
    }
    final now = DateTime.now();
    if (!until.isAfter(now)) {
      return 0;
    }
    return until.difference(now).inDays + 1;
  }
}
// coverage:ignore-end
