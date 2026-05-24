// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentListId)
const currentListIdProvider = CurrentListIdProvider._();

final class CurrentListIdProvider
    extends $AsyncNotifierProvider<CurrentListId, String?> {
  const CurrentListIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentListIdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentListIdHash();

  @$internal
  @override
  CurrentListId create() => CurrentListId();
}

String _$currentListIdHash() => r'55f7367e3748d7b40368ceaf53069ee2a01bb45a';

abstract class _$CurrentListId extends $AsyncNotifier<String?> {
  FutureOr<String?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<String?>, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String?>, String?>,
              AsyncValue<String?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
