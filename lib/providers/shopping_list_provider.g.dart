// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(listOwner)
const listOwnerProvider = ListOwnerFamily._();

final class ListOwnerProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  const ListOwnerProvider._({
    required ListOwnerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'listOwnerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$listOwnerHash();

  @override
  String toString() {
    return r'listOwnerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    final argument = this.argument as String;
    return listOwner(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ListOwnerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$listOwnerHash() => r'5a1c461b1d4ed54e9e475ac154d5a170f577fc57';

final class ListOwnerFamily extends $Family
    with $FunctionalFamilyOverride<String?, String> {
  const ListOwnerFamily._()
    : super(
        retry: null,
        name: r'listOwnerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ListOwnerProvider call(String listId) =>
      ListOwnerProvider._(argument: listId, from: this);

  @override
  String toString() => r'listOwnerProvider';
}

@ProviderFor(ShoppingListItems)
const shoppingListItemsProvider = ShoppingListItemsFamily._();

final class ShoppingListItemsProvider
    extends $StreamNotifierProvider<ShoppingListItems, List<ShoppingItem>> {
  const ShoppingListItemsProvider._({
    required ShoppingListItemsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'shoppingListItemsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$shoppingListItemsHash();

  @override
  String toString() {
    return r'shoppingListItemsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ShoppingListItems create() => ShoppingListItems();

  @override
  bool operator ==(Object other) {
    return other is ShoppingListItemsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$shoppingListItemsHash() => r'561b8759451ccfae62a98af213d7f9071b3e8d3c';

final class ShoppingListItemsFamily extends $Family
    with
        $ClassFamilyOverride<
          ShoppingListItems,
          AsyncValue<List<ShoppingItem>>,
          List<ShoppingItem>,
          Stream<List<ShoppingItem>>,
          String
        > {
  const ShoppingListItemsFamily._()
    : super(
        retry: null,
        name: r'shoppingListItemsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ShoppingListItemsProvider call(String listId) =>
      ShoppingListItemsProvider._(argument: listId, from: this);

  @override
  String toString() => r'shoppingListItemsProvider';
}

abstract class _$ShoppingListItems extends $StreamNotifier<List<ShoppingItem>> {
  late final _$args = ref.$arg as String;
  String get listId => _$args;

  Stream<List<ShoppingItem>> build(String listId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<List<ShoppingItem>>, List<ShoppingItem>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ShoppingItem>>, List<ShoppingItem>>,
              AsyncValue<List<ShoppingItem>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
