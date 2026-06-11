import json
import os

L10N_DIR = "/Users/absondutragalvao/corujatech projetos/shopping_list/lib/l10n"

fixes = {
    "app_tr.arb": {
        "catalogAddItems": "{count} {count, plural, one{item} other{items}} ekle \u2192",
    },
    "app_tr_TR.arb": {
        "catalogAddItems": "{count} {count, plural, one{item} other{items}} ekle \u2192",
    },
    "app_sr.arb": {
        "catalogAddItems": "\u0414\u043e\u0434\u0430\u0458 {count} {count,plural, one{\u0441\u0442\u0430\u0432\u043a\u0430} other{\u0441\u0442\u0430\u0432\u043a\u0435}} \u2192",
        "mealPlannerPantryMissing": "{count} {count,plural, one{\u043d\u0435\u0434\u043e\u0441\u0442\u0430\u0458\u0435 \u0441\u0442\u0430\u0432\u043a\u0430} other{\u043d\u0435\u0434\u043e\u0441\u0442\u0430\u0458\u0443 \u0441\u0442\u0430\u0432\u043a\u0435}}",
    },
}

fixed_files = []

for filename, key_values in fixes.items():
    path = os.path.join(L10N_DIR, filename)
    with open(path, "r", encoding="utf-8") as f:
        data = json.load(f)
    file_changed = False
    for key, new_value in key_values.items():
        old_value = data.get(key)
        if old_value != new_value:
            print(f"{filename}:{key}")
            print(f"  Old: {repr(old_value)}")
            print(f"  New: {repr(new_value)}")
            data[key] = new_value
            file_changed = True
    if file_changed:
        with open(path, "w", encoding="utf-8") as f:
            json.dump(data, f, ensure_ascii=False, indent=2)
            f.write("\n")
        fixed_files.append(filename)

if fixed_files:
    print(f"\nFixed: {', '.join(fixed_files)}")
else:
    print("\nNo files needed fixing")
