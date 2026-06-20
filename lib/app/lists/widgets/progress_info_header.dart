import 'package:flutter/material.dart';
import 'package:shopping_list/app/lists/widgets/filter_bar.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shopping_list/theme/tokens.dart';

class ProgressInfoHeader extends StatefulWidget implements PreferredSizeWidget {
  const ProgressInfoHeader({
    super.key,
    required this.purchasedCount,
    required this.totalItems,
    required this.totalEstimated,
    required this.totalPurchased,
    required this.progress,
    required this.budget,
    required this.overBudget,
    required this.budgetProgress,
    required this.filter,
    required this.sortLabel,
    required this.currencyCode,
    required this.onFilterChanged,
    required this.onSortPressed,
  });

  final int purchasedCount;
  final int totalItems;
  final double totalEstimated;
  final double totalPurchased;
  final double progress;
  final double budget;
  final bool overBudget;
  final double budgetProgress;
  final FilterType filter;
  final String sortLabel;
  final String currencyCode;
  final ValueChanged<FilterType> onFilterChanged;
  final VoidCallback onSortPressed;

  static const double _collapsedHeight = 72;

  @override
  State<ProgressInfoHeader> createState() => _ProgressInfoHeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(_collapsedHeight);
}

class _ProgressInfoHeaderState extends State<ProgressInfoHeader> {
  bool _expanded = false;
  final LayerLink _layerLink = LayerLink();
  final GlobalKey _headerKey = GlobalKey();
  OverlayEntry? _overlayEntry;
  double _headerHeight = ProgressInfoHeader._collapsedHeight;
  double? _headerWidth;

  void _toggleExpanded() {
    setState(() => _expanded = !_expanded);
    if (_expanded) {
      _showExpandedOverlay();
      return;
    }
    _removeExpandedOverlay();
  }

  void _showExpandedOverlay() {
    _updateHeaderMetrics();
    _overlayEntry ??= OverlayEntry(builder: _buildOverlay);
    _overlayEntry!.markNeedsBuild();
    final overlay = Overlay.maybeOf(context);
    if (overlay != null && !_overlayEntry!.mounted) {
      overlay.insert(_overlayEntry!);
    }
  }

  void _removeExpandedOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _updateHeaderMetrics() {
    final box = _headerKey.currentContext?.findRenderObject() as RenderBox?;
    final nextSize = box?.size;
    if (nextSize == null) {
      return;
    }
    if (nextSize.height != _headerHeight || nextSize.width != _headerWidth) {
      _headerHeight = nextSize.height;
      _headerWidth = nextSize.width;
      _overlayEntry?.markNeedsBuild();
    }
  }

