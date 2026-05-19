import 'package:flutter/material.dart';
// coverage:ignore-start
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../providers/ad_service_provider.dart';
import '../theme/tokens.dart';

class BannerAdWidget extends ConsumerStatefulWidget {
  const BannerAdWidget({super.key});

  @override
  ConsumerState<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends ConsumerState<BannerAdWidget> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    _tryLoadAd();
  }

  void _tryLoadAd() {
    final adService = ref.read(adServiceProvider);
    if (!adService.isAvailable) {
      return;
    }
    final adUnitId = adService.bannerAdUnitId;

    _bannerAd = BannerAd(
      adUnitId: adUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          if (mounted) {
            setState(() => _isLoaded = true);
          }
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
    )..load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final showAd = _isLoaded && _bannerAd != null;
    return AnimatedCrossFade(
      duration: DurationTokens.normal,
      crossFadeState: showAd ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      firstChild: const SizedBox(height: 50),
      secondChild: showAd
          ? Container(
              color: Theme.of(context).colorScheme.surface,
              child: Center(
                child: SizedBox(
                  width: _bannerAd!.size.width.toDouble(),
                  height: _bannerAd!.size.height.toDouble(),
                  child: AdWidget(ad: _bannerAd!),
                ),
              ),
            )
          : const SizedBox(height: 50),
    );
  }
}
// coverage:ignore-end
