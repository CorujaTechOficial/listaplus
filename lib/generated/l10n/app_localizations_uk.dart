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
  String get navChat => 'Chat';

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
  String get profile => 'Profile';

  @override
  String get exitShoppingMode => 'Exit Shopping Mode';

  @override
  String get exit => 'Exit';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Вибрано $count',
      many: 'Вибрано $count',
      few: 'Вибрано $count',
      one: 'Вибрано $count',
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
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

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
  String get paywallTrialTitle => 'Try for free!';

  @override
  String get paywallTrialSubtitle => 'Cancel anytime. No charge today.';

  @override
  String get paywallTrialCta => 'Start Free Trial';

  @override
  String get recipeAddToList => 'Add to shopping list';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 added to $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Все, що вам потрібно:';

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
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

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
  String shareReferralText(Object url) {
    return 'Для організації покупок використовую KipiList! Завантажте за моїм посиланням, і ми обоє отримаємо 7 днів безкоштовного доступу до Premium: $url';
  }

  @override
  String get shareReferralSubject => 'Отримайте 7 днів KipiList Premium!';

  @override
  String get gestureHint => 'Hold to select • Swipe to remove';

  @override
  String get catalogTitle => 'Catalog';

  @override
  String get catalogMyFrequents => 'My Frequents';

  @override
  String get catalogSearchGlobal => 'Search any product...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Search in $category...';
  }

  @override
  String get catalogSortPopular => 'Most popular';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nationals';

  @override
  String get catalogRareSection => 'less common in your country';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Add $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Product not found, type the name';

  @override
  String get catalogBrowse => 'Browse Catalog';

  @override
  String get offlineBanner => 'You are offline';

  @override
  String get consentTitle => 'Privacy & Analytics';

  @override
  String get consentBody =>
      'KipiList uses Firebase Analytics to improve your experience. Your data is processed according to our Privacy Policy.';

  @override
  String get consentAccept => 'Accept';

  @override
  String get consentDecline => 'No, thanks';

  @override
  String get mealPlannerPantryAllAvailable => 'All ingredients available';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 missing';
  }

  @override
  String get expirationDate => 'Expiration date';

  @override
  String get notInformed => 'Not set';

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
  String get manageCategoriesTitle => 'Manage Categories';

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
  String get sortAZ => 'A-Z';

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
  String get backToToday => 'Back to today';

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
