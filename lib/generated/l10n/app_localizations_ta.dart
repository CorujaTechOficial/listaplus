// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'ஷாப்பிங் பட்டியல்';

  @override
  String get lists => 'பட்டியல்கள்';

  @override
  String get pantry => 'சரக்கறை';

  @override
  String get navChat => 'அரட்டை';

  @override
  String get navRecipes => 'சமையல் குறிப்புகள்';

  @override
  String get navLists => 'பட்டியல்கள்';

  @override
  String get navMealPlanner => 'மெனு';

  @override
  String get cancel => 'ரத்துசெய்';

  @override
  String get save => 'சேமி';

  @override
  String get create => 'உருவாக்கு';

  @override
  String get add => 'சேர்';

  @override
  String get remove => 'அகற்று';

  @override
  String get delete => 'நீக்கு';

  @override
  String get edit => 'திருத்து';

  @override
  String get copy => 'நகலெடு';

  @override
  String get next => 'அடுத்து';

  @override
  String get retry => 'மீண்டும் முயற்சி';

  @override
  String get regenerate => 'மீண்டும் உருவாக்கு';

  @override
  String get copiedToClipboard => 'கிளிப்போர்டுக்கு நகலெடுக்கப்பட்டது';

  @override
  String get confirm => 'உறுதிப்படுத்து';

  @override
  String get close => 'மூடு';

  @override
  String get import => 'இறக்குமதி';

  @override
  String get rename => 'மறுபெயரிடு';

  @override
  String get upgrade => 'மேம்படுத்து';

  @override
  String get clear => 'அழி';

  @override
  String error(String message) {
    return 'பிழை: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'பிழை: $message';
  }

  @override
  String get purchaseError =>
      'கொள்முதலைச் செயலாக்குவதில் பிழை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get restoreError =>
      'கொள்முதல்களை மீட்டெடுப்பதில் பிழை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get loading => 'ஏற்றுகிறது...';

  @override
  String get fieldRequired => 'தேவையான புலம்';

  @override
  String get addedFeedback => 'சேர்க்கப்பட்டது!';

  @override
  String get profile => 'சுயவிவரம்';

  @override
  String get exitShoppingMode => 'ஷாப்பிங் பயன்முறையிலிருந்து வெளியேறு';

  @override
  String get exit => 'வெளியேறு';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count தேர்ந்தெடுக்கப்பட்டன',
      one: '$count தேர்ந்தெடுக்கப்பட்டது',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'மதிப்பிடப்பட்டது';

  @override
  String get alreadyPurchased => 'ஏற்கனவே வாங்கப்பட்டது';

  @override
  String get clearList => 'பட்டியலை அழி';

  @override
  String get clearPurchased => 'வாங்கியவற்றை அழி';

  @override
  String get share => 'பகிர்';

  @override
  String get shareViaCode => 'குறியீடு மூலம் பகிர்';

  @override
  String get importViaCode => 'குறியீடு மூலம் இறக்குமதி';

  @override
  String get listAssistant => 'பட்டியல் உதவியாளர்';

  @override
  String get globalAssistant => 'உலகளாவிய உதவியாளர்';

  @override
  String get becomePremium => 'பிரீமியமாகுங்கள்';

  @override
  String get manageSubscription => 'சந்தாவை நிர்வகி';

  @override
  String get completePurchase => 'கொள்முதலை முடி';

  @override
  String get confirmClearList => 'அனைத்து பொருட்களையும் அகற்றவா?';

  @override
  String get shareListTitle => 'பட்டியலைப் பகிர்';

  @override
  String get shareThisCode => 'இந்த குறியீட்டைப் பகிரவும்:';

  @override
  String get validForLimitedTime =>
      'குறிப்பிட்ட காலத்திற்கு மட்டும் செல்லுபடியாகும்';

  @override
  String get importListTitle => 'பட்டியலை இறக்குமதி செய்';

  @override
  String get enterCodeHint => 'குறியீட்டை உள்ளிடுக';

  @override
  String get confirmArchiveTitle => 'கொள்முதலை முடி';

  @override
  String get confirmArchiveContent =>
      'இந்த கொள்முதலை முடித்து பட்டியலை காப்பகப்படுத்தவா?';

  @override
  String get complete => 'முடி';

  @override
  String get listArchived => 'பட்டியல் வெற்றிகரமாக காப்பகப்படுத்தப்பட்டது!';

  @override
  String listAdded(String listName) {
    return '$listName சேர்க்கப்பட்டது!';
  }

  @override
  String get buy => 'வாங்கு';

  @override
  String get unmark => 'குறியை நீக்கு';

  @override
  String confirmDeleteItems(int count) {
    return '$count பொருள்(களை) அகற்றவா?';
  }

  @override
  String get confirmDeleteTitle => 'உறுதிப்படுத்து';

  @override
  String confirmContent(int count) {
    return '$count பொருள்(களை) அகற்றவா?';
  }

  @override
  String get archiveList => 'பட்டியலை காப்பகப்படுத்து';

  @override
  String get pantryAppBar => 'சரக்கறை';

  @override
  String get generateShoppingList => 'ஷாப்பிங் பட்டியலை உருவாக்கு';

  @override
  String get pantryEmpty => 'காலி சரக்கறை';

  @override
  String get pantryEmptySubtitle =>
      'நீங்கள் வீட்டில் வைத்திருக்க விரும்பும் பொருட்களைச் சேர்க்கவும்';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit பொருள்(கள்) வாங்கப்பட வேண்டும்';
  }

  @override
  String get noItemsToBuy => 'வாங்க வேண்டிய பொருட்கள் எதுவும் இல்லை';

  @override
  String get newPantryList => 'சரக்கறை ஷாப்பிங்';

  @override
  String get newListTitle => 'புதிய ஷாப்பிங் பட்டியல்';

  @override
  String itemsWillBeAdded(int count) {
    return '$count பொருள்(கள்) சேர்க்கப்படும்';
  }

  @override
  String get listNameLabel => 'பட்டியல் பெயர்';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" பட்டியல் $count பொருட்களுடன் உருவாக்கப்பட்டது';
  }

  @override
  String get noTracking => 'கண்காணிப்பு இல்லை';

  @override
  String get markAsPurchased => 'வாங்கியதாகக் குறி';

  @override
  String editPantryItem(String name) {
    return '$nameஐத் திருத்து';
  }

  @override
  String get idealQuantity => 'உகந்த அளவு';

  @override
  String get currentQuantity => 'தற்போதைய அளவு';

  @override
  String get consumed => 'நுகரப்பட்டது';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit ஆக மீண்டும் நிரப்பப்பட்டது';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\"ஐ சரக்கறையிலிருந்து அகற்றவா?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$nameஐத் திருத்து';
  }

  @override
  String get scanProductTitle => 'தயாரிப்பு ஸ்கேன்';

  @override
  String get positionBarcodeCenter => 'பார்கோடை மையத்தில் வைக்கவும்';

  @override
  String get product => 'தயாரிப்பு';

  @override
  String get settingsAppBar => 'அமைப்புகள்';

  @override
  String get language => 'மொழி';

  @override
  String get languagePortuguese => 'போர்ச்சுகீஸ் (பிரேசில்)';

  @override
  String get languageEnglish => 'ஆங்கிலம்';

  @override
  String get languageSystem => 'கணினி இயல்புநிலை';

  @override
  String get chooseLanguage => 'மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get searchLanguage => 'தேடல் மொழி...';

  @override
  String get currency => 'நாணயம்';

  @override
  String get chooseCurrency => 'நாணயத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get searchCurrency => 'நாணயத்தைத் தேடு...';

  @override
  String get appearance => 'தோற்றம்';

  @override
  String get light => 'ஒளி';

  @override
  String get system => 'கணினி';

  @override
  String get dark => 'இருள்';

  @override
  String get themeColor => 'தீம் நிறம்';

  @override
  String get dynamicColors => 'டைனமிக் நிறங்கள்';

  @override
  String get dynamicColorsSubtitle =>
      'உங்கள் வால்பேப்பரின் அடிப்படையில் வண்ணங்களைப் பயன்படுத்தவும்';

  @override
  String get dynamicColorsEnabledWarning =>
      'தீம் வண்ணம் செயல்பட டைனமிக் வண்ணங்களை முடக்கவும்';

  @override
  String get finance => 'நிதி';

  @override
  String get monthlyBudgetNav => 'மாதாந்திர பட்ஜெட்';

  @override
  String get budgetSubtitle => 'உங்கள் மாதாந்திர செலவுகளைக் கண்காணிக்கவும்';

  @override
  String get data => 'தரவு';

  @override
  String get backupNav => 'காப்புப்பிரதி';

  @override
  String get backupSubtitle =>
      'உங்கள் தரவை ஏற்றுமதி அல்லது இறக்குமதி செய்யவும்';

  @override
  String get about => 'பற்றி';

  @override
  String get version => 'பதிப்பு';

  @override
  String get privacy => 'தனியுரிமை';

  @override
  String get termsOfUse => 'பயன்பாட்டு விதிமுறைகள்';

  @override
  String get myAchievements => 'எனது சாதனைகள்';

  @override
  String get itemsPurchased => 'வாங்கிய பொருட்கள்';

  @override
  String get totalSavings => 'மொத்த சேமிப்பு';

  @override
  String get currentStreak => 'தற்போதைய ஸ்ட்ரீக்';

  @override
  String streakDays(int count) {
    return '$days நாட்கள்';
  }

  @override
  String get unlockedBadges => 'திறக்கப்பட்ட பேட்ஜ்கள்';

  @override
  String get badgeBeginner => 'ஆரம்பநிலை';

  @override
  String get badgeOrganized => 'ஏற்பாடு செய்யப்பட்டது';

  @override
  String get badgeSavingMaster => 'சேவிங் மாஸ்டர்';

  @override
  String get badgeSuperPlanner => 'சூப்பர் பிளானர்';

  @override
  String get backupTitle => 'காப்புப்பிரதி';

  @override
  String get backupPremiumDescription =>
      'காப்புப்பிரதி மற்றும் ஏற்றுமதி ஒரு பிரீமியம் அம்சம்';

  @override
  String get exportData => 'தரவை ஏற்றுமதி செய்';

  @override
  String get exportDataSubtitle =>
      'அனைத்து பட்டியல்களையும் JSON ஆக சேமிக்கவும்';

  @override
  String get importData => 'தரவை இறக்குமதி செய்';

  @override
  String get importDataSubtitle => 'JSON இலிருந்து பட்டியல்களை மீட்டெடுக்கவும்';

  @override
  String get importJsonTitle => 'JSON ஐ இறக்குமதி செய்';

  @override
  String get importJsonHint => 'காப்புப்பிரதி JSON ஐ இங்கே ஒட்டவும்...';

  @override
  String get backupExported => 'காப்புப்பிரதி ஏற்றுமதி செய்யப்பட்டது!';

  @override
  String get budgetAppBar => 'மாதாந்திர பட்ஜெட்';

  @override
  String get budgetPremiumLocked =>
      'உலகளாவிய மாதாந்திர பட்ஜெட் பிரீமியம் அம்சம்';

  @override
  String get budgetUpgradePrompt => 'திறக்க மேம்படுத்தவும்';

  @override
  String get noBudgetDefined => 'பட்ஜெட் எதுவும் அமைக்கப்படவில்லை';

  @override
  String totalEstimated(String amount) {
    return 'மொத்த மதிப்பீடு: $amount';
  }

  @override
  String get setBudgetButton => 'பட்ஜெட்டை அமை';

  @override
  String get budgetLists => 'பட்டியல்கள்';

  @override
  String get budgetValueLabel => 'தொகை';

  @override
  String get setBudgetTitle => 'மாதாந்திர பட்ஜெட்';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'அனைத்தும்';

  @override
  String get filterPending => 'நிலுவையில்';

  @override
  String get filterPurchased => 'வாங்கப்பட்டவை';

  @override
  String get sortName => 'பெயர்';

  @override
  String get sortCategory => 'வகை';

  @override
  String get sortDate => 'தேதி';

  @override
  String get sortManual => 'கைமுறை';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$total உருப்படிகளில் $purchased';
  }

  @override
  String progressBudget(String amount) {
    return 'பட்ஜெட்: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'மொத்தம்: $amount';
  }

  @override
  String get addItem => 'பொருளைச் சேர்';

  @override
  String get itemName => 'பொருளின் பெயர்';

  @override
  String get quantityShort => 'அளவு';

  @override
  String get unit => 'அலகு';

  @override
  String get category => 'வகை';

  @override
  String get estimatedPrice => 'மதிப்பிடப்பட்ட விலை';

  @override
  String get addItemPrice => 'மதிப்பிடப்பட்ட விலை';

  @override
  String get editItem => 'பொருளைத் திருத்து';

  @override
  String get quantityFull => 'அளவு';

  @override
  String get editItemPrice => 'மதிப்பிடப்பட்ட விலை';

  @override
  String get addToPantry => 'சரக்கறையில் சேர்';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\"ஐ உங்கள் சரக்கறையில் சேர்க்கவா?';
  }

  @override
  String get yes => 'ஆம்';

  @override
  String get productName => 'பொருளின் பெயர்';

  @override
  String get idealQty => 'உகந்த அளவு';

  @override
  String get currentQty => 'தற்போதைய அளவு';

  @override
  String get trackStock => 'இருப்பைக் கண்காணி';

  @override
  String get trackStockActive => 'ஷாப்பிங் பரிந்துரைகளில் தோன்றும்';

  @override
  String get trackStockInactive => 'ஷாப்பிங் பரிந்துரையை உருவாக்காது';

  @override
  String get createListDialog => 'பட்டியலை உருவாக்கு';

  @override
  String get renameListDialog => 'பட்டியலை மறுபெயரிடு';

  @override
  String get listHistory => 'பட்டியல் வரலாறு';

  @override
  String get myLists => 'எனது பட்டியல்கள்';

  @override
  String get viewActive => 'செயலில் உள்ளவற்றைப் பார்';

  @override
  String get viewHistory => 'வரலாற்றைப் பார்';

  @override
  String get noArchivedLists => 'காப்பகப்படுத்தப்பட்ட பட்டியல்கள் இல்லை';

  @override
  String get noActiveLists => 'செயலில் உள்ள பட்டியல்கள் இல்லை';

  @override
  String completedOn(String date) {
    return '$date அன்று முடிக்கப்பட்டது';
  }

  @override
  String get sharedLabel => 'பகிரப்பட்டது';

  @override
  String get restore => 'மீட்டெடு';

  @override
  String get removeSharedTooltip => 'அகற்று';

  @override
  String get deleteListTitle => 'பட்டியலை நீக்கு';

  @override
  String deleteListContent(String name) {
    return '\"$name\"ஐ நிச்சயமாக நீக்க விரும்புகிறீர்களா? அனைத்து பொருட்களும் அகற்றப்படும்.';
  }

  @override
  String get removeSharedListTitle => 'பகிரப்பட்ட பட்டியலை அகற்று';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\"ஐ உங்கள் பட்டியல்களிலிருந்து அகற்றவா? அசல் பட்டியல் பாதிக்கப்படாது.';
  }

  @override
  String get createNewList => 'புதிய பட்டியலை உருவாக்கு';

  @override
  String get aiAssistant => 'AI உதவியாளர்';

  @override
  String get aiAssistantDescription =>
      'எங்கள் AI உதவியாளருடன் ஸ்மார்ட் பரிந்துரைகள், சமையல் குறிப்புகள் மற்றும் தனிப்பயனாக்கப்பட்ட உதவிக்குறிப்புகளைப் பெறுங்கள்.';

  @override
  String get generalAssistant => 'பொது உதவியாளர்';

  @override
  String get newChat => 'புதிய அரட்டை';

  @override
  String get noHistory => 'அரட்டை வரலாறு இல்லை';

  @override
  String get deleteSession => 'அரட்டையை நீக்கு';

  @override
  String get deleteSessionConfirm =>
      'இந்த அரட்டையை நிச்சயமாக நீக்க விரும்புகிறீர்களா? செய்திகள் நிரந்தரமாக இழக்கப்படும்.';

  @override
  String get clearHistory => 'வரலாற்றை அழி';

  @override
  String get clearHistoryConfirm =>
      'இந்த அமர்வில் உள்ள அனைத்து செய்திகளையும் அழிக்கவா?';

  @override
  String get chatHint => 'உங்கள் செய்தியைத் தட்டச்சு செய்க...';

  @override
  String get chatHintBlocked => 'அரட்டையடிக்க AI ஐ திறக்கவும்';

  @override
  String chatError(String error) {
    return 'அரட்டையை ஏற்றுவதில் பிழை: $error';
  }

  @override
  String get aiAssistantTitle => 'AI உதவியாளர்';

  @override
  String get closeSheet => 'மூடு';

  @override
  String get scanBarcodeTitle => 'பார்கோடு ஸ்கேன் செய்யவும்';

  @override
  String get listHelp => 'உங்கள் பட்டியலில் எப்படி உதவ முடியும்?';

  @override
  String get generalHelp => 'இன்று உங்கள் ஷாப்பிங்கில் எப்படி உதவ முடியும்?';

  @override
  String get chatSubtitle =>
      'பொருள் பரிந்துரைகள், சமையல் குறிப்புகள் அல்லது சேமிப்பு உதவிக்குறிப்புகளைக் கேளுங்கள்.';

  @override
  String get aiError =>
      'மன்னிக்கவும், உங்கள் கோரிக்கையைச் செயலாக்குவதில் பிழை ஏற்பட்டது. உங்கள் இணைப்பைச் சரிபார்த்து அல்லது பின்னர் மீண்டும் முயற்சிக்கவும்.';

  @override
  String get aiLimitAlmostReached => 'கிட்டத்தட்ட AI செய்திகள் இல்லை';

  @override
  String get unlockAi => 'வரம்பற்ற AI ஐ திறக்கவும்';

  @override
  String get aiTeaserFallback =>
      'முழுமையான பதிலைத் திறக்க, உங்கள் ஷாப்பிங்கிற்கான வரம்பற்ற AI உதவிக்குறிப்புகளைப் பெற Premium க்கு குழுசேரவும்...';

  @override
  String aiUsageWarning(int remaining) {
    return 'இந்த மாதம் $remaining AI செயல்கள் மீதமுள்ளன — வரம்பற்ற மேம்படுத்தல்';
  }

  @override
  String get aiUsageExhausted =>
      'மாதாந்திர AI வரம்பை அடைந்தது. வரம்பற்ற →க்கு Pro க்கு மேம்படுத்தவும்';

  @override
  String get kipiListTitle => 'கிபிலிஸ்ட்';

  @override
  String get loginPrompt => 'பிரீமியம் அம்சங்களைத்\nதிறக்க உள்நுழைக';

  @override
  String get signInGoogle => 'Google மூலம் உள்நுழைக';

  @override
  String get signInApple => 'Apple மூலம் உள்நுழைக';

  @override
  String get continueAsGuest => 'விருந்தினராகத் தொடர்க';

  @override
  String get onboardingWelcomeTitle => 'KipiListக்கு வரவேற்கிறோம்';

  @override
  String get onboardingWelcomeDesc =>
      'உங்கள் ஷாப்பிங்கை ஒழுங்கமைத்து பணத்தைச் சேமிப்பதற்கான சிறந்த வழி.';

  @override
  String get onboardingSetupTitle => 'உங்கள் அனுபவத்தைத் தனிப்பயனாக்குங்கள்';

  @override
  String get onboardingSetupDesc =>
      'உங்களுக்காக KipiList எப்படி இருக்க வேண்டும் மற்றும் வேலை செய்ய வேண்டும் என்பதை தேர்வு செய்யவும்.';

  @override
  String get onboardingLoginTitle => 'எல்லாவற்றையும் கிளவுட்டில் சேமிக்கவும்';

  @override
  String get onboardingLoginDesc =>
      'உங்கள் எல்லா சாதனங்களிலும் உங்கள் தரவு ஒத்திசைக்கப்பட்டது';

  @override
  String get onboardingShareTitle =>
      'நீங்கள் விரும்புபவர்களுடன் பகிர்ந்து கொள்ளுங்கள்';

  @override
  String get onboardingShareDesc =>
      'உண்மையான நேரத்தில் குடும்பம் மற்றும் நண்பர்களுடன் பட்டியல்களை ஒத்திசைக்கவும்';

  @override
  String get onboardingPremiumTitle => 'அனைத்து அம்சங்களையும் திறக்கவும்';

  @override
  String get onboardingPremiumSubtitle =>
      'உங்கள் ஷாப்பிங் பட்டியல்களில் இருந்து அதிகமானவற்றைப் பெறுங்கள்';

  @override
  String get onboardingAnnualBadge => 'சிறந்த மதிப்பு';

  @override
  String get onboardingMonthlyLabel => 'மாதாந்திர';

  @override
  String get onboardingAnnualLabel => 'ஆண்டு';

  @override
  String get onboardingViewAllPlans => 'அனைத்து திட்டங்களையும் பார்க்கவும்';

  @override
  String get onboardingSubscribeCta => 'குழுசேர்';

  @override
  String get onboardingCancelAnytime =>
      'எப்போது வேண்டுமானாலும் ரத்து செய்யலாம். உறுதி இல்லை.';

  @override
  String get onboardingContinueAsGuest => 'விருந்தினராக தொடரவும்';

  @override
  String get onboardingRestore => 'வாங்குதல்களை மீட்டெடுக்கவும்';

  @override
  String get onboardingRestoreDesc =>
      'ஏற்கனவே சந்தா உள்ளதா? அதை மீட்டெடுக்க இங்கே தட்டவும்.';

  @override
  String get onboardingMaybeLater => 'பின்னர் இருக்கலாம்';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'ஏய் $name, உங்கள் ஷாப்பிங்கை சரியான முறையில் ஒழுங்கமைக்கவும்.';
  }

  @override
  String get onboardingSlide1Title => 'ஸ்மார்ட் ஷாப்பிங் பட்டியல்கள்';

  @override
  String get onboardingSlide1Body =>
      'பட்டியல்களை உடனடியாக உருவாக்கி பகிரவும். உங்கள் பழக்கவழக்கங்களின் அடிப்படையில் கிபி தானாகவே பொருட்களைச் சேர்க்கிறது.';

  @override
  String get onboardingSlide2Title => 'கிபியை சந்திக்கவும்';

  @override
  String get onboardingSlide2Body =>
      'எதையும் கேளுங்கள் - பட்டியல்களை உருவாக்கவும், சமையல் குறிப்புகளைக் கண்டறியவும், உங்கள் சரக்கறையைக் கண்காணிக்கவும், உங்கள் வாரத்தைத் திட்டமிடவும்.';

  @override
  String get onboardingSlide3Title => 'சரக்கறை & உணவு திட்டமிடல்';

  @override
  String get onboardingSlide3Body =>
      'உங்களிடம் உள்ளதைக் கண்காணிக்கவும், உணவைத் திட்டமிடவும் மற்றும் ஷாப்பிங் பட்டியல்களை தானாக உருவாக்கவும்.';

  @override
  String get onboardingExit => 'வெளியேறு';

  @override
  String get onboardingPersonalizationTitle =>
      'உங்களைப் பற்றி தெரிந்து கொள்வோம்';

  @override
  String get onboardingPersonalizationDesc =>
      'உங்கள் பரிந்துரைகளைத் தனிப்பயனாக்கவும், ஷாப்பிங்கை சிறந்ததாக்கவும் இதைப் பயன்படுத்துவோம்.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'உங்களுக்கு பிடித்த உணவு எது?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'எ.கா. பீட்சா, சுஷி, லாசக்னா...';

  @override
  String get onboardingPersonalizationCta => 'தொடரவும்';

  @override
  String get onboardingPersonalizationSkip => 'இப்போதைக்கு தவிர்க்கவும்';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'தொடர உங்களுக்கு பிடித்த உணவை எங்களிடம் கூறுங்கள்';

  @override
  String get settingsDefaultScreen => 'இயல்புநிலை முகப்புத் திரை';

  @override
  String get settingsDefaultScreenSubtitle =>
      'ஷாப்பிங் பட்டியல் அல்லது AI அரட்டைக்கு இடையே தேர்வு செய்யவும்';

  @override
  String get settingsScreenList => 'ஷாப்பிங் பட்டியல்';

  @override
  String get settingsScreenChat => 'AI அரட்டை';

  @override
  String loginError(String error) {
    return 'உள்நுழைவு பிழை: $error';
  }

  @override
  String get paywallTitle => 'கிபிலிஸ்ட் பிரீமியம்';

  @override
  String get paywallLoadingError =>
      'சலுகைகளை ஏற்றுவதில் பிழை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get paywallPurchaseError =>
      'வாங்குவதை முடிக்க முடியவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get paywallRestoreError => 'மீட்டமைக்க செயலில் சந்தா எதுவும் இல்லை.';

  @override
  String paywallTrialDays(Object days) {
    return '$days நாட்கள் இலவசம்';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count வாரங்கள் இலவசம்',
      one: '$count வாரம் இலவசம்',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count மாதங்கள் இலவசம்',
      one: '$count மாதம் இலவசம்',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'இலவசமாக முயற்சிக்கவும்!';

  @override
  String get paywallTrialSubtitle =>
      'எப்போது வேண்டுமானாலும் ரத்து செய்யலாம். இன்று கட்டணம் இல்லை.';

  @override
  String get paywallTrialCta => 'இலவச சோதனையைத் தொடங்கவும்';

  @override
  String get recipeAddToList => 'ஷாப்பிங் பட்டியலில் சேர்க்கவும்';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 $listName இல் சேர்க்கப்பட்டது';
  }

  @override
  String get noListSelected =>
      'பட்டியல் எதுவும் தேர்ந்தெடுக்கப்படவில்லை. முதலில் ஒரு பட்டியலைத் திறக்கவும்.';

  @override
  String get paywallFeaturesTitle => 'உங்களுக்கு தேவையான அனைத்தும்:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI உங்கள் பட்டியலை தானாக ஒழுங்கமைக்கிறது';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'உங்களுக்கு தேவையான பல பட்டியல்களை உருவாக்கவும்';

  @override
  String get paywallFeatureDescSharing =>
      'உண்மையான நேரத்தில் ஒன்றாக ஷாப்பிங் செய்யுங்கள்';

  @override
  String get paywallFeatureDescPantry =>
      'நீங்கள் வீட்டில் இருப்பதைக் கண்காணிக்கவும்';

  @override
  String get paywallFeatureDescBudget => 'ஒவ்வொரு மாதமும் பட்ஜெட்டில் இருங்கள்';

  @override
  String get paywallFeatureUnlimitedLists => 'வரம்பற்ற பட்டியல்கள்';

  @override
  String get paywallFeatureSmartAI => 'ஸ்மார்ட் AI';

  @override
  String get paywallFeatureExpenseControl => 'செலவு கட்டுப்பாடு';

  @override
  String get paywallFeatureSharing => 'பகிர்தல்';

  @override
  String get paywallBeforeAfterTitle => 'AI முன்னும் பின்னும்:';

  @override
  String get paywallLabelCommon => 'பொதுவானது';

  @override
  String get paywallLabelPro => 'கிபிலிஸ்ட் புரோ';

  @override
  String get paywallBeforeItem1 => 'அரிசி';

  @override
  String get paywallBeforeItem2 => 'சோப்பு';

  @override
  String get paywallBeforeItem3 => 'இறைச்சி';

  @override
  String get paywallBeforeItem4 => 'ரொட்டி';

  @override
  String get paywallAfterItem1 => 'தானியங்கள்';

  @override
  String get paywallAfterItem2 => 'சுத்தம் செய்தல்';

  @override
  String get paywallAfterItem3 => 'இறைச்சிகள்';

  @override
  String get paywallAfterItem4 => 'பேக்கரி';

  @override
  String get paywallTestimonialsTitle => 'எங்கள் பயனர்கள் என்ன சொல்கிறார்கள்:';

  @override
  String get paywallTestimonial1Name => 'ஆன் எஸ்.';

  @override
  String get paywallTestimonial1Text =>
      'AI எனது ஷாப்பிங்கை நொடிகளில் ஒழுங்குபடுத்துகிறது. ஒரு சந்தை பயணத்திற்கு 20 நிமிடம் சேமிக்கிறேன்.';

  @override
  String get paywallTestimonial2Name => 'சார்லஸ் எம்.';

  @override
  String get paywallTestimonial2Text =>
      'நான் மீண்டும் ஒரு பட்டியல் உருப்படியை மறக்கவில்லை. AI அரட்டை பரபரப்பானது!';

  @override
  String get paywallSocialProof =>
      '+2,400 குடும்பங்கள் இதைப் பயன்படுத்துகின்றன';

  @override
  String get paywallCtaUnlock => 'புரோவைத் திறக்கவும்';

  @override
  String get paywallBestValue => 'சிறந்த மதிப்பு';

  @override
  String get paywallMostPopular => 'மிகவும் பிரபலமானது';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'பாதுகாப்பான கட்டணம்';

  @override
  String get paywallSelectPlan => 'உங்கள் திட்டத்தை தேர்வு செய்யவும்:';

  @override
  String paywallSavePercent(Object percent) {
    return 'சேமி $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return '$price/மாதம் மட்டுமே';
  }

  @override
  String get paywallPackageAnnual => 'வருடாந்திர திட்டம்';

  @override
  String get paywallPackageMonthly => 'மாதாந்திர திட்டம்';

  @override
  String get paywallPackageLifetime => 'வாழ்நாள் அணுகல்';

  @override
  String get paywallCancelAnytime =>
      'எப்போது வேண்டுமானாலும் ரத்து செய்யலாம். உறுதி இல்லை.';

  @override
  String paywallTrialInCard(int days) {
    return 'முதல் $days நாட்கள் இலவசம்';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Play மூலம் பாதுகாக்கப்பட்டது · எப்போது வேண்டுமானாலும் ரத்துசெய்யலாம்';

  @override
  String get paywallPolicy => 'தனியுரிமைக் கொள்கை';

  @override
  String get paywallTerms => 'பயன்பாட்டு விதிமுறைகள்';

  @override
  String get paywallRestore => 'மீட்டமை';

  @override
  String get paywallHeroHeadline =>
      'Kipi AI எப்போதும் உங்கள் பக்கத்தில் இருக்கும்';

  @override
  String get paywallHeroSubtitle =>
      'உருப்படிகளைச் சேர்க்கவும், பட்டியல்களை ஒழுங்கமைக்கவும் மற்றும் உங்கள் பாக்கெட்டில் AI உடன் நேரத்தைச் சேமிக்கவும்';

  @override
  String get paywallBenefit1Desc =>
      '24/7 உருப்படிகளைச் சேர்க்கிறது, ஒழுங்கமைக்கிறது மற்றும் பரிந்துரைக்கிறது';

  @override
  String get paywallBenefit2Desc => '3-பட்டியல் வரம்பு இல்லை';

  @override
  String get paywallBenefit3Desc =>
      'செலவு கண்காணிப்பு மற்றும் குடும்ப பட்டியல்கள்';

  @override
  String get paywallPackageMonthlyDesc => 'முழு நெகிழ்வுத்தன்மை';

  @override
  String paywallCtaTrialDays(int days) {
    return 'இலவசமாக தொடங்கு — $days நாட்கள்';
  }

  @override
  String get premiumUpgrade => 'திறக்க மேம்படுத்தவும்';

  @override
  String get itemRemoved => 'பொருள் அகற்றப்பட்டது';

  @override
  String get undo => 'செயல்தவிர்';

  @override
  String get emptyListTitle => 'உங்கள் பட்டியல் காலியாக உள்ளது';

  @override
  String get emptyListSubtitle => 'தொடங்க பொருட்களைச் சேர்க்கவும்';

  @override
  String get noListFoundTitle => 'பட்டியல்கள் எதுவும் காணப்படவில்லை';

  @override
  String get noListFoundSubtitle => 'தொடங்க உங்கள் முதல் பட்டியலை உருவாக்கவும்';

  @override
  String get createFirstList => 'முதல் பட்டியலை உருவாக்கு';

  @override
  String get listBudgetTitle => 'பட்டியல் பட்ஜெட்';

  @override
  String get budgetAmountLabel => 'பட்ஜெட் தொகை';

  @override
  String get removeBudget => 'அகற்று';

  @override
  String get prefUnlimitedLists => 'வரம்பற்ற பட்டியல்கள்';

  @override
  String get prefSharing => 'பட்டியல்களைப் பகிர்க';

  @override
  String get prefFullHistory => 'முழு வரலாறு';

  @override
  String get prefExportData => 'தரவை ஏற்றுமதி செய்';

  @override
  String get prefCustomThemes => 'தனிப்பயன் தீம்கள்';

  @override
  String get prefMonthlyBudget => 'உலகளாவிய மாதாந்திர பட்ஜெட்';

  @override
  String get prefAIAssistant => 'தனிப்பட்ட AI உதவியாளர்';

  @override
  String get prefUnlimitedPantry => 'வரம்பற்ற சரக்கறை';

  @override
  String get prefInteractiveArtifacts => 'ஊடாடும் AI கலைப்பொருட்கள்';

  @override
  String get themeGreen => 'பச்சை';

  @override
  String get themeBlue => 'நீலம்';

  @override
  String get themePurple => 'ஊதா';

  @override
  String get themeRed => 'சிவப்பு';

  @override
  String get themeOrange => 'ஆரஞ்சு';

  @override
  String get themePink => 'இளஞ்சிவப்பு';

  @override
  String get themeIndigo => 'இண்டிகோ';

  @override
  String get themeAmber => 'அம்பர்';

  @override
  String get themeTeal => 'டீல்';

  @override
  String get themeBrown => 'பழுப்பு';

  @override
  String get catFruits => 'பழங்கள்';

  @override
  String get catCleaning => 'சுத்தம்';

  @override
  String get catBeverages => 'பானங்கள்';

  @override
  String get catBakery => 'பேக்கரி';

  @override
  String get catOthers => 'மற்றவை';

  @override
  String get unitPack => 'கட்டு';

  @override
  String get shareSubject => 'ஷாப்பிங் பட்டியல்';

  @override
  String get monthlyBudgetTitle => 'மாதாந்திர பட்ஜெட்';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'பட்டியலை நீக்கு';

  @override
  String get pantryItemRemoved => 'பொருள் அகற்றப்பட்டது';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit பொருட்கள் வாங்கப்பட வேண்டும்',
      one: '$deficit பொருள் வாங்கப்பட வேண்டும்',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'வண்டி மொத்தம்';

  @override
  String get restockLabel => 'மீண்டும் நிரப்பு';

  @override
  String get advancedFeatures => 'மேம்பட்ட அம்சங்கள்';

  @override
  String get selectAll => 'அனைத்தையும் தேர்ந்தெடு';

  @override
  String get deselectAll => 'அனைத்தையும் தேர்ந்தெடுக்காமல் விடு';

  @override
  String get monthlyBudgetAppBar => 'மாதாந்திர பட்ஜெட்';

  @override
  String get budgetEditTitle => 'மாதாந்திர பட்ஜெட்';

  @override
  String get budgetDashboardTitle => 'டாஷ்போர்டு';

  @override
  String get selectListForDashboard =>
      'டாஷ்போர்டைப் பார்க்க ஒரு பட்டியலைத் தேர்ந்தெடுக்கவும்.';

  @override
  String get spendingAnalysis => 'செலவு பகுப்பாய்வு';

  @override
  String get noItemsToAnalyze =>
      'பகுப்பாய்வு செய்ய பட்டியலில் பொருட்கள் எதுவும் இல்லை.';

  @override
  String get markItemsToSeeAnalysis =>
      'பகுப்பாய்வைப் பார்க்க பொருட்களை வாங்கியதாகக் குறிக்கவும்.';

  @override
  String get totalSpending => 'மொத்த செலவு';

  @override
  String get spendingByCategory => 'வகை வாரியாக செலவு';

  @override
  String get achievements => 'சாதனைகள்';

  @override
  String get exportPdfExcel => 'PDF/Excel ஏற்றுமதி';

  @override
  String get exportPdf => 'PDF ஆக ஏற்றுமதி';

  @override
  String get exportExcel => 'Excel ஆக ஏற்றுமதி';

  @override
  String get organizingAi => 'AI உடன் ஒழுங்கமைக்கிறது...';

  @override
  String get yesLabel => 'ஆம்';

  @override
  String get noLabel => 'இல்லை';

  @override
  String get shareListText => 'எனது ஷாப்பிங் பட்டியல்';

  @override
  String get emptyListAddItems =>
      'உங்கள் பட்டியல் காலியாக உள்ளது! முதலில் பொருட்களைச் சேர்க்கவும். ℹ️';

  @override
  String get listOrganizedMagic =>
      'பட்டியல் வகைகளால் மாயமாக ஒழுங்கமைக்கப்பட்டது! ✨';

  @override
  String get shoppingMode => 'ஷாப்பிங் முறை';

  @override
  String get smartOrganization => 'ஸ்மார்ட் ஒழுங்கமைப்பு';

  @override
  String get savings => 'சேமிப்புகள்';

  @override
  String get shoppingModeHeader => 'ஷாப்பிங் முறை';

  @override
  String get shareAsText => 'பொருட்களை வடிவமைக்கப்பட்ட உரையாக அனுப்புக';

  @override
  String get shareRealtime => 'மற்றவர்களுடன் நிகழ்நேர ஒத்திசைவு';

  @override
  String get quickRecipe => 'விரைவான சமையல்';

  @override
  String get quickRecipePrompt =>
      'எனது பட்டியலில் உள்ள பொருட்களுடன் சமையல் குறிப்புகளைப் பரிந்துரைக்கவும்.';

  @override
  String get economyTips => 'சிக்கன உதவிக்குறிப்புகள்';

  @override
  String get economyTipsPrompt =>
      'இந்த கொள்முதலில் நான் எப்படி பணத்தை மிச்சப்படுத்தலாம்?';

  @override
  String get organizeAisles => 'இடைகழிகள் வாரியாக ஒழுங்கமை';

  @override
  String get organizeAislesPrompt => 'சந்தை இடைகழிகள் வாரியாக ஒழுங்கமைக்கவும்.';

  @override
  String get recipeSuggestion => 'சமையல் பரிந்துரை';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining கிரெடிட்கள் மீதம்';
  }

  @override
  String get addAllToList => 'அனைத்தையும் பட்டியலில் சேர்';

  @override
  String get organizeByAisles => 'இடைகழிகள் வாரியாக ஒழுங்கமை';

  @override
  String get voiceTranscriptionTooltip => 'குரல் தட்டச்சு (இலவசம்)';

  @override
  String get aiVoiceCommandTooltip => 'AI குரல் கட்டளை (பிரீமியம்)';

  @override
  String get voiceCommandTitle => 'AI குரல் கட்டளை';

  @override
  String get voiceCommandContent =>
      'உங்கள் பட்டியலை நிர்வகிக்க இயற்கையாகப் பேசுங்கள்!\n\nஎடுத்துக்காட்டுகள்:\n• \'ரொட்டி, சீஸ் மற்றும் ஹாம் சேர்க்கவும்\'\n• \'சலவை சோப்பை அகற்றவும்\'\n• \'தீத்தை நீலமாக மாற்றவும்\'\n\nஇது KipiList Premium இன் பிரத்யேக அம்சமாகும்.';

  @override
  String get voiceCommandPlanBtn => 'திட்டங்களைப் பார்';

  @override
  String get itemsAddedSuccess =>
      'பொருட்கள் பட்டியலில் வெற்றிகரமாக சேர்க்கப்பட்டன!';

  @override
  String get viewList => 'பட்டியலைப் பார்';

  @override
  String get feedbackTitle => 'கருத்து அனுப்புக';

  @override
  String get feedbackPrompt => 'நீங்கள் என்ன பகிர விரும்புகிறீர்கள்?';

  @override
  String get feedbackTypeBug => 'பிழையைப் புகாரளிக்கவும்';

  @override
  String get feedbackTypeBugHint => 'ஏதோ சரியாக வேலை செய்யவில்லை';

  @override
  String get feedbackTypeSuggestion => 'பரிந்துரை';

  @override
  String get feedbackTypeSuggestionHint => 'பயன்பாட்டை மேம்படுத்தும் யோசனை';

  @override
  String get feedbackTypeTranslation => 'மொழிபெயர்ப்புச் சிக்கல்';

  @override
  String get feedbackTypeTranslationHint =>
      'தவறான அல்லது இயற்கையற்ற மொழிபெயர்ப்பு';

  @override
  String get feedbackTypeFeature => 'அம்சக் கோரிக்கை';

  @override
  String get feedbackTypeFeatureHint => 'நீங்கள் பார்க்க விரும்பும் அம்சம்';

  @override
  String get feedbackTypeOther => 'மற்றவை';

  @override
  String get feedbackTypeOtherHint => 'மற்ற வகை கருத்து';

  @override
  String get feedbackHint => 'உங்கள் கருத்தை விரிவாக விவரிக்கவும்...';

  @override
  String get feedbackSend => 'கருத்து அனுப்புக';

  @override
  String get feedbackSending => 'அனுப்புகிறது...';

  @override
  String get feedbackThankYou => 'நன்றி!';

  @override
  String get feedbackThankYouMessage =>
      'உங்கள் கருத்து பெறப்பட்டது, இது KipiList ஐ அனைவருக்கும் மேம்படுத்த உதவுகிறது.';

  @override
  String get feedbackBack => 'பின்';

  @override
  String feedbackError(String error) {
    return 'அனுப்புவதில் பிழை: $error';
  }

  @override
  String get feedbackRetry => 'மீண்டும் முயற்சி';

  @override
  String get feedbackSettingsTitle => 'கருத்து அனுப்புக';

  @override
  String get feedbackSettingsSubtitle =>
      'பிழைகளைப் புகாரளிக்கவும், மேம்பாடுகளைப் பரிந்துரைக்கவும் அல்லது மொழிபெயர்ப்புகளைச் சரிசெய்யவும்';

  @override
  String get aiEnergy => 'AI ஆற்றல்';

  @override
  String get searchInConversation => 'உரையாடலில் தேடு...';

  @override
  String get noMessagesFound => 'செய்திகள் எதுவும் இல்லை';

  @override
  String get suggestedQuestions => 'பரிந்துரைக்கப்பட்ட கேள்விகள்:';

  @override
  String get shoppingAssistant => 'ஷாப்பிங் உதவியாளர்';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total இல் $purchased வாங்கப்பட்டது';
  }

  @override
  String get estimatedCost => 'மதிப்பிடப்பட்டுள்ளது';

  @override
  String get viewItems => 'பொருட்களைக் காண்க';

  @override
  String get noItemsInList => 'பட்டியலில் உருப்படிகள் இல்லை';

  @override
  String get longHistoryWarning =>
      'நீண்ட வரலாறு: சிறந்த செயல்திறனுக்காக அசிஸ்டண்ட் சமீபத்திய செய்திகளில் கவனம் செலுத்துகிறது.';

  @override
  String get listening => 'கேட்கிறது...';

  @override
  String get addDirectToList => 'பட்டியலில் நேரடியாகச் சேர்க்கவும்';

  @override
  String get unlockFullResponse => 'முழு பதிலைத் திறக்கவும்';

  @override
  String get switchList => 'பட்டியலை மாற்றவும்';

  @override
  String get marketMode => 'சந்தை முறை';

  @override
  String get backToChat => 'அரட்டைக்குத் திரும்பு';

  @override
  String get finishShopping => 'ஷாப்பிங்கை முடிக்கவும்';

  @override
  String get welcomeAiAssistant => 'AI உதவியாளருக்கு வரவேற்கிறோம்';

  @override
  String get createListToStartAi =>
      'ஸ்மார்ட் அரட்டையைப் பயன்படுத்த ஷாப்பிங் பட்டியலை உருவாக்கவும்.';

  @override
  String get howCanIHelp => 'நான் எப்படி உதவ முடியும்?';

  @override
  String get chatSubtitleShort =>
      'விலைகள், சமையல் வகைகள், அமைப்பு பற்றி கேளுங்கள்...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total வாங்கப்பட்டது';
  }

  @override
  String get quickReplies => 'விரைவான பதில்கள்:';

  @override
  String get voiceProFeature =>
      'மேம்பட்ட குரல் கட்டளைகள் புரோ. அடிப்படை ஆணையை இயக்குகிறது...';

  @override
  String get viewPro => 'ப்ரோவைக் காண்க';

  @override
  String get errorLoadingChat =>
      'அச்சச்சோ! அரட்டையை ஏற்றுவதில் ஏதோ தவறு ஏற்பட்டது.';

  @override
  String get errorLoadingChatSubtitle =>
      'உங்கள் இணைப்பைச் சரிபார்க்கவும் அல்லது பிறகு முயற்சிக்கவும்.';

  @override
  String get errorOscillation =>
      'நெட்வொர்க் அலைவுகள் அல்லது தற்காலிகமாக கிடைக்காததால் இது நிகழலாம். மீண்டும் முயற்சிக்கவும்.';

  @override
  String get activeListening => 'செயலில் கேட்பது';

  @override
  String get whatToDoWithItem =>
      'இந்த உருப்படியை என்ன செய்ய விரும்புகிறீர்கள்?';

  @override
  String get viewDetails => 'விவரங்களைக் காண்க';

  @override
  String get openMenu => 'மெனுவைத் திற';

  @override
  String get viewRecipe => 'செய்முறையைப் பார்க்கவும்';

  @override
  String get recipeCreated => 'செய்முறை உருவாக்கப்பட்டது!';

  @override
  String get editRecipe => 'திருத்தவும்';

  @override
  String get deleteRecipe => 'நீக்கு';

  @override
  String get deleteRecipeConfirm => 'இந்த செய்முறையை நீக்கவா?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\" ஐ நிச்சயமாக நீக்க விரும்புகிறீர்களா? இந்தச் செயலைச் செயல்தவிர்க்க முடியாது.';
  }

  @override
  String get ingredients => 'தேவையான பொருட்கள்';

  @override
  String get instructions => 'வழிமுறைகள்';

  @override
  String get prepTime => 'தயாரிப்பு நேரம்';

  @override
  String get recipeSaved => 'செய்முறை சேமிக்கப்பட்டது!';

  @override
  String get noRecipesSaved => 'எந்த சமையல் குறிப்புகளும் சேமிக்கப்படவில்லை';

  @override
  String get noRecipesSavedHint =>
      'கீழே உள்ள பொத்தானைத் தட்டுவதன் மூலம் உங்களின் முதல் தனிப்பயன் செய்முறையை உருவாக்கவும்.';

  @override
  String get myRecipes => 'எனது சமையல் வகைகள்';

  @override
  String get newRecipe => 'புதிய செய்முறை';

  @override
  String get loadingRecipes => 'உங்கள் சமையல் குறிப்புகளை ஏற்றுகிறது...';

  @override
  String get errorLoadingRecipes => 'சமையல் குறிப்புகளை ஏற்றுவதில் பிழை';

  @override
  String get addIngredient => 'மூலப்பொருள் சேர்க்கவும்';

  @override
  String get saveRecipe => 'சேமிக்கவும்';

  @override
  String get recipeName => 'செய்முறை பெயர்';

  @override
  String get shortDescription => 'சுருக்கமான விளக்கம்';

  @override
  String get prepTimeMinutes => 'தயாரிப்பு நேரம் (நிமிடங்கள்)';

  @override
  String get instructionsHint => 'வரிக்கு ஒரு படி என தட்டச்சு செய்க...';

  @override
  String get addPhoto => 'புகைப்படத்தைச் சேர்க்கவும்';

  @override
  String get imageUrlPlaceholder => 'அல்லது பட URLஐ ஒட்டவும்';

  @override
  String get tags => 'குறிச்சொற்கள்';

  @override
  String get recipeTags => 'செய்முறை குறிச்சொற்கள்';

  @override
  String get suggestedTags => 'பரிந்துரைக்கப்பட்டது';

  @override
  String get searchRecipes => 'சமையல் குறிப்புகளைத் தேடு...';

  @override
  String get filterByTag => 'குறிச்சொல் மூலம் வடிகட்டவும்';

  @override
  String get allTags => 'அனைத்து';

  @override
  String get recipeDeleted => 'செய்முறை நீக்கப்பட்டது';

  @override
  String get saveChanges => 'மாற்றங்களைச் சேமிக்கவும்';

  @override
  String get editRecipeTitle => 'செய்முறையைத் திருத்தவும்';

  @override
  String get newRecipeTitle => 'புதிய செய்முறை';

  @override
  String get requiredField => 'தேவை';

  @override
  String get chooseImageSource => 'படத்தின் மூலத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get gallery => 'தொகுப்பு';

  @override
  String get enterUrl => 'URL ஐ உள்ளிடவும்';

  @override
  String get recipeImage => 'செய்முறை படம்';

  @override
  String get removeImage => 'படத்தை அகற்று';

  @override
  String get mealPlannerTitle => 'உணவு திட்டமிடுபவர்';

  @override
  String get mealPlannerViewMonthly => 'மாதாந்திர பார்வை';

  @override
  String get mealPlannerViewWeekly => 'வாராந்திர பார்வை';

  @override
  String get mealPlannerNoMeals => 'உணவு திட்டமிடப்படவில்லை';

  @override
  String get mealPlannerNoMealsHint => 'உணவைச் சேர்க்க ஒரு நாளைத் தட்டவும்';

  @override
  String get mealPlannerLoading => 'உணவுத் திட்டத்தை ஏற்றுகிறது...';

  @override
  String get mealPlannerError => 'உணவுத் திட்டத்தை ஏற்றுவதில் பிழை';

  @override
  String get mealPlannerAddMeal => 'சாப்பாடு சேர்க்கவும்';

  @override
  String get mealPlannerEditMeal => 'உணவைத் திருத்தவும்';

  @override
  String get mealPlannerDeleteMeal => 'உணவை அகற்றவும்';

  @override
  String get mealPlannerMealDeleted => 'உணவு நீக்கப்பட்டது';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count சேவைகள்',
      one: '$count பரிமாறும்',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'பரிமாறல்கள்';

  @override
  String get mealPlannerNoteLabel => 'குறிப்பு (விரும்பினால்)';

  @override
  String get mealPlannerSelectRecipe => 'ஒரு செய்முறையைத் தேர்ந்தெடுக்கவும்';

  @override
  String get mealPlannerSearchRecipes => 'சமையல் குறிப்புகளைத் தேடு...';

  @override
  String get mealPlannerNoRecipesFound => 'சமையல் குறிப்புகள் எதுவும் இல்லை';

  @override
  String get mealPlannerNoRecipesHint =>
      'முதலில் சமையல் தாவலில் சமையல் குறிப்புகளை உருவாக்கவும்';

  @override
  String get mealPlannerSave => 'திட்டத்தில் சேர்க்கவும்';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total உணவுகளில் $count திட்டமிடப்பட்டுள்ளது';
  }

  @override
  String get mealPlannerGenerateList => 'ஷாப்பிங் பட்டியலை உருவாக்கவும்';

  @override
  String get mealPlannerGenerateListConfirm =>
      'இந்த வாரம் திட்டமிட்ட உணவுகளில் இருந்து அனைத்து பொருட்களையும் உங்கள் ஷாப்பிங் பட்டியலில் சேர்க்கவா?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count மூலப்பொருள்(கள்) உங்கள் பட்டியலில் சேர்க்கப்பட்டது!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'சேர்க்க பொருட்கள் இல்லை. முதலில் சமையல் குறிப்புகளுடன் சில உணவுகளைத் திட்டமிடுங்கள்.';

  @override
  String get mealPlannerGenerateListNoList =>
      'முதலில் ஷாப்பிங் பட்டியலை உருவாக்கவும்.';

  @override
  String get mealPlannerMealTypeBreakfast => 'காலை உணவு';

  @override
  String get mealPlannerMealTypeLunch => 'மதிய உணவு';

  @override
  String get mealPlannerMealTypeDinner => 'இரவு உணவு';

  @override
  String get mealPlannerMealTypeSnack => 'சிற்றுண்டி';

  @override
  String get mealPlannerDateLabel => 'தேதி';

  @override
  String get mealPlannerWeekEmpty => 'இந்த வாரம் எதுவும் திட்டமிடவில்லை';

  @override
  String get mealPlannerWeekEmptyHint =>
      'உங்கள் உணவைத் திட்டமிடத் தொடங்க எந்த நாளையும் தட்டவும்!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes நிமிடம்';
  }

  @override
  String get inviteToList => 'பட்டியலுக்கு அழைக்கவும்';

  @override
  String get shareApp => 'பயன்பாட்டைப் பகிரவும்';

  @override
  String get shareAppDescription =>
      'KipiList ஐப் பயன்படுத்த நண்பர்களை அழைக்கவும்';

  @override
  String shareReferralText(String url) {
    return 'எனது ஷாப்பிங்கை ஒழுங்கமைக்க KipiListஐப் பயன்படுத்துகிறேன்! எனது இணைப்பு மூலம் பதிவிறக்குங்கள், நாங்கள் இருவரும் 7 நாட்கள் பிரீமியம் இலவசம்: $url';
  }

  @override
  String get shareReferralSubject =>
      'KipiList பிரீமியத்தை 7 நாட்கள் பெறுங்கள்!';

  @override
  String get gestureHint =>
      'தேர்ந்தெடுக்க அழுத்திப் பிடிக்கவும் • அகற்ற ஸ்வைப் செய்யவும்';

  @override
  String get catalogTitle => 'பட்டியல்';

  @override
  String get catalogMyFrequents => 'என் அடிக்கடி';

  @override
  String get catalogSearchGlobal => 'எந்தப் பொருளையும் தேடு...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category இல் தேடவும்...';
  }

  @override
  String get catalogSortPopular => 'மிகவும் பிரபலமானது';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'தேசியர்கள்';

  @override
  String get catalogRareSection => 'உங்கள் நாட்டில் குறைவான பொதுவானது';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 → சேர்';
  }

  @override
  String get catalogProductNotFound =>
      'தயாரிப்பு கிடைக்கவில்லை, பெயரை உள்ளிடவும்';

  @override
  String get catalogBrowse => 'அட்டவணையை உலாவவும்';

  @override
  String get offlineBanner => 'ஆஃப்லைனில் உள்ளீர்கள்';

  @override
  String get consentTitle => 'தனியுரிமை & பகுப்பாய்வு';

  @override
  String get consentBody =>
      'உங்கள் அனுபவத்தை மேம்படுத்த KipiList Firebase Analytics ஐப் பயன்படுத்துகிறது. எங்கள் தனியுரிமைக் கொள்கையின்படி உங்கள் தரவு செயலாக்கப்படுகிறது.';

  @override
  String get consentAccept => 'ஏற்றுக்கொள்';

  @override
  String get consentDecline => 'இல்லை, நன்றி';

  @override
  String get mealPlannerPantryAllAvailable => 'அனைத்து பொருட்கள் கிடைக்கும்';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 காணவில்லை';
  }

  @override
  String get expirationDate => 'காலாவதி தேதி';

  @override
  String get notInformed => 'அமைக்கப்படவில்லை';

  @override
  String get skip => 'தவிர்க்கவும்';

  @override
  String get onboardingAiTitle => 'கிபியுடன் அரட்டையடிக்கவும்';

  @override
  String get onboardingAiGreeting =>
      'ஹாய்! நான் கிபி, உங்கள் தனிப்பட்ட ஷாப்பிங் உதவியாளர்! 🛒';

  @override
  String get onboardingAiAskName => 'உங்கள் பெயர் என்ன?';

  @override
  String get onboardingAiNameHint => 'உங்கள் பெயரை உள்ளிடவும்...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'உங்களை சந்தித்ததில் மகிழ்ச்சி, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'உங்களுக்கு பிடித்த உணவு எது?';

  @override
  String get onboardingAiFoodHint => 'எ.கா. பீட்சா, சுஷி...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'சிறந்த தேர்வுகள்! உங்கள் பட்டியலில் நான் சேர்ப்பது இதோ:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'இது நன்றாக இருக்கிறதா? வேறு ஏதாவது தட்டச்சு செய்து பாருங்கள்!';

  @override
  String get onboardingAiReady =>
      'அருமை! நீங்கள் தொடங்கத் தயாராக உள்ளீர்கள். உங்கள் கணக்கை அமைப்போம்!';

  @override
  String get onboardingAiContinue => 'தொடரவும் →';

  @override
  String get connectionError => 'இணைப்புப் பிழை';

  @override
  String connectionErrorDesc(String error) {
    return 'சேவையகத்துடன் இணைக்க முடியவில்லை. உங்கள் இணையத்தை சரிபார்க்கவும்.\n($error)';
  }

  @override
  String get errorLoadingLists => 'பட்டியல்களை ஏற்றுவதில் பிழை';

  @override
  String get noListsFound => 'பட்டியல்கள் எதுவும் இல்லை';

  @override
  String get backToToday => 'இன்று மீண்டும்';

  @override
  String get quickSuggestions => 'விரைவான பரிந்துரைகள்';

  @override
  String get aiEnergyLow => 'குறைந்த AI ஆற்றல்';

  @override
  String get aiUnlockUnlimited => 'வரம்பற்ற AI ஐ திறக்கவும்';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return 'இன்று $remaining $_temp0';
  }

  @override
  String get aiSubscribeUnlimited => 'வரம்பற்ற AIக்கு குழுசேரவும்';

  @override
  String get unlockWithAd => 'விளம்பரத்துடன் திறக்கவும்';

  @override
  String get conversationHistoryTitle => 'உரையாடல் வரலாறு';

  @override
  String get noConversationsFound => 'உரையாடல்கள் எதுவும் இல்லை';

  @override
  String get errorLoadingHistory => 'வரலாற்றை ஏற்றுவதில் பிழை';

  @override
  String get deleteConversationTitle => 'உரையாடலை நீக்கவா?';

  @override
  String get deleteConversationConfirm =>
      'இந்தச் செயலைச் செயல்தவிர்க்க முடியாது.';

  @override
  String get deleteConversation => 'நீக்கு';

  @override
  String get subscription => 'சந்தா';

  @override
  String get kipiListProActive => 'கிபிலிஸ்ட் புரோ ஆக்டிவ்';

  @override
  String get unlockPremiumTitle =>
      'வரம்பற்ற பட்டியல்கள், AI மற்றும் பலவற்றைத் திறக்கவும்';

  @override
  String get loadingSubscription => 'சந்தாவை ஏற்றுகிறது...';

  @override
  String get errorLoadingSubscription => 'சந்தாவை ஏற்றுவதில் பிழை';

  @override
  String get profileSection => 'சுயவிவரம்';

  @override
  String get myProfile => 'எனது சுயவிவரம்';

  @override
  String get profileSubtitle =>
      'AI உதவியாளருக்கான தனிப்பட்ட விருப்பத்தேர்வுகள்';

  @override
  String get customizeAiAssistant => 'AI உதவியாளரைத் தனிப்பயனாக்கு';

  @override
  String get assistantHistory => 'உதவியாளர் வரலாறு';

  @override
  String get assistantHistorySubtitle =>
      'உங்கள் உரையாடல் வரலாற்றைப் பார்க்கவும்';

  @override
  String get manageCategories => 'வகைகளை நிர்வகிக்கவும்';

  @override
  String get manageCategoriesSubtitle => 'உருப்படி வகைகளை நிர்வகிக்கவும்';

  @override
  String get customizeAssistant => 'தனிப்பயனாக்கு';

  @override
  String get assistantName => 'உதவியாளர் பெயர்';

  @override
  String get chooseIcon => 'ஐகானைத் தேர்ந்தெடுக்கவும்';

  @override
  String get profileSaved => 'சுயவிவரம் வெற்றிகரமாகச் சேமிக்கப்பட்டது!';

  @override
  String get errorSavingProfile => 'சேமிப்பதில் பிழை: null';

  @override
  String get userProfile => 'பயனர் சுயவிவரம்';

  @override
  String get profileDescription =>
      'உங்கள் தனிப்பட்ட விருப்பங்களை எங்களிடம் கூறுங்கள், இதன் மூலம் AI உதவியாளர் தனிப்பயனாக்கப்பட்ட பொருட்கள் மற்றும் சமையல் குறிப்புகளை பரிந்துரைக்க முடியும்.';

  @override
  String get preferredMarket => 'விருப்பமான சந்தை';

  @override
  String get preferredMarketHint => 'எ.கா.: சூப்பர் மார்க்கெட் எக்ஸ்';

  @override
  String get dietaryRestrictions => 'உணவு கட்டுப்பாடுகள்';

  @override
  String get dietaryRestrictionsHint => 'எ.கா: சைவம், சைவம், பசையம் இல்லாதது';

  @override
  String get marketsToAvoid => 'தவிர்க்க வேண்டிய சந்தைகள்';

  @override
  String get marketsToAvoidHint => 'எ.கா: மார்க்கெட் ஒய், மார்க்கெட் இசட்';

  @override
  String get observations => 'குறிப்புகள்';

  @override
  String get observationsHint => 'உதவியாளருக்கான பிற விருப்பத்தேர்வுகள்';

  @override
  String get saveProfile => 'சுயவிவரத்தை சேமிக்கவும்';

  @override
  String get everythingReady => 'எல்லாம் தயார்!';

  @override
  String get youCompletedList => 'பட்டியலை முடித்துவிட்டீர்கள்!';

  @override
  String get selectCheaperAlternative =>
      'விலையை மேம்படுத்த மலிவான தயாரிப்பு மாற்றீட்டைத் தேர்ந்தெடுக்கவும்.';

  @override
  String get suggestedItems => 'பரிந்துரைக்கப்பட்ட பொருட்கள்';

  @override
  String get swapped => 'மாற்றப்பட்டது';

  @override
  String get swap => 'இடமாற்று';

  @override
  String get chooseThemeColor => 'தீம் நிறத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get manageCategoriesTitle => 'வகைகளை நிர்வகிக்கவும்';

  @override
  String get categoryLimitReached =>
      'இலவச பதிப்பில் 10 வகைகளின் வரம்பு. Pro க்கு மேம்படுத்தவும்!';

  @override
  String get deleteCategoryTitle => 'வகையை நீக்கு';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\" பிரிவில் உள்ள உருப்படிகள் \"மற்றவை\"க்கு நகர்த்தப்படும்.\nதொடரவா?';
  }

  @override
  String get deleteCategory => 'நீக்கு';

  @override
  String get newCategoryDialog => 'புதிய வகை';

  @override
  String get editCategoryDialog => 'வகையைத் திருத்தவும்';

  @override
  String get categoryName => 'வகை பெயர்';

  @override
  String get categoryNameHint => 'எ.கா: இறைச்சிகள்';

  @override
  String get categoryColorLabel => 'நிறம்';

  @override
  String get categoryIconLabel => 'ஐகான்';

  @override
  String itemAddedSnack(String name) {
    return '$name சேர்க்கப்பட்டது';
  }

  @override
  String get kipiQuickBarHint => 'நீங்கள் என்ன வாங்க வேண்டும்?';

  @override
  String replaceItem(String item) {
    return '$item ஐ மாற்றவும்';
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
  String get onboardingHookHeadline =>
      'ஒரு மளிகைப் பொருளை மீண்டும் மறக்க வேண்டாம்';

  @override
  String get onboardingGoalSaveMoney => 'பணத்தை சேமிக்கவும்';

  @override
  String get onboardingGoalNeverForget => 'பொருட்களை மறந்துவிடாதீர்கள்';

  @override
  String get onboardingGoalFaster => 'வேகமாக வாங்கவும்';

  @override
  String get onboardingGoalFamily => 'குடும்ப ஷாப்பிங்கை ஏற்பாடு செய்யுங்கள்';

  @override
  String get onboardingGoalRecipes => 'சமையல் குறிப்புகளைக் கண்டறியவும்';

  @override
  String get onboardingGoalPantry => 'ட்ராக் சரக்கறை';

  @override
  String get onboardingCommitmentsTitle => 'உங்களுக்கு என்ன முக்கியம்?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'KipiList ஐத் தனிப்பயனாக்க உங்கள் இலக்குகளைத் தேர்ந்தெடுக்கவும்';

  @override
  String get onboardingCommitmentsCta => 'போகலாம்!';

  @override
  String get onboardingPersonalizationNameLabel => 'உங்கள் பெயர்';

  @override
  String get onboardingPersonalizationNameHint => 'உங்கள் பெயரை உள்ளிடவும்';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'நீங்கள் எதற்காக ஷாப்பிங் செய்கிறீர்கள்?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'நீங்கள் யாருக்காக ஷாப்பிங் செய்கிறீர்கள்?';

  @override
  String get onboardingCategoryGrocery => 'மளிகை பொருட்கள்';

  @override
  String get onboardingCategoryPharmacy => 'மருந்தகம்';

  @override
  String get onboardingCategoryRecipes => 'சமையல் வகைகள்';

  @override
  String get onboardingCategoryHome => 'வீடு';

  @override
  String get onboardingCategoryPet => 'செல்லப்பிராணி';

  @override
  String get onboardingGroupSolo => 'நான் தான்';

  @override
  String get onboardingGroupCouple => 'ஜோடி';

  @override
  String get onboardingGroupFamily => 'குடும்பம்';

  @override
  String get onboardingLoadingTitle => 'உங்கள் அனுபவத்தைத் தயாரிக்கிறது...';

  @override
  String get onboardingLoadingStep1 =>
      'உங்கள் விருப்பங்களை பகுப்பாய்வு செய்கிறது...';

  @override
  String get onboardingLoadingStep2 => 'AI உதவியாளரை அமைக்கிறது...';

  @override
  String get onboardingLoadingStep3 => 'கிட்டத்தட்ட தயார்...';

  @override
  String get onboardingLoadingStat1Label => 'பட்டியலிடப்பட்ட பொருட்கள்';

  @override
  String get onboardingLoadingStat2Label => 'பயனர்கள் உதவினார்கள்';

  @override
  String get onboardingLoadingStat3Label => 'நிமிடங்கள் சேமிக்கப்பட்டன';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, ஒவ்வொரு பயணத்திலும் சேமிக்கவும்!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, ஒரு பொருளை மறக்கவேண்டாம்!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, பாதி நேரத்தில் ஷாப்பிங் செய்யுங்கள்!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, குடும்ப ஷாப்பிங்கை ஏற்பாடு செய்யுங்கள்!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, புதிய சமையல் குறிப்புகளைக் கண்டறியவும்!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, உங்கள் சரக்கறையை சரியாகக் கண்காணிக்கவும்!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'ஒவ்வொரு பயணத்திலும் சேமிக்கவும்!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => 'ஒரு பொருளை மறக்காதே!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'பாதி நேரத்தில் கடை!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'குடும்ப ஷாப்பிங்கை ஏற்பாடு செய்யுங்கள்!';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'புதிய சமையல் குறிப்புகளைக் கண்டறியவும்!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'உங்கள் சரக்கறையை சரியாகக் கண்காணிக்கவும்!';

  @override
  String paywallPricePerDay(String price) {
    return '$price/நாள் மட்டுமே — ஒரு காபியை விட குறைவாக';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'இப்போதைக்கு தவிர்க்கவும்';

  @override
  String get paywallTestimonial =>
      'AI எனது ஷாப்பிங்கை நொடிகளில் ஒழுங்குபடுத்துகிறது. ஒரு பயணத்திற்கு 20 நிமிடம் சேமிக்கிறேன்.';

  @override
  String get paywallTestimonialAuthor => 'ஆன் எஸ்.';

  @override
  String get paywallTrialDisclaimer =>
      'எப்போது வேண்டுமானாலும் ரத்துசெய்யலாம் · உங்கள் சோதனை முடியும் வரை கட்டணம் இல்லை';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'ஏய் $name! உங்களுக்கு என்ன $category தேவை?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'உங்களுக்கு என்ன $category தேவை?';
  }

  @override
  String get onboardingAiDemoYes => 'ஆம்!';

  @override
  String get onboardingAiDemoReaction => 'நைஸ்!';

  @override
  String get onboardingAiDemoChange => 'உருப்படியை மாற்றவும்';

  @override
  String get onboardingAiDemoOffer => 'வேறு ஏதாவது தட்டச்சு செய்து பாருங்கள்!';

  @override
  String get onboardingAiDemoContinue => 'தொடரவும்';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'உங்கள் ஷாப்பிங் பட்டியல், இப்போது AI உடன்';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'வினாடிகளில் உங்கள் முழுப் பட்டியலையும் Kipi எவ்வாறு உருவாக்குகிறது என்பதைப் பார்க்கவும்';

  @override
  String get onboardingAiDemoSlideCta => 'எனக்கு இது வேண்டும்! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'நான் பார்பிக்யூ 🔥 நடத்துகிறேன்';

  @override
  String get onboardingAiDemoSlideReady =>
      'தயார்! உங்களுக்கு தேவையான அனைத்தும் இங்கே:';

  @override
  String get onboardingAiDemoSlideDone => 'வினாடிகளில் பட்டியலை முடிக்கவும் ✨';

  @override
  String get onboardingPainTitle => 'உங்களை மிகவும் விரக்தியடையச் செய்வது எது?';

  @override
  String get onboardingPainSubtitle =>
      'நேர்மையாக இருங்கள் - ஒவ்வொன்றையும் சரிசெய்வோம்';

  @override
  String get onboardingPainCta => 'ஆம், எனக்காக இதை சரி செய் →';

  @override
  String get onboardingPainForget => 'நான் கடையில் பொருட்களை மறந்துவிட்டேன்';

  @override
  String get onboardingPainFamily =>
      'எனது குடும்பத்தினர் பட்டியலைப் பார்ப்பதில்லை';

  @override
  String get onboardingPainOverspend =>
      'நான் எப்பொழுதும் வரவு செலவுத் திட்டத்தை மீறுவேன்';

  @override
  String get onboardingPainRepeat => 'ஒரு பயணம் போதாது';

  @override
  String get aiWelcomeContent =>
      'வணக்கம்! 👋 நான் **கிபி**, உங்கள் தனிப்பட்ட ஷாப்பிங் மற்றும் செய்முறை உதவியாளர்!\n\nஉங்களுக்கு உதவ நான் இங்கே இருக்கிறேன்:\n🛒 **உங்கள் ஷாப்பிங்கை வகைகளின்படி தானாகவே ஒழுங்கமைக்கவும்**\n💰 **உங்கள் பட்ஜெட்டைக் கண்காணித்து, பணத்தைச் சேமிக்கும் உதவிக்குறிப்புகளை வழங்குங்கள்\n🍲 **பரிந்துரை** உங்களிடம் ஏற்கனவே உள்ளதைக் கொண்டு சுவையான சமையல் குறிப்புகள்\n\nஇன்று நான் உங்களுக்கு எப்படி உதவ முடியும்? உங்கள் முதல் பட்டியலை உருவாக்குவதன் மூலம் நீங்கள் தொடங்கலாம்!';

  @override
  String get aiWelcomeSuggestCreateList => 'எனது முதல் பட்டியலை உருவாக்கவும்';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'கிபி, எனது முதல் ஷாப்பிங் பட்டியலை உருவாக்க எனக்கு உதவுங்கள்';

  @override
  String get aiWelcomeSuggestSave => 'பணத்தை எவ்வாறு சேமிப்பது?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'கிபி, மளிகை சாமான்களில் பணத்தை சேமிக்க நீங்கள் எனக்கு எப்படி உதவலாம்?';

  @override
  String get suggestionMilk => 'பால்';

  @override
  String get suggestionBread => 'ரொட்டி';

  @override
  String get suggestionEggs => 'முட்டைகள்';

  @override
  String get suggestionCoffee => 'காபி';

  @override
  String get suggestionRice => 'அரிசி';

  @override
  String get suggestionFruits => 'பழங்கள்';
}

