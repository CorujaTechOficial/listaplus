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
  String get help => 'עֶזרָה';

  @override
  String get helpListTitle => 'משתמש ברשימה שלך';

  @override
  String get helpListAddItems =>
      'הוסף פריטים עם כפתור + בתחתית, או השתמש בחיפוש כדי לעיין במוצרים';

  @override
  String get helpListAi =>
      'בקש מעוזרת הבינה המלאכותית ליצור, לארגן או להשלים את הרשימה שלך - פשוט הקש על הסמל הנוצץ';

  @override
  String get helpListShoppingMode =>
      'מצב קניות מסתיר פריטים שנרכשו כדי שתוכל להתמקד במה שנשאר';

  @override
  String get helpListOrganize =>
      'גרור פריטים לסדר מחדש, החלק כדי לסמן כנקנו, או השתמש במסננים ובמיון';

  @override
  String get helpListShare =>
      'שתף את הרשימה שלך עם המשפחה או ייצא כ-PDF, Excel או טקסט רגיל';

  @override
  String get import => 'ייבוא';

  @override
  String get rename => 'שינוי שם';

  @override
  String get upgrade => 'שדרוג';

  @override
  String get clear => 'ניקוי';

  @override
  String get clearPurchasedTitle => 'נקה פריטים שנרכשו';

  @override
  String get clearPurchasedConfirmMessage =>
      'להסיר את כל הפריטים שנרכשו מרשימה זו? זה לא ניתן לביטול.';

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
  String get errorCreateList =>
      'לא ניתן ליצור רשימה. בדוק את החיבור שלך ונסה שוב.';

  @override
  String get errorShareCode =>
      'שגיאה ביצירת קוד שיתוף. בדוק את החיבור שלך ונסה שוב.';

  @override
  String get errorQuickAdd =>
      'לא ניתן להוסיף פריט. בדוק את החיבור שלך ונסה שוב.';

  @override
  String get errorLoadList =>
      'לא ניתן היה לטעון את הרשימות שלך. אנא צור רשימה חדשה כדי להתחיל.';

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
  String pantryDeficitCount(int count, String unit) {
    return 'חסר $count$unit';
  }

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
  String get scanProductTitle => 'סרוק מוצר';

  @override
  String get positionBarcodeCenter => 'מקם את הברקוד במרכז';

  @override
  String get product => 'מוּצָר';

  @override
  String get settingsAppBar => 'הגדרות';

  @override
  String get preferencesSection => 'העדפות';

  @override
  String get aiSection => 'עוזר AI';

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
  String get themeMode => 'מצב ערכת נושא';

  @override
  String get chooseThemeMode => 'בחר מצב ערכת נושא';

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
  String get myAchievements => 'ההישגים שלי';

  @override
  String get itemsPurchased => 'פריטים שנרכשו';

  @override
  String get totalSavings => 'סך החיסכון';

  @override
  String get currentStreak => 'רצף נוכחי';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ימים',
      one: '$count day',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'תגים לא נעולים';

  @override
  String get badgeBeginner => 'מַתחִיל';

  @override
  String get badgeOrganized => 'מְאוּרגָן';

  @override
  String get badgeSavingMaster => 'מאסטר הצלה';

  @override
  String get badgeSuperPlanner => 'סופר מתכנן';

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
  String get budgetGoalInvalidAmount => 'הזן ערך גדול מאפס';

  @override
  String get budgetPartialEstimateHint => '~ כולל הערכות תמחור חלקיות';

  @override
  String get budgetGoalSaved => 'יעד התקציב נשמר';

  @override
  String get budgetGoalRemoved => 'יעד התקציב הוסר';

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
    return '$purchased מתוך $total פריטים';
  }

  @override
  String progressBudget(String amount) {
    return 'תקציב: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'סה\"כ: $amount';
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
  String get keepAdding => 'תמשיך להוסיף';

  @override
  String get keepAddingSubtitle =>
      'השאר את הגיליון פתוח כדי להוסיף פריטים מרובים';

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
  String get newChatConfirmTitle => 'שיחה חדשה';

  @override
  String get newChatConfirmMessage =>
      'להתחיל שיחה חדשה? השיחה הנוכחית שלך תאבד.';

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
  String get chatEmptySubtitle =>
      'בקש הצעות לפריטים, מתכונים או טיפים לשמירה כדי להתחיל.';

  @override
  String get chatEmptyTitle => 'הצ\'אט שלך ריק';

  @override
  String chatError(String error) {
    return 'שגיאה בטעינת הצ\'אט: $error';
  }

  @override
  String get goodResponse => 'תגובה טובה';

  @override
  String get badResponse => 'תגובה גרועה';

  @override
  String get scrollToBottom => 'גלול למטה';

  @override
  String get somethingWentWrong => 'משהו השתבש';

  @override
  String get editMessage => 'ערוך הודעה';

  @override
  String get searchConversations => 'חפש שיחות';

  @override
  String get dateGroupToday => 'הַיוֹם';

  @override
  String get dateGroupYesterday => 'אֶתמוֹל';

  @override
  String get dateGroupPrevious7Days => '7 הימים הקודמים';

  @override
  String get dateGroupOlder => 'ישן יותר';

  @override
  String get aiAssistantTitle => 'עוזר AI';

  @override
  String get closeSheet => 'לִסְגוֹר';

  @override
  String get scanBarcodeTitle => 'סרוק ברקוד';

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
  String get undo => 'בטל';

  @override
  String get newChatStarted => 'צ\'אט חדש התחיל';

  @override
  String get quickAddToList => 'הוסף לרשימה';

  @override
  String get aiCapabilitiesTitle => 'מה אני יכול לעשות?';

  @override
  String get aiCapabilitiesLists => 'רשימות קניות';

  @override
  String get aiCapabilitiesBudget => 'תקציב ומחירים';

  @override
  String get aiCapabilitiesRecipes => 'מתכונים ותפריטים';

  @override
  String get aiCapabilitiesOrganize => 'אִרגוּן';

  @override
  String get marketModeDescription => 'סמן פריטים בזמן שאתה קונה';

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
  String get recipeAddError => 'לא ניתן להוסיף לרשימה שלך. אנא נסה שוב.';

  @override
  String get recipeTapToCheck => 'הקש על מרכיב כדי לסמן אותו בזמן הבישול';

  @override
  String get recipeIngredientInPantry => 'במזווה';

  @override
  String get recipeIngredientLowPantry => 'נמוך במזווה';

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
  String paywallSavePercent(int percent) {
    return 'חסוך $percent%';
  }

  @override
  String paywallPricePerMonth(String price) {
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
  String get paywallTimelineToday => 'הַיוֹם';

  @override
  String get paywallTimelineTodayDesc =>
      'בטל את הנעילה של גישה מלאה באופן מיידי';

  @override
  String paywallTimelineDay(int day) {
    return 'יום $day';
  }

  @override
  String get paywallTimelineReminderDesc => 'אנו מזכירים לך לפני סיום המשפט';

  @override
  String get paywallTimelineChargeDesc => 'המנוי שלך מתחיל - בטל בכל עת';

  @override
  String get paywallHeroFeatureTitle => 'עוזר קניות בינה מלאכותית';

  @override
  String get paywallHeroFeatureDesc =>
      'דבר או הדבק רשימה שלמה - בינה מלאכותית ממיינת, מסווגת ומתקצבת אותה בשניות';

  @override
  String get paywallBasedOnAnswers => 'מותאם אישית מהתשובות שלך';

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
  String get paywallWelcomeOfferBadge => '🎁 הצעת קבלת פנים';

  @override
  String get paywallFreeTier => 'חינם: 3 רשימות';

  @override
  String get paywallProTier => 'יתרונות: ללא הגבלה';

  @override
  String get firstItemAddedSnackbar => 'פריט ראשון נוסף! התחלה מעולה 🛒';

  @override
  String paywallCtaTrialDays(int days) {
    return 'התחל בחינם - $days ימים';
  }

  @override
  String get premiumUpgrade => 'שדרג כדי לפתוח';

  @override
  String get itemRemoved => 'הפריט הוסר';

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
  String get pantryItemAdded => 'פריט נוסף';

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
  String get recipeYieldServings => 'תניב מנות';

  @override
  String get recipeManualTotalCost => 'עלות כוללת ידנית';

  @override
  String get recipeManualTotalCostHint => 'השאר ריק להערכת מחירי הרכיבים.';

  @override
  String get recipeEstimatedTotalCost => 'עלות כוללת משוערת';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / מנה';
  }

  @override
  String recipeServesCount(int count) {
    return 'משרת $count';
  }

  @override
  String get recipeEstimatePartial => 'הערכה חלקית מבוססת על מרכיבים עם מחיר.';

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
  String get mealPlannerEstimatePartial =>
      'הערכה מבוססת על מתכונים עם נתוני מחיר חלקיים.';

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
  String mealPlannerBudgetMonthCost(String amount) {
    return 'חודש: $amount';
  }

  @override
  String mealPlannerBudgetWeekCost(String amount) {
    return 'שבוע: $amount';
  }

  @override
  String mealPlannerBudgetTodayCost(String amount) {
    return 'היום: $amount';
  }

  @override
  String get mealPlannerBudgetRemoveGoal => 'הסר את המטרה';

  @override
  String get mealPlannerBudgetGoalNav => 'תקציב מתכנן ארוחות';

  @override
  String get mealPlannerBudgetGoalSubtitle => 'יעד הוצאה חודשי לתכנון ארוחות';

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
  String get catalogRareBadge => 'נָדִיר';

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
  String get catalogCategories => 'קטגוריות';

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
  String get mealPlannerManageTypes => 'ניהול סוגי ארוחות';

  @override
  String get mealPlannerAddType => 'הוסף סוג ארוחה';

  @override
  String get mealPlannerEditType => 'ערוך את סוג הארוחה';

  @override
  String get mealPlannerTypeName => 'שֵׁם';

  @override
  String get mealPlannerTypeColor => 'צֶבַע';

  @override
  String get mealPlannerTypeIcon => 'סמל';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      'האם אתה בטוח שברצונך למחוק את סוג הארוחה הזה? ארוחות מתוכננות עם סוג זה יישארו.';

  @override
  String get mealPlannerTypeNameEmpty => 'השם לא יכול להיות ריק';

  @override
  String get mealPlannerTypeDeleteError => 'לא ניתן למחוק את סוג הארוחה הזה.';

  @override
  String get mealPlannerCustomTypeLabel => 'סוג מותאם אישית';

  @override
  String get mealPlannerDefaultTypeLabel => 'סוג ברירת מחדל';

  @override
  String get mealPlannerDuplicate => 'ארוחה כפולה';

  @override
  String get mealPlannerSelectDestinationDay => 'שכפל ל...';

  @override
  String get mealPlannerCurrentDayLabel => 'יום נוכחי';

  @override
  String get mealPlannerDuplicateSuccess => 'הארוחה שוכפלה בהצלחה!';

  @override
  String get expirationDate => 'תַאֲרִיך תְפוּגָה';

  @override
  String get notInformed => 'לא מודיעים';

  @override
  String get skip => 'לְדַלֵג';

  @override
  String get onboardingSkip => 'דלג לעת עתה';

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
  String get errorLoadingItems => 'שגיאה בטעינת פריטים';

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

  @override
  String get aiWelcomeContent =>
      'שלום! 👋 אני **קיפי**, עוזרת הקניות והמתכונים האישית שלך!\n\nאני כאן כדי לעזור לך:\n🛒 **ארגן** את הקניות שלך לפי קטגוריות באופן אוטומטי\n💰 **עקוב** אחר התקציב שלך ותן לך טיפים לחיסכון בכסף\n🍲 **הצע** מתכונים טעימים עם מה שכבר יש לכם\n\nאיך אני יכול לעזור לך היום? אתה יכול להתחיל ביצירת הרשימה הראשונה שלך!';

  @override
  String get aiWelcomeSuggestCreateList => 'צור את הרשימה הראשונה שלי';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'קיפי, עזור לי ליצור את רשימת הקניות הראשונה שלי';

  @override
  String get aiWelcomeSuggestSave => 'איך לחסוך כסף?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'קיפי, איך אתה יכול לעזור לי לחסוך כסף על מצרכים?';

  @override
  String get suggestionMilk => 'חָלָב';

  @override
  String get suggestionBread => 'לֶחֶם';

  @override
  String get suggestionEggs => 'ביצים';

  @override
  String get suggestionCoffee => 'קָפֶה';

  @override
  String get suggestionRice => 'אוֹרֶז';

  @override
  String get suggestionFruits => 'פירות';

  @override
  String get recipeIngredientSingular => 'מרכיב אחד';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count מרכיבים';
  }

  @override
  String get pantryAvailabilityAll => 'מוּכָן!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return '$availableCount/$totalCount במזווה';
  }

  @override
  String onboardingProgress(int current, int total) {
    return 'שלב $current מתוך $total';
  }

  @override
  String get onboardingDemoHeadline =>
      'ספר לנו מה אתה מתכנן. קיפי בונה את הרשימה.';

  @override
  String get onboardingDemoSubtitle => 'קבל פריטים מאורגנים תוך שניות.';

  @override
  String get onboardingPersonalizationEffect =>
      'זה עוזר לקיפי להציע פריטים וכמויות רלוונטיות יותר.';

  @override
  String get onboardingPersonalizeWithName => 'התאם אישית עם השם שלי';

  @override
  String get onboardingCreateFirstList => 'צור את הרשימה הראשונה שלי';

  @override
  String get onboardingPromptWeekly => 'תכננו את היסודות השבועיים שלי';

  @override
  String get onboardingPromptEvent => 'אני מכין משהו מיוחד';

  @override
  String get onboardingPromptEssentials => 'הציעו לי את הדברים החיוניים';

  @override
  String get onboardingFallbackGrocery =>
      '🍚 אורז|🫘 שעועית|🥛 חלב|🥚 ביצים|🍞 לחם|🍎 פירות';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 תחבושות דביקות|🌡️ מדחום|🧴 חיטוי|😷 מסכות פנים|🧼 חומר לחיטוי ידיים';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 עגבניות|🧅 בצל|🧄 שום|🥚 ביצים|🧀 גבינה|🌿 עשבי תיבול טריים';

  @override
  String get onboardingFallbackHome =>
      '🧻 מגבות נייר|🧽 ספוגים|🧴 חומר ניקוי|🗑️ שקיות אשפה|🧹 מטליות ניקוי';

  @override
  String get onboardingFallbackPet =>
      '🥣 מזון לחיות מחמד|🦴 פינוקים|🧼 שמפו לחיות מחמד|🧸 צעצוע|🧻 שקיות פסולת';

  @override
  String get onboardingListSaveFailed =>
      'הכנתי את הפריטים, אבל לא הצלחתי לשמור את הרשימה. נסה שוב לשמור אותו באפליקציה.';

  @override
  String onboardingListCreated(int count) {
    return 'הרשימה שלך מוכנה: $count פריטים מאורגנים עבורך.';
  }

  @override
  String get onboardingContinueToOffer => 'לְהַמשִׁיך';

  @override
  String onboardingPaywallListReady(int count) {
    return 'הרשימה הראשונה שלך מוכנה · $count פריטים';
  }

  @override
  String get paywallContinueFree => 'המשך עם הגרסה החינמית';

  @override
  String get paywallPurchasePending =>
      'התשלום שלך ממתין לאישור. הגישה תשוחרר אוטומטית לאחר האישור.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return 'היום: ללא תשלום. לאחר מכן $price/שנה לאחר $days ימים. בטל בכל עת.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return 'היום: ללא תשלום. לאחר מכן $price/חודש לאחר $days ימים. בטל בכל עת.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price לשנה. בטל בכל עת.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/חודש. בטל בכל עת.';
  }

  @override
  String get obHookTitle => 'קניות חכמות יותר מתחילות כאן';

  @override
  String get obHookSubtitle =>
      'רשימות מבוססות בינה מלאכותית שחוסכות לך זמן וכסף, בכל נסיעה.';

  @override
  String get obHookSocial => 'מהימן על ידי אלפי קונים ברחבי העולם';

  @override
  String get obHookCta => 'התחל';

  @override
  String get obQuizHouseholdTitle => 'למי אתה קונה?';

  @override
  String get obQuizHouseholdSolo => 'רק אני';

  @override
  String get obQuizHouseholdCouple => 'אני והשותף שלי';

  @override
  String get obQuizHouseholdFamilySmall => 'משפחה בת 3-4';

  @override
  String get obQuizHouseholdFamilyLarge => 'משפחה בת 5+';

  @override
  String get obQuizFrequencyTitle => 'באיזו תדירות אתה קונה מצרכים?';

  @override
  String get obQuizFrequencyDaily => 'כמעט כל יום';

  @override
  String get obQuizFrequencyWeekly => 'פעם בשבוע';

  @override
  String get obQuizFrequencyBiweekly => 'כל שבועיים';

  @override
  String get obQuizFrequencyMonthly => 'הובלה חודשית גדולה';

  @override
  String get obQuizPainTitle => 'מה הכי מתסכל אותך בקניות?';

  @override
  String get obQuizPainForget => 'אני תמיד שוכח פריטים';

  @override
  String get obQuizPainOverspend => 'אני מוציא יותר מהמתוכנן';

  @override
  String get obQuizPainWaste => 'האוכל הולך לפח בבית';

  @override
  String get obQuizPainTime => 'זה לוקח יותר מדי זמן';

  @override
  String get obQuizSavingsTitle => 'כמה תרצו לחסוך מדי חודש?';

  @override
  String get obQuizSavingsSmall => 'קצת - כל חלק חשוב';

  @override
  String get obQuizSavingsMedium => 'בסביבות 10% מחשבון המכולת שלי';

  @override
  String get obQuizSavingsLarge => 'כמה שאפשר';

  @override
  String get obQuizMethodTitle => 'איך מכינים רשימות קניות היום?';

  @override
  String get obQuizMethodPaper => 'עט ונייר';

  @override
  String get obQuizMethodNotes => 'אפליקציית הערות';

  @override
  String get obQuizMethodMemory => 'אני שומר את זה בראש';

  @override
  String get obQuizMethodNone => 'אני לא עושה רשימות';

  @override
  String get obSocialTitle => 'אתה בחברה טובה';

  @override
  String get obSocialSubtitle => 'קונים כמוך כבר חוסכים עם KipiList';

  @override
  String get obSocialQuote1 =>
      'אני לא שוכח כלום יותר. ה-AI בונה את הרשימה שלי בשניות.';

  @override
  String get obSocialQuote2 =>
      'קיצרנו את חשבון המכולת שלנו באופן ניכר בחודש הראשון.';

  @override
  String get obSocialQuote3 =>
      'שיתוף הרשימה עם בן זוגי סיים את כאוס הקניות שלנו.';

  @override
  String get obLoadingTitle => 'בניית תוכנית אישית...';

  @override
  String get obLoadingStepProfile => 'התאמה למשק הבית שלך';

  @override
  String get obLoadingStepHabits => 'התאמה לשגרת הקניות שלך';

  @override
  String get obLoadingStepSavings => 'אופטימיזציה של אסטרטגיית החיסכון שלך';

  @override
  String get obLoadingStepLists => 'הכנת הרשימות החכמות שלך';

  @override
  String get obRevealTitle => 'התוכנית שלך מוכנה!';

  @override
  String get obRevealSubtitle => 'הנה איך KipiList יעבוד בשבילך';

  @override
  String get obRevealSavingsCaption => 'חיסכון צפוי עם KipiList';

  @override
  String obRevealMonth(int n) {
    return 'חודש $n';
  }

  @override
  String get obRevealFeatureAi => 'AI בונה ומארגן את הרשימות שלך';

  @override
  String get obRevealFeatureBudget => 'מעקב אחר ההוצאות מול המטרה שלך';

  @override
  String get obRevealFeaturePantry => 'מעקב אחר המזווה מקצץ בזבוז מזון';

  @override
  String get obRevealFeatureShare => 'שיתוף בזמן אמת עם משק הבית שלך';

  @override
  String get obPaywallTitle => 'בטל את נעילת התוכנית שלך';

  @override
  String get obPaywallRetry => 'נסה שוב';

  @override
  String get obLoginTitle => 'שמור את התוכנית שלך';

  @override
  String get obLoginSubtitle => 'היכנס כדי שהרשימות שלך יסונכרנו בין מכשירים';

  @override
  String get obLoginGoogle => 'המשך עם גוגל';

  @override
  String get obLoginApple => 'המשך עם אפל';

  @override
  String get obLoginSkip => 'לא עכשיו';

  @override
  String get obLoginError => 'הכניסה נכשלה. נסה שוב או דלג לעת עתה.';

  @override
  String get searchMessages => 'חפש הודעות...';

  @override
  String get deletedList => 'רשימה שנמחקה';

  @override
  String get openConversation => 'שיחה פתוחה';

  @override
  String get userRole => 'אַתָה';

  @override
  String get assistantRole => 'עוֹזֵר';

  @override
  String get agentActionsRunning => 'הפעלת פעולות...';

  @override
  String get agentActionsFailed => 'הפעלת הפעולות נכשלה';

  @override
  String get agentActionsPremium => 'פעולות דורשות פרימיום';

  @override
  String agentActionsCompleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count actions completed',
      one: '1 action completed',
    );
    return '$_temp0';
  }

  @override
  String get undoChanges => 'בטל שינויים';

  @override
  String premiumStepDescription(String description) {
    return '$description (פרימיום)';
  }

  @override
  String get itemAddedToList => 'פריט נוסף לרשימה.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return 'מצב קודם: $quantity $unit [$category]$price';
  }

  @override
  String itemsAffectedByAction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items affected by the action.',
      one: '1 item affected by the action.',
    );
    return '$_temp0';
  }

  @override
  String get premiumActionsPrompt =>
      'הירשם ל-Premium כדי לפתוח פעולות אוטומטיות.';

  @override
  String get viewPlans => 'צפה בתוכניות';

  @override
  String get artifactSynced => 'מסונכרן';

  @override
  String get artifactBudgetLabel => 'תַקצִיב:';

  @override
  String get totalEstimatedLabel => 'סה\"כ משוער';

  @override
  String get quickActionPantry => 'צפה במזווה';

  @override
  String get quickActionAi => 'צ\'אט עם Kipi';

  @override
  String aiApiError(int statusCode) {
    return 'שירות AI החזיר שגיאה ($statusCode).';
  }

  @override
  String get aiTimeoutError => 'הבקשה ארכה יותר מדי זמן. אנא נסה שוב.';

  @override
  String get aiConnectionError =>
      'לא ניתן להתחבר לשירות AI. בדוק את החיבור שלך.';

  @override
  String get aiEmptyResponseError => 'שירות AI החזיר תגובה ריקה.';

  @override
  String get aiInvalidResponseError => 'שירות AI החזיר תגובה לא חוקית.';

  @override
  String get categoryFruits => 'פירות';

  @override
  String get categoryCleaning => 'ניקוי';

  @override
  String get categoryBeverages => 'מַשׁקָאוֹת';

  @override
  String get categoryBakery => 'מַאֲפִיָה';

  @override
  String get categoryMeat => 'בָּשָׂר';

  @override
  String get categoryDairy => 'מַחלָבָה';

  @override
  String get categoryVegetables => 'יְרָקוֹת';

  @override
  String get categoryGrains => 'דגנים ודגנים';

  @override
  String get categoryHygiene => 'טיפול אישי';

  @override
  String get categoryFrozen => 'מזון קפוא';

  @override
  String get categoryCanned => 'שימורים';

  @override
  String get categorySeasonings => 'תבלינים';

  @override
  String get categorySweets => 'ממתקים וקינוחים';

  @override
  String get categoryAlcohol => 'משקאות אלכוהוליים';

  @override
  String get categoryFish => 'לָדוּג';

  @override
  String get categoryColdCuts => 'נקניקים';

  @override
  String get categoryUtilities => 'ציוד לבית';

  @override
  String get categoryPet => 'ציוד לחיות מחמד';

  @override
  String get categoryBaby => 'תִינוֹק';

  @override
  String get categoryOthers => 'אַחֵר';

  @override
  String chatEmptyGreeting(String name) {
    return 'היי $name, אני קיפי 👋';
  }

  @override
  String get chatEmptyGreetingNoName => 'היי, אני קיפי 👋';

  @override
  String get chatEmptyPitch =>
      'אני בונה רשימות, מציע מתכונים ומוצא איפה לשמור. מאיפה נתחיל?';

  @override
  String get aiWelcomeSuggestBarbecue => 'תכנן ברביקיו';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'קיפי, אני מארחת ברביקיו - עזור לי לבנות את רשימת הקניות';

  @override
  String get aiRateLimitError =>
      'יותר מדי הודעות בזמן קצר. המתן מספר שניות ונסה שוב.';

  @override
  String get chatHistoryErrorTitle => 'לא ניתן לטעון את השיחה הזו';

  @override
  String get chatHistoryErrorBody =>
      'משהו השתבש אצלנו. הקש על נסה שוב כדי לנסות שוב.';

  @override
  String get chatHistoryOfflineTitle => 'אתה במצב לא מקוון';

  @override
  String get chatHistoryOfflineBody => 'בדוק את חיבור האינטרנט שלך ונסה שוב.';

  @override
  String get aiGeneratingResponse => 'מייצר תגובה...';

  @override
  String get errorUnexpected => 'משהו לא צפוי קרה. אנא נסה שוב.';

  @override
  String get aiAssistantTooltip => 'פתח את עוזר AI';

  @override
  String get searchItems => 'חפש פריטים';

  @override
  String get onboardingHookContinue => 'התחל';

  @override
  String get onboardingHookItem1 => 'עוף בגריל';

  @override
  String get onboardingHookItem2 => 'גבינת מוצרלה';

  @override
  String get onboardingHookItem3 => 'עגבניות שרי';

  @override
  String get checkItemTooltip => 'בדוק פריט';
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
  String get help => 'עֶזרָה';

  @override
  String get helpListTitle => 'משתמש ברשימה שלך';

  @override
  String get helpListAddItems =>
      'הוסף פריטים עם כפתור + בתחתית, או השתמש בחיפוש כדי לעיין במוצרים';

  @override
  String get helpListAi =>
      'בקש מעוזרת הבינה המלאכותית ליצור, לארגן או להשלים את הרשימה שלך - פשוט הקש על הסמל הנוצץ';

  @override
  String get helpListShoppingMode =>
      'מצב קניות מסתיר פריטים שנרכשו כדי שתוכל להתמקד במה שנשאר';

  @override
  String get helpListOrganize =>
      'גרור פריטים לסדר מחדש, החלק כדי לסמן כנקנו, או השתמש במסננים ובמיון';

  @override
  String get helpListShare =>
      'שתף את הרשימה שלך עם המשפחה או ייצא כ-PDF, Excel או טקסט רגיל';

  @override
  String get import => 'ייבוא';

  @override
  String get rename => 'שינוי שם';

  @override
  String get upgrade => 'שדרוג';

  @override
  String get clear => 'ניקוי';

  @override
  String get clearPurchasedTitle => 'נקה פריטים שנרכשו';

  @override
  String get clearPurchasedConfirmMessage =>
      'להסיר את כל הפריטים שנרכשו מרשימה זו? זה לא ניתן לביטול.';

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
  String get errorCreateList =>
      'לא ניתן ליצור רשימה. בדוק את החיבור שלך ונסה שוב.';

  @override
  String get errorShareCode =>
      'שגיאה ביצירת קוד שיתוף. בדוק את החיבור שלך ונסה שוב.';

  @override
  String get errorQuickAdd =>
      'לא ניתן להוסיף פריט. בדוק את החיבור שלך ונסה שוב.';

  @override
  String get errorLoadList =>
      'לא ניתן היה לטעון את הרשימות שלך. אנא צור רשימה חדשה כדי להתחיל.';

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
  String pantryDeficitCount(int count, String unit) {
    return 'חסר $count$unit';
  }

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
  String get scanProductTitle => 'סרוק מוצר';

  @override
  String get positionBarcodeCenter => 'מקם את הברקוד במרכז';

  @override
  String get product => 'מוּצָר';

  @override
  String get settingsAppBar => 'הגדרות';

  @override
  String get preferencesSection => 'העדפות';

  @override
  String get aiSection => 'עוזר AI';

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
  String get themeMode => 'מצב ערכת נושא';

  @override
  String get chooseThemeMode => 'בחר מצב ערכת נושא';

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
  String get myAchievements => 'ההישגים שלי';

  @override
  String get itemsPurchased => 'פריטים שנרכשו';

  @override
  String get totalSavings => 'סך החיסכון';

  @override
  String get currentStreak => 'רצף נוכחי';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ימים',
      one: '$count day',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'תגים לא נעולים';

  @override
  String get badgeBeginner => 'מַתחִיל';

  @override
  String get badgeOrganized => 'מְאוּרגָן';

  @override
  String get badgeSavingMaster => 'מאסטר הצלה';

  @override
  String get badgeSuperPlanner => 'סופר מתכנן';

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
  String get budgetGoalInvalidAmount => 'הזן ערך גדול מאפס';

  @override
  String get budgetPartialEstimateHint => '~ כולל הערכות תמחור חלקיות';

  @override
  String get budgetGoalSaved => 'יעד התקציב נשמר';

  @override
  String get budgetGoalRemoved => 'יעד התקציב הוסר';

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
    return '$purchased מתוך $total פריטים';
  }

  @override
  String progressBudget(String amount) {
    return 'תקציב: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'סה\"כ: $amount';
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
  String get keepAdding => 'תמשיך להוסיף';

  @override
  String get keepAddingSubtitle =>
      'השאר את הגיליון פתוח כדי להוסיף פריטים מרובים';

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
  String get newChatConfirmTitle => 'שיחה חדשה';

  @override
  String get newChatConfirmMessage =>
      'להתחיל שיחה חדשה? השיחה הנוכחית שלך תאבד.';

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
  String get chatEmptySubtitle =>
      'בקש הצעות לפריטים, מתכונים או טיפים לשמירה כדי להתחיל.';

  @override
  String get chatEmptyTitle => 'הצ\'אט שלך ריק';

  @override
  String chatError(String error) {
    return 'שגיאה בטעינת הצ\'אט: $error';
  }

  @override
  String get goodResponse => 'תגובה טובה';

  @override
  String get badResponse => 'תגובה גרועה';

  @override
  String get scrollToBottom => 'גלול למטה';

  @override
  String get somethingWentWrong => 'משהו השתבש';

  @override
  String get editMessage => 'ערוך הודעה';

  @override
  String get searchConversations => 'חפש שיחות';

  @override
  String get dateGroupToday => 'הַיוֹם';

  @override
  String get dateGroupYesterday => 'אֶתמוֹל';

  @override
  String get dateGroupPrevious7Days => '7 הימים הקודמים';

  @override
  String get dateGroupOlder => 'ישן יותר';

  @override
  String get aiAssistantTitle => 'עוזר AI';

  @override
  String get closeSheet => 'לִסְגוֹר';

  @override
  String get scanBarcodeTitle => 'סרוק ברקוד';

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
  String get undo => 'בטל';

  @override
  String get newChatStarted => 'צ\'אט חדש התחיל';

  @override
  String get quickAddToList => 'הוסף לרשימה';

  @override
  String get aiCapabilitiesTitle => 'מה אני יכול לעשות?';

  @override
  String get aiCapabilitiesLists => 'רשימות קניות';

  @override
  String get aiCapabilitiesBudget => 'תקציב ומחירים';

  @override
  String get aiCapabilitiesRecipes => 'מתכונים ותפריטים';

  @override
  String get aiCapabilitiesOrganize => 'אִרגוּן';

  @override
  String get marketModeDescription => 'סמן פריטים בזמן שאתה קונה';

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
  String get recipeAddError => 'לא ניתן להוסיף לרשימה שלך. אנא נסה שוב.';

  @override
  String get recipeTapToCheck => 'הקש על מרכיב כדי לסמן אותו בזמן הבישול';

  @override
  String get recipeIngredientInPantry => 'במזווה';

  @override
  String get recipeIngredientLowPantry => 'נמוך במזווה';

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
  String paywallSavePercent(int percent) {
    return 'חסוך $percent%';
  }

  @override
  String paywallPricePerMonth(String price) {
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
  String get paywallTimelineToday => 'הַיוֹם';

  @override
  String get paywallTimelineTodayDesc =>
      'בטל את הנעילה של גישה מלאה באופן מיידי';

  @override
  String paywallTimelineDay(int day) {
    return 'יום $day';
  }

  @override
  String get paywallTimelineReminderDesc => 'אנו מזכירים לך לפני סיום המשפט';

  @override
  String get paywallTimelineChargeDesc => 'המנוי שלך מתחיל - בטל בכל עת';

  @override
  String get paywallHeroFeatureTitle => 'עוזר קניות בינה מלאכותית';

  @override
  String get paywallHeroFeatureDesc =>
      'דבר או הדבק רשימה שלמה - בינה מלאכותית ממיינת, מסווגת ומתקצבת אותה בשניות';

  @override
  String get paywallBasedOnAnswers => 'מותאם אישית מהתשובות שלך';

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
  String get paywallWelcomeOfferBadge => '🎁 הצעת קבלת פנים';

  @override
  String get paywallFreeTier => 'חינם: 3 רשימות';

  @override
  String get paywallProTier => 'יתרונות: ללא הגבלה';

  @override
  String get firstItemAddedSnackbar => 'פריט ראשון נוסף! התחלה מעולה 🛒';

  @override
  String paywallCtaTrialDays(int days) {
    return 'התחל בחינם - $days ימים';
  }

  @override
  String get premiumUpgrade => 'שדרג כדי לפתוח';

  @override
  String get itemRemoved => 'הפריט הוסר';

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
  String get pantryItemAdded => 'פריט נוסף';

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
  String get recipeYieldServings => 'תניב מנות';

  @override
  String get recipeManualTotalCost => 'עלות כוללת ידנית';

  @override
  String get recipeManualTotalCostHint => 'השאר ריק להערכת מחירי הרכיבים.';

  @override
  String get recipeEstimatedTotalCost => 'עלות כוללת משוערת';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / מנה';
  }

  @override
  String recipeServesCount(int count) {
    return 'משרת $count';
  }

  @override
  String get recipeEstimatePartial => 'הערכה חלקית מבוססת על מרכיבים עם מחיר.';

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
  String get mealPlannerEstimatePartial =>
      'הערכה מבוססת על מתכונים עם נתוני מחיר חלקיים.';

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
  String mealPlannerBudgetMonthCost(String amount) {
    return 'חודש: $amount';
  }

  @override
  String mealPlannerBudgetWeekCost(String amount) {
    return 'שבוע: $amount';
  }

  @override
  String mealPlannerBudgetTodayCost(String amount) {
    return 'היום: $amount';
  }

  @override
  String get mealPlannerBudgetRemoveGoal => 'הסר את המטרה';

  @override
  String get mealPlannerBudgetGoalNav => 'תקציב מתכנן ארוחות';

  @override
  String get mealPlannerBudgetGoalSubtitle => 'יעד הוצאה חודשי לתכנון ארוחות';

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
  String get catalogRareBadge => 'נָדִיר';

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
  String get catalogCategories => 'קטגוריות';

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
  String get mealPlannerManageTypes => 'ניהול סוגי ארוחות';

  @override
  String get mealPlannerAddType => 'הוסף סוג ארוחה';

  @override
  String get mealPlannerEditType => 'ערוך את סוג הארוחה';

  @override
  String get mealPlannerTypeName => 'שֵׁם';

  @override
  String get mealPlannerTypeColor => 'צֶבַע';

  @override
  String get mealPlannerTypeIcon => 'סמל';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      'האם אתה בטוח שברצונך למחוק את סוג הארוחה הזה? ארוחות מתוכננות עם סוג זה יישארו.';

  @override
  String get mealPlannerTypeNameEmpty => 'השם לא יכול להיות ריק';

  @override
  String get mealPlannerTypeDeleteError => 'לא ניתן למחוק את סוג הארוחה הזה.';

  @override
  String get mealPlannerCustomTypeLabel => 'סוג מותאם אישית';

  @override
  String get mealPlannerDefaultTypeLabel => 'סוג ברירת מחדל';

  @override
  String get mealPlannerDuplicate => 'ארוחה כפולה';

  @override
  String get mealPlannerSelectDestinationDay => 'שכפל ל...';

  @override
  String get mealPlannerCurrentDayLabel => 'יום נוכחי';

  @override
  String get mealPlannerDuplicateSuccess => 'הארוחה שוכפלה בהצלחה!';

  @override
  String get expirationDate => 'תַאֲרִיך תְפוּגָה';

  @override
  String get notInformed => 'לא מודיעים';

  @override
  String get skip => 'לְדַלֵג';

  @override
  String get onboardingSkip => 'דלג לעת עתה';

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
  String get errorLoadingItems => 'שגיאה בטעינת פריטים';

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

  @override
  String get aiWelcomeContent =>
      'שלום! 👋 אני **קיפי**, עוזרת הקניות והמתכונים האישית שלך!\n\nאני כאן כדי לעזור לך:\n🛒 **ארגן** את הקניות שלך לפי קטגוריות באופן אוטומטי\n💰 **עקוב** אחר התקציב שלך ותן לך טיפים לחיסכון בכסף\n🍲 **הצע** מתכונים טעימים עם מה שכבר יש לכם\n\nאיך אני יכול לעזור לך היום? אתה יכול להתחיל ביצירת הרשימה הראשונה שלך!';

  @override
  String get aiWelcomeSuggestCreateList => 'צור את הרשימה הראשונה שלי';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'קיפי, עזור לי ליצור את רשימת הקניות הראשונה שלי';

  @override
  String get aiWelcomeSuggestSave => 'איך לחסוך כסף?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'קיפי, איך אתה יכול לעזור לי לחסוך כסף על מצרכים?';

  @override
  String get suggestionMilk => 'חָלָב';

  @override
  String get suggestionBread => 'לֶחֶם';

  @override
  String get suggestionEggs => 'ביצים';

  @override
  String get suggestionCoffee => 'קָפֶה';

  @override
  String get suggestionRice => 'אוֹרֶז';

  @override
  String get suggestionFruits => 'פירות';

  @override
  String get recipeIngredientSingular => 'מרכיב אחד';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count מרכיבים';
  }

  @override
  String get pantryAvailabilityAll => 'מוּכָן!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return '$availableCount/$totalCount במזווה';
  }

  @override
  String onboardingProgress(int current, int total) {
    return 'שלב $current מתוך $total';
  }

  @override
  String get onboardingDemoHeadline =>
      'ספר לנו מה אתה מתכנן. קיפי בונה את הרשימה.';

  @override
  String get onboardingDemoSubtitle => 'קבל פריטים מאורגנים תוך שניות.';

  @override
  String get onboardingPersonalizationEffect =>
      'זה עוזר לקיפי להציע פריטים וכמויות רלוונטיות יותר.';

  @override
  String get onboardingPersonalizeWithName => 'התאם אישית עם השם שלי';

  @override
  String get onboardingCreateFirstList => 'צור את הרשימה הראשונה שלי';

  @override
  String get onboardingPromptWeekly => 'תכננו את היסודות השבועיים שלי';

  @override
  String get onboardingPromptEvent => 'אני מכין משהו מיוחד';

  @override
  String get onboardingPromptEssentials => 'הציעו לי את הדברים החיוניים';

  @override
  String get onboardingFallbackGrocery =>
      '🍚 אורז|🫘 שעועית|🥛 חלב|🥚 ביצים|🍞 לחם|🍎 פירות';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 תחבושות דביקות|🌡️ מדחום|🧴 חיטוי|😷 מסכות פנים|🧼 חומר לחיטוי ידיים';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 עגבניות|🧅 בצל|🧄 שום|🥚 ביצים|🧀 גבינה|🌿 עשבי תיבול טריים';

  @override
  String get onboardingFallbackHome =>
      '🧻 מגבות נייר|🧽 ספוגים|🧴 חומר ניקוי|🗑️ שקיות אשפה|🧹 מטליות ניקוי';

  @override
  String get onboardingFallbackPet =>
      '🥣 מזון לחיות מחמד|🦴 פינוקים|🧼 שמפו לחיות מחמד|🧸 צעצוע|🧻 שקיות פסולת';

  @override
  String get onboardingListSaveFailed =>
      'הכנתי את הפריטים, אבל לא הצלחתי לשמור את הרשימה. נסה שוב לשמור אותו באפליקציה.';

  @override
  String onboardingListCreated(int count) {
    return 'הרשימה שלך מוכנה: $count פריטים מאורגנים עבורך.';
  }

  @override
  String get onboardingContinueToOffer => 'לְהַמשִׁיך';

  @override
  String onboardingPaywallListReady(int count) {
    return 'הרשימה הראשונה שלך מוכנה · $count פריטים';
  }

  @override
  String get paywallContinueFree => 'המשך עם הגרסה החינמית';

  @override
  String get paywallPurchasePending =>
      'התשלום שלך ממתין לאישור. הגישה תשוחרר אוטומטית לאחר האישור.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return 'היום: ללא תשלום. לאחר מכן $price/שנה לאחר $days ימים. בטל בכל עת.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return 'היום: ללא תשלום. לאחר מכן $price/חודש לאחר $days ימים. בטל בכל עת.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price לשנה. בטל בכל עת.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/חודש. בטל בכל עת.';
  }

  @override
  String get obHookTitle => 'קניות חכמות יותר מתחילות כאן';

  @override
  String get obHookSubtitle =>
      'רשימות מבוססות בינה מלאכותית שחוסכות לך זמן וכסף, בכל נסיעה.';

  @override
  String get obHookSocial => 'מהימן על ידי אלפי קונים ברחבי העולם';

  @override
  String get obHookCta => 'התחל';

  @override
  String get obQuizHouseholdTitle => 'למי אתה קונה?';

  @override
  String get obQuizHouseholdSolo => 'רק אני';

  @override
  String get obQuizHouseholdCouple => 'אני והשותף שלי';

  @override
  String get obQuizHouseholdFamilySmall => 'משפחה בת 3-4';

  @override
  String get obQuizHouseholdFamilyLarge => 'משפחה בת 5+';

  @override
  String get obQuizFrequencyTitle => 'באיזו תדירות אתה קונה מצרכים?';

  @override
  String get obQuizFrequencyDaily => 'כמעט כל יום';

  @override
  String get obQuizFrequencyWeekly => 'פעם בשבוע';

  @override
  String get obQuizFrequencyBiweekly => 'כל שבועיים';

  @override
  String get obQuizFrequencyMonthly => 'הובלה חודשית גדולה';

  @override
  String get obQuizPainTitle => 'מה הכי מתסכל אותך בקניות?';

  @override
  String get obQuizPainForget => 'אני תמיד שוכח פריטים';

  @override
  String get obQuizPainOverspend => 'אני מוציא יותר מהמתוכנן';

  @override
  String get obQuizPainWaste => 'האוכל הולך לפח בבית';

  @override
  String get obQuizPainTime => 'זה לוקח יותר מדי זמן';

  @override
  String get obQuizSavingsTitle => 'כמה תרצו לחסוך מדי חודש?';

  @override
  String get obQuizSavingsSmall => 'קצת - כל חלק חשוב';

  @override
  String get obQuizSavingsMedium => 'בסביבות 10% מחשבון המכולת שלי';

  @override
  String get obQuizSavingsLarge => 'כמה שאפשר';

  @override
  String get obQuizMethodTitle => 'איך מכינים רשימות קניות היום?';

  @override
  String get obQuizMethodPaper => 'עט ונייר';

  @override
  String get obQuizMethodNotes => 'אפליקציית הערות';

  @override
  String get obQuizMethodMemory => 'אני שומר את זה בראש';

  @override
  String get obQuizMethodNone => 'אני לא עושה רשימות';

  @override
  String get obSocialTitle => 'אתה בחברה טובה';

  @override
  String get obSocialSubtitle => 'קונים כמוך כבר חוסכים עם KipiList';

  @override
  String get obSocialQuote1 =>
      'אני לא שוכח כלום יותר. ה-AI בונה את הרשימה שלי בשניות.';

  @override
  String get obSocialQuote2 =>
      'קיצרנו את חשבון המכולת שלנו באופן ניכר בחודש הראשון.';

  @override
  String get obSocialQuote3 =>
      'שיתוף הרשימה עם בן זוגי סיים את כאוס הקניות שלנו.';

  @override
  String get obLoadingTitle => 'בניית תוכנית אישית...';

  @override
  String get obLoadingStepProfile => 'התאמה למשק הבית שלך';

  @override
  String get obLoadingStepHabits => 'התאמה לשגרת הקניות שלך';

  @override
  String get obLoadingStepSavings => 'אופטימיזציה של אסטרטגיית החיסכון שלך';

  @override
  String get obLoadingStepLists => 'הכנת הרשימות החכמות שלך';

  @override
  String get obRevealTitle => 'התוכנית שלך מוכנה!';

  @override
  String get obRevealSubtitle => 'הנה איך KipiList יעבוד בשבילך';

  @override
  String get obRevealSavingsCaption => 'חיסכון צפוי עם KipiList';

  @override
  String obRevealMonth(int n) {
    return 'חודש $n';
  }

  @override
  String get obRevealFeatureAi => 'AI בונה ומארגן את הרשימות שלך';

  @override
  String get obRevealFeatureBudget => 'מעקב אחר ההוצאות מול המטרה שלך';

  @override
  String get obRevealFeaturePantry => 'מעקב אחר המזווה מקצץ בזבוז מזון';

  @override
  String get obRevealFeatureShare => 'שיתוף בזמן אמת עם משק הבית שלך';

  @override
  String get obPaywallTitle => 'בטל את נעילת התוכנית שלך';

  @override
  String get obPaywallRetry => 'נסה שוב';

  @override
  String get obLoginTitle => 'שמור את התוכנית שלך';

  @override
  String get obLoginSubtitle => 'היכנס כדי שהרשימות שלך יסונכרנו בין מכשירים';

  @override
  String get obLoginGoogle => 'המשך עם גוגל';

  @override
  String get obLoginApple => 'המשך עם אפל';

  @override
  String get obLoginSkip => 'לא עכשיו';

  @override
  String get obLoginError => 'הכניסה נכשלה. נסה שוב או דלג לעת עתה.';

  @override
  String get searchMessages => 'חפש הודעות...';

  @override
  String get deletedList => 'רשימה שנמחקה';

  @override
  String get openConversation => 'שיחה פתוחה';

  @override
  String get userRole => 'אַתָה';

  @override
  String get assistantRole => 'עוֹזֵר';

  @override
  String get agentActionsRunning => 'הפעלת פעולות...';

  @override
  String get agentActionsFailed => 'הפעלת הפעולות נכשלה';

  @override
  String get agentActionsPremium => 'פעולות דורשות פרימיום';

  @override
  String agentActionsCompleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count actions completed',
      one: '1 action completed',
    );
    return '$_temp0';
  }

  @override
  String get undoChanges => 'בטל שינויים';

  @override
  String premiumStepDescription(String description) {
    return '$description (פרימיום)';
  }

  @override
  String get itemAddedToList => 'פריט נוסף לרשימה.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return 'מצב קודם: $quantity $unit [$category]$price';
  }

  @override
  String itemsAffectedByAction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items affected by the action.',
      one: '1 item affected by the action.',
    );
    return '$_temp0';
  }

  @override
  String get premiumActionsPrompt =>
      'הירשם ל-Premium כדי לפתוח פעולות אוטומטיות.';

  @override
  String get viewPlans => 'צפה בתוכניות';

  @override
  String get artifactSynced => 'מסונכרן';

  @override
  String get artifactBudgetLabel => 'תַקצִיב:';

  @override
  String get totalEstimatedLabel => 'סה\"כ משוער';

  @override
  String get quickActionPantry => 'צפה במזווה';

  @override
  String get quickActionAi => 'צ\'אט עם Kipi';

  @override
  String aiApiError(int statusCode) {
    return 'שירות AI החזיר שגיאה ($statusCode).';
  }

  @override
  String get aiTimeoutError => 'הבקשה ארכה יותר מדי זמן. אנא נסה שוב.';

  @override
  String get aiConnectionError =>
      'לא ניתן להתחבר לשירות AI. בדוק את החיבור שלך.';

  @override
  String get aiEmptyResponseError => 'שירות AI החזיר תגובה ריקה.';

  @override
  String get aiInvalidResponseError => 'שירות AI החזיר תגובה לא חוקית.';

  @override
  String get categoryFruits => 'פירות';

  @override
  String get categoryCleaning => 'ניקוי';

  @override
  String get categoryBeverages => 'מַשׁקָאוֹת';

  @override
  String get categoryBakery => 'מַאֲפִיָה';

  @override
  String get categoryMeat => 'בָּשָׂר';

  @override
  String get categoryDairy => 'מַחלָבָה';

  @override
  String get categoryVegetables => 'יְרָקוֹת';

  @override
  String get categoryGrains => 'דגנים ודגנים';

  @override
  String get categoryHygiene => 'טיפול אישי';

  @override
  String get categoryFrozen => 'מזון קפוא';

  @override
  String get categoryCanned => 'שימורים';

  @override
  String get categorySeasonings => 'תבלינים';

  @override
  String get categorySweets => 'ממתקים וקינוחים';

  @override
  String get categoryAlcohol => 'משקאות אלכוהוליים';

  @override
  String get categoryFish => 'לָדוּג';

  @override
  String get categoryColdCuts => 'נקניקים';

  @override
  String get categoryUtilities => 'ציוד לבית';

  @override
  String get categoryPet => 'ציוד לחיות מחמד';

  @override
  String get categoryBaby => 'תִינוֹק';

  @override
  String get categoryOthers => 'אַחֵר';

  @override
  String chatEmptyGreeting(String name) {
    return 'היי $name, אני קיפי 👋';
  }

  @override
  String get chatEmptyGreetingNoName => 'היי, אני קיפי 👋';

  @override
  String get chatEmptyPitch =>
      'אני בונה רשימות, מציע מתכונים ומוצא איפה לשמור. מאיפה נתחיל?';

  @override
  String get aiWelcomeSuggestBarbecue => 'תכנן ברביקיו';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'קיפי, אני מארחת ברביקיו - עזור לי לבנות את רשימת הקניות';

  @override
  String get aiRateLimitError =>
      'יותר מדי הודעות בזמן קצר. המתן מספר שניות ונסה שוב.';

  @override
  String get chatHistoryErrorTitle => 'לא ניתן לטעון את השיחה הזו';

  @override
  String get chatHistoryErrorBody =>
      'משהו השתבש אצלנו. הקש על נסה שוב כדי לנסות שוב.';

  @override
  String get chatHistoryOfflineTitle => 'אתה במצב לא מקוון';

  @override
  String get chatHistoryOfflineBody => 'בדוק את חיבור האינטרנט שלך ונסה שוב.';

  @override
  String get aiGeneratingResponse => 'מייצר תגובה...';

  @override
  String get errorUnexpected => 'משהו לא צפוי קרה. אנא נסה שוב.';

  @override
  String get aiAssistantTooltip => 'פתח את עוזר AI';

  @override
  String get searchItems => 'חפש פריטים';

  @override
  String get onboardingHookContinue => 'התחל';

  @override
  String get onboardingHookItem1 => 'עוף בגריל';

  @override
  String get onboardingHookItem2 => 'גבינת מוצרלה';

  @override
  String get onboardingHookItem3 => 'עגבניות שרי';

  @override
  String get checkItemTooltip => 'בדוק פריט';
}
