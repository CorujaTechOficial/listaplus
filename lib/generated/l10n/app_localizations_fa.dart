// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'لیست خرید';

  @override
  String get lists => 'لیست‌ها';

  @override
  String get pantry => 'انباری';

  @override
  String get navChat => 'چت کنید';

  @override
  String get navRecipes => 'دستور العمل ها';

  @override
  String get navLists => 'لیست‌ها';

  @override
  String get navMealPlanner => 'منو';

  @override
  String get cancel => 'لغو';

  @override
  String get save => 'ذخیره';

  @override
  String get create => 'ایجاد';

  @override
  String get add => 'افزودن';

  @override
  String get remove => 'حذف';

  @override
  String get delete => 'پاک کردن';

  @override
  String get edit => 'ویرایش';

  @override
  String get copy => 'کپی';

  @override
  String get next => 'بعدی';

  @override
  String get retry => 'تلاش مجدد';

  @override
  String get regenerate => 'بازتولید';

  @override
  String get copiedToClipboard => 'در کلیپ‌بورد کپی شد';

  @override
  String get confirm => 'تأیید';

  @override
  String get close => 'بستن';

  @override
  String get import => 'وارد کردن';

  @override
  String get rename => 'تغییر نام';

  @override
  String get upgrade => 'ارتقا';

  @override
  String get clear => 'پاک کردن';

  @override
  String error(String message) {
    return 'خطا: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'خطا: $message';
  }

  @override
  String get purchaseError => 'خطا در پردازش خرید. دوباره تلاش کنید.';

  @override
  String get restoreError => 'خطا در بازیابی خریدها. دوباره تلاش کنید.';

  @override
  String get loading => 'در حال بارگذاری...';

  @override
  String get fieldRequired => 'فیلد الزامی';

  @override
  String get addedFeedback => 'افزوده شد!';

  @override
  String get profile => 'نمایه';

  @override
  String get exitShoppingMode => 'از حالت خرید خارج شوید';

  @override
  String get exit => 'خارج شوید';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count انتخاب شده',
      one: '$count انتخاب شده',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'تخمینی';

  @override
  String get alreadyPurchased => 'قبلاً خریداری شده';

  @override
  String get clearList => 'پاک کردن لیست';

  @override
  String get clearPurchased => 'پاک کردن خریداری‌شده‌ها';

  @override
  String get share => 'اشتراک‌گذاری';

  @override
  String get shareViaCode => 'اشتراک‌گذاری با کد';

  @override
  String get importViaCode => 'وارد کردن با کد';

  @override
  String get listAssistant => 'دستیار لیست';

  @override
  String get globalAssistant => 'دستیار عمومی';

  @override
  String get becomePremium => 'پریمیوم شوید';

  @override
  String get manageSubscription => 'مدیریت اشتراک';

  @override
  String get completePurchase => 'تکمیل خرید';

  @override
  String get confirmClearList => 'همه موارد حذف شوند؟';

  @override
  String get shareListTitle => 'اشتراک‌گذاری لیست';

  @override
  String get shareThisCode => 'این کد را به اشتراک بگذارید:';

  @override
  String get validForLimitedTime => 'معتبر برای مدت محدود';

  @override
  String get importListTitle => 'وارد کردن لیست';

  @override
  String get enterCodeHint => 'کد را وارد کنید';

  @override
  String get confirmArchiveTitle => 'تکمیل خرید';

  @override
  String get confirmArchiveContent => 'این خرید تکمیل و لیست بایگانی شود؟';

  @override
  String get complete => 'تکمیل';

  @override
  String get listArchived => 'لیست با موفقیت بایگانی شد!';

  @override
  String listAdded(String listName) {
    return '$listName اضافه شد!';
  }

  @override
  String get buy => 'خرید';

  @override
  String get unmark => 'لغو علامت';

  @override
  String confirmDeleteItems(int count) {
    return '$count آیتم حذف شود؟';
  }

  @override
  String get confirmDeleteTitle => 'تأیید';

  @override
  String confirmContent(int count) {
    return '$count آیتم حذف شود؟';
  }

  @override
  String get archiveList => 'بایگانی لیست';

  @override
  String get pantryAppBar => 'انباری';

  @override
  String get generateShoppingList => 'ایجاد لیست خرید';

  @override
  String get pantryEmpty => 'انباری خالی است';

  @override
  String get pantryEmptySubtitle =>
      'محصولاتی را که می‌خواهید در خانه داشته باشید اضافه کنید';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit آیتم باید خریداری شود';
  }

  @override
  String get noItemsToBuy => 'هیچ آیتمی نیاز به خرید ندارد';

  @override
  String get newPantryList => 'خرید از انباری';

  @override
  String get newListTitle => 'لیست خرید جدید';

  @override
  String itemsWillBeAdded(int count) {
    return '$count آیتم اضافه خواهد شد';
  }

  @override
  String get listNameLabel => 'نام لیست';

  @override
  String listCreated(String name, int count) {
    return 'لیست \"$name\" با $count آیتم ایجاد شد';
  }

  @override
  String get noTracking => 'بدون پیگیری';

  @override
  String get markAsPurchased => 'علامت‌گذاری به عنوان خریداری شده';

  @override
  String editPantryItem(String name) {
    return 'ویرایش $name';
  }

  @override
  String get idealQuantity => 'مقدار ایده‌آل';

  @override
  String get currentQuantity => 'مقدار فعلی';

  @override
  String get consumed => 'مصرف شده';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name به $quantity $unit شارژ شد';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" از انباری حذف شود؟';
  }

  @override
  String pantryEditTitle(String name) {
    return 'ویرایش $name';
  }

  @override
  String get settingsAppBar => 'تنظیمات';

  @override
  String get language => 'زبان';

  @override
  String get languagePortuguese => 'پرتغالی (برزیل)';

  @override
  String get languageEnglish => 'انگلیسی';

  @override
  String get languageSystem => 'پیش‌فرض سیستم';

  @override
  String get chooseLanguage => 'انتخاب زبان';

  @override
  String get searchLanguage => 'جستجوی زبان...';

  @override
  String get currency => 'ارز';

  @override
  String get chooseCurrency => 'ارز را انتخاب کنید';

  @override
  String get searchCurrency => 'جستجوی ارز...';

  @override
  String get appearance => 'ظاهر';

  @override
  String get light => 'روشن';

  @override
  String get system => 'سیستم';

  @override
  String get dark => 'تاریک';

  @override
  String get themeColor => 'رنگ تم';

  @override
  String get dynamicColors => 'رنگ‌های پویا';

  @override
  String get dynamicColorsSubtitle =>
      'استفاده از رنگ‌ها بر اساس تصویر پس‌زمینه';

  @override
  String get dynamicColorsEnabledWarning =>
      'رنگ های پویا را غیرفعال کنید تا رنگ طرح زمینه تاثیرگذار باشد';

  @override
  String get finance => 'مالی';

  @override
  String get monthlyBudgetNav => 'بودجه ماهانه';

  @override
  String get budgetSubtitle => 'هزینه‌های ماهانه خود را پیگیری کنید';

  @override
  String get data => 'داده‌ها';

  @override
  String get backupNav => 'پشتیبان‌گیری';

  @override
  String get backupSubtitle => 'داده‌های خود را صادر یا وارد کنید';

  @override
  String get about => 'درباره';

  @override
  String get version => 'نسخه';

  @override
  String get privacy => 'حریم خصوصی';

  @override
  String get termsOfUse => 'شرایط استفاده';

  @override
  String get backupTitle => 'پشتیبان‌گیری';

  @override
  String get backupPremiumDescription =>
      'پشتیبان‌گیری و صادر کردن یک ویژگی پریمیوم است';

  @override
  String get exportData => 'صادر کردن داده‌ها';

  @override
  String get exportDataSubtitle => 'ذخیره همه لیست‌ها به صورت JSON';

  @override
  String get importData => 'وارد کردن داده‌ها';

  @override
  String get importDataSubtitle => 'بازیابی لیست‌ها از یک JSON';

  @override
  String get importJsonTitle => 'وارد کردن JSON';

  @override
  String get importJsonHint => 'JSON پشتیبان را اینجا بچسبانید...';

  @override
  String get backupExported => 'پشتیبان صادر شد!';

  @override
  String get budgetAppBar => 'بودجه ماهانه';

  @override
  String get budgetPremiumLocked => 'بودجه ماهانه سراسری یک ویژگی پریمیوم است';

  @override
  String get budgetUpgradePrompt => 'برای باز کردن قفل ارتقا دهید';

  @override
  String get noBudgetDefined => 'بودجه‌ای تنظیم نشده';

  @override
  String totalEstimated(String amount) {
    return 'مجموع تخمینی: $amount';
  }

  @override
  String get setBudgetButton => 'تنظیم بودجه';

  @override
  String get budgetLists => 'لیست‌ها';

  @override
  String get budgetValueLabel => 'مبلغ';

  @override
  String get setBudgetTitle => 'بودجه ماهانه';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent از $budget';
  }

  @override
  String get filterAll => 'همه';

  @override
  String get filterPending => 'در انتظار';

  @override
  String get filterPurchased => 'خریداری شده';

  @override
  String get sortName => 'نام';

  @override
  String get sortCategory => 'دسته‌بندی';

  @override
  String get sortDate => 'تاریخ';

  @override
  String get sortManual => 'دستی';

  @override
  String get addItem => 'افزودن آیتم';

  @override
  String get itemName => 'نام آیتم';

  @override
  String get quantityShort => 'تعداد';

  @override
  String get unit => 'واحد';

  @override
  String get category => 'دسته‌بندی';

  @override
  String get estimatedPrice => 'قیمت تخمینی';

  @override
  String get addItemPrice => 'قیمت تخمینی';

  @override
  String get editItem => 'ویرایش آیتم';

  @override
  String get quantityFull => 'مقدار';

  @override
  String get editItemPrice => 'قیمت تخمینی';

  @override
  String get addToPantry => 'افزودن به انباری';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" به انباری شما اضافه شود؟';
  }

  @override
  String get yes => 'بله';

  @override
  String get productName => 'نام محصول';

  @override
  String get idealQty => 'مقدار ایده‌آل';

  @override
  String get currentQty => 'مقدار فعلی';

  @override
  String get trackStock => 'پیگیری موجودی';

  @override
  String get trackStockActive => 'در پیشنهادات خرید نمایش داده می‌شود';

  @override
  String get trackStockInactive => 'پیشنهاد خرید ایجاد نمی‌کند';

  @override
  String get createListDialog => 'ایجاد لیست';

  @override
  String get renameListDialog => 'تغییر نام لیست';

  @override
  String get listHistory => 'تاریخچه لیست';

  @override
  String get myLists => 'لیست‌های من';

  @override
  String get viewActive => 'مشاهده فعال‌ها';

  @override
  String get viewHistory => 'مشاهده تاریخچه';

  @override
  String get noArchivedLists => 'هیچ لیست بایگانی شده‌ای وجود ندارد';

  @override
  String get noActiveLists => 'هیچ لیست فعالی وجود ندارد';

  @override
  String completedOn(String date) {
    return 'تکمیل شده در $date';
  }

  @override
  String get sharedLabel => 'اشتراک‌گذاری شده';

  @override
  String get restore => 'بازیابی';

  @override
  String get removeSharedTooltip => 'حذف';

  @override
  String get deleteListTitle => 'حذف لیست';

  @override
  String deleteListContent(String name) {
    return 'آیا مطمئن هستید که می‌خواهید \"$name\" را حذف کنید؟ همه آیتم‌ها حذف خواهند شد.';
  }

  @override
  String get removeSharedListTitle => 'حذف لیست اشتراک‌گذاری شده';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" از لیست‌های شما حذف شود؟ لیست اصلی تحت تأثیر قرار نخواهد گرفت.';
  }

  @override
  String get createNewList => 'ایجاد لیست جدید';

  @override
  String get aiAssistant => 'دستیار هوش مصنوعی';

  @override
  String get aiAssistantDescription =>
      'با دستیار هوش مصنوعی ما پیشنهادات هوشمند، دستور پخت و نکات شخصی دریافت کنید.';

  @override
  String get generalAssistant => 'دستیار عمومی';

  @override
  String get newChat => 'چت جدید';

  @override
  String get noHistory => 'سابقه چت وجود ندارد';

  @override
  String get deleteSession => 'چت را حذف کنید';

  @override
  String get deleteSessionConfirm =>
      'آیا مطمئنید که می خواهید این چت را حذف کنید؟ پیام ها برای همیشه از بین خواهند رفت.';

  @override
  String get clearHistory => 'پاک کردن تاریخچه';

  @override
  String get clearHistoryConfirm => 'همه پیام‌های این جلسه پاک شود؟';

  @override
  String get chatHint => 'پیام خود را بنویسید...';

  @override
  String get chatHintBlocked => 'قفل هوش مصنوعی را برای چت باز کنید';

  @override
  String chatError(String error) {
    return 'خطا در بارگذاری چت: $error';
  }

  @override
  String get listHelp => 'چگونه می‌توانم با لیست شما کمک کنم؟';

  @override
  String get generalHelp => 'امروز چگونه می‌توانم در خرید شما کمک کنم؟';

  @override
  String get chatSubtitle =>
      'برای پیشنهاد آیتم، دستور پخت یا نکات صرفه‌جویی بپرسید.';

  @override
  String get aiError =>
      'متأسفانه، خطایی در پردازش درخواست شما رخ داد. اتصال خود را بررسی کنید یا بعداً دوباره تلاش کنید.';

  @override
  String get aiLimitAlmostReached => 'پیام های هوش مصنوعی تقریبا تمام شده است';

  @override
  String get unlockAi => 'هوش مصنوعی نامحدود را باز کنید';

  @override
  String get aiTeaserFallback =>
      'برای باز کردن پاسخ کامل و دریافت نکات هوش مصنوعی نامحدود برای خرید خود در Premium مشترک شوید...';

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
  String get loginPrompt => 'برای دسترسی به ویژگی‌های\nپریمیوم وارد شوید';

  @override
  String get signInGoogle => 'ورود با گوگل';

  @override
  String get signInApple => 'ورود با اپل';

  @override
  String get continueAsGuest => 'ادامه به عنوان مهمان';

  @override
  String get onboardingWelcomeTitle => 'به KipiList خوش آمدید';

  @override
  String get onboardingWelcomeDesc =>
      'هوشمندانه ترین راه برای سازماندهی خرید و صرفه جویی در هزینه.';

  @override
  String get onboardingSetupTitle => 'تجربه خود را شخصی کنید';

  @override
  String get onboardingSetupDesc =>
      'انتخاب کنید که می‌خواهید KipiList چگونه به نظر برسد و برای شما کار کند.';

  @override
  String get onboardingLoginTitle => 'همه چیز را در ابر ذخیره کنید';

  @override
  String get onboardingLoginDesc =>
      'داده های شما در همه دستگاه های شما همگام سازی شد';

  @override
  String get onboardingShareTitle =>
      'با کسانی که دوستشان دارید به اشتراک بگذارید';

  @override
  String get onboardingShareDesc =>
      'همگام سازی لیست ها با خانواده و دوستان در زمان واقعی';

  @override
  String get onboardingPremiumTitle => 'قفل تمام ویژگی ها را باز کنید';

  @override
  String get onboardingPremiumSubtitle =>
      'از لیست خرید خود نهایت استفاده را ببرید';

  @override
  String get onboardingAnnualBadge => 'بهترین ارزش';

  @override
  String get onboardingMonthlyLabel => 'ماهانه';

  @override
  String get onboardingAnnualLabel => 'سالانه';

  @override
  String get onboardingViewAllPlans => 'مشاهده همه طرح ها';

  @override
  String get onboardingSubscribeCta => 'مشترک شوید';

  @override
  String get onboardingCancelAnytime => 'هر زمان خواستید لغو کنید. بدون تعهد';

  @override
  String get onboardingContinueAsGuest => 'به عنوان مهمان ادامه دهید';

  @override
  String get onboardingRestore => 'بازیابی کنید';

  @override
  String get onboardingRestoreDesc =>
      'آیا از قبل اشتراک دارید؟ برای بازیابی آن اینجا را ضربه بزنید.';

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
  String get onboardingExit => 'خارج شوید';

  @override
  String get onboardingPersonalizationTitle => 'بیایید با شما آشنا شویم';

  @override
  String get onboardingPersonalizationDesc =>
      'ما از این برای شخصی سازی پیشنهادات شما و هوشمندتر کردن خرید استفاده خواهیم کرد.';

  @override
  String get onboardingPersonalizationFoodLabel => 'غذای مورد علاقه شما چیست؟';

  @override
  String get onboardingPersonalizationFoodHint =>
      'به عنوان مثال پیتزا، سوشی، لازانیا...';

  @override
  String get onboardingPersonalizationCta => 'ادامه دهید';

  @override
  String get onboardingPersonalizationSkip => 'فعلا رد شوید';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'برای ادامه غذای مورد علاقه خود را به ما بگویید';

  @override
  String get settingsDefaultScreen => 'صفحه اصلی پیش فرض';

  @override
  String get settingsDefaultScreenSubtitle =>
      'بین لیست خرید یا چت هوش مصنوعی یکی را انتخاب کنید';

  @override
  String get settingsScreenList => 'لیست خرید';

  @override
  String get settingsScreenChat => 'چت هوش مصنوعی';

  @override
  String loginError(String error) {
    return 'خطای ورود: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'خطا در بارگیری پیشنهادها. دوباره امتحان کنید.';

  @override
  String get paywallPurchaseError => 'خرید کامل نشد. دوباره امتحان کنید.';

  @override
  String get paywallRestoreError => 'هیچ اشتراک فعالی برای بازیابی یافت نشد.';

  @override
  String paywallTrialDays(Object days) {
    return '$days روز رایگان';
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
  String get paywallTrialTitle =>
      'KipiList Pro را به مدت 7 روز رایگان امتحان کنید';

  @override
  String get paywallTrialSubtitle =>
      'هر زمان خواستید لغو کنید. امروز بدون شارژ';

  @override
  String get paywallTrialCta => 'آزمایش رایگان را شروع کنید';

  @override
  String get recipeAddToList => 'به لیست خرید اضافه کنید';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count مواد به $listName اضافه شد';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'هر چیزی که نیاز دارید:';

  @override
  String get paywallFeatureUnlimitedLists => 'لیست های نامحدود';

  @override
  String get paywallFeatureSmartAI => 'هوش مصنوعی هوشمند';

  @override
  String get paywallFeatureExpenseControl => 'کنترل هزینه';

  @override
  String get paywallFeatureSharing => 'اشتراک گذاری';

  @override
  String get paywallBeforeAfterTitle => 'هوش مصنوعی قبل و بعد:';

  @override
  String get paywallLabelCommon => 'مشترک';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'برنج';

  @override
  String get paywallBeforeItem2 => 'صابون';

  @override
  String get paywallBeforeItem3 => 'گوشت';

  @override
  String get paywallBeforeItem4 => 'نان';

  @override
  String get paywallAfterItem1 => 'غلات';

  @override
  String get paywallAfterItem2 => 'تمیز کردن';

  @override
  String get paywallAfterItem3 => 'گوشت ها';

  @override
  String get paywallAfterItem4 => 'نانوایی';

  @override
  String get paywallTestimonialsTitle => 'آنچه کاربران ما می گویند:';

  @override
  String get paywallTestimonial1Name => 'آن اس.';

  @override
  String get paywallTestimonial1Text =>
      'هوش مصنوعی خرید من را در چند ثانیه سازماندهی می کند. من 20 دقیقه در هر سفر بازار صرفه جویی می کنم.';

  @override
  String get paywallTestimonial2Name => 'چارلز ام.';

  @override
  String get paywallTestimonial2Text =>
      'من هرگز یک آیتم لیست را فراموش نکردم. چت هوش مصنوعی هیجان انگیز است!';

  @override
  String get paywallSocialProof => '+2400 خانواده از آن استفاده می کنند';

  @override
  String get paywallCtaUnlock => 'باز کردن قفل PRO';

  @override
  String get paywallBestValue => 'بهترین ارزش';

  @override
  String get paywallMostPopular => 'محبوب ترین';

  @override
  String get paywallSafeCheckout => 'پرداخت مطمئن';

  @override
  String get paywallSelectPlan => 'طرح خود را انتخاب کنید:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ذخیره $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'فقط $price/ماه';
  }

  @override
  String get paywallPackageAnnual => 'برنامه سالانه';

  @override
  String get paywallPackageMonthly => 'برنامه ماهانه';

  @override
  String get paywallPackageLifetime => 'دسترسی مادام العمر';

  @override
  String get paywallCancelAnytime => 'هر زمان خواستید لغو کنید. بدون تعهد';

  @override
  String get paywallPolicy => 'سیاست حفظ حریم خصوصی';

  @override
  String get paywallTerms => 'شرایط استفاده';

  @override
  String get paywallRestore => 'بازیابی کنید';

  @override
  String get paywallHeroHeadline => 'هوش مصنوعی Kipi همیشه در کنار شماست';

  @override
  String get paywallHeroSubtitle =>
      'آیتم ها را اضافه کنید، لیست ها را سازماندهی کنید و با هوش مصنوعی در جیب خود در زمان صرفه جویی کنید';

  @override
  String get paywallBenefit1Desc =>
      '24/7 موارد را اضافه، سازماندهی و پیشنهاد می کند';

  @override
  String get paywallBenefit2Desc => 'محدودیت 3 لیستی وجود ندارد';

  @override
  String get paywallBenefit3Desc => 'ردیابی هزینه ها و لیست خانواده';

  @override
  String get paywallPackageMonthlyDesc => 'انعطاف پذیری کامل';

  @override
  String paywallCtaTrialDays(int days) {
    return 'شروع رایگان — $days روز';
  }

  @override
  String get premiumUpgrade => 'برای باز کردن قفل ارتقا دهید';

  @override
  String get itemRemoved => 'آیتم حذف شد';

  @override
  String get undo => 'واگردانی';

  @override
  String get emptyListTitle => 'لیست شما خالی است';

  @override
  String get emptyListSubtitle => 'برای شروع، آیتم اضافه کنید';

  @override
  String get noListFoundTitle => 'لیستی یافت نشد';

  @override
  String get noListFoundSubtitle => 'اولین لیست خود را ایجاد کنید';

  @override
  String get createFirstList => 'ایجاد اولین لیست';

  @override
  String get listBudgetTitle => 'بودجه لیست';

  @override
  String get budgetAmountLabel => 'مبلغ بودجه';

  @override
  String get removeBudget => 'حذف';

  @override
  String get prefUnlimitedLists => 'لیست‌های نامحدود';

  @override
  String get prefSharing => 'اشتراک‌گذاری لیست‌ها';

  @override
  String get prefFullHistory => 'تاریخچه کامل';

  @override
  String get prefExportData => 'صادر کردن داده‌ها';

  @override
  String get prefCustomThemes => 'تم‌های سفارشی';

  @override
  String get prefMonthlyBudget => 'بودجه ماهانه سراسری';

  @override
  String get prefAIAssistant => 'دستیار هوش مصنوعی شخصی';

  @override
  String get prefUnlimitedPantry => 'انباری نامحدود';

  @override
  String get prefInteractiveArtifacts => 'محصولات تعاملی هوش مصنوعی';

  @override
  String get themeGreen => 'سبز';

  @override
  String get themeBlue => 'آبی';

  @override
  String get themePurple => 'بنفش';

  @override
  String get themeRed => 'قرمز';

  @override
  String get themeOrange => 'نارنجی';

  @override
  String get themePink => 'صورتی';

  @override
  String get themeIndigo => 'نیلی';

  @override
  String get themeAmber => 'کهربایی';

  @override
  String get themeTeal => 'فیروزه‌ای';

  @override
  String get themeBrown => 'قهوه‌ای';

  @override
  String get catFruits => 'میوه‌ها';

  @override
  String get catCleaning => 'نظافت';

  @override
  String get catBeverages => 'نوشیدنی‌ها';

  @override
  String get catBakery => 'نان‌وایی';

  @override
  String get catOthers => 'سایر';

  @override
  String get unitPack => 'بسته';

  @override
  String get shareSubject => 'لیست خرید';

  @override
  String get monthlyBudgetTitle => 'بودجه ماهانه';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent از $budget';
  }

  @override
  String get deleteListConfirm => 'حذف لیست';

  @override
  String get pantryItemRemoved => 'آیتم حذف شد';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit آیتم باید خریداری شود',
      one: '$deficit آیتم باید خریداری شود',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'مجموع سبد خرید';

  @override
  String get restockLabel => 'شارژ مجدد';

  @override
  String get advancedFeatures => 'ویژگی‌های پیشرفته';

  @override
  String get selectAll => 'انتخاب همه';

  @override
  String get deselectAll => 'لغو انتخاب همه';

  @override
  String get monthlyBudgetAppBar => 'بودجه ماهانه';

  @override
  String get budgetEditTitle => 'بودجه ماهانه';

  @override
  String get budgetDashboardTitle => 'داشبورد';

  @override
  String get selectListForDashboard =>
      'یک لیست را برای مشاهده داشبورد انتخاب کنید.';

  @override
  String get spendingAnalysis => 'تحلیل هزینه';

  @override
  String get noItemsToAnalyze => 'هیچ آیتمی در لیست برای تحلیل وجود ندارد.';

  @override
  String get markItemsToSeeAnalysis =>
      'آیتم‌ها را به عنوان خریداری شده علامت‌گذاری کنید تا تحلیل را ببینید.';

  @override
  String get totalSpending => 'مجموع هزینه';

  @override
  String get spendingByCategory => 'هزینه بر اساس دسته‌بندی';

  @override
  String get achievements => 'دستاوردها';

  @override
  String get exportPdfExcel => 'صادر کردن PDF/Excel';

  @override
  String get exportPdf => 'صادر کردن به صورت PDF';

  @override
  String get exportExcel => 'صادر کردن به صورت Excel';

  @override
  String get organizingAi => 'در حال سازماندهی با هوش مصنوعی...';

  @override
  String get yesLabel => 'بله';

  @override
  String get noLabel => 'خیر';

  @override
  String get shareListText => 'لیست خرید من';

  @override
  String get emptyListAddItems =>
      'لیست شما خالی است! ابتدا آیتم اضافه کنید. ℹ️';

  @override
  String get listOrganizedMagic =>
      'لیست به صورت جادویی بر اساس دسته‌بندی سازماندهی شد! ✨';

  @override
  String get shoppingMode => 'حالت خرید';

  @override
  String get smartOrganization => 'سازماندهی هوشمند';

  @override
  String get savings => 'صرفه‌جویی';

  @override
  String get shoppingModeHeader => 'حالت خرید';

  @override
  String get shareAsText => 'ارسال آیتم‌ها به صورت متن فرمت‌شده';

  @override
  String get shareRealtime => 'همگام‌سازی هم‌زمان با دیگران';

  @override
  String get quickRecipe => 'دستور پخت سریع';

  @override
  String get quickRecipePrompt => 'دستور پخت با آیتم‌های لیست من پیشنهاد کن.';

  @override
  String get economyTips => 'نکات صرفه‌جویی';

  @override
  String get economyTipsPrompt =>
      'چگونه می‌توانم در این خرید پول صرفه‌جویی کنم؟';

  @override
  String get organizeAisles => 'سازماندهی بر اساس راهرو';

  @override
  String get organizeAislesPrompt => 'بر اساس راهروهای فروشگاه سازماندهی کن.';

  @override
  String get recipeSuggestion => 'پیشنهاد دستور پخت';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining اعتبار باقی‌مانده';
  }

  @override
  String get addAllToList => 'افزودن همه به لیست';

  @override
  String get organizeByAisles => 'سازماندهی بر اساس راهرو';

  @override
  String get voiceTranscriptionTooltip => 'تایپ صوتی (رایگان)';

  @override
  String get aiVoiceCommandTooltip => 'فرمان صوتی هوش مصنوعی (پریمیوم)';

  @override
  String get voiceCommandTitle => 'فرمان صوتی هوش مصنوعی';

  @override
  String get voiceCommandContent =>
      'به طور طبیعی صحبت کنید تا لیست خود را مدیریت کنید!\n\nنمونه‌ها:\n• \'نان، پنیر و ژامبون اضافه کن\'\n• \'مواد شوینده را حذف کن\'\n• \'تم را به آبی تغییر بده\'\n\nاین یک ویژگی انحصاری KipiList پریمیوم است.';

  @override
  String get voiceCommandPlanBtn => 'مشاهده طرح‌ها';

  @override
  String get itemsAddedSuccess => 'آیتم‌ها با موفقیت به لیست اضافه شدند!';

  @override
  String get viewList => 'مشاهده لیست';

  @override
  String get feedbackTitle => 'ارسال بازخورد';

  @override
  String get feedbackPrompt => 'چه چیزی می‌خواهید به اشتراک بگذارید؟';

  @override
  String get feedbackTypeBug => 'گزارش باگ';

  @override
  String get feedbackTypeBugHint => 'چیزی کار نمی‌کند';

  @override
  String get feedbackTypeSuggestion => 'پیشنهاد';

  @override
  String get feedbackTypeSuggestionHint => 'ایده برای بهبود برنامه';

  @override
  String get feedbackTypeTranslation => 'مشکل ترجمه';

  @override
  String get feedbackTypeTranslationHint => 'ترجمه نادرست یا ناروا';

  @override
  String get feedbackTypeFeature => 'درخواست ویژگی';

  @override
  String get feedbackTypeFeatureHint => 'ویژگی که می‌خواهید ببینید';

  @override
  String get feedbackTypeOther => 'سایر';

  @override
  String get feedbackTypeOtherHint => 'نوع دیگر بازخورد';

  @override
  String get feedbackHint => 'بازخورد خود را با جزئیات شرح دهید...';

  @override
  String get feedbackSend => 'ارسال بازخورد';

  @override
  String get feedbackSending => 'در حال ارسال...';

  @override
  String get feedbackThankYou => 'متشکرم!';

  @override
  String get feedbackThankYouMessage =>
      'بازخورد شما دریافت شد و به ما کمک می‌کند تا KipiList را برای همه بهبود دهیم.';

  @override
  String get feedbackBack => 'بازگشت';

  @override
  String feedbackError(String error) {
    return 'خطا در ارسال: $error';
  }

  @override
  String get feedbackRetry => 'تلاش مجدد';

  @override
  String get feedbackSettingsTitle => 'ارسال بازخورد';

  @override
  String get feedbackSettingsSubtitle =>
      'گزارش باگ‌ها، پیشنهاد بهبودها یا اصلاح ترجمه‌ها';

  @override
  String get aiEnergy => 'انرژی هوش مصنوعی';

  @override
  String get searchInConversation => 'جستجو در گفتگو...';

  @override
  String get noMessagesFound => 'هیچ پیامی یافت نشد';

  @override
  String get suggestedQuestions => 'سوالات پیشنهادی:';

  @override
  String get shoppingAssistant => 'دستیار خرید';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased از $total خریداری شده است';
  }

  @override
  String get estimatedCost => 'برآورد شده است';

  @override
  String get viewItems => 'مشاهده آیتم ها';

  @override
  String get noItemsInList => 'هیچ موردی در لیست وجود ندارد';

  @override
  String get longHistoryWarning =>
      'سابقه طولانی: دستیار برای عملکرد بهتر بر آخرین پیام ها تمرکز می کند.';

  @override
  String get listening => 'گوش دادن...';

  @override
  String get addDirectToList => 'مستقیما به لیست اضافه کنید';

  @override
  String get unlockFullResponse => 'پاسخ کامل را باز کنید';

  @override
  String get switchList => 'تغییر لیست';

  @override
  String get marketMode => 'حالت بازار';

  @override
  String get backToChat => 'بازگشت به چت';

  @override
  String get finishShopping => 'خرید را تمام کنید';

  @override
  String get welcomeAiAssistant => 'به دستیار هوش مصنوعی خوش آمدید';

  @override
  String get createListToStartAi =>
      'برای شروع استفاده از چت هوشمند، یک لیست خرید ایجاد کنید.';

  @override
  String get howCanIHelp => 'چگونه می توانم کمک کنم؟';

  @override
  String get chatSubtitleShort =>
      'در مورد قیمت ها، دستور العمل ها، سازماندهی بپرسید...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total خریداری شد';
  }

  @override
  String get quickReplies => 'پاسخ های سریع:';

  @override
  String get voiceProFeature =>
      'دستورات صوتی پیشرفته Pro هستند. فعال کردن دیکته اولیه...';

  @override
  String get viewPro => 'نمایش حرفه ای';

  @override
  String get errorLoadingChat => 'اوه! هنگام بارگیری گپ مشکلی پیش آمد.';

  @override
  String get errorLoadingChatSubtitle =>
      'اتصال خود را بررسی کنید یا بعداً دوباره امتحان کنید.';

  @override
  String get errorOscillation =>
      'این ممکن است به دلیل نوسانات شبکه یا در دسترس نبودن موقت رخ دهد. لطفا دوباره امتحان کنید.';

  @override
  String get activeListening => 'گوش دادن فعال';

  @override
  String get whatToDoWithItem => 'دوست دارید با این آیتم چه کار کنید؟';

  @override
  String get viewDetails => 'مشاهده جزئیات';

  @override
  String get openMenu => 'باز کردن منو';

  @override
  String get viewRecipe => 'مشاهده دستور پخت';

  @override
  String get recipeCreated => 'دستور پخت ایجاد شد!';

  @override
  String get editRecipe => 'ویرایش';

  @override
  String get deleteRecipe => 'حذف';

  @override
  String get deleteRecipeConfirm => 'این دستور پخت حذف شود؟';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'آیا از حذف \"$recipeName\" مطمئن هستید؟ این عمل قابل بازگشت نیست.';
  }

  @override
  String get ingredients => 'مواد اولیه';

  @override
  String get instructions => 'دستورالعمل‌ها';

  @override
  String get prepTime => 'زمان پخت';

  @override
  String get recipeSaved => 'دستور پخت ذخیره شد!';

  @override
  String get noRecipesSaved => 'هیچ دستور پختی ذخیره نشده است';

  @override
  String get noRecipesSavedHint =>
      'اولین دستور پخت سفارشی خود را با زدن دکمه زیر ایجاد کنید.';

  @override
  String get myRecipes => 'دستورهای پخت من';

  @override
  String get newRecipe => 'دستور پخت جدید';

  @override
  String get loadingRecipes => 'در حال بارگذاری دستورهای پخت شما...';

  @override
  String get errorLoadingRecipes => 'خطا در بارگذاری دستورهای پخت';

  @override
  String get addIngredient => 'افزودن مواد اولیه';

  @override
  String get saveRecipe => 'ذخیره';

  @override
  String get recipeName => 'نام دستور پخت';

  @override
  String get shortDescription => 'توضیح کوتاه';

  @override
  String get prepTimeMinutes => 'زمان پخت (دقیقه)';

  @override
  String get instructionsHint => 'در هر خط یک مرحله بنویسید...';

  @override
  String get addPhoto => 'افزودن عکس';

  @override
  String get imageUrlPlaceholder => 'یا نشانی تصویر را بچسبانید';

  @override
  String get tags => 'برچسب‌ها';

  @override
  String get recipeTags => 'برچسب‌های دستور پخت';

  @override
  String get suggestedTags => 'پیشنهادی';

  @override
  String get searchRecipes => 'جستجوی دستورهای پخت...';

  @override
  String get filterByTag => 'فیلتر بر اساس برچسب';

  @override
  String get allTags => 'همه';

  @override
  String get recipeDeleted => 'دستور پخت حذف شد';

  @override
  String get saveChanges => 'ذخیره تغییرات';

  @override
  String get editRecipeTitle => 'ویرایش دستور پخت';

  @override
  String get newRecipeTitle => 'دستور پخت جدید';

  @override
  String get requiredField => 'الزامی';

  @override
  String get chooseImageSource => 'انتخاب منبع تصویر';

  @override
  String get gallery => 'گالری';

  @override
  String get enterUrl => 'ورود نشانی اینترنتی';

  @override
  String get recipeImage => 'تصویر دستور پخت';

  @override
  String get removeImage => 'حذف تصویر';

  @override
  String get mealPlannerTitle => 'برنامه‌ریز غذا';

  @override
  String get mealPlannerViewMonthly => 'نمای ماهانه';

  @override
  String get mealPlannerViewWeekly => 'نمای هفتگی';

  @override
  String get mealPlannerNoMeals => 'هیچ وعده غذایی برنامه‌ریزی نشده است';

  @override
  String get mealPlannerNoMealsHint =>
      'برای افزودن وعده، روی یک روز ضربه بزنید';

  @override
  String get mealPlannerLoading => 'در حال بارگذاری برنامه غذایی...';

  @override
  String get mealPlannerError => 'خطا در بارگذاری برنامه غذایی';

  @override
  String get mealPlannerAddMeal => 'افزودن وعده غذایی';

  @override
  String get mealPlannerEditMeal => 'ویرایش وعده غذایی';

  @override
  String get mealPlannerDeleteMeal => 'حذف وعده غذایی';

  @override
  String get mealPlannerMealDeleted => 'وعده غذایی حذف شد';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count نفر',
      one: '$count نفر',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'تعداد نفرات';

  @override
  String get mealPlannerNoteLabel => 'یادداشت (اختیاری)';

  @override
  String get mealPlannerSelectRecipe => 'یک دستور پخت انتخاب کنید';

  @override
  String get mealPlannerSearchRecipes => 'جستجوی دستورهای پخت...';

  @override
  String get mealPlannerNoRecipesFound => 'دستور پختی پیدا نشد';

  @override
  String get mealPlannerNoRecipesHint =>
      'ابتدا دستورهای پخت را در برگه دستور پخت ایجاد کنید';

  @override
  String get mealPlannerSave => 'افزودن به برنامه';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count از $total وعده برنامه‌ریزی شده';
  }

  @override
  String get mealPlannerGenerateList => 'ایجاد لیست خرید';

  @override
  String get mealPlannerGenerateListConfirm =>
      'تمام مواد اولیه وعده‌های غذایی برنامه‌ریزی شده این هفته به لیست خرید شما اضافه شود؟';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count مورد به لیست شما اضافه شد!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ماده اولیه‌ای برای افزودن وجود ندارد. ابتدا چند وعده غذایی با دستور پخت برنامه‌ریزی کنید.';

  @override
  String get mealPlannerGenerateListNoList => 'ابتدا یک لیست خرید ایجاد کنید.';

  @override
  String get mealPlannerMealTypeBreakfast => 'صبحانه';

  @override
  String get mealPlannerMealTypeLunch => 'ناهار';

  @override
  String get mealPlannerMealTypeDinner => 'شام';

  @override
  String get mealPlannerMealTypeSnack => 'میان‌وعده';

  @override
  String get mealPlannerDateLabel => 'تاریخ';

  @override
  String get mealPlannerWeekEmpty => 'چیزی برای این هفته برنامه‌ریزی نشده است';

  @override
  String get mealPlannerWeekEmptyHint =>
      'برای شروع برنامه‌ریزی، روی هر روزی که می‌خواهید ضربه بزنید!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes دقیقه';
  }

  @override
  String get inviteToList => 'دعوت به لیست';

  @override
  String get shareApp => 'برنامه را به اشتراک بگذارید';

  @override
  String get shareAppDescription =>
      'دوستان را به استفاده از KipiList دعوت کنید';

  @override
  String shareReferralText(Object url) {
    return 'من از KipiList برای سازماندهی خرید خود استفاده می کنم! از طریق پیوند من بارگیری کنید و هر دو 7 روز Premium رایگان دریافت می کنیم: $url';
  }

  @override
  String get shareReferralSubject => '۷ روز KipiList Premium دریافت کنید!';

  @override
  String get gestureHint =>
      'برای انتخاب نگه دارید • برای حذف، انگشت خود را تند بکشید';

  @override
  String get catalogTitle => 'کاتالوگ';

  @override
  String get catalogMyFrequents => 'فرکانس های من';

  @override
  String get catalogSearchGlobal => 'جستجو در هر محصول ...';

  @override
  String catalogSearchInCategory(String category) {
    return 'جستجو در $category...';
  }

  @override
  String get catalogSortPopular => 'محبوب ترین';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'ملی پوشان';

  @override
  String get catalogRareSection => 'در کشور شما کمتر رایج است';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 را اضافه کنید →';
  }

  @override
  String get catalogProductNotFound => 'محصول یافت نشد، نام را تایپ کنید';

  @override
  String get catalogBrowse => 'کاتالوگ را مرور کنید';

  @override
  String get offlineBanner => 'شما آفلاین هستید';

  @override
  String get consentTitle => 'حریم خصوصی و تجزیه و تحلیل';

  @override
  String get consentBody =>
      'KipiList از Firebase Analytics برای بهبود تجربه شما استفاده می کند. داده های شما طبق خط مشی رازداری ما پردازش می شود.';

  @override
  String get consentAccept => 'قبول کنید';

  @override
  String get consentDecline => 'نه، ممنون';

  @override
  String get mealPlannerPantryAllAvailable => 'موجود است';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مورد موجود نیست',
      one: '$count مورد موجود نیست',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'تاریخ انقضا';

  @override
  String get notInformed => 'مطلع نیست';
}

