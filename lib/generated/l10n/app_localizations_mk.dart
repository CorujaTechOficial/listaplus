// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get appTitle => 'Листа за шопинг';

  @override
  String get lists => 'Листи';

  @override
  String get pantry => 'Шпајз';

  @override
  String get navChat => 'Разговор';

  @override
  String get navRecipes => 'Рецепти';

  @override
  String get navLists => 'Листи';

  @override
  String get navMealPlanner => 'Мени';

  @override
  String get cancel => 'Откажи';

  @override
  String get save => 'Зачувај';

  @override
  String get create => 'Креирај';

  @override
  String get add => 'Додај';

  @override
  String get remove => 'Отстрани';

  @override
  String get delete => 'Избриши';

  @override
  String get edit => 'Уреди';

  @override
  String get copy => 'Копирај';

  @override
  String get next => 'Следно';

  @override
  String get retry => 'Обиди се повторно';

  @override
  String get regenerate => 'Регенерирај';

  @override
  String get copiedToClipboard => 'Копирано во клипборд';

  @override
  String get confirm => 'Потврди';

  @override
  String get close => 'Затвори';

  @override
  String get import => 'Увези';

  @override
  String get rename => 'Преименувај';

  @override
  String get upgrade => 'Надгради';

  @override
  String get clear => 'Исчисти';

  @override
  String error(String message) {
    return 'Грешка: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Грешка: $message';
  }

  @override
  String get purchaseError =>
      'Грешка при обработка на купувањето. Обидете се повторно.';

  @override
  String get restoreError =>
      'Грешка при враќање на купувањата. Обидете се повторно.';

  @override
  String get loading => 'Се вчитува...';

  @override
  String get fieldRequired => 'Задолжително поле';

  @override
  String get addedFeedback => 'Додадено!';

  @override
  String get profile => 'Профил';

  @override
  String get exitShoppingMode => 'Излезете од режимот на купување';

  @override
  String get exit => 'Излезете';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count избрани',
      one: '$count избрано',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Проценето';

  @override
  String get alreadyPurchased => 'Веќе купено';

  @override
  String get clearList => 'Исчисти листа';

  @override
  String get clearPurchased => 'Исчисти купено';

  @override
  String get share => 'Сподели';

  @override
  String get shareViaCode => 'Сподели преку код';

  @override
  String get importViaCode => 'Увези преку код';

  @override
  String get listAssistant => 'Асистент за листа';

  @override
  String get globalAssistant => 'Глобален асистент';

  @override
  String get becomePremium => 'Стани Premium';

  @override
  String get manageSubscription => 'Управувај со претплата';

  @override
  String get completePurchase => 'Заврши купување';

  @override
  String get confirmClearList => 'Да се отстранат сите ставки?';

  @override
  String get shareListTitle => 'Сподели листа';

  @override
  String get shareThisCode => 'Сподели го овој код:';

  @override
  String get validForLimitedTime => 'Важи ограничено време';

  @override
  String get importListTitle => 'Увези листа';

  @override
  String get enterCodeHint => 'Внесете го кодот';

  @override
  String get confirmArchiveTitle => 'Заврши купување';

  @override
  String get confirmArchiveContent =>
      'Да се заврши ова купување и да се архивира листата?';

  @override
  String get complete => 'Заврши';

  @override
  String get listArchived => 'Листата е успешно архивирана!';

  @override
  String listAdded(String listName) {
    return '$listName е додадена!';
  }

  @override
  String get buy => 'Купи';

  @override
  String get unmark => 'Одозначи';

  @override
  String confirmDeleteItems(int count) {
    return 'Да се отстранат $count ставка(и)?';
  }

  @override
  String get confirmDeleteTitle => 'Потврди';

  @override
  String confirmContent(int count) {
    return 'Да се отстранат $count ставка(и)?';
  }

  @override
  String get archiveList => 'Архивирај листа';

  @override
  String get pantryAppBar => 'Шпајз';

  @override
  String get generateShoppingList => 'Генерирај листа за шопинг';

  @override
  String get pantryEmpty => 'Празен шпајз';

  @override
  String get pantryEmptySubtitle =>
      'Додадете производи што сакате да ги чувате дома';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ставка(и) треба да се купат';
  }

  @override
  String get noItemsToBuy => 'Нема ставки што треба да се купат';

  @override
  String get newPantryList => 'Шопинг од шпајз';

  @override
  String get newListTitle => 'Нова листа за шопинг';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ставка(и) ќе бидат додадени';
  }

  @override
  String get listNameLabel => 'Име на листа';

  @override
  String listCreated(String name, int count) {
    return 'Листата \"$name\" е креирана со $count ставки';
  }

  @override
  String get noTracking => 'Нема следење';

  @override
  String get markAsPurchased => 'Означи како купено';

  @override
  String editPantryItem(String name) {
    return 'Уреди $name';
  }

  @override
  String get idealQuantity => 'Идеална количина';

  @override
  String get currentQuantity => 'Тековна количина';

  @override
  String get consumed => 'Потрошено';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name е надополнето на $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Да се отстрани \"$name\" од шпајзот?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Уреди $name';
  }

  @override
  String get scanProductTitle => 'Скенирајте го производот';

  @override
  String get positionBarcodeCenter => 'Поставете го бар-кодот во центарот';

  @override
  String get product => 'Производ';

  @override
  String get settingsAppBar => 'Поставки';

  @override
  String get language => 'Јазик';

  @override
  String get languagePortuguese => 'Португалски (Бразил)';

  @override
  String get languageEnglish => 'Англиски';

  @override
  String get languageSystem => 'Системски стандард';

  @override
  String get chooseLanguage => 'Изберете јазик';

  @override
  String get searchLanguage => 'Пребарај јазик...';

  @override
  String get currency => 'Валута';

  @override
  String get chooseCurrency => 'Изберете валута';

  @override
  String get searchCurrency => 'Пребарајте валута...';

  @override
  String get appearance => 'Изглед';

  @override
  String get light => 'Светло';

  @override
  String get system => 'Систем';

  @override
  String get dark => 'Темно';

  @override
  String get themeColor => 'Боја на тема';

  @override
  String get dynamicColors => 'Динамични бои';

  @override
  String get dynamicColorsSubtitle =>
      'Користете бои врз основа на вашата позадина';

  @override
  String get dynamicColorsEnabledWarning =>
      'Оневозможете динамички бои за да стапи на сила бојата на темата';

  @override
  String get finance => 'Финансии';

  @override
  String get monthlyBudgetNav => 'Месечен буџет';

  @override
  String get budgetSubtitle => 'Следете ја вашата месечна потрошувачка';

  @override
  String get data => 'Податоци';

  @override
  String get backupNav => 'Резервна копија';

  @override
  String get backupSubtitle => 'Извезете или увезете ги вашите податоци';

  @override
  String get about => 'За';

  @override
  String get version => 'Верзија';

  @override
  String get privacy => 'Приватност';

  @override
  String get termsOfUse => 'Услови на користење';

  @override
  String get myAchievements => 'Моите достигнувања';

  @override
  String get itemsPurchased => 'Купени артикли';

  @override
  String get totalSavings => 'Вкупно заштеди';

  @override
  String get currentStreak => 'Тековна низа';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дена',
      one: '$count ден',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Отклучени значки';

  @override
  String get badgeBeginner => 'Почетник';

  @override
  String get badgeOrganized => 'Организирано';

  @override
  String get badgeSavingMaster => 'Заштеда на мајстор';

  @override
  String get badgeSuperPlanner => 'Супер планер';

  @override
  String get backupTitle => 'Резервна копија';

  @override
  String get backupPremiumDescription =>
      'Резервна копија и извоз се Premium функција';

  @override
  String get exportData => 'Извези податоци';

  @override
  String get exportDataSubtitle => 'Зачувај ги сите листи како JSON';

  @override
  String get importData => 'Увези податоци';

  @override
  String get importDataSubtitle => 'Врати листи од JSON';

  @override
  String get importJsonTitle => 'Увези JSON';

  @override
  String get importJsonHint => 'Вметнете го резервниот JSON тука...';

  @override
  String get backupExported => 'Резервната копија е извезена!';

  @override
  String get budgetAppBar => 'Месечен буџет';

  @override
  String get budgetPremiumLocked => 'Глобалниот месечен буџет е Premium';

  @override
  String get budgetUpgradePrompt => 'Надгради за да отклучиш';

  @override
  String get noBudgetDefined => 'Нема поставен буџет';

  @override
  String totalEstimated(String amount) {
    return 'Вкупно проценето: $amount';
  }

  @override
  String get setBudgetButton => 'Постави буџет';

  @override
  String get budgetLists => 'Листи';

  @override
  String get budgetValueLabel => 'Износ';

  @override
  String get setBudgetTitle => 'Месечен буџет';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Сите';

  @override
  String get filterPending => 'Во очекување';

  @override
  String get filterPurchased => 'Купено';

  @override
  String get sortName => 'Име';

  @override
  String get sortCategory => 'Категорија';

  @override
  String get sortDate => 'Датум';

  @override
  String get sortManual => 'Рачно';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased од $total ставки';
  }

  @override
  String progressBudget(String amount) {
    return 'Буџет: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Вкупно: $amount';
  }

  @override
  String get addItem => 'Додај ставка';

  @override
  String get itemName => 'Име на ставка';

  @override
  String get quantityShort => 'Кол';

  @override
  String get unit => 'Единица';

  @override
  String get category => 'Категорија';

  @override
  String get estimatedPrice => 'Проценета цена';

  @override
  String get addItemPrice => 'Проценета цена';

  @override
  String get editItem => 'Уреди ставка';

  @override
  String get quantityFull => 'Количина';

  @override
  String get editItemPrice => 'Проценета цена';

  @override
  String get addToPantry => 'Додај во шпајз';

  @override
  String addToPantryPrompt(String name) {
    return 'Да се додаде \"$name\" во вашиот шпајз?';
  }

  @override
  String get yes => 'Да';

  @override
  String get productName => 'Име на производ';

  @override
  String get idealQty => 'Идеална количина';

  @override
  String get currentQty => 'Тековна количина';

  @override
  String get trackStock => 'Следи залиха';

  @override
  String get trackStockActive => 'Се појавува во предлози за шопинг';

  @override
  String get trackStockInactive => 'Не генерира предлог за шопинг';

  @override
  String get createListDialog => 'Креирај листа';

  @override
  String get renameListDialog => 'Преименувај листа';

  @override
  String get listHistory => 'Историја на листи';

  @override
  String get myLists => 'Мои листи';

  @override
  String get viewActive => 'Прегледај активни';

  @override
  String get viewHistory => 'Прегледај историја';

  @override
  String get noArchivedLists => 'Нема архивирани листи';

  @override
  String get noActiveLists => 'Нема активни листи';

  @override
  String completedOn(String date) {
    return 'Завршено на $date';
  }

  @override
  String get sharedLabel => 'Споделено';

  @override
  String get restore => 'Врати';

  @override
  String get removeSharedTooltip => 'Отстрани';

  @override
  String get deleteListTitle => 'Избриши листа';

  @override
  String deleteListContent(String name) {
    return 'Дали сте сигурни дека сакате да ја избришете \"$name\"? Сите ставки ќе бидат отстранети.';
  }

  @override
  String get removeSharedListTitle => 'Отстрани споделена листа';

  @override
  String removeSharedListContent(String name) {
    return 'Да се отстрани \"$name\" од вашите листи? Оригиналната листа нема да биде засегната.';
  }

  @override
  String get createNewList => 'Креирај нова листа';

  @override
  String get aiAssistant => 'AI Асистент';

  @override
  String get aiAssistantDescription =>
      'Добивајте паметни предлози, рецепти и персонализирани совети со нашиот AI асистент.';

  @override
  String get generalAssistant => 'Општ асистент';

  @override
  String get newChat => 'Нов разговор';

  @override
  String get noHistory => 'Нема историја на разговор';

  @override
  String get deleteSession => 'Избришете разговор';

  @override
  String get deleteSessionConfirm =>
      'Дали сте сигурни дека сакате да го избришете овој разговор? Пораките трајно ќе бидат изгубени.';

  @override
  String get clearHistory => 'Исчисти историја';

  @override
  String get clearHistoryConfirm =>
      'Да се исчистат сите пораки во оваа сесија?';

  @override
  String get chatHint => 'Напишете ја вашата порака...';

  @override
  String get chatHintBlocked =>
      'Отклучете ја вештачката интелигенција за разговор';

  @override
  String chatError(String error) {
    return 'Грешка при вчитување на разговорот: $error';
  }

  @override
  String get aiAssistantTitle => 'Асистент со вештачка интелигенција';

  @override
  String get closeSheet => 'Затвори';

  @override
  String get scanBarcodeTitle => 'Скенирај баркод';

  @override
  String get listHelp => 'Како можам да ви помогнам со вашата листа?';

  @override
  String get generalHelp => 'Како можам да ви помогнам со вашето шопинг денес?';

  @override
  String get chatSubtitle =>
      'Прашајте за предлози за ставки, рецепти или совети за заштеда.';

  @override
  String get aiError =>
      'За жал, се појави грешка при обработката на вашето барање. Проверете ја врската или обидете се подоцна.';

  @override
  String get aiLimitAlmostReached =>
      'Скоро немаше пораки со вештачка интелигенција';

  @override
  String get unlockAi => 'Отклучете неограничена вештачка интелигенција';

  @override
  String get aiTeaserFallback =>
      'Претплатете се на Premium за да го отклучите целосниот одговор и да добивате неограничени совети за вештачка интелигенција за купување...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Дејствата за вештачка интелигенција останаа овој месец - надградете неограничено';
  }

  @override
  String get aiUsageExhausted =>
      'Достигнато е месечно ограничување на вештачката интелигенција. Надградете на Pro за неограничено →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Најавете се за да отклучите\nPremium функции';

  @override
  String get signInGoogle => 'Најави се со Google';

  @override
  String get signInApple => 'Најави се со Apple';

  @override
  String get continueAsGuest => 'Продолжи како гостин';

  @override
  String get onboardingWelcomeTitle => 'Добредојдовте во KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Најпаметен начин да го организирате купувањето и да заштедите пари.';

  @override
  String get onboardingSetupTitle => 'Персонализирајте го вашето искуство';

  @override
  String get onboardingSetupDesc =>
      'Изберете како сакате KipiList да изгледа и да работи за вас.';

  @override
  String get onboardingLoginTitle => 'Зачувајте сè на облакот';

  @override
  String get onboardingLoginDesc =>
      'Вашите податоци се синхронизираат на сите ваши уреди';

  @override
  String get onboardingShareTitle => 'Споделете со оние што ги сакате';

  @override
  String get onboardingShareDesc =>
      'Синхронизирајте ги списоците со семејството и пријателите во реално време';

  @override
  String get onboardingPremiumTitle => 'Отклучете ги сите функции';

  @override
  String get onboardingPremiumSubtitle =>
      'Извлечете го максимумот од вашите списоци за купување';

  @override
  String get onboardingAnnualBadge => 'Најдобра вредност';

  @override
  String get onboardingMonthlyLabel => 'Месечно';

  @override
  String get onboardingAnnualLabel => 'Годишен';

  @override
  String get onboardingViewAllPlans => 'Погледнете ги сите планови';

  @override
  String get onboardingSubscribeCta => 'Претплатете се';

  @override
  String get onboardingCancelAnytime =>
      'Откажете во секое време. Без посветеност.';

  @override
  String get onboardingContinueAsGuest => 'Продолжете како гостин';

  @override
  String get onboardingRestore => 'Врати';

  @override
  String get onboardingRestoreDesc =>
      'Веќе имате претплата? Допрете овде за да го вратите.';

  @override
  String get onboardingMaybeLater => 'Можеби подоцна';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Еј $name, организирај го купувањето на вистински начин.';
  }

  @override
  String get onboardingSlide1Title => 'Паметни шопинг листи';

  @override
  String get onboardingSlide1Body =>
      'Креирајте и споделувајте списоци веднаш. Kipi додава ставки автоматски врз основа на вашите навики.';

  @override
  String get onboardingSlide2Title => 'Запознајте го Кипи';

  @override
  String get onboardingSlide2Body =>
      'Прашајте што било - креирајте списоци, најдете рецепти, следете ја вашата оставата, чајната кујна, планирајте ја вашата недела.';

  @override
  String get onboardingSlide3Title => 'Шпајз и планирање оброци';

  @override
  String get onboardingSlide3Body =>
      'Следете што имате, планирајте оброци и генерирајте списоци за купување автоматски.';

  @override
  String get onboardingExit => 'Излезете';

  @override
  String get onboardingPersonalizationTitle => 'Ајде да те запознаеме';

  @override
  String get onboardingPersonalizationDesc =>
      'Ќе го искористиме ова за да ги персонализираме вашите предлози и да го направиме купувањето попаметно.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Која е вашата омилена храна?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'на пр. Пица, суши, лазања...';

  @override
  String get onboardingPersonalizationCta => 'Продолжи';

  @override
  String get onboardingPersonalizationSkip => 'Засега прескокнете';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Кажете ни ја вашата омилена храна за да продолжиме';

  @override
  String get settingsDefaultScreen => 'Стандарден почетен екран';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Изберете помеѓу список за купување или разговор со вештачка интелигенција';

  @override
  String get settingsScreenList => 'Список за купување';

  @override
  String get settingsScreenChat => 'Разговор со вештачка интелигенција';

  @override
  String loginError(String error) {
    return 'Грешка при најава: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Грешка при вчитување на понудите. Обидете се повторно.';

  @override
  String get paywallPurchaseError =>
      'Не може да се заврши купувањето. Обидете се повторно.';

  @override
  String get paywallRestoreError =>
      'Не е пронајдена активна претплата за враќање.';

  @override
  String paywallTrialDays(Object days) {
    return '$days БЕСПЛАТНИ ДЕНА';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count НЕДЕЛИ БЕСПЛАТНИ',
      one: '$count НЕДЕЛА БЕСПЛАТНО',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count МЕСЕЦИ БЕСПЛАТНИ',
      one: '$count MONTH FREE',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Пробајте го KipiList Pro бесплатно 7 дена';

  @override
  String get paywallTrialSubtitle =>
      'Откажете во секое време. Без наплата денес.';

  @override
  String get paywallTrialCta => 'Започнете бесплатен пробен период';

  @override
  String get recipeAddToList => 'Додај во списокот за купување';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count состојки додадени во $listName';
  }

  @override
  String get noListSelected => 'Нема избрана листа. Прво отворете список.';

  @override
  String get paywallFeaturesTitle => 'Сè што ви треба:';

  @override
  String get paywallFeatureDescAssistant =>
      'Вештачката интелигенција автоматски ја организира вашата листа';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Направете онолку списоци колку што ви треба';

  @override
  String get paywallFeatureDescSharing => 'Купувајте заедно во реално време';

  @override
  String get paywallFeatureDescPantry => 'Следете што имате дома';

  @override
  String get paywallFeatureDescBudget => 'Останете на буџет секој месец';

  @override
  String get paywallFeatureUnlimitedLists => 'Неограничени списоци';

  @override
  String get paywallFeatureSmartAI => 'Паметна вештачка интелигенција';

  @override
  String get paywallFeatureExpenseControl => 'Контрола на трошоци';

  @override
  String get paywallFeatureSharing => 'Споделување';

  @override
  String get paywallBeforeAfterTitle => 'ВИ пред и потоа:';

  @override
  String get paywallLabelCommon => 'Заеднички';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'оризот';

  @override
  String get paywallBeforeItem2 => 'сапун';

  @override
  String get paywallBeforeItem3 => 'месо';

  @override
  String get paywallBeforeItem4 => 'леб';

  @override
  String get paywallAfterItem1 => 'Зрна';

  @override
  String get paywallAfterItem2 => 'Чистење';

  @override
  String get paywallAfterItem3 => 'Месо';

  @override
  String get paywallAfterItem4 => 'Пекара';

  @override
  String get paywallTestimonialsTitle => 'Што велат нашите корисници:';

  @override
  String get paywallTestimonial1Name => 'Ен С.';

  @override
  String get paywallTestimonial1Text =>
      'ВИ го организира мојот шопинг за неколку секунди. Заштедувам 20 мин по пазарно патување.';

  @override
  String get paywallTestimonial2Name => 'Чарлс М.';

  @override
  String get paywallTestimonial2Text =>
      'Никогаш повеќе не заборавив ставка од списокот. Разговорот за вештачка интелигенција е сензационален!';

  @override
  String get paywallSocialProof => 'Го користат +2.400 семејства';

  @override
  String get paywallCtaUnlock => 'Отклучете го PRO';

  @override
  String get paywallBestValue => 'НАЈДОБРА ВРЕДНОСТ';

  @override
  String get paywallMostPopular => 'НАЈПОПУЛАРНО';

  @override
  String get paywallProLabel => 'УЈП';

  @override
  String get paywallSafeCheckout => 'Безбедно плаќање';

  @override
  String get paywallSelectPlan => 'Изберете го вашиот план:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ЗАШТЕДИ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Само $price/месечно';
  }

  @override
  String get paywallPackageAnnual => 'Годишен план';

  @override
  String get paywallPackageMonthly => 'Месечен план';

  @override
  String get paywallPackageLifetime => 'Доживотен пристап';

  @override
  String get paywallCancelAnytime =>
      'Откажете во секое време. Без посветеност.';

  @override
  String paywallTrialInCard(int days) {
    return 'Првите $days дена БЕСПЛАТНО';
  }

  @override
  String get paywallSecuredByStore =>
      'Обезбедено со Google Play · Откажете во секое време';

  @override
  String get paywallPolicy => 'Политика за приватност';

  @override
  String get paywallTerms => 'Услови за користење';

  @override
  String get paywallRestore => 'Врати';

  @override
  String get paywallHeroHeadline => 'Kipi AI секогаш покрај вас';

  @override
  String get paywallHeroSubtitle =>
      'Додавајте ставки, организирајте списоци и заштедете време со вештачката интелигенција во вашиот џеб';

  @override
  String get paywallBenefit1Desc => 'Додава, организира и предлага ставки 24/7';

  @override
  String get paywallBenefit2Desc => 'Нема ограничување од 3 списоци';

  @override
  String get paywallBenefit3Desc => 'Следење на трошоци и семејни списоци';

  @override
  String get paywallPackageMonthlyDesc => 'Целосна флексибилност';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Започнете бесплатно - $days дена';
  }

  @override
  String get premiumUpgrade => 'Надгради за да отклучиш';

  @override
  String get itemRemoved => 'Ставката е отстранета';

  @override
  String get undo => 'Врати';

  @override
  String get emptyListTitle => 'Вашата листа е празна';

  @override
  String get emptyListSubtitle => 'Додајте ставки за да започнете';

  @override
  String get noListFoundTitle => 'Не се пронајдени листи';

  @override
  String get noListFoundSubtitle =>
      'Креирајте ја вашата прва листа за да започнете';

  @override
  String get createFirstList => 'Креирај прва листа';

  @override
  String get listBudgetTitle => 'Буџет на листа';

  @override
  String get budgetAmountLabel => 'Износ на буџет';

  @override
  String get removeBudget => 'Отстрани';

  @override
  String get prefUnlimitedLists => 'Неограничени листи';

  @override
  String get prefSharing => 'Споделување листи';

  @override
  String get prefFullHistory => 'Целосна историја';

  @override
  String get prefExportData => 'Извоз на податоци';

  @override
  String get prefCustomThemes => 'Прилагодени теми';

  @override
  String get prefMonthlyBudget => 'Глобален месечен буџет';

  @override
  String get prefAIAssistant => 'Личен AI асистент';

  @override
  String get prefUnlimitedPantry => 'Неограничен шпајз';

  @override
  String get prefInteractiveArtifacts => 'Интерактивни AI Artifacts';

  @override
  String get themeGreen => 'Зелена';

  @override
  String get themeBlue => 'Сина';

  @override
  String get themePurple => 'Виолетова';

  @override
  String get themeRed => 'Црвена';

  @override
  String get themeOrange => 'Портокалова';

  @override
  String get themePink => 'Розова';

  @override
  String get themeIndigo => 'Индиго';

  @override
  String get themeAmber => 'Килибарна';

  @override
  String get themeTeal => 'Тиркизна';

  @override
  String get themeBrown => 'Кафеава';

  @override
  String get catFruits => 'Овошје';

  @override
  String get catCleaning => 'Чистење';

  @override
  String get catBeverages => 'Пијалоци';

  @override
  String get catBakery => 'Пекарница';

  @override
  String get catOthers => 'Друго';

  @override
  String get unitPack => 'пакување';

  @override
  String get shareSubject => 'Листа за шопинг';

  @override
  String get monthlyBudgetTitle => 'Месечен буџет';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Избриши листа';

  @override
  String get pantryItemRemoved => 'Ставката е отстранета';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit ставки треба да се купат',
      one: '$deficit ставка треба да се купи',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Вкупно во кошничка';

  @override
  String get restockLabel => 'Надополни';

  @override
  String get advancedFeatures => 'Напредни функции';

  @override
  String get selectAll => 'Избери ги сите';

  @override
  String get deselectAll => 'Одбери ги сите';

  @override
  String get monthlyBudgetAppBar => 'Месечен буџет';

  @override
  String get budgetEditTitle => 'Месечен буџет';

  @override
  String get budgetDashboardTitle => 'Табла';

  @override
  String get selectListForDashboard =>
      'Изберете листа за да ја видите таблата.';

  @override
  String get spendingAnalysis => 'Анализа на потрошувачка';

  @override
  String get noItemsToAnalyze => 'Нема ставки во листата за анализа.';

  @override
  String get markItemsToSeeAnalysis =>
      'Означете ги ставките како купени за да ја видите анализата.';

  @override
  String get totalSpending => 'Вкупно потрошено';

  @override
  String get spendingByCategory => 'Потрошувачка по категорија';

  @override
  String get achievements => 'Достигнувања';

  @override
  String get exportPdfExcel => 'Извези PDF/Excel';

  @override
  String get exportPdf => 'Извези како PDF';

  @override
  String get exportExcel => 'Извези како Excel';

  @override
  String get organizingAi => 'СЕ ОРГАНИЗИРА СО AI...';

  @override
  String get yesLabel => 'Да';

  @override
  String get noLabel => 'Не';

  @override
  String get shareListText => 'Моја листа за шопинг';

  @override
  String get emptyListAddItems => 'Вашата листа е празна! Прво додајте ставки.';

  @override
  String get listOrganizedMagic => 'Листата магично организирана по категории!';

  @override
  String get shoppingMode => 'Режим на шопинг';

  @override
  String get smartOrganization => 'Паметна организација';

  @override
  String get savings => 'Заштеди';

  @override
  String get shoppingModeHeader => 'РЕЖИМ НА ШОПИНГ';

  @override
  String get shareAsText => 'Испрати ставки како форматиран текст';

  @override
  String get shareRealtime => 'Синхронизација во реално време со други луѓе';

  @override
  String get quickRecipe => 'Брз рецепт';

  @override
  String get quickRecipePrompt => 'Предложи рецепти со ставки од мојата листа.';

  @override
  String get economyTips => 'Совети за заштеда';

  @override
  String get economyTipsPrompt =>
      'Како можам да заштедам пари на ова купување?';

  @override
  String get organizeAisles => 'Организирај по патеки';

  @override
  String get organizeAislesPrompt => 'Организирај по пазарни патеки.';

  @override
  String get recipeSuggestion => 'Предлог за рецепт';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Преостанати $remaining кредити';
  }

  @override
  String get addAllToList => 'Додај ги сите во листа';

  @override
  String get organizeByAisles => 'Организирај по патеки';

  @override
  String get voiceTranscriptionTooltip => 'Говорно пишување (Бесплатно)';

  @override
  String get aiVoiceCommandTooltip => 'AI гласовна команда (Premium)';

  @override
  String get voiceCommandTitle => 'AI гласовна команда';

  @override
  String get voiceCommandContent =>
      'Зборувајте природно за да управувате со вашата листа!\n\nПримери:\n• \'Додај леб, сирење и шунка\'\n• \'Отстрани детергент за алишта\'\n• \'Промени ја темата во сина\'\n\nОва е ексклузивна функција на KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Прегледај планови';

  @override
  String get itemsAddedSuccess => 'Ставките се успешно додадени во листата!';

  @override
  String get viewList => 'Прегледај листа';

  @override
  String get feedbackTitle => 'Испрати повратна информација';

  @override
  String get feedbackPrompt => 'Што би сакале да споделите?';

  @override
  String get feedbackTypeBug => 'Пријави грешка';

  @override
  String get feedbackTypeBugHint => 'Нешто не работи';

  @override
  String get feedbackTypeSuggestion => 'Предлог';

  @override
  String get feedbackTypeSuggestionHint =>
      'Идеја за подобрување на апликацијата';

  @override
  String get feedbackTypeTranslation => 'Проблем со превод';

  @override
  String get feedbackTypeTranslationHint => 'Неточен или незгоден превод';

  @override
  String get feedbackTypeFeature => 'Барање за функција';

  @override
  String get feedbackTypeFeatureHint => 'Функција која би сакале да ја видите';

  @override
  String get feedbackTypeOther => 'Друго';

  @override
  String get feedbackTypeOtherHint => 'Друг тип на повратна информација';

  @override
  String get feedbackHint =>
      'Опишете ја вашата повратна информација детално...';

  @override
  String get feedbackSend => 'Испрати повратна информација';

  @override
  String get feedbackSending => 'Се испраќа...';

  @override
  String get feedbackThankYou => 'Ви благодариме!';

  @override
  String get feedbackThankYouMessage =>
      'Вашата повратна информација е примена и ни помага да го подобриме KipiList за сите.';

  @override
  String get feedbackBack => 'Назад';

  @override
  String feedbackError(String error) {
    return 'Грешка при испраќање: $error';
  }

  @override
  String get feedbackRetry => 'Обиди се повторно';

  @override
  String get feedbackSettingsTitle => 'Испрати повратна информација';

  @override
  String get feedbackSettingsSubtitle =>
      'Пријавете грешки, предложете подобрувања или поправете преводи';

  @override
  String get aiEnergy => 'AI енергија';

  @override
  String get searchInConversation => 'Барај во разговор...';

  @override
  String get noMessagesFound => 'Не се најдени пораки';

  @override
  String get suggestedQuestions => 'Предложени прашања:';

  @override
  String get shoppingAssistant => 'Асистентка за купување';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'купени $purchased од $total';
  }

  @override
  String get estimatedCost => 'Проценето';

  @override
  String get viewItems => 'Прикажи ставки';

  @override
  String get noItemsInList => 'Нема ставки во списокот';

  @override
  String get longHistoryWarning =>
      'Долга историја: асистентот се фокусира на најновите пораки за подобри перформанси.';

  @override
  String get listening => 'Слушање...';

  @override
  String get addDirectToList => 'Додадете директно во списокот';

  @override
  String get unlockFullResponse => 'Отклучете го целосниот одговор';

  @override
  String get switchList => 'Префрли листа';

  @override
  String get marketMode => 'Пазарен режим';

  @override
  String get backToChat => 'Назад на разговор';

  @override
  String get finishShopping => 'Заврши шопинг';

  @override
  String get welcomeAiAssistant => 'Добре дојдовте во AI Assistant';

  @override
  String get createListToStartAi =>
      'Создадете список за купување за да започнете да го користите паметниот разговор.';

  @override
  String get howCanIHelp => 'Како можам да помогнам?';

  @override
  String get chatSubtitleShort => 'Прашајте за цени, рецепти, организација...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return 'Купени $purchased/$total';
  }

  @override
  String get quickReplies => 'Брзи одговори:';

  @override
  String get voiceProFeature =>
      'Напредните гласовни команди се Pro. Овозможување основен диктат...';

  @override
  String get viewPro => 'Прикажи Про';

  @override
  String get errorLoadingChat =>
      'Упс! Нешто тргна наопаку при вчитувањето на разговорот.';

  @override
  String get errorLoadingChatSubtitle =>
      'Проверете ја врската или обидете се повторно подоцна.';

  @override
  String get errorOscillation =>
      'Ова може да се случи поради осцилации на мрежата или привремена недостапност. Ве молиме обидете се повторно.';

  @override
  String get activeListening => 'Активно слушање';

  @override
  String get whatToDoWithItem => 'Што би сакале да направите со оваа ставка?';

  @override
  String get viewDetails => 'Погледнете ги деталите';

  @override
  String get openMenu => 'Отвори мени';

  @override
  String get viewRecipe => 'Види рецепт';

  @override
  String get recipeCreated => 'Рецептот е креиран!';

  @override
  String get editRecipe => 'Уреди';

  @override
  String get deleteRecipe => 'Избриши';

  @override
  String get deleteRecipeConfirm => 'Избриши го овој рецепт?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Дали сте сигурни дека сакате да го избришете \"$recipeName\"? Оваа акција не може да се врати.';
  }

  @override
  String get ingredients => 'Состојки';

  @override
  String get instructions => 'Инструкции';

  @override
  String get prepTime => 'Време за подготовка';

  @override
  String get recipeSaved => 'Рецептот е зачуван!';

  @override
  String get noRecipesSaved => 'Нема зачувани рецепти';

  @override
  String get noRecipesSavedHint =>
      'Креирајте го вашиот прв сопствен рецепт со допирање на копчето подолу.';

  @override
  String get myRecipes => 'Мои рецепти';

  @override
  String get newRecipe => 'Нов рецепт';

  @override
  String get loadingRecipes => 'Се вчитуваат вашите рецепти...';

  @override
  String get errorLoadingRecipes => 'Грешка при вчитување на рецептите';

  @override
  String get addIngredient => 'Додај состојка';

  @override
  String get saveRecipe => 'Зачувај';

  @override
  String get recipeName => 'Име на рецептот';

  @override
  String get shortDescription => 'Краток опис';

  @override
  String get prepTimeMinutes => 'Време за подготовка (минути)';

  @override
  String get instructionsHint => 'Напишете еден чекор по линија...';

  @override
  String get addPhoto => 'Додај фотографија';

  @override
  String get imageUrlPlaceholder => 'Или вметнете URL на слика';

  @override
  String get tags => 'Ознаки';

  @override
  String get recipeTags => 'Ознаки на рецептот';

  @override
  String get suggestedTags => 'Предложено';

  @override
  String get searchRecipes => 'Пребарај рецепти...';

  @override
  String get filterByTag => 'Филтрирај по ознака';

  @override
  String get allTags => 'Сите';

  @override
  String get recipeDeleted => 'Рецептот е избришан';

  @override
  String get saveChanges => 'Зачувај промени';

  @override
  String get editRecipeTitle => 'Уреди рецепт';

  @override
  String get newRecipeTitle => 'Нов рецепт';

  @override
  String get requiredField => 'Задолжително';

  @override
  String get chooseImageSource => 'Изберете извор на слика';

  @override
  String get gallery => 'Галерија';

  @override
  String get enterUrl => 'Внесете URL';

  @override
  String get recipeImage => 'Слика од рецептот';

  @override
  String get removeImage => 'Отстрани слика';

  @override
  String get mealPlannerTitle => 'Планер за оброци';

  @override
  String get mealPlannerViewMonthly => 'Месечен преглед';

  @override
  String get mealPlannerViewWeekly => 'Неделен преглед';

  @override
  String get mealPlannerNoMeals => 'Нема планирани оброци';

  @override
  String get mealPlannerNoMealsHint => 'Допрете на ден за да додадете оброк';

  @override
  String get mealPlannerLoading => 'Се вчитува планот за оброци...';

  @override
  String get mealPlannerError => 'Грешка при вчитување на планот за оброци';

  @override
  String get mealPlannerAddMeal => 'Додај оброк';

  @override
  String get mealPlannerEditMeal => 'Уреди оброк';

  @override
  String get mealPlannerDeleteMeal => 'Отстрани оброк';

  @override
  String get mealPlannerMealDeleted => 'Оброкот е отстранет';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count порции',
      one: '$count порција',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Порции';

  @override
  String get mealPlannerNoteLabel => 'Забелешка (опционално)';

  @override
  String get mealPlannerSelectRecipe => 'Изберете рецепт';

  @override
  String get mealPlannerSearchRecipes => 'Пребарај рецепти...';

  @override
  String get mealPlannerNoRecipesFound => 'Не се пронајдени рецепти';

  @override
  String get mealPlannerNoRecipesHint =>
      'Прво креирајте рецепти во табот Рецепти';

  @override
  String get mealPlannerSave => 'Додај во план';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count од $total оброци планирани';
  }

  @override
  String get mealPlannerGenerateList => 'Генерирај листа за шопинг';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Да се додадат сите состојки од планираните оброци за оваа недела во вашата листа за шопинг?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count состојка(и) додадени во вашата листа!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Нема состојки за додавање. Прво планирајте некои оброци со рецепти.';

  @override
  String get mealPlannerGenerateListNoList => 'Прво креирајте листа за шопинг.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Појадок';

  @override
  String get mealPlannerMealTypeLunch => 'Ручек';

  @override
  String get mealPlannerMealTypeDinner => 'Вечера';

  @override
  String get mealPlannerMealTypeSnack => 'Ужина';

  @override
  String get mealPlannerDateLabel => 'Датум';

  @override
  String get mealPlannerWeekEmpty => 'Ништо не е планирано за оваа недела';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Допрете на кој било ден за да започнете со планирање на вашите оброци!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes мин';
  }

  @override
  String get inviteToList => 'Покани на список';

  @override
  String get shareApp => 'Споделете ја апликацијата';

  @override
  String get shareAppDescription =>
      'Поканете ги пријателите да користат KipiList';

  @override
  String shareReferralText(String url) {
    return 'Го користам KipiList за да го организирам моето купување! Преземете преку мојот линк и двајцата добиваме 7 дена Premium бесплатно: $url';
  }

  @override
  String get shareReferralSubject => 'Добијте 7 дена KipiList Premium!';

  @override
  String get gestureHint =>
      'Држете за да изберете • Повлечете за да отстраните';

  @override
  String get catalogTitle => 'Каталог';

  @override
  String get catalogMyFrequents => 'Мои фреквенции';

  @override
  String get catalogSearchGlobal => 'Пребарајте кој било производ...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Пребарајте во $category...';
  }

  @override
  String get catalogSortPopular => 'Најпопуларни';

  @override
  String get catalogSortAZ => 'А–З';

  @override
  String get catalogFilterNational => 'Националните';

  @override
  String get catalogRareSection => 'поретко во вашата земја';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Додајте $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Производот не е пронајден, напишете го името';

  @override
  String get catalogBrowse => 'Прелистајте го каталогот';

  @override
  String get offlineBanner => 'Вие сте офлајн';

  @override
  String get consentTitle => 'Приватност и аналитика';

  @override
  String get consentBody =>
      'KipiList користи Firebase Analytics за да го подобри вашето искуство. Вашите податоци се обработуваат според нашата Политика за приватност.';

  @override
  String get consentAccept => 'Прифати';

  @override
  String get consentDecline => 'Не, благодарам';

  @override
  String get mealPlannerPantryAllAvailable => 'На залиха';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count недостигаат ставки',
      one: '$count недостасува ставка',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Датум на истекување';

  @override
  String get notInformed => 'Не е информиран';

  @override
  String get skip => 'Прескокни';

  @override
  String get onboardingAiTitle => 'Разговарајте со Кипи';

  @override
  String get onboardingAiGreeting =>
      'Здраво! Јас сум Кипи, твојот личен асистент за купување! 🛒';

  @override
  String get onboardingAiAskName => 'Како се викаш?';

  @override
  String get onboardingAiNameHint => 'Напишете го вашето име...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Мило ми е што те запознав, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Која е вашата омилена храна?';

  @override
  String get onboardingAiFoodHint => 'на пр. Пица, суши...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Одлични избори! Еве што би додала на вашата листа:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Дали ова изгледа добро? Обидете се да напишете нешто друго!';

  @override
  String get onboardingAiReady =>
      'Одлично! Подготвени сте да започнете. Ајде да ја поставиме вашата сметка!';

  @override
  String get onboardingAiContinue => 'Продолжи →';

  @override
  String get connectionError => 'Грешка во врската';

  @override
  String connectionErrorDesc(String error) {
    return 'Грешка: $error';
  }

  @override
  String get errorLoadingLists => 'Грешка при вчитување списоци';

  @override
  String get noListsFound => 'Не се пронајдени списоци';

  @override
  String get backToToday => 'Назад кон денес';

  @override
  String get quickSuggestions => 'Брзи предлози';

  @override
  String get aiEnergyLow => 'Ниска ВИ енергија';

  @override
  String get aiUnlockUnlimited =>
      'Отклучете неограничена вештачка интелигенција';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 денес';
  }

  @override
  String get aiSubscribeUnlimited =>
      'Претплатете се за неограничена вештачка интелигенција';

  @override
  String get unlockWithAd => 'Отклучи со реклама';

  @override
  String get conversationHistoryTitle => 'Историја на разговори';

  @override
  String get noConversationsFound => 'Не се пронајдени разговори';

  @override
  String get errorLoadingHistory => 'Грешка при вчитување на историјата';

  @override
  String get deleteConversationTitle => 'Избриши разговор';

  @override
  String get deleteConversationConfirm => 'Ова дејство не може да се врати.';

  @override
  String get deleteConversation => 'Избриши';

  @override
  String get subscription => 'Претплата';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle => 'Отклучете го Premium';

  @override
  String get loadingSubscription => 'Се вчитува претплатата...';

  @override
  String get errorLoadingSubscription => 'Грешка при вчитување на претплатата';

  @override
  String get profileSection => 'Профил';

  @override
  String get myProfile => 'Мојот профил';

  @override
  String get profileSubtitle => 'Информации за вашиот профил';

  @override
  String get customizeAiAssistant =>
      'Приспособете го помошникот за вештачка интелигенција';

  @override
  String get assistantHistory => 'Историја на асистент';

  @override
  String get assistantHistorySubtitle =>
      'Погледнете ја вашата историја на разговори';

  @override
  String get manageCategories => 'Управувајте со категориите';

  @override
  String get manageCategoriesSubtitle =>
      'Додавање, уредување или отстранување категории';

  @override
  String get customizeAssistant => 'Прилагодете';

  @override
  String get assistantName => 'Име на асистентот';

  @override
  String get chooseIcon => 'Изберете икона';

  @override
  String get profileSaved => 'Профилот е зачуван';

  @override
  String get errorSavingProfile => 'Грешка при зачувување на профилот';

  @override
  String get userProfile => 'Кориснички профил';

  @override
  String get profileDescription => 'Опис на профилот';

  @override
  String get preferredMarket => 'Префериран пазар';

  @override
  String get preferredMarketHint => 'Каде најчесто купувате?';

  @override
  String get dietaryRestrictions => 'Ограничувања во исхраната';

  @override
  String get dietaryRestrictionsHint =>
      'Дали има некои ограничувања во исхраната?';

  @override
  String get marketsToAvoid => 'Пазари за избегнување';

  @override
  String get marketsToAvoidHint => 'Пазари од кои претпочитате да не купувате';

  @override
  String get observations => 'Набљудувања';

  @override
  String get observationsHint => 'Некои дополнителни забелешки?';

  @override
  String get saveProfile => 'Зачувај профил';

  @override
  String get everythingReady => 'Сè е подготвено!';

  @override
  String get youCompletedList => 'Го комплетиравте списокот!';

  @override
  String get selectCheaperAlternative => 'Изберете поевтина алтернатива';

  @override
  String get suggestedItems => 'Предложени ставки';

  @override
  String get swapped => 'Заменет';

  @override
  String get swap => 'Заменете';

  @override
  String get chooseThemeColor => 'Изберете боја на тема';

  @override
  String get manageCategoriesTitle => 'Управувајте со категории';

  @override
  String get categoryLimitReached =>
      'Достигнато е ограничувањето на категоријата';

  @override
  String get deleteCategoryTitle => 'Избриши категорија';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Ставките во „$category“ ќе бидат преместени во „Други“.\nПродолжи?';
  }

  @override
  String get deleteCategory => 'Избриши';

  @override
  String get newCategoryDialog => 'Нова категорија';

  @override
  String get editCategoryDialog => 'Уреди категорија';

  @override
  String get categoryName => 'Име на категоријата';

  @override
  String get categoryNameHint => 'Внесете име на категоријата';

  @override
  String get categoryColorLabel => 'Боја';

  @override
  String get categoryIconLabel => 'Икона';

  @override
  String itemAddedSnack(String name) {
    return 'додаде $name';
  }

  @override
  String get kipiQuickBarHint => 'Што треба да купите?';

  @override
  String replaceItem(String item) {
    return 'Замени $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit - $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Никогаш повеќе не заборавајте на намирници';

  @override
  String get onboardingGoalSaveMoney => 'Заштедете пари';

  @override
  String get onboardingGoalNeverForget => 'Никогаш не заборавајте предмети';

  @override
  String get onboardingGoalFaster => 'Купувајте побрзо';

  @override
  String get onboardingGoalFamily => 'Организирајте семеен шопинг';

  @override
  String get onboardingGoalRecipes => 'Откријте рецепти';

  @override
  String get onboardingGoalPantry => 'Песна оставата, чајната кујна';

  @override
  String get onboardingCommitmentsTitle => 'Што ти е важно?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Изберете ги вашите цели за да го персонализирате KipiList';

  @override
  String get onboardingCommitmentsCta => 'Ајде да одиме!';

  @override
  String get onboardingPersonalizationNameLabel => 'Вашето име';

  @override
  String get onboardingPersonalizationNameHint => 'Внесете го вашето име';

  @override
  String get onboardingPersonalizationCategoryTitle => 'За што купувате?';

  @override
  String get onboardingPersonalizationGroupTitle => 'За кого купувате?';

  @override
  String get onboardingCategoryGrocery => 'Намирници';

  @override
  String get onboardingCategoryPharmacy => 'Аптека';

  @override
  String get onboardingCategoryRecipes => 'Рецепти';

  @override
  String get onboardingCategoryHome => 'Дома';

  @override
  String get onboardingCategoryPet => 'Милениче';

  @override
  String get onboardingGroupSolo => 'Само јас';

  @override
  String get onboardingGroupCouple => 'Двојка';

  @override
  String get onboardingGroupFamily => 'Семејство';

  @override
  String get onboardingLoadingTitle => 'Подготвувајќи го вашето искуство...';

  @override
  String get onboardingLoadingStep1 => 'Анализирајќи ги вашите преференции...';

  @override
  String get onboardingLoadingStep2 =>
      'Поставување помошник за вештачка интелигенција...';

  @override
  String get onboardingLoadingStep3 => 'Речиси готов...';

  @override
  String get onboardingLoadingStat1Label => 'Каталогизирани артикли';

  @override
  String get onboardingLoadingStat2Label => 'Корисниците помогнаа';

  @override
  String get onboardingLoadingStat3Label => 'Зачувани минути';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, заштедете на секое патување!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, никогаш не заборавајте ставка!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, купувајте за половина од времето!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, организирајте семеен шопинг!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, откријте нови рецепти!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, следете ја вашата оставата, чајната кујна совршено!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Заштедете на секое патување!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Никогаш не заборавајте некој предмет!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'Купувајте за половина од времето!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Организирајте семеен шопинг!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Откријте нови рецепти!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Следете ја вашата оставата, чајната кујна совршено!';

  @override
  String paywallPricePerDay(String price) {
    return 'Само $price/ден - помалку од кафе';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Засега прескокнете';

  @override
  String get paywallTestimonial =>
      'ВИ го организира мојот шопинг за неколку секунди. Заштедувам 20 мин по патување.';

  @override
  String get paywallTestimonialAuthor => 'Ен С.';

  @override
  String get paywallTrialDisclaimer =>
      'Откажете во секое време · Без наплата додека не заврши пробниот период';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Еј $name! Што $category ви треба?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Што $category ви треба?';
  }

  @override
  String get onboardingAiDemoYes => 'Да!';

  @override
  String get onboardingAiDemoReaction => 'Убаво!';

  @override
  String get onboardingAiDemoChange => 'Променете ја ставката';

  @override
  String get onboardingAiDemoOffer => 'Обидете се да напишете нешто друго!';

  @override
  String get onboardingAiDemoContinue => 'Продолжи';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Вашата листа за купување, сега со вештачка интелигенција';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Погледнете како Кипи ја создава вашата целосна листа за неколку секунди';

  @override
  String get onboardingAiDemoSlideCta => 'Сакам ова! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Домаќим на скара 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'Подготвени! Еве се што ви треба:';

  @override
  String get onboardingAiDemoSlideDone => 'Комплетна листа за секунди ✨';

  @override
  String get onboardingPainTitle => 'Што најмногу те фрустрира?';

  @override
  String get onboardingPainSubtitle =>
      'Бидете искрени - ние ќе го поправиме секој од нив';

  @override
  String get onboardingPainCta => 'Да, поправете ми го ова →';

  @override
  String get onboardingPainForget => 'Заборавам предмети во продавницата';

  @override
  String get onboardingPainFamily =>
      'Моето семејство никогаш не го гледа списокот';

  @override
  String get onboardingPainOverspend => 'Секогаш одам преку буџетот';

  @override
  String get onboardingPainRepeat => 'Едно патување никогаш не е доволно';

  @override
  String get aiWelcomeContent =>
      'Здраво! 👋 Јас сум **Кипи**, вашиот личен асистент за купување и рецепти!\n\nЈас сум тука да ти помогнам:\n🛒 **Организирајте го** вашето купување по категории автоматски\n💰 **Следете го** вашиот буџет и давајте совети за заштеда на пари\n🍲 **Предложете** вкусни рецепти со она што веќе го имате\n\nКако можам да ви помогнам денес? Можете да започнете со креирање на вашата прва листа!';

  @override
  String get aiWelcomeSuggestCreateList => 'Направете ја мојата прва листа';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Кипи, помогни ми да ја креирам мојата прва листа за купување';

  @override
  String get aiWelcomeSuggestSave => 'Како да заштедите пари?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Кипи, како можеш да ми помогнеш да заштедам пари на намирници?';

  @override
  String get suggestionMilk => 'Млеко';

  @override
  String get suggestionBread => 'Леб';

  @override
  String get suggestionEggs => 'Јајца';

  @override
  String get suggestionCoffee => 'Кафе';

  @override
  String get suggestionRice => 'Ориз';

  @override
  String get suggestionFruits => 'Овошје';
}

