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
  String get navChat => 'Чат';

  @override
  String get navRecipes => 'Рецепттер';

  @override
  String get navLists => 'Тизмелер';

  @override
  String get navMealPlanner => 'Меню';

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
  String get next => 'Кийинки';

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
  String get profile => 'Профиль';

  @override
  String get exitShoppingMode => 'Соода режиминен чыгуу';

  @override
  String get exit => 'Чыгыңыз';

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
  String get scanProductTitle => 'Продукт скандоо';

  @override
  String get positionBarcodeCenter => 'Штрихкодду ортого коюңуз';

  @override
  String get product => 'Продукт';

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
  String get currency => 'Валюта';

  @override
  String get chooseCurrency => 'Валюта тандаңыз';

  @override
  String get searchCurrency => 'Валюта издөө...';

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
      'Теманын түсү күчүнө кириши үчүн динамикалык түстөрдү өчүрүңүз';

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
  String get myAchievements => 'Менин жетишкендиктерим';

  @override
  String get itemsPurchased => 'Сатып алынган буюмдар';

  @override
  String get totalSavings => 'Жалпы үнөмдөө';

  @override
  String get currentStreak => 'Учурдагы Streak';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн',
      one: '$count күн',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Кулпусу ачылган бейджиктер';

  @override
  String get badgeBeginner => 'Beginner';

  @override
  String get badgeOrganized => 'Уюшкан';

  @override
  String get badgeSavingMaster => 'Устатты сактоо';

  @override
  String get badgeSuperPlanner => 'Супер пландоочу';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased ичинен $total нерсе';
  }

  @override
  String progressBudget(String amount) {
    return 'Бюджет: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Бардыгы: $amount';
  }

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
  String get newChat => 'Жаңы чат';

  @override
  String get noHistory => 'Маектин таржымалы жок';

  @override
  String get deleteSession => 'Чатты жок кылуу';

  @override
  String get deleteSessionConfirm =>
      'Бул чатты чын эле жок кылгыңыз келеби? Билдирүүлөр биротоло жоголот.';

  @override
  String get clearHistory => 'Тарыхты тазалоо';

  @override
  String get clearHistoryConfirm =>
      'Бул сессиядагы бардык билдирүүлөрдү тазалоо?';

  @override
  String get chatHint => 'Билдирүүңүздү жазыңыз...';

  @override
  String get chatHintBlocked => 'Маектешүү үчүн AI кулпусун ачыңыз';

  @override
  String chatError(String error) {
    return 'Чатты жүктөөдө ката: $error';
  }

  @override
  String get aiAssistantTitle => 'AI жардамчысы';

  @override
  String get closeSheet => 'Жабуу';

  @override
  String get scanBarcodeTitle => 'Штрихкодду сканерлеңиз';

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
  String get aiLimitAlmostReached => 'AI билдирүүлөрү дээрлик жок';

  @override
  String get unlockAi => 'Чексиз AI кулпусун ачыңыз';

  @override
  String get aiTeaserFallback =>
      'Толук жоопту ачуу жана сатып алууларыңыз үчүн чексиз AI кеңештерин алуу үчүн Premium кызматына жазылыңыз...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI аракеттери ушул айда калды — чексиз жаңыртуу';
  }

  @override
  String get aiUsageExhausted =>
      'Ай сайын AI чегине жетти. Чексиз → үчүн Pro жаңыртыңыз';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Premium функцияларын\nачуу үчүн кириңиз';

  @override
  String get signInGoogle => 'Google менен кирүү';

  @override
  String get signInApple => 'Apple менен кирүү';

  @override
  String get continueAsGuest => 'Мейман катары улантуу';

  @override
  String get onboardingWelcomeTitle => 'KipiList кош келиңиз';

  @override
  String get onboardingWelcomeDesc =>
      'Сатып алууларды уюштуруунун жана акчаны үнөмдөөнүн эң акылдуу жолу.';

  @override
  String get onboardingSetupTitle => 'Тажрыйбаңызды жекелештириңиз';

  @override
  String get onboardingSetupDesc =>
      'KipiList кандай болушун жана сиз үчүн иштешин кааласаңыз, тандаңыз.';

  @override
  String get onboardingLoginTitle => 'Баарын булутка сактаңыз';

  @override
  String get onboardingLoginDesc =>
      'Дайындарыңыз бардык түзмөктөрүңүздө шайкештирилди';

  @override
  String get onboardingShareTitle => 'Сүйүктүү адамдарыңыз менен бөлүшүңүз';

  @override
  String get onboardingShareDesc =>
      'реалдуу убакытта үй-бүлө жана достор менен тизмелерди синхрондоштуруу';

  @override
  String get onboardingPremiumTitle => 'Бардык функциялардын кулпусун ачыңыз';

  @override
  String get onboardingPremiumSubtitle =>
      'Соода тизмелериңизден максималдуу пайда алыңыз';

  @override
  String get onboardingAnnualBadge => 'Эң жакшы баа';

  @override
  String get onboardingMonthlyLabel => 'Ай сайын';

  @override
  String get onboardingAnnualLabel => 'Жылдык';

  @override
  String get onboardingViewAllPlans => 'Бардык пландарды көрүү';

  @override
  String get onboardingSubscribeCta => 'Жазылуу';

  @override
  String get onboardingCancelAnytime =>
      'Каалаган убакта жокко чыгарыңыз. Милдеттенме жок.';

  @override
  String get onboardingContinueAsGuest => 'Конок катары улантыңыз';

  @override
  String get onboardingRestore => 'Калыбына келтирүү';

  @override
  String get onboardingRestoreDesc =>
      'Жазылууңуз барбы? Аны калыбына келтирүү үчүн бул жерди таптаңыз.';

  @override
  String get onboardingMaybeLater => 'Балким кийинчерээк';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Эй $name, соодаңызды туура уюштуруңуз.';
  }

  @override
  String get onboardingSlide1Title => 'Акылдуу соода тизмелери';

  @override
  String get onboardingSlide1Body =>
      'Тизмелерди заматта түзүп, бөлүшүңүз. Kipi адаттарыңызга жараша элементтерди автоматтык түрдө кошот.';

  @override
  String get onboardingSlide2Title => 'Kipi менен таанышуу';

  @override
  String get onboardingSlide2Body =>
      'Баарын сураңыз — тизмелерди түзүңүз, рецепттерди табыңыз, кампаңызга көз салыңыз, жумаңызды пландаштырыңыз.';

  @override
  String get onboardingSlide3Title => 'Ашкана жана тамактанууну пландаштыруу';

  @override
  String get onboardingSlide3Body =>
      'Сизде эмне бар экенине көз салып, тамактанууну пландаштырыңыз жана соода тизмелерин автоматтык түрдө түзүңүз.';

  @override
  String get onboardingExit => 'Чыгыңыз';

  @override
  String get onboardingPersonalizationTitle => 'Келгиле таанышалы';

  @override
  String get onboardingPersonalizationDesc =>
      'Муну сунуштарыңызды жекелештирүү жана соода кылууну акылдуу кылуу үчүн колдонобуз.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Сүйүктүү тамакыңыз кайсы?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'мис. Пицца, суши, лазанья...';

  @override
  String get onboardingPersonalizationCta => 'Улантуу';

  @override
  String get onboardingPersonalizationSkip => 'Азырынча өткөрүп жибериңиз';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Улантуу үчүн сүйүктүү тамакыңызды айтыңыз';

  @override
  String get settingsDefaultScreen => 'Демейки башкы экран';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Соода тизмеси же AI чатын тандаңыз';

  @override
  String get settingsScreenList => 'Соода тизмеси';

  @override
  String get settingsScreenChat => 'AI чат';

  @override
  String loginError(String error) {
    return 'Кирүү катасы: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Сунуштарды жүктөө катасы. Кайра аракет кыл.';

  @override
  String get paywallPurchaseError =>
      'Сатып алуу аягына чыккан жок. Кайра аракет кыл.';

  @override
  String get paywallRestoreError =>
      'Калыбына келтире турган активдүү жазылуу табылган жок.';

  @override
  String paywallTrialDays(Object days) {
    return '$days КҮН АКЫСЫЗ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ЖУМА АКЫСЫЗ',
      one: '$count ЖУМА АКЫСЫЗ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count АЙЛАР АКЫСЫЗ',
      one: '$count АЙ АКЫСЫЗ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'KipiList Pro\'ну 7 күн бекер колдонуп көрүңүз';

  @override
  String get paywallTrialSubtitle =>
      'Каалаган убакта жокко чыгарыңыз. Бүгүн төлөм жок.';

  @override
  String get paywallTrialCta => 'Акысыз сыноону баштаңыз';

  @override
  String get recipeAddToList => 'Соода тизмесине кошуу';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ингредиенттер $listName кошулду';
  }

  @override
  String get noListSelected => 'Тизме тандалган жок. Биринчи тизмени ачыңыз.';

  @override
  String get paywallFeaturesTitle => 'Сизге керектүү нерселердин баары:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI тизмеңизди автоматтык түрдө уюштурат';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Керек болсо ошончо тизме түзүңүз';

  @override
  String get paywallFeatureDescSharing => 'реалдуу убакытта чогуу дүкөн';

  @override
  String get paywallFeatureDescPantry => 'Үйүңүздө эмне бар экенин байкаңыз';

  @override
  String get paywallFeatureDescBudget => 'Ай сайын бюджетте болуңуз';

  @override
  String get paywallFeatureUnlimitedLists => 'Чексиз тизмелер';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Чыгымдарды көзөмөлдөө';

  @override
  String get paywallFeatureSharing => 'Бөлүшүү';

  @override
  String get paywallBeforeAfterTitle => 'AI мурун жана кийин:';

  @override
  String get paywallLabelCommon => 'Жалпы';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'күрүч';

  @override
  String get paywallBeforeItem2 => 'самын';

  @override
  String get paywallBeforeItem3 => 'эт';

  @override
  String get paywallBeforeItem4 => 'нан';

  @override
  String get paywallAfterItem1 => 'Дан';

  @override
  String get paywallAfterItem2 => 'Тазалоо';

  @override
  String get paywallAfterItem3 => 'Эттер';

  @override
  String get paywallAfterItem4 => 'Наабайкана';

  @override
  String get paywallTestimonialsTitle => 'Биздин колдонуучулар эмне дешет:';

  @override
  String get paywallTestimonial1Name => 'Энн С.';

  @override
  String get paywallTestimonial1Text =>
      'AI менин соодамды секунданын ичинде уюштурат. Мен базарга барган сайын 20 мүнөт үнөмдөйм.';

  @override
  String get paywallTestimonial2Name => 'Чарльз М.';

  @override
  String get paywallTestimonial2Text =>
      'Мен тизмедеги бир нерсени кайра унуткан жокмун. AI чаты сенсациялуу!';

  @override
  String get paywallSocialProof => '+2400 үй-бүлө колдонот';

  @override
  String get paywallCtaUnlock => 'PRO кулпусун ачуу';

  @override
  String get paywallBestValue => 'МЫКТЫ БААЛУУ';

  @override
  String get paywallMostPopular => 'ЭҢ ПОПУЛЯР';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Коопсуз төлөм';

  @override
  String get paywallSelectPlan => 'Планыңызды тандаңыз:';

  @override
  String paywallSavePercent(Object percent) {
    return 'үнөмдөө $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Болгону $price/ай';
  }

  @override
  String get paywallPackageAnnual => 'Жылдык план';

  @override
  String get paywallPackageMonthly => 'Айлык план';

  @override
  String get paywallPackageLifetime => 'Өмүр бою мүмкүндүк алуу';

  @override
  String get paywallCancelAnytime =>
      'Каалаган убакта жокко чыгарыңыз. Милдеттенме жок.';

  @override
  String paywallTrialInCard(int days) {
    return 'Биринчи $days күн АКЫСЫЗ';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Play тарабынан корголгон · Каалаган убакта жокко чыгарыңыз';

  @override
  String get paywallPolicy => 'Купуялык саясаты';

  @override
  String get paywallTerms => 'Колдонуу шарттары';

  @override
  String get paywallRestore => 'Калыбына келтирүү';

  @override
  String get paywallHeroHeadline => 'Kipi AI ар дайым жаныңда';

  @override
  String get paywallHeroSubtitle =>
      'Чөнтөгүңүздөгү AI менен нерселерди кошуп, тизмелерди уюштуруп, убакытты үнөмдөңүз';

  @override
  String get paywallBenefit1Desc =>
      '24/7 нерселерди кошот, уюштурат жана сунуштайт';

  @override
  String get paywallBenefit2Desc => '3 тизмеге чек жок';

  @override
  String get paywallBenefit3Desc =>
      'Чыгымдарга көз салуу жана үй-бүлө тизмелери';

  @override
  String get paywallPackageMonthlyDesc => 'Толук ийкемдүүлүк';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Бекер баштоо — $days күн';
  }

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
      'Тизмени башкаруу үчүн табигый сүйлөңүз!\n\nМисалдар:\n• \'Нан, сыр жана ветчина кошуу\'\n• \'Кир жуучу порошокту алып салуу\'\n• \'Теманы көккө өзгөртүү\'\n\nБул KipiList Premiumдун өзгөчө функциясы.';

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
      'Пикириңиз кабыл алынды жана KipiList\'tu бардыгы үчүн жакшыртууга жардам берет.';

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
  String get searchInConversation => 'Сүйлөшүүдөн издөө...';

  @override
  String get noMessagesFound => 'Эч билдирүү табылган жок';

  @override
  String get suggestedQuestions => 'Сунушталган суроолор:';

  @override
  String get shoppingAssistant => 'Соода жардамчысы';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total ичинен $purchased сатылып алынган';
  }

  @override
  String get estimatedCost => 'Болжолдуу';

  @override
  String get viewItems => 'Объекттерди көрүү';

  @override
  String get noItemsInList => 'Тизмеде эч нерсе жок';

  @override
  String get longHistoryWarning =>
      'Узак тарых: жардамчы жакшыраак иштөө үчүн акыркы билдирүүлөргө басым жасайт.';

  @override
  String get listening => 'Угууда...';

  @override
  String get addDirectToList => 'Тизмеге түздөн-түз кошуу';

  @override
  String get unlockFullResponse => 'Толук жоопту ачуу';

  @override
  String get switchList => 'Тизмени которуштуруу';

  @override
  String get marketMode => 'Базар режими';

  @override
  String get backToChat => 'Чатка кайтуу';

  @override
  String get finishShopping => 'Сооданы бүтүрүү';

  @override
  String get welcomeAiAssistant => 'AI жардамчысына кош келиңиз';

  @override
  String get createListToStartAi =>
      'Акылдуу чатты колдонуу үчүн соода тизмесин түзүңүз.';

  @override
  String get howCanIHelp => 'Кантип жардам бере алам?';

  @override
  String get chatSubtitleShort =>
      'Баалар, рецепттер, уюштуруу тууралуу сураңыз...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total сатылып алынган';
  }

  @override
  String get quickReplies => 'Тез жооптор:';

  @override
  String get voiceProFeature =>
      'Өркүндөтүлгөн үн буйруктары Pro. Негизги диктант иштетилүүдө...';

  @override
  String get viewPro => 'Про көрүү';

  @override
  String get errorLoadingChat => 'Ой! Маекти жүктөөдө бир жерден ката кетти.';

  @override
  String get errorLoadingChatSubtitle =>
      'Туташууңузду текшериңиз же кийинчерээк кайра аракет кылыңыз.';

  @override
  String get errorOscillation =>
      'Бул тармактын термелүүсүнөн же убактылуу жеткиликсиздигинен улам пайда болушу мүмкүн. Сураныч, кайра аракет кылыңыз.';

  @override
  String get activeListening => 'Активдүү угуу';

  @override
  String get whatToDoWithItem => 'Бул нерсе менен эмне кылгыңыз келет?';

  @override
  String get viewDetails => 'Чоо-жайын көрүү';

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
  String get inviteToList => 'Тизмеге чакыруу';

  @override
  String get shareApp => 'Колдонмону бөлүшүү';

  @override
  String get shareAppDescription => 'Досторду KipiList колдонууга чакырыңыз';

  @override
  String shareReferralText(String url) {
    return 'Мен сатып алууларды уюштуруу үчүн KipiList колдонуп жатам! Менин шилтемем аркылуу жүктөп алыңыз жана экөөбүз тең 7 күндүк Premium акысыз алабыз: $url';
  }

  @override
  String get shareReferralSubject => '7 күн KipiList Premium алыңыз!';

  @override
  String get gestureHint =>
      'Тандоо үчүн кармап туруңуз • Алып салуу үчүн серпиңиз';

  @override
  String get catalogTitle => 'Каталог';

  @override
  String get catalogMyFrequents => 'Менин Көбүнчөлөрүм';

  @override
  String get catalogSearchGlobal => 'Каалаган продуктуну издөө...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category ичинде издөө...';
  }

  @override
  String get catalogSortPopular => 'Эң популярдуу';

  @override
  String get catalogSortAZ => 'А–З';

  @override
  String get catalogFilterNational => 'Улуттук';

  @override
  String get catalogRareSection => 'сиздин өлкөдө азыраак таралган';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 кошуу →';
  }

  @override
  String get catalogProductNotFound => 'Продукт табылган жок, атын жазыңыз';

  @override
  String get catalogBrowse => 'Каталогду карап чыгуу';

  @override
  String get offlineBanner => 'Сиз оффлайндасыз';

  @override
  String get consentTitle => 'Купуялык жана Аналитика';

  @override
  String get consentBody =>
      'KipiList тажрыйбаңызды жакшыртуу үчүн Firebase Analytics колдонот. Сиздин маалыматтар Купуялык саясатыбызга ылайык иштетилет.';

  @override
  String get consentAccept => 'Кабыл алуу';

  @override
  String get consentDecline => 'Жок, рахмат';

  @override
  String get mealPlannerPantryAllAvailable => 'Запаста';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count жетишпеген нерсе',
      one: '$count жок нерсе',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Жарамдык датасы';

  @override
  String get notInformed => 'Маалымат эмес';

  @override
  String get skip => 'Өткөрүп жибер';

  @override
  String get onboardingAiTitle => 'Kipi менен баарлашуу';

  @override
  String get onboardingAiGreeting =>
      'Салам! Мен Kipi, сиздин жеке соода жардамчысымын! 🛒';

  @override
  String get onboardingAiAskName => 'Атың ким?';

  @override
  String get onboardingAiNameHint => 'Атыңызды жазыңыз...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Сиз менен таанышканыма кубанычтамын, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Сүйүктүү тамакыңыз кайсы?';

  @override
  String get onboardingAiFoodHint => 'мис. Пицца, суши...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Мыкты тандоолор! Бул жерде мен сиздин тизмеңизге кошмокмун:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Бул жакшы көрүнөбү? Башка нерсени терип көрүңүз!';

  @override
  String get onboardingAiReady =>
      'Абдан жакшы! Сиз баштоого даярсыз. Каттоо эсебиңизди орнотобуз!';

  @override
  String get onboardingAiContinue => 'Улантуу →';

  @override
  String get connectionError => 'Туташуу катасы';

  @override
  String connectionErrorDesc(String error) {
    return 'Ката: $error';
  }

  @override
  String get errorLoadingLists => 'Тизмелерди жүктөө катасы';

  @override
  String get noListsFound => 'Тизмелер табылган жок';

  @override
  String get backToToday => 'Бүгүнгө кайтуу';

  @override
  String get quickSuggestions => 'Ыкчам сунуштар';

  @override
  String get aiEnergyLow => 'Төмөн AI энергиясы';

  @override
  String get aiUnlockUnlimited => 'Чексиз AI кулпусун ачыңыз';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 бүгүн';
  }

  @override
  String get aiSubscribeUnlimited => 'Чексиз AI үчүн жазылыңыз';

  @override
  String get unlockWithAd => 'Жарнама менен кулпусун ачыңыз';

  @override
  String get conversationHistoryTitle => 'Сүйлөшүү тарыхы';

  @override
  String get noConversationsFound => 'Сүйлөшүү табылган жок';

  @override
  String get errorLoadingHistory => 'Таржымал жүктөө катасы';

  @override
  String get deleteConversationTitle => 'Сүйлөшүүнү жок кылуу';

  @override
  String get deleteConversationConfirm =>
      'Бул аракетти артка кайтаруу мүмкүн эмес.';

  @override
  String get deleteConversation => 'Жок кылуу';

  @override
  String get subscription => 'Жазылуу';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle => 'Premium кулпусун ачуу';

  @override
  String get loadingSubscription => 'Жазылуу жүктөлүүдө...';

  @override
  String get errorLoadingSubscription => 'Жазылууну жүктөө катасы';

  @override
  String get profileSection => 'Профиль';

  @override
  String get myProfile => 'Менин профилим';

  @override
  String get profileSubtitle => 'Профилиңиздин маалыматы';

  @override
  String get customizeAiAssistant => 'AI жардамчысын ыңгайлаштыруу';

  @override
  String get assistantHistory => 'Жардамчынын тарыхы';

  @override
  String get assistantHistorySubtitle => 'Сүйлөшүү таржымалыңызды көрүңүз';

  @override
  String get manageCategories => 'Категорияларды башкаруу';

  @override
  String get manageCategoriesSubtitle =>
      'Категорияларды кошуу, түзөтүү же алып салуу';

  @override
  String get customizeAssistant => 'Ыңгайлаштыруу';

  @override
  String get assistantName => 'Жардамчынын аты';

  @override
  String get chooseIcon => 'Белги тандаңыз';

  @override
  String get profileSaved => 'Профиль сакталды';

  @override
  String get errorSavingProfile => 'Профилди сактоодо ката кетти';

  @override
  String get userProfile => 'Колдонуучунун профили';

  @override
  String get profileDescription => 'Профиль сүрөттөмөсү';

  @override
  String get preferredMarket => 'Артыкчылыктуу базар';

  @override
  String get preferredMarketHint => 'Сиз көбүнчө кайдан дүкөн кыласыз?';

  @override
  String get dietaryRestrictions => 'Диеталык чектөөлөр';

  @override
  String get dietaryRestrictionsHint => 'Ар кандай диета чектөөлөр?';

  @override
  String get marketsToAvoid => 'Базарлардан качуу керек';

  @override
  String get marketsToAvoidHint => 'Дүкөндөн баш тартууну каалаган базарлар';

  @override
  String get observations => 'Байкоолор';

  @override
  String get observationsHint => 'Кошумча эскертүүлөр барбы?';

  @override
  String get saveProfile => 'Профилди сактоо';

  @override
  String get everythingReady => 'Баары даяр!';

  @override
  String get youCompletedList => 'Сиз тизмени толуктадыңыз!';

  @override
  String get selectCheaperAlternative => 'Арзаныраак альтернатива тандаңыз';

  @override
  String get suggestedItems => 'Сунушталган нерселер';

  @override
  String get swapped => 'Алмашты';

  @override
  String get swap => 'Алмашуу';

  @override
  String get chooseThemeColor => 'Теманын түсүн тандаңыз';

  @override
  String get manageCategoriesTitle => 'Категорияларды башкаруу';

  @override
  String get categoryLimitReached => 'Категориянын чегине жетти';

  @override
  String get deleteCategoryTitle => 'Категорияны жок кылуу';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\" ичиндеги нерселер \"Башкаларга\" жылдырылат.\nУлантасызбы?';
  }

  @override
  String get deleteCategory => 'Жок кылуу';

  @override
  String get newCategoryDialog => 'Жаңы категория';

  @override
  String get editCategoryDialog => 'Категорияны түзөтүү';

  @override
  String get categoryName => 'Категориянын аталышы';

  @override
  String get categoryNameHint => 'Категориянын атын киргизиңиз';

  @override
  String get categoryColorLabel => 'Түс';

  @override
  String get categoryIconLabel => 'Icon';

  @override
  String itemAddedSnack(String name) {
    return '$name кошулду';
  }

  @override
  String get kipiQuickBarHint => 'Сатып алуу үчүн эмне керек?';

  @override
  String replaceItem(String item) {
    return '$item алмаштыруу';
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
  String get onboardingHookHeadline => 'Азык-түлүктү дагы эч качан унутпаңыз';

  @override
  String get onboardingGoalSaveMoney => 'Акчаны үнөмдөө';

  @override
  String get onboardingGoalNeverForget => 'буюмдарды эч качан унутпа';

  @override
  String get onboardingGoalFaster => 'Тезирээк сатып алыңыз';

  @override
  String get onboardingGoalFamily => 'Үй-бүлөлүк сооданы уюштуруу';

  @override
  String get onboardingGoalRecipes => 'Рецепттерди ачыңыз';

  @override
  String get onboardingGoalPantry => 'Издөөчү кампа';

  @override
  String get onboardingCommitmentsTitle => 'Сиз үчүн эмне маанилүү?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'KipiListти жекелештирүү үчүн максаттарыңызды тандаңыз';

  @override
  String get onboardingCommitmentsCta => 'кеттик!';

  @override
  String get onboardingPersonalizationNameLabel => 'Сиздин атыңыз';

  @override
  String get onboardingPersonalizationNameHint => 'Атыңызды киргизиңиз';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'Сиз эмне үчүн дүкөн кыласыз?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Сиз кимге дүкөн кыласыз?';

  @override
  String get onboardingCategoryGrocery => 'Азык-түлүк';

  @override
  String get onboardingCategoryPharmacy => 'Аптека';

  @override
  String get onboardingCategoryRecipes => 'Рецепттер';

  @override
  String get onboardingCategoryHome => 'Үй';

  @override
  String get onboardingCategoryPet => 'Пет';

  @override
  String get onboardingGroupSolo => 'Мен эле';

  @override
  String get onboardingGroupCouple => 'Жубайлар';

  @override
  String get onboardingGroupFamily => 'Үй-бүлө';

  @override
  String get onboardingLoadingTitle => 'Тажрыйбаңыз даярдалууда...';

  @override
  String get onboardingLoadingStep1 => 'Сиздин каалоолоруңуз талданууда...';

  @override
  String get onboardingLoadingStep2 => 'AI жардамчысы орнотулууда...';

  @override
  String get onboardingLoadingStep3 => 'Дээрлик даяр...';

  @override
  String get onboardingLoadingStat1Label => 'Каталогдогон буюмдар';

  @override
  String get onboardingLoadingStat2Label => 'Колдонуучулар жардам беришти';

  @override
  String get onboardingLoadingStat3Label => 'Мүнөттөр сакталды';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, ар бир сапарда үнөмдөңүз!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, бир нерсени эч качан унутпаңыз!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, жарым убакытта соода кыл!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, үй-бүлөлүк сооданы уюштуруңуз!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, жаңы рецепттерди табыңыз!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, кампаңызды эң сонун көзөмөлдөңүз!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Ар бир сапарда үнөмдөңүз!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Эч качан бир нерсени унутпаңыз!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Жарым убакытта соода кыл!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'Үй-бүлөлүк сооданы уюштуруңуз!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Жаңы рецепттерди табыңыз!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Сиздин кампаңызды мыкты көзөмөлдөңүз!';

  @override
  String paywallPricePerDay(String price) {
    return 'Болгону $price/күнүнө — кофеден азыраак';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Азырынча өткөрүп жибериңиз';

  @override
  String get paywallTestimonial =>
      'AI менин соодамды секунданын ичинде уюштурат. Мен бир сапарга 20 мүнөт үнөмдөйм.';

  @override
  String get paywallTestimonialAuthor => 'Энн С.';

  @override
  String get paywallTrialDisclaimer =>
      'Каалаган убакта жокко чыгарыңыз · Сыноо мөөнөтү аяктаганга чейин эч кандай акы алынбайт';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Эй $name! Сизге эмне $category керек?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Сизге эмне $category керек?';
  }

  @override
  String get onboardingAiDemoYes => 'Ооба!';

  @override
  String get onboardingAiDemoReaction => 'Жакшы!';

  @override
  String get onboardingAiDemoChange => 'Нерсени өзгөртүү';

  @override
  String get onboardingAiDemoOffer => 'Башка нерсени терип көрүңүз!';

  @override
  String get onboardingAiDemoContinue => 'Улантуу';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Сатып алуу тизмеңиз, азыр AI менен';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Kipi сиздин толук тизмени секунданын ичинде кантип түзөөрүн көрүңүз';

  @override
  String get onboardingAiDemoSlideCta => 'Мен муну каалайм! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Мен барбекю уюштуруп жатам 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Даяр! Бул жерде сизге керектүү нерселердин баары бар:';

  @override
  String get onboardingAiDemoSlideDone => 'Толук тизме секунданын ичинде ✨';

  @override
  String get onboardingPainTitle => 'Сизди эң ​​көп эмне капа кылат?';

  @override
  String get onboardingPainSubtitle => 'Чынчыл болуңуз – биз ар бирин оңдойбуз';

  @override
  String get onboardingPainCta => 'Ооба, муну мен үчүн оңдоңуз →';

  @override
  String get onboardingPainForget => 'Мен дүкөндө буюмдарды унутуп калдым';

  @override
  String get onboardingPainFamily => 'Менин үй-бүлөм тизмени эч качан көрбөйт';

  @override
  String get onboardingPainOverspend => 'Мен ар дайым бюджетти ашыра аткарам';

  @override
  String get onboardingPainRepeat => 'Бир сапар эч качан жетишсиз';

  @override
  String get aiWelcomeContent =>
      'Салам! 👋 Мен **Kipi**, сиздин жеке сатып алууларыңыз жана рецепттер боюнча жардамчыңызмын!\n\nМен сизге жардам берүү үчүн келдим:\n🛒 **Сатып алууларыңызды автоматтык түрдө категориялар боюнча уюштуруңуз\n💰 **Бюджетиңизге көз салып** жана акчаңызды үнөмдөө боюнча кеңештерди бериңиз\n🍲 **Сунуш кылыңыз** даамдуу рецепттерди сизде бар нерселер менен\n\nБүгүн мен сага кантип жардам бере алам? Сиз биринчи тизмени түзүү менен баштаса болот!';

  @override
  String get aiWelcomeSuggestCreateList => 'Менин биринчи тизмемди түзүңүз';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, мага биринчи сатып алуулар тизмесин түзүүгө жардам бер';

  @override
  String get aiWelcomeSuggestSave => 'Акчаны кантип сактоо керек?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, сен мага азык-тулукке акча унемдееге кантип жардам бере аласын?';

  @override
  String get suggestionMilk => 'Сүт';

  @override
  String get suggestionBread => 'Нан';

  @override
  String get suggestionEggs => 'Жумуртка';

  @override
  String get suggestionCoffee => 'Кофе';

  @override
  String get suggestionRice => 'Күрүч';

  @override
  String get suggestionFruits => 'Жемиштер';
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
  String get navChat => 'Чат';

  @override
  String get navRecipes => 'Рецепттер';

  @override
  String get navLists => 'Тизмелер';

  @override
  String get navMealPlanner => 'Меню';

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
  String get next => 'Кийинки';

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
  String get profile => 'Профиль';

  @override
  String get exitShoppingMode => 'Соода режиминен чыгуу';

  @override
  String get exit => 'Чыгыңыз';

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
  String get scanProductTitle => 'Продукт скандоо';

  @override
  String get positionBarcodeCenter => 'Штрихкодду ортого коюңуз';

  @override
  String get product => 'Продукт';

  @override
  String get settingsAppBar => 'Жөндөөлөр';

  @override
  String get language => 'Тил';

  @override
  String get languagePortuguese => 'Português (Бразилия)';

  @override
  String get languageEnglish => 'Англисче';

  @override
  String get languageSystem => 'Тутумдук демейки';

  @override
  String get chooseLanguage => 'Тилди тандаңыз';

  @override
  String get searchLanguage => 'Тилди издөө...';

  @override
  String get currency => 'Валюта';

  @override
  String get chooseCurrency => 'Валюта тандаңыз';

  @override
  String get searchCurrency => 'Валюта издөө...';

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
  String get dynamicColorsEnabledWarning =>
      'Теманын түсү күчүнө кириши үчүн динамикалык түстөрдү өчүрүңүз';

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
  String get myAchievements => 'Менин жетишкендиктерим';

  @override
  String get itemsPurchased => 'Сатып алынган буюмдар';

  @override
  String get totalSavings => 'Жалпы үнөмдөө';

  @override
  String get currentStreak => 'Учурдагы Streak';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count күн',
      one: '$count күн',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Кулпусу ачылган бейджиктер';

  @override
  String get badgeBeginner => 'Beginner';

  @override
  String get badgeOrganized => 'Уюшкан';

  @override
  String get badgeSavingMaster => 'Устатты сактоо';

  @override
  String get badgeSuperPlanner => 'Супер пландоочу';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased ичинен $total нерсе';
  }

  @override
  String progressBudget(String amount) {
    return 'Бюджет: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Бардыгы: $amount';
  }

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
  String get newChat => 'Жаңы чат';

  @override
  String get noHistory => 'Маектин таржымалы жок';

  @override
  String get deleteSession => 'Чатты жок кылуу';

  @override
  String get deleteSessionConfirm =>
      'Бул чатты чын эле жок кылгыңыз келеби? Билдирүүлөр биротоло жоголот.';

  @override
  String get clearHistory => 'Тарыхты тазалоо';

  @override
  String get clearHistoryConfirm =>
      'Бул сессиядагы бардык билдирүүлөрдү тазалоо?';

  @override
  String get chatHint => 'Билдирүүңүздү жазыңыз...';

  @override
  String get chatHintBlocked => 'Маектешүү үчүн AI кулпусун ачыңыз';

  @override
  String chatError(String error) {
    return 'Чатты жүктөөдө ката: $error';
  }

  @override
  String get aiAssistantTitle => 'AI жардамчысы';

  @override
  String get closeSheet => 'Жабуу';

  @override
  String get scanBarcodeTitle => 'Штрихкодду сканерлеңиз';

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
  String get aiLimitAlmostReached => 'AI билдирүүлөрү дээрлик жок';

  @override
  String get unlockAi => 'Чексиз AI кулпусун ачыңыз';

  @override
  String get aiTeaserFallback =>
      'Толук жоопту ачуу жана сатып алууларыңыз үчүн чексиз AI кеңештерин алуу үчүн Premium кызматына жазылыңыз...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI аракеттери ушул айда калды — чексиз жаңыртуу';
  }

  @override
  String get aiUsageExhausted =>
      'Ай сайын AI чегине жетти. Чексиз → үчүн Pro жаңыртыңыз';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Premium өзгөчөлүктөрүн\nачуу үчүн кириңиз';

  @override
  String get signInGoogle => 'Google менен кирүү';

  @override
  String get signInApple => 'Apple менен кирүү';

  @override
  String get continueAsGuest => 'Мейман катары улантуу';

  @override
  String get onboardingWelcomeTitle => 'KipiList кош келиңиз';

  @override
  String get onboardingWelcomeDesc =>
      'Сатып алууларды уюштуруунун жана акчаны үнөмдөөнүн эң акылдуу жолу.';

  @override
  String get onboardingSetupTitle => 'Тажрыйбаңызды жекелештириңиз';

  @override
  String get onboardingSetupDesc =>
      'KipiList кандай болушун жана сиз үчүн иштешин кааласаңыз, тандаңыз.';

  @override
  String get onboardingLoginTitle => 'Баарын булутка сактаңыз';

  @override
  String get onboardingLoginDesc =>
      'Дайындарыңыз бардык түзмөктөрүңүздө шайкештирилди';

  @override
  String get onboardingShareTitle => 'Сүйүктүү адамдарыңыз менен бөлүшүңүз';

  @override
  String get onboardingShareDesc =>
      'реалдуу убакытта үй-бүлө жана достор менен тизмелерди синхрондоштуруу';

  @override
  String get onboardingPremiumTitle => 'Бардык функциялардын кулпусун ачыңыз';

  @override
  String get onboardingPremiumSubtitle =>
      'Соода тизмелериңизден максималдуу пайда алыңыз';

  @override
  String get onboardingAnnualBadge => 'Эң жакшы баа';

  @override
  String get onboardingMonthlyLabel => 'Ай сайын';

  @override
  String get onboardingAnnualLabel => 'Жылдык';

  @override
  String get onboardingViewAllPlans => 'Бардык пландарды көрүү';

  @override
  String get onboardingSubscribeCta => 'Жазылуу';

  @override
  String get onboardingCancelAnytime =>
      'Каалаган убакта жокко чыгарыңыз. Милдеттенме жок.';

  @override
  String get onboardingContinueAsGuest => 'Конок катары улантыңыз';

  @override
  String get onboardingRestore => 'Калыбына келтирүү';

  @override
  String get onboardingRestoreDesc =>
      'Жазылууңуз барбы? Аны калыбына келтирүү үчүн бул жерди таптаңыз.';

  @override
  String get onboardingMaybeLater => 'Балким кийинчерээк';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Эй $name, соодаңызды туура уюштуруңуз.';
  }

  @override
  String get onboardingSlide1Title => 'Акылдуу соода тизмелери';

  @override
  String get onboardingSlide1Body =>
      'Тизмелерди заматта түзүп, бөлүшүңүз. Kipi адаттарыңызга жараша элементтерди автоматтык түрдө кошот.';

  @override
  String get onboardingSlide2Title => 'Kipi менен таанышуу';

  @override
  String get onboardingSlide2Body =>
      'Баарын сураңыз — тизмелерди түзүңүз, рецепттерди табыңыз, кампаңызга көз салыңыз, жумаңызды пландаштырыңыз.';

  @override
  String get onboardingSlide3Title => 'Ашкана жана тамактанууну пландаштыруу';

  @override
  String get onboardingSlide3Body =>
      'Сизде эмне бар экенине көз салып, тамактанууну пландаштырыңыз жана соода тизмелерин автоматтык түрдө түзүңүз.';

  @override
  String get onboardingExit => 'Чыгыңыз';

  @override
  String get onboardingPersonalizationTitle => 'Келгиле таанышалы';

  @override
  String get onboardingPersonalizationDesc =>
      'Муну сунуштарыңызды жекелештирүү жана соода кылууну акылдуу кылуу үчүн колдонобуз.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Сүйүктүү тамакыңыз кайсы?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'мис. Пицца, суши, лазанья...';

  @override
  String get onboardingPersonalizationCta => 'Улантуу';

  @override
  String get onboardingPersonalizationSkip => 'Азырынча өткөрүп жибериңиз';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Улантуу үчүн сүйүктүү тамакыңызды айтыңыз';

  @override
  String get settingsDefaultScreen => 'Демейки башкы экран';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Соода тизмеси же AI чатын тандаңыз';

  @override
  String get settingsScreenList => 'Соода тизмеси';

  @override
  String get settingsScreenChat => 'AI чат';

  @override
  String loginError(String error) {
    return 'Кирүү катасы: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Сунуштарды жүктөө катасы. Кайра аракет кыл.';

  @override
  String get paywallPurchaseError =>
      'Сатып алуу аягына чыккан жок. Кайра аракет кыл.';

  @override
  String get paywallRestoreError =>
      'Калыбына келтире турган активдүү жазылуу табылган жок.';

  @override
  String paywallTrialDays(Object days) {
    return '$days КҮН АКЫСЫЗ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ЖУМА АКЫСЫЗ',
      one: '$count ЖУМА АКЫСЫЗ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count АЙЛАР АКЫСЫЗ',
      one: '$count АЙ АКЫСЫЗ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'KipiList Pro\'ну 7 күн бекер колдонуп көрүңүз';

  @override
  String get paywallTrialSubtitle =>
      'Каалаган убакта жокко чыгарыңыз. Бүгүн төлөм жок.';

  @override
  String get paywallTrialCta => 'Акысыз сыноону баштаңыз';

  @override
  String get recipeAddToList => 'Соода тизмесине кошуу';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ингредиенттер $listName кошулду';
  }

  @override
  String get noListSelected => 'Тизме тандалган жок. Биринчи тизмени ачыңыз.';

  @override
  String get paywallFeaturesTitle => 'Сизге керектүү нерселердин баары:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI тизмеңизди автоматтык түрдө уюштурат';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Керек болсо ошончо тизме түзүңүз';

  @override
  String get paywallFeatureDescSharing => 'реалдуу убакытта чогуу дүкөн';

  @override
  String get paywallFeatureDescPantry => 'Үйүңүздө эмне бар экенин байкаңыз';

  @override
  String get paywallFeatureDescBudget => 'Ай сайын бюджетте болуңуз';

  @override
  String get paywallFeatureUnlimitedLists => 'Чексиз тизмелер';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Чыгымдарды көзөмөлдөө';

  @override
  String get paywallFeatureSharing => 'Бөлүшүү';

  @override
  String get paywallBeforeAfterTitle => 'AI мурун жана кийин:';

  @override
  String get paywallLabelCommon => 'Жалпы';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'күрүч';

  @override
  String get paywallBeforeItem2 => 'самын';

  @override
  String get paywallBeforeItem3 => 'эт';

  @override
  String get paywallBeforeItem4 => 'нан';

  @override
  String get paywallAfterItem1 => 'Дан';

  @override
  String get paywallAfterItem2 => 'Тазалоо';

  @override
  String get paywallAfterItem3 => 'Эттер';

  @override
  String get paywallAfterItem4 => 'Наабайкана';

  @override
  String get paywallTestimonialsTitle => 'Биздин колдонуучулар эмне дешет:';

  @override
  String get paywallTestimonial1Name => 'Энн С.';

  @override
  String get paywallTestimonial1Text =>
      'AI менин соодамды секунданын ичинде уюштурат. Мен базарга барган сайын 20 мүнөт үнөмдөйм.';

  @override
  String get paywallTestimonial2Name => 'Чарльз М.';

  @override
  String get paywallTestimonial2Text =>
      'Мен тизмедеги бир нерсени кайра унуткан жокмун. AI чаты сенсациялуу!';

  @override
  String get paywallSocialProof => '+2400 үй-бүлө колдонот';

  @override
  String get paywallCtaUnlock => 'PRO кулпусун ачуу';

  @override
  String get paywallBestValue => 'МЫКТЫ БААЛУУ';

  @override
  String get paywallMostPopular => 'ЭҢ ПОПУЛЯР';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Коопсуз төлөм';

  @override
  String get paywallSelectPlan => 'Планыңызды тандаңыз:';

  @override
  String paywallSavePercent(Object percent) {
    return 'үнөмдөө $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Болгону $price/ай';
  }

  @override
  String get paywallPackageAnnual => 'Жылдык план';

  @override
  String get paywallPackageMonthly => 'Айлык план';

  @override
  String get paywallPackageLifetime => 'Өмүр бою мүмкүндүк алуу';

  @override
  String get paywallCancelAnytime =>
      'Каалаган убакта жокко чыгарыңыз. Милдеттенме жок.';

  @override
  String paywallTrialInCard(int days) {
    return 'Биринчи $days күн АКЫСЫЗ';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Play тарабынан корголгон · Каалаган убакта жокко чыгарыңыз';

  @override
  String get paywallPolicy => 'Купуялык саясаты';

  @override
  String get paywallTerms => 'Колдонуу шарттары';

  @override
  String get paywallRestore => 'Калыбына келтирүү';

  @override
  String get paywallHeroHeadline => 'Kipi AI ар дайым жаныңда';

  @override
  String get paywallHeroSubtitle =>
      'Чөнтөгүңүздөгү AI менен нерселерди кошуп, тизмелерди уюштуруп, убакытты үнөмдөңүз';

  @override
  String get paywallBenefit1Desc =>
      '24/7 нерселерди кошот, уюштурат жана сунуштайт';

  @override
  String get paywallBenefit2Desc => '3 тизмеге чек жок';

  @override
  String get paywallBenefit3Desc =>
      'Чыгымдарга көз салуу жана үй-бүлө тизмелери';

  @override
  String get paywallPackageMonthlyDesc => 'Толук ийкемдүүлүк';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Бекер баштоо — $days күн';
  }

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
      'Тизмеңизди башкаруу үчүн табигый сүйлөңүз!\n\nМисалдар:\n• \'Нан, сыр жана ветчина кошуу\'\n• \'Кир жуучу порошокту алып салуу\'\n• \'Теманы көккө өзгөртүү\'\n\nБул KipiList Premiumдун өзгөчө өзгөчөлүгү.';

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
      'Пикириңиз кабыл алынды жана KipiList\'ту бардыгы үчүн жакшыртууга жардам берет.';

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
  String get searchInConversation => 'Сүйлөшүүдөн издөө...';

  @override
  String get noMessagesFound => 'Эч билдирүү табылган жок';

  @override
  String get suggestedQuestions => 'Сунушталган суроолор:';

  @override
  String get shoppingAssistant => 'Соода жардамчысы';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total ичинен $purchased сатылып алынган';
  }

  @override
  String get estimatedCost => 'Болжолдуу';

  @override
  String get viewItems => 'Объекттерди көрүү';

  @override
  String get noItemsInList => 'Тизмеде эч нерсе жок';

  @override
  String get longHistoryWarning =>
      'Узак тарых: жардамчы жакшыраак иштөө үчүн акыркы билдирүүлөргө басым жасайт.';

  @override
  String get listening => 'Угууда...';

  @override
  String get addDirectToList => 'Тизмеге түздөн-түз кошуу';

  @override
  String get unlockFullResponse => 'Толук жоопту ачуу';

  @override
  String get switchList => 'Тизмени которуштуруу';

  @override
  String get marketMode => 'Базар режими';

  @override
  String get backToChat => 'Чатка кайтуу';

  @override
  String get finishShopping => 'Сооданы бүтүрүү';

  @override
  String get welcomeAiAssistant => 'AI жардамчысына кош келиңиз';

  @override
  String get createListToStartAi =>
      'Акылдуу чатты колдонуу үчүн соода тизмесин түзүңүз.';

  @override
  String get howCanIHelp => 'Кантип жардам бере алам?';

  @override
  String get chatSubtitleShort =>
      'Баалар, рецепттер, уюштуруу тууралуу сураңыз...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total сатылып алынган';
  }

  @override
  String get quickReplies => 'Тез жооптор:';

  @override
  String get voiceProFeature =>
      'Өркүндөтүлгөн үн буйруктары Pro. Негизги диктант иштетилүүдө...';

  @override
  String get viewPro => 'Про көрүү';

  @override
  String get errorLoadingChat => 'Ой! Маекти жүктөөдө бир жерден ката кетти.';

  @override
  String get errorLoadingChatSubtitle =>
      'Туташууңузду текшериңиз же кийинчерээк кайра аракет кылыңыз.';

  @override
  String get errorOscillation =>
      'Бул тармактын термелүүсүнөн же убактылуу жеткиликсиздигинен улам пайда болушу мүмкүн. Сураныч, кайра аракет кылыңыз.';

  @override
  String get activeListening => 'Активдүү угуу';

  @override
  String get whatToDoWithItem => 'Бул нерсе менен эмне кылгыңыз келет?';

  @override
  String get viewDetails => 'Чоо-жайын көрүү';

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

  @override
  String get inviteToList => 'Тизмеге чакыруу';

  @override
  String get shareApp => 'Колдонмону бөлүшүү';

  @override
  String get shareAppDescription => 'Досторду KipiList колдонууга чакырыңыз';

  @override
  String shareReferralText(String url) {
    return 'Мен сатып алууларды уюштуруу үчүн KipiList колдонуп жатам! Менин шилтемем аркылуу жүктөп алыңыз жана экөөбүз тең 7 күндүк Premium акысыз алабыз: $url';
  }

  @override
  String get shareReferralSubject => '7 күн KipiList Premium алыңыз!';

  @override
  String get gestureHint =>
      'Тандоо үчүн кармап туруңуз • Алып салуу үчүн серпиңиз';

  @override
  String get catalogTitle => 'Каталог';

  @override
  String get catalogMyFrequents => 'Менин Көбүнчөлөрүм';

  @override
  String get catalogSearchGlobal => 'Каалаган продуктуну издөө...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category ичинде издөө...';
  }

  @override
  String get catalogSortPopular => 'Эң популярдуу';

  @override
  String get catalogSortAZ => 'А–З';

  @override
  String get catalogFilterNational => 'Улуттук';

  @override
  String get catalogRareSection => 'сиздин өлкөдө азыраак таралган';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 кошуу →';
  }

  @override
  String get catalogProductNotFound => 'Продукт табылган жок, атын жазыңыз';

  @override
  String get catalogBrowse => 'Каталогду карап чыгуу';

  @override
  String get offlineBanner => 'Сиз оффлайндасыз';

  @override
  String get consentTitle => 'Купуялык жана Аналитика';

  @override
  String get consentBody =>
      'KipiList тажрыйбаңызды жакшыртуу үчүн Firebase Analytics колдонот. Сиздин маалыматтар Купуялык саясатыбызга ылайык иштетилет.';

  @override
  String get consentAccept => 'Кабыл алуу';

  @override
  String get consentDecline => 'Жок, рахмат';

  @override
  String get mealPlannerPantryAllAvailable => 'Запаста';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count жетишпеген нерсе',
      one: '$count жок нерсе',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Жарамдык датасы';

  @override
  String get notInformed => 'Маалымат эмес';

  @override
  String get skip => 'Өткөрүп жибер';

  @override
  String get onboardingAiTitle => 'Kipi менен баарлашуу';

  @override
  String get onboardingAiGreeting =>
      'Салам! Мен Kipi, сиздин жеке соода жардамчысымын! 🛒';

  @override
  String get onboardingAiAskName => 'Атың ким?';

  @override
  String get onboardingAiNameHint => 'Атыңызды жазыңыз...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Сиз менен таанышканыма кубанычтамын, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Сүйүктүү тамакыңыз кайсы?';

  @override
  String get onboardingAiFoodHint => 'мис. Пицца, суши...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Мыкты тандоолор! Бул жерде мен сиздин тизмеңизге кошмокмун:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Бул жакшы көрүнөбү? Башка нерсени терип көрүңүз!';

  @override
  String get onboardingAiReady =>
      'Абдан жакшы! Сиз баштоого даярсыз. Каттоо эсебиңизди орнотобуз!';

  @override
  String get onboardingAiContinue => 'Улантуу →';

  @override
  String get connectionError => 'Туташуу катасы';

  @override
  String connectionErrorDesc(String error) {
    return 'Ката: $error';
  }

  @override
  String get errorLoadingLists => 'Тизмелерди жүктөө катасы';

  @override
  String get noListsFound => 'Тизмелер табылган жок';

  @override
  String get backToToday => 'Бүгүнгө кайтуу';

  @override
  String get quickSuggestions => 'Ыкчам сунуштар';

  @override
  String get aiEnergyLow => 'Төмөн AI энергиясы';

  @override
  String get aiUnlockUnlimited => 'Чексиз AI кулпусун ачыңыз';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 бүгүн';
  }

  @override
  String get aiSubscribeUnlimited => 'Чексиз AI үчүн жазылыңыз';

  @override
  String get unlockWithAd => 'Жарнама менен кулпусун ачыңыз';

  @override
  String get conversationHistoryTitle => 'Сүйлөшүү тарыхы';

  @override
  String get noConversationsFound => 'Сүйлөшүү табылган жок';

  @override
  String get errorLoadingHistory => 'Таржымал жүктөө катасы';

  @override
  String get deleteConversationTitle => 'Сүйлөшүүнү жок кылуу';

  @override
  String get deleteConversationConfirm =>
      'Бул аракетти артка кайтаруу мүмкүн эмес.';

  @override
  String get deleteConversation => 'Жок кылуу';

  @override
  String get subscription => 'Жазылуу';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle => 'Premium кулпусун ачуу';

  @override
  String get loadingSubscription => 'Жазылуу жүктөлүүдө...';

  @override
  String get errorLoadingSubscription => 'Жазылууну жүктөө катасы';

  @override
  String get profileSection => 'Профиль';

  @override
  String get myProfile => 'Менин профилим';

  @override
  String get profileSubtitle => 'Профилиңиздин маалыматы';

  @override
  String get customizeAiAssistant => 'AI жардамчысын ыңгайлаштыруу';

  @override
  String get assistantHistory => 'Жардамчынын тарыхы';

  @override
  String get assistantHistorySubtitle => 'Сүйлөшүү таржымалыңызды көрүңүз';

  @override
  String get manageCategories => 'Категорияларды башкаруу';

  @override
  String get manageCategoriesSubtitle =>
      'Категорияларды кошуу, түзөтүү же алып салуу';

  @override
  String get customizeAssistant => 'Ыңгайлаштыруу';

  @override
  String get assistantName => 'Жардамчынын аты';

  @override
  String get chooseIcon => 'Белги тандаңыз';

  @override
  String get profileSaved => 'Профиль сакталды';

  @override
  String get errorSavingProfile => 'Профилди сактоодо ката кетти';

  @override
  String get userProfile => 'Колдонуучунун профили';

  @override
  String get profileDescription => 'Профиль сүрөттөмөсү';

  @override
  String get preferredMarket => 'Артыкчылыктуу базар';

  @override
  String get preferredMarketHint => 'Сиз көбүнчө кайдан дүкөн кыласыз?';

  @override
  String get dietaryRestrictions => 'Диеталык чектөөлөр';

  @override
  String get dietaryRestrictionsHint => 'Ар кандай диета чектөөлөр?';

  @override
  String get marketsToAvoid => 'Базарлардан качуу керек';

  @override
  String get marketsToAvoidHint => 'Дүкөндөн баш тартууну каалаган базарлар';

  @override
  String get observations => 'Байкоолор';

  @override
  String get observationsHint => 'Кошумча эскертүүлөр барбы?';

  @override
  String get saveProfile => 'Профилди сактоо';

  @override
  String get everythingReady => 'Баары даяр!';

  @override
  String get youCompletedList => 'Сиз тизмени толуктадыңыз!';

  @override
  String get selectCheaperAlternative => 'Арзаныраак альтернатива тандаңыз';

  @override
  String get suggestedItems => 'Сунушталган нерселер';

  @override
  String get swapped => 'Алмашты';

  @override
  String get swap => 'Алмашуу';

  @override
  String get chooseThemeColor => 'Теманын түсүн тандаңыз';

  @override
  String get manageCategoriesTitle => 'Категорияларды башкаруу';

  @override
  String get categoryLimitReached => 'Категориянын чегине жетти';

  @override
  String get deleteCategoryTitle => 'Категорияны жок кылуу';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\" ичиндеги нерселер \"Башкаларга\" жылдырылат.\nУлантасызбы?';
  }

  @override
  String get deleteCategory => 'Жок кылуу';

  @override
  String get newCategoryDialog => 'Жаңы категория';

  @override
  String get editCategoryDialog => 'Категорияны түзөтүү';

  @override
  String get categoryName => 'Категориянын аталышы';

  @override
  String get categoryNameHint => 'Категориянын атын киргизиңиз';

  @override
  String get categoryColorLabel => 'Түс';

  @override
  String get categoryIconLabel => 'Icon';

  @override
  String itemAddedSnack(String name) {
    return '$name кошулду';
  }

  @override
  String get kipiQuickBarHint => 'Сатып алуу үчүн эмне керек?';

  @override
  String replaceItem(String item) {
    return '$item алмаштыруу';
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
  String get onboardingHookHeadline => 'Азык-түлүктү дагы эч качан унутпаңыз';

  @override
  String get onboardingGoalSaveMoney => 'Акчаны үнөмдөө';

  @override
  String get onboardingGoalNeverForget => 'буюмдарды эч качан унутпа';

  @override
  String get onboardingGoalFaster => 'Тезирээк сатып алыңыз';

  @override
  String get onboardingGoalFamily => 'Үй-бүлөлүк сооданы уюштуруу';

  @override
  String get onboardingGoalRecipes => 'Рецепттерди ачыңыз';

  @override
  String get onboardingGoalPantry => 'Издөөчү кампа';

  @override
  String get onboardingCommitmentsTitle => 'Сиз үчүн эмне маанилүү?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'KipiListти жекелештирүү үчүн максаттарыңызды тандаңыз';

  @override
  String get onboardingCommitmentsCta => 'кеттик!';

  @override
  String get onboardingPersonalizationNameLabel => 'Сиздин атыңыз';

  @override
  String get onboardingPersonalizationNameHint => 'Атыңызды киргизиңиз';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'Сиз эмне үчүн дүкөн кыласыз?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Сиз кимге дүкөн кыласыз?';

  @override
  String get onboardingCategoryGrocery => 'Азык-түлүк';

  @override
  String get onboardingCategoryPharmacy => 'Аптека';

  @override
  String get onboardingCategoryRecipes => 'Рецепттер';

  @override
  String get onboardingCategoryHome => 'Үй';

  @override
  String get onboardingCategoryPet => 'Пет';

  @override
  String get onboardingGroupSolo => 'Мен эле';

  @override
  String get onboardingGroupCouple => 'Жубайлар';

  @override
  String get onboardingGroupFamily => 'Үй-бүлө';

  @override
  String get onboardingLoadingTitle => 'Тажрыйбаңыз даярдалууда...';

  @override
  String get onboardingLoadingStep1 => 'Сиздин каалоолоруңуз талданууда...';

  @override
  String get onboardingLoadingStep2 => 'AI жардамчысы орнотулууда...';

  @override
  String get onboardingLoadingStep3 => 'Дээрлик даяр...';

  @override
  String get onboardingLoadingStat1Label => 'Каталогдогон буюмдар';

  @override
  String get onboardingLoadingStat2Label => 'Колдонуучулар жардам беришти';

  @override
  String get onboardingLoadingStat3Label => 'Мүнөттөр сакталды';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, ар бир сапарда үнөмдөңүз!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, бир нерсени эч качан унутпаңыз!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, жарым убакытта соода кыл!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, үй-бүлөлүк сооданы уюштуруңуз!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, жаңы рецепттерди табыңыз!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, кампаңызды эң сонун көзөмөлдөңүз!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Ар бир сапарда үнөмдөңүз!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Эч качан бир нерсени унутпаңыз!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Жарым убакытта соода кыл!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'Үй-бүлөлүк сооданы уюштуруңуз!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Жаңы рецепттерди табыңыз!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Сиздин кампаңызды мыкты көзөмөлдөңүз!';

  @override
  String paywallPricePerDay(String price) {
    return 'Болгону $price/күнүнө — кофеден азыраак';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Азырынча өткөрүп жибериңиз';

  @override
  String get paywallTestimonial =>
      'AI менин соодамды секунданын ичинде уюштурат. Мен бир сапарга 20 мүнөт үнөмдөйм.';

  @override
  String get paywallTestimonialAuthor => 'Энн С.';

  @override
  String get paywallTrialDisclaimer =>
      'Каалаган убакта жокко чыгарыңыз · Сыноо мөөнөтү аяктаганга чейин эч кандай акы алынбайт';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Эй $name! Сизге эмне $category керек?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Сизге эмне $category керек?';
  }

  @override
  String get onboardingAiDemoYes => 'Ооба!';

  @override
  String get onboardingAiDemoReaction => 'Жакшы!';

  @override
  String get onboardingAiDemoChange => 'Нерсени өзгөртүү';

  @override
  String get onboardingAiDemoOffer => 'Башка нерсени терип көрүңүз!';

  @override
  String get onboardingAiDemoContinue => 'Улантуу';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Сатып алуу тизмеңиз, азыр AI менен';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Kipi сиздин толук тизмени секунданын ичинде кантип түзөөрүн көрүңүз';

  @override
  String get onboardingAiDemoSlideCta => 'Мен муну каалайм! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Мен барбекю уюштуруп жатам 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Даяр! Бул жерде сизге керектүү нерселердин баары бар:';

  @override
  String get onboardingAiDemoSlideDone => 'Толук тизме секунданын ичинде ✨';

  @override
  String get onboardingPainTitle => 'Сизди эң ​​көп эмне капа кылат?';

  @override
  String get onboardingPainSubtitle => 'Чынчыл болуңуз – биз ар бирин оңдойбуз';

  @override
  String get onboardingPainCta => 'Ооба, муну мен үчүн оңдоңуз →';

  @override
  String get onboardingPainForget => 'Мен дүкөндө буюмдарды унутуп калдым';

  @override
  String get onboardingPainFamily => 'Менин үй-бүлөм тизмени эч качан көрбөйт';

  @override
  String get onboardingPainOverspend => 'Мен ар дайым бюджетти ашыра аткарам';

  @override
  String get onboardingPainRepeat => 'Бир сапар эч качан жетишсиз';

  @override
  String get aiWelcomeContent =>
      'Салам! 👋 Мен **Kipi**, сиздин жеке сатып алууларыңыз жана рецепттер боюнча жардамчыңызмын!\n\nМен сизге жардам берүү үчүн келдим:\n🛒 **Сатып алууларыңызды автоматтык түрдө категориялар боюнча уюштуруңуз\n💰 **Бюджетиңизге көз салып** жана акчаңызды үнөмдөө боюнча кеңештерди бериңиз\n🍲 **Сунуш кылыңыз** даамдуу рецепттерди сизде бар нерселер менен\n\nБүгүн мен сага кантип жардам бере алам? Сиз биринчи тизмени түзүү менен баштаса болот!';

  @override
  String get aiWelcomeSuggestCreateList => 'Менин биринчи тизмемди түзүңүз';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, мага биринчи сатып алуулар тизмесин түзүүгө жардам бер';

  @override
  String get aiWelcomeSuggestSave => 'Акчаны кантип сактоо керек?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, сен мага азык-тулукке акча унемдееге кантип жардам бере аласын?';

  @override
  String get suggestionMilk => 'Сүт';

  @override
  String get suggestionBread => 'Нан';

  @override
  String get suggestionEggs => 'Жумуртка';

  @override
  String get suggestionCoffee => 'Кофе';

  @override
  String get suggestionRice => 'Күрүч';

  @override
  String get suggestionFruits => 'Жемиштер';
}
