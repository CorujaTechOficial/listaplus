---
id: localization
title: Localização (i18n)
sidebar_label: Localização (i18n)
---

# Localização

KipiList suporta **86 idiomas** com **traduções genuínas** (zero placeholders em inglês). São 123 arquivos ARB e 450+ chaves de tradução.

## Estrutura

```
lib/l10n/
├── app_en.arb        # Template — fonte da verdade
├── app_pt.arb        # Português
├── app_es.arb        # Espanhol
├── app_fr.arb        # Francês
└── ...               # 123 arquivos no total
```

Configuração em `l10n.yaml`:

```yaml
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
output-dir: lib/generated/l10n
```

## Uso no Código

**Toda** string visível ao usuário deve usar `AppLocalizations`:

```dart
// Correto
Text(AppLocalizations.of(context)!.addItem)

// Errado — nunca faça isso
Text('Adicionar item')
```

**Exceções**: nome da marca "KipiList", ícones e elementos puramente decorativos.

## Adicionando Novas Chaves

1. Adicione a chave em `lib/l10n/app_en.arb`:

```json
{
  "myNewKey": "My new string",
  "@myNewKey": {
    "description": "Descrição do contexto"
  }
}
```

2. Traduza para todos os idiomas:

```bash
python3 scripts/translate_missing.py
```

3. Valide as traduções:

```bash
python3 scripts/review_translations.py
```

4. Gere os arquivos Dart:

```bash
flutter gen-l10n
```

## Scripts de Tradução

| Script | Função |
|---|---|
| `scripts/translate_missing.py` | Traduz chaves ausentes via Google Translate |
| `scripts/review_translations.py` | Valida placeholders, branding e tamanho |
| `scripts/translate_single.py` | Traduz um único locale (fallback) |

## Bugs Recorrentes nos Scripts

:::danger Bugs conhecidos em `translate_missing.py`

**Bug 1 — ICU keyword `other` traduzido**: O script às vezes traduz a palavra `other` nas plurais ICU para o idioma local (`outro`, `altro`, `другое`...). Isso quebra o `flutter gen-l10n`.

**Bug 2 — JSON corrompido**: Um `}` prematuro fecha o objeto no meio do arquivo.

Chaves afetadas: `aiRemainingFreeToday`, `paywallTrialMonths`

:::

### Script de correção rápida

```python
import json, glob

l10n = 'lib/l10n'
en = json.loads(open(f'{l10n}/app_en.arb').read())
for path in glob.glob(f'{l10n}/app_*.arb'):
    try:
        data = json.loads(open(path).read())
    except Exception:
        print(f"JSON BROKEN: {path}"); continue
    changed = False
    for key in ['aiRemainingFreeToday', 'paywallTrialMonths']:
        if key in data:
            v = data[key]
            if ('plural' in v and 'other{' not in v) or '__' in v:
                data[key] = en[key]; changed = True
    if changed:
        open(path, 'w').write(json.dumps(data, ensure_ascii=False, indent=2))
```

Depois: `flutter gen-l10n` e verifique que não há `Syntax Error` antes de buildar.

## Sintaxe ICU (Plurais)

Nunca traduza as palavras-chave ICU:

```json
{
  "itemCount": "{count, plural, =0{Nenhum item} one{{count} item} other{{count} itens}}"
}
```

As palavras `zero`, `one`, `two`, `few`, `many`, `other` são **palavras-chave da spec ICU** e devem permanecer em inglês em todos os locales.

## Play Console e Traduções

:::warning Conflito com Play Console Auto-Translate

O app já tem traduções para todos os 86 locales via ARBs. Se você ativar "App translations" no Play Console (Grow > Translations), ele tentará traduzir strings já presentes no AAB, causando conflitos.

**Recomendação**: desativar auto-translate do Play Console para strings do app.

:::
