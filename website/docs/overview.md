---
id: overview
title: Visão Geral — KipiList
sidebar_label: Visão Geral
slug: /overview
---

# KipiList

**KipiList** é um aplicativo de lista de compras inteligente para Android, desenvolvido em Flutter. Ele combina gerenciamento de listas colaborativas, assistente de IA (Kipi), catálogo de produtos, gestão de despensa, planejamento de refeições e receitas — tudo em um único app com 86 idiomas suportados.

- **Package**: `br.com.curujatech.listaplus`
- **Versão atual**: `1.0.77+77`
- **Plataforma**: Android (Google Play Store)
- **Stack principal**: Flutter + Firebase + Riverpod + RevenueCat + DeepSeek AI

---

## Funcionalidades Principais

| Módulo | Descrição |
|---|---|
| **Listas de Compras** | Criação, edição, compartilhamento e colaboração em tempo real |
| **Kipi (IA)** | Assistente com 45+ ferramentas: adiciona itens, organiza listas, sugere receitas |
| **Catálogo** | Base de produtos com categorias e pesquisa |
| **Despensa** | Controle de estoque doméstico com scanner de código de barras |
| **Receitas** | Biblioteca de receitas integrada com adição automática à lista |
| **Planejador de Refeições** | Plano semanal com geração automática de listas de compras |
| **Premium (Pro)** | Listas ilimitadas, recursos avançados de IA — via RevenueCat |
| **Onboarding** | Fluxo de 7 etapas de alta conversão com paywall personalizado |

---

## Monetização

O plano gratuito permite até **3 listas**. O **KipiList Pro** remove esse limite e desbloqueia recursos avançados:

- Mensal: **R$ 4,99**
- Anual: **R$ 29,99**

Gerenciado via [RevenueCat](https://www.revenuecat.com/) com entitlement `kipilist_pro`.

---

## Tecnologias

```
Flutter 3.x / Dart 3.7+
Firebase (Auth, Firestore, Storage, Analytics, Crashlytics, Performance, Remote Config)
Riverpod 3.x (codegen)
RevenueCat (purchases_flutter)
DeepSeek v3-flash (via OpenCodeGo SSE)
Sentry (observabilidade)
Material Design 3
86 locales (123 arquivos ARB)
```

---

## Estrutura de Diretórios (resumo)

```
lib/
├── app/
│   ├── ai/          # Assistente Kipi (chat, agente, ferramentas)
│   ├── auth/        # Autenticação (anônima + Google)
│   ├── catalog/     # Catálogo de produtos
│   ├── lists/       # Listas de compras (núcleo do app)
│   ├── meal_planner/# Planejador de refeições
│   ├── onboarding/  # Fluxo de onboarding + paywall
│   ├── pantry/      # Despensa + scanner
│   ├── recipes/     # Receitas
│   ├── settings/    # Configurações
│   └── shared/      # Componentes compartilhados
├── core/providers/  # Providers globais (firebase, auth, monetização)
├── models/          # 17 modelos compartilhados
├── services/        # Camada de serviços (Auth, Firestore, AI, RevenueCat…)
└── l10n/            # 123 arquivos ARB (86 locales)
```
