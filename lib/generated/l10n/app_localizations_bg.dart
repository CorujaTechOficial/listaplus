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
  String get navChat => 'Чат';

  @override
  String get navRecipes => 'Рецепти';

  @override
  String get navLists => 'Списъци';

  @override
  String get navMealPlanner => 'Меню';

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
  String get next => 'Следваща';

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
  String get profile => 'Профил';

  @override
  String get exitShoppingMode => 'Излезте от режим Пазаруване';

  @override
  String get exit => 'Изход';

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
  String get languagePortuguese => 'португалски (Бразилия)';

  @override
  String get languageEnglish => 'английски';

  @override
  String get languageSystem => 'Системен по подразбиране';

  @override
  String get chooseLanguage => 'Избери език';

  @override
  String get searchLanguage => 'Търси език...';

  @override
  String get currency => 'Валута';

  @override
  String get chooseCurrency => 'Изберете Валута';

  @override
  String get searchCurrency => 'Търсене на валута...';

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
  String get dynamicColorsEnabledWarning =>
      'Деактивирайте динамичните цветове, за да влезе в сила цветът на темата';

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
  String get newChat => 'Нов чат';

  @override
  String get noHistory => 'Няма история на чатовете';

  @override
  String get deleteSession => 'Изтриване на чат';

  @override
  String get deleteSessionConfirm =>
      'Сигурни ли сте, че искате да изтриете този чат? Съобщенията ще бъдат загубени завинаги.';

  @override
  String get clearHistory => 'Изчисти историята';

  @override
  String get clearHistoryConfirm =>
      'Изтриване на всички съобщения в тази сесия?';

  @override
  String get chatHint => 'Напиши съобщението си...';

  @override
  String get chatHintBlocked => 'Отключете AI за чат';

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
  String get aiLimitAlmostReached => 'Почти свършиха AI съобщенията';

  @override
  String get unlockAi => 'Отключете неограничен AI';

  @override
  String get aiTeaserFallback =>
      'Абонирайте се за Premium, за да отключите пълния отговор и да получите неограничени AI съвети за вашето пазаруване...';

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
  String get loginPrompt => 'Влез, за да отключиш\nPremium функции';

  @override
  String get signInGoogle => 'Вход с Google';

  @override
  String get signInApple => 'Вход с Apple';

  @override
  String get continueAsGuest => 'Продължи като гост';

  @override
  String get onboardingWelcomeTitle => 'Добре дошли в KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Най-умният начин да организирате пазаруването си и да спестите пари.';

  @override
  String get onboardingSetupTitle => 'Персонализирайте вашето преживяване';

  @override
  String get onboardingSetupDesc =>
      'Изберете как искате KipiList да изглежда и да работи за вас.';

  @override
  String get onboardingLoginTitle => 'Запазете всичко в облака';

  @override
  String get onboardingLoginDesc =>
      'Вашите данни се синхронизират на всичките ви устройства';

  @override
  String get onboardingShareTitle => 'Споделете с тези, които обичате';

  @override
  String get onboardingShareDesc =>
      'Синхронизирайте списъци със семейството и приятелите си в реално време';

  @override
  String get onboardingPremiumTitle => 'Отключете всички функции';

  @override
  String get onboardingPremiumSubtitle =>
      'Възползвайте се максимално от вашите списъци за пазаруване';

  @override
  String get onboardingAnnualBadge => 'Най-добра стойност';

  @override
  String get onboardingMonthlyLabel => 'Месечно';

  @override
  String get onboardingAnnualLabel => 'Годишен';

  @override
  String get onboardingViewAllPlans => 'Вижте всички планове';

  @override
  String get onboardingSubscribeCta => 'Абонирайте се';

  @override
  String get onboardingCancelAnytime => 'Отказ по всяко време. Без обвързване.';

  @override
  String get onboardingContinueAsGuest => 'Продължете като гост';

  @override
  String get onboardingRestore => 'Възстановяване';

  @override
  String get onboardingRestoreDesc =>
      'Вече имате абонамент? Докоснете тук, за да го възстановите.';

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
  String get onboardingExit => 'Изход';

  @override
  String get onboardingPersonalizationTitle => 'Нека те опознаем';

  @override
  String get onboardingPersonalizationDesc =>
      'Ще използваме това, за да персонализираме вашите предложения и да направим пазаруването по-интелигентно.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Коя е любимата ти храна?';

  @override
  String get onboardingPersonalizationFoodHint => 'напр. Пица, суши, лазаня...';

  @override
  String get onboardingPersonalizationCta => 'Продължи';

  @override
  String get onboardingPersonalizationSkip => 'Пропуснете засега';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Кажете ни любимата си храна, за да продължим';

  @override
  String get settingsDefaultScreen => 'Начален екран по подразбиране';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Изберете между списък за пазаруване или AI чат';

  @override
  String get settingsScreenList => 'Списък за пазаруване';

  @override
  String get settingsScreenChat => 'AI Чат';

  @override
  String loginError(String error) {
    return 'Грешка при вход: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Грешка при зареждане на оферти. Опитайте отново.';

  @override
  String get paywallPurchaseError =>
      'Покупката не можа да бъде завършена. Опитайте отново.';

  @override
  String get paywallRestoreError =>
      'Няма намерен активен абонамент за възстановяване.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ДНИ БЕЗПЛАТНО';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count СЕДМИЦИ БЕЗПЛАТНО',
      one: '$count СЕДМИЦА БЕЗПЛАТНО',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count МЕСЕЦА БЕЗПЛАТНО',
      one: '$count МЕСЕЦ БЕЗПЛАТНО',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Изпробвайте KipiList Pro безплатно за 7 дни';

  @override
  String get paywallTrialSubtitle => 'Отказ по всяко време. Без такса днес.';

  @override
  String get paywallTrialCta => 'Започнете безплатен пробен период';

  @override
  String get recipeAddToList => 'Добавете към списъка за пазаруване';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count съставки, добавени към $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'всичко необходимо:';

  @override
  String get paywallFeatureUnlimitedLists => 'Неограничени списъци';

  @override
  String get paywallFeatureSmartAI => 'Интелигентен AI';

  @override
  String get paywallFeatureExpenseControl => 'Контрол на разходите';

  @override
  String get paywallFeatureSharing => 'Споделяне';

  @override
  String get paywallBeforeAfterTitle => 'AI преди и след:';

  @override
  String get paywallLabelCommon => 'Чести';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ориз';

  @override
  String get paywallBeforeItem2 => 'сапун';

  @override
  String get paywallBeforeItem3 => 'месо';

  @override
  String get paywallBeforeItem4 => 'хляб';

  @override
  String get paywallAfterItem1 => 'зърна';

  @override
  String get paywallAfterItem2 => 'Почистване';

  @override
  String get paywallAfterItem3 => 'Меса';

  @override
  String get paywallAfterItem4 => 'Пекарна';

  @override
  String get paywallTestimonialsTitle => 'Какво казват нашите потребители:';

  @override
  String get paywallTestimonial1Name => 'Ан С.';

  @override
  String get paywallTestimonial1Text =>
      'AI организира моето пазаруване за секунди. Спестявам 20 минути на пазарно пътуване.';

  @override
  String get paywallTestimonial2Name => 'Чарлз М.';

  @override
  String get paywallTestimonial2Text =>
      'Никога повече не забравих елемент от списъка. AI чатът е сензационен!';

  @override
  String get paywallSocialProof => '+2400 семейства го използват';

  @override
  String get paywallCtaUnlock => 'Отключете PRO';

  @override
  String get paywallBestValue => 'НАЙ-ДОБРА СТОЙНОСТ';

  @override
  String get paywallMostPopular => 'НАЙ-ПОПУЛЯРНИ';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Сигурно плащане';

  @override
  String get paywallSelectPlan => 'Изберете своя план:';

  @override
  String paywallSavePercent(Object percent) {
    return 'СПЕСТЕТЕ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Само $price/месец';
  }

  @override
  String get paywallPackageAnnual => 'Годишен план';

  @override
  String get paywallPackageMonthly => 'Месечен план';

  @override
  String get paywallPackageLifetime => 'Доживотен достъп';

  @override
  String get paywallCancelAnytime => 'Отказ по всяко време. Без обвързване.';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'Политика за поверителност';

  @override
  String get paywallTerms => 'Условия за ползване';

  @override
  String get paywallRestore => 'Възстановяване';

  @override
  String get paywallHeroHeadline => 'Kipi AI винаги до вас';

  @override
  String get paywallHeroSubtitle =>
      'Добавяйте елементи, организирайте списъци и пестете време с AI в джоба си';

  @override
  String get paywallBenefit1Desc =>
      'Добавя, организира и предлага елементи 24/7';

  @override
  String get paywallBenefit2Desc => 'Без ограничение от 3 списъка';

  @override
  String get paywallBenefit3Desc =>
      'Проследяване на разходите и семейни списъци';

  @override
  String get paywallPackageMonthlyDesc => 'Пълна гъвкавост';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Започнете безплатно — $days дни';
  }

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
      'Говори естествено, за да управляваш списъка си!\n\nПримери:\n• \'Добави хляб, сирене и шунка\'\n• \'Премахни перилния препарат\'\n• \'Промени темата на синя\'\n\nТова е ексклузивна функция на KipiList Premium.';

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
      'Вашият отзив е получен и ни помага да подобрим KipiList за всички.';

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
  String get aiEnergy => 'AI енергия';

  @override
  String get searchInConversation => 'Търсене в разговор...';

  @override
  String get noMessagesFound => 'Няма намерени съобщения';

  @override
  String get suggestedQuestions => 'Предложени въпроси:';

  @override
  String get shoppingAssistant => 'Помощник при пазаруване';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased от $total закупени';
  }

  @override
  String get estimatedCost => 'Приблизително';

  @override
  String get viewItems => 'Преглед на елементи';

  @override
  String get noItemsInList => 'Няма елементи в списъка';

  @override
  String get longHistoryWarning =>
      'Дълга история: асистентът се фокусира върху най-новите съобщения за по-добро представяне.';

  @override
  String get listening => 'Слушам...';

  @override
  String get addDirectToList => 'Добавете директно към списъка';

  @override
  String get unlockFullResponse => 'Отключете пълен отговор';

  @override
  String get switchList => 'Превключване на списъка';

  @override
  String get marketMode => 'Пазарен режим';

  @override
  String get backToChat => 'Назад към Чат';

  @override
  String get finishShopping => 'Завършете пазаруването';

  @override
  String get welcomeAiAssistant => 'Добре дошли в AI Assistant';

  @override
  String get createListToStartAi =>
      'Създайте списък за пазаруване, за да започнете да използвате интелигентния чат.';

  @override
  String get howCanIHelp => 'как мога да помогна';

  @override
  String get chatSubtitleShort => 'Попитайте за цени, рецепти, организация...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total закупени';
  }

  @override
  String get quickReplies => 'Бързи отговори:';

  @override
  String get voiceProFeature =>
      'Разширените гласови команди са Pro. Активиране на основната диктовка...';

  @override
  String get viewPro => 'Вижте Pro';

  @override
  String get errorLoadingChat => 'Опа! Нещо се обърка при зареждането на чата.';

  @override
  String get errorLoadingChatSubtitle =>
      'Проверете връзката си или опитайте отново по-късно.';

  @override
  String get errorOscillation =>
      'Това може да се случи поради мрежови колебания или временна недостъпност. Моля, опитайте отново.';

  @override
  String get activeListening => 'Активно слушане';

  @override
  String get whatToDoWithItem =>
      'Какво бихте искали да направите с този артикул?';

  @override
  String get viewDetails => 'Вижте подробности';

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
  String get inviteToList => 'Покани в списъка';

  @override
  String get shareApp => 'Споделяне на приложение';

  @override
  String get shareAppDescription => 'Поканете приятели да използват KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Използвам KipiList, за да организирам пазаруването си! Изтеглете чрез моята връзка и двамата получаваме 7 дни Premium безплатно: $url';
  }

  @override
  String get shareReferralSubject => 'Вземете 7 дни KipiList Premium!';

  @override
  String get gestureHint => 'Задръжте за избор • Плъзнете за премахване';

  @override
  String get catalogTitle => 'Каталог';

  @override
  String get catalogMyFrequents => 'Моите често срещани';

  @override
  String get catalogSearchGlobal => 'Търсете всеки продукт...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Търсене в $category...';
  }

  @override
  String get catalogSortPopular => 'Най-популярни';

  @override
  String get catalogSortAZ => 'А–Я';

  @override
  String get catalogFilterNational => 'Национали';

  @override
  String get catalogRareSection => 'по-рядко срещани във вашата страна';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Добавете $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Продуктът не е намерен, въведете името';

  @override
  String get catalogBrowse => 'Разгледайте каталога';

  @override
  String get offlineBanner => 'Вие сте офлайн';

  @override
  String get consentTitle => 'Поверителност и анализ';

  @override
  String get consentBody =>
      'KipiList използва Firebase Analytics, за да подобри вашето изживяване. Вашите данни се обработват съгласно нашата Политика за поверителност.';

  @override
  String get consentAccept => 'Приеми';

  @override
  String get consentDecline => 'не благодаря';

  @override
  String get mealPlannerPantryAllAvailable => 'В наличност';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count липсващи елементи',
      one: '$count липсващ елемент',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Срок на годност';

  @override
  String get notInformed => 'Не е информиран';
}