  Widget _buildOverlay(BuildContext overlayContext) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: _toggleExpanded,
            child: const SizedBox.expand(),
          ),
        ),
        CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0, _headerHeight),
          child: Material(
            color: Colors.transparent,
            child: Container(
              width: _headerWidth,
              padding: const EdgeInsets.fromLTRB(
                Spacing.md,
                0,
                Spacing.md,
                Spacing.sm,
              ),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                border: Border(
                  top: BorderSide(
                    color: theme.colorScheme.outlineVariant,
                  ),
                  bottom: BorderSide(
                    color: theme.colorScheme.outlineVariant,
                  ),
                ),
              ),
              child: _ExpandedDetails(
                filter: widget.filter,
                sortLabel: widget.sortLabel,
                onFilterChanged: widget.onFilterChanged,
                onSortPressed: widget.onSortPressed,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void didUpdateWidget(covariant ProgressInfoHeader oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_expanded) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) {
          return;
        }
        _updateHeaderMetrics();
        _overlayEntry?.markNeedsBuild();
      });
    }
  }

  @override
  void dispose() {
    _removeExpandedOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) {
        return;
      }
      _updateHeaderMetrics();
    });

    return CompositedTransformTarget(
      link: _layerLink,
      child: Material(
        key: _headerKey,
        color: theme.colorScheme.surface,
        child: InkWell(
          onTap: _toggleExpanded,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              Spacing.md,
              Spacing.xs,
              Spacing.md,
              Spacing.sm,
            ),
            child: _SummaryRow(
              purchasedCount: widget.purchasedCount,
              totalItems: widget.totalItems,
              totalEstimated: widget.totalEstimated,
              totalPurchased: widget.totalPurchased,
              progress: widget.progress,
              budget: widget.budget,
              overBudget: widget.overBudget,
              budgetProgress: widget.budgetProgress,
              currencyCode: widget.currencyCode,
              expanded: _expanded,
            ),
          ),
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({
    required this.purchasedCount,
    required this.totalItems,
    required this.totalEstimated,
    required this.totalPurchased,
    required this.progress,
    required this.budget,
    required this.overBudget,
    required this.budgetProgress,
    required this.currencyCode,
    required this.expanded,
  });

  final int purchasedCount;
  final int totalItems;
  final double totalEstimated;
  final double totalPurchased;
  final double progress;
  final double budget;
  final bool overBudget;
  final double budgetProgress;
  final String currencyCode;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final summaryColor =
        overBudget ? theme.colorScheme.error : theme.colorScheme.primary;

    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                    child: Text(
                      l10n.progressItemsOf(purchasedCount, totalItems),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  if (budget > 0) ...[
                    const SizedBox(width: Spacing.xs),
                    Flexible(
                      child: _BudgetChip(
                        budget: budget,
                        overBudget: overBudget,
                        budgetProgress: budgetProgress,
                        currencyCode: currencyCode,
                      ),
                    ),
                  ],
                ],
              ),
              const SizedBox(height: Spacing.xxs),
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(RadiusTokens.full),
                      child: LinearProgressIndicator(
                        value: progress,
                        minHeight: Spacing.xxs,
                        backgroundColor:
                            theme.colorScheme.surfaceContainerHighest,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                  if (budget > 0) ...[
                    const SizedBox(width: Spacing.xxs),
                    SizedBox(
                      width: Spacing.xxxl,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(RadiusTokens.full),
                        child: LinearProgressIndicator(
                          value: budgetProgress > 1 ? 1 : budgetProgress,
                          minHeight: Spacing.xxs,
                          backgroundColor:
                              theme.colorScheme.surfaceContainerHighest,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            overBudget
                                ? theme.colorScheme.error
                                : AppSemanticColors.of(context).warning,
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: Spacing.sm),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              formatCurrency(totalPurchased, currencyCode),
              style: theme.textTheme.titleMedium?.copyWith(
                color: summaryColor,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              l10n.progressTotal(formatCurrency(totalEstimated, currencyCode)),
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
          ],
        ),
        const SizedBox(width: Spacing.xs),
        Icon(
          expanded ? Icons.expand_less : Icons.expand_more,
          color: theme.colorScheme.onSurfaceVariant,
        ),
      ],
    );
  }
}

class _BudgetChip extends StatelessWidget {
  const _BudgetChip({
    required this.budget,
    required this.overBudget,
    required this.budgetProgress,
    required this.currencyCode,
  });

  final double budget;
  final bool overBudget;
  final double budgetProgress;
  final String currencyCode;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final chipColor =
        overBudget
            ? theme.colorScheme.errorContainer
            : theme.colorScheme.secondaryContainer;
    final textColor =
        overBudget
            ? theme.colorScheme.onErrorContainer
            : theme.colorScheme.onSecondaryContainer;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: chipColor,
        borderRadius: BorderRadius.circular(RadiusTokens.full),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Spacing.xs,
          vertical: Spacing.xxs,
        ),
        child: Text(
          l10n.progressBudget(formatCurrency(budget, currencyCode)),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.labelSmall?.copyWith(
            color: textColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class _ExpandedDetails extends StatelessWidget {
  const _ExpandedDetails({
    required this.filter,
    required this.sortLabel,
    required this.onFilterChanged,
    required this.onSortPressed,
  });

  final FilterType filter;
  final String sortLabel;
  final ValueChanged<FilterType> onFilterChanged;
  final VoidCallback onSortPressed;

  @override
  Widget build(BuildContext context) {
    return FilterBar(
      filter: filter,
      sort: SortType.manual,
      sortLabelOverride: sortLabel,
      isGrouped: false,
      showGroupingToggle: false,
      onFilterChanged: onFilterChanged,
      onSortChanged: (_) => onSortPressed(),
      onGroupedChanged: (_) {},
    );
  }
}
