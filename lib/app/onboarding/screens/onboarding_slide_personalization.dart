import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import '../providers/onboarding_data_provider.dart';

class OnboardingSlidePersonalization extends ConsumerStatefulWidget {
  const OnboardingSlidePersonalization({super.key, this.onNext});

  final VoidCallback? onNext;

  @override
  ConsumerState<OnboardingSlidePersonalization> createState() =>
      _OnboardingSlidePersonalizationState();
}

class _OnboardingSlidePersonalizationState
    extends ConsumerState<OnboardingSlidePersonalization> {
  String _selectedCategory = '';
  String _selectedGroup = '';

  @override
  void initState() {
    super.initState();
    final data = ref.read(onboardingDataProvider);
    _selectedCategory = data.shoppingCategory;
    _selectedGroup = data.householdSize;
  }

  void _selectCategory(String category) {
    setState(() => _selectedCategory = category);
    ref.read(onboardingDataProvider.notifier).updateShoppingCategory(category);
  }

  void _selectGroup(String group) {
    setState(() => _selectedGroup = group);
    ref.read(onboardingDataProvider.notifier).updateHouseholdSize(group);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    final categories = [
      (key: 'grocery', label: '🛒 ${l10n.onboardingCategoryGrocery}'),
      (key: 'pharmacy', label: '💊 ${l10n.onboardingCategoryPharmacy}'),
      (key: 'recipes', label: '🍳 ${l10n.onboardingCategoryRecipes}'),
      (key: 'home', label: '🏠 ${l10n.onboardingCategoryHome}'),
      (key: 'pet', label: '🐾 ${l10n.onboardingCategoryPet}'),
    ];

    final groups = [
      (key: 'solo', label: '🧍 ${l10n.onboardingGroupSolo}'),
      (key: 'couple', label: '👫 ${l10n.onboardingGroupCouple}'),
      (key: 'family', label: '👨‍👩‍👧 ${l10n.onboardingGroupFamily}'),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(Spacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: Spacing.lg),
                    Text(
                      l10n.onboardingPersonalizationCategoryTitle,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    )
                        .animate()
                        .fadeIn(duration: 400.ms)
                        .slideY(begin: 0.2, end: 0),
                    const SizedBox(height: Spacing.xs),
                    Text(
                      l10n.onboardingPersonalizationDesc,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ).animate().fadeIn(delay: 100.ms, duration: 300.ms),
                    const SizedBox(height: Spacing.xl),
                    Text(
                      l10n.onboardingPersonalizationCategoryTitle,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ).animate(delay: 180.ms).fadeIn(duration: 300.ms),
                    const SizedBox(height: Spacing.sm),
                    Wrap(
                      spacing: Spacing.sm,
                      runSpacing: Spacing.sm,
                      children: categories.asMap().entries.map((entry) {
                        final int index = entry.key;
                        final cat = entry.value;
                        final isSelected = _selectedCategory == cat.key;
                        return FilterChip(
                          label: Text(
                            cat.label,
                            style: TextStyle(
                              fontWeight: isSelected
                                  ? FontWeight.w700
                                  : FontWeight.normal,
                            ),
                          ),
                          selected: isSelected,
                          onSelected: (_) => _selectCategory(cat.key),
                          selectedColor: theme.colorScheme.primaryContainer,
                          checkmarkColor: theme.colorScheme.primary,
                          padding: const EdgeInsets.symmetric(
                            horizontal: Spacing.sm,
                            vertical: Spacing.xs,
                          ),
                        )
                            .animate(delay: (240 + index * 60).ms)
                            .fadeIn(duration: 300.ms)
                            .scale(
                              begin: const Offset(0.9, 0.9), // ignore: prefer_int_literals
                              end: const Offset(1, 1),
                            );
                      }).toList(),
                    ),
                    const SizedBox(height: Spacing.xl),
                    Text(
                      l10n.onboardingPersonalizationGroupTitle,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ).animate(delay: 540.ms).fadeIn(duration: 300.ms),
                    const SizedBox(height: Spacing.sm),
                    Wrap(
                      spacing: Spacing.sm,
                      runSpacing: Spacing.sm,
                      children: groups.asMap().entries.map((entry) {
                        final int index = entry.key;
                        final g = entry.value;
                        final isSelected = _selectedGroup == g.key;
                        return FilterChip(
                          label: Text(
                            g.label,
                            style: TextStyle(
                              fontWeight: isSelected
                                  ? FontWeight.w700
                                  : FontWeight.normal,
                            ),
                          ),
                          selected: isSelected,
                          onSelected: (_) => _selectGroup(g.key),
                          selectedColor: theme.colorScheme.primaryContainer,
                          checkmarkColor: theme.colorScheme.primary,
                          padding: const EdgeInsets.symmetric(
                            horizontal: Spacing.sm,
                            vertical: Spacing.xs,
                          ),
                        )
                            .animate(delay: (600 + index * 60).ms)
                            .fadeIn(duration: 300.ms)
                            .scale(
                              begin: const Offset(0.9, 0.9), // ignore: prefer_int_literals
                              end: const Offset(1, 1),
                            );
                      }).toList(),
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
                  onPressed: widget.onNext,
                  child: Text(l10n.onboardingPersonalizationCta),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
