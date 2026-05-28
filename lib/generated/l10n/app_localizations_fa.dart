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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'پیش‌فرض سیستم';

  @override
  String get chooseLanguage => 'انتخاب زبان';

  @override
  String get searchLanguage => 'جستجوی زبان...';

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
      'Disable dynamic colors for the theme color to take effect';

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
  String get newChat => 'New Chat';

  @override
  String get noHistory => 'No chat history';

  @override
  String get deleteSession => 'Delete Chat';

  @override
  String get deleteSessionConfirm =>
      'Are you sure you want to delete this chat? The messages will be permanently lost.';

  @override
  String get clearHistory => 'پاک کردن تاریخچه';

  @override
  String get clearHistoryConfirm => 'همه پیام‌های این جلسه پاک شود؟';

  @override
  String get chatHint => 'پیام خود را بنویسید...';

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
  String get listaPlusTitle => 'لیستا پلاس';

  @override
  String get loginPrompt => 'برای دسترسی به ویژگی‌های\nپریمیوم وارد شوید';

  @override
  String get signInGoogle => 'ورود با گوگل';

  @override
  String get signInApple => 'ورود با اپل';

  @override
  String get continueAsGuest => 'ادامه به عنوان مهمان';

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
    return 'خطای ورود: $error';
  }

  @override
  String get paywallTitle => 'لیستا پلاس پریمیوم';

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
      'به طور طبیعی صحبت کنید تا لیست خود را مدیریت کنید!\n\nنمونه‌ها:\n• \'نان، پنیر و ژامبون اضافه کن\'\n• \'مواد شوینده را حذف کن\'\n• \'تم را به آبی تغییر بده\'\n\nاین یک ویژگی انحصاری لیستا پلاس پریمیوم است.';

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
      'بازخورد شما دریافت شد و به ما کمک می‌کند تا Lista Plus را برای همه بهبود دهیم.';

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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'پیش‌فرض سیستم';

  @override
  String get chooseLanguage => 'انتخاب زبان';

  @override
  String get searchLanguage => 'جستجوی زبان...';

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
  String get clearHistory => 'پاک کردن تاریخچه';

  @override
  String get clearHistoryConfirm => 'همه پیام‌های این جلسه پاک شود؟';

  @override
  String get chatHint => 'پیام خود را بنویسید...';

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
  String get listaPlusTitle => 'لیستا پلاس';

  @override
  String get loginPrompt => 'برای دسترسی به ویژگی‌های\nپریمیوم وارد شوید';

  @override
  String get signInGoogle => 'ورود با گوگل';

  @override
  String get signInApple => 'ورود با اپل';

  @override
  String get continueAsGuest => 'ادامه به عنوان مهمان';

  @override
  String loginError(String error) {
    return 'خطای ورود: $error';
  }

  @override
  String get paywallTitle => 'لیستا پلاس پریمیوم';

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
      'به طور طبیعی صحبت کنید تا لیست خود را مدیریت کنید!\n\nنمونه‌ها:\n• \'نان، پنیر و ژامبون اضافه کن\'\n• \'مواد شوینده را حذف کن\'\n• \'تم را به آبی تغییر بده\'\n\nاین یک ویژگی انحصاری لیستا پلاس پریمیوم است.';

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
      'بازخورد شما دریافت شد و به ما کمک می‌کند تا لیستا پلاس را برای همه بهبود دهیم.';

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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'پیش‌فرض سیستم';

  @override
  String get chooseLanguage => 'انتخاب زبان';

  @override
  String get searchLanguage => 'جستجوی زبان...';

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
  String get clearHistory => 'پاک کردن تاریخچه';

  @override
  String get clearHistoryConfirm => 'همه پیام‌های این جلسه پاک شود؟';

  @override
  String get chatHint => 'پیام خود را بنویسید...';

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
  String get listaPlusTitle => 'لیستا پلاس';

  @override
  String get loginPrompt => 'برای دسترسی به ویژگی‌های\nپریمیوم وارد شوید';

  @override
  String get signInGoogle => 'ورود با گوگل';

  @override
  String get signInApple => 'ورود با اپل';

  @override
  String get continueAsGuest => 'ادامه به عنوان مهمان';

  @override
  String loginError(String error) {
    return 'خطای ورود: $error';
  }

  @override
  String get paywallTitle => 'لیستا پلاس پریمیوم';

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
      'به طور طبیعی صحبت کنید تا لیست خود را مدیریت کنید!\n\nنمونه‌ها:\n• \'نان، پنیر و ژامبون اضافه کن\'\n• \'مواد شوینده را حذف کن\'\n• \'تم را به آبی تغییر بده\'\n\nاین یک ویژگی انحصاری لیستا پلاس پریمیوم است.';

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
      'بازخورد شما دریافت شد و به ما کمک می‌کند تا لیستا پلاس را برای همه بهبود دهیم.';

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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'پیش‌فرض سیستم';

  @override
  String get chooseLanguage => 'انتخاب زبان';

  @override
  String get searchLanguage => 'جستجوی زبان...';

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
  String get clearHistory => 'پاک کردن تاریخچه';

  @override
  String get clearHistoryConfirm => 'همه پیام‌های این جلسه پاک شود؟';

  @override
  String get chatHint => 'پیام خود را بنویسید...';

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
  String get listaPlusTitle => 'لیستا پلاس';

  @override
  String get loginPrompt => 'برای دسترسی به ویژگی‌های\nپریمیوم وارد شوید';

  @override
  String get signInGoogle => 'ورود با گوگل';

  @override
  String get signInApple => 'ورود با اپل';

  @override
  String get continueAsGuest => 'ادامه به عنوان مهمان';

  @override
  String loginError(String error) {
    return 'خطای ورود: $error';
  }

  @override
  String get paywallTitle => 'لیستا پلاس پریمیوم';

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
      'به طور طبیعی صحبت کنید تا لیست خود را مدیریت کنید!\n\nنمونه‌ها:\n• \'نان، پنیر و ژامبون اضافه کن\'\n• \'مواد شوینده را حذف کن\'\n• \'تم را به آبی تغییر بده\'\n\nاین یک ویژگی انحصاری لیستا پلاس پریمیوم است.';

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
      'بازخورد شما دریافت شد و به ما کمک می‌کند تا لیستا پلاس را برای همه بهبود دهیم.';

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
}
