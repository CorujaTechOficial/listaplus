import json
import os
import re

L10N_DIR = "/Users/absondutragalvao/corujatech projetos/shopping_list/lib/l10n"
STANDARD_CATEGORIES = {"zero", "one", "two", "few", "many", "other"}

def get_top_level_categories(content):
    categories = []
    i = 0
    while i < len(content):
        # Look for non-space characters followed by optional spaces and {
        # but ensure we are at top level (brace_level 0 relative to content)
        m = re.search(r"([^\s{},]+)\s*\{", content[i:])
        if not m:
            break
        
        cat_name = m.group(1)
        cat_start_in_slice = m.start(1)
        cat_end_in_slice = m.end(1)
        
        absolute_cat_start = i + cat_start_in_slice
        absolute_cat_end = i + cat_end_in_slice
        
        # Verify if this category is at top level
        prefix = content[:absolute_cat_start]
        if prefix.count("{") == prefix.count("}"):
            categories.append((cat_name, absolute_cat_start, absolute_cat_end))
        
        # Move past the block associated with this category
        open_brace = content.find("{", absolute_cat_end - 1)
        if open_brace != -1:
            inner_brace_level = 1
            j = open_brace + 1
            while j < len(content) and inner_brace_level > 0:
                if content[j] == "{":
                    inner_brace_level += 1
                elif content[j] == "}":
                    inner_brace_level -= 1
                j += 1
            i = j
        else:
            i = absolute_cat_end
    return categories

def fix_arb_file(filename):
    path = os.path.join(L10N_DIR, filename)
    try:
        with open(path, "r", encoding="utf-8") as f:
            data = json.load(f)
    except Exception as e:
        print(f"Error loading {filename}: {e}")
        return False
        
    changed = False
    
    if filename == "app_ms.arb":
        meta_key = "@connectionErrorDesc"
        if meta_key in data:
            placeholders = data[meta_key].get("placeholders", {})
            if "error" in placeholders:
                if placeholders["error"].get("type") != "String":
                    placeholders["error"]["type"] = "String"
                    changed = True

    for key, value in data.items():
        if key.startswith("@") or not isinstance(value, str):
            continue
            
        new_value = value
        
        start_search = 0
        while True:
            start_idx = new_value.find("{", start_search)
            if start_idx == -1:
                break
                
            brace_level = 1
            end_idx = start_idx + 1
            found_plural = False
            plural_marker_match = None
            
            while end_idx < len(new_value) and brace_level > 0:
                if new_value[end_idx] == "{":
                    brace_level += 1
                elif new_value[end_idx] == "}":
                    brace_level -= 1
                elif brace_level == 1:
                    # Check for ,plural, with optional spaces
                    m = re.match(r",\s*plural\s*,", new_value[end_idx:])
                    if m:
                        found_plural = True
                        plural_marker_match = m
                        plural_marker_pos = end_idx
                end_idx += 1
            
            if found_plural and brace_level == 0:
                content_start = plural_marker_pos + plural_marker_match.end()
                block_content = new_value[content_start : end_idx-1]
                
                categories = get_top_level_categories(block_content)
                
                if categories:
                    has_other = any(c[0] == "other" for c in categories)
                    if not has_other:
                        last_cat, l_start, l_end = categories[-1]
                        if last_cat not in STANDARD_CATEGORIES:
                            print(f"[{filename}] {key}: '{last_cat}' -> 'other'")
                            new_block_content = block_content[:l_start] + "other" + block_content[l_end:]
                            new_value = new_value[:content_start] + new_block_content + new_value[end_idx-1:]
                            changed = True
                            start_search = 0
                            continue
            
            start_search = start_idx + 1

        if new_value != value:
            data[key] = new_value
            changed = True

    if changed:
        with open(path, "w", encoding="utf-8") as f:
            json.dump(data, f, ensure_ascii=False, indent=2)
            f.write("\n")
        return True
    return False

if __name__ == "__main__":
    files = sorted([f for f in os.listdir(L10N_DIR) if f.endswith(".arb")])
    print(f"Checking {len(files)} files in {L10N_DIR}...")
    fixed_count = 0
    for f in files:
        if fix_arb_file(f):
            fixed_count += 1
    print(f"\nTotal files fixed: {fixed_count}")
