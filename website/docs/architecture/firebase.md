---
id: firebase
title: Firebase — Backend
sidebar_label: Firebase
---

# Firebase

KipiList usa o Firebase como backend principal. Todos os dados do usuário são persistidos no Firestore. A autenticação suporta sessão anônima e Google Sign-In.

## Serviços Firebase Utilizados

| Serviço | Pacote | Uso |
|---|---|---|
| Firebase Auth | `firebase_auth` | Autenticação anônima + Google |
| Cloud Firestore | `cloud_firestore` | Banco de dados principal |
| Firebase Storage | `firebase_storage` | Upload de imagens |
| Firebase Analytics | `firebase_analytics` | Eventos de uso |
| Firebase Crashlytics | `firebase_crashlytics` | Crash reporting (dual com Sentry) |
| Firebase Performance | `firebase_performance` | Monitoramento de performance |
| Firebase Remote Config | `firebase_remote_config` | Feature flags remotas |

## Estrutura do Firestore

```
users/{uid}/
  ├── lists/{listId}           # ShoppingList
  ├── items/{itemId}           # ShoppingItem (filtrado por shoppingListId)
  ├── categories/{categoryId}  # Categorias personalizadas
  ├── pantry/{itemId}          # PantryItem
  ├── recipes/{recipeId}       # Recipe
  └── meal_plans/{planId}      # MealPlan

sharedLists/{code}/            # Listas compartilhadas por link
```

## FirestoreService

A classe `FirestoreService` é composta por **10 mixins** divididos em 11 arquivos dentro de `lib/services/firestore/`:

| Mixin | Responsabilidade |
|---|---|
| `FirestoreBase` | Retry logic, stream helpers, error wrapping |
| `ListsMixin` | CRUD de listas |
| `ItemsMixin` | CRUD de itens |
| `CategoriesMixin` | CRUD de categorias |
| `PantryMixin` | CRUD da despensa |
| `RecipesMixin` | CRUD de receitas |
| `MealPlanMixin` | CRUD do planejador |
| `UserMixin` | Perfil do usuário |
| `SharedListsMixin` | Listas compartilhadas |
| `AiUsageMixin` | Controle de uso da IA |

## Autenticação

O fluxo de autenticação funciona assim:

1. O app inicia com **sessão anônima** automática
2. O usuário pode fazer **Google Sign-In** para vincular a conta
3. `AuthService.signOut()` re-loga anonimamente — **nunca** chame `signInAnonymously()` novamente no listener do stream de autenticação (cria race condition)
4. O UID anônimo é sincronizado com RevenueCat via `Purchases.logIn(uid)` em `_setupAuthSync()` no `main.dart`

```dart
// Correto: AuthService gerencia re-login anônimo
await authService.signOut();

// Errado: causa duplicação de sessão
await authService.signOut();
await firebaseAuth.signInAnonymously(); // NÃO FAÇA ISSO
```

## Regras de Segurança

As regras do Firestore estão em `firestore.rules`. Usuários só podem ler/escrever seus próprios dados (`users/{uid}/...`). Listas compartilhadas têm regras especiais baseadas no código de acesso.

```bash
# Validar regras localmente
firebase emulators:start --only firestore
```
