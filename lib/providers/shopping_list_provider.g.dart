// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$shoppingListItemsHash() => r'753565c26fc3c8def5b9b3ec6577cba4298bfe2d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ShoppingListItems
    extends BuildlessAutoDisposeAsyncNotifier<List<ShoppingItem>> {
  late final String listId;

  FutureOr<List<ShoppingItem>> build(String listId);
}

/// See also [ShoppingListItems].
@ProviderFor(ShoppingListItems)
const shoppingListItemsProvider = ShoppingListItemsFamily();

/// See also [ShoppingListItems].
class ShoppingListItemsFamily extends Family<AsyncValue<List<ShoppingItem>>> {
  /// See also [ShoppingListItems].
  const ShoppingListItemsFamily();

  /// See also [ShoppingListItems].
  ShoppingListItemsProvider call(String listId) {
    return ShoppingListItemsProvider(listId);
  }

  @override
  ShoppingListItemsProvider getProviderOverride(
    covariant ShoppingListItemsProvider provider,
  ) {
    return call(provider.listId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'shoppingListItemsProvider';
}

/// See also [ShoppingListItems].
class ShoppingListItemsProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ShoppingListItems,
          List<ShoppingItem>
        > {
  /// See also [ShoppingListItems].
  ShoppingListItemsProvider(String listId)
    : this._internal(
        () => ShoppingListItems()..listId = listId,
        from: shoppingListItemsProvider,
        name: r'shoppingListItemsProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$shoppingListItemsHash,
        dependencies: ShoppingListItemsFamily._dependencies,
        allTransitiveDependencies:
            ShoppingListItemsFamily._allTransitiveDependencies,
        listId: listId,
      );

  ShoppingListItemsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.listId,
  }) : super.internal();

  final String listId;

  @override
  FutureOr<List<ShoppingItem>> runNotifierBuild(
    covariant ShoppingListItems notifier,
  ) {
    return notifier.build(listId);
  }

  @override
  Override overrideWith(ShoppingListItems Function() create) {
    return ProviderOverride(
      origin: this,
      override: ShoppingListItemsProvider._internal(
        () => create()..listId = listId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        listId: listId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ShoppingListItems, List<ShoppingItem>>
  createElement() {
    return _ShoppingListItemsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ShoppingListItemsProvider && other.listId == listId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, listId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ShoppingListItemsRef
    on AutoDisposeAsyncNotifierProviderRef<List<ShoppingItem>> {
  /// The parameter `listId` of this provider.
  String get listId;
}

class _ShoppingListItemsProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ShoppingListItems,
          List<ShoppingItem>
        >
    with ShoppingListItemsRef {
  _ShoppingListItemsProviderElement(super.provider);

  @override
  String get listId => (origin as ShoppingListItemsProvider).listId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
