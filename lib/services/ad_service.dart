abstract class AdService {
  Future<void> initialize();
  Future<bool> showRewardedAd();
  bool get isAdLoaded;
}
