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
  String get navChat => 'Чатлах';

  @override
  String get navRecipes => 'Хоолны жор';

  @override
  String get navLists => 'Жагсаалтууд';

  @override
  String get navMealPlanner => 'Цэс';

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
  String get next => 'Дараа нь';

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
  String get profile => 'Профайл';

  @override
  String get exitShoppingMode => 'Худалдааны горимоос гарах';

  @override
  String get exit => 'Гарах';

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
  String get currency => 'Валют';

  @override
  String get chooseCurrency => 'Валют сонгоно уу';

  @override
  String get searchCurrency => 'Валют хайх...';

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
      'Загварын өнгө хүчин төгөлдөр болохын тулд динамик өнгийг идэвхгүй болго';

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
  String get newChat => 'Шинэ чат';

  @override
  String get noHistory => 'Чатын түүх байхгүй';

  @override
  String get deleteSession => 'Чатыг устгах';

  @override
  String get deleteSessionConfirm =>
      'Та энэ чатыг устгахдаа итгэлтэй байна уу? Зурвасууд бүрмөсөн алга болно.';

  @override
  String get clearHistory => 'Түүх цэвэрлэх';

  @override
  String get clearHistoryConfirm => 'Энэ сессийн бүх мессежийг цэвэрлэх үү?';

  @override
  String get chatHint => 'Мессежээ бичнэ үү...';

  @override
  String get chatHintBlocked => 'Чатлахын тулд AI-ийн түгжээг тайлаарай';

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
  String get aiLimitAlmostReached => 'AI мессеж бараг байхгүй болсон';

  @override
  String get unlockAi => 'Хязгааргүй хиймэл оюун ухааны түгжээг тайл';

  @override
  String get aiTeaserFallback =>
      'Бүрэн хариултыг нээхийн тулд Premium-д бүртгүүлж, дэлгүүр хэсэхдээ хязгааргүй хиймэл оюун ухааны зөвлөгөө аваарай...';

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
  String get loginPrompt => 'Нэвтрээд Premium\nфункцуудыг нээх';

  @override
  String get signInGoogle => 'Google -р нэвтрэх';

  @override
  String get signInApple => 'Apple -р нэвтрэх';

  @override
  String get continueAsGuest => 'Зочин хэлбэрээр үргэлжлүүлэх';

  @override
  String get onboardingWelcomeTitle => 'KipiList-д тавтай морил';

  @override
  String get onboardingWelcomeDesc =>
      'Худалдан авалтаа зохион байгуулж, мөнгөө хэмнэх хамгийн ухаалаг арга.';

  @override
  String get onboardingSetupTitle => 'Туршлагаа хувийн болго';

  @override
  String get onboardingSetupDesc =>
      'KipiList хэрхэн харагдах, таны төлөө ажиллахыг хүсч байгаагаа сонго.';

  @override
  String get onboardingLoginTitle => 'Бүгдийг үүлэн дээр хадгал';

  @override
  String get onboardingLoginDesc =>
      'Таны өгөгдлийг бүх төхөөрөмжид синк хийсэн';

  @override
  String get onboardingShareTitle => 'Хайртай хүмүүстэйгээ хуваалцаарай';

  @override
  String get onboardingShareDesc =>
      'Жагсаалтыг гэр бүл, найз нөхөдтэйгээ бодит цаг хугацаанд синк хийнэ үү';

  @override
  String get onboardingPremiumTitle => 'Бүх функцийн түгжээг тайл';

  @override
  String get onboardingPremiumSubtitle =>
      'Худалдан авалтын жагсаалтаасаа хамгийн их ашиг хүртээрэй';

  @override
  String get onboardingAnnualBadge => 'Хамгийн сайн үнэ цэнэ';

  @override
  String get onboardingMonthlyLabel => 'Сар бүр';

  @override
  String get onboardingAnnualLabel => 'Жилийн';

  @override
  String get onboardingViewAllPlans => 'Бүх төлөвлөгөөг харах';

  @override
  String get onboardingSubscribeCta => 'Бүртгүүлэх';

  @override
  String get onboardingCancelAnytime => 'Хэзээ ч цуцлах. Амлалт байхгүй.';

  @override
  String get onboardingContinueAsGuest => 'Зочиноор үргэлжлүүлээрэй';

  @override
  String get onboardingRestore => 'Сэргээх';

  @override
  String get onboardingRestoreDesc =>
      'Аль хэдийн захиалга авсан уу? Үүнийг сэргээхийн тулд энд товшино уу.';

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
  String get onboardingExit => 'Гарах';

  @override
  String get onboardingPersonalizationTitle => 'Тантай танилцацгаая';

  @override
  String get onboardingPersonalizationDesc =>
      'Бид үүнийг таны саналыг хувийн болгож, худалдан авалтыг илүү ухаалаг болгоход ашиглах болно.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Таны дуртай хоол юу вэ?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'жишээ нь Пицца, суши, лазанья...';

  @override
  String get onboardingPersonalizationCta => 'Үргэлжлүүлэх';

  @override
  String get onboardingPersonalizationSkip => 'Одоохондоо алгасая';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Үргэлжлүүлэхийн тулд дуртай хоолоо бидэнд хэлээрэй';

  @override
  String get settingsDefaultScreen => 'Үндсэн нүүр дэлгэц';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Худалдааны жагсаалт эсвэл AI чат хоёрын хооронд сонгоно уу';

  @override
  String get settingsScreenList => 'Худалдан авалтын жагсаалт';

  @override
  String get settingsScreenChat => 'AI чат';

  @override
  String loginError(String error) {
    return 'Нэвтрэх алдаа: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Саналыг ачаалахад алдаа гарлаа. Дахин оролдоно уу.';

  @override
  String get paywallPurchaseError =>
      'Худалдан авалтыг дуусгаж чадсангүй. Дахин оролдоно уу.';

  @override
  String get paywallRestoreError => 'Сэргээх идэвхтэй захиалга олдсонгүй.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ӨДӨР ҮНЭГҮЙ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ДОЛОО ХОНОГ ҮНЭГҮЙ',
      one: '$count ДОЛОО ХОНОГ ҮНЭГҮЙ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count САР ҮНЭГҮЙ',
      one: '$count САР ҮНЭГҮЙ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'KipiList Pro-г 7 хоног үнэгүй туршаад үзээрэй';

  @override
  String get paywallTrialSubtitle => 'Хэзээ ч цуцлах. Өнөөдөр төлбөргүй.';

  @override
  String get paywallTrialCta => 'Үнэгүй туршилтыг эхлүүлэх';

  @override
  String get recipeAddToList => 'Худалдан авалтын жагсаалтад нэмнэ үү';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count найрлагыг $listName-д нэмсэн';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Танд хэрэгтэй бүх зүйл:';

  @override
  String get paywallFeatureUnlimitedLists => 'Хязгааргүй жагсаалт';

  @override
  String get paywallFeatureSmartAI => 'Ухаалаг AI';

  @override
  String get paywallFeatureExpenseControl => 'Зардлын хяналт';

  @override
  String get paywallFeatureSharing => 'Хуваалцах';

  @override
  String get paywallBeforeAfterTitle => 'AI өмнө ба дараа:';

  @override
  String get paywallLabelCommon => 'Нийтлэг';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'будаа';

  @override
  String get paywallBeforeItem2 => 'саван';

  @override
  String get paywallBeforeItem3 => 'мах';

  @override
  String get paywallBeforeItem4 => 'талх';

  @override
  String get paywallAfterItem1 => 'Үр тариа';

  @override
  String get paywallAfterItem2 => 'Цэвэрлэгээ';

  @override
  String get paywallAfterItem3 => 'Мах';

  @override
  String get paywallAfterItem4 => 'Талх нарийн боов';

  @override
  String get paywallTestimonialsTitle => 'Манай хэрэглэгчид юу гэж хэлдэг:';

  @override
  String get paywallTestimonial1Name => 'Анн С.';

  @override
  String get paywallTestimonial1Text =>
      'AI миний худалдан авалтыг секундын дотор зохион байгуулдаг. Би зах зээлд 20 минут хэмнэдэг.';

  @override
  String get paywallTestimonial2Name => 'Чарльз М.';

  @override
  String get paywallTestimonial2Text =>
      'Би жагсаалтын нэг зүйлийг дахин хэзээ ч мартсангүй. AI чат нь сенсаацтай юм!';

  @override
  String get paywallSocialProof => '+2400 өрх үүнийг ашигладаг';

  @override
  String get paywallCtaUnlock => 'PRO түгжээг тайл';

  @override
  String get paywallBestValue => 'ХАМГИЙН ҮНЭ ЦЭНЭ';

  @override
  String get paywallMostPopular => 'ХАМГИЙН АЛДАРТ';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Аюулгүй төлбөр';

  @override
  String get paywallSelectPlan => 'Төлөвлөгөөгөө сонгоно уу:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% ХЭМНЭХ';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Зөвхөн $price/сар';
  }

  @override
  String get paywallPackageAnnual => 'Жилийн төлөвлөгөө';

  @override
  String get paywallPackageMonthly => 'Сарын төлөвлөгөө';

  @override
  String get paywallPackageLifetime => 'Насан туршийн хандалт';

  @override
  String get paywallCancelAnytime => 'Хэзээ ч цуцлах. Амлалт байхгүй.';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'Нууцлалын бодлого';

  @override
  String get paywallTerms => 'Хэрэглэх нөхцөл';

  @override
  String get paywallRestore => 'Сэргээх';

  @override
  String get paywallHeroHeadline => 'Kipi AI үргэлж таны хажууд байдаг';

  @override
  String get paywallHeroSubtitle =>
      'Хиймэл оюун ухааны тусламжтайгаар халаасандаа байгаа зүйлсээ нэмж, жагсаалтаа цэгцэлж, цаг хэмнээрэй';

  @override
  String get paywallBenefit1Desc => '24/7 зүйл нэмж, цэгцэлж, санал болгодог';

  @override
  String get paywallBenefit2Desc => '3 жагсаалтын хязгаарлалт байхгүй';

  @override
  String get paywallBenefit3Desc => 'Зардлын хяналт, гэр бүлийн жагсаалт';

  @override
  String get paywallPackageMonthlyDesc => 'Бүрэн уян хатан байдал';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Үнэгүй эхлэх — $days хоног';
  }

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
      'Жагсаалтаа удирдахын тулд байгалийн жамаар ярь!\n\nЖишээнүүд:\n• \'Талх, бяслаг, хиам нэмэх\'\n• \'Угаалгын нунтаг устгах\'\n• \'Сэдвийг цэнхэр болгох\'\n\nЭнэ бол KipiList Premium -ийн онцгой функц юм.';

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
      'Таны саналыг хүлээн авлаа. Энэ нь KipiList-г бүгдэд зориулж сайжруулахад тусална.';

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
  String get aiEnergy => 'AI эрчим хүч';

  @override
  String get searchInConversation => 'Харилцан ярианаас хайх...';

  @override
  String get noMessagesFound => 'Мессеж олдсонгүй';

  @override
  String get suggestedQuestions => 'Санал болгож буй асуултууд:';

  @override
  String get shoppingAssistant => 'Худалдааны туслах';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total-ийн $purchased-г худалдаж авсан';
  }

  @override
  String get estimatedCost => 'Тооцоолсон';

  @override
  String get viewItems => 'Зүйлс харах';

  @override
  String get noItemsInList => 'Жагсаалтад зүйл алга';

  @override
  String get longHistoryWarning =>
      'Урт түүх: Туслах нь гүйцэтгэлийг сайжруулахын тулд хамгийн сүүлийн үеийн мессежүүдэд анхаарлаа хандуулдаг.';

  @override
  String get listening => 'Сонсож байна...';

  @override
  String get addDirectToList => 'Жагсаалтад шууд нэмнэ үү';

  @override
  String get unlockFullResponse => 'Бүрэн хариултын түгжээг тайлах';

  @override
  String get switchList => 'Жагсаалтыг солих';

  @override
  String get marketMode => 'Зах зээлийн горим';

  @override
  String get backToChat => 'Чат руу буцах';

  @override
  String get finishShopping => 'Дэлгүүрээ дуусга';

  @override
  String get welcomeAiAssistant => 'AI Assistant-д тавтай морил';

  @override
  String get createListToStartAi =>
      'Ухаалаг чат ашиглаж эхлэхийн тулд худалдааны жагсаалт үүсгэ.';

  @override
  String get howCanIHelp => 'Би яаж туслах вэ?';

  @override
  String get chatSubtitleShort =>
      'Үнэ, жор, зохион байгуулалтын талаар асуу...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total худалдаж авсан';
  }

  @override
  String get quickReplies => 'Шуурхай хариултууд:';

  @override
  String get voiceProFeature =>
      'Нарийвчилсан дуут тушаалууд нь Pro. Үндсэн диктантыг идэвхжүүлж байна...';

  @override
  String get viewPro => 'Pro харах';

  @override
  String get errorLoadingChat => 'Өө! Чатыг ачаалахад алдаа гарлаа.';

  @override
  String get errorLoadingChatSubtitle =>
      'Холболтоо шалгах эсвэл дараа дахин оролдоно уу.';

  @override
  String get errorOscillation =>
      'Энэ нь сүлжээний хэлбэлзэл эсвэл түр зуур ашиглах боломжгүй зэргээс шалтгаалж болно. Дахин оролдоно уу.';

  @override
  String get activeListening => 'Идэвхтэй сонсох';

  @override
  String get whatToDoWithItem => 'Та энэ зүйлээр юу хийхийг хүсч байна вэ?';

  @override
  String get viewDetails => 'Дэлгэрэнгүйг харах';

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
  String get inviteToList => 'Жагсаалтад урих';

  @override
  String get shareApp => 'Аппликешн хуваалцах';

  @override
  String get shareAppDescription => 'Найзуудаа KipiList ашиглахыг урь';

  @override
  String shareReferralText(Object url) {
    return 'Би дэлгүүр хэсэхдээ KipiList ашиглаж байна! Миний холбоосоор татаж аваад бид хоёулаа 7 хоногийн Premium-г үнэгүй авах боломжтой: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList Premium-г 7 хоног аваарай!';

  @override
  String get gestureHint =>
      'Сонгохын тулд удаан дарна уу • Устгахын тулд шударна уу';

  @override
  String get catalogTitle => 'Каталог';

  @override
  String get catalogMyFrequents => 'Миний байнгын хүмүүс';

  @override
  String get catalogSearchGlobal => 'Ямар ч бүтээгдэхүүн хайх...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category-д хайх...';
  }

  @override
  String get catalogSortPopular => 'Хамгийн алдартай';

  @override
  String get catalogSortAZ => 'А–З';

  @override
  String get catalogFilterNational => 'Үндэсний хүмүүс';

  @override
  String get catalogRareSection => 'танай улсад бага тохиолддог';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 нэмэх →';
  }

  @override
  String get catalogProductNotFound =>
      'Бүтээгдэхүүн олдсонгүй, нэрийг бичнэ үү';

  @override
  String get catalogBrowse => 'Каталог үзэх';

  @override
  String get offlineBanner => 'Та офлайн байна';

  @override
  String get consentTitle => 'Нууцлал ба Аналитик';

  @override
  String get consentBody =>
      'KipiList нь таны туршлагыг сайжруулахын тулд Firebase Analytics ашигладаг. Таны мэдээллийг манай Нууцлалын бодлогын дагуу боловсруулдаг.';

  @override
  String get consentAccept => 'Зөвшөөрөх';

  @override
  String get consentDecline => 'Үгүй ээ, баярлалаа';

  @override
  String get mealPlannerPantryAllAvailable => 'Нөөцөд байгаа';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дутуу зүйл',
      one: '$count дутуу зүйл',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Хугацаа дуусах хугацаа';

  @override
  String get notInformed => 'Мэдээгүй';

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
  String get manageCategoriesTitle => 'Ангилалуудыг удирдах';

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
  String get sortAZ => 'А–З';

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
  String get backToToday => 'Өнөөдөр рүү буцах';

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
  String get navChat => 'Чатлах';

  @override
  String get navRecipes => 'Хоолны жор';

  @override
  String get navLists => 'Жагсаалтууд';

  @override
  String get navMealPlanner => 'Цэс';

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
  String get next => 'Дараа нь';

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
  String get profile => 'Профайл';

  @override
  String get exitShoppingMode => 'Худалдааны горимоос гарах';

  @override
  String get exit => 'Гарах';

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
  String get languagePortuguese => 'Português (Бразил)';

  @override
  String get languageEnglish => 'Англи';

  @override
  String get languageSystem => 'Системийн анхдагч';

  @override
  String get chooseLanguage => 'Хэл сонгох';

  @override
  String get searchLanguage => 'Хэл хайх...';

  @override
  String get currency => 'Валют';

  @override
  String get chooseCurrency => 'Валют сонгоно уу';

  @override
  String get searchCurrency => 'Валют хайх...';

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
      'Загварын өнгө хүчин төгөлдөр болохын тулд динамик өнгийг идэвхгүй болго';

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
  String get newChat => 'Шинэ чат';

  @override
  String get noHistory => 'Чатын түүх байхгүй';

  @override
  String get deleteSession => 'Чатыг устгах';

  @override
  String get deleteSessionConfirm =>
      'Та энэ чатыг устгахдаа итгэлтэй байна уу? Зурвасууд бүрмөсөн алга болно.';

  @override
  String get clearHistory => 'Түүхийг цэвэрлэх';

  @override
  String get clearHistoryConfirm => 'Энэ сессийн бүх зурвасыг цэвэрлэх үү?';

  @override
  String get chatHint => 'Зурвасаа бичнэ үү...';

  @override
  String get chatHintBlocked => 'Чатлахын тулд AI-ийн түгжээг тайлаарай';

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
  String get aiLimitAlmostReached => 'AI мессеж бараг байхгүй болсон';

  @override
  String get unlockAi => 'Хязгааргүй хиймэл оюун ухааны түгжээг тайл';

  @override
  String get aiTeaserFallback =>
      'Бүрэн хариултыг нээхийн тулд Premium-д бүртгүүлж, дэлгүүр хэсэхдээ хязгааргүй хиймэл оюун ухааны зөвлөгөө аваарай...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Premium онцлогуудыг\nнээхээр нэвтрэх';

  @override
  String get signInGoogle => 'Google-р нэвтрэх';

  @override
  String get signInApple => 'Apple-ээр нэвтрэх';

  @override
  String get continueAsGuest => 'Зочноор үргэлжлүүлэх';

  @override
  String get onboardingWelcomeTitle => 'KipiList-д тавтай морил';

  @override
  String get onboardingWelcomeDesc =>
      'Худалдан авалтаа зохион байгуулж, мөнгөө хэмнэх хамгийн ухаалаг арга.';

  @override
  String get onboardingSetupTitle => 'Туршлагаа хувийн болго';

  @override
  String get onboardingSetupDesc =>
      'KipiList хэрхэн харагдах, таны төлөө ажиллахыг хүсч байгаагаа сонго.';

  @override
  String get onboardingLoginTitle => 'Бүгдийг үүлэн дээр хадгал';

  @override
  String get onboardingLoginDesc =>
      'Таны өгөгдлийг бүх төхөөрөмжид синк хийсэн';

  @override
  String get onboardingShareTitle => 'Хайртай хүмүүстэйгээ хуваалцаарай';

  @override
  String get onboardingShareDesc =>
      'Жагсаалтыг гэр бүл, найз нөхөдтэйгээ бодит цаг хугацаанд синк хийнэ үү';

  @override
  String get onboardingPremiumTitle => 'Бүх функцийн түгжээг тайл';

  @override
  String get onboardingPremiumSubtitle =>
      'Худалдан авалтын жагсаалтаасаа хамгийн их ашиг хүртээрэй';

  @override
  String get onboardingAnnualBadge => 'Хамгийн сайн үнэ цэнэ';

  @override
  String get onboardingMonthlyLabel => 'Сар бүр';

  @override
  String get onboardingAnnualLabel => 'Жилийн';

  @override
  String get onboardingViewAllPlans => 'Бүх төлөвлөгөөг харах';

  @override
  String get onboardingSubscribeCta => 'Бүртгүүлэх';

  @override
  String get onboardingCancelAnytime => 'Хэзээ ч цуцлах. Амлалт байхгүй.';

  @override
  String get onboardingContinueAsGuest => 'Зочиноор үргэлжлүүлээрэй';

  @override
  String get onboardingRestore => 'Сэргээх';

  @override
  String get onboardingRestoreDesc =>
      'Аль хэдийн захиалга авсан уу? Үүнийг сэргээхийн тулд энд товшино уу.';

  @override
  String get onboardingExit => 'Гарах';

  @override
  String get onboardingPersonalizationTitle => 'Тантай танилцацгаая';

  @override
  String get onboardingPersonalizationDesc =>
      'Бид үүнийг таны саналыг хувийн болгож, худалдан авалтыг илүү ухаалаг болгоход ашиглах болно.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Таны дуртай хоол юу вэ?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'жишээ нь Пицца, суши, лазанья...';

  @override
  String get onboardingPersonalizationCta => 'Үргэлжлүүлэх';

  @override
  String get onboardingPersonalizationSkip => 'Одоохондоо алгасая';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Үргэлжлүүлэхийн тулд дуртай хоолоо бидэнд хэлээрэй';

  @override
  String get settingsDefaultScreen => 'Үндсэн нүүр дэлгэц';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Худалдааны жагсаалт эсвэл AI чат хоёрын хооронд сонгоно уу';

  @override
  String get settingsScreenList => 'Худалдан авалтын жагсаалт';

  @override
  String get settingsScreenChat => 'AI чат';

  @override
  String loginError(String error) {
    return 'Нэвтрэх алдаа: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Саналыг ачаалахад алдаа гарлаа. Дахин оролдоно уу.';

  @override
  String get paywallPurchaseError =>
      'Худалдан авалтыг дуусгаж чадсангүй. Дахин оролдоно уу.';

  @override
  String get paywallRestoreError => 'Сэргээх идэвхтэй захиалга олдсонгүй.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ӨДӨР ҮНЭГҮЙ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ДОЛОО ХОНОГ ҮНЭГҮЙ',
      one: '$count ДОЛОО ХОНОГ ҮНЭГҮЙ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count САР ҮНЭГҮЙ',
      one: '$count САР ҮНЭГҮЙ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'KipiList Pro-г 7 хоног үнэгүй туршаад үзээрэй';

  @override
  String get paywallTrialSubtitle => 'Хэзээ ч цуцлах. Өнөөдөр төлбөргүй.';

  @override
  String get paywallTrialCta => 'Үнэгүй туршилтыг эхлүүлэх';

  @override
  String get recipeAddToList => 'Худалдан авалтын жагсаалтад нэмнэ үү';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count найрлагыг $listName-д нэмсэн';
  }

  @override
  String get paywallFeaturesTitle => 'Танд хэрэгтэй бүх зүйл:';

  @override
  String get paywallFeatureUnlimitedLists => 'Хязгааргүй жагсаалт';

  @override
  String get paywallFeatureSmartAI => 'Ухаалаг AI';

  @override
  String get paywallFeatureExpenseControl => 'Зардлын хяналт';

  @override
  String get paywallFeatureSharing => 'Хуваалцах';

  @override
  String get paywallBeforeAfterTitle => 'AI өмнө ба дараа:';

  @override
  String get paywallLabelCommon => 'Нийтлэг';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'будаа';

  @override
  String get paywallBeforeItem2 => 'саван';

  @override
  String get paywallBeforeItem3 => 'мах';

  @override
  String get paywallBeforeItem4 => 'талх';

  @override
  String get paywallAfterItem1 => 'Үр тариа';

  @override
  String get paywallAfterItem2 => 'Цэвэрлэгээ';

  @override
  String get paywallAfterItem3 => 'Мах';

  @override
  String get paywallAfterItem4 => 'Талх нарийн боов';

  @override
  String get paywallTestimonialsTitle => 'Манай хэрэглэгчид юу гэж хэлдэг:';

  @override
  String get paywallTestimonial1Name => 'Анн С.';

  @override
  String get paywallTestimonial1Text =>
      'AI миний худалдан авалтыг секундын дотор зохион байгуулдаг. Би зах зээлд 20 минут хэмнэдэг.';

  @override
  String get paywallTestimonial2Name => 'Чарльз М.';

  @override
  String get paywallTestimonial2Text =>
      'Би жагсаалтын нэг зүйлийг дахин хэзээ ч мартсангүй. AI чат нь сенсаацтай юм!';

  @override
  String get paywallSocialProof => '+2400 өрх үүнийг ашигладаг';

  @override
  String get paywallCtaUnlock => 'PRO түгжээг тайл';

  @override
  String get paywallBestValue => 'ХАМГИЙН ҮНЭ ЦЭНЭ';

  @override
  String get paywallMostPopular => 'ХАМГИЙН АЛДАРТ';

  @override
  String get paywallSafeCheckout => 'Аюулгүй төлбөр';

  @override
  String get paywallSelectPlan => 'Төлөвлөгөөгөө сонгоно уу:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% ХЭМНЭХ';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Зөвхөн $price/сар';
  }

  @override
  String get paywallPackageAnnual => 'Жилийн төлөвлөгөө';

  @override
  String get paywallPackageMonthly => 'Сарын төлөвлөгөө';

  @override
  String get paywallPackageLifetime => 'Насан туршийн хандалт';

  @override
  String get paywallCancelAnytime => 'Хэзээ ч цуцлах. Амлалт байхгүй.';

  @override
  String get paywallPolicy => 'Нууцлалын бодлого';

  @override
  String get paywallTerms => 'Хэрэглэх нөхцөл';

  @override
  String get paywallRestore => 'Сэргээх';

  @override
  String get paywallHeroHeadline => 'Kipi AI үргэлж таны хажууд байдаг';

  @override
  String get paywallHeroSubtitle =>
      'Хиймэл оюун ухааны тусламжтайгаар халаасандаа байгаа зүйлсээ нэмж, жагсаалтаа цэгцэлж, цаг хэмнээрэй';

  @override
  String get paywallBenefit1Desc => '24/7 зүйл нэмж, цэгцэлж, санал болгодог';

  @override
  String get paywallBenefit2Desc => '3 жагсаалтын хязгаарлалт байхгүй';

  @override
  String get paywallBenefit3Desc => 'Зардлын хяналт, гэр бүлийн жагсаалт';

  @override
  String get paywallPackageMonthlyDesc => 'Бүрэн уян хатан байдал';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Үнэгүй эхлэх — $days хоног';
  }

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
      'Жагсаалтаа удирдахаар байгалийн ярь!\n\nЖишээнүүд:\n• \'Талх, бяслаг, хиам нэм\'\n• \'Угаалгын нунтаг устга\'\n• \'Сэдвийг цэнхэр болго\'\n\nЭнэ бол KipiList Premium-ын онцгой онцлог юм.';

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
      'Таны санал хүлээн авсан. Энэ нь KipiList-ийг бүгдэд зориулж сайжруулахад тусална.';

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
  String get aiEnergy => 'AI эрчим хүч';

  @override
  String get searchInConversation => 'Харилцан ярианаас хайх...';

  @override
  String get noMessagesFound => 'Мессеж олдсонгүй';

  @override
  String get suggestedQuestions => 'Санал болгож буй асуултууд:';

  @override
  String get shoppingAssistant => 'Худалдааны туслах';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total-ийн $purchased-г худалдаж авсан';
  }

  @override
  String get estimatedCost => 'Тооцоолсон';

  @override
  String get viewItems => 'Зүйлс харах';

  @override
  String get noItemsInList => 'Жагсаалтад зүйл алга';

  @override
  String get longHistoryWarning =>
      'Урт түүх: Туслах нь гүйцэтгэлийг сайжруулахын тулд хамгийн сүүлийн үеийн мессежүүдэд анхаарлаа хандуулдаг.';

  @override
  String get listening => 'Сонсож байна...';

  @override
  String get addDirectToList => 'Жагсаалтад шууд нэмнэ үү';

  @override
  String get unlockFullResponse => 'Бүрэн хариултын түгжээг тайлах';

  @override
  String get switchList => 'Жагсаалтыг солих';

  @override
  String get marketMode => 'Зах зээлийн горим';

  @override
  String get backToChat => 'Чат руу буцах';

  @override
  String get finishShopping => 'Дэлгүүрээ дуусга';

  @override
  String get welcomeAiAssistant => 'AI Assistant-д тавтай морил';

  @override
  String get createListToStartAi =>
      'Ухаалаг чат ашиглаж эхлэхийн тулд худалдааны жагсаалт үүсгэ.';

  @override
  String get howCanIHelp => 'Би яаж туслах вэ?';

  @override
  String get chatSubtitleShort =>
      'Үнэ, жор, зохион байгуулалтын талаар асуу...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total худалдаж авсан';
  }

  @override
  String get quickReplies => 'Шуурхай хариултууд:';

  @override
  String get voiceProFeature =>
      'Нарийвчилсан дуут тушаалууд нь Pro. Үндсэн диктантыг идэвхжүүлж байна...';

  @override
  String get viewPro => 'Pro харах';

  @override
  String get errorLoadingChat => 'Өө! Чатыг ачаалахад алдаа гарлаа.';

  @override
  String get errorLoadingChatSubtitle =>
      'Холболтоо шалгах эсвэл дараа дахин оролдоно уу.';

  @override
  String get errorOscillation =>
      'Энэ нь сүлжээний хэлбэлзэл эсвэл түр зуур ашиглах боломжгүй зэргээс шалтгаалж болно. Дахин оролдоно уу.';

  @override
  String get activeListening => 'Идэвхтэй сонсох';

  @override
  String get whatToDoWithItem => 'Та энэ зүйлээр юу хийхийг хүсч байна вэ?';

  @override
  String get viewDetails => 'Дэлгэрэнгүйг харах';

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
  String get inviteToList => 'Жагсаалтад урих';

  @override
  String get shareApp => 'Аппликешн хуваалцах';

  @override
  String get shareAppDescription => 'Найзуудаа KipiList ашиглахыг урь';

  @override
  String shareReferralText(Object url) {
    return 'Би дэлгүүр хэсэхдээ KipiList ашиглаж байна! Миний холбоосоор татаж аваад бид хоёулаа 7 хоногийн Premium-г үнэгүй авах боломжтой: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList Premium-г 7 хоног аваарай!';

  @override
  String get gestureHint =>
      'Сонгохын тулд удаан дарна уу • Устгахын тулд шударна уу';

  @override
  String get catalogTitle => 'Каталог';

  @override
  String get catalogMyFrequents => 'Миний байнгын хүмүүс';

  @override
  String get catalogSearchGlobal => 'Ямар ч бүтээгдэхүүн хайх...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category-д хайх...';
  }

  @override
  String get catalogSortPopular => 'Хамгийн алдартай';

  @override
  String get catalogSortAZ => 'А–З';

  @override
  String get catalogFilterNational => 'Үндэсний хүмүүс';

  @override
  String get catalogRareSection => 'танай улсад бага тохиолддог';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 нэмэх →';
  }

  @override
  String get catalogProductNotFound =>
      'Бүтээгдэхүүн олдсонгүй, нэрийг бичнэ үү';

  @override
  String get catalogBrowse => 'Каталог үзэх';

  @override
  String get offlineBanner => 'Та офлайн байна';

  @override
  String get consentTitle => 'Нууцлал ба Аналитик';

  @override
  String get consentBody =>
      'KipiList нь таны туршлагыг сайжруулахын тулд Firebase Analytics ашигладаг. Таны мэдээллийг манай Нууцлалын бодлогын дагуу боловсруулдаг.';

  @override
  String get consentAccept => 'Зөвшөөрөх';

  @override
  String get consentDecline => 'Үгүй ээ, баярлалаа';

  @override
  String get mealPlannerPantryAllAvailable => 'Нөөцөд байгаа';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дутуу зүйл',
      one: '$count дутуу зүйл',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Хугацаа дуусах хугацаа';

  @override
  String get notInformed => 'Мэдээгүй';

  @override
  String get manageCategoriesTitle => 'Ангилалуудыг удирдах';

  @override
  String get sortAZ => 'А–З';

  @override
  String get backToToday => 'Өнөөдөр рүү буцах';
}
