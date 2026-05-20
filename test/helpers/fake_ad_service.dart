import 'package:shopping_list/services/ad_service.dart';

class FakeAdService implements AdService {
  @override
  Future<void> initialize() async {}

  @override
  String get bannerAdUnitId => 'ca-app-pub-3940256099942544/6300978111';

  @override
  String get rewardedAdUnitId => 'ca-app-pub-3940256099942544/5224354917';

  @override
  bool get isTestMode => true;

  @override
  bool get isAvailable => false;

  @override
  Future<void> showRewardedAd({
    required void Function() onUserEarnedReward,
    required void Function() onAdFailedToLoad,
    required void Function() onAdClosed,
  }) async {
    onUserEarnedReward();
    onAdClosed();
  }
}
