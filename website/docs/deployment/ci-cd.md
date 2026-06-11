---
id: ci-cd
title: CI/CD
sidebar_label: CI/CD
---

# CI/CD

## GitHub Actions

O CI está configurado em `.github/workflows/ci.yml`.

### Jobs

```yaml
# Análise estática
flutter analyze --fatal-infos

# Testes
flutter test
```

O CI usa **Flutter 3.29.3**. Builds locais com versões mais recentes (~3.44) podem mostrar ~289 infos adicionais que não são erros no CI.

## Processo de Deploy Manual

Não há deploy automático. O deploy é feito manualmente seguindo o [checklist da Play Store](./play-store#checklist-de-release).

## SonarQube

O projeto tem `sonar-project.properties` configurado para análise de qualidade:

```properties
sonar.projectKey=kipilist
sonar.sources=lib
sonar.exclusions=**/*.g.dart,**/*.freezed.dart
sonar.coverage.exclusions=**/*.g.dart,**/*.freezed.dart
```

O MCP do SonarQube está configurado em `opencode.json` para uso com o OpenCode:

```json
{
  "mcpServers": {
    "sonarqube": {
      "command": "node",
      "args": [".opencode/mcp/sonarqube/index.js"]
    }
  }
}
```

## MCPs para Desenvolvimento

O `opencode.json` configura três MCPs para uso com agentes de IA no desenvolvimento:

| MCP | Uso |
|---|---|
| SonarQube (local) | Análise de qualidade de código |
| RevenueCat (remoto) | Gerenciar assinaturas e produtos |
| Firebase (local) | Gerenciar recursos Firebase |
