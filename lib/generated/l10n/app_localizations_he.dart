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
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'נבחרו $count',
      many: 'נבחרו $count',
      two: 'נבחרו $count',
      one: 'נבחר $count',
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
  String get chatHintBlocked => 'Unlock AI to chat';

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
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get aiTeaserFallback =>
      'Subscribe to Premium to unlock the full response and get unlimited AI tips for your shopping...';

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
  String get paywallLoadingError => 'Error loading offers. Try again.';

  @override
  String get paywallPurchaseError => 'Could not complete purchase. Try again.';

  @override
  String get paywallRestoreError => 'No active subscription found to restore.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAYS FREE';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count WEEKS FREE',
      one: '$count WEEK FREE',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MONTHS FREE',
      one: '$count MONTH FREE',
    );
    return '$_temp0';
  }

  @override
  String get paywallFeaturesTitle => 'Everything you need:';

  @override
  String get paywallFeatureUnlimitedLists => 'Unlimited Lists';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Expense Control';

  @override
  String get paywallFeatureSharing => 'Sharing';

  @override
  String get paywallBeforeAfterTitle => 'AI Before and After:';

  @override
  String get paywallLabelCommon => 'Common';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'rice';

  @override
  String get paywallBeforeItem2 => 'soap';

  @override
  String get paywallBeforeItem3 => 'meat';

  @override
  String get paywallBeforeItem4 => 'bread';

  @override
  String get paywallAfterItem1 => 'Grains';

  @override
  String get paywallAfterItem2 => 'Cleaning';

  @override
  String get paywallAfterItem3 => 'Meats';

  @override
  String get paywallAfterItem4 => 'Bakery';

  @override
  String get paywallTestimonialsTitle => 'What our users say:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organizes my shopping in seconds. I save 20 min per market trip.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'I never forgot a list item again. The AI chat is sensational!';

  @override
  String get paywallSocialProof => '+2,400 families use it';

  @override
  String get paywallCtaUnlock => 'Unlock PRO';

  @override
  String get paywallBestValue => 'BEST VALUE';

  @override
  String get paywallMostPopular => 'MOST POPULAR';

  @override
  String get paywallSafeCheckout => 'Secure payment';

  @override
  String get paywallSelectPlan => 'Choose your plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SAVE $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Only $price/month';
  }

  @override
  String get paywallPackageAnnual => 'Annual Plan';

  @override
  String get paywallPackageMonthly => 'Monthly Plan';

  @override
  String get paywallPackageLifetime => 'Lifetime Access';

  @override
  String get paywallCancelAnytime => 'Cancel anytime. No commitment.';

  @override
  String get paywallPolicy => 'Privacy Policy';

  @override
  String get paywallTerms => 'Terms of Use';

  @override
  String get paywallRestore => 'Restore';

  @override
  String get paywallHeroHeadline => 'Kipi AI always by your side';

  @override
  String get paywallHeroSubtitle =>
      'Add items, organize lists and save time with AI in your pocket';

  @override
  String get paywallBenefit1Desc => 'Adds, organizes and suggests items 24/7';

  @override
  String get paywallBenefit2Desc => 'No 3-list limit';

  @override
  String get paywallBenefit3Desc => 'Expense tracking and family lists';

  @override
  String get paywallPackageMonthlyDesc => 'Full flexibility';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Start free — $days days';
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
      one: 'יש לרכוש $deficit פריט',
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
  String shareReferralText(Object url) {
    return 'אני משתמש ב- KipiList כדי לארגן את הקניות שלי! הורד דרך הקישור שלי ושנינו מקבלים 7 ימים של פרימיום בחינם: $url';
  }

  @override
  String get shareReferralSubject => 'קבלו 7 ימים של KipiList Premium!';
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
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'נבחרו $count',
      many: 'נבחרו $count',
      two: 'נבחרו $count',
      one: 'נבחר $count',
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
      one: 'יש לרכוש $deficit פריט',
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
  String shareReferralText(Object url) {
    return 'אני משתמש ב- KipiList כדי לארגן את הקניות שלי! הורד דרך הקישור שלי ושנינו מקבלים 7 ימים של פרימיום בחינם: $url';
  }

  @override
  String get shareReferralSubject => 'קבלו 7 ימים של KipiList Premium!';
}
