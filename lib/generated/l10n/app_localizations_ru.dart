// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Список покупок';

  @override
  String get lists => 'Списки';

  @override
  String get pantry => 'Кладовая';

  @override
  String get cancel => 'Отмена';

  @override
  String get save => 'Сохранить';

  @override
  String get create => 'Создать';

  @override
  String get add => 'Добавить';

  @override
  String get remove => 'Удалить';

  @override
  String get delete => 'Удалить';

  @override
  String get edit => 'Редактировать';

  @override
  String get copy => 'Копировать';

  @override
  String get retry => 'Повторить';

  @override
  String get regenerate => 'Перегенерировать';

  @override
  String get copiedToClipboard => 'Скопировано в буфер обмена';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get close => 'Закрыть';

  @override
  String get import => 'Импортировать';

  @override
  String get rename => 'Переименовать';

  @override
  String get upgrade => 'Обновить';

  @override
  String get clear => 'Очистить';

  @override
  String error(String message) {
    return 'Ошибка: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Ошибка: $message';
  }

  @override
  String get purchaseError => 'Ошибка обработки покупки. Попробуйте снова.';

  @override
  String get restoreError => 'Ошибка восстановления покупок. Попробуйте снова.';

  @override
  String get loading => 'Загрузка...';

  @override
  String get fieldRequired => 'Обязательное поле';

  @override
  String get addedFeedback => 'Добавлено!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Выбрано $count',
      many: 'Выбрано $count',
      few: 'Выбрано $count',
      one: 'Выбран $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Оценка';

  @override
  String get alreadyPurchased => 'Уже куплено';

  @override
  String get clearList => 'Очистить список';

  @override
  String get clearPurchased => 'Убрать купленное';

  @override
  String get share => 'Поделиться';

  @override
  String get shareViaCode => 'Поделиться по коду';

  @override
  String get importViaCode => 'Импортировать по коду';

  @override
  String get listAssistant => 'Помощник списка';

  @override
  String get globalAssistant => 'Глобальный помощник';

  @override
  String get becomePremium => 'Стать Premium';

  @override
  String get manageSubscription => 'Управление подпиской';

  @override
  String get completePurchase => 'Завершить покупку';

  @override
  String get confirmClearList => 'Удалить все товары?';

  @override
  String get shareListTitle => 'Поделиться списком';

  @override
  String get shareThisCode => 'Поделитесь этим кодом:';

  @override
  String get validForLimitedTime => 'Действителен ограниченное время';

  @override
  String get importListTitle => 'Импортировать список';

  @override
  String get enterCodeHint => 'Введите код';

  @override
  String get confirmArchiveTitle => 'Завершить покупку';

  @override
  String get confirmArchiveContent =>
      'Завершить покупку и архивировать список?';

  @override
  String get complete => 'Завершить';

  @override
  String get listArchived => 'Список успешно архивирован!';

  @override
  String listAdded(String listName) {
    return '$listName добавлен!';
  }

  @override
  String get buy => 'Купить';

  @override
  String get unmark => 'Снять отметку';

  @override
  String confirmDeleteItems(int count) {
    return 'Удалить $count товар(ы/ов)?';
  }

  @override
  String get confirmDeleteTitle => 'Подтверждение';

  @override
  String confirmContent(int count) {
    return 'Удалить $count товар(ы/ов)?';
  }

  @override
  String get archiveList => 'Архивировать список';

  @override
  String get pantryAppBar => 'Кладовая';

  @override
  String get generateShoppingList => 'Создать список покупок';

  @override
  String get pantryEmpty => 'Пустая кладовая';

  @override
  String get pantryEmptySubtitle =>
      'Добавьте продукты, которые хотите иметь дома';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit товар(ы/ов) нужно купить';
  }

  @override
  String get noItemsToBuy => 'Нет товаров для покупки';

  @override
  String get newPantryList => 'Покупки из кладовой';

  @override
  String get newListTitle => 'Новый список покупок';

  @override
  String itemsWillBeAdded(int count) {
    return '$count товар(ы/ов) будет добавлено';
  }

  @override
  String get listNameLabel => 'Название списка';

  @override
  String listCreated(String name, int count) {
    return 'Список \"$name\" создан с $count товарами';
  }

  @override
  String get noTracking => 'Без отслеживания';

  @override
  String get markAsPurchased => 'Отметить как купленное';

  @override
  String editPantryItem(String name) {
    return 'Редактировать $name';
  }

  @override
  String get idealQuantity => 'Идеальное количество';

  @override
  String get currentQuantity => 'Текущее количество';

  @override
  String get consumed => 'Потреблено';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name пополнено до $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Удалить \"$name\" из кладовой?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Редактировать $name';
  }

  @override
  String get settingsAppBar => 'Настройки';

  @override
  String get language => 'Язык';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Системный';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get appearance => 'Внешний вид';

  @override
  String get light => 'Светлая';

  @override
  String get system => 'Системная';

  @override
  String get dark => 'Тёмная';

  @override
  String get themeColor => 'Цвет темы';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get finance => 'Финансы';

  @override
  String get monthlyBudgetNav => 'Месячный бюджет';

  @override
  String get budgetSubtitle => 'Отслеживайте свои ежемесячные расходы';

  @override
  String get data => 'Данные';

  @override
  String get backupNav => 'Резервное копирование';

  @override
  String get backupSubtitle => 'Экспортируйте или импортируйте свои данные';

  @override
  String get about => 'О приложении';

  @override
  String get version => 'Версия';

  @override
  String get privacy => 'Конфиденциальность';

  @override
  String get termsOfUse => 'Условия использования';

  @override
  String get backupTitle => 'Резервное копирование';

  @override
  String get backupPremiumDescription =>
      'Резервное копирование и экспорт — это премиум-функция';

  @override
  String get exportData => 'Экспортировать данные';

  @override
  String get exportDataSubtitle => 'Сохранить все списки в JSON';

  @override
  String get importData => 'Импортировать данные';

  @override
  String get importDataSubtitle => 'Восстановить списки из JSON';

  @override
  String get importJsonTitle => 'Импортировать JSON';

  @override
  String get importJsonHint => 'Вставьте JSON резервной копии здесь...';

  @override
  String get backupExported => 'Резервная копия экспортирована!';

  @override
  String get budgetAppBar => 'Месячный бюджет';

  @override
  String get budgetPremiumLocked => 'Глобальный месячный бюджет — премиум';

  @override
  String get budgetUpgradePrompt => 'Обновите, чтобы разблокировать';

  @override
  String get noBudgetDefined => 'Бюджет не установлен';

  @override
  String totalEstimated(String amount) {
    return 'Всего оценено: $amount';
  }

  @override
  String get setBudgetButton => 'Установить бюджет';

  @override
  String get budgetLists => 'Списки';

  @override
  String get budgetValueLabel => 'Сумма';

  @override
  String get setBudgetTitle => 'Месячный бюджет';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Все';

  @override
  String get filterPending => 'Ожидающие';

  @override
  String get filterPurchased => 'Купленные';

  @override
  String get sortName => 'Название';

  @override
  String get sortCategory => 'Категория';

  @override
  String get sortDate => 'Дата';

  @override
  String get sortManual => 'Вручную';

  @override
  String get addItem => 'Добавить товар';

  @override
  String get itemName => 'Название товара';

  @override
  String get quantityShort => 'Кол-во';

  @override
  String get unit => 'Единица';

  @override
  String get category => 'Категория';

  @override
  String get estimatedPrice => 'Оценочная цена';

  @override
  String get addItemPrice => 'Оценочная цена';

  @override
  String get editItem => 'Редактировать товар';

  @override
  String get quantityFull => 'Количество';

  @override
  String get editItemPrice => 'Оценочная цена';

  @override
  String get addToPantry => 'Добавить в кладовую';

  @override
  String addToPantryPrompt(String name) {
    return 'Добавить \"$name\" в вашу кладовую?';
  }

  @override
  String get yes => 'Да';

  @override
  String get productName => 'Название продукта';

  @override
  String get idealQty => 'Идеальное кол-во';

  @override
  String get currentQty => 'Текущее кол-во';

  @override
  String get trackStock => 'Отслеживать запас';

  @override
  String get trackStockActive => 'Отображается в предложениях покупок';

  @override
  String get trackStockInactive => 'Не создаёт предложения покупок';

  @override
  String get createListDialog => 'Создать список';

  @override
  String get renameListDialog => 'Переименовать список';

  @override
  String get listHistory => 'История списков';

  @override
  String get myLists => 'Мои списки';

  @override
  String get viewActive => 'Активные';

  @override
  String get viewHistory => 'История';

  @override
  String get noArchivedLists => 'Нет архивированных списков';

  @override
  String get noActiveLists => 'Нет активных списков';

  @override
  String completedOn(String date) {
    return 'Завершён $date';
  }

  @override
  String get sharedLabel => 'Общий';

  @override
  String get restore => 'Восстановить';

  @override
  String get removeSharedTooltip => 'Удалить';

  @override
  String get deleteListTitle => 'Удалить список';

  @override
  String deleteListContent(String name) {
    return 'Вы уверены, что хотите удалить \"$name\"? Все товары будут удалены.';
  }

  @override
  String get removeSharedListTitle => 'Удалить общий список';

  @override
  String removeSharedListContent(String name) {
    return 'Удалить \"$name\" из ваших списков? Исходный список не изменится.';
  }

  @override
  String get createNewList => 'Создать новый список';

  @override
  String get aiAssistant => 'ИИ-помощник';

  @override
  String get aiAssistantDescription =>
      'Получайте умные предложения, рецепты и персонализированные советы с нашим ИИ-помощником.';

  @override
  String get generalAssistant => 'Общий помощник';

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
  String get clearHistory => 'Очистить историю';

  @override
  String get clearHistoryConfirm => 'Удалить все сообщения в этом сеансе?';

  @override
  String get chatHint => 'Введите ваше сообщение...';

  @override
  String chatError(String error) {
    return 'Ошибка загрузки чата: $error';
  }

  @override
  String get listHelp => 'Чем помочь с вашим списком?';

  @override
  String get generalHelp => 'Чем помочь с покупками сегодня?';

  @override
  String get chatSubtitle =>
      'Спросите о предложениях товаров, рецептах или советах по экономии.';

  @override
  String get aiError =>
      'Извините, произошла ошибка при обработке вашего запроса. Проверьте соединение или попробуйте позже.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Войдите, чтобы\nразблокировать премиум-функции';

  @override
  String get signInGoogle => 'Войти через Google';

  @override
  String get signInApple => 'Войти через Apple';

  @override
  String get continueAsGuest => 'Продолжить как гость';

  @override
  String loginError(String error) {
    return 'Ошибка входа: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Обновите, чтобы разблокировать';

  @override
  String get itemRemoved => 'Товар удалён';

  @override
  String get undo => 'Отменить';

  @override
  String get emptyListTitle => 'Ваш список пуст';

  @override
  String get emptyListSubtitle => 'Добавьте товары, чтобы начать';

  @override
  String get noListFoundTitle => 'Списки не найдены';

  @override
  String get noListFoundSubtitle => 'Создайте свой первый список, чтобы начать';

  @override
  String get createFirstList => 'Создать первый список';

  @override
  String get listBudgetTitle => 'Бюджет списка';

  @override
  String get budgetAmountLabel => 'Сумма бюджета';

  @override
  String get removeBudget => 'Удалить';

  @override
  String get prefUnlimitedLists => 'Неограниченные списки';

  @override
  String get prefSharing => 'Делиться списками';

  @override
  String get prefFullHistory => 'Полная история';

  @override
  String get prefExportData => 'Экспорт данных';

  @override
  String get prefCustomThemes => 'Свои темы';

  @override
  String get prefMonthlyBudget => 'Глобальный месячный бюджет';

  @override
  String get prefAIAssistant => 'Личный ИИ-помощник';

  @override
  String get prefUnlimitedPantry => 'Неограниченная кладовая';

  @override
  String get prefInteractiveArtifacts => 'Интерактивные ИИ-артефакты';

  @override
  String get themeGreen => 'Зелёный';

  @override
  String get themeBlue => 'Синий';

  @override
  String get themePurple => 'Фиолетовый';

  @override
  String get themeRed => 'Красный';

  @override
  String get themeOrange => 'Оранжевый';

  @override
  String get themePink => 'Розовый';

  @override
  String get themeIndigo => 'Индиго';

  @override
  String get themeAmber => 'Янтарный';

  @override
  String get themeTeal => 'Бирюзовый';

  @override
  String get themeBrown => 'Коричневый';

  @override
  String get catFruits => 'Фрукты';

  @override
  String get catCleaning => 'Уборка';

  @override
  String get catBeverages => 'Напитки';

  @override
  String get catBakery => 'Выпечка';

  @override
  String get catOthers => 'Другое';

  @override
  String get unitPack => 'упаковка';

  @override
  String get shareSubject => 'Список покупок';

  @override
  String get monthlyBudgetTitle => 'Месячный бюджет';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Удалить список';

  @override
  String get pantryItemRemoved => 'Товар удалён';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit товара нужно купить',
      many: '$deficit товаров нужно купить',
      few: '$deficit товара нужно купить',
      one: '$deficit товар нужно купить',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Итого в корзине';

  @override
  String get restockLabel => 'Пополнить';

  @override
  String get advancedFeatures => 'Расширенные функции';

  @override
  String get selectAll => 'Выбрать всё';

  @override
  String get deselectAll => 'Снять выделение';

  @override
  String get monthlyBudgetAppBar => 'Месячный бюджет';

  @override
  String get budgetEditTitle => 'Месячный бюджет';

  @override
  String get budgetDashboardTitle => 'Панель';

  @override
  String get selectListForDashboard => 'Выберите список для просмотра панели.';

  @override
  String get spendingAnalysis => 'Анализ расходов';

  @override
  String get noItemsToAnalyze => 'В списке нет товаров для анализа.';

  @override
  String get markItemsToSeeAnalysis =>
      'Отметьте товары как купленные, чтобы увидеть анализ.';

  @override
  String get totalSpending => 'Всего потрачено';

  @override
  String get spendingByCategory => 'Расходы по категориям';

  @override
  String get achievements => 'Достижения';

  @override
  String get exportPdfExcel => 'Экспорт PDF/Excel';

  @override
  String get exportPdf => 'Экспорт в PDF';

  @override
  String get exportExcel => 'Экспорт в Excel';

  @override
  String get organizingAi => 'ОРГАНИЗАЦИЯ С ПОМОЩЬЮ ИИ...';

  @override
  String get yesLabel => 'Да';

  @override
  String get noLabel => 'Нет';

  @override
  String get shareListText => 'Мой список покупок';

  @override
  String get emptyListAddItems =>
      'Ваш список пуст! Сначала добавьте товары. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Список волшебным образом организован по категориям! ✨';

  @override
  String get shoppingMode => 'Режим покупок';

  @override
  String get smartOrganization => 'Умная организация';

  @override
  String get savings => 'Экономия';

  @override
  String get shoppingModeHeader => 'РЕЖИМ ПОКУПОК';

  @override
  String get shareAsText => 'Отправить товары как форматированный текст';

  @override
  String get shareRealtime => 'Синхронизация в реальном времени с другими';

  @override
  String get quickRecipe => 'Быстрый рецепт';

  @override
  String get quickRecipePrompt =>
      'Предложи рецепты с товарами из моего списка.';

  @override
  String get economyTips => 'Советы по экономии';

  @override
  String get economyTipsPrompt => 'Как я могу сэкономить на этой покупке?';

  @override
  String get organizeAisles => 'По отделам';

  @override
  String get organizeAislesPrompt => 'Упорядочить по отделам магазина.';

  @override
  String get recipeSuggestion => 'Предложение рецепта';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Осталось $remaining кредитов';
  }

  @override
  String get addAllToList => 'Добавить всё в список';

  @override
  String get organizeByAisles => 'По отделам';

  @override
  String get voiceTranscriptionTooltip => 'Голосовой ввод (Бесплатно)';

  @override
  String get aiVoiceCommandTooltip => 'Голосовая команда ИИ (Премиум)';

  @override
  String get voiceCommandTitle => 'Голосовая команда ИИ';

  @override
  String get voiceCommandContent =>
      'Говорите естественно, чтобы управлять списком!\n\nПримеры:\n• \'Добавь хлеб, сыр и ветчину\'\n• \'Удали стиральный порошок\'\n• \'Смени тему на синюю\'\n\nЭто эксклюзивная функция Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Посмотреть планы';

  @override
  String get itemsAddedSuccess => 'Товары успешно добавлены в список!';

  @override
  String get viewList => 'Посмотреть список';

  @override
  String get feedbackTitle => 'Отправить отзыв';

  @override
  String get feedbackPrompt => 'Чем хотите поделиться?';

  @override
  String get feedbackTypeBug => 'Сообщить об ошибке';

  @override
  String get feedbackTypeBugHint => 'Что-то не работает';

  @override
  String get feedbackTypeSuggestion => 'Предложение';

  @override
  String get feedbackTypeSuggestionHint => 'Идея по улучшению приложения';

  @override
  String get feedbackTypeTranslation => 'Проблема с переводом';

  @override
  String get feedbackTypeTranslationHint =>
      'Некорректный или неестественный перевод';

  @override
  String get feedbackTypeFeature => 'Запрос функции';

  @override
  String get feedbackTypeFeatureHint => 'Функция, которую вы хотели бы видеть';

  @override
  String get feedbackTypeOther => 'Другое';

  @override
  String get feedbackTypeOtherHint => 'Другой тип отзыва';

  @override
  String get feedbackHint => 'Опишите ваш отзыв подробно...';

  @override
  String get feedbackSend => 'Отправить отзыв';

  @override
  String get feedbackSending => 'Отправка...';

  @override
  String get feedbackThankYou => 'Спасибо!';

  @override
  String get feedbackThankYouMessage =>
      'Ваш отзыв получен и помогает нам улучшать Lista Plus для всех.';

  @override
  String get feedbackBack => 'Назад';

  @override
  String feedbackError(String error) {
    return 'Ошибка отправки: $error';
  }

  @override
  String get feedbackRetry => 'Попробовать снова';

  @override
  String get feedbackSettingsTitle => 'Отправить отзыв';

  @override
  String get feedbackSettingsSubtitle =>
      'Сообщайте об ошибках, предлагайте улучшения или исправляйте переводы';

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

