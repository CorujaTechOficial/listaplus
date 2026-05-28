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
      'Disable dynamic colors for the theme color to take effect';

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
  String get newChat => 'New Chat';

  @override
  String get noHistory => 'No chat history';

  @override
  String get deleteSession => 'Delete Chat';

  @override
  String get deleteSessionConfirm =>
      'Are you sure you want to delete this chat? The messages will be permanently lost.';

  @override
  String get clearHistory => 'Исчисти историја';

  @override
  String get clearHistoryConfirm =>
      'Да се исчистат сите пораки во оваа сесија?';

  @override
  String get chatHint => 'Напишете ја вашата порака...';

  @override
  String chatError(String error) {
    return 'Грешка при вчитување на разговорот: $error';
  }

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Најавете се за да отклучите\nPremium функции';

  @override
  String get signInGoogle => 'Најави се со Google';

  @override
  String get signInApple => 'Најави се со Apple';

  @override
  String get continueAsGuest => 'Продолжи како гостин';

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
    return 'Грешка при најава: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'Зборувајте природно за да управувате со вашата листа!\n\nПримери:\n• \'Додај леб, сирење и шунка\'\n• \'Отстрани детергент за алишта\'\n• \'Промени ја темата во сина\'\n\nОва е ексклузивна функција на Lista Plus Premium.';

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
      'Вашата повратна информација е примена и ни помага да го подобриме Lista Plus за сите.';

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
  String get settingsAppBar => 'Поставки';

  @override
  String get language => 'Јазик';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Стандардно на системот';

  @override
  String get chooseLanguage => 'Изберете јазик';

  @override
  String get searchLanguage => 'Пребарај јазик...';

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
  String get clearHistory => 'Исчисти историја';

  @override
  String get clearHistoryConfirm =>
      'Да ги исчистиме сите пораки во оваа сесија?';

  @override
  String get chatHint => 'Напишете ја вашата порака...';

  @override
  String chatError(String error) {
    return 'Грешка при вчитување на разговорот: $error';
  }

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Најавете се за да отклучите\nпремиум функции';

  @override
  String get signInGoogle => 'Најави се со Google';

  @override
  String get signInApple => 'Најави се со Apple';

  @override
  String get continueAsGuest => 'Продолжи како гостин';

  @override
  String loginError(String error) {
    return 'Грешка при најава: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'Зборувајте природно за да управувате со вашата листа!\n\nПримери:\n• \'Додај леб, сирење и шунка\'\n• \'Отстрани детергент за алишта\'\n• \'Промени ја темата во сина\'\n\nОва е ексклузивна функција на Lista Plus Premium.';

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
      'Вашата повратна информација е примена и ни помага да го подобриме Lista Plus за сите.';

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
}
