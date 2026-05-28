// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get appTitle => 'Дүкөн тизмеси';

  @override
  String get lists => 'Тизмелер';

  @override
  String get pantry => 'Кампа';

  @override
  String get cancel => 'Жокко чыгаруу';

  @override
  String get save => 'Сактоо';

  @override
  String get create => 'Түзүү';

  @override
  String get add => 'Кошуу';

  @override
  String get remove => 'Алып салуу';

  @override
  String get delete => 'Өчүрүү';

  @override
  String get edit => 'Түзөтүү';

  @override
  String get copy => 'Көчүрүү';

  @override
  String get retry => 'Кайра аракет кылуу';

  @override
  String get regenerate => 'Кайра түзүү';

  @override
  String get copiedToClipboard => 'Буферге көчүрүлдү';

  @override
  String get confirm => 'Ырастоо';

  @override
  String get close => 'Жабуу';

  @override
  String get import => 'Импорттоо';

  @override
  String get rename => 'Атын өзгөртүү';

  @override
  String get upgrade => 'Жаңыртуу';

  @override
  String get clear => 'Тазалоо';

  @override
  String error(String message) {
    return 'Ката: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Ката: $message';
  }

  @override
  String get purchaseError =>
      'Сатып алууну иштетүүдө ката кетти. Кайра аракет кылыңыз.';

  @override
  String get restoreError =>
      'Сатып алууну калыбына келтирүүдө ката кетти. Кайра аракет кылыңыз.';

  @override
  String get loading => 'Жүктөлүүдө...';

  @override
  String get fieldRequired => 'Милдеттүү талаа';

  @override
  String get addedFeedback => 'Кошулду!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count тандалды',
      one: '$count тандалды',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Болжолдуу';

  @override
  String get alreadyPurchased => 'Мурунтан сатылып алынган';

  @override
  String get clearList => 'Тизмени тазалоо';

  @override
  String get clearPurchased => 'Сатып алынгандарды тазалоо';

  @override
  String get share => 'Бөлүшүү';

  @override
  String get shareViaCode => 'Код аркылуу бөлүшүү';

  @override
  String get importViaCode => 'Код аркылуу импорттоо';

  @override
  String get listAssistant => 'Тизме жардамчысы';

  @override
  String get globalAssistant => 'Жалпы жардамчы';

  @override
  String get becomePremium => 'Premium болуу';

  @override
  String get manageSubscription => 'Жазылууну башкаруу';

  @override
  String get completePurchase => 'Сатып алууну бүтүрүү';

  @override
  String get confirmClearList => 'Бардык буюмдарды алып салуу?';

  @override
  String get shareListTitle => 'Тизмени бөлүшүү';

  @override
  String get shareThisCode => 'Ушул кодду бөлүшүү:';

  @override
  String get validForLimitedTime => 'Чектелген убакытка жарактуу';

  @override
  String get importListTitle => 'Тизмени импорттоо';

  @override
  String get enterCodeHint => 'Кодду киргизиңиз';

  @override
  String get confirmArchiveTitle => 'Сатып алууну бүтүрүү';

  @override
  String get confirmArchiveContent =>
      'Бул сатып алууну бүтүрүп, тизмени архивге салуу?';

  @override
  String get complete => 'Бүтүрүү';

  @override
  String get listArchived => 'Тизме ийгиликтүү архивге салынды!';

  @override
  String listAdded(String listName) {
    return '$listName кошулду!';
  }

  @override
  String get buy => 'Сатып алуу';

  @override
  String get unmark => 'Белгини алып салуу';

  @override
  String confirmDeleteItems(int count) {
    return '$count буюм(дар)ды алып салуу?';
  }

  @override
  String get confirmDeleteTitle => 'Ырастоо';

  @override
  String confirmContent(int count) {
    return '$count буюм(дар)ды алып салуу?';
  }

  @override
  String get archiveList => 'Тизмени архивдөө';

  @override
  String get pantryAppBar => 'Кампа';

  @override
  String get generateShoppingList => 'Дүкөн тизмесин түзүү';

  @override
  String get pantryEmpty => 'Кампа бош';

  @override
  String get pantryEmptySubtitle => 'Үйдө сактагыңыз келген буюмдарды кошуңуз';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit буюм(дар) сатып алынышы керек';
  }

  @override
  String get noItemsToBuy => 'Сатып алуучу буюмдар жок';

  @override
  String get newPantryList => 'Кампадан дүкөнгө';

  @override
  String get newListTitle => 'Жаңы дүкөн тизмеси';

  @override
  String itemsWillBeAdded(int count) {
    return '$count буюм(дар) кошулат';
  }

  @override
  String get listNameLabel => 'Тизме аты';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" тизмеси $count буюм менен түзүлдү';
  }

  @override
  String get noTracking => 'Көзөмөл жок';

  @override
  String get markAsPurchased => 'Сатып алынган деп белгилөө';

  @override
  String editPantryItem(String name) {
    return '$name түзөтүү';
  }

  @override
  String get idealQuantity => 'Идеалдуу өлчөм';

  @override
  String get currentQuantity => 'Учурдагы өлчөм';

  @override
  String get consumed => 'Керектелди';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit чейин толукталды';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" кампадан алып салуу?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name түзөтүү';
  }

  @override
  String get settingsAppBar => 'Жөндөөлөр';

  @override
  String get language => 'Тил';

  @override
  String get languagePortuguese => 'Португалча (Бразилия)';

  @override
  String get languageEnglish => 'Англисче';

  @override
  String get languageSystem => 'Системанын демейкиси';

  @override
  String get chooseLanguage => 'Тилди тандаңыз';

  @override
  String get searchLanguage => 'Тилди издөө...';

  @override
  String get appearance => 'Көрүнүш';

  @override
  String get light => 'Ачык';

  @override
  String get system => 'Система';

  @override
  String get dark => 'Караңгы';

  @override
  String get themeColor => 'Теманын түсү';

  @override
  String get dynamicColors => 'Динамикалык түстөр';

  @override
  String get dynamicColorsSubtitle =>
      'Тушкагазыңызга негизделген түстөрдү колдонуңуз';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Каржы';

  @override
  String get monthlyBudgetNav => 'Айлык бюджет';

  @override
  String get budgetSubtitle => 'Айлык чыгымдарыңызды көзөмөлдөө';

  @override
  String get data => 'Маалымат';

  @override
  String get backupNav => 'Резервдөө';

  @override
  String get backupSubtitle => 'Маалыматыңызды экспорттоо же импорттоо';

  @override
  String get about => 'Жөнүндө';

  @override
  String get version => 'Версия';

  @override
  String get privacy => 'Купуялык';

  @override
  String get termsOfUse => 'Колдонуу шарттары';

  @override
  String get backupTitle => 'Резервдөө';

  @override
  String get backupPremiumDescription =>
      'Резервдөө жана экспорттоо Premium функциясы';

  @override
  String get exportData => 'Маалыматты экспорттоо';

  @override
  String get exportDataSubtitle => 'Бардык тизмелерди JSON катары сактоо';

  @override
  String get importData => 'Маалыматты импорттоо';

  @override
  String get importDataSubtitle => 'JSON дан тизмелерди калыбына келтирүү';

  @override
  String get importJsonTitle => 'JSON импорттоо';

  @override
  String get importJsonHint => 'Резервдик JSON ды ушул жерге чаптаңыз...';

  @override
  String get backupExported => 'Резервдик көчүрмө экспорттолду!';

  @override
  String get budgetAppBar => 'Айлык бюджет';

  @override
  String get budgetPremiumLocked => 'Глобалдык айлык бюджет Premium';

  @override
  String get budgetUpgradePrompt => 'Жаңыртуу';

  @override
  String get noBudgetDefined => 'Бюджет белгиленген эмес';

  @override
  String totalEstimated(String amount) {
    return 'Жалпы болжолдуу: $amount';
  }

  @override
  String get setBudgetButton => 'Бюджетти белгилөө';

  @override
  String get budgetLists => 'Тизмелер';

  @override
  String get budgetValueLabel => 'Сумма';

  @override
  String get setBudgetTitle => 'Айлык бюджет';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Баары';

  @override
  String get filterPending => 'Күтүүдө';

  @override
  String get filterPurchased => 'Сатып алынган';

  @override
  String get sortName => 'Аты';

  @override
  String get sortCategory => 'Категория';

  @override
  String get sortDate => 'Күнү';

  @override
  String get sortManual => 'Кол менен';

  @override
  String get addItem => 'Буюм кошуу';

  @override
  String get itemName => 'Буюмдун аты';

  @override
  String get quantityShort => 'Өлч';

  @override
  String get unit => 'Бирдик';

  @override
  String get category => 'Категория';

  @override
  String get estimatedPrice => 'Болжолдуу баасы';

  @override
  String get addItemPrice => 'Болжолдуу баасы';

  @override
  String get editItem => 'Буюмду түзөтүү';

  @override
  String get quantityFull => 'Өлчөм';

  @override
  String get editItemPrice => 'Болжолдуу баасы';

  @override
  String get addToPantry => 'Кампага кошуу';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" кампага кошуу?';
  }

  @override
  String get yes => 'Ооба';

  @override
  String get productName => 'Буюмдун аты';

  @override
  String get idealQty => 'Идеалдуу өлч';

  @override
  String get currentQty => 'Учурдагы өлч';

  @override
  String get trackStock => 'Запасты көзөмөлдөө';

  @override
  String get trackStockActive => 'Дүкөн сунуштарында пайда болот';

  @override
  String get trackStockInactive => 'Дүкөн сунушун түзбөйт';

  @override
  String get createListDialog => 'Тизме түзүү';

  @override
  String get renameListDialog => 'Тизменин атын өзгөртүү';

  @override
  String get listHistory => 'Тизмелер тарыхы';

  @override
  String get myLists => 'Менин тизмелерим';

  @override
  String get viewActive => 'Активдүү көрүү';

  @override
  String get viewHistory => 'Тарыхты көрүү';

  @override
  String get noArchivedLists => 'Архивделген тизмелер жок';

  @override
  String get noActiveLists => 'Активдүү тизмелер жок';

  @override
  String completedOn(String date) {
    return '$date бүткөн';
  }

  @override
  String get sharedLabel => 'Бөлүшүлгөн';

  @override
  String get restore => 'Калыбына келтирүү';

  @override
  String get removeSharedTooltip => 'Алып салуу';

  @override
  String get deleteListTitle => 'Тизмени өчүрүү';

  @override
  String deleteListContent(String name) {
    return '\"$name\" тизмесин өчүрүүгө ишенесизби? Бардык буюмдар алып салынат.';
  }

  @override
  String get removeSharedListTitle => 'Бөлүшүлгөн тизмени алып салуу';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" тизмелериңизден алып салуу? Түпнуска тизме өзгөрүлбөйт.';
  }

  @override
  String get createNewList => 'Жаңы тизме түзүү';

  @override
  String get aiAssistant => 'AI жардамчы';

  @override
  String get aiAssistantDescription =>
      'AI жардамчыбыз менен акылдуу сунуштар, рецепттер жана жеке кеңештер алыңыз.';

  @override
  String get generalAssistant => 'Жалпы жардамчы';

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
  String get clearHistory => 'Тарыхты тазалоо';

  @override
  String get clearHistoryConfirm =>
      'Бул сессиядагы бардык билдирүүлөрдү тазалоо?';

  @override
  String get chatHint => 'Билдирүүңүздү жазыңыз...';

  @override
  String chatError(String error) {
    return 'Чатты жүктөөдө ката: $error';
  }

  @override
  String get listHelp => 'Тизменизге кантип жардам бере алам?';

  @override
  String get generalHelp => 'Бүгүн дүкөндө кантип жардам бере алам?';

  @override
  String get chatSubtitle =>
      'Буюм сунуштары, рецепттер же үнөмдөө кеңештерин сураңыз.';

  @override
  String get aiError =>
      'Кечиресиз, сурамыңызды иштетүүдө ката кетти. Байланышыңызды текшерип, кийинчерээк кайра аракет кылыңыз.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Premium функцияларын\nачуу үчүн кириңиз';

  @override
  String get signInGoogle => 'Google менен кирүү';

  @override
  String get signInApple => 'Apple менен кирүү';

  @override
  String get continueAsGuest => 'Мейман катары улантуу';

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
    return 'Кирүү катасы: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Жаңыртуу';

  @override
  String get itemRemoved => 'Буюм алып салынды';

  @override
  String get undo => 'Артка кайтаруу';

  @override
  String get emptyListTitle => 'Тизмеңиз бош';

  @override
  String get emptyListSubtitle => 'Баштоо үчүн буюмдарды кошуңуз';

  @override
  String get noListFoundTitle => 'Тизмелер табылган жок';

  @override
  String get noListFoundSubtitle => 'Баштоо үчүн биринчи тизмеңизди түзүңүз';

  @override
  String get createFirstList => 'Биринчи тизме түзүү';

  @override
  String get listBudgetTitle => 'Тизме бюджети';

  @override
  String get budgetAmountLabel => 'Бюджеттин суммасы';

  @override
  String get removeBudget => 'Алып салуу';

  @override
  String get prefUnlimitedLists => 'Чексиз тизмелер';

  @override
  String get prefSharing => 'Тизмелерди бөлүшүү';

  @override
  String get prefFullHistory => 'Толук тарых';

  @override
  String get prefExportData => 'Маалыматты экспорттоо';

  @override
  String get prefCustomThemes => 'Ыңгайлаштырылган темалар';

  @override
  String get prefMonthlyBudget => 'Глобалдык айлык бюджет';

  @override
  String get prefAIAssistant => 'Жеке AI жардамчы';

  @override
  String get prefUnlimitedPantry => 'Чексиз кампа';

  @override
  String get prefInteractiveArtifacts => 'Интерактивдүү AI Artifacts';

  @override
  String get themeGreen => 'Жашыл';

  @override
  String get themeBlue => 'Көк';

  @override
  String get themePurple => 'Кызгылт көк';

  @override
  String get themeRed => 'Кызыл';

  @override
  String get themeOrange => 'Кызгылт сары';

  @override
  String get themePink => 'Кызгылт';

  @override
  String get themeIndigo => 'Индиго';

  @override
  String get themeAmber => 'Янтарь';

  @override
  String get themeTeal => 'Көгүш жашыл';

  @override
  String get themeBrown => 'Күрөң';

  @override
  String get catFruits => 'Жемиштер';

  @override
  String get catCleaning => 'Тазалоо';

  @override
  String get catBeverages => 'Суусундуктар';

  @override
  String get catBakery => 'Нан азыктары';

  @override
  String get catOthers => 'Башкалар';

  @override
  String get unitPack => 'пакет';

  @override
  String get shareSubject => 'Дүкөн тизмеси';

  @override
  String get monthlyBudgetTitle => 'Айлык бюджет';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Тизмени өчүрүү';

  @override
  String get pantryItemRemoved => 'Буюм алып салынды';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit буюм сатып алынышы керек',
      one: '$deficit буюм сатып алынышы керек',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Себеттин жалпысы';

  @override
  String get restockLabel => 'Толуктоо';

  @override
  String get advancedFeatures => 'Өркүндөтүлгөн функциялар';

  @override
  String get selectAll => 'Баарын тандоо';

  @override
  String get deselectAll => 'Баарын тандоодон чыгаруу';

  @override
  String get monthlyBudgetAppBar => 'Айлык бюджет';

  @override
  String get budgetEditTitle => 'Айлык бюджет';

  @override
  String get budgetDashboardTitle => 'Панель';

  @override
  String get selectListForDashboard => 'Панелди көрүү үчүн тизме тандаңыз.';

  @override
  String get spendingAnalysis => 'Чыгымдарды талдоо';

  @override
  String get noItemsToAnalyze => 'Талдоо үчүн тизмеде буюмдар жок.';

  @override
  String get markItemsToSeeAnalysis =>
      'Талдоо көрүү үчүн буюмдарды сатып алынган деп белгилеңиз.';

  @override
  String get totalSpending => 'Жалпы чыгым';

  @override
  String get spendingByCategory => 'Категория боюнча чыгым';

  @override
  String get achievements => 'Жетишкендиктер';

  @override
  String get exportPdfExcel => 'PDF/Excel экспорттоо';

  @override
  String get exportPdf => 'PDF катары экспорттоо';

  @override
  String get exportExcel => 'Excel катары экспорттоо';

  @override
  String get organizingAi => 'AI МЕНЕН УЮШТУРУУ...';

  @override
  String get yesLabel => 'Ооба';

  @override
  String get noLabel => 'Жок';

  @override
  String get shareListText => 'Менин дүкөн тизмеси';

  @override
  String get emptyListAddItems => 'Тизмеңиз бош! Алгач буюмдарды кошуңуз.';

  @override
  String get listOrganizedMagic =>
      'Тизме сыйкырдуу түрдө категориялар боюнча уюштурулду!';

  @override
  String get shoppingMode => 'Дүкөн режими';

  @override
  String get smartOrganization => 'Акылдуу уюштуруу';

  @override
  String get savings => 'Үнөмдөө';

  @override
  String get shoppingModeHeader => 'ДҮКӨН РЕЖИМИ';

  @override
  String get shareAsText => 'Буюмдарды форматталган текст катары жөнөтүү';

  @override
  String get shareRealtime =>
      'Башка адамдар менен реалдуу убакытта синхрондоштуруу';

  @override
  String get quickRecipe => 'Тез рецепт';

  @override
  String get quickRecipePrompt =>
      'Менин тизмедеги буюмдар менен рецепттерди сунуштаңыз.';

  @override
  String get economyTips => 'Үнөмдөө кеңештери';

  @override
  String get economyTipsPrompt => 'Бул сатып алуудан кантип акча үнөмдөй алам?';

  @override
  String get organizeAisles => 'Текчелер боюнча уюштуруу';

  @override
  String get organizeAislesPrompt => 'Дүкөн текчелери боюнча уюштуруу.';

  @override
  String get recipeSuggestion => 'Рецепт сунушу';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining кредит калды';
  }

  @override
  String get addAllToList => 'Баарын тизмеге кошуу';

  @override
  String get organizeByAisles => 'Текчелер боюнча уюштуруу';

  @override
  String get voiceTranscriptionTooltip => 'Үн менен терим (Акысыз)';

  @override
  String get aiVoiceCommandTooltip => 'AI үн буйругу (Premium)';

  @override
  String get voiceCommandTitle => 'AI үн буйругу';

  @override
  String get voiceCommandContent =>
      'Тизмени башкаруу үчүн табигый сүйлөңүз!\n\nМисалдар:\n• \'Нан, сыр жана ветчина кошуу\'\n• \'Кир жуучу порошокту алып салуу\'\n• \'Теманы көккө өзгөртүү\'\n\nБул Lista Plus Premiumдун өзгөчө функциясы.';

  @override
  String get voiceCommandPlanBtn => 'Пландарды көрүү';

  @override
  String get itemsAddedSuccess => 'Буюмдар тизмеге ийгиликтүү кошулду!';

  @override
  String get viewList => 'Тизмени көрүү';

  @override
  String get feedbackTitle => 'Пикир жөнөтүү';

  @override
  String get feedbackPrompt => 'Эмнени бөлүшкүңүз келет?';

  @override
  String get feedbackTypeBug => 'Ката жөнүндө билдирүү';

  @override
  String get feedbackTypeBugHint => 'Бир нерсе иштебей жатат';

  @override
  String get feedbackTypeSuggestion => 'Сунуш';

  @override
  String get feedbackTypeSuggestionHint => 'Колдонмону жакшыртуу идеясы';

  @override
  String get feedbackTypeTranslation => 'Котормо маселеси';

  @override
  String get feedbackTypeTranslationHint => 'Туура эмес же ыңгайсыз котормо';

  @override
  String get feedbackTypeFeature => 'Функция суроо';

  @override
  String get feedbackTypeFeatureHint => 'Сиз көргүңүз келген функция';

  @override
  String get feedbackTypeOther => 'Башка';

  @override
  String get feedbackTypeOtherHint => 'Пикирдин башка түрү';

  @override
  String get feedbackHint => 'Пикириңизди кенен сүрөттөңүз...';

  @override
  String get feedbackSend => 'Пикир жөнөтүү';

  @override
  String get feedbackSending => 'Жөнөтүлүүдө...';

  @override
  String get feedbackThankYou => 'Рахмат!';

  @override
  String get feedbackThankYouMessage =>
      'Пикириңиз кабыл алынды жана Lista Plus\'tu бардыгы үчүн жакшыртууга жардам берет.';

  @override
  String get feedbackBack => 'Артка';

  @override
  String feedbackError(String error) {
    return 'Жөнөтүү катасы: $error';
  }

  @override
  String get feedbackRetry => 'Кайра аракет кылуу';

  @override
  String get feedbackSettingsTitle => 'Пикир жөнөтүү';

  @override
  String get feedbackSettingsSubtitle =>
      'Каталар жөнүндө билдириңиз, жакшыртууларды сунуштаңыз же котормолорду оңдоңуз';

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
  String get openMenu => 'Менюну ачуу';

  @override
  String get viewRecipe => 'Рецептти көрүү';

  @override
  String get recipeCreated => 'Рецепт түзүлдү!';

  @override
  String get editRecipe => 'Түзөтүү';

  @override
  String get deleteRecipe => 'Өчүрүү';

  @override
  String get deleteRecipeConfirm => 'Бул рецептти өчүрөсүзбү?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\" өчүрүүнү каалайсызбы? Бул аракетти артка кайтарууга болбойт.';
  }

  @override
  String get ingredients => 'Ингредиенттер';

  @override
  String get instructions => 'Нускамалар';

  @override
  String get prepTime => 'Даярдоо убактысы';

  @override
  String get recipeSaved => 'Рецепт сакталды!';

  @override
  String get noRecipesSaved => 'Рецепттер сакталган жок';

  @override
  String get noRecipesSavedHint =>
      'Төмөнкү баскычты таптап, биринчи рецептиңизди түзүңүз.';

  @override
  String get myRecipes => 'Менин рецепттерим';

  @override
  String get newRecipe => 'Жаңы рецепт';

  @override
  String get loadingRecipes => 'Рецепттериңиз жүктөлүүдө...';

  @override
  String get errorLoadingRecipes => 'Рецепттерди жүктөөдө ката кетти';

  @override
  String get addIngredient => 'Ингредиент кошуу';

  @override
  String get saveRecipe => 'Сактоо';

  @override
  String get recipeName => 'Рецепттин аты';

  @override
  String get shortDescription => 'Кыскача сүрөттөмө';

  @override
  String get prepTimeMinutes => 'Даярдоо убактысы (мүнөт)';

  @override
  String get instructionsHint => 'Ар бир сапка бирден кадам жазыңыз...';

  @override
  String get addPhoto => 'Сүрөт кошуу';

  @override
  String get imageUrlPlaceholder => 'Же сүрөттүн URL дарегин чаптаңыз';

  @override
  String get tags => 'Тегдер';

  @override
  String get recipeTags => 'Рецепт тегдери';

  @override
  String get suggestedTags => 'Сунушталган';

  @override
  String get searchRecipes => 'Рецепттерди издөө...';

  @override
  String get filterByTag => 'Тег боюнча чыпкалоо';

  @override
  String get allTags => 'Баары';

  @override
  String get recipeDeleted => 'Рецепт өчүрүлдү';

  @override
  String get saveChanges => 'Өзгөртүүлөрдү сактоо';

  @override
  String get editRecipeTitle => 'Рецептти түзөтүү';

  @override
  String get newRecipeTitle => 'Жаңы рецепт';

  @override
  String get requiredField => 'Милдеттүү';

  @override
  String get chooseImageSource => 'Сүрөт булагын тандаңыз';

  @override
  String get gallery => 'Галерея';

  @override
  String get enterUrl => 'URL киргизиңиз';

  @override
  String get recipeImage => 'Рецепттин сүрөтү';

  @override
  String get removeImage => 'Сүрөттү алып салуу';

  @override
  String get mealPlannerTitle => 'Тамактанууну пландаштыргыч';

  @override
  String get mealPlannerViewMonthly => 'Айлык көрүнүш';

  @override
  String get mealPlannerViewWeekly => 'Апталык көрүнүш';

  @override
  String get mealPlannerNoMeals => 'Тамак пландаштырылган жок';

  @override
  String get mealPlannerNoMealsHint => 'Тамак кошуу үчүн күндү таптаңыз';

  @override
  String get mealPlannerLoading => 'Тамактануу планы жүктөлүүдө...';

  @override
  String get mealPlannerError => 'Тамактануу планын жүктөөдө ката кетти';

  @override
  String get mealPlannerAddMeal => 'Тамактанууну кошуу';

  @override
  String get mealPlannerEditMeal => 'Тамакты түзөтүү';

  @override
  String get mealPlannerDeleteMeal => 'Тамакты алып салуу';

  @override
  String get mealPlannerMealDeleted => 'Тамак алып салынды';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count порция',
      one: '$count порция',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Порциялар';

  @override
  String get mealPlannerNoteLabel => 'Эскертүү (милдеттүү эмес)';

  @override
  String get mealPlannerSelectRecipe => 'Рецепт тандаңыз';

  @override
  String get mealPlannerSearchRecipes => 'Рецепттерди издөө...';

  @override
  String get mealPlannerNoRecipesFound => 'Рецепттер табылган жок';

  @override
  String get mealPlannerNoRecipesHint =>
      'Алгач Рецепттер өтмөгүндө рецепттерди түзүңүз';

  @override
  String get mealPlannerSave => 'Планга кошуу';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total тамак пландаштырылды';
  }

  @override
  String get mealPlannerGenerateList => 'Соода тизмесин түзүү';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Ушул аптадагы пландаштырылган тамактардын бардык ингредиенттерин соода тизмеңизге кошосузбу?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'Тизмеңизге $count ингредиент кошулду!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Кошо турган ингредиенттер жок. Алгач рецепттер менен тамактарды пландаштырыңыз.';

  @override
  String get mealPlannerGenerateListNoList => 'Алгач соода тизмесин түзүңүз.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Эртең мененки тамак';

  @override
  String get mealPlannerMealTypeLunch => 'Түшкү тамак';

  @override
  String get mealPlannerMealTypeDinner => 'Кечки тамак';

  @override
  String get mealPlannerMealTypeSnack => 'Жеңил тамак';

  @override
  String get mealPlannerDateLabel => 'Дата';

  @override
  String get mealPlannerWeekEmpty => 'Бул аптага эч нерсе пландаштырылган жок';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Тамактарыңызды пландаштырууну баштоо үчүн каалаган күндү таптаңыз!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes мүн';
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