/// The translations for Persian, as used in the United Arab Emirates (`fa_AE`).
class AppLocalizationsFaAe extends AppLocalizationsFa {
  AppLocalizationsFaAe() : super('fa_AE');

  @override
  String get appTitle => 'لیست خرید';

  @override
  String get lists => 'لیست‌ها';

  @override
  String get pantry => 'انباری';

  @override
  String get navChat => 'چت کنید';

  @override
  String get navRecipes => 'دستور العمل ها';

  @override
  String get navLists => 'لیست‌ها';

  @override
  String get navMealPlanner => 'منو';

  @override
  String get cancel => 'لغو';

  @override
  String get save => 'ذخیره';

  @override
  String get create => 'ایجاد';

  @override
  String get add => 'افزودن';

  @override
  String get remove => 'حذف';

  @override
  String get delete => 'پاک کردن';

  @override
  String get edit => 'ویرایش';

  @override
  String get copy => 'کپی';

  @override
  String get next => 'بعدی';

  @override
  String get retry => 'تلاش مجدد';

  @override
  String get regenerate => 'بازتولید';

  @override
  String get copiedToClipboard => 'در کلیپ‌بورد کپی شد';

  @override
  String get confirm => 'تأیید';

  @override
  String get close => 'بستن';

  @override
  String get import => 'وارد کردن';

