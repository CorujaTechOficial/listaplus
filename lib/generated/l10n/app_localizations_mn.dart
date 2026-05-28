// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get appTitle => 'Дэлгүүрийн жагсаалт';

  @override
  String get lists => 'Жагсаалтууд';

  @override
  String get pantry => 'Агуулах';

  @override
  String get cancel => 'Цуцлах';

  @override
  String get save => 'Хадгалах';

  @override
  String get create => 'Үүсгэх';

  @override
  String get add => 'Нэмэх';

  @override
  String get remove => 'Устгах';

  @override
  String get delete => 'Устгах';

  @override
  String get edit => 'Засах';

  @override
  String get copy => 'Хуулах';

  @override
  String get retry => 'Дахин оролдох';

  @override
  String get regenerate => 'Дахин үүсгэх';

  @override
  String get copiedToClipboard => 'Самбар руу хуулсан';

  @override
  String get confirm => 'Баталгаажуулах';

  @override
  String get close => 'Хаах';

  @override
  String get import => 'Импортлох';

  @override
  String get rename => 'Нэр өөрчлөх';

  @override
  String get upgrade => 'Шинэчлэх';

  @override
  String get clear => 'Цэвэрлэх';

  @override
  String error(String message) {
    return 'Алдаа: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Алдаа: $message';
  }

  @override
  String get purchaseError =>
      'Худалдан авалтыг боловсруулахад алдаа гарлаа. Дахин оролдоно уу.';

  @override
  String get restoreError =>
      'Худалдан авалтыг сэргээхэд алдаа гарлаа. Дахин оролдоно уу.';

  @override
  String get loading => 'Ачааллаж байна...';

  @override
  String get fieldRequired => 'Шаардлагатай талбар';

  @override
  String get addedFeedback => 'Нэмэгдсэн!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count сонгогдсон',
      one: '$count сонгогдсон',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Тооцоолсон';

  @override
  String get alreadyPurchased => 'Аль хэдийн худалдаж авсан';

  @override
  String get clearList => 'Жагсаалтыг цэвэрлэх';

  @override
  String get clearPurchased => 'Худалдаж авсаныг цэвэрлэх';

  @override
  String get share => 'Хуваалцах';

  @override
  String get shareViaCode => 'Кодоор хуваалцах';

  @override
  String get importViaCode => 'Кодоор импортлох';

  @override
  String get listAssistant => 'Жагсаалтын туслах';

  @override
  String get globalAssistant => 'Ерөнхий туслах';

  @override
  String get becomePremium => 'Premium болох';

  @override
  String get manageSubscription => 'Захиалга удирдах';

  @override
  String get completePurchase => 'Худалдан авалтыг дуусгах';

  @override
  String get confirmClearList => 'Бүх зүйлийг устгах уу?';

  @override
  String get shareListTitle => 'Жагсаалт хуваалцах';

  @override
  String get shareThisCode => 'Энэ кодыг хуваалцах:';

  @override
  String get validForLimitedTime => 'Хязгаарлагдмал хугацаанд хүчинтэй';

  @override
  String get importListTitle => 'Жагсаалт импортлох';

  @override
  String get enterCodeHint => 'Кодыг оруулна уу';

  @override
  String get confirmArchiveTitle => 'Худалдан авалтыг дуусгах';

  @override
  String get confirmArchiveContent =>
      'Энэ худалдан авалтыг дуусгаад жагсаалтыг архивт хадгалах уу?';

  @override
  String get complete => 'Дуусгах';

  @override
  String get listArchived => 'Жагсаалт амжилттай архивлагдлаа!';

  @override
  String listAdded(String listName) {
    return '$listName нэмэгдсэн!';
  }

  @override
  String get buy => 'Худалдаж авах';

  @override
  String get unmark => 'Тэмдэглэгээ арилгах';

  @override
  String confirmDeleteItems(int count) {
    return '$count зүйлийг устгах уу?';
  }

  @override
  String get confirmDeleteTitle => 'Баталгаажуулах';

  @override
  String confirmContent(int count) {
    return '$count зүйлийг устгах уу?';
  }

  @override
  String get archiveList => 'Жагсаалтыг архивлах';

  @override
  String get pantryAppBar => 'Агуулах';

  @override
  String get generateShoppingList => 'Дэлгүүрийн жагсаалт үүсгэх';

  @override
  String get pantryEmpty => 'Агуулах хоосон';

  @override
  String get pantryEmptySubtitle =>
      'Гэртээ хадгалахыг хүсэх бүтээгдэхүүнээ нэмнэ үү';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit зүйл худалдаж авах шаардлагатай';
  }

  @override
  String get noItemsToBuy => 'Худалдаж авах зүйл байхгүй';

  @override
  String get newPantryList => 'Агуулахаас дэлгүүр';

  @override
  String get newListTitle => 'Шинэ дэлгүүрийн жагсаалт';

  @override
  String itemsWillBeAdded(int count) {
    return '$count зүйл нэмэгдэх болно';
  }

  @override
  String get listNameLabel => 'Жагсаалтын нэр';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" жагсаалт $count зүйлтэй үүсгэгдлээ';
  }

  @override
  String get noTracking => 'Хяналт байхгүй';

  @override
  String get markAsPurchased => 'Худалдаж авсан гэж тэмдэглэх';

  @override
  String editPantryItem(String name) {
    return '$name засах';
  }

  @override
  String get idealQuantity => 'Тохиромжтой тоо хэмжээ';

  @override
  String get currentQuantity => 'Одоогийн тоо хэмжээ';

  @override
  String get consumed => 'Хэрэглэсэн';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name -ийг $quantity $unit болгон нөөцлөв';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" -ийг агуулахаас устгах уу?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name засах';
  }

  @override
  String get settingsAppBar => 'Тохиргоо';

  @override
  String get language => 'Хэл';

  @override
  String get languagePortuguese => 'Португал (Бразил)';

  @override
  String get languageEnglish => 'Англи';

  @override
  String get languageSystem => 'Системийн анхдагч';

  @override
  String get chooseLanguage => 'Хэл сонгох';

  @override
  String get searchLanguage => 'Хэл хайх...';

  @override
  String get appearance => 'Гадаад байдал';

  @override
  String get light => 'Гэрэлтэй';

  @override
  String get system => 'Систем';

  @override
  String get dark => 'Харанхуй';

  @override
  String get themeColor => 'Сэдвийн өнгө';

  @override
  String get dynamicColors => 'Динамик өнгө';

  @override
  String get dynamicColorsSubtitle =>
      'Таны ханын зураг дээр үндэслэсэн өнгийг ашиглана уу';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Санхүү';

  @override
  String get monthlyBudgetNav => 'Сарын төсөв';

  @override
  String get budgetSubtitle => 'Сарын зарлагаа хянах';

  @override
  String get data => 'Өгөгдөл';

  @override
  String get backupNav => 'Нөөцлөлт';

  @override
  String get backupSubtitle => 'Өгөгдлөө экспортлох эсвэл импортлох';

  @override
  String get about => 'Тухай';

  @override
  String get version => 'Хувилбар';

  @override
  String get privacy => 'Нууцлал';

  @override
  String get termsOfUse => 'Ашиглах нөхцөл';

  @override
  String get backupTitle => 'Нөөцлөлт';

  @override
  String get backupPremiumDescription =>
      'Нөөцлөлт ба экспорт нь Premium онцлог юм';

  @override
  String get exportData => 'Өгөгдөл экспортлох';

  @override
  String get exportDataSubtitle => 'Бүх жагсаалтыг JSON хэлбэрээр хадгалах';

  @override
  String get importData => 'Өгөгдөл импортлох';

  @override
  String get importDataSubtitle => 'JSON -аас жагсаалтуудыг сэргээх';

  @override
  String get importJsonTitle => 'JSON импортлох';

  @override
  String get importJsonHint => 'Нөөц JSON -ийг энд буулгана уу...';

  @override
  String get backupExported => 'Нөөцлөлт амжилттай экспортлогдлоо!';

  @override
  String get budgetAppBar => 'Сарын төсөв';

  @override
  String get budgetPremiumLocked => 'Дэлхий нийтийн сарын төсөв нь Premium';

  @override
  String get budgetUpgradePrompt => 'Шинэчлэх';

  @override
  String get noBudgetDefined => 'Төсөв тогтоогоогүй';

  @override
  String totalEstimated(String amount) {
    return 'Нийт тооцоолол: $amount';
  }

  @override
  String get setBudgetButton => 'Төсөв тогтоох';

  @override
  String get budgetLists => 'Жагсаалтууд';

  @override
  String get budgetValueLabel => 'Дүн';

  @override
  String get setBudgetTitle => 'Сарын төсөв';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Бүгд';

  @override
  String get filterPending => 'Хүлээгдэж буй';

  @override
  String get filterPurchased => 'Худалдаж авсан';

  @override
  String get sortName => 'Нэр';

  @override
  String get sortCategory => 'Ангилал';

  @override
  String get sortDate => 'Огноо';

  @override
  String get sortManual => 'Гараар';

  @override
  String get addItem => 'Зүйл нэмэх';

  @override
  String get itemName => 'Зүйлийн нэр';

  @override
  String get quantityShort => 'Тоо';

  @override
  String get unit => 'Нэгж';

  @override
  String get category => 'Ангилал';

  @override
  String get estimatedPrice => 'Тооцоолсон үнэ';

  @override
  String get addItemPrice => 'Тооцоолсон үнэ';

  @override
  String get editItem => 'Зүйл засах';

  @override
  String get quantityFull => 'Тоо хэмжээ';

  @override
  String get editItemPrice => 'Тооцоолсон үнэ';

  @override
  String get addToPantry => 'Агуулах руу нэмэх';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" -ийг Агуулах руу нэмэх үү?';
  }

  @override
  String get yes => 'Тийм';

  @override
  String get productName => 'Бүтээгдэхүүний нэр';

  @override
  String get idealQty => 'Тохиромжтой тоо';

  @override
  String get currentQty => 'Одоогийн тоо';

  @override
  String get trackStock => 'Нөөц хянах';

  @override
  String get trackStockActive => 'Дэлгүүрийн зөвлөмжид гарна';

  @override
  String get trackStockInactive => 'Дэлгүүрийн зөвлөмж үүсгэхгүй';

  @override
  String get createListDialog => 'Жагсаалт үүсгэх';

  @override
  String get renameListDialog => 'Жагсаалтын нэр өөрчлөх';

  @override
  String get listHistory => 'Жагсаалтын түүх';

  @override
  String get myLists => 'Миний жагсаалтууд';

  @override
  String get viewActive => 'Идэвхтэйг харах';

  @override
  String get viewHistory => 'Түүхийг харах';

  @override
  String get noArchivedLists => 'Архивлагдсан жагсаалт байхгүй';

  @override
  String get noActiveLists => 'Идэвхтэй жагсаалт байхгүй';

  @override
  String completedOn(String date) {
    return '$date -д дууссан';
  }

  @override
  String get sharedLabel => 'Хуваалцсан';

  @override
  String get restore => 'Сэргээх';

  @override
  String get removeSharedTooltip => 'Устгах';

  @override
  String get deleteListTitle => 'Жагсаалт устгах';

  @override
  String deleteListContent(String name) {
    return '\"$name\" жагсаалтыг устгахдаа итгэлтэй байна уу? Бүх зүйлс устгагдах болно.';
  }

  @override
  String get removeSharedListTitle => 'Хуваалцсан жагсаалтыг устгах';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" -ийг жагсаалтуудаас чинь устгах уу? Анхны жагсаалт өөрчлөгдөхгүй.';
  }

  @override
  String get createNewList => 'Шинэ жагсаалт үүсгэх';

  @override
  String get aiAssistant => 'AI туслах';

  @override
  String get aiAssistantDescription =>
      'Манай AI туслахаар ухаалаг зөвлөмж, жор, хувийн зөвлөгөө аваарай.';

  @override
  String get generalAssistant => 'Ерөнхий туслах';

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
  String get clearHistory => 'Түүх цэвэрлэх';

  @override
  String get clearHistoryConfirm => 'Энэ сессийн бүх мессежийг цэвэрлэх үү?';

  @override
  String get chatHint => 'Мессежээ бичнэ үү...';

  @override
  String chatError(String error) {
    return 'Чат ачааллахад алдаа гарлаа: $error';
  }

  @override
  String get listHelp => 'Жагсаалтад чинь хэрхэн туслах вэ?';

  @override
  String get generalHelp => 'Өнөөдрийн дэлгүүрт хэрхэн туслах вэ?';

  @override
  String get chatSubtitle =>
      'Зүйлсийн зөвлөмж, жор эсвэл хэмнэлтийн зөвлөгөө авах.';

  @override
  String get aiError =>
      'Уучлаарай, таны хүсэлтийг боловсруулахад алдаа гарлаа. Холболтоо шалгаад дараа дахин оролдоно уу.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Нэвтрээд Premium\nфункцуудыг нээх';

  @override
  String get signInGoogle => 'Google -р нэвтрэх';

  @override
  String get signInApple => 'Apple -р нэвтрэх';

  @override
  String get continueAsGuest => 'Зочин хэлбэрээр үргэлжлүүлэх';

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
    return 'Нэвтрэх алдаа: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Шинэчлэх';

  @override
  String get itemRemoved => 'Зүйл устгагдлаа';

  @override
  String get undo => 'Буцаах';

  @override
  String get emptyListTitle => 'Таны жагсаалт хоосон байна';

  @override
  String get emptyListSubtitle => 'Эхлэхийн тулд зүйлс нэмнэ үү';

  @override
  String get noListFoundTitle => 'Жагсаалт олдсонгүй';

  @override
  String get noListFoundSubtitle => 'Эхлэхийн тулд эхний жагсаалтаа үүсгэнэ үү';

  @override
  String get createFirstList => 'Эхний жагсаалт үүсгэх';

  @override
  String get listBudgetTitle => 'Жагсаалтын төсөв';

  @override
  String get budgetAmountLabel => 'Төсвийн дүн';

  @override
  String get removeBudget => 'Устгах';

  @override
  String get prefUnlimitedLists => 'Хязгааргүй жагсаалт';

  @override
  String get prefSharing => 'Жагсаалт хуваалцах';

  @override
  String get prefFullHistory => 'Бүрэн түүх';

  @override
  String get prefExportData => 'Өгөгдөл экспортлох';

  @override
  String get prefCustomThemes => 'Өөрийн сэдвүүд';

  @override
  String get prefMonthlyBudget => 'Дэлхий нийтийн сарын төсөв';

  @override
  String get prefAIAssistant => 'Хувийн AI туслах';

  @override
  String get prefUnlimitedPantry => 'Хязгааргүй агуулах';

  @override
  String get prefInteractiveArtifacts => 'Интерактив AI Artifacts';

  @override
  String get themeGreen => 'Ногоон';

  @override
  String get themeBlue => 'Цэнхэр';

  @override
  String get themePurple => 'Ягаан';

  @override
  String get themeRed => 'Улаан';

  @override
  String get themeOrange => 'Улбар шар';

  @override
  String get themePink => 'Ягаан';

  @override
  String get themeIndigo => 'Индиго';

  @override
  String get themeAmber => 'Шар';

  @override
  String get themeTeal => 'Ногоон цэнхэр';

  @override
  String get themeBrown => 'Бор';

  @override
  String get catFruits => 'Жимс';

  @override
  String get catCleaning => 'Цэвэрлэгээ';

  @override
  String get catBeverages => 'Ундаа';

  @override
  String get catBakery => 'Талх нарийн боов';

  @override
  String get catOthers => 'Бусад';

  @override
  String get unitPack => 'багц';

  @override
  String get shareSubject => 'Дэлгүүрийн жагсаалт';

  @override
  String get monthlyBudgetTitle => 'Сарын төсөв';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Жагсаалт устгах';

  @override
  String get pantryItemRemoved => 'Зүйл устгагдлаа';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit зүйл худалдаж авах шаардлагатай',
      one: '$deficit зүйл худалдаж авах шаардлагатай',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Сагсны нийт';

  @override
  String get restockLabel => 'Нөөцлөх';

  @override
  String get advancedFeatures => 'Дэвшилтэт функцууд';

  @override
  String get selectAll => 'Бүгдийг сонгох';

  @override
  String get deselectAll => 'Бүгдийг цуцлах';

  @override
  String get monthlyBudgetAppBar => 'Сарын төсөв';

  @override
  String get budgetEditTitle => 'Сарын төсөв';

  @override
  String get budgetDashboardTitle => 'Хянах самбар';

  @override
  String get selectListForDashboard =>
      'Хянах самбарыг үзэхийн тулд жагсаалт сонгоно уу.';

  @override
  String get spendingAnalysis => 'Зарлагын шинжилгээ';

  @override
  String get noItemsToAnalyze => 'Шинжилгээ хийх зүйл байхгүй.';

  @override
  String get markItemsToSeeAnalysis =>
      'Шинжилгээг үзэхийн тулд зүйлсийг худалдаж авсан гэж тэмдэглэнэ үү.';

  @override
  String get totalSpending => 'Нийт зарлага';

  @override
  String get spendingByCategory => 'Ангилалаар зарлага';

  @override
  String get achievements => 'Амжилтууд';

  @override
  String get exportPdfExcel => 'PDF/Excel экспортлох';

  @override
  String get exportPdf => 'PDF хэлбэрээр экспортлох';

  @override
  String get exportExcel => 'Excel хэлбэрээр экспортлох';

  @override
  String get organizingAi => 'AI -аар зохион байгуулж байна...';

  @override
  String get yesLabel => 'Тийм';

  @override
  String get noLabel => 'Үгүй';

  @override
  String get shareListText => 'Миний дэлгүүрийн жагсаалт';

  @override
  String get emptyListAddItems =>
      'Таны жагсаалт хоосон байна! Эхлээд зүйлс нэмнэ үү.';

  @override
  String get listOrganizedMagic =>
      'Жагсаалт ангилалаар шидэт байдлаар зохион байгуулагдлаа!';

  @override
  String get shoppingMode => 'Дэлгүүрийн горим';

  @override
  String get smartOrganization => 'Ухаалаг зохион байгуулалт';

  @override
  String get savings => 'Хэмнэлт';

  @override
  String get shoppingModeHeader => 'ДЭЛГҮҮРИЙН ГОРИМ';

  @override
  String get shareAsText => 'Зүйлсийг форматтай текстээр илгээх';

  @override
  String get shareRealtime => 'Бусад хүмүүстэй шууд синхрончлол';

  @override
  String get quickRecipe => 'Түргэн жор';

  @override
  String get quickRecipePrompt => 'Миний жагсаалтаас жор санал болгох.';

  @override
  String get economyTips => 'Хэмнэлтийн зөвлөгөө';

  @override
  String get economyTipsPrompt =>
      'Энэ худалдан авалтаар хэрхэн мөнгө хэмнэх вэ?';

  @override
  String get organizeAisles => 'Тавиураар зохион байгуулах';

  @override
  String get organizeAislesPrompt => 'Дэлгүүрийн тавиураар зохион байгуулах.';

  @override
  String get recipeSuggestion => 'Жорны санал';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining кредит үлдсэн';
  }

  @override
  String get addAllToList => 'Бүгдийг жагсаалтад нэмэх';

  @override
  String get organizeByAisles => 'Тавиураар зохион байгуулах';

  @override
  String get voiceTranscriptionTooltip => 'Дуут бичих (Үнэгүй)';

  @override
  String get aiVoiceCommandTooltip => 'AI дуут команд (Premium)';

  @override
  String get voiceCommandTitle => 'AI дуут команд';

  @override
  String get voiceCommandContent =>
      'Жагсаалтаа удирдахын тулд байгалийн жамаар ярь!\n\nЖишээнүүд:\n• \'Талх, бяслаг, хиам нэмэх\'\n• \'Угаалгын нунтаг устгах\'\n• \'Сэдвийг цэнхэр болгох\'\n\nЭнэ бол Lista Plus Premium -ийн онцгой функц юм.';

  @override
  String get voiceCommandPlanBtn => 'Төлөвлөгөө үзэх';

  @override
  String get itemsAddedSuccess => 'Зүйлс жагсаалтад амжилттай нэмэгдлээ!';

  @override
  String get viewList => 'Жагсаалт үзэх';

  @override
  String get feedbackTitle => 'Санал хүсэлт илгээх';

  @override
  String get feedbackPrompt => 'Юу хуваалцахыг хүсэж байна вэ?';

  @override
  String get feedbackTypeBug => 'Алдаа мэдээлэх';

  @override
  String get feedbackTypeBugHint => 'Ямар нэг зүйл ажиллахгүй байна';

  @override
  String get feedbackTypeSuggestion => 'Санал';

  @override
  String get feedbackTypeSuggestionHint => 'Аппыг сайжруулах санаа';

  @override
  String get feedbackTypeTranslation => 'Орчуулгын асуудал';

  @override
  String get feedbackTypeTranslationHint => 'Буруу эсвэл эвгүй орчуулга';

  @override
  String get feedbackTypeFeature => 'Функц хүсэх';

  @override
  String get feedbackTypeFeatureHint => 'Таны харахыг хүссэн функц';

  @override
  String get feedbackTypeOther => 'Бусад';

  @override
  String get feedbackTypeOtherHint => 'Бусад төрлийн санал';

  @override
  String get feedbackHint => 'Саналаа дэлгэрэнгүй бичнэ үү...';

  @override
  String get feedbackSend => 'Санал илгээх';

  @override
  String get feedbackSending => 'Илгээж байна...';

  @override
  String get feedbackThankYou => 'Баярлалаа!';

  @override
  String get feedbackThankYouMessage =>
      'Таны саналыг хүлээн авлаа. Энэ нь Lista Plus-г бүгдэд зориулж сайжруулахад тусална.';

  @override
  String get feedbackBack => 'Буцах';

  @override
  String feedbackError(String error) {
    return 'Илгээхэд алдаа гарлаа: $error';
  }

  @override
  String get feedbackRetry => 'Дахин оролдох';

  @override
  String get feedbackSettingsTitle => 'Санал илгээх';

  @override
  String get feedbackSettingsSubtitle =>
      'Алдаа мэдээлэх, сайжруулах санал эсвэл орчуулга засах';

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
  String get openMenu => 'Цэс нээх';

  @override
  String get viewRecipe => 'Жор үзэх';

  @override
  String get recipeCreated => 'Жор үүсгэгдлээ!';

  @override
  String get editRecipe => 'Засварлах';

  @override
  String get deleteRecipe => 'Устгах';

  @override
  String get deleteRecipeConfirm => 'Энэ жорыг устгах уу?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Та \"$recipeName\" жорыг устгахдаа итгэлтэй байна уу? Энэ үйлдлийг буцаах боломжгүй.';
  }

  @override
  String get ingredients => 'Найрлага';

  @override
  String get instructions => 'Заавар';

  @override
  String get prepTime => 'Бэлтгэх хугацаа';

  @override
  String get recipeSaved => 'Жор хадгалагдлаа!';

  @override
  String get noRecipesSaved => 'Хадгалсан жор алга';

  @override
  String get noRecipesSavedHint =>
      'Доорх товчлуур дээр дарж анхны жороо үүсгэнэ үү.';

  @override
  String get myRecipes => 'Миний жорууд';

  @override
  String get newRecipe => 'Шинэ жор';

  @override
  String get loadingRecipes => 'Таны жоруудыг ачаалж байна...';

  @override
  String get errorLoadingRecipes => 'Жор ачаалахад алдаа гарлаа';

  @override
  String get addIngredient => 'Найрлага нэмэх';

  @override
  String get saveRecipe => 'Хадгалах';

  @override
  String get recipeName => 'Жорын нэр';

  @override
  String get shortDescription => 'Товч тайлбар';

  @override
  String get prepTimeMinutes => 'Бэлтгэх хугацаа (минут)';

  @override
  String get instructionsHint => 'Мөр бүрт нэг алхам бичнэ үү...';

  @override
  String get addPhoto => 'Зураг нэмэх';

  @override
  String get imageUrlPlaceholder => 'Эсвэл зургийн URL-г буулгана уу';

  @override
  String get tags => 'Шошго';

  @override
  String get recipeTags => 'Жорын шошго';

  @override
  String get suggestedTags => 'Санал болгож буй';

  @override
  String get searchRecipes => 'Жор хайх...';

  @override
  String get filterByTag => 'Шошгоор шүүх';

  @override
  String get allTags => 'Бүгд';

  @override
  String get recipeDeleted => 'Жор устгагдсан';

  @override
  String get saveChanges => 'Өөрчлөлтийг хадгалах';

  @override
  String get editRecipeTitle => 'Жор засварлах';

  @override
  String get newRecipeTitle => 'Шинэ жор';

  @override
  String get requiredField => 'Шаардлагатай';

  @override
  String get chooseImageSource => 'Зургийн эх үүсвэрийг сонгоно уу';

  @override
  String get gallery => 'Галерей';

  @override
  String get enterUrl => 'URL оруулна уу';

  @override
  String get recipeImage => 'Жорын зураг';

  @override
  String get removeImage => 'Зураг устгах';

  @override
  String get mealPlannerTitle => 'Хоолны төлөвлөгч';

  @override
  String get mealPlannerViewMonthly => 'Сар бүрийн харагдац';

  @override
  String get mealPlannerViewWeekly => 'Долоо хоногийн харагдац';

  @override
  String get mealPlannerNoMeals => 'Төлөвлөсөн хоол алга';

  @override
  String get mealPlannerNoMealsHint =>
      'Хоол нэмэхийн тулд өдөр дээр товшино уу';

  @override
  String get mealPlannerLoading => 'Хоолны төлөвлөгөө ачаалж байна...';

  @override
  String get mealPlannerError => 'Хоолны төлөвлөгөө ачаалахад алдаа гарлаа';

  @override
  String get mealPlannerAddMeal => 'Хоол нэмэх';

  @override
  String get mealPlannerEditMeal => 'Хоол засварлах';

  @override
  String get mealPlannerDeleteMeal => 'Хоол устгах';

  @override
  String get mealPlannerMealDeleted => 'Хоол устгагдсан';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count порц',
      one: '$count порц',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Порц';

  @override
  String get mealPlannerNoteLabel => 'Тэмдэглэл (заавал биш)';

  @override
  String get mealPlannerSelectRecipe => 'Жор сонгох';

  @override
  String get mealPlannerSearchRecipes => 'Жор хайх...';

  @override
  String get mealPlannerNoRecipesFound => 'Жор олдсонгүй';

  @override
  String get mealPlannerNoRecipesHint => 'Эхлээд Жор таб дээр жор үүсгэнэ үү';

  @override
  String get mealPlannerSave => 'Төлөвлөгөөнд нэмэх';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total хоолны $count нь төлөвлөгдсөн';
  }

  @override
  String get mealPlannerGenerateList => 'Шопинг жагсаалт гаргах';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Энэ долоо хоногт төлөвлөсөн хоолны бүх найрлагыг шопинг жагсаалтад нэмэх үү?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count найрлага таны жагсаалтад нэмэгдлээ!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Нэмэх найрлага алга. Эхлээд жороор хоол төлөвлөнө үү.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Эхлээд шопинг жагсаалт үүсгэнэ үү.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Өглөөний цай';

  @override
  String get mealPlannerMealTypeLunch => 'Үдийн хоол';

  @override
  String get mealPlannerMealTypeDinner => 'Оройн хоол';

  @override
  String get mealPlannerMealTypeSnack => 'Хөнгөн зууш';

  @override
  String get mealPlannerDateLabel => 'Огноо';

  @override
  String get mealPlannerWeekEmpty => 'Энэ долоо хоногт төлөвлөсөн зүйл алга';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Хоолоо төлөвлөж эхлэхийн тулд дурын өдөр дээр товшино уу!';

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

