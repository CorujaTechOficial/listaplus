// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'רשימת קניות';

  @override
  String get lists => 'רשימות';

  @override
  String get pantry => 'מזווה';

  @override
  String get navChat => 'לְשׂוֹחֵחַ';

  @override
  String get navRecipes => 'מתכונים';

  @override
  String get navLists => 'רשימות';

  @override
  String get navMealPlanner => 'תַפרִיט';

  @override
  String get cancel => 'ביטול';

  @override
  String get save => 'שמירה';

  @override
  String get create => 'יצירה';

  @override
  String get add => 'הוספה';

  @override
  String get remove => 'הסרה';

  @override
  String get delete => 'מחיקה';

  @override
  String get edit => 'עריכה';

  @override
  String get copy => 'העתקה';

  @override
  String get next => 'הַבָּא';

  @override
  String get retry => 'ניסיון חוזר';

  @override
  String get regenerate => 'יצירה מחדש';

  @override
  String get copiedToClipboard => 'הועתק ללוח';

  @override
  String get confirm => 'אישור';

  @override
  String get close => 'סגירה';

  @override
  String get import => 'ייבוא';

  @override
  String get rename => 'שינוי שם';

  @override
  String get upgrade => 'שדרוג';

  @override
  String get clear => 'ניקוי';

  @override
  String error(String message) {
    return 'שגיאה: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'שגיאה: $message';
  }

  @override
  String get purchaseError => 'שגיאה בעיבוד הרכישה. נסה שוב.';

  @override
  String get restoreError => 'שגיאה בשחזור רכישות. נסה שוב.';

  @override
  String get loading => 'טוען...';

  @override
  String get fieldRequired => 'שדה חובה';

  @override
  String get addedFeedback => 'נוסף!';

  @override
  String get profile => 'פּרוֹפִיל';

  @override
  String get exitShoppingMode => 'צא ממצב קניות';

  @override
  String get exit => 'יְצִיאָה';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'נבחרו $count',
      many: 'נבחרו $count',
      two: 'נבחרו $count',
      one: 'other $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'מוערך';

  @override
  String get alreadyPurchased => 'כבר נרכש';

  @override
  String get clearList => 'נקה רשימה';

  @override
  String get clearPurchased => 'נקה נרכשים';

  @override
  String get share => 'שיתוף';

  @override
  String get shareViaCode => 'שיתוף באמצעות קוד';

  @override
  String get importViaCode => 'ייבוא באמצעות קוד';

  @override
  String get listAssistant => 'עוזר רשימה';

  @override
  String get globalAssistant => 'עוזר כללי';

  @override
  String get becomePremium => 'היה Premium';

  @override
  String get manageSubscription => 'ניהול מינוי';

  @override
  String get completePurchase => 'השלם רכישה';

  @override
  String get confirmClearList => 'להסיר את כל הפריטים?';

  @override
  String get shareListTitle => 'שיתוף רשימה';

  @override
  String get shareThisCode => 'שתף קוד זה:';

  @override
  String get validForLimitedTime => 'תקף לזמן מוגבל';

  @override
  String get importListTitle => 'ייבוא רשימה';

  @override
  String get enterCodeHint => 'הכנס את הקוד';

  @override
  String get confirmArchiveTitle => 'השלם רכישה';

  @override
  String get confirmArchiveContent => 'להשלים רכישה זו ולארכב את הרשימה?';

  @override
  String get complete => 'השלם';

  @override
  String get listArchived => 'הרשימה אורכבה בהצלחה!';

  @override
  String listAdded(String listName) {
    return '$listName נוסף!';
  }

  @override
  String get buy => 'קנה';

  @override
  String get unmark => 'הסר סימון';

  @override
  String confirmDeleteItems(int count) {
    return 'להסיר $count פריט(ים)?';
  }

  @override
  String get confirmDeleteTitle => 'אישור';

  @override
  String confirmContent(int count) {
    return 'להסיר $count פריט(ים)?';
  }

  @override
  String get archiveList => 'ארכוב רשימה';

  @override
  String get pantryAppBar => 'מזווה';

  @override
  String get generateShoppingList => 'צור רשימת קניות';

  @override
  String get pantryEmpty => 'מזווה ריק';

  @override
  String get pantryEmptySubtitle => 'הוסף מוצרים שאתה רוצה להחזיק בבית';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit פריט(ים) צריך/צריכים להירכש';
  }

  @override
  String get noItemsToBuy => 'אין פריטים שצריך לקנות';

  @override
  String get newPantryList => 'קניית מזווה';

  @override
  String get newListTitle => 'רשימת קניות חדשה';

  @override
  String itemsWillBeAdded(int count) {
    return '$count פריט(ים) יתווספו';
  }

  @override
  String get listNameLabel => 'שם הרשימה';

  @override
  String listCreated(String name, int count) {
    return 'הרשימה \"$name\" נוצרה עם $count פריטים';
  }

  @override
  String get noTracking => 'ללא מעקב';

  @override
  String get markAsPurchased => 'סמן כנרכש';

  @override
  String editPantryItem(String name) {
    return 'ערוך $name';
  }

  @override
  String get idealQuantity => 'כמות אידיאלית';

  @override
  String get currentQuantity => 'כמות נוכחית';

  @override
  String get consumed => 'נצרך';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name חודש ל-$quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'להסיר את \"$name\" מהמזווה?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'ערוך $name';
  }

  @override
  String get scanProductTitle => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Position the barcode in the center';

  @override
  String get product => 'Product';

  @override
  String get settingsAppBar => 'הגדרות';

  @override
  String get language => 'שפה';

  @override
  String get languagePortuguese => 'Português (ברזיל)';

  @override
  String get languageEnglish => 'אַנגְלִית';

  @override
  String get languageSystem => 'ברירת מחדל של המערכת';

  @override
  String get chooseLanguage => 'בחר שפה';

  @override
  String get searchLanguage => 'חפש שפה...';

  @override
  String get currency => 'מַטְבֵּעַ';

  @override
  String get chooseCurrency => 'בחר מטבע';

  @override
  String get searchCurrency => 'חפש מטבע...';

  @override
  String get appearance => 'מראה';

  @override
  String get light => 'בהיר';

  @override
  String get system => 'מערכת';

  @override
  String get dark => 'כהה';

  @override
  String get themeColor => 'צבע נושא';

  @override
  String get dynamicColors => 'צבעים דינמיים';

  @override
  String get dynamicColorsSubtitle => 'השתמש בצבעים המבוססים על הטפט שלך';

  @override
  String get dynamicColorsEnabledWarning =>
      'השבת צבעים דינמיים כדי שצבע הנושא ייכנס לתוקף';

  @override
  String get finance => 'כספים';

  @override
  String get monthlyBudgetNav => 'תקציב חודשי';

  @override
  String get budgetSubtitle => 'עקוב אחר ההוצאות החודשיות שלך';

  @override
  String get data => 'נתונים';

  @override
  String get backupNav => 'גיבוי';

  @override
  String get backupSubtitle => 'ייצא או ייבא את הנתונים שלך';

  @override
  String get about => 'אודות';

  @override
  String get version => 'גרסה';

  @override
  String get privacy => 'פרטיות';

  @override
  String get termsOfUse => 'תנאי שימוש';

  @override
  String get myAchievements => 'My Achievements';

  @override
  String get itemsPurchased => 'Items Purchased';

  @override
  String get totalSavings => 'Total Savings';

  @override
  String get currentStreak => 'Current Streak';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '$count day',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Unlocked Badges';

  @override
  String get badgeBeginner => 'Beginner';

  @override
  String get badgeOrganized => 'Organized';

  @override
  String get badgeSavingMaster => 'Saving Master';

  @override
  String get badgeSuperPlanner => 'Super Planner';

  @override
  String get backupTitle => 'גיבוי';

  @override
  String get backupPremiumDescription => 'גיבוי וייצוא הם תכונת Premium';

  @override
  String get exportData => 'ייצא נתונים';

  @override
  String get exportDataSubtitle => 'שמור את כל הרשימות כ-JSON';

  @override
  String get importData => 'ייבא נתונים';

  @override
  String get importDataSubtitle => 'שחזר רשימות מ-JSON';

  @override
  String get importJsonTitle => 'ייבא JSON';

  @override
  String get importJsonHint => 'הדבק את JSON הגיבוי כאן...';

  @override
  String get backupExported => 'הגיבוי יוצא!';

  @override
  String get budgetAppBar => 'תקציב חודשי';

  @override
  String get budgetPremiumLocked => 'תקציב חודשי גלובלי הוא Premium';

  @override
  String get budgetUpgradePrompt => 'שדרג כדי לפתוח';

  @override
  String get noBudgetDefined => 'לא הוגדר תקציב';

  @override
  String totalEstimated(String amount) {
    return 'סה\"כ מוערך: $amount';
  }

  @override
  String get setBudgetButton => 'הגדר תקציב';

  @override
  String get budgetLists => 'רשימות';

  @override
  String get budgetValueLabel => 'סכום';

  @override
  String get setBudgetTitle => 'תקציב חודשי';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'הכל';

  @override
  String get filterPending => 'ממתין';

  @override
  String get filterPurchased => 'נרכש';

  @override
  String get sortName => 'שם';

  @override
  String get sortCategory => 'קטגוריה';

  @override
  String get sortDate => 'תאריך';

  @override
  String get sortManual => 'ידני';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased of $total items';
  }

  @override
  String progressBudget(String amount) {
    return 'Budget: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Total: $amount';
  }

  @override
  String get addItem => 'הוסף פריט';

  @override
  String get itemName => 'שם הפריט';

  @override
  String get quantityShort => 'כמות';

  @override
  String get unit => 'יחידה';

  @override
  String get category => 'קטגוריה';

  @override
  String get estimatedPrice => 'מחיר משוער';

  @override
  String get addItemPrice => 'מחיר משוער';

  @override
  String get editItem => 'ערוך פריט';

  @override
  String get quantityFull => 'כמות';

  @override
  String get editItemPrice => 'מחיר משוער';

  @override
  String get addToPantry => 'הוסף למזווה';

  @override
  String addToPantryPrompt(String name) {
    return 'להוסיף את \"$name\" למזווה שלך?';
  }

  @override
  String get yes => 'כן';

  @override
  String get productName => 'שם המוצר';

  @override
  String get idealQty => 'כמות אידיאלית';

  @override
  String get currentQty => 'כמות נוכחית';

  @override
  String get trackStock => 'מעקב מלאי';

  @override
  String get trackStockActive => 'מופיע בהצעות קנייה';

  @override
  String get trackStockInactive => 'לא יוצר הצעת קנייה';

  @override
  String get createListDialog => 'צור רשימה';

  @override
  String get renameListDialog => 'שנה שם רשימה';

  @override
  String get listHistory => 'היסטוריית רשימות';

  @override
  String get myLists => 'הרשימות שלי';

  @override
  String get viewActive => 'צפה בפעילות';

  @override
  String get viewHistory => 'צפה בהיסטוריה';

  @override
  String get noArchivedLists => 'אין רשימות בארכיון';

  @override
  String get noActiveLists => 'אין רשימות פעילות';

  @override
  String completedOn(String date) {
    return 'הושלם בתאריך $date';
  }

  @override
  String get sharedLabel => 'משותף';

  @override
  String get restore => 'שחזר';

  @override
  String get removeSharedTooltip => 'הסר';

  @override
  String get deleteListTitle => 'מחק רשימה';

  @override
  String deleteListContent(String name) {
    return 'האם אתה בטוח שברצונך למחוק את \"$name\"? כל הפריטים יוסרו.';
  }

  @override
  String get removeSharedListTitle => 'הסר רשימה משותפת';

  @override
  String removeSharedListContent(String name) {
    return 'להסיר את \"$name\" מהרשימות שלך? הרשימה המקורית לא תושפע.';
  }

  @override
  String get createNewList => 'צור רשימה חדשה';

  @override
  String get aiAssistant => 'עוזר AI';

  @override
  String get aiAssistantDescription =>
      'קבל הצעות חכמות, מתכונים וטיפים מותאמים אישית עם עוזר ה-AI שלנו.';

  @override
  String get generalAssistant => 'עוזר כללי';

  @override
  String get newChat => 'צ\'אט חדש';

  @override
  String get noHistory => 'אין היסטוריית צ\'אט';

  @override
  String get deleteSession => 'מחק את הצ\'אט';

  @override
  String get deleteSessionConfirm =>
      'האם אתה בטוח שברצונך למחוק את הצ\'אט הזה? ההודעות יאבדו לצמיתות.';

  @override
  String get clearHistory => 'נקה היסטוריה';

  @override
  String get clearHistoryConfirm => 'למחוק את כל ההודעות בפגישה זו?';

  @override
  String get chatHint => 'הקלד את ההודעה שלך...';

  @override
  String get chatHintBlocked => 'פתח את הנעילה של AI כדי לשוחח';

  @override
  String chatError(String error) {
    return 'שגיאה בטעינת הצ\'אט: $error';
  }

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

  @override
  String get listHelp => 'איך אני יכול לעזור עם הרשימה שלך?';

  @override
  String get generalHelp => 'איך אני יכול לעזור עם הקניות שלך היום?';

  @override
  String get chatSubtitle => 'בקש הצעות לפריטים, מתכונים או טיפים לחיסכון.';

  @override
  String get aiError =>
      'מצטערים, אירעה שגיאה בעיבוד הבקשה שלך. בדוק את החיבור או נסה שוב מאוחר יותר.';

  @override
  String get aiLimitAlmostReached => 'כמעט נגמרו הודעות הבינה המלאכותית';

  @override
  String get unlockAi => 'פתח AI ללא הגבלה';

  @override
  String get aiTeaserFallback =>
      'הירשם ל-Premium כדי לפתוח את התגובה המלאה ולקבל טיפים בלתי מוגבלים בינה מלאכותית לקניות שלך...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining נותרו פעולות בינה מלאכותית החודש - שדרוג ללא הגבלה';
  }

  @override
  String get aiUsageExhausted =>
      'הגעת למגבלת AI חודשית. שדרג ל-Pro ללא הגבלה →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'התחבר כדי לפתוח\nתכונות Premium';

  @override
  String get signInGoogle => 'התחבר עם Google';

  @override
  String get signInApple => 'התחבר עם Apple';

  @override
  String get continueAsGuest => 'המשך כאורח';

  @override
  String get onboardingWelcomeTitle => 'ברוכים הבאים ל- KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'הדרך החכמה ביותר לארגן את הקניות ולחסוך כסף.';

  @override
  String get onboardingSetupTitle => 'התאם אישית את החוויה שלך';

  @override
  String get onboardingSetupDesc =>
      'בחר כיצד אתה רוצה ש-KipiList ייראה ויעבוד עבורך.';

  @override
  String get onboardingLoginTitle => 'שמור הכל בענן';

  @override
  String get onboardingLoginDesc => 'הנתונים שלך מסונכרנים בכל המכשירים שלך';

  @override
  String get onboardingShareTitle => 'שתף עם אלה שאתה אוהב';

  @override
  String get onboardingShareDesc => 'סנכרן רשימות עם משפחה וחברים בזמן אמת';

  @override
  String get onboardingPremiumTitle => 'בטל את הנעילה של כל התכונות';

  @override
  String get onboardingPremiumSubtitle => 'הפק את המרב מרשימות הקניות שלך';

  @override
  String get onboardingAnnualBadge => 'התמורה הטובה ביותר';

  @override
  String get onboardingMonthlyLabel => 'יַרחוֹן';

  @override
  String get onboardingAnnualLabel => 'שְׁנָתִי';

  @override
  String get onboardingViewAllPlans => 'הצג את כל התוכניות';

  @override
  String get onboardingSubscribeCta => 'הירשם';

  @override
  String get onboardingCancelAnytime => 'בטל בכל עת. אין התחייבות.';

  @override
  String get onboardingContinueAsGuest => 'המשך כאורח';

  @override
  String get onboardingRestore => 'לְשַׁחְזֵר';

  @override
  String get onboardingRestoreDesc => 'יש לך כבר מנוי? הקש כאן כדי לשחזר אותו.';

  @override
  String get onboardingMaybeLater => 'אולי מאוחר יותר';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'היי $name, ארגן את הקניות שלך בצורה הנכונה.';
  }

  @override
  String get onboardingSlide1Title => 'רשימות קניות חכמות';

  @override
  String get onboardingSlide1Body =>
      'צור ושתף רשימות באופן מיידי. Kipi מוסיף פריטים באופן אוטומטי על סמך ההרגלים שלך.';

  @override
  String get onboardingSlide2Title => 'הכירו את קיפי';

  @override
  String get onboardingSlide2Body =>
      'שאל כל דבר - צור רשימות, מצא מתכונים, עקוב אחר המזווה שלך, תכנן את השבוע שלך.';

  @override
  String get onboardingSlide3Title => 'מזווה ותכנון ארוחות';

  @override
  String get onboardingSlide3Body =>
      'עקוב אחר מה שיש לך, תכנן ארוחות והפק רשימות קניות באופן אוטומטי.';

  @override
  String get onboardingExit => 'יְצִיאָה';

  @override
  String get onboardingPersonalizationTitle => 'בוא נכיר אותך';

  @override
  String get onboardingPersonalizationDesc =>
      'נשתמש בזה כדי להתאים אישית את ההצעות שלך ולהפוך את הקניות לחכמה יותר.';

  @override
  String get onboardingPersonalizationFoodLabel => 'מה המאכל האהוב עליך?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'לְמָשָׁל פיצה, סושי, לזניה...';

  @override
  String get onboardingPersonalizationCta => 'לְהַמשִׁיך';

  @override
  String get onboardingPersonalizationSkip => 'דלג לעת עתה';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'ספר לנו על האוכל האהוב עליך כדי להמשיך';

  @override
  String get settingsDefaultScreen => 'מסך הבית המוגדר כברירת מחדל';

  @override
  String get settingsDefaultScreenSubtitle =>
      'בחר בין רשימת קניות או צ\'אט בינה מלאכותית';

  @override
  String get settingsScreenList => 'רשימת קניות';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'שגיאת התחברות: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError => 'שגיאה בטעינת הצעות. נסה שוב.';

  @override
  String get paywallPurchaseError => 'לא ניתן היה להשלים את הרכישה. נסה שוב.';

  @override
  String get paywallRestoreError => 'לא נמצא מנוי פעיל לשחזור.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ימים בחינם';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count שבועות בחינם',
      one: '$count שבוע חינם',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count חודשים בחינם',
      one: '$count חודש חינם',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'נסה את KipiList Pro בחינם למשך 7 ימים';

  @override
  String get paywallTrialSubtitle => 'בטל בכל עת. אין תשלום היום.';

  @override
  String get paywallTrialCta => 'התחל ניסיון חינם';

  @override
  String get recipeAddToList => 'הוסף לרשימת הקניות';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count מרכיבים נוספו ל$listName';
  }

  @override
  String get noListSelected => 'לא נבחרה רשימה. פתח רשימה תחילה.';

  @override
  String get paywallFeaturesTitle => 'כל מה שאתה צריך:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI מארגן את הרשימה שלך באופן אוטומטי';

  @override
  String get paywallFeatureDescUnlimitedLists => 'צור כמה רשימות שאתה צריך';

  @override
  String get paywallFeatureDescSharing => 'קניות ביחד בזמן אמת';

  @override
  String get paywallFeatureDescPantry => 'עקוב אחר מה שיש לך בבית';

  @override
  String get paywallFeatureDescBudget => 'הישאר בתקציב מדי חודש';

  @override
  String get paywallFeatureUnlimitedLists => 'רשימות ללא הגבלה';

  @override
  String get paywallFeatureSmartAI => 'AI חכם';

  @override
  String get paywallFeatureExpenseControl => 'בקרת הוצאות';

  @override
  String get paywallFeatureSharing => 'שיתוף';

  @override
  String get paywallBeforeAfterTitle => 'AI לפני ואחרי:';

  @override
  String get paywallLabelCommon => 'מְשׁוּתָף';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'אוֹרֶז';

  @override
  String get paywallBeforeItem2 => 'סַבּוֹן';

  @override
  String get paywallBeforeItem3 => 'בָּשָׂר';

  @override
  String get paywallBeforeItem4 => 'לֶחֶם';

  @override
  String get paywallAfterItem1 => 'דגנים';

  @override
  String get paywallAfterItem2 => 'ניקוי';

  @override
  String get paywallAfterItem3 => 'בשרים';

  @override
  String get paywallAfterItem4 => 'מַאֲפִיָה';

  @override
  String get paywallTestimonialsTitle => 'מה המשתמשים שלנו אומרים:';

  @override
  String get paywallTestimonial1Name => 'אן ס.';

  @override
  String get paywallTestimonial1Text =>
      'AI מארגן את הקניות שלי בשניות. אני חוסך 20 דקות לטיול בשוק.';

  @override
  String get paywallTestimonial2Name => 'צ\'ארלס מ.';

  @override
  String get paywallTestimonial2Text =>
      'לא שכחתי שוב פריט ברשימה. צ\'אט AI הוא סנסציוני!';

  @override
  String get paywallSocialProof => '+2,400 משפחות משתמשות בו';

  @override
  String get paywallCtaUnlock => 'בטל את הנעילה של PRO';

  @override
  String get paywallBestValue => 'הערך הטוב ביותר';

  @override
  String get paywallMostPopular => 'הכי פופולרי';

  @override
  String get paywallProLabel => 'מִקצוֹעָן';

  @override
  String get paywallSafeCheckout => 'תשלום מאובטח';

  @override
  String get paywallSelectPlan => 'בחר את התוכנית שלך:';

  @override
  String paywallSavePercent(Object percent) {
    return 'חסוך $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'רק $price לחודש';
  }

  @override
  String get paywallPackageAnnual => 'תוכנית שנתית';

  @override
  String get paywallPackageMonthly => 'תוכנית חודשית';

  @override
  String get paywallPackageLifetime => 'גישה לכל החיים';

  @override
  String get paywallCancelAnytime => 'בטל בכל עת. אין התחייבות.';

  @override
  String paywallTrialInCard(int days) {
    return '$days ימים ראשונים בחינם';
  }

  @override
  String get paywallSecuredByStore => 'מאובטח על ידי Google Play · בטל בכל עת';

  @override
  String get paywallPolicy => 'מדיניות פרטיות';

  @override
  String get paywallTerms => 'תנאי שימוש';

  @override
  String get paywallRestore => 'לְשַׁחְזֵר';

  @override
  String get paywallHeroHeadline => 'Kipi AI תמיד לצידך';

  @override
  String get paywallHeroSubtitle =>
      'הוסף פריטים, ארגן רשימות וחסוך זמן עם AI בכיס';

  @override
  String get paywallBenefit1Desc => 'מוסיף, מארגן ומציע פריטים 24/7';

  @override
  String get paywallBenefit2Desc => 'אין מגבלה של 3 רשימות';

  @override
  String get paywallBenefit3Desc => 'מעקב אחר הוצאות ורשימות משפחתיות';

  @override
  String get paywallPackageMonthlyDesc => 'גמישות מלאה';

  @override
  String paywallCtaTrialDays(int days) {
    return 'התחל בחינם - $days ימים';
  }

  @override
  String get premiumUpgrade => 'שדרג כדי לפתוח';

  @override
  String get itemRemoved => 'הפריט הוסר';

  @override
  String get undo => 'בטל';

  @override
  String get emptyListTitle => 'הרשימה שלך ריקה';

  @override
  String get emptyListSubtitle => 'הוסף פריטים כדי להתחיל';

  @override
  String get noListFoundTitle => 'לא נמצאו רשימות';

  @override
  String get noListFoundSubtitle => 'צור את הרשימה הראשונה שלך כדי להתחיל';

  @override
  String get createFirstList => 'צור רשימה ראשונה';

  @override
  String get listBudgetTitle => 'תקציב הרשימה';

  @override
  String get budgetAmountLabel => 'סכום התקציב';

  @override
  String get removeBudget => 'הסר';

  @override
  String get prefUnlimitedLists => 'רשימות ללא הגבלה';

  @override
  String get prefSharing => 'שתף רשימות';

  @override
  String get prefFullHistory => 'היסטוריה מלאה';

  @override
  String get prefExportData => 'ייצא נתונים';

  @override
  String get prefCustomThemes => 'ערכות נושא מותאמות';

  @override
  String get prefMonthlyBudget => 'תקציב חודשי גלובלי';

  @override
  String get prefAIAssistant => 'עוזר AI אישי';

  @override
  String get prefUnlimitedPantry => 'מזווה ללא הגבלה';

  @override
  String get prefInteractiveArtifacts => 'ארטיפקטים אינטראקטיביים של AI';

  @override
  String get themeGreen => 'ירוק';

  @override
  String get themeBlue => 'כחול';

  @override
  String get themePurple => 'סגול';

  @override
  String get themeRed => 'אדום';

  @override
  String get themeOrange => 'כתום';

  @override
  String get themePink => 'ורוד';

  @override
  String get themeIndigo => 'אינדיגו';

  @override
  String get themeAmber => 'ענבר';

  @override
  String get themeTeal => 'טיל';

  @override
  String get themeBrown => 'חום';

  @override
  String get catFruits => 'פירות';

  @override
  String get catCleaning => 'ניקיון';

  @override
  String get catBeverages => 'משקאות';

  @override
  String get catBakery => 'מאפייה';

  @override
  String get catOthers => 'אחר';

  @override
  String get unitPack => 'חבילה';

  @override
  String get shareSubject => 'רשימת קניות';

  @override
  String get monthlyBudgetTitle => 'תקציב חודשי';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'מחק רשימה';

  @override
  String get pantryItemRemoved => 'הפריט הוסר';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: 'יש לרכוש $deficit פריטים',
      many: 'יש לרכוש $deficit פריטים',
      two: 'יש לרכוש $deficit פריטים',
      one: 'other$deficit פריט',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'סה\"כ בעגלה';

  @override
  String get restockLabel => 'חידוש מלאי';

  @override
  String get advancedFeatures => 'תכונות מתקדמות';

  @override
  String get selectAll => 'בחר הכל';

  @override
  String get deselectAll => 'בטל בחירה';

  @override
  String get monthlyBudgetAppBar => 'תקציב חודשי';

  @override
  String get budgetEditTitle => 'תקציב חודשי';

  @override
  String get budgetDashboardTitle => 'לוח מחוונים';

  @override
  String get selectListForDashboard => 'בחר רשימה כדי לראות את לוח המחוונים.';

  @override
  String get spendingAnalysis => 'ניתוח הוצאות';

  @override
  String get noItemsToAnalyze => 'אין פריטים ברשימה לניתוח.';

  @override
  String get markItemsToSeeAnalysis =>
      'סמן פריטים כנרכשים כדי לראות את הניתוח.';

  @override
  String get totalSpending => 'סה\"כ הוצאות';

  @override
  String get spendingByCategory => 'הוצאות לפי קטגוריה';

  @override
  String get achievements => 'הישגים';

  @override
  String get exportPdfExcel => 'ייצא PDF/Excel';

  @override
  String get exportPdf => 'ייצא כ-PDF';

  @override
  String get exportExcel => 'ייצא כ-Excel';

  @override
  String get organizingAi => 'מארגן עם AI...';

  @override
  String get yesLabel => 'כן';

  @override
  String get noLabel => 'לא';

  @override
  String get shareListText => 'רשימת הקניות שלי';

  @override
  String get emptyListAddItems => 'הרשימה שלך ריקה! הוסף פריטים תחילה. ℹ️';

  @override
  String get listOrganizedMagic => 'הרשימה אורגנה בקסם לפי קטגוריות! ✨';

  @override
  String get shoppingMode => 'מצב קניות';

  @override
  String get smartOrganization => 'ארגון חכם';

  @override
  String get savings => 'חיסכון';

  @override
  String get shoppingModeHeader => 'מצב קניות';

  @override
  String get shareAsText => 'שלח פריטים כטקסט מעוצב';

  @override
  String get shareRealtime => 'סנכרון בזמן אמת עם אנשים אחרים';

  @override
  String get quickRecipe => 'מתכון מהיר';

  @override
  String get quickRecipePrompt => 'הצע מתכונים עם פריטים מהרשימה שלי.';

  @override
  String get economyTips => 'טיפים לחיסכון';

  @override
  String get economyTipsPrompt => 'איך אני יכול לחסוך כסף ברכישה זו?';

  @override
  String get organizeAisles => 'ארגן לפי מעברים';

  @override
  String get organizeAislesPrompt => 'ארגן לפי מעברים בסופר.';

  @override
  String get recipeSuggestion => 'הצעת מתכון';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'נותרו $remaining נקודות זכות';
  }

  @override
  String get addAllToList => 'הוסף הכל לרשימה';

  @override
  String get organizeByAisles => 'ארגן לפי מעברים';

  @override
  String get voiceTranscriptionTooltip => 'הקלדה קולית (חינם)';

  @override
  String get aiVoiceCommandTooltip => 'פקודה קולית AI (Premium)';

  @override
  String get voiceCommandTitle => 'פקודה קולית AI';

  @override
  String get voiceCommandContent =>
      'דבר באופן טבעי כדי לנהל את הרשימה שלך!\n\nדוגמאות:\n• \'הוסף לחם, גבינה ונקניק\'\n• \'הסר אבקת כביסה\'\n• \'שנה נושא לכחול\'\n\nזוהי תכונה בלעדית של KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'צפה בתוכניות';

  @override
  String get itemsAddedSuccess => 'הפריטים נוספו בהצלחה לרשימה!';

  @override
  String get viewList => 'צפה ברשימה';

  @override
  String get feedbackTitle => 'שלח משוב';

  @override
  String get feedbackPrompt => 'מה תרצה לשתף?';

  @override
  String get feedbackTypeBug => 'דווח על באג';

  @override
  String get feedbackTypeBugHint => 'משהו לא עובד';

  @override
  String get feedbackTypeSuggestion => 'הצעה';

  @override
  String get feedbackTypeSuggestionHint => 'רעיון לשיפור האפליקציה';

  @override
  String get feedbackTypeTranslation => 'בעיית תרגום';

  @override
  String get feedbackTypeTranslationHint => 'תרגום לא נכון או לא טבעי';

  @override
  String get feedbackTypeFeature => 'בקשת תכונה';

  @override
  String get feedbackTypeFeatureHint => 'תכונה שהיית רוצה לראות';

  @override
  String get feedbackTypeOther => 'אחר';

  @override
  String get feedbackTypeOtherHint => 'סוג משוב אחר';

  @override
  String get feedbackHint => 'תאר את המשוב שלך בפירוט...';

  @override
  String get feedbackSend => 'שלח משוב';

  @override
  String get feedbackSending => 'שולח...';

  @override
  String get feedbackThankYou => 'תודה!';

  @override
  String get feedbackThankYouMessage =>
      'המשוב שלך התקבל ועוזר לנו לשפר את KipiList עבור כולם.';

  @override
  String get feedbackBack => 'חזור';

  @override
  String feedbackError(String error) {
    return 'שגיאה בשליחה: $error';
  }

  @override
  String get feedbackRetry => 'נסה שוב';

  @override
  String get feedbackSettingsTitle => 'שלח משוב';

  @override
  String get feedbackSettingsSubtitle =>
      'דווח על באגים, הצע שיפורים או תקן תרגומים';

  @override
  String get aiEnergy => 'AI Energy';

  @override
  String get searchInConversation => 'חפש בשיחה...';

  @override
  String get noMessagesFound => 'לא נמצאו הודעות';

  @override
  String get suggestedQuestions => 'שאלות מוצעות:';

  @override
  String get shoppingAssistant => 'עוזר קניות';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased מתוך $total נרכש';
  }

  @override
  String get estimatedCost => 'מְשׁוֹעָר';

  @override
  String get viewItems => 'הצג פריטים';

  @override
  String get noItemsInList => 'אין פריטים ברשימה';

  @override
  String get longHistoryWarning =>
      'היסטוריה ארוכה: העוזר מתמקד בהודעות האחרונות לביצועים טובים יותר.';

  @override
  String get listening => 'הַקשָׁבָה...';

  @override
  String get addDirectToList => 'הוסף ישירות לרשימה';

  @override
  String get unlockFullResponse => 'בטל נעילת תגובה מלאה';

  @override
  String get switchList => 'החלף רשימה';

  @override
  String get marketMode => 'מצב שוק';

  @override
  String get backToChat => 'חזרה לצ\'אט';

  @override
  String get finishShopping => 'סיים את הקניות';

  @override
  String get welcomeAiAssistant => 'ברוכים הבאים ל-AI Assistant';

  @override
  String get createListToStartAi =>
      'צור רשימת קניות כדי להתחיל להשתמש בצ\'אט החכם.';

  @override
  String get howCanIHelp => 'איך אני יכול לעזור?';

  @override
  String get chatSubtitleShort => 'שאל על מחירים, מתכונים, ארגון...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total נרכש';
  }

  @override
  String get quickReplies => 'תשובות מהירות:';

  @override
  String get voiceProFeature =>
      'פקודות קוליות מתקדמות הן Pro. הפעלת הכתבה בסיסית...';

  @override
  String get viewPro => 'View Pro';

  @override
  String get errorLoadingChat => 'אופס! משהו השתבש בטעינת הצ\'אט.';

  @override
  String get errorLoadingChatSubtitle =>
      'בדוק את החיבור שלך או נסה שוב מאוחר יותר.';

  @override
  String get errorOscillation =>
      'זה עלול להתרחש עקב תנודות רשת או חוסר זמינות זמנית. אנא נסה שוב.';

  @override
  String get activeListening => 'הקשבה פעילה';

  @override
  String get whatToDoWithItem => 'מה תרצה לעשות עם הפריט הזה?';

  @override
  String get viewDetails => 'הצג פרטים';

  @override
  String get openMenu => 'פתח תפריט';

  @override
  String get viewRecipe => 'הצג מתכון';

  @override
  String get recipeCreated => 'המתכון נוצר!';

  @override
  String get editRecipe => 'עריכה';

  @override
  String get deleteRecipe => 'מחיקה';

  @override
  String get deleteRecipeConfirm => 'למחוק את המתכון הזה?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'האם אתה בטוח שברצונך למחוק את \"$recipeName\"? לא ניתן לבטל פעולה זו.';
  }

  @override
  String get ingredients => 'רכיבים';

  @override
  String get instructions => 'הוראות';

  @override
  String get prepTime => 'זמן הכנה';

  @override
  String get recipeSaved => 'המתכון נשמר!';

  @override
  String get noRecipesSaved => 'אין מתכונים שמורים';

  @override
  String get noRecipesSavedHint =>
      'צור את המתכון המותאם הראשון שלך על ידי לחיצה על הכפתור למטה.';

  @override
  String get myRecipes => 'המתכונים שלי';

  @override
  String get newRecipe => 'מתכון חדש';

  @override
  String get loadingRecipes => 'טוען את המתכונים שלך...';

  @override
  String get errorLoadingRecipes => 'שגיאה בטעינת המתכונים';

  @override
  String get addIngredient => 'הוסף רכיב';

  @override
  String get saveRecipe => 'שמירה';

  @override
  String get recipeName => 'שם המתכון';

  @override
  String get shortDescription => 'תיאור קצר';

  @override
  String get prepTimeMinutes => 'זמן הכנה (דקות)';

  @override
  String get instructionsHint => 'הקלד שלב אחד בכל שורה...';

  @override
  String get addPhoto => 'הוסף תמונה';

  @override
  String get imageUrlPlaceholder => 'או הדבק URL של תמונה';

  @override
  String get tags => 'תגיות';

  @override
  String get recipeTags => 'תגיות מתכון';

  @override
  String get suggestedTags => 'מוצעות';

  @override
  String get searchRecipes => 'חפש מתכונים...';

  @override
  String get filterByTag => 'סינון לפי תגית';

  @override
  String get allTags => 'הכל';

  @override
  String get recipeDeleted => 'המתכון נמחק';

  @override
  String get saveChanges => 'שמור שינויים';

  @override
  String get editRecipeTitle => 'עריכת מתכון';

  @override
  String get newRecipeTitle => 'מתכון חדש';

  @override
  String get requiredField => 'חובה';

  @override
  String get chooseImageSource => 'בחר מקור תמונה';

  @override
  String get gallery => 'גלריה';

  @override
  String get enterUrl => 'הזן URL';

  @override
  String get recipeImage => 'תמונת מתכון';

  @override
  String get removeImage => 'הסר תמונה';

  @override
  String get mealPlannerTitle => 'תוכנית ארוחות';

  @override
  String get mealPlannerViewMonthly => 'תצוגה חודשית';

  @override
  String get mealPlannerViewWeekly => 'תצוגה שבועית';

  @override
  String get mealPlannerNoMeals => 'אין ארוחות מתוכננות';

  @override
  String get mealPlannerNoMealsHint => 'לחץ על יום כדי הוסף ארוחה';

  @override
  String get mealPlannerLoading => 'טוען תוכנית ארוחות...';

  @override
  String get mealPlannerError => 'שגיאה בטעינת תוכנית הארוחות';

  @override
  String get mealPlannerAddMeal => 'הוסף ארוחה';

  @override
  String get mealPlannerEditMeal => 'ערוך ארוחה';

  @override
  String get mealPlannerDeleteMeal => 'הסר ארוחה';

  @override
  String get mealPlannerMealDeleted => 'הארוחה הוסרה';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count מנות',
      one: 'מנה אחת',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'מנות';

  @override
  String get mealPlannerNoteLabel => 'הערה (אופציונלי)';

  @override
  String get mealPlannerSelectRecipe => 'בחר מתכון';

  @override
  String get mealPlannerSearchRecipes => 'חפש מתכונים...';

  @override
  String get mealPlannerNoRecipesFound => 'לא נמצאו מתכונים';

  @override
  String get mealPlannerNoRecipesHint => 'צור קודם מתכונים בלשונית המתכונים';

  @override
  String get mealPlannerSave => 'הוסף לתוכנית';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count מתוך $total ארוחות מתוכננות';
  }

  @override
  String get mealPlannerGenerateList => 'צור רשימת קניות';

  @override
  String get mealPlannerGenerateListConfirm =>
      'להוסיף את כל הרכיבים מהארוחות המתוכננות השבוע לרשימת הקניות שלך?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'נוספו $count רכיבים לרשימה שלך!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'אין רכיבים להוספה. תכנן תחילה ארוחות עם מתכונים.';

  @override
  String get mealPlannerGenerateListNoList => 'צור קודם רשימת קניות.';

  @override
  String get mealPlannerMealTypeBreakfast => 'ארוחת בוקר';

  @override
  String get mealPlannerMealTypeLunch => 'ארוחת צהריים';

  @override
  String get mealPlannerMealTypeDinner => 'ארוחת ערב';

  @override
  String get mealPlannerMealTypeSnack => 'נשנוש';

  @override
  String get mealPlannerDateLabel => 'תאריך';

  @override
  String get mealPlannerWeekEmpty => 'שום דבר לא מתוכנן לשבוע זה';

  @override
  String get mealPlannerWeekEmptyHint =>
      'לחץ על כל יום כדי להתחיל לתכנן את הארוחות שלך!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes דקות';
  }

  @override
  String get inviteToList => 'הזמינו לרשימה';

  @override
  String get shareApp => 'שתף אפליקציה';

  @override
  String get shareAppDescription => 'הזמן חברים להשתמש ב- KipiList';

  @override
  String shareReferralText(String url) {
    return 'אני משתמש ב- KipiList כדי לארגן את הקניות שלי! הורד דרך הקישור שלי ושנינו מקבלים 7 ימים של פרימיום בחינם: $url';
  }

  @override
  String get shareReferralSubject => 'קבלו 7 ימים של KipiList Premium!';

  @override
  String get gestureHint => 'החזק כדי לבחור • החלק להסרה';

  @override
  String get catalogTitle => 'קָטָלוֹג';

  @override
  String get catalogMyFrequents => 'התדירות שלי';

  @override
  String get catalogSearchGlobal => 'חפש בכל מוצר...';

  @override
  String catalogSearchInCategory(String category) {
    return 'חפש ב$category...';
  }

  @override
  String get catalogSortPopular => 'הכי פופולרי';

  @override
  String get catalogSortAZ => 'א–ז';

  @override
  String get catalogFilterNational => 'אזרחים';

  @override
  String get catalogRareSection => 'פחות נפוץ במדינה שלך';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'הוסף $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'המוצר לא נמצא, הקלד את השם';

  @override
  String get catalogBrowse => 'עיין בקטלוג';

  @override
  String get offlineBanner => 'אתה במצב לא מקוון';

  @override
  String get consentTitle => 'פרטיות וניתוח';

  @override
  String get consentBody =>
      'KipiList משתמש ב-Firebase Analytics כדי לשפר את החוויה שלך. הנתונים שלך מעובדים בהתאם למדיניות הפרטיות שלנו.';

  @override
  String get consentAccept => 'לְקַבֵּל';

  @override
  String get consentDecline => 'לא, תודה';

  @override
  String get mealPlannerPantryAllAvailable => 'בִּמלַאִי';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count פריטים חסרים',
      one: '$count פריט חסר',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'תַאֲרִיך תְפוּגָה';

  @override
  String get notInformed => 'לא מודיעים';

  @override
  String get skip => 'לְדַלֵג';

  @override
  String get onboardingAiTitle => 'צ\'אט עם Kipi';

  @override
  String get onboardingAiGreeting => 'היי! אני קיפי, עוזר הקניות האישי שלך! 🛒';

  @override
  String get onboardingAiAskName => 'איך קוראים לך?';

  @override
  String get onboardingAiNameHint => 'הקלד את שמך...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'נעים להכיר, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'מה המאכל האהוב עליך?';

  @override
  String get onboardingAiFoodHint => 'לְמָשָׁל פיצה, סושי...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'בחירות נהדרות! הנה מה שהייתי מוסיף לרשימה שלך:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm => 'זה נראה טוב? נסה להקליד משהו אחר!';

  @override
  String get onboardingAiReady =>
      'גָדוֹל! אתה מוכן להתחיל. בואו להגדיר את החשבון שלך!';

  @override
  String get onboardingAiContinue => 'המשך →';

  @override
  String get connectionError => 'שגיאת חיבור';

  @override
  String connectionErrorDesc(String error) {
    return 'שגיאה: $error';
  }

  @override
  String get errorLoadingLists => 'שגיאה בטעינת רשימות';

  @override
  String get noListsFound => 'לא נמצאו רשימות';

  @override
  String get backToToday => 'בחזרה להיום';

  @override
  String get quickSuggestions => 'הצעות מהירות';

  @override
  String get aiEnergyLow => 'אנרגיית AI נמוכה';

  @override
  String get aiUnlockUnlimited => 'פתח AI ללא הגבלה';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 היום';
  }

  @override
  String get aiSubscribeUnlimited => 'הירשם ל-AI ללא הגבלה';

  @override
  String get unlockWithAd => 'בטל את הנעילה באמצעות מודעה';

  @override
  String get conversationHistoryTitle => 'היסטוריית שיחות';

  @override
  String get noConversationsFound => 'לא נמצאו שיחות';

  @override
  String get errorLoadingHistory => 'שגיאה בטעינת ההיסטוריה';

  @override
  String get deleteConversationTitle => 'מחק את השיחה';

  @override
  String get deleteConversationConfirm => 'לא ניתן לבטל פעולה זו.';

  @override
  String get deleteConversation => 'לִמְחוֹק';

  @override
  String get subscription => 'מִנוּי';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle => 'פתח את הנעילה של פרימיום';

  @override
  String get loadingSubscription => 'טוען מנוי...';

  @override
  String get errorLoadingSubscription => 'שגיאה בטעינת המנוי';

  @override
  String get profileSection => 'פּרוֹפִיל';

  @override
  String get myProfile => 'הפרופיל שלי';

  @override
  String get profileSubtitle => 'פרטי הפרופיל שלך';

  @override
  String get customizeAiAssistant => 'התאמה אישית של עוזר AI';

  @override
  String get assistantHistory => 'היסטוריית Assistant';

  @override
  String get assistantHistorySubtitle => 'הצג את היסטוריית השיחות שלך';

  @override
  String get manageCategories => 'נהל קטגוריות';

  @override
  String get manageCategoriesSubtitle => 'הוסף, ערוך או הסר קטגוריות';

  @override
  String get customizeAssistant => 'התאמה אישית';

  @override
  String get assistantName => 'שם עוזר';

  @override
  String get chooseIcon => 'בחר סמל';

  @override
  String get profileSaved => 'הפרופיל נשמר';

  @override
  String get errorSavingProfile => 'שגיאה בשמירת הפרופיל';

  @override
  String get userProfile => 'פרופיל משתמש';

  @override
  String get profileDescription => 'תיאור הפרופיל';

  @override
  String get preferredMarket => 'שוק מועדף';

  @override
  String get preferredMarketHint => 'איפה אתה עושה קניות בדרך כלל?';

  @override
  String get dietaryRestrictions => 'הגבלות תזונתיות';

  @override
  String get dietaryRestrictionsHint => 'יש הגבלות תזונתיות?';

  @override
  String get marketsToAvoid => 'שווקים שכדאי להימנע מהם';

  @override
  String get marketsToAvoidHint => 'שווקים שאתה מעדיף לא לקנות בהם';

  @override
  String get observations => 'תצפיות';

  @override
  String get observationsHint => 'יש הערות נוספות?';

  @override
  String get saveProfile => 'שמור פרופיל';

  @override
  String get everythingReady => 'הכל מוכן!';

  @override
  String get youCompletedList => 'השלמת את הרשימה!';

  @override
  String get selectCheaperAlternative => 'בחר חלופה זולה יותר';

  @override
  String get suggestedItems => 'פריטים מוצעים';

  @override
  String get swapped => 'הוחלף';

  @override
  String get swap => 'לְהַחלִיף';

  @override
  String get chooseThemeColor => 'בחר צבע נושא';

  @override
  String get manageCategoriesTitle => 'נהל קטגוריות';

  @override
  String get categoryLimitReached => 'הגעת למגבלת הקטגוריה';

  @override
  String get deleteCategoryTitle => 'מחק קטגוריה';

  @override
  String deleteCategoryConfirm(String category) {
    return 'פריטים ב-\"$category\" יועברו ל-\"אחרים\".\nלְהַמשִׁיך?';
  }

  @override
  String get deleteCategory => 'לִמְחוֹק';

  @override
  String get newCategoryDialog => 'קטגוריה חדשה';

  @override
  String get editCategoryDialog => 'ערוך קטגוריה';

  @override
  String get categoryName => 'שם הקטגוריה';

  @override
  String get categoryNameHint => 'הזן את שם הקטגוריה';

  @override
  String get categoryColorLabel => 'צֶבַע';

  @override
  String get categoryIconLabel => 'סמל';

  @override
  String itemAddedSnack(String name) {
    return '$name נוסף';
  }

  @override
  String get kipiQuickBarHint => 'מה צריך לקנות?';

  @override
  String replaceItem(String item) {
    return 'החלף $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit — $price';
  }

  @override
  String get onboardingHookHeadline => 'לעולם אל תשכח שוב פריט מכולת';

  @override
  String get onboardingGoalSaveMoney => 'חסוך כסף';

  @override
  String get onboardingGoalNeverForget => 'לעולם אל תשכח פריטים';

  @override
  String get onboardingGoalFaster => 'קנה מהר יותר';

  @override
  String get onboardingGoalFamily => 'ארגן קניות משפחתיות';

  @override
  String get onboardingGoalRecipes => 'גלה מתכונים';

  @override
  String get onboardingGoalPantry => 'מזווה מסלול';

  @override
  String get onboardingCommitmentsTitle => 'מה חשוב לך?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'בחר את היעדים שלך כדי להתאים אישית את KipiList';

  @override
  String get onboardingCommitmentsCta => 'בוא נלך!';

  @override
  String get onboardingPersonalizationNameLabel => 'השם שלך';

  @override
  String get onboardingPersonalizationNameHint => 'הזן את שמך';

  @override
  String get onboardingPersonalizationCategoryTitle => 'בשביל מה אתה קונה?';

  @override
  String get onboardingPersonalizationGroupTitle => 'למי אתה קונה?';

  @override
  String get onboardingCategoryGrocery => 'מִצרַכֵי מָזוֹן';

  @override
  String get onboardingCategoryPharmacy => 'בֵּית מִרקַחַת';

  @override
  String get onboardingCategoryRecipes => 'מתכונים';

  @override
  String get onboardingCategoryHome => 'בַּיִת';

  @override
  String get onboardingCategoryPet => 'לְלַטֵף';

  @override
  String get onboardingGroupSolo => 'רק אני';

  @override
  String get onboardingGroupCouple => 'זוּג';

  @override
  String get onboardingGroupFamily => 'מִשׁפָּחָה';

  @override
  String get onboardingLoadingTitle => 'מכין את החוויה שלך...';

  @override
  String get onboardingLoadingStep1 => 'מנתח את ההעדפות שלך...';

  @override
  String get onboardingLoadingStep2 => 'מגדיר עוזר AI...';

  @override
  String get onboardingLoadingStep3 => 'כמעט מוכן...';

  @override
  String get onboardingLoadingStat1Label => 'פריטים מקוטלגים';

  @override
  String get onboardingLoadingStat2Label => 'משתמשים עזרו';

  @override
  String get onboardingLoadingStat3Label => 'דקות נשמר';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, חסוך בכל נסיעה!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, לעולם אל תשכח פריט!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, קנה בחצי מהזמן!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, ארגן קניות משפחתיות!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, גלה מתכונים חדשים!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, עקוב אחר המזווה שלך בצורה מושלמת!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'חסוך בכל נסיעה!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => 'לעולם אל תשכח פריט!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'קנה בחצי מהזמן!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'ארגן קניות משפחתיות!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'גלה מתכונים חדשים!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'עקוב בצורה מושלמת אחר המזווה שלך!';

  @override
  String paywallPricePerDay(String price) {
    return 'רק $price ליום - פחות מקפה';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'דלג לעת עתה';

  @override
  String get paywallTestimonial =>
      'AI מארגן את הקניות שלי בשניות. אני חוסך 20 דקות לנסיעה.';

  @override
  String get paywallTestimonialAuthor => 'אן ס.';

  @override
  String get paywallTrialDisclaimer =>
      'בטל בכל עת · ללא תשלום עד לסיום תקופת הניסיון שלך';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'היי $name! איזה $category אתה צריך?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'איזה $category אתה צריך?';
  }

  @override
  String get onboardingAiDemoYes => 'כֵּן!';

  @override
  String get onboardingAiDemoReaction => 'נֶחְמָד!';

  @override
  String get onboardingAiDemoChange => 'שנה פריט';

  @override
  String get onboardingAiDemoOffer => 'נסה להקליד משהו אחר!';

  @override
  String get onboardingAiDemoContinue => 'לְהַמשִׁיך';

  @override
  String get onboardingAiDemoSlideHeadline => 'רשימת הקניות שלך, עכשיו עם AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'ראה כיצד Kipi בונה את הרשימה המלאה שלך בשניות';

  @override
  String get onboardingAiDemoSlideCta => 'אני רוצה את זה! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'אני מארחת ברביקיו 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'מוּכָן! הנה כל מה שאתה צריך:';

  @override
  String get onboardingAiDemoSlideDone => 'רשימה מלאה תוך שניות ✨';

  @override
  String get onboardingPainTitle => 'מה הכי מתסכל אותך?';

  @override
  String get onboardingPainSubtitle => 'תהיה כנה - אנחנו נתקן כל אחד';

  @override
  String get onboardingPainCta => 'כן, תקן לי את זה →';

  @override
  String get onboardingPainForget => 'אני שוכח פריטים בחנות';

  @override
  String get onboardingPainFamily => 'המשפחה שלי אף פעם לא רואה את הרשימה';

  @override
  String get onboardingPainOverspend => 'אני תמיד חורג מהתקציב';

  @override
  String get onboardingPainRepeat => 'טיול אחד אף פעם לא מספיק';
}

