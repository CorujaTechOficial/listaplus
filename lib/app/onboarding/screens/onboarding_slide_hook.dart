import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class OnboardingSlideHook extends StatefulWidget {
  const OnboardingSlideHook({super.key, required this.onFinished});

  final VoidCallback onFinished;

  @override
  State<OnboardingSlideHook> createState() => _OnboardingSlideHookState();
}

class _OnboardingSlideHookState extends State<OnboardingSlideHook> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context)!;

    final items = [
      ('🥩', l10n.onboardingHookItem1),
      ('🧀', l10n.onboardingHookItem2),
      ('🍅', l10n.onboardingHookItem3),
    ];

    return Scaffold(
      body: Stack(
        children: [
          // Softer gradient: primary surface tint at top fading to scaffold
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.0, 1.0],
                  colors: [
                    colorScheme.primary,
                    colorScheme.primaryContainer,
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(Spacing.xl),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/kipi/kipi_welcome.png',
                    height: 120,
                    filterQuality: FilterQuality.high,
                  )
                      .animate()
                      .fadeIn(duration: DurationTokens.slow)
                      .scale(begin: const Offset(0.8, 0.8)),
                  const SizedBox(height: Spacing.lg),
                  Text(
                    l10n.onboardingHookHeadline,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w900,
                      color: colorScheme.onPrimary,
                      height: 1.2,
                    ),
                  )
                      .animate()
                      .fadeIn(delay: DurationTokens.normal, duration: DurationTokens.slow)
                      .slideY(begin: 0.2, end: 0, curve: Curves.easeOutCubic),
                  const SizedBox(height: Spacing.xl),
                  // Demo list panel with staggered item entrance
                  Container(
                    padding: const EdgeInsets.all(Spacing.md),
                    decoration: BoxDecoration(
                      color: colorScheme.onPrimary.withAlpha(30),
                      borderRadius: BorderRadius.circular(RadiusTokens.lg),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: items.asMap().entries.map((entry) {
                        final delay = Duration(
                          milliseconds: DurationTokens.extraSlow.inMilliseconds +
                              entry.key * DurationTokens.normal.inMilliseconds,
                        );
                        final (emoji, label) = entry.value;
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: Spacing.xs,
                          ),
                          child: Row(
                            children: [
                              Text(emoji, style: const TextStyle(fontSize: 18)),
                              const SizedBox(width: Spacing.sm),
                              Text(
                                label,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.onPrimary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              Icon(
                                PhosphorIconsFill.checkCircle,
                                color: colorScheme.onPrimary.withAlpha(200),
                                size: 18,
                                semanticLabel: l10n.checkItemTooltip,
                              ),
                            ],
                          ),
                        )
                            .animate()
                            .fadeIn(delay: delay, duration: DurationTokens.normal)
                            .slideX(begin: -0.15, end: 0, curve: Curves.easeOutCubic);
                      }).toList(),
                    ),
                  )
                      .animate()
                      .fadeIn(delay: DurationTokens.slow, duration: DurationTokens.normal),
                  const SizedBox(height: Spacing.xl),
                  // Continue button to let the user proceed at their own pace
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: FilledButton(
                      onPressed: widget.onFinished,
                      style: FilledButton.styleFrom(
                        backgroundColor: colorScheme.onPrimary,
                        foregroundColor: colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(RadiusTokens.lg),
                        ),
                      ),
                      child: Text(
                        l10n.onboardingHookContinue,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                  )
                      .animate()
                      .fadeIn(delay: DurationTokens.ambient, duration: DurationTokens.normal)
                      .slideY(begin: 0.2, end: 0, curve: Curves.easeOutCubic),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