/// The translations for Tamil, as used in India (`ta_IN`).
class AppLocalizationsTaIn extends AppLocalizationsTa {
  AppLocalizationsTaIn() : super('ta_IN');

  @override
  String get appTitle => 'ஷாப்பிங் பட்டியல்';

  @override
  String get lists => 'பட்டியல்கள்';

  @override
  String get pantry => 'சரக்கறை';

  @override
  String get navChat => 'அரட்டை';

  @override
  String get navRecipes => 'சமையல் குறிப்புகள்';

  @override
  String get navLists => 'பட்டியல்கள்';

  @override
  String get navMealPlanner => 'மெனு';

  @override
  String get cancel => 'ரத்துசெய்';

  @override
  String get save => 'சேமி';

  @override
  String get create => 'உருவாக்கு';

  @override
  String get add => 'சேர்';

  @override
  String get remove => 'அகற்று';

  @override
  String get delete => 'நீக்கு';

  @override
  String get edit => 'திருத்து';

  @override
  String get copy => 'நகலெடு';

  @override
  String get next => 'அடுத்து';

  @override
  String get retry => 'மீண்டும் முயற்சி';

  @override
  String get regenerate => 'மீண்டும் உருவாக்கு';

  @override
  String get copiedToClipboard => 'கிளிப்போர்டுக்கு நகலெடுக்கப்பட்டது';

