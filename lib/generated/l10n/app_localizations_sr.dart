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
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

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
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

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
    return '$spent / $budget';
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
    return 'Уклонити \"$name\" са ваших листи? Оригинална листа неће бити погођена.';
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
  String get newChat => 'New Chat';

  @override
  String get noHistory => 'No chat history';

  @override
  String get deleteSession => 'Delete Chat';

  @override
  String get deleteSessionConfirm =>
      'Are you sure you want to delete this chat? The messages will be permanently lost.';

  @override
  String get clearHistory => 'Очисти историју';

  @override
  String get clearHistoryConfirm => 'Очистити све поруке у овој сесији?';

  @override
  String get chatHint => 'Откуцајте вашу поруку...';

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Пријавите се да откључате\nPremium функције';

  @override
  String get signInGoogle => 'Пријави се са Google-ом';

  @override
  String get signInApple => 'Пријави се са Apple-ом';

  @override
  String get continueAsGuest => 'Настави као гост';

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
    return 'Грешка при пријави: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
    return '$spent / $budget';
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
      'Синхронизација у реалном времену са другим људима';

  @override
  String get quickRecipe => 'Брзи рецепт';

  @override
  String get quickRecipePrompt => 'Предложи рецепте са ставкама из моје листе.';

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
      'Говорите природно да управљате вашом листом!\n\nПримери:\n• \'Додај хлеб, сир и шунку\'\n• \'Уклони детерџент за веш\'\n• \'Промени тему у плаву\'\n\nОво је ексклузивна функција Lista Plus Premium-а.';

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
      'Ваша повратна информација је примљена и помаже нам да побољшамо Lista Plus за све.';

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

  @override
  String get mealPlannerTitle => 'Meal Planner';

  @override
  String get mealPlannerViewMonthly => 'Monthly view';

  @override
  String get mealPlannerViewWeekly => 'Weekly view';

  @override
  String get mealPlannerNoMeals => 'No meals planned';

  @override
  String get mealPlannerNoMealsHint => 'Tap a day to add a meal';

  @override
  String get mealPlannerLoading => 'Loading meal plan...';

  @override
  String get mealPlannerError => 'Error loading meal plan';

  @override
  String get mealPlannerAddMeal => 'Add Meal';

  @override
  String get mealPlannerEditMeal => 'Edit Meal';

  @override
  String get mealPlannerDeleteMeal => 'Remove meal';

  @override
  String get mealPlannerMealDeleted => 'Meal removed';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count servings',
      one: '$count serving',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Servings';

  @override
  String get mealPlannerNoteLabel => 'Note (optional)';

  @override
  String get mealPlannerSelectRecipe => 'Select a recipe';

  @override
  String get mealPlannerSearchRecipes => 'Search recipes...';

  @override
  String get mealPlannerNoRecipesFound => 'No recipes found';

  @override
  String get mealPlannerNoRecipesHint =>
      'Create recipes in the Recipes tab first';

  @override
  String get mealPlannerSave => 'Add to plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count of $total meals planned';
  }

  @override
  String get mealPlannerGenerateList => 'Generate shopping list';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Add all ingredients from planned meals this week to your shopping list?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingredient(s) added to your list!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'No ingredients to add. Plan some meals with recipes first.';

  @override
  String get mealPlannerGenerateListNoList => 'Create a shopping list first.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Breakfast';

  @override
  String get mealPlannerMealTypeLunch => 'Lunch';

  @override
  String get mealPlannerMealTypeDinner => 'Dinner';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Date';

  @override
  String get mealPlannerWeekEmpty => 'Nothing planned for this week';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tap any day to start planning your meals!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
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
