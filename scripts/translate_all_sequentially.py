#!/usr/bin/env python3
import os
import subprocess

ARB_DIR = 'lib/l10n'
files = sorted([f for f in os.listdir(ARB_DIR) if f.startswith('app_') and f.endswith('.arb') and f != 'app_en.arb'])

for i, f in enumerate(files):
    print(f"[{i+1}/{len(files)}] Processing {f}...")
    # Modify translate_missing.py to take a single file or just let it run (it skips complete ones)
    # But to be safe, I'll just run it and it should skip the ones that are already done.
    # The problem is the timeout. So I will run a script that only processes THIS file.

    # Actually, I'll just use a simpler script for each file to ensure it completes.
    subprocess.run(["python3", "scripts/translate_single.py", f])
