import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class MealPlannerScreen extends ConsumerStatefulWidget {
  const MealPlannerScreen({super.key});

  @override
  ConsumerState<MealPlannerScreen> createState() => _MealPlannerScreenState();
}

class _MealPlannerScreenState extends ConsumerState<MealPlannerScreen> {
  DateTime _focusedDay = DateTime.now();
  bool _isWeekly = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    final start = _isWeekly 
        ? _focusedDay.subtract(Duration(days: _focusedDay.weekday - 1))
        : DateTime(_focusedDay.year, _focusedDay.month, 1);
    final end = _isWeekly
        ? start.add(const Duration(days: 6))
        : DateTime(_focusedDay.year, _focusedDay.month + 1, 0);

    final mealPlansAsync = ref.watch(mealPlansProvider(start: start, end: end));
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
          tooltip: l10n.openMenu,
        ),
        title: const Text('Planejador de Refeições'),
        actions: [
          IconButton(
            icon: Icon(_isWeekly ? Icons.calendar_view_month : Icons.calendar_view_week),
            onPressed: () => setState(() => _isWeekly = !_isWeekly),
            tooltip: _isWeekly ? 'Ver Mensal' : 'Ver Semanal',
          ),
        ],
      ),
      body: Column(
        children: [
          _buildCalendarHeader(theme),
          Expanded(
            child: mealPlansAsync.when(
              data: (plans) => _isWeekly 
                  ? _buildWeeklyView(plans, start, theme)
                  : _buildMonthlyView(plans, start, end, theme),
              loading: () => const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: Spacing.md),
                    Text('Carregando cardápio...'),
                  ],
                ),
              ),
              error: (err, stack) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(Spacing.xl),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.cloud_off, size: 48, color: Colors.red),
                      const SizedBox(height: Spacing.md),
                      Text(
                        'Erro ao carregar cardápio',
                        style: theme.textTheme.titleLarge,
                      ),
                      const SizedBox(height: Spacing.xs),
                      Text(
                        err.toString().replaceFirst('Exception: ', ''),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: Spacing.lg),
                      FilledButton.icon(
                        onPressed: () => ref.invalidate(mealPlansProvider(start: start, end: end)),
                        icon: const Icon(Icons.refresh),
                        label: const Text('Tentar Novamente'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add meal plan entry
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildCalendarHeader(ThemeData theme) {
    final monthName = _getMonthName(_focusedDay.month);
    return Padding(
      padding: const EdgeInsets.all(Spacing.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () => setState(() {
              _focusedDay = _isWeekly 
                  ? _focusedDay.subtract(const Duration(days: 7))
                  : DateTime(_focusedDay.year, _focusedDay.month - 1, 1);
            }),
          ),
          Text(
            '$monthName ${_focusedDay.year}',
            style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right),
            onPressed: () => setState(() {
              _focusedDay = _isWeekly 
                  ? _focusedDay.add(const Duration(days: 7))
                  : DateTime(_focusedDay.year, _focusedDay.month + 1, 1);
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildWeeklyView(List<MealPlan> plans, DateTime start, ThemeData theme) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
      itemCount: 7,
      itemBuilder: (context, index) {
        final date = start.add(Duration(days: index));
        final dayPlans = plans.where((p) => 
            p.date.year == date.year && 
            p.date.month == date.month && 
            p.date.day == date.day).toList();
        
        final isToday = _isSameDay(date, DateTime.now());

        return Container(
          margin: const EdgeInsets.only(bottom: Spacing.md),
          decoration: BoxDecoration(
            color: isToday ? theme.colorScheme.primaryContainer.withAlpha((0.3 * 255).toInt()) : theme.colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(RadiusTokens.md),
            border: isToday ? Border.all(color: theme.colorScheme.primary, width: 2) : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(Spacing.sm),
                child: Row(
                  children: [
                    Text(
                      _getWeekdayName(date.weekday),
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: isToday ? theme.colorScheme.primary : null,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${date.day}/${date.month}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              if (dayPlans.isEmpty)
                Padding(
                  padding: const EdgeInsets.fromLTRB(Spacing.sm, 0, Spacing.sm, Spacing.sm),
                  child: Text(
                    'Nenhuma refeição planejada',
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontStyle: FontStyle.italic,
                      color: theme.colorScheme.onSurfaceVariant.withAlpha((0.6 * 255).toInt()),
                    ),
                  ),
                )
              else
                ...dayPlans.map((plan) => ListTile(
                  dense: true,
                  leading: _getMealIcon(plan.mealType, theme),
                  title: Text(plan.recipeName),
                  subtitle: Text('${plan.servings} porções'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete_outline, size: 20),
                    onPressed: () => ref.read(mealPlansProvider(start: start, end: start.add(const Duration(days: 6))).notifier).deleteMealPlan(plan.id),
                  ),
                )),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMonthlyView(List<MealPlan> plans, DateTime start, DateTime end, ThemeData theme) {
    final daysInMonth = end.day;
    return GridView.builder(
      padding: const EdgeInsets.all(Spacing.md),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
        childAspectRatio: 0.8,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemCount: daysInMonth,
      itemBuilder: (context, index) {
        final day = index + 1;
        final date = DateTime(start.year, start.month, day);
        final hasPlan = plans.any((p) => 
            p.date.year == date.year && 
            p.date.month == date.month && 
            p.date.day == date.day);
        
        final isToday = _isSameDay(date, DateTime.now());

        return Container(
          decoration: BoxDecoration(
            color: isToday ? theme.colorScheme.primaryContainer : theme.colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(RadiusTokens.sm),
            border: hasPlan ? Border.all(color: theme.colorScheme.primary.withAlpha((0.5 * 255).toInt())) : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                day.toString(),
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: isToday ? FontWeight.bold : null,
                  color: isToday ? theme.colorScheme.primary : null,
                ),
              ),
              if (hasPlan)
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    shape: BoxShape.circle,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  bool _isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  String _getMonthName(int month) {
    const names = [
      '', 'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
      'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'
    ];
    return names[month];
  }

  String _getWeekdayName(int weekday) {
    const names = ['', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado', 'Domingo'];
    return names[weekday];
  }

  Widget _getMealIcon(MealType type, ThemeData theme) {
    IconData icon;
    switch (type) {
      case MealType.breakfast: icon = Icons.wb_twilight; break;
      case MealType.lunch: icon = Icons.wb_sunny; break;
      case MealType.dinner: icon = Icons.nightlight_round; break;
      case MealType.snack: icon = Icons.coffee; break;
    }
    return Icon(icon, size: 20, color: theme.colorScheme.secondary);
  }
}
