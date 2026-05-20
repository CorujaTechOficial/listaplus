import 'dart:io';
// coverage:ignore-start
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'ad_service.dart';

class AdServiceImpl implements AdService {
  bool _initialized = false;

  static const String _bannerAndroid = String.fromEnvironment(
    'ADMOB_BANNER_ANDROID',
    defaultValue: 'ca-app-pub-3940256099942544/6300978111',
  );
  static const String _bannerIOS = String.fromEnvironment(
    'ADMOB_BANNER_IOS',
    defaultValue: 'ca-app-pub-3940256099942544/2934735716',
  );
  static const String _rewardedAndroid = String.fromEnvironment(
    'ADMOB_REWARDED_ANDROID',
    defaultValue: 'ca-app-pub-3940256099942544/5224354917',
  );
  static const String _rewardedIOS = String.fromEnvironment(
    'ADMOB_REWARDED_IOS',
    defaultValue: 'ca-app-pub-3940256099942544/1712485313',
  );
  static const bool _isTestMode = bool.fromEnvironment(
    'ADMOB_IS_TEST',
    defaultValue: true,
  );

  @override
  Future<void> initialize() async {
    if (_initialized) {
      return;
    }
    await MobileAds.instance.initialize();
    _initialized = true;
  }

  @override
  String get bannerAdUnitId {
    if (isTestMode) {
      if (Platform.isAndroid) {
        return 'ca-app-pub-3940256099942544/6300978111';
      }
      return 'ca-app-pub-3940256099942544/2934735716';
    }
    if (Platform.isAndroid) {
      return _bannerAndroid;
    }
    return _bannerIOS;
  }

  @override
  String get rewardedAdUnitId {
    if (isTestMode) {
      if (Platform.isAndroid) {
        return 'ca-app-pub-3940256099942544/5224354917';
      }
      return 'ca-app-pub-3940256099942544/1712485313';
    }
    if (Platform.isAndroid) {
      return _rewardedAndroid;
    }
    return _rewardedIOS;
  }

  @override
  bool get isTestMode => _isTestMode;

  @override
  bool get isAvailable => _initialized;

  @override
  Future<void> showRewardedAd({
    required void Function() onUserEarnedReward,
    required void Function() onAdFailedToLoad,
    required void Function() onAdClosed,
  }) async {
    await RewardedAd.load(
      adUnitId: rewardedAdUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (RewardedAd ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (RewardedAd ad) {
              ad.dispose();
              onAdClosed();
            },
            onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
              ad.dispose();
              onAdFailedToLoad();
            },
          );
          ad.show(
            onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
              onUserEarnedReward();
            },
          );
        },
        onAdFailedToLoad: (LoadAdError error) {
          onAdFailedToLoad();
        },
      ),
    );
  }
}
// coverage:ignore-end
