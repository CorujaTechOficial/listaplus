// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_budget_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MonthlyBudget)
const monthlyBudgetProvider = MonthlyBudgetProvider._();

final class MonthlyBudgetProvider
    extends $AsyncNotifierProvider<MonthlyBudget, double?> {
  const MonthlyBudgetProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'monthlyBudgetProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$monthlyBudgetHash();

  @$internal
  @override
  MonthlyBudget create() => MonthlyBudget();
}

String _$monthlyBudgetHash() => r'e5aef7ed24346bd3fe0c5e60f3db01e361752e48';

abstract class _$MonthlyBudget extends $AsyncNotifier<double?> {
  FutureOr<double?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<double?>, double?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<double?>, double?>,
              AsyncValue<double?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
