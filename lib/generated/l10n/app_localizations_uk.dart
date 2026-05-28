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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Системна за замовчуванням';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get currency => 'Currency';

  @override
  String get chooseCurrency => 'Select Currency';

  @override
  String get searchCurrency => 'Search currency...';

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
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

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
  String get newChat => 'New Chat';

  @override
  String get noHistory => 'No chat history';

  @override
  String get deleteSession => 'Delete Chat';

  @override
  String get deleteSessionConfirm =>
      'Are you sure you want to delete this chat? The messages will be permanently lost.';

  @override
  String get clearHistory => 'Очистити історію';

  @override
  String get clearHistoryConfirm => 'Очистити всі повідомлення в цьому сеансі?';

  @override
  String get chatHint => 'Напишіть своє повідомлення...';

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Увійдіть, щоб розблокувати\nпреміум-функції';

  @override
  String get signInGoogle => 'Увійти через Google';

  @override
  String get signInApple => 'Увійти через Apple';

  @override
  String get continueAsGuest => 'Продовжити як гість';

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
    return 'Помилка входу: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'Говоріть природно, щоб керувати списком!\n\nПриклади:\n• \'Додати хліб, сир і шинку\'\n• \'Видалити пральний порошок\'\n• \'Змінити тему на синю\'\n\nЦе ексклюзивна функція Lista Plus Premium.';

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
      'Ваш відгук отримано, і він допомагає нам покращувати Lista Plus для всіх.';

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
