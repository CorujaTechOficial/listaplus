// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$shoppingListHash() => r'51613c2478505a6116e03d416609fa28a119e216';

/// See also [ShoppingList].
@ProviderFor(ShoppingList)
final shoppingListProvider =
    AutoDisposeAsyncNotifierProvider<ShoppingList, List<ShoppingItem>>.internal(
      ShoppingList.new,
      name: r'shoppingListProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$shoppingListHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ShoppingList = AutoDisposeAsyncNotifier<List<ShoppingItem>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
