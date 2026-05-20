abstract class AdService {
  Future<void> initialize();
  String get bannerAdUnitId;
  String get rewardedAdUnitId;
  bool get isTestMode;
  bool get isAvailable;
  Future<void> showRewardedAd({
    required void Function() onUserEarnedReward,
    required void Function() onAdFailedToLoad,
    required void Function() onAdClosed,
  });
}