/// The translations for Hebrew, as used in Israel (`he_IL`).
class AppLocalizationsHeIl extends AppLocalizationsHe {
  AppLocalizationsHeIl() : super('he_IL');

  @override
  String get appTitle => 'רשימת קניות';

  @override
  String get lists => 'רשימות';

  @override
  String get pantry => 'מזווה';

  @override
  String get navChat => 'לְשׂוֹחֵחַ';

  @override
  String get navRecipes => 'מתכונים';

  @override
  String get navLists => 'רשימות';

  @override
  String get navMealPlanner => 'תַפרִיט';

  @override
  String get cancel => 'ביטול';

  @override
  String get save => 'שמירה';

  @override
  String get create => 'יצירה';

  @override
  String get add => 'הוספה';

  @override
  String get remove => 'הסרה';

  @override
  String get delete => 'מחיקה';

  @override
  String get edit => 'עריכה';

  @override
  String get copy => 'העתקה';

  @override
  String get next => 'הַבָּא';

  @override
  String get retry => 'ניסיון חוזר';

  @override
  String get regenerate => 'יצירה מחדש';

  @override
  String get copiedToClipboard => 'הועתק ללוח';

  @override
  String get confirm => 'אישור';

  @override
  String get close => 'סגירה';

  @override
  String get import => 'ייבוא';

