---
id: overview
title: Arquitetura — Visão Geral
sidebar_label: Visão Geral
---

# Arquitetura

KipiList usa uma arquitetura modular por feature com Riverpod como camada de estado, Firebase como backend e uma camada de serviços abstrata que isola o código de UI do acesso direto a dados.

## Camadas

```
┌─────────────────────────────────────────────┐
│              UI (Screens / Widgets)          │
│         Material Design 3 · Flutter          │
├─────────────────────────────────────────────┤
│         State Layer (Riverpod 3.x)           │
│   @riverpod providers por feature            │
├─────────────────────────────────────────────┤
│              Service Layer                   │
│  AuthService · FirestoreService · AiService  │
│  RevenueCatService · AnalyticsService        │
├─────────────────────────────────────────────┤
│              Backend / Infra                 │
│   Firebase Firestore · Firebase Auth         │
│   Firebase Storage · DeepSeek (via SSE)      │
└─────────────────────────────────────────────┘
```

## Organização por Feature

Cada feature vive em `lib/app/<feature>/` com três subpastas:

| Pasta | Conteúdo |
|---|---|
| `screens/` | Telas completas (instanciadas por rotas) |
| `providers/` | Providers Riverpod específicos da feature |
| `widgets/` | Widgets reutilizáveis internos da feature |

### Features existentes

| Feature | Caminho | Responsabilidade |
|---|---|---|
| `ai` | `lib/app/ai/` | Chat Kipi + agente de ferramentas |
| `auth` | `lib/app/auth/` | Login anônimo + Google Sign-In |
| `catalog` | `lib/app/catalog/` | Catálogo de produtos com busca |
| `lists` | `lib/app/lists/` | Listas de compras (núcleo) |
| `meal_planner` | `lib/app/meal_planner/` | Planejamento semanal |
| `onboarding` | `lib/app/onboarding/` | Fluxo onboarding + paywall |
| `pantry` | `lib/app/pantry/` | Despensa + scanner EAN |
| `recipes` | `lib/app/recipes/` | Receitas |
| `settings` | `lib/app/settings/` | Preferências do usuário |

## Providers Globais (`lib/core/providers/`)

Providers de infraestrutura disponíveis em todo o app:

- `firebaseProvider` — instância do Firebase App
- `authProvider` — stream de autenticação
- `premiumProvider` — estado de assinatura (RevenueCat)
- `analyticsProvider` — AnalyticsService
- `preferencesProvider` — SharedPreferences

## Serviços (`lib/services/`)

| Serviço | Arquivo | Responsabilidade |
|---|---|---|
| `AuthService` | `auth_service.dart` | Login, logout, sessão anônima |
| `FirestoreService` | `firestore/` | CRUD Firestore (10 mixins em 11 arquivos) |
| `AiService` | `ai_service.dart` | Interface para o modelo de linguagem |
| `OpenCodeGoService` | `open_code_go_service.dart` | DeepSeek via SSE com streaming |
| `RevenueCatService` | `revenuecat_service.dart` | Verificação de entitlement Pro |
| `AnalyticsService` | `analytics_service.dart` | Firebase Analytics |
| `AdService` | `ad_service.dart` | Google Mobile Ads |
| `ReferralService` | `referral_service.dart` | Sistema de indicações |

## Regra Arquitetural de Serviços

O Firebase **nunca** pode ser acessado diretamente fora de `lib/services/`. Um lint customizado (`avoid_raw_firebase_outside_service`) falha o build se isso ocorrer.

Providers também **sempre** devem expor o tipo abstrato (interface), nunca a implementação concreta — enforçado pelo lint `prefer_abstract_service_type`.