  @override
  String get rename => 'تغییر نام';

  @override
  String get upgrade => 'ارتقا';

  @override
  String get clear => 'پاک کردن';

  @override
  String error(String message) {
    return 'خطا: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'خطا: $message';
  }

  @override
  String get purchaseError => 'خطا در پردازش خرید. دوباره تلاش کنید.';

  @override
  String get restoreError => 'خطا در بازیابی خریدها. دوباره تلاش کنید.';

  @override
  String get loading => 'در حال بارگذاری...';

  @override
  String get fieldRequired => 'فیلد الزامی';

  @override
  String get addedFeedback => 'افزوده شد!';

  @override
  String get profile => 'نمایه';

  @override
  String get exitShoppingMode => 'از حالت خرید خارج شوید';

  @override
  String get exit => 'خارج شوید';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count انتخاب شده',
      one: '$count انتخاب شده',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'تخمینی';

  @override
  String get alreadyPurchased => 'قبلاً خریداری شده';

  @override
  String get clearList => 'پاک کردن لیست';

  @override
  String get clearPurchased => 'پاک کردن خریداری‌شده‌ها';

  @override
  String get share => 'اشتراک‌گذاری';

  @override
  String get shareViaCode => 'اشتراک‌گذاری با کد';

  @override
  String get importViaCode => 'وارد کردن با کد';

  @override
  String get listAssistant => 'دستیار لیست';

  @override
  String get globalAssistant => 'دستیار عمومی';

  @override
  String get becomePremium => 'پریمیوم شوید';

  @override
  String get manageSubscription => 'مدیریت اشتراک';

  @override
  String get completePurchase => 'تکمیل خرید';

  @override
  String get confirmClearList => 'همه موارد حذف شوند؟';

  @override
  String get shareListTitle => 'اشتراک‌گذاری لیست';

  @override
  String get shareThisCode => 'این کد را به اشتراک بگذارید:';

  @override
  String get validForLimitedTime => 'معتبر برای مدت محدود';

  @override
  String get importListTitle => 'وارد کردن لیست';

  @override
  String get enterCodeHint => 'کد را وارد کنید';

  @override
  String get confirmArchiveTitle => 'تکمیل خرید';

  @override
  String get confirmArchiveContent => 'این خرید تکمیل و لیست بایگانی شود؟';

  @override
  String get complete => 'تکمیل';

  @override
  String get listArchived => 'لیست با موفقیت بایگانی شد!';

  @override
  String listAdded(String listName) {
    return '$listName اضافه شد!';
  }

  @override
  String get buy => 'خرید';

  @override
  String get unmark => 'لغو علامت';

  @override
  String confirmDeleteItems(int count) {
    return '$count آیتم حذف شود؟';
  }

  @override
  String get confirmDeleteTitle => 'تأیید';

  @override
  String confirmContent(int count) {
    return '$count آیتم حذف شود؟';
  }

  @override
  String get archiveList => 'بایگانی لیست';

  @override
  String get pantryAppBar => 'انباری';

  @override
  String get generateShoppingList => 'ایجاد لیست خرید';

  @override
  String get pantryEmpty => 'انباری خالی است';

