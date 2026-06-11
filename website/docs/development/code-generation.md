---
id: code-generation
title: Geração de Código
sidebar_label: Geração de Código
---

# Geração de Código

KipiList usa geração de código extensiva para Riverpod, Freezed e localização. Todos os arquivos gerados têm extensão `.g.dart` ou `.freezed.dart` e **não são commitados** no git.

## build_runner

Usado para gerar código de `riverpod_generator` e `freezed`.

### Quando rodar

- Depois de adicionar ou modificar uma anotação `@riverpod`
- Depois de adicionar ou modificar uma classe `@freezed`
- Depois de adicionar campos a modelos `json_serializable`
- Ao clonar o projeto pela primeira vez

```bash
# Uma vez
dart run build_runner build --delete-conflicting-outputs

# Modo watch (ideal durante desenvolvimento)
dart run build_runner watch --delete-conflicting-outputs
```

### Arquivos gerados por pacote

| Pacote | Padrão gerado | Exemplo |
|---|---|---|
| `riverpod_generator` | `*.g.dart` | `lists_provider.g.dart` |
| `freezed` | `*.freezed.dart` + `*.g.dart` | `shopping_item.freezed.dart` |
| `json_serializable` | `*.g.dart` | `shopping_item.g.dart` |

## flutter gen-l10n

Gera as classes Dart de localização a partir dos arquivos ARB.

```bash
flutter gen-l10n
```

Saída em `lib/generated/l10n/`:
- `app_localizations.dart`
- `app_localizations_pt.dart`
- `app_localizations_en.dart`
- ... (86 locales)

### Erros comuns

**`Syntax Error in ARB`**: geralmente causado por ICU `other` traduzido nos arquivos ARB. Rode o script de correção antes de gerar:

```python
# scripts/fix_arb_bugs.py (ou rodar manualmente)
import json, glob
l10n = 'lib/l10n'
en = json.loads(open(f'{l10n}/app_en.arb').read())
for path in glob.glob(f'{l10n}/app_*.arb'):
    try: data = json.loads(open(path).read())
    except: print(f"JSON BROKEN: {path}"); continue
    changed = False
    for key in ['aiRemainingFreeToday', 'paywallTrialMonths']:
        if key in data:
            v = data[key]
            if 'plural' in v and 'other{' not in v:
                data[key] = en[key]; changed = True
    if changed:
        open(path, 'w').write(json.dumps(data, ensure_ascii=False, indent=2))
```

## Análise pós-geração

Depois de gerar código, sempre rodar:

```bash
flutter analyze
```

Os arquivos `*.g.dart` são excluídos da análise via `analysis_options.yaml`:

```yaml
analyzer:
  exclude:
    - '**/*.g.dart'
    - '**/*.freezed.dart'
```
