// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listOwnerHash() => r'847070c964f902b49bffd20bc6992faea5465253';

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

/// See also [listOwner].
@ProviderFor(listOwner)
const listOwnerProvider = ListOwnerFamily();

/// See also [listOwner].
class ListOwnerFamily extends Family<String?> {
  /// See also [listOwner].
  const ListOwnerFamily();

  /// See also [listOwner].
  ListOwnerProvider call(String listId) {
    return ListOwnerProvider(listId);
  }

  @override
  ListOwnerProvider getProviderOverride(covariant ListOwnerProvider provider) {
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
  String? get name => r'listOwnerProvider';
}

/// See also [listOwner].
class ListOwnerProvider extends AutoDisposeProvider<String?> {
  /// See also [listOwner].
  ListOwnerProvider(String listId)
    : this._internal(
        (ref) => listOwner(ref as ListOwnerRef, listId),
        from: listOwnerProvider,
        name: r'listOwnerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$listOwnerHash,
        dependencies: ListOwnerFamily._dependencies,
        allTransitiveDependencies: ListOwnerFamily._allTransitiveDependencies,
        listId: listId,
      );

  ListOwnerProvider._internal(
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
  Override overrideWith(String? Function(ListOwnerRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: ListOwnerProvider._internal(
        (ref) => create(ref as ListOwnerRef),
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
  AutoDisposeProviderElement<String?> createElement() {
    return _ListOwnerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListOwnerProvider && other.listId == listId;
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
mixin ListOwnerRef on AutoDisposeProviderRef<String?> {
  /// The parameter `listId` of this provider.
  String get listId;
}

class _ListOwnerProviderElement extends AutoDisposeProviderElement<String?>
    with ListOwnerRef {
  _ListOwnerProviderElement(super.provider);

  @override
  String get listId => (origin as ListOwnerProvider).listId;
}

String _$shoppingListItemsHash() => r'ecd9893dcda91bfe8c0c3f3b476428e716d51e6a';

abstract class _$ShoppingListItems
    extends BuildlessAutoDisposeStreamNotifier<List<ShoppingItem>> {
  late final String listId;

  Stream<List<ShoppingItem>> build(String listId);
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
        AutoDisposeStreamNotifierProviderImpl<
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
  Stream<List<ShoppingItem>> runNotifierBuild(
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
  AutoDisposeStreamNotifierProviderElement<
    ShoppingListItems,
    List<ShoppingItem>
  >
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
    on AutoDisposeStreamNotifierProviderRef<List<ShoppingItem>> {
  /// The parameter `listId` of this provider.
  String get listId;
}

class _ShoppingListItemsProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
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
