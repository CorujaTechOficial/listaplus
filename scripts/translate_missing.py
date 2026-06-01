#!/usr/bin/env python3
"""Fill all missing translations in ARB files using Google Translate."""

import json
import os
import re
import time
import sys

ARB_DIR = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'lib', 'l10n')
TEMPLATE_FILE = os.path.join(ARB_DIR, 'app_en.arb')

PLACEHOLDER_RE = re.compile(r'\{[\w]+\}')
ICU_PLURAL_RE = re.compile(r'\{[\w]+,\s*plural,\s*(.*?)\}')
ICU_VARIANT_RE = re.compile(r'\b(\w+)\s*\{([^}]*)\}')

LANG_MAP = {
    'af': 'af', 'am': 'am', 'ar': 'ar', 'az': 'az', 'be': 'be', 'bg': 'bg',
    'bn': 'bn', 'bn_BD': 'bn', 'ca': 'ca', 'cs': 'cs', 'cs_CZ': 'cs',
    'da': 'da', 'da_DK': 'da', 'de': 'de', 'de_DE': 'de', 'el': 'el', 'el_GR': 'el',
    'en_AU': 'en', 'en_CA': 'en', 'en_GB': 'en', 'en_IN': 'en', 'en_SG': 'en', 'en_ZA': 'en',
    'es': 'es', 'es_419': 'es', 'es_ES': 'es', 'es_US': 'es',
    'et': 'et', 'eu': 'eu',
    'fa': 'fa', 'fa_AE': 'fa', 'fa_AF': 'fa', 'fa_IR': 'fa',
    'fi': 'fi', 'fi_FI': 'fi', 'fil': 'tl',
    'fr': 'fr', 'fr_CA': 'fr', 'fr_FR': 'fr',
    'gl': 'gl', 'gl_ES': 'gl', 'gu': 'gu',
    'he': 'iw', 'he_IL': 'iw', 'hi': 'hi', 'hi_IN': 'hi', 'hr': 'hr',
    'hu': 'hu', 'hu_HU': 'hu', 'hy': 'hy',
    'id': 'id', 'is': 'is', 'is_IS': 'is', 'it': 'it', 'it_IT': 'it',
    'ja': 'ja', 'ja_JP': 'ja',
    'ka': 'ka', 'ka_GE': 'ka', 'kk': 'kk', 'km': 'km', 'km_KH': 'km',
    'kn': 'kn', 'kn_IN': 'kn', 'ko': 'ko', 'ko_KR': 'ko',
    'ky': 'ky', 'ky_KG': 'ky',
    'lo': 'lo', 'lo_LA': 'lo', 'lt': 'lt', 'lv': 'lv',
    'mk': 'mk', 'mk_MK': 'mk', 'ml': 'ml', 'ml_IN': 'ml',
    'mn': 'mn', 'mn_MN': 'mn', 'mr': 'mr', 'mr_IN': 'mr',
    'ms': 'ms', 'ms_MY': 'ms', 'my': 'my',
    'ne': 'ne', 'ne_NP': 'ne', 'nl': 'nl', 'nl_NL': 'nl',
    'no': 'no', 'no_NO': 'no', 'pa': 'pa',
    'pl': 'pl', 'pl_PL': 'pl', 'pt': 'pt', 'pt_BR': 'pt', 'pt_PT': 'pt',
    'rm': 'rm', 'ro': 'ro',
    'ru': 'ru', 'ru_RU': 'ru',
    'si': 'si', 'sk': 'sk', 'sl': 'sl', 'sq': 'sq', 'sr': 'sr',
    'sv': 'sv', 'sv_SE': 'sv', 'sw': 'sw',
    'ta': 'ta', 'ta_IN': 'ta', 'te': 'te', 'te_IN': 'te',
    'th': 'th', 'tr': 'tr', 'tr_TR': 'tr',
    'uk': 'uk', 'ur': 'ur', 'vi': 'vi',
    'zh': 'zh-CN', 'zh_CN': 'zh-CN', 'zh_HK': 'zh-HK', 'zh_TW': 'zh-TW',
    'zu': 'zu',
}

def flatten_icu(text):
    """Replace ICU plural/message syntax markers, return (flattened, replacements)."""
    replacements = {}
    def replacer(m):
        key = f"__PH{len(replacements)}__"
        replacements[key] = m.group(0)
        return key
    flat = re.sub(r'\{[^}]+\}', replacer, text)
    return flat, replacements

def restore_icu(text, replacements):
    """Restore ICU plural/message markers after translation."""
    for key, val in replacements.items():
        text = text.replace(key, val)
    return text

def translate_text(text, target_lang, source_lang='en', retries=3):
    """Translate a single text, preserving placeholders."""
    from deep_translator import GoogleTranslator
    flat, phs = flatten_icu(text)
    if flat.strip() == '':
        return text
    for attempt in range(retries):
        try:
            result = GoogleTranslator(source=source_lang, target=target_lang).translate(flat)
            if result is None:
                return text
            result = restore_icu(result, phs)
            return result
        except Exception as e:
            if attempt < retries - 1:
                time.sleep(3)
                continue
            print(f"  [WARN] Translation failed for '{text[:50]}...' → {target_lang}: {e}")
            return text

