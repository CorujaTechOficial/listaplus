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
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'ترکیبیں';

  @override
  String get navLists => 'فہرستیں';

  @override
  String get navMealPlanner => 'مینو';

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
  String get next => 'اگلا';

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
  String get languagePortuguese => 'پرتگالی (برازیل)';

  @override
  String get languageEnglish => 'انگریزی';

  @override
  String get languageSystem => 'سسٹم ڈیفالٹ';

  @override
  String get chooseLanguage => 'زبان منتخب کریں۔';

  @override
  String get searchLanguage => 'زبان تلاش کریں...';

  @override
  String get currency => 'کرنسی';

  @override
  String get chooseCurrency => 'کرنسی کا انتخاب کریں۔';

  @override
  String get searchCurrency => 'کرنسی تلاش کریں...';

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
  String get dynamicColors => 'متحرک رنگ';

  @override
  String get dynamicColorsSubtitle =>
      'اپنے وال پیپر کی بنیاد پر رنگ استعمال کریں۔';

  @override
  String get dynamicColorsEnabledWarning =>
      'تھیم کے رنگ کے مؤثر ہونے کے لیے متحرک رنگوں کو غیر فعال کریں۔';

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
  String get newChat => 'نئی چیٹ';

  @override
  String get noHistory => 'چیٹ کی کوئی سرگزشت نہیں۔';

  @override
  String get deleteSession => 'چیٹ کو حذف کریں۔';

  @override
  String get deleteSessionConfirm =>
      'کیا آپ واقعی اس چیٹ کو حذف کرنا چاہتے ہیں؟ پیغامات مستقل طور پر ضائع ہو جائیں گے۔';

  @override
  String get clearHistory => 'تاریخ صاف کریں';

  @override
  String get clearHistoryConfirm => 'اس سیشن میں تمام پیغامات صاف کریں؟';

  @override
  String get chatHint => 'اپنا پیغام ٹائپ کریں...';

  @override
  String get chatHintBlocked => 'چیٹ کرنے کے لیے AI کو غیر مقفل کریں۔';

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
  String get aiLimitAlmostReached => 'تقریباً AI پیغامات سے باہر';

  @override
  String get unlockAi => 'لامحدود AI کو غیر مقفل کریں۔';

  @override
  String get aiTeaserFallback =>
      'مکمل جواب کو غیر مقفل کرنے کے لیے پریمیم کو سبسکرائب کریں اور اپنی خریداری کے لیے لامحدود AI ٹپس حاصل کریں...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

  @override
  String get kipiListTitle => 'کیپی لسٹ';

  @override
  String get loginPrompt => 'پریمیئم فیچرز کو\nکھولنے کے لیے لاگ ان کریں';

  @override
  String get signInGoogle => 'Google سے سائن ان کریں';

  @override
  String get signInApple => 'Apple سے سائن ان کریں';

  @override
  String get continueAsGuest => 'مہمان کے طور پر جاری رکھیں';

  @override
  String get onboardingWelcomeTitle => 'KipiList میں خوش آمدید';

  @override
  String get onboardingWelcomeDesc =>
      'اپنی خریداری کو منظم کرنے اور پیسے بچانے کا بہترین طریقہ۔';

  @override
  String get onboardingSetupTitle => 'اپنے تجربے کو ذاتی بنائیں';

  @override
  String get onboardingSetupDesc =>
      'منتخب کریں کہ آپ KipiList کیسا دیکھنا چاہتے ہیں اور آپ کے لیے کام کرتے ہیں۔';

  @override
  String get onboardingLoginTitle => 'ہر چیز کو بادل میں محفوظ کریں۔';

  @override
  String get onboardingLoginDesc =>
      'آپ کا ڈیٹا آپ کے تمام آلات پر مطابقت پذیر ہے۔';

  @override
  String get onboardingShareTitle => 'اپنے پیاروں کے ساتھ شئیر کریں۔';

  @override
  String get onboardingShareDesc =>
      'حقیقی وقت میں خاندان اور دوستوں کے ساتھ فہرستیں ہم آہنگ کریں۔';

  @override
  String get onboardingPremiumTitle => 'تمام خصوصیات کو غیر مقفل کریں۔';

  @override
  String get onboardingPremiumSubtitle =>
      'اپنی خریداری کی فہرستوں سے زیادہ سے زیادہ فائدہ اٹھائیں۔';

  @override
  String get onboardingAnnualBadge => 'بہترین قدر';

  @override
  String get onboardingMonthlyLabel => 'ماہانہ';

  @override
  String get onboardingAnnualLabel => 'سالانہ';

  @override
  String get onboardingViewAllPlans => 'تمام منصوبے دیکھیں';

  @override
  String get onboardingSubscribeCta => 'سبسکرائب کریں۔';

  @override
  String get onboardingCancelAnytime =>
      'کسی بھی وقت منسوخ کریں۔ کوئی عزم نہیں۔';

  @override
  String get onboardingContinueAsGuest => 'مہمان کے طور پر جاری رکھیں';

  @override
  String get onboardingRestore => 'خریداریوں کو بحال کریں۔';

  @override
  String get onboardingRestoreDesc =>
      'پہلے سے ہی سبسکرپشن ہے؟ اسے بحال کرنے کے لیے یہاں تھپتھپائیں۔';

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
  String get onboardingExit => 'باہر نکلیں۔';

  @override
  String get onboardingPersonalizationTitle => 'آئیے آپ کو جانتے ہیں۔';

  @override
  String get onboardingPersonalizationDesc =>
      'ہم اسے آپ کی تجاویز کو ذاتی نوعیت کا بنانے اور خریداری کو بہتر بنانے کے لیے استعمال کریں گے۔';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'آپ کا پسندیدہ کھانا کیا ہے؟';

  @override
  String get onboardingPersonalizationFoodHint => 'جیسے پیزا، سشی، لاسگنا...';

  @override
  String get onboardingPersonalizationCta => 'جاری رکھیں';

  @override
  String get onboardingPersonalizationSkip => 'ابھی کے لیے چھوڑ دیں۔';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'جاری رکھنے کے لیے ہمیں اپنا پسندیدہ کھانا بتائیں';

  @override
  String get settingsDefaultScreen => 'ڈیفالٹ ہوم اسکرین';

  @override
  String get settingsDefaultScreenSubtitle =>
      'خریداری کی فہرست یا AI چیٹ کے درمیان انتخاب کریں۔';

  @override
  String get settingsScreenList => 'خریداری کی فہرست';

  @override
  String get settingsScreenChat => 'اے آئی چیٹ';

  @override
  String loginError(String error) {
    return 'لاگ ان کی خرابی: $error';
  }

  @override
  String get paywallTitle => 'کیپی لسٹ پریمیم';

  @override
  String get paywallLoadingError =>
      'پیشکشیں لوڈ کرنے میں خرابی۔ دوبارہ کوشش کریں۔';

  @override
  String get paywallPurchaseError =>
      'خریداری مکمل نہیں ہو سکی۔ دوبارہ کوشش کریں۔';

  @override
  String get paywallRestoreError =>
      'بحال کرنے کے لیے کوئی فعال رکنیت نہیں ملی۔';

  @override
  String paywallTrialDays(Object days) {
    return '$days دن مفت';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ہفتہ مفت',
      one: '$count ہفتہ مفت',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ماہ مفت',
      one: '$count ماہ مفت',
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
  String get paywallFeaturesTitle => 'ہر چیز جو آپ کی ضرورت ہے:';

  @override
  String get paywallFeatureUnlimitedLists => 'لامحدود فہرستیں۔';

  @override
  String get paywallFeatureSmartAI => 'اسمارٹ AI';

  @override
  String get paywallFeatureExpenseControl => 'اخراجات کا کنٹرول';

  @override
  String get paywallFeatureSharing => 'شیئرنگ';

  @override
  String get paywallBeforeAfterTitle => 'AI پہلے اور بعد میں:';

  @override
  String get paywallLabelCommon => 'عام';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'چاول';

  @override
  String get paywallBeforeItem2 => 'صابن';

  @override
  String get paywallBeforeItem3 => 'گوشت';

  @override
  String get paywallBeforeItem4 => 'روٹی';

  @override
  String get paywallAfterItem1 => 'اناج';

  @override
  String get paywallAfterItem2 => 'صفائی';

  @override
  String get paywallAfterItem3 => 'گوشت';

  @override
  String get paywallAfterItem4 => 'بیکری';

  @override
  String get paywallTestimonialsTitle => 'ہمارے صارفین کیا کہتے ہیں:';

  @override
  String get paywallTestimonial1Name => 'این ایس۔';

  @override
  String get paywallTestimonial1Text =>
      'AI میری خریداری کو سیکنڈوں میں منظم کرتا ہے۔ میں فی مارکیٹ ٹرپ 20 منٹ بچاتا ہوں۔';

  @override
  String get paywallTestimonial2Name => 'چارلس ایم.';

  @override
  String get paywallTestimonial2Text =>
      'میں ایک فہرست آئٹم کو دوبارہ کبھی نہیں بھولا۔ AI چیٹ سنسنی خیز ہے!';

  @override
  String get paywallSocialProof => '+2,400 خاندان اسے استعمال کرتے ہیں۔';

  @override
  String get paywallCtaUnlock => 'PRO کو غیر مقفل کریں۔';

  @override
  String get paywallBestValue => 'بہترین قدر';

  @override
  String get paywallMostPopular => 'سب سے زیادہ مقبول';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'محفوظ ادائیگی';

  @override
  String get paywallSelectPlan => 'اپنا منصوبہ منتخب کریں:';

  @override
  String paywallSavePercent(Object percent) {
    return 'محفوظ کریں $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'صرف $price/مہینہ';
  }

  @override
  String get paywallPackageAnnual => 'سالانہ منصوبہ';

  @override
  String get paywallPackageMonthly => 'ماہانہ منصوبہ';

  @override
  String get paywallPackageLifetime => 'زندگی بھر رسائی';

  @override
  String get paywallCancelAnytime => 'کسی بھی وقت منسوخ کریں۔ کوئی عزم نہیں۔';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'رازداری کی پالیسی';

  @override
  String get paywallTerms => 'استعمال کی شرائط';

  @override
  String get paywallRestore => 'بحال کریں۔';

  @override
  String get paywallHeroHeadline => 'Kipi AI ہمیشہ آپ کے ساتھ';

  @override
  String get paywallHeroSubtitle =>
      'آئٹمز شامل کریں، فہرستیں ترتیب دیں اور اپنی جیب میں AI کے ساتھ وقت بچائیں۔';

  @override
  String get paywallBenefit1Desc =>
      '24/7 اشیاء کو شامل کرتا ہے، منظم کرتا ہے اور تجویز کرتا ہے۔';

  @override
  String get paywallBenefit2Desc => 'کوئی 3 فہرست کی حد نہیں۔';

  @override
  String get paywallBenefit3Desc =>
      'اخراجات سے باخبر رہنے اور خاندان کی فہرستیں۔';

  @override
  String get paywallPackageMonthlyDesc => 'مکمل لچک';

  @override
  String paywallCtaTrialDays(int days) {
    return 'مفت شروع کریں — $days دن';
  }

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
      'اپنی فہرست کو منظم کرنے کے لیے قدرتی طور پر بولیں!\n\nمثالیں:\n• \'روٹی، پنیر اور ہیم شامل کریں\'\n• \'لانڈری ڈٹرجنٹ ہٹائیں\'\n• \'تھیم کو نیلا کریں\'\n\nیہ KipiList Premium کی ایک خصوصی خصوصیت ہے۔';

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
      'آپ کی رائے موصول ہو گئی ہے اور یہ KipiList کو سب کے لیے بہتر بنانے میں ہماری مدد کرتی ہے۔';

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
  String get aiEnergy => 'AI توانائی';

  @override
  String get searchInConversation => 'گفتگو میں تلاش کریں...';

  @override
  String get noMessagesFound => 'کوئی پیغامات نہیں ملے';

  @override
  String get suggestedQuestions => 'تجویز کردہ سوالات:';

  @override
  String get shoppingAssistant => 'شاپنگ اسسٹنٹ';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total میں سے $purchased خریدی گئی۔';
  }

  @override
  String get estimatedCost => 'تخمینہ لگایا';

  @override
  String get viewItems => 'آئٹمز دیکھیں';

  @override
  String get noItemsInList => 'فہرست میں کوئی آئٹم نہیں ہے۔';

  @override
  String get longHistoryWarning =>
      'طویل تاریخ: معاون بہتر کارکردگی کے لیے تازہ ترین پیغامات پر توجہ مرکوز کرتا ہے۔';

  @override
  String get listening => 'سن رہا ہے...';

  @override
  String get addDirectToList => 'براہ راست فہرست میں شامل کریں۔';

  @override
  String get unlockFullResponse => 'مکمل جواب کو غیر مقفل کریں۔';

  @override
  String get switchList => 'فہرست سوئچ کریں۔';

  @override
  String get marketMode => 'مارکیٹ موڈ';

  @override
  String get backToChat => 'چیٹ پر واپس جائیں۔';

  @override
  String get finishShopping => 'خریداری ختم کریں۔';

  @override
  String get welcomeAiAssistant => 'AI اسسٹنٹ میں خوش آمدید';

  @override
  String get createListToStartAi =>
      'سمارٹ چیٹ کا استعمال شروع کرنے کے لیے خریداری کی فہرست بنائیں۔';

  @override
  String get howCanIHelp => 'میں کس طرح مدد کر سکتا ہوں؟';

  @override
  String get chatSubtitleShort =>
      'قیمتوں، ترکیبوں، تنظیم کے بارے میں پوچھیں...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total خریدی گئی۔';
  }

  @override
  String get quickReplies => 'فوری جوابات:';

  @override
  String get voiceProFeature =>
      'ایڈوانسڈ وائس کمانڈز پرو ہیں۔ بنیادی ڈکٹیشن کو فعال کیا جا رہا ہے...';

  @override
  String get viewPro => 'پرو دیکھیں';

  @override
  String get errorLoadingChat => 'افوہ! چیٹ لوڈ کرنے میں کچھ غلط ہو گیا۔';

  @override
  String get errorLoadingChatSubtitle =>
      'اپنا کنکشن چیک کریں یا بعد میں دوبارہ کوشش کریں۔';

  @override
  String get errorOscillation =>
      'یہ نیٹ ورک کے دوغلے پن یا عارضی عدم دستیابی کی وجہ سے ہو سکتا ہے۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get activeListening => 'فعال سننا';

  @override
  String get whatToDoWithItem => 'آپ اس آئٹم کے ساتھ کیا کرنا چاہیں گے؟';

  @override
  String get viewDetails => 'تفصیلات دیکھیں';

  @override
  String get openMenu => 'مینو کھولیں۔';

  @override
  String get viewRecipe => 'نسخہ دیکھیں';

  @override
  String get recipeCreated => 'ہدایت بنائی گئی!';

  @override
  String get editRecipe => 'ترمیم کریں۔';

  @override
  String get deleteRecipe => 'حذف کریں۔';

  @override
  String get deleteRecipeConfirm => 'اس ترکیب کو حذف کریں؟';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'کیا آپ واقعی \"$recipeName\" کو حذف کرنا چاہتے ہیں؟ اس کارروائی کو کالعدم نہیں کیا جا سکتا۔';
  }

  @override
  String get ingredients => 'اجزاء';

  @override
  String get instructions => 'ہدایات';

  @override
  String get prepTime => 'تیاری کا وقت';

  @override
  String get recipeSaved => 'نسخہ محفوظ ہو گیا!';

  @override
  String get noRecipesSaved => 'کوئی ترکیبیں محفوظ نہیں ہیں۔';

  @override
  String get noRecipesSavedHint =>
      'نیچے دیئے گئے بٹن کو تھپتھپا کر اپنی پہلی حسب ضرورت ترکیب بنائیں۔';

  @override
  String get myRecipes => 'میری ترکیبیں۔';

  @override
  String get newRecipe => 'نیا نسخہ';

  @override
  String get loadingRecipes => 'آپ کی ترکیبیں لوڈ ہو رہی ہیں...';

  @override
  String get errorLoadingRecipes => 'ترکیبیں لوڈ کرنے میں خرابی۔';

  @override
  String get addIngredient => 'اجزاء شامل کریں۔';

  @override
  String get saveRecipe => 'محفوظ کریں۔';

  @override
  String get recipeName => 'نسخہ کا نام';

  @override
  String get shortDescription => 'مختصر تفصیل';

  @override
  String get prepTimeMinutes => 'تیاری کا وقت (منٹ)';

  @override
  String get instructionsHint => 'فی لائن ایک قدم ٹائپ کریں...';

  @override
  String get addPhoto => 'تصویر شامل کریں۔';

  @override
  String get imageUrlPlaceholder => 'یا تصویر کا URL چسپاں کریں۔';

  @override
  String get tags => 'ٹیگز';

  @override
  String get recipeTags => 'ترکیب کے ٹیگز';

  @override
  String get suggestedTags => 'تجویز کردہ';

  @override
  String get searchRecipes => 'ترکیبیں تلاش کریں...';

  @override
  String get filterByTag => 'ٹیگ کے لحاظ سے فلٹر کریں۔';

  @override
  String get allTags => 'تمام';

  @override
  String get recipeDeleted => 'نسخہ حذف کر دیا گیا۔';

  @override
  String get saveChanges => 'تبدیلیاں محفوظ کریں۔';

  @override
  String get editRecipeTitle => 'ترکیب میں ترمیم کریں۔';

  @override
  String get newRecipeTitle => 'نیا نسخہ';

  @override
  String get requiredField => 'درکار ہے۔';

  @override
  String get chooseImageSource => 'تصویر کا ذریعہ منتخب کریں۔';

  @override
  String get gallery => 'گیلری';

  @override
  String get enterUrl => 'URL درج کریں۔';

  @override
  String get recipeImage => 'نسخہ کی تصویر';

  @override
  String get removeImage => 'تصویر کو ہٹا دیں۔';

  @override
  String get mealPlannerTitle => 'کھانے کا منصوبہ ساز';

  @override
  String get mealPlannerViewMonthly => 'ماہانہ نظارہ';

  @override
  String get mealPlannerViewWeekly => 'ہفتہ وار نظارہ';

  @override
  String get mealPlannerNoMeals => 'کھانے کا کوئی منصوبہ نہیں ہے۔';

  @override
  String get mealPlannerNoMealsHint =>
      'کھانا شامل کرنے کے لیے ایک دن کو تھپتھپائیں۔';

  @override
  String get mealPlannerLoading => 'کھانے کا منصوبہ لوڈ ہو رہا ہے...';

  @override
  String get mealPlannerError => 'کھانے کا منصوبہ لوڈ کرنے میں خرابی۔';

  @override
  String get mealPlannerAddMeal => 'کھانا شامل کریں۔';

  @override
  String get mealPlannerEditMeal => 'کھانے میں ترمیم کریں۔';

  @override
  String get mealPlannerDeleteMeal => 'کھانا ہٹا دیں۔';

  @override
  String get mealPlannerMealDeleted => 'کھانا ہٹا دیا گیا۔';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count سرونگ',
      one: '$count سرونگ',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'سرونگز';

  @override
  String get mealPlannerNoteLabel => 'نوٹ (اختیاری)';

  @override
  String get mealPlannerSelectRecipe => 'ایک نسخہ منتخب کریں۔';

  @override
  String get mealPlannerSearchRecipes => 'ترکیبیں تلاش کریں...';

  @override
  String get mealPlannerNoRecipesFound => 'کوئی ترکیبیں نہیں ملی';

  @override
  String get mealPlannerNoRecipesHint => 'پہلے ترکیبیں ٹیب میں ترکیبیں بنائیں';

  @override
  String get mealPlannerSave => 'پلان میں شامل کریں۔';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total میں سے $count کھانے کا منصوبہ بنایا گیا ہے۔';
  }

  @override
  String get mealPlannerGenerateList => 'خریداری کی فہرست بنائیں';

  @override
  String get mealPlannerGenerateListConfirm =>
      'اس ہفتے منصوبہ بند کھانوں کے تمام اجزاء کو اپنی خریداری کی فہرست میں شامل کریں؟';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'آپ کی فہرست میں $count اجزاء شامل کیے گئے!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'شامل کرنے کے لیے کوئی اجزاء نہیں۔ پہلے ترکیبوں کے ساتھ کچھ کھانے کا منصوبہ بنائیں۔';

  @override
  String get mealPlannerGenerateListNoList => 'پہلے خریداری کی فہرست بنائیں۔';

  @override
  String get mealPlannerMealTypeBreakfast => 'ناشتہ';

  @override
  String get mealPlannerMealTypeLunch => 'دوپہر کا کھانا';

  @override
  String get mealPlannerMealTypeDinner => 'رات کا کھانا';

  @override
  String get mealPlannerMealTypeSnack => 'ناشتہ';

  @override
  String get mealPlannerDateLabel => 'تاریخ';

  @override
  String get mealPlannerWeekEmpty =>
      'اس ہفتے کے لیے کوئی منصوبہ بندی نہیں کی گئی۔';

  @override
  String get mealPlannerWeekEmptyHint =>
      'اپنے کھانے کی منصوبہ بندی شروع کرنے کے لیے کسی بھی دن تھپتھپائیں!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes منٹ';
  }

  @override
  String get inviteToList => 'فہرست میں مدعو کریں۔';

  @override
  String get shareApp => 'ایپ شیئر کریں۔';

  @override
  String get shareAppDescription =>
      'KipiList استعمال کرنے کے لیے دوستوں کو مدعو کریں۔';

  @override
  String shareReferralText(Object url) {
    return 'میں اپنی خریداری کو منظم کرنے کے لیے KipiList کا استعمال کر رہا ہوں! میرے لنک کے ذریعے ڈاؤن لوڈ کریں اور ہم دونوں کو 7 دن کا پریمیم مفت ملتا ہے: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList Premium کے 7 دن حاصل کریں!';

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
