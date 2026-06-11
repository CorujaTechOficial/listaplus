import os
import re

def fix_arb_file(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Simple regex to find plural blocks and replace localized 'other' with 'other'
    # This is a bit risky but should work for most cases in this project
    
    # Pattern: {variable, plural, one{...} SOMETHING{...}}
    # We want to replace SOMETHING with 'other' if it's not 'other'
    
    def replacer(match):
        prefix = match.group(1)
        one_block = match.group(2)
        other_label = match.group(3)
        other_block = match.group(4)
        suffix = match.group(5)
        
        if other_label.strip() != 'other':
            return f"{prefix}one{{{one_block}}} other{{{other_block}}}{suffix}"
        return match.group(0)

    # regex for {name, plural, one{...} other_label{...}}
    # handles simple cases
    pattern = r'(\{\s*\w+\s*,\s*plural\s*,\s*)one\s*\{([^{}]*)\}\s*(\w+)\s*\{([^{}]*)\}(\s*\})'
    
    new_content = re.sub(pattern, replacer, content)
    
    if new_content != content:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(new_content)
        return True
    return False

l10n_dir = 'lib/l10n'
for filename in os.listdir(l10n_dir):
    if filename.endswith('.arb'):
        if fix_arb_file(os.path.join(l10n_dir, filename)):
            print(f"Fixed {filename}")

# Also fix the ms locale issue
ms_path = os.path.join(l10n_dir, 'app_ms.arb')
if os.path.exists(ms_path):
    with open(ms_path, 'r', encoding='utf-8') as f:
        content = f.read()
    content = content.replace('"type": "Object"', '"type": "String"')
    with open(ms_path, 'w', encoding='utf-8') as f:
        f.write(content)
    print("Fixed app_ms.arb")