def translate_batch(texts, target_lang, source_lang='en', retries=2):
    """Translate a batch of texts, preserving placeholders."""
    from deep_translator import GoogleTranslator
    flattened = []
    phs_list = []
    for t in texts:
        f, phs = flatten_icu(t)
        flattened.append(f)
        phs_list.append(phs)
    for attempt in range(retries):
        try:
            results = GoogleTranslator(source=source_lang, target=target_lang).translate_batch(flattened)
            if results is None:
                return [translate_text(t, target_lang) for t in texts]
            restored = []
            for i, r in enumerate(results):
                if r is None:
                    restored.append(texts[i])
                else:
                    restored.append(restore_icu(r, phs_list[i]))
            return restored
        except Exception as e:
            if attempt < retries - 1:
                time.sleep(5)
                continue
            print(f"  [WARN] Batch translation failed ({len(texts)} texts → {target_lang}), falling back to individual: {e}")
            return [translate_text(t, target_lang) for t in texts]

def load_arb(path):
    """Load an ARB file, preserving line endings and order."""
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
    data = json.loads(content)
    return data, content

def write_arb(path, data):
    """Write ARB file sorted by keys."""
    locale = data.get('@@locale', 'unknown')
    keys = sorted(data.keys())
    lines = ['{']
    for i, key in enumerate(keys):
        val = data[key]
        comma = ',' if i < len(keys) - 1 else ''
        if isinstance(val, str):
            escaped = json.dumps(val, ensure_ascii=False)
            lines.append(f'  {json.dumps(key, ensure_ascii=False)}: {escaped}{comma}')
        elif isinstance(val, dict):
            lines.append(f'  {json.dumps(key, ensure_ascii=False)}: {json.dumps(val, ensure_ascii=False, indent=2).replace(chr(10), chr(10) + "  ")}{comma}')
        else:
            lines.append(f'  {json.dumps(key, ensure_ascii=False)}: {json.dumps(val, ensure_ascii=False)}{comma}')
    lines.append('}')
    content = '\n'.join(lines) + '\n'
    with open(path, 'w', encoding='utf-8') as f:
        f.write(content)
    return content

def is_meta_key(key):
    return key.startswith('@') or key == '@@locale'

def get_target_lang(locale_code):
    """Map ARB locale code to Google Translate language code."""
    if locale_code in LANG_MAP:
        return LANG_MAP[locale_code]
    base = locale_code.split('_')[0]
    if base in LANG_MAP:
        return LANG_MAP[base]
    return base

def main():
    from deep_translator import GoogleTranslator
    
    print(f"Reading template: {TEMPLATE_FILE}")
    en_data, _ = load_arb(TEMPLATE_FILE)
    en_keys = {k for k in en_data if not is_meta_key(k)}
    
    print(f"Template has {len(en_keys)} translation keys")
    
    arb_files = sorted([f for f in os.listdir(ARB_DIR) if f.startswith('app_') and f.endswith('.arb') and f != 'app_en.arb'])
    
    total_translated = 0
    total_errors = 0
    
    for arb_file in arb_files:
        path = os.path.join(ARB_DIR, arb_file)
        locale_code = arb_file.replace('app_', '').replace('.arb', '')
        target_lang = get_target_lang(locale_code)
        
        locale_data, _ = load_arb(path)
        locale_keys = {k for k in locale_data if not is_meta_key(k)}
        
        # Identify keys that are missing or still in English (and shouldn't be)
        missing_keys = en_keys - locale_keys
        if not locale_code.startswith('en'):
            for k in en_keys:
                if k in locale_data and locale_data[k] == en_data[k]:
                    # Brand names and technical terms that should probably stay English
                    if en_data[k] not in ['Google', 'Apple', 'Sentry', 'RevenueCat', 'JSON', 'PDF', 'Excel', 'Lista Plus']:
                        missing_keys.add(k)

        if not missing_keys:
            print(f"✓ {locale_code} ({target_lang}): complete ({len(locale_keys)} keys)")
            continue
        
        missing_sorted = sorted(missing_keys)
        
        # For English variants, just copy
        if locale_code.startswith('en_'):
            print(f"→ {locale_code}: filling {len(missing_keys)} keys (English variant, copying values)")
            for key in missing_sorted:
                locale_data[key] = en_data[key]
                if f'@{key}' in en_data:
                    locale_data[f'@{key}'] = en_data[f'@{key}']
            write_arb(path, locale_data)
            total_translated += len(missing_keys)
            continue
        
        print(f"→ {locale_code} ({target_lang}): translating {len(missing_keys)} missing keys...")
        
        # Get English source texts
        source_texts = []
        source_keys = []
        for key in missing_sorted:
            val = en_data[key]
            if isinstance(val, str) and val.strip():
                source_texts.append(val)
                source_keys.append(key)
        
        if not source_texts:
            continue
        
        # Check if language is supported
        try:
            test = GoogleTranslator(source='en', target=target_lang).translate("test")
        except Exception:
            print(f"  [SKIP] Language '{target_lang}' not supported by Google Translate, using English")
            for key in missing_sorted:
                locale_data[key] = en_data[key]
                if f'@{key}' in en_data:
                    locale_data[f'@{key}'] = en_data[f'@{key}']
            write_arb(path, locale_data)
            total_translated += len(missing_keys)
            continue
        
        # Translate in batches
        batch_size = 20
        for i in range(0, len(source_texts), batch_size):
            batch_texts = source_texts[i:i+batch_size]
            batch_keys = source_keys[i:i+batch_size]
            
            results = translate_batch(batch_texts, target_lang)
            
            for j, key in enumerate(batch_keys):
                locale_data[key] = results[j]
                if f'@{key}' in en_data:
                    locale_data[f'@{key}'] = en_data[f'@{key}']
            
            time.sleep(0.5)
        
        write_arb(path, locale_data)
        total_translated += len(missing_keys)
        print(f"  ✓ Added {len(missing_keys)} translations")
    
    print(f"\n=== Done! {total_translated} total translations added across {len(arb_files)} locales ===")

if __name__ == '__main__':
    main()
