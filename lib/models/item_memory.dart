import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/unit.dart';

class ItemMemory {
  const ItemMemory({
    this.estimatedPrice,
    required this.quantity,
    required this.unit,
    this.categoryId,
  });

  final double? estimatedPrice;
  final int quantity;
  final Unit unit;
  final String? categoryId;
}

Map<String, ItemMemory> buildItemMemoryMap(List<ShoppingItem> items) {
  final sorted = List<ShoppingItem>.from(items)
    ..sort((a, b) => b.updatedAt.compareTo(a.updatedAt));
  final result = <String, ItemMemory>{};
  for (final item in sorted.take(200)) {
    final key = item.name.trim().toLowerCase();
    if (result.containsKey(key)) {
      continue;
    }
    result[key] = ItemMemory(
      estimatedPrice: item.estimatedPrice,
      quantity: item.quantity,
      unit: item.unit,
      categoryId: item.categoryId == 'others' ? null : item.categoryId,
    );
  }
  return result;
}
