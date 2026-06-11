---
id: onboarding
title: Onboarding
sidebar_label: Onboarding
---

# Onboarding

O KipiList tem um fluxo de onboarding de **7 etapas de alta conversão** com paywall personalizado, micro-compromissos e chat de IA integrado.

## Fluxo das Etapas

```
Etapa 1: Welcome          → Boas-vindas com animação
Etapa 2: Pain Point       → Identificação do problema do usuário
Etapa 3: Personalization  → Seleção de categorias e grupos
Etapa 4: AI Demo          → Demo ao vivo do Kipi
Etapa 5: Commitments      → Micro-compromissos (aumenta retenção)
Etapa 6: Plan Loading     → "Estamos preparando seu plano..."
Etapa 7: Premium Paywall  → Paywall personalizado com headline contextual
```

## Arquivos

```
lib/app/onboarding/screens/
├── onboarding_screen.dart              # Orquestrador do fluxo
├── onboarding_ai_chat.dart             # Chat IA no onboarding
├── onboarding_slide_welcome.dart       # Etapa 1
├── onboarding_slide_pain_point.dart    # Etapa 2
├── onboarding_slide_personalization.dart # Etapa 3
├── onboarding_slide_ai_demo.dart       # Etapa 4
├── onboarding_slide_commitments.dart   # Etapa 5
├── onboarding_slide_plan_loading.dart  # Etapa 6
├── onboarding_slide_premium.dart       # Etapa 7 — Paywall (~41KB)
├── onboarding_slide_setup.dart         # Configuração inicial
├── onboarding_slide_hook.dart
├── onboarding_slide_ai_show.dart
├── onboarding_slide_action.dart
├── onboarding_slide_share.dart
└── onboarding_slide_welcome_login.dart

lib/app/onboarding/widgets/
└── personalization_bottom_sheets.dart
```

## Paywall Personalizado

O `onboarding_slide_premium.dart` é a tela mais complexa do onboarding (~41KB). Ela:

- Gera uma **headline personalizada** baseada nas escolhas de personalization
- Exibe **depoimentos** de usuários reais
- Usa **animações stagger** para apresentar os benefícios progressivamente
- Oferece **trial gratuito** quando disponível via RevenueCat
- Suporta os dois planos: mensal e anual

## Chat de IA no Onboarding

`onboarding_ai_chat.dart` implementa um chat simplificado com:
- **Quick reply buttons** em vez de teclado aberto (reduz atrito)
- Demo ao vivo das capacidades do Kipi
- Personalização baseada nas respostas

## Micro-Compromissos (Etapa 5)

`onboarding_slide_commitments.dart` apresenta afirmações que o usuário confirma ("Quero economizar nas compras", "Vou usar o app toda semana"). Isso aumenta o engajamento pós-instalação ao criar um compromisso psicológico.

## Login

O login (Google Sign-In) está integrado no fluxo como `onboarding_slide_login.dart`. O usuário pode pular e usar anonimamente, vincular conta depois.