/// The translations for Macedonian, as used in North Macedonia (`mk_MK`).
class AppLocalizationsMkMk extends AppLocalizationsMk {
  AppLocalizationsMkMk() : super('mk_MK');

  @override
  String get appTitle => 'Листа за купување';

  @override
  String get lists => 'Листи';

  @override
  String get pantry => 'Остава';

  @override
  String get navChat => 'Разговор';

  @override
  String get navRecipes => 'Рецепти';

  @override
  String get navLists => 'Листи';

  @override
  String get navMealPlanner => 'Мени';

  @override
  String get cancel => 'Откажи';

  @override
  String get save => 'Зачувај';

  @override
  String get create => 'Креирај';

  @override
  String get add => 'Додај';

  @override
  String get remove => 'Отстрани';

  @override
  String get delete => 'Избриши';

  @override
  String get edit => 'Уреди';

  @override
  String get copy => 'Копирај';

  @override
  String get next => 'Следно';

  @override
  String get retry => 'Обиди се повторно';

  @override
  String get regenerate => 'Регенерирај';

  @override
  String get copiedToClipboard => 'Копирано во клипборд';

  @override
  String get confirm => 'Потврди';

  @override
  String get close => 'Затвори';

  @override
  String get import => 'Увези';

  @override
  String get rename => 'Преименувај';

