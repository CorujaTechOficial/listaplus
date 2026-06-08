import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/models/category_data.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';

final categoriesProvider =
    AsyncNotifierProvider<CategoriesNotifier, List<CategoryData>>(
  CategoriesNotifier.new,
);

class CategoriesNotifier extends AsyncNotifier<List<CategoryData>> {
  StreamSubscription<List<CategoryData>>? _sub;

  @override
  Future<List<CategoryData>> build() async {
    final backend = ref.read(firestoreServiceProvider);
    if (backend == null) return CategoryData.defaults;
    final existing = await backend.loadCategories();
    if (existing.isEmpty) {
      await backend.saveCategories(CategoryData.defaults);
      _sub = backend.watchCategories().listen(
        (List<CategoryData> list) => state = AsyncData(list),
        onError: (Object e) => state = AsyncError(e, StackTrace.current),
      );
      ref.onDispose(() => _sub?.cancel());
      return CategoryData.defaults;
    }
    _sub = backend.watchCategories().listen(
      (List<CategoryData> list) => state = AsyncData(list),
      onError: (Object e) => state = AsyncError(e, StackTrace.current),
    );
    ref.onDispose(() => _sub?.cancel());
    return existing;
  }

  Future<void> addCategory(CategoryData cat) async {
    final backend = ref.read(firestoreServiceProvider);
    if (backend == null) return;
    await backend.saveCategory(cat);
  }

  Future<void> updateCategory(CategoryData cat) async {
    final backend = ref.read(firestoreServiceProvider);
    if (backend == null) return;
    await backend.saveCategory(cat);
  }

  Future<void> deleteCategory(String id) async {
    final backend = ref.read(firestoreServiceProvider);
    if (backend == null) return;
    await backend.deleteCategory(id);
  }

  Future<void> reorderCategories(List<CategoryData> reordered) async {
    final backend = ref.read(firestoreServiceProvider);
    if (backend == null) return;
    final updated = reordered
        .map((cat) => cat.copyWith(sortOrder: reordered.indexOf(cat)))
        .toList();
    await backend.saveCategories(updated);
  }
}
