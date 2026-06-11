---
id: settings
title: Configurações
sidebar_label: Configurações
---

# Configurações

O módulo de configurações permite personalizar o comportamento do app e gerenciar a conta.

## Funcionalidades

- Tema (claro/escuro/sistema)
- Idioma preferido
- Gerenciamento de conta (Google Sign-In / logout)
- Assinatura Pro (gerenciar via RevenueCat)
- Notificações
- Sobre o app / versão

## Estrutura

```
lib/app/settings/
├── screens/
└── providers/
```

## Tema

O app usa **Material Design 3** com `colorSchemeSeed` verde. O tema dinâmico (`dynamic_color`) adapta as cores ao wallpaper do dispositivo quando disponível.

## Configurações Persistidas

Preferências do usuário são salvas via `SharedPreferences` (local) e `UserProfile` no Firestore (sincronizado entre dispositivos):

```dart
class UserProfile {
  final String uid;
  final String? displayName;
  final String? email;
  final String? photoUrl;
  final String? preferredLanguage;
  final Map<String, dynamic>? preferences;
  final DateTime createdAt;
  final DateTime updatedAt;
}
```

## Quick Actions

O app usa `quick_actions` para atalhos na tela inicial do Android (long press no ícone). Apenas um atalho está ativo:

- `action_pantry` — abre diretamente a aba de Despensa

:::info Atalho removido

O atalho `action_add` (adicionar item) foi removido porque não existe infraestrutura de navegação para exibir diálogos fora da árvore de widgets.

:::
