// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'قائمة التسوق';

  @override
  String get lists => 'القوائم';

  @override
  String get pantry => 'المخزن';

  @override
  String get cancel => 'إلغاء';

  @override
  String get save => 'حفظ';

  @override
  String get create => 'إنشاء';

  @override
  String get add => 'إضافة';

  @override
  String get remove => 'إزالة';

  @override
  String get delete => 'حذف';

  @override
  String get edit => 'تعديل';

  @override
  String get copy => 'نسخ';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get regenerate => 'إعادة إنشاء';

  @override
  String get copiedToClipboard => 'تم النسخ إلى الحافظة';

  @override
  String get confirm => 'تأكيد';

  @override
  String get close => 'إغلاق';

  @override
  String get import => 'استيراد';

  @override
  String get rename => 'إعادة تسمية';

  @override
  String get upgrade => 'ترقية';

  @override
  String get clear => 'مسح';

  @override
  String error(String message) {
    return 'خطأ: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'خطأ: $message';
  }

  @override
  String get purchaseError => 'خطأ في معالجة الشراء. حاول مرة أخرى.';

  @override
  String get restoreError => 'خطأ في استعادة المشتريات. حاول مرة أخرى.';

  @override
  String get loading => 'جارٍ التحميل...';

  @override
  String get fieldRequired => 'حقل مطلوب';

  @override
  String get addedFeedback => 'تمت الإضافة!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مختارة',
      many: '$count مختارة',
      few: '$count مختارة',
      two: '$count مختارة',
      one: '$count مختارة',
      zero: '$count مختارة',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'تقديري';

  @override
  String get alreadyPurchased => 'تم شراؤه مسبقاً';

  @override
  String get clearList => 'مسح القائمة';

  @override
  String get clearPurchased => 'مسح المشتريات';

  @override
  String get share => 'مشاركة';

  @override
  String get shareViaCode => 'مشاركة عبر الرمز';

  @override
  String get importViaCode => 'استيراد عبر الرمز';

  @override
  String get listAssistant => 'مساعد القائمة';

  @override
  String get globalAssistant => 'المساعد العام';

  @override
  String get becomePremium => 'اشتراك بريميوم';

  @override
  String get manageSubscription => 'إدارة الاشتراك';

  @override
  String get completePurchase => 'إتمام الشراء';

  @override
  String get confirmClearList => 'إزالة جميع العناصر؟';

  @override
  String get shareListTitle => 'مشاركة القائمة';

  @override
  String get shareThisCode => 'شارك هذا الرمز:';

  @override
  String get validForLimitedTime => 'صالح لفترة محدودة';

  @override
  String get importListTitle => 'استيراد قائمة';

  @override
  String get enterCodeHint => 'أدخل الرمز';

  @override
  String get confirmArchiveTitle => 'إتمام الشراء';

  @override
  String get confirmArchiveContent => 'إتمام هذا الشراء وأرشفة القائمة؟';

  @override
  String get complete => 'إتمام';

  @override
  String get listArchived => 'تم أرشفة القائمة بنجاح!';

  @override
  String listAdded(String listName) {
    return 'تمت إضافة $listName!';
  }

  @override
  String get buy => 'شراء';

  @override
  String get unmark => 'إلغاء التحديد';

  @override
  String confirmDeleteItems(int count) {
    return 'إزالة $count عنصر؟';
  }

  @override
  String get confirmDeleteTitle => 'تأكيد';

  @override
  String confirmContent(int count) {
    return 'إزالة $count عنصر؟';
  }

  @override
  String get archiveList => 'أرشفة القائمة';

  @override
  String get pantryAppBar => 'المخزن';

  @override
  String get generateShoppingList => 'إنشاء قائمة تسوق';

  @override
  String get pantryEmpty => 'المخزن فارغ';

  @override
  String get pantryEmptySubtitle =>
      'أضف المنتجات التي ترغب في الاحتفاظ بها في المنزل';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit عنصر بحاجة للشراء';
  }

  @override
  String get noItemsToBuy => 'لا توجد عناصر بحاجة للشراء';

  @override
  String get newPantryList => 'تسوق المخزن';

  @override
  String get newListTitle => 'قائمة تسوق جديدة';

  @override
  String itemsWillBeAdded(int count) {
    return 'سيتم إضافة $count عنصر';
  }

  @override
  String get listNameLabel => 'اسم القائمة';

  @override
  String listCreated(String name, int count) {
    return 'تم إنشاء القائمة \"$name\" مع $count عناصر';
  }

  @override
  String get noTracking => 'بدون تتبع';

  @override
  String get markAsPurchased => 'تحديد كمشتري';

  @override
  String editPantryItem(String name) {
    return 'تعديل $name';
  }

  @override
  String get idealQuantity => 'الكمية المثالية';

  @override
  String get currentQuantity => 'الكمية الحالية';

  @override
  String get consumed => 'تم الاستهلاك';

  @override
  String restocked(String name, int quantity, String unit) {
    return 'تم إعادة تخزين $name إلى $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'إزالة \"$name\" من المخزن؟';
  }

  @override
  String pantryEditTitle(String name) {
    return 'تعديل $name';
  }

  @override
  String get settingsAppBar => 'الإعدادات';

  @override
  String get language => 'اللغة';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'إعدادات النظام';

  @override
  String get chooseLanguage => 'اختر اللغة';

  @override
  String get searchLanguage => 'بحث عن لغة...';

  @override
  String get appearance => 'المظهر';

  @override
  String get light => 'فاتح';

  @override
  String get system => 'النظام';

  @override
  String get dark => 'داكن';

  @override
  String get themeColor => 'لون السمة';

  @override
  String get dynamicColors => 'ألوان ديناميكية';

  @override
  String get dynamicColorsSubtitle => 'استخدم ألواناً بناءً على خلفية شاشتك';

  @override
  String get finance => 'المالية';

  @override
  String get monthlyBudgetNav => 'الميزانية الشهرية';

  @override
  String get budgetSubtitle => 'تتبع إنفاقك الشهري';

  @override
  String get data => 'البيانات';

  @override
  String get backupNav => 'النسخ الاحتياطي';

  @override
  String get backupSubtitle => 'تصدير أو استيراد بياناتك';

  @override
  String get about => 'حول';

  @override
  String get version => 'الإصدار';

  @override
  String get privacy => 'الخصوصية';

  @override
  String get termsOfUse => 'شروط الاستخدام';

  @override
  String get backupTitle => 'النسخ الاحتياطي';

  @override
  String get backupPremiumDescription =>
      'النسخ الاحتياطي والتصدير ميزة بريميوم';

  @override
  String get exportData => 'تصدير البيانات';

  @override
  String get exportDataSubtitle => 'حفظ جميع القوائم بصيغة JSON';

  @override
  String get importData => 'استيراد البيانات';

  @override
  String get importDataSubtitle => 'استعادة القوائم من ملف JSON';

  @override
  String get importJsonTitle => 'استيراد JSON';

  @override
  String get importJsonHint => 'الصق JSON الاحتياطي هنا...';

  @override
  String get backupExported => 'تم تصدير النسخ الاحتياطي!';

  @override
  String get budgetAppBar => 'الميزانية الشهرية';

  @override
  String get budgetPremiumLocked => 'الميزانية الشهرية العالمية ميزة بريميوم';

  @override
  String get budgetUpgradePrompt => 'قم بالترقية لفتح الميزة';

  @override
  String get noBudgetDefined => 'لم يتم تعيين ميزانية';

  @override
  String totalEstimated(String amount) {
    return 'الإجمالي التقديري: $amount';
  }

  @override
  String get setBudgetButton => 'تعيين الميزانية';

  @override
  String get budgetLists => 'القوائم';

  @override
  String get budgetValueLabel => 'المبلغ';

  @override
  String get setBudgetTitle => 'الميزانية الشهرية';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'الكل';

  @override
  String get filterPending => 'معلقة';

  @override
  String get filterPurchased => 'تم شراؤها';

  @override
  String get sortName => 'الاسم';

  @override
  String get sortCategory => 'الفئة';

  @override
  String get sortDate => 'التاريخ';

  @override
  String get sortManual => 'يدوي';

  @override
  String get addItem => 'إضافة عنصر';

  @override
  String get itemName => 'اسم العنصر';

  @override
  String get quantityShort => 'الكمية';

  @override
  String get unit => 'الوحدة';

  @override
  String get category => 'الفئة';

  @override
  String get estimatedPrice => 'السعر التقديري';

  @override
  String get addItemPrice => 'السعر التقديري';

  @override
  String get editItem => 'تعديل العنصر';

  @override
  String get quantityFull => 'الكمية';

  @override
  String get editItemPrice => 'السعر التقديري';

  @override
  String get addToPantry => 'إضافة إلى المخزن';

  @override
  String addToPantryPrompt(String name) {
    return 'إضافة \"$name\" إلى المخزن؟';
  }

  @override
  String get yes => 'نعم';

  @override
  String get productName => 'اسم المنتج';

  @override
  String get idealQty => 'الكمية المثالية';

  @override
  String get currentQty => 'الكمية الحالية';

  @override
  String get trackStock => 'تتبع المخزون';

  @override
  String get trackStockActive => 'يظهر في اقتراحات التسوق';

  @override
  String get trackStockInactive => 'لا يُنشئ اقتراح شراء';

  @override
  String get createListDialog => 'إنشاء قائمة';

  @override
  String get renameListDialog => 'إعادة تسمية القائمة';

  @override
  String get listHistory => 'سجل القوائم';

  @override
  String get myLists => 'قوائمي';

  @override
  String get viewActive => 'عرض النشطة';

  @override
  String get viewHistory => 'عرض السجل';

  @override
  String get noArchivedLists => 'لا توجد قوائم مؤرشفة';

  @override
  String get noActiveLists => 'لا توجد قوائم نشطة';

  @override
  String completedOn(String date) {
    return 'تم الإكمال في $date';
  }

  @override
  String get sharedLabel => 'مشاركة';

  @override
  String get restore => 'استعادة';

  @override
  String get removeSharedTooltip => 'إزالة';

  @override
  String get deleteListTitle => 'حذف القائمة';

  @override
  String deleteListContent(String name) {
    return 'هل أنت متأكد من حذف \"$name\"؟ سيتم إزالة جميع العناصر.';
  }

  @override
  String get removeSharedListTitle => 'إزالة القائمة المشتركة';

  @override
  String removeSharedListContent(String name) {
    return 'إزالة \"$name\" من قوائمك؟ القائمة الأصلية لن تتأثر.';
  }

  @override
  String get createNewList => 'إنشاء قائمة جديدة';

  @override
  String get aiAssistant => 'مساعد الذكاء الاصطناعي';

  @override
  String get aiAssistantDescription =>
      'احصل على اقتراحات ذكية ووصفات ونصائح مخصصة مع مساعد الذكاء الاصطناعي.';

  @override
  String get generalAssistant => 'المساعد العام';

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
  String get clearHistory => 'مسح السجل';

  @override
  String get clearHistoryConfirm => 'مسح جميع الرسائل في هذه الجلسة؟';

  @override
  String get chatHint => 'اكتب رسالتك...';

  @override
  String chatError(String error) {
    return 'خطأ في تحميل الدردشة: $error';
  }

  @override
  String get listHelp => 'كيف يمكنني المساعدة في قائمتك؟';

  @override
  String get generalHelp => 'كيف يمكنني المساعدة في تسوقك اليوم؟';

  @override
  String get chatSubtitle => 'اطلب اقتراحات عناصر أو وصفات أو نصائح للتوفير.';

  @override
  String get aiError =>
      'عذراً، حدث خطأ أثناء معالجة طلبك. تحقق من اتصالك أو حاول مرة أخرى لاحقاً.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'سجل الدخول لفتح\nالميزات المميزة';

  @override
  String get signInGoogle => 'تسجيل الدخول باستخدام Google';

  @override
  String get signInApple => 'تسجيل الدخول باستخدام Apple';

  @override
  String get continueAsGuest => 'المتابعة كضيف';

  @override
  String loginError(String error) {
    return 'خطأ في تسجيل الدخول: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus بريميوم';

  @override
  String get premiumUpgrade => 'قم بالترقية لفتح الميزة';

  @override
  String get itemRemoved => 'تمت إزالة العنصر';

  @override
  String get undo => 'تراجع';

  @override
  String get emptyListTitle => 'قائمتك فارغة';

  @override
  String get emptyListSubtitle => 'أضف عناصر للبدء';

  @override
  String get noListFoundTitle => 'لم يتم العثور على قوائم';

  @override
  String get noListFoundSubtitle => 'أنشئ قائمتك الأولى للبدء';

  @override
  String get createFirstList => 'إنشاء أول قائمة';

  @override
  String get listBudgetTitle => 'ميزانية القائمة';

  @override
  String get budgetAmountLabel => 'مبلغ الميزانية';

  @override
  String get removeBudget => 'إزالة';

  @override
  String get prefUnlimitedLists => 'قوائم غير محدودة';

  @override
  String get prefSharing => 'مشاركة القوائم';

  @override
  String get prefFullHistory => 'السجل الكامل';

  @override
  String get prefExportData => 'تصدير البيانات';

  @override
  String get prefCustomThemes => 'سمات مخصصة';

  @override
  String get prefMonthlyBudget => 'الميزانية الشهرية العالمية';

  @override
  String get prefAIAssistant => 'مساعد ذكاء اصطناعي شخصي';

  @override
  String get prefUnlimitedPantry => 'مخزن غير محدود';

  @override
  String get prefInteractiveArtifacts => 'أعمال تفاعلية للذكاء الاصطناعي';

  @override
  String get themeGreen => 'أخضر';

  @override
  String get themeBlue => 'أزرق';

  @override
  String get themePurple => 'أرجواني';

  @override
  String get themeRed => 'أحمر';

  @override
  String get themeOrange => 'برتقالي';

  @override
  String get themePink => 'وردي';

  @override
  String get themeIndigo => 'نيلي';

  @override
  String get themeAmber => 'عنبر';

  @override
  String get themeTeal => 'شرشيري';

  @override
  String get themeBrown => 'بني';

  @override
  String get catFruits => 'فواكه';

  @override
  String get catCleaning => 'تنظيف';

  @override
  String get catBeverages => 'مشروبات';

  @override
  String get catBakery => 'مخبوزات';

  @override
  String get catOthers => 'أخرى';

  @override
  String get unitPack => 'حزمة';

  @override
  String get shareSubject => 'قائمة التسوق';

  @override
  String get monthlyBudgetTitle => 'الميزانية الشهرية';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'حذف القائمة';

  @override
  String get pantryItemRemoved => 'تمت إزالة العنصر';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit عنصر بحاجة للشراء',
      many: '$deficit عنصراً بحاجة للشراء',
      few: '$deficit عناصر بحاجة للشراء',
      two: '$deficit عنصر بحاجة للشراء',
      one: '$deficit عنصر بحاجة للشراء',
      zero: '$deficit عنصر بحاجة للشراء',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'إجمالي السلة';

  @override
  String get restockLabel => 'إعادة تخزين';

  @override
  String get advancedFeatures => 'ميزات متقدمة';

  @override
  String get selectAll => 'تحديد الكل';

  @override
  String get deselectAll => 'إلغاء تحديد الكل';

  @override
  String get monthlyBudgetAppBar => 'الميزانية الشهرية';

  @override
  String get budgetEditTitle => 'الميزانية الشهرية';

  @override
  String get budgetDashboardTitle => 'لوحة المعلومات';

  @override
  String get selectListForDashboard => 'اختر قائمة لعرض لوحة المعلومات.';

  @override
  String get spendingAnalysis => 'تحليل الإنفاق';

  @override
  String get noItemsToAnalyze => 'لا توجد عناصر في القائمة لتحليلها.';

  @override
  String get markItemsToSeeAnalysis => 'حدد العناصر كمشتريات لرؤية التحليل.';

  @override
  String get totalSpending => 'إجمالي الإنفاق';

  @override
  String get spendingByCategory => 'الإنفاق حسب الفئة';

  @override
  String get achievements => 'الإنجازات';

  @override
  String get exportPdfExcel => 'تصدير PDF/Excel';

  @override
  String get exportPdf => 'تصدير كـ PDF';

  @override
  String get exportExcel => 'تصدير كـ Excel';

  @override
  String get organizingAi => 'جارٍ التنظيم بالذكاء الاصطناعي...';

  @override
  String get yesLabel => 'نعم';

  @override
  String get noLabel => 'لا';

  @override
  String get shareListText => 'قائمة التسوق الخاصة بي';

  @override
  String get emptyListAddItems => 'قائمتك فارغة! أضف عناصر أولاً. ℹ️';

  @override
  String get listOrganizedMagic => 'تم تنظيم القائمة بسحر حسب الفئات! ✨';

  @override
  String get shoppingMode => 'وضع التسوق';

  @override
  String get smartOrganization => 'تنظيم ذكي';

  @override
  String get savings => 'توفير';

  @override
  String get shoppingModeHeader => 'وضع التسوق';

  @override
  String get shareAsText => 'إرسال العناصر كنص منسق';

  @override
  String get shareRealtime => 'مزامنة فورية مع الآخرين';

  @override
  String get quickRecipe => 'وصفة سريعة';

  @override
  String get quickRecipePrompt => 'اقترح وصفات باستخدام عناصر من قائمتي.';

  @override
  String get economyTips => 'نصائح للتوفير';

  @override
  String get economyTipsPrompt => 'كيف يمكنني توفير المال في هذه المشتريات؟';

  @override
  String get organizeAisles => 'تنظيم حسب الممرات';

  @override
  String get organizeAislesPrompt => 'نظم حسب ممرات المتجر.';

  @override
  String get recipeSuggestion => 'اقتراح وصفة';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining رصيد متبقي';
  }

  @override
  String get addAllToList => 'إضافة الكل إلى القائمة';

  @override
  String get organizeByAisles => 'تنظيم حسب الممرات';

  @override
  String get voiceTranscriptionTooltip => 'إدخال صوتي (مجاني)';

  @override
  String get aiVoiceCommandTooltip => 'أمر صوتي بالذكاء الاصطناعي (بريميوم)';

  @override
  String get voiceCommandTitle => 'أمر صوتي بالذكاء الاصطناعي';

  @override
  String get voiceCommandContent =>
      'تحدث بشكل طبيعي لإدارة قائمتك!\n\nأمثلة:\n• \'أضف خبزاً وجبناً ولحماً\'\n• \'أزل مسحوق الغسيل\'\n• \'غيّر السمة إلى الأزرق\'\n\nهذه ميزة حصرية من Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'عرض الخطط';

  @override
  String get itemsAddedSuccess => 'تمت إضافة العناصر إلى القائمة بنجاح!';

  @override
  String get viewList => 'عرض القائمة';

  @override
  String get feedbackTitle => 'إرسال ملاحظات';

  @override
  String get feedbackPrompt => 'ما الذي تود مشاركته؟';

  @override
  String get feedbackTypeBug => 'الإبلاغ عن خطأ';

  @override
  String get feedbackTypeBugHint => 'شيء لا يعمل';

  @override
  String get feedbackTypeSuggestion => 'اقتراح';

  @override
  String get feedbackTypeSuggestionHint => 'فكرة لتحسين التطبيق';

  @override
  String get feedbackTypeTranslation => 'مشكلة ترجمة';

  @override
  String get feedbackTypeTranslationHint => 'ترجمة غير صحيحة أو غير مناسبة';

  @override
  String get feedbackTypeFeature => 'طلب ميزة';

  @override
  String get feedbackTypeFeatureHint => 'ميزة ترغب في رؤيتها';

  @override
  String get feedbackTypeOther => 'أخرى';

  @override
  String get feedbackTypeOtherHint => 'نوع آخر من الملاحظات';

  @override
  String get feedbackHint => 'صف ملاحظاتك بالتفصيل...';

  @override
  String get feedbackSend => 'إرسال الملاحظات';

  @override
  String get feedbackSending => 'جارٍ الإرسال...';

  @override
  String get feedbackThankYou => 'شكراً لك!';

  @override
  String get feedbackThankYouMessage =>
      'تم استلام ملاحظاتك، وهي تساعدنا في تحسين Lista Plus للجميع.';

  @override
  String get feedbackBack => 'رجوع';

  @override
  String feedbackError(String error) {
    return 'خطأ في الإرسال: $error';
  }

  @override
  String get feedbackRetry => 'حاول مرة أخرى';

  @override
  String get feedbackSettingsTitle => 'إرسال ملاحظات';

  @override
  String get feedbackSettingsSubtitle =>
      'الإبلاغ عن أخطاء، اقتراح تحسينات، أو إصلاح ترجمات';

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
  String get openMenu => 'فتح القائمة';

  @override
  String get viewRecipe => 'عرض الوصفة';

  @override
  String get recipeCreated => 'تم إنشاء الوصفة!';

  @override
  String get editRecipe => 'تعديل';

  @override
  String get deleteRecipe => 'حذف';

  @override
  String get deleteRecipeConfirm => 'حذف هذه الوصفة؟';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'هل أنت متأكد أنك تريد حذف \"$recipeName\"؟ لا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String get ingredients => 'المكونات';

  @override
  String get instructions => 'التعليمات';

  @override
  String get prepTime => 'وقت التحضير';

  @override
  String get recipeSaved => 'تم حفظ الوصفة!';

  @override
  String get noRecipesSaved => 'لا توجد وصفات محفوظة';

  @override
  String get noRecipesSavedHint =>
      'أنشئ أول وصفة مخصصة لك بالضغط على الزر أدناه.';

  @override
  String get myRecipes => 'وصفاتي';

  @override
  String get newRecipe => 'وصفة جديدة';

  @override
  String get loadingRecipes => 'جارٍ تحميل وصفاتك...';

  @override
  String get errorLoadingRecipes => 'خطأ في تحميل الوصفات';

  @override
  String get addIngredient => 'إضافة مكون';

  @override
  String get saveRecipe => 'حفظ';

  @override
  String get recipeName => 'اسم الوصفة';

  @override
  String get shortDescription => 'وصف قصير';

  @override
  String get prepTimeMinutes => 'وقت التحضير (بالدقائق)';

  @override
  String get instructionsHint => 'اكتب خطوة واحدة في كل سطر...';

  @override
  String get addPhoto => 'إضافة صورة';

  @override
  String get imageUrlPlaceholder => 'أو الصق رابط صورة';

  @override
  String get tags => 'وسوم';

  @override
  String get recipeTags => 'وسوم الوصفة';

  @override
  String get suggestedTags => 'مقترح';

  @override
  String get searchRecipes => 'بحث عن وصفات...';

  @override
  String get filterByTag => 'تصفية حسب الوسم';

  @override
  String get allTags => 'الكل';

  @override
  String get recipeDeleted => 'تم حذف الوصفة';

  @override
  String get saveChanges => 'حفظ التغييرات';

  @override
  String get editRecipeTitle => 'تعديل الوصفة';

  @override
  String get newRecipeTitle => 'وصفة جديدة';

  @override
  String get requiredField => 'مطلوب';

  @override
  String get chooseImageSource => 'اختر مصدر الصورة';

  @override
  String get gallery => 'معرض الصور';

  @override
  String get enterUrl => 'أدخل الرابط (URL)';

  @override
  String get recipeImage => 'صورة الوصفة';

  @override
  String get removeImage => 'إزالة الصورة';

  @override
  String get mealPlannerTitle => 'مخطط الوجبات';

  @override
  String get mealPlannerViewMonthly => 'عرض شهري';

  @override
  String get mealPlannerViewWeekly => 'عرض أسبوعي';

  @override
  String get mealPlannerNoMeals => 'لا توجد وجبات مخططة';

  @override
  String get mealPlannerNoMealsHint => 'اضغط على يوم لإضافة وجبة';

  @override
  String get mealPlannerLoading => 'جارٍ تحميل خطة الوجبات...';

  @override
  String get mealPlannerError => 'خطأ في تحميل خطة الوجبات';

  @override
  String get mealPlannerAddMeal => 'إضافة وجبة';

  @override
  String get mealPlannerEditMeal => 'تعديل الوجبة';

  @override
  String get mealPlannerDeleteMeal => 'إزالة الوجبة';

  @override
  String get mealPlannerMealDeleted => 'تم إزالة الوجبة';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count حصة',
      many: '$count حصة',
      few: '$count حصص',
      two: '$count حصة',
      one: '$count حصة',
      zero: '$count حصة',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'عدد الحصص';

  @override
  String get mealPlannerNoteLabel => 'ملاحظة (اختياري)';

  @override
  String get mealPlannerSelectRecipe => 'اختر وصفة';

  @override
  String get mealPlannerSearchRecipes => 'بحث عن وصفات...';

  @override
  String get mealPlannerNoRecipesFound => 'لم يتم العثور على وصفات';

  @override
  String get mealPlannerNoRecipesHint => 'أنشئ وصفات في تبويب الوصفات أولاً';

  @override
  String get mealPlannerSave => 'إضافة إلى الخطة';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'تم تخطيط $count من أصل $total وجبات';
  }

  @override
  String get mealPlannerGenerateList => 'إنشاء قائمة تسوق';

  @override
  String get mealPlannerGenerateListConfirm =>
      'هل تريد إضافة جميع المكونات من الوجبات المخطط لها هذا الأسبوع إلى قائمة التسوق الخاصة بك؟';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'تم إضافة $count من المكونات إلى قائمتك!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'لا توجد مكونات لإضافتها. خطط لبعض الوجبات مع وصفات أولاً.';

  @override
  String get mealPlannerGenerateListNoList => 'أنشئ قائمة تسوق أولاً.';

  @override
  String get mealPlannerMealTypeBreakfast => 'إفطار';

  @override
  String get mealPlannerMealTypeLunch => 'غداء';

  @override
  String get mealPlannerMealTypeDinner => 'عشاء';

  @override
  String get mealPlannerMealTypeSnack => 'وجبة خفيفة';

  @override
  String get mealPlannerDateLabel => 'التاريخ';

  @override
  String get mealPlannerWeekEmpty => 'لا يوجد شيء مخطط لهذا الأسبوع';

  @override
  String get mealPlannerWeekEmptyHint => 'اضغط على أي يوم لبدء تخطيط وجباتك!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes دقيقة';
  }
}
