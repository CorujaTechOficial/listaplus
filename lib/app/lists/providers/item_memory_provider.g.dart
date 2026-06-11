// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_memory_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(recentItemMemory)
final recentItemMemoryProvider = RecentItemMemoryProvider._();

final class RecentItemMemoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<Map<String, ItemMemory>>,
          Map<String, ItemMemory>,
          FutureOr<Map<String, ItemMemory>>
        >
    with
        $FutureModifier<Map<String, ItemMemory>>,
        $FutureProvider<Map<String, ItemMemory>> {
  RecentItemMemoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'recentItemMemoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$recentItemMemoryHash();

  @$internal
  @override
  $FutureProviderElement<Map<String, ItemMemory>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Map<String, ItemMemory>> create(Ref ref) {
    return recentItemMemory(ref);
  }
}

String _$recentItemMemoryHash() => r'e16b41c16283c74215e0546751f91a8fbe7bdf82';