  @override
  String get rename => 'שינוי שם';

  @override
  String get upgrade => 'שדרוג';

  @override
  String get clear => 'ניקוי';

  @override
  String error(String message) {
    return 'שגיאה: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'שגיאה: $message';
  }

  @override
  String get purchaseError => 'שגיאה בעיבוד הרכישה. נסה שוב.';

  @override
  String get restoreError => 'שגיאה בשחזור רכישות. נסה שוב.';

  @override
  String get loading => 'טוען...';

  @override
  String get fieldRequired => 'שדה חובה';

  @override
  String get addedFeedback => 'נוסף!';

  @override
  String get profile => 'פּרוֹפִיל';

  @override
  String get exitShoppingMode => 'צא ממצב קניות';

  @override
  String get exit => 'יְצִיאָה';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'נבחרו $count',
      many: 'נבחרו $count',
      two: 'נבחרו $count',
      one: 'other $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'מוערך';

  @override
  String get alreadyPurchased => 'כבר נרכש';

  @override
  String get clearList => 'נקה רשימה';

  @override
  String get clearPurchased => 'נקה נרכשים';

  @override
  String get share => 'שיתוף';

  @override
  String get shareViaCode => 'שיתוף באמצעות קוד';

  @override
  String get importViaCode => 'ייבוא באמצעות קוד';