  @override
  String get confirm => 'உறுதிப்படுத்து';

  @override
  String get close => 'மூடு';

  @override
  String get import => 'இறக்குமதி';

  @override
  String get rename => 'மறுபெயரிடு';

  @override
  String get upgrade => 'மேம்படுத்து';

  @override
  String get clear => 'அழி';

  @override
  String error(String message) {
    return 'பிழை: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'பிழை: $message';
  }

  @override
  String get purchaseError =>
      'கொள்முதலைச் செயலாக்குவதில் பிழை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get restoreError =>
      'கொள்முதல்களை மீட்டெடுப்பதில் பிழை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get loading => 'ஏற்றுகிறது...';

  @override
  String get fieldRequired => 'தேவையான புலம்';

  @override
  String get addedFeedback => 'சேர்க்கப்பட்டது!';

  @override
  String get profile => 'சுயவிவரம்';

  @override
  String get exitShoppingMode => 'ஷாப்பிங் பயன்முறையிலிருந்து வெளியேறு';

  @override
  String get exit => 'வெளியேறு';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count தேர்ந்தெடுக்கப்பட்டன',
      one: '$count தேர்ந்தெடுக்கப்பட்டது',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'மதிப்பிடப்பட்டது';

  @override
  String get alreadyPurchased => 'ஏற்கனவே வாங்கப்பட்டது';

