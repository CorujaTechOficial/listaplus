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
  String get navChat => 'ચેટ';

  @override
  String get navRecipes => 'વાનગીઓ';

  @override
  String get navLists => 'યાદીઓ';

  @override
  String get navMealPlanner => 'મેનુ';

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
  String get help => 'મદદ';

  @override
  String get helpListTitle => 'તમારી સૂચિનો ઉપયોગ કરીને';

  @override
  String get helpListAddItems =>
      'તળિયે + બટન વડે આઇટમ્સ ઉમેરો અથવા ઉત્પાદનો બ્રાઉઝ કરવા માટે શોધનો ઉપયોગ કરો';

  @override
  String get helpListAi =>
      'AI સહાયકને તમારી સૂચિ બનાવવા, ગોઠવવા અથવા પૂર્ણ કરવા માટે કહો — ફક્ત સ્પાર્કલ આઇકનને ટેપ કરો';

  @override
  String get helpListShoppingMode =>
      'શોપિંગ મોડ ખરીદેલી વસ્તુઓને છુપાવે છે જેથી તમે જે બાકી છે તેના પર ધ્યાન કેન્દ્રિત કરી શકો';

  @override
  String get helpListOrganize =>
      'પુનઃક્રમાંકિત કરવા માટે વસ્તુઓને ખેંચો, ખરીદેલ તરીકે ચિહ્નિત કરવા માટે સ્વાઇપ કરો અથવા ફિલ્ટર્સ અને સૉર્ટિંગનો ઉપયોગ કરો';

  @override
  String get helpListShare =>
      'તમારી સૂચિ કુટુંબ સાથે શેર કરો અથવા PDF, Excel અથવા સાદા ટેક્સ્ટ તરીકે નિકાસ કરો';

  @override
  String get import => 'આયાત કરો';

  @override
  String get rename => 'ફરીથી નામ આપો';

  @override
  String get upgrade => 'અપગ્રેડ કરો';

  @override
  String get clear => 'સાફ કરો';

  @override
  String get clearPurchasedTitle => 'ખરીદેલી વસ્તુઓ સાફ કરો';

  @override
  String get clearPurchasedConfirmMessage =>
      'આ સૂચિમાંથી બધી ખરીદેલી વસ્તુઓ દૂર કરીએ? આ પૂર્વવત્ કરી શકાતું નથી.';

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
  String get errorCreateList =>
      'સૂચિ બનાવી શકાઈ નથી. તમારું કનેક્શન તપાસો અને ફરી પ્રયાસ કરો.';

  @override
  String get errorShareCode =>
      'શેર કોડ જનરેટ કરવામાં ભૂલ. તમારું કનેક્શન તપાસો અને ફરી પ્રયાસ કરો.';

  @override
  String get errorQuickAdd =>
      'આઇટમ ઉમેરી શકાઈ નથી. તમારું કનેક્શન તપાસો અને ફરી પ્રયાસ કરો.';

  @override
  String get errorLoadList =>
      'તમારી યાદીઓ લોડ કરી શકાઈ નથી. પ્રારંભ કરવા માટે કૃપા કરીને એક નવી સૂચિ બનાવો.';

  @override
  String get restoreError => 'ખરીદીઓ પુનઃસ્થાપિત કરવામાં ભૂલ. ફરી પ્રયાસ કરો.';

  @override
  String get loading => 'લોડ થાય છે...';

  @override
  String get fieldRequired => 'ફરજિયાત ક્ષેત્ર';

  @override
  String get addedFeedback => 'ઉમેરાયું!';

  @override
  String get profile => 'પ્રોફાઇલ';

  @override
  String get exitShoppingMode => 'શોપિંગ મોડમાંથી બહાર નીકળો';

  @override
  String get exit => 'બહાર નીકળો';

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
  String pantryDeficitCount(int count, String unit) {
    return 'ખૂટે છે ${count}PH1__';
  }

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
  String get scanProductTitle => 'ઉત્પાદન સ્કેન કરો';

  @override
  String get positionBarcodeCenter => 'બારકોડને કેન્દ્રમાં મૂકો';

  @override
  String get product => 'ઉત્પાદન';

  @override
  String get settingsAppBar => 'સેટિંગ્સ';

  @override
  String get preferencesSection => 'પસંદગીઓ';

  @override
  String get aiSection => 'એઆઈ સહાયક';

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
  String get themeMode => 'થીમ મોડ';

  @override
  String get chooseThemeMode => 'થીમ મોડ પસંદ કરો';

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
  String get myAchievements => 'મારી સિદ્ધિઓ';

  @override
  String get itemsPurchased => 'વસ્તુઓ ખરીદી';

  @override
  String get totalSavings => 'કુલ બચત';

  @override
  String get currentStreak => 'વર્તમાન સ્ટ્રીક';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count દિવસ',
      one: '$count દિવસ',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'અનલોક કરેલ બેજેસ';

  @override
  String get badgeBeginner => 'શિખાઉ માણસ';

  @override
  String get badgeOrganized => 'આયોજિત';

  @override
  String get badgeSavingMaster => 'સેવિંગ માસ્ટર';

  @override
  String get badgeSuperPlanner => 'સુપર પ્લાનર';

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
  String get budgetGoalInvalidAmount => 'શૂન્ય કરતાં મોટું મૂલ્ય દાખલ કરો';

  @override
  String get budgetPartialEstimateHint => '~ આંશિક કિંમતના અંદાજો શામેલ છે';

  @override
  String get budgetGoalSaved => 'બજેટ લક્ષ્ય સાચવ્યું';

  @override
  String get budgetGoalRemoved => 'બજેટ લક્ષ્ય દૂર કર્યું';

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
  String progressItemsOf(int purchased, int total) {
    return '$total આઇટમ્સમાંથી $purchased';
  }

  @override
  String progressBudget(String amount) {
    return 'બજેટ: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'કુલ: $amount';
  }

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
  String get keepAdding => 'ઉમેરતા રહો';

  @override
  String get keepAddingSubtitle => 'બહુવિધ વસ્તુઓ ઉમેરવા માટે શીટ ખુલ્લી રાખો';

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
  String get newChatConfirmTitle => 'નવી વાતચીત';

  @override
  String get newChatConfirmMessage =>
      'નવી વાતચીત શરૂ કરીએ? તમારી વર્તમાન વાતચીત ખોવાઈ જશે.';

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
  String get chatHintBlocked => 'ચેટ કરવા માટે AI ને અનલૉક કરો';

  @override
  String get chatEmptySubtitle =>
      'પ્રારંભ કરવા માટે આઇટમ સૂચનો, વાનગીઓ અથવા બચત ટીપ્સ માટે પૂછો.';

  @override
  String get chatEmptyTitle => 'તમારી ચેટ ખાલી છે';

  @override
  String chatError(String error) {
    return 'ચેટ લોડ કરવામાં ભૂલ: $error';
  }

  @override
  String get goodResponse => 'સારો પ્રતિભાવ';

  @override
  String get badResponse => 'ખરાબ પ્રતિભાવ';

  @override
  String get scrollToBottom => 'નીચે સુધી સ્ક્રોલ કરો';

  @override
  String get somethingWentWrong => 'કંઈક ખોટું થયું';

  @override
  String get editMessage => 'સંદેશ સંપાદિત કરો';

  @override
  String get searchConversations => 'વાર્તાલાપ શોધો';

  @override
  String get dateGroupToday => 'આજે';

  @override
  String get dateGroupYesterday => 'ગઈકાલે';

  @override
  String get dateGroupPrevious7Days => 'પાછલા 7 દિવસ';

  @override
  String get dateGroupOlder => 'જૂની';

  @override
  String get aiAssistantTitle => 'એઆઈ સહાયક';

  @override
  String get closeSheet => 'બંધ કરો';

  @override
  String get scanBarcodeTitle => 'બારકોડ સ્કેન કરો';

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
  String get aiLimitAlmostReached => 'લગભગ AI સંદેશાઓની બહાર';

  @override
  String get unlockAi => 'અમર્યાદિત AI અનલૉક કરો';

  @override
  String get aiTeaserFallback =>
      'સંપૂર્ણ પ્રતિસાદને અનલૉક કરવા માટે પ્રીમિયમ પર સબ્સ્ક્રાઇબ કરો અને તમારી ખરીદી માટે અમર્યાદિત AI ટિપ્સ મેળવો...';

  @override
  String aiUsageWarning(int remaining) {
    return 'આ મહિને $remaining AI ક્રિયાઓ બાકી છે — અમર્યાદિત માટે અપગ્રેડ કરો';
  }

  @override
  String get aiUsageExhausted =>
      'માસિક AI મર્યાદા પહોંચી. અમર્યાદિત → માટે પ્રો પર અપગ્રેડ કરો';

  @override
  String get undo => 'પૂર્વવત્ કરો';

  @override
  String get newChatStarted => 'નવી ચેટ શરૂ થઈ';

  @override
  String get quickAddToList => 'યાદીમાં ઉમેરો';

  @override
  String get aiCapabilitiesTitle => 'હું શું કરી શકું?';

  @override
  String get aiCapabilitiesLists => 'શોપિંગ યાદીઓ';

  @override
  String get aiCapabilitiesBudget => 'બજેટ અને કિંમતો';

  @override
  String get aiCapabilitiesRecipes => 'વાનગીઓ અને મેનુ';

  @override
  String get aiCapabilitiesOrganize => 'સંસ્થા';

  @override
  String get marketModeDescription =>
      'જ્યારે તમે ખરીદી કરો ત્યારે વસ્તુઓને ચેક કરો';

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
  String get onboardingMaybeLater => 'કદાચ પછીથી';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'હેય $name, તમારી ખરીદીને યોગ્ય રીતે ગોઠવો.';
  }

  @override
  String get onboardingSlide1Title => 'સ્માર્ટ શોપિંગ યાદીઓ';

  @override
  String get onboardingSlide1Body =>
      'તરત જ યાદીઓ બનાવો અને શેર કરો. કીપી તમારી આદતોના આધારે આપમેળે વસ્તુઓ ઉમેરે છે.';

  @override
  String get onboardingSlide2Title => 'કિપીને મળો';

  @override
  String get onboardingSlide2Body =>
      'કંઈપણ પૂછો - સૂચિ બનાવો, વાનગીઓ શોધો, તમારી પેન્ટ્રીને ટ્રૅક કરો, તમારા અઠવાડિયાની યોજના બનાવો.';

  @override
  String get onboardingSlide3Title => 'પેન્ટ્રી અને ભોજન આયોજન';

  @override
  String get onboardingSlide3Body =>
      'તમારી પાસે શું છે તે ટ્રૅક કરો, ભોજનની યોજના બનાવો અને ઑટોમૅટિક રીતે ખરીદીની સૂચિ બનાવો.';

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
  String get paywallLoadingError => 'ઑફર્સ લોડ કરવામાં ભૂલ. ફરી પ્રયાસ કરો.';

  @override
  String get paywallPurchaseError =>
      'ખરીદી પૂર્ણ કરી શકાઈ નથી. ફરી પ્રયાસ કરો.';

  @override
  String get paywallRestoreError =>
      'પુનઃસ્થાપિત કરવા માટે કોઈ સક્રિય સબ્સ્ક્રિપ્શન મળ્યું નથી.';

  @override
  String paywallTrialDays(Object days) {
    return '$days દિવસ મફત';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count અઠવાડિયા મફત',
      one: '$count અઠવાડિયું મફત',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count મહિનો મફત',
      one: '$count મહિનો મફત',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'KipiList Pro 7 દિવસ માટે મફત અજમાવો';

  @override
  String get paywallTrialSubtitle => 'કોઈપણ સમયે રદ કરો. આજે કોઈ શુલ્ક નથી.';

  @override
  String get paywallTrialCta => 'મફત અજમાયશ શરૂ કરો';

  @override
  String get recipeAddToList => 'ખરીદીની સૂચિમાં ઉમેરો';

  @override
  String get recipeAddError =>
      'તમારી સૂચિમાં ઉમેરી શકાયું નથી. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get recipeTapToCheck =>
      'જ્યારે તમે રાંધો ત્યારે તેને ચેક કરવા માટે એક ઘટકને ટેપ કરો';

  @override
  String get recipeIngredientInPantry => 'પેન્ટ્રીમાં';

  @override
  String get recipeIngredientLowPantry => 'પેન્ટ્રીમાં ઓછું';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$listName માં $count ઘટકો ઉમેરવામાં આવ્યા';
  }

  @override
  String get noListSelected => 'કોઈ સૂચિ પસંદ કરી નથી. પ્રથમ યાદી ખોલો.';

  @override
  String get paywallFeaturesTitle => 'તમને જે જોઈએ છે તે બધું:';

  @override
  String get paywallFeatureDescAssistant => 'AI તમારી સૂચિને આપમેળે ગોઠવે છે';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'તમને જરૂર હોય તેટલી યાદીઓ બનાવો';

  @override
  String get paywallFeatureDescSharing => 'વાસ્તવિક સમયમાં એકસાથે ખરીદી કરો';

  @override
  String get paywallFeatureDescPantry => 'તમારી પાસે ઘરે શું છે તે ટ્રૅક કરો';

  @override
  String get paywallFeatureDescBudget => 'દર મહિને બજેટ પર રહો';

  @override
  String get paywallFeatureUnlimitedLists => 'અમર્યાદિત યાદીઓ';

  @override
  String get paywallFeatureSmartAI => 'સ્માર્ટ AI';

  @override
  String get paywallFeatureExpenseControl => 'ખર્ચ નિયંત્રણ';

  @override
  String get paywallFeatureSharing => 'શેરિંગ';

  @override
  String get paywallBeforeAfterTitle => 'AI પહેલા અને પછી:';

  @override
  String get paywallLabelCommon => 'સામાન્ય';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ચોખા';

  @override
  String get paywallBeforeItem2 => 'સાબુ';

  @override
  String get paywallBeforeItem3 => 'માંસ';

  @override
  String get paywallBeforeItem4 => 'બ્રેડ';

  @override
  String get paywallAfterItem1 => 'અનાજ';

  @override
  String get paywallAfterItem2 => 'સફાઈ';

  @override
  String get paywallAfterItem3 => 'માંસ';

  @override
  String get paywallAfterItem4 => 'બેકરી';

  @override
  String get paywallTestimonialsTitle => 'અમારા વપરાશકર્તાઓ શું કહે છે:';

  @override
  String get paywallTestimonial1Name => 'એન એસ.';

  @override
  String get paywallTestimonial1Text =>
      'AI મારી ખરીદી સેકન્ડોમાં ગોઠવે છે. હું માર્કેટ ટ્રીપ દીઠ 20 મિનિટ બચાવું છું.';

  @override
  String get paywallTestimonial2Name => 'ચાર્લ્સ એમ.';

  @override
  String get paywallTestimonial2Text =>
      'હું એક યાદી આઇટમ ફરી ક્યારેય ભૂલી નથી. AI ચેટ સનસનાટીપૂર્ણ છે!';

  @override
  String get paywallSocialProof => '+2,400 પરિવારો તેનો ઉપયોગ કરે છે';

  @override
  String get paywallCtaUnlock => 'PRO અનલોક કરો';

  @override
  String get paywallBestValue => 'શ્રેષ્ઠ મૂલ્ય';

  @override
  String get paywallMostPopular => 'સૌથી વધુ લોકપ્રિય';

  @override
  String get paywallProLabel => 'પ્રો';

  @override
  String get paywallSafeCheckout => 'સુરક્ષિત ચુકવણી';

  @override
  String get paywallSelectPlan => 'તમારી યોજના પસંદ કરો:';

  @override
  String paywallSavePercent(int percent) {
    return '$percent% સાચવો';
  }

  @override
  String paywallPricePerMonth(String price) {
    return 'માત્ર $price/મહિને';
  }

  @override
  String get paywallPackageAnnual => 'વાર્ષિક યોજના';

  @override
  String get paywallPackageMonthly => 'માસિક યોજના';

  @override
  String get paywallPackageLifetime => 'આજીવન ઍક્સેસ';

  @override
  String get paywallCancelAnytime => 'કોઈપણ સમયે રદ કરો. પ્રતિબદ્ધતા નથી.';

  @override
  String paywallTrialInCard(int days) {
    return 'પ્રથમ $days દિવસ મફત';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Play દ્વારા સુરક્ષિત · કોઈપણ સમયે રદ કરો';

  @override
  String get paywallPolicy => 'ગોપનીયતા નીતિ';

  @override
  String get paywallTerms => 'ઉપયોગની શરતો';

  @override
  String get paywallRestore => 'પુનઃસ્થાપિત કરો';

  @override
  String get paywallTimelineToday => 'આજે';

  @override
  String get paywallTimelineTodayDesc => 'સંપૂર્ણ ઍક્સેસ તરત જ અનલૉક કરો';

  @override
  String paywallTimelineDay(int day) {
    return 'દિવસ $day';
  }

  @override
  String get paywallTimelineReminderDesc =>
      'અજમાયશ સમાપ્ત થાય તે પહેલાં અમે તમને યાદ અપાવીએ છીએ';

  @override
  String get paywallTimelineChargeDesc =>
      'તમારું સબ્સ્ક્રિપ્શન શરૂ થાય છે - કોઈપણ સમયે રદ કરો';

  @override
  String get paywallHeroFeatureTitle => 'AI શોપિંગ આસિસ્ટન્ટ';

  @override
  String get paywallHeroFeatureDesc =>
      'આખી સૂચિ બોલો અથવા પેસ્ટ કરો — AI સૉર્ટ કરો, વર્ગીકૃત કરો અને સેકંડમાં બજેટ કરો';

  @override
  String get paywallBasedOnAnswers => 'તમારા જવાબોમાંથી વ્યક્તિગત કરેલ';

  @override
  String get paywallHeroHeadline => 'Kipi AI હંમેશા તમારી બાજુમાં';

  @override
  String get paywallHeroSubtitle =>
      'તમારા ખિસ્સામાં AI સાથે વસ્તુઓ ઉમેરો, સૂચિઓ ગોઠવો અને સમય બચાવો';

  @override
  String get paywallBenefit1Desc =>
      '24/7 વસ્તુઓ ઉમેરે છે, ગોઠવે છે અને સૂચવે છે';

  @override
  String get paywallBenefit2Desc => 'કોઈ 3-સૂચિ મર્યાદા';

  @override
  String get paywallBenefit3Desc => 'ખર્ચ ટ્રેકિંગ અને કુટુંબ યાદીઓ';

  @override
  String get paywallPackageMonthlyDesc => 'સંપૂર્ણ સુગમતા';

  @override
  String get paywallWelcomeOfferBadge => '🎁 સ્વાગત ઓફર';

  @override
  String get paywallFreeTier => 'મફત: 3 યાદીઓ';

  @override
  String get paywallProTier => 'પ્રો: અમર્યાદિત';

  @override
  String get firstItemAddedSnackbar => 'પ્રથમ આઇટમ ઉમેરી! શાનદાર શરૂઆત 🛒';

  @override
  String paywallCtaTrialDays(int days) {
    return 'મફત પ્રારંભ કરો — $days દિવસ';
  }

  @override
  String get premiumUpgrade => 'અનલૉક કરવા અપગ્રેડ કરો';

  @override
  String get itemRemoved => 'આઇટમ દૂર કરી';

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
  String get pantryItemAdded => 'આઇટમ ઉમેરી';

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
  String get recipeYieldServings => 'ઉપજ પિરસવાનું';

  @override
  String get recipeManualTotalCost => 'મેન્યુઅલ કુલ ખર્ચ';

  @override
  String get recipeManualTotalCostHint =>
      'ઘટકોની કિંમતો પરથી અંદાજ કાઢવા માટે ખાલી છોડો.';

  @override
  String get recipeEstimatedTotalCost => 'અંદાજિત કુલ ખર્ચ';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / સર્વિંગ';
  }

  @override
  String recipeServesCount(int count) {
    return 'સેવા આપે છે $count';
  }

  @override
  String get recipeEstimatePartial => 'કિંમત સાથે ઘટકો પર આધારિત આંશિક અંદાજ.';

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
  String get mealPlannerEstimatePartial =>
      'આંશિક કિંમત ડેટા સાથેની વાનગીઓના આધારે અંદાજ.';

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
  String mealPlannerBudgetMonthCost(String amount) {
    return 'મહિનો: $amount';
  }

  @override
  String mealPlannerBudgetWeekCost(String amount) {
    return 'અઠવાડિયું: $amount';
  }

  @override
  String mealPlannerBudgetTodayCost(String amount) {
    return 'આજે: $amount';
  }

  @override
  String get mealPlannerBudgetRemoveGoal => 'ધ્યેય દૂર કરો';

  @override
  String get mealPlannerBudgetGoalNav => 'ભોજન આયોજક બજેટ';

  @override
  String get mealPlannerBudgetGoalSubtitle =>
      'ભોજન આયોજન માટે માસિક ખર્ચનું લક્ષ્ય';

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
  String shareReferralText(String url) {
    return 'હું મારી ખરીદી ગોઠવવા માટે KipiList નો ઉપયોગ કરું છું! મારી લિંક દ્વારા ડાઉનલોડ કરો અને અમને બંનેને 7 દિવસનું પ્રીમિયમ મફત મળે છે: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList પ્રીમિયમના 7 દિવસ મેળવો!';

  @override
  String get gestureHint =>
      'પસંદ કરવા માટે હોલ્ડ કરો • દૂર કરવા માટે સ્વાઇપ કરો';

  @override
  String get catalogTitle => 'કેટલોગ';

  @override
  String get catalogMyFrequents => 'મારી વારંવાર';

  @override
  String get catalogSearchGlobal => 'કોઈપણ ઉત્પાદન શોધો...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category માં શોધો...';
  }

  @override
  String get catalogSortPopular => 'સૌથી વધુ લોકપ્રિય';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'નાગરિકો';

  @override
  String get catalogRareSection => 'તમારા દેશમાં ઓછા સામાન્ય';

  @override
  String get catalogRareBadge => 'દુર્લભ';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'ઉમેરો $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'ઉત્પાદન મળ્યું નથી, નામ લખો';

  @override
  String get catalogBrowse => 'કેટલોગ બ્રાઉઝ કરો';

  @override
  String get catalogCategories => 'શ્રેણીઓ';

  @override
  String get offlineBanner => 'તમે ઑફલાઇન છો';

  @override
  String get consentTitle => 'ગોપનીયતા અને વિશ્લેષણ';

  @override
  String get consentBody =>
      'KipiList તમારા અનુભવને બહેતર બનાવવા માટે Firebase Analytics નો ઉપયોગ કરે છે. તમારા ડેટા પર અમારી ગોપનીયતા નીતિ અનુસાર પ્રક્રિયા કરવામાં આવે છે.';

  @override
  String get consentAccept => 'સ્વીકારો';

  @override
  String get consentDecline => 'ના, આભાર';

  @override
  String get mealPlannerPantryAllAvailable => 'સ્ટોકમાં છે';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ખૂટે છે આઇટમ',
      one: '$count ખૂટે છે આઇટમ',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerManageTypes => 'ભોજનના પ્રકારોનું સંચાલન કરો';

  @override
  String get mealPlannerAddType => 'ભોજનનો પ્રકાર ઉમેરો';

  @override
  String get mealPlannerEditType => 'ભોજનનો પ્રકાર સંપાદિત કરો';

  @override
  String get mealPlannerTypeName => 'નામ';

  @override
  String get mealPlannerTypeColor => 'રંગ';

  @override
  String get mealPlannerTypeIcon => 'ચિહ્ન';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      'શું તમે ખરેખર આ ભોજનનો પ્રકાર કાઢી નાખવા માંગો છો? આ પ્રકાર સાથે આયોજિત ભોજન રહેશે.';

  @override
  String get mealPlannerTypeNameEmpty => 'નામ ખાલી ન હોઈ શકે';

  @override
  String get mealPlannerTypeDeleteError => 'આ ભોજનનો પ્રકાર કાઢી શકાતો નથી.';

  @override
  String get mealPlannerCustomTypeLabel => 'કસ્ટમ પ્રકાર';

  @override
  String get mealPlannerDefaultTypeLabel => 'ડિફૉલ્ટ પ્રકાર';

  @override
  String get mealPlannerDuplicate => 'ડુપ્લિકેટ ભોજન';

  @override
  String get mealPlannerSelectDestinationDay => 'આના પર ડુપ્લિકેટ...';

  @override
  String get mealPlannerCurrentDayLabel => 'વર્તમાન દિવસ';

  @override
  String get mealPlannerDuplicateSuccess => 'ભોજન સફળતાપૂર્વક ડુપ્લિકેટ થયું!';

  @override
  String get expirationDate => 'સમાપ્તિ તારીખ';

  @override
  String get notInformed => 'જાણ નથી';

  @override
  String get skip => 'છોડો';

  @override
  String get onboardingSkip => 'હમણાં માટે અવગણો';

  @override
  String get onboardingAiTitle => 'કીપી સાથે ચેટ કરો';

  @override
  String get onboardingAiGreeting =>
      'હાય! હું કિપી છું, તમારો પર્સનલ શોપિંગ આસિસ્ટન્ટ! 🛒';

  @override
  String get onboardingAiAskName => 'તમારું નામ શું છે?';

  @override
  String get onboardingAiNameHint => 'તમારું નામ લખો...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'તમને મળીને આનંદ થયો, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'તમારો મનપસંદ ખોરાક કયો છે?';

  @override
  String get onboardingAiFoodHint => 'દા.ત. પિઝા, સુશી...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'મહાન પસંદગીઓ! હું તમારી સૂચિમાં શું ઉમેરીશ તે અહીં છે:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'શું આ સારું લાગે છે? બીજું કંઈક ટાઇપ કરવાનો પ્રયાસ કરો!';

  @override
  String get onboardingAiReady =>
      'સરસ! તમે શરૂ કરવા માટે તૈયાર છો. ચાલો તમારું એકાઉન્ટ સેટ કરીએ!';

  @override
  String get onboardingAiContinue => 'ચાલુ રાખો →';

  @override
  String get connectionError => 'કનેક્શન ભૂલ';

  @override
  String connectionErrorDesc(String error) {
    return 'ભૂલ: $error';
  }

  @override
  String get errorLoadingLists => 'સૂચિઓ લોડ કરવામાં ભૂલ';

  @override
  String get errorLoadingItems => 'આઇટમ લોડ કરવામાં ભૂલ';

  @override
  String get noListsFound => 'કોઈ સૂચિઓ મળી નથી';

  @override
  String get backToToday => 'આજ પર પાછા ફરો';

  @override
  String get quickSuggestions => 'ઝડપી સૂચનો';

  @override
  String get aiEnergyLow => 'ઓછી AI ઊર્જા';

  @override
  String get aiUnlockUnlimited => 'અમર્યાદિત AI અનલૉક કરો';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 આજે';
  }

  @override
  String get aiSubscribeUnlimited => 'અમર્યાદિત AI માટે સબ્સ્ક્રાઇબ કરો';

  @override
  String get unlockWithAd => 'જાહેરાત સાથે અનલૉક કરો';

  @override
  String get conversationHistoryTitle => 'વાતચીતનો ઇતિહાસ';

  @override
  String get noConversationsFound => 'કોઈ વાતચીત મળી નથી';

  @override
  String get errorLoadingHistory => 'ઇતિહાસ લોડ કરવામાં ભૂલ';

  @override
  String get deleteConversationTitle => 'વાતચીત કાઢી નાખો';

  @override
  String get deleteConversationConfirm => 'આ ક્રિયા પૂર્વવત્ કરી શકાતી નથી.';

  @override
  String get deleteConversation => 'કાઢી નાખો';

  @override
  String get subscription => 'સબ્સ્ક્રિપ્શન';

  @override
  String get kipiListProActive => 'KipiList પ્રો સક્રિય';

  @override
  String get unlockPremiumTitle => 'પ્રીમિયમ અનલૉક કરો';

  @override
  String get loadingSubscription => 'સબ્સ્ક્રિપ્શન લોડ કરી રહ્યું છે...';

  @override
  String get errorLoadingSubscription => 'સબ્સ્ક્રિપ્શન લોડ કરવામાં ભૂલ';

  @override
  String get profileSection => 'પ્રોફાઇલ';

  @override
  String get myProfile => 'મારી પ્રોફાઇલ';

  @override
  String get profileSubtitle => 'તમારી પ્રોફાઇલ માહિતી';

  @override
  String get customizeAiAssistant => 'AI સહાયકને કસ્ટમાઇઝ કરો';

  @override
  String get assistantHistory => 'સહાયક ઇતિહાસ';

  @override
  String get assistantHistorySubtitle => 'તમારો વાર્તાલાપ ઇતિહાસ જુઓ';

  @override
  String get manageCategories => 'શ્રેણીઓ મેનેજ કરો';

  @override
  String get manageCategoriesSubtitle =>
      'શ્રેણીઓ ઉમેરો, સંપાદિત કરો અથવા દૂર કરો';

  @override
  String get customizeAssistant => 'કસ્ટમાઇઝ કરો';

  @override
  String get assistantName => 'સહાયકનું નામ';

  @override
  String get chooseIcon => 'આયકન પસંદ કરો';

  @override
  String get profileSaved => 'પ્રોફાઇલ સાચવી';

  @override
  String get errorSavingProfile => 'પ્રોફાઇલ સાચવવામાં ભૂલ';

  @override
  String get userProfile => 'વપરાશકર્તા પ્રોફાઇલ';

  @override
  String get profileDescription => 'પ્રોફાઇલ વર્ણન';

  @override
  String get preferredMarket => 'પસંદગીનું બજાર';

  @override
  String get preferredMarketHint => 'તમે સામાન્ય રીતે ક્યાં ખરીદી કરો છો?';

  @override
  String get dietaryRestrictions => 'આહાર પ્રતિબંધો';

  @override
  String get dietaryRestrictionsHint => 'કોઈપણ આહાર પ્રતિબંધો?';

  @override
  String get marketsToAvoid => 'ટાળવા માટે બજારો';

  @override
  String get marketsToAvoidHint =>
      'તમે જે બજારોમાં ખરીદી ન કરવાનું પસંદ કરો છો';

  @override
  String get observations => 'અવલોકનો';

  @override
  String get observationsHint => 'કોઈપણ વધારાની નોંધો?';

  @override
  String get saveProfile => 'પ્રોફાઇલ સાચવો';

  @override
  String get everythingReady => 'બધું તૈયાર છે!';

  @override
  String get youCompletedList => 'તમે સૂચિ પૂર્ણ કરી!';

  @override
  String get selectCheaperAlternative => 'સસ્તો વિકલ્પ પસંદ કરો';

  @override
  String get suggestedItems => 'સૂચિત વસ્તુઓ';

  @override
  String get swapped => 'અદલાબદલી';

  @override
  String get swap => 'સ્વેપ';

  @override
  String get chooseThemeColor => 'થીમ રંગ પસંદ કરો';

  @override
  String get manageCategoriesTitle => 'શ્રેણીઓ મેનેજ કરો';

  @override
  String get categoryLimitReached => 'શ્રેણી મર્યાદા પહોંચી';

  @override
  String get deleteCategoryTitle => 'શ્રેણી કાઢી નાખો';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\" માંની આઇટમ્સ \"અન્ય\" માં ખસેડવામાં આવશે.\nચાલુ રાખીએ?';
  }

  @override
  String get deleteCategory => 'કાઢી નાખો';

  @override
  String get newCategoryDialog => 'નવી શ્રેણી';

  @override
  String get editCategoryDialog => 'શ્રેણી સંપાદિત કરો';

  @override
  String get categoryName => 'શ્રેણીનું નામ';

  @override
  String get categoryNameHint => 'શ્રેણીનું નામ દાખલ કરો';

  @override
  String get categoryColorLabel => 'રંગ';

  @override
  String get categoryIconLabel => 'ચિહ્ન';

  @override
  String itemAddedSnack(String name) {
    return '$name ઉમેર્યું';
  }

  @override
  String get kipiQuickBarHint => 'તમારે શું ખરીદવાની જરૂર છે?';

  @override
  String replaceItem(String item) {
    return 'બદલો $item';
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
  String get onboardingHookHeadline => 'ફરી ક્યારેય કરિયાણાની વસ્તુ ભૂલશો નહીં';

  @override
  String get onboardingGoalSaveMoney => 'પૈસા બચાવો';

  @override
  String get onboardingGoalNeverForget => 'વસ્તુઓ ક્યારેય ભૂલશો નહીં';

  @override
  String get onboardingGoalFaster => 'ઝડપથી ખરીદી કરો';

  @override
  String get onboardingGoalFamily => 'કુટુંબ ખરીદી ગોઠવો';

  @override
  String get onboardingGoalRecipes => 'વાનગીઓ શોધો';

  @override
  String get onboardingGoalPantry => 'ટ્રૅક પેન્ટ્રી';

  @override
  String get onboardingCommitmentsTitle => 'તમારા માટે શું મહત્વનું છે?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'KipiList ને વ્યક્તિગત કરવા માટે તમારા લક્ષ્યો પસંદ કરો';

  @override
  String get onboardingCommitmentsCta => 'ચાલો જઈએ!';

  @override
  String get onboardingPersonalizationNameLabel => 'તમારું નામ';

  @override
  String get onboardingPersonalizationNameHint => 'તમારું નામ દાખલ કરો';

  @override
  String get onboardingPersonalizationCategoryTitle => 'તમે શું ખરીદી કરો છો?';

  @override
  String get onboardingPersonalizationGroupTitle => 'તમે કોની ખરીદી કરો છો?';

  @override
  String get onboardingCategoryGrocery => 'કરિયાણા';

  @override
  String get onboardingCategoryPharmacy => 'ફાર્મસી';

  @override
  String get onboardingCategoryRecipes => 'વાનગીઓ';

  @override
  String get onboardingCategoryHome => 'ઘર';

  @override
  String get onboardingCategoryPet => 'પેટ';

  @override
  String get onboardingGroupSolo => 'બસ મને';

  @override
  String get onboardingGroupCouple => 'યુગલ';

  @override
  String get onboardingGroupFamily => 'કુટુંબ';

  @override
  String get onboardingLoadingTitle => 'તમારો અનુભવ તૈયાર કરી રહ્યાં છીએ...';

  @override
  String get onboardingLoadingStep1 =>
      'તમારી પસંદગીઓનું વિશ્લેષણ કરી રહ્યાં છીએ...';

  @override
  String get onboardingLoadingStep2 => 'AI સહાયક સેટઅપ કરી રહ્યાં છીએ...';

  @override
  String get onboardingLoadingStep3 => 'લગભગ તૈયાર...';

  @override
  String get onboardingLoadingStat1Label => 'સૂચિબદ્ધ વસ્તુઓ';

  @override
  String get onboardingLoadingStat2Label => 'વપરાશકર્તાઓએ મદદ કરી';

  @override
  String get onboardingLoadingStat3Label => 'મિનિટો સાચવી';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, દરેક ટ્રિપ પર બચત કરો!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, આઇટમને ક્યારેય ભૂલશો નહીં!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, અડધા સમયમાં ખરીદી કરો!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, ફેમિલી શોપિંગ ગોઠવો!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, નવી વાનગીઓ શોધો!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, તમારી પેન્ટ્રીને સંપૂર્ણ રીતે ટ્રૅક કરો!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'દરેક સફર પર સાચવો!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => 'આઇટમ ક્યારેય ભૂલશો નહીં!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'અડધા સમયમાં ખરીદી કરો!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'કુટુંબ ખરીદી ગોઠવો!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'નવી વાનગીઓ શોધો!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'તમારી પેન્ટ્રીને સંપૂર્ણ રીતે ટ્રૅક કરો!';

  @override
  String paywallPricePerDay(String price) {
    return 'માત્ર $price/દિવસ — એક કોફી કરતાં ઓછી';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'હમણાં માટે અવગણો';

  @override
  String get paywallTestimonial =>
      'AI મારી ખરીદી સેકન્ડોમાં ગોઠવે છે. હું ટ્રીપ દીઠ 20 મિનિટ બચાવું છું.';

  @override
  String get paywallTestimonialAuthor => 'એન એસ.';

  @override
  String get paywallTrialDisclaimer =>
      'કોઈપણ સમયે રદ કરો · તમારી અજમાયશ સમાપ્ત ન થાય ત્યાં સુધી કોઈ શુલ્ક નહીં';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'હેય $name! તમને શેની જરૂર છે $category?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'તમને શું $category જોઈએ છે?';
  }

  @override
  String get onboardingAiDemoYes => 'હા!';

  @override
  String get onboardingAiDemoReaction => 'સરસ!';

  @override
  String get onboardingAiDemoChange => 'આઇટમ બદલો';

  @override
  String get onboardingAiDemoOffer => 'બીજું કંઈક ટાઇપ કરવાનો પ્રયાસ કરો!';

  @override
  String get onboardingAiDemoContinue => 'ચાલુ રાખો';

  @override
  String get onboardingAiDemoSlideHeadline => 'તમારી ખરીદીની સૂચિ, હવે AI સાથે';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'જુઓ કેવી રીતે Kipi તમારી સંપૂર્ણ સૂચિ સેકંડમાં બનાવે છે';

  @override
  String get onboardingAiDemoSlideCta => 'મારે આ જોઈએ છે! →';

  @override
  String get onboardingAiDemoSlideUserMsg =>
      'હું બરબેકયુ હોસ્ટ કરી રહ્યો છું 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'તૈયાર! તમને જે જોઈએ તે અહીં છે:';

  @override
  String get onboardingAiDemoSlideDone => 'સેકન્ડમાં સંપૂર્ણ યાદી ✨';

  @override
  String get onboardingPainTitle => 'તમને સૌથી વધુ શું નિરાશ કરે છે?';

  @override
  String get onboardingPainSubtitle => 'પ્રમાણિક બનો - અમે દરેકને ઠીક કરીશું';

  @override
  String get onboardingPainCta => 'હા, મારા માટે આને ઠીક કરો →';

  @override
  String get onboardingPainForget => 'હું સ્ટોર પર વસ્તુઓ ભૂલી';

  @override
  String get onboardingPainFamily => 'મારો પરિવાર ક્યારેય યાદી જોતો નથી';

  @override
  String get onboardingPainOverspend => 'હું હંમેશા બજેટથી વધુ જાઉં છું';

  @override
  String get onboardingPainRepeat => 'એક સફર ક્યારેય પર્યાપ્ત નથી';

  @override
  String get aiWelcomeContent =>
      'હેલો! 👋 હું **Kipi** છું, તમારી વ્યક્તિગત ખરીદી અને રેસીપી સહાયક!\n\nહું તમને મદદ કરવા માટે અહીં છું:\n🛒 આપમેળે શ્રેણીઓ દ્વારા તમારી ખરીદીને **વ્યવસ્થિત કરો\n💰 તમારું બજેટ **ટ્રેક કરો** અને તમને પૈસા બચાવવા માટેની ટીપ્સ આપો\n🍲 તમારી પાસે પહેલેથી જ છે તે સાથે સ્વાદિષ્ટ વાનગીઓ **સૂચન કરો\n\nઆજે હું તમને કેવી રીતે મદદ કરી શકું? તમે તમારી પ્રથમ સૂચિ બનાવીને પ્રારંભ કરી શકો છો!';

  @override
  String get aiWelcomeSuggestCreateList => 'મારી પ્રથમ યાદી બનાવો';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'કીપી, મારી પ્રથમ ખરીદીની સૂચિ બનાવવામાં મદદ કરો';

  @override
  String get aiWelcomeSuggestSave => 'પૈસા કેવી રીતે બચાવવા?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'કીપી, તમે મને કરિયાણા પર પૈસા બચાવવામાં કેવી રીતે મદદ કરી શકો?';

  @override
  String get suggestionMilk => 'દૂધ';

  @override
  String get suggestionBread => 'બ્રેડ';

  @override
  String get suggestionEggs => 'ઈંડા';

  @override
  String get suggestionCoffee => 'કોફી';

  @override
  String get suggestionRice => 'ચોખા';

  @override
  String get suggestionFruits => 'ફળો';

  @override
  String get recipeIngredientSingular => '1 ઘટક';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count ઘટકો';
  }

  @override
  String get pantryAvailabilityAll => 'બધા સેટ!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return 'પેન્ટ્રીમાં $availableCount/$totalCount';
  }

  @override
  String onboardingProgress(int current, int total) {
    return '$total નું પગલું $current';
  }

  @override
  String get onboardingDemoHeadline =>
      'તમે શું આયોજન કરી રહ્યાં છો તે અમને કહો. કીપી યાદી બનાવે છે.';

  @override
  String get onboardingDemoSubtitle => 'સેકન્ડોમાં સંગઠિત વસ્તુઓ મેળવો.';

  @override
  String get onboardingPersonalizationEffect =>
      'આ કીપીને વધુ સંબંધિત વસ્તુઓ અને માત્રા સૂચવવામાં મદદ કરે છે.';

  @override
  String get onboardingPersonalizeWithName => 'મારા નામ સાથે વ્યક્તિગત કરો';

  @override
  String get onboardingCreateFirstList => 'મારી પ્રથમ યાદી બનાવો';

  @override
  String get onboardingPromptWeekly => 'મારી સાપ્તાહિક આવશ્યકતાઓનું આયોજન કરો';

  @override
  String get onboardingPromptEvent => 'હું કંઈક ખાસ તૈયારી કરી રહ્યો છું';

  @override
  String get onboardingPromptEssentials => 'મારા માટે જરૂરી વસ્તુઓ સૂચવો';

  @override
  String get onboardingFallbackGrocery => '🍚 ચોખા |🫘 કઠોળ |🥛 દૂધ |🥚 ઈંડા';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 એડહેસિવ પાટો|🌡️ થર્મોમીટર|🧴 એન્ટિસેપ્ટિક|😷 ફેસ માસ્ક|🧼 હેન્ડ સેનિટાઈઝર';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 ટામેટાં|🧅 ડુંગળી|🧄 લસણ|🥚 ઈંડા|🧀 ચીઝ';

  @override
  String get onboardingFallbackHome => '🧻 કાગળના ટુવાલ|🧽 સ્પોન્જ|🧴 ડીટરજન્ટ';

  @override
  String get onboardingFallbackPet =>
      '🥣 પાલતુ ખોરાક|🦴 ટ્રીટ|🧼 પેટ શેમ્પૂ|🧸 રમકડા';

  @override
  String get onboardingListSaveFailed =>
      'મેં આઇટમ્સ તૈયાર કરી છે, પરંતુ સૂચિ સાચવી શક્યા નથી. તેને ઍપમાં રાખવા માટે ફરી પ્રયાસ કરો.';

  @override
  String onboardingListCreated(int count) {
    return 'તમારી સૂચિ તૈયાર છે: $count વસ્તુઓ તમારા માટે ગોઠવવામાં આવી છે.';
  }

  @override
  String get onboardingContinueToOffer => 'ચાલુ રાખો';

  @override
  String onboardingPaywallListReady(int count) {
    return 'તમારી પ્રથમ સૂચિ તૈયાર છે · $count વસ્તુઓ';
  }

  @override
  String get paywallContinueFree => 'મફત સંસ્કરણ સાથે ચાલુ રાખો';

  @override
  String get paywallPurchasePending =>
      'તમારી ચુકવણીની મંજૂરી બાકી છે. કન્ફર્મેશન પછી એક્સેસ આપોઆપ રીલીઝ થશે.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return 'આજે: કોઈ શુલ્ક નથી. પછી $days દિવસ પછી $price/વર્ષ. કોઈપણ સમયે રદ કરો.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return 'આજે: કોઈ શુલ્ક નથી. પછી $days દિવસ પછી $price/મહિનો. કોઈપણ સમયે રદ કરો.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price/વર્ષ. કોઈપણ સમયે રદ કરો.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/મહિનો. કોઈપણ સમયે રદ કરો.';
  }

  @override
  String get obHookTitle => 'સ્માર્ટ શોપિંગ અહીંથી શરૂ થાય છે';

  @override
  String get obHookSubtitle =>
      'AI-સંચાલિત સૂચિઓ જે તમારો સમય અને નાણાં બચાવે છે, દરેક એક સફર.';

  @override
  String get obHookSocial => 'વિશ્વભરના હજારો દુકાનદારો દ્વારા વિશ્વાસપાત્ર';

  @override
  String get obHookCta => 'પ્રારંભ કરો';

  @override
  String get obQuizHouseholdTitle => 'તમે કોની ખરીદી કરો છો?';

  @override
  String get obQuizHouseholdSolo => 'બસ મને';

  @override
  String get obQuizHouseholdCouple => 'હું અને મારા જીવનસાથી';

  @override
  String get obQuizHouseholdFamilySmall => '3-4નું કુટુંબ';

  @override
  String get obQuizHouseholdFamilyLarge => '5+નું કુટુંબ';

  @override
  String get obQuizFrequencyTitle => 'તમે કેટલી વાર કરિયાણાની ખરીદી કરો છો?';

  @override
  String get obQuizFrequencyDaily => 'લગભગ દરરોજ';

  @override
  String get obQuizFrequencyWeekly => 'અઠવાડિયામાં એકવાર';

  @override
  String get obQuizFrequencyBiweekly => 'દર બે અઠવાડિયે';

  @override
  String get obQuizFrequencyMonthly => 'મોટી માસિક ખેંચ';

  @override
  String get obQuizPainTitle => 'શોપિંગ વિશે તમને સૌથી વધુ શું નિરાશ કરે છે?';

  @override
  String get obQuizPainForget => 'હું હંમેશા વસ્તુઓ ભૂલી';

  @override
  String get obQuizPainOverspend => 'હું આયોજન કરતાં વધુ ખર્ચ કરું છું';

  @override
  String get obQuizPainWaste => 'ઘરમાં ખોરાકનો બગાડ થાય છે';

  @override
  String get obQuizPainTime => 'તે ઘણો સમય લે છે';

  @override
  String get obQuizSavingsTitle => 'તમે માસિક કેટલી બચત કરવા માંગો છો?';

  @override
  String get obQuizSavingsSmall => 'થોડું - દરેક બીટ ગણાય છે';

  @override
  String get obQuizSavingsMedium => 'મારા કરિયાણાના બિલના લગભગ 10%';

  @override
  String get obQuizSavingsLarge => 'શક્ય તેટલું';

  @override
  String get obQuizMethodTitle => 'આજે તમે શોપિંગ લિસ્ટ કેવી રીતે બનાવશો?';

  @override
  String get obQuizMethodPaper => 'પેન અને કાગળ';

  @override
  String get obQuizMethodNotes => 'નોંધો એપ્લિકેશન';

  @override
  String get obQuizMethodMemory => 'હું તેને મારા માથામાં રાખું છું';

  @override
  String get obQuizMethodNone => 'હું યાદીઓ બનાવતો નથી';

  @override
  String get obSocialTitle => 'તમે સારી કંપનીમાં છો';

  @override
  String get obSocialSubtitle =>
      'તમારા જેવા ખરીદદારો પહેલેથી જ KipiList સાથે બચત કરી રહ્યાં છે';

  @override
  String get obSocialQuote1 =>
      'હું હવે કંઈપણ ભૂલી શકતો નથી. AI મારી યાદી સેકન્ડોમાં બનાવે છે.';

  @override
  String get obSocialQuote2 =>
      'અમે પ્રથમ મહિનામાં અમારા કરિયાણાના બિલમાં નોંધપાત્ર ઘટાડો કર્યો.';

  @override
  String get obSocialQuote3 =>
      'મારા ભાગીદાર સાથે સૂચિ શેર કરવાથી અમારી ખરીદીની અરાજકતાનો અંત આવ્યો.';

  @override
  String get obLoadingTitle => 'તમારી વ્યક્તિગત યોજના બનાવી રહ્યાં છીએ...';

  @override
  String get obLoadingStepProfile => 'તમારા પરિવાર માટે એડજસ્ટ કરી રહ્યા છીએ';

  @override
  String get obLoadingStepHabits => 'તમારા શોપિંગ રૂટિન પર ટ્યુનિંગ';

  @override
  String get obLoadingStepSavings => 'તમારી બચત વ્યૂહરચના ઑપ્ટિમાઇઝ';

  @override
  String get obLoadingStepLists => 'તમારી સ્માર્ટ યાદીઓ તૈયાર કરી રહ્યાં છીએ';

  @override
  String get obRevealTitle => 'તમારી યોજના તૈયાર છે!';

  @override
  String get obRevealSubtitle =>
      'KipiList તમારા માટે કેવી રીતે કામ કરશે તે અહીં છે';

  @override
  String get obRevealSavingsCaption => 'KipiList સાથે અંદાજિત બચત';

  @override
  String obRevealMonth(int n) {
    return 'મહિનો $n';
  }

  @override
  String get obRevealFeatureAi => 'AI તમારી સૂચિ બનાવે છે અને ગોઠવે છે';

  @override
  String get obRevealFeatureBudget =>
      'તમારા ધ્યેય સામે ખર્ચનો ટ્રૅક કરવામાં આવે છે';

  @override
  String get obRevealFeaturePantry => 'પેન્ટ્રી ટ્રેકિંગ ખોરાકનો કચરો ઘટાડે છે';

  @override
  String get obRevealFeatureShare => 'તમારા પરિવાર સાથે રીઅલ-ટાઇમ શેરિંગ';

  @override
  String get obPaywallTitle => 'તમારી યોજનાને અનલૉક કરો';

  @override
  String get obPaywallRetry => 'ફરી પ્રયાસ કરો';

  @override
  String get obLoginTitle => 'તમારી યોજના સાચવો';

  @override
  String get obLoginSubtitle =>
      'સાઇન ઇન કરો જેથી તમારી સૂચિઓ સમગ્ર ઉપકરણો પર સમન્વયિત થાય';

  @override
  String get obLoginGoogle => 'Google સાથે ચાલુ રાખો';

  @override
  String get obLoginApple => 'Apple સાથે ચાલુ રાખો';

  @override
  String get obLoginSkip => 'અત્યારે નહિ';

  @override
  String get obLoginError =>
      'સાઇન-ઇન નિષ્ફળ થયું. ફરી પ્રયાસ કરો અથવા હમણાં માટે છોડી દો.';

  @override
  String get searchMessages => 'સંદેશાઓ શોધો...';

  @override
  String get deletedList => 'કાઢી નાખેલ યાદી';

  @override
  String get openConversation => 'વાતચીત ખોલો';

  @override
  String get userRole => 'તમે';

  @override
  String get assistantRole => 'મદદનીશ';

  @override
  String get agentActionsRunning => 'ક્રિયાઓ ચાલી રહી છે...';

  @override
  String get agentActionsFailed => 'ક્રિયાઓ ચલાવવામાં નિષ્ફળ';

  @override
  String get agentActionsPremium => 'ક્રિયાઓ માટે પ્રીમિયમ જરૂરી છે';

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
  String get undoChanges => 'ફેરફારો પૂર્વવત્ કરો';

  @override
  String premiumStepDescription(String description) {
    return '$description (પ્રીમિયમ)';
  }

  @override
  String get itemAddedToList => 'સૂચિમાં આઇટમ ઉમેરવામાં આવી.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return 'પહેલાની સ્થિતિ: $quantity $unit [$category]$price';
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
      'સ્વચાલિત ક્રિયાઓ અનલૉક કરવા માટે પ્રીમિયમ પર સબ્સ્ક્રાઇબ કરો.';

  @override
  String get viewPlans => 'યોજનાઓ જુઓ';

  @override
  String get artifactSynced => 'સમન્વયિત';

  @override
  String get artifactBudgetLabel => 'બજેટ:';

  @override
  String get totalEstimatedLabel => 'અંદાજિત કુલ';

  @override
  String get quickActionPantry => 'પેન્ટ્રી જુઓ';

  @override
  String get quickActionAi => 'કીપી સાથે ચેટ કરો';

  @override
  String aiApiError(int statusCode) {
    return 'AI સેવાએ એક ભૂલ પરત કરી ($statusCode).';
  }

  @override
  String get aiTimeoutError =>
      'વિનંતીમાં ઘણો સમય લાગ્યો. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get aiConnectionError =>
      'AI સેવા સાથે કનેક્ટ કરી શકાયું નથી. તમારું કનેક્શન તપાસો.';

  @override
  String get aiEmptyResponseError => 'AI સેવાએ ખાલી પ્રતિસાદ આપ્યો.';

  @override
  String get aiInvalidResponseError => 'AI સેવાએ અમાન્ય પ્રતિસાદ આપ્યો.';

  @override
  String get categoryFruits => 'ફળો';

  @override
  String get categoryCleaning => 'સફાઈ';

  @override
  String get categoryBeverages => 'પીણાં';

  @override
  String get categoryBakery => 'બેકરી';

  @override
  String get categoryMeat => 'માંસ';

  @override
  String get categoryDairy => 'ડેરી';

  @override
  String get categoryVegetables => 'શાકભાજી';

  @override
  String get categoryGrains => 'અનાજ અને અનાજ';

  @override
  String get categoryHygiene => 'વ્યક્તિગત સંભાળ';

  @override
  String get categoryFrozen => 'સ્થિર ખોરાક';

  @override
  String get categoryCanned => 'તૈયાર માલ';

  @override
  String get categorySeasonings => 'સીઝનિંગ્સ';

  @override
  String get categorySweets => 'મીઠાઈઓ અને મીઠાઈઓ';

  @override
  String get categoryAlcohol => 'આલ્કોહોલિક પીણાં';

  @override
  String get categoryFish => 'માછલી';

  @override
  String get categoryColdCuts => 'શીત કાપ';

  @override
  String get categoryUtilities => 'ઘરગથ્થુ પુરવઠો';

  @override
  String get categoryPet => 'પાલતુ પુરવઠો';

  @override
  String get categoryBaby => 'બાળક';

  @override
  String get categoryOthers => 'અન્ય';

  @override
  String chatEmptyGreeting(String name) {
    return 'હાય $name, હું કીપી છું 👋';
  }

  @override
  String get chatEmptyGreetingNoName => 'હાય, હું કિપી છું 👋';

  @override
  String get chatEmptyPitch =>
      'હું સૂચિઓ બનાવું છું, વાનગીઓ સૂચવું છું અને ક્યાં સાચવવું તે શોધું છું. આપણે ક્યાંથી શરૂઆત કરીએ?';

  @override
  String get aiWelcomeSuggestBarbecue => 'બરબેકયુની યોજના બનાવો';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'કીપી, હું બરબેકયુ હોસ્ટ કરી રહ્યો છું — શોપિંગ લિસ્ટ બનાવવામાં મને મદદ કરો';

  @override
  String get aiRateLimitError =>
      'ટૂંકા સમયમાં ઘણા બધા સંદેશા. થોડીક સેકંડ રાહ જુઓ અને ફરી પ્રયાસ કરો.';

  @override
  String get chatHistoryErrorTitle => 'આ વાર્તાલાપ લોડ કરી શકાયો નથી';

  @override
  String get chatHistoryErrorBody =>
      'અમારા તરફથી કંઈક ખોટું થયું. ફરી પ્રયાસ કરવા માટે ફરી પ્રયાસ કરો પર ટૅપ કરો.';

  @override
  String get chatHistoryOfflineTitle => 'તમે ઑફલાઇન છો';

  @override
  String get chatHistoryOfflineBody =>
      'તમારું ઇન્ટરનેટ કનેક્શન તપાસો અને ફરી પ્રયાસ કરો.';

  @override
  String get aiGeneratingResponse => 'પ્રતિસાદ જનરેટ કરી રહ્યાં છીએ...';

  @override
  String get errorUnexpected =>
      'કંઈક અણધાર્યું થયું. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get aiAssistantTooltip => 'AI સહાયક ખોલો';

  @override
  String get searchItems => 'વસ્તુઓ શોધો';

  @override
  String get onboardingHookContinue => 'પ્રારંભ કરો';

  @override
  String get onboardingHookItem1 => 'શેકેલા ચિકન';

  @override
  String get onboardingHookItem2 => 'મોઝેરેલા ચીઝ';

  @override
  String get onboardingHookItem3 => 'ચેરી ટમેટાં';

  @override
  String get checkItemTooltip => 'આઇટમ તપાસો';
}
