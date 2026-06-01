#!/usr/bin/env python3
import json
import os
import time
from deep_translator import GoogleTranslator

ARB_DIR = 'lib/l10n'
TEMPLATE_FILE = os.path.join(ARB_DIR, 'app_en.arb')

LANG_MAP = {
    'pt_BR': 'pt', 'es': 'es', 'fr': 'fr', 'de': 'de', 'it': 'it'
}

def load_arb(path):
    with open(path, 'r', encoding='utf-8') as f:
        return json.load(f)

def save_arb(path, data):
    with open(path, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=2)

def main():
    en_data = load_arb(TEMPLATE_FILE)
    en_keys = {k for k in en_data if not k.startswith('@') and k != '@@locale'}

    for locale, target_lang in LANG_MAP.items():
        path = os.path.join(ARB_DIR, f'app_{locale}.arb')
        if not os.path.exists(path): continue

        print(f"Processing {locale}...")
        data = load_arb(path)

        to_translate_keys = []
        for k in en_keys:
            # Missing or still in English
            if k not in data or data[k] == en_data[k]:
                # Skip brands and technical terms if they are likely correct
                if en_data[k] in ['Google', 'Apple', 'Sentry', 'RevenueCat', 'JSON', 'PDF', 'Excel', 'Lista Plus']:
                    if k not in data: data[k] = en_data[k]
                    continue
                to_translate_keys.append(k)

        if not to_translate_keys:
            print(f"  {locale} is already 100% translated.")
            continue

        print(f"  Translating {len(to_translate_keys)} keys for {locale}...")

        translator = GoogleTranslator(source='en', target=target_lang)

        # Translate in small batches to avoid timeouts/limits
        batch_size = 10
        for i in range(0, len(to_translate_keys), batch_size):
            batch = to_translate_keys[i:i+batch_size]
            texts = [en_data[k] for k in batch]

            try:
                results = translator.translate_batch(texts)
                for j, key in enumerate(batch):
                    data[key] = results[j]
                    if f'@{key}' in en_data:
                        data[f'@{key}'] = en_data[f'@{key}']
                print(f"    Batch {i//batch_size + 1} done...")
            except Exception as e:
                print(f"    Error in batch: {e}")

            time.sleep(1)

        save_arb(path, data)
        print(f"  {locale} updated.")

if __name__ == "__main__":
    main()
