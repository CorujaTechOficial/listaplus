"""Fix translated brand 'Lista Plus' across all ARB locale files.

The brand name "Lista Plus" must remain in Latin script in every locale.
"""
import json, os, re

L10N_DIR = 'lib/l10n'
EN_FILE = os.path.join(L10N_DIR, 'app_en.arb')

# Load English template
with open(EN_FILE) as f:
    en = json.load(f)

# Keys whose English value contains "Lista Plus" or "ListaPlus"
BRAND_KEYS = [k for k, v in en.items() if isinstance(v, str) and ('Lista Plus' in v or 'ListaPlus' in v)]

def fix_value(key, locale, value):
    """Fix brand in a single value, returning fixed value or None if unchanged."""
    en_val = en[key]

    # If already contains correct brand, skip
    if 'Lista Plus' in value:
        return None
    # Fix "ListaPlus" -> "Lista Plus" (no space is wrong)
    if 'ListaPlus' in value:
        return value.replace('ListaPlus', 'Lista Plus')

    # For pure-brand keys, just use English value
    if key in ('listaPlusTitle',):
        return 'Lista Plus'

    if key in ('paywallTitle',):
        return 'Lista Plus Premium'

    # For keys where brand is embedded in a sentence, do targeted replacement
    # Strategy: replace the localized brand part with "Lista Plus"
    # We find what part of the value is the brand by comparing with English

    # Common patterns of translated brand names
    brand_patterns = [
        # Latin-script variants (wrong case, spelling, or missing space)
        (r'\bList\s*Plus\b', 'Lista Plus', re.IGNORECASE),        # List Plus, list plus
        (r'\bListe\s*Plus\b', 'Lista Plus', re.IGNORECASE),       # Liste Plus (French)
        (r'\bLlista\s*Plus\b', 'Lista Plus', re.IGNORECASE),      # Llista Plus (Catalan)
        (r'ListaPlus\b', 'Lista Plus', re.IGNORECASE),             # ListaPlus (no space)
        (r'\bDaftar\s*Ditambah\b', 'Lista Plus', re.IGNORECASE),  # Indonesian
        # Declined forms (Slavic languages)
        (r'\bListu\s*Plus\b', 'Lista Plus', re.IGNORECASE),       # Croatian
        (r'\bLiście\s*Plus\b', 'Lista Plus', re.IGNORECASE),       # Polish
        (r'\bListi\s*Plus\b', 'Lista Plus', re.IGNORECASE),       # Slovenian
        (r'\bListo\s*Plus\b', 'Lista Plus', re.IGNORECASE),       # Slovenian declined
    ]

    for pattern, replacement, flags in brand_patterns:
        if re.search(pattern, value, flags):
            return re.sub(pattern, replacement, value, flags=flags)

    # For non-Latin script translations, we need to handle each locale individually
    # Check common non-Latin brand translations

    # Cyrillic patterns
    cyrillic_brands = [
        # Russian, Serbian, Bulgarian: Листа Плюс, Спіс плюс, etc.
        ('Листа Плюс', 'Lista Plus'), ('Листа Плус', 'Lista Plus'),
        ('листу Плус', 'Lista Plus'),  # Serbian declined
        ('Листу Плус', 'Lista Plus'),  # Serbian declined capitalized
        ('Листе Плус', 'Lista Plus'),  # Serbian genitive declined
        ('Спіс плюс', 'Lista Plus'), ('Список Плюс', 'Lista Plus'),
        ('Листа Плус', 'Lista Plus'), ('Листа плус', 'Lista Plus'),
        ('Список Плюс', 'Lista Plus'), ('Спіс плюс', 'Lista Plus'),
        # Belarusian
        ('Спіс плюс', 'Lista Plus'), ('List Plus', 'Lista Plus'),
    ]

    for wrong, correct in cyrillic_brands:
        if wrong in value:
            return value.replace(wrong, correct)

    # Macedonian "списокот плус" (the list plus)
    if 'списокот плус' in value.lower():
        # Replace both "списокот плус" variants
        for w in ['списокот плус', 'Списокот плус', 'списокот Плус']:
            if w in value:
                return value.replace(w, 'Lista Plus')

    # Arabic/Persian patterns
    arabic_brands = [
        'ليستا بلس', 'لیستا پلاس', 'لیست پلاس', 'ليستة بلس',
    ]
    for wrong in arabic_brands:
        if wrong in value:
            return value.replace(wrong, 'Lista Plus')

    # East Asian patterns
    east_asian_brands = [
        # Japanese
        ('リスタプラス', 'Lista Plus'),
        # Korean
        ('리스타 플러스', 'Lista Plus'),
        ('리스타플러스', 'Lista Plus'),
        # Chinese
        ('列表加号', 'Lista Plus'),
        ('列表加號', 'Lista Plus'),
    ]
    for wrong, correct in east_asian_brands:
        if wrong in value:
            return value.replace(wrong, correct)

    # South Asian patterns (Devanagari, Bengali, etc.)
    south_asian_brands = [
        ('लिस्टा प्लस', 'Lista Plus'),         # Hindi, Marathi
        ('লিস্টা প্লাস', 'Lista Plus'),          # Bengali
        ('લિસ્ટા પ્લસ', 'Lista Plus'),           # Gujarati
        ('ಲಿಸ್ಟಾ ಪ್ಲಸ್', 'Lista Plus'),           # Kannada
        ('ലിസ്റ്റ പ്ലസ്', 'Lista Plus'),          # Malayalam
        ('ਲਿਸਟਾ ਪਲੱਸ', 'Lista Plus'),            # Punjabi
        ('லிஸ்டா பிளஸ்', 'Lista Plus'),           # Tamil
        ('లిస్టా ప్లస్', 'Lista Plus'),           # Telugu
    ]
    for wrong, correct in south_asian_brands:
        if wrong in value:
            return value.replace(wrong, correct)

    # Thai
    thai_brands = [
        ('ลิสต้า พลัส', 'Lista Plus'),
        ('ลิสตาพลัส', 'Lista Plus'),
    ]
    for wrong, correct in thai_brands:
        if wrong in value:
            return value.replace(wrong, correct)

    # Armenian
    if 'List Plus' in value or 'Լիստ Պլյուս' in value:
        return value.replace('List Plus', 'Lista Plus').replace('Լիստ Պլյուս', 'Lista Plus')

    # Amharic/Ethiopic
    if 'ሊስታ ፕላስ' in value:
        return value.replace('ሊስታ ፕላስ', 'Lista Plus')

    # Ukrainian
    if 'Список Плюс' in value or 'Список плюс' in value:
        return value.replace('Список Плюс', 'Lista Plus').replace('Список плюс', 'Lista Plus')

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
