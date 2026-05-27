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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Жүйелік әдепкі';

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
  String get clearHistory => 'Тарихты Тазалау';

  @override
  String get clearHistoryConfirm => 'Осы сессиядағы барлық хабарларды тазалау?';

  @override
  String get chatHint => 'Хабарламаңызды жазыңыз...';

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Премиум мүмкіндіктердің\nқұлпын ашу үшін кіріңіз';

  @override
  String get signInGoogle => 'Google арқылы кіру';

  @override
  String get signInApple => 'Apple арқылы кіру';

  @override
  String get continueAsGuest => 'Қонақ ретінде жалғастыру';

  @override
  String loginError(String error) {
    return 'Кіру қатесі: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'Тізіміңізді басқару үшін табиғи сөйлеңіз!\n\nМысалдар:\n• \'Нан, ірімшік және ветчина қосу\'\n• \'Кір жуғыш ұнтақты алып тастау\'\n• \'Тақырыпты көкке өзгерту\'\n\nБұл Lista Plus Premium-ның эксклюзивті мүмкіндігі.';

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
      'Кері байланысыңыз алынды және Lista Plus-ты барлығы үшін жақсартуға көмектеседі.';

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