  @override
  String get upgrade => 'Надгради';

  @override
  String get clear => 'Исчисти';

  @override
  String error(String message) {
    return 'Грешка: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Грешка: $message';
  }

  @override
  String get purchaseError =>
      'Грешка при обработка на купувањето. Обидете се повторно.';

  @override
  String get restoreError =>
      'Грешка при враќање на купувањата. Обидете се повторно.';

  @override
  String get loading => 'Вчитување...';

  @override
  String get fieldRequired => 'Задолжително поле';

  @override
  String get addedFeedback => 'Додадено!';

  @override
  String get profile => 'Профил';

  @override
  String get exitShoppingMode => 'Излезете од режимот на купување';

  @override
  String get exit => 'Излезете';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count избрани',
      one: '$count избрано',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Проценето';

  @override
  String get alreadyPurchased => 'Веќе купено';

  @override
  String get clearList => 'Исчисти листа';

  @override
  String get clearPurchased => 'Исчисти купени';

  @override
  String get share => 'Сподели';

  @override
  String get shareViaCode => 'Сподели преку код';

  @override
  String get importViaCode => 'Увези преку код';

  @override
  String get listAssistant => 'Асистент за листа';

  @override
  String get globalAssistant => 'Глобален асистент';

  @override
  String get becomePremium => 'Стани Premium';