  @override
  String get clearList => 'பட்டியலை அழி';

  @override
  String get clearPurchased => 'வாங்கியவற்றை அழி';

  @override
  String get share => 'பகிர்';

  @override
  String get shareViaCode => 'குறியீடு மூலம் பகிர்';

  @override
  String get importViaCode => 'குறியீடு மூலம் இறக்குமதி';

  @override
  String get listAssistant => 'பட்டியல் உதவியாளர்';

  @override
  String get globalAssistant => 'உலகளாவிய உதவியாளர்';

  @override
  String get becomePremium => 'பிரீமியமாகுங்கள்';

  @override
  String get manageSubscription => 'சந்தாவை நிர்வகி';

  @override
  String get completePurchase => 'கொள்முதலை முடி';

  @override
  String get confirmClearList => 'அனைத்து பொருட்களையும் அகற்றவா?';

  @override
  String get shareListTitle => 'பட்டியலைப் பகிர்';

  @override
  String get shareThisCode => 'இந்த குறியீட்டைப் பகிரவும்:';

  @override
  String get validForLimitedTime =>
      'குறிப்பிட்ட காலத்திற்கு மட்டும் செல்லுபடியாகும்';

  @override
  String get importListTitle => 'பட்டியலை இறக்குமதி செய்';

  @override
  String get enterCodeHint => 'குறியீட்டை உள்ளிடுக';

