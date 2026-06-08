// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appTitle => 'Сатып алу тізімі';

  @override
  String get lists => 'Тізімдер';

  @override
  String get pantry => 'Азық-түлік қоры';

  @override
  String get navChat => 'Чат';

  @override
  String get navRecipes => 'Рецепттер';

  @override
  String get navLists => 'Тізімдер';

  @override
  String get navMealPlanner => 'Мәзір';

  @override
  String get cancel => 'Болдырмау';

  @override
  String get save => 'Сақтау';

  @override
  String get create => 'Жасау';

  @override
  String get add => 'Қосу';

  @override
  String get remove => 'Алып тастау';

  @override
  String get delete => 'Жою';

  @override
  String get edit => 'Өңдеу';

  @override
  String get copy => 'Көшіру';

  @override
  String get next => 'Келесі';

  @override
  String get retry => 'Қайталау';

  @override
  String get regenerate => 'Қайта жасау';

  @override
  String get copiedToClipboard => 'Алмасу буферіне көшірілді';

  @override
  String get confirm => 'Растау';

  @override
  String get close => 'Жабу';

  @override
  String get import => 'Импорттау';

  @override
  String get rename => 'Қайта атау';

  @override
  String get upgrade => 'Жаңарту';

  @override
  String get clear => 'Тазалау';

  @override
  String error(String message) {
    return 'Қате: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Қате: $message';
  }

  @override
  String get purchaseError =>
      'Сатып алуды өңдеу кезінде қате. Қайталап көріңіз.';

  @override
  String get restoreError =>
      'Сатып алуларды қалпына келтіру кезінде қате. Қайталап көріңіз.';

  @override
  String get loading => 'Жүктелуде...';

  @override
  String get fieldRequired => 'Міндетті өріс';

  @override
  String get addedFeedback => 'Қосылды!';

  @override
  String get profile => 'Профиль';

  @override
  String get exitShoppingMode => 'Сатып алу режимінен шығу';

  @override
  String get exit => 'Шығу';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count таңдалды',
      one: '$count таңдалды',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Болжалды';

  @override
  String get alreadyPurchased => 'Сатып алынған';

  @override
  String get clearList => 'Тізімді тазалау';

  @override
  String get clearPurchased => 'Сатып алынғандарды тазалау';

  @override
  String get share => 'Бөлісу';

  @override
  String get shareViaCode => 'Код арқылы бөлісу';

  @override
  String get importViaCode => 'Код арқылы импорттау';

  @override
  String get listAssistant => 'Тізім көмекшісі';

  @override
  String get globalAssistant => 'Жаһандық көмекші';

  @override
  String get becomePremium => 'Premium болу';

  @override
  String get manageSubscription => 'Жазылымды басқару';

  @override
  String get completePurchase => 'Сатып алуды аяқтау';

  @override
  String get confirmClearList => 'Барлық элементтерді алып тастау?';

  @override
  String get shareListTitle => 'Тізімді бөлісу';

  @override
  String get shareThisCode => 'Осы кодпен бөлісіңіз:';

  @override
  String get validForLimitedTime => 'Шектеулі уақытқа жарамды';

  @override
  String get importListTitle => 'Тізімді импорттау';

  @override
  String get enterCodeHint => 'Кодты енгізіңіз';

  @override
  String get confirmArchiveTitle => 'Сатып алуды аяқтау';

  @override
  String get confirmArchiveContent =>
      'Осы сатып алуды аяқтап, тізімді мұрағаттау?';

  @override
  String get complete => 'Аяқтау';

  @override
  String get listArchived => 'Тізім сәтті мұрағатталды!';

  @override
  String listAdded(String listName) {
    return '$listName қосылды!';
  }

  @override
  String get buy => 'Сатып алу';

  @override
  String get unmark => 'Белгіні алу';

  @override
  String confirmDeleteItems(int count) {
    return '$count элемент(ті) алып тастау?';
  }

  @override
  String get confirmDeleteTitle => 'Растау';

  @override
  String confirmContent(int count) {
    return '$count элемент(ті) алып тастау?';
  }

  @override
  String get archiveList => 'Тізімді мұрағаттау';

  @override
  String get pantryAppBar => 'Азық-түлік қоры';

  @override
  String get generateShoppingList => 'Сатып алу тізімін жасау';

  @override
  String get pantryEmpty => 'Бос қор';

  @override
  String get pantryEmptySubtitle => 'Үйде ұстағыңыз келетін өнімдерді қосыңыз';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit элемент(ті) сатып алу керек';
  }

  @override
  String get noItemsToBuy => 'Сатып алуды қажет ететін элементтер жоқ';

  @override
  String get newPantryList => 'Қордан сатып алу';

  @override
  String get newListTitle => 'Жаңа Сатып Алу Тізімі';

  @override
  String itemsWillBeAdded(int count) {
    return '$count элемент(тер) қосылады';
  }

  @override
  String get listNameLabel => 'Тізім атауы';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" тізімі $count элементпен жасалды';
  }

  @override
  String get noTracking => 'Бақылаусыз';

  @override
  String get markAsPurchased => 'Сатып алынған деп белгілеу';

  @override
  String editPantryItem(String name) {
    return '$name өңдеу';
  }

  @override
  String get idealQuantity => 'Идеалды мөлшер';

  @override
  String get currentQuantity => 'Ағымдағы мөлшер';

  @override
  String get consumed => 'Тұтынылған';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit дейін толтырылды';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" қордан алып тастау?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name өңдеу';
  }

  @override
  String get settingsAppBar => 'Параметрлер';

  @override
  String get language => 'Тіл';

  @override
  String get languagePortuguese => 'Português (Бразилия)';

  @override
  String get languageEnglish => 'Ағылшын';

  @override
  String get languageSystem => 'Жүйелік әдепкі';

  @override
  String get chooseLanguage => 'Тілді таңдаңыз';

  @override
  String get searchLanguage => 'Тілді іздеу...';

  @override
  String get currency => 'Валюта';

  @override
  String get chooseCurrency => 'Валюта таңдаңыз';

  @override
  String get searchCurrency => 'Валюта іздеу...';

  @override
  String get appearance => 'Көрініс';

  @override
  String get light => 'Ашық';

  @override
  String get system => 'Жүйе';

  @override
  String get dark => 'Қараңғы';

  @override
  String get themeColor => 'Тақырып түсі';

  @override
  String get dynamicColors => 'Динамикалық түстер';

  @override
  String get dynamicColorsSubtitle =>
      'Түсқағазға негізделген түстерді пайдаланыңыз';

  @override
  String get dynamicColorsEnabledWarning =>
      'Тақырып түсі күшіне енуі үшін динамикалық түстерді өшіріңіз';

  @override
  String get finance => 'Қаржы';

  @override
  String get monthlyBudgetNav => 'Айлық бюджет';

  @override
  String get budgetSubtitle => 'Айлық шығыстарыңызды бақылаңыз';

  @override
  String get data => 'Деректер';

  @override
  String get backupNav => 'Сақтық көшірме';

  @override
  String get backupSubtitle => 'Деректеріңізді экспорттау немесе импорттау';

  @override
  String get about => 'Қосымша туралы';

  @override
  String get version => 'Нұсқа';

  @override
  String get privacy => 'Құпиялылық';

  @override
  String get termsOfUse => 'Қолдану шарттары';

  @override
  String get backupTitle => 'Сақтық көшірме';

  @override
  String get backupPremiumDescription =>
      'Сақтық көшірме және экспорттау премиум мүмкіндігі';

  @override
  String get exportData => 'Деректерді экспорттау';

  @override
  String get exportDataSubtitle => 'Барлық тізімдерді JSON ретінде сақтау';

  @override
  String get importData => 'Деректерді импорттау';

  @override
  String get importDataSubtitle => 'JSON-дан тізімдерді қалпына келтіру';

  @override
  String get importJsonTitle => 'JSON импорттау';

  @override
  String get importJsonHint => 'Сақтық көшірме JSON осында қойыңыз...';

  @override
  String get backupExported => 'Сақтық көшірме экспортталды!';

  @override
  String get budgetAppBar => 'Айлық Бюджет';

  @override
  String get budgetPremiumLocked => 'Ғаламдық айлық бюджет премиум';

  @override
  String get budgetUpgradePrompt => 'Құлыптан шығару үшін жаңартыңыз';

  @override
  String get noBudgetDefined => 'Бюджет белгіленбеген';

  @override
  String totalEstimated(String amount) {
    return 'Болжалды жиынтық: $amount';
  }

  @override
  String get setBudgetButton => 'Бюджетті белгілеу';

  @override
  String get budgetLists => 'Тізімдер';

  @override
  String get budgetValueLabel => 'Сома';

  @override
  String get setBudgetTitle => 'Айлық Бюджет';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Барлығы';

  @override
  String get filterPending => 'Күтуде';

  @override
  String get filterPurchased => 'Сатып алынған';

  @override
  String get sortName => 'Аты';

  @override
  String get sortCategory => 'Санат';

  @override
  String get sortDate => 'Күні';

  @override
  String get sortManual => 'Қолмен';

  @override
  String get addItem => 'Элементті Қосу';

  @override
  String get itemName => 'Элемент атауы';

  @override
  String get quantityShort => 'Саны';

  @override
  String get unit => 'Бірлік';

  @override
  String get category => 'Санат';

  @override
  String get estimatedPrice => 'Болжалды баға';

  @override
  String get addItemPrice => 'Болжалды баға';

  @override
  String get editItem => 'Элементті Өңдеу';

  @override
  String get quantityFull => 'Саны';

  @override
  String get editItemPrice => 'Болжалды баға';

  @override
  String get addToPantry => 'Қорға Қосу';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" қорыңызға қосу?';
  }

  @override
  String get yes => 'Иә';

  @override
  String get productName => 'Өнім атауы';

  @override
  String get idealQty => 'Идеалды саны';

  @override
  String get currentQty => 'Ағымдағы саны';

  @override
  String get trackStock => 'Қорды бақылау';

  @override
  String get trackStockActive => 'Сатып алу ұсыныстарында көрсетіледі';

  @override
  String get trackStockInactive => 'Сатып алу ұсынысын жасамайды';

  @override
  String get createListDialog => 'Тізімді Жасау';

  @override
  String get renameListDialog => 'Тізімді Қайта Атау';

  @override
  String get listHistory => 'Тізімдер Тарихы';

  @override
  String get myLists => 'Менің Тізімдерім';

  @override
  String get viewActive => 'Белсенділерді Көру';

  @override
  String get viewHistory => 'Тарихты Көру';

  @override
  String get noArchivedLists => 'Мұрағатталған тізімдер жоқ';

  @override
  String get noActiveLists => 'Белсенді тізімдер жоқ';

  @override
  String completedOn(String date) {
    return '$date аяқталды';
  }

  @override
  String get sharedLabel => 'Ортақ';

  @override
  String get restore => 'Қалпына келтіру';

  @override
  String get removeSharedTooltip => 'Алып тастау';

  @override
  String get deleteListTitle => 'Тізімді жою';

  @override
  String deleteListContent(String name) {
    return '\"$name\" тізімін жойғыңыз келетініне сенімдісіз бе? Барлық элементтер жойылады.';
  }

  @override
  String get removeSharedListTitle => 'Ортақ тізімді алып тастау';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" тізімдеріңізден алып тастау? Түпнұсқа тізім өзгермейді.';
  }

  @override
  String get createNewList => 'Жаңа тізім жасау';

  @override
  String get aiAssistant => 'AI Көмекші';

  @override
  String get aiAssistantDescription =>
      'Біздің AI көмекшімізбен ақылды ұсыныстар, рецептер және жеке кеңестер алыңыз.';

  @override
  String get generalAssistant => 'Жалпы Көмекші';

  @override
  String get newChat => 'Жаңа чат';

  @override
  String get noHistory => 'Чат тарихы жоқ';

  @override
  String get deleteSession => 'Чатты жою';

  @override
  String get deleteSessionConfirm =>
      'Бұл чатты шынымен жойғыңыз келе ме? Хабарламалар біржола жоғалады.';

  @override
  String get clearHistory => 'Тарихты Тазалау';

  @override
  String get clearHistoryConfirm => 'Осы сессиядағы барлық хабарларды тазалау?';

  @override
  String get chatHint => 'Хабарламаңызды жазыңыз...';

  @override
  String get chatHintBlocked => 'Сөйлесу үшін AI құлпын ашыңыз';

  @override
  String chatError(String error) {
    return 'Чатты жүктеу қатесі: $error';
  }

  @override
  String get listHelp => 'Тізіміңізге қалай көмектесе аламын?';

  @override
  String get generalHelp => 'Бүгін сатып алуыңызға қалай көмектесе аламын?';

  @override
  String get chatSubtitle =>
      'Элемент ұсыныстарын, рецептерді немесе үнемдеу кеңестерін сұраңыз.';

  @override
  String get aiError =>
      'Кешіріңіз, сұрауыңызды өңдеу кезінде қате пайда болды. Қосылымыңызды тексеріңіз немесе кейінірек қайталап көріңіз.';

  @override
  String get aiLimitAlmostReached => 'AI хабарлары дерлік';

  @override
  String get unlockAi => 'Шексіз AI құлпын ашыңыз';

  @override
  String get aiTeaserFallback =>
      'Толық жауаптың құлпын ашу және сатып алу үшін шексіз AI кеңестерін алу үшін Premium-ге жазылыңыз...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Премиум мүмкіндіктердің\nқұлпын ашу үшін кіріңіз';

  @override
  String get signInGoogle => 'Google арқылы кіру';

  @override
  String get signInApple => 'Apple арқылы кіру';

  @override
  String get continueAsGuest => 'Қонақ ретінде жалғастыру';

  @override
  String get onboardingWelcomeTitle => 'KipiList қолданбасына қош келдіңіз';

  @override
  String get onboardingWelcomeDesc =>
      'Сатып алуды ұйымдастырудың және ақша үнемдеудің ең ақылды жолы.';

  @override
  String get onboardingSetupTitle => 'Тәжірибеңізді жекелендіріңіз';

  @override
  String get onboardingSetupDesc =>
      'KipiList қалай көрінетінін және сіз үшін жұмыс істейтінін таңдаңыз.';

  @override
  String get onboardingLoginTitle => 'Барлығын бұлтқа сақтаңыз';

  @override
  String get onboardingLoginDesc =>
      'Деректеріңіз барлық құрылғыларда синхрондалады';

  @override
  String get onboardingShareTitle => 'Сүйікті адамдарыңызбен бөлісіңіз';

  @override
  String get onboardingShareDesc =>
      'Нақты уақытта отбасымен және достарымен тізімдерді синхрондаңыз';

  @override
  String get onboardingPremiumTitle => 'Барлық мүмкіндіктердің құлпын ашыңыз';

  @override
  String get onboardingPremiumSubtitle =>
      'Сатып алу тізімдеріңізді барынша пайдаланыңыз';

  @override
  String get onboardingAnnualBadge => 'Ең жақсы мән';

  @override
  String get onboardingMonthlyLabel => 'Ай сайын';

  @override
  String get onboardingAnnualLabel => 'Жылдық';

  @override
  String get onboardingViewAllPlans => 'Барлық жоспарларды қараңыз';

  @override
  String get onboardingSubscribeCta => 'Жазылу';

  @override
  String get onboardingCancelAnytime =>
      'Кез келген уақытта бас тарту. Міндеттеме жоқ.';

  @override
  String get onboardingContinueAsGuest => 'Қонақ ретінде жалғастырыңыз';

  @override
  String get onboardingRestore => 'Қалпына келтіру';

  @override
  String get onboardingRestoreDesc =>
      'Жазылымыңыз бар ма? Оны қалпына келтіру үшін осы жерді түртіңіз.';

  @override
  String get onboardingMaybeLater => 'Maybe later';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hey $name, organize your shopping the right way.';
  }

  @override
  String get onboardingSlide1Title => 'Smart Shopping Lists';

  @override
  String get onboardingSlide1Body =>
      'Create and share lists instantly. Kipi adds items automatically based on your habits.';

  @override
  String get onboardingSlide2Title => 'Meet Kipi';

  @override
  String get onboardingSlide2Body =>
      'Ask anything — create lists, find recipes, track your pantry, plan your week.';

  @override
  String get onboardingSlide3Title => 'Pantry & Meal Planning';

  @override
  String get onboardingSlide3Body =>
      'Track what you have, plan meals, and generate shopping lists automatically.';

  @override
  String get onboardingExit => 'Шығу';

  @override
  String get onboardingPersonalizationTitle => 'Сізбен танысайық';

  @override
  String get onboardingPersonalizationDesc =>
      'Біз мұны ұсыныстарыңызды жекелендіру және сатып алуды ақылды ету үшін пайдаланамыз.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Сіздің сүйікті тағамыңыз қандай?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'мысалы Пицца, суши, лазанья...';

  @override
  String get onboardingPersonalizationCta => 'Жалғастыру';

  @override
  String get onboardingPersonalizationSkip => 'Әзірге өткізіп жіберіңіз';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Жалғастыру үшін бізге сүйікті тағамыңызды айтыңыз';

  @override
  String get settingsDefaultScreen => 'Әдепкі негізгі экран';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Сатып алу тізімі немесе AI чаты арасында таңдаңыз';

  @override
  String get settingsScreenList => 'Сатып алу тізімі';

  @override
  String get settingsScreenChat => 'AI чаты';

  @override
  String loginError(String error) {
    return 'Кіру қатесі: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Ұсыныстарды жүктеу қатесі. Қайтадан байқап көріңіз.';

  @override
  String get paywallPurchaseError =>
      'Сатып алу аяқталмады. Қайтадан байқап көріңіз.';

  @override
  String get paywallRestoreError =>
      'Қалпына келтіру үшін белсенді жазылым табылмады.';

  @override
  String paywallTrialDays(Object days) {
    return '$days КҮН ТЕГІН';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count АПТА ТЕГІН',
      one: '$count АПТА ТЕГІН',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count АЙ ТЕГІН',
      one: '$count АЙ ТЕГІН',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'KipiList Pro қолданбасын 7 күн бойы тегін пайдаланып көріңіз';

  @override
  String get paywallTrialSubtitle =>
      'Кез келген уақытта бас тарту. Бүгін ақысыз.';

  @override
  String get paywallTrialCta => 'Тегін сынақ нұсқасын бастаңыз';

  @override
  String get recipeAddToList => 'Сатып алу тізіміне қосыңыз';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ингредиенттер $listName ішіне қосылды';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Сізге қажет нәрсенің бәрі:';

  @override
  String get paywallFeatureUnlimitedLists => 'Шексіз тізімдер';

  @override
  String get paywallFeatureSmartAI => 'Ақылды AI';

  @override
  String get paywallFeatureExpenseControl => 'Шығындарды бақылау';

  @override
  String get paywallFeatureSharing => 'Бөлісу';

  @override
  String get paywallBeforeAfterTitle => 'AI алдында және кейін:';

  @override
  String get paywallLabelCommon => 'Жалпы';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'күріш';

  @override
  String get paywallBeforeItem2 => 'сабын';

  @override
  String get paywallBeforeItem3 => 'ет';

  @override
  String get paywallBeforeItem4 => 'нан';

  @override
  String get paywallAfterItem1 => 'Дәндер';

  @override
  String get paywallAfterItem2 => 'Тазалау';

  @override
  String get paywallAfterItem3 => 'Еттер';

  @override
  String get paywallAfterItem4 => 'Наубайхана';

  @override
  String get paywallTestimonialsTitle => 'Біздің қолданушылар не дейді:';

  @override
  String get paywallTestimonial1Name => 'Энн С.';

  @override
  String get paywallTestimonial1Text =>
      'AI менің сатып алуларымды секундтарда ұйымдастырады. Мен базарға бару үшін 20 минут үнемдеймін.';

  @override
  String get paywallTestimonial2Name => 'Чарльз М.';

  @override
  String get paywallTestimonial2Text =>
      'Мен тізімдегі бір элементті қайтадан ұмытпадым. AI чаты сенсациялық!';

  @override
  String get paywallSocialProof => '+2400 отбасы пайдаланады';

  @override
  String get paywallCtaUnlock => 'PRO құлпын ашыңыз';

  @override
  String get paywallBestValue => 'ҮЗДІК ҚҰН';

  @override
  String get paywallMostPopular => 'ЕҢ ТАНЫМАЛ';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Қауіпсіз төлем';

  @override
  String get paywallSelectPlan => 'Жоспарыңызды таңдаңыз:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% ҮНЕМДЕУ';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Тек $price/ай';
  }

  @override
  String get paywallPackageAnnual => 'Жылдық жоспар';

  @override
  String get paywallPackageMonthly => 'Айлық жоспар';

  @override
  String get paywallPackageLifetime => 'Өмір бойы қол жеткізу';

  @override
  String get paywallCancelAnytime =>
      'Кез келген уақытта бас тарту. Міндеттеме жоқ.';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'Құпиялылық саясаты';

  @override
  String get paywallTerms => 'Пайдалану шарттары';

  @override
  String get paywallRestore => 'Қалпына келтіру';

  @override
  String get paywallHeroHeadline => 'Kipi AI әрқашан сіздің қасыңызда';

  @override
  String get paywallHeroSubtitle =>
      'Қалтаңыздағы AI көмегімен элементтерді қосыңыз, тізімдерді реттеңіз және уақытты үнемдеңіз';

  @override
  String get paywallBenefit1Desc =>
      '24/7 элементтерді қосады, реттейді және ұсынады';

  @override
  String get paywallBenefit2Desc => '3 тізімге шектеу жоқ';

  @override
  String get paywallBenefit3Desc =>
      'Шығындарды қадағалау және отбасы тізімдері';

  @override
  String get paywallPackageMonthlyDesc => 'Толық икемділік';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Тегін бастаңыз — $days күн';
  }

  @override
  String get premiumUpgrade => 'Құлыптан шығару үшін жаңартыңыз';

  @override
  String get itemRemoved => 'Элемент жойылды';

  @override
  String get undo => 'Болдырмау';

  @override
  String get emptyListTitle => 'Тізіміңіз бос';

  @override
  String get emptyListSubtitle => 'Бастау үшін элементтер қосыңыз';

  @override
  String get noListFoundTitle => 'Тізімдер табылмады';

  @override
  String get noListFoundSubtitle => 'Бастау үшін алғашқы тізіміңізді жасаңыз';

  @override
  String get createFirstList => 'Алғашқы Тізімді Жасау';

  @override
  String get listBudgetTitle => 'Тізім Бюджеті';

  @override
  String get budgetAmountLabel => 'Бюджет сомасы';

  @override
  String get removeBudget => 'Алып тастау';

  @override
  String get prefUnlimitedLists => 'Шексіз тізімдер';

  @override
  String get prefSharing => 'Тізімдермен бөлісу';

  @override
  String get prefFullHistory => 'Толық тарих';

  @override
  String get prefExportData => 'Деректерді экспорттау';

  @override
  String get prefCustomThemes => 'Теңшелетін тақырыптар';

  @override
  String get prefMonthlyBudget => 'Ғаламдық айлық бюджет';

  @override
  String get prefAIAssistant => 'Жеке AI Көмекші';

  @override
  String get prefUnlimitedPantry => 'Шексіз азық-түлік қоры';

  @override
  String get prefInteractiveArtifacts => 'Интерактивті AI Артефактілер';

  @override
  String get themeGreen => 'Жасыл';

  @override
  String get themeBlue => 'Көк';

  @override
  String get themePurple => 'Күлгін';

  @override
  String get themeRed => 'Қызыл';

  @override
  String get themeOrange => 'Қызғылт сары';

  @override
  String get themePink => 'Қызғылт';

  @override
  String get themeIndigo => 'Индиго';

  @override
  String get themeAmber => 'Янтарь';

  @override
  String get themeTeal => 'Теал';

  @override
  String get themeBrown => 'Қоңыр';

  @override
  String get catFruits => 'Жемістер';

  @override
  String get catCleaning => 'Тазалау';

  @override
  String get catBeverages => 'Сусындар';

  @override
  String get catBakery => 'Наубайхана';

  @override
  String get catOthers => 'Басқалар';

  @override
  String get unitPack => 'орам';

  @override
  String get shareSubject => 'Сатып Алу Тізімі';

  @override
  String get monthlyBudgetTitle => 'Айлық Бюджет';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Тізімді жою';

  @override
  String get pantryItemRemoved => 'Элемент жойылды';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit элемент сатып алынуы керек',
      one: '$deficit элемент сатып алынуы керек',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Себет жиынтығы';

  @override
  String get restockLabel => 'Толтыру';

  @override
  String get advancedFeatures => 'Кеңейтілген мүмкіндіктер';

  @override
  String get selectAll => 'Барлығын таңдау';

  @override
  String get deselectAll => 'Барлығынан таңдауды алу';

  @override
  String get monthlyBudgetAppBar => 'Айлық Бюджет';

  @override
  String get budgetEditTitle => 'Айлық Бюджет';

  @override
  String get budgetDashboardTitle => 'Басқару панелі';

  @override
  String get selectListForDashboard =>
      'Басқару панелін көру үшін тізімді таңдаңыз.';

  @override
  String get spendingAnalysis => 'Шығыстарды Талдау';

  @override
  String get noItemsToAnalyze => 'Талдау үшін тізімде элементтер жоқ.';

  @override
  String get markItemsToSeeAnalysis =>
      'Талдауды көру үшін элементтерді сатып алынған деп белгілеңіз.';

  @override
  String get totalSpending => 'Жалпы Жұмсалған';

  @override
  String get spendingByCategory => 'Санат бойынша Шығыстар';

  @override
  String get achievements => 'Жетістіктер';

  @override
  String get exportPdfExcel => 'PDF/Excel экспорттау';

  @override
  String get exportPdf => 'PDF ретінде экспорттау';

  @override
  String get exportExcel => 'Excel ретінде экспорттау';

  @override
  String get organizingAi => 'AI КӨМЕГІМЕН ҰЙЫМДАСТЫРУ...';

  @override
  String get yesLabel => 'Иә';

  @override
  String get noLabel => 'Жоқ';

  @override
  String get shareListText => 'Менің Сатып Алу Тізімім';

  @override
  String get emptyListAddItems =>
      'Тізіміңіз бос! Алдымен элементтерді қосыңыз. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Тізім сиқырлы түрде санаттар бойынша ұйымдастырылды! ✨';

  @override
  String get shoppingMode => 'Сатып Алу Режимі';

  @override
  String get smartOrganization => 'Ақылды Ұйымдастыру';

  @override
  String get savings => 'Үнемдеу';

  @override
  String get shoppingModeHeader => 'САТЫП АЛУ РЕЖИМІ';

  @override
  String get shareAsText => 'Элементтерді пішімделген мәтін ретінде жіберу';

  @override
  String get shareRealtime => 'Басқа адамдармен нақты уақытта синхрондау';

  @override
  String get quickRecipe => 'Жылдам рецепт';

  @override
  String get quickRecipePrompt =>
      'Менің тізімдегі элементтермен рецептер ұсыныңыз.';

  @override
  String get economyTips => 'Үнемдеу кеңестері';

  @override
  String get economyTipsPrompt => 'Осы сатып алудан қалай ақша үнемдей аламын?';

  @override
  String get organizeAisles => 'Сөрелер бойынша ұйымдастыру';

  @override
  String get organizeAislesPrompt => 'Дүкен сөрелері бойынша ұйымдастыру.';

  @override
  String get recipeSuggestion => 'Рецепт ұсынысы';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining кредит қалды';
  }

  @override
  String get addAllToList => 'Барлығын тізімге қосу';

  @override
  String get organizeByAisles => 'Сөрелер бойынша ұйымдастыру';

  @override
  String get voiceTranscriptionTooltip => 'Дауыспен теріңіз (Тегін)';

  @override
  String get aiVoiceCommandTooltip => 'AI Дауыс Пәрмені (Premium)';

  @override
  String get voiceCommandTitle => 'AI Дауыс Пәрмені';

  @override
  String get voiceCommandContent =>
      'Тізіміңізді басқару үшін табиғи сөйлеңіз!\n\nМысалдар:\n• \'Нан, ірімшік және ветчина қосу\'\n• \'Кір жуғыш ұнтақты алып тастау\'\n• \'Тақырыпты көкке өзгерту\'\n\nБұл KipiList Premium-ның эксклюзивті мүмкіндігі.';

  @override
  String get voiceCommandPlanBtn => 'Жоспарларды Көру';

  @override
  String get itemsAddedSuccess => 'Элементтер тізімге сәтті қосылды!';

  @override
  String get viewList => 'Тізімді көру';

  @override
  String get feedbackTitle => 'Кері байланыс жіберу';

  @override
  String get feedbackPrompt => 'Немен бөліскіңіз келеді?';

  @override
  String get feedbackTypeBug => 'Қате туралы хабарлау';

  @override
  String get feedbackTypeBugHint => 'Бір нәрсе жұмыс істемейді';

  @override
  String get feedbackTypeSuggestion => 'Ұсыныс';

  @override
  String get feedbackTypeSuggestionHint => 'Қосымшаны жақсарту идеясы';

  @override
  String get feedbackTypeTranslation => 'Аударма мәселесі';

  @override
  String get feedbackTypeTranslationHint => 'Қате немесе ыңғайсыз аударма';

  @override
  String get feedbackTypeFeature => 'Функция сұрау';

  @override
  String get feedbackTypeFeatureHint => 'Көргіңіз келетін функция';

  @override
  String get feedbackTypeOther => 'Басқа';

  @override
  String get feedbackTypeOtherHint => 'Кері байланыстың басқа түрі';

  @override
  String get feedbackHint => 'Кері байланысыңызды егжей-тегжейлі сипаттаңыз...';

  @override
  String get feedbackSend => 'Кері байланыс жіберу';

  @override
  String get feedbackSending => 'Жіберілуде...';

  @override
  String get feedbackThankYou => 'Рақмет!';

  @override
  String get feedbackThankYouMessage =>
      'Кері байланысыңыз алынды және KipiList-ты барлығы үшін жақсартуға көмектеседі.';

  @override
  String get feedbackBack => 'Артқа';

  @override
  String feedbackError(String error) {
    return 'Жіберу қатесі: $error';
  }

  @override
  String get feedbackRetry => 'Қайталау';

  @override
  String get feedbackSettingsTitle => 'Кері байланыс жіберу';

  @override
  String get feedbackSettingsSubtitle =>
      'Қателер туралы хабарлаңыз, жақсартуларды ұсыныңыз немесе аудармаларды түзетіңіз';

  @override
  String get aiEnergy => 'AI энергиясы';

  @override
  String get searchInConversation => 'Әңгімелесуден іздеу...';

  @override
  String get noMessagesFound => 'Хабарлар табылмады';

  @override
  String get suggestedQuestions => 'Ұсынылатын сұрақтар:';

  @override
  String get shoppingAssistant => 'Сауда көмекшісі';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased/$total сатып алынды';
  }

  @override
  String get estimatedCost => 'Болжалды';

  @override
  String get viewItems => 'Элементтерді көру';

  @override
  String get noItemsInList => 'Тізімде элементтер жоқ';

  @override
  String get longHistoryWarning =>
      'Ұзақ тарих: ассистент өнімділікті жақсарту үшін соңғы хабарларға назар аударады.';

  @override
  String get listening => 'Тыңдалуда...';

  @override
  String get addDirectToList => 'Тізімге тікелей қосыңыз';

  @override
  String get unlockFullResponse => 'Толық жауаптың құлпын ашыңыз';

  @override
  String get switchList => 'Ауыстыру тізімі';

  @override
  String get marketMode => 'Нарық режимі';

  @override
  String get backToChat => 'Чатқа оралу';

  @override
  String get finishShopping => 'Шопингті аяқтау';

  @override
  String get welcomeAiAssistant => 'AI көмекшісіне қош келдіңіз';

  @override
  String get createListToStartAi =>
      'Смарт чатты пайдалануды бастау үшін сатып алу тізімін жасаңыз.';

  @override
  String get howCanIHelp => 'Қалай көмектесе аламын?';

  @override
  String get chatSubtitleShort =>
      'Бағалар, рецепттер, ұйымдастыру туралы сұраңыз...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total сатып алынды';
  }

  @override
  String get quickReplies => 'Жылдам жауаптар:';

  @override
  String get voiceProFeature =>
      'Жетілдірілген дауыс пәрмендері Pro. Негізгі диктантты қосу...';

  @override
  String get viewPro => 'Pro';

  @override
  String get errorLoadingChat =>
      'Ой! Чатты жүктеу кезінде бірдеңе дұрыс болмады.';

  @override
  String get errorLoadingChatSubtitle =>
      'Байланысты тексеріңіз немесе кейінірек қайталап көріңіз.';

  @override
  String get errorOscillation =>
      'Бұл желінің тербелісіне немесе уақытша қолжетімсіздікке байланысты болуы мүмкін. Қайталап көріңіз.';

  @override
  String get activeListening => 'Белсенді тыңдау';

  @override
  String get whatToDoWithItem => 'Бұл затпен не істегіңіз келеді?';

  @override
  String get viewDetails => 'Мәліметтерді көру';

  @override
  String get openMenu => 'Мәзірді ашу';

  @override
  String get viewRecipe => 'Рецептті көру';

  @override
  String get recipeCreated => 'Рецепт жасалды!';

  @override
  String get editRecipe => 'Өңдеу';

  @override
  String get deleteRecipe => 'Жою';

  @override
  String get deleteRecipeConfirm => 'Бұл рецептті жою керек пе?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\" рецептін жоюға сенімдісіз бе? Бұл әрекетті қайтару мүмкін емес.';
  }

  @override
  String get ingredients => 'Ингредиенттер';

  @override
  String get instructions => 'Нұсқаулықтар';

  @override
  String get prepTime => 'Дайындау уақыты';

  @override
  String get recipeSaved => 'Рецепт сақталды!';

  @override
  String get noRecipesSaved => 'Сақталған рецепттер жоқ';

  @override
  String get noRecipesSavedHint =>
      'Төмендегі батырманы түрту арқылы алғашқы жеке рецептіңізді жасаңыз.';

  @override
  String get myRecipes => 'Менің рецепттерім';

  @override
  String get newRecipe => 'Жаңа рецепт';

  @override
  String get loadingRecipes => 'Рецепттер жүктелуде...';

  @override
  String get errorLoadingRecipes => 'Рецепттерді жүктеу қатесі';

  @override
  String get addIngredient => 'Ингредиент қосу';

  @override
  String get saveRecipe => 'Сақтау';

  @override
  String get recipeName => 'Рецепт атауы';

  @override
  String get shortDescription => 'Қысқаша сипаттама';

  @override
  String get prepTimeMinutes => 'Дайындау уақыты (минут)';

  @override
  String get instructionsHint => 'Бір жолға бір қадамнан енгізіңіз...';

  @override
  String get addPhoto => 'Фото қосу';

  @override
  String get imageUrlPlaceholder => 'Немесе суреттің URL мекенжайын қойыңыз';

  @override
  String get tags => 'Тегтер';

  @override
  String get recipeTags => 'Рецепт тегтері';

  @override
  String get suggestedTags => 'Ұсынылатын';

  @override
  String get searchRecipes => 'Рецепттерді іздеу...';

  @override
  String get filterByTag => 'Тег бойынша сүзу';

  @override
  String get allTags => 'Барлығы';

  @override
  String get recipeDeleted => 'Рецепт жойылды';

  @override
  String get saveChanges => 'Өзгерістерді сақтау';

  @override
  String get editRecipeTitle => 'Рецептті өңдеу';

  @override
  String get newRecipeTitle => 'Жаңа рецепт';

  @override
  String get requiredField => 'Міндетті';

  @override
  String get chooseImageSource => 'Сурет көзін таңдаңыз';

  @override
  String get gallery => 'Галерея';

  @override
  String get enterUrl => 'URL енгізіңіз';

  @override
  String get recipeImage => 'Рецепт суреті';

  @override
  String get removeImage => 'Суретті алып тастау';

  @override
  String get mealPlannerTitle => 'Тамақтану жоспарлаушысы';

  @override
  String get mealPlannerViewMonthly => 'Айлық көрініс';

  @override
  String get mealPlannerViewWeekly => 'Апталық көрініс';

  @override
  String get mealPlannerNoMeals => 'Жоспарланған тамақтар жоқ';

  @override
  String get mealPlannerNoMealsHint => 'Тамақ қосу үшін күнді түртіңіз';

  @override
  String get mealPlannerLoading => 'Тамақтану жоспары жүктелуде...';

  @override
  String get mealPlannerError => 'Тамақтану жоспарын жүктеу қатесі';

  @override
  String get mealPlannerAddMeal => 'Тамақты қосу';

  @override
  String get mealPlannerEditMeal => 'Тамақты өңдеу';

  @override
  String get mealPlannerDeleteMeal => 'Тамақты алып тастау';

  @override
  String get mealPlannerMealDeleted => 'Тамақ алып тасталды';

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
  String get mealPlannerNoteLabel => 'Ескертпе (міндетті емес)';

  @override
  String get mealPlannerSelectRecipe => 'Рецептті таңдаңыз';

  @override
  String get mealPlannerSearchRecipes => 'Рецепттерді іздеу...';

  @override
  String get mealPlannerNoRecipesFound => 'Рецепттер табылмады';

  @override
  String get mealPlannerNoRecipesHint =>
      'Алдымен \"Рецепттер\" қойындысында рецепттер жасаңыз';

  @override
  String get mealPlannerSave => 'Жоспарға қосу';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total-дан $count тамақ жоспарланған';
  }

  @override
  String get mealPlannerGenerateList => 'Сатып алу тізімін жасау';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Осы аптаға жоспарланған барлық тамақ ингредиенттерін сатып алу тізіміне қосу керек пе?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ингредиент тізімге қосылды!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Қосатын ингредиенттер жоқ. Алдымен рецепттері бар тамақтарды жоспарлаңыз.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Алдымен сатып алу тізімін жасаңыз.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Таңғы ас';

  @override
  String get mealPlannerMealTypeLunch => 'Түскі ас';

  @override
  String get mealPlannerMealTypeDinner => 'Кешкі ас';

  @override
  String get mealPlannerMealTypeSnack => 'Жеңіл тамақ';

  @override
  String get mealPlannerDateLabel => 'Күні';

  @override
  String get mealPlannerWeekEmpty => 'Бұл аптаға ештеңе жоспарланбаған';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Тамақтануды жоспарлауды бастау үшін кез келген күнді түртіңіз!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes мин';
  }

  @override
  String get inviteToList => 'Тізімге шақыру';

  @override
  String get shareApp => 'Қолданбаны бөлісу';

  @override
  String get shareAppDescription =>
      'Достарыңызды KipiList қолданбасын пайдалануға шақырыңыз';

  @override
  String shareReferralText(Object url) {
    return 'Мен сатып алуды ұйымдастыру үшін KipiList пайдаланамын! Менің сілтемем арқылы жүктеп алыңыз, екеуміз де 7 күндік тегін Premium аламыз: $url';
  }

  @override
  String get shareReferralSubject => '7 күн KipiList Premium алыңыз!';

  @override
  String get gestureHint => 'Таңдау үшін басып тұрыңыз • Жою үшін сырғытыңыз';

  @override
  String get catalogTitle => 'Каталог';

  @override
  String get catalogMyFrequents => 'Менің жиілерім';

  @override
  String get catalogSearchGlobal => 'Кез келген өнімді іздеу...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category ішінен іздеу...';
  }

  @override
  String get catalogSortPopular => 'Ең танымал';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Ұлттық';

  @override
  String get catalogRareSection => 'еліңізде сирек кездеседі';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 қосу →';
  }

  @override
  String get catalogProductNotFound => 'Өнім табылмады, атын теріңіз';

  @override
  String get catalogBrowse => 'Каталогты шолу';

  @override
  String get offlineBanner => 'Сіз желіден тыссыз';

  @override
  String get consentTitle => 'Құпиялық және аналитика';

  @override
  String get consentBody =>
      'KipiList тәжірибеңізді жақсарту үшін Firebase Analytics пайдаланады. Сіздің деректеріңіз біздің Құпиялық саясатымызға сәйкес өңделеді.';

  @override
  String get consentAccept => 'Қабылдау';

  @override
  String get consentDecline => 'Жоқ рақмет';

  @override
  String get mealPlannerPantryAllAvailable => 'Қоймада';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count жетіспейтін элемент',
      one: '$count жетіспейтін элемент',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Мерзімнің өту күні';

  @override
  String get notInformed => 'Хабарлама';

  @override
  String get skip => 'Skip';

  @override
  String get onboardingAiTitle => 'Chat with Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hi! I\'m Kipi, your personal shopping assistant! 🛒';

  @override
  String get onboardingAiAskName => 'What\'s your name?';

  @override
  String get onboardingAiNameHint => 'Type your name...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Nice to meet you, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'What\'s your favorite food?';

  @override
  String get onboardingAiFoodHint => 'e.g. Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Great choices! Here\'s what I\'d add to your list:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Does this look good? Try typing something else!';

  @override
  String get onboardingAiReady =>
      'Great! You\'re ready to start. Let\'s set up your account!';

  @override
  String get onboardingAiContinue => 'Continue →';

  @override
  String get errorRenderScreen =>
      'Oops! Something went wrong rendering this screen.';

  @override
  String get connectionError => 'Connection Error';

  @override
  String connectionErrorDesc(Object error) {
    return 'Could not connect to the server. Check your internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Error loading lists';

  @override
  String get noListsFound => 'No lists found';

  @override
  String get unlockPremiumTitle => 'Unlock unlimited lists, AI and more';

  @override
  String get loadingSubscription => 'Loading subscription...';

  @override
  String get errorLoadingSubscription => 'Error loading subscription';

  @override
  String get profileSection => 'Profile';

  @override
  String get myProfile => 'My Profile';

  @override
  String get profileSubtitle => 'Personal preferences for the AI assistant';

  @override
  String get manageCategories => 'Manage Categories';

  @override
  String get manageCategoriesSubtitle => 'Manage item categories';

  @override
  String get profileSaved => 'Profile saved successfully!';

  @override
  String errorSavingProfile(Object error) {
    return 'Error saving: $error';
  }

  @override
  String get userProfile => 'User Profile';

  @override
  String get saveProfile => 'Save Profile';

  @override
  String get profileDescription =>
      'Tell us your personal preferences so the AI assistant can suggest personalized items and recipes.';

  @override
  String get preferredMarket => 'Preferred Market';

  @override
  String get preferredMarketHint => 'E.g.: Supermarket X';

  @override
  String get dietaryRestrictions => 'Dietary Restrictions';

  @override
  String get dietaryRestrictionsHint => 'E.g.: vegan, vegetarian, gluten-free';

  @override
  String get marketsToAvoid => 'Markets to Avoid';

  @override
  String get marketsToAvoidHint => 'E.g.: Market Y, Market Z';

  @override
  String get observations => 'Notes';

  @override
  String get observationsHint => 'Other preferences for the assistant';

  @override
  String get manageCategoriesTitle => 'Санаттарды басқару';

  @override
  String get categoryLimitReached =>
      'Limit of 10 categories on the free version. Upgrade to Pro!';

  @override
  String get noCategories => 'No categories.';

  @override
  String get deleteCategoryTitle => 'Delete Category';

  @override
  String deleteCategoryConfirm(Object category) {
    return 'Items in category \"$category\" will be moved to \"Others\".\nContinue?';
  }

  @override
  String get deleteCategory => 'Delete';

  @override
  String get myAchievements => 'My Achievements';

  @override
  String get itemsPurchased => 'Items Purchased';

  @override
  String get totalSavings => 'Total Savings';

  @override
  String get currentStreak => 'Current Streak';

  @override
  String streakDays(Object days) {
    return '$days days';
  }

  @override
  String get chooseThemeColor => 'Choose Theme Color';

  @override
  String get errorLoadingHistory => 'Error loading history';

  @override
  String get deleteConversationTitle => 'Delete Conversation?';

  @override
  String get deleteConversationConfirm => 'This action cannot be undone.';

  @override
  String get deleteConversation => 'Delete';

  @override
  String get unlockWithAd => 'Unlock with Ad';

  @override
  String get aiPremiumDescription =>
      'This interactive interface uses advanced artificial intelligence and is exclusive to Pro members or via a quick ad.';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get categoryNameHint => 'E.g.: Meats';

  @override
  String get color => 'Color:';

  @override
  String get icon => 'Icon:';

  @override
  String get scanBarcode => 'Scan Barcode';

  @override
  String get scanProduct => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Position the barcode in the center';

  @override
  String replaceItem(Object name) {
    return 'Replace $name';
  }

  @override
  String get selectCheaperAlternative =>
      'Select a cheaper product alternative to optimize cost.';

  @override
  String get swap => 'Swap';

  @override
  String itemAdded(Object name) {
    return '$name added';
  }

  @override
  String errorLoadingProducts(Object error) {
    return 'Error loading products: $error';
  }

  @override
  String get mealType => 'Meal type';

  @override
  String get requestTimeout => 'Sorry, the request timed out.';

  @override
  String get connectionError2 => 'Sorry, a connection error occurred.';

  @override
  String get addingItems => 'Adding items to list...';

  @override
  String get removingItems => 'Removing items...';

  @override
  String get updatingItem => 'Updating item...';

  @override
  String get checkingItem => 'Checking item...';

  @override
  String get uncheckingItem => 'Unchecking item...';

  @override
  String get clearingCheckedItems => 'Clearing checked items...';

  @override
  String get reorganizingList => 'Reorganizing list...';

  @override
  String get creatingNewList => 'Creating new list...';

  @override
  String get removingList => 'Removing list...';

  @override
  String get renamingList => 'Renaming list...';

  @override
  String get queryingYourLists => 'Querying your lists...';

  @override
  String get settingBudget => 'Setting budget...';

  @override
  String get checkingPantry => 'Checking your pantry...';

  @override
  String get addingToPantry => 'Adding to pantry...';

  @override
  String get removingFromPantry => 'Removing from pantry...';

  @override
  String get updatingPantry => 'Updating pantry...';

  @override
  String get savingRecipe => 'Saving recipe...';

  @override
  String get searchingRecipes => 'Searching recipes...';

  @override
  String get removingRecipe => 'Removing recipe...';

  @override
  String get addingIngredientsToList => 'Adding ingredients to list...';

  @override
  String get organizingMenu => 'Organizing your menu...';

  @override
  String get loadingMenu => 'Loading your menu...';

  @override
  String get updatingMenu => 'Updating menu...';

  @override
  String get searchingCategories => 'Searching categories...';

  @override
  String get categorizingItems => 'Categorizing items...';

  @override
  String get generatingShareLink => 'Generating share link...';

  @override
  String get searchingSharedList => 'Searching shared list...';

  @override
  String get loadingProfile => 'Loading your profile...';

  @override
  String get savingPreferences => 'Saving your preferences...';

  @override
  String get checkingSettings => 'Checking your settings...';

  @override
  String get generatingContent => 'Generating personalized content...';

  @override
  String get searchingProducts => 'Searching products...';

  @override
  String get estimatingPrices => 'Estimating prices...';

  @override
  String get processing => 'Processing...';

  @override
  String get shoppingList => 'Shopping List';

  @override
  String get purchasedSuffix => ' [Purchased]';

  @override
  String get listUnarchived => 'List unarchived successfully.';

  @override
  String get toolDeleteList => 'Delete list';

  @override
  String get toolAddItems => 'Add items';

  @override
  String get toolRemoveItems => 'Remove items';

  @override
  String get toolAddToPantry => 'Add to pantry';

  @override
  String get toolRemoveFromPantry => 'Remove from pantry';

  @override
  String get toolShareList => 'Share list';

  @override
  String get toolSaveRecipe => 'Save recipe';

  @override
  String get toolDeleteRecipe => 'Delete recipe';

  @override
  String get toolRemoveMeal => 'Remove meal';

  @override
  String get toolSavePreference => 'Save preference';

  @override
  String get toolRemovePreference => 'Remove preference';

  @override
  String currentTheme(Object mode) {
    return 'Current theme: $mode';
  }

  @override
  String themeChanged(Object mode) {
    return 'Theme changed to $mode.';
  }

  @override
  String get addToList => 'Add to List';

  @override
  String errorAddingItem(Object error) {
    return 'Error adding item: $error';
  }

  @override
  String errorAddingBatch(Object error) {
    return 'Error adding items in batch: $error';
  }

  @override
  String errorTogglingItem(Object error) {
    return 'Error toggling item status: $error';
  }

  @override
  String errorRemovingItem(Object error) {
    return 'Error removing item: $error';
  }

  @override
  String errorUpdatingItem(Object error) {
    return 'Error updating item: $error';
  }

  @override
  String errorUpdatingItems(Object error) {
    return 'Error updating items: $error';
  }

  @override
  String errorRestoringItem(Object error) {
    return 'Error restoring item: $error';
  }

  @override
  String errorIncreasingQty(Object error) {
    return 'Error increasing quantity: $error';
  }

  @override
  String errorDecreasingQty(Object error) {
    return 'Error decreasing quantity: $error';
  }

  @override
  String errorClearingList(Object error) {
    return 'Error clearing list: $error';
  }

  @override
  String errorClearingPurchased(Object error) {
    return 'Error clearing purchased items: $error';
  }

  @override
  String errorRemovingItems(Object error) {
    return 'Error removing items: $error';
  }

  @override
  String errorTogglingItems(Object error) {
    return 'Error toggling items: $error';
  }

  @override
  String errorReordering(Object error) {
    return 'Error reordering item: $error';
  }

  @override
  String get errorCreatingList => 'Error creating list';

  @override
  String errorServerConnection(Object error) {
    return 'Error connecting to server: $error';
  }

  @override
  String errorUpdatingList(Object error) {
    return 'Error updating list: $error';
  }

  @override
  String errorDeletingList(Object error) {
    return 'Error deleting list: $error';
  }

  @override
  String errorRemovingSharedList(Object error) {
    return 'Error removing shared list: $error';
  }

  @override
  String errorSettingCurrentList(Object error) {
    return 'Error setting current list: $error';
  }

  @override
  String errorArchivingList(Object error) {
    return 'Error archiving list: $error';
  }

  @override
  String errorUnarchivingList(Object error) {
    return 'Error unarchiving list: $error';
  }

  @override
  String get errorUserNotAuthenticated => 'User not authenticated.';

  @override
  String get errorGeneratingCode => 'Error generating unique code. Try again.';

  @override
  String pantryLimitReached(Object count) {
    return 'Limit of $count items in pantry on the free plan. Upgrade to add more.';
  }

  @override
  String errorImportingList(Object name, Object error) {
    return 'Error importing list \"$name\": $error';
  }

  @override
  String errorExecutingTool(Object tool, Object error) {
    return 'Error executing $tool: $error';
  }

  @override
  String get errorProcessingRequest =>
      'Sorry, an error occurred while processing your request. Check your connection or try again later.';

  @override
  String get couldNotProcess => 'Could not process after multiple attempts.';

  @override
  String get errorResumingProcessing => 'Error resuming processing.';

  @override
  String get errorResumingLoop => '[ResumeLoop] Error resuming loop';

  @override
  String get othersCategory => 'Others';

  @override
  String get monthJanuary => 'January';

  @override
  String get monthFebruary => 'February';

  @override
  String get monthMarch => 'March';

  @override
  String get monthApril => 'April';

  @override
  String get monthMay => 'May';

  @override
  String get monthJune => 'June';

  @override
  String get monthJuly => 'July';

  @override
  String get monthAugust => 'August';

  @override
  String get monthSeptember => 'September';

  @override
  String get monthOctober => 'October';

  @override
  String get monthNovember => 'November';

  @override
  String get monthDecember => 'December';

  @override
  String get dayMon => 'Mon';

  @override
  String get dayTue => 'Tue';

  @override
  String get dayWed => 'Wed';

  @override
  String get dayThu => 'Thu';

  @override
  String get dayFri => 'Fri';

  @override
  String get daySat => 'Sat';

  @override
  String get daySun => 'Sun';

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
  String get backToToday => 'Бүгінге оралу';

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
