// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_lists_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ShoppingLists)
const shoppingListsProvider = ShoppingListsProvider._();

final class ShoppingListsProvider
    extends $StreamNotifierProvider<ShoppingLists, List<ShoppingList>> {
  const ShoppingListsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shoppingListsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shoppingListsHash();

  @$internal
  @override
  ShoppingLists create() => ShoppingLists();
}

String _$shoppingListsHash() => r'f0e2953e5dbe2b9081022a93ec13b35010e768c5';

abstract class _$ShoppingLists extends $StreamNotifier<List<ShoppingList>> {
  Stream<List<ShoppingList>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<ShoppingList>>, List<ShoppingList>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ShoppingList>>, List<ShoppingList>>,
              AsyncValue<List<ShoppingList>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
