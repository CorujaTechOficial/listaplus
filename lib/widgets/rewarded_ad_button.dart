import 'package:flutter/material.dart';
// coverage:ignore-start
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../providers/ad_service_provider.dart';
import '../providers/credits_provider.dart';
import '../theme/tokens.dart';

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
          const SnackBar(content: Text('Anúncios indisponíveis no momento.')),
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
              const SnackBar(content: Text('Erro ao carregar anúncio. Tente novamente.')),
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
            const SnackBar(content: Text('Erro ao exibir anúncio.')),
          );
        }
      },
    );

    ad.show(
      onUserEarnedReward: (ad, reward) {
        ref.read(creditsProvider.notifier).extendBy24h();
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('+24h de Premium!'),
              behavior: SnackBarBehavior.floating,
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
                    'Ganhe Premium grátis!',
                    style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Assista um vídeo e ganhe 24h de Premium',
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
              icon: _isLoading
                  ? SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: theme.colorScheme.onSecondaryContainer,
                      ),
                    )
                  : const Icon(Icons.play_circle_outline, size: 20),
              label: Text(_isLoading ? 'Carregando...' : 'Assistir'),
            ),
          ],
        ),
      ),
    );
  }
}
// coverage:ignore-end
