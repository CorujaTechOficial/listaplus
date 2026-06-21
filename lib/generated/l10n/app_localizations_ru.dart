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
  String get navChat => 'Чат';

  @override
  String get navRecipes => 'Рецепты';

  @override
  String get navLists => 'Списки';

  @override
  String get navMealPlanner => 'Меню';

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
  String get next => 'Следующий';

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
  String get help => 'Помощь';

  @override
  String get helpListTitle => 'Использование вашего списка';

  @override
  String get helpListAddItems =>
      'Добавляйте товары с помощью кнопки + внизу или воспользуйтесь поиском для просмотра товаров.';

  @override
  String get helpListAi =>
      'Попросите ИИ-помощника создать, систематизировать или дополнить ваш список — просто коснитесь значка с блестками.';

  @override
  String get helpListShoppingMode =>
      'Режим покупок скрывает купленные товары, чтобы вы могли сосредоточиться на том, что осталось';

  @override
  String get helpListOrganize =>
      'Перетаскивайте элементы, чтобы изменить их порядок, проведите пальцем, чтобы отметить их как купленные, или используйте фильтры и сортировку.';

  @override
  String get helpListShare =>
      'Поделитесь своим списком с семьей или экспортируйте его в формате PDF, Excel или в виде обычного текста.';

  @override
  String get import => 'Импортировать';

  @override
  String get rename => 'Переименовать';

  @override
  String get upgrade => 'Обновить';

  @override
  String get clear => 'Очистить';

  @override
  String get clearPurchasedTitle => 'Очистить купленные товары';

  @override
  String get clearPurchasedConfirmMessage =>
      'Удалить все купленные товары из этого списка? Это невозможно отменить.';

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
  String get errorCreateList =>
      'Не удалось создать список. Проверьте подключение и повторите попытку.';

  @override
  String get errorShareCode =>
      'Ошибка создания общего кода. Проверьте подключение и повторите попытку.';

  @override
  String get errorQuickAdd =>
      'Не удалось добавить товар. Проверьте подключение и повторите попытку.';

  @override
  String get errorLoadList =>
      'Не удалось загрузить ваши списки. Пожалуйста, создайте новый список, чтобы начать.';

  @override
  String get restoreError => 'Ошибка восстановления покупок. Попробуйте снова.';

  @override
  String get loading => 'Загрузка...';

  @override
  String get fieldRequired => 'Обязательное поле';

  @override
  String get addedFeedback => 'Добавлено!';

  @override
  String get profile => 'Профиль';

  @override
  String get exitShoppingMode => 'Выйти из режима покупок';

  @override
  String get exit => 'Выход';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Выбрано $count',
      many: 'Выбрано $count',
      few: 'Выбрано $count',
      one: 'other $count',
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
  String pantryDeficitCount(int count, String unit) {
    return 'Отсутствует $count$unit';
  }

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
  String get scanProductTitle => 'Сканировать продукт';

  @override
  String get positionBarcodeCenter => 'Расположите штрих-код в центре';

  @override
  String get product => 'Продукт';

  @override
  String get settingsAppBar => 'Настройки';

  @override
  String get preferencesSection => 'Предпочтения';

  @override
  String get aiSection => 'ИИ-помощник';

  @override
  String get language => 'Язык';

  @override
  String get languagePortuguese => 'Португальский (Бразилия)';

  @override
  String get languageEnglish => 'Английский';

  @override
  String get languageSystem => 'Системный';

  @override
  String get chooseLanguage => 'Выберите язык';

  @override
  String get searchLanguage => 'Язык поиска...';

  @override
  String get currency => 'Валюта';

  @override
  String get chooseCurrency => 'Выберите валюту';

  @override
  String get searchCurrency => 'Поиск валюты...';

  @override
  String get appearance => 'Внешний вид';

  @override
  String get themeMode => 'Тематический режим';

  @override
  String get chooseThemeMode => 'Выберите режим темы';

  @override
  String get light => 'Светлая';

  @override
  String get system => 'Системная';

  @override
  String get dark => 'Тёмная';

  @override
  String get themeColor => 'Цвет темы';

  @override
  String get dynamicColors => 'Динамические цвета';

  @override
  String get dynamicColorsSubtitle => 'Используйте цвета на основе ваших обоев';

  @override
  String get dynamicColorsEnabledWarning =>
      'Отключите динамические цвета, чтобы цвет темы вступил в силу.';

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
  String get myAchievements => 'Мои достижения';

  @override
  String get itemsPurchased => 'Купленные товары';

  @override
  String get totalSavings => 'Общая экономия';

  @override
  String get currentStreak => 'Текущая серия';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дней',
      one: '$count дней',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Разблокированные значки';

  @override
  String get badgeBeginner => 'Новичок';

  @override
  String get badgeOrganized => 'Организованный';

  @override
  String get badgeSavingMaster => 'Спасение Мастера';

  @override
  String get badgeSuperPlanner => 'Супер планировщик';

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
  String get budgetGoalInvalidAmount => 'Введите значение больше нуля';

  @override
  String get budgetPartialEstimateHint => '~ Включает частичную оценку цен';

  @override
  String get budgetGoalSaved => 'Цель бюджета сохранена.';

  @override
  String get budgetGoalRemoved => 'Цель бюджета удалена.';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased из $total элементов';
  }

  @override
  String progressBudget(String amount) {
    return 'Бюджет: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Итого: $amount';
  }

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
  String get keepAdding => 'Продолжайте добавлять';

  @override
  String get keepAddingSubtitle =>
      'Держите лист открытым, чтобы добавить несколько элементов.';

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
  String get newChat => 'Новый чат';

  @override
  String get newChatConfirmTitle => 'Новый разговор';

  @override
  String get newChatConfirmMessage =>
      'Начать новый разговор? Ваш текущий разговор будет потерян.';

  @override
  String get noHistory => 'Нет истории чата';

  @override
  String get deleteSession => 'Удалить чат';

  @override
  String get deleteSessionConfirm =>
      'Вы уверены, что хотите удалить этот чат? Сообщения будут безвозвратно потеряны.';

  @override
  String get clearHistory => 'Очистить историю';

  @override
  String get clearHistoryConfirm => 'Удалить все сообщения в этом сеансе?';

  @override
  String get chatHint => 'Введите ваше сообщение...';

  @override
  String get chatHintBlocked => 'Разблокируйте AI для общения';

  @override
  String get chatEmptySubtitle =>
      'Чтобы начать, попросите предложения по предметам, рецепты или советы по экономии.';

  @override
  String get chatEmptyTitle => 'Ваш чат пуст';

  @override
  String chatError(String error) {
    return 'Ошибка загрузки чата: $error';
  }

  @override
  String get goodResponse => 'Хороший ответ';

  @override
  String get badResponse => 'Плохой ответ';

  @override
  String get scrollToBottom => 'Прокрутить вниз';

  @override
  String get somethingWentWrong => 'Что-то пошло не так';

  @override
  String get editMessage => 'Редактировать сообщение';

  @override
  String get searchConversations => 'Поиск бесед';

  @override
  String get dateGroupToday => 'Сегодня';

  @override
  String get dateGroupYesterday => 'Вчера';

  @override
  String get dateGroupPrevious7Days => 'Предыдущие 7 дней';

  @override
  String get dateGroupOlder => 'Старше';

  @override
  String get aiAssistantTitle => 'ИИ-помощник';

  @override
  String get closeSheet => 'Закрывать';

  @override
  String get scanBarcodeTitle => 'Сканировать штрих-код';

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
  String get aiLimitAlmostReached => 'Почти закончились сообщения ИИ';

  @override
  String get unlockAi => 'Разблокируйте неограниченный ИИ';

  @override
  String get aiTeaserFallback =>
      'Подпишитесь на Премиум, чтобы получить полный ответ и неограниченное количество советов от искусственного интеллекта по покупкам...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Действия ИИ остались в этом месяце — обновление без ограничений';
  }

  @override
  String get aiUsageExhausted =>
      'Достигнут месячный лимит AI. Обновите до Pro без ограничений →';

  @override
  String get undo => 'Отменить';

  @override
  String get newChatStarted => 'Начался новый чат';

  @override
  String get quickAddToList => 'Добавить в список';

  @override
  String get aiCapabilitiesTitle => 'Что я могу сделать?';

  @override
  String get aiCapabilitiesLists => 'Списки покупок';

  @override
  String get aiCapabilitiesBudget => 'Бюджет и цены';

  @override
  String get aiCapabilitiesRecipes => 'Рецепты и меню';

  @override
  String get aiCapabilitiesOrganize => 'Организация';

  @override
  String get marketModeDescription => 'Отметьте товары во время покупок';

  @override
  String get kipiListTitle => 'КипиЛист';

  @override
  String get loginPrompt => 'Войдите, чтобы\nразблокировать премиум-функции';

  @override
  String get signInGoogle => 'Войти через Google';

  @override
  String get signInApple => 'Войти через Apple';

  @override
  String get continueAsGuest => 'Продолжить как гость';

  @override
  String get onboardingWelcomeTitle => 'Добро пожаловать в KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Самый разумный способ организовать покупки и сэкономить деньги.';

  @override
  String get onboardingSetupTitle => 'Персонализируйте свой опыт';

  @override
  String get onboardingSetupDesc =>
      'Выберите, как вы хотите, чтобы KipiList выглядела и работала для вас.';

  @override
  String get onboardingLoginTitle => 'Сохраняйте все в облаке';

  @override
  String get onboardingLoginDesc =>
      'Ваши данные синхронизируются на всех ваших устройствах';

  @override
  String get onboardingShareTitle => 'Поделитесь с теми, кого вы любите';

  @override
  String get onboardingShareDesc =>
      'Синхронизируйте списки с семьей и друзьями в режиме реального времени';

  @override
  String get onboardingPremiumTitle => 'Разблокируйте все функции';

  @override
  String get onboardingPremiumSubtitle =>
      'Получите максимальную пользу от своих списков покупок';

  @override
  String get onboardingAnnualBadge => 'Лучшее соотношение цены и качества';

  @override
  String get onboardingMonthlyLabel => 'Ежемесячно';

  @override
  String get onboardingAnnualLabel => 'Ежегодный';

  @override
  String get onboardingViewAllPlans => 'Посмотреть все планы';

  @override
  String get onboardingSubscribeCta => 'Подписаться';

  @override
  String get onboardingCancelAnytime =>
      'Отменить в любое время. Никаких обязательств.';

  @override
  String get onboardingContinueAsGuest => 'Продолжить в качестве гостя';

  @override
  String get onboardingRestore => 'Восстановить';

  @override
  String get onboardingRestoreDesc =>
      'Уже есть подписка? Нажмите здесь, чтобы восстановить его.';

  @override
  String get onboardingMaybeLater => 'Может быть, позже';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Привет, $name, организуй свои покупки правильно.';
  }

  @override
  String get onboardingSlide1Title => 'Умные списки покупок';

  @override
  String get onboardingSlide1Body =>
      'Создавайте и делитесь списками мгновенно. Kipi добавляет предметы автоматически в зависимости от ваших привычек.';

  @override
  String get onboardingSlide2Title => 'Знакомьтесь, Кипи';

  @override
  String get onboardingSlide2Body =>
      'Спрашивайте что угодно — создавайте списки, находите рецепты, отслеживайте свою кладовую, планируйте свою неделю.';

  @override
  String get onboardingSlide3Title => 'Планирование кладовой и еды';

  @override
  String get onboardingSlide3Body =>
      'Отслеживайте, что у вас есть, планируйте питание и автоматически создавайте списки покупок.';

  @override
  String get onboardingExit => 'Выход';

  @override
  String get onboardingPersonalizationTitle => 'Давай познакомимся';

  @override
  String get onboardingPersonalizationDesc =>
      'Мы будем использовать это, чтобы персонализировать ваши предложения и сделать покупки более разумными.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Какая твоя любимая еда?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'например Пицца, Суши, Лазанья...';

  @override
  String get onboardingPersonalizationCta => 'Продолжать';

  @override
  String get onboardingPersonalizationSkip => 'Пропустить сейчас';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Расскажите нам о своей любимой еде, чтобы продолжить.';

  @override
  String get settingsDefaultScreen => 'Главный экран по умолчанию';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Выбирайте между списком покупок или чатом с искусственным интеллектом.';

  @override
  String get settingsScreenList => 'Список покупок';

  @override
  String get settingsScreenChat => 'AI-чат';

  @override
  String loginError(String error) {
    return 'Ошибка входа: $error';
  }

  @override
  String get paywallTitle => 'КипиЛист Премиум';

  @override
  String get paywallLoadingError =>
      'Ошибка при загрузке предложений. Попробуйте еще раз.';

  @override
  String get paywallPurchaseError =>
      'Не удалось завершить покупку. Попробуйте еще раз.';

  @override
  String get paywallRestoreError =>
      'Активная подписка для восстановления не найдена.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ДНЕЙ БЕСПЛАТНО';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count НЕДЕЛИ БЕСПЛАТНО',
      one: '$count НЕДЕЛЯ БЕСПЛАТНО',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count МЕСЯЦЕВ БЕСПЛАТНО',
      one: '$count МЕСЯЦ БЕСПЛАТНО',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Попробуйте бесплатно!';

  @override
  String get paywallTrialSubtitle =>
      'Отменить в любое время. Сегодня никаких обвинений.';

  @override
  String get paywallTrialCta => 'Начать бесплатную пробную версию';

  @override
  String get recipeAddToList => 'Добавить в список покупок';

  @override
  String get recipeAddError =>
      'Не удалось добавить в ваш список. Пожалуйста, попробуйте еще раз.';

  @override
  String get recipeTapToCheck =>
      'Коснитесь ингредиента, чтобы проверять его во время приготовления.';

  @override
  String get recipeIngredientInPantry => 'В кладовой';

  @override
  String get recipeIngredientLowPantry => 'Низко в кладовке';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 other$listName';
  }

  @override
  String get noListSelected => 'Список не выбран. Сначала откройте список.';

  @override
  String get paywallFeaturesTitle => 'Все, что вам нужно:';

  @override
  String get paywallFeatureDescAssistant =>
      'ИИ автоматически организует ваш список';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Создавайте столько списков, сколько вам нужно';

  @override
  String get paywallFeatureDescSharing =>
      'Делайте покупки вместе в режиме реального времени';

  @override
  String get paywallFeatureDescPantry => 'Отслеживайте, что у вас дома';

  @override
  String get paywallFeatureDescBudget => 'Соблюдайте бюджет каждый месяц';

  @override
  String get paywallFeatureUnlimitedLists => 'Неограниченные списки';

  @override
  String get paywallFeatureSmartAI => 'Умный ИИ';

  @override
  String get paywallFeatureExpenseControl => 'Контроль расходов';

  @override
  String get paywallFeatureSharing => 'Совместное использование';

  @override
  String get paywallBeforeAfterTitle => 'ИИ до и после:';

  @override
  String get paywallLabelCommon => 'Общий';

  @override
  String get paywallLabelPro => 'КипиЛист ПРО';

  @override
  String get paywallBeforeItem1 => 'рис';

  @override
  String get paywallBeforeItem2 => 'мыло';

  @override
  String get paywallBeforeItem3 => 'мясо';

  @override
  String get paywallBeforeItem4 => 'хлеб';

  @override
  String get paywallAfterItem1 => 'Зерна';

  @override
  String get paywallAfterItem2 => 'Очистка';

  @override
  String get paywallAfterItem3 => 'Мясо';

  @override
  String get paywallAfterItem4 => 'Пекарня';

  @override
  String get paywallTestimonialsTitle => 'Что говорят наши пользователи:';

  @override
  String get paywallTestimonial1Name => 'Энн С.';

  @override
  String get paywallTestimonial1Text =>
      'ИИ организует мои покупки за считанные секунды. Я экономлю 20 минут на поездке на рынок.';

  @override
  String get paywallTestimonial2Name => 'Чарльз М.';

  @override
  String get paywallTestimonial2Text =>
      'Я больше никогда не забывал ни одного пункта списка. Чат с искусственным интеллектом просто сенсационен!';

  @override
  String get paywallSocialProof => '+2400 семей используют его';

  @override
  String get paywallCtaUnlock => 'Разблокировать ПРО';

  @override
  String get paywallBestValue => 'ЛУЧШАЯ ЦЕНА';

  @override
  String get paywallMostPopular => 'САМЫЕ ПОПУЛЯРНЫЕ';

  @override
  String get paywallProLabel => 'ПРО';

  @override
  String get paywallSafeCheckout => 'Безопасная оплата';

  @override
  String get paywallSelectPlan => 'Выберите свой план:';

  @override
  String paywallSavePercent(int percent) {
    return 'СОХРАНИТЬ $percent%';
  }

  @override
  String paywallPricePerMonth(String price) {
    return 'Всего $price/месяц';
  }

  @override
  String get paywallPackageAnnual => 'Годовой план';

  @override
  String get paywallPackageMonthly => 'Ежемесячный план';

  @override
  String get paywallPackageLifetime => 'Пожизненный доступ';

  @override
  String get paywallCancelAnytime =>
      'Отменить в любое время. Никаких обязательств.';

  @override
  String paywallTrialInCard(int days) {
    return 'Первые $days дней БЕСПЛАТНО';
  }

  @override
  String get paywallSecuredByStore =>
      'Защищено Google Play · Отменить в любое время';

  @override
  String get paywallPolicy => 'политика конфиденциальности';

  @override
  String get paywallTerms => 'Условия эксплуатации';

  @override
  String get paywallRestore => 'Восстановить';

  @override
  String get paywallTimelineToday => 'Сегодня';

  @override
  String get paywallTimelineTodayDesc =>
      'Разблокируйте полный доступ мгновенно';

  @override
  String paywallTimelineDay(int day) {
    return 'День $day';
  }

  @override
  String get paywallTimelineReminderDesc =>
      'Напоминаем вам до окончания пробного периода';

  @override
  String get paywallTimelineChargeDesc =>
      'Ваша подписка начинается — отмените ее в любое время';

  @override
  String get paywallHeroFeatureTitle =>
      'Помощник по покупкам с искусственным интеллектом';

  @override
  String get paywallHeroFeatureDesc =>
      'Произнесите или вставьте целый список — ИИ сортирует, классифицирует и составляет бюджет за считанные секунды.';

  @override
  String get paywallBasedOnAnswers =>
      'Персонализировано на основе ваших ответов';

  @override
  String get paywallHeroHeadline => 'Kipi AI всегда рядом с вами';

  @override
  String get paywallHeroSubtitle =>
      'Добавляйте элементы, организуйте списки и экономьте время с искусственным интеллектом в вашем кармане.';

  @override
  String get paywallBenefit1Desc =>
      'Добавляет, систематизирует и предлагает элементы 24 часа в сутки, 7 дней в неделю.';

  @override
  String get paywallBenefit2Desc => 'Нет ограничения на 3 списка';

  @override
  String get paywallBenefit3Desc => 'Отслеживание расходов и семейные списки';

  @override
  String get paywallPackageMonthlyDesc => 'Полная гибкость';

  @override
  String get paywallWelcomeOfferBadge => '🎁 Приветственное предложение';

  @override
  String get paywallFreeTier => 'Бесплатно: 3 списка';

  @override
  String get paywallProTier => 'Плюсы: без ограничений';

  @override
  String get firstItemAddedSnackbar =>
      'Добавлен первый товар! Отличное начало 🛒';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Начните бесплатно — $days дней';
  }

  @override
  String get premiumUpgrade => 'Обновите, чтобы разблокировать';

  @override
  String get itemRemoved => 'Товар удалён';

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
  String get pantryItemAdded => 'Товар добавлен';

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
      'Говорите естественно, чтобы управлять списком!\n\nПримеры:\n• \'Добавь хлеб, сыр и ветчину\'\n• \'Удали стиральный порошок\'\n• \'Смени тему на синюю\'\n\nЭто эксклюзивная функция KipiList Premium.';

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
      'Ваш отзыв получен и помогает нам улучшать KipiList для всех.';

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
  String get aiEnergy => 'ИИ Энергия';

  @override
  String get searchInConversation => 'Искать в разговоре...';

  @override
  String get noMessagesFound => 'Сообщений не найдено';

  @override
  String get suggestedQuestions => 'Предлагаемые вопросы:';

  @override
  String get shoppingAssistant => 'Помощник по покупкам';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased из $total куплено';
  }

  @override
  String get estimatedCost => 'Оцененный';

  @override
  String get viewItems => 'Посмотреть элементы';

  @override
  String get noItemsInList => 'В списке нет элементов';

  @override
  String get longHistoryWarning =>
      'Длинная история: помощник фокусируется на последних сообщениях для повышения производительности.';

  @override
  String get listening => 'Слушаю...';

  @override
  String get addDirectToList => 'Добавить прямо в список';

  @override
  String get unlockFullResponse => 'Разблокировать полный ответ';

  @override
  String get switchList => 'Список переключателей';

  @override
  String get marketMode => 'Рыночный режим';

  @override
  String get backToChat => 'Вернуться в чат';

  @override
  String get finishShopping => 'Завершить покупки';

  @override
  String get welcomeAiAssistant => 'Добро пожаловать в AI Assistant';

  @override
  String get createListToStartAi =>
      'Создайте список покупок, чтобы начать использовать умный чат.';

  @override
  String get howCanIHelp => 'Как я могу помочь?';

  @override
  String get chatSubtitleShort =>
      'Спрашивайте о ценах, рецептах, организации...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total куплено';
  }

  @override
  String get quickReplies => 'Быстрые ответы:';

  @override
  String get voiceProFeature =>
      'Расширенные голосовые команды — Pro. Включение базовой диктовки...';

  @override
  String get viewPro => 'Посмотреть Про';

  @override
  String get errorLoadingChat => 'Упс! Что-то пошло не так при загрузке чата.';

  @override
  String get errorLoadingChatSubtitle =>
      'Проверьте подключение или повторите попытку позже.';

  @override
  String get errorOscillation =>
      'Это может произойти из-за колебаний сети или временной недоступности. Пожалуйста, попробуйте еще раз.';

  @override
  String get activeListening => 'Активное слушание';

  @override
  String get whatToDoWithItem => 'Что бы вы хотели сделать с этим предметом?';

  @override
  String get viewDetails => 'Посмотреть детали';

  @override
  String get openMenu => 'Открыть меню';

  @override
  String get viewRecipe => 'Посмотреть рецепт';

  @override
  String get recipeCreated => 'Рецепт создан!';

  @override
  String get editRecipe => 'Редактировать';

  @override
  String get deleteRecipe => 'Удалить';

  @override
  String get deleteRecipeConfirm => 'Удалить этот рецепт?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Вы уверены, что хотите удалить «$recipeName»? Это действие невозможно отменить.';
  }

  @override
  String get ingredients => 'Ингредиенты';

  @override
  String get instructions => 'Инструкции';

  @override
  String get prepTime => 'Время подготовки';

  @override
  String get recipeSaved => 'Рецепт сохранен!';

  @override
  String get noRecipesSaved => 'Рецепты не сохранены';

  @override
  String get noRecipesSavedHint =>
      'Создайте свой первый индивидуальный рецепт, нажав кнопку ниже.';

  @override
  String get myRecipes => 'Мои рецепты';

  @override
  String get newRecipe => 'Новый рецепт';

  @override
  String get loadingRecipes => 'Загружаю ваши рецепты...';

  @override
  String get errorLoadingRecipes => 'Ошибка загрузки рецептов.';

  @override
  String get addIngredient => 'Добавить ингредиент';

  @override
  String get saveRecipe => 'Сохранять';

  @override
  String get recipeName => 'Название рецепта';

  @override
  String get shortDescription => 'Краткое описание';

  @override
  String get prepTimeMinutes => 'Время приготовления (минуты)';

  @override
  String get recipeYieldServings => 'Доходность порций';

  @override
  String get recipeManualTotalCost => 'Общая стоимость вручную';

  @override
  String get recipeManualTotalCostHint =>
      'Оставьте пустым, чтобы оценить цены на ингредиенты.';

  @override
  String get recipeEstimatedTotalCost => 'Ориентировочная общая стоимость';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / порция';
  }

  @override
  String recipeServesCount(int count) {
    return 'Обслуживает $count';
  }

  @override
  String get recipeEstimatePartial =>
      'Частичная оценка на основе ингредиентов с ценой.';

  @override
  String get instructionsHint => 'Введите один шаг в строке...';

  @override
  String get addPhoto => 'Добавить фото';

  @override
  String get imageUrlPlaceholder => 'Или вставьте URL-адрес изображения';

  @override
  String get tags => 'Теги';

  @override
  String get recipeTags => 'Теги рецептов';

  @override
  String get suggestedTags => 'Предложенный';

  @override
  String get searchRecipes => 'Поиск рецептов...';

  @override
  String get filterByTag => 'Фильтровать по тегу';

  @override
  String get allTags => 'Все';

  @override
  String get recipeDeleted => 'Рецепт удален.';

  @override
  String get saveChanges => 'Сохранить изменения';

  @override
  String get editRecipeTitle => 'Редактировать рецепт';

  @override
  String get newRecipeTitle => 'Новый рецепт';

  @override
  String get requiredField => 'Необходимый';

  @override
  String get chooseImageSource => 'Выберите источник изображения';

  @override
  String get gallery => 'Галерея';

  @override
  String get enterUrl => 'Введите URL';

  @override
  String get recipeImage => 'Изображение рецепта';

  @override
  String get removeImage => 'Удалить изображение';

  @override
  String get mealPlannerTitle => 'Планировщик еды';

  @override
  String get mealPlannerViewMonthly => 'Просмотр за месяц';

  @override
  String get mealPlannerViewWeekly => 'Еженедельный просмотр';

  @override
  String get mealPlannerNoMeals => 'Питание не запланировано';

  @override
  String get mealPlannerNoMealsHint => 'Нажмите день, чтобы добавить блюдо';

  @override
  String get mealPlannerLoading => 'Загрузка плана питания...';

  @override
  String get mealPlannerError => 'Ошибка загрузки плана питания.';

  @override
  String get mealPlannerAddMeal => 'Добавить еду';

  @override
  String get mealPlannerEditMeal => 'Редактировать еду';

  @override
  String get mealPlannerDeleteMeal => 'Удалить еду';

  @override
  String get mealPlannerMealDeleted => 'Еда удалена';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count порций',
      one: '$count порций',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Порции';

  @override
  String get mealPlannerNoteLabel => 'Примечание (необязательно)';

  @override
  String get mealPlannerSelectRecipe => 'Выберите рецепт';

  @override
  String get mealPlannerSearchRecipes => 'Поиск рецептов...';

  @override
  String get mealPlannerNoRecipesFound => 'Рецептов не найдено';

  @override
  String get mealPlannerNoRecipesHint =>
      'Сначала создайте рецепты на вкладке «Рецепты».';

  @override
  String get mealPlannerSave => 'Добавить в план';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'Запланировано $count из $total приемов пищи';
  }

  @override
  String get mealPlannerEstimatePartial =>
      'Оценка на основе рецептов с частичными данными о ценах.';

  @override
  String get mealPlannerGenerateList => 'Создать список покупок';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Добавить в список покупок все ингредиенты из запланированных на эту неделю блюд?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'В ваш список добавлено $count ингредиентов!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Никаких ингредиентов добавлять не нужно. Сначала спланируйте несколько блюд по рецептам.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Сначала создайте список покупок.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Завтрак';

  @override
  String get mealPlannerMealTypeLunch => 'Обед';

  @override
  String get mealPlannerMealTypeDinner => 'Ужин';

  @override
  String get mealPlannerMealTypeSnack => 'Закуска';

  @override
  String get mealPlannerDateLabel => 'Дата';

  @override
  String get mealPlannerWeekEmpty => 'На этой неделе ничего не запланировано';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Нажмите на любой день, чтобы начать планировать питание!';

  @override
  String mealPlannerBudgetMonthCost(String amount) {
    return 'Месяц: $amount';
  }

  @override
  String mealPlannerBudgetWeekCost(String amount) {
    return 'Неделя: $amount';
  }

  @override
  String mealPlannerBudgetTodayCost(String amount) {
    return 'Сегодня: $amount';
  }

  @override
  String get mealPlannerBudgetRemoveGoal => 'Удалить цель';

  @override
  String get mealPlannerBudgetGoalNav => 'Бюджет планировщика питания';

  @override
  String get mealPlannerBudgetGoalSubtitle =>
      'Ежемесячная цель расходов на планирование питания';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes мин.';
  }

  @override
  String get inviteToList => 'Пригласить в список';

  @override
  String get shareApp => 'Поделиться приложением';

  @override
  String get shareAppDescription => 'Пригласите друзей использовать KipiList';

  @override
  String shareReferralText(String url) {
    return 'Я использую KipiList для организации покупок! Загрузите по моей ссылке, и мы оба получим 7 дней Premium бесплатно: $url';
  }

  @override
  String get shareReferralSubject => 'Получите 7 дней KipiList Premium!';

  @override
  String get gestureHint =>
      'Удерживайте, чтобы выбрать • Проведите пальцем, чтобы удалить';

  @override
  String get catalogTitle => 'Каталог';

  @override
  String get catalogMyFrequents => 'Мои завсегдатаи';

  @override
  String get catalogSearchGlobal => 'Искать любой товар...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Искать в $category...';
  }

  @override
  String get catalogSortPopular => 'Самый популярный';

  @override
  String get catalogSortAZ => 'А – Я';

  @override
  String get catalogFilterNational => 'граждане';

  @override
  String get catalogRareSection => 'менее распространено в вашей стране';

  @override
  String get catalogRareBadge => 'Редкий';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Добавить $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Товар не найден, введите название';

  @override
  String get catalogBrowse => 'Просмотреть каталог';

  @override
  String get catalogCategories => 'Категории';

  @override
  String get offlineBanner => 'Вы оффлайн';

  @override
  String get consentTitle => 'Конфиденциальность и аналитика';

  @override
  String get consentBody =>
      'KipiList использует Firebase Analytics для улучшения вашего опыта. Ваши данные обрабатываются в соответствии с нашей Политикой конфиденциальности.';

  @override
  String get consentAccept => 'Принимать';

  @override
  String get consentDecline => 'Нет, спасибо';

  @override
  String get mealPlannerPantryAllAvailable => 'Все ингредиенты доступны';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 отсутствует';
  }

  @override
  String get mealPlannerManageTypes => 'Управление типами еды';

  @override
  String get mealPlannerAddType => 'Добавить тип питания';

  @override
  String get mealPlannerEditType => 'Изменить тип питания';

  @override
  String get mealPlannerTypeName => 'Имя';

  @override
  String get mealPlannerTypeColor => 'Цвет';

  @override
  String get mealPlannerTypeIcon => 'Икона';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      'Вы уверены, что хотите удалить этот тип питания? Плановые приемы пищи при этом типе сохранятся.';

  @override
  String get mealPlannerTypeNameEmpty => 'Имя не может быть пустым';

  @override
  String get mealPlannerTypeDeleteError =>
      'Невозможно удалить этот тип питания.';

  @override
  String get mealPlannerCustomTypeLabel => 'Пользовательский тип';

  @override
  String get mealPlannerDefaultTypeLabel => 'Тип по умолчанию';

  @override
  String get mealPlannerDuplicate => 'Дублировать еду';

  @override
  String get mealPlannerSelectDestinationDay => 'Дублировать в...';

  @override
  String get mealPlannerCurrentDayLabel => 'Текущий день';

  @override
  String get mealPlannerDuplicateSuccess => 'Еда успешно продублирована!';

  @override
  String get expirationDate => 'Дата окончания срока';

  @override
  String get notInformed => 'Не установлено';

  @override
  String get skip => 'Пропускать';

  @override
  String get onboardingSkip => 'Пропустить сейчас';

  @override
  String get onboardingAiTitle => 'Пообщаться с Кипи';

  @override
  String get onboardingAiGreeting =>
      'Привет! Я Кипи, ваш личный помощник по покупкам! 🛒';

  @override
  String get onboardingAiAskName => 'Как тебя зовут?';

  @override
  String get onboardingAiNameHint => 'Введите свое имя...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Приятно познакомиться, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Какая твоя любимая еда?';

  @override
  String get onboardingAiFoodHint => 'например Пицца, Суши...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Отличный выбор! Вот что я бы добавил в ваш список:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Это выглядит хорошо? Попробуйте написать что-нибудь другое!';

  @override
  String get onboardingAiReady =>
      'Большой! Вы готовы начать. Давайте настроим ваш аккаунт!';

  @override
  String get onboardingAiContinue => 'Продолжить →';

  @override
  String get connectionError => 'Ошибка подключения';

  @override
  String connectionErrorDesc(String error) {
    return 'Не удалось подключиться к серверу. Проверьте свой интернет.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Ошибка загрузки списков.';

  @override
  String get errorLoadingItems => 'Ошибка загрузки элементов';

  @override
  String get noListsFound => 'Списки не найдены';

  @override
  String get backToToday => 'Вернуться в сегодняшний день';

  @override
  String get quickSuggestions => 'Быстрые предложения';

  @override
  String get aiEnergyLow => 'Низкая энергия ИИ';

  @override
  String get aiUnlockUnlimited => 'Разблокируйте неограниченный ИИ';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 сегодня';
  }

  @override
  String get aiSubscribeUnlimited => 'Подпишитесь на неограниченный AI';

  @override
  String get unlockWithAd => 'Разблокировать с помощью рекламы';

  @override
  String get conversationHistoryTitle => 'История разговора';

  @override
  String get noConversationsFound => 'Разговоры не найдены';

  @override
  String get errorLoadingHistory => 'Ошибка загрузки истории';

  @override
  String get deleteConversationTitle => 'Удалить разговор?';

  @override
  String get deleteConversationConfirm => 'Это действие невозможно отменить.';

  @override
  String get deleteConversation => 'Удалить';

  @override
  String get subscription => 'Подписка';

  @override
  String get kipiListProActive => 'КипиЛист Про Актив';

  @override
  String get unlockPremiumTitle =>
      'Разблокируйте неограниченные списки, искусственный интеллект и многое другое';

  @override
  String get loadingSubscription => 'Загрузка подписки...';

  @override
  String get errorLoadingSubscription => 'Ошибка загрузки подписки';

  @override
  String get profileSection => 'Профиль';

  @override
  String get myProfile => 'Мой профиль';

  @override
  String get profileSubtitle => 'Личные предпочтения для AI-помощника';

  @override
  String get customizeAiAssistant => 'Настройте помощника AI';

  @override
  String get assistantHistory => 'История помощника';

  @override
  String get assistantHistorySubtitle => 'Просмотр истории разговоров';

  @override
  String get manageCategories => 'Управление категориями';

  @override
  String get manageCategoriesSubtitle => 'Управление категориями товаров';

  @override
  String get customizeAssistant => 'Настроить';

  @override
  String get assistantName => 'Имя помощника';

  @override
  String get chooseIcon => 'Выберите значок';

  @override
  String get profileSaved => 'Профиль успешно сохранен!';

  @override
  String get errorSavingProfile => 'Ошибка сохранения: null.';

  @override
  String get userProfile => 'Профиль пользователя';

  @override
  String get profileDescription =>
      'Расскажите нам о своих личных предпочтениях, чтобы ИИ-помощник мог предложить персонализированные блюда и рецепты.';

  @override
  String get preferredMarket => 'Предпочтительный рынок';

  @override
  String get preferredMarketHint => 'Например: Супермаркет X';

  @override
  String get dietaryRestrictions => 'Диетические ограничения';

  @override
  String get dietaryRestrictionsHint =>
      'Например: веганский, вегетарианский, безглютеновый.';

  @override
  String get marketsToAvoid => 'Рынки, которых следует избегать';

  @override
  String get marketsToAvoidHint => 'Например: Рынок Y, Рынок Z.';

  @override
  String get observations => 'Примечания';

  @override
  String get observationsHint => 'Другие предпочтения помощнику';

  @override
  String get saveProfile => 'Сохранить профиль';

  @override
  String get everythingReady => 'Все готово!';

  @override
  String get youCompletedList => 'Вы завершили список!';

  @override
  String get selectCheaperAlternative =>
      'Выберите более дешевую альтернативу продукту, чтобы оптимизировать затраты.';

  @override
  String get suggestedItems => 'Предлагаемые товары';

  @override
  String get swapped => 'поменяно местами';

  @override
  String get swap => 'Менять';

  @override
  String get chooseThemeColor => 'Выберите цвет темы';

  @override
  String get manageCategoriesTitle => 'Управление категориями';

  @override
  String get categoryLimitReached =>
      'Ограничение в 10 категорий в бесплатной версии. Обновитесь до Про!';

  @override
  String get deleteCategoryTitle => 'Удалить категорию';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Товары из категории «$category» будут перемещены в «Другие».\nПродолжать?';
  }

  @override
  String get deleteCategory => 'Удалить';

  @override
  String get newCategoryDialog => 'Новая категория';

  @override
  String get editCategoryDialog => 'Изменить категорию';

  @override
  String get categoryName => 'Название категории';

  @override
  String get categoryNameHint => 'Например: Мясо';

  @override
  String get categoryColorLabel => 'Цвет';

  @override
  String get categoryIconLabel => 'Икона';

  @override
  String itemAddedSnack(String name) {
    return '$name добавлено';
  }

  @override
  String get kipiQuickBarHint => 'Что вам нужно купить?';

  @override
  String replaceItem(String item) {
    return 'Заменить $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit — $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Никогда больше не забывайте продуктовый товар';

  @override
  String get onboardingGoalSaveMoney => 'Экономьте деньги';

  @override
  String get onboardingGoalNeverForget => 'Никогда не забывайте предметы';

  @override
  String get onboardingGoalFaster => 'Делайте покупки быстрее';

  @override
  String get onboardingGoalFamily => 'Организуйте семейный шопинг';

  @override
  String get onboardingGoalRecipes => 'Откройте для себя рецепты';

  @override
  String get onboardingGoalPantry => 'Следовая кладовая';

  @override
  String get onboardingCommitmentsTitle => 'Что для вас важно?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Выберите свои цели, чтобы персонализировать KipiList';

  @override
  String get onboardingCommitmentsCta => 'Пойдем!';

  @override
  String get onboardingPersonalizationNameLabel => 'Ваше имя';

  @override
  String get onboardingPersonalizationNameHint => 'Введите свое имя';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Что вы покупаете?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Для кого вы делаете покупки?';

  @override
  String get onboardingCategoryGrocery => 'Продукты питания';

  @override
  String get onboardingCategoryPharmacy => 'Аптека';

  @override
  String get onboardingCategoryRecipes => 'Рецепты';

  @override
  String get onboardingCategoryHome => 'Дом';

  @override
  String get onboardingCategoryPet => 'Домашний питомец';

  @override
  String get onboardingGroupSolo => 'Только я';

  @override
  String get onboardingGroupCouple => 'Пара';

  @override
  String get onboardingGroupFamily => 'Семья';

  @override
  String get onboardingLoadingTitle => 'Готовим свой опыт...';

  @override
  String get onboardingLoadingStep1 => 'Анализ ваших предпочтений...';

  @override
  String get onboardingLoadingStep2 => 'Настройка AI-помощника...';

  @override
  String get onboardingLoadingStep3 => 'Почти готово...';

  @override
  String get onboardingLoadingStat1Label => 'Товары в каталоге';

  @override
  String get onboardingLoadingStat2Label => 'Пользователи помогли';

  @override
  String get onboardingLoadingStat3Label => 'Сэкономлено минут';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, экономь в каждой поездке!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, никогда не забывай ни одной вещи!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, делайте покупки вдвое быстрее!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, организуйте семейный шоппинг!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, открывай для себя новые рецепты!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, отслеживай свою кладовую идеально!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Экономьте в каждой поездке!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Никогда не забывайте вещь!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'Делайте покупки в два раза быстрее!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Организуйте семейный шоппинг!';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'Откройте для себя новые рецепты!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Отслеживайте свою кладовую идеально!';

  @override
  String paywallPricePerDay(String price) {
    return 'Всего $price/день — меньше, чем чашка кофе';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Пропустить сейчас';

  @override
  String get paywallTestimonial =>
      'ИИ организует мои покупки за считанные секунды. Я экономлю 20 минут за поездку.';

  @override
  String get paywallTestimonialAuthor => 'Энн С.';

  @override
  String get paywallTrialDisclaimer =>
      'Отмена в любое время · Плата не взимается до окончания пробного периода.';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Привет, $name! Какой $category вам нужен?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Какой $category вам нужен?';
  }

  @override
  String get onboardingAiDemoYes => 'Да!';

  @override
  String get onboardingAiDemoReaction => 'Хороший!';

  @override
  String get onboardingAiDemoChange => 'Изменить элемент';

  @override
  String get onboardingAiDemoOffer => 'Попробуйте написать что-нибудь другое!';

  @override
  String get onboardingAiDemoContinue => 'Продолжать';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Ваш список покупок теперь с искусственным интеллектом';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Посмотрите, как Kipi составляет полный список за считанные секунды.';

  @override
  String get onboardingAiDemoSlideCta => 'Я хочу этого! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Устраиваю шашлык 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'Готовый! Вот все, что вам нужно:';

  @override
  String get onboardingAiDemoSlideDone => 'Полный список за секунды ✨';

  @override
  String get onboardingPainTitle => 'Что вас больше всего расстраивает?';

  @override
  String get onboardingPainSubtitle => 'Будьте честны — мы исправим каждое';

  @override
  String get onboardingPainCta => 'Да, исправьте это для меня →';

  @override
  String get onboardingPainForget => 'Я забываю товары в магазине';

  @override
  String get onboardingPainFamily => 'Моя семья никогда не видит список';

  @override
  String get onboardingPainOverspend => 'Я всегда превышаю бюджет';

  @override
  String get onboardingPainRepeat =>
      'Одной поездки никогда не бывает достаточно';

  @override
  String get aiWelcomeContent =>
      'Привет! 👋 Я **Кипи**, ваш личный помощник по покупкам и рецептам!\n\nЯ здесь, чтобы помочь вам:\n🛒 **Автоматически организуйте** свои покупки по категориям.\n💰 **Отслеживайте** свой бюджет и давайте советы по экономии денег.\n🍲 **Предлагайте** вкусные рецепты из того, что у вас уже есть.\n\nЧем я могу помочь вам сегодня? Вы можете начать с создания своего первого списка!';

  @override
  String get aiWelcomeSuggestCreateList => 'Создать мой первый список';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Кипи, помоги мне составить мой первый список покупок.';

  @override
  String get aiWelcomeSuggestSave => 'Как сэкономить деньги?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Кипи, как ты можешь помочь мне сэкономить на продуктах?';

  @override
  String get suggestionMilk => 'Молоко';

  @override
  String get suggestionBread => 'Хлеб';

  @override
  String get suggestionEggs => 'Яйца';

  @override
  String get suggestionCoffee => 'Кофе';

  @override
  String get suggestionRice => 'Рис';

  @override
  String get suggestionFruits => 'Фрукты';

  @override
  String get recipeIngredientSingular => '1 ингредиент';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count ингредиентов';
  }

  @override
  String get pantryAvailabilityAll => 'Все готово!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return '$availableCount/$totalCount в кладовой';
  }

  @override
  String onboardingProgress(int current, int total) {
    return 'Шаг $current из $total';
  }

  @override
  String get onboardingDemoHeadline =>
      'Расскажите нам, что вы планируете. Кипи составляет список.';

  @override
  String get onboardingDemoSubtitle =>
      'Организуйте предметы за считанные секунды.';

  @override
  String get onboardingPersonalizationEffect =>
      'Это помогает Kipi предлагать более подходящие товары и количества.';

  @override
  String get onboardingPersonalizeWithName => 'Персонализация с моим именем';

  @override
  String get onboardingCreateFirstList => 'Создать мой первый список';

  @override
  String get onboardingPromptWeekly =>
      'Планируйте свои еженедельные предметы первой необходимости';

  @override
  String get onboardingPromptEvent => 'Я готовлю что-то особенное';

  @override
  String get onboardingPromptEssentials => 'Предложите мне самое необходимое';

  @override
  String get onboardingFallbackGrocery =>
      '🍚 Рис|🫘 Фасоль|🥛 Молоко|🥚 Яйца|🍞 Хлеб|🍎 Фрукты';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 Лейкопластыри|🌡️ Термометр|🧴 Антисептик|😷 Маски для лица|🧼 Дезинфицирующее средство для рук';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 Помидоры|🧅 Лук|🧄 Чеснок|🥚 Яйца|🧀 Сыр|🌿 Свежая зелень';

  @override
  String get onboardingFallbackHome =>
      '🧻 Бумажные полотенца|🧽 Губки|🧴 Моющее средство|🗑️ Мешки для мусора|🧹 Тряпки для протирки';

  @override
  String get onboardingFallbackPet =>
      '🥣 Корм ​​для домашних животных|🦴 Лакомства|🧼 Шампунь для домашних животных|🧸 Игрушки|🧻 Мешки для мусора';

  @override
  String get onboardingListSaveFailed =>
      'Я подготовил предметы, но не смог сохранить список. Попробуйте еще раз сохранить его в приложении.';

  @override
  String onboardingListCreated(int count) {
    return 'Ваш список готов: для вас организовано $count элементов.';
  }

  @override
  String get onboardingContinueToOffer => 'Продолжать';

  @override
  String onboardingPaywallListReady(int count) {
    return 'Ваш первый список готов · $count элементов';
  }

  @override
  String get paywallContinueFree =>
      'Продолжить использование бесплатной версии';

  @override
  String get paywallPurchasePending =>
      'Ваш платеж ожидает одобрения. Доступ будет разблокирован автоматически после подтверждения.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return 'Сегодня: бесплатно. Затем $price/год через $days дней. Отменить в любое время.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return 'Сегодня: бесплатно. Затем $price/месяц через $days дней. Отменить в любое время.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price/год. Отменить в любое время.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/месяц. Отменить в любое время.';
  }

  @override
  String get obHookTitle => 'Умный шопинг начинается здесь';

  @override
  String get obHookSubtitle =>
      'Списки с искусственным интеллектом, которые экономят ваше время и деньги при каждой поездке.';

  @override
  String get obHookSocial => 'Нам доверяют тысячи покупателей по всему миру';

  @override
  String get obHookCta => 'Начать';

  @override
  String get obQuizHouseholdTitle => 'Для кого вы делаете покупки?';

  @override
  String get obQuizHouseholdSolo => 'Только я';

  @override
  String get obQuizHouseholdCouple => 'Я и мой партнер';

  @override
  String get obQuizHouseholdFamilySmall => 'Семья из 3–4 человек';

  @override
  String get obQuizHouseholdFamilyLarge => 'Семья из 5+ человек';

  @override
  String get obQuizFrequencyTitle => 'Как часто вы покупаете продукты?';

  @override
  String get obQuizFrequencyDaily => 'Почти каждый день';

  @override
  String get obQuizFrequencyWeekly => 'Раз в неделю';

  @override
  String get obQuizFrequencyBiweekly => 'Каждые две недели';

  @override
  String get obQuizFrequencyMonthly => 'Большой ежемесячный улов';

  @override
  String get obQuizPainTitle => 'Что вас больше всего расстраивает в покупках?';

  @override
  String get obQuizPainForget => 'Я всегда забываю вещи';

  @override
  String get obQuizPainOverspend => 'Я трачу больше, чем планировалось';

  @override
  String get obQuizPainWaste => 'Еда уходит в отходы дома';

  @override
  String get obQuizPainTime => 'Это занимает слишком много времени';

  @override
  String get obQuizSavingsTitle => 'Сколько вы хотите сэкономить ежемесячно?';

  @override
  String get obQuizSavingsSmall => 'Немного — каждый бит на счету';

  @override
  String get obQuizSavingsMedium => 'Около 10% от моего счета за продукты';

  @override
  String get obQuizSavingsLarge => 'Как можно больше';

  @override
  String get obQuizMethodTitle => 'Как вы составляете списки покупок сегодня?';

  @override
  String get obQuizMethodPaper => 'Ручка и бумага';

  @override
  String get obQuizMethodNotes => 'Приложение «Заметки»';

  @override
  String get obQuizMethodMemory => 'Я держу это в голове';

  @override
  String get obQuizMethodNone => 'Я не составляю списки';

  @override
  String get obSocialTitle => 'Вы в хорошей компании';

  @override
  String get obSocialSubtitle =>
      'Такие покупатели, как вы, уже экономят с KipiList';

  @override
  String get obSocialQuote1 =>
      'Я больше никогда ничего не забываю. ИИ строит мой список за считанные секунды.';

  @override
  String get obSocialQuote2 =>
      'Мы заметно урезали счет за продукты в первый месяц.';

  @override
  String get obSocialQuote3 =>
      'Передача списка моему партнеру положила конец нашему шоппинг-хаосу.';

  @override
  String get obLoadingTitle => 'Создание персонализированного плана...';

  @override
  String get obLoadingStepProfile => 'Адаптация для вашей семьи';

  @override
  String get obLoadingStepHabits => 'Настройка на вашу рутину покупок';

  @override
  String get obLoadingStepSavings => 'Оптимизация стратегии сбережений';

  @override
  String get obLoadingStepLists => 'Подготовка интеллектуальных списков';

  @override
  String get obRevealTitle => 'Ваш план готов!';

  @override
  String get obRevealSubtitle => 'Вот как KipiList будет работать для вас';

  @override
  String get obRevealSavingsCaption =>
      'Прогнозируемая экономия с помощью KipiList';

  @override
  String obRevealMonth(int n) {
    return 'Месяц $n';
  }

  @override
  String get obRevealFeatureAi => 'ИИ создает и упорядочивает ваши списки';

  @override
  String get obRevealFeatureBudget =>
      'Расходы, отслеживаемые в соответствии с вашей целью';

  @override
  String get obRevealFeaturePantry =>
      'Отслеживание кладовой сокращает пищевые отходы';

  @override
  String get obRevealFeatureShare =>
      'Делитесь информацией с семьей в режиме реального времени';

  @override
  String get obPaywallTitle => 'Разблокируйте свой план';

  @override
  String get obPaywallRetry => 'Повторить попытку';

  @override
  String get obLoginTitle => 'Сохраните свой план';

  @override
  String get obLoginSubtitle =>
      'Войдите в систему, чтобы ваши списки синхронизировались на разных устройствах';

  @override
  String get obLoginGoogle => 'Продолжить с помощью Google';

  @override
  String get obLoginApple => 'Продолжить с Apple';

  @override
  String get obLoginSkip => 'Не сейчас';

  @override
  String get obLoginError =>
      'Не удалось войти. Повторите попытку или пропустите.';

  @override
  String get searchMessages => 'Поиск сообщений...';

  @override
  String get deletedList => 'Удаленный список';

  @override
  String get openConversation => 'Открытый разговор';

  @override
  String get userRole => 'Ты';

  @override
  String get assistantRole => 'Ассистент';

  @override
  String get agentActionsRunning => 'Выполнение действий...';

  @override
  String get agentActionsFailed => 'Не удалось выполнить действия.';

  @override
  String get agentActionsPremium => 'Для действий требуется Премиум';

  @override
  String agentActionsCompleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count actions completed',
      one: '1 action completed',
    );
    return '$_temp0';
  }

  @override
  String get undoChanges => 'Отменить изменения';

  @override
  String premiumStepDescription(String description) {
    return '$description (Премиум)';
  }

  @override
  String get itemAddedToList => 'Товар добавлен в список.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return 'Предыдущее состояние: $quantity $unit [$category]$price';
  }

  @override
  String itemsAffectedByAction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items affected by the action.',
      one: '1 item affected by the action.',
    );
    return '$_temp0';
  }

  @override
  String get premiumActionsPrompt =>
      'Подпишитесь на Премиум, чтобы разблокировать автоматические действия.';

  @override
  String get viewPlans => 'Посмотреть планы';

  @override
  String get artifactSynced => 'Синхронизировано';

  @override
  String get artifactBudgetLabel => 'Бюджет:';

  @override
  String get totalEstimatedLabel => 'Расчетная сумма';

  @override
  String get quickActionPantry => 'Посмотреть кладовую';

  @override
  String get quickActionAi => 'Пообщаться с Кипи';

  @override
  String aiApiError(int statusCode) {
    return 'Служба AI вернула ошибку ($statusCode).';
  }

  @override
  String get aiTimeoutError =>
      'Запрос занял слишком много времени. Пожалуйста, попробуйте еще раз.';

  @override
  String get aiConnectionError =>
      'Не удалось подключиться к службе AI. Проверьте свое соединение.';

  @override
  String get aiEmptyResponseError => 'Служба AI вернула пустой ответ.';

  @override
  String get aiInvalidResponseError => 'Служба AI вернула неверный ответ.';

  @override
  String get categoryFruits => 'Фрукты';

  @override
  String get categoryCleaning => 'Очистка';

  @override
  String get categoryBeverages => 'Напитки';

  @override
  String get categoryBakery => 'Пекарня';

  @override
  String get categoryMeat => 'Мясо';

  @override
  String get categoryDairy => 'Молочный';

  @override
  String get categoryVegetables => 'Овощи';

  @override
  String get categoryGrains => 'Зерно и крупы';

  @override
  String get categoryHygiene => 'Личная гигиена';

  @override
  String get categoryFrozen => 'Замороженные продукты';

  @override
  String get categoryCanned => 'Консервы';

  @override
  String get categorySeasonings => 'Приправы';

  @override
  String get categorySweets => 'Сладости и десерты';

  @override
  String get categoryAlcohol => 'Алкогольные напитки';

  @override
  String get categoryFish => 'Рыба';

  @override
  String get categoryColdCuts => 'Колбасное ассорти';

  @override
  String get categoryUtilities => 'Хозяйственные товары';

  @override
  String get categoryPet => 'Товары для домашних животных';

  @override
  String get categoryBaby => 'Малыш';

  @override
  String get categoryOthers => 'Другой';

  @override
  String chatEmptyGreeting(String name) {
    return 'Привет $name, я Кипи 👋';
  }

  @override
  String get chatEmptyGreetingNoName => 'Привет, я Кипи 👋';

  @override
  String get chatEmptyPitch =>
      'Я составляю списки, предлагаю рецепты и нахожу, где сохранить. С чего начать?';

  @override
  String get aiWelcomeSuggestBarbecue => 'Спланируйте барбекю';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'Кипи, я устраиваю барбекю — помоги мне составить список покупок.';

  @override
  String get aiRateLimitError =>
      'Слишком много сообщений за короткое время. Подождите несколько секунд и повторите попытку.';

  @override
  String get chatHistoryErrorTitle => 'Не удалось загрузить этот разговор.';

  @override
  String get chatHistoryErrorBody =>
      'Что-то пошло не так с нашей стороны. Нажмите «Повторить», чтобы повторить попытку.';

  @override
  String get chatHistoryOfflineTitle => 'Вы оффлайн';

  @override
  String get chatHistoryOfflineBody =>
      'Проверьте подключение к Интернету и повторите попытку.';

  @override
  String get aiGeneratingResponse => 'Создание ответа…';

  @override
  String get errorUnexpected =>
      'Произошло нечто неожиданное. Пожалуйста, попробуйте еще раз.';

  @override
  String get aiAssistantTooltip => 'Открыть AI-помощник';

  @override
  String get searchItems => 'Поиск предметов';

  @override
  String get onboardingHookContinue => 'Начать';

  @override
  String get onboardingHookItem1 => 'Жареная курица';

  @override
  String get onboardingHookItem2 => 'сыр моцарелла';

  @override
  String get onboardingHookItem3 => 'Помидоры черри';

  @override
  String get checkItemTooltip => 'Проверить элемент';
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
  String get navChat => 'Чат';

  @override
  String get navRecipes => 'Рецепты';

  @override
  String get navLists => 'Списки';

  @override
  String get navMealPlanner => 'Меню';

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
  String get next => 'Следующий';

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
  String get help => 'Помощь';

  @override
  String get helpListTitle => 'Использование вашего списка';

  @override
  String get helpListAddItems =>
      'Добавляйте товары с помощью кнопки + внизу или воспользуйтесь поиском для просмотра товаров.';

  @override
  String get helpListAi =>
      'Попросите ИИ-помощника создать, систематизировать или дополнить ваш список — просто коснитесь значка с блестками.';

  @override
  String get helpListShoppingMode =>
      'Режим покупок скрывает купленные товары, чтобы вы могли сосредоточиться на том, что осталось';

  @override
  String get helpListOrganize =>
      'Перетаскивайте элементы, чтобы изменить их порядок, проведите пальцем, чтобы отметить их как купленные, или используйте фильтры и сортировку.';

  @override
  String get helpListShare =>
      'Поделитесь своим списком с семьей или экспортируйте его в формате PDF, Excel или в виде обычного текста.';

  @override
  String get import => 'Импортировать';

  @override
  String get rename => 'Переименовать';

  @override
  String get upgrade => 'Обновить';

  @override
  String get clear => 'Очистить';

  @override
  String get clearPurchasedTitle => 'Очистить купленные товары';

  @override
  String get clearPurchasedConfirmMessage =>
      'Удалить все купленные товары из этого списка? Это невозможно отменить.';

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
  String get errorCreateList =>
      'Не удалось создать список. Проверьте подключение и повторите попытку.';

  @override
  String get errorShareCode =>
      'Ошибка создания общего кода. Проверьте подключение и повторите попытку.';

  @override
  String get errorQuickAdd =>
      'Не удалось добавить товар. Проверьте подключение и повторите попытку.';

  @override
  String get errorLoadList =>
      'Не удалось загрузить ваши списки. Пожалуйста, создайте новый список, чтобы начать.';

  @override
  String get restoreError => 'Ошибка восстановления покупок. Попробуйте снова.';

  @override
  String get loading => 'Загрузка...';

  @override
  String get fieldRequired => 'Обязательное поле';

  @override
  String get addedFeedback => 'Добавлено!';

  @override
  String get profile => 'Профиль';

  @override
  String get exitShoppingMode => 'Выйти из режима покупок';

  @override
  String get exit => 'Выход';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Выбрано $count',
      many: 'Выбрано $count',
      few: 'Выбрано $count',
      one: 'other $count',
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
  String pantryDeficitCount(int count, String unit) {
    return 'Отсутствует $count$unit';
  }

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
  String get scanProductTitle => 'Сканировать продукт';

  @override
  String get positionBarcodeCenter => 'Расположите штрих-код в центре';

  @override
  String get product => 'Продукт';

  @override
  String get settingsAppBar => 'Настройки';

  @override
  String get preferencesSection => 'Предпочтения';

  @override
  String get aiSection => 'ИИ-помощник';

  @override
  String get language => 'Язык';

  @override
  String get languagePortuguese => 'Португальский (Бразилия)';

  @override
  String get languageEnglish => 'Английский';

  @override
  String get languageSystem => 'Системный';

  @override
  String get chooseLanguage => 'Выберите язык';

  @override
  String get searchLanguage => 'Язык поиска...';

  @override
  String get currency => 'Валюта';

  @override
  String get chooseCurrency => 'Выберите валюту';

  @override
  String get searchCurrency => 'Поиск валюты...';

  @override
  String get appearance => 'Внешний вид';

  @override
  String get themeMode => 'Тематический режим';

  @override
  String get chooseThemeMode => 'Выберите режим темы';

  @override
  String get light => 'Светлая';

  @override
  String get system => 'Системная';

  @override
  String get dark => 'Тёмная';

  @override
  String get themeColor => 'Цвет темы';

  @override
  String get dynamicColors => 'Динамические цвета';

  @override
  String get dynamicColorsSubtitle => 'Используйте цвета на основе ваших обоев';

  @override
  String get dynamicColorsEnabledWarning =>
      'Отключите динамические цвета, чтобы цвет темы вступил в силу.';

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
  String get myAchievements => 'Мои достижения';

  @override
  String get itemsPurchased => 'Купленные товары';

  @override
  String get totalSavings => 'Общая экономия';

  @override
  String get currentStreak => 'Текущая серия';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дней',
      one: '$count дней',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Разблокированные значки';

  @override
  String get badgeBeginner => 'Новичок';

  @override
  String get badgeOrganized => 'Организованный';

  @override
  String get badgeSavingMaster => 'Спасение Мастера';

  @override
  String get badgeSuperPlanner => 'Супер планировщик';

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
  String get budgetGoalInvalidAmount => 'Введите значение больше нуля';

  @override
  String get budgetPartialEstimateHint => '~ Включает частичную оценку цен';

  @override
  String get budgetGoalSaved => 'Цель бюджета сохранена.';

  @override
  String get budgetGoalRemoved => 'Цель бюджета удалена.';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased из $total элементов';
  }

  @override
  String progressBudget(String amount) {
    return 'Бюджет: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Итого: $amount';
  }

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
  String get keepAdding => 'Продолжайте добавлять';

  @override
  String get keepAddingSubtitle =>
      'Держите лист открытым, чтобы добавить несколько элементов.';

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
  String get newChat => 'Новый чат';

  @override
  String get newChatConfirmTitle => 'Новый разговор';

  @override
  String get newChatConfirmMessage =>
      'Начать новый разговор? Ваш текущий разговор будет потерян.';

  @override
  String get noHistory => 'Нет истории чата';

  @override
  String get deleteSession => 'Удалить чат';

  @override
  String get deleteSessionConfirm =>
      'Вы уверены, что хотите удалить этот чат? Сообщения будут безвозвратно потеряны.';

  @override
  String get clearHistory => 'Очистить историю';

  @override
  String get clearHistoryConfirm => 'Удалить все сообщения в этом сеансе?';

  @override
  String get chatHint => 'Введите ваше сообщение...';

  @override
  String get chatHintBlocked => 'Разблокируйте AI для общения';

  @override
  String get chatEmptySubtitle =>
      'Чтобы начать, попросите предложения по предметам, рецепты или советы по экономии.';

  @override
  String get chatEmptyTitle => 'Ваш чат пуст';

  @override
  String chatError(String error) {
    return 'Ошибка загрузки чата: $error';
  }

  @override
  String get goodResponse => 'Хороший ответ';

  @override
  String get badResponse => 'Плохой ответ';

  @override
  String get scrollToBottom => 'Прокрутить вниз';

  @override
  String get somethingWentWrong => 'Что-то пошло не так';

  @override
  String get editMessage => 'Редактировать сообщение';

  @override
  String get searchConversations => 'Поиск бесед';

  @override
  String get dateGroupToday => 'Сегодня';

  @override
  String get dateGroupYesterday => 'Вчера';

  @override
  String get dateGroupPrevious7Days => 'Предыдущие 7 дней';

  @override
  String get dateGroupOlder => 'Старше';

  @override
  String get aiAssistantTitle => 'ИИ-помощник';

  @override
  String get closeSheet => 'Закрывать';

  @override
  String get scanBarcodeTitle => 'Сканировать штрих-код';

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
  String get aiLimitAlmostReached => 'Почти закончились сообщения ИИ';

  @override
  String get unlockAi => 'Разблокируйте неограниченный ИИ';

  @override
  String get aiTeaserFallback =>
      'Подпишитесь на Премиум, чтобы получить полный ответ и неограниченное количество советов от искусственного интеллекта по покупкам...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Действия ИИ остались в этом месяце — обновление без ограничений';
  }

  @override
  String get aiUsageExhausted =>
      'Достигнут месячный лимит AI. Обновите до Pro без ограничений →';

  @override
  String get undo => 'Отменить';

  @override
  String get newChatStarted => 'Начался новый чат';

  @override
  String get quickAddToList => 'Добавить в список';

  @override
  String get aiCapabilitiesTitle => 'Что я могу сделать?';

  @override
  String get aiCapabilitiesLists => 'Списки покупок';

  @override
  String get aiCapabilitiesBudget => 'Бюджет и цены';

  @override
  String get aiCapabilitiesRecipes => 'Рецепты и меню';

  @override
  String get aiCapabilitiesOrganize => 'Организация';

  @override
  String get marketModeDescription => 'Отметьте товары во время покупок';

  @override
  String get kipiListTitle => 'КипиЛист';

  @override
  String get loginPrompt => 'Войдите, чтобы\nразблокировать премиум-функции';

  @override
  String get signInGoogle => 'Войти через Google';

  @override
  String get signInApple => 'Войти через Apple';

  @override
  String get continueAsGuest => 'Продолжить как гость';

  @override
  String get onboardingWelcomeTitle => 'Добро пожаловать в KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Самый разумный способ организовать покупки и сэкономить деньги.';

  @override
  String get onboardingSetupTitle => 'Персонализируйте свой опыт';

  @override
  String get onboardingSetupDesc =>
      'Выберите, как вы хотите, чтобы KipiList выглядела и работала для вас.';

  @override
  String get onboardingLoginTitle => 'Сохраняйте все в облаке';

  @override
  String get onboardingLoginDesc =>
      'Ваши данные синхронизируются на всех ваших устройствах';

  @override
  String get onboardingShareTitle => 'Поделитесь с теми, кого вы любите';

  @override
  String get onboardingShareDesc =>
      'Синхронизируйте списки с семьей и друзьями в режиме реального времени';

  @override
  String get onboardingPremiumTitle => 'Разблокируйте все функции';

  @override
  String get onboardingPremiumSubtitle =>
      'Получите максимальную пользу от своих списков покупок';

  @override
  String get onboardingAnnualBadge => 'Лучшее соотношение цены и качества';

  @override
  String get onboardingMonthlyLabel => 'Ежемесячно';

  @override
  String get onboardingAnnualLabel => 'Ежегодный';

  @override
  String get onboardingViewAllPlans => 'Посмотреть все планы';

  @override
  String get onboardingSubscribeCta => 'Подписаться';

  @override
  String get onboardingCancelAnytime =>
      'Отменить в любое время. Никаких обязательств.';

  @override
  String get onboardingContinueAsGuest => 'Продолжить в качестве гостя';

  @override
  String get onboardingRestore => 'Восстановить';

  @override
  String get onboardingRestoreDesc =>
      'Уже есть подписка? Нажмите здесь, чтобы восстановить его.';

  @override
  String get onboardingMaybeLater => 'Может быть, позже';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Привет, $name, организуй свои покупки правильно.';
  }

  @override
  String get onboardingSlide1Title => 'Умные списки покупок';

  @override
  String get onboardingSlide1Body =>
      'Создавайте и делитесь списками мгновенно. Kipi добавляет предметы автоматически в зависимости от ваших привычек.';

  @override
  String get onboardingSlide2Title => 'Знакомьтесь, Кипи';

  @override
  String get onboardingSlide2Body =>
      'Спрашивайте что угодно — создавайте списки, находите рецепты, отслеживайте свою кладовую, планируйте свою неделю.';

  @override
  String get onboardingSlide3Title => 'Планирование кладовой и еды';

  @override
  String get onboardingSlide3Body =>
      'Отслеживайте, что у вас есть, планируйте питание и автоматически создавайте списки покупок.';

  @override
  String get onboardingExit => 'Выход';

  @override
  String get onboardingPersonalizationTitle => 'Давай познакомимся';

  @override
  String get onboardingPersonalizationDesc =>
      'Мы будем использовать это, чтобы персонализировать ваши предложения и сделать покупки более разумными.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Какая твоя любимая еда?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'например Пицца, Суши, Лазанья...';

  @override
  String get onboardingPersonalizationCta => 'Продолжать';

  @override
  String get onboardingPersonalizationSkip => 'Пропустить сейчас';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Расскажите нам о своей любимой еде, чтобы продолжить.';

  @override
  String get settingsDefaultScreen => 'Главный экран по умолчанию';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Выбирайте между списком покупок или чатом с искусственным интеллектом.';

  @override
  String get settingsScreenList => 'Список покупок';

  @override
  String get settingsScreenChat => 'AI-чат';

  @override
  String loginError(String error) {
    return 'Ошибка входа: $error';
  }

  @override
  String get paywallTitle => 'КипиЛист Премиум';

  @override
  String get paywallLoadingError =>
      'Ошибка при загрузке предложений. Попробуйте еще раз.';

  @override
  String get paywallPurchaseError =>
      'Не удалось завершить покупку. Попробуйте еще раз.';

  @override
  String get paywallRestoreError =>
      'Активная подписка для восстановления не найдена.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ДНЕЙ БЕСПЛАТНО';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count НЕДЕЛИ БЕСПЛАТНО',
      one: '$count НЕДЕЛЯ БЕСПЛАТНО',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count МЕСЯЦЕВ БЕСПЛАТНО',
      one: '$count МЕСЯЦ БЕСПЛАТНО',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Попробуйте бесплатно!';

  @override
  String get paywallTrialSubtitle =>
      'Отменить в любое время. Сегодня никаких обвинений.';

  @override
  String get paywallTrialCta => 'Начать бесплатную пробную версию';

  @override
  String get recipeAddToList => 'Добавить в список покупок';

  @override
  String get recipeAddError =>
      'Не удалось добавить в ваш список. Пожалуйста, попробуйте еще раз.';

  @override
  String get recipeTapToCheck =>
      'Коснитесь ингредиента, чтобы проверять его во время приготовления.';

  @override
  String get recipeIngredientInPantry => 'В кладовой';

  @override
  String get recipeIngredientLowPantry => 'Низко в кладовке';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 other$listName';
  }

  @override
  String get noListSelected => 'Список не выбран. Сначала откройте список.';

  @override
  String get paywallFeaturesTitle => 'Все, что вам нужно:';

  @override
  String get paywallFeatureDescAssistant =>
      'ИИ автоматически организует ваш список';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Создавайте столько списков, сколько вам нужно';

  @override
  String get paywallFeatureDescSharing =>
      'Делайте покупки вместе в режиме реального времени';

  @override
  String get paywallFeatureDescPantry => 'Отслеживайте, что у вас дома';

  @override
  String get paywallFeatureDescBudget => 'Соблюдайте бюджет каждый месяц';

  @override
  String get paywallFeatureUnlimitedLists => 'Неограниченные списки';

  @override
  String get paywallFeatureSmartAI => 'Умный ИИ';

  @override
  String get paywallFeatureExpenseControl => 'Контроль расходов';

  @override
  String get paywallFeatureSharing => 'Совместное использование';

  @override
  String get paywallBeforeAfterTitle => 'ИИ до и после:';

  @override
  String get paywallLabelCommon => 'Общий';

  @override
  String get paywallLabelPro => 'КипиЛист ПРО';

  @override
  String get paywallBeforeItem1 => 'рис';

  @override
  String get paywallBeforeItem2 => 'мыло';

  @override
  String get paywallBeforeItem3 => 'мясо';

  @override
  String get paywallBeforeItem4 => 'хлеб';

  @override
  String get paywallAfterItem1 => 'Зерна';

  @override
  String get paywallAfterItem2 => 'Очистка';

  @override
  String get paywallAfterItem3 => 'Мясо';

  @override
  String get paywallAfterItem4 => 'Пекарня';

  @override
  String get paywallTestimonialsTitle => 'Что говорят наши пользователи:';

  @override
  String get paywallTestimonial1Name => 'Энн С.';

  @override
  String get paywallTestimonial1Text =>
      'ИИ организует мои покупки за считанные секунды. Я экономлю 20 минут на поездке на рынок.';

  @override
  String get paywallTestimonial2Name => 'Чарльз М.';

  @override
  String get paywallTestimonial2Text =>
      'Я больше никогда не забывал ни одного пункта списка. Чат с искусственным интеллектом просто сенсационен!';

  @override
  String get paywallSocialProof => '+2400 семей используют его';

  @override
  String get paywallCtaUnlock => 'Разблокировать ПРО';

  @override
  String get paywallBestValue => 'ЛУЧШАЯ ЦЕНА';

  @override
  String get paywallMostPopular => 'САМЫЕ ПОПУЛЯРНЫЕ';

  @override
  String get paywallProLabel => 'ПРО';

  @override
  String get paywallSafeCheckout => 'Безопасная оплата';

  @override
  String get paywallSelectPlan => 'Выберите свой план:';

  @override
  String paywallSavePercent(int percent) {
    return 'СОХРАНИТЬ $percent%';
  }

  @override
  String paywallPricePerMonth(String price) {
    return 'Всего $price/месяц';
  }

  @override
  String get paywallPackageAnnual => 'Годовой план';

  @override
  String get paywallPackageMonthly => 'Ежемесячный план';

  @override
  String get paywallPackageLifetime => 'Пожизненный доступ';

  @override
  String get paywallCancelAnytime =>
      'Отменить в любое время. Никаких обязательств.';

  @override
  String paywallTrialInCard(int days) {
    return 'Первые $days дней БЕСПЛАТНО';
  }

  @override
  String get paywallSecuredByStore =>
      'Защищено Google Play · Отменить в любое время';

  @override
  String get paywallPolicy => 'политика конфиденциальности';

  @override
  String get paywallTerms => 'Условия эксплуатации';

  @override
  String get paywallRestore => 'Восстановить';

  @override
  String get paywallTimelineToday => 'Сегодня';

  @override
  String get paywallTimelineTodayDesc =>
      'Разблокируйте полный доступ мгновенно';

  @override
  String paywallTimelineDay(int day) {
    return 'День $day';
  }

  @override
  String get paywallTimelineReminderDesc =>
      'Напоминаем вам до окончания пробного периода';

  @override
  String get paywallTimelineChargeDesc =>
      'Ваша подписка начинается — отмените ее в любое время';

  @override
  String get paywallHeroFeatureTitle =>
      'Помощник по покупкам с искусственным интеллектом';

  @override
  String get paywallHeroFeatureDesc =>
      'Произнесите или вставьте целый список — ИИ сортирует, классифицирует и составляет бюджет за считанные секунды.';

  @override
  String get paywallBasedOnAnswers =>
      'Персонализировано на основе ваших ответов';

  @override
  String get paywallHeroHeadline => 'Kipi AI всегда рядом с вами';

  @override
  String get paywallHeroSubtitle =>
      'Добавляйте элементы, организуйте списки и экономьте время с искусственным интеллектом в вашем кармане.';

  @override
  String get paywallBenefit1Desc =>
      'Добавляет, систематизирует и предлагает элементы 24 часа в сутки, 7 дней в неделю.';

  @override
  String get paywallBenefit2Desc => 'Нет ограничения на 3 списка';

  @override
  String get paywallBenefit3Desc => 'Отслеживание расходов и семейные списки';

  @override
  String get paywallPackageMonthlyDesc => 'Полная гибкость';

  @override
  String get paywallWelcomeOfferBadge => '🎁 Приветственное предложение';

  @override
  String get paywallFreeTier => 'Бесплатно: 3 списка';

  @override
  String get paywallProTier => 'Плюсы: без ограничений';

  @override
  String get firstItemAddedSnackbar =>
      'Добавлен первый товар! Отличное начало 🛒';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Начните бесплатно — $days дней';
  }

  @override
  String get premiumUpgrade => 'Обновите, чтобы разблокировать';

  @override
  String get itemRemoved => 'Товар удалён';

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
  String get pantryItemAdded => 'Товар добавлен';

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
      'Говорите естественно, чтобы управлять списком!\n\nПримеры:\n• \'Добавь хлеб, сыр и ветчину\'\n• \'Удали стиральный порошок\'\n• \'Смени тему на синюю\'\n\nЭто эксклюзивная функция KipiList Premium.';

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
      'Ваш отзыв получен и помогает нам улучшать KipiList для всех.';

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
  String get aiEnergy => 'ИИ Энергия';

  @override
  String get searchInConversation => 'Искать в разговоре...';

  @override
  String get noMessagesFound => 'Сообщений не найдено';

  @override
  String get suggestedQuestions => 'Предлагаемые вопросы:';

  @override
  String get shoppingAssistant => 'Помощник по покупкам';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased из $total куплено';
  }

  @override
  String get estimatedCost => 'Оцененный';

  @override
  String get viewItems => 'Посмотреть элементы';

  @override
  String get noItemsInList => 'В списке нет элементов';

  @override
  String get longHistoryWarning =>
      'Длинная история: помощник фокусируется на последних сообщениях для повышения производительности.';

  @override
  String get listening => 'Слушаю...';

  @override
  String get addDirectToList => 'Добавить прямо в список';

  @override
  String get unlockFullResponse => 'Разблокировать полный ответ';

  @override
  String get switchList => 'Список переключателей';

  @override
  String get marketMode => 'Рыночный режим';

  @override
  String get backToChat => 'Вернуться в чат';

  @override
  String get finishShopping => 'Завершить покупки';

  @override
  String get welcomeAiAssistant => 'Добро пожаловать в AI Assistant';

  @override
  String get createListToStartAi =>
      'Создайте список покупок, чтобы начать использовать умный чат.';

  @override
  String get howCanIHelp => 'Как я могу помочь?';

  @override
  String get chatSubtitleShort =>
      'Спрашивайте о ценах, рецептах, организации...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total куплено';
  }

  @override
  String get quickReplies => 'Быстрые ответы:';

  @override
  String get voiceProFeature =>
      'Расширенные голосовые команды — Pro. Включение базовой диктовки...';

  @override
  String get viewPro => 'Посмотреть Про';

  @override
  String get errorLoadingChat => 'Упс! Что-то пошло не так при загрузке чата.';

  @override
  String get errorLoadingChatSubtitle =>
      'Проверьте подключение или повторите попытку позже.';

  @override
  String get errorOscillation =>
      'Это может произойти из-за колебаний сети или временной недоступности. Пожалуйста, попробуйте еще раз.';

  @override
  String get activeListening => 'Активное слушание';

  @override
  String get whatToDoWithItem => 'Что бы вы хотели сделать с этим предметом?';

  @override
  String get viewDetails => 'Посмотреть детали';

  @override
  String get openMenu => 'Открыть меню';

  @override
  String get viewRecipe => 'Посмотреть рецепт';

  @override
  String get recipeCreated => 'Рецепт создан!';

  @override
  String get editRecipe => 'Редактировать';

  @override
  String get deleteRecipe => 'Удалить';

  @override
  String get deleteRecipeConfirm => 'Удалить этот рецепт?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Вы уверены, что хотите удалить «$recipeName»? Это действие невозможно отменить.';
  }

  @override
  String get ingredients => 'Ингредиенты';

  @override
  String get instructions => 'Инструкции';

  @override
  String get prepTime => 'Время подготовки';

  @override
  String get recipeSaved => 'Рецепт сохранен!';

  @override
  String get noRecipesSaved => 'Рецепты не сохранены';

  @override
  String get noRecipesSavedHint =>
      'Создайте свой первый индивидуальный рецепт, нажав кнопку ниже.';

  @override
  String get myRecipes => 'Мои рецепты';

  @override
  String get newRecipe => 'Новый рецепт';

  @override
  String get loadingRecipes => 'Загружаю ваши рецепты...';

  @override
  String get errorLoadingRecipes => 'Ошибка загрузки рецептов.';

  @override
  String get addIngredient => 'Добавить ингредиент';

  @override
  String get saveRecipe => 'Сохранять';

  @override
  String get recipeName => 'Название рецепта';

  @override
  String get shortDescription => 'Краткое описание';

  @override
  String get prepTimeMinutes => 'Время приготовления (минуты)';

  @override
  String get recipeYieldServings => 'Доходность порций';

  @override
  String get recipeManualTotalCost => 'Общая стоимость вручную';

  @override
  String get recipeManualTotalCostHint =>
      'Оставьте пустым, чтобы оценить цены на ингредиенты.';

  @override
  String get recipeEstimatedTotalCost => 'Ориентировочная общая стоимость';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / порция';
  }

  @override
  String recipeServesCount(int count) {
    return 'Обслуживает $count';
  }

  @override
  String get recipeEstimatePartial =>
      'Частичная оценка на основе ингредиентов с ценой.';

  @override
  String get instructionsHint => 'Введите один шаг в строке...';

  @override
  String get addPhoto => 'Добавить фото';

  @override
  String get imageUrlPlaceholder => 'Или вставьте URL-адрес изображения';

  @override
  String get tags => 'Теги';

  @override
  String get recipeTags => 'Теги рецептов';

  @override
  String get suggestedTags => 'Предложенный';

  @override
  String get searchRecipes => 'Поиск рецептов...';

  @override
  String get filterByTag => 'Фильтровать по тегу';

  @override
  String get allTags => 'Все';

  @override
  String get recipeDeleted => 'Рецепт удален.';

  @override
  String get saveChanges => 'Сохранить изменения';

  @override
  String get editRecipeTitle => 'Редактировать рецепт';

  @override
  String get newRecipeTitle => 'Новый рецепт';

  @override
  String get requiredField => 'Необходимый';

  @override
  String get chooseImageSource => 'Выберите источник изображения';

  @override
  String get gallery => 'Галерея';

  @override
  String get enterUrl => 'Введите URL';

  @override
  String get recipeImage => 'Изображение рецепта';

  @override
  String get removeImage => 'Удалить изображение';

  @override
  String get mealPlannerTitle => 'Планировщик еды';

  @override
  String get mealPlannerViewMonthly => 'Просмотр за месяц';

  @override
  String get mealPlannerViewWeekly => 'Еженедельный просмотр';

  @override
  String get mealPlannerNoMeals => 'Питание не запланировано';

  @override
  String get mealPlannerNoMealsHint => 'Нажмите день, чтобы добавить блюдо';

  @override
  String get mealPlannerLoading => 'Загрузка плана питания...';

  @override
  String get mealPlannerError => 'Ошибка загрузки плана питания.';

  @override
  String get mealPlannerAddMeal => 'Добавить еду';

  @override
  String get mealPlannerEditMeal => 'Редактировать еду';

  @override
  String get mealPlannerDeleteMeal => 'Удалить еду';

  @override
  String get mealPlannerMealDeleted => 'Еда удалена';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count порций',
      one: '$count порций',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Порции';

  @override
  String get mealPlannerNoteLabel => 'Примечание (необязательно)';

  @override
  String get mealPlannerSelectRecipe => 'Выберите рецепт';

  @override
  String get mealPlannerSearchRecipes => 'Поиск рецептов...';

  @override
  String get mealPlannerNoRecipesFound => 'Рецептов не найдено';

  @override
  String get mealPlannerNoRecipesHint =>
      'Сначала создайте рецепты на вкладке «Рецепты».';

  @override
  String get mealPlannerSave => 'Добавить в план';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'Запланировано $count из $total приемов пищи';
  }

  @override
  String get mealPlannerEstimatePartial =>
      'Оценка на основе рецептов с частичными данными о ценах.';

  @override
  String get mealPlannerGenerateList => 'Создать список покупок';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Добавить в список покупок все ингредиенты из запланированных на эту неделю блюд?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'В ваш список добавлено $count ингредиентов!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Никаких ингредиентов добавлять не нужно. Сначала спланируйте несколько блюд по рецептам.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Сначала создайте список покупок.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Завтрак';

  @override
  String get mealPlannerMealTypeLunch => 'Обед';

  @override
  String get mealPlannerMealTypeDinner => 'Ужин';

  @override
  String get mealPlannerMealTypeSnack => 'Закуска';

  @override
  String get mealPlannerDateLabel => 'Дата';

  @override
  String get mealPlannerWeekEmpty => 'На этой неделе ничего не запланировано';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Нажмите на любой день, чтобы начать планировать питание!';

  @override
  String mealPlannerBudgetMonthCost(String amount) {
    return 'Месяц: $amount';
  }

  @override
  String mealPlannerBudgetWeekCost(String amount) {
    return 'Неделя: $amount';
  }

  @override
  String mealPlannerBudgetTodayCost(String amount) {
    return 'Сегодня: $amount';
  }

  @override
  String get mealPlannerBudgetRemoveGoal => 'Удалить цель';

  @override
  String get mealPlannerBudgetGoalNav => 'Бюджет планировщика питания';

  @override
  String get mealPlannerBudgetGoalSubtitle =>
      'Ежемесячная цель расходов на планирование питания';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes мин.';
  }

  @override
  String get inviteToList => 'Пригласить в список';

  @override
  String get shareApp => 'Поделиться приложением';

  @override
  String get shareAppDescription => 'Пригласите друзей использовать KipiList';

  @override
  String shareReferralText(String url) {
    return 'Я использую KipiList для организации покупок! Загрузите по моей ссылке, и мы оба получим 7 дней Premium бесплатно: $url';
  }

  @override
  String get shareReferralSubject => 'Получите 7 дней KipiList Premium!';

  @override
  String get gestureHint =>
      'Удерживайте, чтобы выбрать • Проведите пальцем, чтобы удалить';

  @override
  String get catalogTitle => 'Каталог';

  @override
  String get catalogMyFrequents => 'Мои завсегдатаи';

  @override
  String get catalogSearchGlobal => 'Искать любой товар...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Искать в $category...';
  }

  @override
  String get catalogSortPopular => 'Самый популярный';

  @override
  String get catalogSortAZ => 'А – Я';

  @override
  String get catalogFilterNational => 'граждане';

  @override
  String get catalogRareSection => 'менее распространено в вашей стране';

  @override
  String get catalogRareBadge => 'Редкий';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Добавить $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Товар не найден, введите название';

  @override
  String get catalogBrowse => 'Просмотреть каталог';

  @override
  String get catalogCategories => 'Категории';

  @override
  String get offlineBanner => 'Вы оффлайн';

  @override
  String get consentTitle => 'Конфиденциальность и аналитика';

  @override
  String get consentBody =>
      'KipiList использует Firebase Analytics для улучшения вашего опыта. Ваши данные обрабатываются в соответствии с нашей Политикой конфиденциальности.';

  @override
  String get consentAccept => 'Принимать';

  @override
  String get consentDecline => 'Нет, спасибо';

  @override
  String get mealPlannerPantryAllAvailable => 'Все ингредиенты доступны';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 отсутствует';
  }

  @override
  String get mealPlannerManageTypes => 'Управление типами еды';

  @override
  String get mealPlannerAddType => 'Добавить тип питания';

  @override
  String get mealPlannerEditType => 'Изменить тип питания';

  @override
  String get mealPlannerTypeName => 'Имя';

  @override
  String get mealPlannerTypeColor => 'Цвет';

  @override
  String get mealPlannerTypeIcon => 'Икона';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      'Вы уверены, что хотите удалить этот тип питания? Плановые приемы пищи при этом типе сохранятся.';

  @override
  String get mealPlannerTypeNameEmpty => 'Имя не может быть пустым';

  @override
  String get mealPlannerTypeDeleteError =>
      'Невозможно удалить этот тип питания.';

  @override
  String get mealPlannerCustomTypeLabel => 'Пользовательский тип';

  @override
  String get mealPlannerDefaultTypeLabel => 'Тип по умолчанию';

  @override
  String get mealPlannerDuplicate => 'Дублировать еду';

  @override
  String get mealPlannerSelectDestinationDay => 'Дублировать в...';

  @override
  String get mealPlannerCurrentDayLabel => 'Текущий день';

  @override
  String get mealPlannerDuplicateSuccess => 'Еда успешно продублирована!';

  @override
  String get expirationDate => 'Дата окончания срока';

  @override
  String get notInformed => 'Не установлено';

  @override
  String get skip => 'Пропускать';

  @override
  String get onboardingSkip => 'Пропустить сейчас';

  @override
  String get onboardingAiTitle => 'Пообщаться с Кипи';

  @override
  String get onboardingAiGreeting =>
      'Привет! Я Кипи, ваш личный помощник по покупкам! 🛒';

  @override
  String get onboardingAiAskName => 'Как тебя зовут?';

  @override
  String get onboardingAiNameHint => 'Введите свое имя...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Приятно познакомиться, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Какая твоя любимая еда?';

  @override
  String get onboardingAiFoodHint => 'например Пицца, Суши...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Отличный выбор! Вот что я бы добавил в ваш список:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Это выглядит хорошо? Попробуйте написать что-нибудь другое!';

  @override
  String get onboardingAiReady =>
      'Большой! Вы готовы начать. Давайте настроим ваш аккаунт!';

  @override
  String get onboardingAiContinue => 'Продолжить →';

  @override
  String get connectionError => 'Ошибка подключения';

  @override
  String connectionErrorDesc(String error) {
    return 'Не удалось подключиться к серверу. Проверьте свой интернет.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Ошибка загрузки списков.';

  @override
  String get errorLoadingItems => 'Ошибка загрузки элементов';

  @override
  String get noListsFound => 'Списки не найдены';

  @override
  String get backToToday => 'Вернуться в сегодняшний день';

  @override
  String get quickSuggestions => 'Быстрые предложения';

  @override
  String get aiEnergyLow => 'Низкая энергия ИИ';

  @override
  String get aiUnlockUnlimited => 'Разблокируйте неограниченный ИИ';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 сегодня';
  }

  @override
  String get aiSubscribeUnlimited => 'Подпишитесь на неограниченный AI';

  @override
  String get unlockWithAd => 'Разблокировать с помощью рекламы';

  @override
  String get conversationHistoryTitle => 'История разговора';

  @override
  String get noConversationsFound => 'Разговоры не найдены';

  @override
  String get errorLoadingHistory => 'Ошибка загрузки истории';

  @override
  String get deleteConversationTitle => 'Удалить разговор?';

  @override
  String get deleteConversationConfirm => 'Это действие невозможно отменить.';

  @override
  String get deleteConversation => 'Удалить';

  @override
  String get subscription => 'Подписка';

  @override
  String get kipiListProActive => 'КипиЛист Про Актив';

  @override
  String get unlockPremiumTitle =>
      'Разблокируйте неограниченные списки, искусственный интеллект и многое другое';

  @override
  String get loadingSubscription => 'Загрузка подписки...';

  @override
  String get errorLoadingSubscription => 'Ошибка загрузки подписки';

  @override
  String get profileSection => 'Профиль';

  @override
  String get myProfile => 'Мой профиль';

  @override
  String get profileSubtitle => 'Личные предпочтения для AI-помощника';

  @override
  String get customizeAiAssistant => 'Настройте помощника AI';

  @override
  String get assistantHistory => 'История помощника';

  @override
  String get assistantHistorySubtitle => 'Просмотр истории разговоров';

  @override
  String get manageCategories => 'Управление категориями';

  @override
  String get manageCategoriesSubtitle => 'Управление категориями товаров';

  @override
  String get customizeAssistant => 'Настроить';

  @override
  String get assistantName => 'Имя помощника';

  @override
  String get chooseIcon => 'Выберите значок';

  @override
  String get profileSaved => 'Профиль успешно сохранен!';

  @override
  String get errorSavingProfile => 'Ошибка сохранения: null.';

  @override
  String get userProfile => 'Профиль пользователя';

  @override
  String get profileDescription =>
      'Расскажите нам о своих личных предпочтениях, чтобы ИИ-помощник мог предложить персонализированные блюда и рецепты.';

  @override
  String get preferredMarket => 'Предпочтительный рынок';

  @override
  String get preferredMarketHint => 'Например: Супермаркет X';

  @override
  String get dietaryRestrictions => 'Диетические ограничения';

  @override
  String get dietaryRestrictionsHint =>
      'Например: веганский, вегетарианский, безглютеновый.';

  @override
  String get marketsToAvoid => 'Рынки, которых следует избегать';

  @override
  String get marketsToAvoidHint => 'Например: Рынок Y, Рынок Z.';

  @override
  String get observations => 'Примечания';

  @override
  String get observationsHint => 'Другие предпочтения помощнику';

  @override
  String get saveProfile => 'Сохранить профиль';

  @override
  String get everythingReady => 'Все готово!';

  @override
  String get youCompletedList => 'Вы завершили список!';

  @override
  String get selectCheaperAlternative =>
      'Выберите более дешевую альтернативу продукту, чтобы оптимизировать затраты.';

  @override
  String get suggestedItems => 'Предлагаемые товары';

  @override
  String get swapped => 'поменяно местами';

  @override
  String get swap => 'Менять';

  @override
  String get chooseThemeColor => 'Выберите цвет темы';

  @override
  String get manageCategoriesTitle => 'Управление категориями';

  @override
  String get categoryLimitReached =>
      'Ограничение в 10 категорий в бесплатной версии. Обновитесь до Про!';

  @override
  String get deleteCategoryTitle => 'Удалить категорию';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Товары из категории «$category» будут перемещены в «Другие».\nПродолжать?';
  }

  @override
  String get deleteCategory => 'Удалить';

  @override
  String get newCategoryDialog => 'Новая категория';

  @override
  String get editCategoryDialog => 'Изменить категорию';

  @override
  String get categoryName => 'Название категории';

  @override
  String get categoryNameHint => 'Например: Мясо';

  @override
  String get categoryColorLabel => 'Цвет';

  @override
  String get categoryIconLabel => 'Икона';

  @override
  String itemAddedSnack(String name) {
    return '$name добавлено';
  }

  @override
  String get kipiQuickBarHint => 'Что вам нужно купить?';

  @override
  String replaceItem(String item) {
    return 'Заменить $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit — $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Никогда больше не забывайте продуктовый товар';

  @override
  String get onboardingGoalSaveMoney => 'Экономьте деньги';

  @override
  String get onboardingGoalNeverForget => 'Никогда не забывайте предметы';

  @override
  String get onboardingGoalFaster => 'Делайте покупки быстрее';

  @override
  String get onboardingGoalFamily => 'Организуйте семейный шопинг';

  @override
  String get onboardingGoalRecipes => 'Откройте для себя рецепты';

  @override
  String get onboardingGoalPantry => 'Следовая кладовая';

  @override
  String get onboardingCommitmentsTitle => 'Что для вас важно?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Выберите свои цели, чтобы персонализировать KipiList';

  @override
  String get onboardingCommitmentsCta => 'Пойдем!';

  @override
  String get onboardingPersonalizationNameLabel => 'Ваше имя';

  @override
  String get onboardingPersonalizationNameHint => 'Введите свое имя';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Что вы покупаете?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Для кого вы делаете покупки?';

  @override
  String get onboardingCategoryGrocery => 'Продукты питания';

  @override
  String get onboardingCategoryPharmacy => 'Аптека';

  @override
  String get onboardingCategoryRecipes => 'Рецепты';

  @override
  String get onboardingCategoryHome => 'Дом';

  @override
  String get onboardingCategoryPet => 'Домашний питомец';

  @override
  String get onboardingGroupSolo => 'Только я';

  @override
  String get onboardingGroupCouple => 'Пара';

  @override
  String get onboardingGroupFamily => 'Семья';

  @override
  String get onboardingLoadingTitle => 'Готовим свой опыт...';

  @override
  String get onboardingLoadingStep1 => 'Анализ ваших предпочтений...';

  @override
  String get onboardingLoadingStep2 => 'Настройка AI-помощника...';

  @override
  String get onboardingLoadingStep3 => 'Почти готово...';

  @override
  String get onboardingLoadingStat1Label => 'Товары в каталоге';

  @override
  String get onboardingLoadingStat2Label => 'Пользователи помогли';

  @override
  String get onboardingLoadingStat3Label => 'Сэкономлено минут';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, экономь в каждой поездке!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, никогда не забывай ни одной вещи!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, делайте покупки вдвое быстрее!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, организуйте семейный шоппинг!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, открывай для себя новые рецепты!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, отслеживай свою кладовую идеально!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Экономьте в каждой поездке!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Никогда не забывайте вещь!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'Делайте покупки в два раза быстрее!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Организуйте семейный шоппинг!';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'Откройте для себя новые рецепты!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Отслеживайте свою кладовую идеально!';

  @override
  String paywallPricePerDay(String price) {
    return 'Всего $price/день — меньше, чем чашка кофе';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Пропустить сейчас';

  @override
  String get paywallTestimonial =>
      'ИИ организует мои покупки за считанные секунды. Я экономлю 20 минут за поездку.';

  @override
  String get paywallTestimonialAuthor => 'Энн С.';

  @override
  String get paywallTrialDisclaimer =>
      'Отмена в любое время · Плата не взимается до окончания пробного периода.';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Привет, $name! Какой $category вам нужен?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Какой $category вам нужен?';
  }

  @override
  String get onboardingAiDemoYes => 'Да!';

  @override
  String get onboardingAiDemoReaction => 'Хороший!';

  @override
  String get onboardingAiDemoChange => 'Изменить элемент';

  @override
  String get onboardingAiDemoOffer => 'Попробуйте написать что-нибудь другое!';

  @override
  String get onboardingAiDemoContinue => 'Продолжать';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Ваш список покупок теперь с искусственным интеллектом';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Посмотрите, как Kipi составляет полный список за считанные секунды.';

  @override
  String get onboardingAiDemoSlideCta => 'Я хочу этого! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Устраиваю шашлык 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'Готовый! Вот все, что вам нужно:';

  @override
  String get onboardingAiDemoSlideDone => 'Полный список за секунды ✨';

  @override
  String get onboardingPainTitle => 'Что вас больше всего расстраивает?';

  @override
  String get onboardingPainSubtitle => 'Будьте честны — мы исправим каждое';

  @override
  String get onboardingPainCta => 'Да, исправьте это для меня →';

  @override
  String get onboardingPainForget => 'Я забываю товары в магазине';

  @override
  String get onboardingPainFamily => 'Моя семья никогда не видит список';

  @override
  String get onboardingPainOverspend => 'Я всегда превышаю бюджет';

  @override
  String get onboardingPainRepeat =>
      'Одной поездки никогда не бывает достаточно';

  @override
  String get aiWelcomeContent =>
      'Привет! 👋 Я **Кипи**, ваш личный помощник по покупкам и рецептам!\n\nЯ здесь, чтобы помочь вам:\n🛒 **Автоматически организуйте** свои покупки по категориям.\n💰 **Отслеживайте** свой бюджет и давайте советы по экономии денег.\n🍲 **Предлагайте** вкусные рецепты из того, что у вас уже есть.\n\nЧем я могу помочь вам сегодня? Вы можете начать с создания своего первого списка!';

  @override
  String get aiWelcomeSuggestCreateList => 'Создать мой первый список';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Кипи, помоги мне составить мой первый список покупок.';

  @override
  String get aiWelcomeSuggestSave => 'Как сэкономить деньги?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Кипи, как ты можешь помочь мне сэкономить на продуктах?';

  @override
  String get suggestionMilk => 'Молоко';

  @override
  String get suggestionBread => 'Хлеб';

  @override
  String get suggestionEggs => 'Яйца';

  @override
  String get suggestionCoffee => 'Кофе';

  @override
  String get suggestionRice => 'Рис';

  @override
  String get suggestionFruits => 'Фрукты';

  @override
  String get recipeIngredientSingular => '1 ингредиент';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count ингредиентов';
  }

  @override
  String get pantryAvailabilityAll => 'Все готово!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return '$availableCount/$totalCount в кладовой';
  }

  @override
  String onboardingProgress(int current, int total) {
    return 'Шаг $current из $total';
  }

  @override
  String get onboardingDemoHeadline =>
      'Расскажите нам, что вы планируете. Кипи составляет список.';

  @override
  String get onboardingDemoSubtitle =>
      'Организуйте предметы за считанные секунды.';

  @override
  String get onboardingPersonalizationEffect =>
      'Это помогает Kipi предлагать более подходящие товары и количества.';

  @override
  String get onboardingPersonalizeWithName => 'Персонализация с моим именем';

  @override
  String get onboardingCreateFirstList => 'Создать мой первый список';

  @override
  String get onboardingPromptWeekly =>
      'Планируйте свои еженедельные предметы первой необходимости';

  @override
  String get onboardingPromptEvent => 'Я готовлю что-то особенное';

  @override
  String get onboardingPromptEssentials => 'Предложите мне самое необходимое';

  @override
  String get onboardingFallbackGrocery =>
      '🍚 Рис|🫘 Фасоль|🥛 Молоко|🥚 Яйца|🍞 Хлеб|🍎 Фрукты';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 Лейкопластыри|🌡️ Термометр|🧴 Антисептик|😷 Маски для лица|🧼 Дезинфицирующее средство для рук';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 Помидоры|🧅 Лук|🧄 Чеснок|🥚 Яйца|🧀 Сыр|🌿 Свежая зелень';

  @override
  String get onboardingFallbackHome =>
      '🧻 Бумажные полотенца|🧽 Губки|🧴 Моющее средство|🗑️ Мешки для мусора|🧹 Тряпки для протирки';

  @override
  String get onboardingFallbackPet =>
      '🥣 Корм ​​для домашних животных|🦴 Лакомства|🧼 Шампунь для домашних животных|🧸 Игрушки|🧻 Мешки для мусора';

  @override
  String get onboardingListSaveFailed =>
      'Я подготовил предметы, но не смог сохранить список. Попробуйте еще раз сохранить его в приложении.';

  @override
  String onboardingListCreated(int count) {
    return 'Ваш список готов: для вас организовано $count элементов.';
  }

  @override
  String get onboardingContinueToOffer => 'Продолжать';

  @override
  String onboardingPaywallListReady(int count) {
    return 'Ваш первый список готов · $count элементов';
  }

  @override
  String get paywallContinueFree =>
      'Продолжить использование бесплатной версии';

  @override
  String get paywallPurchasePending =>
      'Ваш платеж ожидает одобрения. Доступ будет разблокирован автоматически после подтверждения.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return 'Сегодня: бесплатно. Затем $price/год через $days дней. Отменить в любое время.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return 'Сегодня: бесплатно. Затем $price/месяц через $days дней. Отменить в любое время.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price/год. Отменить в любое время.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/месяц. Отменить в любое время.';
  }

  @override
  String get obHookTitle => 'Умные покупки начинаются здесь';

  @override
  String get obHookSubtitle =>
      'Списки на базе искусственного интеллекта, которые экономят ваше время и деньги в каждой поездке.';

  @override
  String get obHookSocial => 'Нам доверяют тысячи покупателей по всему миру';

  @override
  String get obHookCta => 'Начать';

  @override
  String get obQuizHouseholdTitle => 'Для кого вы делаете покупки?';

  @override
  String get obQuizHouseholdSolo => 'Только я';

  @override
  String get obQuizHouseholdCouple => 'Я и мой партнер';

  @override
  String get obQuizHouseholdFamilySmall => 'Семья из 3–4 человек';

  @override
  String get obQuizHouseholdFamilyLarge => 'Семья из 5+ человек';

  @override
  String get obQuizFrequencyTitle => 'Как часто вы покупаете продукты?';

  @override
  String get obQuizFrequencyDaily => 'Почти каждый день';

  @override
  String get obQuizFrequencyWeekly => 'Раз в неделю';

  @override
  String get obQuizFrequencyBiweekly => 'Каждые две недели';

  @override
  String get obQuizFrequencyMonthly => 'Большой ежемесячный улов';

  @override
  String get obQuizPainTitle => 'Что вас больше всего расстраивает в покупках?';

  @override
  String get obQuizPainForget => 'Я всегда забываю вещи';

  @override
  String get obQuizPainOverspend => 'Я трачу больше, чем планировалось';

  @override
  String get obQuizPainWaste => 'Еда уходит в отходы дома';

  @override
  String get obQuizPainTime => 'Это занимает слишком много времени';

  @override
  String get obQuizSavingsTitle => 'Сколько вы хотите сэкономить ежемесячно?';

  @override
  String get obQuizSavingsSmall => 'Немного — каждый бит на счету';

  @override
  String get obQuizSavingsMedium => 'Около 10% от моего счета за продукты';

  @override
  String get obQuizSavingsLarge => 'Как можно больше';

  @override
  String get obQuizMethodTitle => 'Как вы составляете списки покупок сегодня?';

  @override
  String get obQuizMethodPaper => 'Ручка и бумага';

  @override
  String get obQuizMethodNotes => 'Приложение «Заметки»';

  @override
  String get obQuizMethodMemory => 'Я держу это в голове';

  @override
  String get obQuizMethodNone => 'Я не составляю списки';

  @override
  String get obSocialTitle => 'Вы в хорошей компании';

  @override
  String get obSocialSubtitle =>
      'Такие покупатели, как вы, уже экономят с KipiList';

  @override
  String get obSocialQuote1 =>
      'Я больше никогда ничего не забываю. ИИ строит мой список за считанные секунды.';

  @override
  String get obSocialQuote2 =>
      'Мы заметно урезали счет за продукты в первый месяц.';

  @override
  String get obSocialQuote3 =>
      'Передача списка моему партнеру положила конец нашему шоппинг-хаосу.';

  @override
  String get obLoadingTitle => 'Создание персонализированного плана...';

  @override
  String get obLoadingStepProfile => 'Адаптация к вашему дому';

  @override
  String get obLoadingStepHabits => 'Настройка вашего рутины покупок';

  @override
  String get obLoadingStepSavings => 'Оптимизация вашей стратегии сбережений';

  @override
  String get obLoadingStepLists => 'Подготовка умных списков';

  @override
  String get obRevealTitle => 'Ваш план готов!';

  @override
  String get obRevealSubtitle => 'Вот как KipiList будет работать для вас';

  @override
  String get obRevealSavingsCaption =>
      'Прогнозируемая экономия с помощью KipiList';

  @override
  String obRevealMonth(int n) {
    return 'Месяц $n';
  }

  @override
  String get obRevealFeatureAi => 'ИИ создает и упорядочивает ваши списки';

  @override
  String get obRevealFeatureBudget =>
      'Расходы, отслеживаемые в соответствии с вашей целью';

  @override
  String get obRevealFeaturePantry =>
      'Отслеживание кладовой сокращает пищевые отходы';

  @override
  String get obRevealFeatureShare =>
      'Делитесь информацией с семьей в режиме реального времени';

  @override
  String get obPaywallTitle => 'Разблокируйте свой план';

  @override
  String get obPaywallRetry => 'Повторить попытку';

  @override
  String get obLoginTitle => 'Сохраните свой план';

  @override
  String get obLoginSubtitle =>
      'Войдите в систему, чтобы ваши списки синхронизировались на разных устройствах';

  @override
  String get obLoginGoogle => 'Продолжить с помощью Google';

  @override
  String get obLoginApple => 'Продолжить с Apple';

  @override
  String get obLoginSkip => 'Не сейчас';

  @override
  String get obLoginError =>
      'Не удалось войти. Повторите попытку или пропустите.';

  @override
  String get searchMessages => 'Поиск сообщений...';

  @override
  String get deletedList => 'Удаленный список';

  @override
  String get openConversation => 'Открытый разговор';

  @override
  String get userRole => 'Ты';

  @override
  String get assistantRole => 'Ассистент';

  @override
  String get agentActionsRunning => 'Выполнение действий...';

  @override
  String get agentActionsFailed => 'Не удалось выполнить действия.';

  @override
  String get agentActionsPremium => 'Для действий требуется Премиум';

  @override
  String agentActionsCompleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count actions completed',
      one: '1 action completed',
    );
    return '$_temp0';
  }

  @override
  String get undoChanges => 'Отменить изменения';

  @override
  String premiumStepDescription(String description) {
    return '$description (Премиум)';
  }

  @override
  String get itemAddedToList => 'Товар добавлен в список.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return 'Предыдущее состояние: $quantity $unit [$category]$price';
  }

  @override
  String itemsAffectedByAction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items affected by the action.',
      one: '1 item affected by the action.',
    );
    return '$_temp0';
  }

  @override
  String get premiumActionsPrompt =>
      'Подпишитесь на Премиум, чтобы разблокировать автоматические действия.';

  @override
  String get viewPlans => 'Посмотреть планы';

  @override
  String get artifactSynced => 'Синхронизировано';

  @override
  String get artifactBudgetLabel => 'Бюджет:';

  @override
  String get totalEstimatedLabel => 'Расчетная сумма';

  @override
  String get quickActionPantry => 'Посмотреть кладовую';

  @override
  String get quickActionAi => 'Пообщаться с Кипи';

  @override
  String aiApiError(int statusCode) {
    return 'Служба AI вернула ошибку ($statusCode).';
  }

  @override
  String get aiTimeoutError =>
      'Запрос занял слишком много времени. Пожалуйста, попробуйте еще раз.';

  @override
  String get aiConnectionError =>
      'Не удалось подключиться к службе AI. Проверьте свое соединение.';

  @override
  String get aiEmptyResponseError => 'Служба AI вернула пустой ответ.';

  @override
  String get aiInvalidResponseError => 'Служба AI вернула неверный ответ.';

  @override
  String get categoryFruits => 'Фрукты';

  @override
  String get categoryCleaning => 'Очистка';

  @override
  String get categoryBeverages => 'Напитки';

  @override
  String get categoryBakery => 'Пекарня';

  @override
  String get categoryMeat => 'Мясо';

  @override
  String get categoryDairy => 'Молочный';

  @override
  String get categoryVegetables => 'Овощи';

  @override
  String get categoryGrains => 'Зерно и крупы';

  @override
  String get categoryHygiene => 'Личная гигиена';

  @override
  String get categoryFrozen => 'Замороженные продукты';

  @override
  String get categoryCanned => 'Консервы';

  @override
  String get categorySeasonings => 'Приправы';

  @override
  String get categorySweets => 'Сладости и десерты';

  @override
  String get categoryAlcohol => 'Алкогольные напитки';

  @override
  String get categoryFish => 'Рыба';

  @override
  String get categoryColdCuts => 'Колбасное ассорти';

  @override
  String get categoryUtilities => 'Хозяйственные товары';

  @override
  String get categoryPet => 'Товары для домашних животных';

  @override
  String get categoryBaby => 'Малыш';

  @override
  String get categoryOthers => 'Другой';

  @override
  String chatEmptyGreeting(String name) {
    return 'Привет $name, я Кипи 👋';
  }

  @override
  String get chatEmptyGreetingNoName => 'Привет, я Кипи 👋';

  @override
  String get chatEmptyPitch =>
      'Я составляю списки, предлагаю рецепты и нахожу, где сохранить. С чего начать?';

  @override
  String get aiWelcomeSuggestBarbecue => 'Спланируйте барбекю';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'Кипи, я устраиваю барбекю — помоги мне составить список покупок.';

  @override
  String get aiRateLimitError =>
      'Слишком много сообщений за короткое время. Подождите несколько секунд и повторите попытку.';

  @override
  String get chatHistoryErrorTitle => 'Не удалось загрузить этот разговор.';

  @override
  String get chatHistoryErrorBody =>
      'Что-то пошло не так с нашей стороны. Нажмите «Повторить», чтобы повторить попытку.';

  @override
  String get chatHistoryOfflineTitle => 'Вы оффлайн';

  @override
  String get chatHistoryOfflineBody =>
      'Проверьте подключение к Интернету и повторите попытку.';

  @override
  String get aiGeneratingResponse => 'Создание ответа…';

  @override
  String get errorUnexpected =>
      'Произошло нечто неожиданное. Пожалуйста, попробуйте еще раз.';

  @override
  String get aiAssistantTooltip => 'Открыть AI-помощник';

  @override
  String get searchItems => 'Поиск предметов';

  @override
  String get onboardingHookContinue => 'Начать';

  @override
  String get onboardingHookItem1 => 'Жареная курица';

  @override
  String get onboardingHookItem2 => 'сыр моцарелла';

  @override
  String get onboardingHookItem3 => 'Помидоры черри';

  @override
  String get checkItemTooltip => 'Проверить элемент';
}