  @override
  String get confirmArchiveTitle => 'கொள்முதலை முடி';

  @override
  String get confirmArchiveContent =>
      'இந்த கொள்முதலை முடித்து பட்டியலை காப்பகப்படுத்தவா?';

  @override
  String get complete => 'முடி';

  @override
  String get listArchived => 'பட்டியல் வெற்றிகரமாக காப்பகப்படுத்தப்பட்டது!';

  @override
  String listAdded(String listName) {
    return '$listName சேர்க்கப்பட்டது!';
  }

  @override
  String get buy => 'வாங்கு';

  @override
  String get unmark => 'குறியை நீக்கு';

  @override
  String confirmDeleteItems(int count) {
    return '$count பொருள்(களை) அகற்றவா?';
  }

  @override
  String get confirmDeleteTitle => 'உறுதிப்படுத்து';

  @override
  String confirmContent(int count) {
    return '$count பொருள்(களை) அகற்றவா?';
  }

  @override
  String get archiveList => 'பட்டியலை காப்பகப்படுத்து';

  @override
  String get pantryAppBar => 'சரக்கறை';

  @override
  String get generateShoppingList => 'ஷாப்பிங் பட்டியலை உருவாக்கு';

  @override
  String get pantryEmpty => 'காலி சரக்கறை';

