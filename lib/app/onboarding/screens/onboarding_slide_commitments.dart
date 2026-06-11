import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import '../providers/onboarding_data_provider.dart';

class OnboardingSlideCommitments extends ConsumerStatefulWidget {
  const OnboardingSlideCommitments({super.key, required this.onNext});

  final VoidCallback onNext;

  @override
  ConsumerState<OnboardingSlideCommitments> createState() =>
      _OnboardingSlideCommitmentsState();
}

class _OnboardingSlideCommitmentsState
    extends ConsumerState<OnboardingSlideCommitments> {
  final Set<String> _selected = {};

  void _toggle(String key) {
    setState(() {
      if (_selected.contains(key)) {
        _selected.remove(key);
      }
      else {
        _selected.add(key);
      }
    });
    ref.read(onboardingDataProvider.notifier).updateGoals(_selected.toList());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    final goals = [
      (key: 'saveMoney', label: l10n.onboardingGoalSaveMoney),
      (key: 'neverForget', label: l10n.onboardingGoalNeverForget),
      (key: 'faster', label: l10n.onboardingGoalFaster),
      (key: 'family', label: l10n.onboardingGoalFamily),
      (key: 'recipes', label: l10n.onboardingGoalRecipes),
      (key: 'pantry', label: l10n.onboardingGoalPantry),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: Spacing.lg),
              Text(
                l10n.onboardingCommitmentsTitle,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ).animate().fadeIn(duration: 400.ms).slideY(begin: 0.2, end: 0),
              const SizedBox(height: Spacing.xs),
              Text(
                l10n.onboardingCommitmentsSubtitle,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ).animate().fadeIn(delay: 100.ms, duration: 400.ms),
              const SizedBox(height: Spacing.xl),
              Expanded(
                child: Wrap(
                  spacing: Spacing.sm,
                  runSpacing: Spacing.sm,
                  children: goals.asMap().entries.map((entry) {
                    final key = entry.value.key;
                    final label = entry.value.label;
                    final isSelected = _selected.contains(key);
                    return FilterChip(
                      label: Text(
                        label,
                        style: TextStyle(
                          fontWeight: isSelected
                              ? FontWeight.w700
                              : FontWeight.normal,
                        ),
                      ),
                      selected: isSelected,
                      onSelected: (_) => _toggle(key),
                      selectedColor: theme.colorScheme.primaryContainer,
                      checkmarkColor: theme.colorScheme.primary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: Spacing.sm,
                        vertical: Spacing.xs,
                      ),
                    )
                        .animate()
                        .fadeIn(
                          delay: (200 + entry.key * 60).ms,
                          duration: 300.ms,
                        )
                        .scale(
                          begin: const Offset(0.9, 0.9),
                          delay: (200 + entry.key * 60).ms,
                          duration: 300.ms,
                        );
                  }).toList(),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: _selected.isNotEmpty ? widget.onNext : null,
                  child: Text(l10n.onboardingCommitmentsCta),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
