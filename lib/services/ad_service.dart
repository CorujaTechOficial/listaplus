abstract class AdService {
  Future<void> initialize();
  String get bannerAdUnitId;
  String get rewardedAdUnitId;
  bool get isTestMode;
  bool get isAvailable;
}
