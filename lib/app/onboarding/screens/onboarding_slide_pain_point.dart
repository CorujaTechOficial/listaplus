import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import '../providers/onboarding_data_provider.dart';

// Pain key → goal key used by the paywall headline personalizer
const _painToGoal = {
  'forget': 'neverForget',
  'family': 'family',
  'overspend': 'saveMoney',
  'repeat': 'faster',
};

class OnboardingSlidePainPoint extends ConsumerStatefulWidget {
  const OnboardingSlidePainPoint({super.key, required this.onNext});
  final VoidCallback onNext;

  @override
  ConsumerState<OnboardingSlidePainPoint> createState() =>
      _OnboardingSlidePainPointState();
}

class _OnboardingSlidePainPointState
    extends ConsumerState<OnboardingSlidePainPoint> {
  final Set<String> _selected = {};

  void _toggle(String painKey) {
    setState(() {
      if (_selected.contains(painKey)) {
        _selected.remove(painKey);
      } else {
        _selected.add(painKey);
      }
    });
    final goals = _selected.map((k) => _painToGoal[k] ?? k).toList();
    ref.read(onboardingDataProvider.notifier).updateGoals(goals);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    final pains = [
      (
        key: 'forget',
        emoji: '😤',
        label: l10n.onboardingPainForget,
        color: Colors.orange,
      ),
      (
        key: 'family',
        emoji: '👨‍👩‍👧',
        label: l10n.onboardingPainFamily,
        color: Colors.blue,
      ),
      (
        key: 'overspend',
        emoji: '💸',
        label: l10n.onboardingPainOverspend,
        color: Colors.red,
      ),
      (
        key: 'repeat',
        emoji: '🔄',
        label: l10n.onboardingPainRepeat,
        color: Colors.purple,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  Spacing.lg,
                  Spacing.xl,
                  Spacing.lg,
                  Spacing.sm,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.onboardingPainTitle,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w900,
                        height: 1.2,
                      ),
                    )
                        .animate()
                        .fadeIn(duration: 400.ms)
                        .slideY(begin: 0.2, end: 0),
                    const SizedBox(height: Spacing.xs),
                    Text(
                      l10n.onboardingPainSubtitle,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ).animate().fadeIn(delay: 100.ms, duration: 400.ms),
                    const SizedBox(height: Spacing.xl),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: Spacing.md,
                        crossAxisSpacing: Spacing.md,
                        childAspectRatio: 1.05,
                        physics: const NeverScrollableScrollPhysics(),
                        children: pains.asMap().entries.map((entry) {
                          final i = entry.key;
                          final p = entry.value;
                          final isSelected = _selected.contains(p.key);

                          return _PainCard(
                            emoji: p.emoji,
                            label: p.label,
                            accentColor: p.color,
                            isSelected: isSelected,
                            onTap: () => _toggle(p.key),
                            delay: (150 + i * 80).ms,
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Spacing.lg),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: _selected.isNotEmpty ? widget.onNext : null,
                  child: Text(l10n.onboardingPainCta),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PainCard extends StatelessWidget {
  const _PainCard({
    required this.emoji,
    required this.label,
    required this.accentColor,
    required this.isSelected,
    required this.onTap,
    required this.delay,
  });

  final String emoji;
  final String label;
  final Color accentColor;
  final bool isSelected;
  final VoidCallback onTap;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        decoration: BoxDecoration(
          color: isSelected
              ? accentColor.withAlpha(25)
              : theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? accentColor : theme.colorScheme.outlineVariant,
            width: isSelected ? 2.5 : 1.5,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: accentColor.withAlpha(40),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ]
              : null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(Spacing.md),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                emoji,
                style: TextStyle(
                  fontSize: isSelected ? 38 : 34,
                ),
              ),
              const SizedBox(height: Spacing.sm),
              Text(
                label,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight:
                      isSelected ? FontWeight.w800 : FontWeight.w600,
                  color: isSelected
                      ? accentColor.withAlpha(230)
                      : theme.colorScheme.onSurface,
                  height: 1.3,
                ),
              ),
              if (isSelected)
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Icon(
                    Icons.check_circle_rounded,
                    color: accentColor,
                    size: 16,
                  ).animate().scale(
                        begin: const Offset(0, 0), // ignore: prefer_int_literals
                        duration: 200.ms,
                        curve: Curves.elasticOut,
                      ),
                ),
            ],
          ),
        ),
      )
          .animate(delay: delay)
          .fadeIn(duration: 350.ms)
          .scale(begin: const Offset(0.88, 0.88), duration: 350.ms),
    );
  }
}