  @override
  String get pantryEmptySubtitle =>
      'محصولاتی را که می‌خواهید در خانه داشته باشید اضافه کنید';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit آیتم باید خریداری شود';
  }

  @override
  String get noItemsToBuy => 'هیچ آیتمی نیاز به خرید ندارد';

  @override
  String get newPantryList => 'خرید از انباری';

  @override
  String get newListTitle => 'لیست خرید جدید';

  @override
  String itemsWillBeAdded(int count) {
    return '$count آیتم اضافه خواهد شد';
  }

  @override
  String get listNameLabel => 'نام لیست';

  @override
  String listCreated(String name, int count) {
    return 'لیست \"$name\" با $count آیتم ایجاد شد';
  }

  @override
  String get noTracking => 'بدون پیگیری';

  @override
  String get markAsPurchased => 'علامت‌گذاری به عنوان خریداری شده';

  @override
  String editPantryItem(String name) {
    return 'ویرایش $name';
  }

  @override
  String get idealQuantity => 'مقدار ایده‌آل';

  @override
  String get currentQuantity => 'مقدار فعلی';

  @override
  String get consumed => 'مصرف شده';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name به $quantity $unit شارژ شد';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" از انباری حذف شود؟';
  }

  @override
  String pantryEditTitle(String name) {
    return 'ویرایش $name';
  }

  @override
  String get settingsAppBar => 'تنظیمات';

  @override
  String get language => 'زبان';

  @override
  String get languagePortuguese => 'پرتغالی (برزیل)';

  @override
  String get languageEnglish => 'انگلیسی';

  @override
  String get languageSystem => 'پیش‌فرض سیستم';

  @override
  String get chooseLanguage => 'انتخاب زبان';

  @override
  String get searchLanguage => 'جستجوی زبان...';

  @override
  String get currency => 'ارز';

  @override
  String get chooseCurrency => 'ارز را انتخاب کنید';

  @override
  String get searchCurrency => 'جستجوی ارز...';

  @override
  String get appearance => 'ظاهر';

  @override
  String get light => 'روشن';

  @override
  String get system => 'سیستم';

  @override
  String get dark => 'تاریک';

  @override
  String get themeColor => 'رنگ تم';

  @override
  String get dynamicColors => 'رنگ‌های پویا';

  @override
  String get dynamicColorsSubtitle =>
      'استفاده از رنگ‌ها بر اساس تصویر پس‌زمینه';

  @override
  String get dynamicColorsEnabledWarning =>
      'رنگ های پویا را غیرفعال کنید تا رنگ طرح زمینه تاثیرگذار باشد';

  @override
  String get finance => 'مالی';

  @override
  String get monthlyBudgetNav => 'بودجه ماهانه';

  @override
  String get budgetSubtitle => 'هزینه‌های ماهانه خود را پیگیری کنید';

  @override
  String get data => 'داده‌ها';

  @override
  String get backupNav => 'پشتیبان‌گیری';

  @override
  String get backupSubtitle => 'داده‌های خود را صادر یا وارد کنید';

  @override
  String get about => 'درباره';

  @override
  String get version => 'نسخه';

  @override
  String get privacy => 'حریم خصوصی';

  @override
  String get termsOfUse => 'شرایط استفاده';

  @override
  String get backupTitle => 'پشتیبان‌گیری';

  @override
  String get backupPremiumDescription =>
      'پشتیبان‌گیری و صادر کردن یک ویژگی پریمیوم است';

  @override
  String get exportData => 'صادر کردن داده‌ها';

  @override
  String get exportDataSubtitle => 'ذخیره همه لیست‌ها به صورت JSON';

  @override
  String get importData => 'وارد کردن داده‌ها';

  @override
  String get importDataSubtitle => 'بازیابی لیست‌ها از یک JSON';

  @override
  String get importJsonTitle => 'وارد کردن JSON';

  @override
  String get importJsonHint => 'JSON پشتیبان را اینجا بچسبانید...';

  @override
  String get backupExported => 'پشتیبان صادر شد!';

  @override
  String get budgetAppBar => 'بودجه ماهانه';

  @override
  String get budgetPremiumLocked => 'بودجه ماهانه سراسری یک ویژگی پریمیوم است';

  @override
  String get budgetUpgradePrompt => 'برای باز کردن قفل ارتقا دهید';

  @override
  String get noBudgetDefined => 'بودجه‌ای تنظیم نشده';

  @override
  String totalEstimated(String amount) {
    return 'مجموع تخمینی: $amount';
  }

  @override
  String get setBudgetButton => 'تنظیم بودجه';

  @override
  String get budgetLists => 'لیست‌ها';

  @override
  String get budgetValueLabel => 'مبلغ';

  @override
  String get setBudgetTitle => 'بودجه ماهانه';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent از $budget';
  }

  @override
  String get filterAll => 'همه';

  @override
  String get filterPending => 'در انتظار';

  @override
  String get filterPurchased => 'خریداری شده';

  @override
  String get sortName => 'نام';

  @override
  String get sortCategory => 'دسته‌بندی';

  @override
  String get sortDate => 'تاریخ';

  @override
  String get sortManual => 'دستی';

  @override
  String get addItem => 'افزودن آیتم';

  @override
  String get itemName => 'نام آیتم';

  @override
  String get quantityShort => 'تعداد';

  @override
  String get unit => 'واحد';

  @override
  String get category => 'دسته‌بندی';

  @override
  String get estimatedPrice => 'قیمت تخمینی';

  @override
  String get addItemPrice => 'قیمت تخمینی';

  @override
  String get editItem => 'ویرایش آیتم';

  @override
  String get quantityFull => 'مقدار';

  @override
  String get editItemPrice => 'قیمت تخمینی';

  @override
  String get addToPantry => 'افزودن به انباری';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" به انباری شما اضافه شود؟';
  }

  @override
  String get yes => 'بله';

  @override
  String get productName => 'نام محصول';

  @override
  String get idealQty => 'مقدار ایده‌آل';

  @override
  String get currentQty => 'مقدار فعلی';

  @override
  String get trackStock => 'پیگیری موجودی';

  @override
  String get trackStockActive => 'در پیشنهادات خرید نمایش داده می‌شود';

  @override
  String get trackStockInactive => 'پیشنهاد خرید ایجاد نمی‌کند';

  @override
  String get createListDialog => 'ایجاد لیست';

  @override
  String get renameListDialog => 'تغییر نام لیست';

  @override
  String get listHistory => 'تاریخچه لیست';

  @override
  String get myLists => 'لیست‌های من';

  @override
  String get viewActive => 'مشاهده فعال‌ها';

  @override
  String get viewHistory => 'مشاهده تاریخچه';

  @override
  String get noArchivedLists => 'هیچ لیست بایگانی شده‌ای وجود ندارد';

  @override
  String get noActiveLists => 'هیچ لیست فعالی وجود ندارد';

  @override
  String completedOn(String date) {
    return 'تکمیل شده در $date';
  }

  @override
  String get sharedLabel => 'اشتراک‌گذاری شده';

  @override
  String get restore => 'بازیابی';

  @override
  String get removeSharedTooltip => 'حذف';

  @override
  String get deleteListTitle => 'حذف لیست';

  @override
  String deleteListContent(String name) {
    return 'آیا مطمئن هستید که می‌خواهید \"$name\" را حذف کنید؟ همه آیتم‌ها حذف خواهند شد.';
  }

  @override
  String get removeSharedListTitle => 'حذف لیست اشتراک‌گذاری شده';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" از لیست‌های شما حذف شود؟ لیست اصلی تحت تأثیر قرار نخواهد گرفت.';
  }

  @override
  String get createNewList => 'ایجاد لیست جدید';

  @override
  String get aiAssistant => 'دستیار هوش مصنوعی';

  @override
  String get aiAssistantDescription =>
      'با دستیار هوش مصنوعی ما پیشنهادات هوشمند، دستور پخت و نکات شخصی دریافت کنید.';

  @override
  String get generalAssistant => 'دستیار عمومی';

  @override
  String get newChat => 'چت جدید';

  @override
  String get noHistory => 'سابقه چت وجود ندارد';

  @override
  String get deleteSession => 'چت را حذف کنید';

  @override
  String get deleteSessionConfirm =>
      'آیا مطمئنید که می خواهید این چت را حذف کنید؟ پیام ها برای همیشه از بین خواهند رفت.';

  @override
  String get clearHistory => 'پاک کردن تاریخچه';

  @override
  String get clearHistoryConfirm => 'همه پیام‌های این جلسه پاک شود؟';

  @override
  String get chatHint => 'پیام خود را بنویسید...';

  @override
  String get chatHintBlocked => 'قفل هوش مصنوعی را برای چت باز کنید';

  @override
  String chatError(String error) {
    return 'خطا در بارگذاری چت: $error';
  }

  @override
  String get listHelp => 'چگونه می‌توانم با لیست شما کمک کنم؟';

  @override
  String get generalHelp => 'امروز چگونه می‌توانم در خرید شما کمک کنم؟';

  @override
  String get chatSubtitle =>
      'برای پیشنهاد آیتم، دستور پخت یا نکات صرفه‌جویی بپرسید.';

  @override
  String get aiError =>
      'متأسفانه، خطایی در پردازش درخواست شما رخ داد. اتصال خود را بررسی کنید یا بعداً دوباره تلاش کنید.';

  @override
  String get aiLimitAlmostReached => 'پیام های هوش مصنوعی تقریبا تمام شده است';

  @override
  String get unlockAi => 'هوش مصنوعی نامحدود را باز کنید';

  @override
  String get aiTeaserFallback =>
      'برای باز کردن پاسخ کامل و دریافت نکات نامحدود هوش مصنوعی برای خرید خود در Premium مشترک شوید...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'برای دسترسی به ویژگی‌های\nپریمیوم وارد شوید';

  @override
  String get signInGoogle => 'ورود با گوگل';

  @override
  String get signInApple => 'ورود با اپل';

  @override
  String get continueAsGuest => 'ادامه به عنوان مهمان';

  @override
  String get onboardingWelcomeTitle => 'به KipiList خوش آمدید';

  @override
  String get onboardingWelcomeDesc =>
      'هوشمندانه ترین راه برای سازماندهی خرید و صرفه جویی در هزینه.';

  @override
  String get onboardingSetupTitle => 'تجربه خود را شخصی کنید';

  @override
  String get onboardingSetupDesc =>
      'انتخاب کنید که می‌خواهید KipiList چگونه به نظر برسد و برای شما کار کند.';

  @override
  String get onboardingLoginTitle => 'همه چیز را در ابر ذخیره کنید';

  @override
  String get onboardingLoginDesc =>
      'داده های شما در همه دستگاه های شما همگام سازی شد';

  @override
  String get onboardingShareTitle =>
      'با کسانی که دوستشان دارید به اشتراک بگذارید';

  @override
  String get onboardingShareDesc =>
      'همگام سازی لیست ها با خانواده و دوستان در زمان واقعی';

  @override
  String get onboardingPremiumTitle => 'قفل تمام ویژگی ها را باز کنید';

  @override
  String get onboardingPremiumSubtitle =>
      'از لیست خرید خود نهایت استفاده را ببرید';

  @override
  String get onboardingAnnualBadge => 'بهترین ارزش';

  @override
  String get onboardingMonthlyLabel => 'ماهانه';

  @override
  String get onboardingAnnualLabel => 'سالانه';

  @override
  String get onboardingViewAllPlans => 'مشاهده همه طرح ها';

  @override
  String get onboardingSubscribeCta => 'مشترک شوید';

  @override
  String get onboardingCancelAnytime => 'هر زمان خواستید لغو کنید. بدون تعهد';

  @override
  String get onboardingContinueAsGuest => 'به عنوان مهمان ادامه دهید';

  @override
  String get onboardingRestore => 'بازیابی کنید';

  @override
  String get onboardingRestoreDesc =>
      'آیا از قبل اشتراک دارید؟ برای بازیابی آن اینجا را ضربه بزنید.';

  @override
  String get onboardingExit => 'خارج شوید';

  @override
  String get onboardingPersonalizationTitle => 'بیایید با شما آشنا شویم';

  @override
  String get onboardingPersonalizationDesc =>
      'ما از این برای شخصی سازی پیشنهادات شما و هوشمندتر کردن خرید استفاده خواهیم کرد.';

  @override
  String get onboardingPersonalizationFoodLabel => 'غذای مورد علاقه شما چیست؟';

  @override
  String get onboardingPersonalizationFoodHint =>
      'به عنوان مثال پیتزا، سوشی، لازانیا...';

  @override
  String get onboardingPersonalizationCta => 'ادامه دهید';

  @override
  String get onboardingPersonalizationSkip => 'فعلا رد شوید';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'برای ادامه غذای مورد علاقه خود را به ما بگویید';

  @override
  String get settingsDefaultScreen => 'صفحه اصلی پیش فرض';

  @override
  String get settingsDefaultScreenSubtitle =>
      'بین لیست خرید یا چت هوش مصنوعی یکی را انتخاب کنید';

  @override
  String get settingsScreenList => 'لیست خرید';

  @override
  String get settingsScreenChat => 'چت هوش مصنوعی';

  @override
  String loginError(String error) {
    return 'خطای ورود: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'خطا در بارگیری پیشنهادها. دوباره امتحان کنید.';

  @override
  String get paywallPurchaseError => 'خرید کامل نشد. دوباره امتحان کنید.';

  @override
  String get paywallRestoreError => 'هیچ اشتراک فعالی برای بازیابی یافت نشد.';

  @override
  String paywallTrialDays(Object days) {
    return '$days روز رایگان';
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
  String get paywallTrialTitle =>
      'KipiList Pro را به مدت 7 روز رایگان امتحان کنید';

  @override
  String get paywallTrialSubtitle =>
      'هر زمان خواستید لغو کنید. امروز بدون شارژ';

  @override
  String get paywallTrialCta => 'آزمایش رایگان را شروع کنید';

  @override
  String get recipeAddToList => 'به لیست خرید اضافه کنید';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count مواد به $listName اضافه شد';
  }

  @override
  String get paywallFeaturesTitle => 'هر چیزی که نیاز دارید:';

  @override
  String get paywallFeatureUnlimitedLists => 'لیست های نامحدود';

  @override
  String get paywallFeatureSmartAI => 'هوش مصنوعی هوشمند';

  @override
  String get paywallFeatureExpenseControl => 'کنترل هزینه';

  @override
  String get paywallFeatureSharing => 'اشتراک گذاری';

  @override
  String get paywallBeforeAfterTitle => 'هوش مصنوعی قبل و بعد:';

  @override
  String get paywallLabelCommon => 'مشترک';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'برنج';

  @override
  String get paywallBeforeItem2 => 'صابون';

  @override
  String get paywallBeforeItem3 => 'گوشت';

  @override
  String get paywallBeforeItem4 => 'نان';

  @override
  String get paywallAfterItem1 => 'غلات';

  @override
  String get paywallAfterItem2 => 'تمیز کردن';

  @override
  String get paywallAfterItem3 => 'گوشت ها';

  @override
  String get paywallAfterItem4 => 'نانوایی';

  @override
  String get paywallTestimonialsTitle => 'آنچه کاربران ما می گویند:';

  @override
  String get paywallTestimonial1Name => 'آن اس.';

  @override
  String get paywallTestimonial1Text =>
      'هوش مصنوعی خرید من را در چند ثانیه سازماندهی می کند. من 20 دقیقه در هر سفر بازار صرفه جویی می کنم.';

  @override
  String get paywallTestimonial2Name => 'چارلز ام.';

  @override
  String get paywallTestimonial2Text =>
      'من هرگز یک آیتم لیست را فراموش نکردم. چت هوش مصنوعی هیجان انگیز است!';

  @override
  String get paywallSocialProof => '+2400 خانواده از آن استفاده می کنند';

  @override
  String get paywallCtaUnlock => 'باز کردن قفل PRO';

  @override
  String get paywallBestValue => 'بهترین ارزش';

  @override
  String get paywallMostPopular => 'محبوب ترین';

  @override
  String get paywallSafeCheckout => 'پرداخت مطمئن';

  @override
  String get paywallSelectPlan => 'طرح خود را انتخاب کنید:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ذخیره $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'فقط $price/ماه';
  }

  @override
  String get paywallPackageAnnual => 'برنامه سالانه';

  @override
  String get paywallPackageMonthly => 'برنامه ماهانه';

  @override
  String get paywallPackageLifetime => 'دسترسی مادام العمر';

  @override
  String get paywallCancelAnytime => 'هر زمان خواستید لغو کنید. بدون تعهد';

  @override
  String get paywallPolicy => 'سیاست حفظ حریم خصوصی';

  @override
  String get paywallTerms => 'شرایط استفاده';

  @override
  String get paywallRestore => 'بازیابی کنید';

  @override
  String get paywallHeroHeadline => 'هوش مصنوعی Kipi همیشه در کنار شماست';

  @override
  String get paywallHeroSubtitle =>
      'آیتم ها را اضافه کنید، لیست ها را سازماندهی کنید و با هوش مصنوعی در جیب خود در زمان صرفه جویی کنید';

  @override
  String get paywallBenefit1Desc =>
      '24/7 موارد را اضافه، سازماندهی و پیشنهاد می کند';

  @override
  String get paywallBenefit2Desc => 'محدودیت 3 لیستی وجود ندارد';

  @override
  String get paywallBenefit3Desc => 'ردیابی هزینه ها و لیست خانواده';

  @override
  String get paywallPackageMonthlyDesc => 'انعطاف پذیری کامل';

  @override
  String paywallCtaTrialDays(int days) {
    return 'شروع رایگان — $days روز';
  }

  @override
  String get premiumUpgrade => 'برای باز کردن قفل ارتقا دهید';

  @override
  String get itemRemoved => 'آیتم حذف شد';

  @override
  String get undo => 'واگردانی';

  @override
  String get emptyListTitle => 'لیست شما خالی است';

  @override
  String get emptyListSubtitle => 'برای شروع، آیتم اضافه کنید';

  @override
  String get noListFoundTitle => 'لیستی یافت نشد';

  @override
  String get noListFoundSubtitle => 'اولین لیست خود را ایجاد کنید';

  @override
  String get createFirstList => 'ایجاد اولین لیست';

  @override
  String get listBudgetTitle => 'بودجه لیست';

  @override
  String get budgetAmountLabel => 'مبلغ بودجه';

  @override
  String get removeBudget => 'حذف';

  @override
  String get prefUnlimitedLists => 'لیست‌های نامحدود';

  @override
  String get prefSharing => 'اشتراک‌گذاری لیست‌ها';

  @override
  String get prefFullHistory => 'تاریخچه کامل';

  @override
  String get prefExportData => 'صادر کردن داده‌ها';

  @override
  String get prefCustomThemes => 'تم‌های سفارشی';

  @override
  String get prefMonthlyBudget => 'بودجه ماهانه سراسری';

  @override
  String get prefAIAssistant => 'دستیار هوش مصنوعی شخصی';

  @override
  String get prefUnlimitedPantry => 'انباری نامحدود';

  @override
  String get prefInteractiveArtifacts => 'محصولات تعاملی هوش مصنوعی';

  @override
  String get themeGreen => 'سبز';

  @override
  String get themeBlue => 'آبی';

  @override
  String get themePurple => 'بنفش';

  @override
  String get themeRed => 'قرمز';

  @override
  String get themeOrange => 'نارنجی';

  @override
  String get themePink => 'صورتی';

  @override
  String get themeIndigo => 'نیلی';

  @override
  String get themeAmber => 'کهربایی';

  @override
  String get themeTeal => 'فیروزه‌ای';

  @override
  String get themeBrown => 'قهوه‌ای';

  @override
  String get catFruits => 'میوه‌ها';

  @override
  String get catCleaning => 'نظافت';

  @override
  String get catBeverages => 'نوشیدنی‌ها';

  @override
  String get catBakery => 'نان‌وایی';

  @override
  String get catOthers => 'سایر';

  @override
  String get unitPack => 'بسته';

  @override
  String get shareSubject => 'لیست خرید';

  @override
  String get monthlyBudgetTitle => 'بودجه ماهانه';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent از $budget';
  }

  @override
  String get deleteListConfirm => 'حذف لیست';

  @override
  String get pantryItemRemoved => 'آیتم حذف شد';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit آیتم باید خریداری شود',
      one: '$deficit آیتم باید خریداری شود',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'مجموع سبد خرید';

  @override
  String get restockLabel => 'شارژ مجدد';

  @override
  String get advancedFeatures => 'ویژگی‌های پیشرفته';

  @override
  String get selectAll => 'انتخاب همه';

  @override
  String get deselectAll => 'لغو انتخاب همه';

  @override
  String get monthlyBudgetAppBar => 'بودجه ماهانه';

  @override
  String get budgetEditTitle => 'بودجه ماهانه';

  @override
  String get budgetDashboardTitle => 'داشبورد';

  @override
  String get selectListForDashboard =>
      'یک لیست را برای مشاهده داشبورد انتخاب کنید.';

  @override
  String get spendingAnalysis => 'تحلیل هزینه';

  @override
  String get noItemsToAnalyze => 'هیچ آیتمی در لیست برای تحلیل وجود ندارد.';

  @override
  String get markItemsToSeeAnalysis =>
      'آیتم‌ها را به عنوان خریداری شده علامت‌گذاری کنید تا تحلیل را ببینید.';

  @override
  String get totalSpending => 'مجموع هزینه';

  @override
  String get spendingByCategory => 'هزینه بر اساس دسته‌بندی';

  @override
  String get achievements => 'دستاوردها';

  @override
  String get exportPdfExcel => 'صادر کردن PDF/Excel';

  @override
  String get exportPdf => 'صادر کردن به صورت PDF';

  @override
  String get exportExcel => 'صادر کردن به صورت Excel';

  @override
  String get organizingAi => 'در حال سازماندهی با هوش مصنوعی...';

  @override
  String get yesLabel => 'بله';

  @override
  String get noLabel => 'خیر';

  @override
  String get shareListText => 'لیست خرید من';

  @override
  String get emptyListAddItems =>
      'لیست شما خالی است! ابتدا آیتم اضافه کنید. ℹ️';

  @override
  String get listOrganizedMagic =>
      'لیست به صورت جادویی بر اساس دسته‌بندی سازماندهی شد! ✨';

  @override
  String get shoppingMode => 'حالت خرید';

  @override
  String get smartOrganization => 'سازماندهی هوشمند';

  @override
  String get savings => 'صرفه‌جویی';

  @override
  String get shoppingModeHeader => 'حالت خرید';

  @override
  String get shareAsText => 'ارسال آیتم‌ها به صورت متن فرمت‌شده';

  @override
  String get shareRealtime => 'همگام‌سازی هم‌زمان با دیگران';

  @override
  String get quickRecipe => 'دستور پخت سریع';

  @override
  String get quickRecipePrompt => 'دستور پخت با آیتم‌های لیست من پیشنهاد کن.';

  @override
  String get economyTips => 'نکات صرفه‌جویی';

  @override
  String get economyTipsPrompt =>
      'چگونه می‌توانم در این خرید پول صرفه‌جویی کنم؟';

  @override
  String get organizeAisles => 'سازماندهی بر اساس راهرو';

  @override
  String get organizeAislesPrompt => 'بر اساس راهروهای فروشگاه سازماندهی کن.';

  @override
  String get recipeSuggestion => 'پیشنهاد دستور پخت';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining اعتبار باقی‌مانده';
  }

  @override
  String get addAllToList => 'افزودن همه به لیست';

  @override
  String get organizeByAisles => 'سازماندهی بر اساس راهرو';

  @override
  String get voiceTranscriptionTooltip => 'تایپ صوتی (رایگان)';

  @override
  String get aiVoiceCommandTooltip => 'فرمان صوتی هوش مصنوعی (پریمیوم)';

  @override
  String get voiceCommandTitle => 'فرمان صوتی هوش مصنوعی';

  @override
  String get voiceCommandContent =>
      'به طور طبیعی صحبت کنید تا لیست خود را مدیریت کنید!\n\nنمونه‌ها:\n• \'نان، پنیر و ژامبون اضافه کن\'\n• \'مواد شوینده را حذف کن\'\n• \'تم را به آبی تغییر بده\'\n\nاین یک ویژگی انحصاری KipiList پریمیوم است.';

  @override
  String get voiceCommandPlanBtn => 'مشاهده طرح‌ها';

  @override
  String get itemsAddedSuccess => 'آیتم‌ها با موفقیت به لیست اضافه شدند!';

  @override
  String get viewList => 'مشاهده لیست';

  @override
  String get feedbackTitle => 'ارسال بازخورد';

  @override
  String get feedbackPrompt => 'چه چیزی می‌خواهید به اشتراک بگذارید؟';

  @override
  String get feedbackTypeBug => 'گزارش باگ';

  @override
  String get feedbackTypeBugHint => 'چیزی کار نمی‌کند';

  @override
  String get feedbackTypeSuggestion => 'پیشنهاد';

  @override
  String get feedbackTypeSuggestionHint => 'ایده برای بهبود برنامه';

  @override
  String get feedbackTypeTranslation => 'مشکل ترجمه';

  @override
  String get feedbackTypeTranslationHint => 'ترجمه نادرست یا نامناسب';

  @override
  String get feedbackTypeFeature => 'درخواست ویژگی';

  @override
  String get feedbackTypeFeatureHint => 'ویژگی که دوست دارید ببینید';

  @override
  String get feedbackTypeOther => 'سایر';

  @override
  String get feedbackTypeOtherHint => 'سایر انواع بازخورد';

  @override
  String get feedbackHint => 'بازخورد خود را به طور کامل توضیح دهید...';

  @override
  String get feedbackSend => 'ارسال بازخورد';

  @override
  String get feedbackSending => 'در حال ارسال...';

  @override
  String get feedbackThankYou => 'متشکرم!';

  @override
  String get feedbackThankYouMessage =>
      'بازخورد شما دریافت شد و به ما کمک می‌کند تا KipiList را برای همه بهبود دهیم.';

  @override
  String get feedbackBack => 'بازگشت';

  @override
  String feedbackError(String error) {
    return 'خطا در ارسال: $error';
  }

  @override
  String get feedbackRetry => 'تلاش مجدد';

  @override
  String get feedbackSettingsTitle => 'ارسال بازخورد';

  @override
  String get feedbackSettingsSubtitle =>
      'گزارش باگ، پیشنهاد بهبود، یا اصلاح ترجمه‌ها';

  @override
  String get aiEnergy => 'انرژی هوش مصنوعی';

  @override
  String get searchInConversation => 'جستجو در گفتگو...';

  @override
  String get noMessagesFound => 'هیچ پیامی یافت نشد';

  @override
  String get suggestedQuestions => 'سوالات پیشنهادی:';

  @override
  String get shoppingAssistant => 'دستیار خرید';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased از $total خریداری شده است';
  }

  @override
  String get estimatedCost => 'برآورد شده است';

  @override
  String get viewItems => 'مشاهده آیتم ها';

  @override
  String get noItemsInList => 'هیچ موردی در لیست وجود ندارد';

  @override
  String get longHistoryWarning =>
      'سابقه طولانی: دستیار برای عملکرد بهتر بر آخرین پیام ها تمرکز می کند.';

  @override
  String get listening => 'گوش دادن...';

  @override
  String get addDirectToList => 'مستقیما به لیست اضافه کنید';

  @override
  String get unlockFullResponse => 'پاسخ کامل را باز کنید';

  @override
  String get switchList => 'تغییر لیست';

  @override
  String get marketMode => 'حالت بازار';

  @override
  String get backToChat => 'بازگشت به چت';

  @override
  String get finishShopping => 'خرید را تمام کنید';

  @override
  String get welcomeAiAssistant => 'به دستیار هوش مصنوعی خوش آمدید';

  @override
  String get createListToStartAi =>
      'برای شروع استفاده از چت هوشمند، یک لیست خرید ایجاد کنید.';

  @override
  String get howCanIHelp => 'چگونه می توانم کمک کنم؟';

  @override
  String get chatSubtitleShort =>
      'در مورد قیمت ها، دستور العمل ها، سازماندهی بپرسید...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total خریداری شد';
  }

  @override
  String get quickReplies => 'پاسخ های سریع:';

  @override
  String get voiceProFeature =>
      'دستورات صوتی پیشرفته Pro هستند. فعال کردن دیکته اولیه...';

  @override
  String get viewPro => 'نمایش حرفه ای';

  @override
  String get errorLoadingChat => 'اوه! هنگام بارگیری گپ مشکلی پیش آمد.';

  @override
  String get errorLoadingChatSubtitle =>
      'اتصال خود را بررسی کنید یا بعداً دوباره امتحان کنید.';

  @override
  String get errorOscillation =>
      'این ممکن است به دلیل نوسانات شبکه یا در دسترس نبودن موقت رخ دهد. لطفا دوباره امتحان کنید.';

  @override
  String get activeListening => 'گوش دادن فعال';

  @override
  String get whatToDoWithItem => 'دوست دارید با این آیتم چه کار کنید؟';

  @override
  String get viewDetails => 'مشاهده جزئیات';

  @override
  String get openMenu => 'باز کردن منو';

  @override
  String get viewRecipe => 'مشاهده دستور پخت';

  @override
  String get recipeCreated => 'دستور پخت ایجاد شد!';

  @override
  String get editRecipe => 'ویرایش';

  @override
  String get deleteRecipe => 'حذف';

  @override
  String get deleteRecipeConfirm => 'این دستور پخت حذف شود؟';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'آیا از حذف \"$recipeName\" مطمئن هستید؟ این عمل قابل بازگشت نیست.';
  }

  @override
  String get ingredients => 'مواد اولیه';

  @override
  String get instructions => 'دستورالعمل‌ها';

  @override
  String get prepTime => 'زمان پخت';

  @override
  String get recipeSaved => 'دستور پخت ذخیره شد!';

  @override
  String get noRecipesSaved => 'هیچ دستور پختی ذخیره نشده است';

  @override
  String get noRecipesSavedHint =>
      'اولین دستور پخت سفارشی خود را با زدن دکمه زیر ایجاد کنید.';

  @override
  String get myRecipes => 'دستورهای پخت من';

  @override
  String get newRecipe => 'دستور پخت جدید';

  @override
  String get loadingRecipes => 'در حال بارگذاری دستورهای پخت شما...';

  @override
  String get errorLoadingRecipes => 'خطا در بارگذاری دستورهای پخت';

  @override
  String get addIngredient => 'افزودن مواد اولیه';

  @override
  String get saveRecipe => 'ذخیره';

  @override
  String get recipeName => 'نام دستور پخت';

  @override
  String get shortDescription => 'توضیح کوتاه';

  @override
  String get prepTimeMinutes => 'زمان پخت (دقیقه)';

  @override
  String get instructionsHint => 'در هر خط یک مرحله بنویسید...';

  @override
  String get addPhoto => 'افزودن عکس';

  @override
  String get imageUrlPlaceholder => 'یا نشانی تصویر را بچسبانید';

  @override
  String get tags => 'برچسب‌ها';

  @override
  String get recipeTags => 'برچسب‌های دستور پخت';

  @override
  String get suggestedTags => 'پیشنهادی';

  @override
  String get searchRecipes => 'جستجوی دستورهای پخت...';

  @override
  String get filterByTag => 'فیلتر بر اساس برچسب';

  @override
  String get allTags => 'همه';

  @override
  String get recipeDeleted => 'دستور پخت حذف شد';

  @override
  String get saveChanges => 'ذخیره تغییرات';

  @override
  String get editRecipeTitle => 'ویرایش دستور پخت';

  @override
  String get newRecipeTitle => 'دستور پخت جدید';

  @override
  String get requiredField => 'الزامی';

  @override
  String get chooseImageSource => 'انتخاب منبع تصویر';

  @override
  String get gallery => 'گالری';

  @override
  String get enterUrl => 'ورود نشانی اینترنتی';

  @override
  String get recipeImage => 'تصویر دستور پخت';

  @override
  String get removeImage => 'حذف تصویر';

  @override
  String get mealPlannerTitle => 'برنامه‌ریز غذا';

  @override
  String get mealPlannerViewMonthly => 'نمای ماهانه';

  @override
  String get mealPlannerViewWeekly => 'نمای هفتگی';

  @override
  String get mealPlannerNoMeals => 'هیچ وعده غذایی برنامه‌ریزی نشده است';

  @override
  String get mealPlannerNoMealsHint =>
      'برای افزودن وعده، روی یک روز ضربه بزنید';

  @override
  String get mealPlannerLoading => 'در حال بارگذاری برنامه غذایی...';

  @override
  String get mealPlannerError => 'خطا در بارگذاری برنامه غذایی';

  @override
  String get mealPlannerAddMeal => 'افزودن وعده غذایی';

  @override
  String get mealPlannerEditMeal => 'ویرایش وعده غذایی';

  @override
  String get mealPlannerDeleteMeal => 'حذف وعده غذایی';

  @override
  String get mealPlannerMealDeleted => 'وعده غذایی حذف شد';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count نفر',
      one: '$count نفر',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'تعداد نفرات';

  @override
  String get mealPlannerNoteLabel => 'یادداشت (اختیاری)';

  @override
  String get mealPlannerSelectRecipe => 'یک دستور پخت انتخاب کنید';

  @override
  String get mealPlannerSearchRecipes => 'جستجوی دستورهای پخت...';

  @override
  String get mealPlannerNoRecipesFound => 'دستور پختی پیدا نشد';

  @override
  String get mealPlannerNoRecipesHint =>
      'ابتدا دستورهای پخت را در برگه دستور پخت ایجاد کنید';

  @override
  String get mealPlannerSave => 'افزودن به برنامه';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count از $total وعده برنامه‌ریزی شده';
  }

  @override
  String get mealPlannerGenerateList => 'ایجاد لیست خرید';

  @override
  String get mealPlannerGenerateListConfirm =>
      'تمام مواد اولیه وعده‌های غذایی برنامه‌ریزی شده این هفته به لیست خرید شما اضافه شود؟';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count مورد به لیست شما اضافه شد!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ماده اولیه‌ای برای افزودن وجود ندارد. ابتدا چند وعده غذایی با دستور پخت برنامه‌ریزی کنید.';

  @override
  String get mealPlannerGenerateListNoList => 'ابتدا یک لیست خرید ایجاد کنید.';

  @override
  String get mealPlannerMealTypeBreakfast => 'صبحانه';

  @override
  String get mealPlannerMealTypeLunch => 'ناهار';

  @override
  String get mealPlannerMealTypeDinner => 'شام';

  @override
  String get mealPlannerMealTypeSnack => 'میان‌وعده';

  @override
  String get mealPlannerDateLabel => 'تاریخ';

  @override
  String get mealPlannerWeekEmpty => 'چیزی برای این هفته برنامه‌ریزی نشده است';

  @override
  String get mealPlannerWeekEmptyHint =>
      'برای شروع برنامه‌ریزی، روی هر روزی که می‌خواهید ضربه بزنید!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes دقیقه';
  }

  @override
  String get inviteToList => 'دعوت به لیست';

  @override
  String get shareApp => 'برنامه را به اشتراک بگذارید';

  @override
  String get shareAppDescription =>
      'دوستان را به استفاده از KipiList دعوت کنید';

  @override
  String shareReferralText(Object url) {
    return 'من از KipiList برای سازماندهی خرید خود استفاده می کنم! از طریق پیوند من بارگیری کنید و هر دو 7 روز Premium رایگان دریافت می کنیم: $url';
  }

  @override
  String get shareReferralSubject => '۷ روز KipiList Premium دریافت کنید!';

  @override
  String get gestureHint =>
      'برای انتخاب نگه دارید • برای حذف، انگشت خود را تند بکشید';

  @override
  String get catalogTitle => 'کاتالوگ';

  @override
  String get catalogMyFrequents => 'فرکانس های من';

  @override
  String get catalogSearchGlobal => 'جستجو در هر محصول ...';

  @override
  String catalogSearchInCategory(String category) {
    return 'جستجو در $category...';
  }

  @override
  String get catalogSortPopular => 'محبوب ترین';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'ملی پوشان';

  @override
  String get catalogRareSection => 'در کشور شما کمتر رایج است';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 را اضافه کنید →';
  }

  @override
  String get catalogProductNotFound => 'محصول یافت نشد، نام را تایپ کنید';

  @override
  String get catalogBrowse => 'کاتالوگ را مرور کنید';

  @override
  String get offlineBanner => 'شما آفلاین هستید';

  @override
  String get consentTitle => 'حریم خصوصی و تجزیه و تحلیل';

  @override
  String get consentBody =>
      'KipiList از Firebase Analytics برای بهبود تجربه شما استفاده می کند. داده های شما طبق خط مشی رازداری ما پردازش می شود.';

  @override
  String get consentAccept => 'قبول کنید';

  @override
  String get consentDecline => 'نه، ممنون';

  @override
  String get mealPlannerPantryAllAvailable => 'موجود است';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مورد موجود نیست',
      one: '$count مورد موجود نیست',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'تاریخ انقضا';

  @override
  String get notInformed => 'مطلع نیست';
}