/// The translations for Kirghiz Kyrgyz, as used in Kyrgyzstan (`ky_KG`).
class AppLocalizationsKyKg extends AppLocalizationsKy {
  AppLocalizationsKyKg() : super('ky_KG');

  @override
  String get appTitle => 'Соода тизмеси';

  @override
  String get lists => 'Тизмелер';

  @override
  String get pantry => 'Кампа';

  @override
  String get cancel => 'Жокко чыгаруу';

  @override
  String get save => 'Сактоо';

  @override
  String get create => 'Түзүү';

  @override
  String get add => 'Кошуу';

  @override
  String get remove => 'Алып салуу';

  @override
  String get delete => 'Өчүрүү';

  @override
  String get edit => 'Түзөтүү';

  @override
  String get copy => 'Көчүрүү';

  @override
  String get retry => 'Кайра аракет кылуу';

  @override
  String get regenerate => 'Кайра түзүү';

  @override
  String get copiedToClipboard => 'Алмашуу буферине көчүрүлдү';

  @override
  String get confirm => 'Ырастоо';

  @override
  String get close => 'Жабуу';

  @override
  String get import => 'Импорттоо';

  @override
  String get rename => 'Атын өзгөртүү';

  @override
  String get upgrade => 'Жаңыртуу';

  @override
  String get clear => 'Тазалоо';

