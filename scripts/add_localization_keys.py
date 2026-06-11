#!/usr/bin/env python3
"""Add missing localization keys to app_en.arb based on hardcoded strings found in Dart files."""

import json
import re
import os

ARB_PATH = 'lib/l10n/app_en.arb'

def load_arb(path):
    with open(path, 'r', encoding='utf-8') as f:
        return json.load(f)

def save_arb(path, data):
    # Custom JSON serialization to match Flutter ARB format (with trailing newline)
    content = json.dumps(data, indent=2, ensure_ascii=False) + '\n'
    with open(path, 'w', encoding='utf-8') as f:
        f.write(content)

def key_from_string(s):
    """Generate a sensible localization key from an English string."""
    # Remove special chars, replace spaces with camelCase
    s = re.sub(r'[^a-zA-Z0-9\s]', '', s)
    parts = s.strip().split()
    if not parts:
        return None
    
    # Lowercase first word, capitalize rest
    key = parts[0].lower()
    for p in parts[1:]:
        key += p[0].upper() + p[1:] if p else ''
    
    # Truncate if too long
    if len(key) > 50:
        key = key[:50]
    
    return key

# All missing strings organized by category with English translations
MISSING_STRINGS = {
    # ===== main.dart =====
    'errorRenderScreen': 'Oops! Something went wrong rendering this screen.',
    'connectionError': 'Connection Error',
    'connectionErrorDesc': 'Could not connect to the server. Check your internet.\n({error})',
    'retry': 'Retry',
    'errorLoadingLists': 'Error loading lists',
    'noListsFound': 'No lists found',
    'createFirstList': 'Create First List',
    
    # ===== Settings Screen =====
    'unlockPremiumTitle': 'Unlock unlimited lists, AI and more',
    'loadingSubscription': 'Loading subscription...',
    'errorLoadingSubscription': 'Error loading subscription',
    'profileSection': 'Profile',
    'myProfile': 'My Profile',
    'profileSubtitle': 'Personal preferences for the AI assistant',
    'manageCategories': 'Manage Categories',
    'manageCategoriesSubtitle': 'Manage item categories',
    
    # ===== User Profile =====
    'profileSaved': 'Profile saved successfully!',
    'errorSavingProfile': 'Error saving: {error}',
    'userProfile': 'User Profile',
    'saveProfile': 'Save Profile',
    'profileDescription': 'Tell us your personal preferences so the AI assistant can suggest personalized items and recipes.',
    'preferredMarket': 'Preferred Market',
    'preferredMarketHint': 'E.g.: Supermarket X',
    'dietaryRestrictions': 'Dietary Restrictions',
    'dietaryRestrictionsHint': 'E.g.: vegan, vegetarian, gluten-free',
    'marketsToAvoid': 'Markets to Avoid',
    'marketsToAvoidHint': 'E.g.: Market Y, Market Z',
    'observations': 'Notes',
    'observationsHint': 'Other preferences for the assistant',
    
    # ===== Manage Categories =====
    'manageCategoriesTitle': 'Manage Categories',
    'categoryLimitReached': 'Limit of 10 categories on the free version. Upgrade to Pro!',
    'noCategories': 'No categories.',
    'deleteCategoryTitle': 'Delete Category',
    'deleteCategoryConfirm': 'Items in category "{category}" will be moved to "Others".\nContinue?',
    'deleteCategory': 'Delete',
    
    # ===== Achievements =====
    'myAchievements': 'My Achievements',
    'itemsPurchased': 'Items Purchased',
    'totalSavings': 'Total Savings',
    'currentStreak': 'Current Streak',
    'streakDays': '{days} days',
    
    # ===== Theme Selection =====
    'chooseThemeColor': 'Choose Theme Color',
    
    # ===== Chat Screen =====
    'errorLoadingHistory': 'Error loading history',
    'deleteConversationTitle': 'Delete Conversation?',
    'deleteConversationConfirm': 'This action cannot be undone.',
    'deleteConversation': 'Delete',
    
    # ===== AI Chat Panel =====
    'undo': 'Undo',
    'becomePremium': 'Become Premium',
    'unlockWithAd': 'Unlock with Ad',
    'aiPremiumDescription': 'This interactive interface uses advanced artificial intelligence and is exclusive to Pro members or via a quick ad.',
    'aiAssistant': 'AI Assistant',
    'close': 'Close',
    
    # ===== List Screen =====
    'sortAZ': 'A-Z',
    'sortCategory': 'Category',
    'sortDate': 'Date',
    'sortManual': 'Manual',
    
    # ===== Add/Edit Category Dialog =====
    'categoryNameHint': 'E.g.: Meats',
    'color': 'Color:',
    'icon': 'Icon:',
    
    # ===== Quick Add Bar =====
    'scanBarcode': 'Scan Barcode',
    
    # ===== Pantry Scanner =====
    'scanProduct': 'Scan Product',
    'positionBarcodeCenter': 'Position the barcode in the center',
    
    # ===== Artifact Widget =====
    'replaceItem': 'Replace {name}',
    'selectCheaperAlternative': 'Select a cheaper product alternative to optimize cost.',
    'swap': 'Swap',
    
    # ===== Catalog =====
    'itemAdded': '{name} added',
    'errorLoadingProducts': 'Error loading products: {error}',
    
    # ===== Meal Planner =====
    'mealType': 'Meal type',
    
    # ===== OpenCodeGo Service Errors =====
    'requestTimeout': 'Sorry, the request timed out.',
    'connectionError2': 'Sorry, a connection error occurred.',
    
    # ===== AI Agent Activity Strings =====
    'addingItems': 'Adding items to list...',
    'removingItems': 'Removing items...',
    'updatingItem': 'Updating item...',
    'checkingItem': 'Checking item...',
    'uncheckingItem': 'Unchecking item...',
    'clearingCheckedItems': 'Clearing checked items...',
    'reorganizingList': 'Reorganizing list...',
    'creatingNewList': 'Creating new list...',
    'removingList': 'Removing list...',
    'renamingList': 'Renaming list...',
    'queryingYourLists': 'Querying your lists...',
    'settingBudget': 'Setting budget...',
    'checkingPantry': 'Checking your pantry...',
    'addingToPantry': 'Adding to pantry...',
    'removingFromPantry': 'Removing from pantry...',
    'updatingPantry': 'Updating pantry...',
    'savingRecipe': 'Saving recipe...',
    'searchingRecipes': 'Searching recipes...',
    'removingRecipe': 'Removing recipe...',
    'addingIngredientsToList': 'Adding ingredients to list...',
    'organizingMenu': 'Organizing your menu...',
    'loadingMenu': 'Loading your menu...',
    'updatingMenu': 'Updating menu...',
    'searchingCategories': 'Searching categories...',
    'categorizingItems': 'Categorizing items...',
    'generatingShareLink': 'Generating share link...',
    'searchingSharedList': 'Searching shared list...',
    'loadingProfile': 'Loading your profile...',
    'savingPreferences': 'Saving your preferences...',
    'checkingSettings': 'Checking your settings...',
    'generatingContent': 'Generating personalized content...',
    'searchingProducts': 'Searching products...',
    'estimatingPrices': 'Estimating prices...',
    'processing': 'Processing...',
    'shoppingList': 'Shopping List',
    'purchasedSuffix': ' [Purchased]',
    
    # ===== AI Executor Messages =====
    'listUnarchived': 'List unarchived successfully.',
    
    # ===== AI Tool Labels =====
    'toolDeleteList': 'Delete list',
    'toolAddItems': 'Add items',
    'toolRemoveItems': 'Remove items',
    'toolAddToPantry': 'Add to pantry',
    'toolRemoveFromPantry': 'Remove from pantry',
    'toolShareList': 'Share list',
    'toolSaveRecipe': 'Save recipe',
    'toolDeleteRecipe': 'Delete recipe',
    'toolRemoveMeal': 'Remove meal',
    'toolSavePreference': 'Save preference',
    'toolRemovePreference': 'Remove preference',
    
    # ===== Config Executor =====
    'currentTheme': 'Current theme: {mode}',
    'themeChanged': 'Theme changed to {mode}.',
    'addToList': 'Add to List',
    
    # ===== Error Messages =====
    'shoppingList': 'Shopping List',
    'errorAddingItem': 'Error adding item: {error}',
    'errorAddingBatch': 'Error adding items in batch: {error}',
    'errorTogglingItem': 'Error toggling item status: {error}',
    'errorRemovingItem': 'Error removing item: {error}',
    'errorUpdatingItem': 'Error updating item: {error}',
    'errorUpdatingItems': 'Error updating items: {error}',
    'errorRestoringItem': 'Error restoring item: {error}',
    'errorIncreasingQty': 'Error increasing quantity: {error}',
    'errorDecreasingQty': 'Error decreasing quantity: {error}',
    'errorClearingList': 'Error clearing list: {error}',
    'errorClearingPurchased': 'Error clearing purchased items: {error}',
    'errorRemovingItems': 'Error removing items: {error}',
    'errorTogglingItems': 'Error toggling items: {error}',
    'errorReordering': 'Error reordering item: {error}',
    'errorCreatingList': 'Error creating list',
    'errorServerConnection': 'Error connecting to server: {error}',
    'errorUpdatingList': 'Error updating list: {error}',
    'errorDeletingList': 'Error deleting list: {error}',
    'errorRemovingSharedList': 'Error removing shared list: {error}',
    'errorSettingCurrentList': 'Error setting current list: {error}',
    'errorArchivingList': 'Error archiving list: {error}',
    'errorUnarchivingList': 'Error unarchiving list: {error}',
    'errorUserNotAuthenticated': 'User not authenticated.',
    'errorGeneratingCode': 'Error generating unique code. Try again.',
    'pantryLimitReached': 'Limit of {count} items in pantry on the free plan. Upgrade to add more.',
    'errorImportingList': 'Error importing list "{name}": {error}',
    'errorExecutingTool': 'Error executing {tool}: {error}',
    'errorProcessingRequest': 'Sorry, an error occurred while processing your request. Check your connection or try again later.',
    'couldNotProcess': 'Could not process after multiple attempts.',
    'errorResumingProcessing': 'Error resuming processing.',
    'errorResumingLoop': '[ResumeLoop] Error resuming loop',
    
    # ===== Default Category =====
    'othersCategory': 'Others',
    
    # ===== Calendar - Month Names =====
    'monthJanuary': 'January',
    'monthFebruary': 'February',
    'monthMarch': 'March',
    'monthApril': 'April',
    'monthMay': 'May',
    'monthJune': 'June',
    'monthJuly': 'July',
    'monthAugust': 'August',
    'monthSeptember': 'September',
    'monthOctober': 'October',
    'monthNovember': 'November',
    'monthDecember': 'December',
    
    # ===== Calendar - Day Abbreviations =====
    'dayMon': 'Mon',
    'dayTue': 'Tue',
    'dayWed': 'Wed',
    'dayThu': 'Thu',
    'dayFri': 'Fri',
    'daySat': 'Sat',
    'daySun': 'Sun',
}

def main():
    arb = load_arb(ARB_PATH)
    existing_keys = set(arb.keys())
    
    added = []
    skipped = []
    
    for key, value in MISSING_STRINGS.items():
        # Check if key already exists
        if key in existing_keys:
            skipped.append(key)
            continue
        
        # Add the key
        arb[key] = value
        
        # Add metadata if it has placeholders
        if '{' in value:
            # Extract placeholder names
            placeholders = re.findall(r'\{(\w+)\}', value)
            if placeholders:
                meta_key = f'@{key}'
                if meta_key not in arb:
                    arb[meta_key] = {
                        'placeholders': {p: {} for p in placeholders}
                    }
                    if 'error' in key.lower():
                        arb[meta_key]['description'] = f'Error message for {key}'
        
        added.append(key)
    
    save_arb(ARB_PATH, arb)
    
    print(f"Added {len(added)} new keys to {ARB_PATH}")
    print(f"Skipped {len(skipped)} existing keys")
    
    if added:
        print("\nNew keys added:")
        for k in added:
            print(f"  - {k}: {MISSING_STRINGS[k][:50]}...")

if __name__ == '__main__':
    main()