/// The translations for Mongolian, as used in Mongolia (`mn_MN`).
class AppLocalizationsMnMn extends AppLocalizationsMn {
  AppLocalizationsMnMn() : super('mn_MN');

  @override
  String get appTitle => 'Дэлгүүрийн жагсаалт';

  @override
  String get lists => 'Жагсаалтууд';

  @override
  String get pantry => 'Агуулах';

  @override
  String get cancel => 'Цуцлах';

  @override
  String get save => 'Хадгалах';

  @override
  String get create => 'Үүсгэх';

  @override
  String get add => 'Нэмэх';

  @override
  String get remove => 'Устгах';

  @override
  String get delete => 'Устгах';

  @override
  String get edit => 'Засах';

  @override
  String get copy => 'Хуулах';

  @override
  String get retry => 'Дахин оролдох';

  @override
  String get regenerate => 'Дахин үүсгэх';

  @override
  String get copiedToClipboard => 'Самбарт хуулагдсан';

  @override
  String get confirm => 'Баталгаажуулах';

  @override
  String get close => 'Хаах';

  @override
  String get import => 'Импортлох';

  @override
  String get rename => 'Нэр өөрчлөх';

  @override
  String get upgrade => 'Шинэчлэх';

  @override
  String get clear => 'Цэвэрлэх';

