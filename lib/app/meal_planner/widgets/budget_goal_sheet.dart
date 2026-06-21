import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class BudgetGoalSheet extends ConsumerStatefulWidget {
  const BudgetGoalSheet({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const BudgetGoalSheet(),
    );
  }

  @override
  ConsumerState<BudgetGoalSheet> createState() => _BudgetGoalSheetState();
}

class _BudgetGoalSheetState extends ConsumerState<BudgetGoalSheet> {
  late final TextEditingController _controller;
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final goalAsync = ref.watch(monthlyBudgetGoalProvider);

    if (!_initialized && goalAsync.hasValue) {
      _initialized = true;
      final goal = goalAsync.value;
      if (goal != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) {
            _controller.text = goal.toStringAsFixed(2);
          }
        });
      }
    }

    return Container(
      margin: const EdgeInsets.all(Spacing.md),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(RadiusTokens.lg),
      ),
      padding: EdgeInsets.fromLTRB(
        Spacing.lg,
        Spacing.lg,
        Spacing.lg,
        MediaQuery.of(context).viewInsets.bottom + Spacing.lg,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.budgetEditTitle,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: Spacing.lg),
          TextField(
            controller: _controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            autofocus: true,
            decoration: InputDecoration(
              labelText: l10n.budgetAmountLabel,
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: Spacing.lg),
          Row(
            children: [
              if (goalAsync.value != null)
                TextButton(
                  onPressed: () async {
                    await ref
                        .read(monthlyBudgetGoalProvider.notifier)
                        .setGoal(null);
                    if (context.mounted) {
                      Navigator.pop(context);
                    }
                  },
                  child: Text(l10n.mealPlannerBudgetRemoveGoal),
                ),
              const Spacer(),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.cancel),
              ),
              const SizedBox(width: Spacing.xs),
              FilledButton(
                onPressed: () async {
                  final raw = _controller.text.replaceAll(',', '.');
                  final value = double.tryParse(raw);
                  if (value == null || value <= 0) {
                    return;
                  }
                  await ref
                      .read(monthlyBudgetGoalProvider.notifier)
                      .setGoal(value);
                  if (context.mounted) {
                    Navigator.pop(context);
                  }
                },
                child: Text(l10n.save),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
