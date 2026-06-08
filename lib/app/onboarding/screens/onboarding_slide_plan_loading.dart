import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlidePlanLoading extends StatefulWidget {
  const OnboardingSlidePlanLoading({super.key, required this.onFinished});

  final VoidCallback onFinished;

  @override
  State<OnboardingSlidePlanLoading> createState() =>
      _OnboardingSlidePlanLoadingState();
}

class _OnboardingSlidePlanLoadingState
    extends State<OnboardingSlidePlanLoading>
    with SingleTickerProviderStateMixin {
  late final AnimationController _progressController;
  int _stepIndex = 0;
  Timer? _stepTimer;

  @override
  void initState() {
    super.initState();
    _progressController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000),
    );

    _progressController.addStatusListener((status) {
      if (status == AnimationStatus.completed && mounted) {
        widget.onFinished();
      }
    });

    _progressController.forward();

    _stepTimer = Timer.periodic(const Duration(milliseconds: 1300), (t) {
      if (!mounted) {
        t.cancel();
        return;
      }
      setState(() {
        _stepIndex = (_stepIndex + 1).clamp(0, 2);
      });
      if (_stepIndex == 2) {
        t.cancel();
      }
    });
  }

  @override
  void dispose() {
    _progressController.dispose();
    _stepTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    final steps = [
      l10n.onboardingLoadingStep1,
      l10n.onboardingLoadingStep2,
      l10n.onboardingLoadingStep3,
    ];

    final stats = [
      (value: '\u2b50 4,8', label: l10n.onboardingLoadingStat1Label),
      (value: '12.847', label: l10n.onboardingLoadingStat2Label),
      (value: '94%', label: l10n.onboardingLoadingStat3Label),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.xl),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/kipi/kipi_welcome.png',
                height: 80,
                filterQuality: FilterQuality.high,
              ).animate().fadeIn(duration: 400.ms),
              const SizedBox(height: Spacing.xl),
              Text(
                l10n.onboardingLoadingTitle,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Spacing.lg),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                child: Text(
                  steps[_stepIndex],
                  key: ValueKey(_stepIndex),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: Spacing.lg),
              AnimatedBuilder(
                animation: _progressController,
                builder: (context, _) => ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(
                    value: _progressController.value,
                    minHeight: 8,
                    backgroundColor:
                        theme.colorScheme.surfaceContainerHighest,
                  ),
                ),
              ),
              const SizedBox(height: Spacing.xl),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: stats.asMap().entries.map((entry) {
                  return _StatCard(
                    value: entry.value.value,
                    label: entry.value.label,
                    delay: (entry.key * 200).ms,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.value,
    required this.label,
    required this.delay,
  });

  final String value;
  final String label;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text(
          value,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w900,
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    )
        .animate()
        .fadeIn(delay: delay + 500.ms, duration: 400.ms)
        .slideY(begin: 0.3, end: 0, delay: delay + 500.ms, duration: 400.ms);
  }
}
