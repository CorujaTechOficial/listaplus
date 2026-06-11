// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Список покупок';

  @override
  String get lists => 'Списки';

  @override
  String get pantry => 'Комора';

  @override
  String get navChat => 'Чат';

  @override
  String get navRecipes => 'Рецепти';

  @override
  String get navLists => 'Списки';

  @override
  String get navMealPlanner => 'Меню';

  @override
  String get cancel => 'Скасувати';

  @override
  String get save => 'Зберегти';

  @override
  String get create => 'Створити';

  @override
  String get add => 'Додати';

  @override
  String get remove => 'Видалити';

  @override
  String get delete => 'Видалити';

  @override
  String get edit => 'Редагувати';

  @override
  String get copy => 'Копіювати';

  @override
  String get next => 'Далі';

  @override
  String get retry => 'Повторити';

  @override
  String get regenerate => 'Перегенерувати';

  @override
  String get copiedToClipboard => 'Скопійовано в буфер обміну';

  @override
  String get confirm => 'Підтвердити';

  @override
  String get close => 'Закрити';

  @override
  String get import => 'Імпортувати';

  @override
  String get rename => 'Перейменувати';

  @override
  String get upgrade => 'Оновити';

  @override
  String get clear => 'Очистити';

  @override
  String error(String message) {
    return 'Помилка: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Помилка: $message';
  }

  @override
  String get purchaseError => 'Помилка обробки покупки. Спробуйте ще раз.';

  @override
  String get restoreError => 'Помилка відновлення покупок. Спробуйте ще раз.';

  @override
  String get loading => 'Завантаження...';

  @override
  String get fieldRequired => 'Обов\'язкове поле';

  @override
  String get addedFeedback => 'Додано!';

  @override
  String get profile => 'Профіль';

  @override
  String get exitShoppingMode => 'Вийти з режиму покупок';

  @override
  String get exit => 'Вихід';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Вибрано $count',
      many: 'Вибрано $count',
      few: 'Вибрано $count',
      one: 'other $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Орієнтовно';

  @override
  String get alreadyPurchased => 'Вже куплено';

  @override
  String get clearList => 'Очистити список';

  @override
  String get clearPurchased => 'Очистити куплене';

  @override
  String get share => 'Поділитися';

  @override
  String get shareViaCode => 'Поділитися через код';

  @override
  String get importViaCode => 'Імпортувати через код';

  @override
  String get listAssistant => 'Помічник списку';

  @override
  String get globalAssistant => 'Глобальний помічник';

  @override
  String get becomePremium => 'Стати Premium';

  @override
  String get manageSubscription => 'Керувати підпискою';

  @override
  String get completePurchase => 'Завершити покупку';

  @override
  String get confirmClearList => 'Видалити всі елементи?';

  @override
  String get shareListTitle => 'Поділитися списком';

  @override
  String get shareThisCode => 'Поділитися цим кодом:';

  @override
  String get validForLimitedTime => 'Діє обмежений час';

  @override
  String get importListTitle => 'Імпортувати список';

  @override
  String get enterCodeHint => 'Введіть код';

  @override
  String get confirmArchiveTitle => 'Завершити покупку';

  @override
  String get confirmArchiveContent =>
      'Завершити цю покупку та архівувати список?';

  @override
  String get complete => 'Завершити';

  @override
  String get listArchived => 'Список успішно заархівовано!';

  @override
  String listAdded(String listName) {
    return '$listName додано!';
  }

  @override
  String get buy => 'Купити';

  @override
  String get unmark => 'Зняти позначку';

  @override
  String confirmDeleteItems(int count) {
    return 'Видалити $count елемент(и)?';
  }

  @override
  String get confirmDeleteTitle => 'Підтвердити';

  @override
  String confirmContent(int count) {
    return 'Видалити $count елемент(и)?';
  }

  @override
  String get archiveList => 'Архівувати список';

  @override
  String get pantryAppBar => 'Комора';

  @override
  String get generateShoppingList => 'Створити список покупок';

  @override
  String get pantryEmpty => 'Порожня комора';

  @override
  String get pantryEmptySubtitle =>
      'Додайте продукти, які ви хочете мати вдома';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit елемент(и) потрібно купити';
  }

  @override
  String get noItemsToBuy => 'Нічого не потрібно купувати';

  @override
  String get newPantryList => 'Покупки з комори';

  @override
  String get newListTitle => 'Новий список покупок';

  @override
  String itemsWillBeAdded(int count) {
    return '$count елемент(и) буде додано';
  }

  @override
  String get listNameLabel => 'Назва списку';

  @override
  String listCreated(String name, int count) {
    return 'Список \"$name\" створено з $count елементів';
  }

  @override
  String get noTracking => 'Без відстеження';

  @override
  String get markAsPurchased => 'Позначити як куплене';

  @override
  String editPantryItem(String name) {
    return 'Редагувати $name';
  }

  @override
  String get idealQuantity => 'Ідеальна кількість';

  @override
  String get currentQuantity => 'Поточна кількість';

  @override
  String get consumed => 'Спожито';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name поповнено до $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Видалити \"$name\" з комори?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Редагувати $name';
  }

  @override
  String get scanProductTitle => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Розмістіть штрих-код у центрі';

  @override
  String get product => 'Product';

  @override
  String get settingsAppBar => 'Налаштування';

  @override
  String get language => 'Мова';

  @override
  String get languagePortuguese => 'Português (Бразилія)';

  @override
  String get languageEnglish => 'англійська';

  @override
  String get languageSystem => 'Системна за замовчуванням';

  @override
  String get chooseLanguage => 'Виберіть мову';

  @override
  String get searchLanguage => 'Мова пошуку...';

  @override
  String get currency => 'Валюта';

  @override
  String get chooseCurrency => 'Виберіть Валюта';

  @override
  String get searchCurrency => 'Пошук валюти...';

  @override
  String get appearance => 'Зовнішній вигляд';

  @override
  String get light => 'Світла';

  @override
  String get system => 'Системна';

  @override
  String get dark => 'Темна';

  @override
  String get themeColor => 'Колір теми';

  @override
  String get dynamicColors => 'Динамічні кольори';

  @override
  String get dynamicColorsSubtitle => 'Використовуйте кольори на основі шпалер';

  @override
  String get dynamicColorsEnabledWarning =>
      'Вимкніть динамічні кольори, щоб колір теми почав діяти';

  @override
  String get finance => 'Фінанси';

  @override
  String get monthlyBudgetNav => 'Місячний бюджет';

  @override
  String get budgetSubtitle => 'Відстежуйте свої щомісячні витрати';

  @override
  String get data => 'Дані';

  @override
  String get backupNav => 'Резервне копіювання';

  @override
  String get backupSubtitle => 'Експортуйте або імпортуйте свої дані';

  @override
  String get about => 'Про програму';

  @override
  String get version => 'Версія';

  @override
  String get privacy => 'Конфіденційність';

  @override
  String get termsOfUse => 'Умови використання';

  @override
  String get myAchievements => 'Мої досягнення';

  @override
  String get itemsPurchased => 'Придбані предмети';

  @override
  String get totalSavings => 'Загальна економія';

  @override
  String get currentStreak => 'Поточна серія';

  @override
  String streakDays(int count) {
    return '$days днів';
  }

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
  String get backupTitle => 'Резервне копіювання';

  @override
  String get backupPremiumDescription =>
      'Резервне копіювання та експорт — це функція Premium';

  @override
  String get exportData => 'Експортувати дані';

  @override
  String get exportDataSubtitle => 'Зберегти всі списки як JSON';

  @override
  String get importData => 'Імпортувати дані';

  @override
  String get importDataSubtitle => 'Відновити списки з JSON';

  @override
  String get importJsonTitle => 'Імпорт JSON';

  @override
  String get importJsonHint => 'Вставте резервний код JSON тут...';

  @override
  String get backupExported => 'Резервну копію експортовано!';

  @override
  String get budgetAppBar => 'Місячний бюджет';

  @override
  String get budgetPremiumLocked => 'Глобальний місячний бюджет — це Premium';

  @override
  String get budgetUpgradePrompt => 'Оновіть, щоб розблокувати';

  @override
  String get noBudgetDefined => 'Бюджет не встановлено';

  @override
  String totalEstimated(String amount) {
    return 'Загальна оцінка: $amount';
  }

  @override
  String get setBudgetButton => 'Встановити бюджет';

  @override
  String get budgetLists => 'Списки';

  @override
  String get budgetValueLabel => 'Сума';

  @override
  String get setBudgetTitle => 'Місячний бюджет';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Усі';

  @override
  String get filterPending => 'Очікують';

  @override
  String get filterPurchased => 'Куплені';

  @override
  String get sortName => 'Назва';

  @override
  String get sortCategory => 'Категорія';

  @override
  String get sortDate => 'Дата';

  @override
  String get sortManual => 'Вручну';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased of $total items';
  }

  @override
  String progressBudget(String amount) {
    return 'Budget: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Total: $amount';
  }

  @override
  String get addItem => 'Додати елемент';

  @override
  String get itemName => 'Назва елемента';

  @override
  String get quantityShort => 'К-сть';

  @override
  String get unit => 'Одиниця';

  @override
  String get category => 'Категорія';

  @override
  String get estimatedPrice => 'Орієнтовна ціна';

  @override
  String get addItemPrice => 'Орієнтовна ціна';

  @override
  String get editItem => 'Редагувати елемент';

  @override
  String get quantityFull => 'Кількість';

  @override
  String get editItemPrice => 'Орієнтовна ціна';

  @override
  String get addToPantry => 'Додати до комори';

  @override
  String addToPantryPrompt(String name) {
    return 'Додати \"$name\" до вашої комори?';
  }

  @override
  String get yes => 'Так';

  @override
  String get productName => 'Назва продукту';

  @override
  String get idealQty => 'Ідеальна к-сть';

  @override
  String get currentQty => 'Поточна к-сть';

  @override
  String get trackStock => 'Відстежувати запаси';

  @override
  String get trackStockActive => 'З\'являється в пропозиціях щодо покупок';

  @override
  String get trackStockInactive => 'Не створює пропозицій щодо покупок';

  @override
  String get createListDialog => 'Створити список';

  @override
  String get renameListDialog => 'Перейменувати список';

  @override
  String get listHistory => 'Історія списків';

  @override
  String get myLists => 'Мої списки';

  @override
  String get viewActive => 'Переглянути активні';

  @override
  String get viewHistory => 'Переглянути історію';

  @override
  String get noArchivedLists => 'Немає архівованих списків';

  @override
  String get noActiveLists => 'Немає активних списків';

  @override
  String completedOn(String date) {
    return 'Завершено $date';
  }

  @override
  String get sharedLabel => 'Спільний';

  @override
  String get restore => 'Відновити';

  @override
  String get removeSharedTooltip => 'Видалити';

  @override
  String get deleteListTitle => 'Видалити список';

  @override
  String deleteListContent(String name) {
    return 'Ви впевнені, що хочете видалити \"$name\"? Усі елементи буде видалено.';
  }

  @override
  String get removeSharedListTitle => 'Видалити спільний список';

  @override
  String removeSharedListContent(String name) {
    return 'Видалити \"$name\" з ваших списків? Оригінальний список не постраждає.';
  }

  @override
  String get createNewList => 'Створити новий список';

  @override
  String get aiAssistant => 'AI помічник';

  @override
  String get aiAssistantDescription =>
      'Отримуйте розумні пропозиції, рецепти та персоналізовані поради з нашим AI помічником.';

  @override
  String get generalAssistant => 'Загальний помічник';

  @override
  String get newChat => 'Новий чат';

  @override
  String get noHistory => 'Немає історії чату';

  @override
  String get deleteSession => 'Видалити чат';

  @override
  String get deleteSessionConfirm =>
      'Ви впевнені, що хочете видалити цей чат? Повідомлення буде остаточно втрачено.';

  @override
  String get clearHistory => 'Очистити історію';

  @override
  String get clearHistoryConfirm => 'Очистити всі повідомлення в цьому сеансі?';

  @override
  String get chatHint => 'Напишіть своє повідомлення...';

  @override
  String get chatHintBlocked => 'Розблокуйте AI для чату';

  @override
  String chatError(String error) {
    return 'Помилка завантаження чату: $error';
  }

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

  @override
  String get listHelp => 'Чим я можу допомогти з вашим списком?';

  @override
  String get generalHelp => 'Чим я можу допомогти з вашими покупками сьогодні?';

  @override
  String get chatSubtitle =>
      'Попросіть пропозиції щодо товарів, рецепти або поради щодо економії.';

  @override
  String get aiError =>
      'Вибачте, сталася помилка під час обробки вашого запиту. Перевірте з\'єднання або спробуйте пізніше.';

  @override
  String get aiLimitAlmostReached => 'Майже закінчилося повідомлення ШІ';

  @override
  String get unlockAi => 'Розблокуйте необмежений ШІ';

  @override
  String get aiTeaserFallback =>
      'Підпишіться на Premium, щоб розблокувати повну відповідь і отримати необмежену кількість порад штучного інтелекту для покупок...';

  @override
  String aiUsageWarning(int remaining) {
    return 'Цього місяця залишилося $remaining дій штучного інтелекту — оновлюйте без обмежень';
  }

  @override
  String get aiUsageExhausted =>
      'Досягнуто місячного ліміту ШІ. Оновіть до Pro для необмеженого →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Увійдіть, щоб розблокувати\nпреміум-функції';

  @override
  String get signInGoogle => 'Увійти через Google';

  @override
  String get signInApple => 'Увійти через Apple';

  @override
  String get continueAsGuest => 'Продовжити як гість';

  @override
  String get onboardingWelcomeTitle => 'Ласкаво просимо до KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Найрозумніший спосіб організувати покупки та заощадити гроші.';

  @override
  String get onboardingSetupTitle => 'Персоналізуйте свій досвід';

  @override
  String get onboardingSetupDesc =>
      'Виберіть, як ви хочете, щоб KipiList виглядала та працювала для вас.';

  @override
  String get onboardingLoginTitle => 'Збережіть усе в хмарі';

  @override
  String get onboardingLoginDesc =>
      'Ваші дані синхронізуються на всіх ваших пристроях';

  @override
  String get onboardingShareTitle => 'Поділіться з тими, кого любите';

  @override
  String get onboardingShareDesc =>
      'Синхронізуйте списки з родиною та друзями в реальному часі';

  @override
  String get onboardingPremiumTitle => 'Розблокуйте всі функції';

  @override
  String get onboardingPremiumSubtitle =>
      'Отримайте максимум від своїх списків покупок';

  @override
  String get onboardingAnnualBadge => 'Найкраще значення';

  @override
  String get onboardingMonthlyLabel => 'Щомісяця';

  @override
  String get onboardingAnnualLabel => 'Щорічний';

  @override
  String get onboardingViewAllPlans => 'Переглянути всі плани';

  @override
  String get onboardingSubscribeCta => 'Підпишіться';

  @override
  String get onboardingCancelAnytime =>
      'Скасувати будь-коли. Без зобов\'язань.';

  @override
  String get onboardingContinueAsGuest => 'Продовжити як гість';

  @override
  String get onboardingRestore => 'Відновити';

  @override
  String get onboardingRestoreDesc =>
      'Уже є підписка? Натисніть тут, щоб відновити його.';

  @override
  String get onboardingMaybeLater => 'Можливо пізніше';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Привіт, $name, організуй покупки правильно.';
  }

  @override
  String get onboardingSlide1Title => 'Розумні списки покупок';

  @override
  String get onboardingSlide1Body =>
      'Миттєво створюйте списки та діліться ними. Kipi автоматично додає предмети залежно від ваших звичок.';

  @override
  String get onboardingSlide2Title => 'Зустрічайте Кіпі';

  @override
  String get onboardingSlide2Body =>
      'Запитуйте будь-що — створюйте списки, знаходьте рецепти, відстежуйте свою комору, плануйте свій тиждень.';

  @override
  String get onboardingSlide3Title => 'Комора та планування їжі';

  @override
  String get onboardingSlide3Body =>
      'Відстежуйте, що у вас є, плануйте страви та створюйте списки покупок автоматично.';

  @override
  String get onboardingExit => 'Вихід';

  @override
  String get onboardingPersonalizationTitle => 'Давайте з вами познайомимося';

  @override
  String get onboardingPersonalizationDesc =>
      'Ми використаємо це, щоб персоналізувати ваші пропозиції та зробити покупки розумнішими.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Яка твоя улюблена їжа?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'напр. Піца, суші, лазанья...';

  @override
  String get onboardingPersonalizationCta => 'Продовжити';

  @override
  String get onboardingPersonalizationSkip => 'Пропустити поки що';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Скажіть нам свою улюблену їжу, щоб продовжити';

  @override
  String get settingsDefaultScreen => 'Головний екран за умовчанням';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Виберіть список покупок або чат AI';

  @override
  String get settingsScreenList => 'Список покупок';

  @override
  String get settingsScreenChat => 'ШІ Чат';

  @override
  String loginError(String error) {
    return 'Помилка входу: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Помилка завантаження пропозицій. Спробуйте знову.';

  @override
  String get paywallPurchaseError =>
      'Не вдалося завершити покупку. Спробуйте знову.';

  @override
  String get paywallRestoreError =>
      'Не знайдено активної підписки для відновлення.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ДНІВ БЕЗКОШТОВНО';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ТИЖДНІВ БЕЗКОШТОВНО',
      one: '$count ТИЖДЕНЬ БЕЗКОШТОВНО',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count МІСЯЦІВ БЕЗКОШТОВНО',
      one: '$count МІСЯЦІВ БЕЗКОШТОВНО',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Спробуйте безкоштовно!';

  @override
  String get paywallTrialSubtitle => 'Скасувати будь-коли. Без плати сьогодні.';

  @override
  String get paywallTrialCta => 'Розпочніть безкоштовну пробну версію';

  @override
  String get recipeAddToList => 'Додати до списку покупок';

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
  String get noListSelected => 'Список не вибрано. Спочатку відкрийте список.';

  @override
  String get paywallFeaturesTitle => 'Все, що вам потрібно:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI упорядковує ваш список автоматично';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Створіть стільки списків, скільки вам потрібно';

  @override
  String get paywallFeatureDescSharing => 'Купуйте разом у реальному часі';

  @override
  String get paywallFeatureDescPantry => 'Слідкуйте за тим, що є у вас вдома';

  @override
  String get paywallFeatureDescBudget => 'Дотримуйтеся бюджету щомісяця';

  @override
  String get paywallFeatureUnlimitedLists => 'Необмежені списки';

  @override
  String get paywallFeatureSmartAI => 'Розумний ШІ';

  @override
  String get paywallFeatureExpenseControl => 'Контроль витрат';

  @override
  String get paywallFeatureSharing => 'Обмін';

  @override
  String get paywallBeforeAfterTitle => 'ШІ до і після:';

  @override
  String get paywallLabelCommon => 'Поширений';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'рис';

  @override
  String get paywallBeforeItem2 => 'мило';

  @override
  String get paywallBeforeItem3 => 'м\'ясо';

  @override
  String get paywallBeforeItem4 => 'хліб';

  @override
  String get paywallAfterItem1 => 'Зерна';

  @override
  String get paywallAfterItem2 => 'прибирання';

  @override
  String get paywallAfterItem3 => 'м\'ясо';

  @override
  String get paywallAfterItem4 => 'Пекарня';

  @override
  String get paywallTestimonialsTitle => 'Що говорять наші користувачі:';

  @override
  String get paywallTestimonial1Name => 'Енн С.';

  @override
  String get paywallTestimonial1Text =>
      'ШІ організовує мої покупки за лічені секунди. Я заощаджую 20 хвилин на поїздці на ринок.';

  @override
  String get paywallTestimonial2Name => 'Чарльз М.';

  @override
  String get paywallTestimonial2Text =>
      'Я більше ніколи не забував жодного пункту списку. ШІ-чат — це сенсація!';

  @override
  String get paywallSocialProof => 'Нею користуються +2400 сімей';

  @override
  String get paywallCtaUnlock => 'Розблокуйте PRO';

  @override
  String get paywallBestValue => 'НАЙКРАЩА ЦІННІСТЬ';

  @override
  String get paywallMostPopular => 'НАЙПОПУЛЯРНІШИЙ';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Безпечна оплата';

  @override
  String get paywallSelectPlan => 'Виберіть свій план:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ЕКОНОМІЯ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Лише $price/місяць';
  }

  @override
  String get paywallPackageAnnual => 'Річний план';

  @override
  String get paywallPackageMonthly => 'Місячний план';

  @override
  String get paywallPackageLifetime => 'Довічний доступ';

  @override
  String get paywallCancelAnytime => 'Скасувати будь-коли. Без зобов\'язань.';

  @override
  String paywallTrialInCard(int days) {
    return 'Перші $days днів БЕЗКОШТОВНО';
  }

  @override
  String get paywallSecuredByStore =>
      'Захищено Google Play · Скасувати будь-коли';

  @override
  String get paywallPolicy => 'Політика конфіденційності';

  @override
  String get paywallTerms => 'Умови використання';

  @override
  String get paywallRestore => 'Відновити';

  @override
  String get paywallHeroHeadline => 'Kipi AI завжди поруч';

  @override
  String get paywallHeroSubtitle =>
      'Додавайте елементи, упорядковуйте списки та економте час за допомогою AI у вашій кишені';

  @override
  String get paywallBenefit1Desc =>
      'Додає, упорядковує та пропонує елементи 24/7';

  @override
  String get paywallBenefit2Desc => 'Немає обмежень на 3 списки';

  @override
  String get paywallBenefit3Desc => 'Відстеження витрат і сімейні списки';

  @override
  String get paywallPackageMonthlyDesc => 'Повна гнучкість';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Почніть безкоштовно — $days днів';
  }

  @override
  String get premiumUpgrade => 'Оновіть, щоб розблокувати';

  @override
  String get itemRemoved => 'Елемент видалено';

  @override
  String get undo => 'Скасувати';

  @override
  String get emptyListTitle => 'Ваш список порожній';

  @override
  String get emptyListSubtitle => 'Додайте елементи, щоб почати';

  @override
  String get noListFoundTitle => 'Списків не знайдено';

  @override
  String get noListFoundSubtitle => 'Створіть свій перший список, щоб почати';

  @override
  String get createFirstList => 'Створити перший список';

  @override
  String get listBudgetTitle => 'Бюджет списку';

  @override
  String get budgetAmountLabel => 'Сума бюджету';

  @override
  String get removeBudget => 'Видалити';

  @override
  String get prefUnlimitedLists => 'Необмежена кількість списків';

  @override
  String get prefSharing => 'Спільні списки';

  @override
  String get prefFullHistory => 'Повна історія';

  @override
  String get prefExportData => 'Експорт даних';

  @override
  String get prefCustomThemes => 'Користувацькі теми';

  @override
  String get prefMonthlyBudget => 'Глобальний місячний бюджет';

  @override
  String get prefAIAssistant => 'Персональний AI помічник';

  @override
  String get prefUnlimitedPantry => 'Необмежена комора';

  @override
  String get prefInteractiveArtifacts => 'Інтерактивні AI артефакти';

  @override
  String get themeGreen => 'Зелений';

  @override
  String get themeBlue => 'Синій';

  @override
  String get themePurple => 'Фіолетовий';

  @override
  String get themeRed => 'Червоний';

  @override
  String get themeOrange => 'Помаранчевий';

  @override
  String get themePink => 'Рожевий';

  @override
  String get themeIndigo => 'Індиго';

  @override
  String get themeAmber => 'Бурштин';

  @override
  String get themeTeal => 'Бірюзовий';

  @override
  String get themeBrown => 'Коричневий';

  @override
  String get catFruits => 'Фрукти';

  @override
  String get catCleaning => 'Прибирання';

  @override
  String get catBeverages => 'Напої';

  @override
  String get catBakery => 'Випічка';

  @override
  String get catOthers => 'Інше';

  @override
  String get unitPack => 'уп.';

  @override
  String get shareSubject => 'Список покупок';

  @override
  String get monthlyBudgetTitle => 'Місячний бюджет';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Видалити список';

  @override
  String get pantryItemRemoved => 'Елемент видалено';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit елемента потрібно купити',
      many: '$deficit елементів потрібно купити',
      few: '$deficit елементи потрібно купити',
      one: '$deficit елемент потрібно купити',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Всього в кошику';

  @override
  String get restockLabel => 'Поповнити';

  @override
  String get advancedFeatures => 'Розширені функції';

  @override
  String get selectAll => 'Вибрати все';

  @override
  String get deselectAll => 'Зняти вибір';

  @override
  String get monthlyBudgetAppBar => 'Місячний бюджет';

  @override
  String get budgetEditTitle => 'Місячний бюджет';

  @override
  String get budgetDashboardTitle => 'Панель керування';

  @override
  String get selectListForDashboard =>
      'Виберіть список, щоб переглянути панель керування.';

  @override
  String get spendingAnalysis => 'Аналіз витрат';

  @override
  String get noItemsToAnalyze => 'Немає елементів у списку для аналізу.';

  @override
  String get markItemsToSeeAnalysis =>
      'Позначте елементи як куплені, щоб побачити аналіз.';

  @override
  String get totalSpending => 'Загальні витрати';

  @override
  String get spendingByCategory => 'Витрати за категоріями';

  @override
  String get achievements => 'Досягнення';

  @override
  String get exportPdfExcel => 'Експорт PDF/Excel';

  @override
  String get exportPdf => 'Експорт як PDF';

  @override
  String get exportExcel => 'Експорт як Excel';

  @override
  String get organizingAi => 'ОРГАНІЗАЦІЯ ЗА ДОПОМОГОЮ AI...';

  @override
  String get yesLabel => 'Так';

  @override
  String get noLabel => 'Ні';

  @override
  String get shareListText => 'Мій список покупок';

  @override
  String get emptyListAddItems =>
      'Ваш список порожній! Спочатку додайте елементи. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Список магічно організовано за категоріями! ✨';

  @override
  String get shoppingMode => 'Режим покупок';

  @override
  String get smartOrganization => 'Розумна організація';

  @override
  String get savings => 'Економія';

  @override
  String get shoppingModeHeader => 'РЕЖИМ ПОКУПОК';

  @override
  String get shareAsText => 'Надіслати елементи як форматований текст';

  @override
  String get shareRealtime => 'Синхронізація в реальному часі з іншими людьми';

  @override
  String get quickRecipe => 'Швидкий рецепт';

  @override
  String get quickRecipePrompt =>
      'Запропонуйте рецепти з продуктами з мого списку.';

  @override
  String get economyTips => 'Поради з економії';

  @override
  String get economyTipsPrompt => 'Як я можу заощадити на цій покупці?';

  @override
  String get organizeAisles => 'Організувати за відділами';

  @override
  String get organizeAislesPrompt => 'Організувати за відділами магазину.';

  @override
  String get recipeSuggestion => 'Пропозиція рецепту';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Залишилося $remaining кредитів';
  }

  @override
  String get addAllToList => 'Додати все до списку';

  @override
  String get organizeByAisles => 'Організувати за відділами';

  @override
  String get voiceTranscriptionTooltip => 'Голосовий ввід (Безкоштовно)';

  @override
  String get aiVoiceCommandTooltip => 'AI голосова команда (Premium)';

  @override
  String get voiceCommandTitle => 'AI голосова команда';

  @override
  String get voiceCommandContent =>
      'Говоріть природно, щоб керувати списком!\n\nПриклади:\n• \'Додати хліб, сир і шинку\'\n• \'Видалити пральний порошок\'\n• \'Змінити тему на синю\'\n\nЦе ексклюзивна функція KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Переглянути плани';

  @override
  String get itemsAddedSuccess => 'Елементи успішно додано до списку!';

  @override
  String get viewList => 'Переглянути список';

  @override
  String get feedbackTitle => 'Надіслати відгук';

  @override
  String get feedbackPrompt => 'Чим ви хочете поділитися?';

  @override
  String get feedbackTypeBug => 'Повідомити про помилку';

  @override
  String get feedbackTypeBugHint => 'Щось не працює';

  @override
  String get feedbackTypeSuggestion => 'Пропозиція';

  @override
  String get feedbackTypeSuggestionHint => 'Ідея щодо покращення програми';

  @override
  String get feedbackTypeTranslation => 'Проблема з перекладом';

  @override
  String get feedbackTypeTranslationHint =>
      'Неправильний або неприродний переклад';

  @override
  String get feedbackTypeFeature => 'Запит функції';

  @override
  String get feedbackTypeFeatureHint => 'Функція, яку ви хотіли б бачити';

  @override
  String get feedbackTypeOther => 'Інше';

  @override
  String get feedbackTypeOtherHint => 'Інший тип відгуку';

  @override
  String get feedbackHint => 'Детально опишіть ваш відгук...';

  @override
  String get feedbackSend => 'Надіслати відгук';

  @override
  String get feedbackSending => 'Надсилання...';

  @override
  String get feedbackThankYou => 'Дякуємо!';

  @override
  String get feedbackThankYouMessage =>
      'Ваш відгук отримано, і він допомагає нам покращувати KipiList для всіх.';

  @override
  String get feedbackBack => 'Назад';

  @override
  String feedbackError(String error) {
    return 'Помилка надсилання: $error';
  }

  @override
  String get feedbackRetry => 'Спробувати ще раз';

  @override
  String get feedbackSettingsTitle => 'Надіслати відгук';

  @override
  String get feedbackSettingsSubtitle =>
      'Повідомляйте про помилки, пропонуйте покращення або виправляйте переклади';

  @override
  String get aiEnergy => 'AI Energy';

  @override
  String get searchInConversation => 'Пошук у розмові...';

  @override
  String get noMessagesFound => 'Повідомлень не знайдено';

  @override
  String get suggestedQuestions => 'Запропоновані запитання:';

  @override
  String get shoppingAssistant => 'Торговий помічник';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'Придбано $purchased з $total';
  }

  @override
  String get estimatedCost => 'Розрахункова';

  @override
  String get viewItems => 'Переглянути предмети';

  @override
  String get noItemsInList => 'Немає елементів у списку';

  @override
  String get longHistoryWarning =>
      'Довга історія: помічник зосереджується на останніх повідомленнях для кращої продуктивності.';

  @override
  String get listening => 'слухаю...';

  @override
  String get addDirectToList => 'Додайте безпосередньо до списку';

  @override
  String get unlockFullResponse => 'Розблокувати повну відповідь';

  @override
  String get switchList => 'Переключити список';

  @override
  String get marketMode => 'Ринковий режим';

  @override
  String get backToChat => 'Назад до чату';

  @override
  String get finishShopping => 'Завершіть покупки';

  @override
  String get welcomeAiAssistant => 'Ласкаво просимо до AI Assistant';

  @override
  String get createListToStartAi =>
      'Створіть список покупок, щоб почати користуватися розумним чатом.';

  @override
  String get howCanIHelp => 'Чим я можу допомогти?';

  @override
  String get chatSubtitleShort => 'Запитайте про ціни, рецепти, організацію...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total придбано';
  }

  @override
  String get quickReplies => 'Швидкі відповіді:';

  @override
  String get voiceProFeature =>
      'Розширені голосові команди Pro. Увімкнення основного диктування...';

  @override
  String get viewPro => 'Переглянути Pro';

  @override
  String get errorLoadingChat =>
      'Ой! Під час завантаження чату сталася помилка.';

  @override
  String get errorLoadingChatSubtitle =>
      'Перевірте підключення або повторіть спробу пізніше.';

  @override
  String get errorOscillation =>
      'Це може статися через коливання мережі або тимчасову недоступність. Спробуйте ще раз.';

  @override
  String get activeListening => 'Активне слухання';

  @override
  String get whatToDoWithItem => 'Що б ви хотіли зробити з цим предметом?';

  @override
  String get viewDetails => 'Переглянути деталі';

  @override
  String get openMenu => 'Відкрити меню';

  @override
  String get viewRecipe => 'Переглянути рецепт';

  @override
  String get recipeCreated => 'Рецепт створено!';

  @override
  String get editRecipe => 'Редагувати';

  @override
  String get deleteRecipe => 'Видалити';

  @override
  String get deleteRecipeConfirm => 'Видалити цей рецепт?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Ви впевнені, що хочете видалити \"$recipeName\"? Цю дію не можна скасувати.';
  }

  @override
  String get ingredients => 'Інгредієнти';

  @override
  String get instructions => 'Інструкції';

  @override
  String get prepTime => 'Час підготовки';

  @override
  String get recipeSaved => 'Рецепт збережено!';

  @override
  String get noRecipesSaved => 'Немає збережених рецептів';

  @override
  String get noRecipesSavedHint =>
      'Створіть свій перший індивідуальний рецепт, натиснувши кнопку нижче.';

  @override
  String get myRecipes => 'Мої рецепти';

  @override
  String get newRecipe => 'Новий рецепт';

  @override
  String get loadingRecipes => 'Завантаження ваших рецептів...';

  @override
  String get errorLoadingRecipes => 'Помилка завантаження рецептів';

  @override
  String get addIngredient => 'Додайте інгредієнт';

  @override
  String get saveRecipe => 'зберегти';

  @override
  String get recipeName => 'Назва рецепта';

  @override
  String get shortDescription => 'Короткий опис';

  @override
  String get prepTimeMinutes => 'Час приготування (хв)';

  @override
  String get instructionsHint => 'Введіть один крок на рядок...';

  @override
  String get addPhoto => 'Додайте фото';

  @override
  String get imageUrlPlaceholder => 'Або вставте URL-адресу зображення';

  @override
  String get tags => 'Теги';

  @override
  String get recipeTags => 'Теги рецептів';

  @override
  String get suggestedTags => 'Запропоновано';

  @override
  String get searchRecipes => 'Пошук рецептів...';

  @override
  String get filterByTag => 'Фільтрувати за тегом';

  @override
  String get allTags => 'всі';

  @override
  String get recipeDeleted => 'Рецепт видалено';

  @override
  String get saveChanges => 'Зберегти зміни';

  @override
  String get editRecipeTitle => 'Редагувати рецепт';

  @override
  String get newRecipeTitle => 'Новий рецепт';

  @override
  String get requiredField => 'Обов\'язковий';

  @override
  String get chooseImageSource => 'Виберіть джерело зображення';

  @override
  String get gallery => 'Галерея';

  @override
  String get enterUrl => 'Введіть URL';

  @override
  String get recipeImage => 'Зображення рецепта';

  @override
  String get removeImage => 'Видалити зображення';

  @override
  String get mealPlannerTitle => 'Планувальник їжі';

  @override
  String get mealPlannerViewMonthly => 'Місячний перегляд';

  @override
  String get mealPlannerViewWeekly => 'Тижневий перегляд';

  @override
  String get mealPlannerNoMeals => 'Харчування не планується';

  @override
  String get mealPlannerNoMealsHint => 'Торкніться дня, щоб додати страву';

  @override
  String get mealPlannerLoading => 'Завантаження плану харчування...';

  @override
  String get mealPlannerError => 'Помилка завантаження плану харчування';

  @override
  String get mealPlannerAddMeal => 'Додати їжу';

  @override
  String get mealPlannerEditMeal => 'Редагувати їжу';

  @override
  String get mealPlannerDeleteMeal => 'Видалити їжу';

  @override
  String get mealPlannerMealDeleted => 'Їжа видалена';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count порцій',
      one: '$count порцій',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Порції';

  @override
  String get mealPlannerNoteLabel => 'Примітка (необов\'язково)';

  @override
  String get mealPlannerSelectRecipe => 'Виберіть рецепт';

  @override
  String get mealPlannerSearchRecipes => 'Пошук рецептів...';

  @override
  String get mealPlannerNoRecipesFound => 'Рецептів не знайдено';

  @override
  String get mealPlannerNoRecipesHint =>
      'Спочатку створіть рецепти на вкладці «Рецепти».';

  @override
  String get mealPlannerSave => 'Додати до плану';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'Заплановано $count з $total прийомів їжі';
  }

  @override
  String get mealPlannerGenerateList => 'Створити список покупок';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Додати всі інгредієнти із запланованих страв цього тижня до списку покупок?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count інгредієнт(ів) додано до вашого списку!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Немає інгредієнтів для додавання. Спочатку сплануйте деякі страви за рецептами.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Спочатку створіть список покупок.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Сніданок';

  @override
  String get mealPlannerMealTypeLunch => 'обід';

  @override
  String get mealPlannerMealTypeDinner => 'Вечеря';

  @override
  String get mealPlannerMealTypeSnack => 'перекус';

  @override
  String get mealPlannerDateLabel => 'Дата';

  @override
  String get mealPlannerWeekEmpty => 'На цей тиждень нічого не планується';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Торкніться будь-якого дня, щоб почати планувати своє харчування!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes хв';
  }

  @override
  String get inviteToList => 'Запросити до списку';

  @override
  String get shareApp => 'Поділитися програмою';

  @override
  String get shareAppDescription => 'Запросіть друзів використовувати KipiList';

  @override
  String shareReferralText(String url) {
    return 'Для організації покупок використовую KipiList! Завантажте за моїм посиланням, і ми обоє отримаємо 7 днів безкоштовного доступу до Premium: $url';
  }

  @override
  String get shareReferralSubject => 'Отримайте 7 днів KipiList Premium!';

  @override
  String get gestureHint => 'Утримуйте, щоб вибрати • Проведіть, щоб видалити';

  @override
  String get catalogTitle => 'Каталог';

  @override
  String get catalogMyFrequents => 'Мої постійні відвідувачі';

  @override
  String get catalogSearchGlobal => 'Пошук будь-якого товару...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Шукати в $category...';
  }

  @override
  String get catalogSortPopular => 'Найпопулярніший';

  @override
  String get catalogSortAZ => 'А–Я';

  @override
  String get catalogFilterNational => 'Громадяни';

  @override
  String get catalogRareSection => 'рідше у вашій країні';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Додати $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Товар не знайдено, введіть назву';

  @override
  String get catalogBrowse => 'Перегляньте каталог';

  @override
  String get offlineBanner => 'Ви офлайн';

  @override
  String get consentTitle => 'Конфіденційність і аналітика';

  @override
  String get consentBody =>
      'KipiList використовує Firebase Analytics для покращення вашого досвіду. Ваші дані обробляються відповідно до нашої Політики конфіденційності.';

  @override
  String get consentAccept => 'прийняти';

  @override
  String get consentDecline => 'Ні, дякую';

  @override
  String get mealPlannerPantryAllAvailable => 'Всі інгредієнти в наявності';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 відсутні';
  }

  @override
  String get expirationDate => 'Термін придатності';

  @override
  String get notInformed => 'Не встановлено';

  @override
  String get skip => 'Пропустити';

  @override
  String get onboardingAiTitle => 'Побалакати з Кіпі';

  @override
  String get onboardingAiGreeting =>
      'привіт Я Кіпі, ваш особистий шопінг-помічник! 🛒';

  @override
  String get onboardingAiAskName => 'як тебе звуть';

  @override
  String get onboardingAiNameHint => 'Введіть своє ім\'я...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Приємно познайомитися, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Яка твоя улюблена їжа?';

  @override
  String get onboardingAiFoodHint => 'напр. Піца, суші...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Чудовий вибір! Ось що я б додав до вашого списку:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Це добре виглядає? Спробуйте ввести щось інше!';

  @override
  String get onboardingAiReady =>
      'Чудово! Ви готові почати. Давайте налаштуємо ваш обліковий запис!';

  @override
  String get onboardingAiContinue => 'Продовжити →';

  @override
  String get connectionError => 'Помилка підключення';

  @override
  String connectionErrorDesc(String error) {
    return 'Не вдалося підключитися до сервера. Перевірте свій Інтернет.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Помилка завантаження списків';

  @override
  String get noListsFound => 'Списків не знайдено';

  @override
  String get backToToday => 'Назад до сьогоднішнього дня';

  @override
  String get quickSuggestions => 'Швидкі пропозиції';

  @override
  String get aiEnergyLow => 'Низька енергія ШІ';

  @override
  String get aiUnlockUnlimited => 'Розблокуйте необмежений ШІ';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 сьогодні';
  }

  @override
  String get aiSubscribeUnlimited => 'Підпишіться на необмежений ШІ';

  @override
  String get unlockWithAd => 'Розблокувати за допомогою оголошення';

  @override
  String get conversationHistoryTitle => 'Історія розмов';

  @override
  String get noConversationsFound => 'Розмов не знайдено';

  @override
  String get errorLoadingHistory => 'Помилка завантаження історії';

  @override
  String get deleteConversationTitle => 'Видалити розмову?';

  @override
  String get deleteConversationConfirm => 'Цю дію не можна скасувати.';

  @override
  String get deleteConversation => 'Видалити';

  @override
  String get subscription => 'Підписка';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle =>
      'Розблокуйте необмежену кількість списків, штучний інтелект тощо';

  @override
  String get loadingSubscription => 'Завантаження підписки...';

  @override
  String get errorLoadingSubscription => 'Помилка завантаження підписки';

  @override
  String get profileSection => 'Профіль';

  @override
  String get myProfile => 'Мій профіль';

  @override
  String get profileSubtitle => 'Особисті переваги помічника AI';

  @override
  String get customizeAiAssistant => 'Налаштуйте помічник AI';

  @override
  String get assistantHistory => 'Історія помічника';

  @override
  String get assistantHistorySubtitle => 'Перегляньте історію розмов';

  @override
  String get manageCategories => 'Керування категоріями';

  @override
  String get manageCategoriesSubtitle => 'Керуйте категоріями предметів';

  @override
  String get customizeAssistant => 'Налаштувати';

  @override
  String get assistantName => 'Ім\'я помічника';

  @override
  String get chooseIcon => 'Виберіть значок';

  @override
  String get profileSaved => 'Профіль успішно збережено!';

  @override
  String get errorSavingProfile => 'Помилка збереження: null';

  @override
  String get userProfile => 'Профіль користувача';

  @override
  String get profileDescription =>
      'Розкажіть нам про свої особисті вподобання, щоб помічник ШІ міг запропонувати персоналізовані продукти та рецепти.';

  @override
  String get preferredMarket => 'Привілейований ринок';

  @override
  String get preferredMarketHint => 'Наприклад: Супермаркет X';

  @override
  String get dietaryRestrictions => 'Дієтичні обмеження';

  @override
  String get dietaryRestrictionsHint =>
      'Наприклад: веганський, вегетаріанський, безглютеновий';

  @override
  String get marketsToAvoid => 'Ринки, яких слід уникати';

  @override
  String get marketsToAvoidHint => 'Наприклад: Ринок Y, Ринок Z';

  @override
  String get observations => 'Примітки';

  @override
  String get observationsHint => 'Інші переваги для помічника';

  @override
  String get saveProfile => 'Зберегти профіль';

  @override
  String get everythingReady => 'Все готово!';

  @override
  String get youCompletedList => 'Ви завершили список!';

  @override
  String get selectCheaperAlternative =>
      'Виберіть дешевшу альтернативу продукту, щоб оптимізувати витрати.';

  @override
  String get suggestedItems => 'Запропоновані елементи';

  @override
  String get swapped => 'Поміняно місцями';

  @override
  String get swap => 'Обмін';

  @override
  String get chooseThemeColor => 'Виберіть колір теми';

  @override
  String get manageCategoriesTitle => 'Керування категоріями';

  @override
  String get categoryLimitReached =>
      'Обмеження в 10 категорій у безкоштовній версії. Оновіть до Pro!';

  @override
  String get deleteCategoryTitle => 'Видалити категорію';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Елементи в категорії \"$category\" буде переміщено в \"Інші\".\nПродовжити?';
  }

  @override
  String get deleteCategory => 'Видалити';

  @override
  String get newCategoryDialog => 'Нова категорія';

  @override
  String get editCategoryDialog => 'Редагувати категорію';

  @override
  String get categoryName => 'Назва категорії';

  @override
  String get categoryNameHint => 'Наприклад: м\'ясо';

  @override
  String get categoryColorLabel => 'Колір';

  @override
  String get categoryIconLabel => 'значок';

  @override
  String itemAddedSnack(String name) {
    return '$name додано';
  }

  @override
  String get kipiQuickBarHint => 'Що вам потрібно купити?';

  @override
  String replaceItem(String item) {
    return 'Замінити $item';
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
      'Ніколи більше не забувайте про продуктовий товар';

  @override
  String get onboardingGoalSaveMoney => 'Економте гроші';

  @override
  String get onboardingGoalNeverForget => 'Ніколи не забувайте предмети';

  @override
  String get onboardingGoalFaster => 'Купуйте швидше';

  @override
  String get onboardingGoalFamily => 'Організуйте сімейний шопінг';

  @override
  String get onboardingGoalRecipes => 'Відкрийте рецепти';

  @override
  String get onboardingGoalPantry => 'Трек комора';

  @override
  String get onboardingCommitmentsTitle => 'Що для вас важливо?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Виберіть свої цілі, щоб персоналізувати KipiList';

  @override
  String get onboardingCommitmentsCta => 'ходімо!';

  @override
  String get onboardingPersonalizationNameLabel => 'Ваше ім\'я';

  @override
  String get onboardingPersonalizationNameHint => 'Введіть своє ім\'я';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Що ви купуєте?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Для кого ти робиш покупки?';

  @override
  String get onboardingCategoryGrocery => 'Бакалія';

  @override
  String get onboardingCategoryPharmacy => 'АПТЕКА';

  @override
  String get onboardingCategoryRecipes => 'рецепти';

  @override
  String get onboardingCategoryHome => 'додому';

  @override
  String get onboardingCategoryPet => 'Домашня тварина';

  @override
  String get onboardingGroupSolo => 'просто я';

  @override
  String get onboardingGroupCouple => 'Пара';

  @override
  String get onboardingGroupFamily => 'Сім\'я';

  @override
  String get onboardingLoadingTitle => 'Готуємо ваш досвід...';

  @override
  String get onboardingLoadingStep1 => 'Аналіз ваших уподобань...';

  @override
  String get onboardingLoadingStep2 => 'Налаштування помічника ШІ...';

  @override
  String get onboardingLoadingStep3 => 'Майже готовий...';

  @override
  String get onboardingLoadingStat1Label => 'Предмети каталогізовані';

  @override
  String get onboardingLoadingStat2Label => 'Користувачі допомогли';

  @override
  String get onboardingLoadingStat3Label => 'Збережені хвилини';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, економте на кожній поїздці!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, ніколи нічого не забувай!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, купуйте вдвічі швидше!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, організовуйте сімейний шопінг!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, відкривай нові рецепти!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, відстежуй свою комору ідеально!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Економте на кожній поїздці!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Ніколи не забувайте предмет!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Купуйте вдвічі швидше!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Організуйте сімейний шопінг!';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'Відкрийте для себе нові рецепти!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Ідеально відстежуйте свою комору!';

  @override
  String paywallPricePerDay(String price) {
    return 'Лише $price/день — менше кави';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Пропустити поки що';

  @override
  String get paywallTestimonial =>
      'ШІ організовує мої покупки за лічені секунди. Я економлю 20 хвилин на поїздці.';

  @override
  String get paywallTestimonialAuthor => 'Енн С.';

  @override
  String get paywallTrialDisclaimer =>
      'Скасувати будь-коли · Безкоштовно, доки не закінчиться пробний період';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Привіт $name! Що $category вам потрібно?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Що $category вам потрібно?';
  }

  @override
  String get onboardingAiDemoYes => 'так!';

  @override
  String get onboardingAiDemoReaction => 'приємно!';

  @override
  String get onboardingAiDemoChange => 'Змінити товар';

  @override
  String get onboardingAiDemoOffer => 'Спробуйте ввести щось інше!';

  @override
  String get onboardingAiDemoContinue => 'Продовжити';

  @override
  String get onboardingAiDemoSlideHeadline => 'Your shopping list, now with AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'See how Kipi builds your full list in seconds';

  @override
  String get onboardingAiDemoSlideCta => 'I want this! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'I\'m hosting a barbecue 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Ready! Here\'s everything you need:';

  @override
  String get onboardingAiDemoSlideDone => 'Complete list in seconds ✨';

  @override
  String get onboardingPainTitle => 'What frustrates you most?';

  @override
  String get onboardingPainSubtitle => 'Be honest — we\'ll fix each one';

  @override
  String get onboardingPainCta => 'Yes, fix this for me →';

  @override
  String get onboardingPainForget => 'I forget items at the store';

  @override
  String get onboardingPainFamily => 'My family never sees the list';

  @override
  String get onboardingPainOverspend => 'I always go over budget';

  @override
  String get onboardingPainRepeat => 'One trip is never enough';
}
