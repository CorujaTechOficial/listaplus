import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/models/pantry_item.dart';
import 'package:shopping_list/domain/entities/unit.dart';
import 'package:shopping_list/models/shopping_item.dart';

part 'pantry_providers.g.dart';

const int freePantryLimit = 10;

@riverpod
class PantryItems extends _$PantryItems {
  @override
  Future<List<PantryItem>> build() async {
    final service = ref.watch(firestoreServiceProvider);
    return service.loadPantryItems();
  }

  Future<void> addItem({
    required String name,
    required int idealQuantity,
    int currentQuantity = 0,
    String categoryId = 'others',
    Unit unit = Unit.un,
    double? estimatedPrice,
    bool trackStock = true,
  }) async {
    final isPremium = await ref.read(premiumProvider.future);
    final currentItems = state.value ?? [];

    if (!isPremium && currentItems.length >= freePantryLimit) {
      throw Exception('Limite de $freePantryLimit itens na dispensa no plano gratuito. Faça upgrade para adicionar mais.');
    }

    final service = ref.read(firestoreServiceProvider);
    final newItem = PantryItem(
      name: name,
      idealQuantity: idealQuantity,
      currentQuantity: currentQuantity,
      categoryId: categoryId,
      unit: unit,
      estimatedPrice: estimatedPrice,
      trackStock: trackStock,
    );

    final updatedItems = [...currentItems, newItem];
    state = AsyncValue.data(updatedItems);
    try {
      await service.savePantryItem(newItem);
    } on Exception {
      state = AsyncValue.data(currentItems);
      rethrow;
    }
  }

  Future<void> updateItem(PantryItem item) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final updated = items.map((e) => e.id == item.id ? item : e).toList();

    state = AsyncValue.data(updated);
    try {
      await service.savePantryItem(item);
    } on Exception {
      state = AsyncValue.data(items);
      rethrow;
    }
  }

  Future<void> removeItem(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    final updated = items.where((item) => item.id != id).toList();

    state = AsyncValue.data(updated);
    try {
      await service.deletePantryItem(id);
    } on Exception {
      state = AsyncValue.data(items);
      rethrow;
    }
  }

  Future<void> setCurrentQuantity(String id, int quantity) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    PantryItem? updatedItem;
    final updated = items.map((item) {
      if (item.id == id) {
        updatedItem = item.copyWith(
          currentQuantity: quantity.clamp(0, 9999),
          updatedAt: DateTime.now(),
        );
        return updatedItem!;
      }
      return item;
    }).toList();

    state = AsyncValue.data(updated);
    try {
      if (updatedItem != null) {
        await service.savePantryItem(updatedItem!);
      }
    } on Exception {
      state = AsyncValue.data(items);
      rethrow;
    }
  }

  Future<void> incrementCurrent(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    PantryItem? updatedItem;
    final updated = items.map((item) {
      if (item.id == id) {
        updatedItem = item.copyWith(
          currentQuantity: item.currentQuantity + 1,
          updatedAt: DateTime.now(),
        );
        return updatedItem!;
      }
      return item;
    }).toList();

    state = AsyncValue.data(updated);
    try {
      if (updatedItem != null) {
        await service.savePantryItem(updatedItem!);
      }
    } on Exception {
      state = AsyncValue.data(items);
      rethrow;
    }
  }

  Future<void> decrementCurrent(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    PantryItem? updatedItem;
    final updated = items.map((item) {
      if (item.id == id && item.currentQuantity > 0) {
        updatedItem = item.copyWith(
          currentQuantity: item.currentQuantity - 1,
          updatedAt: DateTime.now(),
        );
        return updatedItem!;
      }
      return item;
    }).toList();

    state = AsyncValue.data(updated);
    try {
      if (updatedItem != null) {
        await service.savePantryItem(updatedItem!);
      }
    } on Exception {
      state = AsyncValue.data(items);
      rethrow;
    }
  }

  Future<void> consumeItem(String id) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    PantryItem? updatedItem;
    final updated = items.map((item) {
      if (item.id == id && item.currentQuantity > 0) {
        updatedItem = item.copyWith(
          currentQuantity: item.currentQuantity - 1,
          updatedAt: DateTime.now(),
        );
        return updatedItem!;
      }
      return item;
    }).toList();

    state = AsyncValue.data(updated);
    try {
      if (updatedItem != null) {
        await service.savePantryItem(updatedItem!);
      }
    } on Exception {
      state = AsyncValue.data(items);
      rethrow;
    }
  }

  Future<void> consumeItemMultiple(String id, int quantity) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    PantryItem? updatedItem;
    final updated = items.map((item) {
      if (item.id == id && item.currentQuantity > 0) {
        final decrement = quantity > item.currentQuantity
            ? item.currentQuantity
            : quantity;
        updatedItem = item.copyWith(
          currentQuantity: item.currentQuantity - decrement,
          updatedAt: DateTime.now(),
        );
        return updatedItem!;
      }
      return item;
    }).toList();

    state = AsyncValue.data(updated);
    try {
      if (updatedItem != null) {
        await service.savePantryItem(updatedItem!);
      }
    } on Exception {
      state = AsyncValue.data(items);
      rethrow;
    }
  }

  Future<void> restockItem(String id, int amount) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    PantryItem? updatedItem;
    final updated = items.map((item) {
      if (item.id == id) {
        updatedItem = item.copyWith(
          currentQuantity: (item.currentQuantity + amount).clamp(0, 9999),
          updatedAt: DateTime.now(),
        );
        return updatedItem!;
      }
      return item;
    }).toList();

    state = AsyncValue.data(updated);
    try {
      if (updatedItem != null) {
        await service.savePantryItem(updatedItem!);
      }
    } on Exception {
      state = AsyncValue.data(items);
      rethrow;
    }
  }

  Future<void> setIdealQuantity(String id, int quantity) async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    PantryItem? updatedItem;
    final updated = items.map((item) {
      if (item.id == id) {
        updatedItem = item.copyWith(
          idealQuantity: quantity.clamp(1, 999),
          updatedAt: DateTime.now(),
        );
        return updatedItem!;
      }
      return item;
    }).toList();

    state = AsyncValue.data(updated);
    try {
      if (updatedItem != null) {
        await service.savePantryItem(updatedItem!);
      }
    } on Exception {
      state = AsyncValue.data(items);
      rethrow;
    }
  }

  Future<void> clearAll() async {
    final service = ref.read(firestoreServiceProvider);
    final items = state.value ?? [];
    state = const AsyncValue.data([]);
    try {
      await service.savePantryItems([]);
    } on Exception {
      state = AsyncValue.data(items);
      rethrow;
    }
  }
}

@riverpod
class PantrySuggestions extends _$PantrySuggestions {
  @override
  List<ShoppingItem> build() {
    final items = ref.watch(pantryItemsProvider).value ?? <PantryItem>[];
    return items
        .where((PantryItem p) => p.trackStock && p.deficit > 0)
        .map((PantryItem p) => ShoppingItem(
              shoppingListId: '',
              name: p.name,
              quantity: p.deficit,
              categoryId: p.categoryId,
              unit: p.unit,
              estimatedPrice: p.estimatedPrice,
            ))
        .toList();
  }
}
