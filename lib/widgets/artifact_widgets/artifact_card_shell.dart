import 'dart:async' show unawaited;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/interactive_artifact.dart';
import 'package:shopping_list/app/ai/providers/artifact_state_provider.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import '../../theme/tokens.dart';
import '../../utils/test_utils.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

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
  }

  Color _getBudgetColor(double ratio) {
    if (ratio < 0.7) {
      return Colors.green;
    }
    if (ratio < 0.9) {
      return Colors.amber;
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    // Safe initialization
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        ref
            .read(artifactStateProvider(widget.artifact.id).notifier)
            .initialize(widget.artifact);
      }
    });

    final state = ref.watch(artifactStateProvider(widget.artifact.id));
    final theme = Theme.of(context);

    final isCommitted = state?.isCommitted ?? widget.artifact.isCommitted;
    final totalCost = state?.totalCost ?? 0.0;
    final budget = widget.artifact.budget;
    final showBudgetBar = widget.artifact.showBudgetBar && budget != null && budget > 0;

    final currencyCode = ref.watch(currencySettingProvider).value ?? 'BRL';
    final resolvedListId = widget.listId ?? ref.watch(currentListIdProvider).value;

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
              Text(
                widget.artifact.icon,
                style: const TextStyle(fontSize: 24),
              ),
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
                        Icons.check,
                        size: 12,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                      const SizedBox(width: Spacing.xxs),
                      Text(
                        'Sincronizado',
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
                  'Orçamento:',
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '${formatCurrency(totalCost, currencyCode)} / ${formatCurrency(budget, currencyCode)}',
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: totalCost > budget ? Colors.red : theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            const SizedBox(height: Spacing.xs),
            ClipRRect(
              borderRadius: BorderRadius.circular(RadiusTokens.full),
              child: LinearProgressIndicator(
                value: (totalCost / budget).clamp(0.0, 1.0),
                backgroundColor: theme.colorScheme.surface,
                valueColor: AlwaysStoppedAnimation<Color>(
                  _getBudgetColor(totalCost / budget),
                ),
              ),
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
                    'Total Estimado',
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
                  onPressed: (_isCommitting || resolvedListId == null)
                      ? null
                      : () async {
                          unawaited(HapticFeedback.mediumImpact());
                          setState(() {
                            _isCommitting = true;
                          });
                          try {
                            await ref
                                .read(artifactStateProvider(widget.artifact.id).notifier)
                                .commitToList(resolvedListId);
                            if (context.mounted) {
                              final localizations = AppLocalizations.of(context)!;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(localizations.itemsAddedSuccess),
                                  action: SnackBarAction(
                                    label: localizations.viewList,
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
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
                  icon: _isCommitting
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : const Icon(Icons.sync),
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

    // coverage:ignore-start
    return cardWithBorder
        .animate()
        .fadeIn(duration: DurationTokens.normal)
        .slideY(
          begin: 0.1,
          end: 0,
          duration: DurationTokens.normal,
          curve: Curves.easeOutQuad,
        );
    // coverage:ignore-end
  }
}
