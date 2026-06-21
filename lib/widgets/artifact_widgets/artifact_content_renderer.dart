import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import '../../models/interactive_artifact.dart';
import 'package:shopping_list/app/ai/providers/artifact_state_provider.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ArtifactContentRenderer extends ConsumerWidget {
  const ArtifactContentRenderer({super.key, required this.artifactId});

  final String artifactId;

  bool _matchesConditions(
    ArtifactItem item,
    Map<String, dynamic> controlValues,
  ) {
    final conditions = item.conditions;
    if (conditions == null || conditions.isEmpty) {
      return true;
    }
    for (final entry in conditions.entries) {
      final actualVal = controlValues[entry.key];
      final expectedVal = entry.value;
      if (actualVal != expectedVal) {
        return false;
      }
    }
    return true;
  }

  double _calculateMultiplier(
    InteractiveArtifact artifact,
    Map<String, dynamic> controlValues,
  ) {
    final multiplierControls = artifact.controls.where((c) {
      return c.affectsMultiplier;
    });
    if (multiplierControls.isEmpty) {
      return 1;
    }

    double sum = 0;
    for (final ctrl in multiplierControls) {
      final val = controlValues[ctrl.id] ?? ctrl.value;
      if (val is num) {
        sum += val.toDouble();
      } else if (val is bool) {
        sum += val ? 1 : 0;
      }
    }

    if (artifact.baseServings <= 0) {
      return 1;
    }

    return sum / artifact.baseServings;
  }

  Future<void> _showBulkOptimizationSheet(
    BuildContext context,
    WidgetRef ref,
    List<ArtifactOptimizationSuggestion> suggestions,
  ) async {
    final l10n = AppLocalizations.of(context)!;
    final currencyCode = resolveCurrencyCode(
      ref.read(currencySettingProvider),
      Localizations.localeOf(context),
    );
    final totalSavings = suggestions.fold<double>(
      0,
      (total, suggestion) => total + suggestion.savings,
    );

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (sheetContext) {
        final theme = Theme.of(sheetContext);

        return SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: Spacing.md,
              right: Spacing.md,
              bottom: MediaQuery.viewInsetsOf(sheetContext).bottom + Spacing.md,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.sizeOf(sheetContext).height * 0.72,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(RadiusTokens.md),
                        ),
                        child: Icon(
                          PhosphorIconsRegular.sparkle,
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      ),
                      const SizedBox(width: Spacing.sm),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.economyTips,
                              style: theme.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '-${formatCurrency(totalSavings, currencyCode)}',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Spacing.md),
                  Text(
                    l10n.selectCheaperAlternative,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: Spacing.sm),
                  Flexible(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: suggestions.length,
                      separatorBuilder:
                          (_, _) => const SizedBox(height: Spacing.xs),
                      itemBuilder: (context, index) {
                        final suggestion = suggestions[index];
                        return Container(
                          padding: const EdgeInsets.all(Spacing.sm),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.surfaceContainerHighest,
                            borderRadius: BorderRadius.circular(
                              RadiusTokens.md,
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      suggestion.originalItem.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall
                                          ?.copyWith(
                                            color:
                                                theme
                                                    .colorScheme
                                                    .onSurfaceVariant,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                    ),
                                    const SizedBox(height: Spacing.xxs),
                                    Text(
                                      suggestion.alternative.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: Spacing.sm),
                              Text(
                                '-${formatCurrency(suggestion.savings, currencyCode)}',
                                style: theme.textTheme.labelLarge?.copyWith(
                                  color: theme.colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: Spacing.md),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Navigator.pop(sheetContext),
                          child: Text(l10n.cancel),
                        ),
                      ),
                      const SizedBox(width: Spacing.sm),
                      Expanded(
                        child: FilledButton.icon(
                          onPressed: () {
                            HapticFeedback.mediumImpact();
                            ref
                                .read(
                                  artifactStateProvider(artifactId).notifier,
                                )
                                .applyOptimizations(suggestions);
                            Navigator.pop(sheetContext);
                          },
                          icon: const Icon(PhosphorIconsRegular.sparkle),
                          label: Text(l10n.confirm),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showSwapBottomSheet(
    BuildContext context,
    WidgetRef ref,
    String artifactId,
    ArtifactItem item,
    int itemIndex,
  ) {
    final l10n = AppLocalizations.of(context)!;
    final currencyCode = resolveCurrencyCode(
      ref.read(currencySettingProvider),
      Localizations.localeOf(context),
    );
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        final theme = Theme.of(context);
        final alternatives = item.alternatives ?? [];

        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(Spacing.md),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.replaceItem(item.name),
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: Spacing.xs),
                Text(
                  l10n.selectCheaperAlternative,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: Spacing.md),
                ...alternatives.map((alt) {
                  return ListTile(
                    leading: const Icon(PhosphorIconsRegular.arrowsLeftRight),
                    title: Text(alt.name),
                    subtitle: Text(
                      l10n.quantityWithUnit(
                        alt.quantity.toStringAsFixed(
                          alt.quantity % 1 == 0 ? 0 : 1,
                        ),
                        alt.unit,
                      ),
                    ),
                    trailing:
                        alt.estimatedPrice != null
                            ? Text(
                              formatCurrency(
                                alt.quantity * alt.estimatedPrice!,
                                currencyCode,
                              ),
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: theme.colorScheme.primary,
                              ),
                            )
                            : null,
                    onTap: () {
                      HapticFeedback.mediumImpact();
                      ref
                          .read(artifactStateProvider(artifactId).notifier)
                          .swapItem(itemIndex, alt);
                      Navigator.pop(context);
                    },
                  );
                }),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildControlWidget(
    BuildContext context,
    WidgetRef ref,
    ArtifactControl control,
    Map<String, dynamic> controlValues,
    bool isCommitted,
  ) {
    final theme = Theme.of(context);

    switch (control.type) {
      case ArtifactControlType.slider:
        final currentValue = (controlValues[control.id] as num).toDouble();
        final min = control.min ?? 0.0;
        final max = control.max ?? 100.0;
        final divisions =
            control.step != null && control.step! > 0
                ? ((max - min) / control.step!).round()
                : null;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: Spacing.xs),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      control.label,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: Spacing.xs),
                  Text(
                    currentValue.toStringAsFixed(control.step == 1.0 ? 0 : 1),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Slider.adaptive(
                value: currentValue,
                min: min,
                max: max,
                divisions: divisions,
                onChanged:
                    isCommitted
                        ? null
                        : (val) {
                          ref
                              .read(artifactStateProvider(artifactId).notifier)
                              .updateControl(control.id, val);
                        },
              ),
            ],
          ),
        );

      case ArtifactControlType.stepper:
        final currentValue = (controlValues[control.id] as num).toDouble();
        final min = control.min ?? 0.0;
        final max = control.max ?? 100.0;
        final step = control.step ?? 1.0;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: Spacing.xs),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  control.label,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: Spacing.xs),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(PhosphorIconsRegular.minusCircle),
                    onPressed:
                        (isCommitted || currentValue <= min)
                            ? null
                            : () {
                              HapticFeedback.lightImpact();
                              final newVal = (currentValue - step).clamp(
                                min,
                                max,
                              );
                              ref
                                  .read(
                                    artifactStateProvider(artifactId).notifier,
                                  )
                                  .updateControl(control.id, newVal);
                            },
                  ),
                  Container(
                    constraints: const BoxConstraints(minWidth: 40),
                    alignment: Alignment.center,
                    child: Text(
                      currentValue.toStringAsFixed(step == 1.0 ? 0 : 1),
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(PhosphorIconsRegular.plusCircle),
                    onPressed:
                        (isCommitted || currentValue >= max)
                            ? null
                            : () {
                              HapticFeedback.lightImpact();
                              final newVal = (currentValue + step).clamp(
                                min,
                                max,
                              );
                              ref
                                  .read(
                                    artifactStateProvider(artifactId).notifier,
                                  )
                                  .updateControl(control.id, newVal);
                            },
                  ),
                ],
              ),
            ],
          ),
        );

      case ArtifactControlType.toggle:
        final currentValue =
            controlValues[control.id] as bool? ??
            control.value as bool? ??
            false;

        return SwitchListTile.adaptive(
          title: Text(
            control.label,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          contentPadding: EdgeInsets.zero,
          value: currentValue,
          onChanged:
              isCommitted
                  ? null
                  : (val) {
                    HapticFeedback.lightImpact();
                    ref
                        .read(artifactStateProvider(artifactId).notifier)
                        .updateControl(control.id, val);
                  },
        );

      case ArtifactControlType.select:
        final currentValue =
            controlValues[control.id] as String? ??
            control.value as String? ??
            '';
        final options = control.options ?? [];

        if (options.length <= 3) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: Spacing.xs),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  control.label,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: Spacing.xs),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SegmentedButton<String>(
                    segments:
                        options.map((opt) {
                          return ButtonSegment<String>(
                            value: opt,
                            label: Text(opt),
                          );
                        }).toList(),
                    selected: {currentValue},
                    onSelectionChanged:
                        isCommitted
                            ? null
                            : (newSelection) {
                              HapticFeedback.lightImpact();
                              ref
                                  .read(
                                    artifactStateProvider(artifactId).notifier,
                                  )
                                  .updateControl(
                                    control.id,
                                    newSelection.first,
                                  );
                            },
                  ),
                ),
              ],
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: Spacing.xs),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    control.label,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: Spacing.xs),
                DropdownButton<String>(
                  value: options.contains(currentValue) ? currentValue : null,
                  disabledHint: Text(currentValue),
                  items:
                      options.map((opt) {
                        return DropdownMenuItem<String>(
                          value: opt,
                          child: Text(opt),
                        );
                      }).toList(),
                  onChanged:
                      isCommitted
                          ? null
                          : (val) {
                            if (val != null) {
                              HapticFeedback.lightImpact();
                              ref
                                  .read(
                                    artifactStateProvider(artifactId).notifier,
                                  )
                                  .updateControl(control.id, val);
                            }
                          },
                ),
              ],
            ),
          );
        }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(artifactStateProvider(artifactId));
    if (state == null) {
      return const SizedBox(
        height: 100,
        child: Center(child: CircularProgressIndicator()),
      );
    }

    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final currencyCode = resolveCurrencyCode(
      ref.watch(currencySettingProvider),
      Localizations.localeOf(context),
    );
    final controls = state.artifact.controls;
    final items = state.currentItems;
    final isCommitted = state.isCommitted;
    final optimizationSuggestions =
        ref
            .read(artifactStateProvider(artifactId).notifier)
            .optimizationSuggestions();
    final totalPotentialSavings = optimizationSuggestions.fold<double>(
      0,
      (total, suggestion) => total + suggestion.savings,
    );

    final multiplier = _calculateMultiplier(
      state.artifact,
      state.controlValues,
    );

    final visibleItems =
        items.where((item) {
          return _matchesConditions(item, state.controlValues);
        }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Controls Section
        if (controls.isNotEmpty) ...[
          ...controls.map((control) {
            return _buildControlWidget(
              context,
              ref,
              control,
              state.controlValues,
              isCommitted,
            );
          }),
          const SizedBox(height: Spacing.sm),
          const Divider(),
          const SizedBox(height: Spacing.sm),
        ],

        // Items Section
        Row(
          children: [
            Expanded(
              child: Text(
                l10n.suggestedItems,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (optimizationSuggestions.isNotEmpty && !isCommitted)
              Tooltip(
                message: l10n.economyTips,
                child: Semantics(
                  label:
                      '${l10n.economyTips}: ${formatCurrency(totalPotentialSavings, currencyCode)}',
                  button: true,
                  child: FilledButton.tonalIcon(
                    key: const ValueKey('artifact_bulk_optimize_button'),
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Spacing.sm,
                        vertical: Spacing.xs,
                      ),
                      minimumSize: const Size(44, 44),
                    ),
                    onPressed: () {
                      HapticFeedback.selectionClick();
                      _showBulkOptimizationSheet(
                        context,
                        ref,
                        optimizationSuggestions,
                      );
                    },
                    icon: const Icon(PhosphorIconsRegular.sparkle, size: 16),
                    label: Text(
                      '-${formatCurrency(totalPotentialSavings, currencyCode)}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: Spacing.xs),
        AnimatedSwitcher(
          duration: DurationTokens.fast,
          child: Column(
            key: ValueKey<int>(visibleItems.length),
            children:
                visibleItems.map((item) {
                  final originalIdx = state.currentItems.indexOf(item);
                  final double qty =
                      item.isSwapped
                          ? item.baseQuantity
                          : (item.baseQuantity * multiplier);
                  final priceText =
                      item.estimatedPrice != null
                          ? formatCurrency(
                            qty * item.estimatedPrice!,
                            currencyCode,
                          )
                          : '';

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: Spacing.xs),
                    child: Row(
                      children: [
                        Icon(
                          item.isAvailable
                              ? PhosphorIconsRegular.checkCircle
                              : PhosphorIconsRegular.basket,
                          size: 18,
                          color:
                              item.isAvailable
                                  ? AppSemanticColors.of(context).success
                                  : theme.colorScheme.primary,
                        ),
                        const SizedBox(width: Spacing.xs),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  if (item.isSwapped) ...[
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: Spacing.xxs,
                                        vertical: 1,
                                      ),
                                      margin: const EdgeInsets.only(
                                        right: Spacing.xxs,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            theme
                                                .colorScheme
                                                .secondaryContainer,
                                        borderRadius: BorderRadius.circular(
                                          RadiusTokens.xxs,
                                        ),
                                      ),
                                      child: Text(
                                        l10n.swapped,
                                        style: theme.textTheme.labelSmall
                                            ?.copyWith(
                                              fontSize: 9,
                                              color:
                                                  theme
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
                                  Expanded(
                                    child: Text(
                                      item.name,
                                      style: theme.textTheme.bodyMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                isCommitted
                                                    ? TextDecoration.lineThrough
                                                    : null,
                                          ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                l10n.quantityUnitWithPrice(
                                  qty.toStringAsFixed(qty % 1 == 0 ? 0 : 1),
                                  item.unit,
                                  priceText,
                                ),
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (item.alternatives != null &&
                            item.alternatives!.isNotEmpty &&
                            !isCommitted)
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: Spacing.xs,
                                vertical: 0,
                              ),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            onPressed: () {
                              _showSwapBottomSheet(
                                context,
                                ref,
                                artifactId,
                                item,
                                originalIdx,
                              );
                            },
                            icon: const Icon(PhosphorIconsRegular.arrowsLeftRight, size: 14),
                            label: Text(
                              l10n.swap,
                              style: const TextStyle(fontSize: 11),
                            ),
                          ),
                      ],
                    ),
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }
}
