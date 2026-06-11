---
id: catalog
title: Catálogo de Produtos
sidebar_label: Catálogo
---

# Catálogo de Produtos

O catálogo é uma base de produtos organizada por categorias que permite ao usuário encontrar e adicionar itens às listas com facilidade.

## Funcionalidades

- Navegação por categorias com grid visual
- Busca por nome de produto
- Adição direta à lista ativa
- Categorias com ícones personalizados

## Estrutura de Arquivos

```
lib/app/catalog/
├── screens/
│   ├── catalog_home_screen.dart     # Tela principal do catálogo
│   └── catalog_category_screen.dart # Produtos por categoria
└── widgets/
    ├── catalog_search_bar.dart
    ├── category_grid.dart
    └── product_list_tile.dart
```

## Modelo de Dados

```dart
class Category {
  final String id;
  final String name;
  final int iconCodepoint;   // IconData dinâmico (requer --no-tree-shake-icons)
  final String color;
}
```

:::warning Ícones Dinâmicos

As categorias usam `IconData(iconCodepoint)` com codepoint numérico em `category_data.dart`. Isso impede o tree-shaking de ícones. O build **sempre** deve ser feito com `--no-tree-shake-icons`.

:::

## Integração com Listas

Ao selecionar um produto no catálogo, ele é adicionado diretamente à lista ativa do usuário via `FirestoreService`. O Kipi também pode usar o catálogo para sugerir produtos relevantes.
