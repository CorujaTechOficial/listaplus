// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appTitle => 'Листа за куповину';

  @override
  String get lists => 'Листе';

  @override
  String get pantry => 'Остава';

  @override
  String get navChat => 'Ћаскање';

  @override
  String get navRecipes => 'Рецепти';

  @override
  String get navLists => 'Листе';

  @override
  String get navMealPlanner => 'Мени';

  @override
  String get cancel => 'Откажи';

  @override
  String get save => 'Сачувај';

  @override
  String get create => 'Направи';

  @override
  String get add => 'Додај';

  @override
  String get remove => 'Уклони';

  @override
  String get delete => 'Обриши';

  @override
  String get edit => 'Уреди';

  @override
  String get copy => 'Копирај';

  @override
  String get next => 'Следеће';

  @override
  String get retry => 'Покушај поново';

  @override
  String get regenerate => 'Регенериши';

  @override
  String get copiedToClipboard => 'Копирано у клипборд';

  @override
  String get confirm => 'Потврди';

  @override
  String get close => 'Затвори';

  @override
  String get import => 'Увези';

  @override
  String get rename => 'Преименуј';

  @override
  String get upgrade => 'Надогради';

  @override
  String get clear => 'Очисти';

  @override
  String error(String message) {
    return 'Грешка: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Грешка: $message';
  }

  @override
  String get purchaseError => 'Грешка при обради куповине. Покушајте поново.';

  @override
  String get restoreError => 'Грешка при враћању куповина. Покушајте поново.';

  @override
  String get loading => 'Учитавам...';

  @override
  String get fieldRequired => 'Обавезно поље';

  @override
  String get addedFeedback => 'Додато!';

  @override
  String get profile => 'Профил';

  @override
  String get exitShoppingMode => 'Изађите из режима куповине';

  @override
  String get exit => 'Изађи';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Изабрано $count ставки',
      one: '$count ставка изабрана',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Процењено';

  @override
  String get alreadyPurchased => 'Већ купљено';

  @override
  String get clearList => 'Очисти листу';

  @override
  String get clearPurchased => 'Очисти купљено';

  @override
  String get share => 'Подели';

  @override
  String get shareViaCode => 'Подели преко кода';

  @override
  String get importViaCode => 'Увези преко кода';

  @override
  String get listAssistant => 'Асистент за листу';

  @override
  String get globalAssistant => 'Глобални асистент';

  @override
  String get becomePremium => 'Постани Premium';

  @override
  String get manageSubscription => 'Управљај претплатом';

  @override
  String get completePurchase => 'Заврши куповину';

  @override
  String get confirmClearList => 'Уклонити све ставке?';

  @override
  String get shareListTitle => 'Подели листу';

  @override
  String get shareThisCode => 'Поделите овај код:';

  @override
  String get validForLimitedTime => 'Важи ограничено време';

  @override
  String get importListTitle => 'Увези листу';

  @override
  String get enterCodeHint => 'Унесите код';

  @override
  String get confirmArchiveTitle => 'Заврши куповину';

  @override
  String get confirmArchiveContent =>
      'Завршити ову куповину и архивирати листу?';

  @override
  String get complete => 'Заврши';

  @override
  String get listArchived => 'Листа је успешно архивирана!';

  @override
  String listAdded(String listName) {
    return '$listName додата!';
  }

  @override
  String get buy => 'Купи';

  @override
  String get unmark => 'Поништи ознаку';

  @override
  String confirmDeleteItems(int count) {
    return 'Уклонити $count ставку/и?';
  }

  @override
  String get confirmDeleteTitle => 'Потврди';

  @override
  String confirmContent(int count) {
    return 'Уклонити $count ставку/и?';
  }

  @override
  String get archiveList => 'Архивирај листу';

  @override
  String get pantryAppBar => 'Остава';

  @override
  String get generateShoppingList => 'Генериши листу за куповину';

  @override
  String get pantryEmpty => 'Празна остава';

  @override
  String get pantryEmptySubtitle =>
      'Додајте производе које желите да држите код куће';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ставку/и треба купити';
  }

  @override
  String get noItemsToBuy => 'Нема ставки за куповину';

  @override
  String get newPantryList => 'Куповина из оставе';

  @override
  String get newListTitle => 'Нова листа за куповину';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ставка/и ће бити додато';
  }

  @override
  String get listNameLabel => 'Назив листе';

  @override
  String listCreated(String name, int count) {
    return 'Листа \"$name\" је креирана са $count ставки';
  }

  @override
  String get noTracking => 'Без праћења';

  @override
  String get markAsPurchased => 'Означи као купљено';

  @override
  String editPantryItem(String name) {
    return 'Уреди $name';
  }

  @override
  String get idealQuantity => 'Идеална количина';

  @override
  String get currentQuantity => 'Тренутна количина';

  @override
  String get consumed => 'Потрошено';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name допуњено на $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Уклонити \"$name\" из оставе?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Уреди $name';
  }

  @override
  String get scanProductTitle => 'Сцан Продуцт';

  @override
  String get positionBarcodeCenter => 'Поставите бар код у центар';

  @override
  String get product => 'Производ';

  @override
  String get settingsAppBar => 'Подешавања';

  @override
  String get language => 'Језик';

  @override
  String get languagePortuguese => 'Португалски (Бразил)';

  @override
  String get languageEnglish => 'Енглески';

  @override
  String get languageSystem => 'Системски подразумевани';

  @override
  String get chooseLanguage => 'Изаберите Језик';

  @override
  String get searchLanguage => 'Претражи језик...';

  @override
  String get currency => 'Валута';

  @override
  String get chooseCurrency => 'Изаберите Валута';

  @override
  String get searchCurrency => 'Претражи валуту...';

  @override
  String get appearance => 'Изглед';

  @override
  String get light => 'Светло';

  @override
  String get system => 'Систем';

  @override
  String get dark => 'Тамно';

  @override
  String get themeColor => 'Боја теме';

  @override
  String get dynamicColors => 'Динамичне боје';

  @override
  String get dynamicColorsSubtitle => 'Користите боје на основу позадине';

  @override
  String get dynamicColorsEnabledWarning =>
      'Онемогућите динамичке боје да би боја теме ступила на снагу';

  @override
  String get finance => 'Финансије';

  @override
  String get monthlyBudgetNav => 'Месечни буџет';

  @override
  String get budgetSubtitle => 'Пратите своју месечну потрошњу';

  @override
  String get data => 'Подаци';

  @override
  String get backupNav => 'Резервна копија';

  @override
  String get backupSubtitle => 'Извезите или увозите своје податке';

  @override
  String get about => 'О апликацији';

  @override
  String get version => 'Верзија';

  @override
  String get privacy => 'Приватност';

  @override
  String get termsOfUse => 'Услови коришћења';

  @override
  String get myAchievements => 'Моја достигнућа';

  @override
  String get itemsPurchased => 'Купљени артикли';

  @override
  String get totalSavings => 'Тотал Савингс';

  @override
  String get currentStreak => 'Цуррент Стреак';

  @override
  String streakDays(int count) {
    return '__ПХ0__ дана';
  }

  @override
  String get unlockedBadges => 'Откључане значке';

  @override
  String get badgeBeginner => 'Бегиннер';

  @override
  String get badgeOrganized => 'Организовано';

  @override
  String get badgeSavingMaster => 'Савинг Мастер';

  @override
  String get badgeSuperPlanner => 'Супер планер';

  @override
  String get backupTitle => 'Резервна копија';

  @override
  String get backupPremiumDescription =>
      'Резервна копија и извоз су Premium функција';

  @override
  String get exportData => 'Извези податке';

  @override
  String get exportDataSubtitle => 'Сачувај све листе као JSON';

  @override
  String get importData => 'Увези податке';

  @override
  String get importDataSubtitle => 'Врати листе из JSON-а';

  @override
  String get importJsonTitle => 'Увези JSON';

  @override
  String get importJsonHint => 'Налепите резервни JSON овде...';

  @override
  String get backupExported => 'Резервна копија је извезена!';

  @override
  String get budgetAppBar => 'Месечни буџет';

  @override
  String get budgetPremiumLocked => 'Глобални месечни буџет је Premium';

  @override
  String get budgetUpgradePrompt => 'Надогради да откључаш';

  @override
  String get noBudgetDefined => 'Буџет није постављен';

  @override
  String totalEstimated(String amount) {
    return 'Укупно процењено: $amount';
  }

  @override
  String get setBudgetButton => 'Постави буџет';

  @override
  String get budgetLists => 'Листе';

  @override
  String get budgetValueLabel => 'Износ';

  @override
  String get setBudgetTitle => 'Месечни буџет';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '__ПХ0__ / __ПХ1__';
  }

  @override
  String get filterAll => 'Све';

  @override
  String get filterPending => 'На чекању';

  @override
  String get filterPurchased => 'Купљено';

  @override
  String get sortName => 'Назив';

  @override
  String get sortCategory => 'Категорија';

  @override
  String get sortDate => 'Датум';

  @override
  String get sortManual => 'Ручно';

  @override
  String progressItemsOf(int purchased, int total) {
    return '__ПХ0__ од __ПХ1__ ставки';
  }

  @override
  String progressBudget(String amount) {
    return 'Буџет: __ПХ0__';
  }

  @override
  String progressTotal(String amount) {
    return 'Укупно: __ПХ0__';
  }

  @override
  String get addItem => 'Додај ставку';

  @override
  String get itemName => 'Назив ставке';

  @override
  String get quantityShort => 'Кол';

  @override
  String get unit => 'Јединица';

  @override
  String get category => 'Категорија';

  @override
  String get estimatedPrice => 'Процењена цена';

  @override
  String get addItemPrice => 'Процењена цена';

  @override
  String get editItem => 'Уреди ставку';

  @override
  String get quantityFull => 'Количина';

  @override
  String get editItemPrice => 'Процењена цена';

  @override
  String get addToPantry => 'Додај у оставу';

  @override
  String addToPantryPrompt(String name) {
    return 'Додати \"$name\" у вашу оставу?';
  }

  @override
  String get yes => 'Да';

  @override
  String get productName => 'Назив производа';

  @override
  String get idealQty => 'Идеална количина';

  @override
  String get currentQty => 'Тренутна количина';

  @override
  String get trackStock => 'Прати залихе';

  @override
  String get trackStockActive => 'Појављује се у предлозима за куповину';

  @override
  String get trackStockInactive => 'Не генерише предлог за куповину';

  @override
  String get createListDialog => 'Направи листу';

  @override
  String get renameListDialog => 'Преименуј листу';

  @override
  String get listHistory => 'Историја листи';

  @override
  String get myLists => 'Моје листе';

  @override
  String get viewActive => 'Прегледај активне';

  @override
  String get viewHistory => 'Прегледај историју';

  @override
  String get noArchivedLists => 'Нема архивираних листи';

  @override
  String get noActiveLists => 'Нема активних листи';

  @override
  String completedOn(String date) {
    return 'Завршено $date';
  }

  @override
  String get sharedLabel => 'Дељено';

  @override
  String get restore => 'Врати';

  @override
  String get removeSharedTooltip => 'Уклони';

  @override
  String get deleteListTitle => 'Обриши листу';

  @override
  String deleteListContent(String name) {
    return 'Да ли сте сигурни да желите да обришете \"$name\"? Све ставке ће бити уклоњене.';
  }

  @override
  String get removeSharedListTitle => 'Уклони дељену листу';

  @override
  String removeSharedListContent(String name) {
    return 'Уклонити \"$name\" sa ваших листи? Оригинална листа неће бити погођена.';
  }

  @override
  String get createNewList => 'Направи нову листу';

  @override
  String get aiAssistant => 'AI асистент';

  @override
  String get aiAssistantDescription =>
      'Добијте паметне предлоге, рецепте и персонализоване савете са нашим AI асистентом.';

  @override
  String get generalAssistant => 'Општи асистент';

  @override
  String get newChat => 'Ново ћаскање';

  @override
  String get noHistory => 'Нема историје ћаскања';

  @override
  String get deleteSession => 'Избриши ћаскање';

  @override
  String get deleteSessionConfirm =>
      'Да ли сте сигурни да желите да избришете ово ћаскање? Поруке ће бити трајно изгубљене.';

  @override
  String get clearHistory => 'Очисти историју';

  @override
  String get clearHistoryConfirm => 'Очистити све поруке у овој сесији?';

  @override
  String get chatHint => 'Откуцајте вашу поруку...';

  @override
  String get chatHintBlocked => 'Откључајте АИ за ћаскање';

  @override
  String chatError(String error) {
    return 'Грешка при учитавању ћаскања: $error';
  }

  @override
  String get aiAssistantTitle => 'АИ Ассистант';

  @override
  String get closeSheet => 'Затвори';

  @override
  String get scanBarcodeTitle => 'Скенирај бар код';

  @override
  String get listHelp => 'Како могу да вам помогнем са вашом листом?';

  @override
  String get generalHelp => 'Како могу да вам помогнем са куповином данас?';

  @override
  String get chatSubtitle =>
      'Питајте за предлоге ставки, рецепте или савете за уштеду.';

  @override
  String get aiError =>
      'Жао нам је, дошло је до грешке при обради вашег захтева. Проверите везу или покушајте поново касније.';

  @override
  String get aiLimitAlmostReached => 'Скоро понестало АИ порука';

  @override
  String get unlockAi => 'Откључајте неограничени АИ';

  @override
  String get aiTeaserFallback =>
      'Претплатите се на Премиум да бисте откључали потпун одговор и добили неограничене АИ савете за куповину...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining АИ радњи су преостале овог месеца — надоградите за неограничено';
  }

  @override
  String get aiUsageExhausted =>
      'Достигнуто је месечно ограничење АИ. Надоградите на Про за неограничено →';

  @override
  String get kipiListTitle => 'КипиЛист';

  @override
  String get loginPrompt => 'Пријавите се да откључате\nPremium функције';

  @override
  String get signInGoogle => 'Пријави се sa Google-ом';

  @override
  String get signInApple => 'Пријави се sa Apple-ом';

  @override
  String get continueAsGuest => 'Настави као гост';

  @override
  String get onboardingWelcomeTitle => 'Добродошли у KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Најпаметнији начин да организујете куповину и уштедите новац.';

  @override
  String get onboardingSetupTitle => 'Персонализујте своје искуство';

  @override
  String get onboardingSetupDesc =>
      'Одаберите како желите да KipiList изгледа и ради за вас.';

  @override
  String get onboardingLoginTitle => 'Сачувајте све у облаку';

  @override
  String get onboardingLoginDesc =>
      'Ваши подаци су синхронизовани на свим вашим уређајима';

  @override
  String get onboardingShareTitle => 'Поделите sa онима које волите';

  @override
  String get onboardingShareDesc =>
      'Синхронизујте листе sa породицом и пријатељима у реалном времену';

  @override
  String get onboardingPremiumTitle => 'Откључајте све функције';

  @override
  String get onboardingPremiumSubtitle =>
      'Извуците максимум из својих листа за куповину';

  @override
  String get onboardingAnnualBadge => 'Најбоља вредност';

  @override
  String get onboardingMonthlyLabel => 'Месечно';

  @override
  String get onboardingAnnualLabel => 'Годишњи';

  @override
  String get onboardingViewAllPlans => 'Погледајте све планове';

  @override
  String get onboardingSubscribeCta => 'Претплатите се';

  @override
  String get onboardingCancelAnytime => 'Откажите било када. Без обавеза.';

  @override
  String get onboardingContinueAsGuest => 'Наставите као гост';

  @override
  String get onboardingRestore => 'Ресторе Пурцхасес';

  @override
  String get onboardingRestoreDesc =>
      'Већ имате претплату? Додирните овде да бисте га вратили.';

  @override
  String get onboardingMaybeLater => 'Можда касније';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Хеј __ПХ0__, организуј куповину на прави начин.';
  }

  @override
  String get onboardingSlide1Title => 'Паметне листе за куповину';

  @override
  String get onboardingSlide1Body =>
      'Креирајте и делите листе одмах. Кипи аутоматски додаје ставке на основу ваших навика.';

  @override
  String get onboardingSlide2Title => 'Упознај Кипи';

  @override
  String get onboardingSlide2Body =>
      'Питајте било шта - направите листе, пронађите рецепте, пратите своју оставу, планирајте своју недељу.';

  @override
  String get onboardingSlide3Title => 'Остава и планирање оброка';

  @override
  String get onboardingSlide3Body =>
      'Пратите шта имате, планирајте оброке и аутоматски генеришите листе за куповину.';

  @override
  String get onboardingExit => 'Изађи';

  @override
  String get onboardingPersonalizationTitle => 'хајде да те упознамо';

  @override
  String get onboardingPersonalizationDesc =>
      'Користићемо ово да персонализујемо ваше предлоге и учинимо куповину паметнијом.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Која је твоја омиљена храна?';

  @override
  String get onboardingPersonalizationFoodHint => 'нпр. Пица, суши, лазање...';

  @override
  String get onboardingPersonalizationCta => 'Настави';

  @override
  String get onboardingPersonalizationSkip => 'Прескочи за сада';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Реците нам своју омиљену храну да наставимо';

  @override
  String get settingsDefaultScreen => 'Подразумевани почетни екран';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Изаберите између листе за куповину или АИ ћаскања';

  @override
  String get settingsScreenList => 'Листа за куповину';

  @override
  String get settingsScreenChat => 'АИ Цхат';

  @override
  String loginError(String error) {
    return 'Грешка при пријави: $error';
  }

  @override
  String get paywallTitle => 'КипиЛист Премиум';

  @override
  String get paywallLoadingError =>
      'Грешка при учитавању понуда. Покушајте поново.';

  @override
  String get paywallPurchaseError =>
      'Није могуће завршити куповину. Покушајте поново.';

  @override
  String get paywallRestoreError =>
      'Није пронађена активна претплата за враћање.';

  @override
  String paywallTrialDays(Object days) {
    return '__ПХ0__ ДАНА БЕСПЛАТНО';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count НЕДЕЉА БЕСПЛАТНО',
      one: '$count НЕДЕЉА БЕСПЛАТНО',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count БЕСПЛАТНИ МЕСЕЦИ',
      one: '$count БЕСПЛАТНИ МЕСЕЦ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Пробајте бесплатно!';

  @override
  String get paywallTrialSubtitle => 'Откажите било када. Без накнаде данас.';

  @override
  String get paywallTrialCta => 'Започните бесплатну пробну верзију';

  @override
  String get recipeAddToList => 'Додај на листу за куповину';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'састојака је додато у $listName',
      one: 'other$listName',
    );
    return '$count $_temp0';
  }

  @override
  String get noListSelected =>
      'Није изабрана ниједна листа. Прво отворите листу.';

  @override
  String get paywallFeaturesTitle => 'Све што вам треба:';

  @override
  String get paywallFeatureDescAssistant =>
      'АИ аутоматски организује вашу листу';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Направите онолико листа колико вам је потребно';

  @override
  String get paywallFeatureDescSharing => 'Купујте заједно у реалном времену';

  @override
  String get paywallFeatureDescPantry => 'Пратите шта имате код куће';

  @override
  String get paywallFeatureDescBudget => 'Будите на буџету сваког месеца';

  @override
  String get paywallFeatureUnlimitedLists => 'Неограничене листе';

  @override
  String get paywallFeatureSmartAI => 'Смарт АИ';

  @override
  String get paywallFeatureExpenseControl => 'Контрола трошкова';

  @override
  String get paywallFeatureSharing => 'Дељење';

  @override
  String get paywallBeforeAfterTitle => 'АИ пре и после:';

  @override
  String get paywallLabelCommon => 'Цоммон';

  @override
  String get paywallLabelPro => 'КипиЛист ПРО';

  @override
  String get paywallBeforeItem1 => 'пиринач';

  @override
  String get paywallBeforeItem2 => 'сапун';

  @override
  String get paywallBeforeItem3 => 'месо';

  @override
  String get paywallBeforeItem4 => 'хлеба';

  @override
  String get paywallAfterItem1 => 'Зрна';

  @override
  String get paywallAfterItem2 => 'Чишћење';

  @override
  String get paywallAfterItem3 => 'Месо';

  @override
  String get paywallAfterItem4 => 'Пекара';

  @override
  String get paywallTestimonialsTitle => 'Шта кажу наши корисници:';

  @override
  String get paywallTestimonial1Name => 'Ен С.';

  @override
  String get paywallTestimonial1Text =>
      'АИ организује моју куповину за секунде. Уштедим 20 минута по обиласку пијаце.';

  @override
  String get paywallTestimonial2Name => 'Чарлс М.';

  @override
  String get paywallTestimonial2Text =>
      'Никада више нисам заборавио ставку на листи. АИ ћаскање је сензационално!';

  @override
  String get paywallSocialProof => 'Користи га +2.400 породица';

  @override
  String get paywallCtaUnlock => 'Откључај ПРО';

  @override
  String get paywallBestValue => 'НАЈБОЉА ВРЕДНОСТ';

  @override
  String get paywallMostPopular => 'НАЈПОПУЛАРНИЈИ';

  @override
  String get paywallProLabel => 'ПРО';

  @override
  String get paywallSafeCheckout => 'Сигурно плаћање';

  @override
  String get paywallSelectPlan => 'Изаберите свој план:';

  @override
  String paywallSavePercent(Object percent) {
    return 'УШТЕДИ __ПХ0__%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Само __ПХ0__/месечно';
  }

  @override
  String get paywallPackageAnnual => 'Годишњи план';

  @override
  String get paywallPackageMonthly => 'Месечни план';

  @override
  String get paywallPackageLifetime => 'Доживотни приступ';

  @override
  String get paywallCancelAnytime => 'Откажите било када. Без обавеза.';

  @override
  String paywallTrialInCard(int days) {
    return 'Првих __ПХ0__ дана БЕСПЛАТНО';
  }

  @override
  String get paywallSecuredByStore =>
      'Обезбеђује Гоогле Плаи · Откажите било када';

  @override
  String get paywallPolicy => 'Политика приватности';

  @override
  String get paywallTerms => 'Услови коришћења';

  @override
  String get paywallRestore => 'Ресторе';

  @override
  String get paywallHeroHeadline => 'Кипи АИ увек уз вас';

  @override
  String get paywallHeroSubtitle =>
      'Додајте ставке, организујте листе и уштедите време са АИ у џепу';

  @override
  String get paywallBenefit1Desc => 'Додаје, организује и предлаже ставке 24/7';

  @override
  String get paywallBenefit2Desc => 'Нема ограничења од 3 листе';

  @override
  String get paywallBenefit3Desc => 'Праћење трошкова и породичне листе';

  @override
  String get paywallPackageMonthlyDesc => 'Потпуна флексибилност';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Почните бесплатно — __ПХ0__ дана';
  }

  @override
  String get premiumUpgrade => 'Надогради да откључаш';

  @override
  String get itemRemoved => 'Ставка је уклоњена';

  @override
  String get undo => 'Поништи';

  @override
  String get emptyListTitle => 'Ваша листа је празна';

  @override
  String get emptyListSubtitle => 'Додајте ставке да бисте започели';

  @override
  String get noListFoundTitle => 'Нема пронађених листи';

  @override
  String get noListFoundSubtitle =>
      'Направите своју прву листу да бисте започели';

  @override
  String get createFirstList => 'Направи прву листу';

  @override
  String get listBudgetTitle => 'Буџет листе';

  @override
  String get budgetAmountLabel => 'Износ буџета';

  @override
  String get removeBudget => 'Уклони';

  @override
  String get prefUnlimitedLists => 'Неограничене листе';

  @override
  String get prefSharing => 'Дељење листи';

  @override
  String get prefFullHistory => 'Пуна историја';

  @override
  String get prefExportData => 'Извоз података';

  @override
  String get prefCustomThemes => 'Прилагођене теме';

  @override
  String get prefMonthlyBudget => 'Глобални месечни буџет';

  @override
  String get prefAIAssistant => 'Лични AI асистент';

  @override
  String get prefUnlimitedPantry => 'Неограничена остава';

  @override
  String get prefInteractiveArtifacts => 'Интерактивни AI Artifacts';

  @override
  String get themeGreen => 'Зелена';

  @override
  String get themeBlue => 'Плава';

  @override
  String get themePurple => 'Љубичаста';

  @override
  String get themeRed => 'Црвена';

  @override
  String get themeOrange => 'Наранџаста';

  @override
  String get themePink => 'Розе';

  @override
  String get themeIndigo => 'Индиго';

  @override
  String get themeAmber => 'Ћилибарна';

  @override
  String get themeTeal => 'Тиркизна';

  @override
  String get themeBrown => 'Браон';

  @override
  String get catFruits => 'Воће';

  @override
  String get catCleaning => 'Чишћење';

  @override
  String get catBeverages => 'Пића';

  @override
  String get catBakery => 'Пекара';

  @override
  String get catOthers => 'Остало';

  @override
  String get unitPack => 'пак';

  @override
  String get shareSubject => 'Листа за куповину';

  @override
  String get monthlyBudgetTitle => 'Месечни буџет';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '__ПХ0__ / __ПХ1__';
  }

  @override
  String get deleteListConfirm => 'Обриши листу';

  @override
  String get pantryItemRemoved => 'Ставка је уклоњена';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit ставки треба купити',
      one: '$deficit ставку треба купити',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Укупно у корпи';

  @override
  String get restockLabel => 'Допуни';

  @override
  String get advancedFeatures => 'Напредне функције';

  @override
  String get selectAll => 'Изабери све';

  @override
  String get deselectAll => 'Поништи избор свих';

  @override
  String get monthlyBudgetAppBar => 'Месечни буџет';

  @override
  String get budgetEditTitle => 'Месечни буџет';

  @override
  String get budgetDashboardTitle => 'Контролна табла';

  @override
  String get selectListForDashboard =>
      'Изаберите листу за преглед контролне табле.';

  @override
  String get spendingAnalysis => 'Анализа потрошње';

  @override
  String get noItemsToAnalyze => 'Нема ставки у листи за анализу.';

  @override
  String get markItemsToSeeAnalysis =>
      'Означите ставке као купљене да бисте видели анализу.';

  @override
  String get totalSpending => 'Укупно потрошено';

  @override
  String get spendingByCategory => 'Потрошња по категорији';

  @override
  String get achievements => 'Достигнућа';

  @override
  String get exportPdfExcel => 'Извези PDF/Excel';

  @override
  String get exportPdf => 'Извези као PDF';

  @override
  String get exportExcel => 'Извези као Excel';

  @override
  String get organizingAi => 'ОРГАНИЗУЈЕМ СА AI...';

  @override
  String get yesLabel => 'Да';

  @override
  String get noLabel => 'Не';

  @override
  String get shareListText => 'Моја листа за куповину';

  @override
  String get emptyListAddItems => 'Ваша листа је празна! Прво додајте ставке.';

  @override
  String get listOrganizedMagic =>
      'Листа магично организована по категоријама!';

  @override
  String get shoppingMode => 'Режим куповине';

  @override
  String get smartOrganization => 'Паметна организација';

  @override
  String get savings => 'Уштеда';

  @override
  String get shoppingModeHeader => 'РЕЖИМ КУПОВИНЕ';

  @override
  String get shareAsText => 'Пошаљи ставке као форматиран текст';

  @override
  String get shareRealtime =>
      'Синхронизација у реалном времену sa другим људима';

  @override
  String get quickRecipe => 'Брзи рецепт';

  @override
  String get quickRecipePrompt => 'Предложи рецепте sa ставкама из моје листе.';

  @override
  String get economyTips => 'Савети за уштеду';

  @override
  String get economyTipsPrompt =>
      'Како могу да уштедим новац на овој куповини?';

  @override
  String get organizeAisles => 'Организуј по пролазима';

  @override
  String get organizeAislesPrompt => 'Организуј по продајним пролазима.';

  @override
  String get recipeSuggestion => 'Предлог рецепта';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Преостало $remaining кредита';
  }

  @override
  String get addAllToList => 'Додај све у листу';

  @override
  String get organizeByAisles => 'Организуј по пролазима';

  @override
  String get voiceTranscriptionTooltip => 'Гласовно куцање (Бесплатно)';

  @override
  String get aiVoiceCommandTooltip => 'AI гласовна команда (Premium)';

  @override
  String get voiceCommandTitle => 'AI гласовна команда';

  @override
  String get voiceCommandContent =>
      'Говорите природно да управљате вашом листом!\n\nПримери:\n• \'Додај хлеб, сир и шунку\'\n• \'Уклони детерџент за веш\'\n• \'Промени тему у плаву\'\n\nОво је ексклузивна функција KipiList Premium-а.';

  @override
  String get voiceCommandPlanBtn => 'Погледај планове';

  @override
  String get itemsAddedSuccess => 'Ставке су успешно додате у листу!';

  @override
  String get viewList => 'Погледај листу';

  @override
  String get feedbackTitle => 'Пошаљи повратну информацију';

  @override
  String get feedbackPrompt => 'Шта бисте желели да поделите?';

  @override
  String get feedbackTypeBug => 'Пријави грешку';

  @override
  String get feedbackTypeBugHint => 'Нешто не ради како треба';

  @override
  String get feedbackTypeSuggestion => 'Предлог';

  @override
  String get feedbackTypeSuggestionHint => 'Идеја за побољшање апликације';

  @override
  String get feedbackTypeTranslation => 'Проблем превода';

  @override
  String get feedbackTypeTranslationHint => 'Нетачан или незграпан превод';

  @override
  String get feedbackTypeFeature => 'Захтев за функцију';

  @override
  String get feedbackTypeFeatureHint => 'Функција коју желите да видите';

  @override
  String get feedbackTypeOther => 'Остало';

  @override
  String get feedbackTypeOtherHint => 'Други тип повратне информације';

  @override
  String get feedbackHint => 'Опишите вашу повратну информацију детаљно...';

  @override
  String get feedbackSend => 'Пошаљи повратну информацију';

  @override
  String get feedbackSending => 'Слање...';

  @override
  String get feedbackThankYou => 'Хвала!';

  @override
  String get feedbackThankYouMessage =>
      'Ваша повратна информација је примљена и помаже нам да побољшамо KipiList за све.';

  @override
  String get feedbackBack => 'Назад';

  @override
  String feedbackError(String error) {
    return 'Грешка при слању: $error';
  }

  @override
  String get feedbackRetry => 'Покушај поново';

  @override
  String get feedbackSettingsTitle => 'Пошаљи повратну информацију';

  @override
  String get feedbackSettingsSubtitle =>
      'Пријави грешке, предложи побољшања или исправи преводе';

  @override
  String get aiEnergy => 'АИ енергија';

  @override
  String get searchInConversation => 'Тражи у конверзацији...';

  @override
  String get noMessagesFound => 'Није пронађена ниједна порука';

  @override
  String get suggestedQuestions => 'Предложена питања:';

  @override
  String get shoppingAssistant => 'Помоћник у куповини';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased од $total купљено';
  }

  @override
  String get estimatedCost => 'Процењено';

  @override
  String get viewItems => 'Прикажи ставке';

  @override
  String get noItemsInList => 'Нема ставки на листи';

  @override
  String get longHistoryWarning =>
      'Дуга историја: помоћник се фокусира на најновије поруке ради бољег учинка.';

  @override
  String get listening => 'слушам...';

  @override
  String get addDirectToList => 'Додајте директно на листу';

  @override
  String get unlockFullResponse => 'Откључајте пуни одговор';

  @override
  String get switchList => 'Листа за пребацивање';

  @override
  String get marketMode => 'Маркет Моде';

  @override
  String get backToChat => 'Назад на ћаскање';

  @override
  String get finishShopping => 'Завршите куповину';

  @override
  String get welcomeAiAssistant => 'Добродошли у АИ Ассистант';

  @override
  String get createListToStartAi =>
      'Направите листу за куповину да бисте почели да користите паметно ћаскање.';

  @override
  String get howCanIHelp => 'Како могу помоћи?';

  @override
  String get chatSubtitleShort => 'Питајте за цене, рецепте, организацију...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total купљено';
  }

  @override
  String get quickReplies => 'Брзи одговори:';

  @override
  String get voiceProFeature =>
      'Напредне гласовне команде су Про. Омогућавање основног диктата...';

  @override
  String get viewPro => 'Виев Про';

  @override
  String get errorLoadingChat =>
      'Упс! Нешто није у реду при учитавању ћаскања.';

  @override
  String get errorLoadingChatSubtitle =>
      'Проверите везу или покушајте поново касније.';

  @override
  String get errorOscillation =>
      'Ово се може догодити због осцилација мреже или привремене недоступности. Покушајте поново.';

  @override
  String get activeListening => 'Активно слушање';

  @override
  String get whatToDoWithItem => 'Шта желите да урадите sa овим предметом?';

  @override
  String get viewDetails => 'Прикажи детаље';

  @override
  String get openMenu => 'Отворите мени';

  @override
  String get viewRecipe => 'Погледај рецепт';

  @override
  String get recipeCreated => 'Рецепт креиран!';

  @override
  String get editRecipe => 'Уреди';

  @override
  String get deleteRecipe => 'Избриши';

  @override
  String get deleteRecipeConfirm => 'Избрисати овај рецепт?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Да ли сте сигурни да желите да избришете „$recipeName“? Ова радња се не може опозвати.';
  }

  @override
  String get ingredients => 'Састојци';

  @override
  String get instructions => 'Упутства';

  @override
  String get prepTime => 'Време припреме';

  @override
  String get recipeSaved => 'Рецепт је сачуван!';

  @override
  String get noRecipesSaved => 'Нема сачуваних рецепата';

  @override
  String get noRecipesSavedHint =>
      'Креирајте свој први прилагођени рецепт додиром на дугме испод.';

  @override
  String get myRecipes => 'Моји рецепти';

  @override
  String get newRecipe => 'Нови рецепт';

  @override
  String get loadingRecipes => 'Учитавање ваших рецепата...';

  @override
  String get errorLoadingRecipes => 'Грешка при учитавању рецепата';

  @override
  String get addIngredient => 'Додајте састојак';

  @override
  String get saveRecipe => 'Сачувај';

  @override
  String get recipeName => 'Назив рецепта';

  @override
  String get shortDescription => 'Кратак опис';

  @override
  String get prepTimeMinutes => 'Време припреме (минути)';

  @override
  String get instructionsHint => 'Унесите један корак у сваки ред...';

  @override
  String get addPhoto => 'Додај фотографију';

  @override
  String get imageUrlPlaceholder => 'Или налепите УРЛ слике';

  @override
  String get tags => 'Ознаке';

  @override
  String get recipeTags => 'Ознаке за рецепте';

  @override
  String get suggestedTags => 'Предложено';

  @override
  String get searchRecipes => 'Претражи рецепте...';

  @override
  String get filterByTag => 'Филтрирајте према ознаци';

  @override
  String get allTags => 'Све';

  @override
  String get recipeDeleted => 'Рецепт је избрисан';

  @override
  String get saveChanges => 'Сачувај промене';

  @override
  String get editRecipeTitle => 'Уреди рецепт';

  @override
  String get newRecipeTitle => 'Нови рецепт';

  @override
  String get requiredField => 'Обавезно';

  @override
  String get chooseImageSource => 'Изаберите извор слике';

  @override
  String get gallery => 'Галерија';

  @override
  String get enterUrl => 'Унесите УРЛ';

  @override
  String get recipeImage => 'Слика рецепта';

  @override
  String get removeImage => 'Уклони слику';

  @override
  String get mealPlannerTitle => 'Планер оброка';

  @override
  String get mealPlannerViewMonthly => 'Месечни преглед';

  @override
  String get mealPlannerViewWeekly => 'Недељни преглед';

  @override
  String get mealPlannerNoMeals => 'Нема планираних оброка';

  @override
  String get mealPlannerNoMealsHint => 'Додирните дан да додате оброк';

  @override
  String get mealPlannerLoading => 'Учитавање плана оброка...';

  @override
  String get mealPlannerError => 'Грешка при учитавању плана оброка';

  @override
  String get mealPlannerAddMeal => 'Додај оброк';

  @override
  String get mealPlannerEditMeal => 'Уреди оброк';

  @override
  String get mealPlannerDeleteMeal => 'Уклоните оброк';

  @override
  String get mealPlannerMealDeleted => 'Оброк уклоњен';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count порција',
      one: '$count порција',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Порције';

  @override
  String get mealPlannerNoteLabel => 'Напомена (опционо)';

  @override
  String get mealPlannerSelectRecipe => 'Изаберите рецепт';

  @override
  String get mealPlannerSearchRecipes => 'Претражи рецепте...';

  @override
  String get mealPlannerNoRecipesFound => 'Није пронађен ниједан рецепт';

  @override
  String get mealPlannerNoRecipesHint =>
      'Прво направите рецепте на картици Рецепти';

  @override
  String get mealPlannerSave => 'Додајте у план';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count од $total планираних оброка';
  }

  @override
  String get mealPlannerGenerateList => 'Генеришите листу за куповину';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Додајте све састојке из планираних оброка ове недеље на своју листу за куповину?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count састојак(и) додат(и) на вашу листу!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Нема састојака за додавање. Прво планирајте неке оброке са рецептима.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Прво направите листу за куповину.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Доручак';

  @override
  String get mealPlannerMealTypeLunch => 'Ручак';

  @override
  String get mealPlannerMealTypeDinner => 'Вечера';

  @override
  String get mealPlannerMealTypeSnack => 'Снацк';

  @override
  String get mealPlannerDateLabel => 'Датум';

  @override
  String get mealPlannerWeekEmpty => 'Ништа није планирано за ову недељу';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Додирните било који дан да почнете да планирате своје оброке!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes мин';
  }

  @override
  String get inviteToList => 'Позовите на листу';

  @override
  String get shareApp => 'Делите апликацију';

  @override
  String get shareAppDescription => 'Позовите пријатеље да користе KipiList';

  @override
  String shareReferralText(String url) {
    return 'Користим KipiList да организујем куповину! Преузмите преко моје везе и обоје добијамо 7 дана Премиум бесплатног: $url';
  }

  @override
  String get shareReferralSubject => 'Добијте 7 дана KipiList Премиум!';

  @override
  String get gestureHint => 'Држите да изаберете • Превуците да бисте уклонили';

  @override
  String get catalogTitle => 'Каталог';

  @override
  String get catalogMyFrequents => 'Ми Фрекуентс';

  @override
  String get catalogSearchGlobal => 'Претражите било који производ...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Тражи у __ПХ0__...';
  }

  @override
  String get catalogSortPopular => 'Најпопуларнији';

  @override
  String get catalogSortAZ => 'А–З';

  @override
  String get catalogFilterNational => 'Држављани';

  @override
  String get catalogRareSection => 'мање уобичајено у вашој земљи';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ставке',
      one: 'ставка',
    );
    return 'Додај $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Производ није пронађен, унесите назив';

  @override
  String get catalogBrowse => 'Прегледајте каталог';

  @override
  String get offlineBanner => 'Ви сте ван мреже';

  @override
  String get consentTitle => 'Приватност и аналитика';

  @override
  String get consentBody =>
      'КипиЛист користи Фиребасе аналитику да побољша ваше искуство. Ваши подаци се обрађују у складу са нашом Политиком приватности.';

  @override
  String get consentAccept => 'Прихвати';

  @override
  String get consentDecline => 'Не, хвала';

  @override
  String get mealPlannerPantryAllAvailable => 'Сви састојци доступни';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'недостају ставке',
      one: 'недостаје ставка',
    );
    return '$count $_temp0';
  }

  @override
  String get expirationDate => 'Датум истека';

  @override
  String get notInformed => 'Није постављено';

  @override
  String get skip => 'Скип';

  @override
  String get onboardingAiTitle => 'Ћаскај са Кипи';

  @override
  String get onboardingAiGreeting =>
      'Здраво! Ја сам Кипи, твој лични помоћник у куповини! 🛒';

  @override
  String get onboardingAiAskName => 'како се зовеш?';

  @override
  String get onboardingAiNameHint => 'Унесите своје име...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Драго ми је, __ПХ0__! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Која је твоја омиљена храна?';

  @override
  String get onboardingAiFoodHint => 'нпр. Пица, суши...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Велики избори! Ево шта бих додао на вашу листу:\n\n__ПХ0__\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Да ли ово изгледа добро? Покушајте да унесете нешто друго!';

  @override
  String get onboardingAiReady =>
      'Сјајно! Спремни сте за почетак. Хајде да подесимо ваш налог!';

  @override
  String get onboardingAiContinue => 'Настави →';

  @override
  String get connectionError => 'Грешка везе';

  @override
  String connectionErrorDesc(String error) {
    return 'Повезивање са сервером није успело. Проверите свој интернет.\n(__ПХ0__)';
  }

  @override
  String get errorLoadingLists => 'Грешка при учитавању листа';

  @override
  String get noListsFound => 'Није пронађена ниједна листа';

  @override
  String get backToToday => 'Назад на данас';

  @override
  String get quickSuggestions => 'Брзи предлози';

  @override
  String get aiEnergyLow => 'Ниска АИ енергија';

  @override
  String get aiUnlockUnlimited => 'Откључајте неограничени АИ';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'бесплатних порука',
      one: 'бесплатна порука',
    );
    return '$remaining $_temp0 данас';
  }

  @override
  String get aiSubscribeUnlimited => 'Претплатите се на неограничени АИ';

  @override
  String get unlockWithAd => 'Откључајте помоћу огласа';

  @override
  String get conversationHistoryTitle => 'Историја разговора';

  @override
  String get noConversationsFound => 'Није пронађен ниједан разговор';

  @override
  String get errorLoadingHistory => 'Грешка при учитавању историје';

  @override
  String get deleteConversationTitle => 'Избрисати разговор?';

  @override
  String get deleteConversationConfirm => 'Ова радња се не може опозвати.';

  @override
  String get deleteConversation => 'Избриши';

  @override
  String get subscription => 'Претплата';

  @override
  String get kipiListProActive => 'КипиЛист Про Ацтиве';

  @override
  String get unlockPremiumTitle =>
      'Откључајте неограничене листе, АИ и још много тога';

  @override
  String get loadingSubscription => 'Учитавање претплате...';

  @override
  String get errorLoadingSubscription => 'Грешка при учитавању претплате';

  @override
  String get profileSection => 'Профил';

  @override
  String get myProfile => 'Мој профил';

  @override
  String get profileSubtitle => 'Личне преференције за АИ асистента';

  @override
  String get customizeAiAssistant => 'Прилагодите АИ асистента';

  @override
  String get assistantHistory => 'Историја асистента';

  @override
  String get assistantHistorySubtitle => 'Погледајте историју разговора';

  @override
  String get manageCategories => 'Управљајте категоријама';

  @override
  String get manageCategoriesSubtitle => 'Управљајте категоријама ставки';

  @override
  String get customizeAssistant => 'Прилагодите';

  @override
  String get assistantName => 'Име помоћника';

  @override
  String get chooseIcon => 'Изаберите икону';

  @override
  String get profileSaved => 'Профил је успешно сачуван!';

  @override
  String get errorSavingProfile => 'Грешка при чувању: __ПХ0__';

  @override
  String get userProfile => 'Кориснички профил';

  @override
  String get profileDescription =>
      'Реците нам своје личне преференције како би АИ асистент могао да предложи персонализоване артикле и рецепте.';

  @override
  String get preferredMarket => 'Преферирано тржиште';

  @override
  String get preferredMarketHint => 'На пример: Супермаркет Кс';

  @override
  String get dietaryRestrictions => 'Ограничења у исхрани';

  @override
  String get dietaryRestrictionsHint =>
      'На пример: вегански, вегетаријански, без глутена';

  @override
  String get marketsToAvoid => 'Тржишта која треба избегавати';

  @override
  String get marketsToAvoidHint => 'Нпр.: тржиште И, тржиште З';

  @override
  String get observations => 'Напомене';

  @override
  String get observationsHint => 'Остале преференције за помоћника';

  @override
  String get saveProfile => 'Сачувај профил';

  @override
  String get everythingReady => 'Све спремно!';

  @override
  String get youCompletedList => 'Завршили сте листу!';

  @override
  String get selectCheaperAlternative =>
      'Изаберите јефтинију алтернативу производа да бисте оптимизовали трошкове.';

  @override
  String get suggestedItems => 'Предложене ставке';

  @override
  String get swapped => 'Замењено';

  @override
  String get swap => 'Свап';

  @override
  String get chooseThemeColor => 'Изаберите Боја теме';

  @override
  String get manageCategoriesTitle => 'Управљајте категоријама';

  @override
  String get categoryLimitReached =>
      'Ограничење од 10 категорија у бесплатној верзији. Надоградите на Про!';

  @override
  String get deleteCategoryTitle => 'Избриши категорију';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Ставке у категорији „__ПХ0__“ ће бити премештене у „Остало“.\nНаставити?';
  }

  @override
  String get deleteCategory => 'Избриши';

  @override
  String get newCategoryDialog => 'Нова категорија';

  @override
  String get editCategoryDialog => 'Уреди категорију';

  @override
  String get categoryName => 'Назив категорије';

  @override
  String get categoryNameHint => 'На пример: Месо';

  @override
  String get categoryColorLabel => 'Боја';

  @override
  String get categoryIconLabel => 'Икона';

  @override
  String itemAddedSnack(String name) {
    return '__ПХ0__ додато';
  }

  @override
  String get kipiQuickBarHint => 'Шта треба да купите?';

  @override
  String replaceItem(String item) {
    return 'Замени __ПХ0__';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '__ПХ0__ __ПХ1__';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '__ПХ0__ __ПХ1__ — __ПХ2__';
  }

  @override
  String get onboardingHookHeadline => 'Никада више не заборавите намирницу';

  @override
  String get onboardingGoalSaveMoney => 'Уштедите новац';

  @override
  String get onboardingGoalNeverForget => 'Никада не заборавите предмете';

  @override
  String get onboardingGoalFaster => 'Купујте брже';

  @override
  String get onboardingGoalFamily => 'Организујте породичну куповину';

  @override
  String get onboardingGoalRecipes => 'Откријте рецепте';

  @override
  String get onboardingGoalPantry => 'Трачница остава';

  @override
  String get onboardingCommitmentsTitle => 'Шта је вама битно?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Изаберите своје циљеве да бисте персонализовали КипиЛист';

  @override
  String get onboardingCommitmentsCta => 'Идемо!';

  @override
  String get onboardingPersonalizationNameLabel => 'Твоје име';

  @override
  String get onboardingPersonalizationNameHint => 'Унесите своје име';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Шта купујете?';

  @override
  String get onboardingPersonalizationGroupTitle => 'За кога купујете?';

  @override
  String get onboardingCategoryGrocery => 'Намирнице';

  @override
  String get onboardingCategoryPharmacy => 'Апотека';

  @override
  String get onboardingCategoryRecipes => 'Рецепти';

  @override
  String get onboardingCategoryHome => 'Хоме';

  @override
  String get onboardingCategoryPet => 'Пет';

  @override
  String get onboardingGroupSolo => 'Само ја';

  @override
  String get onboardingGroupCouple => 'Пар';

  @override
  String get onboardingGroupFamily => 'Породица';

  @override
  String get onboardingLoadingTitle => 'Припремање вашег искуства...';

  @override
  String get onboardingLoadingStep1 => 'Анализирање ваших преференција...';

  @override
  String get onboardingLoadingStep2 => 'Подешавање АИ асистента...';

  @override
  String get onboardingLoadingStep3 => 'Скоро спреман...';

  @override
  String get onboardingLoadingStat1Label => 'Ставке каталогизоване';

  @override
  String get onboardingLoadingStat2Label => 'Корисници су помогли';

  @override
  String get onboardingLoadingStat3Label => 'Минути сачувани';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '__ПХ0__, уштедите на сваком путовању!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '__ПХ0__, никада не заборавите предмет!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '__ПХ0__, купујте упола краће!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '__ПХ0__, организуј породичну куповину!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '__ПХ0__, откриј нове рецепте!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '__ПХ0__, прати своју оставу савршено!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Уштедите на сваком путовању!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Никада не заборавите предмет!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Купујте у пола времена!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'Организујте породичну куповину!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Откријте нове рецепте!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Савршено пратите своју оставу!';

  @override
  String paywallPricePerDay(String price) {
    return 'Само __ПХ0__/дан — мање од кафе';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '__ПХ0__';
  }

  @override
  String get paywallSkipNow => 'Прескочи за сада';

  @override
  String get paywallTestimonial =>
      'АИ организује моју куповину за секунде. Штедим 20 минута по путовању.';

  @override
  String get paywallTestimonialAuthor => 'Ен С.';

  @override
  String get paywallTrialDisclaimer =>
      'Откажите било када · Бесплатно до истека пробног периода';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Хеј __ПХ0__! Шта ти __ПХ1__ треба?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Шта ти __ПХ0__ треба?';
  }

  @override
  String get onboardingAiDemoYes => 'Да!';

  @override
  String get onboardingAiDemoReaction => 'Лепо!';

  @override
  String get onboardingAiDemoChange => 'Промените ставку';

  @override
  String get onboardingAiDemoOffer => 'Покушајте да унесете нешто друго!';

  @override
  String get onboardingAiDemoContinue => 'Настави';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Ваша листа за куповину, сада са АИ';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Погледајте како Кипи прави вашу пуну листу за неколико секунди';

  @override
  String get onboardingAiDemoSlideCta => 'Желим ово! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Приређујем роштиљ 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'Спремни! Ево свега што вам треба:';

  @override
  String get onboardingAiDemoSlideDone =>
      'Комплетна листа за неколико секунди ✨';

  @override
  String get onboardingPainTitle => 'Шта вас највише фрустрира?';

  @override
  String get onboardingPainSubtitle => 'Будите искрени - поправићемо сваки';

  @override
  String get onboardingPainCta => 'Да, поправи ово за мене →';

  @override
  String get onboardingPainForget => 'Заборавим ствари у продавници';

  @override
  String get onboardingPainFamily => 'Моја породица никада не види листу';

  @override
  String get onboardingPainOverspend => 'Увек прелазим преко буџета';

  @override
  String get onboardingPainRepeat => 'Једно путовање никада није довољно';

  @override
  String get aiWelcomeContent =>
      'Здраво! 👋 Ја сам **Кипи**, ваш лични помоћник за куповину и рецепте!\n\nТу сам да вам помогнем:\n🛒 **Аутоматски организујте** куповину по категоријама\n💰 **Пратите** свој буџет и дајте вам савете за уштеду новца\n🍲 **Предложите** укусне рецепте са оним што већ имате\n\nКако вам могу помоћи данас? Можете почети тако што ћете направити своју прву листу!';

  @override
  String get aiWelcomeSuggestCreateList => 'Направите моју прву листу';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Кипи, помози ми да направим моју прву листу за куповину';

  @override
  String get aiWelcomeSuggestSave => 'Како уштедети новац?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Кипи, како ми можеш помоћи да уштедим новац на намирницама?';

  @override
  String get suggestionMilk => 'Млеко';

  @override
  String get suggestionBread => 'Хлеб';

  @override
  String get suggestionEggs => 'Јаја';

  @override
  String get suggestionCoffee => 'кафу';

  @override
  String get suggestionRice => 'Пиринач';

  @override
  String get suggestionFruits => 'Воће';
}
