import 'package:riverpod_annotation/riverpod_annotation.dart';
// coverage:ignore-start
import 'firestore_service_provider.dart';
import 'premium_provider.dart';

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
    final userData = await storage.getUserData();
    final currentStr = userData?['premiumUntil'] as String?;
    final now = DateTime.now();

    var current = now;
    if (currentStr != null) {
      final parsed = DateTime.tryParse(currentStr) ?? now;
      if (parsed.isAfter(now)) {
        current = parsed;
      }
    }

    final maxUntil = now.add(const Duration(days: 7));
    final newUntil = current.add(const Duration(hours: 24));
    final capped = newUntil.isAfter(maxUntil) ? maxUntil : newUntil;

    await storage.updateUserData({'premiumUntil': capped.toIso8601String()});
    ref.invalidateSelf();
    ref.invalidate(premiumProvider);
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