  @override
  String error(String message) {
    return 'Ката: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Ката: $message';
  }

  @override
  String get purchaseError =>
      'Сатып алууну иштетүүдө ката кетти. Кайра аракет кылыңыз.';

  @override
  String get restoreError =>
      'Сатып алууларды калыбына келтирүүдө ката кетти. Кайра аракет кылыңыз.';

  @override
  String get loading => 'Жүктөлүүдө...';

  @override
  String get fieldRequired => 'Милдеттүү талаа';

  @override
  String get addedFeedback => 'Кошулду!';

  @override
  String selectedItems(int count) {
    return '$count тандалды';
  }

  @override
  String get estimated => 'Болжолдуу';

  @override
  String get alreadyPurchased => 'Мурда сатып алынган';

  @override
  String get clearList => 'Тизмени тазалоо';

  @override
  String get clearPurchased => 'Сатып алынгандарды тазалоо';

  @override
  String get share => 'Бөлүшүү';

  @override
  String get shareViaCode => 'Код аркылуу бөлүшүү';

  @override
  String get importViaCode => 'Код аркылуу импорттоо';

  @override
  String get listAssistant => 'Тизме жардамчысы';

  @override
  String get globalAssistant => 'Жалпы жардамчы';

  @override
  String get becomePremium => 'Premium болуу';

