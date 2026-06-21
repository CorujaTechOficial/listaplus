import 'package:shopping_list/models/shopping_item.dart';

({int oldIndex, int newIndex})? mapPendingReorderToFullIndices({
  required List<ShoppingItem> items,
  required List<ShoppingItem> pendingItems,
  required int oldIndex,
  required int newIndex,
}) {
  if (oldIndex < 0 || oldIndex >= pendingItems.length) {
    return null;
  }
  if (newIndex < 0 || newIndex > pendingItems.length) {
    return null;
  }

  final movedItem = pendingItems[oldIndex];
  final oldFullIndex = items.indexWhere((item) => item.id == movedItem.id);
  if (oldFullIndex == -1) {
    return null;
  }

  if (newIndex == oldIndex) {
    return (oldIndex: oldFullIndex, newIndex: oldFullIndex);
  }
  if (newIndex == oldIndex + 1) {
    return (oldIndex: oldFullIndex, newIndex: oldFullIndex + 1);
  }

  final remainingPendingItems = [...pendingItems]..removeAt(oldIndex);
  final itemsWithoutMoved = [...items]..removeAt(oldFullIndex);
  final targetPendingIndex = newIndex > oldIndex ? newIndex - 1 : newIndex;

  if (remainingPendingItems.isEmpty) {
    return (oldIndex: oldFullIndex, newIndex: oldFullIndex + 1);
  }

  final insertionIndexAfterRemoval =
      targetPendingIndex >= remainingPendingItems.length
          ? itemsWithoutMoved.indexWhere(
                (item) => item.id == remainingPendingItems.last.id,
              ) +
              1
          : itemsWithoutMoved.indexWhere(
            (item) => item.id == remainingPendingItems[targetPendingIndex].id,
          );

  if (insertionIndexAfterRemoval < 0) {
    return null;
  }

  if (targetPendingIndex < remainingPendingItems.length &&
      insertionIndexAfterRemoval >= itemsWithoutMoved.length + 1) {
    return null;
  }

  final mappedNewIndex =
      oldFullIndex < insertionIndexAfterRemoval
          ? insertionIndexAfterRemoval + 1
          : insertionIndexAfterRemoval;

  if (mappedNewIndex < 0 || mappedNewIndex > items.length) {
    return null;
  }

  return (oldIndex: oldFullIndex, newIndex: mappedNewIndex);
}
