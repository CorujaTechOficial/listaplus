import 'dart:io';
// coverage:ignore-start
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'ad_service.dart';

class AdServiceImpl implements AdService {
  bool _initialized = false;

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
    return 'ca-app-pub-3940256099942544/6300978111';
  }

  @override
  String get rewardedAdUnitId {
    if (isTestMode) {
      if (Platform.isAndroid) {
        return 'ca-app-pub-3940256099942544/5224354917';
      }
      return 'ca-app-pub-3940256099942544/1712485313';
    }
    return 'ca-app-pub-3940256099942544/5224354917';
  }

  @override
  bool get isTestMode => true;

  @override
  bool get isAvailable => true;
}
// coverage:ignore-end
