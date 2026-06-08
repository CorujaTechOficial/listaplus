// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get appTitle => 'የግብዣ ዝርዝር';

  @override
  String get lists => 'ዝርዝሮች';

  @override
  String get pantry => 'ምግብ ቤት';

  @override
  String get navChat => 'ተወያይ';

  @override
  String get navRecipes => 'የምግብ አዘገጃጀት';

  @override
  String get navLists => 'ዝርዝሮች';

  @override
  String get navMealPlanner => 'ምናሌ';

  @override
  String get cancel => 'ሰርዝ';

  @override
  String get save => 'አስቀምጥ';

  @override
  String get create => 'ፍጠር';

  @override
  String get add => 'ጨምር';

  @override
  String get remove => 'አስወግድ';

  @override
  String get delete => 'ሰርዝ';

  @override
  String get edit => 'አስተካክል';

  @override
  String get copy => 'ቅዳ';

  @override
  String get next => 'ቀጥሎ';

  @override
  String get retry => 'ድጋሚ ሞክር';

  @override
  String get regenerate => 'እንደገና አመንጭ';

  @override
  String get copiedToClipboard => 'ወደ ቅንጥብ ሰሌዳ ተቀድቷል';

  @override
  String get confirm => 'አረጋግጥ';

  @override
  String get close => 'ዝጋ';

  @override
  String get import => 'አስመጣ';

  @override
  String get rename => 'እንደገና ሰይም';

  @override
  String get upgrade => 'አሻሽል';

  @override
  String get clear => 'አጽዳ';

  @override
  String error(String message) {
    return 'ስህተት፦ $message';
  }

  @override
  String errorGeneric(String message) {
    return 'ስህተት፦ $message';
  }

  @override
  String get purchaseError => 'ግዢውን በማስኬድ ላይ ስህተት። እንደገና ሞክር።';

  @override
  String get restoreError => 'ግዢዎችን ወደነበሩበት በማስመለስ ስህተት። እንደገና ሞክር።';

  @override
  String get loading => 'በመጫን ላይ...';

  @override
  String get fieldRequired => 'የሚፈለግ መስክ';

  @override
  String get addedFeedback => 'ተጨምሯል!';

  @override
  String get profile => 'መገለጫ';

  @override
  String get exitShoppingMode => 'ከግዢ ሁነታ ውጣ';

  @override
  String get exit => 'ውጣ';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count የተመረጡ',
      one: '$count የተመረጠ',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'የተገመተ';

  @override
  String get alreadyPurchased => 'አስቀድሞ የተገዛ';

  @override
  String get clearList => 'ዝርዝሩን አጽዳ';

  @override
  String get clearPurchased => 'የተገዙትን አጽዳ';

  @override
  String get share => 'አጋራ';

  @override
  String get shareViaCode => 'በኮድ አጋራ';

  @override
  String get importViaCode => 'በኮድ አስመጣ';

  @override
  String get listAssistant => 'የዝርዝር ረዳት';

  @override
  String get globalAssistant => 'አለምአቀፍ ረዳት';

  @override
  String get becomePremium => 'ፕሪሚየም ይሁኑ';

  @override
  String get manageSubscription => 'ደንበኝነትን አስተዳድር';

  @override
  String get completePurchase => 'ግዢውን አጠናቅቅ';

  @override
  String get confirmClearList => 'ሁሉንም ንጥሎች ማስወገድ?';

  @override
  String get shareListTitle => 'ዝርዝሩን አጋራ';

  @override
  String get shareThisCode => 'ይህን ኮድ አጋራ፦';

  @override
  String get validForLimitedTime => 'ለተወሰነ ጊዜ የሚሰራ';

  @override
  String get importListTitle => 'ዝርዝሩን አስመጣ';

  @override
  String get enterCodeHint => 'ኮዱን ያስገቡ';

  @override
  String get confirmArchiveTitle => 'ግዢውን አጠናቅቅ';

  @override
  String get confirmArchiveContent => 'ይህን ግዢ አጠናቅቀህ ዝርዝሩን አርክቭ ማድረግ?';

  @override
  String get complete => 'አጠናቅቅ';

  @override
  String get listArchived => 'ዝርዝሩ በተሳካ ሁኔታ በማህደር ተቀምጧል!';

  @override
  String listAdded(String listName) {
    return '$listName ተጨምሯል!';
  }

  @override
  String get buy => 'ግዛ';

  @override
  String get unmark => 'ምልክት አስወግድ';

  @override
  String confirmDeleteItems(int count) {
    return '$count ንጥሎችን ማስወገድ?';
  }

  @override
  String get confirmDeleteTitle => 'አረጋግጥ';

  @override
  String confirmContent(int count) {
    return '$count ንጥሎችን ማስወገድ?';
  }

  @override
  String get archiveList => 'ዝርዝሩን አርክቭ አድርግ';

  @override
  String get pantryAppBar => 'ምግብ ቤት';

  @override
  String get generateShoppingList => 'የግብዣ ዝርዝር አመንጭ';

  @override
  String get pantryEmpty => 'ባዶ ምግብ ቤት';

  @override
  String get pantryEmptySubtitle => 'በቤት ውስጥ ማቆየት የሚፈልጋቸውን ምርቶች ጨምር';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ንጥሎች መግዛት ያስፈልጋል';
  }

  @override
  String get noItemsToBuy => 'ምንም የሚገዙ ንጥሎች የሉም';

  @override
  String get newPantryList => 'ከምግብ ቤት ግብዣ';

  @override
  String get newListTitle => 'አዲስ የግብዣ ዝርዝር';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ንጥሎች ይጨመራሉ';
  }

  @override
  String get listNameLabel => 'የዝርዝሩ ስም';

  @override
  String listCreated(String name, int count) {
    return 'ዝርዝር \"$name\" በ$count ንጥሎች ተፈጥሯል';
  }

  @override
  String get noTracking => 'ምንም ክትትል';

  @override
  String get markAsPurchased => 'እንደተገዛ ምልክት አድርግ';

  @override
  String editPantryItem(String name) {
    return '$name አስተካክል';
  }

  @override
  String get idealQuantity => 'ተስማሚ ብዛት';

  @override
  String get currentQuantity => 'አሁን ያለው ብዛት';

  @override
  String get consumed => 'የተበላ';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name ወደ $quantity $unit ተመልሷል';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" ከምግብ ቤት ያስወግዳል?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name አስተካክል';
  }

  @override
  String get settingsAppBar => 'ቅንብሮች';

  @override
  String get language => 'ቋንቋ';

  @override
  String get languagePortuguese => 'ፖርቱጋል (ብራሲል)';

  @override
  String get languageEnglish => 'እንግሊዝኛ';

  @override
  String get languageSystem => 'የስርዓት ነባሪ';

  @override
  String get chooseLanguage => 'ቋንቋ ምረጥ';

  @override
  String get searchLanguage => 'ቋንቋ ፈልግ...';

  @override
  String get currency => 'ምንዛሪ';

  @override
  String get chooseCurrency => 'ምንዛሪ ይምረጡ';

  @override
  String get searchCurrency => 'ምንዛሬ ፈልግ...';

  @override
  String get appearance => 'መልክ';

  @override
  String get light => 'ብርሃን';

  @override
  String get system => 'ስርዓት';

  @override
  String get dark => 'ጨለማ';

  @override
  String get themeColor => 'የቲም ቀለም';

  @override
  String get dynamicColors => 'ተለዋዋጭ ቀለሞች';

  @override
  String get dynamicColorsSubtitle => 'በልጣፍዎ ላይ የተመሰረቱ ቀለሞችን ይጠቀሙ';

  @override
  String get dynamicColorsEnabledWarning =>
      'የጭብጡ ቀለም ተግባራዊ እንዲሆን ተለዋዋጭ ቀለሞችን አሰናክል';

  @override
  String get finance => 'ፋይናንስ';

  @override
  String get monthlyBudgetNav => 'ወርሃዊ በጀት';

  @override
  String get budgetSubtitle => 'ወርሃዊ ወጪህን ተከታተል';

  @override
  String get data => 'ውሂብ';

  @override
  String get backupNav => 'ምትኬ';

  @override
  String get backupSubtitle => 'ውሂብህን ላክ ወይም አስመጣ';

  @override
  String get about => 'ስለ';

  @override
  String get version => 'ስሪት';

  @override
  String get privacy => 'ግላዊነት';

  @override
  String get termsOfUse => 'የአጠቃቀም ውሎች';

  @override
  String get backupTitle => 'ምትኬ';

  @override
  String get backupPremiumDescription => 'ምትኬ እና መላክ ፕሪሚየም ባህሪ ነው';

  @override
  String get exportData => 'ውሂብ ላክ';

  @override
  String get exportDataSubtitle => 'ሁሉንም ዝርዝሮች እንደ JSON አስቀምጥ';

  @override
  String get importData => 'ውሂብ አስመጣ';

  @override
  String get importDataSubtitle => 'ዝርዝሮችን ከJSON ወደነበሩበት መልስ';

  @override
  String get importJsonTitle => 'JSON አስመጣ';

  @override
  String get importJsonHint => 'የምትኬውን JSON እዚህ ለጥፍ...';

  @override
  String get backupExported => 'ምትኬ ተልኳል!';

  @override
  String get budgetAppBar => 'ወርሃዊ በጀት';

  @override
  String get budgetPremiumLocked => 'አለምአቀፍ ወርሃዊ በጀት ፕሪሚየም ነው';

  @override
  String get budgetUpgradePrompt => 'ለመክፈት አሻሽል';

  @override
  String get noBudgetDefined => 'ምንም በጀት አልተዘጋጀም';

  @override
  String totalEstimated(String amount) {
    return 'ጠቅላላ ግምት፦ $amount';
  }

  @override
  String get setBudgetButton => 'በጀት አዘጋጅ';

  @override
  String get budgetLists => 'ዝርዝሮች';

  @override
  String get budgetValueLabel => 'መጠን';

  @override
  String get setBudgetTitle => 'ወርሃዊ በጀት';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'ሁሉም';

  @override
  String get filterPending => 'በመጠባበቅ ላይ';

  @override
  String get filterPurchased => 'የተገዙ';

  @override
  String get sortName => 'ስም';

  @override
  String get sortCategory => 'ምድብ';

  @override
  String get sortDate => 'ቀን';

  @override
  String get sortManual => 'በእጅ';

  @override
  String get addItem => 'ንጥል ጨምር';

  @override
  String get itemName => 'የንጥል ስም';

  @override
  String get quantityShort => 'ብዛት';

  @override
  String get unit => 'አሃድ';

  @override
  String get category => 'ምድብ';

  @override
  String get estimatedPrice => 'የተገመተ ዋጋ';

  @override
  String get addItemPrice => 'የተገመተ ዋጋ';

  @override
  String get editItem => 'ንጥል አስተካክል';

  @override
  String get quantityFull => 'ብዛት';

  @override
  String get editItemPrice => 'የተገመተ ዋጋ';

  @override
  String get addToPantry => 'ወደ ምግብ ቤት ጨምር';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" ወደ ምግብ ቤትህ ጨምር?';
  }

  @override
  String get yes => 'አዎ';

  @override
  String get productName => 'የምርት ስም';

  @override
  String get idealQty => 'ተስማሚ ብዛት';

  @override
  String get currentQty => 'አሁን ያለው ብዛት';

  @override
  String get trackStock => 'ክምችት ተከታተል';

  @override
  String get trackStockActive => 'በግብዣ ሃሳቦች ውስጥ ይታያል';

  @override
  String get trackStockInactive => 'የግብዣ ሃሳብ አያመነጭም';

  @override
  String get createListDialog => 'ዝርዝር ፍጠር';

  @override
  String get renameListDialog => 'ዝርዝሩን እንደገና ሰይም';

  @override
  String get listHistory => 'የዝርዝር ታሪክ';

  @override
  String get myLists => 'የእኔ ዝርዝሮች';

  @override
  String get viewActive => 'ንቁዎችን ተመልከት';

  @override
  String get viewHistory => 'ታሪክ ተመልከት';

  @override
  String get noArchivedLists => 'ምንም በማህደር የተቀመጡ ዝርዝሮች የሉም';

  @override
  String get noActiveLists => 'ምንም ንቁ ዝርዝሮች የሉም';

  @override
  String completedOn(String date) {
    return 'የተጠናቀቀ በ$date';
  }

  @override
  String get sharedLabel => 'የተጋራ';

  @override
  String get restore => 'ወደነበረበት መልስ';

  @override
  String get removeSharedTooltip => 'አስወግድ';

  @override
  String get deleteListTitle => 'ዝርዝሩን ሰርዝ';

  @override
  String deleteListContent(String name) {
    return 'እርግጠኛ ነህ \"$name\" መሰረዝ ትፈልጋለህ? ሁሉም ንጥሎች ይወገዳሉ።';
  }

  @override
  String get removeSharedListTitle => 'የተጋራውን ዝርዝር አስወግድ';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" ከዝርዝሮችህ ያስወግዳል? ዋናው ዝርዝር አይጎዳም።';
  }

  @override
  String get createNewList => 'አዲስ ዝርዝር ፍጠር';

  @override
  String get aiAssistant => 'AI ረዳት';

  @override
  String get aiAssistantDescription =>
      'ከAI ረዳታችን ጋር ብልህ ሃሳቦችን፣ የምግብ አዘገጃጀቶችን እና የግል ምክሮችን አግኝ።';

  @override
  String get generalAssistant => 'አጠቃላይ ረዳት';

  @override
  String get newChat => 'አዲስ ውይይት';

  @override
  String get noHistory => 'የውይይት ታሪክ የለም።';

  @override
  String get deleteSession => 'ውይይትን ሰርዝ';

  @override
  String get deleteSessionConfirm =>
      'እርግጠኛ ነዎት ይህን ውይይት መሰረዝ ይፈልጋሉ? መልእክቶቹ እስከመጨረሻው ይጠፋሉ.';

  @override
  String get clearHistory => 'ታሪክ አጽዳ';

  @override
  String get clearHistoryConfirm => 'በዚህ ክፍለ ጊዜ ውስጥ ያሉትን ሁሉንም መልእክቶች ማጽዳት?';

  @override
  String get chatHint => 'መልእክትህን ጻፍ...';

  @override
  String get chatHintBlocked => 'ለመወያየት AIን ይክፈቱ';

  @override
  String chatError(String error) {
    return 'ውይይቱን በመጫን ላይ ስህተት፦ $error';
  }

  @override
  String get listHelp => 'በዝርዝርህ እንዴት ልረዳህ?';

  @override
  String get generalHelp => 'በግብዣህ ዛሬ እንዴት ልረዳህ?';

  @override
  String get chatSubtitle => 'ለንጥሎች፣ የምግብ አዘገጃጀት ወይም የቁጠባ ምክሮች ጠይቅ።';

  @override
  String get aiError =>
      'ይቅርታ፣ ጥያቄህን በማስኬድ ላይ ስህተት ተከስቷል። ግንኙነትህን አረጋግጥ ወይም በኋላ እንደገና ሞክር።';

  @override
  String get aiLimitAlmostReached => 'ከ AI መልእክቶች ሊጨርሱ ነው።';

  @override
  String get unlockAi => 'ያልተገደበ AI ይክፈቱ';

  @override
  String get aiTeaserFallback =>
      'ሙሉውን ምላሽ ለመክፈት እና ለግዢዎ ያልተገደበ AI ጠቃሚ ምክሮችን ለማግኘት ለPremium ይመዝገቡ...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI ድርጊቶች በዚህ ወር ቀርተዋል - ላልተወሰነ አሻሽል።';
  }

  @override
  String get aiUsageExhausted => 'ወርሃዊ AI ገደብ ላይ ደርሷል። ላልተገደበ → ወደ Pro ያሻሽሉ።';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'ፕሪሚየም ባህሪያትን\nለመክፈት ግባ';

  @override
  String get signInGoogle => 'በGoogle ግባ';

  @override
  String get signInApple => 'በApple ግባ';

  @override
  String get continueAsGuest => 'እንደ እንግዳ ቀጥል';

  @override
  String get onboardingWelcomeTitle => 'እንኳን ወደ KipiList በደህና መጡ';

  @override
  String get onboardingWelcomeDesc =>
      'ግብይትዎን ለማደራጀት እና ገንዘብ ለመቆጠብ በጣም ብልጥ መንገድ።';

  @override
  String get onboardingSetupTitle => 'ተሞክሮዎን ለግል ያብጁ';

  @override
  String get onboardingSetupDesc =>
      'KipiList እንዴት እንዲመስልዎት እና ለእርስዎ እንዲሰራ እንደሚፈልጉ ይምረጡ።';

  @override
  String get onboardingLoginTitle => 'ሁሉንም ነገር ወደ ደመና ያስቀምጡ';

  @override
  String get onboardingLoginDesc => 'የእርስዎ ውሂብ በሁሉም መሣሪያዎችዎ ላይ ተመሳስሏል።';

  @override
  String get onboardingShareTitle => 'ከምትወዷቸው ጋር አጋራ';

  @override
  String get onboardingShareDesc => 'ዝርዝሮችን ከቤተሰብ እና ከጓደኞች ጋር በቅጽበት ያመሳስሉ።';

  @override
  String get onboardingPremiumTitle => 'ሁሉንም ባህሪያት ይክፈቱ';

  @override
  String get onboardingPremiumSubtitle => 'ከግዢ ዝርዝሮችዎ ምርጡን ያግኙ';

  @override
  String get onboardingAnnualBadge => 'ምርጥ እሴት';

  @override
  String get onboardingMonthlyLabel => 'ወርሃዊ';

  @override
  String get onboardingAnnualLabel => 'አመታዊ';

  @override
  String get onboardingViewAllPlans => 'ሁሉንም እቅዶች ይመልከቱ';

  @override
  String get onboardingSubscribeCta => 'ሰብስክራይብ ያድርጉ';

  @override
  String get onboardingCancelAnytime => 'በማንኛውም ጊዜ ይሰርዙ። ቁርጠኝነት የለም።';

  @override
  String get onboardingContinueAsGuest => 'እንደ እንግዳ ቀጥል።';

  @override
  String get onboardingRestore => 'እነበረበት መልስ';

  @override
  String get onboardingRestoreDesc =>
      'አስቀድመው የደንበኝነት ምዝገባ አለህ? ወደነበረበት ለመመለስ እዚህ ይንኩ።';

  @override
  String get onboardingMaybeLater => 'ምናልባት በኋላ';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'ሰላም $name፣ ግብይትዎን በትክክለኛው መንገድ ያደራጁ።';
  }

  @override
  String get onboardingSlide1Title => 'ዘመናዊ የግዢ ዝርዝሮች';

  @override
  String get onboardingSlide1Body =>
      'በፍጥነት ዝርዝሮችን ይፍጠሩ እና ያጋሩ። ኪፒ በልማዶችዎ ላይ በመመስረት እቃዎችን በራስ-ሰር ያክላል።';

  @override
  String get onboardingSlide2Title => 'ኪፒን ያግኙ';

  @override
  String get onboardingSlide2Body =>
      'ማንኛውንም ነገር ይጠይቁ - ዝርዝሮችን ይፍጠሩ ፣ የምግብ አዘገጃጀት መመሪያዎችን ይፈልጉ ፣ ጓዳዎን ይከታተሉ ፣ ሳምንትዎን ያቅዱ።';

  @override
  String get onboardingSlide3Title => 'ጓዳ እና ምግብ ማቀድ';

  @override
  String get onboardingSlide3Body =>
      'ያለዎትን ይከታተሉ፣ ምግብ ያቅዱ እና የግዢ ዝርዝሮችን በራስ-ሰር ያመነጩ።';

  @override
  String get onboardingExit => 'ውጣ';

  @override
  String get onboardingPersonalizationTitle => 'እንተዋወቅህ';

  @override
  String get onboardingPersonalizationDesc =>
      'የእርስዎን የአስተያየት ጥቆማዎች ግላዊ ለማድረግ እና ግዢን የበለጠ ዘመናዊ ለማድረግ ይህንን እንጠቀማለን።';

  @override
  String get onboardingPersonalizationFoodLabel => 'የምትወደው ምግብ ምንድን ነው?';

  @override
  String get onboardingPersonalizationFoodHint => 'ለምሳሌ. ፒዛ፣ ሱሺ፣ ላዛኛ...';

  @override
  String get onboardingPersonalizationCta => 'ቀጥል';

  @override
  String get onboardingPersonalizationSkip => 'ለአሁን ዝለል';

  @override
  String get onboardingPersonalizationFoodRequired => 'ለመቀጠል የሚወዱትን ምግብ ይንገሩን';

  @override
  String get settingsDefaultScreen => 'ነባሪ የመነሻ ማያ ገጽ';

  @override
  String get settingsDefaultScreenSubtitle =>
      'በግዢ ዝርዝር ወይም በ AI ውይይት መካከል ይምረጡ';

  @override
  String get settingsScreenList => 'የግዢ ዝርዝር';

  @override
  String get settingsScreenChat => 'AI ውይይት';

  @override
  String loginError(String error) {
    return 'የመግቢያ ስህተት፦ $error';
  }

  @override
  String get paywallTitle => 'KipiList ፕሪሚየም';

  @override
  String get paywallLoadingError => 'ቅናሾችን መጫን ላይ ስህተት። እንደገና ይሞክሩ።';

  @override
  String get paywallPurchaseError => 'ግዢን ማጠናቀቅ አልተቻለም። እንደገና ይሞክሩ።';

  @override
  String get paywallRestoreError =>
      'ወደነበረበት ለመመለስ ምንም ገቢር የደንበኝነት ምዝገባ አልተገኘም።';

  @override
  String paywallTrialDays(Object days) {
    return '$days ቀናት ነፃ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ሳምንታት ነፃ',
      one: '$count ሳምንት ነፃ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ወራት ነፃ',
      one: '$count ወር ነፃ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'KipiList Proን ለ7 ቀናት በነጻ ይሞክሩት።';

  @override
  String get paywallTrialSubtitle => 'በማንኛውም ጊዜ ይሰርዙ። ዛሬ ምንም ክፍያ የለም።';

  @override
  String get paywallTrialCta => 'ነጻ ሙከራ ጀምር';

  @override
  String get recipeAddToList => 'ወደ የግዢ ዝርዝር ያክሉ';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ንጥረ ነገሮች ወደ $listName ተጨምረዋል';
  }

  @override
  String get noListSelected => 'ምንም ዝርዝር አልተመረጠም። መጀመሪያ ዝርዝር ይክፈቱ።';

  @override
  String get paywallFeaturesTitle => 'የሚያስፈልግህ ነገር ሁሉ፡-';

  @override
  String get paywallFeatureUnlimitedLists => 'ያልተገደበ ዝርዝሮች';

  @override
  String get paywallFeatureSmartAI => 'ብልጥ AI';

  @override
  String get paywallFeatureExpenseControl => 'የወጪ ቁጥጥር';

  @override
  String get paywallFeatureSharing => 'ማጋራት።';

  @override
  String get paywallBeforeAfterTitle => 'AI በፊት እና በኋላ:';

  @override
  String get paywallLabelCommon => 'የተለመደ';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ሩዝ';

  @override
  String get paywallBeforeItem2 => 'ሳሙና';

  @override
  String get paywallBeforeItem3 => 'ስጋ';

  @override
  String get paywallBeforeItem4 => 'ዳቦ';

  @override
  String get paywallAfterItem1 => 'ጥራጥሬዎች';

  @override
  String get paywallAfterItem2 => 'ማጽዳት';

  @override
  String get paywallAfterItem3 => 'ስጋዎች';

  @override
  String get paywallAfterItem4 => 'ዳቦ ቤት';

  @override
  String get paywallTestimonialsTitle => 'ተጠቃሚዎቻችን የሚሉት፡-';

  @override
  String get paywallTestimonial1Name => 'አን ኤስ.';

  @override
  String get paywallTestimonial1Text =>
      'AI ግዢዬን በሰከንዶች ውስጥ ያደራጃል. በአንድ የገበያ ጉዞ 20 ደቂቃ እቆጥባለሁ።';

  @override
  String get paywallTestimonial2Name => 'ቻርለስ ኤም.';

  @override
  String get paywallTestimonial2Text =>
      'እንደገና የዝርዝር ንጥል ነገር አልረሳሁትም። የ AI ውይይት ስሜት ቀስቃሽ ነው!';

  @override
  String get paywallSocialProof => '+2,400 ቤተሰቦች ይጠቀማሉ';

  @override
  String get paywallCtaUnlock => 'PROን ይክፈቱ';

  @override
  String get paywallBestValue => 'ምርጥ ዋጋ';

  @override
  String get paywallMostPopular => 'በጣም ታዋቂ';

  @override
  String get paywallProLabel => 'ፕሮ';

  @override
  String get paywallSafeCheckout => 'ደህንነቱ የተጠበቀ ክፍያ';

  @override
  String get paywallSelectPlan => 'እቅድዎን ይምረጡ፡-';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% ይቆጥቡ';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'በወር $price ብቻ';
  }

  @override
  String get paywallPackageAnnual => 'ዓመታዊ ዕቅድ';

  @override
  String get paywallPackageMonthly => 'ወርሃዊ እቅድ';

  @override
  String get paywallPackageLifetime => 'የዕድሜ ልክ መዳረሻ';

  @override
  String get paywallCancelAnytime => 'በማንኛውም ጊዜ ይሰርዙ። ቁርጠኝነት የለም።';

  @override
  String paywallTrialInCard(int days) {
    return 'የመጀመሪያዎቹ $days ቀናት በነጻ';
  }

  @override
  String get paywallSecuredByStore => 'በGoogle Play የተጠበቀ · በማንኛውም ጊዜ ይሰርዙ';

  @override
  String get paywallPolicy => 'የግላዊነት ፖሊሲ';

  @override
  String get paywallTerms => 'የአጠቃቀም ውል';

  @override
  String get paywallRestore => 'እነበረበት መልስ';

  @override
  String get paywallHeroHeadline => 'Kipi AI ሁልጊዜ ከጎንህ ነው።';

  @override
  String get paywallHeroSubtitle =>
      'ንጥሎችን ያክሉ፣ ዝርዝሮችን ያደራጁ እና በኪስዎ ውስጥ ባለው AI ጊዜ ይቆጥቡ';

  @override
  String get paywallBenefit1Desc => '24/7 ንጥሎችን ያክላል፣ ያደራጃል እና ይጠቁማል';

  @override
  String get paywallBenefit2Desc => 'የ3-ዝርዝር ገደብ የለም።';

  @override
  String get paywallBenefit3Desc => 'ወጪን መከታተል እና የቤተሰብ ዝርዝሮች';

  @override
  String get paywallPackageMonthlyDesc => 'ሙሉ ተለዋዋጭነት';

  @override
  String paywallCtaTrialDays(int days) {
    return 'በነጻ ይጀምሩ - $days ቀናት';
  }

  @override
  String get premiumUpgrade => 'ለመክፈት አሻሽል';

  @override
  String get itemRemoved => 'ንጥል ተወግዷል';

  @override
  String get undo => 'ቀልብስ';

  @override
  String get emptyListTitle => 'ዝርዝርህ ባዶ ነው';

  @override
  String get emptyListSubtitle => 'ለመጀመር ንጥሎችን ጨምር';

  @override
  String get noListFoundTitle => 'ምንም ዝርዝሮች አልተገኙም';

  @override
  String get noListFoundSubtitle => 'ለመጀመር የመጀመሪያውን ዝርዝርህን ፍጠር';

  @override
  String get createFirstList => 'የመጀመሪያ ዝርዝር ፍጠር';

  @override
  String get listBudgetTitle => 'የዝርዝር በጀት';

  @override
  String get budgetAmountLabel => 'የበጀት መጠን';

  @override
  String get removeBudget => 'አስወግድ';

  @override
  String get prefUnlimitedLists => 'ያልተገደቡ ዝርዝሮች';

  @override
  String get prefSharing => 'ዝርዝሮችን አጋራ';

  @override
  String get prefFullHistory => 'ሙሉ ታሪክ';

  @override
  String get prefExportData => 'ውሂብ ላክ';

  @override
  String get prefCustomThemes => 'የተበጁ ገጽታዎች';

  @override
  String get prefMonthlyBudget => 'አለምአቀፍ ወርሃዊ በጀት';

  @override
  String get prefAIAssistant => 'የግል AI ረዳት';

  @override
  String get prefUnlimitedPantry => 'ያልተገደበ ምግብ ቤት';

  @override
  String get prefInteractiveArtifacts => 'በይነተገናኝ AI ቅርሶች';

  @override
  String get themeGreen => 'አረንጓዴ';

  @override
  String get themeBlue => 'ሰማያዊ';

  @override
  String get themePurple => 'ሐምራዊ';

  @override
  String get themeRed => 'ቀይ';

  @override
  String get themeOrange => 'ብርቱካን';

  @override
  String get themePink => 'ሮዝ';

  @override
  String get themeIndigo => 'ኢንዲጎ';

  @override
  String get themeAmber => 'አምበር';

  @override
  String get themeTeal => 'ቲል';

  @override
  String get themeBrown => 'ቡናማ';

  @override
  String get catFruits => 'ፍራፍሬዎች';

  @override
  String get catCleaning => 'ጽዳት';

  @override
  String get catBeverages => 'መጠጦች';

  @override
  String get catBakery => 'ዳቦ ቤት';

  @override
  String get catOthers => 'ሌሎች';

  @override
  String get unitPack => 'ጥቅል';

  @override
  String get shareSubject => 'የግብዣ ዝርዝር';

  @override
  String get monthlyBudgetTitle => 'ወርሃዊ በጀት';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'ዝርዝሩን ሰርዝ';

  @override
  String get pantryItemRemoved => 'ንጥል ተወግዷል';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit ንጥሎች መግዛት ያስፈልጋል',
      one: '$deficit ንጥል መግዛት ያስፈልጋል',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'ጠቅላላ ጋሪ';

  @override
  String get restockLabel => 'እንደገና አሞላ';

  @override
  String get advancedFeatures => 'የላቁ ባህሪዎች';

  @override
  String get selectAll => 'ሁሉንም ምረጥ';

  @override
  String get deselectAll => 'ሁሉንም አይምረጥ';

  @override
  String get monthlyBudgetAppBar => 'ወርሃዊ በጀት';

  @override
  String get budgetEditTitle => 'ወርሃዊ በጀት';

  @override
  String get budgetDashboardTitle => 'ዳሽቦርድ';

  @override
  String get selectListForDashboard => 'ዳሽቦርዱን ለማየት ዝርዝር ምረጥ።';

  @override
  String get spendingAnalysis => 'የወጪ ትንተና';

  @override
  String get noItemsToAnalyze => 'ለመተንተን በዝርዝሩ ውስጥ ምንም ንጥሎች የሉም።';

  @override
  String get markItemsToSeeAnalysis => 'ትንተናውን ለማየት ንጥሎችን እንደተገዙ ምልክት አድርግ።';

  @override
  String get totalSpending => 'ጠቅላላ ወጪ';

  @override
  String get spendingByCategory => 'እንደ ምድብ ወጪ';

  @override
  String get achievements => 'ስኬቶች';

  @override
  String get exportPdfExcel => 'PDF/Excel ላክ';

  @override
  String get exportPdf => 'እንደ PDF ላክ';

  @override
  String get exportExcel => 'እንደ Excel ላክ';

  @override
  String get organizingAi => 'በAI እያደራጀ...';

  @override
  String get yesLabel => 'አዎ';

  @override
  String get noLabel => 'አይ';

  @override
  String get shareListText => 'የእኔ የግብዣ ዝርዝር';

  @override
  String get emptyListAddItems => 'ዝርዝርህ ባዶ ነው! መጀመሪያ ንጥሎችን ጨምር። ℹ️';

  @override
  String get listOrganizedMagic => 'ዝርዝሩ በምድቦች በሚያስገርም ሁኔታ ተደራጅቷል! ✨';

  @override
  String get shoppingMode => 'የግብዣ ሁነታ';

  @override
  String get smartOrganization => 'ብልህ ድርጅት';

  @override
  String get savings => 'ቁጠባዎች';

  @override
  String get shoppingModeHeader => 'የግብዣ ሁነታ';

  @override
  String get shareAsText => 'ንጥሎችን እንደ ተቀረጸ ጽሁፍ ላክ';

  @override
  String get shareRealtime => 'ከሌሎች ሰዎች ጋር የቀጥታ ማመሳሰል';

  @override
  String get quickRecipe => 'ፈጣን የምግብ አዘገጃጀት';

  @override
  String get quickRecipePrompt => 'ከዝርዝሬ ንጥሎች ጋር የምግብ አዘገጃጀቶችን ጠቁም።';

  @override
  String get economyTips => 'የቁጠባ ምክሮች';

  @override
  String get economyTipsPrompt => 'በዚህ ግዢ ላይ እንዴት ገንዘብ መቆጠብ እችላለሁ?';

  @override
  String get organizeAisles => 'በመደርደሪያ አደራጅ';

  @override
  String get organizeAislesPrompt => 'በገበያ መደርደሪያዎች አደራጅ።';

  @override
  String get recipeSuggestion => 'የምግብ አዘገጃጀት ምክር';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining የተረፉ ክሬዲቶች';
  }

  @override
  String get addAllToList => 'ሁሉንም ወደ ዝርዝር ጨምር';

  @override
  String get organizeByAisles => 'በመደርደሪያ አደራጅ';

  @override
  String get voiceTranscriptionTooltip => 'በድምጽ መተየብ (ነፃ)';

  @override
  String get aiVoiceCommandTooltip => 'AI የድምጽ ትእዛዝ (ፕሪሚየም)';

  @override
  String get voiceCommandTitle => 'AI የድምጽ ትእዛዝ';

  @override
  String get voiceCommandContent =>
      'ዝርዝርህን ለማስተዳደር በተፈጥሮ ተናገር!\n\nምሳሌዎች፦\n• \'ዳቦ፣ አይብ እና ካም ጨምር\'\n• \'የልብስ ማጠቢያ ሳሙና አስወግድ\'\n• \'ገጽታውን ወደ ሰማያዊ ቀይር\'\n\nይህ የKipiList ፕሪሚየም ልዩ ባህሪ ነው።';

  @override
  String get voiceCommandPlanBtn => 'ዕቅዶችን ተመልከት';

  @override
  String get itemsAddedSuccess => 'ንጥሎች በተሳካ ሁኔታ ወደ ዝርዝሩ ተጨምረዋል!';

  @override
  String get viewList => 'ዝርዝሩን ተመልከት';

  @override
  String get feedbackTitle => 'ግብረ መልስ ላክ';

  @override
  String get feedbackPrompt => 'ምን ማጋራት ትፈልጋለህ?';

  @override
  String get feedbackTypeBug => 'ሳንካ ሪፖርት አድርግ';

  @override
  String get feedbackTypeBugHint => 'የሆነ ነገር አይሰራም';

  @override
  String get feedbackTypeSuggestion => 'አስተያየት';

  @override
  String get feedbackTypeSuggestionHint => 'መተግበሪያውን ለማሻሻል ሃሳብ';

  @override
  String get feedbackTypeTranslation => 'የትርጉም ጉዳይ';

  @override
  String get feedbackTypeTranslationHint => 'የተሳሳተ ወይም ያልተፈጥሮ ትርጉም';

  @override
  String get feedbackTypeFeature => 'የባህሪ ጥያቄ';

  @override
  String get feedbackTypeFeatureHint => 'ማየት የምትፈልገው ባህሪ';

  @override
  String get feedbackTypeOther => 'ሌላ';

  @override
  String get feedbackTypeOtherHint => 'ሌላ አይነት ግብረ መልስ';

  @override
  String get feedbackHint => 'ግብረ መልስህን በዝርዝር ግለጽ...';

  @override
  String get feedbackSend => 'ግብረ መልስ ላክ';

  @override
  String get feedbackSending => 'በመላክ ላይ...';

  @override
  String get feedbackThankYou => 'አመሰግናለሁ!';

  @override
  String get feedbackThankYouMessage =>
      'ግብረ መልስህ ደርሶናል እና KipiListን ለሁሉም ለማሻሻል ይረዳናል።';

  @override
  String get feedbackBack => 'ተመለስ';

  @override
  String feedbackError(String error) {
    return 'በመላክ ላይ ስህተት: $error';
  }

  @override
  String get feedbackRetry => 'እንደገና ሞክር';

  @override
  String get feedbackSettingsTitle => 'ግብረ መልስ ላክ';

  @override
  String get feedbackSettingsSubtitle =>
      'ሳንካዎችን ሪፖርት አድርግ፣ ማሻሻያዎችን ጠቁም፣ ወይም ትርጉሞችን አስተካክል';

  @override
  String get aiEnergy => 'AI ኢነርጂ';

  @override
  String get searchInConversation => 'በውይይት ውስጥ ፈልግ...';

  @override
  String get noMessagesFound => 'ምንም መልዕክቶች አልተገኙም።';

  @override
  String get suggestedQuestions => 'የተጠቆሙ ጥያቄዎች፡-';

  @override
  String get shoppingAssistant => 'የግዢ ረዳት';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased ከ$total ተገዝቷል።';
  }

  @override
  String get estimatedCost => 'የሚገመተው';

  @override
  String get viewItems => 'እቃዎችን ይመልከቱ';

  @override
  String get noItemsInList => 'በዝርዝሩ ውስጥ ምንም ንጥሎች የሉም';

  @override
  String get longHistoryWarning =>
      'ረጅም ታሪክ፡ ረዳቱ ለተሻለ አፈጻጸም የቅርብ ጊዜዎቹን መልዕክቶች ላይ ያተኩራል።';

  @override
  String get listening => 'በማዳመጥ ላይ...';

  @override
  String get addDirectToList => 'በቀጥታ ወደ ዝርዝር ያክሉ';

  @override
  String get unlockFullResponse => 'ሙሉ ምላሽ ክፈት';

  @override
  String get switchList => 'ዝርዝር ቀይር';

  @override
  String get marketMode => 'የገበያ ሁኔታ';

  @override
  String get backToChat => 'ወደ ውይይት ተመለስ';

  @override
  String get finishShopping => 'ግዢን ጨርስ';

  @override
  String get welcomeAiAssistant => 'ወደ AI ረዳት እንኳን በደህና መጡ';

  @override
  String get createListToStartAi => 'ብልጥ ቻቱን መጠቀም ለመጀመር የግዢ ዝርዝር ይፍጠሩ።';

  @override
  String get howCanIHelp => 'እንዴት መርዳት እችላለሁ?';

  @override
  String get chatSubtitleShort => 'ስለ ዋጋዎች፣ የምግብ አዘገጃጀት መመሪያዎች፣ ድርጅት... ይጠይቁ።';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total ተገዝቷል።';
  }

  @override
  String get quickReplies => 'ፈጣን ምላሾች፡-';

  @override
  String get voiceProFeature =>
      'የላቁ የድምጽ ትዕዛዞች Pro ናቸው። መሰረታዊ መዝገበ ቃላትን በማንቃት ላይ...';

  @override
  String get viewPro => 'ፕሮ ን ይመልከቱ';

  @override
  String get errorLoadingChat => 'ውይ! ቻቱን በመጫን ላይ የሆነ ችግር ተፈጥሯል።';

  @override
  String get errorLoadingChatSubtitle => 'ግንኙነትዎን ይፈትሹ ወይም ቆይተው እንደገና ይሞክሩ።';

  @override
  String get errorOscillation =>
      'ይህ በኔትወርክ ንዝረት ወይም በጊዜያዊ አለመገኘት ምክንያት ሊከሰት ይችላል። እባክዎ እንደገና ይሞክሩ።';

  @override
  String get activeListening => 'ንቁ ማዳመጥ';

  @override
  String get whatToDoWithItem => 'በዚህ ዕቃ ምን ማድረግ ይፈልጋሉ?';

  @override
  String get viewDetails => 'ዝርዝሮችን ይመልከቱ';

  @override
  String get openMenu => 'ሜኑ ክፈት';

  @override
  String get viewRecipe => 'የምግብ አዘገጃጀቱን ተመልከት';

  @override
  String get recipeCreated => 'የምግብ አዘገጃጀት ተፈጥሯል!';

  @override
  String get editRecipe => 'አስተካክል';

  @override
  String get deleteRecipe => 'ሰርዝ';

  @override
  String get deleteRecipeConfirm => 'ይህን የምግብ አዘገጃጀት ልሰርዘው?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\"ን መሰረዝ እንደሚፈልጉ እርግጠኛ ነዎት? ይህ ድርጊት ሊመለስ አይችልም።';
  }

  @override
  String get ingredients => 'ንጥረ ነገሮች';

  @override
  String get instructions => 'መመሪያዎች';

  @override
  String get prepTime => 'የዝግጅት ጊዜ';

  @override
  String get recipeSaved => 'የምግብ አዘገጃጀት ተቀምጧል!';

  @override
  String get noRecipesSaved => 'ምንም የተቀመጠ የምግብ አዘገጃጀት የለም';

  @override
  String get noRecipesSavedHint =>
      'ከታች ያለውን ቁልፍ በመጫን የመጀመሪያውን ብጁ የምግብ አዘገጃጀትዎን ይፍጠሩ።';

  @override
  String get myRecipes => 'የእኔ የምግብ አዘገጃጀቶች';

  @override
  String get newRecipe => 'አዲስ የምግብ አዘገጃጀት';

  @override
  String get loadingRecipes => 'የምግብ አዘገጃጀትዎን በመጫን ላይ...';

  @override
  String get errorLoadingRecipes => 'የምግብ አዘገጃጀቶችን በመጫን ላይ ስህተት ተከስቷል';

  @override
  String get addIngredient => 'ንጥረ ነገር ጨምር';

  @override
  String get saveRecipe => 'አስቀምጥ';

  @override
  String get recipeName => 'የምግብ አዘገጃጀት ስም';

  @override
  String get shortDescription => 'አጭር መግለጫ';

  @override
  String get prepTimeMinutes => 'የዝግጅት ጊዜ (በደቂቃ)';

  @override
  String get instructionsHint => 'በአንድ መስመር አንድ እርምጃ ይተይቡ...';

  @override
  String get addPhoto => 'ፎቶ ጨምር';

  @override
  String get imageUrlPlaceholder => 'ወይም የምስል ዩአርኤል እዚህ ለጥፍ';

  @override
  String get tags => 'መለያዎች';

  @override
  String get recipeTags => 'የምግብ አዘገጃጀት መለያዎች';

  @override
  String get suggestedTags => 'የቀረቡ';

  @override
  String get searchRecipes => 'የምግብ አዘገጃጀት ፈልግ...';

  @override
  String get filterByTag => 'በመለያ አጣራ';

  @override
  String get allTags => 'ሁሉም';

  @override
  String get recipeDeleted => 'የምግብ አዘገጃጀት ተሰርዟል';

  @override
  String get saveChanges => 'ለውጦችን አስቀምጥ';

  @override
  String get editRecipeTitle => 'የምግብ አዘገጃጀት አስተካክል';

  @override
  String get newRecipeTitle => 'አዲስ የምግብ አዘገጃጀት';

  @override
  String get requiredField => 'የሚፈለግ';

  @override
  String get chooseImageSource => 'የምስል ምንጭ ምረጥ';

  @override
  String get gallery => 'ማዕከለ-ስዕላት (Gallery)';

  @override
  String get enterUrl => 'ዩአርኤል (URL) አስገባ';

  @override
  String get recipeImage => 'የምግብ አዘገጃጀት ምስል';

  @override
  String get removeImage => 'ምስል አስወግድ';

  @override
  String get mealPlannerTitle => 'የምግብ እቅድ አውጪ';

  @override
  String get mealPlannerViewMonthly => 'የወር እይታ';

  @override
  String get mealPlannerViewWeekly => 'የሳምንት እይታ';

  @override
  String get mealPlannerNoMeals => 'የታቀደ ምግብ የለም';

  @override
  String get mealPlannerNoMealsHint => 'ምግብ ለመጨመር ቀኑን ይጫኑ';

  @override
  String get mealPlannerLoading => 'የምግብ እቅዱን በመጫን ላይ...';

  @override
  String get mealPlannerError => 'የምግብ እቅዱን በመጫን ላይ ስህተት ተከስቷል';

  @override
  String get mealPlannerAddMeal => 'ምግብ ጨምር';

  @override
  String get mealPlannerEditMeal => 'ምግብ አስተካክል';

  @override
  String get mealPlannerDeleteMeal => 'ምግብ አስወግድ';

  @override
  String get mealPlannerMealDeleted => 'ምግብ ተወግዷል';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ሰዎች',
      one: '$count ሰው',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'ተመጋቢዎች';

  @override
  String get mealPlannerNoteLabel => 'ማስታወሻ (አማራጭ)';

  @override
  String get mealPlannerSelectRecipe => 'የምግብ አዘገጃጀት ምረጥ';

  @override
  String get mealPlannerSearchRecipes => 'የምግብ አዘገጃጀት ፈልግ...';

  @override
  String get mealPlannerNoRecipesFound => 'ምንም የምግብ አዘገጃጀት አልተገኘም';

  @override
  String get mealPlannerNoRecipesHint =>
      'መጀመሪያ በምግብ አዘገጃጀት ትር ውስጥ የምግብ አዘገጃጀት ይፍጠሩ';

  @override
  String get mealPlannerSave => 'ወደ እቅድ ጨምር';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'ከ$total ምግቦች $count ታቅደዋል';
  }

  @override
  String get mealPlannerGenerateList => 'የግብዣ ዝርዝር አመንጭ';

  @override
  String get mealPlannerGenerateListConfirm =>
      'በዚህ ሳምንት ከታቀዱ ምግቦች ውስጥ ያሉትን ሁሉንም ንጥረ ነገሮች ወደ ግብዣ ዝርዝርዎ ልጨምራቸው?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ንጥረ ነገሮች ወደ ዝርዝርዎ ተጨምረዋል!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ሚጨመር ንጥረ ነገር የለም። መጀመሪያ የምግብ አዘገጃጀት ያላቸውን ምግቦች ያቅዱ።';

  @override
  String get mealPlannerGenerateListNoList => 'መጀመሪያ የግብዣ ዝርዝር ይፍጠሩ።';

  @override
  String get mealPlannerMealTypeBreakfast => 'ቁርስ';

  @override
  String get mealPlannerMealTypeLunch => 'ምሳ';

  @override
  String get mealPlannerMealTypeDinner => 'እራት';

  @override
  String get mealPlannerMealTypeSnack => 'መክሰስ';

  @override
  String get mealPlannerDateLabel => 'ቀን';

  @override
  String get mealPlannerWeekEmpty => 'ለዚህ ሳምንት የታቀደ ነገር የለም';

  @override
  String get mealPlannerWeekEmptyHint => 'ምግብዎን ማቀድ ለመጀመር ማንኛውንም ቀን ይጫኑ!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes ደቂቃ';
  }

  @override
  String get inviteToList => 'ወደ ዝርዝር ጋብዝ';

  @override
  String get shareApp => 'መተግበሪያ አጋራ';

  @override
  String get shareAppDescription => 'KipiList ጓደኞችን ጋብዝ';

  @override
  String shareReferralText(Object url) {
    return 'ግዢዬን ለማደራጀት KipiList እየተጠቀምኩ ነው! በእኔ አገናኝ አውርደናል እና ሁለታችንም ለ7 ቀናት ፕሪሚየም በነፃ እናገኛለን፡$url';
  }

  @override
  String get shareReferralSubject => 'የ7 ቀናት KipiList Premium ያግኙ!';

  @override
  String get gestureHint => 'ለመምረጥ ይያዙ • ለማስወገድ ያንሸራትቱ';

  @override
  String get catalogTitle => 'ካታሎግ';

  @override
  String get catalogMyFrequents => 'የእኔ ድግግሞሽ';

  @override
  String get catalogSearchGlobal => 'ማንኛውንም ምርት ይፈልጉ...';

  @override
  String catalogSearchInCategory(String category) {
    return 'በ$category ውስጥ ይፈልጉ...';
  }

  @override
  String get catalogSortPopular => 'በጣም ታዋቂ';

  @override
  String get catalogSortAZ => 'አ–ዜ';

  @override
  String get catalogFilterNational => 'ዜግነት ያላቸው';

  @override
  String get catalogRareSection => 'በአገርዎ ብዙም ያልተለመደ';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 → ያክሉ';
  }

  @override
  String get catalogProductNotFound => 'ምርቱ አልተገኘም, ስሙን ይተይቡ';

  @override
  String get catalogBrowse => 'ካታሎግ አስስ';

  @override
  String get offlineBanner => 'ከመስመር ውጭ ነዎት';

  @override
  String get consentTitle => 'ግላዊነት እና ትንታኔ';

  @override
  String get consentBody =>
      'KipiList የእርስዎን ተሞክሮ ለማሻሻል የFirebase ትንታኔን ይጠቀማል። የእርስዎ ውሂብ በእኛ የግላዊነት መመሪያ መሰረት ነው የሚሰራው።';

  @override
  String get consentAccept => 'ተቀበል';

  @override
  String get consentDecline => 'አልፈልግም፣አመሰግናለሁ';

  @override
  String get mealPlannerPantryAllAvailable => 'ለሽያጭ የቀረበ እቃ';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count የጎደሉ ንጥሎች',
      one: '$count የጎደለ ንጥል',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'የሚያበቃበት ቀን';

  @override
  String get notInformed => 'አልተነገረም።';

  @override
  String get skip => 'ዝለል';

  @override
  String get onboardingAiTitle => 'ከኪፒ ጋር ይወያዩ';

  @override
  String get onboardingAiGreeting => 'ሃይ! እኔ ኪፒ ነኝ፣ የእርስዎ የግል ግዢ ረዳት! 🛒';

  @override
  String get onboardingAiAskName => 'ሰመህ ማነው፧';

  @override
  String get onboardingAiNameHint => 'ስምህን ተይብ...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'ስለተዋወቅን ደስ ብሎኛል፣ $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'የምትወደው ምግብ ምንድን ነው?';

  @override
  String get onboardingAiFoodHint => 'ለምሳሌ. ፒዛ፣ ሱሺ...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'ምርጥ ምርጫዎች! ወደ ዝርዝርህ የምጨምረው እነሆ፡-\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm => 'ይህ ጥሩ ይመስላል? ሌላ ነገር ለመተየብ ይሞክሩ!';

  @override
  String get onboardingAiReady => 'በጣም ጥሩ! ለመጀመር ዝግጁ ነዎት። መለያህን እናዋቅር!';

  @override
  String get onboardingAiContinue => 'ይቀጥሉ →';

  @override
  String get errorRenderScreen => 'ውይ! ይህን ስክሪን መስራት ላይ የሆነ ችግር ተፈጥሯል።';

  @override
  String get connectionError => 'የግንኙነት ስህተት';

  @override
  String connectionErrorDesc(Object error) {
    return 'ከአገልጋዩ ጋር መገናኘት አልተቻለም። በይነመረብዎን ይፈትሹ።\n($error)';
  }

  @override
  String get errorLoadingLists => 'ዝርዝሮችን መጫን ላይ ስህተት';

  @override
  String get noListsFound => 'ምንም ዝርዝሮች አልተገኙም።';

  @override
  String get unlockPremiumTitle => 'ያልተገደቡ ዝርዝሮችን፣ AI እና ሌሎችንም ይክፈቱ';

  @override
  String get loadingSubscription => 'የደንበኝነት ምዝገባን በመጫን ላይ...';

  @override
  String get errorLoadingSubscription => 'የደንበኝነት ምዝገባን መጫን ላይ ስህተት';

  @override
  String get profileSection => 'መገለጫ';

  @override
  String get myProfile => 'የእኔ መገለጫ';

  @override
  String get profileSubtitle => 'ለ AI ረዳት የግል ምርጫዎች';

  @override
  String get manageCategories => 'ምድቦችን አስተዳድር';

  @override
  String get manageCategoriesSubtitle => 'የንጥል ምድቦችን አስተዳድር';

  @override
  String get profileSaved => 'መገለጫ በተሳካ ሁኔታ ተቀምጧል!';

  @override
  String errorSavingProfile(Object error) {
    return 'በማስቀመጥ ላይ ስህተት፡ $error';
  }

  @override
  String get userProfile => 'የተጠቃሚ መገለጫ';

  @override
  String get saveProfile => 'መገለጫ አስቀምጥ';

  @override
  String get profileDescription =>
      'የ AI ረዳቱ ግላዊነት የተላበሱ እቃዎችን እና የምግብ አዘገጃጀቶችን እንዲጠቁም የእርስዎን የግል ምርጫዎች ይንገሩን።';

  @override
  String get preferredMarket => 'ተመራጭ ገበያ';

  @override
  String get preferredMarketHint => 'ለምሳሌ፡ ሱፐርማርኬት ኤክስ';

  @override
  String get dietaryRestrictions => 'የአመጋገብ ገደቦች';

  @override
  String get dietaryRestrictionsHint => 'ለምሳሌ: ቪጋን, ቬጀቴሪያን, ከግሉተን-ነጻ';

  @override
  String get marketsToAvoid => 'መራቅ ያለባቸው ገበያዎች';

  @override
  String get marketsToAvoidHint => 'ለምሳሌ፡ Market Y፣ Market Z';

  @override
  String get observations => 'ማስታወሻዎች';

  @override
  String get observationsHint => 'ለረዳት ሌሎች ምርጫዎች';

  @override
  String get manageCategoriesTitle => 'ምድቦችን አስተዳድር';

  @override
  String get categoryLimitReached => 'በነጻው ስሪት ላይ የ 10 ምድቦች ገደብ. ወደ ፕሮ አሻሽል!';

  @override
  String get noCategories => 'ምድቦች የሉም።';

  @override
  String get deleteCategoryTitle => 'ምድብ ሰርዝ';

  @override
  String deleteCategoryConfirm(Object category) {
    return 'በ\"$category\" ምድብ ውስጥ ያሉ እቃዎች ወደ \"ሌሎች\" ይንቀሳቀሳሉ።\nይቀጥል?';
  }

  @override
  String get deleteCategory => 'ሰርዝ';

  @override
  String get myAchievements => 'የእኔ ስኬቶች';

  @override
  String get itemsPurchased => 'የተገዙ ዕቃዎች';

  @override
  String get totalSavings => 'ጠቅላላ ቁጠባዎች';

  @override
  String get currentStreak => 'የአሁኑ ጅረት';

  @override
  String streakDays(Object days) {
    return '$days ቀናት';
  }

  @override
  String get chooseThemeColor => 'የገጽታ ቀለም ይምረጡ';

  @override
  String get errorLoadingHistory => 'ታሪክን መጫን ላይ ስህተት';

  @override
  String get deleteConversationTitle => 'ውይይት ይሰረዝ?';

  @override
  String get deleteConversationConfirm => 'ይህ እርምጃ ሊቀለበስ አይችልም።';

  @override
  String get deleteConversation => 'ሰርዝ';

  @override
  String get unlockWithAd => 'በማስታወቂያ ይክፈቱ';

  @override
  String get aiPremiumDescription =>
      'ይህ በይነተገናኝ በይነገጽ የላቀ አርቴፊሻል ኢንተለጀንስ ይጠቀማል እና ለፕሮ አባላት ወይም በፈጣን ማስታወቂያ ብቻ የተወሰነ ነው።';

  @override
  String get sortAZ => 'አ–ዜ';

  @override
  String get categoryNameHint => 'ለምሳሌ፡ ስጋ';

  @override
  String get color => 'ቀለም፡';

  @override
  String get icon => 'አዶ፡';

  @override
  String get scanBarcode => 'ባርኮድ ይቃኙ';

  @override
  String get scanProduct => 'ምርትን ይቃኙ';

  @override
  String get positionBarcodeCenter => 'ባርኮዱን በመሃል ላይ ያስቀምጡ';

  @override
  String replaceItem(Object name) {
    return '$name ተካ';
  }

  @override
  String get selectCheaperAlternative => 'ወጪን ለማመቻቸት ርካሽ የሆነ የምርት አማራጭ ይምረጡ።';

  @override
  String get swap => 'መለዋወጥ';

  @override
  String itemAdded(Object name) {
    return '$name ታክሏል።';
  }

  @override
  String errorLoadingProducts(Object error) {
    return 'ምርቶችን መጫን ላይ ስህተት: $error';
  }

  @override
  String get mealType => 'የምግብ አይነት';

  @override
  String get requestTimeout => 'ይቅርታ፣ ጥያቄው ጊዜው አልፎበታል።';

  @override
  String get connectionError2 => 'ይቅርታ፣ የግንኙነት ስህተት ተፈጥሯል።';

  @override
  String get addingItems => 'ንጥሎችን ወደ ዝርዝር በማከል ላይ...';

  @override
  String get removingItems => 'ንጥሎችን በማስወገድ ላይ...';

  @override
  String get updatingItem => 'ንጥልን በማዘመን ላይ...';

  @override
  String get checkingItem => 'ንጥልን በመፈተሽ ላይ...';

  @override
  String get uncheckingItem => 'የንጥል ምልክት በማንሳት ላይ...';

  @override
  String get clearingCheckedItems => 'ምልክት የተደረገባቸውን ዕቃዎች በማጽዳት ላይ...';

  @override
  String get reorganizingList => 'ዝርዝርን እንደገና በማደራጀት ላይ...';

  @override
  String get creatingNewList => 'አዲስ ዝርዝር በመፍጠር ላይ...';

  @override
  String get removingList => 'ዝርዝርን በማስወገድ ላይ...';

  @override
  String get renamingList => 'ዝርዝርን እንደገና በመሰየም ላይ...';

  @override
  String get queryingYourLists => 'ዝርዝሮችዎን በመጠየቅ ላይ...';

  @override
  String get settingBudget => 'በጀት በማዘጋጀት ላይ...';

  @override
  String get checkingPantry => 'ጓዳህን በመፈተሽ ላይ...';

  @override
  String get addingToPantry => 'ወደ ጓዳ በማከል ላይ...';

  @override
  String get removingFromPantry => 'ከጓዳ ውስጥ በማስወገድ ላይ...';

  @override
  String get updatingPantry => 'ጓዳ በማዘመን ላይ...';

  @override
  String get savingRecipe => 'የምግብ አሰራርን በማስቀመጥ ላይ...';

  @override
  String get searchingRecipes => 'የምግብ አዘገጃጀትን በመፈለግ ላይ...';

  @override
  String get removingRecipe => 'የምግብ አሰራርን በማስወገድ ላይ...';

  @override
  String get addingIngredientsToList => 'ንጥረ ነገሮችን ወደ ዝርዝር በማከል ላይ...';

  @override
  String get organizingMenu => 'የእርስዎን ምናሌ በማደራጀት ላይ...';

  @override
  String get loadingMenu => 'የእርስዎን ምናሌ በመጫን ላይ...';

  @override
  String get updatingMenu => 'ምናሌን በማዘመን ላይ...';

  @override
  String get searchingCategories => 'ምድቦችን በመፈለግ ላይ...';

  @override
  String get categorizingItems => 'ንጥሎችን በመመደብ ላይ...';

  @override
  String get generatingShareLink => 'የማጋራት አገናኝ በማመንጨት ላይ...';

  @override
  String get searchingSharedList => 'የተጋራ ዝርዝርን በመፈለግ ላይ...';

  @override
  String get loadingProfile => 'መገለጫዎን በመጫን ላይ...';

  @override
  String get savingPreferences => 'ምርጫዎችዎን በማስቀመጥ ላይ...';

  @override
  String get checkingSettings => 'ቅንብሮችዎን በመፈተሽ ላይ...';

  @override
  String get generatingContent => 'ግላዊነት የተላበሰ ይዘት በማመንጨት ላይ...';

  @override
  String get searchingProducts => 'ምርቶችን በመፈለግ ላይ...';

  @override
  String get estimatingPrices => 'ዋጋዎችን በመገመት ላይ...';

  @override
  String get processing => 'በማሰናዳት ላይ...';

  @override
  String get shoppingList => 'የግዢ ዝርዝር';

  @override
  String get purchasedSuffix => '[የተገዛ]';

  @override
  String get listUnarchived => 'ዝርዝሩ በተሳካ ሁኔታ ከማህደር ወጥቷል።';

  @override
  String get toolDeleteList => 'ዝርዝር ሰርዝ';

  @override
  String get toolAddItems => 'እቃዎችን ያክሉ';

  @override
  String get toolRemoveItems => 'እቃዎችን ያስወግዱ';

  @override
  String get toolAddToPantry => 'ወደ ጓዳ አክል';

  @override
  String get toolRemoveFromPantry => 'ከጓዳ ውስጥ ያስወግዱ';

  @override
  String get toolShareList => 'ዝርዝር አጋራ';

  @override
  String get toolSaveRecipe => 'የምግብ አዘገጃጀት አስቀምጥ';

  @override
  String get toolDeleteRecipe => 'የምግብ አሰራርን ሰርዝ';

  @override
  String get toolRemoveMeal => 'ምግብን ያስወግዱ';

  @override
  String get toolSavePreference => 'ምርጫን ያስቀምጡ';

  @override
  String get toolRemovePreference => 'ምርጫን ያስወግዱ';

  @override
  String currentTheme(Object mode) {
    return 'የአሁኑ ጭብጥ፡ $mode';
  }

  @override
  String themeChanged(Object mode) {
    return 'ጭብጥ ወደ $mode ተቀይሯል።';
  }

  @override
  String get addToList => 'ወደ ዝርዝር ያክሉ';

  @override
  String errorAddingItem(Object error) {
    return 'ንጥል ነገር ማከል ላይ ስህተት: $error';
  }

  @override
  String errorAddingBatch(Object error) {
    return 'ንጥሎችን በቡድን ማከል ላይ ስህተት፡$error';
  }

  @override
  String errorTogglingItem(Object error) {
    return 'የንጥል ሁኔታን በመቀየር ላይ ስህተት፦ $error';
  }

  @override
  String errorRemovingItem(Object error) {
    return 'ንጥሉን ማስወገድ ላይ ስህተት: $error';
  }

  @override
  String errorUpdatingItem(Object error) {
    return 'ንጥልን ማዘመን ላይ ስህተት፡$error';
  }

  @override
  String errorUpdatingItems(Object error) {
    return 'ንጥሎችን ማዘመን ላይ ስህተት፡$error';
  }

  @override
  String errorRestoringItem(Object error) {
    return 'ንጥሉን ወደነበረበት መመለስ ላይ ስህተት፦ $error';
  }

  @override
  String errorIncreasingQty(Object error) {
    return 'ብዛት መጨመር ላይ ስህተት፡$error';
  }

  @override
  String errorDecreasingQty(Object error) {
    return 'ብዛት በመቀነስ ላይ ስህተት፡$error';
  }

  @override
  String errorClearingList(Object error) {
    return 'ዝርዝር የማጽዳት ስህተት፦ $error';
  }

  @override
  String errorClearingPurchased(Object error) {
    return 'የተገዙ ዕቃዎችን ማጽዳት ላይ ስህተት፦ $error';
  }

  @override
  String errorRemovingItems(Object error) {
    return 'ንጥሎችን ማስወገድ ላይ ስህተት: $error';
  }

  @override
  String errorTogglingItems(Object error) {
    return 'ንጥሎችን በመቀየር ላይ ስህተት፦ $error';
  }

  @override
  String errorReordering(Object error) {
    return 'ንጥልን እንደገና ማዘዝ ላይ ስህተት: $error';
  }

  @override
  String get errorCreatingList => 'ዝርዝር መፍጠር ላይ ስህተት';

  @override
  String errorServerConnection(Object error) {
    return 'ከአገልጋይ ጋር መገናኘት ላይ ስህተት: $error';
  }

  @override
  String errorUpdatingList(Object error) {
    return 'ዝርዝርን በማዘመን ላይ ስህተት፦ $error';
  }

  @override
  String errorDeletingList(Object error) {
    return 'ዝርዝርን መሰረዝ ላይ ስህተት: $error';
  }

  @override
  String errorRemovingSharedList(Object error) {
    return 'የተጋራ ዝርዝርን ማስወገድ ላይ ስህተት፦ $error';
  }

  @override
  String errorSettingCurrentList(Object error) {
    return 'የአሁኑን ዝርዝር ማቀናበር ላይ ስህተት፦ $error';
  }

  @override
  String errorArchivingList(Object error) {
    return 'ዝርዝር በማህደር ማስቀመጥ ላይ ስህተት፡ $error';
  }

  @override
  String errorUnarchivingList(Object error) {
    return 'ዝርዝርን ከማህደር ማስወጣት ላይ ስህተት: $error';
  }

  @override
  String get errorUserNotAuthenticated => 'ተጠቃሚው አልተረጋገጠም።';

  @override
  String get errorGeneratingCode => 'ልዩ ኮድ በማመንጨት ላይ ስህተት። እንደገና ይሞክሩ።';

  @override
  String pantryLimitReached(Object count) {
    return 'በነጻ ፕላን ላይ በጓዳ ውስጥ የ$count እቃዎች ገደብ። ተጨማሪ ለመጨመር አሻሽል።';
  }

  @override
  String errorImportingList(Object name, Object error) {
    return 'ዝርዝር \"$name\": $error በማስመጣት ላይ ስህተት';
  }

  @override
  String errorExecutingTool(Object tool, Object error) {
    return '$tool: $errorን በማስፈጸም ላይ ስህተት';
  }

  @override
  String get errorProcessingRequest =>
      'ይቅርታ፣ ጥያቄህን በማስኬድ ላይ ስህተት አጋጥሟል። ግንኙነትዎን ይፈትሹ ወይም ቆይተው እንደገና ይሞክሩ።';

  @override
  String get couldNotProcess => 'ከብዙ ሙከራዎች በኋላ ማካሄድ አልተቻለም።';

  @override
  String get errorResumingProcessing => 'ሂደቱን መቀጠል ላይ ስህተት።';

  @override
  String get errorResumingLoop => '[ResumeLoop] ዑደቱን እንደገና ማስጀመር ላይ ስህተት';

  @override
  String get othersCategory => 'ሌሎች';

  @override
  String get monthJanuary => 'ጥር';

  @override
  String get monthFebruary => 'የካቲት';

  @override
  String get monthMarch => 'መጋቢት';

  @override
  String get monthApril => 'ሚያዚያ';

  @override
  String get monthMay => 'ግንቦት';

  @override
  String get monthJune => 'ሰኔ';

  @override
  String get monthJuly => 'ሀምሌ';

  @override
  String get monthAugust => 'ነሐሴ';

  @override
  String get monthSeptember => 'መስከረም';

  @override
  String get monthOctober => 'ጥቅምት';

  @override
  String get monthNovember => 'ህዳር';

  @override
  String get monthDecember => 'ታህሳስ';

  @override
  String get dayMon => 'ሰኞ';

  @override
  String get dayTue => 'ማክሰኞ';

  @override
  String get dayWed => 'ረቡዕ';

  @override
  String get dayThu => 'ቱ';

  @override
  String get dayFri => 'ዓርብ';

  @override
  String get daySat => 'ሳት';

  @override
  String get daySun => 'ፀሐይ';

  @override
  String get subscription => 'Subscription';

  @override
  String get kipiListProActive => 'KipiList Pro active';

  @override
  String get customizeAiAssistant => 'Customize AI Assistant';

  @override
  String get assistantHistory => 'Assistant History';

  @override
  String get assistantHistorySubtitle => 'View and search past conversations';

  @override
  String get customizeAssistant => 'Customize Assistant';

  @override
  String get assistantName => 'Assistant Name';

  @override
  String get chooseIcon => 'Choose an Icon:';

  @override
  String get backToToday => 'ወደ ዛሬ ተመለስ';

  @override
  String get conversationHistoryTitle => 'Conversation History';

  @override
  String get noConversationsFound => 'No conversations found';

  @override
  String get newConversationDefaultTitle => 'New Conversation';

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
  String get aiEnergyLow => 'You\'re almost out of energy!';

  @override
  String get aiUnlockUnlimited => 'Unlock unlimited AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    return 'Only $remaining free messages left today. Subscribe to Premium and stop worrying about limits.';
  }

  @override
  String get aiSubscribeUnlimited =>
      'Subscribe to Premium and use the AI chat as much as you want. No counting, no limits.';

  @override
  String get suggestedItems => 'Suggested Items';

  @override
  String get swapped => 'Swapped';

  @override
  String get newCategoryDialog => 'New Category';

  @override
  String get editCategoryDialog => 'Edit Category';

  @override
  String get categoryName => 'Name';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

  @override
  String get scanProductTitle => 'Scan Product';

  @override
  String get categoryColorLabel => 'Color:';

  @override
  String get categoryIconLabel => 'Icon:';

  @override
  String get product => 'Product';

  @override
  String get everythingReady => 'Everything ready!';

  @override
  String get youCompletedList => 'You completed your list.';

  @override
  String get allSet => 'All set!';

  @override
  String itemsCount(int purchased, int total) {
    return '$purchased of $total items';
  }

  @override
  String budgetLabel(String amount) {
    return 'Budget: $amount';
  }

  @override
  String totalLabel(String amount) {
    return 'Total: $amount';
  }

  @override
  String get quickSuggestions => 'Quick suggestions';

  @override
  String get saved => 'Saved';

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get editAssistantName => 'Edit Assistant Name';

  @override
  String get selectAssistantIcon => 'Select Assistant Icon';

  @override
  String itemAddedSnack(String name) {
    return '$name added';
  }

  @override
  String quantityWithUnit(String quantity, String unit) {
    return '$quantity $unit';
  }

  @override
  String quantityUnitWithPrice(String quantity, String unit, String price) {
    return '$quantity $unit • $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Your shopping list with artificial intelligence';

  @override
  String get onboardingLoginHeadline => 'Sign in in 1 second';

  @override
  String get onboardingLoginSubtitle =>
      'Your lists are saved and synced automatically';

  @override
  String get onboardingPersonalizationNameLabel => 'What can I call you?';

  @override
  String get onboardingPersonalizationNameHint => 'Your name (optional)';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'What do you organize most often?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Do you shop alone or with others?';

  @override
  String get onboardingCategoryGrocery => '🛒 Grocery';

  @override
  String get onboardingCategoryPharmacy => '💊 Pharmacy';

  @override
  String get onboardingCategoryRecipes => '🍽️ Recipes';

  @override
  String get onboardingCategoryHome => '🏠 Home';

  @override
  String get onboardingCategoryPet => '🐾 Pet';

  @override
  String get onboardingGroupSolo => '👤 Just me';

  @override
  String get onboardingGroupCouple => '👥 With someone';

  @override
  String get onboardingGroupFamily => '👨‍👩‍👧 Family';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hi $name! I see you organize $category 😊';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Hi! I see you organize $category 😊';
  }

  @override
  String get onboardingAiDemoOffer => 'Want me to build a list right now?';

  @override
  String get onboardingAiDemoYes => '✅ Yes, build it for me!';

  @override
  String get onboardingAiDemoChange => '🔄 Different category';

  @override
  String onboardingAiDemoReaction(int count) {
    return 'Done! I created $count items for you 🎉';
  }

  @override
  String get onboardingAiDemoContinue => 'Amazing! I want more →';

  @override
  String get onboardingCommitmentsTitle => 'What do you want to achieve?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Choose everything that applies to you';

  @override
  String get onboardingGoalSaveMoney => '💰 Spend less at the store';

  @override
  String get onboardingGoalNeverForget => '✅ Never forget an item';

  @override
  String get onboardingGoalFaster => '⚡ Shop faster';

  @override
  String get onboardingGoalFamily => '👨‍👩‍👧 Organize with family';

  @override
  String get onboardingGoalRecipes => '🍽️ Plan weekly recipes';

  @override
  String get onboardingGoalPantry => '📦 Track pantry stock';

  @override
  String get onboardingLoadingTitle => 'Building your plan...';

  @override
  String get onboardingLoadingStep1 => 'Analyzing your preferences...';

  @override
  String get onboardingLoadingStep2 => 'Setting up your personalized list...';

  @override
  String get onboardingLoadingStep3 => 'Your plan is ready! 🎉';

  @override
  String get onboardingLoadingStat1Label => 'Average rating';

  @override
  String get onboardingLoadingStat2Label => 'Lists created this week';

  @override
  String get onboardingLoadingStat3Label => 'Recommend the app';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, you\'re 7 days away from spending less on shopping';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, you\'re 7 days away from never forgetting an item again';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, you\'re 7 days away from shopping in half the time';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, you\'re 7 days away from organizing the whole family\'s shopping';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, you\'re 7 days away from planning your recipes automatically';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, you\'re 7 days away from full control of your pantry';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'You\'re 7 days away from spending less on shopping';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'You\'re 7 days away from never forgetting an item again';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'You\'re 7 days away from shopping in half the time';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'You\'re 7 days away from organizing the whole family\'s shopping';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'You\'re 7 days away from planning your recipes automatically';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'You\'re 7 days away from full control of your pantry';

  @override
  String get paywallTestimonial =>
      '\"I saved R\$180 in the first month by better organizing my shopping\"';

  @override
  String get paywallTestimonialAuthor => 'Ana R., São Paulo';

  @override
  String paywallTrialDisclaimer(int days) {
    return 'Cancel anytime · Charged after $days days';
  }

  @override
  String get paywallSkipNow => 'Not now';
}