/// The translations for Russian, as used in Russian Federation (`ru_RU`).
class AppLocalizationsRuRu extends AppLocalizationsRu {
  AppLocalizationsRuRu() : super('ru_RU');

  @override
  String get appTitle => 'Список покупок';

  @override
  String get lists => 'Списки';

  @override
  String get pantry => 'Кладовая';

  @override
  String get cancel => 'Отмена';

  @override
  String get save => 'Сохранить';

  @override
  String get create => 'Создать';

  @override
  String get add => 'Добавить';

  @override
  String get remove => 'Удалить';

  @override
  String get delete => 'Удалить';

  @override
  String get edit => 'Редактировать';

  @override
  String get copy => 'Копировать';

  @override
  String get retry => 'Повторить';

  @override
  String get regenerate => 'Перегенерировать';

  @override
  String get copiedToClipboard => 'Скопировано в буфер обмена';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get close => 'Закрыть';

  @override
  String get import => 'Импортировать';

  @override
  String get rename => 'Переименовать';

  @override
  String get upgrade => 'Обновить';

  @override
  String get clear => 'Очистить';

  @override
  String error(String message) {
    return 'Ошибка: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Ошибка: $message';
  }

  @override
  String get purchaseError => 'Ошибка обработки покупки. Попробуйте снова.';

