import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/models/category_data.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';

class FakeCategoriesNotifier extends CategoriesNotifier {
  @override
  Future<List<CategoryData>> build() {
    debugPrint('*** FakeCategoriesNotifier.build() called');
    state = AsyncValue.data(CategoryData.defaults);
    return SynchronousFuture<List<CategoryData>>(CategoryData.defaults);
  }
}