  @override
  String get pantryEmptySubtitle =>
      'நீங்கள் வீட்டில் வைத்திருக்க விரும்பும் பொருட்களைச் சேர்க்கவும்';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit பொருள்(கள்) வாங்கப்பட வேண்டும்';
  }

  @override
  String get noItemsToBuy => 'வாங்க வேண்டிய பொருட்கள் எதுவும் இல்லை';

  @override
  String get newPantryList => 'சரக்கறை ஷாப்பிங்';

  @override
  String get newListTitle => 'புதிய ஷாப்பிங் பட்டியல்';

  @override
  String itemsWillBeAdded(int count) {
    return '$count பொருள்(கள்) சேர்க்கப்படும்';
  }

  @override
  String get listNameLabel => 'பட்டியல் பெயர்';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" பட்டியல் $count பொருட்களுடன் உருவாக்கப்பட்டது';
  }

  @override
  String get noTracking => 'கண்காணிப்பு இல்லை';

  @override
  String get markAsPurchased => 'வாங்கியதாகக் குறி';

  @override
  String editPantryItem(String name) {
    return '$nameஐத் திருத்து';
  }

  @override
  String get idealQuantity => 'உகந்த அளவு';

  @override
  String get currentQuantity => 'தற்போதைய அளவு';

  @override
  String get consumed => 'நுகரப்பட்டது';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit ஆக மீண்டும் நிரப்பப்பட்டது';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\"ஐ சரக்கறையிலிருந்து அகற்றவா?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$nameஐத் திருத்து';
  }

  @override
  String get scanProductTitle => 'தயாரிப்பு ஸ்கேன்';

  @override
  String get positionBarcodeCenter => 'பார்கோடை மையத்தில் வைக்கவும்';

  @override
  String get product => 'தயாரிப்பு';

  @override
  String get settingsAppBar => 'அமைப்புகள்';

  @override
  String get language => 'மொழி';

  @override
  String get languagePortuguese => 'போர்ச்சுகீஸ் (பிரேசில்)';

  @override
  String get languageEnglish => 'ஆங்கிலம்';

  @override
  String get languageSystem => 'கணினி இயல்புநிலை';

  @override
  String get chooseLanguage => 'மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get searchLanguage => 'தேடல் மொழி...';

  @override
  String get currency => 'நாணயம்';

  @override
  String get chooseCurrency => 'நாணயத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get searchCurrency => 'நாணயத்தைத் தேடு...';

  @override
  String get appearance => 'தோற்றம்';

  @override
  String get light => 'ஒளி';

  @override
  String get system => 'கணினி';

  @override
  String get dark => 'இருள்';

  @override
  String get themeColor => 'தீம் நிறம்';

  @override
  String get dynamicColors => 'டைனமிக் நிறங்கள்';

  @override
  String get dynamicColorsSubtitle =>
      'உங்கள் வால்பேப்பரின் அடிப்படையில் வண்ணங்களைப் பயன்படுத்தவும்';

  @override
  String get dynamicColorsEnabledWarning =>
      'தீம் வண்ணம் செயல்பட டைனமிக் வண்ணங்களை முடக்கவும்';

  @override
  String get finance => 'நிதி';

  @override
  String get monthlyBudgetNav => 'மாதாந்திர பட்ஜெட்';

  @override
  String get budgetSubtitle => 'உங்கள் மாதாந்திர செலவுகளைக் கண்காணிக்கவும்';

  @override
  String get data => 'தரவு';

  @override
  String get backupNav => 'காப்புப்பிரதி';

  @override
  String get backupSubtitle =>
      'உங்கள் தரவை ஏற்றுமதி அல்லது இறக்குமதி செய்யவும்';

  @override
  String get about => 'பற்றி';

  @override
  String get version => 'பதிப்பு';

  @override
  String get privacy => 'தனியுரிமை';

  @override
  String get termsOfUse => 'பயன்பாட்டு விதிமுறைகள்';

  @override
  String get myAchievements => 'எனது சாதனைகள்';

  @override
  String get itemsPurchased => 'வாங்கிய பொருட்கள்';

  @override
  String get totalSavings => 'மொத்த சேமிப்பு';

  @override
  String get currentStreak => 'தற்போதைய ஸ்ட்ரீக்';

  @override
  String streakDays(int count) {
    return '$days நாட்கள்';
  }

  @override
  String get unlockedBadges => 'திறக்கப்பட்ட பேட்ஜ்கள்';

  @override
  String get badgeBeginner => 'ஆரம்பநிலை';

  @override
  String get badgeOrganized => 'ஏற்பாடு செய்யப்பட்டது';

  @override
  String get badgeSavingMaster => 'சேவிங் மாஸ்டர்';

  @override
  String get badgeSuperPlanner => 'சூப்பர் பிளானர்';

  @override
  String get backupTitle => 'காப்புப்பிரதி';

  @override
  String get backupPremiumDescription =>
      'காப்புப்பிரதி மற்றும் ஏற்றுமதி ஒரு பிரீமியம் அம்சம்';

  @override
  String get exportData => 'தரவை ஏற்றுமதி செய்';

  @override
  String get exportDataSubtitle =>
      'அனைத்து பட்டியல்களையும் JSON ஆக சேமிக்கவும்';

  @override
  String get importData => 'தரவை இறக்குமதி செய்';

  @override
  String get importDataSubtitle => 'JSON இலிருந்து பட்டியல்களை மீட்டெடுக்கவும்';

  @override
  String get importJsonTitle => 'JSON ஐ இறக்குமதி செய்';

  @override
  String get importJsonHint => 'காப்புப்பிரதி JSON ஐ இங்கே ஒட்டவும்...';

  @override
  String get backupExported => 'காப்புப்பிரதி ஏற்றுமதி செய்யப்பட்டது!';

  @override
  String get budgetAppBar => 'மாதாந்திர பட்ஜெட்';

  @override
  String get budgetPremiumLocked =>
      'உலகளாவிய மாதாந்திர பட்ஜெட் பிரீமியம் அம்சம்';

  @override
  String get budgetUpgradePrompt => 'திறக்க மேம்படுத்தவும்';

  @override
  String get noBudgetDefined => 'பட்ஜெட் எதுவும் அமைக்கப்படவில்லை';

  @override
  String totalEstimated(String amount) {
    return 'மொத்த மதிப்பீடு: $amount';
  }

  @override
  String get setBudgetButton => 'பட்ஜெட்டை அமை';

  @override
  String get budgetLists => 'பட்டியல்கள்';

  @override
  String get budgetValueLabel => 'தொகை';

  @override
  String get setBudgetTitle => 'மாதாந்திர பட்ஜெட்';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'அனைத்தும்';

  @override
  String get filterPending => 'நிலுவையில்';

  @override
  String get filterPurchased => 'வாங்கப்பட்டவை';

  @override
  String get sortName => 'பெயர்';

  @override
  String get sortCategory => 'வகை';

  @override
  String get sortDate => 'தேதி';

  @override
  String get sortManual => 'கைமுறை';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$total உருப்படிகளில் $purchased';
  }

  @override
  String progressBudget(String amount) {
    return 'பட்ஜெட்: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'மொத்தம்: $amount';
  }

  @override
  String get addItem => 'பொருளைச் சேர்';

  @override
  String get itemName => 'பொருளின் பெயர்';

  @override
  String get quantityShort => 'அளவு';

  @override
  String get unit => 'அலகு';

  @override
  String get category => 'வகை';

  @override
  String get estimatedPrice => 'மதிப்பிடப்பட்ட விலை';

  @override
  String get addItemPrice => 'மதிப்பிடப்பட்ட விலை';

  @override
  String get editItem => 'பொருளைத் திருத்து';

  @override
  String get quantityFull => 'அளவு';

  @override
  String get editItemPrice => 'மதிப்பிடப்பட்ட விலை';

  @override
  String get addToPantry => 'சரக்கறையில் சேர்';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\"ஐ உங்கள் சரக்கறையில் சேர்க்கவா?';
  }

  @override
  String get yes => 'ஆம்';

  @override
  String get productName => 'பொருளின் பெயர்';

  @override
  String get idealQty => 'உகந்த அளவு';

  @override
  String get currentQty => 'தற்போதைய அளவு';

  @override
  String get trackStock => 'இருப்பைக் கண்காணி';

  @override
  String get trackStockActive => 'ஷாப்பிங் பரிந்துரைகளில் தோன்றும்';

  @override
  String get trackStockInactive => 'ஷாப்பிங் பரிந்துரையை உருவாக்காது';

  @override
  String get createListDialog => 'பட்டியலை உருவாக்கு';

  @override
  String get renameListDialog => 'பட்டியலை மறுபெயரிடு';

  @override
  String get listHistory => 'பட்டியல் வரலாறு';

  @override
  String get myLists => 'எனது பட்டியல்கள்';

  @override
  String get viewActive => 'செயலில் உள்ளவற்றைப் பார்';

  @override
  String get viewHistory => 'வரலாற்றைப் பார்';

  @override
  String get noArchivedLists => 'காப்பகப்படுத்தப்பட்ட பட்டியல்கள் இல்லை';

  @override
  String get noActiveLists => 'செயலில் உள்ள பட்டியல்கள் இல்லை';

  @override
  String completedOn(String date) {
    return '$date அன்று முடிக்கப்பட்டது';
  }

  @override
  String get sharedLabel => 'பகிரப்பட்டது';

  @override
  String get restore => 'மீட்டெடு';

  @override
  String get removeSharedTooltip => 'அகற்று';

  @override
  String get deleteListTitle => 'பட்டியலை நீக்கு';

  @override
  String deleteListContent(String name) {
    return '\"$name\"ஐ நிச்சயமாக நீக்க விரும்புகிறீர்களா? அனைத்து பொருட்களும் அகற்றப்படும்.';
  }

  @override
  String get removeSharedListTitle => 'பகிரப்பட்ட பட்டியலை அகற்று';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\"ஐ உங்கள் பட்டியல்களிலிருந்து அகற்றவா? அசல் பட்டியல் பாதிக்கப்படாது.';
  }

  @override
  String get createNewList => 'புதிய பட்டியலை உருவாக்கு';

  @override
  String get aiAssistant => 'AI உதவியாளர்';

  @override
  String get aiAssistantDescription =>
      'எங்கள் AI உதவியாளருடன் ஸ்மார்ட் பரிந்துரைகள், சமையல் குறிப்புகள் மற்றும் தனிப்பயனாக்கப்பட்ட உதவிக்குறிப்புகளைப் பெறுங்கள்.';

  @override
  String get generalAssistant => 'பொது உதவியாளர்';

  @override
  String get newChat => 'புதிய அரட்டை';

  @override
  String get noHistory => 'அரட்டை வரலாறு இல்லை';

  @override
  String get deleteSession => 'அரட்டையை நீக்கு';

  @override
  String get deleteSessionConfirm =>
      'இந்த அரட்டையை நிச்சயமாக நீக்க விரும்புகிறீர்களா? செய்திகள் நிரந்தரமாக இழக்கப்படும்.';

  @override
  String get clearHistory => 'வரலாற்றை அழி';

  @override
  String get clearHistoryConfirm =>
      'இந்த அமர்வில் உள்ள அனைத்து செய்திகளையும் அழிக்கவா?';

  @override
  String get chatHint => 'உங்கள் செய்தியைத் தட்டச்சு செய்க...';

  @override
  String get chatHintBlocked => 'அரட்டையடிக்க AI ஐ திறக்கவும்';

  @override
  String chatError(String error) {
    return 'அரட்டையை ஏற்றுவதில் பிழை: $error';
  }

  @override
  String get aiAssistantTitle => 'AI உதவியாளர்';

  @override
  String get closeSheet => 'மூடு';

  @override
  String get scanBarcodeTitle => 'பார்கோடு ஸ்கேன் செய்யவும்';

  @override
  String get listHelp => 'உங்கள் பட்டியலில் எப்படி உதவ முடியும்?';

  @override
  String get generalHelp => 'இன்று உங்கள் ஷாப்பிங்கில் எப்படி உதவ முடியும்?';

  @override
  String get chatSubtitle =>
      'பொருள் பரிந்துரைகள், சமையல் குறிப்புகள் அல்லது சேமிப்பு உதவிக்குறிப்புகளைக் கேளுங்கள்.';

  @override
  String get aiError =>
      'மன்னிக்கவும், உங்கள் கோரிக்கையைச் செயலாக்குவதில் பிழை ஏற்பட்டது. உங்கள் இணைப்பைச் சரிபார்த்து அல்லது பின்னர் மீண்டும் முயற்சிக்கவும்.';

  @override
  String get aiLimitAlmostReached => 'கிட்டத்தட்ட AI செய்திகள் இல்லை';

  @override
  String get unlockAi => 'வரம்பற்ற AI ஐ திறக்கவும்';

  @override
  String get aiTeaserFallback =>
      'உங்கள் ஷாப்பிங்கிற்கான வரம்பற்ற AI உதவிக்குறிப்புகளைப் பெற, முழு பதிலைத் திறக்க Premium க்கு குழுசேரவும்...';

  @override
  String aiUsageWarning(int remaining) {
    return 'இந்த மாதம் $remaining AI செயல்கள் மீதமுள்ளன — வரம்பற்ற மேம்படுத்தல்';
  }

  @override
  String get aiUsageExhausted =>
      'மாதாந்திர AI வரம்பை அடைந்தது. வரம்பற்ற →க்கு Pro க்கு மேம்படுத்தவும்';

  @override
  String get kipiListTitle => 'கிபிலிஸ்ட்';

  @override
  String get loginPrompt => 'பிரீமியம் அம்சங்களைத்\nதிறக்க உள்நுழைக';

  @override
  String get signInGoogle => 'Google மூலம் உள்நுழைக';

  @override
  String get signInApple => 'Apple மூலம் உள்நுழைக';

  @override
  String get continueAsGuest => 'விருந்தினராகத் தொடர்க';

  @override
  String get onboardingWelcomeTitle => 'KipiListக்கு வரவேற்கிறோம்';

  @override
  String get onboardingWelcomeDesc =>
      'உங்கள் ஷாப்பிங்கை ஒழுங்கமைத்து பணத்தைச் சேமிப்பதற்கான சிறந்த வழி.';

  @override
  String get onboardingSetupTitle => 'உங்கள் அனுபவத்தைத் தனிப்பயனாக்குங்கள்';

  @override
  String get onboardingSetupDesc =>
      'உங்களுக்காக KipiList எப்படி இருக்க வேண்டும் மற்றும் வேலை செய்ய வேண்டும் என்பதை தேர்வு செய்யவும்.';

  @override
  String get onboardingLoginTitle => 'எல்லாவற்றையும் கிளவுட்டில் சேமிக்கவும்';

  @override
  String get onboardingLoginDesc =>
      'உங்கள் எல்லா சாதனங்களிலும் உங்கள் தரவு ஒத்திசைக்கப்பட்டது';

  @override
  String get onboardingShareTitle =>
      'நீங்கள் விரும்புபவர்களுடன் பகிர்ந்து கொள்ளுங்கள்';

  @override
  String get onboardingShareDesc =>
      'உண்மையான நேரத்தில் குடும்பம் மற்றும் நண்பர்களுடன் பட்டியல்களை ஒத்திசைக்கவும்';

  @override
  String get onboardingPremiumTitle => 'அனைத்து அம்சங்களையும் திறக்கவும்';

  @override
  String get onboardingPremiumSubtitle =>
      'உங்கள் ஷாப்பிங் பட்டியல்களில் இருந்து அதிகமானவற்றைப் பெறுங்கள்';

  @override
  String get onboardingAnnualBadge => 'சிறந்த மதிப்பு';

  @override
  String get onboardingMonthlyLabel => 'மாதாந்திர';

  @override
  String get onboardingAnnualLabel => 'ஆண்டு';

  @override
  String get onboardingViewAllPlans => 'அனைத்து திட்டங்களையும் பார்க்கவும்';

  @override
  String get onboardingSubscribeCta => 'குழுசேர்';

  @override
  String get onboardingCancelAnytime =>
      'எப்போது வேண்டுமானாலும் ரத்து செய்யலாம். உறுதி இல்லை.';

  @override
  String get onboardingContinueAsGuest => 'விருந்தினராக தொடரவும்';

  @override
  String get onboardingRestore => 'வாங்குதல்களை மீட்டெடுக்கவும்';

  @override
  String get onboardingRestoreDesc =>
      'ஏற்கனவே சந்தா உள்ளதா? அதை மீட்டெடுக்க இங்கே தட்டவும்.';

  @override
  String get onboardingMaybeLater => 'பின்னர் இருக்கலாம்';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'ஏய் $name, உங்கள் ஷாப்பிங்கை சரியான முறையில் ஒழுங்கமைக்கவும்.';
  }

  @override
  String get onboardingSlide1Title => 'ஸ்மார்ட் ஷாப்பிங் பட்டியல்கள்';

  @override
  String get onboardingSlide1Body =>
      'பட்டியல்களை உடனடியாக உருவாக்கி பகிரவும். உங்கள் பழக்கவழக்கங்களின் அடிப்படையில் கிபி தானாகவே பொருட்களைச் சேர்க்கிறது.';

  @override
  String get onboardingSlide2Title => 'கிபியை சந்திக்கவும்';

  @override
  String get onboardingSlide2Body =>
      'எதையும் கேளுங்கள் - பட்டியல்களை உருவாக்கவும், சமையல் குறிப்புகளைக் கண்டறியவும், உங்கள் சரக்கறையைக் கண்காணிக்கவும், உங்கள் வாரத்தைத் திட்டமிடவும்.';

  @override
  String get onboardingSlide3Title => 'சரக்கறை & உணவு திட்டமிடல்';

  @override
  String get onboardingSlide3Body =>
      'உங்களிடம் உள்ளதைக் கண்காணிக்கவும், உணவைத் திட்டமிடவும் மற்றும் ஷாப்பிங் பட்டியல்களை தானாக உருவாக்கவும்.';

  @override
  String get onboardingExit => 'வெளியேறு';

  @override
  String get onboardingPersonalizationTitle =>
      'உங்களைப் பற்றி தெரிந்து கொள்வோம்';

  @override
  String get onboardingPersonalizationDesc =>
      'உங்கள் பரிந்துரைகளைத் தனிப்பயனாக்கவும், ஷாப்பிங்கை சிறந்ததாக்கவும் இதைப் பயன்படுத்துவோம்.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'உங்களுக்கு பிடித்த உணவு எது?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'எ.கா. பீட்சா, சுஷி, லாசக்னா...';

  @override
  String get onboardingPersonalizationCta => 'தொடரவும்';

  @override
  String get onboardingPersonalizationSkip => 'இப்போதைக்கு தவிர்க்கவும்';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'தொடர உங்களுக்கு பிடித்த உணவை எங்களிடம் கூறுங்கள்';

  @override
  String get settingsDefaultScreen => 'இயல்புநிலை முகப்புத் திரை';

  @override
  String get settingsDefaultScreenSubtitle =>
      'ஷாப்பிங் பட்டியல் அல்லது AI அரட்டைக்கு இடையே தேர்வு செய்யவும்';

  @override
  String get settingsScreenList => 'ஷாப்பிங் பட்டியல்';

  @override
  String get settingsScreenChat => 'AI அரட்டை';

  @override
  String loginError(String error) {
    return 'உள்நுழைவு பிழை: $error';
  }

  @override
  String get paywallTitle => 'கிபிலிஸ்ட் பிரீமியம்';

  @override
  String get paywallLoadingError =>
      'சலுகைகளை ஏற்றுவதில் பிழை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get paywallPurchaseError =>
      'வாங்குவதை முடிக்க முடியவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get paywallRestoreError => 'மீட்டமைக்க செயலில் சந்தா எதுவும் இல்லை.';

  @override
  String paywallTrialDays(Object days) {
    return '$days நாட்கள் இலவசம்';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count வாரங்கள் இலவசம்',
      one: '$count வாரம் இலவசம்',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count மாதங்கள் இலவசம்',
      one: '$count மாதம் இலவசம்',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'இலவசமாக முயற்சிக்கவும்!';

  @override
  String get paywallTrialSubtitle =>
      'எப்போது வேண்டுமானாலும் ரத்து செய்யலாம். இன்று கட்டணம் இல்லை.';

  @override
  String get paywallTrialCta => 'இலவச சோதனையைத் தொடங்கவும்';

  @override
  String get recipeAddToList => 'ஷாப்பிங் பட்டியலில் சேர்க்கவும்';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 $listName இல் சேர்க்கப்பட்டது';
  }

  @override
  String get noListSelected =>
      'பட்டியல் எதுவும் தேர்ந்தெடுக்கப்படவில்லை. முதலில் ஒரு பட்டியலைத் திறக்கவும்.';

  @override
  String get paywallFeaturesTitle => 'உங்களுக்கு தேவையான அனைத்தும்:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI உங்கள் பட்டியலை தானாக ஒழுங்கமைக்கிறது';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'உங்களுக்கு தேவையான பல பட்டியல்களை உருவாக்கவும்';

  @override
  String get paywallFeatureDescSharing =>
      'உண்மையான நேரத்தில் ஒன்றாக ஷாப்பிங் செய்யுங்கள்';

  @override
  String get paywallFeatureDescPantry =>
      'நீங்கள் வீட்டில் இருப்பதைக் கண்காணிக்கவும்';

  @override
  String get paywallFeatureDescBudget => 'ஒவ்வொரு மாதமும் பட்ஜெட்டில் இருங்கள்';

  @override
  String get paywallFeatureUnlimitedLists => 'வரம்பற்ற பட்டியல்கள்';

  @override
  String get paywallFeatureSmartAI => 'ஸ்மார்ட் AI';

  @override
  String get paywallFeatureExpenseControl => 'செலவு கட்டுப்பாடு';

  @override
  String get paywallFeatureSharing => 'பகிர்தல்';

  @override
  String get paywallBeforeAfterTitle => 'AI முன்னும் பின்னும்:';

  @override
  String get paywallLabelCommon => 'பொதுவானது';

  @override
  String get paywallLabelPro => 'கிபிலிஸ்ட் புரோ';

  @override
  String get paywallBeforeItem1 => 'அரிசி';

  @override
  String get paywallBeforeItem2 => 'சோப்பு';

  @override
  String get paywallBeforeItem3 => 'இறைச்சி';

  @override
  String get paywallBeforeItem4 => 'ரொட்டி';

  @override
  String get paywallAfterItem1 => 'தானியங்கள்';

  @override
  String get paywallAfterItem2 => 'சுத்தம் செய்தல்';

  @override
  String get paywallAfterItem3 => 'இறைச்சிகள்';

  @override
  String get paywallAfterItem4 => 'பேக்கரி';

  @override
  String get paywallTestimonialsTitle => 'எங்கள் பயனர்கள் என்ன சொல்கிறார்கள்:';

  @override
  String get paywallTestimonial1Name => 'ஆன் எஸ்.';

  @override
  String get paywallTestimonial1Text =>
      'AI எனது ஷாப்பிங்கை நொடிகளில் ஒழுங்குபடுத்துகிறது. ஒரு சந்தை பயணத்திற்கு 20 நிமிடம் சேமிக்கிறேன்.';

  @override
  String get paywallTestimonial2Name => 'சார்லஸ் எம்.';

  @override
  String get paywallTestimonial2Text =>
      'நான் மீண்டும் ஒரு பட்டியல் உருப்படியை மறக்கவில்லை. AI அரட்டை பரபரப்பானது!';

  @override
  String get paywallSocialProof =>
      '+2,400 குடும்பங்கள் இதைப் பயன்படுத்துகின்றன';

  @override
  String get paywallCtaUnlock => 'புரோவைத் திறக்கவும்';

  @override
  String get paywallBestValue => 'சிறந்த மதிப்பு';

  @override
  String get paywallMostPopular => 'மிகவும் பிரபலமானது';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'பாதுகாப்பான கட்டணம்';

  @override
  String get paywallSelectPlan => 'உங்கள் திட்டத்தை தேர்வு செய்யவும்:';

  @override
  String paywallSavePercent(Object percent) {
    return 'சேமி $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return '$price/மாதம் மட்டுமே';
  }

  @override
  String get paywallPackageAnnual => 'வருடாந்திர திட்டம்';

  @override
  String get paywallPackageMonthly => 'மாதாந்திர திட்டம்';

  @override
  String get paywallPackageLifetime => 'வாழ்நாள் அணுகல்';

  @override
  String get paywallCancelAnytime =>
      'எப்போது வேண்டுமானாலும் ரத்து செய்யலாம். உறுதி இல்லை.';

  @override
  String paywallTrialInCard(int days) {
    return 'முதல் $days நாட்கள் இலவசம்';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Play மூலம் பாதுகாக்கப்பட்டது · எப்போது வேண்டுமானாலும் ரத்துசெய்யலாம்';

  @override
  String get paywallPolicy => 'தனியுரிமைக் கொள்கை';

  @override
  String get paywallTerms => 'பயன்பாட்டு விதிமுறைகள்';

  @override
  String get paywallRestore => 'மீட்டமை';

  @override
  String get paywallHeroHeadline =>
      'Kipi AI எப்போதும் உங்கள் பக்கத்தில் இருக்கும்';

  @override
  String get paywallHeroSubtitle =>
      'உருப்படிகளைச் சேர்க்கவும், பட்டியல்களை ஒழுங்கமைக்கவும் மற்றும் உங்கள் பாக்கெட்டில் AI உடன் நேரத்தைச் சேமிக்கவும்';

  @override
  String get paywallBenefit1Desc =>
      '24/7 உருப்படிகளைச் சேர்க்கிறது, ஒழுங்கமைக்கிறது மற்றும் பரிந்துரைக்கிறது';

  @override
  String get paywallBenefit2Desc => '3-பட்டியல் வரம்பு இல்லை';

  @override
  String get paywallBenefit3Desc =>
      'செலவு கண்காணிப்பு மற்றும் குடும்ப பட்டியல்கள்';

  @override
  String get paywallPackageMonthlyDesc => 'முழு நெகிழ்வுத்தன்மை';

  @override
  String paywallCtaTrialDays(int days) {
    return 'இலவசமாக தொடங்கு — $days நாட்கள்';
  }

  @override
  String get premiumUpgrade => 'திறக்க மேம்படுத்தவும்';

  @override
  String get itemRemoved => 'பொருள் அகற்றப்பட்டது';

  @override
  String get undo => 'செயல்தவிர்';

  @override
  String get emptyListTitle => 'உங்கள் பட்டியல் காலியாக உள்ளது';

  @override
  String get emptyListSubtitle => 'தொடங்க பொருட்களைச் சேர்க்கவும்';

  @override
  String get noListFoundTitle => 'பட்டியல்கள் எதுவும் காணப்படவில்லை';

  @override
  String get noListFoundSubtitle => 'தொடங்க உங்கள் முதல் பட்டியலை உருவாக்கவும்';

  @override
  String get createFirstList => 'முதல் பட்டியலை உருவாக்கு';

  @override
  String get listBudgetTitle => 'பட்டியல் பட்ஜெட்';

  @override
  String get budgetAmountLabel => 'பட்ஜெட் தொகை';

  @override
  String get removeBudget => 'அகற்று';

  @override
  String get prefUnlimitedLists => 'வரம்பற்ற பட்டியல்கள்';

  @override
  String get prefSharing => 'பட்டியல்களைப் பகிர்க';

  @override
  String get prefFullHistory => 'முழு வரலாறு';

  @override
  String get prefExportData => 'தரவை ஏற்றுமதி செய்';

  @override
  String get prefCustomThemes => 'தனிப்பயன் தீம்கள்';

  @override
  String get prefMonthlyBudget => 'உலகளாவிய மாதாந்திர பட்ஜெட்';

  @override
  String get prefAIAssistant => 'தனிப்பட்ட AI உதவியாளர்';

  @override
  String get prefUnlimitedPantry => 'வரம்பற்ற சரக்கறை';

  @override
  String get prefInteractiveArtifacts => 'ஊடாடும் AI கலைப்பொருட்கள்';

  @override
  String get themeGreen => 'பச்சை';

  @override
  String get themeBlue => 'நீலம்';

  @override
  String get themePurple => 'ஊதா';

  @override
  String get themeRed => 'சிவப்பு';

  @override
  String get themeOrange => 'ஆரஞ்சு';

  @override
  String get themePink => 'இளஞ்சிவப்பு';

  @override
  String get themeIndigo => 'இண்டிகோ';

  @override
  String get themeAmber => 'அம்பர்';

  @override
  String get themeTeal => 'டீல்';

  @override
  String get themeBrown => 'பழுப்பு';

  @override
  String get catFruits => 'பழங்கள்';

  @override
  String get catCleaning => 'சுத்தம்';

  @override
  String get catBeverages => 'பானங்கள்';

  @override
  String get catBakery => 'பேக்கரி';

  @override
  String get catOthers => 'மற்றவை';

  @override
  String get unitPack => 'கட்டு';

  @override
  String get shareSubject => 'ஷாப்பிங் பட்டியல்';

  @override
  String get monthlyBudgetTitle => 'மாதாந்திர பட்ஜெட்';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'பட்டியலை நீக்கு';

  @override
  String get pantryItemRemoved => 'பொருள் அகற்றப்பட்டது';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit பொருட்கள் வாங்கப்பட வேண்டும்',
      one: '$deficit பொருள் வாங்கப்பட வேண்டும்',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'வண்டி மொத்தம்';

  @override
  String get restockLabel => 'மீண்டும் நிரப்பு';

  @override
  String get advancedFeatures => 'மேம்பட்ட அம்சங்கள்';

  @override
  String get selectAll => 'அனைத்தையும் தேர்ந்தெடு';

  @override
  String get deselectAll => 'அனைத்தையும் தேர்ந்தெடுக்காமல் விடு';

  @override
  String get monthlyBudgetAppBar => 'மாதாந்திர பட்ஜெட்';

  @override
  String get budgetEditTitle => 'மாதாந்திர பட்ஜெட்';

  @override
  String get budgetDashboardTitle => 'டாஷ்போர்டு';

  @override
  String get selectListForDashboard =>
      'டாஷ்போர்டைப் பார்க்க ஒரு பட்டியலைத் தேர்ந்தெடுக்கவும்.';

  @override
  String get spendingAnalysis => 'செலவு பகுப்பாய்வு';

  @override
  String get noItemsToAnalyze =>
      'பகுப்பாய்வு செய்ய பட்டியலில் பொருட்கள் எதுவும் இல்லை.';

  @override
  String get markItemsToSeeAnalysis =>
      'பகுப்பாய்வைப் பார்க்க பொருட்களை வாங்கியதாகக் குறிக்கவும்.';

  @override
  String get totalSpending => 'மொத்த செலவு';

  @override
  String get spendingByCategory => 'வகை வாரியாக செலவு';

  @override
  String get achievements => 'சாதனைகள்';

  @override
  String get exportPdfExcel => 'PDF/Excel ஏற்றுமதி';

  @override
  String get exportPdf => 'PDF ஆக ஏற்றுமதி';

  @override
  String get exportExcel => 'Excel ஆக ஏற்றுமதி';

  @override
  String get organizingAi => 'AI உடன் ஒழுங்கமைக்கிறது...';

  @override
  String get yesLabel => 'ஆம்';

  @override
  String get noLabel => 'இல்லை';

  @override
  String get shareListText => 'எனது ஷாப்பிங் பட்டியல்';

  @override
  String get emptyListAddItems =>
      'உங்கள் பட்டியல் காலியாக உள்ளது! முதலில் பொருட்களைச் சேர்க்கவும். ℹ️';

  @override
  String get listOrganizedMagic =>
      'பட்டியல் வகைகளால் மாயமாக ஒழுங்கமைக்கப்பட்டது! ✨';

  @override
  String get shoppingMode => 'ஷாப்பிங் முறை';

  @override
  String get smartOrganization => 'ஸ்மார்ட் ஒழுங்கமைப்பு';

  @override
  String get savings => 'சேமிப்புகள்';

  @override
  String get shoppingModeHeader => 'ஷாப்பிங் முறை';

  @override
  String get shareAsText => 'பொருட்களை வடிவமைக்கப்பட்ட உரையாக அனுப்புக';

  @override
  String get shareRealtime => 'மற்றவர்களுடன் நிகழ்நேர ஒத்திசைவு';

  @override
  String get quickRecipe => 'விரைவான சமையல்';

  @override
  String get quickRecipePrompt =>
      'எனது பட்டியலில் உள்ள பொருட்களுடன் சமையல் குறிப்புகளைப் பரிந்துரைக்கவும்.';

  @override
  String get economyTips => 'சிக்கன உதவிக்குறிப்புகள்';

  @override
  String get economyTipsPrompt =>
      'இந்த கொள்முதலில் நான் எப்படி பணத்தை மிச்சப்படுத்தலாம்?';

  @override
  String get organizeAisles => 'இடைகழிகள் வாரியாக ஒழுங்கமை';

  @override
  String get organizeAislesPrompt => 'சந்தை இடைகழிகள் வாரியாக ஒழுங்கமைக்கவும்.';

  @override
  String get recipeSuggestion => 'சமையல் பரிந்துரை';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining கிரெடிட்கள் மீதம்';
  }

  @override
  String get addAllToList => 'அனைத்தையும் பட்டியலில் சேர்';

  @override
  String get organizeByAisles => 'இடைகழிகள் வாரியாக ஒழுங்கமை';

  @override
  String get voiceTranscriptionTooltip => 'குரல் தட்டச்சு (இலவசம்)';

  @override
  String get aiVoiceCommandTooltip => 'AI குரல் கட்டளை (பிரீமியம்)';

  @override
  String get voiceCommandTitle => 'AI குரல் கட்டளை';

  @override
  String get voiceCommandContent =>
      'உங்கள் பட்டியலை நிர்வகிக்க இயற்கையாகப் பேசுங்கள்!\n\nஎடுத்துக்காட்டுகள்:\n• \'ரொட்டி, சீஸ் மற்றும் ஹாம் சேர்க்கவும்\'\n• \'சலவை சோப்பை அகற்றவும்\'\n• \'தீத்தை நீலமாக மாற்றவும்\'\n\nஇது KipiList Premium இன் பிரத்யேக அம்சமாகும்.';

  @override
  String get voiceCommandPlanBtn => 'திட்டங்களைப் பார்';

  @override
  String get itemsAddedSuccess =>
      'பொருட்கள் பட்டியலில் வெற்றிகரமாக சேர்க்கப்பட்டன!';

  @override
  String get viewList => 'பட்டியலைப் பார்';

  @override
  String get feedbackTitle => 'கருத்தை அனுப்புக';

  @override
  String get feedbackPrompt => 'நீங்கள் எதைப் பகிர விரும்புகிறீர்கள்?';

  @override
  String get feedbackTypeBug => 'பிழையைப் புகாரளிக்கவும்';

  @override
  String get feedbackTypeBugHint => 'ஏதோ வேலை செய்யவில்லை';

  @override
  String get feedbackTypeSuggestion => 'பரிந்துரை';

  @override
  String get feedbackTypeSuggestionHint => 'பயன்பாட்டை மேம்படுத்தும் யோசனை';

  @override
  String get feedbackTypeTranslation => 'மொழிபெயர்ப்பு சிக்கல்';

  @override
  String get feedbackTypeTranslationHint =>
      'தவறான அல்லது இயற்கையற்ற மொழிபெயர்ப்பு';

  @override
  String get feedbackTypeFeature => 'அம்சக் கோரிக்கை';

  @override
  String get feedbackTypeFeatureHint => 'நீங்கள் பார்க்க விரும்பும் அம்சம்';

  @override
  String get feedbackTypeOther => 'மற்றவை';

  @override
  String get feedbackTypeOtherHint => 'மற்ற வகை கருத்து';

  @override
  String get feedbackHint => 'உங்கள் கருத்தை விரிவாக விவரிக்கவும்...';

  @override
  String get feedbackSend => 'கருத்தை அனுப்புக';

  @override
  String get feedbackSending => 'அனுப்புகிறது...';

  @override
  String get feedbackThankYou => 'நன்றி!';

  @override
  String get feedbackThankYouMessage =>
      'உங்கள் கருத்து பெறப்பட்டது, மேலும் இது KipiList ஐ அனைவருக்கும் மேம்படுத்த உதவுகிறது.';

  @override
  String get feedbackBack => 'பின்';

  @override
  String feedbackError(String error) {
    return 'அனுப்புவதில் பிழை: $error';
  }

  @override
  String get feedbackRetry => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get feedbackSettingsTitle => 'கருத்தை அனுப்புக';

  @override
  String get feedbackSettingsSubtitle =>
      'பிழைகளைப் புகாரளிக்கவும், மேம்பாடுகளைப் பரிந்துரைக்கவும் அல்லது மொழிபெயர்ப்புகளைச் சரிசெய்யவும்';

  @override
  String get aiEnergy => 'AI ஆற்றல்';

  @override
  String get searchInConversation => 'உரையாடலில் தேடு...';

  @override
  String get noMessagesFound => 'செய்திகள் எதுவும் இல்லை';

  @override
  String get suggestedQuestions => 'பரிந்துரைக்கப்பட்ட கேள்விகள்:';

  @override
  String get shoppingAssistant => 'ஷாப்பிங் உதவியாளர்';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total இல் $purchased வாங்கப்பட்டது';
  }

  @override
  String get estimatedCost => 'மதிப்பிடப்பட்டுள்ளது';

  @override
  String get viewItems => 'பொருட்களைக் காண்க';

  @override
  String get noItemsInList => 'பட்டியலில் உருப்படிகள் இல்லை';

  @override
  String get longHistoryWarning =>
      'நீண்ட வரலாறு: சிறந்த செயல்திறனுக்காக அசிஸ்டண்ட் சமீபத்திய செய்திகளில் கவனம் செலுத்துகிறது.';

  @override
  String get listening => 'கேட்கிறது...';

  @override
  String get addDirectToList => 'பட்டியலில் நேரடியாகச் சேர்க்கவும்';

  @override
  String get unlockFullResponse => 'முழு பதிலைத் திறக்கவும்';

  @override
  String get switchList => 'பட்டியலை மாற்றவும்';

  @override
  String get marketMode => 'சந்தை முறை';

  @override
  String get backToChat => 'அரட்டைக்குத் திரும்பு';

  @override
  String get finishShopping => 'ஷாப்பிங்கை முடிக்கவும்';

  @override
  String get welcomeAiAssistant => 'AI உதவியாளருக்கு வரவேற்கிறோம்';

  @override
  String get createListToStartAi =>
      'ஸ்மார்ட் அரட்டையைப் பயன்படுத்த ஷாப்பிங் பட்டியலை உருவாக்கவும்.';

  @override
  String get howCanIHelp => 'நான் எப்படி உதவ முடியும்?';

  @override
  String get chatSubtitleShort =>
      'விலைகள், சமையல் வகைகள், அமைப்பு பற்றி கேளுங்கள்...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total வாங்கப்பட்டது';
  }

  @override
  String get quickReplies => 'விரைவான பதில்கள்:';

  @override
  String get voiceProFeature =>
      'மேம்பட்ட குரல் கட்டளைகள் புரோ. அடிப்படை ஆணையை இயக்குகிறது...';

  @override
  String get viewPro => 'ப்ரோவைக் காண்க';

  @override
  String get errorLoadingChat =>
      'அச்சச்சோ! அரட்டையை ஏற்றுவதில் ஏதோ தவறு ஏற்பட்டது.';

  @override
  String get errorLoadingChatSubtitle =>
      'உங்கள் இணைப்பைச் சரிபார்க்கவும் அல்லது பிறகு முயற்சிக்கவும்.';

  @override
  String get errorOscillation =>
      'நெட்வொர்க் அலைவுகள் அல்லது தற்காலிகமாக கிடைக்காததால் இது நிகழலாம். மீண்டும் முயற்சிக்கவும்.';

  @override
  String get activeListening => 'செயலில் கேட்பது';

  @override
  String get whatToDoWithItem =>
      'இந்த உருப்படியை என்ன செய்ய விரும்புகிறீர்கள்?';

  @override
  String get viewDetails => 'விவரங்களைக் காண்க';

  @override
  String get openMenu => 'மெனுவைத் திற';

  @override
  String get viewRecipe => 'செய்முறையைப் பார்க்கவும்';

  @override
  String get recipeCreated => 'செய்முறை உருவாக்கப்பட்டது!';

  @override
  String get editRecipe => 'திருத்தவும்';

  @override
  String get deleteRecipe => 'நீக்கு';

  @override
  String get deleteRecipeConfirm => 'இந்த செய்முறையை நீக்கவா?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\" ஐ நிச்சயமாக நீக்க விரும்புகிறீர்களா? இந்தச் செயலைச் செயல்தவிர்க்க முடியாது.';
  }

  @override
  String get ingredients => 'தேவையான பொருட்கள்';

  @override
  String get instructions => 'வழிமுறைகள்';

  @override
  String get prepTime => 'தயாரிப்பு நேரம்';

  @override
  String get recipeSaved => 'செய்முறை சேமிக்கப்பட்டது!';

  @override
  String get noRecipesSaved => 'எந்த சமையல் குறிப்புகளும் சேமிக்கப்படவில்லை';

  @override
  String get noRecipesSavedHint =>
      'கீழே உள்ள பொத்தானைத் தட்டுவதன் மூலம் உங்களின் முதல் தனிப்பயன் செய்முறையை உருவாக்கவும்.';

  @override
  String get myRecipes => 'எனது சமையல் வகைகள்';

  @override
  String get newRecipe => 'புதிய செய்முறை';

  @override
  String get loadingRecipes => 'உங்கள் சமையல் குறிப்புகளை ஏற்றுகிறது...';

  @override
  String get errorLoadingRecipes => 'சமையல் குறிப்புகளை ஏற்றுவதில் பிழை';

  @override
  String get addIngredient => 'மூலப்பொருள் சேர்க்கவும்';

  @override
  String get saveRecipe => 'சேமிக்கவும்';

  @override
  String get recipeName => 'செய்முறை பெயர்';

  @override
  String get shortDescription => 'சுருக்கமான விளக்கம்';

  @override
  String get prepTimeMinutes => 'தயாரிப்பு நேரம் (நிமிடங்கள்)';

  @override
  String get instructionsHint => 'வரிக்கு ஒரு படி என தட்டச்சு செய்க...';

  @override
  String get addPhoto => 'புகைப்படத்தைச் சேர்க்கவும்';

  @override
  String get imageUrlPlaceholder => 'அல்லது பட URLஐ ஒட்டவும்';

  @override
  String get tags => 'குறிச்சொற்கள்';

  @override
  String get recipeTags => 'செய்முறை குறிச்சொற்கள்';

  @override
  String get suggestedTags => 'பரிந்துரைக்கப்பட்டது';

  @override
  String get searchRecipes => 'சமையல் குறிப்புகளைத் தேடு...';

  @override
  String get filterByTag => 'குறிச்சொல் மூலம் வடிகட்டவும்';

  @override
  String get allTags => 'அனைத்து';

  @override
  String get recipeDeleted => 'செய்முறை நீக்கப்பட்டது';

  @override
  String get saveChanges => 'மாற்றங்களைச் சேமிக்கவும்';

  @override
  String get editRecipeTitle => 'செய்முறையைத் திருத்தவும்';

  @override
  String get newRecipeTitle => 'புதிய செய்முறை';

  @override
  String get requiredField => 'தேவை';

  @override
  String get chooseImageSource => 'படத்தின் மூலத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get gallery => 'தொகுப்பு';

  @override
  String get enterUrl => 'URL ஐ உள்ளிடவும்';

  @override
  String get recipeImage => 'செய்முறை படம்';

  @override
  String get removeImage => 'படத்தை அகற்று';

  @override
  String get mealPlannerTitle => 'உணவு திட்டமிடுபவர்';

  @override
  String get mealPlannerViewMonthly => 'மாதாந்திர பார்வை';

  @override
  String get mealPlannerViewWeekly => 'வாராந்திர பார்வை';

  @override
  String get mealPlannerNoMeals => 'உணவு திட்டமிடப்படவில்லை';

  @override
  String get mealPlannerNoMealsHint => 'உணவைச் சேர்க்க ஒரு நாளைத் தட்டவும்';

  @override
  String get mealPlannerLoading => 'உணவுத் திட்டத்தை ஏற்றுகிறது...';

  @override
  String get mealPlannerError => 'உணவுத் திட்டத்தை ஏற்றுவதில் பிழை';

  @override
  String get mealPlannerAddMeal => 'சாப்பாடு சேர்க்கவும்';

  @override
  String get mealPlannerEditMeal => 'உணவைத் திருத்தவும்';

  @override
  String get mealPlannerDeleteMeal => 'உணவை அகற்றவும்';

  @override
  String get mealPlannerMealDeleted => 'உணவு நீக்கப்பட்டது';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count சேவைகள்',
      one: '$count பரிமாறும்',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'பரிமாறல்கள்';

  @override
  String get mealPlannerNoteLabel => 'குறிப்பு (விரும்பினால்)';

  @override
  String get mealPlannerSelectRecipe => 'ஒரு செய்முறையைத் தேர்ந்தெடுக்கவும்';

  @override
  String get mealPlannerSearchRecipes => 'சமையல் குறிப்புகளைத் தேடு...';

  @override
  String get mealPlannerNoRecipesFound => 'சமையல் குறிப்புகள் எதுவும் இல்லை';

  @override
  String get mealPlannerNoRecipesHint =>
      'முதலில் சமையல் தாவலில் சமையல் குறிப்புகளை உருவாக்கவும்';

  @override
  String get mealPlannerSave => 'திட்டத்தில் சேர்க்கவும்';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total உணவுகளில் $count திட்டமிடப்பட்டுள்ளது';
  }

  @override
  String get mealPlannerGenerateList => 'ஷாப்பிங் பட்டியலை உருவாக்கவும்';

  @override
  String get mealPlannerGenerateListConfirm =>
      'இந்த வாரம் திட்டமிட்ட உணவுகளில் இருந்து அனைத்து பொருட்களையும் உங்கள் ஷாப்பிங் பட்டியலில் சேர்க்கவா?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count மூலப்பொருள்(கள்) உங்கள் பட்டியலில் சேர்க்கப்பட்டது!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'சேர்க்க பொருட்கள் இல்லை. முதலில் சமையல் குறிப்புகளுடன் சில உணவுகளைத் திட்டமிடுங்கள்.';

  @override
  String get mealPlannerGenerateListNoList =>
      'முதலில் ஷாப்பிங் பட்டியலை உருவாக்கவும்.';

  @override
  String get mealPlannerMealTypeBreakfast => 'காலை உணவு';

  @override
  String get mealPlannerMealTypeLunch => 'மதிய உணவு';

  @override
  String get mealPlannerMealTypeDinner => 'இரவு உணவு';

  @override
  String get mealPlannerMealTypeSnack => 'சிற்றுண்டி';

  @override
  String get mealPlannerDateLabel => 'தேதி';

  @override
  String get mealPlannerWeekEmpty => 'இந்த வாரம் எதுவும் திட்டமிடவில்லை';

  @override
  String get mealPlannerWeekEmptyHint =>
      'உங்கள் உணவைத் திட்டமிடத் தொடங்க எந்த நாளையும் தட்டவும்!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes நிமிடம்';
  }

  @override
  String get inviteToList => 'பட்டியலுக்கு அழைக்கவும்';

  @override
  String get shareApp => 'பயன்பாட்டைப் பகிரவும்';

  @override
  String get shareAppDescription =>
      'KipiList ஐப் பயன்படுத்த நண்பர்களை அழைக்கவும்';

  @override
  String shareReferralText(String url) {
    return 'எனது ஷாப்பிங்கை ஒழுங்கமைக்க KipiListஐப் பயன்படுத்துகிறேன்! எனது இணைப்பு மூலம் பதிவிறக்குங்கள், நாங்கள் இருவரும் 7 நாட்கள் பிரீமியம் இலவசம்: $url';
  }

  @override
  String get shareReferralSubject =>
      'KipiList பிரீமியத்தை 7 நாட்கள் பெறுங்கள்!';

  @override
  String get gestureHint =>
      'தேர்ந்தெடுக்க அழுத்திப் பிடிக்கவும் • அகற்ற ஸ்வைப் செய்யவும்';

  @override
  String get catalogTitle => 'பட்டியல்';

  @override
  String get catalogMyFrequents => 'என் அடிக்கடி';

  @override
  String get catalogSearchGlobal => 'எந்தப் பொருளையும் தேடு...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category இல் தேடவும்...';
  }

  @override
  String get catalogSortPopular => 'மிகவும் பிரபலமானது';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'தேசியர்கள்';

  @override
  String get catalogRareSection => 'உங்கள் நாட்டில் குறைவான பொதுவானது';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 → சேர்';
  }

  @override
  String get catalogProductNotFound =>
      'தயாரிப்பு கிடைக்கவில்லை, பெயரை உள்ளிடவும்';

  @override
  String get catalogBrowse => 'அட்டவணையை உலாவவும்';

  @override
  String get offlineBanner => 'ஆஃப்லைனில் உள்ளீர்கள்';

  @override
  String get consentTitle => 'தனியுரிமை & பகுப்பாய்வு';

  @override
  String get consentBody =>
      'உங்கள் அனுபவத்தை மேம்படுத்த KipiList Firebase Analytics ஐப் பயன்படுத்துகிறது. எங்கள் தனியுரிமைக் கொள்கையின்படி உங்கள் தரவு செயலாக்கப்படுகிறது.';

  @override
  String get consentAccept => 'ஏற்றுக்கொள்';

  @override
  String get consentDecline => 'இல்லை, நன்றி';

  @override
  String get mealPlannerPantryAllAvailable => 'அனைத்து பொருட்கள் கிடைக்கும்';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 காணவில்லை';
  }

  @override
  String get expirationDate => 'காலாவதி தேதி';

  @override
  String get notInformed => 'அமைக்கப்படவில்லை';

  @override
  String get skip => 'தவிர்க்கவும்';

  @override
  String get onboardingAiTitle => 'கிபியுடன் அரட்டையடிக்கவும்';

  @override
  String get onboardingAiGreeting =>
      'ஹாய்! நான் கிபி, உங்கள் தனிப்பட்ட ஷாப்பிங் உதவியாளர்! 🛒';

  @override
  String get onboardingAiAskName => 'உங்கள் பெயர் என்ன?';

  @override
  String get onboardingAiNameHint => 'உங்கள் பெயரை உள்ளிடவும்...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'உங்களை சந்தித்ததில் மகிழ்ச்சி, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'உங்களுக்கு பிடித்த உணவு எது?';

  @override
  String get onboardingAiFoodHint => 'எ.கா. பீட்சா, சுஷி...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'சிறந்த தேர்வுகள்! உங்கள் பட்டியலில் நான் சேர்ப்பது இதோ:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'இது நன்றாக இருக்கிறதா? வேறு ஏதாவது தட்டச்சு செய்து பாருங்கள்!';

  @override
  String get onboardingAiReady =>
      'அருமை! நீங்கள் தொடங்கத் தயாராக உள்ளீர்கள். உங்கள் கணக்கை அமைப்போம்!';

  @override
  String get onboardingAiContinue => 'தொடரவும் →';

  @override
  String get connectionError => 'இணைப்புப் பிழை';

  @override
  String connectionErrorDesc(String error) {
    return 'சேவையகத்துடன் இணைக்க முடியவில்லை. உங்கள் இணையத்தை சரிபார்க்கவும்.\n($error)';
  }

  @override
  String get errorLoadingLists => 'பட்டியல்களை ஏற்றுவதில் பிழை';

  @override
  String get noListsFound => 'பட்டியல்கள் எதுவும் இல்லை';

  @override
  String get backToToday => 'இன்று மீண்டும்';

  @override
  String get quickSuggestions => 'விரைவான பரிந்துரைகள்';

  @override
  String get aiEnergyLow => 'குறைந்த AI ஆற்றல்';

  @override
  String get aiUnlockUnlimited => 'வரம்பற்ற AI ஐ திறக்கவும்';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return 'இன்று $remaining $_temp0';
  }

  @override
  String get aiSubscribeUnlimited => 'வரம்பற்ற AIக்கு குழுசேரவும்';

  @override
  String get unlockWithAd => 'விளம்பரத்துடன் திறக்கவும்';

  @override
  String get conversationHistoryTitle => 'உரையாடல் வரலாறு';

  @override
  String get noConversationsFound => 'உரையாடல்கள் எதுவும் இல்லை';

  @override
  String get errorLoadingHistory => 'வரலாற்றை ஏற்றுவதில் பிழை';

  @override
  String get deleteConversationTitle => 'உரையாடலை நீக்கவா?';

  @override
  String get deleteConversationConfirm =>
      'இந்தச் செயலைச் செயல்தவிர்க்க முடியாது.';

  @override
  String get deleteConversation => 'நீக்கு';

  @override
  String get subscription => 'சந்தா';

  @override
  String get kipiListProActive => 'கிபிலிஸ்ட் புரோ ஆக்டிவ்';

  @override
  String get unlockPremiumTitle =>
      'வரம்பற்ற பட்டியல்கள், AI மற்றும் பலவற்றைத் திறக்கவும்';

  @override
  String get loadingSubscription => 'சந்தாவை ஏற்றுகிறது...';

  @override
  String get errorLoadingSubscription => 'சந்தாவை ஏற்றுவதில் பிழை';

  @override
  String get profileSection => 'சுயவிவரம்';

  @override
  String get myProfile => 'எனது சுயவிவரம்';

  @override
  String get profileSubtitle =>
      'AI உதவியாளருக்கான தனிப்பட்ட விருப்பத்தேர்வுகள்';

  @override
  String get customizeAiAssistant => 'AI உதவியாளரைத் தனிப்பயனாக்கு';

  @override
  String get assistantHistory => 'உதவியாளர் வரலாறு';

  @override
  String get assistantHistorySubtitle =>
      'உங்கள் உரையாடல் வரலாற்றைப் பார்க்கவும்';

  @override
  String get manageCategories => 'வகைகளை நிர்வகிக்கவும்';

  @override
  String get manageCategoriesSubtitle => 'உருப்படி வகைகளை நிர்வகிக்கவும்';

  @override
  String get customizeAssistant => 'தனிப்பயனாக்கு';

  @override
  String get assistantName => 'உதவியாளர் பெயர்';

  @override
  String get chooseIcon => 'ஐகானைத் தேர்ந்தெடுக்கவும்';

  @override
  String get profileSaved => 'சுயவிவரம் வெற்றிகரமாகச் சேமிக்கப்பட்டது!';

  @override
  String get errorSavingProfile => 'சேமிப்பதில் பிழை: null';

  @override
  String get userProfile => 'பயனர் சுயவிவரம்';

  @override
  String get profileDescription =>
      'உங்கள் தனிப்பட்ட விருப்பங்களை எங்களிடம் கூறுங்கள், இதன் மூலம் AI உதவியாளர் தனிப்பயனாக்கப்பட்ட பொருட்கள் மற்றும் சமையல் குறிப்புகளை பரிந்துரைக்க முடியும்.';

  @override
  String get preferredMarket => 'விருப்பமான சந்தை';

  @override
  String get preferredMarketHint => 'எ.கா.: சூப்பர் மார்க்கெட் எக்ஸ்';

  @override
  String get dietaryRestrictions => 'உணவு கட்டுப்பாடுகள்';

  @override
  String get dietaryRestrictionsHint => 'எ.கா: சைவம், சைவம், பசையம் இல்லாதது';

  @override
  String get marketsToAvoid => 'தவிர்க்க வேண்டிய சந்தைகள்';

  @override
  String get marketsToAvoidHint => 'எ.கா: மார்க்கெட் ஒய், மார்க்கெட் இசட்';

  @override
  String get observations => 'குறிப்புகள்';

  @override
  String get observationsHint => 'உதவியாளருக்கான பிற விருப்பத்தேர்வுகள்';

  @override
  String get saveProfile => 'சுயவிவரத்தை சேமிக்கவும்';

  @override
  String get everythingReady => 'எல்லாம் தயார்!';

  @override
  String get youCompletedList => 'பட்டியலை முடித்துவிட்டீர்கள்!';

  @override
  String get selectCheaperAlternative =>
      'விலையை மேம்படுத்த மலிவான தயாரிப்பு மாற்றீட்டைத் தேர்ந்தெடுக்கவும்.';

  @override
  String get suggestedItems => 'பரிந்துரைக்கப்பட்ட பொருட்கள்';

  @override
  String get swapped => 'மாற்றப்பட்டது';

  @override
  String get swap => 'இடமாற்று';

  @override
  String get chooseThemeColor => 'தீம் நிறத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get manageCategoriesTitle => 'வகைகளை நிர்வகிக்கவும்';

  @override
  String get categoryLimitReached =>
      'இலவச பதிப்பில் 10 வகைகளின் வரம்பு. Pro க்கு மேம்படுத்தவும்!';

  @override
  String get deleteCategoryTitle => 'வகையை நீக்கு';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\" பிரிவில் உள்ள உருப்படிகள் \"மற்றவை\"க்கு நகர்த்தப்படும்.\nதொடரவா?';
  }

  @override
  String get deleteCategory => 'நீக்கு';

  @override
  String get newCategoryDialog => 'புதிய வகை';

  @override
  String get editCategoryDialog => 'வகையைத் திருத்தவும்';

  @override
  String get categoryName => 'வகை பெயர்';

  @override
  String get categoryNameHint => 'எ.கா: இறைச்சிகள்';

  @override
  String get categoryColorLabel => 'நிறம்';

  @override
  String get categoryIconLabel => 'ஐகான்';

  @override
  String itemAddedSnack(String name) {
    return '$name சேர்க்கப்பட்டது';
  }

  @override
  String get kipiQuickBarHint => 'நீங்கள் என்ன வாங்க வேண்டும்?';

  @override
  String replaceItem(String item) {
    return '$item ஐ மாற்றவும்';
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
  String get onboardingHookHeadline =>
      'ஒரு மளிகைப் பொருளை மீண்டும் மறக்க வேண்டாம்';

  @override
  String get onboardingGoalSaveMoney => 'பணத்தை சேமிக்கவும்';

  @override
  String get onboardingGoalNeverForget => 'பொருட்களை மறந்துவிடாதீர்கள்';

  @override
  String get onboardingGoalFaster => 'வேகமாக வாங்கவும்';

  @override
  String get onboardingGoalFamily => 'குடும்ப ஷாப்பிங்கை ஏற்பாடு செய்யுங்கள்';

  @override
  String get onboardingGoalRecipes => 'சமையல் குறிப்புகளைக் கண்டறியவும்';

  @override
  String get onboardingGoalPantry => 'ட்ராக் சரக்கறை';

  @override
  String get onboardingCommitmentsTitle => 'உங்களுக்கு என்ன முக்கியம்?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'KipiList ஐத் தனிப்பயனாக்க உங்கள் இலக்குகளைத் தேர்ந்தெடுக்கவும்';

  @override
  String get onboardingCommitmentsCta => 'போகலாம்!';

  @override
  String get onboardingPersonalizationNameLabel => 'உங்கள் பெயர்';

  @override
  String get onboardingPersonalizationNameHint => 'உங்கள் பெயரை உள்ளிடவும்';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'நீங்கள் எதற்காக ஷாப்பிங் செய்கிறீர்கள்?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'நீங்கள் யாருக்காக ஷாப்பிங் செய்கிறீர்கள்?';

  @override
  String get onboardingCategoryGrocery => 'மளிகை பொருட்கள்';

  @override
  String get onboardingCategoryPharmacy => 'மருந்தகம்';

  @override
  String get onboardingCategoryRecipes => 'சமையல் வகைகள்';

  @override
  String get onboardingCategoryHome => 'வீடு';

  @override
  String get onboardingCategoryPet => 'செல்லப்பிராணி';

  @override
  String get onboardingGroupSolo => 'நான் தான்';

  @override
  String get onboardingGroupCouple => 'ஜோடி';

  @override
  String get onboardingGroupFamily => 'குடும்பம்';

  @override
  String get onboardingLoadingTitle => 'உங்கள் அனுபவத்தைத் தயாரிக்கிறது...';

  @override
  String get onboardingLoadingStep1 =>
      'உங்கள் விருப்பங்களை பகுப்பாய்வு செய்கிறது...';

  @override
  String get onboardingLoadingStep2 => 'AI உதவியாளரை அமைக்கிறது...';

  @override
  String get onboardingLoadingStep3 => 'கிட்டத்தட்ட தயார்...';

  @override
  String get onboardingLoadingStat1Label => 'பட்டியலிடப்பட்ட பொருட்கள்';

  @override
  String get onboardingLoadingStat2Label => 'பயனர்கள் உதவினார்கள்';

  @override
  String get onboardingLoadingStat3Label => 'நிமிடங்கள் சேமிக்கப்பட்டன';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, ஒவ்வொரு பயணத்திலும் சேமிக்கவும்!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, ஒரு பொருளை மறக்கவேண்டாம்!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, பாதி நேரத்தில் ஷாப்பிங் செய்யுங்கள்!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, குடும்ப ஷாப்பிங்கை ஏற்பாடு செய்யுங்கள்!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, புதிய சமையல் குறிப்புகளைக் கண்டறியவும்!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, உங்கள் சரக்கறையை சரியாகக் கண்காணிக்கவும்!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'ஒவ்வொரு பயணத்திலும் சேமிக்கவும்!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => 'ஒரு பொருளை மறக்காதே!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'பாதி நேரத்தில் கடை!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'குடும்ப ஷாப்பிங்கை ஏற்பாடு செய்யுங்கள்!';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'புதிய சமையல் குறிப்புகளைக் கண்டறியவும்!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'உங்கள் சரக்கறையை சரியாகக் கண்காணிக்கவும்!';

  @override
  String paywallPricePerDay(String price) {
    return '$price/நாள் மட்டுமே — ஒரு காபியை விட குறைவாக';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'இப்போதைக்கு தவிர்க்கவும்';

  @override
  String get paywallTestimonial =>
      'AI எனது ஷாப்பிங்கை நொடிகளில் ஒழுங்குபடுத்துகிறது. ஒரு பயணத்திற்கு 20 நிமிடம் சேமிக்கிறேன்.';

  @override
  String get paywallTestimonialAuthor => 'ஆன் எஸ்.';

  @override
  String get paywallTrialDisclaimer =>
      'எப்போது வேண்டுமானாலும் ரத்துசெய்யலாம் · உங்கள் சோதனை முடியும் வரை கட்டணம் இல்லை';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'ஏய் $name! உங்களுக்கு என்ன $category தேவை?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'உங்களுக்கு என்ன $category தேவை?';
  }

  @override
  String get onboardingAiDemoYes => 'ஆம்!';

  @override
  String get onboardingAiDemoReaction => 'நைஸ்!';

  @override
  String get onboardingAiDemoChange => 'உருப்படியை மாற்றவும்';

  @override
  String get onboardingAiDemoOffer => 'வேறு ஏதாவது தட்டச்சு செய்து பாருங்கள்!';

  @override
  String get onboardingAiDemoContinue => 'தொடரவும்';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'உங்கள் ஷாப்பிங் பட்டியல், இப்போது AI உடன்';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'வினாடிகளில் உங்கள் முழுப் பட்டியலையும் Kipi எவ்வாறு உருவாக்குகிறது என்பதைப் பார்க்கவும்';

  @override
  String get onboardingAiDemoSlideCta => 'எனக்கு இது வேண்டும்! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'நான் பார்பிக்யூ 🔥 நடத்துகிறேன்';

  @override
  String get onboardingAiDemoSlideReady =>
      'தயார்! உங்களுக்கு தேவையான அனைத்தும் இங்கே:';

  @override
  String get onboardingAiDemoSlideDone => 'வினாடிகளில் பட்டியலை முடிக்கவும் ✨';

  @override
  String get onboardingPainTitle => 'உங்களை மிகவும் விரக்தியடையச் செய்வது எது?';

  @override
  String get onboardingPainSubtitle =>
      'நேர்மையாக இருங்கள் - ஒவ்வொன்றையும் சரிசெய்வோம்';

  @override
  String get onboardingPainCta => 'ஆம், எனக்காக இதை சரி செய் →';

  @override
  String get onboardingPainForget => 'நான் கடையில் பொருட்களை மறந்துவிட்டேன்';

  @override
  String get onboardingPainFamily =>
      'எனது குடும்பத்தினர் பட்டியலைப் பார்ப்பதில்லை';

  @override
  String get onboardingPainOverspend =>
      'நான் எப்பொழுதும் வரவு செலவுத் திட்டத்தை மீறுவேன்';

  @override
  String get onboardingPainRepeat => 'ஒரு பயணம் போதாது';

  @override
  String get aiWelcomeContent =>
      'வணக்கம்! 👋 நான் **கிபி**, உங்கள் தனிப்பட்ட ஷாப்பிங் மற்றும் செய்முறை உதவியாளர்!\n\nஉங்களுக்கு உதவ நான் இங்கே இருக்கிறேன்:\n🛒 **உங்கள் ஷாப்பிங்கை வகைகளின்படி தானாகவே ஒழுங்கமைக்கவும்**\n💰 **உங்கள் பட்ஜெட்டைக் கண்காணித்து, பணத்தைச் சேமிக்கும் உதவிக்குறிப்புகளை வழங்குங்கள்\n🍲 **பரிந்துரை** உங்களிடம் ஏற்கனவே உள்ளதைக் கொண்டு சுவையான சமையல் குறிப்புகள்\n\nஇன்று நான் உங்களுக்கு எப்படி உதவ முடியும்? உங்கள் முதல் பட்டியலை உருவாக்குவதன் மூலம் நீங்கள் தொடங்கலாம்!';

  @override
  String get aiWelcomeSuggestCreateList => 'எனது முதல் பட்டியலை உருவாக்கவும்';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'கிபி, எனது முதல் ஷாப்பிங் பட்டியலை உருவாக்க எனக்கு உதவுங்கள்';

  @override
  String get aiWelcomeSuggestSave => 'பணத்தை எவ்வாறு சேமிப்பது?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'கிபி, மளிகை சாமான்களில் பணத்தை சேமிக்க நீங்கள் எனக்கு எப்படி உதவலாம்?';

  @override
  String get suggestionMilk => 'பால்';

  @override
  String get suggestionBread => 'ரொட்டி';

  @override
  String get suggestionEggs => 'முட்டைகள்';

  @override
  String get suggestionCoffee => 'காபி';

  @override
  String get suggestionRice => 'அரிசி';

  @override
  String get suggestionFruits => 'பழங்கள்';
}