  @override
  String get restoreError => 'Ошибка восстановления покупок. Попробуйте снова.';

  @override
  String get loading => 'Загрузка...';

  @override
  String get fieldRequired => 'Обязательное поле';

  @override
  String get addedFeedback => 'Добавлено!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Выбрано $count',
      many: 'Выбрано $count',
      few: 'Выбрано $count',
      one: 'Выбран $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Оценка';

  @override
  String get alreadyPurchased => 'Уже куплено';

  @override
  String get clearList => 'Очистить список';

  @override
  String get clearPurchased => 'Убрать купленное';

  @override
  String get share => 'Поделиться';

  @override
  String get shareViaCode => 'Поделиться по коду';

  @override
  String get importViaCode => 'Импортировать по коду';

  @override
  String get listAssistant => 'Помощник списка';

  @override
  String get globalAssistant => 'Глобальный помощник';

  @override
  String get becomePremium => 'Стать Premium';

  @override
  String get manageSubscription => 'Управление подпиской';

  @override
  String get completePurchase => 'Завершить покупку';

  @override
  String get confirmClearList => 'Удалить все товары?';

  @override
  String get shareListTitle => 'Поделиться списком';

  @override
  String get shareThisCode => 'Поделитесь этим кодом:';

  @override
  String get validForLimitedTime => 'Действителен ограниченное время';

