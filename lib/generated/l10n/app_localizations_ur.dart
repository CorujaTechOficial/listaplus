// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'خریداری کی فہرست';

  @override
  String get lists => 'فہرستیں';

  @override
  String get pantry => 'پینٹری';

  @override
  String get cancel => 'منسوخ کریں';

  @override
  String get save => 'محفوظ کریں';

  @override
  String get create => 'بنائیں';

  @override
  String get add => 'شامل کریں';

  @override
  String get remove => 'ہٹائیں';

  @override
  String get delete => 'حذف کریں';

  @override
  String get edit => 'ترمیم کریں';

  @override
  String get copy => 'نقل کریں';

  @override
  String get retry => 'دوبارہ کوشش کریں';

  @override
  String get regenerate => 'دوبارہ تخلیق کریں';

  @override
  String get copiedToClipboard => 'کلپ بورڈ پر کاپی ہو گیا';

  @override
  String get confirm => 'تصدیق کریں';

  @override
  String get close => 'بند کریں';

  @override
  String get import => 'درآمد کریں';

  @override
  String get rename => 'نام تبدیل کریں';

  @override
  String get upgrade => 'اپ گریڈ کریں';

  @override
  String get clear => 'صاف کریں';

  @override
  String error(String message) {
    return 'خرابی: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'خرابی: $message';
  }

  @override
  String get purchaseError =>
      'خریداری پر کارروائی میں خرابی۔ دوبارہ کوشش کریں۔';

  @override
  String get restoreError => 'خریداریوں کی بحالی میں خرابی۔ دوبارہ کوشش کریں۔';

  @override
  String get loading => 'لوڈ ہو رہا ہے...';

  @override
  String get fieldRequired => 'مطلوبہ فیلڈ';

  @override
  String get addedFeedback => 'شامل ہو گیا!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count منتخب',
      one: '$count منتخب',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'متوقع';

  @override
  String get alreadyPurchased => 'پہلے ہی خریدا جا چکا';

  @override
  String get clearList => 'فہرست صاف کریں';

  @override
  String get clearPurchased => 'خریدہ شدہ صاف کریں';

  @override
  String get share => 'شیئر کریں';

  @override
  String get shareViaCode => 'کوڈ کے ذریعے شیئر کریں';

  @override
  String get importViaCode => 'کوڈ کے ذریعے درآمد کریں';

  @override
  String get listAssistant => 'فہرست مددگار';

  @override
  String get globalAssistant => 'عالمی مددگار';

  @override
  String get becomePremium => 'پریمیئم بنیں';

  @override
  String get manageSubscription => 'رکنیت کا نظم کریں';

  @override
  String get completePurchase => 'خریداری مکمل کریں';

  @override
  String get confirmClearList => 'تمام اشیاء ہٹا دیں؟';

  @override
  String get shareListTitle => 'فہرست شیئر کریں';

  @override
  String get shareThisCode => 'یہ کوڈ شیئر کریں:';

  @override
  String get validForLimitedTime => 'محدود وقت کے لیے کارآمد';

  @override
  String get importListTitle => 'فہرست درآمد کریں';

  @override
  String get enterCodeHint => 'کوڈ درج کریں';

  @override
  String get confirmArchiveTitle => 'خریداری مکمل کریں';

  @override
  String get confirmArchiveContent =>
      'اس خریداری کو مکمل کر کے فہرست کو آرکائیو کریں؟';

  @override
  String get complete => 'مکمل';

  @override
  String get listArchived => 'فہرست کامیابی سے آرکائیو ہو گئی!';

  @override
  String listAdded(String listName) {
    return '$listName شامل ہو گئی!';
  }

  @override
  String get buy => 'خریدیں';

  @override
  String get unmark => 'نشان ہٹائیں';

  @override
  String confirmDeleteItems(int count) {
    return '$count شے(یں) ہٹا دیں؟';
  }

  @override
  String get confirmDeleteTitle => 'تصدیق کریں';

  @override
  String confirmContent(int count) {
    return '$count شے(یں) ہٹا دیں؟';
  }

  @override
  String get archiveList => 'فہرست آرکائیو کریں';

  @override
  String get pantryAppBar => 'پینٹری';

  @override
  String get generateShoppingList => 'خریداری کی فہرست بنائیں';

  @override
  String get pantryEmpty => 'خالی پینٹری';

  @override
  String get pantryEmptySubtitle =>
      'وہ مصنوعات شامل کریں جو آپ گھر پر رکھنا چاہتے ہیں';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit شے(یں) خریدنے کی ضرورت ہے';
  }

  @override
  String get noItemsToBuy => 'خریدنے کے لیے کوئی شے نہیں';

  @override
  String get newPantryList => 'پینٹری خریداری';

  @override
  String get newListTitle => 'نئی خریداری کی فہرست';

  @override
  String itemsWillBeAdded(int count) {
    return '$count شے(یں) شامل کی جائیں گی';
  }

  @override
  String get listNameLabel => 'فہرست کا نام';

  @override
  String listCreated(String name, int count) {
    return 'فہرست \"$name\" $count اشیاء کے ساتھ بنائی گئی';
  }

  @override
  String get noTracking => 'کوئی ٹریکنگ نہیں';

  @override
  String get markAsPurchased => 'خریدا ہوا نشان زد کریں';

  @override
  String editPantryItem(String name) {
    return '$name میں ترمیم کریں';
  }

  @override
  String get idealQuantity => 'موزوں مقدار';

  @override
  String get currentQuantity => 'موجودہ مقدار';

  @override
  String get consumed => 'استعمال شدہ';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name کو $quantity $unit تک دوبارہ بھر دیا گیا';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'پینٹری سے \"$name\" کو ہٹا دیں؟';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name میں ترمیم کریں';
  }

  @override
  String get settingsAppBar => 'ترتیبات';

  @override
  String get language => 'زبان';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'سسٹم ڈیفالٹ';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get appearance => 'ظاہری شکل';

  @override
  String get light => 'روشن';

  @override
  String get system => 'سسٹم';

  @override
  String get dark => 'اندھیرا';

  @override
  String get themeColor => 'تھیم کا رنگ';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get finance => 'مالیات';

  @override
  String get monthlyBudgetNav => 'ماہانہ بجٹ';

  @override
  String get budgetSubtitle => 'اپنے ماہانہ اخراجات کا پتہ لگائیں';

  @override
  String get data => 'ڈیٹا';

  @override
  String get backupNav => 'بیک اپ';

  @override
  String get backupSubtitle => 'اپنے ڈیٹا کو برآمد یا درآمد کریں';

  @override
  String get about => 'متعلق';

  @override
  String get version => 'ورژن';

  @override
  String get privacy => 'رازداری';

  @override
  String get termsOfUse => 'استعمال کی شرائط';

  @override
  String get backupTitle => 'بیک اپ';

  @override
  String get backupPremiumDescription => 'بیک اپ اور برآمد ایک پریمیئم فیچر ہے';

  @override
  String get exportData => 'ڈیٹا برآمد کریں';

  @override
  String get exportDataSubtitle => 'تمام فہرستوں کو JSON کے طور پر محفوظ کریں';

  @override
  String get importData => 'ڈیٹا درآمد کریں';

  @override
  String get importDataSubtitle => 'JSON سے فہرستیں بحال کریں';

  @override
  String get importJsonTitle => 'JSON درآمد کریں';

  @override
  String get importJsonHint => 'بیک اپ JSON یہاں چسپاں کریں...';

  @override
  String get backupExported => 'بیک اپ برآمد ہو گیا!';

  @override
  String get budgetAppBar => 'ماہانہ بجٹ';

  @override
  String get budgetPremiumLocked => 'عالمی ماہانہ بجٹ پریمیئم ہے';

  @override
  String get budgetUpgradePrompt => 'کھولنے کے لیے اپ گریڈ کریں';

  @override
  String get noBudgetDefined => 'کوئی بجٹ مقرر نہیں';

  @override
  String totalEstimated(String amount) {
    return 'کل متوقع: $amount';
  }

  @override
  String get setBudgetButton => 'بجٹ مقرر کریں';

  @override
  String get budgetLists => 'فہرستیں';

  @override
  String get budgetValueLabel => 'رقم';

  @override
  String get setBudgetTitle => 'ماہانہ بجٹ';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'تمام';

  @override
  String get filterPending => 'زیر التواء';

  @override
  String get filterPurchased => 'خریدہ شدہ';

  @override
  String get sortName => 'نام';

  @override
  String get sortCategory => 'زمرہ';

  @override
  String get sortDate => 'تاریخ';

  @override
  String get sortManual => 'دستی';

  @override
  String get addItem => 'شے شامل کریں';

  @override
  String get itemName => 'شے کا نام';

  @override
  String get quantityShort => 'مقدار';

  @override
  String get unit => 'اکائی';

  @override
  String get category => 'زمرہ';

  @override
  String get estimatedPrice => 'متوقع قیمت';

  @override
  String get addItemPrice => 'متوقع قیمت';

  @override
  String get editItem => 'شے میں ترمیم کریں';

  @override
  String get quantityFull => 'مقدار';

  @override
  String get editItemPrice => 'متوقع قیمت';

  @override
  String get addToPantry => 'پینٹری میں شامل کریں';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" کو اپنی پینٹری میں شامل کریں؟';
  }

  @override
  String get yes => 'ہاں';

  @override
  String get productName => 'مصنوعات کا نام';

  @override
  String get idealQty => 'موزوں مقدار';

  @override
  String get currentQty => 'موجودہ مقدار';

  @override
  String get trackStock => 'اسٹاک کا پتہ لگائیں';

  @override
  String get trackStockActive => 'خریداری کی تجاویز میں ظاہر ہوتا ہے';

  @override
  String get trackStockInactive => 'خریداری کی تجویز پیدا نہیں کرتا';

  @override
  String get createListDialog => 'فہرست بنائیں';

  @override
  String get renameListDialog => 'فہرست کا نام تبدیل کریں';

  @override
  String get listHistory => 'فہرست کی تاریخ';

  @override
  String get myLists => 'میری فہرستیں';

  @override
  String get viewActive => 'فعال دیکھیں';

  @override
  String get viewHistory => 'تاریخ دیکھیں';

  @override
  String get noArchivedLists => 'کوئی آرکائیو شدہ فہرست نہیں';

  @override
  String get noActiveLists => 'کوئی فعال فہرست نہیں';

  @override
  String completedOn(String date) {
    return '$date کو مکمل ہوا';
  }

  @override
  String get sharedLabel => 'شیئر کردہ';

  @override
  String get restore => 'بحال کریں';

  @override
  String get removeSharedTooltip => 'ہٹائیں';

  @override
  String get deleteListTitle => 'فہرست حذف کریں';

  @override
  String deleteListContent(String name) {
    return 'کیا آپ واقعی \"$name\" کو حذف کرنا چاہتے ہیں؟ تمام اشیاء ہٹا دی جائیں گی۔';
  }

  @override
  String get removeSharedListTitle => 'شیئر کردہ فہرست ہٹائیں';

  @override
  String removeSharedListContent(String name) {
    return 'کیا \"$name\" کو اپنی فہرستوں سے ہٹا دیں؟ اصل فہرست متاثر نہیں ہوگی۔';
  }

  @override
  String get createNewList => 'نئی فہرست بنائیں';

  @override
  String get aiAssistant => 'AI مددگار';

  @override
  String get aiAssistantDescription =>
      'ہمارے AI مددگار کے ساتھ ہوشیار تجاویز، ترکیبیں اور ذاتی مشورے حاصل کریں۔';

  @override
  String get generalAssistant => 'عام مددگار';

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
  String get clearHistory => 'تاریخ صاف کریں';

  @override
  String get clearHistoryConfirm => 'اس سیشن میں تمام پیغامات صاف کریں؟';

  @override
  String get chatHint => 'اپنا پیغام ٹائپ کریں...';

  @override
  String chatError(String error) {
    return 'چیٹ لوڈ کرنے میں خرابی: $error';
  }

  @override
  String get listHelp => 'آپ کی فہرست میں کیسے مدد کر سکتا ہوں؟';

  @override
  String get generalHelp => 'آج آپ کی خریداری میں کیسے مدد کر سکتا ہوں؟';

  @override
  String get chatSubtitle =>
      'اشیاء کی تجاویز، ترکیبیں یا بچت کے مشورے طلب کریں۔';

  @override
  String get aiError =>
      'معاف کیجیے، آپ کی درخواست پر کارروائی میں خرابی ہوئی۔ اپنا کنکشن چیک کریں یا بعد میں دوبارہ کوشش کریں۔';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'پریمیئم فیچرز کو\nکھولنے کے لیے لاگ ان کریں';

  @override
  String get signInGoogle => 'Google سے سائن ان کریں';

  @override
  String get signInApple => 'Apple سے سائن ان کریں';

  @override
  String get continueAsGuest => 'مہمان کے طور پر جاری رکھیں';

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
    return 'لاگ ان کی خرابی: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'کھولنے کے لیے اپ گریڈ کریں';

  @override
  String get itemRemoved => 'شے ہٹا دی گئی';

  @override
  String get undo => 'واپس لیں';

  @override
  String get emptyListTitle => 'آپ کی فہرست خالی ہے';

  @override
  String get emptyListSubtitle => 'شروع کرنے کے لیے اشیاء شامل کریں';

  @override
  String get noListFoundTitle => 'کوئی فہرست نہیں ملی';

  @override
  String get noListFoundSubtitle => 'شروع کرنے کے لیے اپنی پہلی فہرست بنائیں';

  @override
  String get createFirstList => 'پہلی فہرست بنائیں';

  @override
  String get listBudgetTitle => 'فہرست کا بجٹ';

  @override
  String get budgetAmountLabel => 'بجٹ کی رقم';

  @override
  String get removeBudget => 'ہٹائیں';

  @override
  String get prefUnlimitedLists => 'لا محدود فہرستیں';

  @override
  String get prefSharing => 'فہرستیں شیئر کریں';

  @override
  String get prefFullHistory => 'مکمل تاریخ';

  @override
  String get prefExportData => 'ڈیٹا برآمد کریں';

  @override
  String get prefCustomThemes => 'اپنی مرضی کے تھیمز';

  @override
  String get prefMonthlyBudget => 'عالمی ماہانہ بجٹ';

  @override
  String get prefAIAssistant => 'ذاتی AI مددگار';

  @override
  String get prefUnlimitedPantry => 'لا محدود پینٹری';

  @override
  String get prefInteractiveArtifacts => 'انٹرایکٹو AI آرٹیفیکٹس';

  @override
  String get themeGreen => 'سبز';

  @override
  String get themeBlue => 'نیلا';

  @override
  String get themePurple => 'جامنی';

  @override
  String get themeRed => 'سرخ';

  @override
  String get themeOrange => 'نارنجی';

  @override
  String get themePink => 'گلابی';

  @override
  String get themeIndigo => 'نیلا';

  @override
  String get themeAmber => 'عنبری';

  @override
  String get themeTeal => 'ٹیل';

  @override
  String get themeBrown => 'بھورا';

  @override
  String get catFruits => 'پھل';

  @override
  String get catCleaning => 'صفائی';

  @override
  String get catBeverages => 'مشروبات';

  @override
  String get catBakery => 'بیکری';

  @override
  String get catOthers => 'دیگر';

  @override
  String get unitPack => 'پیک';

  @override
  String get shareSubject => 'خریداری کی فہرست';

  @override
  String get monthlyBudgetTitle => 'ماہانہ بجٹ';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'فہرست حذف کریں';

  @override
  String get pantryItemRemoved => 'شے ہٹا دی گئی';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit اشیاء خریدنے کی ضرورت ہیں',
      one: '$deficit شے خریدنے کی ضرورت ہے',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'کارٹ کل';

  @override
  String get restockLabel => 'دوبارہ بھریں';

  @override
  String get advancedFeatures => 'جدید فیچرز';

  @override
  String get selectAll => 'سبھی منتخب کریں';

  @override
  String get deselectAll => 'سبھی کا انتخاب ختم کریں';

  @override
  String get monthlyBudgetAppBar => 'ماہانہ بجٹ';

  @override
  String get budgetEditTitle => 'ماہانہ بجٹ';

  @override
  String get budgetDashboardTitle => 'ڈیش بورڈ';

  @override
  String get selectListForDashboard =>
      'ڈیش بورڈ دیکھنے کے لیے ایک فہرست منتخب کریں۔';

  @override
  String get spendingAnalysis => 'اخراجات کا تجزیہ';

  @override
  String get noItemsToAnalyze => 'فہرست میں تجزیہ کرنے کے لیے کوئی اشیاء نہیں۔';

  @override
  String get markItemsToSeeAnalysis =>
      'تجزیہ دیکھنے کے لیے اشیاء کو خریدا ہوا نشان زد کریں۔';

  @override
  String get totalSpending => 'کل اخراجات';

  @override
  String get spendingByCategory => 'زمرہ کے اعتبار سے اخراجات';

  @override
  String get achievements => 'کامیابیاں';

  @override
  String get exportPdfExcel => 'PDF/Excel برآمد کریں';

  @override
  String get exportPdf => 'PDF کے طور پر برآمد کریں';

  @override
  String get exportExcel => 'Excel کے طور پر برآمد کریں';

  @override
  String get organizingAi => 'AI کے ساتھ منظم کیا جا رہا ہے...';

  @override
  String get yesLabel => 'ہاں';

  @override
  String get noLabel => 'نہیں';

  @override
  String get shareListText => 'میری خریداری کی فہرست';

  @override
  String get emptyListAddItems =>
      'آپ کی فہرست خالی ہے! پہلے اشیاء شامل کریں۔ ℹ️';

  @override
  String get listOrganizedMagic =>
      'فہرست جادوئی طور پر زمروں کے مطابق منظم ہو گئی! ✨';

  @override
  String get shoppingMode => 'خریداری کا موڈ';

  @override
  String get smartOrganization => 'سمارٹ آرگنائزیشن';

  @override
  String get savings => 'بچت';

  @override
  String get shoppingModeHeader => 'خریداری کا موڈ';

  @override
  String get shareAsText => 'اشیاء کو فارمیٹ شدہ متن کے طور پر بھیجیں';

  @override
  String get shareRealtime => 'دوسرے لوگوں کے ساتھ ریئل ٹائم ہم آہنگی';

  @override
  String get quickRecipe => 'فوری ترکیب';

  @override
  String get quickRecipePrompt =>
      'میری فہرست میں موجود اشیاء کے ساتھ ترکیبیں تجویز کریں۔';

  @override
  String get economyTips => 'معیشت کے مشورے';

  @override
  String get economyTipsPrompt => 'میں اس خریداری پر پیسے کیسے بچا سکتا ہوں؟';

  @override
  String get organizeAisles => 'گلیوں کے مطابق منظم کریں';

  @override
  String get organizeAislesPrompt => 'مارکیٹ کی گلیوں کے مطابق منظم کریں۔';

  @override
  String get recipeSuggestion => 'ترکیب کی تجویز';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining کریڈٹ باقی';
  }

  @override
  String get addAllToList => 'سبھی فہرست میں شامل کریں';

  @override
  String get organizeByAisles => 'گلیوں کے مطابق منظم کریں';

  @override
  String get voiceTranscriptionTooltip => 'صوتی تحریر (مفت)';

  @override
  String get aiVoiceCommandTooltip => 'AI صوتی کمانڈ (پریمیئم)';

  @override
  String get voiceCommandTitle => 'AI صوتی کمانڈ';

  @override
  String get voiceCommandContent =>
      'اپنی فہرست کو منظم کرنے کے لیے قدرتی طور پر بولیں!\n\nمثالیں:\n• \'روٹی، پنیر اور ہیم شامل کریں\'\n• \'لانڈری ڈٹرجنٹ ہٹائیں\'\n• \'تھیم کو نیلا کریں\'\n\nیہ Lista Plus Premium کی ایک خصوصی خصوصیت ہے۔';

  @override
  String get voiceCommandPlanBtn => 'منصوبے دیکھیں';

  @override
  String get itemsAddedSuccess => 'اشیاء کامیابی سے فہرست میں شامل ہو گئیں!';

  @override
  String get viewList => 'فہرست دیکھیں';

  @override
  String get feedbackTitle => 'رائے بھیجیں';

  @override
  String get feedbackPrompt => 'آپ کیا شیئر کرنا چاہیں گے؟';

  @override
  String get feedbackTypeBug => 'بگ رپورٹ کریں';

  @override
  String get feedbackTypeBugHint => 'کچھ کام نہیں کر رہا';

  @override
  String get feedbackTypeSuggestion => 'تجویز';

  @override
  String get feedbackTypeSuggestionHint => 'ایپ کو بہتر بنانے کا خیال';

  @override
  String get feedbackTypeTranslation => 'ترجمے کا مسئلہ';

  @override
  String get feedbackTypeTranslationHint => 'غلط یا غیر فطری ترجمہ';

  @override
  String get feedbackTypeFeature => 'فیچر کی درخواست';

  @override
  String get feedbackTypeFeatureHint => 'فیچر جو آپ دیکھنا چاہیں گے';

  @override
  String get feedbackTypeOther => 'دیگر';

  @override
  String get feedbackTypeOtherHint => 'رائے کی دوسری قسم';

  @override
  String get feedbackHint => 'اپنی رائے تفصیل سے بیان کریں...';

  @override
  String get feedbackSend => 'رائے بھیجیں';

  @override
  String get feedbackSending => 'بھیجا جا رہا ہے...';

  @override
  String get feedbackThankYou => 'شکریہ!';

  @override
  String get feedbackThankYouMessage =>
      'آپ کی رائے موصول ہو گئی ہے اور یہ Lista Plus کو سب کے لیے بہتر بنانے میں ہماری مدد کرتی ہے۔';

  @override
  String get feedbackBack => 'واپس';

  @override
  String feedbackError(String error) {
    return 'بھیجنے میں خرابی: $error';
  }

  @override
  String get feedbackRetry => 'دوبارہ کوشش کریں';

  @override
  String get feedbackSettingsTitle => 'رائے بھیجیں';

  @override
  String get feedbackSettingsSubtitle =>
      'بگ رپورٹ کریں، بہتری کی تجاویز دیں، یا ترجمے درست کریں';

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