  @override
  String error(String message) {
    return 'Алдаа: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Алдаа: $message';
  }

  @override
  String get purchaseError =>
      'Худалдан авалтыг боловсруулахад алдаа гарлаа. Дахин оролдоно уу.';

  @override
  String get restoreError =>
      'Худалдан авалтыг сэргээхэд алдаа гарлаа. Дахин оролдоно уу.';

  @override
  String get loading => 'Ачааллаж байна...';

  @override
  String get fieldRequired => 'Шаардлагатай талбар';

  @override
  String get addedFeedback => 'Нэмэгдсэн!';

  @override
  String selectedItems(int count) {
    return '$count сонгогдсон';
  }

  @override
  String get estimated => 'Тооцоолсон';

  @override
  String get alreadyPurchased => 'Аль хэдийн худалдаж авсан';

  @override
  String get clearList => 'Жагсаалтыг цэвэрлэх';

  @override
  String get clearPurchased => 'Худалдаж авсан зүйлсийг арилгах';

  @override
  String get share => 'Хуваалцах';

  @override
  String get shareViaCode => 'Кодоор хуваалцах';

  @override
  String get importViaCode => 'Кодоор импортлох';

  @override
  String get listAssistant => 'Жагсаалтын туслах';

  @override
  String get globalAssistant => 'Ерөнхий туслах';