  @override
  String get listAssistant => 'עוזר רשימה';

  @override
  String get globalAssistant => 'עוזר כללי';

  @override
  String get becomePremium => 'היה Premium';

  @override
  String get manageSubscription => 'ניהול מינוי';

  @override
  String get completePurchase => 'השלם רכישה';

  @override
  String get confirmClearList => 'להסיר את כל הפריטים?';

  @override
  String get shareListTitle => 'שיתוף רשימה';

  @override
  String get shareThisCode => 'שתף קוד זה:';

  @override
  String get validForLimitedTime => 'תקף לזמן מוגבל';

  @override
  String get importListTitle => 'ייבוא רשימה';

  @override
  String get enterCodeHint => 'הכנס את הקוד';

  @override
  String get confirmArchiveTitle => 'השלם רכישה';

  @override
  String get confirmArchiveContent => 'להשלים רכישה זו ולארכב את הרשימה?';

  @override
  String get complete => 'השלם';

  @override
  String get listArchived => 'הרשימה אורכבה בהצלחה!';

  @override
  String listAdded(String listName) {
    return '$listName נוסף!';
  }

  @override
  String get buy => 'קנה';

  @override
  String get unmark => 'הסר סימון';

  @override
  String confirmDeleteItems(int count) {
    return 'להסיר $count פריט(ים)?';
  }

