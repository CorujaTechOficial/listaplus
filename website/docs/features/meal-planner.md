---
id: meal-planner
title: Planejador de Refeições
sidebar_label: Planejador de Refeições
---

# Planejador de Refeições

O planejador permite organizar as refeições da semana e gerar automaticamente a lista de compras com todos os ingredientes necessários.

## Funcionalidades

- Plano semanal (café, almoço, jantar por dia)
- Geração automática de lista de compras
- Integração com a biblioteca de receitas
- Criação via Kipi em linguagem natural

## Exemplo de Uso via Kipi

```
"Cria um plano de refeições para a semana com arroz, 
feijão, frango e verduras"

"Gera a lista de compras do meu plano dessa semana"
```

## Modelo de Dados

```dart
class MealPlan {
  final String id;
  final String name;
  final DateTime weekStart;
  final Map<String, List<MealEntry>> meals; // dia → refeições
  final DateTime createdAt;
}

class MealEntry {
  final String mealType;    // 'breakfast' | 'lunch' | 'dinner'
  final String? recipeId;
  final String? customMealName;
}
```

## Firestore

Planos ficam em `users/{uid}/meal_plans/{planId}`.

## Estrutura de Arquivos

```
lib/app/meal_planner/
└── screens/
    └── meal_planner_screen.dart
```
