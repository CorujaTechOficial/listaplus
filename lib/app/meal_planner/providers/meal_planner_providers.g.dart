// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_planner_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MealPlans)
final mealPlansProvider = MealPlansFamily._();

final class MealPlansProvider
    extends $AsyncNotifierProvider<MealPlans, List<MealPlan>> {
  MealPlansProvider._({
    required MealPlansFamily super.from,
    required ({DateTime? start, DateTime? end}) super.argument,
  }) : super(
         retry: null,
         name: r'mealPlansProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$mealPlansHash();

  @override
  String toString() {
    return r'mealPlansProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  MealPlans create() => MealPlans();

  @override
  bool operator ==(Object other) {
    return other is MealPlansProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$mealPlansHash() => r'7fe0d72b033e0bb465ca9891f58810416498ef9c';

final class MealPlansFamily extends $Family
    with
        $ClassFamilyOverride<
          MealPlans,
          AsyncValue<List<MealPlan>>,
          List<MealPlan>,
          FutureOr<List<MealPlan>>,
          ({DateTime? start, DateTime? end})
        > {
  MealPlansFamily._()
    : super(
        retry: null,
        name: r'mealPlansProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MealPlansProvider call({DateTime? start, DateTime? end}) =>
      MealPlansProvider._(argument: (start: start, end: end), from: this);

  @override
  String toString() => r'mealPlansProvider';
}

abstract class _$MealPlans extends $AsyncNotifier<List<MealPlan>> {
  late final _$args = ref.$arg as ({DateTime? start, DateTime? end});
  DateTime? get start => _$args.start;
  DateTime? get end => _$args.end;

  FutureOr<List<MealPlan>> build({DateTime? start, DateTime? end});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<MealPlan>>, List<MealPlan>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<MealPlan>>, List<MealPlan>>,
              AsyncValue<List<MealPlan>>,
              Object?,
              Object?
            >;
    element.handleCreate(
      ref,
      () => build(start: _$args.start, end: _$args.end),
    );
  }
}

@ProviderFor(recipeCostDetails)
final recipeCostDetailsProvider = RecipeCostDetailsFamily._();

final class RecipeCostDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<RecipeCostDetails?>,
          RecipeCostDetails?,
          FutureOr<RecipeCostDetails?>
        >
    with
        $FutureModifier<RecipeCostDetails?>,
        $FutureProvider<RecipeCostDetails?> {
  RecipeCostDetailsProvider._({
    required RecipeCostDetailsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'recipeCostDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$recipeCostDetailsHash();

  @override
  String toString() {
    return r'recipeCostDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<RecipeCostDetails?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<RecipeCostDetails?> create(Ref ref) {
    final argument = this.argument as String;
    return recipeCostDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is RecipeCostDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$recipeCostDetailsHash() => r'aa9985eeec2b84c9b5e4ea3532927b5e94877b72';

final class RecipeCostDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<RecipeCostDetails?>, String> {
  RecipeCostDetailsFamily._()
    : super(
        retry: null,
        name: r'recipeCostDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RecipeCostDetailsProvider call(String recipeId) =>
      RecipeCostDetailsProvider._(argument: recipeId, from: this);

  @override
  String toString() => r'recipeCostDetailsProvider';
}

@ProviderFor(mealPlannerDayCostMap)
final mealPlannerDayCostMapProvider = MealPlannerDayCostMapFamily._();

final class MealPlannerDayCostMapProvider
    extends
        $FunctionalProvider<
          AsyncValue<Map<DateTime, DayMealCostData>>,
          Map<DateTime, DayMealCostData>,
          FutureOr<Map<DateTime, DayMealCostData>>
        >
    with
        $FutureModifier<Map<DateTime, DayMealCostData>>,
        $FutureProvider<Map<DateTime, DayMealCostData>> {
  MealPlannerDayCostMapProvider._({
    required MealPlannerDayCostMapFamily super.from,
    required ({DateTime start, DateTime end}) super.argument,
  }) : super(
         retry: null,
         name: r'mealPlannerDayCostMapProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$mealPlannerDayCostMapHash();

  @override
  String toString() {
    return r'mealPlannerDayCostMapProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<Map<DateTime, DayMealCostData>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Map<DateTime, DayMealCostData>> create(Ref ref) {
    final argument = this.argument as ({DateTime start, DateTime end});
    return mealPlannerDayCostMap(ref, start: argument.start, end: argument.end);
  }

  @override
  bool operator ==(Object other) {
    return other is MealPlannerDayCostMapProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$mealPlannerDayCostMapHash() =>
    r'afab7dd6323230a1d0a378097db68ad1e9fe0658';

final class MealPlannerDayCostMapFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<Map<DateTime, DayMealCostData>>,
          ({DateTime start, DateTime end})
        > {
  MealPlannerDayCostMapFamily._()
    : super(
        retry: null,
        name: r'mealPlannerDayCostMapProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MealPlannerDayCostMapProvider call({
    required DateTime start,
    required DateTime end,
  }) => MealPlannerDayCostMapProvider._(
    argument: (start: start, end: end),
    from: this,
  );

  @override
  String toString() => r'mealPlannerDayCostMapProvider';
}

@ProviderFor(mealPlannerSummary)
final mealPlannerSummaryProvider = MealPlannerSummaryFamily._();

final class MealPlannerSummaryProvider
    extends
        $FunctionalProvider<
          AsyncValue<MealPlannerSummaryData>,
          MealPlannerSummaryData,
          FutureOr<MealPlannerSummaryData>
        >
    with
        $FutureModifier<MealPlannerSummaryData>,
        $FutureProvider<MealPlannerSummaryData> {
  MealPlannerSummaryProvider._({
    required MealPlannerSummaryFamily super.from,
    required ({
      DateTime weekStart,
      DateTime weekEnd,
      DateTime monthStart,
      DateTime monthEnd,
      DateTime focusedDay,
    })
    super.argument,
  }) : super(
         retry: null,
         name: r'mealPlannerSummaryProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$mealPlannerSummaryHash();

  @override
  String toString() {
    return r'mealPlannerSummaryProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<MealPlannerSummaryData> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<MealPlannerSummaryData> create(Ref ref) {
    final argument =
        this.argument
            as ({
              DateTime weekStart,
              DateTime weekEnd,
              DateTime monthStart,
              DateTime monthEnd,
              DateTime focusedDay,
            });
    return mealPlannerSummary(
      ref,
      weekStart: argument.weekStart,
      weekEnd: argument.weekEnd,
      monthStart: argument.monthStart,
      monthEnd: argument.monthEnd,
      focusedDay: argument.focusedDay,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MealPlannerSummaryProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$mealPlannerSummaryHash() =>
    r'f9d1ed584f797ca187b0b669a62ec68e8c22c3eb';

final class MealPlannerSummaryFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<MealPlannerSummaryData>,
          ({
            DateTime weekStart,
            DateTime weekEnd,
            DateTime monthStart,
            DateTime monthEnd,
            DateTime focusedDay,
          })
        > {
  MealPlannerSummaryFamily._()
    : super(
        retry: null,
        name: r'mealPlannerSummaryProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MealPlannerSummaryProvider call({
    required DateTime weekStart,
    required DateTime weekEnd,
    required DateTime monthStart,
    required DateTime monthEnd,
    required DateTime focusedDay,
  }) => MealPlannerSummaryProvider._(
    argument: (
      weekStart: weekStart,
      weekEnd: weekEnd,
      monthStart: monthStart,
      monthEnd: monthEnd,
      focusedDay: focusedDay,
    ),
    from: this,
  );

  @override
  String toString() => r'mealPlannerSummaryProvider';
}
