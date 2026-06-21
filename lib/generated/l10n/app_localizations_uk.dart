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
  String pantryDeficitCount(int count, String unit) {
    return 'Відсутній $count$unit';
  }

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
  String get scanProductTitle => 'Сканувати продукт';

  @override
  String get positionBarcodeCenter => 'Розмістіть штрих-код у центрі';

  @override
  String get product => 'Продукт';

  @override
  String get settingsAppBar => 'Налаштування';

  @override
  String get preferencesSection => 'Уподобання';

  @override
  String get aiSection => 'ШІ помічник';

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
  String get themeMode => 'Тематичний режим';

  @override
  String get chooseThemeMode => 'Виберіть режим теми';

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
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count днів',
      one: '$count днів',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Розблоковані значки';

  @override
  String get badgeBeginner => 'Початківець';

  @override
  String get badgeOrganized => 'Організовано';

  @override
  String get badgeSavingMaster => 'Спасибі Майстра';

  @override
  String get badgeSuperPlanner => 'Супер планувальник';

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
    return '$purchased з $total елементів';
  }

  @override
  String progressBudget(String amount) {
    return 'Бюджет: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Усього: $amount';
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
  String get keepAdding => 'Продовжуйте додавати';

  @override
  String get keepAddingSubtitle =>
      'Тримайте аркуш відкритим, щоб додати кілька елементів';

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
  String get chatEmptySubtitle =>
      'Щоб почати, попросіть пропозицій щодо продуктів, рецептів або порад щодо збереження.';

  @override
  String get chatEmptyTitle => 'Ваш чат порожній';

  @override
  String chatError(String error) {
    return 'Помилка завантаження чату: $error';
  }

  @override
  String get goodResponse => 'Хороша відповідь';

  @override
  String get badResponse => 'Погана відповідь';

  @override
  String get scrollToBottom => 'Прокрутіть вниз';

  @override
  String get somethingWentWrong => 'Щось пішло не так';

  @override
  String get editMessage => 'Редагувати повідомлення';

  @override
  String get searchConversations => 'Пошук розмов';

  @override
  String get dateGroupToday => 'Сьогодні';

  @override
  String get dateGroupYesterday => 'вчора';

  @override
  String get dateGroupPrevious7Days => 'Попередні 7 днів';

  @override
  String get dateGroupOlder => 'Старший';

  @override
  String get aiAssistantTitle => 'ШІ помічник';

  @override
  String get closeSheet => 'Закрити';

  @override
  String get scanBarcodeTitle => 'Сканувати штрих-код';

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
  String get undo => 'Скасувати';

  @override
  String get newChatStarted => 'New chat started';

  @override
  String get quickAddToList => 'Add to list';

  @override
  String get aiCapabilitiesTitle => 'What can I do?';

  @override
  String get aiCapabilitiesLists => 'Shopping Lists';

  @override
  String get aiCapabilitiesBudget => 'Budget & Prices';

  @override
  String get aiCapabilitiesRecipes => 'Recipes & Menus';

  @override
  String get aiCapabilitiesOrganize => 'Organization';

  @override
  String get marketModeDescription => 'Check off items as you shop';

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
  String get recipeAddError =>
      'Не вдалося додати до вашого списку. Спробуйте ще раз.';

  @override
  String get recipeTapToCheck =>
      'Торкніться інгредієнта, щоб позначити його під час приготування';

  @override
  String get recipeIngredientInPantry => 'У коморі';

  @override
  String get recipeIngredientLowPantry => 'Низько в коморі';

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
  String paywallSavePercent(int percent) {
    return 'ЕКОНОМІЯ $percent%';
  }

  @override
  String paywallPricePerMonth(String price) {
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
  String get paywallTimelineToday => 'Сьогодні';

  @override
  String get paywallTimelineTodayDesc => 'Миттєво розблокуйте повний доступ';

  @override
  String paywallTimelineDay(int day) {
    return 'День $day';
  }

  @override
  String get paywallTimelineReminderDesc =>
      'Нагадуємо вам до завершення випробування';

  @override
  String get paywallTimelineChargeDesc =>
      'Ваша підписка починається — будь-коли скасуйте її';

  @override
  String get paywallHeroFeatureTitle => 'AI Shopping Assistant';

  @override
  String get paywallHeroFeatureDesc =>
      'Продиктуйте або вставте цілий список — штучний інтелект сортує, класифікує та розподіляє його за лічені секунди';

  @override
  String get paywallBasedOnAnswers => 'Персоналізовано з ваших відповідей';

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
  String get paywallWelcomeOfferBadge => '🎁 Вітальна пропозиція';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Почніть безкоштовно — $days днів';
  }

  @override
  String get premiumUpgrade => 'Оновіть, щоб розблокувати';

  @override
  String get itemRemoved => 'Елемент видалено';

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
  String get pantryItemAdded => 'Товар додано';

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
  String get recipeYieldServings => 'Вихід порцій';

  @override
  String get recipeManualTotalCost => 'Ручна загальна вартість';

  @override
  String get recipeManualTotalCostHint =>
      'Залиште пустим, щоб оцінити вартість інгредієнтів.';

  @override
  String get recipeEstimatedTotalCost => 'Орієнтовна загальна вартість';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / порція';
  }

  @override
  String recipeServesCount(int count) {
    return 'Обслуговує $count';
  }

  @override
  String get recipeEstimatePartial =>
      'Часткова оцінка на основі інгредієнтів із ціною.';

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
  String get mealPlannerEstimatePartial =>
      'Оцінка на основі рецептів із частковими даними про ціни.';

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
  String get catalogRareBadge => 'Рідкісний';

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
  String get catalogCategories => 'Категорії';

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
  String get mealPlannerManageTypes => 'Керуйте типами їжі';

  @override
  String get mealPlannerAddType => 'Додайте тип їжі';

  @override
  String get mealPlannerEditType => 'Змінити тип їжі';

  @override
  String get mealPlannerTypeName => 'Ім\'я';

  @override
  String get mealPlannerTypeColor => 'Колір';

  @override
  String get mealPlannerTypeIcon => 'значок';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      'Ви впевнені, що хочете видалити цей тип їжі? Планове харчування цього типу залишиться.';

  @override
  String get mealPlannerTypeNameEmpty => 'Назва не може бути пустою';

  @override
  String get mealPlannerTypeDeleteError => 'Неможливо видалити цей тип їжі.';

  @override
  String get mealPlannerCustomTypeLabel => 'Спеціальний тип';

  @override
  String get mealPlannerDefaultTypeLabel => 'Тип за замовчуванням';

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
  String get errorLoadingItems => 'Помилка завантаження елементів';

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
  String get onboardingAiDemoSlideHeadline => 'Ваш список покупок тепер із ШІ';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Подивіться, як Kipi створює ваш повний список за лічені секунди';

  @override
  String get onboardingAiDemoSlideCta => 'Я хочу це! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Я влаштовую шашлик🔥';

  @override
  String get onboardingAiDemoSlideReady => 'Готовий! Ось все, що вам потрібно:';

  @override
  String get onboardingAiDemoSlideDone => 'Повний список за секунди ✨';

  @override
  String get onboardingPainTitle => 'Що вас найбільше засмучує?';

  @override
  String get onboardingPainSubtitle => 'Будьте чесними — ми виправимо кожен';

  @override
  String get onboardingPainCta => 'Так, виправте це для мене →';

  @override
  String get onboardingPainForget => 'Я забуваю речі в магазині';

  @override
  String get onboardingPainFamily => 'Моя родина ніколи не бачить цього списку';

  @override
  String get onboardingPainOverspend => 'Я завжди перевищую бюджет';

  @override
  String get onboardingPainRepeat => 'Однієї поїздки ніколи не буває достатньо';

  @override
  String get aiWelcomeContent =>
      'Привіт! 👋 Я **Кіпі**, ваш особистий помічник у покупках і рецептах!\n\nЯ тут, щоб допомогти вам:\n🛒 **Автоматично організуйте** ваші покупки за категоріями\n💰 **Відстежуйте** свій бюджет і давайте поради щодо економії грошей\n🍲 **Пропонуйте** смачні рецепти з того, що у вас уже є\n\nЧим я можу тобі допомогти сьогодні? Ви можете почати зі створення свого першого списку!';

  @override
  String get aiWelcomeSuggestCreateList => 'Створіть мій перший список';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Кіпі, допоможи мені створити мій перший список покупок';

  @override
  String get aiWelcomeSuggestSave => 'Як заощадити?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Кіпі, як ти можеш допомогти мені заощадити на продуктах?';

  @override
  String get suggestionMilk => 'молоко';

  @override
  String get suggestionBread => 'Хліб';

  @override
  String get suggestionEggs => 'Яйця';

  @override
  String get suggestionCoffee => 'кава';

  @override
  String get suggestionRice => 'Рис';

  @override
  String get suggestionFruits => 'Фрукти';

  @override
  String get recipeIngredientSingular => '1 інгредієнт';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count інгредієнтів';
  }

  @override
  String get pantryAvailabilityAll => 'Все готово!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return '$availableCount/$totalCount в коморі';
  }

  @override
  String onboardingProgress(int current, int total) {
    return 'Крок $current з $total';
  }

  @override
  String get onboardingDemoHeadline =>
      'Розкажіть нам, що ви плануєте. Kipi створює список.';

  @override
  String get onboardingDemoSubtitle =>
      'Упорядкуйте предмети за лічені секунди.';

  @override
  String get onboardingPersonalizationEffect =>
      'Це допомагає Kipi пропонувати більш відповідні товари та кількість.';

  @override
  String get onboardingPersonalizeWithName => 'Персоналізувати з моїм іменем';

  @override
  String get onboardingCreateFirstList => 'Створіть мій перший список';

  @override
  String get onboardingPromptWeekly =>
      'Плануйте щотижневі речі першої необхідності';

  @override
  String get onboardingPromptEvent => 'Готую щось особливе';

  @override
  String get onboardingPromptEssentials => 'Запропонуйте мені найнеобхідніше';

  @override
  String get onboardingFallbackGrocery =>
      '🍚 Рис|🫘 Квасоля|🥛 Молоко|🥚 Яйця|🍞 Хліб|🍎 Фрукти';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 Пластири|🌡️ Термометр|🧴 Антисептик|😷 Маски для обличчя|🧼 Дезінфікуючий засіб для рук';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 Помідори|🧅 Цибуля|🧄 Часник|🥚 Яйця|🧀 Сир|🌿 Свіжа зелень';

  @override
  String get onboardingFallbackHome =>
      '🧻 Паперові рушники|🧽 Губки|🧴 Миючий засіб|🗑️ Пакети для сміття|🧹 Серветки для чищення';

  @override
  String get onboardingFallbackPet =>
      '🥣 Корм ​​для тварин|🦴 Ласощі|🧼 Шампунь для домашніх тварин|🧸 Іграшка|🧻 Мішки для сміття';

  @override
  String get onboardingListSaveFailed =>
      'Я підготував елементи, але не зміг зберегти список. Спробуйте залишити його в додатку ще раз.';

  @override
  String onboardingListCreated(int count) {
    return 'Ваш список готовий: $count елементів, організованих для вас.';
  }

  @override
  String get onboardingContinueToOffer => 'Продовжити';

  @override
  String onboardingPaywallListReady(int count) {
    return 'Ваш перший список готовий · $count елементів';
  }

  @override
  String get paywallContinueFree =>
      'Продовжте користуватися безкоштовною версією';

  @override
  String get paywallPurchasePending =>
      'Ваш платіж очікує на підтвердження. Доступ буде звільнено автоматично після підтвердження.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return 'Сьогодні: безкоштовно. Потім $price/рік через $days днів. Скасувати будь-коли.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return 'Сьогодні: безкоштовно. Потім $price/місяць через $days днів. Скасувати будь-коли.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price/рік. Скасувати будь-коли.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/місяць. Скасувати будь-коли.';
  }

  @override
  String get obHookTitle => 'Розумні покупки починаються тут';

  @override
  String get obHookSubtitle =>
      'Списки на основі штучного інтелекту, які економлять ваш час і гроші під час кожної подорожі.';

  @override
  String get obHookSocial => 'Довіряють тисячі покупців у всьому світі';

  @override
  String get obHookCta => 'Почніть роботу';

  @override
  String get obQuizHouseholdTitle => 'Для кого ти робиш покупки?';

  @override
  String get obQuizHouseholdSolo => 'просто я';

  @override
  String get obQuizHouseholdCouple => 'Я і мій партнер';

  @override
  String get obQuizHouseholdFamilySmall => 'Сім\'я з 3-4 осіб';

  @override
  String get obQuizHouseholdFamilyLarge => 'Сім\'я 5+';

  @override
  String get obQuizFrequencyTitle => 'Як часто ви купуєте продукти?';

  @override
  String get obQuizFrequencyDaily => 'Майже кожен день';

  @override
  String get obQuizFrequencyWeekly => 'Раз на тиждень';

  @override
  String get obQuizFrequencyBiweekly => 'Кожні два тижні';

  @override
  String get obQuizFrequencyMonthly => 'Великий місячний прибуток';

  @override
  String get obQuizPainTitle => 'Що вас найбільше засмучує в покупках?';

  @override
  String get obQuizPainForget => 'Я завжди забуваю речі';

  @override
  String get obQuizPainOverspend => 'Я витрачаю більше, ніж планував';

  @override
  String get obQuizPainWaste => 'Вдома їжа йде на сміття';

  @override
  String get obQuizPainTime => 'Це займає занадто багато часу';

  @override
  String get obQuizSavingsTitle => 'Скільки б ви хотіли щомісяця заощаджувати?';

  @override
  String get obQuizSavingsSmall => 'Трохи — кожна частинка має значення';

  @override
  String get obQuizSavingsMedium => 'Близько 10% мого рахунку за продукти';

  @override
  String get obQuizSavingsLarge => 'Якомога більше';

  @override
  String get obQuizMethodTitle => 'Як ви сьогодні складаєте списки покупок?';

  @override
  String get obQuizMethodPaper => 'Ручка і папір';

  @override
  String get obQuizMethodNotes => 'Додаток для нотаток';

  @override
  String get obQuizMethodMemory => 'Я тримаю це в голові';

  @override
  String get obQuizMethodNone => 'Я не складаю списки';

  @override
  String get obSocialTitle => 'Ти в хорошій компанії';

  @override
  String get obSocialSubtitle =>
      'Такі покупці, як ви, вже економлять за допомогою KipiList';

  @override
  String get obSocialQuote1 =>
      'Я більше ніколи нічого не забуваю. ШІ створює мій список за секунди.';

  @override
  String get obSocialQuote2 =>
      'У перший місяць ми помітно скоротили рахунок за продукти.';

  @override
  String get obSocialQuote3 =>
      'Поділившись списком із моїм партнером, наш шопінговий хаос закінчився.';

  @override
  String get obLoadingTitle => 'Створення індивідуального плану...';

  @override
  String get obLoadingStepProfile => 'Налаштування під ваше домогосподарство';

  @override
  String get obLoadingStepHabits => 'Налаштуйтеся на свій розпорядок покупок';

  @override
  String get obLoadingStepSavings => 'Оптимізація стратегії заощаджень';

  @override
  String get obLoadingStepLists => 'Підготовка розумних списків';

  @override
  String get obRevealTitle => 'Ваш план готовий!';

  @override
  String get obRevealSubtitle => 'Ось як KipiList буде працювати для вас';

  @override
  String get obRevealSavingsCaption =>
      'Прогнозована економія за допомогою KipiList';

  @override
  String obRevealMonth(int n) {
    return 'Місяць $n';
  }

  @override
  String get obRevealFeatureAi => 'AI створює та впорядковує ваші списки';

  @override
  String get obRevealFeatureBudget =>
      'Витрати відстежуються відповідно до вашої цілі';

  @override
  String get obRevealFeaturePantry =>
      'Відстеження комори скорочує харчові відходи';

  @override
  String get obRevealFeatureShare =>
      'Спільний доступ у реальному часі до вашої родини';

  @override
  String get obPaywallTitle => 'Розблокуйте свій план';

  @override
  String get obPaywallRetry => 'Спробуйте знову';

  @override
  String get obLoginTitle => 'Збережіть свій план';

  @override
  String get obLoginSubtitle =>
      'Увійдіть, щоб ваші списки синхронізувалися на всіх пристроях';

  @override
  String get obLoginGoogle => 'Продовжуйте з Google';

  @override
  String get obLoginApple => 'Продовжуйте з Apple';

  @override
  String get obLoginSkip => 'Не зараз';

  @override
  String get obLoginError =>
      'Помилка входу. Спробуйте ще раз або поки що пропустіть.';

  @override
  String get searchMessages => 'Пошук повідомлень...';

  @override
  String get deletedList => 'Видалений список';

  @override
  String get openConversation => 'Відкрита розмова';

  @override
  String get userRole => 'Ви';

  @override
  String get assistantRole => 'помічник';

  @override
  String get agentActionsRunning => 'Запуск дій...';

  @override
  String get agentActionsFailed => 'Не вдалося виконати дії';

  @override
  String get agentActionsPremium => 'Дії потребують Premium';

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
  String get undoChanges => 'Скасувати зміни';

  @override
  String premiumStepDescription(String description) {
    return '$description (Преміум)';
  }

  @override
  String get itemAddedToList => 'Елемент додано до списку.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return 'Попередній стан: $quantity $unit [$category]$price';
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
      'Підпишіться на Premium, щоб розблокувати автоматичні дії.';

  @override
  String get viewPlans => 'Переглянути плани';

  @override
  String get artifactSynced => 'Синхронізовано';

  @override
  String get artifactBudgetLabel => 'бюджет:';

  @override
  String get totalEstimatedLabel => 'Розрахункова сума';

  @override
  String get quickActionPantry => 'Переглянути комору';

  @override
  String get quickActionAi => 'Побалакати з Кіпі';

  @override
  String aiApiError(int statusCode) {
    return 'Служба AI повернула помилку ($statusCode).';
  }

  @override
  String get aiTimeoutError => 'Запит тривав надто довго. Спробуйте ще раз.';

  @override
  String get aiConnectionError =>
      'Не вдалося підключитися до служби AI. Перевірте підключення.';

  @override
  String get aiEmptyResponseError => 'Служба AI повернула порожню відповідь.';

  @override
  String get aiInvalidResponseError =>
      'Служба AI повернула недійсну відповідь.';

  @override
  String get categoryFruits => 'Фрукти';

  @override
  String get categoryCleaning => 'прибирання';

  @override
  String get categoryBeverages => 'Напої';

  @override
  String get categoryBakery => 'Пекарня';

  @override
  String get categoryMeat => 'м\'ясо';

  @override
  String get categoryDairy => 'Молочна';

  @override
  String get categoryVegetables => 'Овочі';

  @override
  String get categoryGrains => 'Зерно і крупи';

  @override
  String get categoryHygiene => 'Особистий догляд';

  @override
  String get categoryFrozen => 'Заморожені продукти';

  @override
  String get categoryCanned => 'Консерви';

  @override
  String get categorySeasonings => 'Приправи';

  @override
  String get categorySweets => 'Солодощі та десерти';

  @override
  String get categoryAlcohol => 'Алкогольні напої';

  @override
  String get categoryFish => 'риба';

  @override
  String get categoryColdCuts => 'Нарізки';

  @override
  String get categoryUtilities => 'Господарські товари';

  @override
  String get categoryPet => 'Товари для тварин';

  @override
  String get categoryBaby => 'дитина';

  @override
  String get categoryOthers => 'інше';

  @override
  String chatEmptyGreeting(String name) {
    return 'Привіт $name, я Кіпі 👋';
  }

  @override
  String get chatEmptyGreetingNoName => 'Привіт, я Кіпі 👋';

  @override
  String get chatEmptyPitch =>
      'Я складаю списки, пропоную рецепти та знаходжу, де зберегти. З чого ми починаємо?';

  @override
  String get aiWelcomeSuggestBarbecue => 'Плануйте барбекю';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'Кіпі, я влаштовую барбекю — допоможи мені скласти список покупок';

  @override
  String get aiRateLimitError =>
      'Забагато повідомлень за короткий час. Зачекайте кілька секунд і повторіть спробу.';

  @override
  String get chatHistoryErrorTitle => 'Не вдалося завантажити цю розмову';

  @override
  String get chatHistoryErrorBody =>
      'З нашого боку щось пішло не так. Торкніться «Повторити», щоб повторити спробу.';

  @override
  String get chatHistoryOfflineTitle => 'Ви офлайн';

  @override
  String get chatHistoryOfflineBody =>
      'Перевірте підключення до Інтернету та повторіть спробу.';

  @override
  String get aiGeneratingResponse => 'Створення відповіді…';
}
