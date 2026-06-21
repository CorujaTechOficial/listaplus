import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/models/chat_message.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/app/ai/agent/tools/agent_tools.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/category_data.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AgentActionSteps extends ConsumerStatefulWidget {
  const AgentActionSteps({
    super.key,
    required this.messageId,
    required this.steps,
    this.listId,
  });

  final String messageId;
  final List<AgentStep> steps;
  final String? listId;

  @override
  ConsumerState<AgentActionSteps> createState() => _AgentActionStepsState();
}

class _AgentActionStepsState extends ConsumerState<AgentActionSteps> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final steps = widget.steps;

    final isRunning = steps.any((s) => s.status == AgentStepStatus.running);
    final hasError = steps.any((s) => s.status == AgentStepStatus.error);
    final isLocked = steps.any(
      (s) => s.status == AgentStepStatus.requiresUnlock,
    );

    // Status text & icon
    final String statusText;
    final Widget statusIcon;
    final Color textColor;

    if (isRunning) {
      statusText = l10n.agentActionsRunning;
      statusIcon = SizedBox(
        width: 12,
        height: 12,
        child: CircularProgressIndicator(
          strokeWidth: 1.5,
          valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
        ),
      );
      textColor = theme.colorScheme.primary;
    } else if (hasError) {
      statusText = l10n.agentActionsFailed;
      statusIcon = Icon(
        PhosphorIconsRegular.warningCircle,
        size: 14,
        color: theme.colorScheme.error,
      );
      textColor = theme.colorScheme.error;
    } else if (isLocked) {
      statusText = l10n.agentActionsPremium;
      statusIcon = Icon(
        PhosphorIconsRegular.crown,
        size: 14,
        color: AppSemanticColors.of(context).premium,
      );
      textColor = AppSemanticColors.of(context).premium;
    } else {
      statusText = l10n.agentActionsCompleted(steps.length);
      statusIcon = Icon(
        PhosphorIconsRegular.checkCircle,
        size: 14,
        color: theme.colorScheme.primary,
      );
      textColor = theme.colorScheme.onSurfaceVariant;
    }

    final isUndoable = steps.any((step) {
      if (step.status != AgentStepStatus.success) {
        return false;
      }
      final rd = step.resultData;
      if (rd == null) {
        return false;
      }
      return rd.containsKey('itemId') ||
          rd.containsKey('previousState') ||
          rd.containsKey('previousStates') ||
          rd.containsKey('previousBudget');
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            unawaited(HapticFeedback.selectionClick());
            setState(() => _isExpanded = !_isExpanded);
          },
          borderRadius: BorderRadius.circular(RadiusTokens.md),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.sm,
              vertical: 10,
            ),
            child: Row(
              children: [
                statusIcon,
                const SizedBox(width: Spacing.xs),
                Expanded(
                  child: Text(
                    statusText,
                    style: theme.textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                  ),
                ),
                if (hasError && !isRunning) ...[
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Spacing.xs,
                      ),
                    ),
                    onPressed: () async {
                      unawaited(HapticFeedback.lightImpact());
                      final sessionId = ref.read(
                        activeChatSessionIdProvider(widget.listId),
                      );
                      if (sessionId == null) {
                        return;
                      }
                      await ref
                          .read(
                            chatSessionProvider(
                              widget.listId,
                              sessionId,
                            ).notifier,
                          )
                          .regenerate(widget.messageId);
                    },
                    child: Text(
                      l10n.retry,
                      style: theme.textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                  const SizedBox(width: Spacing.xs),
                ],
                if (isUndoable && !_isExpanded && !isRunning) ...[
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Spacing.xs,
                      ),
                    ),
                    onPressed: () async {
                      unawaited(HapticFeedback.mediumImpact());
                      final sessionId = ref.read(
                        activeChatSessionIdProvider(widget.listId),
                      );
                      if (sessionId == null) {
                        return;
                      }
                      await ref
                          .read(
                            chatSessionProvider(
                              widget.listId,
                              sessionId,
                            ).notifier,
                          )
                          .undoMessageActions(widget.messageId);
                    },
                    child: Text(
                      l10n.undo,
                      style: theme.textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.error,
                      ),
                    ),
                  ),
                  const SizedBox(width: Spacing.xs),
                ],
                Icon(
                  _isExpanded ? PhosphorIconsRegular.caretUp : PhosphorIconsRegular.caretDown,
                  size: 16,
                  color: theme.colorScheme.onSurfaceVariant.withAlpha(
                    (0.6 * 255).toInt(),
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedSize(
          duration: DurationTokens.normal,
          curve: Curves.easeInOut,
          child:
              _isExpanded
                  ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: Spacing.sm,
                          top: Spacing.xxs,
                          bottom: Spacing.xxs,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 6.5,
                              top: 12,
                              bottom: 12,
                              child: Container(
                                width: 1,
                                color: theme.colorScheme.outlineVariant,
                              ),
                            ),
                            Column(
                              children:
                                  steps
                                      .map(
                                        (step) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: Spacing.xxs,
                                          ),
                                          child: AgentActionBlock(
                                            step: step,
                                            listId: widget.listId,
                                          ),
                                        ),
                                      )
                                      .toList(),
                            ),
                          ],
                        ),
                      ),
                      if (isUndoable && !isRunning)
                        Padding(
                          padding: const EdgeInsets.only(
                            right: Spacing.sm,
                            bottom: Spacing.xs,
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: TextButton.icon(
                              onPressed: () async {
                                unawaited(HapticFeedback.mediumImpact());
                                final sessionId = ref.read(
                                  activeChatSessionIdProvider(widget.listId),
                                );
                                await ref
                                    .read(
                                      chatSessionProvider(
                                        widget.listId,
                                        sessionId,
                                      ).notifier,
                                    )
                                    .undoMessageActions(widget.messageId);
                              },
                              icon: const Icon(PhosphorIconsRegular.arrowCounterClockwise, size: 14),
                              label: Text(
                                l10n.undoChanges,
                                style: theme.textTheme.labelSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                foregroundColor: theme.colorScheme.error,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: Spacing.xxs,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  )
                  : const SizedBox.shrink(),
        ),
      ],
    );
  }
}