/// The translations for Persian, as used in Afghanistan (`fa_AF`).
class AppLocalizationsFaAf extends AppLocalizationsFa {
  AppLocalizationsFaAf() : super('fa_AF');

  @override
  String get appTitle => 'لیست خرید';

  @override
  String get lists => 'لیست‌ها';

  @override
  String get pantry => 'انباری';

  @override
  String get navChat => 'چت کنید';

  @override
  String get navRecipes => 'دستور العمل ها';

  @override
  String get navLists => 'لیست‌ها';

  @override
  String get navMealPlanner => 'منو';

  @override
  String get cancel => 'لغو';

  @override
  String get save => 'ذخیره';

  @override
  String get create => 'ایجاد';

  @override
  String get add => 'افزودن';

  @override
  String get remove => 'حذف';

  @override
  String get delete => 'پاک کردن';

  @override
  String get edit => 'ویرایش';

  @override
  String get copy => 'کپی';

  @override
  String get next => 'بعدی';

  @override
  String get retry => 'تلاش مجدد';

  @override
  String get regenerate => 'بازتولید';

  @override
  String get copiedToClipboard => 'در کلیپ‌بورد کپی شد';

  @override
  String get confirm => 'تأیید';

  @override
  String get close => 'بستن';

  @override
  String get import => 'وارد کردن';

  @override
  String get rename => 'تغییر نام';

  @override
  String get upgrade => 'ارتقا';

  @override
  String get clear => 'پاک کردن';

  @override
  String error(String message) {
    return 'خطا: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'خطا: $message';
  }

  @override
  String get purchaseError => 'خطا در پردازش خرید. دوباره تلاش کنید.';

  @override
  String get restoreError => 'خطا در بازیابی خریدها. دوباره تلاش کنید.';

  @override
  String get loading => 'در حال بارگذاری...';

  @override
  String get fieldRequired => 'فیلد الزامی';

  @override
  String get addedFeedback => 'افزوده شد!';

  @override
  String get profile => 'نمایه';

  @override
  String get exitShoppingMode => 'از حالت خرید خارج شوید';

  @override
  String get exit => 'خارج شوید';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count انتخاب شده',
      one: '$count انتخاب شده',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'تخمینی';

  @override
  String get alreadyPurchased => 'قبلاً خریداری شده';

  @override
  String get clearList => 'پاک کردن لیست';

  @override
  String get clearPurchased => 'پاک کردن خریداری‌شده‌ها';

  @override
  String get share => 'اشتراک‌گذاری';

  @override
  String get shareViaCode => 'اشتراک‌گذاری با کد';

  @override
  String get importViaCode => 'وارد کردن با کد';

  @override
  String get listAssistant => 'دستیار لیست';

  @override
  String get globalAssistant => 'دستیار عمومی';

  @override
  String get becomePremium => 'پریمیوم شوید';

  @override
  String get manageSubscription => 'مدیریت اشتراک';

  @override
  String get completePurchase => 'تکمیل خرید';

  @override
  String get confirmClearList => 'همه موارد حذف شوند؟';

  @override
  String get shareListTitle => 'اشتراک‌گذاری لیست';

  @override
  String get shareThisCode => 'این کد را به اشتراک بگذارید:';

  @override
  String get validForLimitedTime => 'معتبر برای مدت محدود';

  @override
  String get importListTitle => 'وارد کردن لیست';

  @override
  String get enterCodeHint => 'کد را وارد کنید';

  @override
  String get confirmArchiveTitle => 'تکمیل خرید';

  @override
  String get confirmArchiveContent => 'این خرید تکمیل و لیست بایگانی شود؟';

  @override
  String get complete => 'تکمیل';

  @override
  String get listArchived => 'لیست با موفقیت بایگانی شد!';

  @override
  String listAdded(String listName) {
    return '$listName اضافه شد!';
  }

  @override
  String get buy => 'خرید';

  @override
  String get unmark => 'لغو علامت';

  @override
  String confirmDeleteItems(int count) {
    return '$count آیتم حذف شود؟';
  }

  @override
  String get confirmDeleteTitle => 'تأیید';

  @override
  String confirmContent(int count) {
    return '$count آیتم حذف شود؟';
  }

  @override
  String get archiveList => 'بایگانی لیست';

  @override
  String get pantryAppBar => 'انباری';

  @override
  String get generateShoppingList => 'ایجاد لیست خرید';

  @override
  String get pantryEmpty => 'انباری خالی است';

