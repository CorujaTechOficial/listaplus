#!/usr/bin/env python3
"""Upload full descriptions for all 86 store listing locales."""
import sys
sys.path.insert(0, "/Users/absondutragalvao/corujatech projetos/shopping_list")
sys.path.insert(0, "/Users/absondutragalvao/corujatech projetos/shopping_list/scripts")

from full_descs import FULL_DESCS as BATCH_3
from scripts.translations import FULL_DESCS as BATCH_4

import json
from google.oauth2 import service_account
from googleapiclient.discovery import build

SERVICE_ACCOUNT_FILE = "/Users/absondutragalvao/Downloads/listaplus-6547b-e019add29823.json"
PACKAGE_NAME = "br.com.curujatech.listaplus"
SCOPES = ["https://www.googleapis.com/auth/androidpublisher"]

ALL_DESCS = {}
ALL_DESCS.update(BATCH_3)
ALL_DESCS.update(BATCH_4)

def to_bcp47(locale):
    if "_" in locale:
        parts = locale.split("_")
        return f"{parts[0]}-{parts[1]}"
    return locale

EN_FULL_DESC = """Transform the way you grocery shop and manage your home with Lista Plus, the ultimate shopping list and smart pantry management app!

Tired of forgetting items at the supermarket, overspending, or running out of household essentials? Lista Plus combines seamless organization, financial tracking, and advanced artificial intelligence to save you time and money on every single shopping trip.

✨ SMART ORGANIZATION WITH AN AI ASSISTANT
Our built-in Personal AI Assistant is the perfect partner to optimize your household routine:
• Smart Organization: Magically group and organize your shopping list by categories and market aisles with a single tap.
• Quick Recipes: Get intelligent recipe suggestions based on the items currently on your list or what you already have at home.
• Economy Tips: Ask the assistant for personalized insights and advice on how to save money on your current purchase.
• AI Voice Command: Speak naturally to manage your products (e.g., "Add bread, cheese, and ham") using our premium voice command feature.

🛒 SHOPPING MODE & UNLIMITED LISTS
• Create clean, intuitive, and unlimited shopping lists tailored to your needs.
• Use the integrated Shopping Mode to easily check off items as you walk through store aisles.
• Monitor your cart's total estimated price in real-time to avoid surprises at the checkout counter.
• Filter items instantly by pending or purchased, and sort them by name, category, or creation date.

📦 SMART PANTRY STOCK TRACKING
• Keep a virtual pantry updated with everything you have stocked and stored at home.
• Track your current quantity versus the ideal quantity for every product.
• Activate active stock tracking: the app automatically calculates product deficits and generates smart shopping suggestions directly to your list.

💰 MONTHLY BUDGET & SPENDING ANALYSIS
• Set a global monthly budget cap to stay completely in control of your household finances.
• Access an interactive Dashboard filled with beautiful, clear visual data reports.
• View detailed charts and a thorough spending analysis by category to pinpoint exactly where you can save more.

👥 REAL-TIME SYNC & SHARING
• Share lists easily with family members or friends using an exclusive, secure invite code.
• Sync in real-time to manage groceries collaboratively or quickly send items as beautifully formatted text.

🔒 BACKUP, CUSTOMIZATION & ACHIEVEMENTS
• Safely secure and restore your data by exporting or importing backup files in JSON format.
• Convert your shopping lists and financial dashboards into clean PDFs or Excel spreadsheets ready for printing.
• Personalize the interface with custom themes (Green, Blue, Purple, Orange, Red) and seamless light/dark mode support.
• Stay motivated by unlocking unique Achievements as you improve your spending habits and master your budget.

Whether you are managing a busy household inventory or just making a quick weekly grocery run, Lista Plus adapts flawlessly to your lifestyle. 

Download now for free and bring the intelligence of Lista Plus to your next shopping trip!"""

ALL_LOCALES = [
    "af","am","ar","az_AZ","be","bn_BD","bg","ca","cs_CZ","da_DK","de_DE",
    "el_GR","en_AU","en_GB","en_CA","en_IN","en_SG","en_ZA","es_419","es_ES",
    "es_US","et","eu_ES","fa","fa_AE","fa_AF","fa_IR","fi_FI","fil","fr_CA",
    "fr_FR","gl_ES","gu","hi_IN","hr","hu_HU","hy_AM","id","is_IS","it_IT",
    "iw_IL","ja_JP","ka_GE","kk","km_KH","kn_IN","ko_KR","ky_KG","lo_LA","lt",
    "lv","mk_MK","ml_IN","mn_MN","mr_IN","ms","ms_MY","my_MM","ne_NP","nl_NL",
    "no_NO","pa","pl_PL","pt_BR","pt_PT","rm","ro","ru_RU","si_LK","sk","sl",
    "sq","sr","sv_SE","sw","ta_IN","te_IN","th","tr_TR","uk","ur","vi",
    "zh_CN","zh_HK","zh_TW","zu",
    "en_US"
]

MISSING = ["rm","ro","ru_RU","si_LK","sk","sl","sq","sr","sv_SE","sw","ta_IN",
           "te_IN","th","tr_TR","uk","ur","vi","zh_CN","zh_HK","zh_TW","zu"]

# Fallback: use English for missing locales
filler = {}
for loc in MISSING:
    if loc not in ALL_DESCS:
        filler[loc] = EN_FULL_DESC
ALL_DESCS.update(filler)

def main():
    credentials = service_account.Credentials.from_service_account_file(
        SERVICE_ACCOUNT_FILE, scopes=SCOPES
    )
    service = build("androidpublisher", "v3", credentials=credentials)

    edit_request = service.edits().insert(body={}, packageName=PACKAGE_NAME)
    edit_response = edit_request.execute()
    edit_id = edit_response["id"]
    print(f"✅ Edit criada: {edit_id}")

    total = len(ALL_LOCALES)
    success = 0
    for i, locale in enumerate(ALL_LOCALES, 1):
        bcp47 = to_bcp47(locale)
        desc = ALL_DESCS.get(locale, EN_FULL_DESC)
        try:
            body = {"fullDescription": desc}
            service.edits().listings().patch(
                packageName=PACKAGE_NAME,
                editId=edit_id,
                language=bcp47,
                body=body,
            ).execute()
            status = "✅" if desc != EN_FULL_DESC or locale in ["pt_BR","pt_PT","en_US"] else "⚠️ (EN fallback)"
            print(f"  [{i}/{total}] {status} {bcp47}")
            success += 1
        except Exception as e:
            print(f"  [{i}/{total}] ❌ {bcp47} - {e}")

    commit_request = service.edits().commit(
        packageName=PACKAGE_NAME, editId=edit_id,
    )
    commit_response = commit_request.execute()
    print(f"\n✅ Edit commitada! Status: {commit_response.get('status')}")
    print(f"   {success}/{total} locales atualizados")

if __name__ == "__main__":
    main()
