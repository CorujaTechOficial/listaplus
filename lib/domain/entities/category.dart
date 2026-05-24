enum Category {
  fruits('Frutas'),
  cleaning('Limpeza'),
  beverages('Bebidas'),
  bakery('Padaria'),
  meat('Carnes'),
  others('Outros');

  const Category(this.label);
  final String label;

  static List<Category> get defaultCategories => Category.values;

  static Category byId(String id) {
    return Category.values.firstWhere(
      (c) => c.name == id,
      orElse: () => Category.others,
    );
  }
}
