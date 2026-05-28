import json
import os

def get_keys(file_path):
    with open(file_path, 'r') as f:
        data = json.load(f)
        return set(k for k in data.keys() if not k.startswith('@'))

en_keys = get_keys('lib/l10n/app_en.arb')
pt_keys = get_keys('lib/l10n/app_af.arb')

missing = en_keys - pt_keys
print(f"Missing keys: {len(missing)}")
for k in sorted(missing):
    print(k)