class AgentActionBlock extends ConsumerStatefulWidget {
  const AgentActionBlock({super.key, required this.step, this.listId});

  final AgentStep step;
  final String? listId;

  @override
  ConsumerState<AgentActionBlock> createState() => _AgentActionBlockState();
}

class _AgentActionBlockState extends ConsumerState<AgentActionBlock> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final step = widget.step;
    final status = step.status;
    final hasDetails =
        step.resultData != null &&
        (step.resultData!.containsKey('itemId') ||
            step.resultData!.containsKey('previousState') ||
            step.resultData!.containsKey('previousStates') ||
            step.resultData!.containsKey('previousBudget'));

    // Build leading status indicator
    final isPremiumTool = AgentTools.premiumToolNames.contains(step.toolName);
    Widget leading;
    switch (status) {
      case AgentStepStatus.pending:
        leading = Icon(
          isPremiumTool
              ? PhosphorIconsRegular.crown
              : PhosphorIconsRegular.circle,
          size: 14,
          color:
              isPremiumTool
                  ? AppSemanticColors.of(
                    context,
                  ).premium.withAlpha((0.8 * 255).toInt())
                  : theme.colorScheme.onSurfaceVariant.withAlpha(
                    (0.5 * 255).toInt(),
                  ),
        );
        break;
      case AgentStepStatus.running:
        leading = SizedBox(
          width: 14,
          height: 14,
          child: CircularProgressIndicator(
            strokeWidth: 1.5,
            valueColor: AlwaysStoppedAnimation<Color>(
              isPremiumTool
                  ? AppSemanticColors.of(context).premium
                  : theme.colorScheme.primary,
            ),
          ),
        );
        break;
      case AgentStepStatus.success:
        leading = Icon(
          PhosphorIconsRegular.checkCircle,
          size: 14,
          color: theme.colorScheme.primary,
        );
        break;
      case AgentStepStatus.error:
        leading = Icon(
          PhosphorIconsRegular.warningCircle,
          size: 14,
          color: theme.colorScheme.error,
        );
        break;
      case AgentStepStatus.undone:
        leading = Icon(
          PhosphorIconsRegular.minusCircle,
          size: 14,
          color: theme.colorScheme.onSurfaceVariant.withAlpha(
            (0.5 * 255).toInt(),
          ),
        ).animate().shake(duration: DurationTokens.fast);
        break;
      case AgentStepStatus.requiresUnlock:
        leading = const Icon(
              PhosphorIconsRegular.crown,
              size: 14,
              color: AppColors.premiumAmber,
            )
            .animate(onPlay: (controller) => controller.repeat(reverse: true))
            .scale(
              begin: const Offset(1, 1),
              end: const Offset(1.2, 1.2),
              duration: 600.ms,
            );
        break;
    }

    // Text style based on status
    final isLocked = status == AgentStepStatus.requiresUnlock;
    final textStyle = theme.textTheme.bodySmall?.copyWith(
      fontWeight:
          (status == AgentStepStatus.running || isLocked)
              ? FontWeight.w600
              : FontWeight.normal,
      decoration:
          status == AgentStepStatus.undone ? TextDecoration.lineThrough : null,
      color:
          status == AgentStepStatus.undone
              ? theme.colorScheme.onSurfaceVariant.withAlpha(
                (0.5 * 255).toInt(),
              )
              : (isLocked
                  ? AppSemanticColors.of(context).premium
                  : (status == AgentStepStatus.running
                      ? theme.colorScheme.primary
                      : theme.colorScheme.onSurfaceVariant)),
    );

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                    onTap:
                        (status == AgentStepStatus.success && hasDetails)
                            ? () {
                              unawaited(HapticFeedback.selectionClick());
                              setState(() {
                                _isExpanded = !_isExpanded;
                              });
                            }
                            : null,
                    borderRadius: BorderRadius.circular(RadiusTokens.sm),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: Spacing.xs),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 14,
                            height: 14,
                            color: theme.colorScheme.surface,
                            alignment: Alignment.center,
                            child: leading,
                          ),
                          const SizedBox(width: Spacing.sm),
                          Expanded(
                            child: Text(
                              isLocked
                                  ? l10n.premiumStepDescription(
                                    step.description,
                                  )
                                  : step.description,
                              style: textStyle,
                            ),
                          ),
                          if (status == AgentStepStatus.success &&
                              hasDetails) ...[
                            const SizedBox(width: Spacing.xs),
                            Icon(
                              _isExpanded
                                  ? PhosphorIconsRegular.caretUp
                                  : PhosphorIconsRegular.caretDown,
                              size: 16,
                              color: theme.colorScheme.onSurfaceVariant
                                  .withAlpha((0.6 * 255).toInt()),
                            ),
                          ],
                        ],
                      ),
                    ),
                  )
                  .animate(target: status == AgentStepStatus.undone ? 1 : 0)
                  .slideX(
                    begin: 0,
                    end: -0.05,
                    duration: 300.ms,
                    curve: Curves.easeInOut,
                  )
                  .then()
                  .slideX(
                    begin: 0,
                    end: 0.05,
                    duration: 300.ms,
                    curve: Curves.easeInOut,
                  ),
              if (_isExpanded &&
                  status == AgentStepStatus.success &&
                  hasDetails)
                _buildStepDetails(step, theme),
            ],
          ),
        ),
        if (isLocked)
          Padding(
            padding: const EdgeInsets.only(top: Spacing.xs),
            child: _PremiumUnlockCard(listId: widget.listId),
          ),
      ],
    );
  }

  Widget _buildStepDetails(AgentStep step, ThemeData theme) {
    final result = step.resultData;
    final l10n = AppLocalizations.of(context)!;
    final currencyCode = resolveCurrencyCode(
      ref.watch(currencySettingProvider),
      Localizations.localeOf(context),
    );
    if (result == null) {
      return const SizedBox.shrink();
    }

    final details = <Widget>[];

    if (result.containsKey('itemId') && !result.containsKey('previousState')) {
      details.add(
        Row(
          children: [
            Icon(PhosphorIconsRegular.plus, size: 12, color: theme.colorScheme.primary),
            const SizedBox(width: Spacing.xxs),
            Text(
              l10n.itemAddedToList,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    } else if (result.containsKey('previousState')) {
      try {
        final prevMap = Map<String, dynamic>.from(
          result['previousState'] as Map,
        );
        final item = ShoppingItem.fromJson(prevMap);
        final priceStr =
            item.estimatedPrice != null
                ? ' (${formatCurrency(item.estimatedPrice!, currencyCode)})'
                : '';
        final prevCategoryName = CategoryData.defaults
            .firstWhere(
              (c) => c.id == item.categoryId,
              orElse: () => CategoryData.defaults.last,
            )
            .localizedName(l10n);
        details.add(
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                PhosphorIconsRegular.info,
                size: 12,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: Spacing.xxs),
              Expanded(
                child: Text(
                  l10n.previousItemState(
                    item.quantity.toString(),
                    item.unit.label,
                    prevCategoryName,
                    priceStr,
                  ),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
        );
      } on Object catch (e) {
        debugPrint('Error parsing previousState: $e');
      }
    } else if (result.containsKey('previousStates')) {
      try {
        final list = result['previousStates'] as List<dynamic>;
        details.add(
          Row(
            children: [
              Icon(
                PhosphorIconsRegular.listChecks,
                size: 12,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: Spacing.xxs),
              Text(
                l10n.itemsAffectedByAction(list.length),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        );
      } on Object catch (e) {
        debugPrint('Error parsing previousStates: $e');
      }
    }

    if (details.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(26, 0, Spacing.sm, 10),
      child: Column(children: details),
    );
  }
}

class _PremiumUnlockCard extends ConsumerWidget {
  const _PremiumUnlockCard({this.listId});
  final String? listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(Spacing.sm),
      decoration: BoxDecoration(
        color: AppSemanticColors.of(
          context,
        ).premium.withAlpha((0.1 * 255).toInt()),
        borderRadius: BorderRadius.circular(RadiusTokens.md),
        border: Border.all(
          color: AppSemanticColors.of(
            context,
          ).premium.withAlpha((0.3 * 255).toInt()),
        ),
      ),
      child: Row(
        children: [
          Icon(
            PhosphorIconsRegular.lock,
            size: 16,
            color: AppSemanticColors.of(context).premium,
          ),
          const SizedBox(width: Spacing.xs),
          Expanded(
            child: Text(
              l10n.premiumActionsPrompt,
              style: theme.textTheme.bodySmall?.copyWith(
                color: AppSemanticColors.of(context).premium,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          TextButton(
            onPressed: () async {
              final sessionId = ref.read(activeChatSessionIdProvider(listId));
              await showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                builder: (_) => const PaywallScreen(asSheet: true),
              );
              if (!context.mounted || sessionId == null) {
                return;
              }
              final isPremium = ref.read(premiumProvider).value ?? false;
              final notifier = ref.read(
                chatSessionProvider(listId, sessionId).notifier,
              );
              if (isPremium) {
                await notifier.resumeWithUnlock();
              } else {
                await notifier.cancelUnlock();
              }
            },
            child: Text(l10n.viewPlans),
          ),
        ],
      ),
    );
  }
}