  @override
  String get pantryEmptySubtitle =>
      'محصولاتی را که می‌خواهید در خانه داشته باشید اضافه کنید';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit آیتم باید خریداری شود';
  }

  @override
  String get noItemsToBuy => 'هیچ آیتمی نیاز به خرید ندارد';

  @override
  String get newPantryList => 'خرید از انباری';

  @override
  String get newListTitle => 'لیست خرید جدید';

  @override
  String itemsWillBeAdded(int count) {
    return '$count آیتم اضافه خواهد شد';
  }

  @override
  String get listNameLabel => 'نام لیست';

  @override
  String listCreated(String name, int count) {
    return 'لیست \"$name\" با $count آیتم ایجاد شد';
  }

  @override
  String get noTracking => 'بدون پیگیری';

  @override
  String get markAsPurchased => 'علامت‌گذاری به عنوان خریداری شده';

  @override
  String editPantryItem(String name) {
    return 'ویرایش $name';
  }

  @override
  String get idealQuantity => 'مقدار ایده‌آل';

  @override
  String get currentQuantity => 'مقدار فعلی';

  @override
  String get consumed => 'مصرف شده';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name به $quantity $unit شارژ شد';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" از انباری حذف شود؟';
  }

  @override
  String pantryEditTitle(String name) {
    return 'ویرایش $name';
  }

  @override
  String get settingsAppBar => 'تنظیمات';

  @override
  String get language => 'زبان';

  @override
  String get languagePortuguese => 'پرتغالی (برزیل)';

  @override
  String get languageEnglish => 'انگلیسی';

  @override
  String get languageSystem => 'پیش‌فرض سیستم';

  @override
  String get chooseLanguage => 'انتخاب زبان';

  @override
  String get searchLanguage => 'جستجوی زبان...';

  @override
  String get currency => 'ارز';

  @override
  String get chooseCurrency => 'ارز را انتخاب کنید';

  @override
  String get searchCurrency => 'جستجوی ارز...';

  @override
  String get appearance => 'ظاهر';

  @override
  String get light => 'روشن';

  @override
  String get system => 'سیستم';

  @override
  String get dark => 'تاریک';

  @override
  String get themeColor => 'رنگ تم';

  @override
  String get dynamicColors => 'رنگ‌های پویا';

  @override
  String get dynamicColorsSubtitle =>
      'استفاده از رنگ‌ها بر اساس تصویر پس‌زمینه';

  @override
  String get dynamicColorsEnabledWarning =>
      'رنگ های پویا را غیرفعال کنید تا رنگ طرح زمینه تاثیرگذار باشد';

  @override
  String get finance => 'مالی';

  @override
  String get monthlyBudgetNav => 'بودجه ماهانه';

  @override
  String get budgetSubtitle => 'هزینه‌های ماهانه خود را پیگیری کنید';

  @override
  String get data => 'داده‌ها';

  @override
  String get backupNav => 'پشتیبان‌گیری';

  @override
  String get backupSubtitle => 'داده‌های خود را صادر یا وارد کنید';

  @override
  String get about => 'درباره';

  @override
  String get version => 'نسخه';

  @override
  String get privacy => 'حریم خصوصی';

  @override
  String get termsOfUse => 'شرایط استفاده';

  @override
  String get backupTitle => 'پشتیبان‌گیری';

  @override
  String get backupPremiumDescription =>
      'پشتیبان‌گیری و صادر کردن یک ویژگی پریمیوم است';

  @override
  String get exportData => 'صادر کردن داده‌ها';

  @override
  String get exportDataSubtitle => 'ذخیره همه لیست‌ها به صورت JSON';

  @override
  String get importData => 'وارد کردن داده‌ها';

  @override
  String get importDataSubtitle => 'بازیابی لیست‌ها از یک JSON';

  @override
  String get importJsonTitle => 'وارد کردن JSON';

  @override
  String get importJsonHint => 'JSON پشتیبان را اینجا بچسبانید...';

  @override
  String get backupExported => 'پشتیبان صادر شد!';

  @override
  String get budgetAppBar => 'بودجه ماهانه';

  @override
  String get budgetPremiumLocked => 'بودجه ماهانه سراسری یک ویژگی پریمیوم است';

  @override
  String get budgetUpgradePrompt => 'برای باز کردن قفل ارتقا دهید';

  @override
  String get noBudgetDefined => 'بودجه‌ای تنظیم نشده';

  @override
  String totalEstimated(String amount) {
    return 'مجموع تخمینی: $amount';
  }

  @override
  String get setBudgetButton => 'تنظیم بودجه';

  @override
  String get budgetLists => 'لیست‌ها';

  @override
  String get budgetValueLabel => 'مبلغ';

  @override
  String get setBudgetTitle => 'بودجه ماهانه';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent از $budget';
  }

  @override
  String get filterAll => 'همه';

  @override
  String get filterPending => 'در انتظار';

  @override
  String get filterPurchased => 'خریداری شده';

  @override
  String get sortName => 'نام';

  @override
  String get sortCategory => 'دسته‌بندی';

  @override
  String get sortDate => 'تاریخ';

  @override
  String get sortManual => 'دستی';

  @override
  String get addItem => 'افزودن آیتم';

  @override
  String get itemName => 'نام آیتم';

  @override
  String get quantityShort => 'تعداد';

  @override
  String get unit => 'واحد';

  @override
  String get category => 'دسته‌بندی';

  @override
  String get estimatedPrice => 'قیمت تخمینی';

  @override
  String get addItemPrice => 'قیمت تخمینی';

  @override
  String get editItem => 'ویرایش آیتم';

  @override
  String get quantityFull => 'مقدار';

  @override
  String get editItemPrice => 'قیمت تخمینی';

  @override
  String get addToPantry => 'افزودن به انباری';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" به انباری شما اضافه شود؟';
  }

  @override
  String get yes => 'بله';

  @override
  String get productName => 'نام محصول';

  @override
  String get idealQty => 'مقدار ایده‌آل';

  @override
  String get currentQty => 'مقدار فعلی';

  @override
  String get trackStock => 'پیگیری موجودی';

  @override
  String get trackStockActive => 'در پیشنهادات خرید نمایش داده می‌شود';

  @override
  String get trackStockInactive => 'پیشنهاد خرید ایجاد نمی‌کند';

  @override
  String get createListDialog => 'ایجاد لیست';

  @override
  String get renameListDialog => 'تغییر نام لیست';

  @override
  String get listHistory => 'تاریخچه لیست';

  @override
  String get myLists => 'لیست‌های من';

  @override
  String get viewActive => 'مشاهده فعال‌ها';

  @override
  String get viewHistory => 'مشاهده تاریخچه';

  @override
  String get noArchivedLists => 'هیچ لیست بایگانی شده‌ای وجود ندارد';

  @override
  String get noActiveLists => 'هیچ لیست فعالی وجود ندارد';

  @override
  String completedOn(String date) {
    return 'تکمیل شده در $date';
  }

  @override
  String get sharedLabel => 'اشتراک‌گذاری شده';

  @override
  String get restore => 'بازیابی';

  @override
  String get removeSharedTooltip => 'حذف';

  @override
  String get deleteListTitle => 'حذف لیست';

  @override
  String deleteListContent(String name) {
    return 'آیا مطمئن هستید که می‌خواهید \"$name\" را حذف کنید؟ همه آیتم‌ها حذف خواهند شد.';
  }

  @override
  String get removeSharedListTitle => 'حذف لیست اشتراک‌گذاری شده';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" از لیست‌های شما حذف شود؟ لیست اصلی تحت تأثیر قرار نخواهد گرفت.';
  }

  @override
  String get createNewList => 'ایجاد لیست جدید';

  @override
  String get aiAssistant => 'دستیار هوش مصنوعی';

  @override
  String get aiAssistantDescription =>
      'با دستیار هوش مصنوعی ما پیشنهادات هوشمند، دستور پخت و نکات شخصی دریافت کنید.';

  @override
  String get generalAssistant => 'دستیار عمومی';

  @override
  String get newChat => 'چت جدید';

  @override
  String get noHistory => 'سابقه چت وجود ندارد';

  @override
  String get deleteSession => 'چت را حذف کنید';

  @override
  String get deleteSessionConfirm =>
      'آیا مطمئنید که می خواهید این چت را حذف کنید؟ پیام ها برای همیشه از بین خواهند رفت.';

  @override
  String get clearHistory => 'پاک کردن تاریخچه';

  @override
  String get clearHistoryConfirm => 'همه پیام‌های این جلسه پاک شود؟';

  @override
  String get chatHint => 'پیام خود را بنویسید...';

  @override
  String get chatHintBlocked => 'قفل هوش مصنوعی را برای چت باز کنید';

  @override
  String chatError(String error) {
    return 'خطا در بارگذاری چت: $error';
  }

  @override
  String get listHelp => 'چگونه می‌توانم با لیست شما کمک کنم؟';

  @override
  String get generalHelp => 'امروز چگونه می‌توانم در خرید شما کمک کنم؟';

  @override
  String get chatSubtitle =>
      'برای پیشنهاد آیتم، دستور پخت یا نکات صرفه‌جویی بپرسید.';

  @override
  String get aiError =>
      'متأسفانه، خطایی در پردازش درخواست شما رخ داد. اتصال خود را بررسی کنید یا بعداً دوباره تلاش کنید.';

  @override
  String get aiLimitAlmostReached => 'پیام های هوش مصنوعی تقریبا تمام شده است';

  @override
  String get unlockAi => 'هوش مصنوعی نامحدود را باز کنید';

  @override
  String get aiTeaserFallback =>
      'برای باز کردن پاسخ کامل و دریافت نکات نامحدود هوش مصنوعی برای خرید خود در Premium مشترک شوید...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'برای دسترسی به ویژگی‌های\nپریمیوم وارد شوید';

  @override
  String get signInGoogle => 'ورود با گوگل';

  @override
  String get signInApple => 'ورود با اپل';

  @override
  String get continueAsGuest => 'ادامه به عنوان مهمان';

  @override
  String get onboardingWelcomeTitle => 'به KipiList خوش آمدید';

  @override
  String get onboardingWelcomeDesc =>
      'هوشمندانه ترین راه برای سازماندهی خرید و صرفه جویی در هزینه.';

  @override
  String get onboardingSetupTitle => 'تجربه خود را شخصی کنید';

  @override
  String get onboardingSetupDesc =>
      'انتخاب کنید که می‌خواهید KipiList چگونه به نظر برسد و برای شما کار کند.';

  @override
  String get onboardingLoginTitle => 'همه چیز را در ابر ذخیره کنید';

  @override
  String get onboardingLoginDesc =>
      'داده های شما در همه دستگاه های شما همگام سازی شد';

  @override
  String get onboardingShareTitle =>
      'با کسانی که دوستشان دارید به اشتراک بگذارید';

  @override
  String get onboardingShareDesc =>
      'همگام سازی لیست ها با خانواده و دوستان در زمان واقعی';

  @override
  String get onboardingPremiumTitle => 'قفل تمام ویژگی ها را باز کنید';

  @override
  String get onboardingPremiumSubtitle =>
      'از لیست خرید خود نهایت استفاده را ببرید';

  @override
  String get onboardingAnnualBadge => 'بهترین ارزش';

  @override
  String get onboardingMonthlyLabel => 'ماهانه';

  @override
  String get onboardingAnnualLabel => 'سالانه';

  @override
  String get onboardingViewAllPlans => 'مشاهده همه طرح ها';

  @override
  String get onboardingSubscribeCta => 'مشترک شوید';

  @override
  String get onboardingCancelAnytime => 'هر زمان خواستید لغو کنید. بدون تعهد';

  @override
  String get onboardingContinueAsGuest => 'به عنوان مهمان ادامه دهید';

  @override
  String get onboardingRestore => 'بازیابی کنید';

  @override
  String get onboardingRestoreDesc =>
      'آیا از قبل اشتراک دارید؟ برای بازیابی آن اینجا را ضربه بزنید.';

  @override
  String get onboardingExit => 'خارج شوید';

  @override
  String get onboardingPersonalizationTitle => 'بیایید با شما آشنا شویم';

  @override
  String get onboardingPersonalizationDesc =>
      'ما از این برای شخصی سازی پیشنهادات شما و هوشمندتر کردن خرید استفاده خواهیم کرد.';

  @override
  String get onboardingPersonalizationFoodLabel => 'غذای مورد علاقه شما چیست؟';

  @override
  String get onboardingPersonalizationFoodHint =>
      'به عنوان مثال پیتزا، سوشی، لازانیا...';

  @override
  String get onboardingPersonalizationCta => 'ادامه دهید';

  @override
  String get onboardingPersonalizationSkip => 'فعلا رد شوید';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'برای ادامه غذای مورد علاقه خود را به ما بگویید';

  @override
  String get settingsDefaultScreen => 'صفحه اصلی پیش فرض';

  @override
  String get settingsDefaultScreenSubtitle =>
      'بین لیست خرید یا چت هوش مصنوعی یکی را انتخاب کنید';

  @override
  String get settingsScreenList => 'لیست خرید';

  @override
  String get settingsScreenChat => 'چت هوش مصنوعی';

  @override
  String loginError(String error) {
    return 'خطای ورود: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'خطا در بارگیری پیشنهادها. دوباره امتحان کنید.';

  @override
  String get paywallPurchaseError => 'خرید کامل نشد. دوباره امتحان کنید.';

  @override
  String get paywallRestoreError => 'هیچ اشتراک فعالی برای بازیابی یافت نشد.';

  @override
  String paywallTrialDays(Object days) {
    return '$days روز رایگان';
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
  String get paywallTrialTitle =>
      'KipiList Pro را به مدت 7 روز رایگان امتحان کنید';

  @override
  String get paywallTrialSubtitle =>
      'هر زمان خواستید لغو کنید. امروز بدون شارژ';

  @override
  String get paywallTrialCta => 'آزمایش رایگان را شروع کنید';

  @override
  String get recipeAddToList => 'به لیست خرید اضافه کنید';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count مواد به $listName اضافه شد';
  }

  @override
  String get paywallFeaturesTitle => 'هر چیزی که نیاز دارید:';

  @override
  String get paywallFeatureUnlimitedLists => 'لیست های نامحدود';

  @override
  String get paywallFeatureSmartAI => 'هوش مصنوعی هوشمند';

  @override
  String get paywallFeatureExpenseControl => 'کنترل هزینه';

  @override
  String get paywallFeatureSharing => 'اشتراک گذاری';

  @override
  String get paywallBeforeAfterTitle => 'هوش مصنوعی قبل و بعد:';

  @override
  String get paywallLabelCommon => 'مشترک';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'برنج';

  @override
  String get paywallBeforeItem2 => 'صابون';

  @override
  String get paywallBeforeItem3 => 'گوشت';

  @override
  String get paywallBeforeItem4 => 'نان';

  @override
  String get paywallAfterItem1 => 'غلات';

  @override
  String get paywallAfterItem2 => 'تمیز کردن';

  @override
  String get paywallAfterItem3 => 'گوشت ها';

  @override
  String get paywallAfterItem4 => 'نانوایی';

  @override
  String get paywallTestimonialsTitle => 'آنچه کاربران ما می گویند:';

  @override
  String get paywallTestimonial1Name => 'آن اس.';

  @override
  String get paywallTestimonial1Text =>
      'هوش مصنوعی خرید من را در چند ثانیه سازماندهی می کند. من 20 دقیقه در هر سفر بازار صرفه جویی می کنم.';

  @override
  String get paywallTestimonial2Name => 'چارلز ام.';

  @override
  String get paywallTestimonial2Text =>
      'من هرگز یک آیتم لیست را فراموش نکردم. چت هوش مصنوعی هیجان انگیز است!';

  @override
  String get paywallSocialProof => '+2400 خانواده از آن استفاده می کنند';

  @override
  String get paywallCtaUnlock => 'باز کردن قفل PRO';

  @override
  String get paywallBestValue => 'بهترین ارزش';

  @override
  String get paywallMostPopular => 'محبوب ترین';

  @override
  String get paywallSafeCheckout => 'پرداخت مطمئن';

  @override
  String get paywallSelectPlan => 'طرح خود را انتخاب کنید:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ذخیره $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'فقط $price/ماه';
  }

  @override
  String get paywallPackageAnnual => 'برنامه سالانه';

  @override
  String get paywallPackageMonthly => 'برنامه ماهانه';

  @override
  String get paywallPackageLifetime => 'دسترسی مادام العمر';

  @override
  String get paywallCancelAnytime => 'هر زمان خواستید لغو کنید. بدون تعهد';

  @override
  String get paywallPolicy => 'سیاست حفظ حریم خصوصی';

  @override
  String get paywallTerms => 'شرایط استفاده';

  @override
  String get paywallRestore => 'بازیابی کنید';

  @override
  String get paywallHeroHeadline => 'هوش مصنوعی Kipi همیشه در کنار شماست';

  @override
  String get paywallHeroSubtitle =>
      'آیتم ها را اضافه کنید، لیست ها را سازماندهی کنید و با هوش مصنوعی در جیب خود در زمان صرفه جویی کنید';

  @override
  String get paywallBenefit1Desc =>
      '24/7 موارد را اضافه، سازماندهی و پیشنهاد می کند';

  @override
  String get paywallBenefit2Desc => 'محدودیت 3 لیستی وجود ندارد';

  @override
  String get paywallBenefit3Desc => 'ردیابی هزینه ها و لیست خانواده';

  @override
  String get paywallPackageMonthlyDesc => 'انعطاف پذیری کامل';

  @override
  String paywallCtaTrialDays(int days) {
    return 'شروع رایگان — $days روز';
  }

  @override
  String get premiumUpgrade => 'برای باز کردن قفل ارتقا دهید';

  @override
  String get itemRemoved => 'آیتم حذف شد';

  @override
  String get undo => 'واگردانی';

  @override
  String get emptyListTitle => 'لیست شما خالی است';

  @override
  String get emptyListSubtitle => 'برای شروع، آیتم اضافه کنید';

  @override
  String get noListFoundTitle => 'لیستی یافت نشد';

  @override
  String get noListFoundSubtitle => 'اولین لیست خود را ایجاد کنید';

  @override
  String get createFirstList => 'ایجاد اولین لیست';

  @override
  String get listBudgetTitle => 'بودجه لیست';

  @override
  String get budgetAmountLabel => 'مبلغ بودجه';

  @override
  String get removeBudget => 'حذف';

  @override
  String get prefUnlimitedLists => 'لیست‌های نامحدود';

  @override
  String get prefSharing => 'اشتراک‌گذاری لیست‌ها';

  @override
  String get prefFullHistory => 'تاریخچه کامل';

  @override
  String get prefExportData => 'صادر کردن داده‌ها';

  @override
  String get prefCustomThemes => 'تم‌های سفارشی';

  @override
  String get prefMonthlyBudget => 'بودجه ماهانه سراسری';

  @override
  String get prefAIAssistant => 'دستیار هوش مصنوعی شخصی';

  @override
  String get prefUnlimitedPantry => 'انباری نامحدود';

  @override
  String get prefInteractiveArtifacts => 'محصولات تعاملی هوش مصنوعی';

  @override
  String get themeGreen => 'سبز';

  @override
  String get themeBlue => 'آبی';

  @override
  String get themePurple => 'بنفش';

  @override
  String get themeRed => 'قرمز';

  @override
  String get themeOrange => 'نارنجی';

  @override
  String get themePink => 'صورتی';

  @override
  String get themeIndigo => 'نیلی';

  @override
  String get themeAmber => 'کهربایی';

  @override
  String get themeTeal => 'فیروزه‌ای';

  @override
  String get themeBrown => 'قهوه‌ای';

  @override
  String get catFruits => 'میوه‌ها';

  @override
  String get catCleaning => 'نظافت';

  @override
  String get catBeverages => 'نوشیدنی‌ها';

  @override
  String get catBakery => 'نان‌وایی';

  @override
  String get catOthers => 'سایر';

  @override
  String get unitPack => 'بسته';

  @override
  String get shareSubject => 'لیست خرید';

  @override
  String get monthlyBudgetTitle => 'بودجه ماهانه';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent از $budget';
  }

  @override
  String get deleteListConfirm => 'حذف لیست';

  @override
  String get pantryItemRemoved => 'آیتم حذف شد';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit آیتم باید خریداری شود',
      one: '$deficit آیتم باید خریداری شود',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'مجموع سبد خرید';

  @override
  String get restockLabel => 'شارژ مجدد';

  @override
  String get advancedFeatures => 'ویژگی‌های پیشرفته';

  @override
  String get selectAll => 'انتخاب همه';

  @override
  String get deselectAll => 'لغو انتخاب همه';

  @override
  String get monthlyBudgetAppBar => 'بودجه ماهانه';

  @override
  String get budgetEditTitle => 'بودجه ماهانه';

  @override
  String get budgetDashboardTitle => 'داشبورد';

  @override
  String get selectListForDashboard =>
      'یک لیست را برای مشاهده داشبورد انتخاب کنید.';

  @override
  String get spendingAnalysis => 'تحلیل هزینه';

  @override
  String get noItemsToAnalyze => 'هیچ آیتمی در لیست برای تحلیل وجود ندارد.';

  @override
  String get markItemsToSeeAnalysis =>
      'آیتم‌ها را به عنوان خریداری شده علامت‌گذاری کنید تا تحلیل را ببینید.';

  @override
  String get totalSpending => 'مجموع هزینه';

  @override
  String get spendingByCategory => 'هزینه بر اساس دسته‌بندی';

  @override
  String get achievements => 'دستاوردها';

  @override
  String get exportPdfExcel => 'صادر کردن PDF/Excel';

  @override
  String get exportPdf => 'صادر کردن به صورت PDF';

  @override
  String get exportExcel => 'صادر کردن به صورت Excel';

  @override
  String get organizingAi => 'در حال سازماندهی با هوش مصنوعی...';

  @override
  String get yesLabel => 'بله';

  @override
  String get noLabel => 'خیر';

  @override
  String get shareListText => 'لیست خرید من';

  @override
  String get emptyListAddItems =>
      'لیست شما خالی است! ابتدا آیتم اضافه کنید. ℹ️';

  @override
  String get listOrganizedMagic =>
      'لیست به صورت جادویی بر اساس دسته‌بندی سازماندهی شد! ✨';

  @override
  String get shoppingMode => 'حالت خرید';

  @override
  String get smartOrganization => 'سازماندهی هوشمند';

  @override
  String get savings => 'صرفه‌جویی';

  @override
  String get shoppingModeHeader => 'حالت خرید';

  @override
  String get shareAsText => 'ارسال آیتم‌ها به صورت متن فرمت‌شده';

  @override
  String get shareRealtime => 'همگام‌سازی هم‌زمان با دیگران';

  @override
  String get quickRecipe => 'دستور پخت سریع';

  @override
  String get quickRecipePrompt => 'دستور پخت با آیتم‌های لیست من پیشنهاد کن.';

  @override
  String get economyTips => 'نکات صرفه‌جویی';

  @override
  String get economyTipsPrompt =>
      'چگونه می‌توانم در این خرید پول صرفه‌جویی کنم؟';

  @override
  String get organizeAisles => 'سازماندهی بر اساس راهرو';

  @override
  String get organizeAislesPrompt => 'بر اساس راهروهای فروشگاه سازماندهی کن.';

  @override
  String get recipeSuggestion => 'پیشنهاد دستور پخت';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining اعتبار باقی‌مانده';
  }

  @override
  String get addAllToList => 'افزودن همه به لیست';

  @override
  String get organizeByAisles => 'سازماندهی بر اساس راهرو';

  @override
  String get voiceTranscriptionTooltip => 'تایپ صوتی (رایگان)';

  @override
  String get aiVoiceCommandTooltip => 'فرمان صوتی هوش مصنوعی (پریمیوم)';

  @override
  String get voiceCommandTitle => 'فرمان صوتی هوش مصنوعی';

  @override
  String get voiceCommandContent =>
      'به طور طبیعی صحبت کنید تا لیست خود را مدیریت کنید!\n\nنمونه‌ها:\n• \'نان، پنیر و ژامبون اضافه کن\'\n• \'مواد شوینده را حذف کن\'\n• \'تم را به آبی تغییر بده\'\n\nاین یک ویژگی انحصاری KipiList پریمیوم است.';

  @override
  String get voiceCommandPlanBtn => 'مشاهده طرح‌ها';

  @override
  String get itemsAddedSuccess => 'آیتم‌ها با موفقیت به لیست اضافه شدند!';

  @override
  String get viewList => 'مشاهده لیست';

  @override
  String get feedbackTitle => 'ارسال بازخورد';

  @override
  String get feedbackPrompt => 'چه چیزی می‌خواهید به اشتراک بگذارید؟';

  @override
  String get feedbackTypeBug => 'گزارش باگ';

  @override
  String get feedbackTypeBugHint => 'چیزی کار نمی‌کند';

  @override
  String get feedbackTypeSuggestion => 'پیشنهاد';

  @override
  String get feedbackTypeSuggestionHint => 'ایده برای بهبود برنامه';

  @override
  String get feedbackTypeTranslation => 'مشکل ترجمه';

  @override
  String get feedbackTypeTranslationHint => 'ترجمه نادرست یا نامناسب';

  @override
  String get feedbackTypeFeature => 'درخواست ویژگی';

  @override
  String get feedbackTypeFeatureHint => 'ویژگی که دوست دارید ببینید';

  @override
  String get feedbackTypeOther => 'سایر';

  @override
  String get feedbackTypeOtherHint => 'سایر انواع بازخورد';

  @override
  String get feedbackHint => 'بازخورد خود را به طور کامل توضیح دهید...';

  @override
  String get feedbackSend => 'ارسال بازخورد';

  @override
  String get feedbackSending => 'در حال ارسال...';

  @override
  String get feedbackThankYou => 'متشکرم!';

  @override
  String get feedbackThankYouMessage =>
      'بازخورد شما دریافت شد و به ما کمک می‌کند تا KipiList را برای همه بهبود دهیم.';

  @override
  String get feedbackBack => 'بازگشت';

  @override
  String feedbackError(String error) {
    return 'خطا در ارسال: $error';
  }

  @override
  String get feedbackRetry => 'تلاش مجدد';

  @override
  String get feedbackSettingsTitle => 'ارسال بازخورد';

  @override
  String get feedbackSettingsSubtitle =>
      'گزارش باگ، پیشنهاد بهبود، یا اصلاح ترجمه‌ها';

  @override
  String get aiEnergy => 'انرژی هوش مصنوعی';

  @override
  String get searchInConversation => 'جستجو در گفتگو...';

  @override
  String get noMessagesFound => 'هیچ پیامی یافت نشد';

  @override
  String get suggestedQuestions => 'سوالات پیشنهادی:';

  @override
  String get shoppingAssistant => 'دستیار خرید';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased از $total خریداری شده است';
  }

  @override
  String get estimatedCost => 'برآورد شده است';

  @override
  String get viewItems => 'مشاهده آیتم ها';

  @override
  String get noItemsInList => 'هیچ موردی در لیست وجود ندارد';

  @override
  String get longHistoryWarning =>
      'سابقه طولانی: دستیار برای عملکرد بهتر بر آخرین پیام ها تمرکز می کند.';

  @override
  String get listening => 'گوش دادن...';

  @override
  String get addDirectToList => 'مستقیما به لیست اضافه کنید';

  @override
  String get unlockFullResponse => 'پاسخ کامل را باز کنید';

  @override
  String get switchList => 'تغییر لیست';

  @override
  String get marketMode => 'حالت بازار';

  @override
  String get backToChat => 'بازگشت به چت';

  @override
  String get finishShopping => 'خرید را تمام کنید';

  @override
  String get welcomeAiAssistant => 'به دستیار هوش مصنوعی خوش آمدید';

  @override
  String get createListToStartAi =>
      'برای شروع استفاده از چت هوشمند، یک لیست خرید ایجاد کنید.';

  @override
  String get howCanIHelp => 'چگونه می توانم کمک کنم؟';

  @override
  String get chatSubtitleShort =>
      'در مورد قیمت ها، دستور العمل ها، سازماندهی بپرسید...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total خریداری شد';
  }

  @override
  String get quickReplies => 'پاسخ های سریع:';

  @override
  String get voiceProFeature =>
      'دستورات صوتی پیشرفته Pro هستند. فعال کردن دیکته اولیه...';

  @override
  String get viewPro => 'نمایش حرفه ای';

  @override
  String get errorLoadingChat => 'اوه! هنگام بارگیری گپ مشکلی پیش آمد.';

  @override
  String get errorLoadingChatSubtitle =>
      'اتصال خود را بررسی کنید یا بعداً دوباره امتحان کنید.';

  @override
  String get errorOscillation =>
      'این ممکن است به دلیل نوسانات شبکه یا در دسترس نبودن موقت رخ دهد. لطفا دوباره امتحان کنید.';

  @override
  String get activeListening => 'گوش دادن فعال';

  @override
  String get whatToDoWithItem => 'دوست دارید با این آیتم چه کار کنید؟';

  @override
  String get viewDetails => 'مشاهده جزئیات';

  @override
  String get openMenu => 'باز کردن منو';

  @override
  String get viewRecipe => 'مشاهده دستور پخت';

  @override
  String get recipeCreated => 'دستور پخت ایجاد شد!';

  @override
  String get editRecipe => 'ویرایش';

  @override
  String get deleteRecipe => 'حذف';

  @override
  String get deleteRecipeConfirm => 'این دستور پخت حذف شود؟';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'آیا از حذف \"$recipeName\" مطمئن هستید؟ این عمل قابل بازگشت نیست.';
  }

  @override
  String get ingredients => 'مواد اولیه';

  @override
  String get instructions => 'دستورالعمل‌ها';

  @override
  String get prepTime => 'زمان پخت';

  @override
  String get recipeSaved => 'دستور پخت ذخیره شد!';

  @override
  String get noRecipesSaved => 'هیچ دستور پختی ذخیره نشده است';

  @override
  String get noRecipesSavedHint =>
      'اولین دستور پخت سفارشی خود را با زدن دکمه زیر ایجاد کنید.';

  @override
  String get myRecipes => 'دستورهای پخت من';

  @override
  String get newRecipe => 'دستور پخت جدید';

  @override
  String get loadingRecipes => 'در حال بارگذاری دستورهای پخت شما...';

  @override
  String get errorLoadingRecipes => 'خطا در بارگذاری دستورهای پخت';

  @override
  String get addIngredient => 'افزودن مواد اولیه';

  @override
  String get saveRecipe => 'ذخیره';

  @override
  String get recipeName => 'نام دستور پخت';

  @override
  String get shortDescription => 'توضیح کوتاه';

  @override
  String get prepTimeMinutes => 'زمان پخت (دقیقه)';

  @override
  String get instructionsHint => 'در هر خط یک مرحله بنویسید...';

  @override
  String get addPhoto => 'افزودن عکس';

  @override
  String get imageUrlPlaceholder => 'یا نشانی تصویر را بچسبانید';

  @override
  String get tags => 'برچسب‌ها';

  @override
  String get recipeTags => 'برچسب‌های دستور پخت';

  @override
  String get suggestedTags => 'پیشنهادی';

  @override
  String get searchRecipes => 'جستجوی دستورهای پخت...';

  @override
  String get filterByTag => 'فیلتر بر اساس برچسب';

  @override
  String get allTags => 'همه';

  @override
  String get recipeDeleted => 'دستور پخت حذف شد';

  @override
  String get saveChanges => 'ذخیره تغییرات';

  @override
  String get editRecipeTitle => 'ویرایش دستور پخت';

  @override
  String get newRecipeTitle => 'دستور پخت جدید';

  @override
  String get requiredField => 'الزامی';

  @override
  String get chooseImageSource => 'انتخاب منبع تصویر';

  @override
  String get gallery => 'گالری';

  @override
  String get enterUrl => 'ورود نشانی اینترنتی';

  @override
  String get recipeImage => 'تصویر دستور پخت';

  @override
  String get removeImage => 'حذف تصویر';

  @override
  String get mealPlannerTitle => 'برنامه‌ریز غذا';

  @override
  String get mealPlannerViewMonthly => 'نمای ماهانه';

  @override
  String get mealPlannerViewWeekly => 'نمای هفتگی';

  @override
  String get mealPlannerNoMeals => 'هیچ وعده غذایی برنامه‌ریزی نشده است';

  @override
  String get mealPlannerNoMealsHint =>
      'برای افزودن وعده، روی یک روز ضربه بزنید';

  @override
  String get mealPlannerLoading => 'در حال بارگذاری برنامه غذایی...';

  @override
  String get mealPlannerError => 'خطا در بارگذاری برنامه غذایی';

  @override
  String get mealPlannerAddMeal => 'افزودن وعده غذایی';

  @override
  String get mealPlannerEditMeal => 'ویرایش وعده غذایی';

  @override
  String get mealPlannerDeleteMeal => 'حذف وعده غذایی';

  @override
  String get mealPlannerMealDeleted => 'وعده غذایی حذف شد';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count نفر',
      one: '$count نفر',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'تعداد نفرات';

  @override
  String get mealPlannerNoteLabel => 'یادداشت (اختیاری)';

  @override
  String get mealPlannerSelectRecipe => 'یک دستور پخت انتخاب کنید';

  @override
  String get mealPlannerSearchRecipes => 'جستجوی دستورهای پخت...';

  @override
  String get mealPlannerNoRecipesFound => 'دستور پختی پیدا نشد';

  @override
  String get mealPlannerNoRecipesHint =>
      'ابتدا دستورهای پخت را در برگه دستور پخت ایجاد کنید';

  @override
  String get mealPlannerSave => 'افزودن به برنامه';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count از $total وعده برنامه‌ریزی شده';
  }

  @override
  String get mealPlannerGenerateList => 'ایجاد لیست خرید';

  @override
  String get mealPlannerGenerateListConfirm =>
      'تمام مواد اولیه وعده‌های غذایی برنامه‌ریزی شده این هفته به لیست خرید شما اضافه شود؟';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count مورد به لیست شما اضافه شد!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ماده اولیه‌ای برای افزودن وجود ندارد. ابتدا چند وعده غذایی با دستور پخت برنامه‌ریزی کنید.';

  @override
  String get mealPlannerGenerateListNoList => 'ابتدا یک لیست خرید ایجاد کنید.';

  @override
  String get mealPlannerMealTypeBreakfast => 'صبحانه';

  @override
  String get mealPlannerMealTypeLunch => 'ناهار';

  @override
  String get mealPlannerMealTypeDinner => 'شام';

  @override
  String get mealPlannerMealTypeSnack => 'میان‌وعده';

  @override
  String get mealPlannerDateLabel => 'تاریخ';

  @override
  String get mealPlannerWeekEmpty => 'چیزی برای این هفته برنامه‌ریزی نشده است';

  @override
  String get mealPlannerWeekEmptyHint =>
      'برای شروع برنامه‌ریزی، روی هر روزی که می‌خواهید ضربه بزنید!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes دقیقه';
  }

  @override
  String get inviteToList => 'دعوت به لیست';

  @override
  String get shareApp => 'برنامه را به اشتراک بگذارید';

  @override
  String get shareAppDescription =>
      'دوستان را به استفاده از KipiList دعوت کنید';

  @override
  String shareReferralText(Object url) {
    return 'من از KipiList برای سازماندهی خرید خود استفاده می کنم! از طریق پیوند من بارگیری کنید و هر دو 7 روز Premium رایگان دریافت می کنیم: $url';
  }

  @override
  String get shareReferralSubject => '۷ روز KipiList Premium دریافت کنید!';

  @override
  String get gestureHint =>
      'برای انتخاب نگه دارید • برای حذف، انگشت خود را تند بکشید';

  @override
  String get catalogTitle => 'کاتالوگ';

  @override
  String get catalogMyFrequents => 'فرکانس های من';

  @override
  String get catalogSearchGlobal => 'جستجو در هر محصول ...';

  @override
  String catalogSearchInCategory(String category) {
    return 'جستجو در $category...';
  }

  @override
  String get catalogSortPopular => 'محبوب ترین';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'ملی پوشان';

  @override
  String get catalogRareSection => 'در کشور شما کمتر رایج است';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 را اضافه کنید →';
  }

  @override
  String get catalogProductNotFound => 'محصول یافت نشد، نام را تایپ کنید';

  @override
  String get catalogBrowse => 'کاتالوگ را مرور کنید';

  @override
  String get offlineBanner => 'شما آفلاین هستید';

  @override
  String get consentTitle => 'حریم خصوصی و تجزیه و تحلیل';

  @override
  String get consentBody =>
      'KipiList از Firebase Analytics برای بهبود تجربه شما استفاده می کند. داده های شما طبق خط مشی رازداری ما پردازش می شود.';

  @override
  String get consentAccept => 'قبول کنید';

  @override
  String get consentDecline => 'نه، ممنون';

  @override
  String get mealPlannerPantryAllAvailable => 'موجود است';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مورد موجود نیست',
      one: '$count مورد موجود نیست',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'تاریخ انقضا';

  @override
  String get notInformed => 'مطلع نیست';
}

