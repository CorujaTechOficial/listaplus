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
  String get settingsAppBar => 'அமைப்புகள்';

  @override
  String get language => 'மொழி';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'கணினி இயல்புநிலை';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

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
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

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
  String get newChat => 'New Chat';

  @override
  String get noHistory => 'No chat history';

  @override
  String get deleteSession => 'Delete Chat';

  @override
  String get deleteSessionConfirm =>
      'Are you sure you want to delete this chat? The messages will be permanently lost.';

  @override
  String get clearHistory => 'வரலாற்றை அழி';

  @override
  String get clearHistoryConfirm =>
      'இந்த அமர்வில் உள்ள அனைத்து செய்திகளையும் அழிக்கவா?';

  @override
  String get chatHint => 'உங்கள் செய்தியைத் தட்டச்சு செய்க...';

  @override
  String chatError(String error) {
    return 'அரட்டையை ஏற்றுவதில் பிழை: $error';
  }

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'பிரீமியம் அம்சங்களைத்\nதிறக்க உள்நுழைக';

  @override
  String get signInGoogle => 'Google மூலம் உள்நுழைக';

  @override
  String get signInApple => 'Apple மூலம் உள்நுழைக';

  @override
  String get continueAsGuest => 'விருந்தினராகத் தொடர்க';

  @override
  String get onboardingAiGreeting =>
      'Hi! I\'m your smart assistant. What would you like to call me?';

  @override
  String onboardingAiNameResponse(String name) {
    return '$name? Love it! I can help with lists, categorize items, give suggestions and much more. What\'s your favorite food?';
  }

  @override
  String get onboardingAiFoodResponse =>
      'Yum! And how do you prepare it? I can suggest the ingredients!';

  @override
  String get onboardingAiListReady =>
      'Done! Your list is organized. Do you want to go to the shopping list or keep chatting?';

  @override
  String get onboardingAiSuggestButton => 'Suggest!';

  @override
  String get onboardingGoToList => 'Go to list';

  @override
  String get onboardingKeepChatting => 'Keep chatting';

  @override
  String get onboardingSkipToApp => 'Skip to app';

  @override
  String get onboardingChatPlaceholder => 'Type a message...';

  @override
  String get onboardingLoginTitle => 'Save everything to the cloud';

  @override
  String get onboardingLoginDesc => 'Your data synced across all your devices';

  @override
  String get onboardingShareTitle => 'Share with the ones you love';

  @override
  String get onboardingShareDesc =>
      'Sync lists with family and friends in real time';

  @override
  String get onboardingPremiumTitle => 'Unlock all features';

  @override
  String get onboardingPremiumSubtitle =>
      'Get the most out of your shopping lists';

  @override
  String get onboardingAnnualBadge => 'Best Value';

  @override
  String get onboardingMonthlyLabel => 'Monthly';

  @override
  String get onboardingAnnualLabel => 'Annual';

  @override
  String get onboardingViewAllPlans => 'View all plans';

  @override
  String get onboardingSubscribeCta => 'Subscribe';

  @override
  String get onboardingCancelAnytime => 'Cancel anytime. No commitment.';

  @override
  String get onboardingContinueAsGuest => 'Continue as guest';

  @override
  String get onboardingRestore => 'Restore';

  @override
  String get settingsDefaultScreen => 'Default home screen';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Choose between shopping list or AI chat';

  @override
  String get settingsScreenList => 'Shopping List';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'உள்நுழைவு பிழை: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'உங்கள் பட்டியலை நிர்வகிக்க இயற்கையாகப் பேசுங்கள்!\n\nஎடுத்துக்காட்டுகள்:\n• \'ரொட்டி, சீஸ் மற்றும் ஹாம் சேர்க்கவும்\'\n• \'சலவை சோப்பை அகற்றவும்\'\n• \'தீத்தை நீலமாக மாற்றவும்\'\n\nஇது Lista Plus Premium இன் பிரத்யேக அம்சமாகும்.';

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
      'உங்கள் கருத்து பெறப்பட்டது, இது Lista Plus ஐ அனைவருக்கும் மேம்படுத்த உதவுகிறது.';

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
  String get aiEnergy => 'AI Energy';

  @override
  String get searchInConversation => 'Search in conversation...';

  @override
  String get noMessagesFound => 'No messages found';

  @override
  String get suggestedQuestions => 'Suggested questions:';

  @override
  String get shoppingAssistant => 'Shopping assistant';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased of $total purchased';
  }

  @override
  String get estimatedCost => 'Estimated';

  @override
  String get viewItems => 'View items';

  @override
  String get noItemsInList => 'No items in the list';

  @override
  String get longHistoryWarning =>
      'Long history: the assistant focuses on the latest messages for better performance.';

  @override
  String get listening => 'Listening...';

  @override
  String get addDirectToList => 'Add directly to list';

  @override
  String get unlockFullResponse => 'Unlock Full Response';

  @override
  String get switchList => 'Switch list';

  @override
  String get marketMode => 'Market Mode';

  @override
  String get backToChat => 'Back to Chat';

  @override
  String get finishShopping => 'Finish Shopping';

  @override
  String get welcomeAiAssistant => 'Welcome to AI Assistant';

  @override
  String get createListToStartAi =>
      'Create a shopping list to start using the smart chat.';

  @override
  String get howCanIHelp => 'How can I help?';

  @override
  String get chatSubtitleShort => 'Ask about prices, recipes, organization...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total purchased';
  }

  @override
  String get quickReplies => 'Quick replies:';

  @override
  String get voiceProFeature =>
      'Advanced voice commands are Pro. Enabling basic dictation...';

  @override
  String get viewPro => 'View Pro';

  @override
  String get errorLoadingChat => 'Oops! Something went wrong loading the chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Check your connection or try again later.';

  @override
  String get errorOscillation =>
      'This may occur due to network oscillations or temporary unavailability. Please try again.';

  @override
  String get activeListening => 'Active Listening';

  @override
  String get whatToDoWithItem => 'What would you like to do with this item?';

  @override
  String get viewDetails => 'View Details';

  @override
  String get openMenu => 'Open menu';

  @override
  String get viewRecipe => 'View Recipe';

  @override
  String get recipeCreated => 'Recipe created!';

  @override
  String get editRecipe => 'Edit';

  @override
  String get deleteRecipe => 'Delete';

  @override
  String get deleteRecipeConfirm => 'Delete this recipe?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Are you sure you want to delete \"$recipeName\"? This action cannot be undone.';
  }

  @override
  String get ingredients => 'Ingredients';

  @override
  String get instructions => 'Instructions';

  @override
  String get prepTime => 'Prep time';

  @override
  String get recipeSaved => 'Recipe saved!';

  @override
  String get noRecipesSaved => 'No recipes saved';

  @override
  String get noRecipesSavedHint =>
      'Create your first custom recipe by tapping the button below.';

  @override
  String get myRecipes => 'My Recipes';

  @override
  String get newRecipe => 'New Recipe';

  @override
  String get loadingRecipes => 'Loading your recipes...';

  @override
  String get errorLoadingRecipes => 'Error loading recipes';

  @override
  String get addIngredient => 'Add ingredient';

  @override
  String get saveRecipe => 'Save';

  @override
  String get recipeName => 'Recipe name';

  @override
  String get shortDescription => 'Short description';

  @override
  String get prepTimeMinutes => 'Prep time (minutes)';

  @override
  String get instructionsHint => 'Type one step per line...';

  @override
  String get addPhoto => 'Add photo';

  @override
  String get imageUrlPlaceholder => 'Or paste an image URL';

  @override
  String get tags => 'Tags';

  @override
  String get recipeTags => 'Recipe tags';

  @override
  String get suggestedTags => 'Suggested';

  @override
  String get searchRecipes => 'Search recipes...';

  @override
  String get filterByTag => 'Filter by tag';

  @override
  String get allTags => 'All';

  @override
  String get recipeDeleted => 'Recipe deleted';

  @override
  String get saveChanges => 'Save changes';

  @override
  String get editRecipeTitle => 'Edit Recipe';

  @override
  String get newRecipeTitle => 'New Recipe';

  @override
  String get requiredField => 'Required';

  @override
  String get chooseImageSource => 'Choose image source';

  @override
  String get gallery => 'Gallery';

  @override
  String get enterUrl => 'Enter URL';

  @override
  String get recipeImage => 'Recipe image';

  @override
  String get removeImage => 'Remove image';

  @override
  String get mealPlannerTitle => 'Meal Planner';

  @override
  String get mealPlannerViewMonthly => 'Monthly view';

  @override
  String get mealPlannerViewWeekly => 'Weekly view';

  @override
  String get mealPlannerNoMeals => 'No meals planned';

  @override
  String get mealPlannerNoMealsHint => 'Tap a day to add a meal';

  @override
  String get mealPlannerLoading => 'Loading meal plan...';

  @override
  String get mealPlannerError => 'Error loading meal plan';

  @override
  String get mealPlannerAddMeal => 'Add Meal';

  @override
  String get mealPlannerEditMeal => 'Edit Meal';

  @override
  String get mealPlannerDeleteMeal => 'Remove meal';

  @override
  String get mealPlannerMealDeleted => 'Meal removed';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count servings',
      one: '$count serving',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Servings';

  @override
  String get mealPlannerNoteLabel => 'Note (optional)';

  @override
  String get mealPlannerSelectRecipe => 'Select a recipe';

  @override
  String get mealPlannerSearchRecipes => 'Search recipes...';

  @override
  String get mealPlannerNoRecipesFound => 'No recipes found';

  @override
  String get mealPlannerNoRecipesHint =>
      'Create recipes in the Recipes tab first';

  @override
  String get mealPlannerSave => 'Add to plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count of $total meals planned';
  }

  @override
  String get mealPlannerGenerateList => 'Generate shopping list';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Add all ingredients from planned meals this week to your shopping list?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingredient(s) added to your list!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'No ingredients to add. Plan some meals with recipes first.';

  @override
  String get mealPlannerGenerateListNoList => 'Create a shopping list first.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Breakfast';

  @override
  String get mealPlannerMealTypeLunch => 'Lunch';

  @override
  String get mealPlannerMealTypeDinner => 'Dinner';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Date';

  @override
  String get mealPlannerWeekEmpty => 'Nothing planned for this week';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tap any day to start planning your meals!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Invite to list';

  @override
  String get shareApp => 'Share app';

  @override
  String get shareAppDescription => 'Invite friends to use Lista Plus';

  @override
  String shareReferralText(Object url) {
    return 'I\'m using Lista Plus to organize my shopping! Download via my link and we both get 7 days of Premium free: $url';
  }

  @override
  String get shareReferralSubject => 'Get 7 days of Lista Plus Premium!';
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
  String get settingsAppBar => 'அமைப்புகள்';

  @override
  String get language => 'மொழி';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'கணினி இயல்புநிலை';

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
  String get clearHistory => 'வரலாற்றை அழி';

  @override
  String get clearHistoryConfirm =>
      'இந்த அமர்வில் உள்ள அனைத்து செய்திகளையும் அழிக்கவா?';

  @override
  String get chatHint => 'உங்கள் செய்தியைத் தட்டச்சு செய்க...';

  @override
  String chatError(String error) {
    return 'அரட்டையை ஏற்றுவதில் பிழை: $error';
  }

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'பிரீமியம் அம்சங்களைத்\nதிறக்க உள்நுழைக';

  @override
  String get signInGoogle => 'Google மூலம் உள்நுழைக';

  @override
  String get signInApple => 'Apple மூலம் உள்நுழைக';

  @override
  String get continueAsGuest => 'விருந்தினராகத் தொடர்க';

  @override
  String loginError(String error) {
    return 'உள்நுழைவு பிழை: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'உங்கள் பட்டியலை நிர்வகிக்க இயற்கையாகப் பேசுங்கள்!\n\nஎடுத்துக்காட்டுகள்:\n• \'ரொட்டி, சீஸ் மற்றும் ஹாம் சேர்க்கவும்\'\n• \'சலவை சோப்பை அகற்றவும்\'\n• \'தீத்தை நீலமாக மாற்றவும்\'\n\nஇது Lista Plus Premium இன் பிரத்யேக அம்சமாகும்.';

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
      'உங்கள் கருத்து பெறப்பட்டது, மேலும் இது Lista Plus ஐ அனைவருக்கும் மேம்படுத்த உதவுகிறது.';

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
  String get aiEnergy => 'AI Energy';

  @override
  String get searchInConversation => 'Search in conversation...';

  @override
  String get noMessagesFound => 'No messages found';

  @override
  String get suggestedQuestions => 'Suggested questions:';

  @override
  String get shoppingAssistant => 'Shopping assistant';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased of $total purchased';
  }

  @override
  String get estimatedCost => 'Estimated';

  @override
  String get viewItems => 'View items';

  @override
  String get noItemsInList => 'No items in the list';

  @override
  String get longHistoryWarning =>
      'Long history: the assistant focuses on the latest messages for better performance.';

  @override
  String get listening => 'Listening...';

  @override
  String get addDirectToList => 'Add directly to list';

  @override
  String get unlockFullResponse => 'Unlock Full Response';

  @override
  String get switchList => 'Switch list';

  @override
  String get marketMode => 'Market Mode';

  @override
  String get backToChat => 'Back to Chat';

  @override
  String get finishShopping => 'Finish Shopping';

  @override
  String get welcomeAiAssistant => 'Welcome to AI Assistant';

  @override
  String get createListToStartAi =>
      'Create a shopping list to start using the smart chat.';

  @override
  String get howCanIHelp => 'How can I help?';

  @override
  String get chatSubtitleShort => 'Ask about prices, recipes, organization...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total purchased';
  }

  @override
  String get quickReplies => 'Quick replies:';

  @override
  String get voiceProFeature =>
      'Advanced voice commands are Pro. Enabling basic dictation...';

  @override
  String get viewPro => 'View Pro';

  @override
  String get errorLoadingChat => 'Oops! Something went wrong loading the chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Check your connection or try again later.';

  @override
  String get errorOscillation =>
      'This may occur due to network oscillations or temporary unavailability. Please try again.';

  @override
  String get activeListening => 'Active Listening';

  @override
  String get whatToDoWithItem => 'What would you like to do with this item?';

  @override
  String get viewDetails => 'View Details';
}
