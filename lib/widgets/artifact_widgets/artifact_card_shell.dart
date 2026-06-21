import 'dart:async' show unawaited;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/interactive_artifact.dart';
import 'package:shopping_list/app/ai/providers/artifact_state_provider.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shopping_list/theme/tokens.dart';
import '../../utils/test_utils.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/core/utils/snack_bar_utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ArtifactCardShell extends ConsumerStatefulWidget {
  const ArtifactCardShell({
    super.key,
    required this.artifact,
    required this.child,
    this.listId,
  });

  final InteractiveArtifact artifact;
  final Widget child;
  final String? listId;

  @override
  ConsumerState<ArtifactCardShell> createState() => _ArtifactCardShellState();
}

class _ArtifactCardShellState extends ConsumerState<ArtifactCardShell> {
  bool _isCommitting = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        ref
            .read(artifactStateProvider(widget.artifact.id).notifier)
            .initialize(widget.artifact);
      }
    });
  }

  Color _getBudgetColor(double ratio, ColorScheme colorScheme) {
    const safeColor = Color(0xFF2E7D32);
    const warningColor = Color(0xFFF9A825);
    final dangerColor = colorScheme.error;

    if (ratio <= 0.7) {
      return Color.lerp(safeColor, warningColor, ratio / 0.7)!;
    }
    return Color.lerp(
      warningColor,
      dangerColor,
      ((ratio - 0.7) / 0.3).clamp(0.0, 1.0),
    )!;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(artifactStateProvider(widget.artifact.id));
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    final isCommitted = state?.isCommitted ?? widget.artifact.isCommitted;
    final totalCost = state?.totalCost ?? 0.0;
    final budget = widget.artifact.budget;
    final showBudgetBar =
        widget.artifact.showBudgetBar && budget != null && budget > 0;
    final budgetRatio = showBudgetBar ? totalCost / budget : 0.0;

    final currencyCode = resolveCurrencyCode(
      ref.watch(currencySettingProvider),
      Localizations.localeOf(context),
    );
    final resolvedListId =
        widget.listId ?? ref.watch(currentListIdProvider).value;

    final Widget cardContent = Container(
      padding: const EdgeInsets.all(Spacing.md),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(RadiusTokens.lg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.artifact.icon, style: const TextStyle(fontSize: 24)),
              const SizedBox(width: Spacing.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.artifact.title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSurface,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (widget.artifact.description != null) ...[
                      const SizedBox(height: Spacing.xxs),
                      Text(
                        widget.artifact.description!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ],
                ),
              ),
              if (isCommitted)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Spacing.xs,
                    vertical: Spacing.xxs,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(RadiusTokens.full),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        PhosphorIconsRegular.check,
                        size: 12,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                      const SizedBox(width: Spacing.xxs),
                      Text(
                        l10n.artifactSynced,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          const SizedBox(height: Spacing.md),

          // Child content
          widget.child,

          const SizedBox(height: Spacing.md),

          // Budget Progress Bar
          if (showBudgetBar) ...[
            const Divider(),
            const SizedBox(height: Spacing.xs),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.artifactBudgetLabel,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '${formatCurrency(totalCost, currencyCode)} / ${formatCurrency(budget, currencyCode)}',
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color:
                        totalCost > budget
                            ? AppSemanticColors.of(context).warning
                            : theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            const SizedBox(height: Spacing.xs),
            _AnimatedBudgetProgress(
              ratio: budgetRatio,
              color: _getBudgetColor(budgetRatio, theme.colorScheme),
              trackColor: theme.colorScheme.surface,
            ),
            const SizedBox(height: Spacing.md),
          ],

          // Footer Row
          const Divider(),
          const SizedBox(height: Spacing.xs),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.totalEstimatedLabel,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Text(
                    formatCurrency(totalCost, currencyCode),
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
              if (!isCommitted)
                FilledButton.icon(
                  onPressed:
                      (_isCommitting || resolvedListId == null)
                          ? null
                          : () async {
                            unawaited(HapticFeedback.mediumImpact());
                            setState(() {
                              _isCommitting = true;
                            });
                            try {
                              await ref
                                  .read(
                                    artifactStateProvider(
                                      widget.artifact.id,
                                    ).notifier,
                                  )
                                  .commitToList(resolvedListId);
                              if (context.mounted) {
                                final localizations =
                                    AppLocalizations.of(context)!;
                                showKipiSnackBar(
                                  context,
                                  message: localizations.itemsAddedSuccess,
                                  type: SnackBarType.success,
                                  action: SnackBarAction(
                                    label: localizations.viewList,
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                );
                              }
                            } finally {
                              if (mounted) {
                                setState(() {
                                  _isCommitting = false;
                                });
                              }
                            }
                          },
                  icon:
                      _isCommitting
                          ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            ),
                          )
                          : const Icon(PhosphorIconsRegular.arrowsClockwise),
                  label: Text(widget.artifact.commitLabel),
                ),
            ],
          ),
        ],
      ),
    );

    // Apply the gradient border around the container
    final Widget cardWithBorder = Container(
      padding: const EdgeInsets.all(1.2),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            theme.colorScheme.primary.withAlpha((0.4 * 255).toInt()),
            theme.colorScheme.secondary.withAlpha((0.2 * 255).toInt()),
            theme.colorScheme.primary.withAlpha((0.1 * 255).toInt()),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(RadiusTokens.lg),
      ),
      child: cardContent,
    );

    if (isTestMode) {
      return cardWithBorder;
    }

    return cardWithBorder
        .animate()
        .fadeIn(duration: DurationTokens.normal)
        .slideY(
          begin: 0.1,
          end: 0,
          duration: DurationTokens.normal,
          curve: Curves.easeOutQuad,
        );
  }
}

