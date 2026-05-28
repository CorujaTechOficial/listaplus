import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';
import 'package:shopping_list/app/meal_planner/widgets/add_meal_plan_sheet.dart';
import 'package:shopping_list/app/meal_planner/widgets/meal_day_card.dart';
import 'package:shopping_list/app/meal_planner/widgets/meal_type_chip.dart';
import 'package:shopping_list/app/meal_planner/widgets/weekly_summary_bar.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/theme/tokens.dart';

class MealPlannerScreen extends ConsumerStatefulWidget {
  const MealPlannerScreen({super.key});

  @override
  ConsumerState<MealPlannerScreen> createState() => _MealPlannerScreenState();
}

class _MealPlannerScreenState extends ConsumerState<MealPlannerScreen> {
  DateTime _focusedDay = DateTime.now();
  bool _isWeekly = true;

  // ----- Helpers -------------------------------------------------------

  DateTime get _weekStart =>
      _focusedDay.subtract(Duration(days: _focusedDay.weekday - 1));

  DateTime get _weekEnd => _weekStart.add(const Duration(days: 6));

  DateTime get _monthStart =>
      DateTime(_focusedDay.year, _focusedDay.month, 1);

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
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.mealPlannerMealDeleted),
          action: SnackBarAction(
            label: l10n.undo,
            onPressed: () => notifier.saveMealPlan(plan),
          ),
        ),
      );
    }
  }

  Future<void> _generateShoppingList() async {
    final l10n = AppLocalizations.of(context)!;

    // Confirmation dialog
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        icon: const Icon(Icons.shopping_cart_rounded),
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
      final count = await ref
          .read(mealPlansProvider(start: _start, end: _end).notifier)
          .generateShoppingListFromWeek();

      if (!mounted) {
        return;
      }

      if (count == 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.mealPlannerGenerateListEmpty)),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.mealPlannerGenerateListSuccess(count)),
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
        );
      }
    } on Exception catch (e) {
      if (!mounted) {
        return;
      }
      final message = e.toString().contains('no_list')
          ? l10n.mealPlannerGenerateListNoList
          : l10n.mealPlannerError;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }

  void _shareApp() {
    final l10n = AppLocalizations.of(context)!;
    SharePlus.instance.share(ShareParams(
      text: l10n.shareReferralText('https://listaplus.com/invite'),
      subject: l10n.shareReferralSubject,
    ));
  }

  // ----- Build ---------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final mealPlansAsync =
        ref.watch(mealPlansProvider(start: _start, end: _end));

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
          tooltip: l10n.openMenu,
        ),
        title: Text(l10n.mealPlannerTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: _shareApp,
            tooltip: l10n.shareApp,
          ),
          // Generate shopping list button
          if (_isWeekly)
            IconButton(
              icon: const Icon(Icons.shopping_cart_outlined),
              onPressed: _generateShoppingList,
              tooltip: l10n.mealPlannerGenerateList,
            ),
          // Toggle weekly/monthly
          IconButton(
            icon: Icon(
              _isWeekly
                  ? Icons.calendar_view_month_rounded
                  : Icons.calendar_view_week_rounded,
            ),
            onPressed: () => setState(() => _isWeekly = !_isWeekly),
            tooltip: _isWeekly
                ? l10n.mealPlannerViewMonthly
                : l10n.mealPlannerViewWeekly,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            _CalendarHeader(
            focusedDay: _focusedDay,
            isWeekly: _isWeekly,
            onPrev: () => setState(() {
              _focusedDay = _isWeekly
                  ? _focusedDay.subtract(const Duration(days: 7))
                  : DateTime(_focusedDay.year, _focusedDay.month - 1, 1);
            }),
            onNext: () => setState(() {
              _focusedDay = _isWeekly
                  ? _focusedDay.add(const Duration(days: 7))
                  : DateTime(_focusedDay.year, _focusedDay.month + 1, 1);
            }),
            onToday: () => setState(() => _focusedDay = DateTime.now()),
          ),
          Expanded(
            child: mealPlansAsync.when(
              data: (plans) {
                if (_isWeekly) {
                  return _WeeklyView(
                    plans: plans,
                    weekStart: _weekStart,
                    isSameDay: _isSameDay,
                    onAddMeal: _openAddSheet,
                    onDeleteMeal: _deleteMealPlan,
                  );
                } else {
                  return _MonthlyView(
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
                  );
                }
              },
              loading: () => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    const SizedBox(height: Spacing.md),
                    Text(l10n.mealPlannerLoading),
                  ],
                ),
              ),
              error: (err, stack) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(Spacing.xl),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.cloud_off_rounded,
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
                        onPressed: () => ref.invalidate(
                          mealPlansProvider(start: _start, end: _end),
                        ),
                        icon: const Icon(Icons.refresh_rounded),
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
      floatingActionButton: _isWeekly
          ? FloatingActionButton.extended(
              heroTag: null,
              onPressed: () => _openAddSheet(DateTime.now()),
              icon: const Icon(Icons.add_rounded),
              label: Text(l10n.mealPlannerAddMeal),
            )
          : FloatingActionButton(
              heroTag: null,
              onPressed: () => _openAddSheet(DateTime.now()),
              child: const Icon(Icons.add_rounded),
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
    final theme = Theme.of(context);
    final monthName = _getMonthName(focusedDay.month);
    final isCurrentMonth = focusedDay.year == DateTime.now().year &&
        focusedDay.month == DateTime.now().month;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.xs,
        vertical: Spacing.xxs,
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.chevron_left_rounded),
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
                      'Voltar para hoje',
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                ],
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right_rounded),
            onPressed: onNext,
          ),
        ],
      ),
    );
  }

  String _getMonthName(int month) {
    const names = [
      '',
      'Janeiro',
      'Fevereiro',
      'Março',
      'Abril',
      'Maio',
      'Junho',
      'Julho',
      'Agosto',
      'Setembro',
      'Outubro',
      'Novembro',
      'Dezembro'
    ];
    return names[month];
  }
}

