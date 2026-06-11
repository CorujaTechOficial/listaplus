---
id: commands
title: Comandos de Desenvolvimento
sidebar_label: Comandos
---

# Comandos de Desenvolvimento

## Build e Run

```bash
# Executar em modo debug
flutter run --dart-define=REVENUECAT_API_KEY=<chave>

# Build do AAB para produção
flutter build appbundle --no-tree-shake-icons --dart-define=REVENUECAT_API_KEY=<chave>

# Build do APK (para testes locais)
flutter build apk --debug --no-tree-shake-icons
```

:::warning --no-tree-shake-icons obrigatório

As categorias usam `IconData(codepoint)` dinâmico. Builds sem `--no-tree-shake-icons` falham em runtime.

:::

## Análise

```bash
# Análise completa (mesma do CI)
flutter analyze --fatal-infos

# Análise dos custom lints
cd custom_lints && dart analyze lib/

# Ver problemas sem fatal-infos (modo local)
flutter analyze
```

## Geração de Código

```bash
# Gerar uma vez (depois de editar @riverpod ou @freezed)
dart run build_runner build --delete-conflicting-outputs

# Watch mode (durante desenvolvimento ativo)
dart run build_runner watch --delete-conflicting-outputs

# Gerar localizações (depois de editar ARBs)
flutter gen-l10n
```

## Testes

```bash
# Todos os testes
flutter test

# Com cobertura
flutter test --coverage
# Resultado: coverage/lcov.info

# Teste específico
flutter test test/models/shopping_item_test.dart

# Testes de integração
flutter test integration_test/
```

## Localização / Traduções

```bash
# Traduzir chaves ausentes em todos os locales
python3 scripts/translate_missing.py

# Validar qualidade das traduções
python3 scripts/review_translations.py

# Traduzir um locale específico (fallback)
python3 scripts/translate_single.py app_es.arb

# Regenerar arquivos Dart de localização
flutter gen-l10n
```

## Deploy

```bash
# 1. Build do AAB
flutter build appbundle --no-tree-shake-icons \
  --dart-define=REVENUECAT_API_KEY=goog_lUoZUpDVyhVroFRzwgArMnFxIQv

# 2. Upload para internal testing
python3 upload_aab.py

# Atualizar store listings
python3 update_store_listings.py
python3 update_full_descriptions.py
```

## Firebase

```bash
# Deploy de regras Firestore
firebase deploy --only firestore:rules

# Deploy de regras Storage
firebase deploy --only storage

# Emuladores locais
firebase emulators:start
```

## Referência Rápida

| Situação | Comando |
|---|---|
| Adicionei `@riverpod` | `dart run build_runner build --delete-conflicting-outputs` |
| Adicionei string nova | `flutter gen-l10n` depois `python3 scripts/translate_missing.py` |
| Quero rodar CI localmente | `flutter analyze --fatal-infos && flutter test` |
| Quero subir para internal | `flutter build appbundle... && python3 upload_aab.py` |
