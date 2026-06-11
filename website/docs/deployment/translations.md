---
id: translations
title: Workflow de Traduções
sidebar_label: Traduções
---

# Workflow de Traduções para Deploy

O app suporta 86 idiomas com 450+ chaves de tradução. Antes de qualquer build de produção, as traduções devem estar 100% completas e válidas.

## Fluxo Completo

```bash
# 1. Adicionar nova(s) chave(s) em app_en.arb
vim lib/l10n/app_en.arb

# 2. Traduzir para todos os 86 locales
python3 scripts/translate_missing.py

# 3. Validar qualidade
python3 scripts/review_translations.py

# 4. Corrigir bugs automáticos (ICU + JSON)
# Ver script abaixo se houver erros

# 5. Regenerar localizações
flutter gen-l10n

# 6. Confirmar sem erros
# Se aparecer "Syntax Error in ARB" → bugs nos ARBs, corrigir antes de buildar
```

## Validações do `review_translations.py`

| Tipo | Nível | O que verifica |
|---|---|---|
| Placeholders | CRITICAL | `{count}` removido/renomeado em algum locale |
| Branding | WARNING | "KipiList" traduzido para outro idioma |
| UI Length | WARNING | Tradução >2.5x mais longa que o inglês |
| English fallback | WARNING | String longa não traduzida |

## Pré-Build: Validar ARBs

```bash
# Verificar se todos os ARBs são JSON válido
python3 -c "
import json, glob
for f in glob.glob('lib/l10n/app_*.arb'):
    try:
        json.loads(open(f).read())
    except Exception as e:
        print(f'BROKEN: {f}: {e}')
print('Done')
"
```

## Locales com 6 Variantes do Inglês

O app tem 6 variantes do inglês para convenções de ortografia diferentes:
- `en` (inglês padrão)
- `en_AU`, `en_CA`, `en_GB`, `en_IN`, `en_NZ`

Ao adicionar chaves, `translate_missing.py` cuida dessas variantes automaticamente.

## Integração com Play Console

:::danger Não usar auto-translate do Play Console

O app já tem traduções para todos os 86 locales nos ARBs. Se "App translations" estiver habilitado no Play Console (Grow > Translations), haverá conflito com as strings já presentes no AAB.

**Recomendação**: Manter auto-translate do Play Console desabilitado para strings do app. Os ARBs são a única fonte de traduções.

:::
