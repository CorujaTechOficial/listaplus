// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Premium)
const premiumProvider = PremiumProvider._();

final class PremiumProvider extends $AsyncNotifierProvider<Premium, bool> {
  const PremiumProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'premiumProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$premiumHash();

  @$internal
  @override
  Premium create() => Premium();
}

String _$premiumHash() => r'31b5e79508abd542feeaca9c5ae699bd2c65debe';

abstract class _$Premium extends $AsyncNotifier<bool> {
  FutureOr<bool> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