  @override
  String get becomePremium => 'Premium болох';

  @override
  String get manageSubscription => 'Захиалга удирдах';

  @override
  String get completePurchase => 'Худалдан авалтыг дуусгах';

  @override
  String get confirmClearList => 'Бүх зүйлсийг устгах уу?';

  @override
  String get shareListTitle => 'Жагсаалт хуваалцах';

  @override
  String get shareThisCode => 'Энэ кодыг хуваалцах:';

  @override
  String get validForLimitedTime => 'Хязгаарлагдмал хугацаанд хүчинтэй';

  @override
  String get importListTitle => 'Жагсаалт импортлох';

  @override
  String get enterCodeHint => 'Кодыг оруулна уу';

  @override
  String get confirmArchiveTitle => 'Худалдан авалтыг дуусгах';

  @override
  String get confirmArchiveContent =>
      'Энэ худалдан авалтыг дуусгаж, жагсаалтыг архивлах уу?';

  @override
  String get complete => 'Дуусгах';

  @override
  String get listArchived => 'Жагсаалт амжилттай архивлагдсан!';

  @override
  String listAdded(String listName) {
    return '$listName нэмэгдсэн!';
  }

  @override
  String get buy => 'Худалдаж авах';

  @override
  String get unmark => 'Тэмдэг арилгах';