  @override
  String get manageSubscription => 'Управувај со претплата';

  @override
  String get completePurchase => 'Заврши купување';

  @override
  String get confirmClearList => 'Отстрани ги сите ставки?';

  @override
  String get shareListTitle => 'Сподели листа';

  @override
  String get shareThisCode => 'Сподели го овој код:';

  @override
  String get validForLimitedTime => 'Важи ограничено време';

  @override
  String get importListTitle => 'Увези листа';

  @override
  String get enterCodeHint => 'Внеси го кодот';

  @override
  String get confirmArchiveTitle => 'Заврши купување';

  @override
  String get confirmArchiveContent =>
      'Да го завршиме ова купување и да ја архивираме листата?';

  @override
  String get complete => 'Заврши';

  @override
  String get listArchived => 'Листата е успешно архивирана!';

  @override
  String listAdded(String listName) {
    return '$listName додадена!';
  }

  @override
  String get buy => 'Купи';

  @override
  String get unmark => 'Отстрани ознака';

  @override
  String confirmDeleteItems(int count) {
    return 'Отстрани $count ставка/и?';
  }

  @override
  String get confirmDeleteTitle => 'Потврди';

  @override
  String confirmContent(int count) {
    return 'Отстрани $count ставка/и?';
  }

  @override
  String get archiveList => 'Архивирај листа';

