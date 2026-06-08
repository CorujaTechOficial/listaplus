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
      few: 'Изабране $count ставке',
      one: 'Изабрана $count ставка',
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
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

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
  String get paywallTrialTitle => 'Испробајте КипиЛист Про бесплатно 7 дана';

  @override
  String get paywallTrialSubtitle => 'Откажите било када. Без накнаде данас.';

  @override
  String get paywallTrialCta => 'Започните бесплатну пробну верзију';

  @override
  String get recipeAddToList => 'Додај на листу за куповину';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '__ПХ0__ састојци додати у __ПХ1__';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Све што вам треба:';

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
  String get paywallProLabel => 'PRO';

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
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

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
      few: '$deficit ставке треба купити',
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
      few: '$count порције',
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
  String shareReferralText(Object url) {
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
  String get mealPlannerPantryAllAvailable => 'На залихама';

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
  String get notInformed => 'Није обавештен';

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
  String get manageCategoriesTitle => 'Управљајте категоријама';

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
  String get sortAZ => 'А–З';

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
  String get backToToday => 'Назад на данас';

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
