---
id: testing
title: Testes
sidebar_label: Testes
---

# Testes

KipiList tem 106+ testes cobrindo modelos, providers, catálogo e planejador de refeições.

## Executar Testes

```bash
# Todos os testes
flutter test

# Com relatório de cobertura
flutter test --coverage
# Gera: coverage/lcov.info

# Teste específico
flutter test test/models/shopping_item_test.dart

# Verboso
flutter test --reporter=expanded
```

## Estrutura de Testes

```
test/
├── models/         # Testes de serialização e lógica dos modelos
├── providers/      # Testes de providers Riverpod
├── catalogs/       # Testes de dados do catálogo
└── meal_planner/   # Testes do planejador
```

## Mocks

O projeto usa `mocktail` para mocking e `fake_cloud_firestore` + `firebase_auth_mocks` para testes de integração com Firebase sem chamar a API real.

```dart
// Exemplo de mock de FirestoreService
class MockFirestoreService extends Mock implements FirestoreService {}

// Exemplo de ProviderContainer para testes
final container = ProviderContainer(
  overrides: [
    firestoreServiceProvider.overrideWithValue(MockFirestoreService()),
  ],
);
```

## Cobertura

SonarQube é configurado em `sonar-project.properties`. Arquivos `*.g.dart` são **excluídos** da cobertura:

```properties
sonar.coverage.exclusions=**/*.g.dart,**/*.freezed.dart
```

## Analytics em Testes

Use `AnalyticsService()` (sem Firebase) como override para evitar chamadas reais ao Firebase Analytics nos testes:

```dart
final container = ProviderContainer(
  overrides: [
    analyticsServiceProvider.overrideWithValue(AnalyticsService()),
  ],
);
```

## CI

O CI (GitHub Actions) roda:
1. `flutter analyze --fatal-infos`
2. `flutter test`

O workflow está em `.github/workflows/ci.yml`.
