---
id: custom-lints
title: Custom Lint Rules
sidebar_label: Custom Lints
---

# Custom Lint Rules

KipiList tem 3 regras de lint customizadas implementadas no pacote `custom_lints/` que reforçam a arquitetura do projeto.

## Regras

### `avoid_raw_firebase_outside_service`

**Nível**: ERROR

Impede acesso direto ao Firebase fora da camada de serviços.

```dart
// Proibido em qualquer lugar fora de lib/services/
FirebaseFirestore.instance.collection('users'); // ERRO
FirebaseAuth.instance.currentUser;              // ERRO

// Correto: usar via serviço injetado
final service = ref.watch(firestoreServiceProvider);
service.getItems(listId);
```

### `prefer_abstract_service_type`

**Nível**: ERROR

Providers devem expor o tipo abstrato (interface), nunca a implementação concreta.

```dart
// Proibido
final provider = Provider<RevenueCatServiceImpl>((ref) => ...); // ERRO

// Correto
final provider = Provider<RevenueCatService>((ref) => ...);
```

### `prefer_correct_popup_menu_icon`

**Nível**: ERROR

Todo `PopupMenuButton` deve usar `icon: const Icon(Icons.more_vert)`.

```dart
// Proibido
PopupMenuButton(/* sem icon */)      // ERRO
PopupMenuButton(icon: Icon(Icons.more_horiz)) // ERRO

// Correto
PopupMenuButton(icon: const Icon(Icons.more_vert))
```

## Verificação

```bash
# Verificar o pacote de lints em si
cd custom_lints && dart analyze lib/
# → No issues found!

# Verificar o projeto principal
flutter analyze --fatal-infos
```

## Exclusões

Os arquivos `*.g.dart` (gerados pelo build_runner) são **excluídos** de:
- Flutter analyze
- Cobertura de testes
- SonarQube

Isso está configurado em `analysis_options.yaml`.

## `analysis_options.yaml` — Regras Notáveis

```yaml
analyzer:
  strong-mode:
    implicit-casts: false
    implicit-dynamic: false
  language:
    strict-casts: true
    strict-inference: true
    strict-raw-types: true

linter:
  rules:
    - always_put_control_body_on_new_line  # if (x) return y; FALHA
    - prefer_int_literals                   # fold(0.0,...) → usar ignore
```

:::tip Falso positivo: `prefer_int_literals`

O lint `prefer_int_literals` tem um falso positivo com `fold(0.0, ...)`. Suprima com:

```dart
// ignore: prefer_int_literals
final total = items.fold(0.0, (acc, item) => acc + item.price);
```

:::
