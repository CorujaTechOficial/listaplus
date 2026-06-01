#!/usr/bin/env python3
import json
import os
import re

ARB_DIR = 'lib/l10n'
TEMPLATE_FILE = os.path.join(ARB_DIR, 'app_en.arb')

# Regex para encontrar placeholders como {count} ou {name}
PLACEHOLDER_RE = re.compile(r'\{(\w+)\}')

def get_placeholders(text):
    return set(PLACEHOLDER_RE.findall(text))

def review():
    en_data = json.load(open(TEMPLATE_FILE))
    arb_files = sorted([f for f in os.listdir(ARB_DIR) if f.startswith('app_') and f.endswith('.arb') and f != 'app_en.arb'])

    print("=== INICIANDO REVISÃO DE TRADUÇÕES ===\n")

    for arb_file in arb_files:
        path = os.path.join(ARB_DIR, arb_file)
        data = json.load(open(path))
        locale = arb_file.replace('app_', '').replace('.arb', '')

        issues = []

        for key, en_val in en_data.items():
            if key.startswith('@') or key == '@@locale': continue
            if key not in data: continue

            translated_val = data[key]

            # 1. Verificar Placeholders (CRÍTICO - Quebra o app)
            en_ph = get_placeholders(en_val)
            tr_ph = get_placeholders(translated_val)
            if en_ph != tr_ph:
                issues.append(f"❌ Placeholder incompatível em '{key}': Esperava {en_ph}, encontrou {tr_ph}")

            # 2. Verificar se a marca foi traduzida (Opcional - Branding)
            if "Lista Plus" in en_val and "Lista Plus" not in translated_val:
                issues.append(f"⚠️ Marca 'Lista Plus' pode ter sido traduzida em '{key}': '{translated_val}'")

            # 3. Verificar comprimento (UI)
            if len(translated_val) > len(en_val) * 2.5 and len(en_val) > 10:
                issues.append(f"📏 Tradução muito longa em '{key}': Pode quebrar o layout ({len(translated_val)} chars)")

            # 4. Verificar se ainda está em inglês
            if translated_val == en_val and len(en_val) > 15 and not locale.startswith('en'):
                issues.append(f"🤔 Chave '{key}' parece não ter sido traduzida (idêntica ao inglês)")

        if issues:
            print(f"[{locale.upper()}] - {len(issues)} alertas encontrados:")
            for issue in issues:
                print(f"  {issue}")
            print("-" * 30)

    print("\n=== REVISÃO CONCLUÍDA ===")

if __name__ == "__main__":
    review()