/// The translations for Persian, as used in Islamic Republic of Iran (`fa_IR`).
class AppLocalizationsFaIr extends AppLocalizationsFa {
  AppLocalizationsFaIr() : super('fa_IR');

  @override
  String get appTitle => 'لیست خرید';

  @override
  String get lists => 'لیست‌ها';

  @override
  String get pantry => 'انباری';

  @override
  String get navChat => 'چت کنید';

  @override
  String get navRecipes => 'دستور العمل ها';

  @override
  String get navLists => 'لیست‌ها';

  @override
  String get navMealPlanner => 'منو';

  @override
  String get cancel => 'لغو';

  @override
  String get save => 'ذخیره';

  @override
  String get create => 'ایجاد';

  @override
  String get add => 'افزودن';

  @override
  String get remove => 'حذف';

  @override
  String get delete => 'پاک کردن';

  @override
  String get edit => 'ویرایش';

  @override
  String get copy => 'کپی';

  @override
  String get next => 'بعدی';

  @override
  String get retry => 'تلاش مجدد';

  @override
  String get regenerate => 'بازتولید';

  @override
  String get copiedToClipboard => 'در کلیپ‌بورد کپی شد';

  @override
  String get confirm => 'تأیید';

  @override
  String get close => 'بستن';

  @override
  String get import => 'وارد کردن';

  @override
  String get rename => 'تغییر نام';

  @override
  String get upgrade => 'ارتقا';

  @override
  String get clear => 'پاک کردن';

  @override
  String error(String message) {
    return 'خطا: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'خطا: $message';
  }

  @override
  String get purchaseError => 'خطا در پردازش خرید. دوباره تلاش کنید.';

  @override
  String get restoreError => 'خطا در بازیابی خریدها. دوباره تلاش کنید.';

  @override
  String get loading => 'در حال بارگذاری...';

  @override
  String get fieldRequired => 'فیلد الزامی';

  @override
  String get addedFeedback => 'افزوده شد!';

  @override
  String get profile => 'نمایه';

  @override
  String get exitShoppingMode => 'از حالت خرید خارج شوید';

  @override
  String get exit => 'خارج شوید';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count انتخاب شده',
      one: '$count انتخاب شده',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'تخمینی';

  @override
  String get alreadyPurchased => 'قبلاً خریداری شده';

  @override
  String get clearList => 'پاک کردن لیست';

  @override
  String get clearPurchased => 'پاک کردن خریداری‌شده‌ها';

  @override
  String get share => 'اشتراک‌گذاری';

  @override
  String get shareViaCode => 'اشتراک‌گذاری با کد';

  @override
  String get importViaCode => 'وارد کردن با کد';

  @override
  String get listAssistant => 'دستیار لیست';

  @override
  String get globalAssistant => 'دستیار عمومی';

  @override
  String get becomePremium => 'پریمیوم شوید';

  @override
  String get manageSubscription => 'مدیریت اشتراک';

  @override
  String get completePurchase => 'تکمیل خرید';

  @override
  String get confirmClearList => 'همه موارد حذف شوند؟';

  @override
  String get shareListTitle => 'اشتراک‌گذاری لیست';

  @override
  String get shareThisCode => 'این کد را به اشتراک بگذارید:';

  @override
  String get validForLimitedTime => 'معتبر برای مدت محدود';

  @override
  String get importListTitle => 'وارد کردن لیست';

  @override
  String get enterCodeHint => 'کد را وارد کنید';

  @override
  String get confirmArchiveTitle => 'تکمیل خرید';

  @override
  String get confirmArchiveContent => 'این خرید تکمیل و لیست بایگانی شود؟';

  @override
  String get complete => 'تکمیل';

  @override
  String get listArchived => 'لیست با موفقیت بایگانی شد!';

  @override
  String listAdded(String listName) {
    return '$listName اضافه شد!';
  }

  @override
  String get buy => 'خرید';

  @override
  String get unmark => 'لغو علامت';

  @override
  String confirmDeleteItems(int count) {
    return '$count آیتم حذف شود؟';
  }

  @override
  String get confirmDeleteTitle => 'تأیید';

  @override
  String confirmContent(int count) {
    return '$count آیتم حذف شود؟';
  }

  @override
  String get archiveList => 'بایگانی لیست';

  @override
  String get pantryAppBar => 'انباری';

  @override
  String get generateShoppingList => 'ایجاد لیست خرید';

  @override
  String get pantryEmpty => 'انباری خالی است';