// ---------------------------------------------------------------------------
// Weekly view
// ---------------------------------------------------------------------------

class _WeeklyView extends StatelessWidget {
  const _WeeklyView({
    required this.plans,
    required this.weekStart,
    required this.isSameDay,
    required this.onAddMeal,
    required this.onDeleteMeal,
  });

  final List<MealPlan> plans;
  final DateTime weekStart;
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

        if (isWeekEmpty)
          Expanded(
            child: _WeekEmptyState(l10n: l10n, theme: theme),
          )
        else
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(
                Spacing.md, Spacing.xs, Spacing.md, 80,
              ),
              itemCount: 7,
              itemBuilder: (context, index) {
                final date = weekStart.add(Duration(days: index));
                final dayPlans = plans
                    .where((p) => isSameDay(p.date, date))
                    .toList();
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

class _WeekEmptyState extends StatelessWidget {
  const _WeekEmptyState({required this.l10n, required this.theme});

  final AppLocalizations l10n;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
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
              return Transform.scale(
                scale: value,
                child: child,
              );
            },
            child: Icon(
              Icons.restaurant_menu_rounded,
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
            children: MealType.values.map((type) {
              return MealTypeChip(
                type: type,
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

class _MonthlyView extends StatelessWidget {
  const _MonthlyView({
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
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final today = DateTime.now();
    final daysInMonth = monthEnd.day;
    final firstWeekday = monthStart.weekday; // 1=Mon ... 7=Sun
    final leadingBlanks = firstWeekday - 1;
    final totalCells = leadingBlanks + daysInMonth;

    return Column(
      children: [
        // Day-of-week header
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Spacing.md, vertical: Spacing.xs),
          child: Row(
            children: ['Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom']
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
              crossAxisSpacing: 3,
              mainAxisSpacing: 3,
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
  });

  final DateTime date;
  final List<MealPlan> plans;
  final bool isToday;
  final ThemeData theme;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final mealTypes = plans.map((p) => p.mealType).toSet().toList()
      ..sort((a, b) => a.index.compareTo(b.index));

    return Material(
      color: isToday
          ? theme.colorScheme.primaryContainer
          : theme.colorScheme.surfaceContainerLow,
      borderRadius: BorderRadius.circular(RadiusTokens.sm),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(RadiusTokens.sm),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${date.day}',
                style: theme.textTheme.labelMedium?.copyWith(
                  fontWeight: isToday ? FontWeight.bold : FontWeight.w500,
                  color: isToday
                      ? theme.colorScheme.primary
                      : theme.colorScheme.onSurface,
                ),
              ),
              if (mealTypes.isNotEmpty) ...[
                const SizedBox(height: 2),
                Wrap(
                  spacing: 2,
                  runSpacing: 2,
                  alignment: WrapAlignment.center,
                  children: mealTypes.take(3).map((type) {
                    final color =
                        mealTypeColor(type, theme.colorScheme);
                    return Container(
                      width: 8,
                      height: 8,
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
    );
  }
}
