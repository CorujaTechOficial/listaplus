import json
import os
import glob

en_file = 'lib/l10n/app_en.arb'
with open(en_file, 'r') as f:
    en_data = json.load(f)
    en_keys = set(k for k in en_data.keys() if not k.startswith('@'))

arb_files = glob.glob('lib/l10n/app_*.arb')
missing_report = {}

for arb_file in arb_files:
    if arb_file == en_file:
        continue
    with open(arb_file, 'r') as f:
        data = json.load(f)
        keys = set(k for k in data.keys() if not k.startswith('@'))
        missing = en_keys - keys
        if missing:
            missing_report[arb_file] = len(missing)

for file, count in sorted(missing_report.items()):
    print(f"{file}: {count} missing keys")