  @override
  String get manageSubscription => 'Жазылууну башкаруу';

  @override
  String get completePurchase => 'Сатып алууну бүтүрүү';

  @override
  String get confirmClearList => 'Бардык буюмдарды алып салуу?';

  @override
  String get shareListTitle => 'Тизмени бөлүшүү';

  @override
  String get shareThisCode => 'Ушул кодду бөлүшүңүз:';

  @override
  String get validForLimitedTime => 'Чектелүү убакытка жарактуу';

  @override
  String get importListTitle => 'Тизмени импорттоо';

  @override
  String get enterCodeHint => 'Кодду киргизиңиз';

  @override
  String get confirmArchiveTitle => 'Сатып алууну бүтүрүү';

  @override
  String get confirmArchiveContent =>
      'Бул сатып алууну бүтүрүп, тизмени архивдештурабы?';

  @override
  String get complete => 'Бүтүрүү';

  @override
  String get listArchived => 'Тизме ийгиликтүү архивделди!';

  @override
  String listAdded(String listName) {
    return '$listName кошулду!';
  }

  @override
  String get buy => 'Сатып алуу';

  @override
  String get unmark => 'Белгини алуу';

  @override
  String confirmDeleteItems(int count) {
    return '$count буюм(дар)ды алып салуу?';
  }

