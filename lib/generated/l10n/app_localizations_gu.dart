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
  String get next => 'આગળ';

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
  String get languagePortuguese => 'પોર્ટુગીઝ (બ્રાઝિલ)';

  @override
  String get languageEnglish => 'અંગ્રેજી';

  @override
  String get languageSystem => 'સિસ્ટમ ડિફૉલ્ટ';

  @override
  String get chooseLanguage => 'ભાષા પસંદ કરો';

  @override
  String get searchLanguage => 'ભાષા શોધો...';

  @override
  String get currency => 'ચલણ';

  @override
  String get chooseCurrency => 'ચલણ પસંદ કરો';

  @override
  String get searchCurrency => 'ચલણ શોધો...';

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
  String get dynamicColors => 'ડાયનેમિક રંગો';

  @override
  String get dynamicColorsSubtitle =>
      'તમારા વૉલપેપર પર આધારિત રંગોનો ઉપયોગ કરો';

  @override
  String get dynamicColorsEnabledWarning =>
      'થીમના રંગને પ્રભાવિત કરવા માટે ગતિશીલ રંગોને અક્ષમ કરો';

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
  String get newChat => 'નવી ચેટ';

  @override
  String get noHistory => 'કોઈ ચેટ ઇતિહાસ નથી';

  @override
  String get deleteSession => 'ચેટ કાઢી નાખો';

  @override
  String get deleteSessionConfirm =>
      'શું તમે ખરેખર આ ચેટ કાઢી નાખવા માંગો છો? સંદેશાઓ કાયમ માટે ખોવાઈ જશે.';

  @override
  String get clearHistory => 'ઇતિહાસ સાફ કરો';

  @override
  String get clearHistoryConfirm => 'આ સત્રના બધા સંદેશા કાઢી નાખીએ?';

  @override
  String get chatHint => 'તમારો સંદેશ લખો...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

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
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get aiTeaserFallback =>
      'Subscribe to Premium to unlock the full response and get unlimited AI tips for your shopping...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'પ્રીમિયમ સુવિધાઓ\nઅનલૉક કરવા લૉગિન કરો';

  @override
  String get signInGoogle => 'Google વડે સાઇન ઇન કરો';

  @override
  String get signInApple => 'Apple વડે સાઇન ઇન કરો';

  @override
  String get continueAsGuest => 'મહેમાન તરીકે ચાલુ રાખો';

  @override
  String get onboardingWelcomeTitle => 'KipiList પર આપનું સ્વાગત છે';

  @override
  String get onboardingWelcomeDesc =>
      'તમારી ખરીદીને ગોઠવવાની અને નાણાં બચાવવા માટેની સૌથી સ્માર્ટ રીત.';

  @override
  String get onboardingSetupTitle => 'તમારા અનુભવને વ્યક્તિગત કરો';

  @override
  String get onboardingSetupDesc =>
      'તમે KipiList કેવી રીતે દેખાવા અને તમારા માટે કામ કરવા માંગો છો તે પસંદ કરો.';

  @override
  String get onboardingLoginTitle => 'મેઘ પર બધું સાચવો';

  @override
  String get onboardingLoginDesc =>
      'તમારો ડેટા તમારા બધા ઉપકરણો પર સમન્વયિત થાય છે';

  @override
  String get onboardingShareTitle => 'તમે જેને પ્રેમ કરો છો તેની સાથે શેર કરો';

  @override
  String get onboardingShareDesc =>
      'વાસ્તવિક સમયમાં કુટુંબ અને મિત્રો સાથે સૂચિઓ સમન્વયિત કરો';

  @override
  String get onboardingPremiumTitle => 'બધી સુવિધાઓને અનલૉક કરો';

  @override
  String get onboardingPremiumSubtitle =>
      'તમારી ખરીદીની સૂચિમાંથી સૌથી વધુ મેળવો';

  @override
  String get onboardingAnnualBadge => 'શ્રેષ્ઠ મૂલ્ય';

  @override
  String get onboardingMonthlyLabel => 'માસિક';

  @override
  String get onboardingAnnualLabel => 'વાર્ષિક';

  @override
  String get onboardingViewAllPlans => 'બધી યોજનાઓ જુઓ';

  @override
  String get onboardingSubscribeCta => 'સબ્સ્ક્રાઇબ કરો';

  @override
  String get onboardingCancelAnytime => 'કોઈપણ સમયે રદ કરો. પ્રતિબદ્ધતા નથી.';

  @override
  String get onboardingContinueAsGuest => 'અતિથિ તરીકે ચાલુ રાખો';

  @override
  String get onboardingRestore => 'પુનઃસ્થાપિત કરો';

  @override
  String get onboardingRestoreDesc =>
      'પહેલેથી સબ્સ્ક્રિપ્શન છે? તેને પુનઃસ્થાપિત કરવા માટે અહીં ટૅપ કરો.';

  @override
  String get onboardingExit => 'બહાર નીકળો';

  @override
  String get onboardingPersonalizationTitle => 'ચાલો તમને જાણીએ';

  @override
  String get onboardingPersonalizationDesc =>
      'અમે આનો ઉપયોગ તમારા સૂચનોને વ્યક્તિગત કરવા અને ખરીદીને વધુ સ્માર્ટ બનાવવા માટે કરીશું.';

  @override
  String get onboardingPersonalizationFoodLabel => 'તમારો મનપસંદ ખોરાક કયો છે?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'દા.ત. પિઝા, સુશી, લાસગ્ના...';

  @override
  String get onboardingPersonalizationCta => 'ચાલુ રાખો';

  @override
  String get onboardingPersonalizationSkip => 'હમણાં માટે અવગણો';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'ચાલુ રાખવા માટે અમને તમારો મનપસંદ ખોરાક જણાવો';

  @override
  String get settingsDefaultScreen => 'ડિફૉલ્ટ હોમ સ્ક્રીન';

  @override
  String get settingsDefaultScreenSubtitle =>
      'શોપિંગ લિસ્ટ અથવા AI ચેટ વચ્ચે પસંદ કરો';

  @override
  String get settingsScreenList => 'શોપિંગ સૂચિ';

  @override
  String get settingsScreenChat => 'AI ચેટ';

  @override
  String loginError(String error) {
    return 'લૉગિન ભૂલ: $error';
  }

  @override
  String get paywallTitle => 'KipiList પ્રીમિયમ';

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
      'તમારી યાદી મેનેજ કરવા કુદરતી રીતે બોલો!\n\nઉદાહરણો:\n• \'બ્રેડ, ચીઝ અને હેમ ઉમેરો\'\n• \'લોન્ડ્રી ડિટર્જન્ટ દૂર કરો\'\n• \'થીમ વાદળીમાં બદલો\'\n\nઆ KipiList Premiumની વિશિષ્ટ સુવિધા છે.';

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
      'તમારો પ્રતિસાદ પ્રાપ્ત થયો છે અને તે KipiList ને બધા માટે સુધારવામાં મદદ કરે છે.';

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
  String get aiEnergy => 'એઆઈ એનર્જી';

  @override
  String get searchInConversation => 'વાતચીતમાં શોધો...';

  @override
  String get noMessagesFound => 'કોઈ સંદેશા મળ્યા નથી';

  @override
  String get suggestedQuestions => 'સૂચવેલા પ્રશ્નો:';

  @override
  String get shoppingAssistant => 'શોપિંગ સહાયક';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total માંથી $purchased ખરીદી';
  }

  @override
  String get estimatedCost => 'અંદાજિત';

  @override
  String get viewItems => 'વસ્તુઓ જુઓ';

  @override
  String get noItemsInList => 'સૂચિમાં કોઈ આઇટમ નથી';

  @override
  String get longHistoryWarning =>
      'લાંબો ઇતિહાસ: સહાયક બહેતર પ્રદર્શન માટે નવીનતમ સંદેશાઓ પર ધ્યાન કેન્દ્રિત કરે છે.';

  @override
  String get listening => 'સાંભળી રહ્યું છે...';

  @override
  String get addDirectToList => 'સૂચિમાં સીધું ઉમેરો';

  @override
  String get unlockFullResponse => 'સંપૂર્ણ પ્રતિભાવ અનલૉક કરો';

  @override
  String get switchList => 'સ્વિચ સૂચિ';

  @override
  String get marketMode => 'બજાર મોડ';

  @override
  String get backToChat => 'ચેટ પર પાછા જાઓ';

  @override
  String get finishShopping => 'ખરીદી સમાપ્ત કરો';

  @override
  String get welcomeAiAssistant => 'AI સહાયકમાં આપનું સ્વાગત છે';

  @override
  String get createListToStartAi =>
      'સ્માર્ટ ચેટનો ઉપયોગ શરૂ કરવા માટે શોપિંગ લિસ્ટ બનાવો.';

  @override
  String get howCanIHelp => 'હું કેવી રીતે મદદ કરી શકું?';

  @override
  String get chatSubtitleShort => 'કિંમતો, વાનગીઓ, સંસ્થા વિશે પૂછો...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total ખરીદી';
  }

  @override
  String get quickReplies => 'ઝડપી જવાબો:';

  @override
  String get voiceProFeature =>
      'અદ્યતન વૉઇસ કમાન્ડ પ્રો. મૂળભૂત શ્રુતલેખન સક્ષમ કરી રહ્યું છે...';

  @override
  String get viewPro => 'પ્રો જુઓ';

  @override
  String get errorLoadingChat => 'અરે! ચેટ લોડ કરવામાં કંઈક ખોટું થયું.';

  @override
  String get errorLoadingChatSubtitle =>
      'તમારું કનેક્શન તપાસો અથવા પછીથી ફરી પ્રયાસ કરો.';

  @override
  String get errorOscillation =>
      'આ નેટવર્ક ઓસિલેશન અથવા અસ્થાયી અનુપલબ્ધતાને કારણે થઈ શકે છે. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get activeListening => 'સક્રિય શ્રવણ';

  @override
  String get whatToDoWithItem => 'તમે આ આઇટમ સાથે શું કરવા માંગો છો?';

  @override
  String get viewDetails => 'વિગતો જુઓ';

  @override
  String get openMenu => 'મેનુ ખોલો';

  @override
  String get viewRecipe => 'રેસીપી જુઓ';

  @override
  String get recipeCreated => 'રેસીપી બનાવી!';

  @override
  String get editRecipe => 'સંપાદિત કરો';

  @override
  String get deleteRecipe => 'કાઢી નાખો';

  @override
  String get deleteRecipeConfirm => 'આ રેસીપી કાઢી નાખવી છે?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'શું તમે ખરેખર \"$recipeName\" કાઢી નાખવા માંગો છો? આ ક્રિયા ઉલટાવી શકાશે નહીં.';
  }

  @override
  String get ingredients => 'સામગ્રી';

  @override
  String get instructions => 'સૂચનાઓ';

  @override
  String get prepTime => 'તૈયારીનો સમય';

  @override
  String get recipeSaved => 'રેસીપી સાચવી!';

  @override
  String get noRecipesSaved => 'કોઈ રેસીપી સાચવેલી નથી';

  @override
  String get noRecipesSavedHint =>
      'નીચેના બટન પર ટેપ કરીને તમારી પ્રથમ કસ્ટમ રેસીપી બનાવો.';

  @override
  String get myRecipes => 'મારી રેસીપી';

  @override
  String get newRecipe => 'નવી રેસીપી';

  @override
  String get loadingRecipes => 'તમારી રેસીપી લોડ થઈ રહી છે...';

  @override
  String get errorLoadingRecipes => 'રેસીપી લોડ કરવામાં ભૂલ';

  @override
  String get addIngredient => 'સામગ્રી ઉમેરો';

  @override
  String get saveRecipe => 'સાચવો';

  @override
  String get recipeName => 'રેસીપીનું નામ';

  @override
  String get shortDescription => 'ટૂંકું વર્ણન';

  @override
  String get prepTimeMinutes => 'તૈયારીનો સમય (મિનિટ)';

  @override
  String get instructionsHint => 'દરેક લીટી દીઠ એક પગલું લખો...';

  @override
  String get addPhoto => 'ફોટો ઉમેરો';

  @override
  String get imageUrlPlaceholder => 'અથવા છબી URL પેસ્ટ કરો';

  @override
  String get tags => 'ટેગ્સ';

  @override
  String get recipeTags => 'રેસીપી ટેગ્સ';

  @override
  String get suggestedTags => 'સૂચવેલ';

  @override
  String get searchRecipes => 'રેસીપી શોધો...';

  @override
  String get filterByTag => 'ટેગ દ્વારા ફિલ્ટર કરો';

  @override
  String get allTags => 'બધા';

  @override
  String get recipeDeleted => 'રેસીપી કાઢી નાખી';

  @override
  String get saveChanges => 'ફેરફારો સાચવો';

  @override
  String get editRecipeTitle => 'રેસીપી સંપાદિત કરો';

  @override
  String get newRecipeTitle => 'નવી રેસીપી';

  @override
  String get requiredField => 'ફરજિયાત';

  @override
  String get chooseImageSource => 'છબી સ્રોત પસંદ કરો';

  @override
  String get gallery => 'ગેલેરી';

  @override
  String get enterUrl => 'URL દાખલ કરો';

  @override
  String get recipeImage => 'રેસીપી છબી';

  @override
  String get removeImage => 'છબી દૂર કરો';

  @override
  String get mealPlannerTitle => 'મીલ પ્લાનર';

  @override
  String get mealPlannerViewMonthly => 'માસિક દૃશ્ય';

  @override
  String get mealPlannerViewWeekly => 'સાપ્તાહિક દૃશ્ય';

  @override
  String get mealPlannerNoMeals => 'કોઈ ભોજન આયોજિત નથી';

  @override
  String get mealPlannerNoMealsHint => 'ભોજન ઉમેરવા માટે કોઈ દિવસ પર ટેપ કરો';

  @override
  String get mealPlannerLoading => 'ભોજન યોજના લોડ થઈ રહી છે...';

  @override
  String get mealPlannerError => 'ભોજન યોજના લોડ કરવામાં ભૂલ';

  @override
  String get mealPlannerAddMeal => 'ભોજન ઉમેરો';

  @override
  String get mealPlannerEditMeal => 'ભોજન સંપાદિત કરો';

  @override
  String get mealPlannerDeleteMeal => 'ભોજન દૂર કરો';

  @override
  String get mealPlannerMealDeleted => 'ભોજન દૂર કર્યું';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count વ્યક્તિઓ માટે',
      one: '$count વ્યક્તિ માટે',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'કેટલા વ્યક્તિ માટે';

  @override
  String get mealPlannerNoteLabel => 'નોંધ (વૈકલ્પિક)';

  @override
  String get mealPlannerSelectRecipe => 'રેસીપી પસંદ કરો';

  @override
  String get mealPlannerSearchRecipes => 'રેસીપી શોધો...';

  @override
  String get mealPlannerNoRecipesFound => 'કોઈ રેસીપી મળી નથી';

  @override
  String get mealPlannerNoRecipesHint => 'પહેલા રેસીપી ટેબમાં રેસીપી બનાવો';

  @override
  String get mealPlannerSave => 'યોજનામાં ઉમેરો';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total માંથી $count ભોજન આયોજિત';
  }

  @override
  String get mealPlannerGenerateList => 'શોપિંગ યાદી બનાવો';

  @override
  String get mealPlannerGenerateListConfirm =>
      'આ અઠવાડિયે આયોજિત ભોજનની તમામ સામગ્રી તમારી શોપિંગ યાદીમાં ઉમેરવી છે?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'તમારી યાદીમાં $count સામગ્રી ઉમેરાઈ!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ઉમેરવા માટે કોઈ સામગ્રી નથી. પહેલા રેસીપી સાથે કેટલાક ભોજનનું આયોજન કરો.';

  @override
  String get mealPlannerGenerateListNoList => 'પહેલા શોપિંગ યાદી બનાવો.';

  @override
  String get mealPlannerMealTypeBreakfast => 'નાસ્તો';

  @override
  String get mealPlannerMealTypeLunch => 'બપોરનું ભોજન';

  @override
  String get mealPlannerMealTypeDinner => 'રાત્રિભોજન';

  @override
  String get mealPlannerMealTypeSnack => 'અલ્પાહાર';

  @override
  String get mealPlannerDateLabel => 'તારીખ';

  @override
  String get mealPlannerWeekEmpty => 'આ અઠવાડિયા માટે કંઈ આયોજિત નથી';

  @override
  String get mealPlannerWeekEmptyHint =>
      'તમારા ભોજનનું આયોજન શરૂ કરવા માટે કોઈપણ દિવસ પર ટેપ કરો!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes મિનિટ';
  }

  @override
  String get inviteToList => 'સૂચિમાં આમંત્રિત કરો';

  @override
  String get shareApp => 'એપ્લિકેશન શેર કરો';

  @override
  String get shareAppDescription =>
      'KipiList નો ઉપયોગ કરવા મિત્રોને આમંત્રિત કરો';

  @override
  String shareReferralText(Object url) {
    return 'હું મારી ખરીદી ગોઠવવા માટે KipiList નો ઉપયોગ કરું છું! મારી લિંક દ્વારા ડાઉનલોડ કરો અને અમને બંનેને 7 દિવસનું પ્રીમિયમ મફત મળે છે: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList પ્રીમિયમના 7 દિવસ મેળવો!';
}