  @override
  String confirmDeleteItems(int count) {
    return '$count зүйл(с) устгах уу?';
  }

  @override
  String get confirmDeleteTitle => 'Баталгаажуулах';

  @override
  String confirmContent(int count) {
    return '$count зүйл(с) устгах уу?';
  }

  @override
  String get archiveList => 'Жагсаалтыг архивлах';

  @override
  String get pantryAppBar => 'Агуулах';

  @override
  String get generateShoppingList => 'Дэлгүүрийн жагсаалт үүсгэх';

  @override
  String get pantryEmpty => 'Агуулах хоосон';

  @override
  String get pantryEmptySubtitle =>
      'Гэртээ байлгахыг хүсэх бүтээгдэхүүнүүдээ нэмнэ үү';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit зүйл(с) худалдаж авах шаардлагатай';
  }

  @override
  String get noItemsToBuy => 'Худалдаж авах зүйлс байхгүй';

  @override
  String get newPantryList => 'Агуулахын худалдан авалт';

  @override
  String get newListTitle => 'Шинэ дэлгүүрийн жагсаалт';

  @override
  String itemsWillBeAdded(int count) {
    return '$count зүйл(с) нэмэгдэх болно';
  }

  @override
  String get listNameLabel => 'Жагсаалтын нэр';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" жагсаалт $count зүйлсээр үүсгэгдсэн';
  }

  @override
  String get noTracking => 'Хяналтгүй';

  @override
  String get markAsPurchased => 'Худалдаж авсан гэж тэмдэглэх';

  @override
  String editPantryItem(String name) {
    return '$name засах';
  }

  @override
  String get idealQuantity => 'Хамгийн тохиромжтой тоо хэмжээ';

  @override
  String get currentQuantity => 'Одоогийн тоо хэмжээ';

  @override
  String get consumed => 'Хэрэглэгдсэн';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit болгон нөөцлөгдсөн';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Агуулахаас \"$name\"-г устгах уу?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name засах';
  }

  @override
  String get settingsAppBar => 'Тохиргоо';

  @override
  String get language => 'Хэл';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Системийн анхдагч';

  @override
  String get chooseLanguage => 'Хэл сонгох';

  @override
  String get searchLanguage => 'Хэл хайх...';

  @override
  String get appearance => 'Гадаад байдал';

  @override
  String get light => 'Гэрэлтэй';

  @override
  String get system => 'Систем';

  @override
  String get dark => 'Харанхуй';

  @override
  String get themeColor => 'Сэдвийн өнгө';

  @override
  String get dynamicColors => 'Динамик өнгө';

  @override
  String get dynamicColorsSubtitle =>
      'Таны ханын зураг дээр үндэслэсэн өнгийг ашиглана уу';

  @override
  String get finance => 'Санхүү';

  @override
  String get monthlyBudgetNav => 'Сарын төсөв';

  @override
  String get budgetSubtitle => 'Сарын зардлаа хянах';

  @override
  String get data => 'Өгөгдөл';

  @override
  String get backupNav => 'Нөөц хуулбар';

  @override
  String get backupSubtitle => 'Өгөгдлөө экспортлох эсвэл импортлох';

  @override
  String get about => 'Тухай';

  @override
  String get version => 'Хувилбар';

  @override
  String get privacy => 'Нууцлал';

  @override
  String get termsOfUse => 'Ашиглах нөхцөл';

  @override
  String get backupTitle => 'Нөөц хуулбар';

  @override
  String get backupPremiumDescription =>
      'Нөөц хуулбар ба экспорт нь Premium онцлог юм';

  @override
  String get exportData => 'Өгөгдөл экспортлох';

  @override
  String get exportDataSubtitle => 'Бүх жагсаалтыг JSON хэлбэрээр хадгалах';

  @override
  String get importData => 'Өгөгдөл импортлох';

  @override
  String get importDataSubtitle => 'JSON-оос жагсаалтуудыг сэргээх';

  @override
  String get importJsonTitle => 'JSON импортлох';

  @override
  String get importJsonHint => 'Нөөц хуулбарын JSON-г энд буулгана уу...';

  @override
  String get backupExported => 'Нөөц хуулбар экспортлогдсон!';

  @override
  String get budgetAppBar => 'Сарын төсөв';

  @override
  String get budgetPremiumLocked => 'Сарын төсөв нь Premium онцлог юм';

  @override
  String get budgetUpgradePrompt => 'Нээхээр шинэчлэх';

  @override
  String get noBudgetDefined => 'Төсөв тогтоогдоогүй';

  @override
  String totalEstimated(String amount) {
    return 'Нийт тооцоолсон: $amount';
  }

  @override
  String get setBudgetButton => 'Төсөв тогтоох';

  @override
  String get budgetLists => 'Жагсаалтууд';

  @override
  String get budgetValueLabel => 'Дүн';

  @override
  String get setBudgetTitle => 'Сарын төсөв';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Бүгд';

  @override
  String get filterPending => 'Хүлээгдэж буй';

  @override
  String get filterPurchased => 'Худалдаж авсан';

  @override
  String get sortName => 'Нэр';

  @override
  String get sortCategory => 'Ангилал';

  @override
  String get sortDate => 'Огноо';

  @override
  String get sortManual => 'Гараар';

  @override
  String get addItem => 'Зүйл нэмэх';

  @override
  String get itemName => 'Зүйлийн нэр';

  @override
  String get quantityShort => 'Тоо';

  @override
  String get unit => 'Нэгж';

  @override
  String get category => 'Ангилал';

  @override
  String get estimatedPrice => 'Тооцоолсон үнэ';

  @override
  String get addItemPrice => 'Тооцоолсон үнэ';

  @override
  String get editItem => 'Зүйл засах';

  @override
  String get quantityFull => 'Тоо хэмжээ';

  @override
  String get editItemPrice => 'Тооцоолсон үнэ';

  @override
  String get addToPantry => 'Агуулаханд нэмэх';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\"-г агуулаханд нэмэх үү?';
  }

  @override
  String get yes => 'Тийм';

  @override
  String get productName => 'Бүтээгдэхүүний нэр';

  @override
  String get idealQty => 'Тохиромжтой тоо';

  @override
  String get currentQty => 'Одоогийн тоо';

  @override
  String get trackStock => 'Нөөцийг хянах';

  @override
  String get trackStockActive => 'Дэлгүүрийн зөвлөмжид харагдана';

  @override
  String get trackStockInactive => 'Дэлгүүрийн зөвлөмж үүсгэхгүй';

  @override
  String get createListDialog => 'Жагсаалт үүсгэх';

  @override
  String get renameListDialog => 'Жагсаалтын нэр өөрчлөх';

  @override
  String get listHistory => 'Жагсаалтын түүх';

  @override
  String get myLists => 'Миний жагсаалтууд';

  @override
  String get viewActive => 'Идэвхтэйг харах';

  @override
  String get viewHistory => 'Түүхийг харах';

  @override
  String get noArchivedLists => 'Архивлагдсан жагсаалт байхгүй';

  @override
  String get noActiveLists => 'Идэвхтэй жагсаалт байхгүй';

  @override
  String completedOn(String date) {
    return '$date дууссан';
  }

  @override
  String get sharedLabel => 'Хуваалцсан';

  @override
  String get restore => 'Сэргээх';

  @override
  String get removeSharedTooltip => 'Устгах';

  @override
  String get deleteListTitle => 'Жагсаалтыг устгах';

  @override
  String deleteListContent(String name) {
    return '\"$name\"-г устгахдаа итгэлтэй байна уу? Бүх зүйлс устгагдах болно.';
  }

  @override
  String get removeSharedListTitle => 'Хуваалцсан жагсаалтыг устгах';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\"-г жагсаалтуудаас устгах уу? Анхны жагсаалт өөрчлөгдөхгүй.';
  }

  @override
  String get createNewList => 'Шинэ жагсаалт үүсгэх';

  @override
  String get aiAssistant => 'AI туслах';

  @override
  String get aiAssistantDescription =>
      'Манай AI туслахаар ухаалаг санал, жор, хувийн зөвлөгөө аваарай.';

  @override
  String get generalAssistant => 'Ерөнхий туслах';

  @override
  String get clearHistory => 'Түүхийг цэвэрлэх';

  @override
  String get clearHistoryConfirm => 'Энэ сессийн бүх зурвасыг цэвэрлэх үү?';

  @override
  String get chatHint => 'Зурвасаа бичнэ үү...';

  @override
  String chatError(String error) {
    return 'Чат ачааллахад алдаа: $error';
  }

  @override
  String get listHelp => 'Жагсаалтанд хэрхэн туслах вэ?';

  @override
  String get generalHelp => 'Өнөөдөр дэлгүүр хэсэхэд хэрхэн туслах вэ?';

  @override
  String get chatSubtitle =>
      'Зүйлсийн санал, жор, хэмнэлтийн зөвлөгөө авахыг асуу.';

  @override
  String get aiError =>
      'Уучлаарай, таны хүсэлтийг боловсруулахад алдаа гарлаа. Холболтоо шалгах эсвэл дараа дахин оролдоно уу.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Premium онцлогуудыг\nнээхээр нэвтрэх';

  @override
  String get signInGoogle => 'Google-р нэвтрэх';

  @override
  String get signInApple => 'Apple-ээр нэвтрэх';

  @override
  String get continueAsGuest => 'Зочноор үргэлжлүүлэх';

  @override
  String loginError(String error) {
    return 'Нэвтрэх алдаа: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Нээхээр шинэчлэх';

  @override
  String get itemRemoved => 'Зүйл устгагдсан';

  @override
  String get undo => 'Буцаах';

  @override
  String get emptyListTitle => 'Таны жагсаалт хоосон байна';

  @override
  String get emptyListSubtitle => 'Эхлэхэд зүйлс нэмнэ үү';

  @override
  String get noListFoundTitle => 'Жагсаалт олдсонгүй';

  @override
  String get noListFoundSubtitle => 'Эхлэхэд анхны жагсаалтаа үүсгэнэ үү';

  @override
  String get createFirstList => 'Анхны жагсаалтыг үүсгэх';

  @override
  String get listBudgetTitle => 'Жагсаалтын төсөв';

  @override
  String get budgetAmountLabel => 'Төсвийн дүн';

  @override
  String get removeBudget => 'Устгах';

  @override
  String get prefUnlimitedLists => 'Хязгааргүй жагсаалт';

  @override
  String get prefSharing => 'Жагсаалт хуваалцах';

  @override
  String get prefFullHistory => 'Бүрэн түүх';

  @override
  String get prefExportData => 'Өгөгдөл экспортлох';

  @override
  String get prefCustomThemes => 'Өөрийн сэдвүүд';

  @override
  String get prefMonthlyBudget => 'Сарын төсөв';

  @override
  String get prefAIAssistant => 'Хувийн AI туслах';

  @override
  String get prefUnlimitedPantry => 'Хязгааргүй агуулах';

  @override
  String get prefInteractiveArtifacts => 'Интерактив AI бүтээлүүд';

  @override
  String get themeGreen => 'Ногоон';

  @override
  String get themeBlue => 'Цэнхэр';

  @override
  String get themePurple => 'Ягаан';

  @override
  String get themeRed => 'Улаан';

  @override
  String get themeOrange => 'Улбар шар';

  @override
  String get themePink => 'Ягаан';

  @override
  String get themeIndigo => 'Индиго';

  @override
  String get themeAmber => 'Гувлин';

  @override
  String get themeTeal => 'Номин';

  @override
  String get themeBrown => 'Бор';

  @override
  String get catFruits => 'Жимс';

  @override
  String get catCleaning => 'Цэвэрлэгээ';

  @override
  String get catBeverages => 'Ундаа';

  @override
  String get catBakery => 'Талх нарийн боов';

  @override
  String get catOthers => 'Бусад';

  @override
  String get unitPack => 'багц';

  @override
  String get shareSubject => 'Дэлгүүрийн жагсаалт';

  @override
  String get monthlyBudgetTitle => 'Сарын төсөв';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Жагсаалтыг устгах';

  @override
  String get pantryItemRemoved => 'Зүйл устгагдсан';

  @override
  String deficitItems(int deficit) {
    return '$deficit зүйл(с) худалдаж авах шаардлагатай';
  }

  @override
  String get cartTotal => 'Сагсны нийт';

  @override
  String get restockLabel => 'Нөөцлөх';

  @override
  String get advancedFeatures => 'Дэвшилтэт онцлогууд';

  @override
  String get selectAll => 'Бүгдийг сонгох';

  @override
  String get deselectAll => 'Бүгдийг цуцлах';

  @override
  String get monthlyBudgetAppBar => 'Сарын төсөв';

  @override
  String get budgetEditTitle => 'Сарын төсөв';

  @override
  String get budgetDashboardTitle => 'Хяналтын самбар';

  @override
  String get selectListForDashboard =>
      'Хяналтын самбарыг үзэх жагсаалт сонгоно уу.';

  @override
  String get spendingAnalysis => 'Зардлын шинжилгээ';

  @override
  String get noItemsToAnalyze => 'Шинжлэх жагсаалтад зүйлс байхгүй.';

  @override
  String get markItemsToSeeAnalysis =>
      'Шинжилгээг үзэхэд зүйлсийг худалдаж авсан гэж тэмдэглэнэ үү.';

  @override
  String get totalSpending => 'Нийт зарцуулсан';

  @override
  String get spendingByCategory => 'Ангилалаар зарцуулалт';

  @override
  String get achievements => 'Амжилтууд';

  @override
  String get exportPdfExcel => 'PDF/Excel экспортлох';

  @override
  String get exportPdf => 'PDF хэлбэрээр экспортлох';

  @override
  String get exportExcel => 'Excel хэлбэрээр экспортлох';

  @override
  String get organizingAi => 'AI-тай зохион байгуулж байна...';

  @override
  String get yesLabel => 'Тийм';

  @override
  String get noLabel => 'Үгүй';

  @override
  String get shareListText => 'Миний дэлгүүрийн жагсаалт';

  @override
  String get emptyListAddItems =>
      'Таны жагсаалт хоосон байна! Эхлээд зүйлс нэмнэ үү. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Жагсаалт ангилалаар ид шидтэй зохион байгуулагдсан! ✨';

  @override
  String get shoppingMode => 'Дэлгүүрийн горим';

  @override
  String get smartOrganization => 'Ухаалаг зохион байгуулалт';

  @override
  String get savings => 'Хэмнэлт';

  @override
  String get shoppingModeHeader => 'ДЭЛГҮҮРИЙН ГОРИМ';

  @override
  String get shareAsText => 'Зүйлсийг форматлагдсан текст хэлбэрээр илгээх';

  @override
  String get shareRealtime => 'Бусад хүмүүстэй бодит цагийн синхрончлол';

  @override
  String get quickRecipe => 'Хурдан жор';

  @override
  String get quickRecipePrompt => 'Миний жагсаалтын зүйлсээр жор санал болго.';

  @override
  String get economyTips => 'Хэмнэлтийн зөвлөгөө';

  @override
  String get economyTipsPrompt =>
      'Энэ худалдан авалтад хэрхэн мөнгө хэмнэх вэ?';

  @override
  String get organizeAisles => 'Тавиураар зохион байгуулах';

  @override
  String get organizeAislesPrompt => 'Дэлгүүрийн тавиураар зохион байгуулах.';

  @override
  String get recipeSuggestion => 'Жорын санал';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining кредит үлдсэн';
  }

  @override
  String get addAllToList => 'Бүгдийг жагсаалтад нэмэх';

  @override
  String get organizeByAisles => 'Тавиураар зохион байгуулах';

  @override
  String get voiceTranscriptionTooltip => 'Дуут бичилт (Үнэгүй)';

  @override
  String get aiVoiceCommandTooltip => 'AI дуут команд (Premium)';

  @override
  String get voiceCommandTitle => 'AI дуут команд';

  @override
  String get voiceCommandContent =>
      'Жагсаалтаа удирдахаар байгалийн ярь!\n\nЖишээнүүд:\n• \'Талх, бяслаг, хиам нэм\'\n• \'Угаалгын нунтаг устга\'\n• \'Сэдвийг цэнхэр болго\'\n\nЭнэ бол Lista Plus Premium-ын онцгой онцлог юм.';

  @override
  String get voiceCommandPlanBtn => 'Төлөвлөгөө үзэх';

  @override
  String get itemsAddedSuccess => 'Зүйлс жагсаалтад амжилттай нэмэгдсэн!';

  @override
  String get viewList => 'Жагсаалтыг үзэх';

  @override
  String get feedbackTitle => 'Санал хүсэлт илгээх';

  @override
  String get feedbackPrompt => 'Юу хуваалцахыг хүсэж байна вэ?';

  @override
  String get feedbackTypeBug => 'Алдаа мэдээлэх';

  @override
  String get feedbackTypeBugHint => 'Ямар нэг зүйл ажиллахгүй байна';

  @override
  String get feedbackTypeSuggestion => 'Санал';

  @override
  String get feedbackTypeSuggestionHint => 'Аппыг сайжруулах санаа';

  @override
  String get feedbackTypeTranslation => 'Орчуулгын асуудал';

  @override
  String get feedbackTypeTranslationHint => 'Буруу эсвэл эвгүй орчуулга';

  @override
  String get feedbackTypeFeature => 'Функц хүсэх';

  @override
  String get feedbackTypeFeatureHint => 'Таны харахыг хүссэн функц';

  @override
  String get feedbackTypeOther => 'Бусад';

  @override
  String get feedbackTypeOtherHint => 'Бусад төрлийн санал';

  @override
  String get feedbackHint => 'Саналаа дэлгэрэнгүй бичнэ үү...';

  @override
  String get feedbackSend => 'Санал илгээх';

  @override
  String get feedbackSending => 'Илгээж байна...';

  @override
  String get feedbackThankYou => 'Баярлалаа!';

  @override
  String get feedbackThankYouMessage =>
      'Таны санал хүлээн авсан. Энэ нь Lista Plus-ийг бүгдэд зориулж сайжруулахад тусална.';

  @override
  String get feedbackBack => 'Буцах';

  @override
  String feedbackError(String error) {
    return 'Илгээхэд алдаа гарлаа: $error';
  }

  @override
  String get feedbackRetry => 'Дахин оролдох';

  @override
  String get feedbackSettingsTitle => 'Санал илгээх';

  @override
  String get feedbackSettingsSubtitle =>
      'Алдаа мэдээлэх, сайжруулах санал, эсвэл орчуулга засах';

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
  String get openMenu => 'Цэс нээх';

  @override
  String get viewRecipe => 'Жор үзэх';

  @override
  String get recipeCreated => 'Жор үүсгэгдлээ!';

  @override
  String get editRecipe => 'Засварлах';

  @override
  String get deleteRecipe => 'Устгах';

  @override
  String get deleteRecipeConfirm => 'Энэ жорыг устгах уу?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Та \"$recipeName\" жорыг устгахдаа итгэлтэй байна уу? Энэ үйлдлийг буцаах боломжгүй.';
  }

  @override
  String get ingredients => 'Найрлага';

  @override
  String get instructions => 'Заавар';

  @override
  String get prepTime => 'Бэлтгэх хугацаа';

  @override
  String get recipeSaved => 'Жор хадгалагдлаа!';

  @override
  String get noRecipesSaved => 'Хадгалсан жор алга';

  @override
  String get noRecipesSavedHint =>
      'Доорх товчлуур дээр дарж анхны жороо үүсгэнэ үү.';

  @override
  String get myRecipes => 'Миний жорууд';

  @override
  String get newRecipe => 'Шинэ жор';

  @override
  String get loadingRecipes => 'Таны жоруудыг ачаалж байна...';

  @override
  String get errorLoadingRecipes => 'Жор ачаалахад алдаа гарлаа';

  @override
  String get addIngredient => 'Найрлага нэмэх';

  @override
  String get saveRecipe => 'Хадгалах';

  @override
  String get recipeName => 'Жорын нэр';

  @override
  String get shortDescription => 'Товч тайлбар';

  @override
  String get prepTimeMinutes => 'Бэлтгэх хугацаа (минут)';

  @override
  String get instructionsHint => 'Мөр бүрт нэг алхам бичнэ үү...';

  @override
  String get addPhoto => 'Зураг нэмэх';

  @override
  String get imageUrlPlaceholder => 'Эсвэл зургийн URL-г буулгана уу';

  @override
  String get tags => 'Шошго';

  @override
  String get recipeTags => 'Жорын шошго';

  @override
  String get suggestedTags => 'Санал болгож буй';

  @override
  String get searchRecipes => 'Жор хайх...';

  @override
  String get filterByTag => 'Шошгоор шүүх';

  @override
  String get allTags => 'Бүгд';

  @override
  String get recipeDeleted => 'Жор устгагдсан';

  @override
  String get saveChanges => 'Өөрчлөлтийг хадгалах';

  @override
  String get editRecipeTitle => 'Жор засварлах';

  @override
  String get newRecipeTitle => 'Шинэ жор';

  @override
  String get requiredField => 'Шаардлагатай';

  @override
  String get chooseImageSource => 'Зургийн эх үүсвэрийг сонгоно уу';

  @override
  String get gallery => 'Галерей';

  @override
  String get enterUrl => 'URL оруулна уу';

  @override
  String get recipeImage => 'Жорын зураг';

  @override
  String get removeImage => 'Зураг устгах';

  @override
  String get mealPlannerTitle => 'Хоолны төлөвлөгч';

  @override
  String get mealPlannerViewMonthly => 'Сар бүрийн харагдац';

  @override
  String get mealPlannerViewWeekly => 'Долоо хоногийн харагдац';

  @override
  String get mealPlannerNoMeals => 'Төлөвлөсөн хоол алга';

  @override
  String get mealPlannerNoMealsHint =>
      'Хоол нэмэхийн тулд өдөр дээр товшино уу';

  @override
  String get mealPlannerLoading => 'Хоолны төлөвлөгөө ачаалж байна...';

  @override
  String get mealPlannerError => 'Хоолны төлөвлөгөө ачаалахад алдаа гарлаа';

  @override
  String get mealPlannerAddMeal => 'Хоол нэмэх';

  @override
  String get mealPlannerEditMeal => 'Хоол засварлах';

  @override
  String get mealPlannerDeleteMeal => 'Хоол устгах';

  @override
  String get mealPlannerMealDeleted => 'Хоол устгагдсан';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count порц',
      one: '$count порц',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Порц';

  @override
  String get mealPlannerNoteLabel => 'Тэмдэглэл (заавал биш)';

  @override
  String get mealPlannerSelectRecipe => 'Жор сонгох';

  @override
  String get mealPlannerSearchRecipes => 'Жор хайх...';

  @override
  String get mealPlannerNoRecipesFound => 'Жор олдсонгүй';

  @override
  String get mealPlannerNoRecipesHint => 'Эхлээд Жор таб дээр жор үүсгэнэ үү';

  @override
  String get mealPlannerSave => 'Төлөвлөгөөнд нэмэх';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total хоолны $count нь төлөвлөгдсөн';
  }

  @override
  String get mealPlannerGenerateList => 'Шопинг жагсаалт гаргах';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Энэ долоо хоногт төлөвлөсөн хоолны бүх найрлагыг шопинг жагсаалтад нэмэх үү?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count найрлага таны жагсаалтад нэмэгдлээ!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Нэмэх найрлага алга. Эхлээд жороор хоол төлөвлөнө үү.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Эхлээд шопинг жагсаалт үүсгэнэ үү.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Өглөөний цай';

  @override
  String get mealPlannerMealTypeLunch => 'Үдийн хоол';

  @override
  String get mealPlannerMealTypeDinner => 'Оройн хоол';

  @override
  String get mealPlannerMealTypeSnack => 'Хөнгөн зууш';

  @override
  String get mealPlannerDateLabel => 'Огноо';

  @override
  String get mealPlannerWeekEmpty => 'Энэ долоо хоногт төлөвлөсөн зүйл алга';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Хоолоо төлөвлөж эхлэхийн тулд дурын өдөр дээр товшино уу!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes мин';
  }
}
