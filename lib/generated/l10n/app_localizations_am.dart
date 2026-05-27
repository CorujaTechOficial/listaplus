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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'የስርዓት ነባሪ';

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
  String get clearHistory => 'ታሪክ አጽዳ';

  @override
  String get clearHistoryConfirm => 'በዚህ ክፍለ ጊዜ ውስጥ ያሉትን ሁሉንም መልእክቶች ማጽዳት?';

  @override
  String get chatHint => 'መልእክትህን ጻፍ...';

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'ፕሪሚየም ባህሪያትን\nለመክፈት ግባ';

  @override
  String get signInGoogle => 'በGoogle ግባ';

  @override
  String get signInApple => 'በApple ግባ';

  @override
  String get continueAsGuest => 'እንደ እንግዳ ቀጥል';

  @override
  String loginError(String error) {
    return 'የመግቢያ ስህተት፦ $error';
  }

  @override
  String get paywallTitle => 'Lista Plus ፕሪሚየም';

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
      'ዝርዝርህን ለማስተዳደር በተፈጥሮ ተናገር!\n\nምሳሌዎች፦\n• \'ዳቦ፣ አይብ እና ካም ጨምር\'\n• \'የልብስ ማጠቢያ ሳሙና አስወግድ\'\n• \'ገጽታውን ወደ ሰማያዊ ቀይር\'\n\nይህ የLista Plus ፕሪሚየም ልዩ ባህሪ ነው።';

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
      'ግብረ መልስህ ደርሶናል እና Lista Plusን ለሁሉም ለማሻሻል ይረዳናል።';

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
}
