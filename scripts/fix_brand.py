"""Fix translated brand 'KipiList' across all ARB locale files.

The brand name "Lista Plus" must remain in Latin script in every locale.
"""
import json, os, re

L10N_DIR = 'lib/l10n'
EN_FILE = os.path.join(L10N_DIR, 'app_en.arb')

# Load English template
with open(EN_FILE) as f:
    en = json.load(f)

# Keys whose English value contains "Lista Plus" or "KipiList"
BRAND_KEYS = [k for k, v in en.items() if isinstance(v, str) and ('KipiList' in v or 'KipiList' in v)]

def fix_value(key, locale, value):
    """Fix brand in a single value, returning fixed value or None if unchanged."""
    en_val = en[key]

    # If already contains correct brand, skip
    if 'KipiList' in value:
        return None
    # Fix "KipiList" -> "Lista Plus" (no space is wrong)
    if 'KipiList' in value:
        return value.replace('KipiList', 'KipiList')

    # For pure-brand keys, just use English value
    if key in ('listaPlusTitle',):
        return 'KipiList'

    if key in ('paywallTitle',):
        return 'KipiList Premium'

    # For keys where brand is embedded in a sentence, do targeted replacement
    # Strategy: replace the localized brand part with "Lista Plus"
    # We find what part of the value is the brand by comparing with English

    # Common patterns of translated brand names
    brand_patterns = [
        # Latin-script variants (wrong case, spelling, or missing space)
        (r'\bList\s*Plus\b', 'KipiList', re.IGNORECASE),        # List Plus, list plus
        (r'\bListe\s*Plus\b', 'KipiList', re.IGNORECASE),       # Liste Plus (French)
        (r'\bLlista\s*Plus\b', 'KipiList', re.IGNORECASE),      # Llista Plus (Catalan)
        (r'KipiList\b', 'KipiList', re.IGNORECASE),             # KipiList (no space)
        (r'\bDaftar\s*Ditambah\b', 'KipiList', re.IGNORECASE),  # Indonesian
        # Declined forms (Slavic languages)
        (r'\bListu\s*Plus\b', 'KipiList', re.IGNORECASE),       # Croatian
        (r'\bLiście\s*Plus\b', 'KipiList', re.IGNORECASE),       # Polish
        (r'\bListi\s*Plus\b', 'KipiList', re.IGNORECASE),       # Slovenian
        (r'\bListo\s*Plus\b', 'KipiList', re.IGNORECASE),       # Slovenian declined
    ]

    for pattern, replacement, flags in brand_patterns:
        if re.search(pattern, value, flags):
            return re.sub(pattern, replacement, value, flags=flags)

    # For non-Latin script translations, we need to handle each locale individually
    # Check common non-Latin brand translations

    # Cyrillic patterns
    cyrillic_brands = [
        # Russian, Serbian, Bulgarian: Листа Плюс, Спіс плюс, etc.
        ('Листа Плюс', 'KipiList'), ('Листа Плус', 'KipiList'),
        ('листу Плус', 'KipiList'),  # Serbian declined
        ('Листу Плус', 'KipiList'),  # Serbian declined capitalized
        ('Листе Плус', 'KipiList'),  # Serbian genitive declined
        ('Спіс плюс', 'KipiList'), ('Список Плюс', 'KipiList'),
        ('Листа Плус', 'KipiList'), ('Листа плус', 'KipiList'),
        ('Список Плюс', 'KipiList'), ('Спіс плюс', 'KipiList'),
        # Belarusian
        ('Спіс плюс', 'KipiList'), ('List Plus', 'KipiList'),
    ]

    for wrong, correct in cyrillic_brands:
        if wrong in value:
            return value.replace(wrong, correct)

    # Macedonian "списокот плус" (the list plus)
    if 'списокот плус' in value.lower():
        # Replace both "списокот плус" variants
        for w in ['списокот плус', 'Списокот плус', 'списокот Плус']:
            if w in value:
                return value.replace(w, 'KipiList')

    # Arabic/Persian patterns
    arabic_brands = [
        'ليستا بلس', 'لیستا پلاس', 'لیست پلاس', 'ليستة بلس',
    ]
    for wrong in arabic_brands:
        if wrong in value:
            return value.replace(wrong, 'KipiList')

    # East Asian patterns
    east_asian_brands = [
        # Japanese
        ('リスタプラス', 'KipiList'),
        # Korean
        ('리스타 플러스', 'KipiList'),
        ('리스타플러스', 'KipiList'),
        # Chinese
        ('列表加号', 'KipiList'),
        ('列表加號', 'KipiList'),
    ]
    for wrong, correct in east_asian_brands:
        if wrong in value:
            return value.replace(wrong, correct)

    # South Asian patterns (Devanagari, Bengali, etc.)
    south_asian_brands = [
        ('लिस्टा प्लस', 'KipiList'),         # Hindi, Marathi
        ('লিস্টা প্লাস', 'KipiList'),          # Bengali
        ('લિસ્ટા પ્લસ', 'KipiList'),           # Gujarati
        ('ಲಿಸ್ಟಾ ಪ್ಲಸ್', 'KipiList'),           # Kannada
        ('ലിസ്റ്റ പ്ലസ്', 'KipiList'),          # Malayalam
        ('ਲਿਸਟਾ ਪਲੱਸ', 'KipiList'),            # Punjabi
        ('லிஸ்டா பிளஸ்', 'KipiList'),           # Tamil
        ('లిస్టా ప్లస్', 'KipiList'),           # Telugu
    ]
    for wrong, correct in south_asian_brands:
        if wrong in value:
            return value.replace(wrong, correct)

    # Thai
    thai_brands = [
        ('ลิสต้า พลัส', 'KipiList'),
        ('ลิสตาพลัส', 'KipiList'),
    ]
    for wrong, correct in thai_brands:
        if wrong in value:
            return value.replace(wrong, correct)

    # Armenian
    if 'List Plus' in value or 'Լիստ Պլյուս' in value:
        return value.replace('List Plus', 'KipiList').replace('Լիստ Պլյուս', 'KipiList')

    # Amharic/Ethiopic
    if 'ሊስታ ፕላስ' in value:
        return value.replace('ሊስታ ፕላስ', 'KipiList')

    # Ukrainian
    if 'Список Плюс' in value or 'Список плюс' in value:
        return value.replace('Список Плюс', 'KipiList').replace('Список плюс', 'KipiList')

    # If we get here, we couldn't identify the brand pattern
    # Log it for manual review
    print(f'  ⚠️  Cannot fix {key}: {json.dumps(value)} (locale={locale})')
    return None


fixed_count = 0
skipped_count = 0

for fname in sorted(os.listdir(L10N_DIR)):
    if not fname.endswith('.arb') or fname == 'app_en.arb':
        continue
    locale = fname.replace('app_', '').replace('.arb', '')
    path = os.path.join(L10N_DIR, fname)

    with open(path) as f:
        data = json.load(f)

    changed = False
    for key in BRAND_KEYS:
        if key not in data:
            continue
        orig = data[key]
        if not isinstance(orig, str):
            continue
        fixed = fix_value(key, locale, orig)
        if fixed is not None:
            data[key] = fixed
            changed = True
            fixed_count += 1
            if orig != fixed:
                print(f'  ✅ {fname}: {key} = {json.dumps(orig)} → {json.dumps(fixed)}')

    if changed:
        with open(path, 'w') as f:
            json.dump(data, f, indent=2, ensure_ascii=False)
            f.write('\n')

if fixed_count == 0:
    print('No fixes needed.')
else:
    print(f'\nFixed {fixed_count} brand occurrences across locale files.')
