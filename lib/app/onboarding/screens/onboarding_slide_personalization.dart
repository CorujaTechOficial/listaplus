import 'package:flutter/material.dart';
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
  late final TextEditingController _nameController;
  String _selectedCategory = '';
  String _selectedGroup = '';

  @override
  void initState() {
    super.initState();
    final data = ref.read(onboardingDataProvider);
    _nameController = TextEditingController(text: data.displayName);
    _selectedCategory = data.shoppingCategory;
    _selectedGroup = data.householdSize;
    _nameController.addListener(_onNameChanged);
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _onNameChanged() {
    ref
        .read(onboardingDataProvider.notifier)
        .updateDisplayName(_nameController.text.trim());
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
      (key: 'grocery', label: l10n.onboardingCategoryGrocery),
      (key: 'pharmacy', label: l10n.onboardingCategoryPharmacy),
      (key: 'recipes', label: l10n.onboardingCategoryRecipes),
      (key: 'home', label: l10n.onboardingCategoryHome),
      (key: 'pet', label: l10n.onboardingCategoryPet),
    ];

    final groups = [
      (key: 'solo', label: l10n.onboardingGroupSolo),
      (key: 'couple', label: l10n.onboardingGroupCouple),
      (key: 'family', label: l10n.onboardingGroupFamily),
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
                      l10n.onboardingPersonalizationNameLabel,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: Spacing.sm),
                    TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: l10n.onboardingPersonalizationNameHint,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      textCapitalization: TextCapitalization.words,
                      textInputAction: TextInputAction.done,
                    ),
                    const SizedBox(height: Spacing.xl),
                    Text(
                      l10n.onboardingPersonalizationCategoryTitle,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: Spacing.sm),
                    Wrap(
                      spacing: Spacing.sm,
                      runSpacing: Spacing.sm,
                      children: categories.map((cat) {
                        final isSelected = _selectedCategory == cat.key;
                        return FilterChip(
                          label: Text(cat.label),
                          selected: isSelected,
                          onSelected: (_) => _selectCategory(cat.key),
                          selectedColor:
                              theme.colorScheme.primaryContainer,
                          checkmarkColor: theme.colorScheme.primary,
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: Spacing.xl),
                    Text(
                      l10n.onboardingPersonalizationGroupTitle,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: Spacing.sm),
                    Wrap(
                      spacing: Spacing.sm,
                      runSpacing: Spacing.sm,
                      children: groups.map((g) {
                        final isSelected = _selectedGroup == g.key;
                        return FilterChip(
                          label: Text(g.label),
                          selected: isSelected,
                          onSelected: (_) => _selectGroup(g.key),
                          selectedColor:
                              theme.colorScheme.primaryContainer,
                          checkmarkColor: theme.colorScheme.primary,
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
                  child: const Text('Continuar'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
