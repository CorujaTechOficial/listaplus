import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/core/providers/auth_provider.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/services/logger_service.dart';

final referralServiceProvider = Provider<ReferralService>((ref) {
  return ReferralService(ref);
});

class ReferralService {
  ReferralService(this._ref);

  final Ref _ref;

  Future<String> generateReferralLink() async {
    final user = _ref.read(authServiceProvider).currentUser;
    if (user == null) {
      throw Exception('Usuário não autenticado');
    }

    return 'https://kipilist-6547b.web.app/invite?ref=${user.uid}';
  }

  Future<void> processReferral(String referrerUid) async {
    final currentUser = _ref.read(authServiceProvider).currentUser;
    if (currentUser == null) {
      return;
    }
    if (currentUser.uid == referrerUid) {
      return;
    }

    final db = _ref.read(firestoreServiceProvider);
    if (db == null) {
      return;
    }

    // Check if this user already processed a referral to prevent abuse
    final userData = await db.getUserData();
    if (userData?['referralProcessed'] == true) {
      return;
    }

    try {
      await db.createReferralRewardRequest(
        referrerUid: referrerUid,
        refereeUid: currentUser.uid,
        days: 7,
      );

      await db.updateUserData(<String, dynamic>{
        'referralProcessed': true,
        'referredBy': referrerUid,
      });

      LoggerService.log(
        'Referral processed: $referrerUid -> ${currentUser.uid}',
        tag: 'Referral',
      );
    } on Object catch (e) {
      LoggerService.error(e, message: 'Error processing referral');
    }
  }
}
