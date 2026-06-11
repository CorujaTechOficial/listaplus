---
id: play-store
title: Deploy — Play Store
sidebar_label: Play Store
---

# Deploy para a Play Store

## Passo a Passo (Internal Testing)

```bash
# 1. Garantir que as traduções estão corretas
python3 scripts/translate_missing.py
python3 scripts/review_translations.py
flutter gen-l10n

# 2. Bumpar a versão em pubspec.yaml
# version: 1.0.77+77 → 1.0.78+78

# 3. Build do AAB
flutter build appbundle \
  --no-tree-shake-icons \
  --dart-define=REVENUECAT_API_KEY=goog_lUoZUpDVyhVroFRzwgArMnFxIQv

# 4. Upload para internal track
python3 upload_aab.py
```

## Credenciais Necessárias

| Arquivo | Localização | Uso |
|---|---|---|
| Service Account Key | `~/play-console-sa.json` | Upload via API |
| Backup da SA Key | `~/Downloads/listaplus-6547b-e019add29823.json` | Backup |
| RevenueCat API Key | `.env` (raiz do projeto) | Build |

## Package e Versão

- **Package**: `br.com.curujatech.listaplus`
- **Versão atual**: `1.0.77+77` (definida em `pubspec.yaml`)
- **AAB gerado em**: `build/app/outputs/bundle/release/app-release.aab`

## `upload_aab.py`

O script:
1. Lê as credenciais de `~/play-console-sa.json`
2. Cria um novo edit na Play Developer API
3. Faz upload do AAB
4. Atribui o build ao track `internal`
5. Commita o edit

```bash
python3 upload_aab.py
```

## Scripts de Store Listing

```bash
# Atualizar descrições por locale
python3 update_store_listings.py

# Atualizar descrições completas por locale
python3 update_full_descriptions.py

# Criar produtos de assinatura (uma vez)
python3 create_subscriptions.py

# Atualizar preços de assinaturas
python3 update_prices.py
```

## Assets da Store

Ícones, feature graphic e screenshots estão em `store_assets/`. Gerados pelo script:

```bash
python3 scripts/generate_icons.py
```

## Checklist de Release

Antes de subir uma release:

- [ ] `flutter analyze --fatal-infos` sem erros
- [ ] `flutter test` todos os testes passando
- [ ] ARBs validados com `review_translations.py`
- [ ] `flutter gen-l10n` sem `Syntax Error`
- [ ] Versão bumpada em `pubspec.yaml`
- [ ] `--no-tree-shake-icons` no comando de build
- [ ] AAB gerado com sucesso
- [ ] `upload_aab.py` executado sem erros