  @override
  String get importListTitle => 'Импортировать список';

  @override
  String get enterCodeHint => 'Введите код';

  @override
  String get confirmArchiveTitle => 'Завершить покупку';

  @override
  String get confirmArchiveContent =>
      'Завершить покупку и архивировать список?';

  @override
  String get complete => 'Завершить';

  @override
  String get listArchived => 'Список успешно архивирован!';

  @override
  String listAdded(String listName) {
    return '$listName добавлен!';
  }

  @override
  String get buy => 'Купить';

  @override
  String get unmark => 'Снять отметку';

  @override
  String confirmDeleteItems(int count) {
    return 'Удалить $count товар(ы/ов)?';
  }

  @override
  String get confirmDeleteTitle => 'Подтверждение';

  @override
  String confirmContent(int count) {
    return 'Удалить $count товар(ы/ов)?';
  }

  @override
  String get archiveList => 'Архивировать список';

  @override
  String get pantryAppBar => 'Кладовая';

  @override
  String get generateShoppingList => 'Создать список покупок';

  @override
  String get pantryEmpty => 'Пустая кладовая';

  @override
  String get pantryEmptySubtitle =>
      'Добавьте продукты, которые хотите иметь дома';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit товар(ы/ов) нужно купить';
  }

  @override
  String get noItemsToBuy => 'Нет товаров для покупки';

  @override
  String get newPantryList => 'Покупки из кладовой';

  @override
  String get newListTitle => 'Новый список покупок';

  @override
  String itemsWillBeAdded(int count) {
    return '$count товар(ы/ов) будет добавлено';
  }

  @override
  String get listNameLabel => 'Название списка';

  @override
  String listCreated(String name, int count) {
    return 'Список \"$name\" создан с $count товарами';
  }

  @override
  String get noTracking => 'Без отслеживания';

  @override
  String get markAsPurchased => 'Отметить как купленное';

  @override
  String editPantryItem(String name) {
    return 'Редактировать $name';
  }

  @override
  String get idealQuantity => 'Идеальное количество';

  @override
  String get currentQuantity => 'Текущее количество';

  @override
  String get consumed => 'Потреблено';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name пополнено до $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Удалить \"$name\" из кладовой?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Редактировать $name';
  }

  @override
  String get settingsAppBar => 'Настройки';

  @override
  String get language => 'Язык';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Системный';

  @override
  String get appearance => 'Внешний вид';

  @override
  String get light => 'Светлая';

  @override
  String get system => 'Системная';

  @override
  String get dark => 'Тёмная';

  @override
  String get themeColor => 'Цвет темы';

  @override
  String get finance => 'Финансы';

  @override
  String get monthlyBudgetNav => 'Месячный бюджет';

  @override
  String get budgetSubtitle => 'Отслеживайте свои ежемесячные расходы';

  @override
  String get data => 'Данные';

  @override
  String get backupNav => 'Резервное копирование';

  @override
  String get backupSubtitle => 'Экспортируйте или импортируйте свои данные';

  @override
  String get about => 'О приложении';

  @override
  String get version => 'Версия';

  @override
  String get privacy => 'Конфиденциальность';

  @override
  String get termsOfUse => 'Условия использования';

  @override
  String get backupTitle => 'Резервное копирование';

  @override
  String get backupPremiumDescription =>
      'Резервное копирование и экспорт — это премиум-функция';

  @override
  String get exportData => 'Экспортировать данные';

  @override
  String get exportDataSubtitle => 'Сохранить все списки в JSON';

  @override
  String get importData => 'Импортировать данные';

  @override
  String get importDataSubtitle => 'Восстановить списки из JSON';

  @override
  String get importJsonTitle => 'Импортировать JSON';

  @override
  String get importJsonHint => 'Вставьте JSON резервной копии здесь...';

  @override
  String get backupExported => 'Резервная копия экспортирована!';

  @override
  String get budgetAppBar => 'Месячный бюджет';

  @override
  String get budgetPremiumLocked => 'Глобальный месячный бюджет — премиум';

  @override
  String get budgetUpgradePrompt => 'Обновите, чтобы разблокировать';

  @override
  String get noBudgetDefined => 'Бюджет не установлен';

  @override
  String totalEstimated(String amount) {
    return 'Всего оценено: $amount';
  }

  @override
  String get setBudgetButton => 'Установить бюджет';

  @override
  String get budgetLists => 'Списки';

  @override
  String get budgetValueLabel => 'Сумма';

  @override
  String get setBudgetTitle => 'Месячный бюджет';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Все';

  @override
  String get filterPending => 'Ожидающие';

  @override
  String get filterPurchased => 'Купленные';

  @override
  String get sortName => 'Название';

  @override
  String get sortCategory => 'Категория';

  @override
  String get sortDate => 'Дата';

  @override
  String get sortManual => 'Вручную';

  @override
  String get addItem => 'Добавить товар';

  @override
  String get itemName => 'Название товара';

  @override
  String get quantityShort => 'Кол-во';

  @override
  String get unit => 'Единица';

  @override
  String get category => 'Категория';

  @override
  String get estimatedPrice => 'Оценочная цена';

  @override
  String get addItemPrice => 'Оценочная цена';

  @override
  String get editItem => 'Редактировать товар';

  @override
  String get quantityFull => 'Количество';

  @override
  String get editItemPrice => 'Оценочная цена';

  @override
  String get addToPantry => 'Добавить в кладовую';

  @override
  String addToPantryPrompt(String name) {
    return 'Добавить \"$name\" в вашу кладовую?';
  }

  @override
  String get yes => 'Да';

  @override
  String get productName => 'Название продукта';

  @override
  String get idealQty => 'Идеальное кол-во';

  @override
  String get currentQty => 'Текущее кол-во';

  @override
  String get trackStock => 'Отслеживать запас';

  @override
  String get trackStockActive => 'Отображается в предложениях покупок';

  @override
  String get trackStockInactive => 'Не создаёт предложения покупок';

  @override
  String get createListDialog => 'Создать список';

  @override
  String get renameListDialog => 'Переименовать список';

  @override
  String get listHistory => 'История списков';

  @override
  String get myLists => 'Мои списки';

  @override
  String get viewActive => 'Активные';

  @override
  String get viewHistory => 'История';

  @override
  String get noArchivedLists => 'Нет архивированных списков';

  @override
  String get noActiveLists => 'Нет активных списков';

  @override
  String completedOn(String date) {
    return 'Завершён $date';
  }

  @override
  String get sharedLabel => 'Общий';

  @override
  String get restore => 'Восстановить';

  @override
  String get removeSharedTooltip => 'Удалить';

  @override
  String get deleteListTitle => 'Удалить список';

  @override
  String deleteListContent(String name) {
    return 'Вы уверены, что хотите удалить \"$name\"? Все товары будут удалены.';
  }

  @override
  String get removeSharedListTitle => 'Удалить общий список';

  @override
  String removeSharedListContent(String name) {
    return 'Удалить \"$name\" из ваших списков? Исходный список не изменится.';
  }

  @override
  String get createNewList => 'Создать новый список';

  @override
  String get aiAssistant => 'ИИ-помощник';

  @override
  String get aiAssistantDescription =>
      'Получайте умные предложения, рецепты и персонализированные советы с нашим ИИ-помощником.';

  @override
  String get generalAssistant => 'Общий помощник';

  @override
  String get clearHistory => 'Очистить историю';

  @override
  String get clearHistoryConfirm => 'Удалить все сообщения в этом сеансе?';

  @override
  String get chatHint => 'Введите ваше сообщение...';

  @override
  String chatError(String error) {
    return 'Ошибка загрузки чата: $error';
  }

  @override
  String get listHelp => 'Чем помочь с вашим списком?';

  @override
  String get generalHelp => 'Чем помочь с покупками сегодня?';

  @override
  String get chatSubtitle =>
      'Спросите о предложениях товаров, рецептах или советах по экономии.';

  @override
  String get aiError =>
      'Извините, произошла ошибка при обработке вашего запроса. Проверьте соединение или попробуйте позже.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Войдите, чтобы\nразблокировать премиум-функции';

  @override
  String get signInGoogle => 'Войти через Google';

  @override
  String get signInApple => 'Войти через Apple';

  @override
  String get continueAsGuest => 'Продолжить как гость';

  @override
  String loginError(String error) {
    return 'Ошибка входа: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Обновите, чтобы разблокировать';

  @override
  String get itemRemoved => 'Товар удалён';

  @override
  String get undo => 'Отменить';

  @override
  String get emptyListTitle => 'Ваш список пуст';

  @override
  String get emptyListSubtitle => 'Добавьте товары, чтобы начать';

  @override
  String get noListFoundTitle => 'Списки не найдены';

  @override
  String get noListFoundSubtitle => 'Создайте свой первый список, чтобы начать';

  @override
  String get createFirstList => 'Создать первый список';

  @override
  String get listBudgetTitle => 'Бюджет списка';

  @override
  String get budgetAmountLabel => 'Сумма бюджета';

  @override
  String get removeBudget => 'Удалить';

  @override
  String get prefUnlimitedLists => 'Неограниченные списки';

  @override
  String get prefSharing => 'Делиться списками';

  @override
  String get prefFullHistory => 'Полная история';

  @override
  String get prefExportData => 'Экспорт данных';

  @override
  String get prefCustomThemes => 'Свои темы';

  @override
  String get prefMonthlyBudget => 'Глобальный месячный бюджет';

  @override
  String get prefAIAssistant => 'Личный ИИ-помощник';

  @override
  String get prefUnlimitedPantry => 'Неограниченная кладовая';

  @override
  String get prefInteractiveArtifacts => 'Интерактивные ИИ-артефакты';

  @override
  String get themeGreen => 'Зелёный';

  @override
  String get themeBlue => 'Синий';

  @override
  String get themePurple => 'Фиолетовый';

  @override
  String get themeRed => 'Красный';

  @override
  String get themeOrange => 'Оранжевый';

  @override
  String get themePink => 'Розовый';

  @override
  String get themeIndigo => 'Индиго';

  @override
  String get themeAmber => 'Янтарный';

  @override
  String get themeTeal => 'Бирюзовый';

  @override
  String get themeBrown => 'Коричневый';

  @override
  String get catFruits => 'Фрукты';

  @override
  String get catCleaning => 'Уборка';

  @override
  String get catBeverages => 'Напитки';

  @override
  String get catBakery => 'Выпечка';

  @override
  String get catOthers => 'Другое';

  @override
  String get unitPack => 'упаковка';

  @override
  String get shareSubject => 'Список покупок';

  @override
  String get monthlyBudgetTitle => 'Месячный бюджет';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Удалить список';

  @override
  String get pantryItemRemoved => 'Товар удалён';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit товара нужно купить',
      many: '$deficit товаров нужно купить',
      few: '$deficit товара нужно купить',
      one: '$deficit товар нужно купить',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Итого в корзине';

  @override
  String get restockLabel => 'Пополнить';

  @override
  String get advancedFeatures => 'Расширенные функции';

  @override
  String get selectAll => 'Выбрать всё';

  @override
  String get deselectAll => 'Снять выделение';

  @override
  String get monthlyBudgetAppBar => 'Месячный бюджет';

  @override
  String get budgetEditTitle => 'Месячный бюджет';

  @override
  String get budgetDashboardTitle => 'Панель';

  @override
  String get selectListForDashboard => 'Выберите список для просмотра панели.';

  @override
  String get spendingAnalysis => 'Анализ расходов';

  @override
  String get noItemsToAnalyze => 'В списке нет товаров для анализа.';

  @override
  String get markItemsToSeeAnalysis =>
      'Отметьте товары как купленные, чтобы увидеть анализ.';

  @override
  String get totalSpending => 'Всего потрачено';

  @override
  String get spendingByCategory => 'Расходы по категориям';

  @override
  String get achievements => 'Достижения';

  @override
  String get exportPdfExcel => 'Экспорт PDF/Excel';

  @override
  String get exportPdf => 'Экспорт в PDF';

  @override
  String get exportExcel => 'Экспорт в Excel';

  @override
  String get organizingAi => 'ОРГАНИЗАЦИЯ С ПОМОЩЬЮ ИИ...';

  @override
  String get yesLabel => 'Да';

  @override
  String get noLabel => 'Нет';

  @override
  String get shareListText => 'Мой список покупок';

  @override
  String get emptyListAddItems =>
      'Ваш список пуст! Сначала добавьте товары. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Список волшебным образом организован по категориям! ✨';

  @override
  String get shoppingMode => 'Режим покупок';

  @override
  String get smartOrganization => 'Умная организация';

  @override
  String get savings => 'Экономия';

  @override
  String get shoppingModeHeader => 'РЕЖИМ ПОКУПОК';

  @override
  String get shareAsText => 'Отправить товары как форматированный текст';

  @override
  String get shareRealtime => 'Синхронизация в реальном времени с другими';

  @override
  String get quickRecipe => 'Быстрый рецепт';

  @override
  String get quickRecipePrompt =>
      'Предложи рецепты с товарами из моего списка.';

  @override
  String get economyTips => 'Советы по экономии';

  @override
  String get economyTipsPrompt => 'Как я могу сэкономить на этой покупке?';

  @override
  String get organizeAisles => 'По отделам';

  @override
  String get organizeAislesPrompt => 'Упорядочить по отделам магазина.';

  @override
  String get recipeSuggestion => 'Предложение рецепта';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Осталось $remaining кредитов';
  }

  @override
  String get addAllToList => 'Добавить всё в список';

  @override
  String get organizeByAisles => 'По отделам';

  @override
  String get voiceTranscriptionTooltip => 'Голосовой ввод (Бесплатно)';

  @override
  String get aiVoiceCommandTooltip => 'Голосовая команда ИИ (Премиум)';

  @override
  String get voiceCommandTitle => 'Голосовая команда ИИ';

  @override
  String get voiceCommandContent =>
      'Говорите естественно, чтобы управлять списком!\n\nПримеры:\n• \'Добавь хлеб, сыр и ветчину\'\n• \'Удали стиральный порошок\'\n• \'Смени тему на синюю\'\n\nЭто эксклюзивная функция Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Посмотреть планы';

  @override
  String get itemsAddedSuccess => 'Товары успешно добавлены в список!';

  @override
  String get viewList => 'Посмотреть список';

  @override
  String get feedbackTitle => 'Отправить отзыв';

  @override
  String get feedbackPrompt => 'Чем вы хотите поделиться?';

  @override
  String get feedbackTypeBug => 'Сообщить об ошибке';

  @override
  String get feedbackTypeBugHint => 'Что-то не работает';

  @override
  String get feedbackTypeSuggestion => 'Предложение';

  @override
  String get feedbackTypeSuggestionHint => 'Идея по улучшению приложения';

  @override
  String get feedbackTypeTranslation => 'Проблема с переводом';

  @override
  String get feedbackTypeTranslationHint =>
      'Некорректный или неудачный перевод';

  @override
  String get feedbackTypeFeature => 'Запрос функции';

  @override
  String get feedbackTypeFeatureHint => 'Функция, которую вы хотели бы видеть';

  @override
  String get feedbackTypeOther => 'Другое';

  @override
  String get feedbackTypeOtherHint => 'Другой тип отзыва';

  @override
  String get feedbackHint => 'Опишите ваш отзыв подробно...';

  @override
  String get feedbackSend => 'Отправить отзыв';

  @override
  String get feedbackSending => 'Отправка...';

  @override
  String get feedbackThankYou => 'Спасибо!';

  @override
  String get feedbackThankYouMessage =>
      'Ваш отзыв получен и помогает нам улучшать Lista Plus для всех.';

  @override
  String get feedbackBack => 'Назад';

  @override
  String feedbackError(String error) {
    return 'Ошибка отправки: $error';
  }

  @override
  String get feedbackRetry => 'Повторить';

  @override
  String get feedbackSettingsTitle => 'Отправить отзыв';

  @override
  String get feedbackSettingsSubtitle =>
      'Сообщайте об ошибках, предлагайте улучшения или исправляйте переводы';

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
}
