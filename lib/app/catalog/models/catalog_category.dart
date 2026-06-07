class CatalogCategory {
  const CatalogCategory({
    required this.id,
    required this.offTag,
    required this.emoji,
    required this.name,
    required this.appCategoryId,
    this.filters = const [],
  });

  final String id;
  final String offTag;
  final String emoji;
  final String name;
  final String appCategoryId;
  final List<String> filters;
}

const List<CatalogCategory> catalogCategories = [
  CatalogCategory(id: 'meats',     offTag: 'en:meats',              emoji: '🥩', name: 'Carnes',            appCategoryId: 'meat',      filters: ['Frango', 'Bovina', 'Suína', 'Embalado']),
  CatalogCategory(id: 'produce',   offTag: 'en:fresh-produce',      emoji: '🥬', name: 'Hortifruti',        appCategoryId: 'vegetables',filters: ['Frutas', 'Verduras', 'Legumes']),
  CatalogCategory(id: 'dairy',     offTag: 'en:dairies',            emoji: '🥛', name: 'Laticínios',        appCategoryId: 'dairy',     filters: ['Leite', 'Queijo', 'Iogurte', 'Manteiga']),
  CatalogCategory(id: 'bakery',    offTag: 'en:bakery',             emoji: '🍞', name: 'Padaria',           appCategoryId: 'bakery',    filters: ['Pão', 'Bolo', 'Biscoito']),
  CatalogCategory(id: 'beverages', offTag: 'en:beverages',          emoji: '🥤', name: 'Bebidas',           appCategoryId: 'beverages', filters: ['Zero', 'Lata', 'Garrafa', 'Suco']),
  CatalogCategory(id: 'cleaning',  offTag: 'en:household-products', emoji: '🧹', name: 'Limpeza',           appCategoryId: 'cleaning',  filters: ['Roupa', 'Louça', 'Chão']),
  CatalogCategory(id: 'hygiene',   offTag: 'en:hygiene-products',   emoji: '🧴', name: 'Higiene',           appCategoryId: 'hygiene',   filters: ['Cabelo', 'Corpo', 'Oral', 'Feminino']),
  CatalogCategory(id: 'cold_cuts', offTag: 'en:charcuterie',        emoji: '🍖', name: 'Frios e Embutidos', appCategoryId: 'cold_cuts', filters: ['Presunto', 'Salsicha', 'Mortadela']),
  CatalogCategory(id: 'grocery',   offTag: 'en:grocery',            emoji: '🛒', name: 'Mercearia',         appCategoryId: 'grains',    filters: ['Arroz', 'Feijão', 'Macarrão', 'Azeite']),
  CatalogCategory(id: 'frozen',    offTag: 'en:frozen-products',    emoji: '🧊', name: 'Congelados',        appCategoryId: 'frozen',    filters: ['Pizza', 'Lasanha', 'Sorvete']),
  CatalogCategory(id: 'snacks',    offTag: 'en:snacks',             emoji: '🍿', name: 'Petiscos',          appCategoryId: 'sweets',    filters: ['Salgado', 'Doce', 'Barra']),
  CatalogCategory(id: 'alcohol',   offTag: 'en:alcoholic-beverages',emoji: '🍺', name: 'Bebidas Alcoólicas',appCategoryId: 'alcohol',   filters: ['Cerveja', 'Vinho', 'Destilado']),
];

/// Maps device locale countryCode to Open Food Facts country tag.
String localeCountryToOffTag(String? countryCode) {
  const mapping = {
    'BR': 'en:brazil',
    'US': 'en:united-states',
    'GB': 'en:united-kingdom',
    'FR': 'en:france',
    'DE': 'en:germany',
    'IT': 'en:italy',
    'ES': 'en:spain',
    'PT': 'en:portugal',
    'AR': 'en:argentina',
    'MX': 'en:mexico',
    'CO': 'en:colombia',
    'CL': 'en:chile',
  };
  return mapping[countryCode?.toUpperCase()] ?? 'en:brazil';
}
