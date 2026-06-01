#!/usr/bin/env python3
import json
import os
import re
import time
import sys
from deep_translator import GoogleTranslator

ARB_DIR = 'lib/l10n'
TEMPLATE_FILE = os.path.join(ARB_DIR, 'app_en.arb')

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
    replacements = {}
    def replacer(m):
        key = f"__PH{len(replacements)}__"
        replacements[key] = m.group(0)
        return key
    flat = re.sub(r'\{[^}]+\}', replacer, text)
    return flat, replacements

def restore_icu(text, replacements):
    for key, val in replacements.items():
        text = text.replace(key, val)
    return text

def translate_batch(texts, target_lang, source_lang='en'):
    translator = GoogleTranslator(source=source_lang, target=target_lang)
    flattened = []
    phs_list = []
    for t in texts:
        f, phs = flatten_icu(t)
        flattened.append(f)
        phs_list.append(phs)
    try:
        results = translator.translate_batch(flattened)
        return [restore_icu(r, phs_list[i]) for i, r in enumerate(results)]
    except:
        return None

def main():
    if len(sys.argv) < 2: return
    arb_file = sys.argv[1]
    path = os.path.join(ARB_DIR, arb_file)
    locale_code = arb_file.replace('app_', '').replace('.arb', '')

    en_data = json.load(open(TEMPLATE_FILE))
    en_keys = {k for k in en_data if not k.startswith('@') and k != '@@locale'}

    locale_data = json.load(open(path))
    locale_keys = {k for k in locale_data if not k.startswith('@') and k != '@@locale'}

    missing_keys = en_keys - locale_keys
    if not locale_code.startswith('en'):
        for k in en_keys:
            if k in locale_data and locale_data[k] == en_data[k]:
                if en_data[k] not in ['Google', 'Apple', 'Sentry', 'RevenueCat', 'JSON', 'PDF', 'Excel', 'Lista Plus']:
                    missing_keys.add(k)

    if not missing_keys:
        print(f"  ✓ {locale_code} is complete")
        return

    print(f"  → {locale_code}: translating {len(missing_keys)} keys")
    target_lang = LANG_MAP.get(locale_code, locale_code.split('_')[0])

    keys_to_translate = sorted(list(missing_keys))
    source_texts = [en_data[k] for k in keys_to_translate]

    batch_size = 20
    for i in range(0, len(source_texts), batch_size):
        batch_keys = keys_to_translate[i:i+batch_size]
        batch_texts = source_texts[i:i+batch_size]

        results = translate_batch(batch_texts, target_lang)
        if results:
            for j, key in enumerate(batch_keys):
                locale_data[key] = results[j]
                if f'@{key}' in en_data:
                    locale_data[f'@{key}'] = en_data[f'@{key}']
        time.sleep(1)

    with open(path, 'w', encoding='utf-8') as f:
        json.dump(locale_data, f, ensure_ascii=False, indent=2)

if __name__ == "__main__":
    main()
