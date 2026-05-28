// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'Списък за пазаруване';

  @override
  String get lists => 'Списъци';

  @override
  String get pantry => 'Килер';

  @override
  String get cancel => 'Отказ';

  @override
  String get save => 'Запазване';

  @override
  String get create => 'Създаване';

  @override
  String get add => 'Добавяне';

  @override
  String get remove => 'Премахване';

  @override
  String get delete => 'Изтриване';

  @override
  String get edit => 'Редактиране';

  @override
  String get copy => 'Копиране';

  @override
  String get retry => 'Опитай отново';

  @override
  String get regenerate => 'Регенериране';

  @override
  String get copiedToClipboard => 'Копирано в клипборда';

  @override
  String get confirm => 'Потвърждение';

  @override
  String get close => 'Затваряне';

  @override
  String get import => 'Импортиране';

  @override
  String get rename => 'Преименуване';

  @override
  String get upgrade => 'Надграждане';

  @override
  String get clear => 'Изчистване';

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
      'Грешка при обработка на покупката. Опитай отново.';

  @override
  String get restoreError =>
      'Грешка при възстановяване на покупките. Опитай отново.';

  @override
  String get loading => 'Зареждане...';

  @override
  String get fieldRequired => 'Задължително поле';

  @override
  String get addedFeedback => 'Добавено!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count избрани',
      one: '$count избран',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Очаквано';

  @override
  String get alreadyPurchased => 'Вече купено';

  @override
  String get clearList => 'Изчисти списъка';

  @override
  String get clearPurchased => 'Изчисти купените';

  @override
  String get share => 'Споделяне';

  @override
  String get shareViaCode => 'Сподели чрез код';

  @override
  String get importViaCode => 'Импортирай чрез код';

  @override
  String get listAssistant => 'Помощник за списъка';

  @override
  String get globalAssistant => 'Глобален помощник';

  @override
  String get becomePremium => 'Стани Premium';

  @override
  String get manageSubscription => 'Управление на абонамента';

  @override
  String get completePurchase => 'Завърши покупката';

  @override
  String get confirmClearList => 'Премахване на всички артикули?';

  @override
  String get shareListTitle => 'Споделяне на списък';

  @override
  String get shareThisCode => 'Сподели този код:';

  @override
  String get validForLimitedTime => 'Валидно за ограничено време';

  @override
  String get importListTitle => 'Импортиране на списък';

  @override
  String get enterCodeHint => 'Въведи кода';

  @override
  String get confirmArchiveTitle => 'Завърши покупката';

  @override
  String get confirmArchiveContent =>
      'Да завърша тази покупка и архивирам списъка?';

  @override
  String get complete => 'Завършване';

  @override
  String get listArchived => 'Списъкът е архивиран успешно!';

  @override
  String listAdded(String listName) {
    return '$listName добавен!';
  }

  @override
  String get buy => 'Купи';

  @override
  String get unmark => 'Отмаркирай';

  @override
  String confirmDeleteItems(int count) {
    return 'Премахване на $count артикул(а)?';
  }

  @override
  String get confirmDeleteTitle => 'Потвърди';

  @override
  String confirmContent(int count) {
    return 'Премахване на $count артикул(а)?';
  }

  @override
  String get archiveList => 'Архивирай списъка';

  @override
  String get pantryAppBar => 'Килер';

  @override
  String get generateShoppingList => 'Генерирай пазарски списък';

  @override
  String get pantryEmpty => 'Празен килер';

  @override
  String get pantryEmptySubtitle =>
      'Добавете продукти, които искате да държите вкъщи';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit артикул(а) трябва да се купят';
  }

  @override
  String get noItemsToBuy => 'Няма артикули за купуване';

  @override
  String get newPantryList => 'Пазаруване за килера';

  @override
  String get newListTitle => 'Нов пазарски списък';

  @override
  String itemsWillBeAdded(int count) {
    return '$count артикул(а) ще бъдат добавени';
  }

  @override
  String get listNameLabel => 'Име на списъка';

  @override
  String listCreated(String name, int count) {
    return 'Списък \"$name\" създаден с $count артикула';
  }

  @override
  String get noTracking => 'Без проследяване';

  @override
  String get markAsPurchased => 'Маркирай като купено';

  @override
  String editPantryItem(String name) {
    return 'Редактирай $name';
  }

  @override
  String get idealQuantity => 'Идеално количество';

  @override
  String get currentQuantity => 'Текущо количество';

  @override
  String get consumed => 'Консумирано';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name зареден до $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Премахване на \"$name\" от килера?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Редактирай $name';
  }

  @override
  String get settingsAppBar => 'Настройки';

  @override
  String get language => 'Език';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Системен по подразбиране';

  @override
  String get chooseLanguage => 'Избери език';

  @override
  String get searchLanguage => 'Търси език...';

  @override
  String get appearance => 'Външен вид';

  @override
  String get light => 'Светло';

  @override
  String get system => 'Системно';

  @override
  String get dark => 'Тъмно';

  @override
  String get themeColor => 'Цвят на темата';

  @override
  String get dynamicColors => 'Динамични цветове';

  @override
  String get dynamicColorsSubtitle =>
      'Използвай цветове въз основа на твоя тапет';

  @override
  String get finance => 'Финанси';

  @override
  String get monthlyBudgetNav => 'Месечен бюджет';

  @override
  String get budgetSubtitle => 'Проследявай месечните си разходи';

  @override
  String get data => 'Данни';

  @override
  String get backupNav => 'Резервно копие';

  @override
  String get backupSubtitle => 'Експортирай или импортирай данните си';

  @override
  String get about => 'Относно';

  @override
  String get version => 'Версия';

  @override
  String get privacy => 'Поверителност';

  @override
  String get termsOfUse => 'Условия за ползване';

  @override
  String get backupTitle => 'Резервно копие';

  @override
  String get backupPremiumDescription =>
      'Резервното копие и експортът са Premium функция';

  @override
  String get exportData => 'Експортирай данни';

  @override
  String get exportDataSubtitle => 'Запази всички списъци като JSON';

  @override
  String get importData => 'Импортирай данни';

  @override
  String get importDataSubtitle => 'Възстанови списъци от JSON';

  @override
  String get importJsonTitle => 'Импортирай JSON';

  @override
  String get importJsonHint => 'Поставете JSON на резервното копие тук...';

  @override
  String get backupExported => 'Резервното копие е експортирано!';

  @override
  String get budgetAppBar => 'Месечен бюджет';

  @override
  String get budgetPremiumLocked => 'Глобалният месечен бюджет е Premium';

  @override
  String get budgetUpgradePrompt => 'Надгради, за да отключиш';

  @override
  String get noBudgetDefined => 'Няма зададен бюджет';

  @override
  String totalEstimated(String amount) {
    return 'Общо приблизително: $amount';
  }

  @override
  String get setBudgetButton => 'Задай бюджет';

  @override
  String get budgetLists => 'Списъци';

  @override
  String get budgetValueLabel => 'Сума';

  @override
  String get setBudgetTitle => 'Месечен бюджет';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Всички';

  @override
  String get filterPending => 'Чакащи';

  @override
  String get filterPurchased => 'Купени';

  @override
  String get sortName => 'Име';

  @override
  String get sortCategory => 'Категория';

  @override
  String get sortDate => 'Дата';

  @override
  String get sortManual => 'Ръчно';

  @override
  String get addItem => 'Добави артикул';

  @override
  String get itemName => 'Име на артикула';

  @override
  String get quantityShort => 'Кол';

  @override
  String get unit => 'Мерна единица';

  @override
  String get category => 'Категория';

  @override
  String get estimatedPrice => 'Очаквана цена';

  @override
  String get addItemPrice => 'Очаквана цена';

  @override
  String get editItem => 'Редактирай артикул';

  @override
  String get quantityFull => 'Количество';

  @override
  String get editItemPrice => 'Очаквана цена';

  @override
  String get addToPantry => 'Добави в килера';

  @override
  String addToPantryPrompt(String name) {
    return 'Да добавя ли \"$name\" в килера?';
  }

  @override
  String get yes => 'Да';

  @override
  String get productName => 'Име на продукта';

  @override
  String get idealQty => 'Идеално кол';

  @override
  String get currentQty => 'Тек. кол';

  @override
  String get trackStock => 'Проследяване на запаси';

  @override
  String get trackStockActive => 'Появява се в пазарски предложения';

  @override
  String get trackStockInactive => 'Не генерира пазарско предложение';

  @override
  String get createListDialog => 'Създай списък';

  @override
  String get renameListDialog => 'Преименувай списък';

  @override
  String get listHistory => 'История на списъците';

  @override
  String get myLists => 'Моите списъци';

  @override
  String get viewActive => 'Преглед на активни';

  @override
  String get viewHistory => 'Преглед на история';

  @override
  String get noArchivedLists => 'Няма архивирани списъци';

  @override
  String get noActiveLists => 'Няма активни списъци';

  @override
  String completedOn(String date) {
    return 'Завършен на $date';
  }

  @override
  String get sharedLabel => 'Споделен';

  @override
  String get restore => 'Възстановяване';

  @override
  String get removeSharedTooltip => 'Премахване';

  @override
  String get deleteListTitle => 'Изтрий списък';

  @override
  String deleteListContent(String name) {
    return 'Сигурен ли си, че искаш да изтриеш \"$name\"? Всички артикули ще бъдат премахнати.';
  }

  @override
  String get removeSharedListTitle => 'Премахване на споделен списък';

  @override
  String removeSharedListContent(String name) {
    return 'Премахване на \"$name\" от списъците ти? Оригиналният списък няма да бъде засегнат.';
  }

  @override
  String get createNewList => 'Създай нов списък';

  @override
  String get aiAssistant => 'AI асистент';

  @override
  String get aiAssistantDescription =>
      'Получавай интелигентни предложения, рецепти и персонализирани съвети с нашия AI асистент.';

  @override
  String get generalAssistant => 'Общ асистент';

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
  String get clearHistory => 'Изчисти историята';

  @override
  String get clearHistoryConfirm =>
      'Изтриване на всички съобщения в тази сесия?';

  @override
  String get chatHint => 'Напиши съобщението си...';

  @override
  String chatError(String error) {
    return 'Грешка при зареждане на чата: $error';
  }

  @override
  String get listHelp => 'Как мога да помогна с твоя списък?';

  @override
  String get generalHelp => 'Как мога да помогна с пазаруването ти днес?';

  @override
  String get chatSubtitle =>
      'Поискай предложения за артикули, рецепти или съвети за икономисване.';

  @override
  String get aiError =>
      'Съжалявам, възникна грешка при обработката на заявката ти. Провери връзката си или опитай отново по-късно.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Влез, за да отключиш\nPremium функции';

  @override
  String get signInGoogle => 'Вход с Google';

  @override
  String get signInApple => 'Вход с Apple';

  @override
  String get continueAsGuest => 'Продължи като гост';

  @override
  String loginError(String error) {
    return 'Грешка при вход: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Надгради, за да отключиш';

  @override
  String get itemRemoved => 'Артикулът е премахнат';

  @override
  String get undo => 'Отмяна';

  @override
  String get emptyListTitle => 'Списъкът ти е празен';

  @override
  String get emptyListSubtitle => 'Добави артикули, за да започнеш';

  @override
  String get noListFoundTitle => 'Няма намерени списъци';

  @override
  String get noListFoundSubtitle => 'Създай първия си списък, за да започнеш';

  @override
  String get createFirstList => 'Създай първи списък';

  @override
  String get listBudgetTitle => 'Бюджет на списъка';

  @override
  String get budgetAmountLabel => 'Размер на бюджета';

  @override
  String get removeBudget => 'Премахване';

  @override
  String get prefUnlimitedLists => 'Неограничени списъци';

  @override
  String get prefSharing => 'Споделяне на списъци';

  @override
  String get prefFullHistory => 'Пълна история';

  @override
  String get prefExportData => 'Експорт на данни';

  @override
  String get prefCustomThemes => 'Персонализирани теми';

  @override
  String get prefMonthlyBudget => 'Глобален месечен бюджет';

  @override
  String get prefAIAssistant => 'Персонален AI асистент';

  @override
  String get prefUnlimitedPantry => 'Неограничен килер';

  @override
  String get prefInteractiveArtifacts => 'Интерактивни AI артефакти';

  @override
  String get themeGreen => 'Зелено';

  @override
  String get themeBlue => 'Синьо';

  @override
  String get themePurple => 'Лилаво';

  @override
  String get themeRed => 'Червено';

  @override
  String get themeOrange => 'Оранжево';

  @override
  String get themePink => 'Розово';

  @override
  String get themeIndigo => 'Индиго';

  @override
  String get themeAmber => 'Кехлибар';

  @override
  String get themeTeal => 'Тийл';

  @override
  String get themeBrown => 'Кафяво';

  @override
  String get catFruits => 'Плодове';

  @override
  String get catCleaning => 'Почистване';

  @override
  String get catBeverages => 'Напитки';

  @override
  String get catBakery => 'Пекарна';

  @override
  String get catOthers => 'Други';

  @override
  String get unitPack => 'опаковка';

  @override
  String get shareSubject => 'Пазарски списък';

  @override
  String get monthlyBudgetTitle => 'Месечен бюджет';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Изтрий списък';

  @override
  String get pantryItemRemoved => 'Артикулът е премахнат';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit артикула трябва да се купят',
      one: '$deficit артикул трябва да се купи',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Общо в количката';

  @override
  String get restockLabel => 'Зареждане';

  @override
  String get advancedFeatures => 'Разширени функции';

  @override
  String get selectAll => 'Избери всички';

  @override
  String get deselectAll => 'Отмени избора на всички';

  @override
  String get monthlyBudgetAppBar => 'Месечен бюджет';

  @override
  String get budgetEditTitle => 'Месечен бюджет';

  @override
  String get budgetDashboardTitle => 'Табло';

  @override
  String get selectListForDashboard => 'Избери списък, за да видиш таблото.';

  @override
  String get spendingAnalysis => 'Анализ на разходите';

  @override
  String get noItemsToAnalyze => 'Няма артикули за анализ в списъка.';

  @override
  String get markItemsToSeeAnalysis =>
      'Маркирай артикулите като купени, за да видиш анализа.';

  @override
  String get totalSpending => 'Общо похарчени';

  @override
  String get spendingByCategory => 'Разходи по категория';

  @override
  String get achievements => 'Постижения';

  @override
  String get exportPdfExcel => 'Експорт PDF/Excel';

  @override
  String get exportPdf => 'Експорт като PDF';

  @override
  String get exportExcel => 'Експорт като Excel';

  @override
  String get organizingAi => 'ОРГАНИЗИРАНЕ С AI...';

  @override
  String get yesLabel => 'Да';

  @override
  String get noLabel => 'Не';

  @override
  String get shareListText => 'Моят пазарски списък';

  @override
  String get emptyListAddItems =>
      'Списъкът ти е празен! Първо добави артикули. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Списъкът е магически организиран по категории! ✨';

  @override
  String get shoppingMode => 'Пазарски режим';

  @override
  String get smartOrganization => 'Интелигентна организация';

  @override
  String get savings => 'Икономии';

  @override
  String get shoppingModeHeader => 'ПАЗАРСКИ РЕЖИМ';

  @override
  String get shareAsText => 'Изпрати артикулите като форматиран текст';

  @override
  String get shareRealtime => 'Реалновременна синхронизация с други хора';

  @override
  String get quickRecipe => 'Бърза рецепта';

  @override
  String get quickRecipePrompt => 'Предложи рецепти с артикули от моя списък.';

  @override
  String get economyTips => 'Съвети за икономии';

  @override
  String get economyTipsPrompt => 'Как мога да спестя пари от тази покупка?';

  @override
  String get organizeAisles => 'Организирай по пътеки';

  @override
  String get organizeAislesPrompt => 'Организирай по пазарски пътеки.';

  @override
  String get recipeSuggestion => 'Предложение за рецепта';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining оставащи кредита';
  }

  @override
  String get addAllToList => 'Добави всичко към списъка';

  @override
  String get organizeByAisles => 'Организирай по пътеки';

  @override
  String get voiceTranscriptionTooltip => 'Гласово писане (Безплатно)';

  @override
  String get aiVoiceCommandTooltip => 'AI гласова команда (Premium)';

  @override
  String get voiceCommandTitle => 'AI гласова команда';

  @override
  String get voiceCommandContent =>
      'Говори естествено, за да управляваш списъка си!\n\nПримери:\n• \'Добави хляб, сирене и шунка\'\n• \'Премахни перилния препарат\'\n• \'Промени темата на синя\'\n\nТова е ексклузивна функция на Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Виж плановете';

  @override
  String get itemsAddedSuccess => 'Артикулите са добавени успешно в списъка!';

  @override
  String get viewList => 'Виж списъка';

  @override
  String get feedbackTitle => 'Изпращане на отзиви';

  @override
  String get feedbackPrompt => 'Какво искате да споделите?';

  @override
  String get feedbackTypeBug => 'Докладване на грешка';

  @override
  String get feedbackTypeBugHint => 'Нещо не работи';

  @override
  String get feedbackTypeSuggestion => 'Предложение';

  @override
  String get feedbackTypeSuggestionHint => 'Идея за подобрение на приложението';

  @override
  String get feedbackTypeTranslation => 'Проблем с превода';

  @override
  String get feedbackTypeTranslationHint => 'Неправилен или неточен превод';

  @override
  String get feedbackTypeFeature => 'Заявка за функция';

  @override
  String get feedbackTypeFeatureHint => 'Функция, която искате да видите';

  @override
  String get feedbackTypeOther => 'Друго';

  @override
  String get feedbackTypeOtherHint => 'Друг тип отзив';

  @override
  String get feedbackHint => 'Опишете вашия отзив подробно...';

  @override
  String get feedbackSend => 'Изпрати отзиви';

  @override
  String get feedbackSending => 'Изпращане...';

  @override
  String get feedbackThankYou => 'Благодаря!';

  @override
  String get feedbackThankYouMessage =>
      'Вашият отзив е получен и ни помага да подобрим Lista Plus за всички.';

  @override
  String get feedbackBack => 'Назад';

  @override
  String feedbackError(String error) {
    return 'Грешка при изпращане: $error';
  }

  @override
  String get feedbackRetry => 'Опитай отново';

  @override
  String get feedbackSettingsTitle => 'Изпрати отзиви';

  @override
  String get feedbackSettingsSubtitle =>
      'Докладвайте грешки, предлагайте подобрения или коригирайте преводи';

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
  String get openMenu => 'Отвори менюто';

  @override
  String get viewRecipe => 'Виж рецептата';

  @override
  String get recipeCreated => 'Рецептата е създадена!';

  @override
  String get editRecipe => 'Редактирай';

  @override
  String get deleteRecipe => 'Изтрий';

  @override
  String get deleteRecipeConfirm => 'Изтриване на тази рецепта?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Сигурни ли сте, че искате да изтриете \"$recipeName\"? Това действие не може да бъде отменено.';
  }

  @override
  String get ingredients => 'Съставки';

  @override
  String get instructions => 'Инструкции';

  @override
  String get prepTime => 'Време за приготвяне';

  @override
  String get recipeSaved => 'Рецептата е запазена!';

  @override
  String get noRecipesSaved => 'Няма запазени рецепти';

  @override
  String get noRecipesSavedHint =>
      'Създай първата си персонализирана рецепта, като докоснеш бутона по-долу.';

  @override
  String get myRecipes => 'Моите рецепти';

  @override
  String get newRecipe => 'Нова рецепта';

  @override
  String get loadingRecipes => 'Зареждане на твоите рецепти...';

  @override
  String get errorLoadingRecipes => 'Грешка при зареждане на рецептите';

  @override
  String get addIngredient => 'Добави съставка';

  @override
  String get saveRecipe => 'Запази';

  @override
  String get recipeName => 'Име на рецептата';

  @override
  String get shortDescription => 'Кратко описание';

  @override
  String get prepTimeMinutes => 'Време за приготвяне (минути)';

  @override
  String get instructionsHint => 'Въведи по една стъпка на ред...';

  @override
  String get addPhoto => 'Добави снимка';

  @override
  String get imageUrlPlaceholder => 'Или постави URL на изображение';

  @override
  String get tags => 'Тагове';

  @override
  String get recipeTags => 'Тагове на рецептата';

  @override
  String get suggestedTags => 'Предложени';

  @override
  String get searchRecipes => 'Търси рецепти...';

  @override
  String get filterByTag => 'Филтрирай по таг';

  @override
  String get allTags => 'Всички';

  @override
  String get recipeDeleted => 'Рецептата е изтрита';

  @override
  String get saveChanges => 'Запази промените';

  @override
  String get editRecipeTitle => 'Редактирай рецепта';

  @override
  String get newRecipeTitle => 'Нова рецепта';

  @override
  String get requiredField => 'Задължително';

  @override
  String get chooseImageSource => 'Избери източник на изображение';

  @override
  String get gallery => 'Галерия';

  @override
  String get enterUrl => 'Въведи URL';

  @override
  String get recipeImage => 'Изображение на рецептата';

  @override
  String get removeImage => 'Премахни изображението';

  @override
  String get mealPlannerTitle => 'Планировчик на хранения';

  @override
  String get mealPlannerViewMonthly => 'Месечен изглед';

  @override
  String get mealPlannerViewWeekly => 'Седмичен изглед';

  @override
  String get mealPlannerNoMeals => 'Няма планирани хранения';

  @override
  String get mealPlannerNoMealsHint => 'Докосни ден, за да добавиш хранене';

  @override
  String get mealPlannerLoading => 'Зареждане на плана за хранения...';

  @override
  String get mealPlannerError => 'Грешка при зареждане на плана за хранения';

  @override
  String get mealPlannerAddMeal => 'Добави хранене';

  @override
  String get mealPlannerEditMeal => 'Редактирай хранене';

  @override
  String get mealPlannerDeleteMeal => 'Премахни хранене';

  @override
  String get mealPlannerMealDeleted => 'Храненето е премахнато';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count порции',
      one: '$count порция',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Порции';

  @override
  String get mealPlannerNoteLabel => 'Бележка (по желание)';

  @override
  String get mealPlannerSelectRecipe => 'Избери рецепта';

  @override
  String get mealPlannerSearchRecipes => 'Търси рецепти...';

  @override
  String get mealPlannerNoRecipesFound => 'Няма намерени рецепти';

  @override
  String get mealPlannerNoRecipesHint =>
      'Първо създай рецепти в раздела \"Рецепти\"';

  @override
  String get mealPlannerSave => 'Добави към плана';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count от $total планирани хранения';
  }

  @override
  String get mealPlannerGenerateList => 'Генерирай списък за пазаруване';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Добавяне на всички съставки от планираните за тази седмица хранения към твоя списък за пазаруване?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count съставка(и) са добавени към твоя списък!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Няма съставки за добавяне. Първо планирай хранения с рецепти.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Първо създай списък за пазаруване.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Закуска';

  @override
  String get mealPlannerMealTypeLunch => 'Обяд';

  @override
  String get mealPlannerMealTypeDinner => 'Вечеря';

  @override
  String get mealPlannerMealTypeSnack => 'Закуска (междинна)';

  @override
  String get mealPlannerDateLabel => 'Дата';

  @override
  String get mealPlannerWeekEmpty => 'Нищо планирано за тази седмица';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Докосни който и да е ден, за да започнеш да планираш храненията си!';

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
