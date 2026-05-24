import '../models/category_data.dart';

List<CategoryData> defaultCategories = CategoryData.defaults;

CategoryData categoryById(String id) {
  return CategoryData.defaults.firstWhere(
    (c) => c.id == id,
    orElse: () => CategoryData.defaults.last,
  );
}
