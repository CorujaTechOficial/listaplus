import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlidePlanLoading extends StatefulWidget {
  const OnboardingSlidePlanLoading({
    super.key,
    required this.active,
    required this.onFinished,
  });

  /// Só inicia a sequência quando a página fica visível.
  final bool active;
  final VoidCallback onFinished;

  @override
  State<OnboardingSlidePlanLoading> createState() =>
      _OnboardingSlidePlanLoadingState();
}

class _OnboardingSlidePlanLoadingState
    extends State<OnboardingSlidePlanLoading> {
  int _completedSteps = 0;
  Timer? _timer;
  static const _stepInterval = Duration(milliseconds: 900);

  @override
  void initState() {
    super.initState();
    if (widget.active) {
      _start();
    }
  }

  @override
  void didUpdateWidget(covariant OnboardingSlidePlanLoading oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.active && !oldWidget.active) {
      _start();
    }
  }

  void _start() {
    _timer?.cancel();
    setState(() => _completedSteps = 0);
    _timer = Timer.periodic(_stepInterval, (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      setState(() => _completedSteps++);
      if (_completedSteps >= 4) {
        timer.cancel();
        Future<void>.delayed(DurationTokens.normal, () {
          if (mounted) {
            widget.onFinished();
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final steps = [
      l10n.obLoadingStepProfile,
      l10n.obLoadingStepHabits,
      l10n.obLoadingStepSavings,
      l10n.obLoadingStepLists,
    ];
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 72,
                height: 72,
                child: CircularProgressIndicator(
                  strokeWidth: 6,
                  value: widget.active ? null : 0,
                ),
              ),
            ),
            const SizedBox(height: Spacing.xl),
            Center(
              child: Text(
                l10n.obLoadingTitle,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: Spacing.xl),
            for (final (index, step) in steps.indexed)
              Padding(
                padding: const EdgeInsets.only(bottom: Spacing.sm),
                child: Row(
                  children: [
                    AnimatedSwitcher(
                      duration: DurationTokens.fast,
                      child:
                          index < _completedSteps
                              ? Icon(
                                Icons.check_circle_rounded,
                                key: ValueKey('done_$index'),
                                color: theme.colorScheme.primary,
                              )
                              : Icon(
                                Icons.circle_outlined,
                                key: ValueKey('pending_$index'),
                                color: theme.colorScheme.outlineVariant,
                              ),
                    ),
                    const SizedBox(width: Spacing.sm),
                    Expanded(
                      child: Text(step, style: theme.textTheme.bodyLarge),
                    ),
                  ],
                ),
              ).animate(delay: Duration(milliseconds: 100 * index)).fadeIn(),
          ],
        ),
      ),
    );
  }
}
