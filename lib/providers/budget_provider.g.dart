// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$budgetHash() => r'9f9b04527a0bae0ccf3d91f01158b665fea52543';

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

abstract class _$Budget extends BuildlessAutoDisposeAsyncNotifier<double?> {
  late final String listId;

  FutureOr<double?> build(String listId);
}

/// See also [Budget].
@ProviderFor(Budget)
const budgetProvider = BudgetFamily();

/// See also [Budget].
class BudgetFamily extends Family<AsyncValue<double?>> {
  /// See also [Budget].
  const BudgetFamily();

  /// See also [Budget].
  BudgetProvider call(String listId) {
    return BudgetProvider(listId);
  }

  @override
  BudgetProvider getProviderOverride(covariant BudgetProvider provider) {
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
  String? get name => r'budgetProvider';
}

/// See also [Budget].
class BudgetProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Budget, double?> {
  /// See also [Budget].
  BudgetProvider(String listId)
    : this._internal(
        () => Budget()..listId = listId,
        from: budgetProvider,
        name: r'budgetProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product') ? null : _$budgetHash,
        dependencies: BudgetFamily._dependencies,
        allTransitiveDependencies: BudgetFamily._allTransitiveDependencies,
        listId: listId,
      );

  BudgetProvider._internal(
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
  FutureOr<double?> runNotifierBuild(covariant Budget notifier) {
    return notifier.build(listId);
  }

  @override
  Override overrideWith(Budget Function() create) {
    return ProviderOverride(
      origin: this,
      override: BudgetProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<Budget, double?> createElement() {
    return _BudgetProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BudgetProvider && other.listId == listId;
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
mixin BudgetRef on AutoDisposeAsyncNotifierProviderRef<double?> {
  /// The parameter `listId` of this provider.
  String get listId;
}

class _BudgetProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Budget, double?>
    with BudgetRef {
  _BudgetProviderElement(super.provider);

  @override
  String get listId => (origin as BudgetProvider).listId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
