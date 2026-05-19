import 'package:flutter/material.dart';
// coverage:ignore-start
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../providers/ad_service_provider.dart';
import '../providers/credits_provider.dart';
import '../theme/tokens.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class RewardedAdButton extends ConsumerStatefulWidget {
  const RewardedAdButton({super.key});

  @override
  ConsumerState<RewardedAdButton> createState() => _RewardedAdButtonState();
}

class _RewardedAdButtonState extends ConsumerState<RewardedAdButton> {
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _loadAndShowAd() async {
    if (!ref.read(adServiceProvider).isAvailable) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.adsUnavailable)),
        );
      }
      return;
    }

    setState(() => _isLoading = true);

    final adUnitId = ref.read(adServiceProvider).rewardedAdUnitId;

    // ignore: unawaited_futures
    RewardedAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          setState(() => _isLoading = false);
          _showAd(ad);
        },
        onAdFailedToLoad: (error) {
          if (mounted) {
            setState(() => _isLoading = false);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(AppLocalizations.of(context)!.adLoadError)),
            );
          }
        },
      ),
    );
  }

  void _showAd(RewardedAd ad) {
    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        ad.dispose();
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(AppLocalizations.of(context)!.adDisplayError)),
          );
        }
      },
    );

    ad.show(
      onUserEarnedReward: (ad, reward) {
        ref.read(creditsProvider.notifier).extendBy24h();
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(AppLocalizations.of(context)!.premium24h),
              behavior: SnackBarBehavior.floating,
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.xs),
      child: Padding(
        padding: const EdgeInsets.all(Spacing.sm),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    l10n.earnPremium,
                    style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    l10n.watchAdDescription,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: Spacing.sm),
            FilledButton.tonalIcon(
              onPressed: _isLoading ? null : _loadAndShowAd,
              icon: AnimatedSwitcher(
                duration: DurationTokens.fast,
                transitionBuilder: (child, animation) => FadeTransition(opacity: animation, child: child),
                child: _isLoading
                    ? SizedBox(
                        key: const ValueKey('loading'),
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: theme.colorScheme.onSecondaryContainer,
                        ),
                      )
                    : const Icon(Icons.play_circle_outline, size: 20, key: ValueKey('play')),
              ),
              label: AnimatedSwitcher(
                duration: DurationTokens.fast,
                transitionBuilder: (child, animation) => FadeTransition(opacity: animation, child: child),
                child: Text(
                  _isLoading ? l10n.loading : l10n.watch,
                  key: ValueKey(_isLoading),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// coverage:ignore-end
