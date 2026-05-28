import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'ad_service.dart';

class AdServiceImpl implements AdService {
  RewardedAd? _rewardedAd;
  bool _isAdLoaded = false;
  bool _isInitializing = false;

  @override
  bool get isAdLoaded => _isAdLoaded;

  @override
  Future<void> initialize() async {
    if (_isInitializing || _isAdLoaded) {
      return;
    }
    _isInitializing = true;
    
    try {
      await MobileAds.instance.initialize();
      await _loadRewardedAd();
    } on Object catch (e) {
      debugPrint('[AdService] Error initializing: $e');
    } finally {
      _isInitializing = false;
    }
  }

  Future<void> _loadRewardedAd() async {
    // Test ID for Android Rewarded Ad
    const adUnitId = kDebugMode 
        ? 'ca-app-pub-3940256099942544/5224354917' 
        : 'ca-app-pub-3940256099942544/5224354917'; // TODO: Replace with real ID

    await RewardedAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          debugPrint('[AdService] RewardedAd loaded.');
          _rewardedAd = ad;
          _isAdLoaded = true;
        },
        onAdFailedToLoad: (error) {
          debugPrint('[AdService] RewardedAd failed to load: $error');
          _isAdLoaded = false;
          _rewardedAd = null;
        },
      ),
    );
  }

  @override
  Future<bool> showRewardedAd() async {
    if (!_isAdLoaded || _rewardedAd == null) {
      debugPrint('[AdService] Ad not loaded. Attempting to load...');
      await _loadRewardedAd();
      if (!_isAdLoaded || _rewardedAd == null) {
        return false;
      }
    }

    final completer = Completer<bool>();
    
    _rewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        debugPrint('[AdService] Ad dismissed.');
        ad.dispose();
        _isAdLoaded = false;
        _rewardedAd = null;
        unawaited(_loadRewardedAd()); // Pre-load next
        if (!completer.isCompleted) {
          completer.complete(false);
        }
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        debugPrint('[AdService] Ad failed to show: $error');
        ad.dispose();
        _isAdLoaded = false;
        _rewardedAd = null;
        unawaited(_loadRewardedAd());
        if (!completer.isCompleted) {
          completer.complete(false);
        }
      },
    );

    await _rewardedAd!.show(onUserEarnedReward: (ad, reward) {
      debugPrint('[AdService] User earned reward: ${reward.amount} ${reward.type}');
      if (!completer.isCompleted) {
        completer.complete(true);
      }
    });

    return completer.future;
  }
}
