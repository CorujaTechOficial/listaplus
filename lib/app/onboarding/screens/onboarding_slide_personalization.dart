import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';
import '../providers/onboarding_data_provider.dart';

/// Quick-pick food suggestions shown as tappable chips.
const List<({String label, String emoji})> _kFoodSuggestions = [
  (label: 'Pizza', emoji: '🍕'),
  (label: 'Sushi', emoji: '🍱'),
  (label: 'Lasanha', emoji: '🍝'),
  (label: 'Hambúrguer', emoji: '🍔'),
  (label: 'Tacos', emoji: '🌮'),
  (label: 'Frango', emoji: '🍗'),
  (label: 'Salada', emoji: '🥗'),
  (label: 'Chocolate', emoji: '🍫'),
];

class OnboardingSlidePersonalization extends ConsumerStatefulWidget {
  const OnboardingSlidePersonalization({super.key});

  @override
  ConsumerState<OnboardingSlidePersonalization> createState() =>
      _OnboardingSlidePersonalizationState();
}

class _OnboardingSlidePersonalizationState
    extends ConsumerState<OnboardingSlidePersonalization> {
  late final TextEditingController _foodController;
  final FocusNode _foodFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    final existing = ref.read(onboardingDataProvider).favoriteFood;
    _foodController = TextEditingController(text: existing);

    // Persist every keystroke to the provider so the "Next" button
    // in the parent screen reacts immediately.
    _foodController.addListener(_onFoodChanged);
  }

  void _onFoodChanged() {
    ref
        .read(onboardingDataProvider.notifier)
        .updateFavoriteFood(_foodController.text.trim());
  }

  void _selectChip(String food) {
    _foodController.text = food;
    _foodFocusNode.unfocus();
    // Listener already calls _onFoodChanged; explicit call here ensures
    // the cursor is positioned at the end.
    _foodController.selection = TextSelection.fromPosition(
      TextPosition(offset: food.length),
    );
  }

  @override
  void dispose() {
    _foodController.removeListener(_onFoodChanged);
    _foodController.dispose();
    _foodFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final selectedFood = ref.watch(onboardingDataProvider).favoriteFood;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Spacing.xl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Spacing.xxl),

            // ── Illustration ───────────────────────────────────────────────
            Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.colorScheme.primaryContainer.withAlpha(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(Spacing.md),
                  child: SvgPicture.asset(
                    'assets/images/kipi/kipi_welcome.svg',
                    fit: BoxFit.contain,
                  ),
                ),
              )
                  .animate()
                  .scale(
                    begin: const Offset(0.5, 0.5),
                    duration: 550.ms,
                    curve: Curves.elasticOut,
                  )
                  .fadeIn(),
            ),

            const SizedBox(height: Spacing.xl),

            // ── Title ──────────────────────────────────────────────────────
            Text(
              l10n.onboardingPersonalizationTitle,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
            )
                .animate()
                .fadeIn(delay: 200.ms)
                .slideY(begin: 0.15, end: 0, delay: 200.ms),

            const SizedBox(height: Spacing.sm),

            // ── Subtitle ───────────────────────────────────────────────────
            Text(
              l10n.onboardingPersonalizationDesc,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                height: 1.5,
              ),
            )
                .animate()
                .fadeIn(delay: 350.ms)
                .slideY(begin: 0.1, end: 0, delay: 350.ms),

            const SizedBox(height: Spacing.xxl),

            // ── Food text field ────────────────────────────────────────────
            TextField(
              controller: _foodController,
              focusNode: _foodFocusNode,
              decoration: InputDecoration(
                labelText: l10n.onboardingPersonalizationFoodLabel,
                hintText: l10n.onboardingPersonalizationFoodHint,
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 12, right: 8),
                  child: Text('🍽️', style: TextStyle(fontSize: 22)),
                ),
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 48,
                  minHeight: 48,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: theme.colorScheme.outline.withAlpha(100),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 2,
                  ),
                ),
                filled: true,
                fillColor: theme.colorScheme.surfaceContainerLow,
              ),
              textCapitalization: TextCapitalization.words,
            )
                .animate()
                .fadeIn(delay: 500.ms)
                .slideX(begin: -0.08, end: 0, delay: 500.ms),

            const SizedBox(height: Spacing.lg),

            // ── Quick-pick chips ───────────────────────────────────────────
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _kFoodSuggestions.map((item) {
                final isSelected = selectedFood == item.label;
                return GestureDetector(
                  onTap: () => _selectChip(item.label),
                  child: AnimatedContainer(
                    duration: 200.ms,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? theme.colorScheme.primaryContainer
                          : theme.colorScheme.surfaceContainerLow,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: isSelected
                            ? theme.colorScheme.primary
                            : theme.colorScheme.outline.withAlpha(60),
                        width: isSelected ? 2 : 1,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(item.emoji, style: const TextStyle(fontSize: 18)),
                        const SizedBox(width: 6),
                        Text(
                          item.label,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: isSelected
                                ? theme.colorScheme.onPrimaryContainer
                                : theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            )
                .animate()
                .fadeIn(delay: 650.ms)
                .slideY(begin: 0.1, end: 0, delay: 650.ms),

            const SizedBox(height: Spacing.xl),
          ],
        ),
      ),
    );
  }
}
