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
  String get navChat => 'محادثة';

  @override
  String get navRecipes => 'وصفات';

  @override
  String get navLists => 'القوائم';

  @override
  String get navMealPlanner => 'قائمة طعام';

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
  String get next => 'التالي';

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
  String get profile => 'حساب تعريفي';

  @override
  String get exitShoppingMode => 'الخروج من وضع التسوق';

  @override
  String get exit => 'مخرج';

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
  String get scanProductTitle => 'مسح المنتج';

  @override
  String get positionBarcodeCenter => 'ضع الباركود في المركز';

  @override
  String get product => 'منتج';

  @override
  String get settingsAppBar => 'الإعدادات';

  @override
  String get language => 'اللغة';

  @override
  String get languagePortuguese => 'البرتغالية (البرازيل)';

  @override
  String get languageEnglish => 'إنجليزي';

  @override
  String get languageSystem => 'إعدادات النظام';

  @override
  String get chooseLanguage => 'اختر اللغة';

  @override
  String get searchLanguage => 'بحث عن لغة...';

  @override
  String get currency => 'عملة';

  @override
  String get chooseCurrency => 'حدد العملة';

  @override
  String get searchCurrency => 'بحث عن العملة...';

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
  String get dynamicColorsEnabledWarning =>
      'قم بتعطيل الألوان الديناميكية حتى يصبح لون السمة ساري المفعول';

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
  String get myAchievements => 'إنجازاتي';

  @override
  String get itemsPurchased => 'العناصر التي تم شراؤها';

  @override
  String get totalSavings => 'إجمالي المدخرات';

  @override
  String get currentStreak => 'الخط الحالي';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أيام',
      one: '$count يوم',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'شارات مقفلة';

  @override
  String get badgeBeginner => 'مبتدئ';

  @override
  String get badgeOrganized => 'منظمة';

  @override
  String get badgeSavingMaster => 'إنقاذ ماستر';

  @override
  String get badgeSuperPlanner => 'مخطط سوبر';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased من $total العناصر';
  }

  @override
  String progressBudget(String amount) {
    return 'الميزانية: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'الإجمالي: $amount';
  }

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
  String get newChat => 'دردشة جديدة';

  @override
  String get noHistory => 'لا يوجد سجل للدردشة';

  @override
  String get deleteSession => 'حذف الدردشة';

  @override
  String get deleteSessionConfirm =>
      'هل أنت متأكد أنك تريد حذف هذه الدردشة؟ سيتم فقدان الرسائل إلى الأبد.';

  @override
  String get clearHistory => 'مسح السجل';

  @override
  String get clearHistoryConfirm => 'مسح جميع الرسائل في هذه الجلسة؟';

  @override
  String get chatHint => 'اكتب رسالتك...';

  @override
  String get chatHintBlocked => 'فتح الذكاء الاصطناعي للدردشة';

  @override
  String chatError(String error) {
    return 'خطأ في تحميل الدردشة: $error';
  }

  @override
  String get aiAssistantTitle => 'مساعد الذكاء الاصطناعي';

  @override
  String get closeSheet => 'يغلق';

  @override
  String get scanBarcodeTitle => 'مسح الباركود';

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
  String get aiLimitAlmostReached => 'لقد نفدت رسائل الذكاء الاصطناعي تقريبًا';

  @override
  String get unlockAi => 'فتح الذكاء الاصطناعي غير المحدود';

  @override
  String get aiTeaserFallback =>
      'اشترك في Premium للحصول على الاستجابة الكاملة والحصول على نصائح غير محدودة بتقنية الذكاء الاصطناعي لتسوقك...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining تبقى إجراءات الذكاء الاصطناعي هذا الشهر — قم بالترقية لعدد غير محدود';
  }

  @override
  String get aiUsageExhausted =>
      'تم الوصول إلى حد الذكاء الاصطناعي الشهري. الترقية إلى Pro لعدد غير محدود →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'سجل الدخول لفتح\nالميزات المميزة';

  @override
  String get signInGoogle => 'تسجيل الدخول باستخدام Google';

  @override
  String get signInApple => 'تسجيل الدخول باستخدام Apple';

  @override
  String get continueAsGuest => 'المتابعة كضيف';

  @override
  String get onboardingWelcomeTitle => 'مرحبًا بك في KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'أذكى طريقة لتنظيم التسوق الخاص بك وتوفير المال.';

  @override
  String get onboardingSetupTitle => 'إضفاء الطابع الشخصي على تجربتك';

  @override
  String get onboardingSetupDesc =>
      'اختر كيف تريد أن يبدو KipiList ويعمل من أجلك.';

  @override
  String get onboardingLoginTitle => 'احفظ كل شيء في السحابة';

  @override
  String get onboardingLoginDesc => 'تمت مزامنة بياناتك عبر جميع أجهزتك';

  @override
  String get onboardingShareTitle => 'شارك مع من تحبهم';

  @override
  String get onboardingShareDesc =>
      'مزامنة القوائم مع العائلة والأصدقاء في الوقت الحقيقي';

  @override
  String get onboardingPremiumTitle => 'فتح كافة الميزات';

  @override
  String get onboardingPremiumSubtitle =>
      'احصل على أقصى استفادة من قوائم التسوق الخاصة بك';

  @override
  String get onboardingAnnualBadge => 'أفضل قيمة';

  @override
  String get onboardingMonthlyLabel => 'شهريا';

  @override
  String get onboardingAnnualLabel => 'سنوي';

  @override
  String get onboardingViewAllPlans => 'عرض جميع الخطط';

  @override
  String get onboardingSubscribeCta => 'يشترك';

  @override
  String get onboardingCancelAnytime => 'إلغاء في أي وقت. لا التزام.';

  @override
  String get onboardingContinueAsGuest => 'استمر كضيف';

  @override
  String get onboardingRestore => 'يعيد';

  @override
  String get onboardingRestoreDesc =>
      'هل لديك اشتراك بالفعل؟ انقر هنا لاستعادته.';

  @override
  String get onboardingMaybeLater => 'ربما في وقت لاحق';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'مرحبًا $name، نظم تسوقك بالطريقة الصحيحة.';
  }

  @override
  String get onboardingSlide1Title => 'قوائم التسوق الذكية';

  @override
  String get onboardingSlide1Body =>
      'إنشاء ومشاركة القوائم على الفور. يضيف Kipi العناصر تلقائيًا بناءً على عاداتك.';

  @override
  String get onboardingSlide2Title => 'تعرف على كيبي';

  @override
  String get onboardingSlide2Body =>
      'اسأل عن أي شيء - أنشئ قوائم، وابحث عن الوصفات، وتتبع مخزنك، وخطط لأسبوعك.';

  @override
  String get onboardingSlide3Title => 'تخطيط المؤن والوجبات';

  @override
  String get onboardingSlide3Body =>
      'تتبع ما لديك، وخطط للوجبات، وأنشئ قوائم التسوق تلقائيًا.';

  @override
  String get onboardingExit => 'مخرج';

  @override
  String get onboardingPersonalizationTitle => 'دعونا نتعرف عليك';

  @override
  String get onboardingPersonalizationDesc =>
      'سنستخدم هذا لتخصيص اقتراحاتك وجعل التسوق أكثر ذكاءً.';

  @override
  String get onboardingPersonalizationFoodLabel => 'ما هو طعامك المفضل؟';

  @override
  String get onboardingPersonalizationFoodHint =>
      'على سبيل المثال بيتزا، سوشي، لازانيا...';

  @override
  String get onboardingPersonalizationCta => 'يكمل';

  @override
  String get onboardingPersonalizationSkip => 'تخطي الآن';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'أخبرنا بطعامك المفضل لنستمر';

  @override
  String get settingsDefaultScreen => 'الشاشة الرئيسية الافتراضية';

  @override
  String get settingsDefaultScreenSubtitle =>
      'اختر بين قائمة التسوق أو دردشة الذكاء الاصطناعي';

  @override
  String get settingsScreenList => 'قائمة التسوق';

  @override
  String get settingsScreenChat => 'دردشة الذكاء الاصطناعي';

  @override
  String loginError(String error) {
    return 'خطأ في تسجيل الدخول: $error';
  }

  @override
  String get paywallTitle => 'KipiList بريميوم';

  @override
  String get paywallLoadingError => 'حدث خطأ أثناء تحميل العروض. حاول ثانية.';

  @override
  String get paywallPurchaseError => 'لا يمكن إكمال عملية الشراء. حاول ثانية.';

  @override
  String get paywallRestoreError => 'لم يتم العثور على اشتراك نشط لاستعادته.';

  @override
  String paywallTrialDays(Object days) {
    return '$days أيام مجانية';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أسابيع مجانية',
      one: '$count أسبوع مجاني',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شهر مجاني',
      one: '$count شهر مجاني',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'جرب KipiList Pro مجانًا لمدة 7 أيام';

  @override
  String get paywallTrialSubtitle => 'إلغاء في أي وقت. لا تهمة اليوم.';

  @override
  String get paywallTrialCta => 'ابدأ النسخة التجريبية المجانية';

  @override
  String get recipeAddToList => 'أضف إلى قائمة التسوق';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return 'تمت إضافة مكونات $count إلى $listName';
  }

  @override
  String get noListSelected => 'لم يتم تحديد أي قائمة. افتح القائمة أولاً.';

  @override
  String get paywallFeaturesTitle => 'كل ما تحتاجه:';

  @override
  String get paywallFeatureDescAssistant =>
      'يقوم الذكاء الاصطناعي بتنظيم قائمتك تلقائيًا';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'إنشاء العديد من القوائم التي تحتاج إليها';

  @override
  String get paywallFeatureDescSharing => 'تسوق معًا في الوقت الفعلي';

  @override
  String get paywallFeatureDescPantry => 'تتبع ما لديك في المنزل';

  @override
  String get paywallFeatureDescBudget => 'البقاء على الميزانية كل شهر';

  @override
  String get paywallFeatureUnlimitedLists => 'قوائم غير محدودة';

  @override
  String get paywallFeatureSmartAI => 'الذكاء الاصطناعي الذكي';

  @override
  String get paywallFeatureExpenseControl => 'مراقبة النفقات';

  @override
  String get paywallFeatureSharing => 'مشاركة';

  @override
  String get paywallBeforeAfterTitle => 'الذكاء الاصطناعي قبل وبعد:';

  @override
  String get paywallLabelCommon => 'شائع';

  @override
  String get paywallLabelPro => 'كيبيليست برو';

  @override
  String get paywallBeforeItem1 => 'أرز';

  @override
  String get paywallBeforeItem2 => 'صابون';

  @override
  String get paywallBeforeItem3 => 'لحمة';

  @override
  String get paywallBeforeItem4 => 'خبز';

  @override
  String get paywallAfterItem1 => 'الحبوب';

  @override
  String get paywallAfterItem2 => 'تنظيف';

  @override
  String get paywallAfterItem3 => 'اللحوم';

  @override
  String get paywallAfterItem4 => 'مخبز';

  @override
  String get paywallTestimonialsTitle => 'ماذا يقول مستخدمونا:';

  @override
  String get paywallTestimonial1Name => 'آن س.';

  @override
  String get paywallTestimonial1Text =>
      'يقوم الذكاء الاصطناعي بتنظيم التسوق في ثوانٍ. أقوم بتوفير 20 دقيقة لكل رحلة إلى السوق.';

  @override
  String get paywallTestimonial2Name => 'تشارلز م.';

  @override
  String get paywallTestimonial2Text =>
      'لم أنس أبدًا عنصر القائمة مرة أخرى. دردشة الذكاء الاصطناعي مثيرة!';

  @override
  String get paywallSocialProof => '+2400 عائلة تستخدمه';

  @override
  String get paywallCtaUnlock => 'إفتح PRO';

  @override
  String get paywallBestValue => 'أفضل قيمة';

  @override
  String get paywallMostPopular => 'الأكثر شعبية';

  @override
  String get paywallProLabel => 'للمحترفين';

  @override
  String get paywallSafeCheckout => 'الدفع الآمن';

  @override
  String get paywallSelectPlan => 'اختر خطتك:';

  @override
  String paywallSavePercent(Object percent) {
    return 'حفظ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'فقط $price/شهر';
  }

  @override
  String get paywallPackageAnnual => 'الخطة السنوية';

  @override
  String get paywallPackageMonthly => 'الخطة الشهرية';

  @override
  String get paywallPackageLifetime => 'الوصول مدى الحياة';

  @override
  String get paywallCancelAnytime => 'إلغاء في أي وقت. لا التزام.';

  @override
  String paywallTrialInCard(int days) {
    return 'أول $days أيام مجانية';
  }

  @override
  String get paywallSecuredByStore =>
      'مؤمن بواسطة Google Play · قم بالإلغاء في أي وقت';

  @override
  String get paywallPolicy => 'سياسة الخصوصية';

  @override
  String get paywallTerms => 'شروط الاستخدام';

  @override
  String get paywallRestore => 'يعيد';

  @override
  String get paywallHeroHeadline => 'Kipi AI دائما بجانبك';

  @override
  String get paywallHeroSubtitle =>
      'قم بإضافة العناصر وتنظيم القوائم وتوفير الوقت باستخدام الذكاء الاصطناعي في جيبك';

  @override
  String get paywallBenefit1Desc => 'يضيف وينظم ويقترح العناصر 24/7';

  @override
  String get paywallBenefit2Desc => 'لا يوجد حد 3 القائمة';

  @override
  String get paywallBenefit3Desc => 'تتبع النفقات وقوائم الأسرة';

  @override
  String get paywallPackageMonthlyDesc => 'المرونة الكاملة';

  @override
  String paywallCtaTrialDays(int days) {
    return 'ابدأ مجانًا — $days يومًا';
  }

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
      'تحدث بشكل طبيعي لإدارة قائمتك!\n\nأمثلة:\n• \'أضف خبزاً وجبناً ولحماً\'\n• \'أزل مسحوق الغسيل\'\n• \'غيّر السمة إلى الأزرق\'\n\nهذه ميزة حصرية من KipiList Premium.';

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
      'تم استلام ملاحظاتك، وهي تساعدنا في تحسين KipiList للجميع.';

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
  String get aiEnergy => 'طاقة الذكاء الاصطناعي';

  @override
  String get searchInConversation => 'البحث في المحادثة...';

  @override
  String get noMessagesFound => 'لم يتم العثور على رسائل';

  @override
  String get suggestedQuestions => 'الأسئلة المقترحة:';

  @override
  String get shoppingAssistant => 'مساعد التسوق';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'تم شراء $purchased من $total';
  }

  @override
  String get estimatedCost => 'مُقدَّر';

  @override
  String get viewItems => 'عرض العناصر';

  @override
  String get noItemsInList => 'لا توجد عناصر في القائمة';

  @override
  String get longHistoryWarning =>
      'التاريخ الطويل: يركز المساعد على أحدث الرسائل للحصول على أداء أفضل.';

  @override
  String get listening => 'جاري الاستماع...';

  @override
  String get addDirectToList => 'أضف مباشرة إلى القائمة';

  @override
  String get unlockFullResponse => 'فتح الاستجابة الكاملة';

  @override
  String get switchList => 'قائمة التبديل';

  @override
  String get marketMode => 'وضع السوق';

  @override
  String get backToChat => 'العودة إلى الدردشة';

  @override
  String get finishShopping => 'إنهاء التسوق';

  @override
  String get welcomeAiAssistant => 'مرحبًا بك في مساعد الذكاء الاصطناعي';

  @override
  String get createListToStartAi =>
      'أنشئ قائمة تسوق للبدء في استخدام الدردشة الذكية.';

  @override
  String get howCanIHelp => 'كيف يمكنني المساعدة؟';

  @override
  String get chatSubtitleShort => 'اسأل عن الأسعار، الوصفات، التنظيم...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return 'تم شراء $purchased/$total';
  }

  @override
  String get quickReplies => 'ردود سريعة:';

  @override
  String get voiceProFeature =>
      'الأوامر الصوتية المتقدمة هي Pro. جارٍ تمكين الإملاء الأساسي...';

  @override
  String get viewPro => 'عرض برو';

  @override
  String get errorLoadingChat => 'أُووبس! حدث خطأ ما أثناء تحميل الدردشة.';

  @override
  String get errorLoadingChatSubtitle =>
      'تحقق من اتصالك أو حاول مرة أخرى لاحقًا.';

  @override
  String get errorOscillation =>
      'قد يحدث هذا بسبب تذبذبات الشبكة أو عدم التوفر المؤقت. يرجى المحاولة مرة أخرى.';

  @override
  String get activeListening => 'الاستماع النشط';

  @override
  String get whatToDoWithItem => 'ماذا تريد أن تفعل بهذا البند؟';

  @override
  String get viewDetails => 'عرض التفاصيل';

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

  @override
  String get inviteToList => 'دعوة إلى القائمة';

  @override
  String get shareApp => 'مشاركة التطبيق';

  @override
  String get shareAppDescription => 'قم بدعوة الأصدقاء لاستخدام KipiList';

  @override
  String shareReferralText(String url) {
    return 'أنا أستخدم KipiList لتنظيم التسوق! قم بالتنزيل عبر الرابط الخاص بي وسيحصل كلانا على 7 أيام من الاشتراك المميز مجانًا: $url';
  }

  @override
  String get shareReferralSubject => 'احصل على 7 أيام من KipiList Premium!';

  @override
  String get gestureHint => 'اضغط مع الاستمرار لتحديد • اسحب للإزالة';

  @override
  String get catalogTitle => 'كتالوج';

  @override
  String get catalogMyFrequents => 'تردداتي';

  @override
  String get catalogSearchGlobal => 'ابحث عن أي منتج...';

  @override
  String catalogSearchInCategory(String category) {
    return 'البحث في $category...';
  }

  @override
  String get catalogSortPopular => 'الأكثر شعبية';

  @override
  String get catalogSortAZ => 'من الألف إلى الياء';

  @override
  String get catalogFilterNational => 'المواطنين';

  @override
  String get catalogRareSection => 'أقل شيوعا في بلدك';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'أضف $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'لم يتم العثور على المنتج، اكتب الاسم';

  @override
  String get catalogBrowse => 'تصفح الكتالوج';

  @override
  String get offlineBanner => 'أنت غير متصل';

  @override
  String get consentTitle => 'الخصوصية والتحليلات';

  @override
  String get consentBody =>
      'يستخدم KipiList تحليلات Firebase لتحسين تجربتك. تتم معالجة بياناتك وفقًا لسياسة الخصوصية الخاصة بنا.';

  @override
  String get consentAccept => 'يقبل';

  @override
  String get consentDecline => 'ًلا شكرا';

  @override
  String get mealPlannerPantryAllAvailable => 'في الأوراق المالية';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عناصر مفقودة',
      one: '$count عنصر مفقود',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'تاريخ انتهاء الصلاحية';

  @override
  String get notInformed => 'غير مطلع';

  @override
  String get skip => 'يتخطى';

  @override
  String get onboardingAiTitle => 'الدردشة مع كيبي';

  @override
  String get onboardingAiGreeting =>
      'أهلاً! أنا كيبي، مساعد التسوق الشخصي الخاص بك! 🛒';

  @override
  String get onboardingAiAskName => 'ما اسمك؟';

  @override
  String get onboardingAiNameHint => 'اكتب اسمك...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'تشرفت بلقائك، $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'ما هو طعامك المفضل؟';

  @override
  String get onboardingAiFoodHint => 'على سبيل المثال بيتزا، سوشي...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'خيارات عظيمة! إليك ما أود إضافته إلى قائمتك:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm => 'هل يبدو هذا جيداً؟ حاول كتابة شيء آخر!';

  @override
  String get onboardingAiReady =>
      'عظيم! أنت جاهز للبدء. دعنا نقوم بإعداد حسابك!';

  @override
  String get onboardingAiContinue => 'متابعة →';

  @override
  String get connectionError => 'خطأ في الاتصال';

  @override
  String connectionErrorDesc(String error) {
    return 'خطأ: $error';
  }

  @override
  String get errorLoadingLists => 'خطأ في تحميل القوائم';

  @override
  String get noListsFound => 'لم يتم العثور على قوائم';

  @override
  String get backToToday => 'العودة إلى اليوم';

  @override
  String get quickSuggestions => 'اقتراحات سريعة';

  @override
  String get aiEnergyLow => 'طاقة الذكاء الاصطناعي منخفضة';

  @override
  String get aiUnlockUnlimited => 'فتح الذكاء الاصطناعي غير المحدود';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 اليوم';
  }

  @override
  String get aiSubscribeUnlimited =>
      'اشترك للحصول على الذكاء الاصطناعي غير المحدود';

  @override
  String get unlockWithAd => 'فتح مع الإعلان';

  @override
  String get conversationHistoryTitle => 'تاريخ المحادثة';

  @override
  String get noConversationsFound => 'لم يتم العثور على أي محادثات';

  @override
  String get errorLoadingHistory => 'حدث خطأ أثناء تحميل السجل';

  @override
  String get deleteConversationTitle => 'حذف المحادثة';

  @override
  String get deleteConversationConfirm => 'لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get deleteConversation => 'يمسح';

  @override
  String get subscription => 'الاشتراك';

  @override
  String get kipiListProActive => 'KipiList برو نشط';

  @override
  String get unlockPremiumTitle => 'فتح بريميوم';

  @override
  String get loadingSubscription => 'جارٍ تحميل الاشتراك...';

  @override
  String get errorLoadingSubscription => 'حدث خطأ أثناء تحميل الاشتراك';

  @override
  String get profileSection => 'حساب تعريفي';

  @override
  String get myProfile => 'ملفي الشخصي';

  @override
  String get profileSubtitle => 'معلومات ملفك الشخصي';

  @override
  String get customizeAiAssistant => 'تخصيص مساعد الذكاء الاصطناعي';

  @override
  String get assistantHistory => 'التاريخ المساعد';

  @override
  String get assistantHistorySubtitle => 'عرض سجل المحادثات الخاصة بك';

  @override
  String get manageCategories => 'إدارة الفئات';

  @override
  String get manageCategoriesSubtitle => 'إضافة أو تعديل أو إزالة الفئات';

  @override
  String get customizeAssistant => 'تخصيص';

  @override
  String get assistantName => 'اسم المساعد';

  @override
  String get chooseIcon => 'اختر أيقونة';

  @override
  String get profileSaved => 'تم حفظ الملف الشخصي';

  @override
  String get errorSavingProfile => 'حدث خطأ أثناء حفظ الملف الشخصي';

  @override
  String get userProfile => 'ملف تعريف المستخدم';

  @override
  String get profileDescription => 'وصف الملف الشخصي';

  @override
  String get preferredMarket => 'السوق المفضل';

  @override
  String get preferredMarketHint => 'أين تتسوق عادة؟';

  @override
  String get dietaryRestrictions => 'القيود الغذائية';

  @override
  String get dietaryRestrictionsHint => 'أي قيود غذائية؟';

  @override
  String get marketsToAvoid => 'الأسواق لتجنب';

  @override
  String get marketsToAvoidHint => 'الأسواق التي لا تفضل التسوق فيها';

  @override
  String get observations => 'الملاحظات';

  @override
  String get observationsHint => 'هل هناك أي ملاحظات إضافية؟';

  @override
  String get saveProfile => 'حفظ الملف الشخصي';

  @override
  String get everythingReady => 'كل شيء جاهز!';

  @override
  String get youCompletedList => 'لقد أكملت القائمة!';

  @override
  String get selectCheaperAlternative => 'اختر بديلاً أرخص';

  @override
  String get suggestedItems => 'العناصر المقترحة';

  @override
  String get swapped => 'مبادلة';

  @override
  String get swap => 'تبديل';

  @override
  String get chooseThemeColor => 'اختر لون الموضوع';

  @override
  String get manageCategoriesTitle => 'إدارة الفئات';

  @override
  String get categoryLimitReached => 'تم الوصول إلى الحد الأقصى للفئة';

  @override
  String get deleteCategoryTitle => 'حذف الفئة';

  @override
  String deleteCategoryConfirm(String category) {
    return 'سيتم نقل العناصر الموجودة في \"$category\" إلى \"أخرى\".\nيكمل؟';
  }

  @override
  String get deleteCategory => 'يمسح';

  @override
  String get newCategoryDialog => 'فئة جديدة';

  @override
  String get editCategoryDialog => 'تحرير الفئة';

  @override
  String get categoryName => 'اسم الفئة';

  @override
  String get categoryNameHint => 'أدخل اسم الفئة';

  @override
  String get categoryColorLabel => 'لون';

  @override
  String get categoryIconLabel => 'رمز';

  @override
  String itemAddedSnack(String name) {
    return 'تمت إضافة $name';
  }

  @override
  String get kipiQuickBarHint => 'ماذا تحتاج للشراء؟';

  @override
  String replaceItem(String item) {
    return 'استبدال $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit — $price';
  }

  @override
  String get onboardingHookHeadline => 'لا تنس أبدًا عنصر البقالة مرة أخرى';

  @override
  String get onboardingGoalSaveMoney => 'توفير المال';

  @override
  String get onboardingGoalNeverForget => 'لا تنسى أبدا العناصر';

  @override
  String get onboardingGoalFaster => 'تسوق بشكل أسرع';

  @override
  String get onboardingGoalFamily => 'تنظيم التسوق العائلي';

  @override
  String get onboardingGoalRecipes => 'اكتشف الوصفات';

  @override
  String get onboardingGoalPantry => 'المسار مخزن';

  @override
  String get onboardingCommitmentsTitle => 'ما الذي يهمك؟';

  @override
  String get onboardingCommitmentsSubtitle => 'اختر أهدافك لتخصيص KipiList';

  @override
  String get onboardingCommitmentsCta => 'دعنا نذهب!';

  @override
  String get onboardingPersonalizationNameLabel => 'اسمك';

  @override
  String get onboardingPersonalizationNameHint => 'أدخل اسمك';

  @override
  String get onboardingPersonalizationCategoryTitle => 'ماذا تتسوق؟';

  @override
  String get onboardingPersonalizationGroupTitle => 'لمن تتسوق؟';

  @override
  String get onboardingCategoryGrocery => 'بقالة';

  @override
  String get onboardingCategoryPharmacy => 'صيدلية';

  @override
  String get onboardingCategoryRecipes => 'وصفات';

  @override
  String get onboardingCategoryHome => 'بيت';

  @override
  String get onboardingCategoryPet => 'حيوان أليف';

  @override
  String get onboardingGroupSolo => 'أنا فقط';

  @override
  String get onboardingGroupCouple => 'زوج';

  @override
  String get onboardingGroupFamily => 'عائلة';

  @override
  String get onboardingLoadingTitle => 'تحضير تجربتك...';

  @override
  String get onboardingLoadingStep1 => 'جارٍ تحليل تفضيلاتك...';

  @override
  String get onboardingLoadingStep2 => 'إعداد مساعد الذكاء الاصطناعي...';

  @override
  String get onboardingLoadingStep3 => 'شبه جاهز...';

  @override
  String get onboardingLoadingStat1Label => 'العناصر المفهرسة';

  @override
  String get onboardingLoadingStat2Label => 'ساعد المستخدمون';

  @override
  String get onboardingLoadingStat3Label => 'تم حفظ الدقائق';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name، احفظ في كل رحلة!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name، لا تنسى أبدًا أي عنصر!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name، تسوق في نصف الوقت!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name، تنظيم التسوق العائلي!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name، اكتشف وصفات جديدة!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name، تتبع مخزنك بشكل مثالي!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'انقاذ في كل رحلة!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => 'لا تنسى أبدا أي عنصر!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'تسوق في نصف الوقت!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'تنظيم التسوق العائلي!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'اكتشاف وصفات جديدة!';

  @override
  String get paywallGoalHeadlineNoNamePantry => 'تتبع مخزنك تماما!';

  @override
  String paywallPricePerDay(String price) {
    return 'فقط $price/اليوم - أقل من القهوة';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'تخطي الآن';

  @override
  String get paywallTestimonial =>
      'يقوم الذكاء الاصطناعي بتنظيم التسوق في ثوانٍ. أقوم بتوفير 20 دقيقة لكل رحلة.';

  @override
  String get paywallTestimonialAuthor => 'آن س.';

  @override
  String get paywallTrialDisclaimer =>
      'قم بالإلغاء في أي وقت · لا توجد رسوم حتى تنتهي النسخة التجريبية';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'مرحبًا $name! ما $category الذي تحتاجه؟';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'ما $category الذي تحتاجه؟';
  }

  @override
  String get onboardingAiDemoYes => 'نعم!';

  @override
  String get onboardingAiDemoReaction => 'لطيف - جيد!';

  @override
  String get onboardingAiDemoChange => 'تغيير العنصر';

  @override
  String get onboardingAiDemoOffer => 'حاول كتابة شيء آخر!';

  @override
  String get onboardingAiDemoContinue => 'يكمل';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'قائمة التسوق الخاصة بك، الآن مع الذكاء الاصطناعي';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'تعرف على كيفية قيام Kipi ببناء قائمتك الكاملة في ثوانٍ';

  @override
  String get onboardingAiDemoSlideCta => 'أريد هذا! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'سأقيم حفلة شواء 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'مستعد! إليك كل ما تحتاجه:';

  @override
  String get onboardingAiDemoSlideDone => 'القائمة كاملة في ثواني ✨';

  @override
  String get onboardingPainTitle => 'ما الذي يحبطك أكثر؟';

  @override
  String get onboardingPainSubtitle => 'كن صادقًا - سنقوم بإصلاح كل واحد';

  @override
  String get onboardingPainCta => 'نعم، أصلح هذا لي →';

  @override
  String get onboardingPainForget => 'لقد نسيت العناصر في المتجر';

  @override
  String get onboardingPainFamily => 'عائلتي لا ترى القائمة أبدًا';

  @override
  String get onboardingPainOverspend => 'أنا دائما أتجاوز الميزانية';

  @override
  String get onboardingPainRepeat => 'رحلة واحدة لا تكفي أبدا';

  @override
  String get aiWelcomeContent =>
      'مرحبًا! 👋 أنا **Kipi**، مساعدك الشخصي في التسوق ووصفات الطعام!\n\nأنا هنا لمساعدتك:\n🛒 **تنظيم** تسوقك حسب الفئات تلقائيًا\n💰 **تتبع** ميزانيتك وقدم لك نصائح لتوفير المال\n🍲 **اقتراح** وصفات لذيذة بما لديك بالفعل\n\nكيف يمكنني مساعدتك اليوم؟ يمكنك البدء بإنشاء قائمتك الأولى!';

  @override
  String get aiWelcomeSuggestCreateList => 'إنشاء قائمتي الأولى';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'كيبي، ساعدني في إنشاء قائمة التسوق الأولى الخاصة بي';

  @override
  String get aiWelcomeSuggestSave => 'كيفية توفير المال؟';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'كيبي، كيف يمكنك مساعدتي في توفير المال لشراء البقالة؟';

  @override
  String get suggestionMilk => 'لبن';

  @override
  String get suggestionBread => 'خبز';

  @override
  String get suggestionEggs => 'بيض';

  @override
  String get suggestionCoffee => 'قهوة';

  @override
  String get suggestionRice => 'أرز';

  @override
  String get suggestionFruits => 'الفواكه';
}