  @override
  String get pantryEmptySubtitle =>
      'محصولاتی را که می‌خواهید در خانه داشته باشید اضافه کنید';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit آیتم باید خریداری شود';
  }

  @override
  String get noItemsToBuy => 'هیچ آیتمی نیاز به خرید ندارد';

  @override
  String get newPantryList => 'خرید از انباری';

  @override
  String get newListTitle => 'لیست خرید جدید';

  @override
  String itemsWillBeAdded(int count) {
    return '$count آیتم اضافه خواهد شد';
  }

  @override
  String get listNameLabel => 'نام لیست';

  @override
  String listCreated(String name, int count) {
    return 'لیست \"$name\" با $count آیتم ایجاد شد';
  }

  @override
  String get noTracking => 'بدون پیگیری';

  @override
  String get markAsPurchased => 'علامت‌گذاری به عنوان خریداری شده';

  @override
  String editPantryItem(String name) {
    return 'ویرایش $name';
  }

  @override
  String get idealQuantity => 'مقدار ایده‌آل';

  @override
  String get currentQuantity => 'مقدار فعلی';

  @override
  String get consumed => 'مصرف شده';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name به $quantity $unit شارژ شد';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" از انباری حذف شود؟';
  }

  @override
  String pantryEditTitle(String name) {
    return 'ویرایش $name';
  }

  @override
  String get settingsAppBar => 'تنظیمات';

  @override
  String get language => 'زبان';

  @override
  String get languagePortuguese => 'پرتغالی (برزیل)';

  @override
  String get languageEnglish => 'انگلیسی';

  @override
  String get languageSystem => 'پیش‌فرض سیستم';

  @override
  String get chooseLanguage => 'انتخاب زبان';

  @override
  String get searchLanguage => 'جستجوی زبان...';

  @override
  String get currency => 'ارز';

  @override
  String get chooseCurrency => 'ارز را انتخاب کنید';

  @override
  String get searchCurrency => 'جستجوی ارز...';

  @override
  String get appearance => 'ظاهر';

  @override
  String get light => 'روشن';

  @override
  String get system => 'سیستم';

  @override
  String get dark => 'تاریک';

  @override
  String get themeColor => 'رنگ تم';

  @override
  String get dynamicColors => 'رنگ‌های پویا';

  @override
  String get dynamicColorsSubtitle =>
      'استفاده از رنگ‌ها بر اساس تصویر پس‌زمینه';

  @override
  String get dynamicColorsEnabledWarning =>
      'رنگ های پویا را غیرفعال کنید تا رنگ طرح زمینه تاثیرگذار باشد';

  @override
  String get finance => 'مالی';

  @override
  String get monthlyBudgetNav => 'بودجه ماهانه';

  @override
  String get budgetSubtitle => 'هزینه‌های ماهانه خود را پیگیری کنید';

  @override
  String get data => 'داده‌ها';

  @override
  String get backupNav => 'پشتیبان‌گیری';

  @override
  String get backupSubtitle => 'داده‌های خود را صادر یا وارد کنید';

  @override
  String get about => 'درباره';

  @override
  String get version => 'نسخه';

  @override
  String get privacy => 'حریم خصوصی';

  @override
  String get termsOfUse => 'شرایط استفاده';

  @override
  String get backupTitle => 'پشتیبان‌گیری';

  @override
  String get backupPremiumDescription =>
      'پشتیبان‌گیری و صادر کردن یک ویژگی پریمیوم است';

  @override
  String get exportData => 'صادر کردن داده‌ها';

  @override
  String get exportDataSubtitle => 'ذخیره همه لیست‌ها به صورت JSON';

  @override
  String get importData => 'وارد کردن داده‌ها';

  @override
  String get importDataSubtitle => 'بازیابی لیست‌ها از یک JSON';

  @override
  String get importJsonTitle => 'وارد کردن JSON';

  @override
  String get importJsonHint => 'JSON پشتیبان را اینجا بچسبانید...';

  @override
  String get backupExported => 'پشتیبان صادر شد!';

  @override
  String get budgetAppBar => 'بودجه ماهانه';

  @override
  String get budgetPremiumLocked => 'بودجه ماهانه سراسری یک ویژگی پریمیوم است';

  @override
  String get budgetUpgradePrompt => 'برای باز کردن قفل ارتقا دهید';

  @override
  String get noBudgetDefined => 'بودجه‌ای تنظیم نشده';

  @override
  String totalEstimated(String amount) {
    return 'مجموع تخمینی: $amount';
  }

  @override
  String get setBudgetButton => 'تنظیم بودجه';

  @override
  String get budgetLists => 'لیست‌ها';

  @override
  String get budgetValueLabel => 'مبلغ';

  @override
  String get setBudgetTitle => 'بودجه ماهانه';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent از $budget';
  }

  @override
  String get filterAll => 'همه';

  @override
  String get filterPending => 'در انتظار';

  @override
  String get filterPurchased => 'خریداری شده';

  @override
  String get sortName => 'نام';

  @override
  String get sortCategory => 'دسته‌بندی';

  @override
  String get sortDate => 'تاریخ';

  @override
  String get sortManual => 'دستی';

  @override
  String get addItem => 'افزودن آیتم';

  @override
  String get itemName => 'نام آیتم';

  @override
  String get quantityShort => 'تعداد';

  @override
  String get unit => 'واحد';

  @override
  String get category => 'دسته‌بندی';

  @override
  String get estimatedPrice => 'قیمت تخمینی';

  @override
  String get addItemPrice => 'قیمت تخمینی';

  @override
  String get editItem => 'ویرایش آیتم';

  @override
  String get quantityFull => 'مقدار';

  @override
  String get editItemPrice => 'قیمت تخمینی';

  @override
  String get addToPantry => 'افزودن به انباری';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" به انباری شما اضافه شود؟';
  }

  @override
  String get yes => 'بله';

  @override
  String get productName => 'نام محصول';

  @override
  String get idealQty => 'مقدار ایده‌آل';

  @override
  String get currentQty => 'مقدار فعلی';

  @override
  String get trackStock => 'پیگیری موجودی';

  @override
  String get trackStockActive => 'در پیشنهادات خرید نمایش داده می‌شود';

  @override
  String get trackStockInactive => 'پیشنهاد خرید ایجاد نمی‌کند';

  @override
  String get createListDialog => 'ایجاد لیست';

  @override
  String get renameListDialog => 'تغییر نام لیست';

  @override
  String get listHistory => 'تاریخچه لیست';

  @override
  String get myLists => 'لیست‌های من';

  @override
  String get viewActive => 'مشاهده فعال‌ها';

  @override
  String get viewHistory => 'مشاهده تاریخچه';

  @override
  String get noArchivedLists => 'هیچ لیست بایگانی شده‌ای وجود ندارد';

  @override
  String get noActiveLists => 'هیچ لیست فعالی وجود ندارد';

  @override
  String completedOn(String date) {
    return 'تکمیل شده در $date';
  }

  @override
  String get sharedLabel => 'اشتراک‌گذاری شده';

  @override
  String get restore => 'بازیابی';

  @override
  String get removeSharedTooltip => 'حذف';

  @override
  String get deleteListTitle => 'حذف لیست';

  @override
  String deleteListContent(String name) {
    return 'آیا مطمئن هستید که می‌خواهید \"$name\" را حذف کنید؟ همه آیتم‌ها حذف خواهند شد.';
  }

  @override
  String get removeSharedListTitle => 'حذف لیست اشتراک‌گذاری شده';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" از لیست‌های شما حذف شود؟ لیست اصلی تحت تأثیر قرار نخواهد گرفت.';
  }

  @override
  String get createNewList => 'ایجاد لیست جدید';

  @override
  String get aiAssistant => 'دستیار هوش مصنوعی';

  @override
  String get aiAssistantDescription =>
      'با دستیار هوش مصنوعی ما پیشنهادات هوشمند، دستور پخت و نکات شخصی دریافت کنید.';

  @override
  String get generalAssistant => 'دستیار عمومی';

  @override
  String get newChat => 'چت جدید';

  @override
  String get noHistory => 'سابقه چت وجود ندارد';

  @override
  String get deleteSession => 'چت را حذف کنید';

  @override
  String get deleteSessionConfirm =>
      'آیا مطمئنید که می خواهید این چت را حذف کنید؟ پیام ها برای همیشه از بین خواهند رفت.';

  @override
  String get clearHistory => 'پاک کردن تاریخچه';

  @override
  String get clearHistoryConfirm => 'همه پیام‌های این جلسه پاک شود؟';

  @override
  String get chatHint => 'پیام خود را بنویسید...';

  @override
  String get chatHintBlocked => 'قفل هوش مصنوعی را برای چت باز کنید';

  @override
  String chatError(String error) {
    return 'خطا در بارگذاری چت: $error';
  }

  @override
  String get listHelp => 'چگونه می‌توانم با لیست شما کمک کنم؟';

  @override
  String get generalHelp => 'امروز چگونه می‌توانم در خرید شما کمک کنم؟';

  @override
  String get chatSubtitle =>
      'برای پیشنهاد آیتم، دستور پخت یا نکات صرفه‌جویی بپرسید.';

  @override
  String get aiError =>
      'متأسفانه، خطایی در پردازش درخواست شما رخ داد. اتصال خود را بررسی کنید یا بعداً دوباره تلاش کنید.';

  @override
  String get aiLimitAlmostReached => 'پیام های هوش مصنوعی تقریبا تمام شده است';

  @override
  String get unlockAi => 'هوش مصنوعی نامحدود را باز کنید';

  @override
  String get aiTeaserFallback =>
      'برای باز کردن پاسخ کامل و دریافت نکات نامحدود هوش مصنوعی برای خرید خود در Premium مشترک شوید...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'برای دسترسی به ویژگی‌های\nپریمیوم وارد شوید';

  @override
  String get signInGoogle => 'ورود با گوگل';

  @override
  String get signInApple => 'ورود با اپل';

  @override
  String get continueAsGuest => 'ادامه به عنوان مهمان';

  @override
  String get onboardingWelcomeTitle => 'به KipiList خوش آمدید';

  @override
  String get onboardingWelcomeDesc =>
      'هوشمندانه ترین راه برای سازماندهی خرید و صرفه جویی در هزینه.';

  @override
  String get onboardingSetupTitle => 'تجربه خود را شخصی کنید';

  @override
  String get onboardingSetupDesc =>
      'انتخاب کنید که می‌خواهید KipiList چگونه به نظر برسد و برای شما کار کند.';

  @override
  String get onboardingLoginTitle => 'همه چیز را در ابر ذخیره کنید';

  @override
  String get onboardingLoginDesc =>
      'داده های شما در همه دستگاه های شما همگام سازی شد';

  @override
  String get onboardingShareTitle =>
      'با کسانی که دوستشان دارید به اشتراک بگذارید';

  @override
  String get onboardingShareDesc =>
      'همگام سازی لیست ها با خانواده و دوستان در زمان واقعی';

  @override
  String get onboardingPremiumTitle => 'قفل تمام ویژگی ها را باز کنید';

  @override
  String get onboardingPremiumSubtitle =>
      'از لیست خرید خود نهایت استفاده را ببرید';

  @override
  String get onboardingAnnualBadge => 'بهترین ارزش';

  @override
  String get onboardingMonthlyLabel => 'ماهانه';

  @override
  String get onboardingAnnualLabel => 'سالانه';

  @override
  String get onboardingViewAllPlans => 'مشاهده همه طرح ها';

  @override
  String get onboardingSubscribeCta => 'مشترک شوید';

  @override
  String get onboardingCancelAnytime => 'هر زمان خواستید لغو کنید. بدون تعهد';

  @override
  String get onboardingContinueAsGuest => 'به عنوان مهمان ادامه دهید';

  @override
  String get onboardingRestore => 'بازیابی کنید';

  @override
  String get onboardingRestoreDesc =>
      'آیا از قبل اشتراک دارید؟ برای بازیابی آن اینجا را ضربه بزنید.';

  @override
  String get onboardingExit => 'خارج شوید';

  @override
  String get onboardingPersonalizationTitle => 'بیایید با شما آشنا شویم';

  @override
  String get onboardingPersonalizationDesc =>
      'ما از این برای شخصی سازی پیشنهادات شما و هوشمندتر کردن خرید استفاده خواهیم کرد.';

  @override
  String get onboardingPersonalizationFoodLabel => 'غذای مورد علاقه شما چیست؟';

  @override
  String get onboardingPersonalizationFoodHint =>
      'به عنوان مثال پیتزا، سوشی، لازانیا...';

  @override
  String get onboardingPersonalizationCta => 'ادامه دهید';

  @override
  String get onboardingPersonalizationSkip => 'فعلا رد شوید';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'برای ادامه غذای مورد علاقه خود را به ما بگویید';

  @override
  String get settingsDefaultScreen => 'صفحه اصلی پیش فرض';

  @override
  String get settingsDefaultScreenSubtitle =>
      'بین لیست خرید یا چت هوش مصنوعی یکی را انتخاب کنید';

  @override
  String get settingsScreenList => 'لیست خرید';

  @override
  String get settingsScreenChat => 'چت هوش مصنوعی';

  @override
  String loginError(String error) {
    return 'خطای ورود: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'خطا در بارگیری پیشنهادها. دوباره امتحان کنید.';

  @override
  String get paywallPurchaseError => 'خرید کامل نشد. دوباره امتحان کنید.';

  @override
  String get paywallRestoreError => 'هیچ اشتراک فعالی برای بازیابی یافت نشد.';

  @override
  String paywallTrialDays(Object days) {
    return '$days روز رایگان';
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
  String get paywallTrialTitle =>
      'KipiList Pro را به مدت 7 روز رایگان امتحان کنید';

  @override
  String get paywallTrialSubtitle =>
      'هر زمان خواستید لغو کنید. امروز بدون شارژ';

  @override
  String get paywallTrialCta => 'آزمایش رایگان را شروع کنید';

  @override
  String get recipeAddToList => 'به لیست خرید اضافه کنید';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count مواد به $listName اضافه شد';
  }

  @override
  String get paywallFeaturesTitle => 'هر چیزی که نیاز دارید:';

  @override
  String get paywallFeatureUnlimitedLists => 'لیست های نامحدود';

  @override
  String get paywallFeatureSmartAI => 'هوش مصنوعی هوشمند';

  @override
  String get paywallFeatureExpenseControl => 'کنترل هزینه';

  @override
  String get paywallFeatureSharing => 'اشتراک گذاری';

  @override
  String get paywallBeforeAfterTitle => 'هوش مصنوعی قبل و بعد:';

  @override
  String get paywallLabelCommon => 'مشترک';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'برنج';

  @override
  String get paywallBeforeItem2 => 'صابون';

  @override
  String get paywallBeforeItem3 => 'گوشت';

  @override
  String get paywallBeforeItem4 => 'نان';

  @override
  String get paywallAfterItem1 => 'غلات';

  @override
  String get paywallAfterItem2 => 'تمیز کردن';

  @override
  String get paywallAfterItem3 => 'گوشت ها';

  @override
  String get paywallAfterItem4 => 'نانوایی';

  @override
  String get paywallTestimonialsTitle => 'آنچه کاربران ما می گویند:';

  @override
  String get paywallTestimonial1Name => 'آن اس.';

  @override
  String get paywallTestimonial1Text =>
      'هوش مصنوعی خرید من را در چند ثانیه سازماندهی می کند. من 20 دقیقه در هر سفر بازار صرفه جویی می کنم.';

  @override
  String get paywallTestimonial2Name => 'چارلز ام.';

  @override
  String get paywallTestimonial2Text =>
      'من هرگز یک آیتم لیست را فراموش نکردم. چت هوش مصنوعی هیجان انگیز است!';

  @override
  String get paywallSocialProof => '+2400 خانواده از آن استفاده می کنند';

  @override
  String get paywallCtaUnlock => 'باز کردن قفل PRO';

  @override
  String get paywallBestValue => 'بهترین ارزش';

  @override
  String get paywallMostPopular => 'محبوب ترین';

  @override
  String get paywallSafeCheckout => 'پرداخت مطمئن';

  @override
  String get paywallSelectPlan => 'طرح خود را انتخاب کنید:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ذخیره $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'فقط $price/ماه';
  }

  @override
  String get paywallPackageAnnual => 'برنامه سالانه';

  @override
  String get paywallPackageMonthly => 'برنامه ماهانه';

  @override
  String get paywallPackageLifetime => 'دسترسی مادام العمر';

  @override
  String get paywallCancelAnytime => 'هر زمان خواستید لغو کنید. بدون تعهد';

  @override
  String get paywallPolicy => 'سیاست حفظ حریم خصوصی';

  @override
  String get paywallTerms => 'شرایط استفاده';

  @override
  String get paywallRestore => 'بازیابی کنید';

  @override
  String get paywallHeroHeadline => 'هوش مصنوعی Kipi همیشه در کنار شماست';

  @override
  String get paywallHeroSubtitle =>
      'آیتم ها را اضافه کنید، لیست ها را سازماندهی کنید و با هوش مصنوعی در جیب خود در زمان صرفه جویی کنید';

  @override
  String get paywallBenefit1Desc =>
      '24/7 موارد را اضافه، سازماندهی و پیشنهاد می کند';

  @override
  String get paywallBenefit2Desc => 'محدودیت 3 لیستی وجود ندارد';

  @override
  String get paywallBenefit3Desc => 'ردیابی هزینه ها و لیست خانواده';

  @override
  String get paywallPackageMonthlyDesc => 'انعطاف پذیری کامل';

  @override
  String paywallCtaTrialDays(int days) {
    return 'شروع رایگان — $days روز';
  }

  @override
  String get premiumUpgrade => 'برای باز کردن قفل ارتقا دهید';

  @override
  String get itemRemoved => 'آیتم حذف شد';

  @override
  String get undo => 'واگردانی';

  @override
  String get emptyListTitle => 'لیست شما خالی است';

  @override
  String get emptyListSubtitle => 'برای شروع، آیتم اضافه کنید';

  @override
  String get noListFoundTitle => 'لیستی یافت نشد';

  @override
  String get noListFoundSubtitle => 'اولین لیست خود را ایجاد کنید';

  @override
  String get createFirstList => 'ایجاد اولین لیست';

  @override
  String get listBudgetTitle => 'بودجه لیست';

  @override
  String get budgetAmountLabel => 'مبلغ بودجه';

  @override
  String get removeBudget => 'حذف';

  @override
  String get prefUnlimitedLists => 'لیست‌های نامحدود';

  @override
  String get prefSharing => 'اشتراک‌گذاری لیست‌ها';

  @override
  String get prefFullHistory => 'تاریخچه کامل';

  @override
  String get prefExportData => 'صادر کردن داده‌ها';

  @override
  String get prefCustomThemes => 'تم‌های سفارشی';

  @override
  String get prefMonthlyBudget => 'بودجه ماهانه سراسری';

  @override
  String get prefAIAssistant => 'دستیار هوش مصنوعی شخصی';

  @override
  String get prefUnlimitedPantry => 'انباری نامحدود';

  @override
  String get prefInteractiveArtifacts => 'محصولات تعاملی هوش مصنوعی';

  @override
  String get themeGreen => 'سبز';

  @override
  String get themeBlue => 'آبی';

  @override
  String get themePurple => 'بنفش';

  @override
  String get themeRed => 'قرمز';

  @override
  String get themeOrange => 'نارنجی';

  @override
  String get themePink => 'صورتی';

  @override
  String get themeIndigo => 'نیلی';

  @override
  String get themeAmber => 'کهربایی';

  @override
  String get themeTeal => 'فیروزه‌ای';

  @override
  String get themeBrown => 'قهوه‌ای';

  @override
  String get catFruits => 'میوه‌ها';

  @override
  String get catCleaning => 'نظافت';

  @override
  String get catBeverages => 'نوشیدنی‌ها';

  @override
  String get catBakery => 'نان‌وایی';

  @override
  String get catOthers => 'سایر';

  @override
  String get unitPack => 'بسته';

  @override
  String get shareSubject => 'لیست خرید';

  @override
  String get monthlyBudgetTitle => 'بودجه ماهانه';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent از $budget';
  }

  @override
  String get deleteListConfirm => 'حذف لیست';

  @override
  String get pantryItemRemoved => 'آیتم حذف شد';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit آیتم باید خریداری شود',
      one: '$deficit آیتم باید خریداری شود',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'مجموع سبد خرید';

  @override
  String get restockLabel => 'شارژ مجدد';

  @override
  String get advancedFeatures => 'ویژگی‌های پیشرفته';

  @override
  String get selectAll => 'انتخاب همه';

  @override
  String get deselectAll => 'لغو انتخاب همه';

  @override
  String get monthlyBudgetAppBar => 'بودجه ماهانه';

  @override
  String get budgetEditTitle => 'بودجه ماهانه';

  @override
  String get budgetDashboardTitle => 'داشبورد';

  @override
  String get selectListForDashboard =>
      'یک لیست را برای مشاهده داشبورد انتخاب کنید.';

  @override
  String get spendingAnalysis => 'تحلیل هزینه';

  @override
  String get noItemsToAnalyze => 'هیچ آیتمی در لیست برای تحلیل وجود ندارد.';

  @override
  String get markItemsToSeeAnalysis =>
      'آیتم‌ها را به عنوان خریداری شده علامت‌گذاری کنید تا تحلیل را ببینید.';

  @override
  String get totalSpending => 'مجموع هزینه';

  @override
  String get spendingByCategory => 'هزینه بر اساس دسته‌بندی';

  @override
  String get achievements => 'دستاوردها';

  @override
  String get exportPdfExcel => 'صادر کردن PDF/Excel';

  @override
  String get exportPdf => 'صادر کردن به صورت PDF';

  @override
  String get exportExcel => 'صادر کردن به صورت Excel';

  @override
  String get organizingAi => 'در حال سازماندهی با هوش مصنوعی...';

  @override
  String get yesLabel => 'بله';

  @override
  String get noLabel => 'خیر';

  @override
  String get shareListText => 'لیست خرید من';

  @override
  String get emptyListAddItems =>
      'لیست شما خالی است! ابتدا آیتم اضافه کنید. ℹ️';

  @override
  String get listOrganizedMagic =>
      'لیست به صورت جادویی بر اساس دسته‌بندی سازماندهی شد! ✨';

  @override
  String get shoppingMode => 'حالت خرید';

  @override
  String get smartOrganization => 'سازماندهی هوشمند';

  @override
  String get savings => 'صرفه‌جویی';

  @override
  String get shoppingModeHeader => 'حالت خرید';

  @override
  String get shareAsText => 'ارسال آیتم‌ها به صورت متن فرمت‌شده';

  @override
  String get shareRealtime => 'همگام‌سازی هم‌زمان با دیگران';

  @override
  String get quickRecipe => 'دستور پخت سریع';

  @override
  String get quickRecipePrompt => 'دستور پخت با آیتم‌های لیست من پیشنهاد کن.';

  @override
  String get economyTips => 'نکات صرفه‌جویی';

  @override
  String get economyTipsPrompt =>
      'چگونه می‌توانم در این خرید پول صرفه‌جویی کنم؟';

  @override
  String get organizeAisles => 'سازماندهی بر اساس راهرو';

  @override
  String get organizeAislesPrompt => 'بر اساس راهروهای فروشگاه سازماندهی کن.';

  @override
  String get recipeSuggestion => 'پیشنهاد دستور پخت';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining اعتبار باقی‌مانده';
  }

  @override
  String get addAllToList => 'افزودن همه به لیست';

  @override
  String get organizeByAisles => 'سازماندهی بر اساس راهرو';

  @override
  String get voiceTranscriptionTooltip => 'تایپ صوتی (رایگان)';

  @override
  String get aiVoiceCommandTooltip => 'فرمان صوتی هوش مصنوعی (پریمیوم)';

  @override
  String get voiceCommandTitle => 'فرمان صوتی هوش مصنوعی';

  @override
  String get voiceCommandContent =>
      'به طور طبیعی صحبت کنید تا لیست خود را مدیریت کنید!\n\nنمونه‌ها:\n• \'نان، پنیر و ژامبون اضافه کن\'\n• \'مواد شوینده را حذف کن\'\n• \'تم را به آبی تغییر بده\'\n\nاین یک ویژگی انحصاری KipiList پریمیوم است.';

  @override
  String get voiceCommandPlanBtn => 'مشاهده طرح‌ها';

  @override
  String get itemsAddedSuccess => 'آیتم‌ها با موفقیت به لیست اضافه شدند!';

  @override
  String get viewList => 'مشاهده لیست';

  @override
  String get feedbackTitle => 'ارسال بازخورد';

  @override
  String get feedbackPrompt => 'چه چیزی می‌خواهید به اشتراک بگذارید؟';

  @override
  String get feedbackTypeBug => 'گزارش باگ';

  @override
  String get feedbackTypeBugHint => 'چیزی کار نمی‌کند';

  @override
  String get feedbackTypeSuggestion => 'پیشنهاد';

  @override
  String get feedbackTypeSuggestionHint => 'ایده برای بهبود برنامه';

  @override
  String get feedbackTypeTranslation => 'مشکل ترجمه';

  @override
  String get feedbackTypeTranslationHint => 'ترجمه نادرست یا نامناسب';

  @override
  String get feedbackTypeFeature => 'درخواست ویژگی';

  @override
  String get feedbackTypeFeatureHint => 'ویژگی که دوست دارید ببینید';

  @override
  String get feedbackTypeOther => 'سایر';

  @override
  String get feedbackTypeOtherHint => 'سایر انواع بازخورد';

  @override
  String get feedbackHint => 'بازخورد خود را به طور کامل توضیح دهید...';

  @override
  String get feedbackSend => 'ارسال بازخورد';

  @override
  String get feedbackSending => 'در حال ارسال...';

  @override
  String get feedbackThankYou => 'متشکرم!';

  @override
  String get feedbackThankYouMessage =>
      'بازخورد شما دریافت شد و به ما کمک می‌کند تا KipiList را برای همه بهبود دهیم.';

  @override
  String get feedbackBack => 'بازگشت';

  @override
  String feedbackError(String error) {
    return 'خطا در ارسال: $error';
  }

  @override
  String get feedbackRetry => 'تلاش مجدد';

  @override
  String get feedbackSettingsTitle => 'ارسال بازخورد';

  @override
  String get feedbackSettingsSubtitle =>
      'گزارش باگ، پیشنهاد بهبود، یا اصلاح ترجمه‌ها';

  @override
  String get aiEnergy => 'انرژی هوش مصنوعی';

  @override
  String get searchInConversation => 'جستجو در گفتگو...';

  @override
  String get noMessagesFound => 'هیچ پیامی یافت نشد';

  @override
  String get suggestedQuestions => 'سوالات پیشنهادی:';

  @override
  String get shoppingAssistant => 'دستیار خرید';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased از $total خریداری شده است';
  }

  @override
  String get estimatedCost => 'برآورد شده است';

  @override
  String get viewItems => 'مشاهده آیتم ها';

  @override
  String get noItemsInList => 'هیچ موردی در لیست وجود ندارد';

  @override
  String get longHistoryWarning =>
      'سابقه طولانی: دستیار برای عملکرد بهتر بر آخرین پیام ها تمرکز می کند.';

  @override
  String get listening => 'گوش دادن...';

  @override
  String get addDirectToList => 'مستقیما به لیست اضافه کنید';

  @override
  String get unlockFullResponse => 'پاسخ کامل را باز کنید';

  @override
  String get switchList => 'تغییر لیست';

  @override
  String get marketMode => 'حالت بازار';

  @override
  String get backToChat => 'بازگشت به چت';

  @override
  String get finishShopping => 'خرید را تمام کنید';

  @override
  String get welcomeAiAssistant => 'به دستیار هوش مصنوعی خوش آمدید';

  @override
  String get createListToStartAi =>
      'برای شروع استفاده از چت هوشمند، یک لیست خرید ایجاد کنید.';

  @override
  String get howCanIHelp => 'چگونه می توانم کمک کنم؟';

  @override
  String get chatSubtitleShort =>
      'در مورد قیمت ها، دستور العمل ها، سازماندهی بپرسید...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total خریداری شد';
  }

  @override
  String get quickReplies => 'پاسخ های سریع:';

  @override
  String get voiceProFeature =>
      'دستورات صوتی پیشرفته Pro هستند. فعال کردن دیکته اولیه...';

  @override
  String get viewPro => 'نمایش حرفه ای';

  @override
  String get errorLoadingChat => 'اوه! هنگام بارگیری گپ مشکلی پیش آمد.';

  @override
  String get errorLoadingChatSubtitle =>
      'اتصال خود را بررسی کنید یا بعداً دوباره امتحان کنید.';

  @override
  String get errorOscillation =>
      'این ممکن است به دلیل نوسانات شبکه یا در دسترس نبودن موقت رخ دهد. لطفا دوباره امتحان کنید.';

  @override
  String get activeListening => 'گوش دادن فعال';

  @override
  String get whatToDoWithItem => 'دوست دارید با این آیتم چه کار کنید؟';

  @override
  String get viewDetails => 'مشاهده جزئیات';

  @override
  String get openMenu => 'باز کردن منو';

  @override
  String get viewRecipe => 'مشاهده دستور پخت';

  @override
  String get recipeCreated => 'دستور پخت ایجاد شد!';

  @override
  String get editRecipe => 'ویرایش';

  @override
  String get deleteRecipe => 'حذف';

  @override
  String get deleteRecipeConfirm => 'این دستور پخت حذف شود؟';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'آیا از حذف \"$recipeName\" مطمئن هستید؟ این عمل قابل بازگشت نیست.';
  }

  @override
  String get ingredients => 'مواد اولیه';

  @override
  String get instructions => 'دستورالعمل‌ها';

  @override
  String get prepTime => 'زمان پخت';

  @override
  String get recipeSaved => 'دستور پخت ذخیره شد!';

  @override
  String get noRecipesSaved => 'هیچ دستور پختی ذخیره نشده است';

  @override
  String get noRecipesSavedHint =>
      'اولین دستور پخت سفارشی خود را با زدن دکمه زیر ایجاد کنید.';

  @override
  String get myRecipes => 'دستورهای پخت من';

  @override
  String get newRecipe => 'دستور پخت جدید';

  @override
  String get loadingRecipes => 'در حال بارگذاری دستورهای پخت شما...';

  @override
  String get errorLoadingRecipes => 'خطا در بارگذاری دستورهای پخت';

  @override
  String get addIngredient => 'افزودن مواد اولیه';

  @override
  String get saveRecipe => 'ذخیره';

  @override
  String get recipeName => 'نام دستور پخت';

  @override
  String get shortDescription => 'توضیح کوتاه';

  @override
  String get prepTimeMinutes => 'زمان پخت (دقیقه)';

  @override
  String get instructionsHint => 'در هر خط یک مرحله بنویسید...';

  @override
  String get addPhoto => 'افزودن عکس';

  @override
  String get imageUrlPlaceholder => 'یا نشانی تصویر را بچسبانید';

  @override
  String get tags => 'برچسب‌ها';

  @override
  String get recipeTags => 'برچسب‌های دستور پخت';

  @override
  String get suggestedTags => 'پیشنهادی';

  @override
  String get searchRecipes => 'جستجوی دستورهای پخت...';

  @override
  String get filterByTag => 'فیلتر بر اساس برچسب';

  @override
  String get allTags => 'همه';

  @override
  String get recipeDeleted => 'دستور پخت حذف شد';

  @override
  String get saveChanges => 'ذخیره تغییرات';

  @override
  String get editRecipeTitle => 'ویرایش دستور پخت';

  @override
  String get newRecipeTitle => 'دستور پخت جدید';

  @override
  String get requiredField => 'الزامی';

  @override
  String get chooseImageSource => 'انتخاب منبع تصویر';

  @override
  String get gallery => 'گالری';

  @override
  String get enterUrl => 'ورود نشانی اینترنتی';

  @override
  String get recipeImage => 'تصویر دستور پخت';

  @override
  String get removeImage => 'حذف تصویر';

  @override
  String get mealPlannerTitle => 'برنامه‌ریز غذا';

  @override
  String get mealPlannerViewMonthly => 'نمای ماهانه';

  @override
  String get mealPlannerViewWeekly => 'نمای هفتگی';

  @override
  String get mealPlannerNoMeals => 'هیچ وعده غذایی برنامه‌ریزی نشده است';

  @override
  String get mealPlannerNoMealsHint =>
      'برای افزودن وعده، روی یک روز ضربه بزنید';

  @override
  String get mealPlannerLoading => 'در حال بارگذاری برنامه غذایی...';

  @override
  String get mealPlannerError => 'خطا در بارگذاری برنامه غذایی';

  @override
  String get mealPlannerAddMeal => 'افزودن وعده غذایی';

  @override
  String get mealPlannerEditMeal => 'ویرایش وعده غذایی';

  @override
  String get mealPlannerDeleteMeal => 'حذف وعده غذایی';

  @override
  String get mealPlannerMealDeleted => 'وعده غذایی حذف شد';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count نفر',
      one: '$count نفر',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'تعداد نفرات';

  @override
  String get mealPlannerNoteLabel => 'یادداشت (اختیاری)';

  @override
  String get mealPlannerSelectRecipe => 'یک دستور پخت انتخاب کنید';

  @override
  String get mealPlannerSearchRecipes => 'جستجوی دستورهای پخت...';

  @override
  String get mealPlannerNoRecipesFound => 'دستور پختی پیدا نشد';

  @override
  String get mealPlannerNoRecipesHint =>
      'ابتدا دستورهای پخت را در برگه دستور پخت ایجاد کنید';

  @override
  String get mealPlannerSave => 'افزودن به برنامه';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count از $total وعده برنامه‌ریزی شده';
  }

  @override
  String get mealPlannerGenerateList => 'ایجاد لیست خرید';

  @override
  String get mealPlannerGenerateListConfirm =>
      'تمام مواد اولیه وعده‌های غذایی برنامه‌ریزی شده این هفته به لیست خرید شما اضافه شود؟';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count مورد به لیست شما اضافه شد!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ماده اولیه‌ای برای افزودن وجود ندارد. ابتدا چند وعده غذایی با دستور پخت برنامه‌ریزی کنید.';

  @override
  String get mealPlannerGenerateListNoList => 'ابتدا یک لیست خرید ایجاد کنید.';

  @override
  String get mealPlannerMealTypeBreakfast => 'صبحانه';

  @override
  String get mealPlannerMealTypeLunch => 'ناهار';

  @override
  String get mealPlannerMealTypeDinner => 'شام';

  @override
  String get mealPlannerMealTypeSnack => 'میان‌وعده';

  @override
  String get mealPlannerDateLabel => 'تاریخ';

  @override
  String get mealPlannerWeekEmpty => 'چیزی برای این هفته برنامه‌ریزی نشده است';

  @override
  String get mealPlannerWeekEmptyHint =>
      'برای شروع برنامه‌ریزی، روی هر روزی که می‌خواهید ضربه بزنید!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes دقیقه';
  }

  @override
  String get inviteToList => 'دعوت به لیست';

  @override
  String get shareApp => 'برنامه را به اشتراک بگذارید';

  @override
  String get shareAppDescription =>
      'دوستان را به استفاده از KipiList دعوت کنید';

  @override
  String shareReferralText(Object url) {
    return 'من از KipiList برای سازماندهی خرید خود استفاده می کنم! از طریق پیوند من بارگیری کنید و هر دو 7 روز Premium رایگان دریافت می کنیم: $url';
  }

  @override
  String get shareReferralSubject => '۷ روز KipiList Premium دریافت کنید!';

  @override
  String get gestureHint =>
      'برای انتخاب نگه دارید • برای حذف، انگشت خود را تند بکشید';

  @override
  String get catalogTitle => 'کاتالوگ';

  @override
  String get catalogMyFrequents => 'فرکانس های من';

  @override
  String get catalogSearchGlobal => 'جستجو در هر محصول ...';

  @override
  String catalogSearchInCategory(String category) {
    return 'جستجو در $category...';
  }

  @override
  String get catalogSortPopular => 'محبوب ترین';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'ملی پوشان';

  @override
  String get catalogRareSection => 'در کشور شما کمتر رایج است';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 را اضافه کنید →';
  }

  @override
  String get catalogProductNotFound => 'محصول یافت نشد، نام را تایپ کنید';

  @override
  String get catalogBrowse => 'کاتالوگ را مرور کنید';

  @override
  String get offlineBanner => 'شما آفلاین هستید';

  @override
  String get consentTitle => 'حریم خصوصی و تجزیه و تحلیل';

  @override
  String get consentBody =>
      'KipiList از Firebase Analytics برای بهبود تجربه شما استفاده می کند. داده های شما طبق خط مشی رازداری ما پردازش می شود.';

  @override
  String get consentAccept => 'قبول کنید';

  @override
  String get consentDecline => 'نه، ممنون';

  @override
  String get mealPlannerPantryAllAvailable => 'موجود است';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مورد موجود نیست',
      one: '$count مورد موجود نیست',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'تاریخ انقضا';

  @override
  String get notInformed => 'مطلع نیست';
}
