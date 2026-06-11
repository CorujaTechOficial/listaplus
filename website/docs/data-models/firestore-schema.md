---
id: firestore-schema
title: Schema do Firestore
sidebar_label: Firestore Schema
---

# Schema do Firestore

## Estrutura de Coleções

```
firestore/
├── users/{uid}/
│   ├── (documento do perfil do usuário)
│   ├── lists/{listId}
│   ├── items/{itemId}
│   ├── categories/{categoryId}
│   ├── pantry/{pantryItemId}
│   ├── recipes/{recipeId}
│   └── meal_plans/{planId}
│
└── sharedLists/{code}/
    └── (documento da lista compartilhada)
```

## Coleção: `users/{uid}`

Documento do perfil do usuário.

| Campo | Tipo | Descrição |
|---|---|---|
| `uid` | String | UID do Firebase Auth |
| `displayName` | String? | Nome de exibição |
| `email` | String? | Email (Google Sign-In) |
| `photoUrl` | String? | URL do avatar |
| `preferredLanguage` | String? | Código do idioma |
| `preferences` | Map | Preferências diversas |
| `createdAt` | Timestamp | Data de criação |
| `updatedAt` | Timestamp | Última atualização |

## Coleção: `users/{uid}/lists/{listId}`

| Campo | Tipo | Descrição |
|---|---|---|
| `id` | String | ID da lista |
| `name` | String | Nome da lista |
| `ownerId` | String | UID do dono |
| `sharedCode` | String? | Código para compartilhamento |
| `emoji` | String? | Emoji da lista |
| `color` | String? | Cor hex da lista |
| `itemCount` | int | Total de itens |
| `checkedCount` | int | Itens marcados |
| `createdAt` | Timestamp | |
| `updatedAt` | Timestamp | |

## Coleção: `users/{uid}/items/{itemId}`

| Campo | Tipo | Descrição |
|---|---|---|
| `id` | String | ID do item |
| `shoppingListId` | String | FK da lista (índice de filtro) |
| `name` | String | Nome do produto |
| `quantity` | double | Quantidade |
| `unit` | String? | Unidade (`kg`, `L`, `un`...) |
| `category` | String? | Categoria |
| `isChecked` | bool | Marcado como comprado |
| `sortOrder` | int | Ordem de exibição |
| `note` | String? | Observação |
| `createdAt` | Timestamp | |

## Coleção: `users/{uid}/pantry/{itemId}`

| Campo | Tipo | Descrição |
|---|---|---|
| `id` | String | ID do item |
| `name` | String | Nome do produto |
| `quantity` | double | Quantidade em estoque |
| `unit` | String? | Unidade |
| `expiryDate` | Timestamp? | Data de validade |
| `barcode` | String? | Código EAN |
| `category` | String? | Categoria |
| `createdAt` | Timestamp | |

## Coleção: `sharedLists/{code}`

| Campo | Tipo | Descrição |
|---|---|---|
| `code` | String | Código único de acesso |
| `listId` | String | ID da lista original |
| `ownerId` | String | UID do dono |
| `listData` | Map | Snapshot da lista |
| `items` | Array | Itens da lista |
| `createdAt` | Timestamp | |
| `expiresAt` | Timestamp? | Validade do link |

## Regras de Segurança

Definidas em `firestore.rules`:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // Usuários acessam apenas seus próprios dados
    match /users/{uid}/{document=**} {
      allow read, write: if request.auth != null 
                         && request.auth.uid == uid;
    }
    
    // Listas compartilhadas: leitura pública com código
    match /sharedLists/{code} {
      allow read: if true;
      allow write: if request.auth != null;
    }
  }
}
```
