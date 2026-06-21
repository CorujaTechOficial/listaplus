import 'package:shopping_list/models/category_data.dart';
import 'package:shopping_list/models/shopping_item.dart';

class CategoryItemGroup {
  const CategoryItemGroup({
    required this.categoryId,
    required this.category,
    required this.items,
  });

  final String categoryId;
  final CategoryData? category;
  final List<ShoppingItem> items;
}

List<CategoryItemGroup> groupItemsByCategory(
  List<ShoppingItem> items,
  List<CategoryData> categories,
) {
  final categoriesMap = {
    for (final category in categories) category.id: category,
  };
  final groupedItems = <String, List<ShoppingItem>>{};

  for (final item in items) {
    (groupedItems[item.categoryId] ??= []).add(item);
  }

  final groups =
      groupedItems.entries
          .map(
            (entry) => CategoryItemGroup(
              categoryId: entry.key,
              category: categoriesMap[entry.key],
              items: entry.value,
            ),
          )
          .toList();

  groups.sort((a, b) {
    final orderComparison = (a.category?.sortOrder ?? 1 << 30).compareTo(
      b.category?.sortOrder ?? 1 << 30,
    );
    if (orderComparison != 0) {
      return orderComparison;
    }
    final nameComparison = (a.category?.name ?? a.categoryId)
        .toLowerCase()
        .compareTo((b.category?.name ?? b.categoryId).toLowerCase());
    if (nameComparison != 0) {
      return nameComparison;
    }
    return a.categoryId.compareTo(b.categoryId);
  });

  return groups;
}
