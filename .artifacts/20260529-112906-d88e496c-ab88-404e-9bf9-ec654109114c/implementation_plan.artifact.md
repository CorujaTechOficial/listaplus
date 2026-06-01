# Fix Translation Issues

This plan aims to fix critical translation errors (broken placeholders), maintain brand consistency, and improve the translation scripts to prevent recurrence.

## User Review Required

> [!IMPORTANT]
> - I will be standardizing the brand name to "Lista Plus" in all languages.
> - For unsupported locales like Romansh (`rm`), I will default to English values for missing keys unless a better fallback (like Italian) is preferred.
> - For `zh_HK`, I will use `zh_TW` as a base if it's missing.

## Proposed Changes

### Scripts

#### [translate_missing.py](file:///Users/absondutragalvao/corujatech%20projetos/shopping_list/scripts/translate_missing.py)
- Change placeholder markers from `__PHn__` to something more resilient like `[[PH_n_PH]]` to prevent translation engines from translating or corrupting them.
- Add a check to ensure "Lista Plus" remains untranslated.

### Localization Files

#### [app_sr.arb](file:///Users/absondutragalvao/corujatech%20projetos/shopping_list/lib/l10n/app_sr.arb)
- Manually fix broken placeholders (e.g., `__ПХ0__` -> `{count}`).
- Restore "Lista Plus" brand name.

#### [Other ARB Files](file:///Users/absondutragalvao/corujatech%20projetos/shopping_list/lib/l10n/)
- Automated pass to fix corrupted placeholders and brand names using improved scripts.

## Verification Plan

### Automated Tests
- Run `python3 scripts/review_translations.py` and verify zero "❌ Placeholder incompatível" errors.
- Run `flutter gen-l10n` to ensure all ARB files are valid.

### Manual Verification
- Inspect `app_sr.arb` and a few others (`fa`, `ar`) to confirm "Lista Plus" is correct.