  @override
  String get confirmDeleteTitle => 'אישור';

  @override
  String confirmContent(int count) {
    return 'להסיר $count פריט(ים)?';
  }

  @override
  String get archiveList => 'ארכוב רשימה';

  @override
  String get pantryAppBar => 'מזווה';

  @override
  String get generateShoppingList => 'צור רשימת קניות';

  @override
  String get pantryEmpty => 'מזווה ריק';

  @override
  String get pantryEmptySubtitle => 'הוסף מוצרים שאתה רוצה להחזיק בבית';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit פריט(ים) צריך/צריכים להירכש';
  }

  @override
  String get noItemsToBuy => 'אין פריטים שצריך לקנות';

  @override
  String get newPantryList => 'קניית מזווה';

  @override
  String get newListTitle => 'רשימת קניות חדשה';

  @override
  String itemsWillBeAdded(int count) {
    return '$count פריט(ים) יתווספו';
  }

  @override
  String get listNameLabel => 'שם הרשימה';

  @override
  String listCreated(String name, int count) {
    return 'הרשימה \"$name\" נוצרה עם $count פריטים';
  }

  @override
  String get noTracking => 'ללא מעקב';

  @override
  String get markAsPurchased => 'סמן כנרכש';

  @override
  String editPantryItem(String name) {
    return 'ערוך $name';
  }

  @override
  String get idealQuantity => 'כמות אידיאלית';

  @override
  String get currentQuantity => 'כמות נוכחית';

  @override
  String get consumed => 'נצרך';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name חודש ל-$quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'להסיר את \"$name\" מהמזווה?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'ערוך $name';
  }

  @override
  String get settingsAppBar => 'הגדרות';

  @override
  String get language => 'שפה';

  @override
  String get languagePortuguese => 'Português (ברזיל)';

  @override
  String get languageEnglish => 'אַנגְלִית';

  @override
  String get languageSystem => 'ברירת מחדל של המערכת';

  @override
  String get chooseLanguage => 'בחר שפה';

  @override
  String get searchLanguage => 'חפש שפה...';

  @override
  String get currency => 'מַטְבֵּעַ';

  @override
  String get chooseCurrency => 'בחר מטבע';

  @override
  String get searchCurrency => 'חפש מטבע...';

  @override
  String get appearance => 'מראה';

  @override
  String get light => 'בהיר';

  @override
  String get system => 'מערכת';

  @override
  String get dark => 'כהה';

  @override
  String get themeColor => 'צבע נושא';

  @override
  String get dynamicColors => 'צבעים דינמיים';

  @override
  String get dynamicColorsSubtitle => 'השתמש בצבעים המבוססים על הטפט שלך';

  @override
  String get dynamicColorsEnabledWarning =>
      'השבת צבעים דינמיים כדי שצבע הנושא ייכנס לתוקף';

  @override
  String get finance => 'כספים';

  @override
  String get monthlyBudgetNav => 'תקציב חודשי';

  @override
  String get budgetSubtitle => 'עקוב אחר ההוצאות החודשיות שלך';

  @override
  String get data => 'נתונים';

  @override
  String get backupNav => 'גיבוי';

  @override
  String get backupSubtitle => 'ייצא או ייבא את הנתונים שלך';

  @override
  String get about => 'אודות';

  @override
  String get version => 'גרסה';

  @override
  String get privacy => 'פרטיות';

  @override
  String get termsOfUse => 'תנאי שימוש';

  @override
  String get backupTitle => 'גיבוי';

  @override
  String get backupPremiumDescription => 'גיבוי וייצוא הם תכונת Premium';

  @override
  String get exportData => 'ייצא נתונים';

  @override
  String get exportDataSubtitle => 'שמור את כל הרשימות כ-JSON';

  @override
  String get importData => 'ייבא נתונים';

  @override
  String get importDataSubtitle => 'שחזר רשימות מ-JSON';

  @override
  String get importJsonTitle => 'ייבא JSON';

  @override
  String get importJsonHint => 'הדבק את JSON הגיבוי כאן...';

  @override
  String get backupExported => 'הגיבוי יוצא!';

  @override
  String get budgetAppBar => 'תקציב חודשי';

  @override
  String get budgetPremiumLocked => 'תקציב חודשי גלובלי הוא Premium';

  @override
  String get budgetUpgradePrompt => 'שדרג כדי לפתוח';

  @override
  String get noBudgetDefined => 'לא הוגדר תקציב';

  @override
  String totalEstimated(String amount) {
    return 'סה\"כ מוערך: $amount';
  }

  @override
  String get setBudgetButton => 'הגדר תקציב';

  @override
  String get budgetLists => 'רשימות';

  @override
  String get budgetValueLabel => 'סכום';

  @override
  String get setBudgetTitle => 'תקציב חודשי';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'הכל';

  @override
  String get filterPending => 'ממתין';

  @override
  String get filterPurchased => 'נרכש';

  @override
  String get sortName => 'שם';

  @override
  String get sortCategory => 'קטגוריה';

  @override
  String get sortDate => 'תאריך';

  @override
  String get sortManual => 'ידני';

  @override
  String get addItem => 'הוסף פריט';

  @override
  String get itemName => 'שם הפריט';

  @override
  String get quantityShort => 'כמות';

  @override
  String get unit => 'יחידה';

  @override
  String get category => 'קטגוריה';

  @override
  String get estimatedPrice => 'מחיר משוער';

  @override
  String get addItemPrice => 'מחיר משוער';

  @override
  String get editItem => 'ערוך פריט';

  @override
  String get quantityFull => 'כמות';

  @override
  String get editItemPrice => 'מחיר משוער';

  @override
  String get addToPantry => 'הוסף למזווה';

  @override
  String addToPantryPrompt(String name) {
    return 'להוסיף את \"$name\" למזווה שלך?';
  }

  @override
  String get yes => 'כן';

  @override
  String get productName => 'שם המוצר';

  @override
  String get idealQty => 'כמות אידיאלית';

  @override
  String get currentQty => 'כמות נוכחית';

  @override
  String get trackStock => 'מעקב מלאי';

  @override
  String get trackStockActive => 'מופיע בהצעות קנייה';

  @override
  String get trackStockInactive => 'לא יוצר הצעת קנייה';

  @override
  String get createListDialog => 'צור רשימה';

  @override
  String get renameListDialog => 'שנה שם רשימה';

  @override
  String get listHistory => 'היסטוריית רשימות';

  @override
  String get myLists => 'הרשימות שלי';

  @override
  String get viewActive => 'צפה בפעילות';

  @override
  String get viewHistory => 'צפה בהיסטוריה';

  @override
  String get noArchivedLists => 'אין רשימות בארכיון';

  @override
  String get noActiveLists => 'אין רשימות פעילות';

  @override
  String completedOn(String date) {
    return 'הושלם בתאריך $date';
  }

  @override
  String get sharedLabel => 'משותף';

  @override
  String get restore => 'שחזר';

  @override
  String get removeSharedTooltip => 'הסר';

  @override
  String get deleteListTitle => 'מחק רשימה';

  @override
  String deleteListContent(String name) {
    return 'האם אתה בטוח שברצונך למחוק את \"$name\"? כל הפריטים יוסרו.';
  }

  @override
  String get removeSharedListTitle => 'הסר רשימה משותפת';

  @override
  String removeSharedListContent(String name) {
    return 'להסיר את \"$name\" מהרשימות שלך? הרשימה המקורית לא תושפע.';
  }

  @override
  String get createNewList => 'צור רשימה חדשה';

  @override
  String get aiAssistant => 'עוזר AI';

  @override
  String get aiAssistantDescription =>
      'קבל הצעות חכמות, מתכונים וטיפים מותאמים אישית עם עוזר ה-AI שלנו.';

  @override
  String get generalAssistant => 'עוזר כללי';

  @override
  String get newChat => 'צ\'אט חדש';

  @override
  String get noHistory => 'אין היסטוריית צ\'אט';

  @override
  String get deleteSession => 'מחק את הצ\'אט';

  @override
  String get deleteSessionConfirm =>
      'האם אתה בטוח שברצונך למחוק את הצ\'אט הזה? ההודעות יאבדו לצמיתות.';

  @override
  String get clearHistory => 'נקה היסטוריה';

  @override
  String get clearHistoryConfirm => 'למחוק את כל ההודעות בפגישה זו?';

  @override
  String get chatHint => 'הקלד את ההודעה שלך...';

  @override
  String get chatHintBlocked => 'פתח את הנעילה של AI כדי לשוחח';

  @override
  String chatError(String error) {
    return 'שגיאה בטעינת הצ\'אט: $error';
  }

  @override
  String get listHelp => 'איך אני יכול לעזור עם הרשימה שלך?';

  @override
  String get generalHelp => 'איך אני יכול לעזור עם הקניות שלך היום?';

  @override
  String get chatSubtitle => 'בקש הצעות לפריטים, מתכונים או טיפים לחיסכון.';

  @override
  String get aiError =>
      'מצטערים, אירעה שגיאה בעיבוד הבקשה שלך. בדוק את החיבור או נסה שוב מאוחר יותר.';

  @override
  String get aiLimitAlmostReached => 'כמעט נגמרו הודעות הבינה המלאכותית';

  @override
  String get unlockAi => 'פתח AI ללא הגבלה';

  @override
  String get aiTeaserFallback =>
      'הירשם ל-Premium כדי לפתוח את התגובה המלאה ולקבל טיפים בלתי מוגבלים בינה מלאכותית לקניות שלך...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining נותרו פעולות בינה מלאכותית החודש - שדרוג ללא הגבלה';
  }

  @override
  String get aiUsageExhausted =>
      'הגעת למגבלת AI חודשית. שדרג ל-Pro ללא הגבלה →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'התחבר כדי לפתוח תכונות Premium';

  @override
  String get signInGoogle => 'התחבר עם Google';

  @override
  String get signInApple => 'התחבר עם Apple';

  @override
  String get continueAsGuest => 'המשך כאורח';

  @override
  String get onboardingWelcomeTitle => 'ברוכים הבאים ל- KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'הדרך החכמה ביותר לארגן את הקניות ולחסוך כסף.';

  @override
  String get onboardingSetupTitle => 'התאם אישית את החוויה שלך';

  @override
  String get onboardingSetupDesc =>
      'בחר כיצד אתה רוצה ש-KipiList ייראה ויעבוד עבורך.';

  @override
  String get onboardingLoginTitle => 'שמור הכל בענן';

  @override
  String get onboardingLoginDesc => 'הנתונים שלך מסונכרנים בכל המכשירים שלך';

  @override
  String get onboardingShareTitle => 'שתף עם אלה שאתה אוהב';

  @override
  String get onboardingShareDesc => 'סנכרן רשימות עם משפחה וחברים בזמן אמת';

  @override
  String get onboardingPremiumTitle => 'בטל את הנעילה של כל התכונות';

  @override
  String get onboardingPremiumSubtitle => 'הפק את המרב מרשימות הקניות שלך';

  @override
  String get onboardingAnnualBadge => 'התמורה הטובה ביותר';

  @override
  String get onboardingMonthlyLabel => 'יַרחוֹן';

  @override
  String get onboardingAnnualLabel => 'שְׁנָתִי';

  @override
  String get onboardingViewAllPlans => 'הצג את כל התוכניות';

  @override
  String get onboardingSubscribeCta => 'הירשם';

  @override
  String get onboardingCancelAnytime => 'בטל בכל עת. אין התחייבות.';

  @override
  String get onboardingContinueAsGuest => 'המשך כאורח';

  @override
  String get onboardingRestore => 'לְשַׁחְזֵר';

  @override
  String get onboardingRestoreDesc => 'יש לך כבר מנוי? הקש כאן כדי לשחזר אותו.';

  @override
  String get onboardingMaybeLater => 'אולי מאוחר יותר';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'היי $name, ארגן את הקניות שלך בצורה הנכונה.';
  }

  @override
  String get onboardingSlide1Title => 'רשימות קניות חכמות';

  @override
  String get onboardingSlide1Body =>
      'צור ושתף רשימות באופן מיידי. Kipi מוסיף פריטים באופן אוטומטי על סמך ההרגלים שלך.';

  @override
  String get onboardingSlide2Title => 'הכירו את קיפי';

  @override
  String get onboardingSlide2Body =>
      'שאל כל דבר - צור רשימות, מצא מתכונים, עקוב אחר המזווה שלך, תכנן את השבוע שלך.';

  @override
  String get onboardingSlide3Title => 'מזווה ותכנון ארוחות';

  @override
  String get onboardingSlide3Body =>
      'עקוב אחר מה שיש לך, תכנן ארוחות והפק רשימות קניות באופן אוטומטי.';

  @override
  String get onboardingExit => 'יְצִיאָה';

  @override
  String get onboardingPersonalizationTitle => 'בוא נכיר אותך';

  @override
  String get onboardingPersonalizationDesc =>
      'נשתמש בזה כדי להתאים אישית את ההצעות שלך ולהפוך את הקניות לחכמה יותר.';

  @override
  String get onboardingPersonalizationFoodLabel => 'מה המאכל האהוב עליך?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'לְמָשָׁל פיצה, סושי, לזניה...';

  @override
  String get onboardingPersonalizationCta => 'לְהַמשִׁיך';

  @override
  String get onboardingPersonalizationSkip => 'דלג לעת עתה';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'ספר לנו על האוכל האהוב עליך כדי להמשיך';

  @override
  String get settingsDefaultScreen => 'מסך הבית המוגדר כברירת מחדל';

  @override
  String get settingsDefaultScreenSubtitle =>
      'בחר בין רשימת קניות או צ\'אט בינה מלאכותית';

  @override
  String get settingsScreenList => 'רשימת קניות';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'שגיאת התחברות: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError => 'שגיאה בטעינת הצעות. נסה שוב.';

  @override
  String get paywallPurchaseError => 'לא ניתן היה להשלים את הרכישה. נסה שוב.';

  @override
  String get paywallRestoreError => 'לא נמצא מנוי פעיל לשחזור.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ימים בחינם';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count שבועות בחינם',
      one: '$count שבוע חינם',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count חודשים בחינם',
      one: '$count חודש חינם',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'נסה את KipiList Pro בחינם למשך 7 ימים';

  @override
  String get paywallTrialSubtitle => 'בטל בכל עת. אין תשלום היום.';

  @override
  String get paywallTrialCta => 'התחל ניסיון חינם';

  @override
  String get recipeAddToList => 'הוסף לרשימת הקניות';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count מרכיבים נוספו ל$listName';
  }

  @override
  String get noListSelected => 'לא נבחרה רשימה. פתח רשימה תחילה.';

  @override
  String get paywallFeaturesTitle => 'כל מה שאתה צריך:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI מארגן את הרשימה שלך באופן אוטומטי';

  @override
  String get paywallFeatureDescUnlimitedLists => 'צור כמה רשימות שאתה צריך';

  @override
  String get paywallFeatureDescSharing => 'קניות ביחד בזמן אמת';

  @override
  String get paywallFeatureDescPantry => 'עקוב אחר מה שיש לך בבית';

  @override
  String get paywallFeatureDescBudget => 'הישאר בתקציב מדי חודש';

  @override
  String get paywallFeatureUnlimitedLists => 'רשימות ללא הגבלה';

  @override
  String get paywallFeatureSmartAI => 'AI חכם';

  @override
  String get paywallFeatureExpenseControl => 'בקרת הוצאות';

  @override
  String get paywallFeatureSharing => 'שיתוף';

  @override
  String get paywallBeforeAfterTitle => 'AI לפני ואחרי:';

  @override
  String get paywallLabelCommon => 'מְשׁוּתָף';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'אוֹרֶז';

  @override
  String get paywallBeforeItem2 => 'סַבּוֹן';

  @override
  String get paywallBeforeItem3 => 'בָּשָׂר';

  @override
  String get paywallBeforeItem4 => 'לֶחֶם';

  @override
  String get paywallAfterItem1 => 'דגנים';

  @override
  String get paywallAfterItem2 => 'ניקוי';

  @override
  String get paywallAfterItem3 => 'בשרים';

  @override
  String get paywallAfterItem4 => 'מַאֲפִיָה';

  @override
  String get paywallTestimonialsTitle => 'מה המשתמשים שלנו אומרים:';

  @override
  String get paywallTestimonial1Name => 'אן ס.';

  @override
  String get paywallTestimonial1Text =>
      'AI מארגן את הקניות שלי בשניות. אני חוסך 20 דקות לטיול בשוק.';

  @override
  String get paywallTestimonial2Name => 'צ\'ארלס מ.';

  @override
  String get paywallTestimonial2Text =>
      'לא שכחתי שוב פריט ברשימה. צ\'אט AI הוא סנסציוני!';

  @override
  String get paywallSocialProof => '+2,400 משפחות משתמשות בו';

  @override
  String get paywallCtaUnlock => 'בטל את הנעילה של PRO';

  @override
  String get paywallBestValue => 'הערך הטוב ביותר';

  @override
  String get paywallMostPopular => 'הכי פופולרי';

  @override
  String get paywallProLabel => 'מִקצוֹעָן';

  @override
  String get paywallSafeCheckout => 'תשלום מאובטח';

  @override
  String get paywallSelectPlan => 'בחר את התוכנית שלך:';

  @override
  String paywallSavePercent(Object percent) {
    return 'חסוך $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'רק $price לחודש';
  }

  @override
  String get paywallPackageAnnual => 'תוכנית שנתית';

  @override
  String get paywallPackageMonthly => 'תוכנית חודשית';

  @override
  String get paywallPackageLifetime => 'גישה לכל החיים';

  @override
  String get paywallCancelAnytime => 'בטל בכל עת. אין התחייבות.';

  @override
  String paywallTrialInCard(int days) {
    return '$days ימים ראשונים בחינם';
  }

  @override
  String get paywallSecuredByStore => 'מאובטח על ידי Google Play · בטל בכל עת';

  @override
  String get paywallPolicy => 'מדיניות פרטיות';

  @override
  String get paywallTerms => 'תנאי שימוש';

  @override
  String get paywallRestore => 'לְשַׁחְזֵר';

  @override
  String get paywallHeroHeadline => 'Kipi AI תמיד לצידך';

  @override
  String get paywallHeroSubtitle =>
      'הוסף פריטים, ארגן רשימות וחסוך זמן עם AI בכיס';

  @override
  String get paywallBenefit1Desc => 'מוסיף, מארגן ומציע פריטים 24/7';

  @override
  String get paywallBenefit2Desc => 'אין מגבלה של 3 רשימות';

  @override
  String get paywallBenefit3Desc => 'מעקב אחר הוצאות ורשימות משפחתיות';

  @override
  String get paywallPackageMonthlyDesc => 'גמישות מלאה';

  @override
  String paywallCtaTrialDays(int days) {
    return 'התחל בחינם - $days ימים';
  }

  @override
  String get premiumUpgrade => 'שדרג כדי לפתוח';

  @override
  String get itemRemoved => 'הפריט הוסר';

  @override
  String get undo => 'בטל';

  @override
  String get emptyListTitle => 'הרשימה שלך ריקה';

  @override
  String get emptyListSubtitle => 'הוסף פריטים כדי להתחיל';

  @override
  String get noListFoundTitle => 'לא נמצאו רשימות';

  @override
  String get noListFoundSubtitle => 'צור את הרשימה הראשונה שלך כדי להתחיל';

  @override
  String get createFirstList => 'צור רשימה ראשונה';

  @override
  String get listBudgetTitle => 'תקציב הרשימה';

  @override
  String get budgetAmountLabel => 'סכום התקציב';

  @override
  String get removeBudget => 'הסר';

  @override
  String get prefUnlimitedLists => 'רשימות ללא הגבלה';

  @override
  String get prefSharing => 'שתף רשימות';

  @override
  String get prefFullHistory => 'היסטוריה מלאה';

  @override
  String get prefExportData => 'ייצא נתונים';

  @override
  String get prefCustomThemes => 'ערכות נושא מותאמות';

  @override
  String get prefMonthlyBudget => 'תקציב חודשי גלובלי';

  @override
  String get prefAIAssistant => 'עוזר AI אישי';

  @override
  String get prefUnlimitedPantry => 'מזווה ללא הגבלה';

  @override
  String get prefInteractiveArtifacts => 'ארטיפקטים אינטראקטיביים של AI';

  @override
  String get themeGreen => 'ירוק';

  @override
  String get themeBlue => 'כחול';

  @override
  String get themePurple => 'סגול';

  @override
  String get themeRed => 'אדום';

  @override
  String get themeOrange => 'כתום';

  @override
  String get themePink => 'ורוד';

  @override
  String get themeIndigo => 'אינדיגו';

  @override
  String get themeAmber => 'ענבר';

  @override
  String get themeTeal => 'טיל';

  @override
  String get themeBrown => 'חום';

  @override
  String get catFruits => 'פירות';

  @override
  String get catCleaning => 'ניקיון';

  @override
  String get catBeverages => 'משקאות';

  @override
  String get catBakery => 'מאפייה';

  @override
  String get catOthers => 'אחר';

  @override
  String get unitPack => 'חבילה';

  @override
  String get shareSubject => 'רשימת קניות';

  @override
  String get monthlyBudgetTitle => 'תקציב חודשי';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'מחק רשימה';

  @override
  String get pantryItemRemoved => 'הפריט הוסר';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: 'יש לרכוש $deficit פריטים',
      many: 'יש לרכוש $deficit פריטים',
      two: 'יש לרכוש $deficit פריטים',
      one: 'other$deficit פריט',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'סה\"כ בעגלה';

  @override
  String get restockLabel => 'חידוש מלאי';

  @override
  String get advancedFeatures => 'תכונות מתקדמות';

  @override
  String get selectAll => 'בחר הכל';

  @override
  String get deselectAll => 'בטל בחירה';

  @override
  String get monthlyBudgetAppBar => 'תקציב חודשי';

  @override
  String get budgetEditTitle => 'תקציב חודשי';

  @override
  String get budgetDashboardTitle => 'לוח מחוונים';

  @override
  String get selectListForDashboard => 'בחר רשימה כדי לראות את לוח המחוונים.';

  @override
  String get spendingAnalysis => 'ניתוח הוצאות';

  @override
  String get noItemsToAnalyze => 'אין פריטים ברשימה לניתוח.';

  @override
  String get markItemsToSeeAnalysis =>
      'סמן פריטים כנרכשים כדי לראות את הניתוח.';

  @override
  String get totalSpending => 'סה\"כ הוצאות';

  @override
  String get spendingByCategory => 'הוצאות לפי קטגוריה';

  @override
  String get achievements => 'הישגים';

  @override
  String get exportPdfExcel => 'ייצא PDF/Excel';

  @override
  String get exportPdf => 'ייצא כ-PDF';

  @override
  String get exportExcel => 'ייצא כ-Excel';

  @override
  String get organizingAi => 'מארגן עם AI...';

  @override
  String get yesLabel => 'כן';

  @override
  String get noLabel => 'לא';

  @override
  String get shareListText => 'רשימת הקניות שלי';

  @override
  String get emptyListAddItems => 'הרשימה שלך ריקה! הוסף פריטים תחילה. ℹ️';

  @override
  String get listOrganizedMagic => 'הרשימה אורגנה בקסם לפי קטגוריות! ✨';

  @override
  String get shoppingMode => 'מצב קניות';

  @override
  String get smartOrganization => 'ארגון חכם';

  @override
  String get savings => 'חיסכון';

  @override
  String get shoppingModeHeader => 'מצב קניות';

  @override
  String get shareAsText => 'שלח פריטים כטקסט מעוצב';

  @override
  String get shareRealtime => 'סנכרון בזמן אמת עם אנשים אחרים';

  @override
  String get quickRecipe => 'מתכון מהיר';

  @override
  String get quickRecipePrompt => 'הצע מתכונים עם פריטים מהרשימה שלי.';

  @override
  String get economyTips => 'טיפים לחיסכון';

  @override
  String get economyTipsPrompt => 'איך אני יכול לחסוך כסף ברכישה זו?';

  @override
  String get organizeAisles => 'ארגן לפי מעברים';

  @override
  String get organizeAislesPrompt => 'ארגן לפי מעברים בסופר.';

  @override
  String get recipeSuggestion => 'הצעת מתכון';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'נותרו $remaining נקודות זכות';
  }

  @override
  String get addAllToList => 'הוסף הכל לרשימה';

  @override
  String get organizeByAisles => 'ארגן לפי מעברים';

  @override
  String get voiceTranscriptionTooltip => 'הקלדה קולית (חינם)';

  @override
  String get aiVoiceCommandTooltip => 'פקודה קולית AI (Premium)';

  @override
  String get voiceCommandTitle => 'פקודה קולית AI';

  @override
  String get voiceCommandContent =>
      'דבר באופן טבעי כדי לנהל את הרשימה שלך!\n\nדוגמאות:\n• \'הוסף לחם, גבינה ונקניק\'\n• \'הסר אבקת כביסה\'\n• \'שנה נושא לכחול\'\n\nזוהי תכונה בלעדית של KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'צפה בתוכניות';

  @override
  String get itemsAddedSuccess => 'הפריטים נוספו בהצלחה לרשימה!';

  @override
  String get viewList => 'צפה ברשימה';

  @override
  String get feedbackTitle => 'שלח משוב';

  @override
  String get feedbackPrompt => 'מה תרצה לשתף?';

  @override
  String get feedbackTypeBug => 'דווח על באג';

  @override
  String get feedbackTypeBugHint => 'משהו לא עובד';

  @override
  String get feedbackTypeSuggestion => 'הצעה';

  @override
  String get feedbackTypeSuggestionHint => 'רעיון לשיפור האפליקציה';

  @override
  String get feedbackTypeTranslation => 'בעיית תרגום';

  @override
  String get feedbackTypeTranslationHint => 'תרגום שגוי או לא טבעי';

  @override
  String get feedbackTypeFeature => 'בקשת תכונה';

  @override
  String get feedbackTypeFeatureHint => 'תכונה שהיית רוצה לראות';

  @override
  String get feedbackTypeOther => 'אחר';

  @override
  String get feedbackTypeOtherHint => 'סוג משוב אחר';

  @override
  String get feedbackHint => 'תאר את המשוב שלך בפירוט...';

  @override
  String get feedbackSend => 'שלח משוב';

  @override
  String get feedbackSending => 'שולח...';

  @override
  String get feedbackThankYou => 'תודה!';

  @override
  String get feedbackThankYouMessage =>
      'המשוב שלך התקבל ועוזר לנו לשפר את KipiList לכולם.';

  @override
  String get feedbackBack => 'חזור';

  @override
  String feedbackError(String error) {
    return 'שגיאה בשליחה: $error';
  }

  @override
  String get feedbackRetry => 'נסה שוב';

  @override
  String get feedbackSettingsTitle => 'שלח משוב';

  @override
  String get feedbackSettingsSubtitle =>
      'דווח על באגים, הצע שיפורים או תקן תרגומים';

  @override
  String get aiEnergy => 'AI Energy';

  @override
  String get searchInConversation => 'חפש בשיחה...';

  @override
  String get noMessagesFound => 'לא נמצאו הודעות';

  @override
  String get suggestedQuestions => 'שאלות מוצעות:';

  @override
  String get shoppingAssistant => 'עוזר קניות';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased מתוך $total נרכש';
  }

  @override
  String get estimatedCost => 'מְשׁוֹעָר';

  @override
  String get viewItems => 'הצג פריטים';

  @override
  String get noItemsInList => 'אין פריטים ברשימה';

  @override
  String get longHistoryWarning =>
      'היסטוריה ארוכה: העוזר מתמקד בהודעות האחרונות לביצועים טובים יותר.';

  @override
  String get listening => 'הַקשָׁבָה...';

  @override
  String get addDirectToList => 'הוסף ישירות לרשימה';

  @override
  String get unlockFullResponse => 'בטל נעילת תגובה מלאה';

  @override
  String get switchList => 'החלף רשימה';

  @override
  String get marketMode => 'מצב שוק';

  @override
  String get backToChat => 'חזרה לצ\'אט';

  @override
  String get finishShopping => 'סיים את הקניות';

  @override
  String get welcomeAiAssistant => 'ברוכים הבאים ל-AI Assistant';

  @override
  String get createListToStartAi =>
      'צור רשימת קניות כדי להתחיל להשתמש בצ\'אט החכם.';

  @override
  String get howCanIHelp => 'איך אני יכול לעזור?';

  @override
  String get chatSubtitleShort => 'שאל על מחירים, מתכונים, ארגון...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total נרכש';
  }

  @override
  String get quickReplies => 'תשובות מהירות:';

  @override
  String get voiceProFeature =>
      'פקודות קוליות מתקדמות הן Pro. הפעלת הכתבה בסיסית...';

  @override
  String get viewPro => 'View Pro';

  @override
  String get errorLoadingChat => 'אופס! משהו השתבש בטעינת הצ\'אט.';

  @override
  String get errorLoadingChatSubtitle =>
      'בדוק את החיבור שלך או נסה שוב מאוחר יותר.';

  @override
  String get errorOscillation =>
      'זה עלול להתרחש עקב תנודות רשת או חוסר זמינות זמנית. אנא נסה שוב.';

  @override
  String get activeListening => 'הקשבה פעילה';

  @override
  String get whatToDoWithItem => 'מה תרצה לעשות עם הפריט הזה?';

  @override
  String get viewDetails => 'הצג פרטים';

  @override
  String get openMenu => 'פתח תפריט';

  @override
  String get viewRecipe => 'צפה במתכון';

  @override
  String get recipeCreated => 'המתכון נוצר!';

  @override
  String get editRecipe => 'ערוך';

  @override
  String get deleteRecipe => 'מחק';

  @override
  String get deleteRecipeConfirm => 'למחוק את המתכון הזה?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'האם אתה בטוח שברצונך למחוק את \"$recipeName\"? לא ניתן לבטל פעולה זו.';
  }

  @override
  String get ingredients => 'רכיבים';

  @override
  String get instructions => 'הוראות';

  @override
  String get prepTime => 'זמן הכנה';

  @override
  String get recipeSaved => 'המתכון נשמר!';

  @override
  String get noRecipesSaved => 'אין מתכונים שמורים';

  @override
  String get noRecipesSavedHint =>
      'צור את המתכון המותאם אישית הראשון שלך על ידי הקשה על הכפתור למטה.';

  @override
  String get myRecipes => 'המתכונים שלי';

  @override
  String get newRecipe => 'מתכון חדש';

  @override
  String get loadingRecipes => 'טוען את המתכונים שלך...';

  @override
  String get errorLoadingRecipes => 'שגיאה בטעינת מתכונים';

  @override
  String get addIngredient => 'הוסף רכיב';

  @override
  String get saveRecipe => 'שמור';

  @override
  String get recipeName => 'שם המתכון';

  @override
  String get shortDescription => 'תיאור קצר';

  @override
  String get prepTimeMinutes => 'זמן הכנה (דקות)';

  @override
  String get instructionsHint => 'הקלד שלב אחד בכל שורה...';

  @override
  String get addPhoto => 'הוסף תמונה';

  @override
  String get imageUrlPlaceholder => 'או הדבק URL של תמונה';

  @override
  String get tags => 'תגיות';

  @override
  String get recipeTags => 'תגיות מתכון';

  @override
  String get suggestedTags => 'מוצעים';

  @override
  String get searchRecipes => 'חפש מתכונים...';

  @override
  String get filterByTag => 'סנן לפי תגית';

  @override
  String get allTags => 'הכל';

  @override
  String get recipeDeleted => 'המתכון נמחק';

  @override
  String get saveChanges => 'שמור שינויים';

  @override
  String get editRecipeTitle => 'ערוך מתכון';

  @override
  String get newRecipeTitle => 'מתכון חדש';

  @override
  String get requiredField => 'שדה חובה';

  @override
  String get chooseImageSource => 'בחר מקור תמונה';

  @override
  String get gallery => 'גלריה';

  @override
  String get enterUrl => 'הזן URL';

  @override
  String get recipeImage => 'תמונת מתכון';

  @override
  String get removeImage => 'הסר תמונה';

  @override
  String get mealPlannerTitle => 'מתכנן ארוחות';

  @override
  String get mealPlannerViewMonthly => 'תצוגה חודשית';

  @override
  String get mealPlannerViewWeekly => 'תצוגה שבועית';

  @override
  String get mealPlannerNoMeals => 'אין ארוחות מתוכננות';

  @override
  String get mealPlannerNoMealsHint => 'הקש על יום כדי להוסיף ארוחה';

  @override
  String get mealPlannerLoading => 'טוען תוכנית ארוחות...';

  @override
  String get mealPlannerError => 'שגיאה בטעינת תוכנית הארוחות';

  @override
  String get mealPlannerAddMeal => 'הוסף ארוחה';

  @override
  String get mealPlannerEditMeal => 'ערוך ארוחה';

  @override
  String get mealPlannerDeleteMeal => 'הסר ארוחה';

  @override
  String get mealPlannerMealDeleted => 'הארוחה הוסרה';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count מנות',
      one: '$count מנה',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'מנות';

  @override
  String get mealPlannerNoteLabel => 'הערה (אופציונלי)';

  @override
  String get mealPlannerSelectRecipe => 'בחר מתכון';

  @override
  String get mealPlannerSearchRecipes => 'חפש מתכונים...';

  @override
  String get mealPlannerNoRecipesFound => 'לא נמצאו מתכונים';

  @override
  String get mealPlannerNoRecipesHint => 'צור מתכונים בלשונית המתכונים תחילה';

  @override
  String get mealPlannerSave => 'הוסף לתוכנית';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count מתוך $total ארוחות מתוכננות';
  }

  @override
  String get mealPlannerGenerateList => 'צור רשימת קניות';

  @override
  String get mealPlannerGenerateListConfirm =>
      'להוסיף את כל הרכיבים מהארוחות המתוכננות השבוע לרשימת הקניות שלך?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count רכיבים נוספו לרשימה שלך!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'אין רכיבים להוספה. תכנן תחילה ארוחות עם מתכונים.';

  @override
  String get mealPlannerGenerateListNoList => 'צור רשימת קניות תחילה.';

  @override
  String get mealPlannerMealTypeBreakfast => 'ארוחת בוקר';

  @override
  String get mealPlannerMealTypeLunch => 'ארוחת צהריים';

  @override
  String get mealPlannerMealTypeDinner => 'ארוחת ערב';

  @override
  String get mealPlannerMealTypeSnack => 'חטיף';

  @override
  String get mealPlannerDateLabel => 'תאריך';

  @override
  String get mealPlannerWeekEmpty => 'שום דבר לא מתוכנן לשבוע זה';

  @override
  String get mealPlannerWeekEmptyHint =>
      'הקש על יום כלשהו כדי להתחיל לתכנן את הארוחות שלך!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes דקות';
  }

  @override
  String get inviteToList => 'הזמינו לרשימה';

  @override
  String get shareApp => 'שתף אפליקציה';

  @override
  String get shareAppDescription => 'הזמן חברים להשתמש ב- KipiList';

  @override
  String shareReferralText(String url) {
    return 'אני משתמש ב- KipiList כדי לארגן את הקניות שלי! הורד דרך הקישור שלי ושנינו מקבלים 7 ימים של פרימיום בחינם: $url';
  }

  @override
  String get shareReferralSubject => 'קבלו 7 ימים של KipiList Premium!';

  @override
  String get gestureHint => 'החזק כדי לבחור • החלק להסרה';

  @override
  String get catalogTitle => 'קָטָלוֹג';

  @override
  String get catalogMyFrequents => 'התדירות שלי';

  @override
  String get catalogSearchGlobal => 'חפש בכל מוצר...';

  @override
  String catalogSearchInCategory(String category) {
    return 'חפש ב$category...';
  }

  @override
  String get catalogSortPopular => 'הכי פופולרי';

  @override
  String get catalogSortAZ => 'א–ז';

  @override
  String get catalogFilterNational => 'אזרחים';

  @override
  String get catalogRareSection => 'פחות נפוץ במדינה שלך';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'הוסף $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'המוצר לא נמצא, הקלד את השם';

  @override
  String get catalogBrowse => 'עיין בקטלוג';

  @override
  String get offlineBanner => 'אתה במצב לא מקוון';

  @override
  String get consentTitle => 'פרטיות וניתוח';

  @override
  String get consentBody =>
      'KipiList משתמש ב-Firebase Analytics כדי לשפר את החוויה שלך. הנתונים שלך מעובדים בהתאם למדיניות הפרטיות שלנו.';

  @override
  String get consentAccept => 'לְקַבֵּל';

  @override
  String get consentDecline => 'לא, תודה';

  @override
  String get mealPlannerPantryAllAvailable => 'בִּמלַאִי';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count חסר',
      one: '$count פריט חסר',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'תַאֲרִיך תְפוּגָה';

  @override
  String get notInformed => 'לא מודיעים';

  @override
  String get skip => 'לְדַלֵג';

  @override
  String get onboardingAiTitle => 'צ\'אט עם Kipi';

  @override
  String get onboardingAiGreeting => 'היי! אני קיפי, עוזר הקניות האישי שלך! 🛒';

  @override
  String get onboardingAiAskName => 'איך קוראים לך?';

  @override
  String get onboardingAiNameHint => 'הקלד את שמך...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'נעים להכיר, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'מה המאכל האהוב עליך?';

  @override
  String get onboardingAiFoodHint => 'לְמָשָׁל פיצה, סושי...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'בחירות נהדרות! הנה מה שהייתי מוסיף לרשימה שלך:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm => 'זה נראה טוב? נסה להקליד משהו אחר!';

  @override
  String get onboardingAiReady =>
      'גָדוֹל! אתה מוכן להתחיל. בואו להגדיר את החשבון שלך!';

  @override
  String get onboardingAiContinue => 'המשך →';

  @override
  String get connectionError => 'שגיאת חיבור';

  @override
  String connectionErrorDesc(String error) {
    return 'שגיאה: $error';
  }

  @override
  String get errorLoadingLists => 'שגיאה בטעינת רשימות';

  @override
  String get noListsFound => 'לא נמצאו רשימות';

  @override
  String get backToToday => 'בחזרה להיום';

  @override
  String get quickSuggestions => 'הצעות מהירות';

  @override
  String get aiEnergyLow => 'אנרגיית AI נמוכה';

  @override
  String get aiUnlockUnlimited => 'פתח AI ללא הגבלה';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 היום';
  }

  @override
  String get aiSubscribeUnlimited => 'הירשם ל-AI ללא הגבלה';

  @override
  String get unlockWithAd => 'בטל את הנעילה באמצעות מודעה';

  @override
  String get conversationHistoryTitle => 'היסטוריית שיחות';

  @override
  String get noConversationsFound => 'לא נמצאו שיחות';

  @override
  String get errorLoadingHistory => 'שגיאה בטעינת ההיסטוריה';

  @override
  String get deleteConversationTitle => 'מחק את השיחה';

  @override
  String get deleteConversationConfirm => 'לא ניתן לבטל פעולה זו.';

  @override
  String get deleteConversation => 'לִמְחוֹק';

  @override
  String get subscription => 'מִנוּי';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle => 'פתח את הנעילה של פרימיום';

  @override
  String get loadingSubscription => 'טוען מנוי...';

  @override
  String get errorLoadingSubscription => 'שגיאה בטעינת המנוי';

  @override
  String get profileSection => 'פּרוֹפִיל';

  @override
  String get myProfile => 'הפרופיל שלי';

  @override
  String get profileSubtitle => 'פרטי הפרופיל שלך';

  @override
  String get customizeAiAssistant => 'התאמה אישית של עוזר AI';

  @override
  String get assistantHistory => 'היסטוריית Assistant';

  @override
  String get assistantHistorySubtitle => 'הצג את היסטוריית השיחות שלך';

  @override
  String get manageCategories => 'נהל קטגוריות';

  @override
  String get manageCategoriesSubtitle => 'הוסף, ערוך או הסר קטגוריות';

  @override
  String get customizeAssistant => 'התאמה אישית';

  @override
  String get assistantName => 'שם עוזר';

  @override
  String get chooseIcon => 'בחר סמל';

  @override
  String get profileSaved => 'הפרופיל נשמר';

  @override
  String get errorSavingProfile => 'שגיאה בשמירת הפרופיל';

  @override
  String get userProfile => 'פרופיל משתמש';

  @override
  String get profileDescription => 'תיאור הפרופיל';

  @override
  String get preferredMarket => 'שוק מועדף';

  @override
  String get preferredMarketHint => 'איפה אתה עושה קניות בדרך כלל?';

  @override
  String get dietaryRestrictions => 'הגבלות תזונתיות';

  @override
  String get dietaryRestrictionsHint => 'יש הגבלות תזונתיות?';

  @override
  String get marketsToAvoid => 'שווקים שכדאי להימנע מהם';

  @override
  String get marketsToAvoidHint => 'שווקים שאתה מעדיף לא לקנות בהם';

  @override
  String get observations => 'תצפיות';

  @override
  String get observationsHint => 'יש הערות נוספות?';

  @override
  String get saveProfile => 'שמור פרופיל';

  @override
  String get everythingReady => 'הכל מוכן!';

  @override
  String get youCompletedList => 'השלמת את הרשימה!';

  @override
  String get selectCheaperAlternative => 'בחר חלופה זולה יותר';

  @override
  String get suggestedItems => 'פריטים מוצעים';

  @override
  String get swapped => 'הוחלף';

  @override
  String get swap => 'לְהַחלִיף';

  @override
  String get chooseThemeColor => 'בחר צבע נושא';

  @override
  String get manageCategoriesTitle => 'נהל קטגוריות';

  @override
  String get categoryLimitReached => 'הגעת למגבלת הקטגוריה';

  @override
  String get deleteCategoryTitle => 'מחק קטגוריה';

  @override
  String deleteCategoryConfirm(String category) {
    return 'פריטים ב-\"$category\" יועברו ל-\"אחרים\".\nלְהַמשִׁיך?';
  }

  @override
  String get deleteCategory => 'לִמְחוֹק';

  @override
  String get newCategoryDialog => 'קטגוריה חדשה';

  @override
  String get editCategoryDialog => 'ערוך קטגוריה';

  @override
  String get categoryName => 'שם הקטגוריה';

  @override
  String get categoryNameHint => 'הזן את שם הקטגוריה';

  @override
  String get categoryColorLabel => 'צֶבַע';

  @override
  String get categoryIconLabel => 'סמל';

  @override
  String itemAddedSnack(String name) {
    return '$name נוסף';
  }

  @override
  String get kipiQuickBarHint => 'מה צריך לקנות?';

  @override
  String replaceItem(String item) {
    return 'החלף $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit — $price';
  }

  @override
  String get onboardingHookHeadline => 'לעולם אל תשכח שוב פריט מכולת';

  @override
  String get onboardingGoalSaveMoney => 'חסוך כסף';

  @override
  String get onboardingGoalNeverForget => 'לעולם אל תשכח פריטים';

  @override
  String get onboardingGoalFaster => 'קנה מהר יותר';

  @override
  String get onboardingGoalFamily => 'ארגן קניות משפחתיות';

  @override
  String get onboardingGoalRecipes => 'גלה מתכונים';

  @override
  String get onboardingGoalPantry => 'מזווה מסלול';

  @override
  String get onboardingCommitmentsTitle => 'מה חשוב לך?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'בחר את היעדים שלך כדי להתאים אישית את KipiList';

  @override
  String get onboardingCommitmentsCta => 'בוא נלך!';

  @override
  String get onboardingPersonalizationNameLabel => 'השם שלך';

  @override
  String get onboardingPersonalizationNameHint => 'הזן את שמך';

  @override
  String get onboardingPersonalizationCategoryTitle => 'בשביל מה אתה קונה?';

  @override
  String get onboardingPersonalizationGroupTitle => 'למי אתה קונה?';

  @override
  String get onboardingCategoryGrocery => 'מִצרַכֵי מָזוֹן';

  @override
  String get onboardingCategoryPharmacy => 'בֵּית מִרקַחַת';

  @override
  String get onboardingCategoryRecipes => 'מתכונים';

  @override
  String get onboardingCategoryHome => 'בַּיִת';

  @override
  String get onboardingCategoryPet => 'לְלַטֵף';

  @override
  String get onboardingGroupSolo => 'רק אני';

  @override
  String get onboardingGroupCouple => 'זוּג';

  @override
  String get onboardingGroupFamily => 'מִשׁפָּחָה';

  @override
  String get onboardingLoadingTitle => 'מכין את החוויה שלך...';

  @override
  String get onboardingLoadingStep1 => 'מנתח את ההעדפות שלך...';

  @override
  String get onboardingLoadingStep2 => 'מגדיר עוזר AI...';

  @override
  String get onboardingLoadingStep3 => 'כמעט מוכן...';

  @override
  String get onboardingLoadingStat1Label => 'פריטים מקוטלגים';

  @override
  String get onboardingLoadingStat2Label => 'משתמשים עזרו';

  @override
  String get onboardingLoadingStat3Label => 'דקות נשמר';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, חסוך בכל נסיעה!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, לעולם אל תשכח פריט!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, קנה בחצי מהזמן!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, ארגן קניות משפחתיות!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, גלה מתכונים חדשים!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, עקוב אחר המזווה שלך בצורה מושלמת!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'חסוך בכל נסיעה!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => 'לעולם אל תשכח פריט!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'קנה בחצי מהזמן!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'ארגן קניות משפחתיות!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'גלה מתכונים חדשים!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'עקוב בצורה מושלמת אחר המזווה שלך!';

  @override
  String paywallPricePerDay(String price) {
    return 'רק $price ליום - פחות מקפה';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'דלג לעת עתה';

  @override
  String get paywallTestimonial =>
      'AI מארגן את הקניות שלי בשניות. אני חוסך 20 דקות לנסיעה.';

  @override
  String get paywallTestimonialAuthor => 'אן ס.';

  @override
  String get paywallTrialDisclaimer =>
      'בטל בכל עת · ללא תשלום עד לסיום תקופת הניסיון שלך';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'היי $name! איזה $category אתה צריך?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'איזה $category אתה צריך?';
  }

  @override
  String get onboardingAiDemoYes => 'כֵּן!';

  @override
  String get onboardingAiDemoReaction => 'נֶחְמָד!';

  @override
  String get onboardingAiDemoChange => 'שנה פריט';

  @override
  String get onboardingAiDemoOffer => 'נסה להקליד משהו אחר!';

  @override
  String get onboardingAiDemoContinue => 'לְהַמשִׁיך';

  @override
  String get onboardingAiDemoSlideHeadline => 'רשימת הקניות שלך, עכשיו עם AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'ראה כיצד Kipi בונה את הרשימה המלאה שלך בשניות';

  @override
  String get onboardingAiDemoSlideCta => 'אני רוצה את זה! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'אני מארחת ברביקיו 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'מוּכָן! הנה כל מה שאתה צריך:';

  @override
  String get onboardingAiDemoSlideDone => 'רשימה מלאה תוך שניות ✨';

  @override
  String get onboardingPainTitle => 'מה הכי מתסכל אותך?';

  @override
  String get onboardingPainSubtitle => 'תהיה כנה - אנחנו נתקן כל אחד';

  @override
  String get onboardingPainCta => 'כן, תקן לי את זה →';

  @override
  String get onboardingPainForget => 'אני שוכח פריטים בחנות';

  @override
  String get onboardingPainFamily => 'המשפחה שלי אף פעם לא רואה את הרשימה';

  @override
  String get onboardingPainOverspend => 'אני תמיד חורג מהתקציב';

  @override
  String get onboardingPainRepeat => 'טיול אחד אף פעם לא מספיק';
}
