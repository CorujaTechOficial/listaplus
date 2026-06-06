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
  String get chatHintBlocked => 'Unlock AI to chat';

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
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get aiTeaserFallback =>
      'Subscribe to Premium to unlock the full response and get unlimited AI tips for your shopping...';

  @override
  String get kipiListTitle => 'KipiList';

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
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError => 'Error loading offers. Try again.';

  @override
  String get paywallPurchaseError => 'Could not complete purchase. Try again.';

  @override
  String get paywallRestoreError => 'No active subscription found to restore.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAYS FREE';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count WEEKS FREE',
      one: '$count WEEK FREE',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MONTHS FREE',
      one: '$count MONTH FREE',
    );
    return '$_temp0';
  }

  @override
  String get paywallFeaturesTitle => 'Everything you need:';

  @override
  String get paywallFeatureUnlimitedLists => 'Unlimited Lists';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Expense Control';

  @override
  String get paywallFeatureSharing => 'Sharing';

  @override
  String get paywallBeforeAfterTitle => 'AI Before and After:';

  @override
  String get paywallLabelCommon => 'Common';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'rice';

  @override
  String get paywallBeforeItem2 => 'soap';

  @override
  String get paywallBeforeItem3 => 'meat';

  @override
  String get paywallBeforeItem4 => 'bread';

  @override
  String get paywallAfterItem1 => 'Grains';

  @override
  String get paywallAfterItem2 => 'Cleaning';

  @override
  String get paywallAfterItem3 => 'Meats';

  @override
  String get paywallAfterItem4 => 'Bakery';

  @override
  String get paywallTestimonialsTitle => 'What our users say:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organizes my shopping in seconds. I save 20 min per market trip.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'I never forgot a list item again. The AI chat is sensational!';

  @override
  String get paywallSocialProof => '+2,400 families use it';

  @override
  String get paywallCtaUnlock => 'Unlock PRO';

  @override
  String get paywallBestValue => 'BEST VALUE';

  @override
  String get paywallMostPopular => 'MOST POPULAR';

  @override
  String get paywallSafeCheckout => 'Secure payment';

  @override
  String get paywallSelectPlan => 'Choose your plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SAVE $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Only $price/month';
  }

  @override
  String get paywallPackageAnnual => 'Annual Plan';

  @override
  String get paywallPackageMonthly => 'Monthly Plan';

  @override
  String get paywallPackageLifetime => 'Lifetime Access';

  @override
  String get paywallCancelAnytime => 'Cancel anytime. No commitment.';

  @override
  String get paywallPolicy => 'Privacy Policy';

  @override
  String get paywallTerms => 'Terms of Use';

  @override
  String get paywallRestore => 'Restore';

  @override
  String get paywallHeroHeadline => 'Kipi AI always by your side';

  @override
  String get paywallHeroSubtitle =>
      'Add items, organize lists and save time with AI in your pocket';

  @override
  String get paywallBenefit1Desc => 'Adds, organizes and suggests items 24/7';

  @override
  String get paywallBenefit2Desc => 'No 3-list limit';

  @override
  String get paywallBenefit3Desc => 'Expense tracking and family lists';

  @override
  String get paywallPackageMonthlyDesc => 'Full flexibility';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Start free — $days days';
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
}
