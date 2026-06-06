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
  String get newChat => 'Новый чат';

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
  String get chatHintBlocked => 'Unlock AI to chat';

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
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get aiTeaserFallback =>
      'Subscribe to Premium to unlock the full response and get unlimited AI tips for your shopping...';

  @override
  String get kipiListTitle => 'KipiList';

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
  String get paywallCtaTrial => 'Start My Free Trial';

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
  String shareReferralText(Object url) {
    return 'Я использую KipiList для организации покупок! Загрузите по моей ссылке, и мы оба получим 7 дней Premium бесплатно: $url';
  }

  @override
  String get shareReferralSubject => 'Получите 7 дней KipiList Premium!';
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
  String get newChat => 'Новый чат';

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
  String get kipiListTitle => 'KipiList';

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
  String get paywallTitle => 'KipiList Premium';

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
  String shareReferralText(Object url) {
    return 'Я использую KipiList для организации покупок! Загрузите по моей ссылке, и мы оба получим 7 дней Premium бесплатно: $url';
  }

  @override
  String get shareReferralSubject => 'Получите 7 дней KipiList Premium!';
}
