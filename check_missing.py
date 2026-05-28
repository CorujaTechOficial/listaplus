
import json

keys_to_check = [
    "addIngredient", "addPhoto", "allTags", "chooseImageSource", "chooseLanguage",
    "deleteRecipe", "deleteRecipeConfirm", "deleteRecipeConfirmMsg", "dynamicColors",
    "dynamicColorsSubtitle", "editRecipe", "editRecipeTitle", "enterUrl",
    "errorLoadingRecipes", "filterByTag", "gallery", "imageUrlPlaceholder",
    "ingredients", "instructions", "instructionsHint", "loadingRecipes",
    "mealPlannerAddMeal", "mealPlannerDateLabel", "mealPlannerDeleteMeal",
    "mealPlannerEditMeal", "mealPlannerError", "mealPlannerGenerateList",
    "mealPlannerGenerateListConfirm", "mealPlannerGenerateListEmpty",
    "mealPlannerGenerateListNoList", "mealPlannerGenerateListSuccess",
    "mealPlannerLoading", "mealPlannerMealDeleted", "mealPlannerMealTypeBreakfast",
    "mealPlannerMealTypeDinner", "mealPlannerMealTypeLunch", "mealPlannerMealTypeSnack",
    "mealPlannerNoMeals", "mealPlannerNoMealsHint", "mealPlannerNoRecipesFound",
    "mealPlannerNoRecipesHint", "mealPlannerNoteLabel", "mealPlannerPrepTime",
    "mealPlannerSave", "mealPlannerSearchRecipes", "mealPlannerSelectRecipe",
    "mealPlannerServings", "mealPlannerServingsLabel", "mealPlannerTitle",
    "mealPlannerViewMonthly", "mealPlannerViewWeekly", "mealPlannerWeekEmpty",
    "mealPlannerWeekEmptyHint", "mealPlannerWeekProgress", "myRecipes",
    "newRecipe", "newRecipeTitle", "noRecipesSaved", "noRecipesSavedHint",
    "openMenu", "prepTime", "prepTimeMinutes", "recipeCreated", "recipeDeleted",
    "recipeImage", "recipeName", "recipeSaved", "recipeTags", "removeImage",
    "requiredField", "saveChanges", "saveRecipe", "searchLanguage", "searchRecipes",
    "shortDescription", "suggestedTags", "tags", "viewRecipe"
]

def check_file(path):
    with open(path, 'r') as f:
        data = json.load(f)
        missing = [k for k in keys_to_check if k not in data]
        return missing

for f in [
    'lib/l10n/app_mn.arb', 'lib/l10n/app_mn_MN.arb', 'lib/l10n/app_mr.arb',
    'lib/l10n/app_mr_IN.arb', 'lib/l10n/app_ms.arb', 'lib/l10n/app_ms_MY.arb',
    'lib/l10n/app_my.arb', 'lib/l10n/app_ne.arb'
]:
    missing = check_file(f)
    print(f"{f}: {len(missing)} missing")
    if missing:
        print(f"  First 5 missing: {missing[:5]}")