  @override
  String get pantryAppBar => 'Остава';

  @override
  String get generateShoppingList => 'Генерирај листа за купување';

  @override
  String get pantryEmpty => 'Празна остава';

  @override
  String get pantryEmptySubtitle =>
      'Додадете производи што сакате да ги чувате дома';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ставка/и треба да се купат';
  }

  @override
  String get noItemsToBuy => 'Нема ставки за купување';

  @override
  String get newPantryList => 'Купување за остава';

  @override
  String get newListTitle => 'Нова листа за купување';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ставка/и ќе бидат додадени';
  }

  @override
  String get listNameLabel => 'Име на листа';

  @override
  String listCreated(String name, int count) {
    return 'Листата \"$name\" е креирана со $count ставки';
  }

  @override
  String get noTracking => 'Без следење';

  @override
  String get markAsPurchased => 'Означи како купено';

  @override
  String editPantryItem(String name) {
    return 'Уреди $name';
  }

  @override
  String get idealQuantity => 'Идеална количина';

  @override
  String get currentQuantity => 'Тековна количина';

  @override
  String get consumed => 'Потрошено';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name надополнето на $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Да се отстрани \"$name\" од оставата?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Уреди $name';
  }

  @override
  String get scanProductTitle => 'Скенирајте го производот';

  @override
  String get positionBarcodeCenter => 'Поставете го бар-кодот во центарот';

  @override
  String get product => 'Производ';

  @override
  String get settingsAppBar => 'Поставки';

  @override
  String get language => 'Јазик';

  @override
  String get languagePortuguese => 'Португалија (Бразил)';

  @override
  String get languageEnglish => 'англиски јазик';

  @override
  String get languageSystem => 'Стандардно на системот';

  @override
  String get chooseLanguage => 'Изберете јазик';

  @override
  String get searchLanguage => 'Пребарај јазик...';

  @override
  String get currency => 'Валута';

  @override
  String get chooseCurrency => 'Изберете валута';

  @override
  String get searchCurrency => 'Пребарајте валута...';

  @override
  String get appearance => 'Изглед';

  @override
  String get light => 'Светло';

  @override
  String get system => 'Систем';

  @override
  String get dark => 'Темно';

  @override
  String get themeColor => 'Боја на тема';

  @override
  String get dynamicColors => 'Динамични бои';

  @override
  String get dynamicColorsSubtitle =>
      'Користете бои врз основа на вашата позадина';

  @override
  String get dynamicColorsEnabledWarning =>
      'Оневозможете динамички бои за да стапи на сила бојата на темата';

  @override
  String get finance => 'Финансии';

  @override
  String get monthlyBudgetNav => 'Месечен буџет';

  @override
  String get budgetSubtitle => 'Следете ги месечните трошоци';

  @override
  String get data => 'Податоци';

  @override
  String get backupNav => 'Резервна копија';

  @override
  String get backupSubtitle => 'Извези или увези податоци';

  @override
  String get about => 'За апликацијата';

  @override
  String get version => 'Верзија';

  @override
  String get privacy => 'Приватност';

  @override
  String get termsOfUse => 'Услови на користење';

  @override
  String get myAchievements => 'Моите достигнувања';

  @override
  String get itemsPurchased => 'Купени артикли';

  @override
  String get totalSavings => 'Вкупно заштеди';

  @override
  String get currentStreak => 'Тековна низа';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дена',
      one: '$count ден',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Отклучени значки';

  @override
  String get badgeBeginner => 'Почетник';

  @override
  String get badgeOrganized => 'Организирано';

  @override
  String get badgeSavingMaster => 'Заштеда на мајстор';

  @override
  String get badgeSuperPlanner => 'Супер планер';

  @override
  String get backupTitle => 'Резервна копија';

  @override
  String get backupPremiumDescription =>
      'Резервната копија и извозот се премиум функција';

  @override
  String get exportData => 'Извези податоци';

  @override
  String get exportDataSubtitle => 'Зачувај ги сите листи како JSON';

  @override
  String get importData => 'Увези податоци';

  @override
  String get importDataSubtitle => 'Врати листи од JSON';

  @override
  String get importJsonTitle => 'Увези JSON';

  @override
  String get importJsonHint => 'Вметни го JSON-от за резервна копија тука...';

  @override
  String get backupExported => 'Резервната копија е извезена!';

  @override
  String get budgetAppBar => 'Месечен буџет';

  @override
  String get budgetPremiumLocked => 'Глобалниот месечен буџет е премиум';

  @override
  String get budgetUpgradePrompt => 'Надгради за да отклучиш';

  @override
  String get noBudgetDefined => 'Нема поставено буџет';

  @override
  String totalEstimated(String amount) {
    return 'Вкупно проценето: $amount';
  }

  @override
  String get setBudgetButton => 'Постави буџет';

  @override
  String get budgetLists => 'Листи';

  @override
  String get budgetValueLabel => 'Износ';

  @override
  String get setBudgetTitle => 'Месечен буџет';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Сите';

  @override
  String get filterPending => 'Во тек';

  @override
  String get filterPurchased => 'Купени';

  @override
  String get sortName => 'Име';

  @override
  String get sortCategory => 'Категорија';

  @override
  String get sortDate => 'Датум';

  @override
  String get sortManual => 'Рачно';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased од $total ставки';
  }

  @override
  String progressBudget(String amount) {
    return 'Буџет: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Вкупно: $amount';
  }

  @override
  String get addItem => 'Додај ставка';

  @override
  String get itemName => 'Име на ставка';

  @override
  String get quantityShort => 'Кол';

  @override
  String get unit => 'Единица';

  @override
  String get category => 'Категорија';

  @override
  String get estimatedPrice => 'Проценета цена';

  @override
  String get addItemPrice => 'Проценета цена';

  @override
  String get editItem => 'Уреди ставка';

  @override
  String get quantityFull => 'Количина';

  @override
  String get editItemPrice => 'Проценета цена';

  @override
  String get addToPantry => 'Додај во остава';

  @override
  String addToPantryPrompt(String name) {
    return 'Да се додаде \"$name\" во вашата остава?';
  }

  @override
  String get yes => 'Да';

  @override
  String get productName => 'Име на производ';

  @override
  String get idealQty => 'Идеална кол';

  @override
  String get currentQty => 'Тековна кол';

  @override
  String get trackStock => 'Следи залиха';

  @override
  String get trackStockActive => 'Се појавува во предлози за купување';

  @override
  String get trackStockInactive => 'Не генерира предлог за купување';

  @override
  String get createListDialog => 'Креирај листа';

  @override
  String get renameListDialog => 'Преименувај листа';

  @override
  String get listHistory => 'Историја на листи';

  @override
  String get myLists => 'Мои листи';

  @override
  String get viewActive => 'Види активни';

  @override
  String get viewHistory => 'Види историја';

  @override
  String get noArchivedLists => 'Нема архивирани листи';

  @override
  String get noActiveLists => 'Нема активни листи';

  @override
  String completedOn(String date) {
    return 'Завршено на $date';
  }

  @override
  String get sharedLabel => 'Споделено';

  @override
  String get restore => 'Врати';

  @override
  String get removeSharedTooltip => 'Отстрани';

  @override
  String get deleteListTitle => 'Избриши листа';

  @override
  String deleteListContent(String name) {
    return 'Дали сте сигурни дека сакате да ја избришете \"$name\"? Сите ставки ќе бидат отстранети.';
  }

  @override
  String get removeSharedListTitle => 'Отстрани споделена листа';

  @override
  String removeSharedListContent(String name) {
    return 'Да се отстрани \"$name\" од вашите листи? Оригиналната листа нема да биде засегната.';
  }

  @override
  String get createNewList => 'Креирај нова листа';

  @override
  String get aiAssistant => 'AI асистент';

  @override
  String get aiAssistantDescription =>
      'Добијте паметни предлози, рецепти и персонализирани совети со нашиот AI асистент.';

  @override
  String get generalAssistant => 'Општ асистент';

  @override
  String get newChat => 'Нов разговор';

  @override
  String get noHistory => 'Нема историја на разговор';

  @override
  String get deleteSession => 'Избришете разговор';

  @override
  String get deleteSessionConfirm =>
      'Дали сте сигурни дека сакате да го избришете овој разговор? Пораките трајно ќе бидат изгубени.';

  @override
  String get clearHistory => 'Исчисти историја';

  @override
  String get clearHistoryConfirm =>
      'Да ги исчистиме сите пораки во оваа сесија?';

  @override
  String get chatHint => 'Напишете ја вашата порака...';

  @override
  String get chatHintBlocked =>
      'Отклучете ја вештачката интелигенција за разговор';

  @override
  String chatError(String error) {
    return 'Грешка при вчитување на разговорот: $error';
  }

  @override
  String get aiAssistantTitle => 'Асистент со вештачка интелигенција';

  @override
  String get closeSheet => 'Затвори';

  @override
  String get scanBarcodeTitle => 'Скенирај баркод';

  @override
  String get listHelp => 'Како можам да помогнам со вашата листа?';

  @override
  String get generalHelp => 'Како можам да помогнам со вашето купување денес?';

  @override
  String get chatSubtitle =>
      'Прашајте за предлози, рецепти или совети за заштеда.';

  @override
  String get aiError =>
      'Извинете, се случи грешка при обработката на вашето барање. Проверете ја врската или обидете се подоцна.';

  @override
  String get aiLimitAlmostReached =>
      'Скоро немаше пораки со вештачка интелигенција';

  @override
  String get unlockAi => 'Отклучете неограничена вештачка интелигенција';

  @override
  String get aiTeaserFallback =>
      'Претплатете се на Premium за да го отклучите целосниот одговор и да добивате неограничени совети за вештачка интелигенција за купување...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Дејствата за вештачка интелигенција останаа овој месец - надградете неограничено';
  }

  @override
  String get aiUsageExhausted =>
      'Достигнато е месечно ограничување на вештачката интелигенција. Надградете на Pro за неограничено →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Најавете се за да отклучите\nпремиум функции';

  @override
  String get signInGoogle => 'Најави се со Google';

  @override
  String get signInApple => 'Најави се со Apple';

  @override
  String get continueAsGuest => 'Продолжи како гостин';

  @override
  String get onboardingWelcomeTitle => 'Добредојдовте во KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Најпаметен начин да го организирате купувањето и да заштедите пари.';

  @override
  String get onboardingSetupTitle => 'Персонализирајте го вашето искуство';

  @override
  String get onboardingSetupDesc =>
      'Изберете како сакате KipiList да изгледа и да работи за вас.';

  @override
  String get onboardingLoginTitle => 'Зачувајте сè на облакот';

  @override
  String get onboardingLoginDesc =>
      'Вашите податоци се синхронизираат на сите ваши уреди';

  @override
  String get onboardingShareTitle => 'Споделете со оние што ги сакате';

  @override
  String get onboardingShareDesc =>
      'Синхронизирајте ги списоците со семејството и пријателите во реално време';

  @override
  String get onboardingPremiumTitle => 'Отклучете ги сите функции';

  @override
  String get onboardingPremiumSubtitle =>
      'Извлечете го максимумот од вашите списоци за купување';

  @override
  String get onboardingAnnualBadge => 'Најдобра вредност';

  @override
  String get onboardingMonthlyLabel => 'Месечно';

  @override
  String get onboardingAnnualLabel => 'Годишен';

  @override
  String get onboardingViewAllPlans => 'Погледнете ги сите планови';

  @override
  String get onboardingSubscribeCta => 'Претплатете се';

  @override
  String get onboardingCancelAnytime =>
      'Откажете во секое време. Без посветеност.';

  @override
  String get onboardingContinueAsGuest => 'Продолжете како гостин';

  @override
  String get onboardingRestore => 'Врати';

  @override
  String get onboardingRestoreDesc =>
      'Веќе имате претплата? Допрете овде за да го вратите.';

  @override
  String get onboardingMaybeLater => 'Можеби подоцна';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Еј $name, организирај го купувањето на вистински начин.';
  }

  @override
  String get onboardingSlide1Title => 'Паметни шопинг листи';

  @override
  String get onboardingSlide1Body =>
      'Креирајте и споделувајте списоци веднаш. Kipi додава ставки автоматски врз основа на вашите навики.';

  @override
  String get onboardingSlide2Title => 'Запознајте го Кипи';

  @override
  String get onboardingSlide2Body =>
      'Прашајте што било - креирајте списоци, најдете рецепти, следете ја вашата оставата, чајната кујна, планирајте ја вашата недела.';

  @override
  String get onboardingSlide3Title => 'Шпајз и планирање оброци';

  @override
  String get onboardingSlide3Body =>
      'Следете што имате, планирајте оброци и генерирајте списоци за купување автоматски.';

  @override
  String get onboardingExit => 'Излезете';

  @override
  String get onboardingPersonalizationTitle => 'Ајде да те запознаеме';

  @override
  String get onboardingPersonalizationDesc =>
      'Ќе го искористиме ова за да ги персонализираме вашите предлози и да го направиме купувањето попаметно.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Која е вашата омилена храна?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'на пр. Пица, суши, лазања...';

  @override
  String get onboardingPersonalizationCta => 'Продолжи';

  @override
  String get onboardingPersonalizationSkip => 'Засега прескокнете';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Кажете ни ја вашата омилена храна за да продолжиме';

  @override
  String get settingsDefaultScreen => 'Стандарден почетен екран';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Изберете помеѓу список за купување или разговор со вештачка интелигенција';

  @override
  String get settingsScreenList => 'Список за купување';

  @override
  String get settingsScreenChat => 'Разговор со вештачка интелигенција';

  @override
  String loginError(String error) {
    return 'Грешка при најава: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Грешка при вчитување понуди. Обидете се повторно.';

  @override
  String get paywallPurchaseError =>
      'Не може да се заврши купувањето. Обидете се повторно.';

  @override
  String get paywallRestoreError =>
      'Не е пронајдена активна претплата за враќање.';

  @override
  String paywallTrialDays(Object days) {
    return '$days БЕСПЛАТНИ ДЕНА';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count НЕДЕЛИ БЕСПЛАТНИ',
      one: '$count НЕДЕЛА БЕСПЛАТНО',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count МЕСЕЦИ БЕСПЛАТНИ',
      one: '$count MONTH FREE',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Пробајте го KipiList Pro бесплатно 7 дена';

  @override
  String get paywallTrialSubtitle =>
      'Откажете во секое време. Без наплата денес.';

  @override
  String get paywallTrialCta => 'Започнете бесплатен пробен период';

  @override
  String get recipeAddToList => 'Додај во списокот за купување';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count состојки додадени во $listName';
  }

  @override
  String get noListSelected => 'Нема избрана листа. Прво отворете список.';

  @override
  String get paywallFeaturesTitle => 'Сè што ви треба:';

  @override
  String get paywallFeatureDescAssistant =>
      'Вештачката интелигенција автоматски ја организира вашата листа';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Направете онолку списоци колку што ви треба';

  @override
  String get paywallFeatureDescSharing => 'Купувајте заедно во реално време';

  @override
  String get paywallFeatureDescPantry => 'Следете што имате дома';

  @override
  String get paywallFeatureDescBudget => 'Останете на буџет секој месец';

  @override
  String get paywallFeatureUnlimitedLists => 'Неограничени списоци';

  @override
  String get paywallFeatureSmartAI => 'Паметна вештачка интелигенција';

  @override
  String get paywallFeatureExpenseControl => 'Контрола на трошоци';

  @override
  String get paywallFeatureSharing => 'Споделување';

  @override
  String get paywallBeforeAfterTitle => 'ВИ пред и потоа:';

  @override
  String get paywallLabelCommon => 'Заеднички';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'оризот';

  @override
  String get paywallBeforeItem2 => 'сапун';

  @override
  String get paywallBeforeItem3 => 'месо';

  @override
  String get paywallBeforeItem4 => 'леб';

  @override
  String get paywallAfterItem1 => 'Зрна';

  @override
  String get paywallAfterItem2 => 'Чистење';

  @override
  String get paywallAfterItem3 => 'Месо';

  @override
  String get paywallAfterItem4 => 'Пекара';

  @override
  String get paywallTestimonialsTitle => 'Што велат нашите корисници:';

  @override
  String get paywallTestimonial1Name => 'Ен С.';

  @override
  String get paywallTestimonial1Text =>
      'ВИ го организира мојот шопинг за неколку секунди. Заштедувам 20 мин по пазарно патување.';

  @override
  String get paywallTestimonial2Name => 'Чарлс М.';

  @override
  String get paywallTestimonial2Text =>
      'Никогаш повеќе не заборавив ставка од списокот. Разговорот за вештачка интелигенција е сензационален!';

  @override
  String get paywallSocialProof => 'Го користат +2.400 семејства';

  @override
  String get paywallCtaUnlock => 'Отклучете го PRO';

  @override
  String get paywallBestValue => 'НАЈДОБРА ВРЕДНОСТ';

  @override
  String get paywallMostPopular => 'НАЈПОПУЛАРНО';

  @override
  String get paywallProLabel => 'УЈП';

  @override
  String get paywallSafeCheckout => 'Безбедно плаќање';

  @override
  String get paywallSelectPlan => 'Изберете го вашиот план:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ЗАШТЕДИ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Само $price/месечно';
  }

  @override
  String get paywallPackageAnnual => 'Годишен план';

  @override
  String get paywallPackageMonthly => 'Месечен план';

  @override
  String get paywallPackageLifetime => 'Доживотен пристап';

  @override
  String get paywallCancelAnytime =>
      'Откажете во секое време. Без посветеност.';

  @override
  String paywallTrialInCard(int days) {
    return 'Првите $days дена БЕСПЛАТНО';
  }

  @override
  String get paywallSecuredByStore =>
      'Обезбедено со Google Play · Откажете во секое време';

  @override
  String get paywallPolicy => 'Политика за приватност';

  @override
  String get paywallTerms => 'Услови за користење';

  @override
  String get paywallRestore => 'Врати';

  @override
  String get paywallHeroHeadline => 'Kipi AI секогаш покрај вас';

  @override
  String get paywallHeroSubtitle =>
      'Додавајте ставки, организирајте списоци и заштедете време со вештачката интелигенција во вашиот џеб';

  @override
  String get paywallBenefit1Desc => 'Додава, организира и предлага ставки 24/7';

  @override
  String get paywallBenefit2Desc => 'Нема ограничување од 3 списоци';

  @override
  String get paywallBenefit3Desc => 'Следење на трошоци и семејни списоци';

  @override
  String get paywallPackageMonthlyDesc => 'Целосна флексибилност';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Започнете бесплатно - $days дена';
  }

  @override
  String get premiumUpgrade => 'Надгради за да отклучиш';

  @override
  String get itemRemoved => 'Ставката е отстранета';

  @override
  String get undo => 'Врати';

  @override
  String get emptyListTitle => 'Вашата листа е празна';

  @override
  String get emptyListSubtitle => 'Додајте ставки за да започнете';

  @override
  String get noListFoundTitle => 'Не се пронајдени листи';

  @override
  String get noListFoundSubtitle =>
      'Креирајте ја вашата прва листа за да започнете';

  @override
  String get createFirstList => 'Креирај прва листа';

  @override
  String get listBudgetTitle => 'Буџет на листа';

  @override
  String get budgetAmountLabel => 'Износ на буџет';

  @override
  String get removeBudget => 'Отстрани';

  @override
  String get prefUnlimitedLists => 'Неограничени листи';

  @override
  String get prefSharing => 'Сподели листи';

  @override
  String get prefFullHistory => 'Целосна историја';

  @override
  String get prefExportData => 'Извези податоци';

  @override
  String get prefCustomThemes => 'Прилагодени теми';

  @override
  String get prefMonthlyBudget => 'Глобален месечен буџет';

  @override
  String get prefAIAssistant => 'Персонален AI асистент';

  @override
  String get prefUnlimitedPantry => 'Неограничена остава';

  @override
  String get prefInteractiveArtifacts => 'Интерактивни AI артефакти';

  @override
  String get themeGreen => 'Зелена';

  @override
  String get themeBlue => 'Сина';

  @override
  String get themePurple => 'Виолетова';

  @override
  String get themeRed => 'Црвена';

  @override
  String get themeOrange => 'Портокалова';

  @override
  String get themePink => 'Розова';

  @override
  String get themeIndigo => 'Индиго';

  @override
  String get themeAmber => 'Килибарна';

  @override
  String get themeTeal => 'Тиркизна';

  @override
  String get themeBrown => 'Кафеава';

  @override
  String get catFruits => 'Овошје';

  @override
  String get catCleaning => 'Чистење';

  @override
  String get catBeverages => 'Пијалоци';

  @override
  String get catBakery => 'Пекара';

  @override
  String get catOthers => 'Друго';

  @override
  String get unitPack => 'пакет';

  @override
  String get shareSubject => 'Листа за купување';

  @override
  String get monthlyBudgetTitle => 'Месечен буџет';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Избриши листа';

  @override
  String get pantryItemRemoved => 'Ставката е отстранета';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit ставки треба да се купат',
      one: '$deficit ставка треба да се купи',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Вкупно во кошничка';

  @override
  String get restockLabel => 'Надополни';

  @override
  String get advancedFeatures => 'Напредни функции';

  @override
  String get selectAll => 'Избери ги сите';

  @override
  String get deselectAll => 'Одбери ги сите';

  @override
  String get monthlyBudgetAppBar => 'Месечен буџет';

  @override
  String get budgetEditTitle => 'Месечен буџет';

  @override
  String get budgetDashboardTitle => 'Табла';

  @override
  String get selectListForDashboard =>
      'Изберете листа за да ја видите таблата.';

  @override
  String get spendingAnalysis => 'Анализа на трошоци';

  @override
  String get noItemsToAnalyze => 'Нема ставки во листата за анализа.';

  @override
  String get markItemsToSeeAnalysis =>
      'Означете ги ставките како купени за да ја видите анализата.';

  @override
  String get totalSpending => 'Вкупно потрошено';

  @override
  String get spendingByCategory => 'Трошоци по категорија';

  @override
  String get achievements => 'Достигнувања';

  @override
  String get exportPdfExcel => 'Извези PDF/Excel';

  @override
  String get exportPdf => 'Извези како PDF';

  @override
  String get exportExcel => 'Извези како Excel';

  @override
  String get organizingAi => 'ОРГАНИЗИРАЊЕ СО AI...';

  @override
  String get yesLabel => 'Да';

  @override
  String get noLabel => 'Не';

  @override
  String get shareListText => 'Мојата листа за купување';

  @override
  String get emptyListAddItems =>
      'Вашата листа е празна! Прво додајте ставки. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Листата магично организирана по категории! ✨';

  @override
  String get shoppingMode => 'Режим на купување';

  @override
  String get smartOrganization => 'Паметна организација';

  @override
  String get savings => 'Заштеда';

  @override
  String get shoppingModeHeader => 'РЕЖИМ НА КУПУВАЊЕ';

  @override
  String get shareAsText => 'Испрати ставки како форматиран текст';

  @override
  String get shareRealtime => 'Синхронизација во реално време со други луѓе';

  @override
  String get quickRecipe => 'Брз рецепт';

  @override
  String get quickRecipePrompt => 'Предложи рецепти со ставки од мојата листа.';

  @override
  String get economyTips => 'Совети за заштеда';

  @override
  String get economyTipsPrompt =>
      'Како можам да заштедам пари на ова купување?';

  @override
  String get organizeAisles => 'Организирај по патеки';

  @override
  String get organizeAislesPrompt => 'Организирај по пазарни патеки.';

  @override
  String get recipeSuggestion => 'Предлог рецепт';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining кредити останати';
  }

  @override
  String get addAllToList => 'Додај ги сите во листа';

  @override
  String get organizeByAisles => 'Организирај по патеки';

  @override
  String get voiceTranscriptionTooltip => 'Говорно пишување (Бесплатно)';

  @override
  String get aiVoiceCommandTooltip => 'AI гласовна команда (Premium)';

  @override
  String get voiceCommandTitle => 'AI гласовна команда';

  @override
  String get voiceCommandContent =>
      'Зборувајте природно за да управувате со вашата листа!\n\nПримери:\n• \'Додај леб, сирење и шунка\'\n• \'Отстрани детергент за алишта\'\n• \'Промени ја темата во сина\'\n\nОва е ексклузивна функција на KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Види планови';

  @override
  String get itemsAddedSuccess => 'Ставките успешно додадени во листата!';

  @override
  String get viewList => 'Види листа';

  @override
  String get feedbackTitle => 'Испрати повратна информација';

  @override
  String get feedbackPrompt => 'Што би сакале да споделите?';

  @override
  String get feedbackTypeBug => 'Пријави грешка';

  @override
  String get feedbackTypeBugHint => 'Нешто не работи';

  @override
  String get feedbackTypeSuggestion => 'Предлог';

  @override
  String get feedbackTypeSuggestionHint =>
      'Идеја за подобрување на апликацијата';

  @override
  String get feedbackTypeTranslation => 'Проблем со превод';

  @override
  String get feedbackTypeTranslationHint => 'Неточен или неприроден превод';

  @override
  String get feedbackTypeFeature => 'Барање за функција';

  @override
  String get feedbackTypeFeatureHint => 'Функција која би сакале да ја видите';

  @override
  String get feedbackTypeOther => 'Друго';

  @override
  String get feedbackTypeOtherHint => 'Друг тип на повратна информација';

  @override
  String get feedbackHint =>
      'Опишете ја вашата повратна информација детално...';

  @override
  String get feedbackSend => 'Испрати повратна информација';

  @override
  String get feedbackSending => 'Се испраќа...';

  @override
  String get feedbackThankYou => 'Ви благодариме!';

  @override
  String get feedbackThankYouMessage =>
      'Вашата повратна информација е примена и ни помага да го подобриме KipiList за сите.';

  @override
  String get feedbackBack => 'Назад';

  @override
  String feedbackError(String error) {
    return 'Грешка при испраќање: $error';
  }

  @override
  String get feedbackRetry => 'Обиди се повторно';

  @override
  String get feedbackSettingsTitle => 'Испрати повратна информација';

  @override
  String get feedbackSettingsSubtitle =>
      'Пријавете грешки, предложете подобрувања или поправете преводи';

  @override
  String get aiEnergy => 'AI енергија';

  @override
  String get searchInConversation => 'Барај во разговор...';

  @override
  String get noMessagesFound => 'Не се најдени пораки';

  @override
  String get suggestedQuestions => 'Предложени прашања:';

  @override
  String get shoppingAssistant => 'Асистентка за купување';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'купени $purchased од $total';
  }

  @override
  String get estimatedCost => 'Проценето';

  @override
  String get viewItems => 'Прикажи ставки';

  @override
  String get noItemsInList => 'Нема ставки во списокот';

  @override
  String get longHistoryWarning =>
      'Долга историја: асистентот се фокусира на најновите пораки за подобри перформанси.';

  @override
  String get listening => 'Слушање...';

  @override
  String get addDirectToList => 'Додадете директно во списокот';

  @override
  String get unlockFullResponse => 'Отклучете го целосниот одговор';

  @override
  String get switchList => 'Префрли листа';

  @override
  String get marketMode => 'Пазарен режим';

  @override
  String get backToChat => 'Назад на разговор';

  @override
  String get finishShopping => 'Заврши шопинг';

  @override
  String get welcomeAiAssistant => 'Добре дојдовте во AI Assistant';

  @override
  String get createListToStartAi =>
      'Создадете список за купување за да започнете да го користите паметниот разговор.';

  @override
  String get howCanIHelp => 'Како можам да помогнам?';

  @override
  String get chatSubtitleShort => 'Прашајте за цени, рецепти, организација...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return 'Купени $purchased/$total';
  }

  @override
  String get quickReplies => 'Брзи одговори:';

  @override
  String get voiceProFeature =>
      'Напредните гласовни команди се Pro. Овозможување основен диктат...';

  @override
  String get viewPro => 'Прикажи Про';

  @override
  String get errorLoadingChat =>
      'Упс! Нешто тргна наопаку при вчитувањето на разговорот.';

  @override
  String get errorLoadingChatSubtitle =>
      'Проверете ја врската или обидете се повторно подоцна.';

  @override
  String get errorOscillation =>
      'Ова може да се случи поради осцилации на мрежата или привремена недостапност. Ве молиме обидете се повторно.';

  @override
  String get activeListening => 'Активно слушање';

  @override
  String get whatToDoWithItem => 'Што би сакале да направите со оваа ставка?';

  @override
  String get viewDetails => 'Погледнете ги деталите';

  @override
  String get openMenu => 'Отвори мени';

  @override
  String get viewRecipe => 'Види рецепт';

  @override
  String get recipeCreated => 'Рецептот е креиран!';

  @override
  String get editRecipe => 'Уреди';

  @override
  String get deleteRecipe => 'Избриши';

  @override
  String get deleteRecipeConfirm => 'Избриши го овој рецепт?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Дали сте сигурни дека сакате да го избришете \"$recipeName\"? Оваа акција не може да се врати.';
  }

  @override
  String get ingredients => 'Состојки';

  @override
  String get instructions => 'Инструкции';

  @override
  String get prepTime => 'Време за подготовка';

  @override
  String get recipeSaved => 'Рецептот е зачуван!';

  @override
  String get noRecipesSaved => 'Нема зачувани рецепти';

  @override
  String get noRecipesSavedHint =>
      'Креирајте го вашиот прв сопствен рецепт со допирање на копчето подолу.';

  @override
  String get myRecipes => 'Мои рецепти';

  @override
  String get newRecipe => 'Нов рецепт';

  @override
  String get loadingRecipes => 'Се вчитуваат вашите рецепти...';

  @override
  String get errorLoadingRecipes => 'Грешка при вчитување на рецептите';

  @override
  String get addIngredient => 'Додај состојка';

  @override
  String get saveRecipe => 'Зачувај';

  @override
  String get recipeName => 'Име на рецептот';

  @override
  String get shortDescription => 'Краток опис';

  @override
  String get prepTimeMinutes => 'Време за подготовка (минути)';

  @override
  String get instructionsHint => 'Напишете еден чекор по линија...';

  @override
  String get addPhoto => 'Додај фотографија';

  @override
  String get imageUrlPlaceholder => 'Или вметнете URL на слика';

  @override
  String get tags => 'Ознаки';

  @override
  String get recipeTags => 'Ознаки на рецептот';

  @override
  String get suggestedTags => 'Предложено';

  @override
  String get searchRecipes => 'Пребарај рецепти...';

  @override
  String get filterByTag => 'Филтрирај по ознака';

  @override
  String get allTags => 'Сите';

  @override
  String get recipeDeleted => 'Рецептот е избришан';

  @override
  String get saveChanges => 'Зачувај промени';

  @override
  String get editRecipeTitle => 'Уреди рецепт';

  @override
  String get newRecipeTitle => 'Нов рецепт';

  @override
  String get requiredField => 'Задолжително';

  @override
  String get chooseImageSource => 'Изберете извор на слика';

  @override
  String get gallery => 'Галерија';

  @override
  String get enterUrl => 'Внесете URL';

  @override
  String get recipeImage => 'Слика од рецептот';

  @override
  String get removeImage => 'Отстрани слика';

  @override
  String get mealPlannerTitle => 'Планер за оброци';

  @override
  String get mealPlannerViewMonthly => 'Месечен преглед';

  @override
  String get mealPlannerViewWeekly => 'Неделен преглед';

  @override
  String get mealPlannerNoMeals => 'Нема планирани оброци';

  @override
  String get mealPlannerNoMealsHint => 'Допрете на ден за да додадете оброк';

  @override
  String get mealPlannerLoading => 'Се вчитува планот за оброци...';

  @override
  String get mealPlannerError => 'Грешка при вчитување на планот за оброци';

  @override
  String get mealPlannerAddMeal => 'Додај оброк';

  @override
  String get mealPlannerEditMeal => 'Уреди оброк';

  @override
  String get mealPlannerDeleteMeal => 'Отстрани оброк';

  @override
  String get mealPlannerMealDeleted => 'Оброкот е отстранет';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count порции',
      one: '$count порција',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Порции';

  @override
  String get mealPlannerNoteLabel => 'Забелешка (опционално)';

  @override
  String get mealPlannerSelectRecipe => 'Изберете рецепт';

  @override
  String get mealPlannerSearchRecipes => 'Пребарај рецепти...';

  @override
  String get mealPlannerNoRecipesFound => 'Не се пронајдени рецепти';

  @override
  String get mealPlannerNoRecipesHint =>
      'Прво креирајте рецепти во табот Рецепти';

  @override
  String get mealPlannerSave => 'Додај во план';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count од $total оброци планирани';
  }

  @override
  String get mealPlannerGenerateList => 'Генерирај листа за шопинг';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Да се додадат сите состојки од планираните оброци за оваа недела во вашата листа за шопинг?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count состојка(и) додадени во вашата листа!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Нема состојки за додавање. Прво планирајте некои оброци со рецепти.';

  @override
  String get mealPlannerGenerateListNoList => 'Прво креирајте листа за шопинг.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Појадок';

  @override
  String get mealPlannerMealTypeLunch => 'Ручек';

  @override
  String get mealPlannerMealTypeDinner => 'Вечера';

  @override
  String get mealPlannerMealTypeSnack => 'Ужина';

  @override
  String get mealPlannerDateLabel => 'Датум';

  @override
  String get mealPlannerWeekEmpty => 'Ништо не е планирано за оваа недела';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Допрете на кој било ден за да започнете со планирање на вашите оброци!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes мин';
  }

  @override
  String get inviteToList => 'Покани на список';

  @override
  String get shareApp => 'Споделете ја апликацијата';

  @override
  String get shareAppDescription =>
      'Поканете ги пријателите да користат KipiList';

  @override
  String shareReferralText(String url) {
    return 'Го користам KipiList за да го организирам моето купување! Преземете преку мојот линк и двајцата добиваме 7 дена Premium бесплатно: $url';
  }

  @override
  String get shareReferralSubject => 'Добијте 7 дена KipiList Premium!';

  @override
  String get gestureHint =>
      'Држете за да изберете • Повлечете за да отстраните';

  @override
  String get catalogTitle => 'Каталог';

  @override
  String get catalogMyFrequents => 'Мои фреквенции';

  @override
  String get catalogSearchGlobal => 'Пребарајте кој било производ...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Пребарајте во $category...';
  }

  @override
  String get catalogSortPopular => 'Најпопуларни';

  @override
  String get catalogSortAZ => 'А–З';

  @override
  String get catalogFilterNational => 'Националните';

  @override
  String get catalogRareSection => 'поретко во вашата земја';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Додајте $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Производот не е пронајден, напишете го името';

  @override
  String get catalogBrowse => 'Прелистајте го каталогот';

  @override
  String get offlineBanner => 'Вие сте офлајн';

  @override
  String get consentTitle => 'Приватност и аналитика';

  @override
  String get consentBody =>
      'KipiList користи Firebase Analytics за да го подобри вашето искуство. Вашите податоци се обработуваат според нашата Политика за приватност.';

  @override
  String get consentAccept => 'Прифати';

  @override
  String get consentDecline => 'Не, благодарам';

  @override
  String get mealPlannerPantryAllAvailable => 'На залиха';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count недостигаат ставки',
      one: '$count недостасува ставка',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Датум на истекување';

  @override
  String get notInformed => 'Не е информиран';

  @override
  String get skip => 'Прескокни';

  @override
  String get onboardingAiTitle => 'Разговарајте со Кипи';

  @override
  String get onboardingAiGreeting =>
      'Здраво! Јас сум Кипи, твојот личен асистент за купување! 🛒';

  @override
  String get onboardingAiAskName => 'Како се викаш?';

  @override
  String get onboardingAiNameHint => 'Напишете го вашето име...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Мило ми е што те запознав, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Која е вашата омилена храна?';

  @override
  String get onboardingAiFoodHint => 'на пр. Пица, суши...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Одлични избори! Еве што би додала на вашата листа:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Дали ова изгледа добро? Обидете се да напишете нешто друго!';

  @override
  String get onboardingAiReady =>
      'Одлично! Подготвени сте да започнете. Ајде да ја поставиме вашата сметка!';

  @override
  String get onboardingAiContinue => 'Продолжи →';

  @override
  String get connectionError => 'Грешка во врската';

  @override
  String connectionErrorDesc(String error) {
    return 'Грешка: $error';
  }

  @override
  String get errorLoadingLists => 'Грешка при вчитување списоци';

  @override
  String get noListsFound => 'Не се пронајдени списоци';

  @override
  String get backToToday => 'Назад кон денес';

  @override
  String get quickSuggestions => 'Брзи предлози';

  @override
  String get aiEnergyLow => 'Ниска ВИ енергија';

  @override
  String get aiUnlockUnlimited =>
      'Отклучете неограничена вештачка интелигенција';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 денес';
  }

  @override
  String get aiSubscribeUnlimited =>
      'Претплатете се за неограничена вештачка интелигенција';

  @override
  String get unlockWithAd => 'Отклучи со реклама';

  @override
  String get conversationHistoryTitle => 'Историја на разговори';

  @override
  String get noConversationsFound => 'Не се пронајдени разговори';

  @override
  String get errorLoadingHistory => 'Грешка при вчитување на историјата';

  @override
  String get deleteConversationTitle => 'Избриши разговор';

  @override
  String get deleteConversationConfirm => 'Ова дејство не може да се врати.';

  @override
  String get deleteConversation => 'Избриши';

  @override
  String get subscription => 'Претплата';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle => 'Отклучете го Premium';

  @override
  String get loadingSubscription => 'Се вчитува претплатата...';

  @override
  String get errorLoadingSubscription => 'Грешка при вчитување на претплатата';

  @override
  String get profileSection => 'Профил';

  @override
  String get myProfile => 'Мојот профил';

  @override
  String get profileSubtitle => 'Информации за вашиот профил';

  @override
  String get customizeAiAssistant =>
      'Приспособете го помошникот за вештачка интелигенција';

  @override
  String get assistantHistory => 'Историја на асистент';

  @override
  String get assistantHistorySubtitle =>
      'Погледнете ја вашата историја на разговори';

  @override
  String get manageCategories => 'Управувајте со категориите';

  @override
  String get manageCategoriesSubtitle =>
      'Додавање, уредување или отстранување категории';

  @override
  String get customizeAssistant => 'Прилагодете';

  @override
  String get assistantName => 'Име на асистентот';

  @override
  String get chooseIcon => 'Изберете икона';

  @override
  String get profileSaved => 'Профилот е зачуван';

  @override
  String get errorSavingProfile => 'Грешка при зачувување на профилот';

  @override
  String get userProfile => 'Кориснички профил';

  @override
  String get profileDescription => 'Опис на профилот';

  @override
  String get preferredMarket => 'Префериран пазар';

  @override
  String get preferredMarketHint => 'Каде најчесто купувате?';

  @override
  String get dietaryRestrictions => 'Ограничувања во исхраната';

  @override
  String get dietaryRestrictionsHint =>
      'Дали има некои ограничувања во исхраната?';

  @override
  String get marketsToAvoid => 'Пазари за избегнување';

  @override
  String get marketsToAvoidHint => 'Пазари од кои претпочитате да не купувате';

  @override
  String get observations => 'Набљудувања';

  @override
  String get observationsHint => 'Некои дополнителни забелешки?';

  @override
  String get saveProfile => 'Зачувај профил';

  @override
  String get everythingReady => 'Сè е подготвено!';

  @override
  String get youCompletedList => 'Го комплетиравте списокот!';

  @override
  String get selectCheaperAlternative => 'Изберете поевтина алтернатива';

  @override
  String get suggestedItems => 'Предложени ставки';

  @override
  String get swapped => 'Заменет';

  @override
  String get swap => 'Заменете';

  @override
  String get chooseThemeColor => 'Изберете боја на тема';

  @override
  String get manageCategoriesTitle => 'Управувајте со категории';

  @override
  String get categoryLimitReached =>
      'Достигнато е ограничувањето на категоријата';

  @override
  String get deleteCategoryTitle => 'Избриши категорија';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Ставките во „$category“ ќе бидат преместени во „Други“.\nПродолжи?';
  }

  @override
  String get deleteCategory => 'Избриши';

  @override
  String get newCategoryDialog => 'Нова категорија';

  @override
  String get editCategoryDialog => 'Уреди категорија';

  @override
  String get categoryName => 'Име на категоријата';

  @override
  String get categoryNameHint => 'Внесете име на категоријата';

  @override
  String get categoryColorLabel => 'Боја';

  @override
  String get categoryIconLabel => 'Икона';

  @override
  String itemAddedSnack(String name) {
    return 'додаде $name';
  }

  @override
  String get kipiQuickBarHint => 'Што треба да купите?';

  @override
  String replaceItem(String item) {
    return 'Замени $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit - $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Никогаш повеќе не заборавајте на намирници';

  @override
  String get onboardingGoalSaveMoney => 'Заштедете пари';

  @override
  String get onboardingGoalNeverForget => 'Никогаш не заборавајте предмети';

  @override
  String get onboardingGoalFaster => 'Купувајте побрзо';

  @override
  String get onboardingGoalFamily => 'Организирајте семеен шопинг';

  @override
  String get onboardingGoalRecipes => 'Откријте рецепти';

  @override
  String get onboardingGoalPantry => 'Песна оставата, чајната кујна';

  @override
  String get onboardingCommitmentsTitle => 'Што ти е важно?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Изберете ги вашите цели за да го персонализирате KipiList';

  @override
  String get onboardingCommitmentsCta => 'Ајде да одиме!';

  @override
  String get onboardingPersonalizationNameLabel => 'Вашето име';

  @override
  String get onboardingPersonalizationNameHint => 'Внесете го вашето име';

  @override
  String get onboardingPersonalizationCategoryTitle => 'За што купувате?';

  @override
  String get onboardingPersonalizationGroupTitle => 'За кого купувате?';

  @override
  String get onboardingCategoryGrocery => 'Намирници';

  @override
  String get onboardingCategoryPharmacy => 'Аптека';

  @override
  String get onboardingCategoryRecipes => 'Рецепти';

  @override
  String get onboardingCategoryHome => 'Дома';

  @override
  String get onboardingCategoryPet => 'Милениче';

  @override
  String get onboardingGroupSolo => 'Само јас';

  @override
  String get onboardingGroupCouple => 'Двојка';

  @override
  String get onboardingGroupFamily => 'Семејство';

  @override
  String get onboardingLoadingTitle => 'Подготвувајќи го вашето искуство...';

  @override
  String get onboardingLoadingStep1 => 'Анализирајќи ги вашите преференции...';

  @override
  String get onboardingLoadingStep2 =>
      'Поставување помошник за вештачка интелигенција...';

  @override
  String get onboardingLoadingStep3 => 'Речиси готов...';

  @override
  String get onboardingLoadingStat1Label => 'Каталогизирани артикли';

  @override
  String get onboardingLoadingStat2Label => 'Корисниците помогнаа';

  @override
  String get onboardingLoadingStat3Label => 'Зачувани минути';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, заштедете на секое патување!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, никогаш не заборавајте ставка!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, купувајте за половина од времето!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, организирајте семеен шопинг!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, откријте нови рецепти!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, следете ја вашата оставата, чајната кујна совршено!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Заштедете на секое патување!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Никогаш не заборавајте некој предмет!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'Купувајте за половина од времето!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Организирајте семеен шопинг!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Откријте нови рецепти!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Следете ја вашата оставата, чајната кујна совршено!';

  @override
  String paywallPricePerDay(String price) {
    return 'Само $price/ден - помалку од кафе';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Засега прескокнете';

  @override
  String get paywallTestimonial =>
      'ВИ го организира мојот шопинг за неколку секунди. Заштедувам 20 мин по патување.';

  @override
  String get paywallTestimonialAuthor => 'Ен С.';

  @override
  String get paywallTrialDisclaimer =>
      'Откажете во секое време · Без наплата додека не заврши пробниот период';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Еј $name! Што $category ви треба?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Што $category ви треба?';
  }

  @override
  String get onboardingAiDemoYes => 'Да!';

  @override
  String get onboardingAiDemoReaction => 'Убаво!';

  @override
  String get onboardingAiDemoChange => 'Променете ја ставката';

  @override
  String get onboardingAiDemoOffer => 'Обидете се да напишете нешто друго!';

  @override
  String get onboardingAiDemoContinue => 'Продолжи';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Вашата листа за купување, сега со вештачка интелигенција';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Погледнете како Кипи ја создава вашата целосна листа за неколку секунди';

  @override
  String get onboardingAiDemoSlideCta => 'Сакам ова! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Домаќим на скара 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'Подготвени! Еве се што ви треба:';

  @override
  String get onboardingAiDemoSlideDone => 'Комплетна листа за секунди ✨';

  @override
  String get onboardingPainTitle => 'Што најмногу те фрустрира?';

  @override
  String get onboardingPainSubtitle =>
      'Бидете искрени - ние ќе го поправиме секој од нив';

  @override
  String get onboardingPainCta => 'Да, поправете ми го ова →';

  @override
  String get onboardingPainForget => 'Заборавам предмети во продавницата';

  @override
  String get onboardingPainFamily =>
      'Моето семејство никогаш не го гледа списокот';

  @override
  String get onboardingPainOverspend => 'Секогаш одам преку буџетот';

  @override
  String get onboardingPainRepeat => 'Едно патување никогаш не е доволно';

  @override
  String get aiWelcomeContent =>
      'Здраво! 👋 Јас сум **Кипи**, вашиот личен асистент за купување и рецепти!\n\nЈас сум тука да ти помогнам:\n🛒 **Организирајте го** вашето купување по категории автоматски\n💰 **Следете го** вашиот буџет и давајте совети за заштеда на пари\n🍲 **Предложете** вкусни рецепти со она што веќе го имате\n\nКако можам да ви помогнам денес? Можете да започнете со креирање на вашата прва листа!';

  @override
  String get aiWelcomeSuggestCreateList => 'Направете ја мојата прва листа';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Кипи, помогни ми да ја креирам мојата прва листа за купување';

  @override
  String get aiWelcomeSuggestSave => 'Како да заштедите пари?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Кипи, како можеш да ми помогнеш да заштедам пари на намирници?';

  @override
  String get suggestionMilk => 'Млеко';

  @override
  String get suggestionBread => 'Леб';

  @override
  String get suggestionEggs => 'Јајца';

  @override
  String get suggestionCoffee => 'Кафе';

  @override
  String get suggestionRice => 'Ориз';

  @override
  String get suggestionFruits => 'Овошје';
}