class _AnimatedBudgetProgress extends StatefulWidget {
  const _AnimatedBudgetProgress({
    required this.ratio,
    required this.color,
    required this.trackColor,
  });

  final double ratio;
  final Color color;
  final Color trackColor;

  @override
  State<_AnimatedBudgetProgress> createState() =>
      _AnimatedBudgetProgressState();
}

class _AnimatedBudgetProgressState extends State<_AnimatedBudgetProgress>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulseController;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: DurationTokens.ambient,
      lowerBound: 0,
      upperBound: 1,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _syncPulse();
  }

  @override
  void didUpdateWidget(covariant _AnimatedBudgetProgress oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.ratio != widget.ratio) {
      _syncPulse();
    }
  }

  void _syncPulse() {
    final reduceMotion = MediaQuery.disableAnimationsOf(context);
    if (widget.ratio > 1 && !reduceMotion && !isTestMode) {
      if (!_pulseController.isAnimating) {
        _pulseController.repeat(reverse: true);
      }
    } else {
      _pulseController
        ..stop()
        ..value = 0;
    }
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.disableAnimationsOf(context);
    final duration = reduceMotion ? Duration.zero : DurationTokens.normal;
    final targetProgress = widget.ratio.clamp(0.0, 1.0);

    return AnimatedBuilder(
      animation: _pulseController,
      builder: (context, child) {
        final pulse =
            widget.ratio > 1 ? 0.78 + (_pulseController.value * 0.22) : 1.0;

        return Opacity(
          opacity: pulse,
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(end: targetProgress),
            duration: duration,
            curve: Curves.easeOutCubic,
            builder: (context, progress, _) {
              return Container(
                key: const ValueKey('artifact_budget_progress'),
                height: Spacing.xs,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: widget.trackColor,
                  borderRadius: BorderRadius.circular(RadiusTokens.full),
                ),
                alignment: Alignment.centerLeft,
                child: FractionallySizedBox(
                  widthFactor: progress,
                  heightFactor: 1,
                  child: AnimatedContainer(
                    duration: duration,
                    curve: Curves.easeOutCubic,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          widget.color.withAlpha((0.72 * 255).round()),
                          widget.color,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(RadiusTokens.full),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
