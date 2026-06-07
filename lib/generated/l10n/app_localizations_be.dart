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
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Рэцэпты';

  @override
  String get navLists => 'Спісы';

  @override
  String get navMealPlanner => 'Меню';

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
  String get next => 'Далей';

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
  String get profile => 'Профіль';

  @override
  String get exitShoppingMode => 'Выйдзіце з рэжыму пакупак';

  @override
  String get exit => 'Выхад';

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
  String get languagePortuguese => 'партугальская (Бразілія)';

  @override
  String get languageEnglish => 'англійская';

  @override
  String get languageSystem => 'Сістэмная па змаўчанні';

  @override
  String get chooseLanguage => 'Выберыце мову';

  @override
  String get searchLanguage => 'Пошук мовы...';

  @override
  String get currency => 'Валюта';

  @override
  String get chooseCurrency => 'Выберыце Валюта';

  @override
  String get searchCurrency => 'Пошук валюты...';

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
  String get dynamicColorsEnabledWarning =>
      'Адключыце дынамічныя колеры, каб колер тэмы ўступіў у сілу';

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
  String get newChat => 'Новы чат';

  @override
  String get noHistory => 'Няма гісторыі чатаў';

  @override
  String get deleteSession => 'Выдаліць чат';

  @override
  String get deleteSessionConfirm =>
      'Вы ўпэўнены, што хочаце выдаліць гэты чат? Паведамленні будуць страчаны назаўсёды.';

  @override
  String get clearHistory => 'Ачысціць Гісторыю';

  @override
  String get clearHistoryConfirm => 'Ачысціць усе паведамленні ў гэтай сесіі?';

  @override
  String get chatHint => 'Напішыце паведамленне...';

  @override
  String get chatHintBlocked => 'Разблакіруйце штучны інтэлект для чата';

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
  String get aiLimitAlmostReached => 'Амаль скончыліся паведамленні AI';

  @override
  String get unlockAi => 'Адкрыйце неабмежаваны AI';

  @override
  String get aiTeaserFallback =>
      'Падпішыцеся на Premium, каб разблакіраваць поўны адказ і атрымаць неабмежаваную колькасць падказак AI для вашых пакупак...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Увайдзіце, каб разблакаваць\nпрэміум-функцыі';

  @override
  String get signInGoogle => 'Увайсці з Google';

  @override
  String get signInApple => 'Увайсці з Apple';

  @override
  String get continueAsGuest => 'Працягнуць як госць';

  @override
  String get onboardingWelcomeTitle => 'Сардэчна запрашаем у KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Самы разумны спосаб арганізаваць пакупкі і зэканоміць грошы.';

  @override
  String get onboardingSetupTitle => 'Персаналізуйце свой вопыт';

  @override
  String get onboardingSetupDesc =>
      'Выберыце, як вы хочаце, каб KipiList выглядаў і працаваў для вас.';

  @override
  String get onboardingLoginTitle => 'Захавайце ўсё ў воблаку';

  @override
  String get onboardingLoginDesc =>
      'Вашы даныя сінхранізуюцца на ўсіх вашых прыладах';

  @override
  String get onboardingShareTitle => 'Падзяліцеся з тымі, каго любіце';

  @override
  String get onboardingShareDesc =>
      'Сінхранізуйце спісы з сям\'ёй і сябрамі ў рэжыме рэальнага часу';

  @override
  String get onboardingPremiumTitle => 'Разблакіраваць усе функцыі';

  @override
  String get onboardingPremiumSubtitle =>
      'Атрымлівайце максімум ад вашых спісаў пакупак';

  @override
  String get onboardingAnnualBadge => 'Лепшае значэнне';

  @override
  String get onboardingMonthlyLabel => 'Штомесяц';

  @override
  String get onboardingAnnualLabel => 'Гадавы';

  @override
  String get onboardingViewAllPlans => 'Паглядзець усе планы';

  @override
  String get onboardingSubscribeCta => 'Падпісвайцеся';

  @override
  String get onboardingCancelAnytime =>
      'Скасаваць у любы час. Без абавязацельстваў.';

  @override
  String get onboardingContinueAsGuest => 'Працягнуць як госць';

  @override
  String get onboardingRestore => 'Аднавіць';

  @override
  String get onboardingRestoreDesc =>
      'У вас ужо ёсць падпіска? Націсніце тут, каб аднавіць яго.';

  @override
  String get onboardingExit => 'Выхад';

  @override
  String get onboardingPersonalizationTitle => 'Давайце з вамі пазнаёмімся';

  @override
  String get onboardingPersonalizationDesc =>
      'Мы будзем выкарыстоўваць гэта, каб персаналізаваць вашыя прапановы і зрабіць пакупкі больш разумнымі.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Якая ваша любімая ежа?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'напр. Піца, сушы, лажання...';

  @override
  String get onboardingPersonalizationCta => 'Працягнуць';

  @override
  String get onboardingPersonalizationSkip => 'Прапусціць пакуль';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Скажыце нам сваю любімую ежу, каб працягнуць';

  @override
  String get settingsDefaultScreen => 'Галоўны экран па змаўчанні';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Выбірайце спіс пакупак або чат AI';

  @override
  String get settingsScreenList => 'Спіс пакупак';

  @override
  String get settingsScreenChat => 'AI Чат';

  @override
  String loginError(String error) {
    return 'Памылка ўваходу: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Памылка загрузкі прапаноў. Паспрабуйце яшчэ раз.';

  @override
  String get paywallPurchaseError =>
      'Не атрымалася завяршыць куплю. Паспрабуйце яшчэ раз.';

  @override
  String get paywallRestoreError => 'Няма актыўнай падпіскі для аднаўлення.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ДЗЁН БЯСПЛАТНА';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ТЫДНЯ БЯСПЛАТНА',
      one: '$count ТЫДНЯ БЯСПЛАТНА',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count МЕСЯЦАЎ БЯСПЛАТНА',
      one: '$count МЕСЯЦАЎ БЯСПЛАТНА',
    );
    return '$_temp0';
  }

  @override
  String get paywallFeaturesTitle => 'Усё неабходнае:';

  @override
  String get paywallFeatureUnlimitedLists => 'Неабмежаваныя спісы';

  @override
  String get paywallFeatureSmartAI => 'Разумны штучны інтэлект';

  @override
  String get paywallFeatureExpenseControl => 'Кантроль выдаткаў';

  @override
  String get paywallFeatureSharing => 'Абмен';

  @override
  String get paywallBeforeAfterTitle => 'ШІ да і пасля:';

  @override
  String get paywallLabelCommon => 'Агульны';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'рысу';

  @override
  String get paywallBeforeItem2 => 'мыла';

  @override
  String get paywallBeforeItem3 => 'мяса';

  @override
  String get paywallBeforeItem4 => 'хлеб';

  @override
  String get paywallAfterItem1 => 'Збожжа';

  @override
  String get paywallAfterItem2 => 'Уборка';

  @override
  String get paywallAfterItem3 => 'мяса';

  @override
  String get paywallAfterItem4 => 'Пякарня';

  @override
  String get paywallTestimonialsTitle => 'Што кажуць нашы карыстальнікі:';

  @override
  String get paywallTestimonial1Name => 'Эн С.';

  @override
  String get paywallTestimonial1Text =>
      'ШІ арганізуе мае пакупкі за лічаныя секунды. Я эканомлю 20 хвілін на паездку на рынак.';

  @override
  String get paywallTestimonial2Name => 'Чарльз М.';

  @override
  String get paywallTestimonial2Text =>
      'Я ніколі больш не забываў пункт спісу. Чат AI - гэта сенсацыя!';

  @override
  String get paywallSocialProof => 'Карыстаюцца ім яшчэ 2400 сем\'яў';

  @override
  String get paywallCtaUnlock => 'Разблакіроўка PRO';

  @override
  String get paywallBestValue => 'ЛЕПШАЕ ЗНАЧЭННЕ';

  @override
  String get paywallMostPopular => 'САМЫЯ ПАПУЛЯРНЫЯ';

  @override
  String get paywallSafeCheckout => 'Бяспечная аплата';

  @override
  String get paywallSelectPlan => 'Выберыце свой план:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ЭКАНОМІЯ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Толькі $price/месяц';
  }

  @override
  String get paywallPackageAnnual => 'Гадавы план';

  @override
  String get paywallPackageMonthly => 'Месячны план';

  @override
  String get paywallPackageLifetime => 'Пажыццёвы доступ';

  @override
  String get paywallCancelAnytime =>
      'Скасаваць у любы час. Без абавязацельстваў.';

  @override
  String get paywallPolicy => 'Палітыка прыватнасці';

  @override
  String get paywallTerms => 'Умовы выкарыстання';

  @override
  String get paywallRestore => 'Аднавіць';

  @override
  String get paywallHeroHeadline => 'Kipi AI заўсёды побач з вамі';

  @override
  String get paywallHeroSubtitle =>
      'Дадавайце элементы, упарадкоўвайце спісы і эканомце час з AI у вашай кішэні';

  @override
  String get paywallBenefit1Desc =>
      'Дадае, упарадкоўвае і прапануе элементы 24/7';

  @override
  String get paywallBenefit2Desc => 'Няма абмежавання на 3 спісы';

  @override
  String get paywallBenefit3Desc => 'Адсочванне выдаткаў і сямейныя спісы';

  @override
  String get paywallPackageMonthlyDesc => 'Поўная гнуткасць';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Пачаць бясплатна — $days дзён';
  }

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
      'Размаўляйце натуральна, каб кіраваць вашым спісам!\n\nПрыклады:\n• \'Дадаць хлеб, сыр і вяндліну\'\n• \'Выдаліць пральны парашок\'\n• \'Змяніць тэму на сінюю\'\n\nГэта эксклюзіўная функцыя KipiList Premium.';

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
      'Ваша зваротная сувязь атрымана і дапамагае нам палепшыць KipiList для ўсіх.';

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
  String get aiEnergy => 'Энергія ІІ';

  @override
  String get searchInConversation => 'Пошук у размове...';

  @override
  String get noMessagesFound => 'Паведамленні не знойдзены';

  @override
  String get suggestedQuestions => 'Прапанаваныя пытанні:';

  @override
  String get shoppingAssistant => 'Гандлёвы памочнік';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased з $total набыта';
  }

  @override
  String get estimatedCost => 'Ацэначны';

  @override
  String get viewItems => 'Прагляд элементаў';

  @override
  String get noItemsInList => 'Няма элементаў у спісе';

  @override
  String get longHistoryWarning =>
      'Доўгая гісторыя: памочнік факусуюць на апошніх паведамленнях для лепшай прадукцыйнасці.';

  @override
  String get listening => 'Слуханне...';

  @override
  String get addDirectToList => 'Дадаць непасрэдна ў спіс';

  @override
  String get unlockFullResponse => 'Разблакіраваць поўны адказ';

  @override
  String get switchList => 'Пераключыць спіс';

  @override
  String get marketMode => 'Рынкавы рэжым';

  @override
  String get backToChat => 'Вярнуцца да чата';

  @override
  String get finishShopping => 'Скончыць пакупкі';

  @override
  String get welcomeAiAssistant => 'Вітаем у памочніку AI';

  @override
  String get createListToStartAi =>
      'Стварыце спіс пакупак, каб пачаць выкарыстоўваць разумны чат.';

  @override
  String get howCanIHelp => 'Чым я магу дапамагчы?';

  @override
  String get chatSubtitleShort => 'Пытайцеся пра цэны, рэцэпты, арганізацыю...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total набыта';
  }

  @override
  String get quickReplies => 'Хуткія адказы:';

  @override
  String get voiceProFeature =>
      'Пашыраныя галасавыя каманды - Pro. Уключэнне базавай дыктоўкі...';

  @override
  String get viewPro => 'Прагляд Pro';

  @override
  String get errorLoadingChat => 'Ой! Нешта пайшло не так пры загрузцы чата.';

  @override
  String get errorLoadingChatSubtitle =>
      'Праверце падключэнне або паўтарыце спробу пазней.';

  @override
  String get errorOscillation =>
      'Гэта можа адбыцца з-за ваганняў сеткі або часовай недаступнасці. Калі ласка, паспрабуйце яшчэ раз.';

  @override
  String get activeListening => 'Актыўнае слуханне';

  @override
  String get whatToDoWithItem => 'Што б вы хацелі зрабіць з гэтым прадметам?';

  @override
  String get viewDetails => 'Глядзець падрабязнасці';

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
  String get inviteToList => 'Запрашаем у спіс';

  @override
  String get shareApp => 'Падзяліцца праграмай';

  @override
  String get shareAppDescription => 'Запрасіце сяброў выкарыстоўваць KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Я выкарыстоўваю KipiList для арганізацыі пакупак! Спампуйце па маёй спасылцы, і мы абодва атрымаем 7 дзён прэміум бясплатна: $url';
  }

  @override
  String get shareReferralSubject => 'Атрымайце 7 дзён KipiList Premium!';

  @override
  String get gestureHint =>
      'Утрымлівайце, каб выбраць • Правядзіце, каб выдаліць';

  @override
  String get catalogTitle => 'Каталог';

  @override
  String get catalogMyFrequents => 'Мае наведвальнікі';

  @override
  String get catalogSearchGlobal => 'Шукайце любы прадукт...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Шукаць у $category...';
  }

  @override
  String get catalogSortPopular => 'Самая папулярная';

  @override
  String get catalogSortAZ => 'А–Я';

  @override
  String get catalogFilterNational => 'Грамадзяне';

  @override
  String get catalogRareSection => 'радзей у вашай краіне';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Дадаць $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Тавар не знойдзены, увядзіце назву';

  @override
  String get catalogBrowse => 'Праглядзіце каталог';
}