  @override
  String get confirmDeleteTitle => 'Ырастоо';

  @override
  String confirmContent(int count) {
    return '$count буюм(дар)ды алып салуу?';
  }

  @override
  String get archiveList => 'Тизмени архивдөө';

  @override
  String get pantryAppBar => 'Кампа';

  @override
  String get generateShoppingList => 'Соода тизмесин түзүү';

  @override
  String get pantryEmpty => 'Кампа бош';

  @override
  String get pantryEmptySubtitle => 'Үйдө сактагыңыз келген буюмдарды кошуңуз';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit буюм(дар) сатып алынышы керек';
  }

  @override
  String get noItemsToBuy => 'Сатып алуу керек буюмдар жок';

  @override
  String get newPantryList => 'Кампа соодасы';

  @override
  String get newListTitle => 'Жаңы соода тизмеси';

  @override
  String itemsWillBeAdded(int count) {
    return '$count буюм(дар) кошулат';
  }

  @override
  String get listNameLabel => 'Тизменин аты';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" тизмеси $count буюм менен түзүлдү';
  }

  @override
  String get noTracking => 'Көзөмөл жок';

  @override
  String get markAsPurchased => 'Сатып алынган деп белгилөө';

  @override
  String editPantryItem(String name) {
    return '$name түзөтүү';
  }

  @override
  String get idealQuantity => 'Идеалдуу өлчөм';

  @override
  String get currentQuantity => 'Учурдагы өлчөм';

  @override
  String get consumed => 'Керектелди';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit га чейин толукталды';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Кампадан \"$name\" алып салуу?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name түзөтүү';
  }

  @override
  String get settingsAppBar => 'Жөндөөлөр';

  @override
  String get language => 'Тил';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Тутумдук демейки';

  @override
  String get chooseLanguage => 'Тилди тандаңыз';

  @override
  String get searchLanguage => 'Тилди издөө...';

  @override
  String get appearance => 'Көрүнүш';

  @override
  String get light => 'Ачык';

  @override
  String get system => 'Тутум';

  @override
  String get dark => 'Караңгы';

  @override
  String get themeColor => 'Теманын түсү';

  @override
  String get dynamicColors => 'Динамикалык түстөр';

  @override
  String get dynamicColorsSubtitle =>
      'Тушкагазыңызга негизделген түстөрдү колдонуңуз';

  @override
  String get finance => 'Финансы';

  @override
  String get monthlyBudgetNav => 'Айлык бюджет';

  @override
  String get budgetSubtitle => 'Айлык чыгымдарыңызды көзөмөлдөө';

  @override
  String get data => 'Маалыматтар';

  @override
  String get backupNav => 'Резервдик көчүрмө';

  @override
  String get backupSubtitle => 'Маалыматтарды экспорттоо же импорттоо';

  @override
  String get about => 'Тууралуу';

  @override
  String get version => 'Версия';

  @override
  String get privacy => 'Купуялык';

  @override
  String get termsOfUse => 'Колдонуу шарттары';

  @override
  String get backupTitle => 'Резервдик көчүрмө';

  @override
  String get backupPremiumDescription =>
      'Резервдик көчүрмө жана экспорт - Premium өзгөчөлүгү';

  @override
  String get exportData => 'Маалыматтарды экспорттоо';

  @override
  String get exportDataSubtitle => 'Бардык тизмелерди JSON катары сактоо';

  @override
  String get importData => 'Маалыматтарды импорттоо';

  @override
  String get importDataSubtitle => 'JSON дан тизмелерди калыбына келтирүү';

  @override
  String get importJsonTitle => 'JSON импорттоо';

  @override
  String get importJsonHint =>
      'Резеврдик көчүрмөнүн JSON ын бул жерге чаптаңыз...';

  @override
  String get backupExported => 'Резервдик көчүрмө экспорттолду!';

  @override
  String get budgetAppBar => 'Айлык бюджет';

  @override
  String get budgetPremiumLocked => 'Жалпы айлык бюджет Premium өзгөчөлүгү';

  @override
  String get budgetUpgradePrompt => 'Ачуу үчүн жаңыртыңыз';

  @override
  String get noBudgetDefined => 'Бюджет белгиленбеген';

  @override
  String totalEstimated(String amount) {
    return 'Жалпы болжолдуу: $amount';
  }

  @override
  String get setBudgetButton => 'Бюджетти белгилөө';

  @override
  String get budgetLists => 'Тизмелер';

  @override
  String get budgetValueLabel => 'Сумма';

  @override
  String get setBudgetTitle => 'Айлык бюджет';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Баары';

  @override
  String get filterPending => 'Күтүүдө';

  @override
  String get filterPurchased => 'Сатып алынган';

  @override
  String get sortName => 'Аты';

  @override
  String get sortCategory => 'Категория';

  @override
  String get sortDate => 'Дата';

  @override
  String get sortManual => 'Кол менен';

  @override
  String get addItem => 'Буюм кошуу';

  @override
  String get itemName => 'Буюмдун аты';

  @override
  String get quantityShort => 'Саны';

  @override
  String get unit => 'Бирдик';

  @override
  String get category => 'Категория';

  @override
  String get estimatedPrice => 'Болжолдуу баасы';

  @override
  String get addItemPrice => 'Болжолдуу баасы';

  @override
  String get editItem => 'Буюмду түзөтүү';

  @override
  String get quantityFull => 'Өлчөм';

  @override
  String get editItemPrice => 'Болжолдуу баасы';

  @override
  String get addToPantry => 'Кампага кошуу';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" кампаңызга кошуу?';
  }

  @override
  String get yes => 'Ооба';

  @override
  String get productName => 'Продукт аты';

  @override
  String get idealQty => 'Идеалдуу сан';

  @override
  String get currentQty => 'Учурдагы сан';

  @override
  String get trackStock => 'Запасты көзөмөлдөө';

  @override
  String get trackStockActive => 'Соода сунуштарында көрүнөт';

  @override
  String get trackStockInactive => 'Соода сунушун түзбөйт';

  @override
  String get createListDialog => 'Тизме түзүү';

  @override
  String get renameListDialog => 'Тизменин атын өзгөртүү';

  @override
  String get listHistory => 'Тизме тарыхы';

  @override
  String get myLists => 'Менин тизмелерим';

  @override
  String get viewActive => 'Активдүүлөрдү көрүү';

  @override
  String get viewHistory => 'Тарыхты көрүү';

  @override
  String get noArchivedLists => 'Архивделген тизмелер жок';

  @override
  String get noActiveLists => 'Активдүү тизмелер жок';

  @override
  String completedOn(String date) {
    return '$date бүткөн';
  }

  @override
  String get sharedLabel => 'Бөлүшүлгөн';

  @override
  String get restore => 'Калыбына келтирүү';

  @override
  String get removeSharedTooltip => 'Алып салуу';

  @override
  String get deleteListTitle => 'Тизмени өчүрүү';

  @override
  String deleteListContent(String name) {
    return '\"$name\" өчүрүүнү каалаганыңызды тактайсызбы? Бардык буюмдар алып салынат.';
  }

  @override
  String get removeSharedListTitle => 'Бөлүшүлгөн тизмени алып салуу';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" тизмелериңизден алып салуу? Баштапкы тизме өзгөрүүсүз калат.';
  }

  @override
  String get createNewList => 'Жаңы тизме түзүү';

  @override
  String get aiAssistant => 'AI жардамчы';

  @override
  String get aiAssistantDescription =>
      'Биздин AI жардамчы менен акылдуу сунуштар, рецепттер жана жекелештирилген кеңештер алыңыз.';

  @override
  String get generalAssistant => 'Жалпы жардамчы';

  @override
  String get clearHistory => 'Тарыхты тазалоо';

  @override
  String get clearHistoryConfirm =>
      'Бул сессиядагы бардык билдирүүлөрдү тазалоо?';

  @override
  String get chatHint => 'Билдирүүңүздү жазыңыз...';

  @override
  String chatError(String error) {
    return 'Чатты жүктөөдө ката: $error';
  }

  @override
  String get listHelp => 'Тизмеңизге кантип жардам бере алам?';

  @override
  String get generalHelp => 'Бүгүн соодаңызга кантип жардам бере алам?';

  @override
  String get chatSubtitle =>
      'Буюм сунуштары, рецепттер же үнөмдөө кеңештерин сураңыз.';

  @override
  String get aiError =>
      'Кечиресиз, сурамыңызды иштетүүдө ката кетти. Байланышыңызды текшериңиз же кийин кайра аракет кылыңыз.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Premium өзгөчөлүктөрүн\nачуу үчүн кириңиз';

  @override
  String get signInGoogle => 'Google менен кирүү';

  @override
  String get signInApple => 'Apple менен кирүү';

  @override
  String get continueAsGuest => 'Мейман катары улантуу';

  @override
  String loginError(String error) {
    return 'Кирүү катасы: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Ачуу үчүн жаңыртыңыз';

  @override
  String get itemRemoved => 'Буюм алып салынды';

  @override
  String get undo => 'Жокко чыгаруу';

  @override
  String get emptyListTitle => 'Тизмеңиз бош';

  @override
  String get emptyListSubtitle => 'Баштоо үчүн буюмдарды кошуңуз';

  @override
  String get noListFoundTitle => 'Тизмелер табылган жок';

  @override
  String get noListFoundSubtitle => 'Баштоо үчүн биринчи тизмеңизди түзүңүз';

  @override
  String get createFirstList => 'Биринчи тизмеди түзүү';

  @override
  String get listBudgetTitle => 'Тизме бюджети';

  @override
  String get budgetAmountLabel => 'Бюджет суммасы';

  @override
  String get removeBudget => 'Алып салуу';

  @override
  String get prefUnlimitedLists => 'Чексиз тизмелер';

  @override
  String get prefSharing => 'Тизмелерди бөлүшүү';

  @override
  String get prefFullHistory => 'Толук тарых';

  @override
  String get prefExportData => 'Маалыматтарды экспорттоо';

  @override
  String get prefCustomThemes => 'Ыңгайлаштырылган темалар';

  @override
  String get prefMonthlyBudget => 'Жалпы айлык бюджет';

  @override
  String get prefAIAssistant => 'Жеке AI жардамчы';

  @override
  String get prefUnlimitedPantry => 'Чексиз кампа';

  @override
  String get prefInteractiveArtifacts => 'Интерактивдүү AI артефактылар';

  @override
  String get themeGreen => 'Жашыл';

  @override
  String get themeBlue => 'Көк';

  @override
  String get themePurple => 'Кызгылт көк';

  @override
  String get themeRed => 'Кызыл';

  @override
  String get themeOrange => 'Кызгылт сары';

  @override
  String get themePink => 'Кызгылт';

  @override
  String get themeIndigo => 'Индиго';

  @override
  String get themeAmber => 'Күрөң сары';

  @override
  String get themeTeal => 'Деңиз жашыл';

  @override
  String get themeBrown => 'Күрөң';

  @override
  String get catFruits => 'Жемиштер';

  @override
  String get catCleaning => 'Тазалоо';

  @override
  String get catBeverages => 'Суусундуктар';

  @override
  String get catBakery => 'Нан азыктары';

  @override
  String get catOthers => 'Башкалар';

  @override
  String get unitPack => 'пакет';

  @override
  String get shareSubject => 'Соода тизмеси';

  @override
  String get monthlyBudgetTitle => 'Айлык бюджет';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Тизмени өчүрүү';

  @override
  String get pantryItemRemoved => 'Буюм алып салынды';

  @override
  String deficitItems(int deficit) {
    return '$deficit буюм(дар) сатып алынышы керек';
  }

  @override
  String get cartTotal => 'Себет жыйынтыгы';

  @override
  String get restockLabel => 'Толуктоо';

  @override
  String get advancedFeatures => 'Өркүндөтүлгөн өзгөчөлүктөр';

  @override
  String get selectAll => 'Баарын тандоо';

  @override
  String get deselectAll => 'Баарынын тандоосун алуу';

  @override
  String get monthlyBudgetAppBar => 'Айлык бюджет';

  @override
  String get budgetEditTitle => 'Айлык бюджет';

  @override
  String get budgetDashboardTitle => 'Башкаруу тактасы';

  @override
  String get selectListForDashboard =>
      'Башкаруу тактасын көрүү үчүн тизме тандаңыз.';

  @override
  String get spendingAnalysis => 'Чыгым анализи';

  @override
  String get noItemsToAnalyze => 'Анализ кылуу үчүн тизмеде буюмдар жок.';

  @override
  String get markItemsToSeeAnalysis =>
      'Анализди көрүү үчүн буюмдарды сатып алынган деп белгилеңиз.';

  @override
  String get totalSpending => 'Жалпы чыгым';

  @override
  String get spendingByCategory => 'Категория боюнча чыгым';

  @override
  String get achievements => 'Жетишкендиктер';

  @override
  String get exportPdfExcel => 'PDF/Excel экспорттоо';

  @override
  String get exportPdf => 'PDF катары экспорттоо';

  @override
  String get exportExcel => 'Excel катары экспорттоо';

  @override
  String get organizingAi => 'AI менен уюштурулууда...';

  @override
  String get yesLabel => 'Ооба';

  @override
  String get noLabel => 'Жок';

  @override
  String get shareListText => 'Менин соода тизем';

  @override
  String get emptyListAddItems => 'Тизмеңиз бош! Алгач буюмдарды кошуңуз. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Тизме категориялар боюнча сыйкырдуу уюштурулду! ✨';

  @override
  String get shoppingMode => 'Соода режими';

  @override
  String get smartOrganization => 'Акылдуу уюштуруу';

  @override
  String get savings => 'Үнөмдөө';

  @override
  String get shoppingModeHeader => 'СООДА РЕЖИМИ';

  @override
  String get shareAsText => 'Буюмдарды форматталган текст катары жөнөтүү';

  @override
  String get shareRealtime =>
      'Башка адамдар менен реалдуу убакытта синхрондоштуруу';

  @override
  String get quickRecipe => 'Тез рецепт';

  @override
  String get quickRecipePrompt =>
      'Менин тиземдеги буюмдар менен рецепттерди сунушта.';

  @override
  String get economyTips => 'Үнөмдөө кеңештери';

  @override
  String get economyTipsPrompt => 'Бул сатып алуудан кантип акча үнөмдөй алам?';

  @override
  String get organizeAisles => 'Текчелер боюнча уюштуруу';

  @override
  String get organizeAislesPrompt => 'Дүкөн текчелери боюнча уюштуруу.';

  @override
  String get recipeSuggestion => 'Рецепт сунушу';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining кредит калды';
  }

  @override
  String get addAllToList => 'Баарын тизмеге кошуу';

  @override
  String get organizeByAisles => 'Текчелер боюнча уюштуруу';

  @override
  String get voiceTranscriptionTooltip => 'Үн менен терим (Акысыз)';

  @override
  String get aiVoiceCommandTooltip => 'AI үн буйругу (Premium)';

  @override
  String get voiceCommandTitle => 'AI үн буйругу';

  @override
  String get voiceCommandContent =>
      'Тизмеңизди башкаруу үчүн табигый сүйлөңүз!\n\nМисалдар:\n• \'Нан, сыр жана ветчина кошуу\'\n• \'Кир жуучу порошокту алып салуу\'\n• \'Теманы көккө өзгөртүү\'\n\nБул Lista Plus Premiumдун өзгөчө өзгөчөлүгү.';

  @override
  String get voiceCommandPlanBtn => 'Пландарды көрүү';

  @override
  String get itemsAddedSuccess => 'Буюмдар тизмеге ийгиликтүү кошулду!';

  @override
  String get viewList => 'Тизмени көрүү';

  @override
  String get feedbackTitle => 'Пикир жөнөтүү';

  @override
  String get feedbackPrompt => 'Эмнени бөлүшкүңүз келет?';

  @override
  String get feedbackTypeBug => 'Ката жөнүндө билдирүү';

  @override
  String get feedbackTypeBugHint => 'Бир нерсе иштебей жатат';

  @override
  String get feedbackTypeSuggestion => 'Сунуш';

  @override
  String get feedbackTypeSuggestionHint => 'Колдонмону жакшыртуу идеясы';

  @override
  String get feedbackTypeTranslation => 'Котормо маселеси';

  @override
  String get feedbackTypeTranslationHint => 'Туура эмес же ыңгайсыз котормо';

  @override
  String get feedbackTypeFeature => 'Функция суроо';

  @override
  String get feedbackTypeFeatureHint => 'Сиз көргүңүз келген функция';

  @override
  String get feedbackTypeOther => 'Башка';

  @override
  String get feedbackTypeOtherHint => 'Пикирдин башка түрү';

  @override
  String get feedbackHint => 'Пикириңизди кенен сүрөттөңүз...';

  @override
  String get feedbackSend => 'Пикир жөнөтүү';

  @override
  String get feedbackSending => 'Жөнөтүлүүдө...';

  @override
  String get feedbackThankYou => 'Рахмат!';

  @override
  String get feedbackThankYouMessage =>
      'Пикириңиз кабыл алынды жана Lista Plus\'ту бардыгы үчүн жакшыртууга жардам берет.';

  @override
  String get feedbackBack => 'Артка';

  @override
  String feedbackError(String error) {
    return 'Жөнөтүү катасы: $error';
  }

  @override
  String get feedbackRetry => 'Кайра аракет кылуу';

  @override
  String get feedbackSettingsTitle => 'Пикир жөнөтүү';

  @override
  String get feedbackSettingsSubtitle =>
      'Каталар жөнүндө билдириңиз, жакшыртууларды сунуштаңыз же котормолорду оңдоңуз';

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
  String get openMenu => 'Менюну ачуу';

  @override
  String get viewRecipe => 'Рецептти көрүү';

  @override
  String get recipeCreated => 'Рецепт түзүلدү!';

  @override
  String get editRecipe => 'Түзөтүү';

  @override
  String get deleteRecipe => 'Өчүрүү';

  @override
  String get deleteRecipeConfirm => 'Бул рецептти өчүрөсүзбү?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\" өчүрүүнү каалайсызбы? Бул аракетти артка кайтарууга болбойт.';
  }

  @override
  String get ingredients => 'Ингредиенттер';

  @override
  String get instructions => 'Нускамалар';

  @override
  String get prepTime => 'Даярдоо убактысы';

  @override
  String get recipeSaved => 'Рецепт сакталды!';

  @override
  String get noRecipesSaved => 'Рецепттер сакталган жок';

  @override
  String get noRecipesSavedHint =>
      'Төмөнкү баскычты таптап, биринчи рецептиңизди түзүңүз.';

  @override
  String get myRecipes => 'Менин рецепттерим';

  @override
  String get newRecipe => 'Жаңы рецепт';

  @override
  String get loadingRecipes => 'Рецепттериңиз жүктөлүүдө...';

  @override
  String get errorLoadingRecipes => 'Рецепттерди жүктөөдө ката кетти';

  @override
  String get addIngredient => 'Ингредиент кошуу';

  @override
  String get saveRecipe => 'Сактоо';

  @override
  String get recipeName => 'Рецепттин аты';

  @override
  String get shortDescription => 'Кыскача сүрөттөмө';

  @override
  String get prepTimeMinutes => 'Даярдоо убактысы (мүнөт)';

  @override
  String get instructionsHint => 'Ар бир сапка бирден кадам жазыңыз...';

  @override
  String get addPhoto => 'Сүрөт кошуу';

  @override
  String get imageUrlPlaceholder => 'Же сүрөттүн URL дарегин чаптаңыз';

  @override
  String get tags => 'Тегдер';

  @override
  String get recipeTags => 'Рецепт тегдери';

  @override
  String get suggestedTags => 'Сунушталган';

  @override
  String get searchRecipes => 'Рецепттерди издөө...';

  @override
  String get filterByTag => 'Тег боюнча чыпкалоо';

  @override
  String get allTags => 'Баары';

  @override
  String get recipeDeleted => 'Рецепт өчүрүлдү';

  @override
  String get saveChanges => 'Өзгөртүүлөрдү сактоо';

  @override
  String get editRecipeTitle => 'Рецептти түзөтүү';

  @override
  String get newRecipeTitle => 'Жаңы рецепт';

  @override
  String get requiredField => 'Милдеттүү';

  @override
  String get chooseImageSource => 'Сүрөт булагын тандаңыз';

  @override
  String get gallery => 'Гаเลрея';

  @override
  String get enterUrl => 'URL киргизиңиз';

  @override
  String get recipeImage => 'Рецепттин сүрөтү';

  @override
  String get removeImage => 'Сүрөттү алып салуу';

  @override
  String get mealPlannerTitle => 'Тамактанууну пландаштыргыч';

  @override
  String get mealPlannerViewMonthly => 'Айлык көрүнүш';

  @override
  String get mealPlannerViewWeekly => 'Апталык көрүнүш';

  @override
  String get mealPlannerNoMeals => 'Тамак пландаштырылган жок';

  @override
  String get mealPlannerNoMealsHint => 'Тамак кошуу үчүн күндү таптаңыз';

  @override
  String get mealPlannerLoading => 'Тамактануу планы жүктөлүүдө...';

  @override
  String get mealPlannerError => 'Тамактануу планын жүктөөдө ката кетти';

  @override
  String get mealPlannerAddMeal => 'Тамактанууну кошуу';

  @override
  String get mealPlannerEditMeal => 'Тамакты түзөтүү';

  @override
  String get mealPlannerDeleteMeal => 'Тамакты алып салуу';

  @override
  String get mealPlannerMealDeleted => 'Тамак алып салынды';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count порция',
      one: '$count порция',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Порциялар';

  @override
  String get mealPlannerNoteLabel => 'Эскертүү (милдеттүү эмес)';

  @override
  String get mealPlannerSelectRecipe => 'Рецепт тандаңыз';

  @override
  String get mealPlannerSearchRecipes => 'Рецепттерди издөө...';

  @override
  String get mealPlannerNoRecipesFound => 'Рецепттер табылган жок';

  @override
  String get mealPlannerNoRecipesHint =>
      'Алгач Рецепттер өтмөгүндө рецепттерди түзүңүз';

  @override
  String get mealPlannerSave => 'Планга кошуу';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total тамак пландаштырылды';
  }

  @override
  String get mealPlannerGenerateList => 'Соода тизмесин түзүү';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Ушул аптадагы пландаштырылган тамактардын бардык ингредиенттерин соода тизмеңизге кошосузбу?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'Тизмеңизге $count ингредиент кошулду!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Кошо турган ингредиенттер жок. Алгач рецепттер менен тамактарды пландаштырыңыз.';

  @override
  String get mealPlannerGenerateListNoList => 'Алгач соода тизмесин түзүңүз.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Эртең мененки тамак';

  @override
  String get mealPlannerMealTypeLunch => 'Түшкү тамак';

  @override
  String get mealPlannerMealTypeDinner => 'Кечки тамак';

  @override
  String get mealPlannerMealTypeSnack => 'Жеңил тамак';

  @override
  String get mealPlannerDateLabel => 'Дата';

  @override
  String get mealPlannerWeekEmpty => 'Бул аптага эч нерсе пландаштырылган жок';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Тамактарыңызды пландаштырууну баштоо үчүн каалаган күндү таптаңыз!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes мүн';
  }
}
