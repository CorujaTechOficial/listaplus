// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appTitle => 'શોપિંગ લિસ્ટ';

  @override
  String get lists => 'યાદીઓ';

  @override
  String get pantry => 'પેન્ટ્રી';

  @override
  String get cancel => 'રદ કરો';

  @override
  String get save => 'સાચવો';

  @override
  String get create => 'બનાવો';

  @override
  String get add => 'ઉમેરો';

  @override
  String get remove => 'દૂર કરો';

  @override
  String get delete => 'કાઢી નાખો';

  @override
  String get edit => 'સંપાદિત કરો';

  @override
  String get copy => 'કૉપિ કરો';

  @override
  String get retry => 'ફરી પ્રયાસ કરો';

  @override
  String get regenerate => 'ફરીથી બનાવો';

  @override
  String get copiedToClipboard => 'ક્લિપબોર્ડ પર કૉપિ થયું';

  @override
  String get confirm => 'પુષ્ટિ કરો';

  @override
  String get close => 'બંધ કરો';

  @override
  String get import => 'આયાત કરો';

  @override
  String get rename => 'ફરીથી નામ આપો';

  @override
  String get upgrade => 'અપગ્રેડ કરો';

  @override
  String get clear => 'સાફ કરો';

  @override
  String error(String message) {
    return 'ભૂલ: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'ભૂલ: $message';
  }

  @override
  String get purchaseError => 'ખરીદી પ્રક્રિયામાં ભૂલ. ફરી પ્રયાસ કરો.';

  @override
  String get restoreError => 'ખરીદીઓ પુનઃસ્થાપિત કરવામાં ભૂલ. ફરી પ્રયાસ કરો.';

  @override
  String get loading => 'લોડ થાય છે...';

  @override
  String get fieldRequired => 'ફરજિયાત ક્ષેત્ર';

  @override
  String get addedFeedback => 'ઉમેરાયું!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count પસંદ કરેલ',
      one: '$count પસંદ કરેલ',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'અંદાજિત';

  @override
  String get alreadyPurchased => 'પહેલેથી ખરીદેલ';

  @override
  String get clearList => 'યાદી સાફ કરો';

  @override
  String get clearPurchased => 'ખરીદેલ સાફ કરો';

  @override
  String get share => 'શેર કરો';

  @override
  String get shareViaCode => 'કોડ દ્વારા શેર કરો';

  @override
  String get importViaCode => 'કોડ દ્વારા આયાત કરો';

  @override
  String get listAssistant => 'યાદી સહાયક';

  @override
  String get globalAssistant => 'વૈશ્વિક સહાયક';

  @override
  String get becomePremium => 'પ્રીમિયમ બનો';

  @override
  String get manageSubscription => 'સબ્સ્ક્રિપ્શન મેનેજ કરો';

  @override
  String get completePurchase => 'ખરીદી પૂર્ણ કરો';

  @override
  String get confirmClearList => 'બધી આઇટમ દૂર કરીએ?';

  @override
  String get shareListTitle => 'યાદી શેર કરો';

  @override
  String get shareThisCode => 'આ કોડ શેર કરો:';

  @override
  String get validForLimitedTime => 'મર્યાદિત સમય માટે માન્ય';

  @override
  String get importListTitle => 'યાદી આયાત કરો';

  @override
  String get enterCodeHint => 'કોડ દાખલ કરો';

  @override
  String get confirmArchiveTitle => 'ખરીદી પૂર્ણ કરો';

  @override
  String get confirmArchiveContent => 'આ ખરીદી પૂર્ણ કરીને યાદી આર્કાઇવ કરીએ?';

  @override
  String get complete => 'પૂર્ણ કરો';

  @override
  String get listArchived => 'યાદી સફળતાપૂર્વક આર્કાઇવ થઈ!';

  @override
  String listAdded(String listName) {
    return '$listName ઉમેરાયું!';
  }

  @override
  String get buy => 'ખરીદો';

  @override
  String get unmark => 'નિશાન દૂર કરો';

  @override
  String confirmDeleteItems(int count) {
    return '$count આઇટમ દૂર કરીએ?';
  }

  @override
  String get confirmDeleteTitle => 'પુષ્ટિ કરો';

  @override
  String confirmContent(int count) {
    return '$count આઇટમ દૂર કરીએ?';
  }

  @override
  String get archiveList => 'યાદી આર્કાઇવ કરો';

  @override
  String get pantryAppBar => 'પેન્ટ્રી';

  @override
  String get generateShoppingList => 'શોપિંગ યાદી બનાવો';

  @override
  String get pantryEmpty => 'ખાલી પેન્ટ્રી';

  @override
  String get pantryEmptySubtitle =>
      'તમે ઘરમાં રાખવા માંગો છો તે ઉત્પાદનો ઉમેરો';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit આઇટમ ખરીદવાની જરૂર છે';
  }

  @override
  String get noItemsToBuy => 'ખરીદવા માટે કોઈ આઇટમ નથી';

  @override
  String get newPantryList => 'પેન્ટ્રી શોપિંગ';

  @override
  String get newListTitle => 'નવી શોપિંગ યાદી';

  @override
  String itemsWillBeAdded(int count) {
    return '$count આઇટમ ઉમેરાશે';
  }

  @override
  String get listNameLabel => 'યાદીનું નામ';

  @override
  String listCreated(String name, int count) {
    return 'યાદી \"$name\" $count આઇટમ સાથે બનાવી';
  }

  @override
  String get noTracking => 'કોઈ ટ્રેકિંગ નથી';

  @override
  String get markAsPurchased => 'ખરીદેલ તરીકે ચિહ્નિત કરો';

  @override
  String editPantryItem(String name) {
    return '$name સંપાદિત કરો';
  }

  @override
  String get idealQuantity => 'આદર્શ માત્રા';

  @override
  String get currentQuantity => 'હાલની માત્રા';

  @override
  String get consumed => 'વપરાશમાં લીધેલ';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name ફરી ભરાયું $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'પેન્ટ્રીમાંથી \"$name\" દૂર કરીએ?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name સંપાદિત કરો';
  }

  @override
  String get settingsAppBar => 'સેટિંગ્સ';

  @override
  String get language => 'ભાષા';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'સિસ્ટમ ડિફૉલ્ટ';

  @override
  String get appearance => 'દેખાવ';

  @override
  String get light => 'પ્રકાશ';

  @override
  String get system => 'સિસ્ટમ';

  @override
  String get dark => 'શ્યામ';

  @override
  String get themeColor => 'થીમ રંગ';

  @override
  String get finance => 'નાણાં';

  @override
  String get monthlyBudgetNav => 'માસિક બજેટ';

  @override
  String get budgetSubtitle => 'તમારા માસિક ખર્ચને ટ્રેક કરો';

  @override
  String get data => 'ડેટા';

  @override
  String get backupNav => 'બેકઅપ';

  @override
  String get backupSubtitle => 'તમારો ડેટા એક્સપોર્ટ અથવા આયાત કરો';

  @override
  String get about => 'વિશે';

  @override
  String get version => 'સંસ્કરણ';

  @override
  String get privacy => 'ગોપનીયતા';

  @override
  String get termsOfUse => 'ઉપયોગની શરતો';

  @override
  String get backupTitle => 'બેકઅપ';

  @override
  String get backupPremiumDescription =>
      'બેકઅપ અને એક્સપોર્ટ એ પ્રીમિયમ સુવિધા છે';

  @override
  String get exportData => 'ડેટા એક્સપોર્ટ કરો';

  @override
  String get exportDataSubtitle => 'બધી યાદીઓ JSON તરીકે સાચવો';

  @override
  String get importData => 'ડેટા આયાત કરો';

  @override
  String get importDataSubtitle => 'JSON માંથી યાદીઓ પુનઃસ્થાપિત કરો';

  @override
  String get importJsonTitle => 'JSON આયાત કરો';

  @override
  String get importJsonHint => 'અહીં બેકઅપ JSON પેસ્ટ કરો...';

  @override
  String get backupExported => 'બેકઅપ એક્સપોર્ટ થયું!';

  @override
  String get budgetAppBar => 'માસિક બજેટ';

  @override
  String get budgetPremiumLocked => 'વૈશ્વિક માસિક બજેટ પ્રીમિયમ છે';

  @override
  String get budgetUpgradePrompt => 'અનલૉક કરવા અપગ્રેડ કરો';

  @override
  String get noBudgetDefined => 'કોઈ બજેટ સેટ નથી';

  @override
  String totalEstimated(String amount) {
    return 'કુલ અંદાજિત: $amount';
  }

  @override
  String get setBudgetButton => 'બજેટ સેટ કરો';

  @override
  String get budgetLists => 'યાદીઓ';

  @override
  String get budgetValueLabel => 'રકમ';

  @override
  String get setBudgetTitle => 'માસિક બજેટ';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'બધા';

  @override
  String get filterPending => 'બાકી';

  @override
  String get filterPurchased => 'ખરીદેલ';

  @override
  String get sortName => 'નામ';

  @override
  String get sortCategory => 'શ્રેણી';

  @override
  String get sortDate => 'તારીખ';

  @override
  String get sortManual => 'મેન્યુઅલ';

  @override
  String get addItem => 'આઇટમ ઉમેરો';

  @override
  String get itemName => 'આઇટમનું નામ';

  @override
  String get quantityShort => 'જથ્થો';

  @override
  String get unit => 'એકમ';

  @override
  String get category => 'શ્રેણી';

  @override
  String get estimatedPrice => 'અંદાજિત કિંમત';

  @override
  String get addItemPrice => 'અંદાજિત કિંમત';

  @override
  String get editItem => 'આઇટમ સંપાદિત કરો';

  @override
  String get quantityFull => 'જથ્થો';

  @override
  String get editItemPrice => 'અંદાજિત કિંમત';

  @override
  String get addToPantry => 'પેન્ટ્રીમાં ઉમેરો';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" તમારી પેન્ટ્રીમાં ઉમેરીએ?';
  }

  @override
  String get yes => 'હા';

  @override
  String get productName => 'ઉત્પાદનનું નામ';

  @override
  String get idealQty => 'આદર્શ જથ્થો';

  @override
  String get currentQty => 'હાલનો જથ્થો';

  @override
  String get trackStock => 'સ્ટોક ટ્રેક કરો';

  @override
  String get trackStockActive => 'શોપિંગ સૂચનોમાં દેખાય છે';

  @override
  String get trackStockInactive => 'શોપિંગ સૂચન ઉત્પન્ન કરતું નથી';

  @override
  String get createListDialog => 'યાદી બનાવો';

  @override
  String get renameListDialog => 'યાદીનું નામ બદલો';

  @override
  String get listHistory => 'યાદી ઇતિહાસ';

  @override
  String get myLists => 'મારી યાદીઓ';

  @override
  String get viewActive => 'સક્રિય જુઓ';

  @override
  String get viewHistory => 'ઇતિહાસ જુઓ';

  @override
  String get noArchivedLists => 'કોઈ આર્કાઇવ યાદીઓ નથી';

  @override
  String get noActiveLists => 'કોઈ સક્રિય યાદીઓ નથી';

  @override
  String completedOn(String date) {
    return '$date ના રોજ પૂર્ણ';
  }

  @override
  String get sharedLabel => 'શેર કરેલ';

  @override
  String get restore => 'પુનઃસ્થાપિત કરો';

  @override
  String get removeSharedTooltip => 'દૂર કરો';

  @override
  String get deleteListTitle => 'યાદી કાઢી નાખો';

  @override
  String deleteListContent(String name) {
    return 'શું તમે ખરેખર \"$name\" કાઢી નાખવા માંગો છો? બધી આઇટમ દૂર થશે.';
  }

  @override
  String get removeSharedListTitle => 'શેર કરેલી યાદી દૂર કરો';

  @override
  String removeSharedListContent(String name) {
    return 'તમારી યાદીઓમાંથી \"$name\" દૂર કરીએ? મૂળ યાદી પર અસર થશે નહીં.';
  }

  @override
  String get createNewList => 'નવી યાદી બનાવો';

  @override
  String get aiAssistant => 'AI સહાયક';

  @override
  String get aiAssistantDescription =>
      'અમારા AI સહાયક સાથે સ્માર્ટ સૂચનો, રેસિપી અને વ્યક્તિગત ટિપ્સ મેળવો.';

  @override
  String get generalAssistant => 'સામાન્ય સહાયક';

  @override
  String get clearHistory => 'ઇતિહાસ સાફ કરો';

  @override
  String get clearHistoryConfirm => 'આ સત્રના બધા સંદેશા કાઢી નાખીએ?';

  @override
  String get chatHint => 'તમારો સંદેશ લખો...';

  @override
  String chatError(String error) {
    return 'ચેટ લોડ કરવામાં ભૂલ: $error';
  }

  @override
  String get listHelp => 'હું તમારી યાદીમાં કેવી રીતે મદદ કરી શકું?';

  @override
  String get generalHelp => 'આજે તમારી ખરીદીમાં હું કેવી રીતે મદદ કરી શકું?';

  @override
  String get chatSubtitle => 'આઇટમ સૂચનો, રેસિપી અથવા બચત ટિપ્સ માટે પૂછો.';

  @override
  String get aiError =>
      'માફ કરશો, તમારી વિનંતી પ્રક્રિયા કરવામાં ભૂલ આવી. તમારું કનેક્શન તપાસો અથવા પછીથી ફરી પ્રયાસ કરો.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'પ્રીમિયમ સુવિધાઓ\nઅનલૉક કરવા લૉગિન કરો';

  @override
  String get signInGoogle => 'Google વડે સાઇન ઇન કરો';

  @override
  String get signInApple => 'Apple વડે સાઇન ઇન કરો';

  @override
  String get continueAsGuest => 'મહેમાન તરીકે ચાલુ રાખો';

  @override
  String loginError(String error) {
    return 'લૉગિન ભૂલ: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus પ્રીમિયમ';

  @override
  String get premiumUpgrade => 'અનલૉક કરવા અપગ્રેડ કરો';

  @override
  String get itemRemoved => 'આઇટમ દૂર કરી';

  @override
  String get undo => 'પૂર્વવત્ કરો';

  @override
  String get emptyListTitle => 'તમારી યાદી ખાલી છે';

  @override
  String get emptyListSubtitle => 'શરૂ કરવા આઇટમ ઉમેરો';

  @override
  String get noListFoundTitle => 'કોઈ યાદી મળી નથી';

  @override
  String get noListFoundSubtitle => 'શરૂ કરવા તમારી પ્રથમ યાદી બનાવો';

  @override
  String get createFirstList => 'પ્રથમ યાદી બનાવો';

  @override
  String get listBudgetTitle => 'યાદી બજેટ';

  @override
  String get budgetAmountLabel => 'બજેટ રકમ';

  @override
  String get removeBudget => 'દૂર કરો';

  @override
  String get prefUnlimitedLists => 'અમર્યાદિત યાદીઓ';

  @override
  String get prefSharing => 'યાદીઓ શેર કરો';

  @override
  String get prefFullHistory => 'સંપૂર્ણ ઇતિહાસ';

  @override
  String get prefExportData => 'ડેટા એક્સપોર્ટ કરો';

  @override
  String get prefCustomThemes => 'કસ્ટમ થીમ્સ';

  @override
  String get prefMonthlyBudget => 'વૈશ્વિક માસિક બજેટ';

  @override
  String get prefAIAssistant => 'વ્યક્તિગત AI સહાયક';

  @override
  String get prefUnlimitedPantry => 'અમર્યાદિત પેન્ટ્રી';

  @override
  String get prefInteractiveArtifacts => 'ઇન્ટરેક્ટિવ AI આર્ટિફેક્ટ્સ';

  @override
  String get themeGreen => 'લીલો';

  @override
  String get themeBlue => 'વાદળી';

  @override
  String get themePurple => 'જાંબલી';

  @override
  String get themeRed => 'લાલ';

  @override
  String get themeOrange => 'નારંગી';

  @override
  String get themePink => 'ગુલાબી';

  @override
  String get themeIndigo => 'ઈન્ડિગો';

  @override
  String get themeAmber => 'એમ્બર';

  @override
  String get themeTeal => 'ટીલ';

  @override
  String get themeBrown => 'ભૂરો';

  @override
  String get catFruits => 'ફળો';

  @override
  String get catCleaning => 'સફાઈ';

  @override
  String get catBeverages => 'પીણાં';

  @override
  String get catBakery => 'બેકરી';

  @override
  String get catOthers => 'અન્ય';

  @override
  String get unitPack => 'પેક';

  @override
  String get shareSubject => 'શોપિંગ યાદી';

  @override
  String get monthlyBudgetTitle => 'માસિક બજેટ';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'યાદી કાઢી નાખો';

  @override
  String get pantryItemRemoved => 'આઇટમ દૂર કરી';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit આઇટમ ખરીદવાની જરૂર છે',
      one: '$deficit આઇટમ ખરીદવાની જરૂર છે',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'કાર્ટ કુલ';

  @override
  String get restockLabel => 'ફરી ભરો';

  @override
  String get advancedFeatures => 'અદ્યતન સુવિધાઓ';

  @override
  String get selectAll => 'બધા પસંદ કરો';

  @override
  String get deselectAll => 'બધા અપસ્લેક્ટ કરો';

  @override
  String get monthlyBudgetAppBar => 'માસિક બજેટ';

  @override
  String get budgetEditTitle => 'માસિક બજેટ';

  @override
  String get budgetDashboardTitle => 'ડેશબોર્ડ';

  @override
  String get selectListForDashboard => 'ડેશબોર્ડ જોવા યાદી પસંદ કરો.';

  @override
  String get spendingAnalysis => 'ખર્ચ વિશ્લેષણ';

  @override
  String get noItemsToAnalyze => 'યાદીમાં વિશ્લેષણ કરવા માટે કોઈ આઇટમ નથી.';

  @override
  String get markItemsToSeeAnalysis =>
      'વિશ્લેષણ જોવા આઇટમ ખરીદેલ તરીકે ચિહ્નિત કરો.';

  @override
  String get totalSpending => 'કુલ ખર્ચ';

  @override
  String get spendingByCategory => 'શ્રેણી પ્રમાણે ખર્ચ';

  @override
  String get achievements => 'સિદ્ધિઓ';

  @override
  String get exportPdfExcel => 'PDF/Excel એક્સપોર્ટ કરો';

  @override
  String get exportPdf => 'PDF તરીકે એક્સપોર્ટ કરો';

  @override
  String get exportExcel => 'Excel તરીકે એક્સપોર્ટ કરો';

  @override
  String get organizingAi => 'AI સાથે ગોઠવાઈ રહ્યું છે...';

  @override
  String get yesLabel => 'હા';

  @override
  String get noLabel => 'ના';

  @override
  String get shareListText => 'મારી શોપિંગ યાદી';

  @override
  String get emptyListAddItems => 'તમારી યાદી ખાલી છે! પહેલા આઇટમ ઉમેરો. ℹ️';

  @override
  String get listOrganizedMagic => 'યાદી જાદુઈ રીતે શ્રેણીઓમાં ગોઠવાઈ! ✨';

  @override
  String get shoppingMode => 'શોપિંગ મોડ';

  @override
  String get smartOrganization => 'સ્માર્ટ ગોઠવણી';

  @override
  String get savings => 'બચત';

  @override
  String get shoppingModeHeader => 'શોપિંગ મોડ';

  @override
  String get shareAsText => 'આઇટમ ફોર્મેટેડ ટેક્સ્ટ તરીકે મોકલો';

  @override
  String get shareRealtime => 'અન્ય લોકો સાથે રીઅલ-ટાઇમ સિંક';

  @override
  String get quickRecipe => 'ઝડપી રેસીપી';

  @override
  String get quickRecipePrompt => 'મારી યાદીની આઇટમ સાથે રેસિપી સૂચવો.';

  @override
  String get economyTips => 'બચત ટિપ્સ';

  @override
  String get economyTipsPrompt => 'આ ખરીદી પર હું કેવી રીતે પૈસા બચાવી શકું?';

  @override
  String get organizeAisles => 'ગલીઓ પ્રમાણે ગોઠવો';

  @override
  String get organizeAislesPrompt => 'બજારની ગલીઓ પ્રમાણે ગોઠવો.';

  @override
  String get recipeSuggestion => 'રેસીપી સૂચન';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining ક્રેડિટ બાકી';
  }

  @override
  String get addAllToList => 'બધું યાદીમાં ઉમેરો';

  @override
  String get organizeByAisles => 'ગલીઓ પ્રમાણે ગોઠવો';

  @override
  String get voiceTranscriptionTooltip => 'વૉઇસ ટાઇપિંગ (મફત)';

  @override
  String get aiVoiceCommandTooltip => 'AI વૉઇસ કમાન્ડ (પ્રીમિયમ)';

  @override
  String get voiceCommandTitle => 'AI વૉઇસ કમાન્ડ';

  @override
  String get voiceCommandContent =>
      'તમારી યાદી મેનેજ કરવા કુદરતી રીતે બોલો!\n\nઉદાહરણો:\n• \'બ્રેડ, ચીઝ અને હેમ ઉમેરો\'\n• \'લોન્ડ્રી ડિટર્જન્ટ દૂર કરો\'\n• \'થીમ વાદળીમાં બદલો\'\n\nઆ Lista Plus Premiumની વિશિષ્ટ સુવિધા છે.';

  @override
  String get voiceCommandPlanBtn => 'પ્લાન જુઓ';

  @override
  String get itemsAddedSuccess => 'આઇટમ સફળતાપૂર્વક યાદીમાં ઉમેરાઈ!';

  @override
  String get viewList => 'યાદી જુઓ';

  @override
  String get feedbackTitle => 'પ્રતિસાદ મોકલો';

  @override
  String get feedbackPrompt => 'તમે શું શેર કરવા માંગો છો?';

  @override
  String get feedbackTypeBug => 'બગ રિપોર્ટ કરો';

  @override
  String get feedbackTypeBugHint => 'કંઈક કામ કરી રહ્યું નથી';

  @override
  String get feedbackTypeSuggestion => 'સૂચન';

  @override
  String get feedbackTypeSuggestionHint => 'એપ સુધારવા માટેનો વિચાર';

  @override
  String get feedbackTypeTranslation => 'અનુવાદ સમસ્યા';

  @override
  String get feedbackTypeTranslationHint => 'ખોટો અથવા અયોગ્ય અનુવાદ';

  @override
  String get feedbackTypeFeature => 'ફીચર વિનંતી';

  @override
  String get feedbackTypeFeatureHint => 'તમે જોવા માંગો છો તે ફીચર';

  @override
  String get feedbackTypeOther => 'અન્ય';

  @override
  String get feedbackTypeOtherHint => 'અન્ય પ્રકારનો પ્રતિસાદ';

  @override
  String get feedbackHint => 'તમારા પ્રતિસાદનું વિગતમાં વર્ણન કરો...';

  @override
  String get feedbackSend => 'પ્રતિસાદ મોકલો';

  @override
  String get feedbackSending => 'મોકલાઈ રહ્યું છે...';

  @override
  String get feedbackThankYou => 'આભાર!';

  @override
  String get feedbackThankYouMessage =>
      'તમારો પ્રતિસાદ પ્રાપ્ત થયો છે અને તે Lista Plus ને બધા માટે સુધારવામાં મદદ કરે છે.';

  @override
  String get feedbackBack => 'પાછળ';

  @override
  String feedbackError(String error) {
    return 'મોકલવામાં ભૂલ: $error';
  }

  @override
  String get feedbackRetry => 'ફરી પ્રયાસ કરો';

  @override
  String get feedbackSettingsTitle => 'પ્રતિસાદ મોકલો';

  @override
  String get feedbackSettingsSubtitle =>
      'બગ રિપોર્ટ કરો, સુધારા સૂચવો અથવા અનુવાદો સુધારો';

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
