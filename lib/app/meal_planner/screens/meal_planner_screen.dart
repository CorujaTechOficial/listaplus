import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';
import 'package:shopping_list/app/meal_planner/widgets/add_meal_plan_sheet.dart';
import 'package:shopping_list/app/meal_planner/widgets/meal_day_card.dart';
import 'package:shopping_list/app/meal_planner/widgets/meal_type_chip.dart';
import 'package:shopping_list/app/meal_planner/widgets/budget_summary_card.dart';
import 'package:shopping_list/app/meal_planner/widgets/weekly_summary_bar.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/core/utils/snack_bar_utils.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/app/shared/widgets/account_menu_sheet.dart';
import 'meal_types_screen.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

enum _AppBarAction { share }

class MealPlannerScreen extends ConsumerStatefulWidget {
  const MealPlannerScreen({super.key});

  @override
  ConsumerState<MealPlannerScreen> createState() => _MealPlannerScreenState();
}

class _MealPlannerScreenState extends ConsumerState<MealPlannerScreen> {
  DateTime _focusedDay = DateTime.now();
  bool _isWeekly = true;

  // ----- Helpers -------------------------------------------------------

  DateTime get _weekStart {
    final startDay = MaterialLocalizations.of(context).firstDayOfWeekIndex;
    final dayInSundayIndexSystem = _focusedDay.weekday % 7;
    final diff = (dayInSundayIndexSystem - startDay + 7) % 7;
    return _focusedDay.subtract(Duration(days: diff));
  }

  DateTime get _weekEnd => _weekStart.add(const Duration(days: 6));

  DateTime get _monthStart => DateTime(_focusedDay.year, _focusedDay.month, 1);

  DateTime get _monthEnd =>
      DateTime(_focusedDay.year, _focusedDay.month + 1, 0);

  DateTime get _start => _isWeekly ? _weekStart : _monthStart;
  DateTime get _end => _isWeekly ? _weekEnd : _monthEnd;

  bool _isSameDay(DateTime a, DateTime b) =>
      a.year == b.year && a.month == b.month && a.day == b.day;

  // ----- Actions -------------------------------------------------------

