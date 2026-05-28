// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsBe extends AppLocalizations {
  AppLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get appTitle => 'Спіс пакупак';

  @override
  String get lists => 'Спісы';

  @override
  String get pantry => 'Кладоўка';

  @override
  String get cancel => 'Адмяніць';

  @override
  String get save => 'Захаваць';

  @override
  String get create => 'Стварыць';

  @override
  String get add => 'Дадаць';

  @override
  String get remove => 'Выдаліць';

  @override
  String get delete => 'Выдаліць';

  @override
  String get edit => 'Рэдагаваць';

  @override
  String get copy => 'Капіяваць';

  @override
  String get retry => 'Паўтарыць';

  @override
  String get regenerate => 'Перагенераваць';

  @override
  String get copiedToClipboard => 'Скапіявана ў буфер абмену';

  @override
  String get confirm => 'Пацвердзіць';

  @override
  String get close => 'Закрыць';

  @override
  String get import => 'Імпартаваць';

  @override
  String get rename => 'Перайменаваць';

  @override
  String get upgrade => 'Абнавіць';

  @override
  String get clear => 'Ачысціць';

  @override
  String error(String message) {
    return 'Памылка: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Памылка: $message';
  }

  @override
  String get purchaseError => 'Памылка апрацоўкі пакупкі. Паспрабуйце зноў.';

  @override
  String get restoreError => 'Памылка аднаўлення пакупак. Паспрабуйце зноў.';

  @override
  String get loading => 'Загрузка...';

  @override
  String get fieldRequired => 'Абавязковае поле';

  @override
  String get addedFeedback => 'Дададзена!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Выбрана $count',
      many: 'Выбрана $count',
      few: 'Выбраны $count',
      one: 'Выбраны $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Прыблізна';

  @override
  String get alreadyPurchased => 'Ужо набыта';

  @override
  String get clearList => 'Ачысціць спіс';

  @override
  String get clearPurchased => 'Ачысціць набытае';

  @override
  String get share => 'Падзяліцца';

  @override
  String get shareViaCode => 'Падзяліцца праз код';

  @override
  String get importViaCode => 'Імпартаваць праз код';

  @override
  String get listAssistant => 'Памочнік спісу';

  @override
  String get globalAssistant => 'Глабальны памочнік';

  @override
  String get becomePremium => 'Станьце Premium';

  @override
  String get manageSubscription => 'Кіраваць падпіскай';

  @override
  String get completePurchase => 'Завяршыць пакупку';

  @override
  String get confirmClearList => 'Выдаліць усе элементы?';

  @override
  String get shareListTitle => 'Падзяліцца Спісам';

  @override
  String get shareThisCode => 'Падзяліцеся гэтым кодам:';

  @override
  String get validForLimitedTime => 'Сапраўдны на абмежаваны час';

  @override
  String get importListTitle => 'Імпартаваць Спіс';

  @override
  String get enterCodeHint => 'Увядзіце код';

  @override
  String get confirmArchiveTitle => 'Завяршыць Пакупку';

  @override
  String get confirmArchiveContent =>
      'Завяршыць гэту пакупку і архіваваць спіс?';

  @override
  String get complete => 'Завяршыць';

  @override
  String get listArchived => 'Спіс паспяхова архіваваны!';

  @override
  String listAdded(String listName) {
    return '$listName дададзены!';
  }

  @override
  String get buy => 'Купіць';

  @override
  String get unmark => 'Зняць пазнаку';

  @override
  String confirmDeleteItems(int count) {
    return 'Выдаліць $count элемент(ы)?';
  }

  @override
  String get confirmDeleteTitle => 'Пацвердзіць';

  @override
  String confirmContent(int count) {
    return 'Выдаліць $count элемент(ы)?';
  }

  @override
  String get archiveList => 'Архіваваць спіс';

  @override
  String get pantryAppBar => 'Кладоўка';

  @override
  String get generateShoppingList => 'Стварыць спіс пакупак';

  @override
  String get pantryEmpty => 'Пустая кладоўка';

  @override
  String get pantryEmptySubtitle => 'Дадавайце прадукты, якія хочаце мець дома';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit элемент(ы) трэба набыць';
  }

  @override
  String get noItemsToBuy => 'Няма элементаў для пакупкі';

  @override
  String get newPantryList => 'Пакупка з Кладоўкі';

  @override
  String get newListTitle => 'Новы Спіс Пакупак';

  @override
  String itemsWillBeAdded(int count) {
    return '$count элемент(ы) будзе дададзена';
  }

  @override
  String get listNameLabel => 'Назва спісу';

  @override
  String listCreated(String name, int count) {
    return 'Спіс \"$name\" створаны з $count элементамі';
  }

  @override
  String get noTracking => 'Без адсочвання';

  @override
  String get markAsPurchased => 'Пазначыць як набыта';

  @override
  String editPantryItem(String name) {
    return 'Рэдагаваць $name';
  }

  @override
  String get idealQuantity => 'Ідэальная колькасць';

  @override
  String get currentQuantity => 'Бягучая колькасць';

  @override
  String get consumed => 'Спажыта';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name папоўнена да $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Выдаліць \"$name\" з кладоўкі?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Рэдагаваць $name';
  }

  @override
  String get settingsAppBar => 'Налады';

  @override
  String get language => 'Мова';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Сістэмная па змаўчанні';

  @override
  String get chooseLanguage => 'Выберыце мову';

  @override
  String get searchLanguage => 'Пошук мовы...';

  @override
  String get appearance => 'Выгляд';

  @override
  String get light => 'Светлая';

  @override
  String get system => 'Сістэмная';

  @override
  String get dark => 'Цёмная';

  @override
  String get themeColor => 'Колер тэмы';

  @override
  String get dynamicColors => 'Дынамічныя колеры';

  @override
  String get dynamicColorsSubtitle =>
      'Выкарыстоўвайце колеры на аснове вашых шпалер';

  @override
  String get finance => 'Фінансы';

  @override
  String get monthlyBudgetNav => 'Месяцовы бюджэт';

  @override
  String get budgetSubtitle => 'Адсочвайце свае месяцовыя выдаткі';

  @override
  String get data => 'Дадзеныя';

  @override
  String get backupNav => 'Рэзервовае капіраванне';

  @override
  String get backupSubtitle => 'Экспартуйце або імпартуйце свае дадзеныя';

  @override
  String get about => 'Пра праграму';

  @override
  String get version => 'Версія';

  @override
  String get privacy => 'Канфідэнцыяльнасць';

  @override
  String get termsOfUse => 'Умовы выкарыстання';

  @override
  String get backupTitle => 'Рэзервовае капіраванне';

  @override
  String get backupPremiumDescription =>
      'Рэзервовае капіраванне і экспарт - гэта прэміум-функцыя';

  @override
  String get exportData => 'Экспартаваць дадзеныя';

  @override
  String get exportDataSubtitle => 'Захаваць усе спісы як JSON';

  @override
  String get importData => 'Імпартаваць дадзеныя';

  @override
  String get importDataSubtitle => 'Аднавіць спісы з JSON';

  @override
  String get importJsonTitle => 'Імпартаваць JSON';

  @override
  String get importJsonHint => 'Устаўце JSON рэзервовай копіі сюды...';

  @override
  String get backupExported => 'Рэзервовая копія экспартавана!';

  @override
  String get budgetAppBar => 'Месяцовы Бюджэт';

  @override
  String get budgetPremiumLocked => 'Глабальны месяцовы бюджэт - гэта прэміум';

  @override
  String get budgetUpgradePrompt => 'Абнавіце, каб разблакаваць';

  @override
  String get noBudgetDefined => 'Бюджэт не ўсталяваны';

  @override
  String totalEstimated(String amount) {
    return 'Агулам прыблізна: $amount';
  }

  @override
  String get setBudgetButton => 'Усталяваць бюджэт';

  @override
  String get budgetLists => 'Спісы';

  @override
  String get budgetValueLabel => 'Сума';

  @override
  String get setBudgetTitle => 'Месяцовы Бюджэт';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Усе';

  @override
  String get filterPending => 'Чакае';

  @override
  String get filterPurchased => 'Набыта';

  @override
  String get sortName => 'Назва';

  @override
  String get sortCategory => 'Катэгорыя';

  @override
  String get sortDate => 'Дата';

  @override
  String get sortManual => 'Уручную';

  @override
  String get addItem => 'Дадаць Элемент';

  @override
  String get itemName => 'Назва элемента';

  @override
  String get quantityShort => 'Кольк';

  @override
  String get unit => 'Адзінка';

  @override
  String get category => 'Катэгорыя';

  @override
  String get estimatedPrice => 'Прыблізны кошт';

  @override
  String get addItemPrice => 'Прыблізны кошт';

  @override
  String get editItem => 'Рэдагаваць Элемент';

  @override
  String get quantityFull => 'Колькасць';

  @override
  String get editItemPrice => 'Прыблізны кошт';

  @override
  String get addToPantry => 'Дадаць у Кладоўку';

  @override
  String addToPantryPrompt(String name) {
    return 'Дадаць \"$name\" у Вашу кладоўку?';
  }

  @override
  String get yes => 'Так';

  @override
  String get productName => 'Назва прадукту';

  @override
  String get idealQty => 'Ідэальная кольк';

  @override
  String get currentQty => 'Бягучая кольк';

  @override
  String get trackStock => 'Адсочваць запас';

  @override
  String get trackStockActive => 'З\'яўляецца ў прапановах пакупак';

  @override
  String get trackStockInactive => 'Не стварае прапанову пакупкі';

  @override
  String get createListDialog => 'Стварыць Спіс';

  @override
  String get renameListDialog => 'Перайменаваць Спіс';

  @override
  String get listHistory => 'Гісторыя Спісаў';

  @override
  String get myLists => 'Мае Спісы';

  @override
  String get viewActive => 'Паглядзець Актыўныя';

  @override
  String get viewHistory => 'Паглядзець Гісторыю';

  @override
  String get noArchivedLists => 'Няма архіваваных спісаў';

  @override
  String get noActiveLists => 'Няма актыўных спісаў';

  @override
  String completedOn(String date) {
    return 'Завершана $date';
  }

  @override
  String get sharedLabel => 'Агульны';

  @override
  String get restore => 'Аднавіць';

  @override
  String get removeSharedTooltip => 'Выдаліць';

  @override
  String get deleteListTitle => 'Выдаліць спіс';

  @override
  String deleteListContent(String name) {
    return 'Вы ўпэўнены, што хочаце выдаліць \"$name\"? Усе элементы будуць выдалены.';
  }

  @override
  String get removeSharedListTitle => 'Выдаліць агульны спіс';

  @override
  String removeSharedListContent(String name) {
    return 'Выдаліць \"$name\" з вашых спісаў? Арыгінальны спіс не будзе закрануты.';
  }

  @override
  String get createNewList => 'Стварыць новы спіс';

  @override
  String get aiAssistant => 'AI Памочнік';

  @override
  String get aiAssistantDescription =>
      'Атрымлівайце разумныя прапановы, рэцэпты і персанальныя парады з нашым AI-памочнікам.';

  @override
  String get generalAssistant => 'Агульны Памочнік';

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
  String get clearHistory => 'Ачысціць Гісторыю';

  @override
  String get clearHistoryConfirm => 'Ачысціць усе паведамленні ў гэтай сесіі?';

  @override
  String get chatHint => 'Напішыце паведамленне...';

  @override
  String chatError(String error) {
    return 'Памылка загрузкі чата: $error';
  }

  @override
  String get listHelp => 'Чым я магу дапамагчы з вашым спісам?';

  @override
  String get generalHelp => 'Чым я магу дапамагчы з вашымі пакупкамі сёння?';

  @override
  String get chatSubtitle =>
      'Пытайцеся пра прапановы тавараў, рэцэпты або парады па эканоміі.';

  @override
  String get aiError =>
      'Прабачце, адбылася памылка пры апрацоўцы вашага запыту. Праверце падключэнне або паспрабуйце пазней.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Увайдзіце, каб разблакаваць\nпрэміум-функцыі';

  @override
  String get signInGoogle => 'Увайсці з Google';

  @override
  String get signInApple => 'Увайсці з Apple';

  @override
  String get continueAsGuest => 'Працягнуць як госць';

  @override
  String loginError(String error) {
    return 'Памылка ўваходу: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Абнавіце, каб разблакаваць';

  @override
  String get itemRemoved => 'Элемент выдалены';

  @override
  String get undo => 'Адмяніць';

  @override
  String get emptyListTitle => 'Ваш спіс пусты';

  @override
  String get emptyListSubtitle => 'Дадайце элементы, каб пачаць';

  @override
  String get noListFoundTitle => 'Спісы не знойдзены';

  @override
  String get noListFoundSubtitle => 'Стварыце свой першы спіс, каб пачаць';

  @override
  String get createFirstList => 'Стварыць Першы Спіс';

  @override
  String get listBudgetTitle => 'Бюджэт Спісу';

  @override
  String get budgetAmountLabel => 'Сума бюджэту';

  @override
  String get removeBudget => 'Выдаліць';

  @override
  String get prefUnlimitedLists => 'Бязмежныя спісы';

  @override
  String get prefSharing => 'Абагульваць спісы';

  @override
  String get prefFullHistory => 'Поўная гісторыя';

  @override
  String get prefExportData => 'Экспартаваць дадзеныя';

  @override
  String get prefCustomThemes => 'Уласныя тэмы';

  @override
  String get prefMonthlyBudget => 'Глабальны месяцовы бюджэт';

  @override
  String get prefAIAssistant => 'Персанальны AI Памочнік';

  @override
  String get prefUnlimitedPantry => 'Бязмежная кладоўка';

  @override
  String get prefInteractiveArtifacts => 'Інтэрактыўныя AI Артэфакты';

  @override
  String get themeGreen => 'Зялёны';

  @override
  String get themeBlue => 'Сіні';

  @override
  String get themePurple => 'Фіялетавы';

  @override
  String get themeRed => 'Чырвоны';

  @override
  String get themeOrange => 'Аранжавы';

  @override
  String get themePink => 'Ружовы';

  @override
  String get themeIndigo => 'Індыга';

  @override
  String get themeAmber => 'Бурштынавы';

  @override
  String get themeTeal => 'Бірузовы';

  @override
  String get themeBrown => 'Карычневы';

  @override
  String get catFruits => 'Садавіна';

  @override
  String get catCleaning => 'Чыстка';

  @override
  String get catBeverages => 'Напоі';

  @override
  String get catBakery => 'Выпечка';

  @override
  String get catOthers => 'Іншае';

  @override
  String get unitPack => 'упак';

  @override
  String get shareSubject => 'Спіс Пакупак';

  @override
  String get monthlyBudgetTitle => 'Месяцовы Бюджэт';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Выдаліць спіс';

  @override
  String get pantryItemRemoved => 'Элемент выдалены';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit элементаў трэба набыць',
      many: '$deficit элементаў трэба набыць',
      few: '$deficit элементы трэба набыць',
      one: '$deficit элемент трэба набыць',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Агулам кошык';

  @override
  String get restockLabel => 'Папоўніць';

  @override
  String get advancedFeatures => 'Пашыраныя функцыі';

  @override
  String get selectAll => 'Выбраць усе';

  @override
  String get deselectAll => 'Адмяніць выбар усіх';

  @override
  String get monthlyBudgetAppBar => 'Месяцовы Бюджэт';

  @override
  String get budgetEditTitle => 'Месяцовы Бюджэт';

  @override
  String get budgetDashboardTitle => 'Панэль кіравання';

  @override
  String get selectListForDashboard =>
      'Выберыце спіс для прагляду панэлі кіравання.';

  @override
  String get spendingAnalysis => 'Аналіз Выдаткаў';

  @override
  String get noItemsToAnalyze => 'Няма элементаў у спісе для аналізу.';

  @override
  String get markItemsToSeeAnalysis =>
      'Пазначце элементы як набытыя, каб убачыць аналіз.';

  @override
  String get totalSpending => 'Агульныя Выдаткі';

  @override
  String get spendingByCategory => 'Выдаткі па Катэгорыях';

  @override
  String get achievements => 'Дасягненні';

  @override
  String get exportPdfExcel => 'Экспартаваць PDF/Excel';

  @override
  String get exportPdf => 'Экспартаваць як PDF';

  @override
  String get exportExcel => 'Экспартаваць як Excel';

  @override
  String get organizingAi => 'АРГАНІЗАЦЫЯ З AI...';

  @override
  String get yesLabel => 'Так';

  @override
  String get noLabel => 'Не';

  @override
  String get shareListText => 'Мой Спіс Пакупак';

  @override
  String get emptyListAddItems =>
      'Ваш спіс пусты! Спачатку дадайце элементы. ℹ️';

  @override
  String get listOrganizedMagic => 'Спіс магічна арганізаваны па катэгорыях! ✨';

  @override
  String get shoppingMode => 'Рэжым Пакупак';

  @override
  String get smartOrganization => 'Разумная Арганізацыя';

  @override
  String get savings => 'Эканомія';

  @override
  String get shoppingModeHeader => 'РЭЖЫМ ПАКУПАК';

  @override
  String get shareAsText => 'Адправіць элементы як фарматаваны тэкст';

  @override
  String get shareRealtime => 'Сінхранізацыя ў рэальным часе з іншымі людзьмі';

  @override
  String get quickRecipe => 'Хуткі рэцэпт';

  @override
  String get quickRecipePrompt =>
      'Прапануйце рэцэпты з элементамі майго спісу.';

  @override
  String get economyTips => 'Парады па эканоміі';

  @override
  String get economyTipsPrompt => 'Як я магу зэканоміць на гэтай пакупцы?';

  @override
  String get organizeAisles => 'Арганізаваць па аддзелах';

  @override
  String get organizeAislesPrompt => 'Арганізаваць па крамных аддзелах.';

  @override
  String get recipeSuggestion => 'Прапанова рэцэпту';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining крэдытаў засталося';
  }

  @override
  String get addAllToList => 'Дадаць усё ў спіс';

  @override
  String get organizeByAisles => 'Арганізаваць па аддзелах';

  @override
  String get voiceTranscriptionTooltip => 'Галасавы набор (Бясплатна)';

  @override
  String get aiVoiceCommandTooltip => 'AI Галасавая Каманда (Premium)';

  @override
  String get voiceCommandTitle => 'AI Галасавая Каманда';

  @override
  String get voiceCommandContent =>
      'Размаўляйце натуральна, каб кіраваць вашым спісам!\n\nПрыклады:\n• \'Дадаць хлеб, сыр і вяндліну\'\n• \'Выдаліць пральны парашок\'\n• \'Змяніць тэму на сінюю\'\n\nГэта эксклюзіўная функцыя Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Паглядзець Планы';

  @override
  String get itemsAddedSuccess => 'Элементы паспяхова дададзены ў спіс!';

  @override
  String get viewList => 'Паглядзець спіс';

  @override
  String get feedbackTitle => 'Адправіць Зваротную Сувязь';

  @override
  String get feedbackPrompt => 'Што вы хацелі б падзяліцца?';

  @override
  String get feedbackTypeBug => 'Паведаміць Пра Памылку';

  @override
  String get feedbackTypeBugHint => 'Нешта не працуе';

  @override
  String get feedbackTypeSuggestion => 'Прапанова';

  @override
  String get feedbackTypeSuggestionHint => 'Ідэя па паляпшэнні праграмы';

  @override
  String get feedbackTypeTranslation => 'Праблема Перакладу';

  @override
  String get feedbackTypeTranslationHint => 'Няправільны або няўдалы пераклад';

  @override
  String get feedbackTypeFeature => 'Запыт Функцыі';

  @override
  String get feedbackTypeFeatureHint => 'Функцыя, якую вы хацелі б бачыць';

  @override
  String get feedbackTypeOther => 'Іншае';

  @override
  String get feedbackTypeOtherHint => 'Іншы тып зваротнай сувязі';

  @override
  String get feedbackHint => 'Апішыце вашу зваротную сувязь падрабязна...';

  @override
  String get feedbackSend => 'Адправіць Зваротную Сувязь';

  @override
  String get feedbackSending => 'Адпраўка...';

  @override
  String get feedbackThankYou => 'Дзякуй!';

  @override
  String get feedbackThankYouMessage =>
      'Ваша зваротная сувязь атрымана і дапамагае нам палепшыць Lista Plus для ўсіх.';

  @override
  String get feedbackBack => 'Назад';

  @override
  String feedbackError(String error) {
    return 'Памылка адпраўкі: $error';
  }

  @override
  String get feedbackRetry => 'Паўтарыць';

  @override
  String get feedbackSettingsTitle => 'Адправіць Зваротную Сувязь';

  @override
  String get feedbackSettingsSubtitle =>
      'Паведамляйце пра памылкі, прапаноўвайце паляпшэнні або выпраўляйце пераклады';

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
  String get openMenu => 'Адкрыць меню';

  @override
  String get viewRecipe => 'Паглядзець рэцэпт';

  @override
  String get recipeCreated => 'Рэцэпт створаны!';

  @override
  String get editRecipe => 'Рэдагаваць';

  @override
  String get deleteRecipe => 'Выдаліць';

  @override
  String get deleteRecipeConfirm => 'Выдаліць гэты рэцэпт?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Вы ўпэўнены, што хочаце выдаліць \"$recipeName\"? Гэта дзеянне немагчыма адмяніць.';
  }

  @override
  String get ingredients => 'Інгрэдыенты';

  @override
  String get instructions => 'Інструкцыі';

  @override
  String get prepTime => 'Час прыгатавання';

  @override
  String get recipeSaved => 'Рэцэпт захаваны!';

  @override
  String get noRecipesSaved => 'Няма захаваных рэцэптаў';

  @override
  String get noRecipesSavedHint =>
      'Стварыце свой першы ўласны рэцэпт, націснуўшы кнопку ніжэй.';

  @override
  String get myRecipes => 'Мае рэцэпты';

  @override
  String get newRecipe => 'Новы рэцэпт';

  @override
  String get loadingRecipes => 'Загрузка вашых рэцэптаў...';

  @override
  String get errorLoadingRecipes => 'Памылка загрузкі рэцэптаў';

  @override
  String get addIngredient => 'Дадаць інгрэдыент';

  @override
  String get saveRecipe => 'Захаваць';

  @override
  String get recipeName => 'Назва рэцэпту';

  @override
  String get shortDescription => 'Кароткі апісанне';

  @override
  String get prepTimeMinutes => 'Час прыгатавання (хвіліны)';

  @override
  String get instructionsHint => 'Увядзіце адзін крок у радку...';

  @override
  String get addPhoto => 'Дадаць фота';

  @override
  String get imageUrlPlaceholder => 'Або ўстаўце URL выявы';

  @override
  String get tags => 'Тэгі';

  @override
  String get recipeTags => 'Тэгі рэцэпту';

  @override
  String get suggestedTags => 'Прапанаваныя';

  @override
  String get searchRecipes => 'Пошук рэцэптаў...';

  @override
  String get filterByTag => 'Фільтраваць па тэгу';

  @override
  String get allTags => 'Усе';

  @override
  String get recipeDeleted => 'Рэцэпт выдалены';

  @override
  String get saveChanges => 'Захаваць змены';

  @override
  String get editRecipeTitle => 'Рэдагаваць рэцэпт';

  @override
  String get newRecipeTitle => 'Новы рэцэпт';

  @override
  String get requiredField => 'Абавязкова';

  @override
  String get chooseImageSource => 'Выберыце крыніцу выявы';

  @override
  String get gallery => 'Галерэя';

  @override
  String get enterUrl => 'Увядзіце URL';

  @override
  String get recipeImage => 'Выява рэцэпту';

  @override
  String get removeImage => 'Выдаліць выяву';

  @override
  String get mealPlannerTitle => 'План харчавання';

  @override
  String get mealPlannerViewMonthly => 'Месячны выгляд';

  @override
  String get mealPlannerViewWeekly => 'Тыднёвы выгляд';

  @override
  String get mealPlannerNoMeals => 'Няма запланаваных страў';

  @override
  String get mealPlannerNoMealsHint => 'Націсніце на дзень, каб дадаць страву';

  @override
  String get mealPlannerLoading => 'Загрузка плана харчавання...';

  @override
  String get mealPlannerError => 'Памылка загрузкі плана харчавання';

  @override
  String get mealPlannerAddMeal => 'Дадаць страву';

  @override
  String get mealPlannerEditMeal => 'Рэдагаваць страву';

  @override
  String get mealPlannerDeleteMeal => 'Выдаліць страву';

  @override
  String get mealPlannerMealDeleted => 'Страва выдалена';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count порцыі',
      many: '$count порцый',
      few: '$count порцыі',
      one: '$count порцыя',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Порцыі';

  @override
  String get mealPlannerNoteLabel => 'Нататка (неабавязкова)';

  @override
  String get mealPlannerSelectRecipe => 'Выберыце рэцэпт';

  @override
  String get mealPlannerSearchRecipes => 'Пошук рэцэптаў...';

  @override
  String get mealPlannerNoRecipesFound => 'Рэцэпты не знойдзены';

  @override
  String get mealPlannerNoRecipesHint =>
      'Спачатку стварыце рэцэпты ва ўкладцы \"Рэцэпты\"';

  @override
  String get mealPlannerSave => 'Дадаць у план';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'Запланавана $count з $total страў';
  }

  @override
  String get mealPlannerGenerateList => 'Стварыць спіс пакупак';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Дадаць усе інгрэдыенты з запланаваных страў на гэты тыдзень у ваш спіс пакупак?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count інгрэдыент(аў) дададзена ў ваш спіс!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Няма інгрэдыентаў для дадання. Спачатку заплануйце стравы з рэцэптамі.';

  @override
  String get mealPlannerGenerateListNoList => 'Спачатку стварыце спіс пакупак.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Сняданак';

  @override
  String get mealPlannerMealTypeLunch => 'Абед';

  @override
  String get mealPlannerMealTypeDinner => 'Вячэра';

  @override
  String get mealPlannerMealTypeSnack => 'Перакус';

  @override
  String get mealPlannerDateLabel => 'Дата';

  @override
  String get mealPlannerWeekEmpty => 'На гэты тыдзень нічога не запланавана';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Націсніце на любы дзень, каб пачаць планаваць сваё харчаванне!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes хв';
  }

  @override
  String get inviteToList => 'Invite to list';

  @override
  String get shareApp => 'Share app';

  @override
  String get shareAppDescription => 'Invite friends to use Lista Plus';
}
