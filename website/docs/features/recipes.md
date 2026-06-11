---
id: recipes
title: Receitas
sidebar_label: Receitas
---

# Receitas

O módulo de receitas permite salvar, organizar e usar receitas diretamente no fluxo de compras. Com um toque, os ingredientes de uma receita são adicionados à lista ativa.

## Funcionalidades

- Biblioteca de receitas salvas
- Criação e edição de receitas
- Adição automática de ingredientes à lista
- Busca por nome ou ingrediente
- Integração com o Kipi

## Modelo de Dados

```dart
class Recipe {
  final String id;
  final String name;
  final String? description;
  final List<RecipeIngredient> ingredients;
  final int? servings;
  final String? imageUrl;
  final Duration? prepTime;
  final Duration? cookTime;
  final DateTime createdAt;
}

class RecipeIngredient {
  final String name;
  final double quantity;
  final String? unit;
}
```

## Firestore

Receitas ficam em `users/{uid}/recipes/{recipeId}`.

## Integração com Listas

```dart
// Via Kipi
"Adiciona os ingredientes da lasanha para 6 pessoas"

// Via UI
// Botão "Adicionar à lista" na tela da receita
```

A ferramenta `add_recipe_to_list` do Kipi ajusta as quantidades conforme o número de porções e adiciona cada ingrediente à lista ativa.