  Future<void> _openAddSheet(DateTime date) async {
    await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => AddMealPlanSheet(initialDate: date),
    );
  }

  Future<void> _deleteMealPlan(MealPlan plan) async {
    final l10n = AppLocalizations.of(context)!;
    final notifier = ref.read(
      mealPlansProvider(start: _start, end: _end).notifier,
    );
    await notifier.deleteMealPlan(plan.id);

    if (mounted) {
      showKipiSnackBar(
        context,
        message: l10n.mealPlannerMealDeleted,
        type: SnackBarType.info,
        action: SnackBarAction(
          label: l10n.undo,
          onPressed: () => notifier.saveMealPlan(plan),
        ),
      );
    }
  }

  Future<void> _generateShoppingList() async {
    final l10n = AppLocalizations.of(context)!;

    // Confirmation dialog
    final confirmed = await showDialog<bool>(
      context: context,
      builder:
          (ctx) => AlertDialog(
            icon: const Icon(PhosphorIconsRegular.shoppingCart),
            title: Text(l10n.mealPlannerGenerateList),
            content: Text(l10n.mealPlannerGenerateListConfirm),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(false),
                child: Text(l10n.cancel),
              ),
              FilledButton(
                onPressed: () => Navigator.of(ctx).pop(true),
                child: Text(l10n.add),
              ),
            ],
          ),
    );

    if (confirmed != true || !mounted) {
      return;
    }

    try {
      final count =
          await ref
              .read(mealPlansProvider(start: _start, end: _end).notifier)
              .generateShoppingListFromWeek();

      if (!mounted) {
        return;
      }

      if (count == 0) {
        showKipiSnackBar(
          context,
          message: l10n.mealPlannerGenerateListEmpty,
          type: SnackBarType.info,
        );
      } else {
        showKipiSnackBar(
          context,
          message: l10n.mealPlannerGenerateListSuccess(count),
          type: SnackBarType.success,
        );
      }
    } on Exception catch (e) {
      if (!mounted) {
        return;
      }
      final message =
          e.toString().contains('no_list')
              ? l10n.mealPlannerGenerateListNoList
              : l10n.mealPlannerError;
      showKipiSnackBar(
        context,
        message: message,
        type: SnackBarType.error,
      );
    }
  }

  void _shareApp() {
    final l10n = AppLocalizations.of(context)!;
    SharePlus.instance.share(
      ShareParams(
        text: l10n.shareReferralText('https://kipilist.com/invite'),
        subject: l10n.shareReferralSubject,
      ),
    );
  }

  // ----- Build ---------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final mealPlansAsync = ref.watch(
      mealPlansProvider(start: _start, end: _end),
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(PhosphorIconsRegular.user),
          onPressed: () => AccountMenuSheet.show(context),
        ),
        title: Text(l10n.mealPlannerTitle),
        actions: [
          IconButton(
            icon: const Icon(PhosphorIconsRegular.gearSix),
            onPressed: () => MealTypesScreen.show(context),
            tooltip: l10n.mealPlannerManageTypes,
          ),
          // Toggle weekly/monthly — primary navigation control
          IconButton(
            icon: Icon(
              _isWeekly
                  ? PhosphorIconsRegular.calendarBlank
                  : PhosphorIconsRegular.calendarBlank,
            ),
            onPressed: () => setState(() => _isWeekly = !_isWeekly),
            tooltip:
                _isWeekly
                    ? l10n.mealPlannerViewMonthly
                    : l10n.mealPlannerViewWeekly,
          ),
          // Overflow menu — secondary actions
          PopupMenuButton<_AppBarAction>(
            icon: const Icon(PhosphorIconsRegular.dotsThreeVertical),
            onSelected: (action) {
              switch (action) {
                case _AppBarAction.share:
                  _shareApp();
                  break;
              }
            },
            itemBuilder: (ctx) => [
              PopupMenuItem<_AppBarAction>(
                value: _AppBarAction.share,
                child: ListTile(
                  leading: const Icon(PhosphorIconsRegular.shareNetwork),
                  title: Text(l10n.shareApp),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            _CalendarHeader(
              focusedDay: _focusedDay,
              isWeekly: _isWeekly,
              onPrev:
                  () => setState(() {
                    _focusedDay =
                        _isWeekly
                            ? _focusedDay.subtract(const Duration(days: 7))
                            : DateTime(
                              _focusedDay.year,
                              _focusedDay.month - 1,
                              1,
                            );
                  }),
              onNext:
                  () => setState(() {
                    _focusedDay =
                        _isWeekly
                            ? _focusedDay.add(const Duration(days: 7))
                            : DateTime(
                              _focusedDay.year,
                              _focusedDay.month + 1,
                              1,
                            );
                  }),
              onToday: () => setState(() => _focusedDay = DateTime.now()),
            ),
            // "Gerar lista" CTA — visible only when weekly and has meals
            if (_isWeekly && (mealPlansAsync.value?.isNotEmpty ?? false))
              _GenerateListBar(
                l10n: l10n,
                theme: theme,
                onPressed: _generateShoppingList,
              ),
            Expanded(
              child: mealPlansAsync.when(
                data: (plans) {
                  return AnimatedSwitcher(
                    duration: DurationTokens.normal,
                    transitionBuilder:
                        (child, animation) => FadeTransition(
                          opacity: animation,
                          child: SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(0.05, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          ),
                        ),
                    child:
                        _isWeekly
                            ? _WeeklyView(
                              key: const ValueKey('weekly'),
                              plans: plans,
                              weekStart: _weekStart,
                              weekEnd: _weekEnd,
                              monthStart: _monthStart,
                              monthEnd: _monthEnd,
                              focusedDay: _focusedDay,
                              isSameDay: _isSameDay,
                              onAddMeal: _openAddSheet,
                              onDeleteMeal: _deleteMealPlan,
                            )
                            : _MonthlyView(
                              key: const ValueKey('monthly'),
                              plans: plans,
                              monthStart: _monthStart,
                              monthEnd: _monthEnd,
                              isSameDay: _isSameDay,
                              onDayTap: (date) {
                                setState(() {
                                  _focusedDay = date;
                                  _isWeekly = true;
                                });
                              },
                            ),
                  );
                },
                loading:
                    () => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircularProgressIndicator(),
                          const SizedBox(height: Spacing.md),
                          Text(l10n.mealPlannerLoading),
                        ],
                      ),
                    ),
                error:
                    (err, stack) => Center(
                      child: Padding(
                        padding: const EdgeInsets.all(Spacing.xl),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              PhosphorIconsRegular.cloudSlash,
                              size: 56,
                              color: theme.colorScheme.error.withAlpha(180),
                            ),
                            const SizedBox(height: Spacing.md),
                            Text(
                              l10n.mealPlannerError,
                              style: theme.textTheme.titleLarge,
                            ),
                            const SizedBox(height: Spacing.xs),
                            Text(
                              err.toString().replaceFirst('Exception: ', ''),
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                            const SizedBox(height: Spacing.lg),
                            FilledButton.icon(
                              onPressed:
                                  () => ref.invalidate(
                                    mealPlansProvider(start: _start, end: _end),
                                  ),
                              icon: const Icon(PhosphorIconsRegular.arrowCounterClockwise),
                              label: Text(l10n.retry),
                            ),
                          ],
                        ),
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:
          _isWeekly
              ? FloatingActionButton.extended(
                heroTag: null,
                onPressed: () => _openAddSheet(DateTime.now()),
                icon: const Icon(PhosphorIconsRegular.plus),
                label: Text(l10n.mealPlannerAddMeal),
              )
              : FloatingActionButton(
                heroTag: null,
                onPressed: () => _openAddSheet(DateTime.now()),
                child: const Icon(PhosphorIconsRegular.plus),
              ),
    );
  }
}

// ---------------------------------------------------------------------------
// Calendar header
// ---------------------------------------------------------------------------

class _CalendarHeader extends StatelessWidget {
  const _CalendarHeader({
    required this.focusedDay,
    required this.isWeekly,
    required this.onPrev,
    required this.onNext,
    required this.onToday,
  });

  final DateTime focusedDay;
  final bool isWeekly;
  final VoidCallback onPrev;
  final VoidCallback onNext;
  final VoidCallback onToday;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final locale = Localizations.localeOf(context).languageCode;
    final monthName = DateFormat.MMMM(locale).format(focusedDay);
    final isCurrentMonth =
        focusedDay.year == DateTime.now().year &&
        focusedDay.month == DateTime.now().month;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.xs,
        vertical: Spacing.xxs,
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(PhosphorIconsRegular.caretLeft),
            onPressed: onPrev,
          ),
          Expanded(
            child: GestureDetector(
              onTap: isCurrentMonth ? null : onToday,
              child: Column(
                children: [
                  Text(
                    '$monthName ${focusedDay.year}',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  if (!isCurrentMonth)
                    Text(
                      l10n.backToToday,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                ],
              ),
            ),
          ),
          IconButton(
            icon: const Icon(PhosphorIconsRegular.caretRight),
            onPressed: onNext,
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Weekly view
// ---------------------------------------------------------------------------

class _WeeklyView extends StatelessWidget {
  const _WeeklyView({
    super.key,
    required this.plans,
    required this.weekStart,
    required this.weekEnd,
    required this.monthStart,
    required this.monthEnd,
    required this.focusedDay,
    required this.isSameDay,
    required this.onAddMeal,
    required this.onDeleteMeal,
  });

  final List<MealPlan> plans;
  final DateTime weekStart;
  final DateTime weekEnd;
  final DateTime monthStart;
  final DateTime monthEnd;
  final DateTime focusedDay;
  final bool Function(DateTime, DateTime) isSameDay;
  final Future<void> Function(DateTime) onAddMeal;
  final Future<void> Function(MealPlan) onDeleteMeal;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final today = DateTime.now();

    // Check if entire week is empty
    final isWeekEmpty = plans.isEmpty;

    return Column(
      children: [
        // Weekly progress bar
        WeeklySummaryBar(plans: plans),
        BudgetSummaryCard(
          weekStart: weekStart,
          weekEnd: weekEnd,
          monthStart: monthStart,
          monthEnd: monthEnd,
          focusedDay: focusedDay,
        ),

        if (isWeekEmpty)
          Expanded(child: _WeekEmptyState(l10n: l10n, theme: theme))
        else
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(
                Spacing.md,
                Spacing.xs,
                Spacing.md,
                Spacing.xxl + Spacing.xl,
              ),
              itemCount: 7,
              itemBuilder: (context, index) {
                final date = weekStart.add(Duration(days: index));
                final dayPlans =
                    plans.where((p) => isSameDay(p.date, date)).toList();
                final isToday = isSameDay(date, today);

                return MealDayCard(
                  date: date,
                  plans: dayPlans,
                  isToday: isToday,
                  onTap: () => onAddMeal(date),
                  onDeleteMeal: onDeleteMeal,
                );
              },
            ),
          ),
      ],
    );
  }
}

class _WeekEmptyState extends ConsumerWidget {
  const _WeekEmptyState({required this.l10n, required this.theme});

  final AppLocalizations l10n;
  final ThemeData theme;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeTypes = ref.watch(activeMealTypesProvider);

    return Padding(
      padding: const EdgeInsets.all(Spacing.xl),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0, end: 1),
            duration: DurationTokens.slow,
            curve: Curves.elasticOut,
            builder: (context, value, child) {
              return Transform.scale(scale: value, child: child);
            },
            child: Icon(
              PhosphorIconsRegular.forkKnife,
              size: 80,
              color: theme.colorScheme.primary.withAlpha(60),
            ),
          ),
          const SizedBox(height: Spacing.lg),
          Text(
            l10n.mealPlannerWeekEmpty,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Spacing.sm),
          Text(
            l10n.mealPlannerWeekEmptyHint,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Spacing.lg),
          // Show all meal type chips for visual context
          Wrap(
            spacing: Spacing.xs,
            runSpacing: Spacing.xs,
            alignment: WrapAlignment.center,
            children:
                activeTypes.map((type) {
                  return MealTypeChip(
                    mealType: type,
                    isSelected: false,
                    onTap: () {},
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Monthly view
// ---------------------------------------------------------------------------

class _MonthlyView extends ConsumerWidget {
  const _MonthlyView({
    super.key,
    required this.plans,
    required this.monthStart,
    required this.monthEnd,
    required this.isSameDay,
    required this.onDayTap,
  });

  final List<MealPlan> plans;
  final DateTime monthStart;
  final DateTime monthEnd;
  final bool Function(DateTime, DateTime) isSameDay;
  final void Function(DateTime) onDayTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final today = DateTime.now();
    final locale = Localizations.localeOf(context).languageCode;
    final startDay = MaterialLocalizations.of(context).firstDayOfWeekIndex; // 0=Sun, 1=Mon
    // Jan 7, 2024 was Sunday.
    final baseDate = DateTime(2024, 1, 7 + startDay);
    final dayNames = List.generate(
      7,
      (i) => DateFormat.E(locale).format(baseDate.add(Duration(days: i))),
    );
    final daysInMonth = monthEnd.day;
    final firstWeekdayInSundayIndex = monthStart.weekday % 7;
    final leadingBlanks = (firstWeekdayInSundayIndex - startDay + 7) % 7;
    final totalCells = leadingBlanks + daysInMonth;
    final activeTypes = ref.watch(activeMealTypesProvider);
    final costMapAsync = ref.watch(
      mealPlannerDayCostMapProvider(start: monthStart, end: monthEnd),
    );
    final costMap = costMapAsync.value ?? {};
    final maxDayCost = costMap.values.isEmpty
        ? 0.0
        : costMap.values
            .map((d) => d.totalCost)
            .reduce((a, b) => a > b ? a : b);
    final currencyCode = resolveCurrencyCode(
      ref.watch(currencySettingProvider),
      Localizations.localeOf(context),
    );

    return Column(
      children: [
        // Day-of-week header
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.md,
            vertical: Spacing.xs,
          ),
          child: Row(
            children:
                dayNames
                    .map(
                      (d) => Expanded(
                        child: Text(
                          d,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
        const Divider(height: 1),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(Spacing.sm),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 0.85,
              crossAxisSpacing: Spacing.xxs,
              mainAxisSpacing: Spacing.xxs,
            ),
            itemCount: totalCells,
            itemBuilder: (context, index) {
              if (index < leadingBlanks) {
                return const SizedBox.shrink();
              }
              final day = index - leadingBlanks + 1;
              final date = DateTime(monthStart.year, monthStart.month, day);
              final dayPlans =
                  plans.where((p) => isSameDay(p.date, date)).toList();
              final isToday = isSameDay(date, today);

              return _MonthDayCell(
                date: date,
                plans: dayPlans,
                isToday: isToday,
                theme: theme,
                onTap: () => onDayTap(date),
                activeTypes: activeTypes,
                dayCost: costMap[DateTime(date.year, date.month, date.day)]
                        ?.totalCost ??
                    0.0,
                maxDayCost: maxDayCost,
                currencyCode: currencyCode,
              );
            },
          ),
        ),
      ],
    );
  }
}

class _MonthDayCell extends StatelessWidget {
  const _MonthDayCell({
    required this.date,
    required this.plans,
    required this.isToday,
    required this.theme,
    required this.onTap,
    required this.activeTypes,
    this.dayCost = 0.0,
    this.maxDayCost = 0.0,
    this.currencyCode = 'BRL',
  });

  final DateTime date;
  final List<MealPlan> plans;
  final bool isToday;
  final ThemeData theme;
  final VoidCallback onTap;
  final List<MealType> activeTypes;
  final double dayCost;
  final double maxDayCost;
  final String currencyCode;

  @override
  Widget build(BuildContext context) {
    final mealTypeIds = plans.map((p) => p.mealType).toSet().toList();
    mealTypeIds.sort((a, b) {
      final idxA = activeTypes.indexWhere((t) => t.id == a);
      final idxB = activeTypes.indexWhere((t) => t.id == b);
      final valA = idxA == -1 ? 999 : idxA;
      final valB = idxB == -1 ? 999 : idxB;
      return valA.compareTo(valB);
    });

    final intensity = (maxDayCost > 0 && dayCost > 0)
        ? (dayCost / maxDayCost).clamp(0.0, 1.0)
        : 0.0;

    final baseColor = isToday
        ? theme.colorScheme.primaryContainer
        : theme.colorScheme.surfaceContainerLow;

    final cellColor = (!isToday && intensity > 0)
        ? Color.alphaBlend(
            theme.colorScheme.tertiary.withAlpha((intensity * 80).toInt()),
            baseColor,
          )
        : baseColor;

    return Tooltip(
      message: dayCost > 0 ? formatCurrency(dayCost, currencyCode) : '',
      triggerMode: TooltipTriggerMode.longPress,
      child: Material(
        color: cellColor,
        borderRadius: BorderRadius.circular(RadiusTokens.sm),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(RadiusTokens.sm),
          child: Padding(
            padding: const EdgeInsets.all(Spacing.xxs),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${date.day}',
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontWeight: isToday ? FontWeight.bold : FontWeight.w500,
                    color:
                        isToday
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurface,
                  ),
                ),
                if (mealTypeIds.isNotEmpty) ...[
                  const SizedBox(height: RadiusTokens.bar),
                  Wrap(
                    spacing: RadiusTokens.bar,
                    runSpacing: RadiusTokens.bar,
                    alignment: WrapAlignment.center,
                    children:
                        mealTypeIds.take(3).map((typeId) {
                          final color = getMealTypeColor(typeId, activeTypes, theme.colorScheme);
                          return Container(
                            width: Spacing.xs,
                            height: Spacing.xs,
                            decoration: BoxDecoration(
                              color: color,
                              shape: BoxShape.circle,
                            ),
                          );
                        }).toList(),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Generate shopping list CTA bar
// ---------------------------------------------------------------------------

class _GenerateListBar extends StatelessWidget {
  const _GenerateListBar({
    required this.l10n,
    required this.theme,
    required this.onPressed,
  });

  final AppLocalizations l10n;
  final ThemeData theme;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: theme.colorScheme.surface,
      padding: const EdgeInsets.fromLTRB(
        Spacing.md,
        Spacing.xs,
        Spacing.md,
        Spacing.md,
      ),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: const Icon(PhosphorIconsRegular.shoppingCart),
          label: Text(l10n.mealPlannerGenerateList),
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.colorScheme.primary,
            foregroundColor: theme.colorScheme.onPrimary,
            padding: const EdgeInsets.symmetric(vertical: Spacing.md),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(RadiusTokens.lg),
            ),
          ),
        ),
      ),
    );
  }
}
