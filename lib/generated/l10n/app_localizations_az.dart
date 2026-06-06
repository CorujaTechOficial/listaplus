// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get appTitle => 'Alış-veriş Siyahısı';

  @override
  String get lists => 'Siyahılar';

  @override
  String get pantry => 'Kiler';

  @override
  String get cancel => 'Ləğv et';

  @override
  String get save => 'Yadda saxla';

  @override
  String get create => 'Yarat';

  @override
  String get add => 'Əlavə et';

  @override
  String get remove => 'Sil';

  @override
  String get delete => 'Sil';

  @override
  String get edit => 'Redaktə et';

  @override
  String get copy => 'Kopyala';

  @override
  String get next => 'Sonrakı';

  @override
  String get retry => 'Yenidən cəhd et';

  @override
  String get regenerate => 'Yenidən yarat';

  @override
  String get copiedToClipboard => 'Panoya kopyalandı';

  @override
  String get confirm => 'Təsdiqlə';

  @override
  String get close => 'Bağla';

  @override
  String get import => 'İdxal et';

  @override
  String get rename => 'Adını dəyiş';

  @override
  String get upgrade => 'Yüksəlt';

  @override
  String get clear => 'Təmizlə';

  @override
  String error(String message) {
    return 'Xəta: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Xəta: $message';
  }

  @override
  String get purchaseError =>
      'Alış-verişi emal edərkən xəta. Yenidən cəhd edin.';

  @override
  String get restoreError => 'Alışları bərpa edərkən xəta. Yenidən cəhd edin.';

  @override
  String get loading => 'Yüklənir...';

  @override
  String get fieldRequired => 'Məcburi sahə';

  @override
  String get addedFeedback => 'Əlavə edildi!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seçilmiş',
      one: '$count seçilmiş',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Təxmini';

  @override
  String get alreadyPurchased => 'Artıq alınıb';

  @override
  String get clearList => 'Siyahını təmizlə';

  @override
  String get clearPurchased => 'Alınanları təmizlə';

  @override
  String get share => 'Paylaş';

  @override
  String get shareViaCode => 'Kodla paylaş';

  @override
  String get importViaCode => 'Kodla idxal et';

  @override
  String get listAssistant => 'Siyahı köməkçisi';

  @override
  String get globalAssistant => 'Qlobal köməkçi';

  @override
  String get becomePremium => 'Premium ol';

  @override
  String get manageSubscription => 'Abunəliyi idarə et';

  @override
  String get completePurchase => 'Alışı tamamla';

  @override
  String get confirmClearList => 'Bütün maddələri sil?';

  @override
  String get shareListTitle => 'Siyahını Paylaş';

  @override
  String get shareThisCode => 'Bu kodu paylaş:';

  @override
  String get validForLimitedTime => 'Məhdud müddət üçün keçərlidir';

  @override
  String get importListTitle => 'Siyahını İdxal Et';

  @override
  String get enterCodeHint => 'Kodu daxil edin';

  @override
  String get confirmArchiveTitle => 'Alışı Tamamla';

  @override
  String get confirmArchiveContent =>
      'Bu alışı tamamlayıb siyahını arxivləşdirim?';

  @override
  String get complete => 'Tamamla';

  @override
  String get listArchived => 'Siyahı uğurla arxivləşdirildi!';

  @override
  String listAdded(String listName) {
    return '$listName əlavə edildi!';
  }

  @override
  String get buy => 'Al';

  @override
  String get unmark => 'İşarəni götür';

  @override
  String confirmDeleteItems(int count) {
    return '$count maddə(ni) sil?';
  }

  @override
  String get confirmDeleteTitle => 'Təsdiqlə';

  @override
  String confirmContent(int count) {
    return '$count maddə(ni) sil?';
  }

  @override
  String get archiveList => 'Siyahını arxivləşdir';

  @override
  String get pantryAppBar => 'Kiler';

  @override
  String get generateShoppingList => 'Alış-veriş siyahısı yarat';

  @override
  String get pantryEmpty => 'Boş kiler';

  @override
  String get pantryEmptySubtitle =>
      'Evdə saxlamaq istədiyiniz məhsulları əlavə edin';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit maddə alınmalıdır';
  }

  @override
  String get noItemsToBuy => 'Alınması lazım olan maddə yoxdur';

  @override
  String get newPantryList => 'Kiler Alış-verişi';

  @override
  String get newListTitle => 'Yeni Alış-veriş Siyahısı';

  @override
  String itemsWillBeAdded(int count) {
    return '$count maddə əlavə olunacaq';
  }

  @override
  String get listNameLabel => 'Siyahı adı';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" siyahısı $count maddə ilə yaradıldı';
  }

  @override
  String get noTracking => 'İzləmə yoxdur';

  @override
  String get markAsPurchased => 'Alınmış kimi işarələ';

  @override
  String editPantryItem(String name) {
    return '$name redaktə et';
  }

  @override
  String get idealQuantity => 'İdeal miqdar';

  @override
  String get currentQuantity => 'Cari miqdar';

  @override
  String get consumed => 'İstehlak edilmiş';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit təkər dolduruldu';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" kilerdən silinsin?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name redaktə et';
  }

  @override
  String get settingsAppBar => 'Tənzimləmələr';

  @override
  String get language => 'Dil';

  @override
  String get languagePortuguese => 'Português (Braziliya)';

  @override
  String get languageEnglish => 'İngilis dili';

  @override
  String get languageSystem => 'Sistem defoltu';

  @override
  String get chooseLanguage => 'Dil seçin';

  @override
  String get searchLanguage => 'Dil axtar...';

  @override
  String get currency => 'Valyuta';

  @override
  String get chooseCurrency => 'Valyuta seçin';

  @override
  String get searchCurrency => 'Valyuta axtar...';

  @override
  String get appearance => 'Görünüş';

  @override
  String get light => 'Açıq';

  @override
  String get system => 'Sistem';

  @override
  String get dark => 'Tünd';

  @override
  String get themeColor => 'Tema rəngi';

  @override
  String get dynamicColors => 'Dinamik rənglər';

  @override
  String get dynamicColorsSubtitle =>
      'Divar kağızınıza əsaslanan rənglərdən istifadə edin';

  @override
  String get dynamicColorsEnabledWarning =>
      'Mövzu rənginin qüvvəyə minməsi üçün dinamik rəngləri deaktiv edin';

  @override
  String get finance => 'Maliyyə';

  @override
  String get monthlyBudgetNav => 'Aylıq büdcə';

  @override
  String get budgetSubtitle => 'Aylıq xərclərinizi izləyin';

  @override
  String get data => 'Məlumat';

  @override
  String get backupNav => 'Ehtiyat';

  @override
  String get backupSubtitle => 'Məlumatlarınızı ixrac və ya idxal edin';

  @override
  String get about => 'Haqqında';

  @override
  String get version => 'Versiya';

  @override
  String get privacy => 'Məxfilik';

  @override
  String get termsOfUse => 'İstifadə şərtləri';

  @override
  String get backupTitle => 'Ehtiyat';

  @override
  String get backupPremiumDescription =>
      'Ehtiyat və ixrac premium xüsusiyyətdir';

  @override
  String get exportData => 'Məlumatları ixrac et';

  @override
  String get exportDataSubtitle => 'Bütün siyahıları JSON olaraq saxla';

  @override
  String get importData => 'Məlumatları idxal et';

  @override
  String get importDataSubtitle => 'JSON-dan siyahıları bərpa et';

  @override
  String get importJsonTitle => 'JSON idxal et';

  @override
  String get importJsonHint => 'Ehtiyat JSON-u bura yapışdırın...';

  @override
  String get backupExported => 'Ehtiyat ixrac edildi!';

  @override
  String get budgetAppBar => 'Aylıq Büdcə';

  @override
  String get budgetPremiumLocked => 'Qlobal aylıq büdcə premiumdur';

  @override
  String get budgetUpgradePrompt => 'Açmaq üçün yüksəldin';

  @override
  String get noBudgetDefined => 'Büdcə təyin edilməyib';

  @override
  String totalEstimated(String amount) {
    return 'Ümumi təxmini: $amount';
  }

  @override
  String get setBudgetButton => 'Büdcə təyin et';

  @override
  String get budgetLists => 'Siyahılar';

  @override
  String get budgetValueLabel => 'Məbləğ';

  @override
  String get setBudgetTitle => 'Aylıq Büdcə';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Hamısı';

  @override
  String get filterPending => 'Gözləyən';

  @override
  String get filterPurchased => 'Alınmış';

  @override
  String get sortName => 'Ad';

  @override
  String get sortCategory => 'Kateqoriya';

  @override
  String get sortDate => 'Tarix';

  @override
  String get sortManual => 'Əllə';

  @override
  String get addItem => 'Maddə Əlavə Et';

  @override
  String get itemName => 'Maddə adı';

  @override
  String get quantityShort => 'Say';

  @override
  String get unit => 'Vahid';

  @override
  String get category => 'Kateqoriya';

  @override
  String get estimatedPrice => 'Təxmini qiymət';

  @override
  String get addItemPrice => 'Təxmini qiymət';

  @override
  String get editItem => 'Maddəni Redaktə Et';

  @override
  String get quantityFull => 'Miqdar';

  @override
  String get editItemPrice => 'Təxmini qiymət';

  @override
  String get addToPantry => 'Kilerə Əlavə Et';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" kilerə əlavə edilsin?';
  }

  @override
  String get yes => 'Bəli';

  @override
  String get productName => 'Məhsul adı';

  @override
  String get idealQty => 'İdeal say';

  @override
  String get currentQty => 'Cari say';

  @override
  String get trackStock => 'Ehtiyatı izlə';

  @override
  String get trackStockActive => 'Alış təkliflərində görünür';

  @override
  String get trackStockInactive => 'Alış təklifi yaratmır';

  @override
  String get createListDialog => 'Siyahı Yarat';

  @override
  String get renameListDialog => 'Siyahının Adını Dəyiş';

  @override
  String get listHistory => 'Siyahı Tarixçəsi';

  @override
  String get myLists => 'Siyahılarım';

  @override
  String get viewActive => 'Aktivlərə Bax';

  @override
  String get viewHistory => 'Tarixçəyə Bax';

  @override
  String get noArchivedLists => 'Arxivləşdirilmiş siyahı yoxdur';

  @override
  String get noActiveLists => 'Aktiv siyahı yoxdur';

  @override
  String completedOn(String date) {
    return '$date tarixində tamamlandı';
  }

  @override
  String get sharedLabel => 'Paylaşılmış';

  @override
  String get restore => 'Bərpa et';

  @override
  String get removeSharedTooltip => 'Sil';

  @override
  String get deleteListTitle => 'Siyahını sil';

  @override
  String deleteListContent(String name) {
    return '\"$name\" siyahısını silmək istədiyinizə əminsiniz? Bütün maddələr silinəcək.';
  }

  @override
  String get removeSharedListTitle => 'Paylaşılmış siyahını sil';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" siyahılarınızdan silinsin? Orijinal siyahı təsirlənməyəcək.';
  }

  @override
  String get createNewList => 'Yeni siyahı yarat';

  @override
  String get aiAssistant => 'AI Köməkçi';

  @override
  String get aiAssistantDescription =>
      'AI köməkçimizlə ağıllı təkliflər, reseptlər və fərdi məsləhətlər alın.';

  @override
  String get generalAssistant => 'Ümumi Köməkçi';

  @override
  String get newChat => 'Yeni Söhbət';

  @override
  String get noHistory => 'Söhbət tarixçəsi yoxdur';

  @override
  String get deleteSession => 'Söhbəti silin';

  @override
  String get deleteSessionConfirm =>
      'Bu söhbəti silmək istədiyinizə əminsiniz? Mesajlar həmişəlik silinəcək.';

  @override
  String get clearHistory => 'Tarixçəni Təmizlə';

  @override
  String get clearHistoryConfirm => 'Bu sessiyadakı bütün mesajları təmizlə?';

  @override
  String get chatHint => 'Mesajınızı yazın...';

  @override
  String get chatHintBlocked => 'Söhbət etmək üçün AI kilidini açın';

  @override
  String chatError(String error) {
    return 'Söhbəti yükləyərkən xəta: $error';
  }

  @override
  String get listHelp => 'Siyahınıza necə kömək edə bilərəm?';

  @override
  String get generalHelp => 'Bu gün alış-verişinizə necə kömək edə bilərəm?';

  @override
  String get chatSubtitle =>
      'Maddə təklifləri, reseptlər və ya qənaət məsləhətləri üçün soruşun.';

  @override
  String get aiError =>
      'Üzr istəyirik, sorğunuzu emal edərkən xəta baş verdi. Əlaqənizi yoxlayın və ya daha sonra yenidən cəhd edin.';

  @override
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get aiTeaserFallback =>
      'Subscribe to Premium to unlock the full response and get unlimited AI tips for your shopping...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Premium xüsusiyyətləri\naçmaq üçün daxil olun';

  @override
  String get signInGoogle => 'Google ilə daxil ol';

  @override
  String get signInApple => 'Apple ilə daxil ol';

  @override
  String get continueAsGuest => 'Qonaq olaraq davam et';

  @override
  String get onboardingWelcomeTitle => 'KipiList-a xoş gəlmisiniz';

  @override
  String get onboardingWelcomeDesc =>
      'Alış-verişinizi təşkil etməyin və pula qənaət etməyin ən ağıllı yolu.';

  @override
  String get onboardingSetupTitle => 'Təcrübənizi fərdiləşdirin';

  @override
  String get onboardingSetupDesc =>
      'KipiList-ın necə görünməsini və sizin üçün işləməsini istədiyinizi seçin.';

  @override
  String get onboardingLoginTitle => 'Hər şeyi buludda saxlayın';

  @override
  String get onboardingLoginDesc =>
      'Datanız bütün cihazlarınızda sinxronlaşdırıldı';

  @override
  String get onboardingShareTitle => 'Sevdiklərinizlə paylaşın';

  @override
  String get onboardingShareDesc =>
      'Real vaxtda ailə və dostlarla siyahıları sinxronlaşdırın';

  @override
  String get onboardingPremiumTitle => 'Bütün xüsusiyyətlərin kilidini açın';

  @override
  String get onboardingPremiumSubtitle =>
      'Alış-veriş siyahılarınızdan maksimum yararlanın';

  @override
  String get onboardingAnnualBadge => 'Ən Yaxşı Dəyər';

  @override
  String get onboardingMonthlyLabel => 'Aylıq';

  @override
  String get onboardingAnnualLabel => 'İllik';

  @override
  String get onboardingViewAllPlans => 'Bütün planlara baxın';

  @override
  String get onboardingSubscribeCta => 'Abunə ol';

  @override
  String get onboardingCancelAnytime =>
      'İstənilən vaxt ləğv edin. Öhdəlik yoxdur.';

  @override
  String get onboardingContinueAsGuest => 'Qonaq olaraq davam edin';

  @override
  String get onboardingRestore => 'Bərpa et';

  @override
  String get onboardingRestoreDesc =>
      'Artıq abunəliyiniz var? Onu bərpa etmək üçün bura klikləyin.';

  @override
  String get onboardingExit => 'Çıx';

  @override
  String get onboardingPersonalizationTitle => 'Gəlin sizinlə tanış olaq';

  @override
  String get onboardingPersonalizationDesc =>
      'Biz bundan təkliflərinizi fərdiləşdirmək və alış-verişi daha ağıllı etmək üçün istifadə edəcəyik.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Ən sevdiyiniz yemək hansıdır?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'məs. Pizza, Suşi, Lazanya...';

  @override
  String get onboardingPersonalizationCta => 'Davam et';

  @override
  String get onboardingPersonalizationSkip => 'Hələlik keçin';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Davam etmək üçün bizə sevimli yeməyinizi deyin';

  @override
  String get settingsDefaultScreen => 'Defolt əsas ekran';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Alış-veriş siyahısı və ya AI söhbəti arasında seçim edin';

  @override
  String get settingsScreenList => 'Alış-veriş siyahısı';

  @override
  String get settingsScreenChat => 'AI söhbəti';

  @override
  String loginError(String error) {
    return 'Giriş xətası: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError => 'Error loading offers. Try again.';

  @override
  String get paywallPurchaseError => 'Could not complete purchase. Try again.';

  @override
  String get paywallRestoreError => 'No active subscription found to restore.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAYS FREE';
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
  String get paywallFeaturesTitle => 'Everything you need:';

  @override
  String get paywallFeatureUnlimitedLists => 'Unlimited Lists';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Expense Control';

  @override
  String get paywallFeatureSharing => 'Sharing';

  @override
  String get paywallBeforeAfterTitle => 'AI Before and After:';

  @override
  String get paywallLabelCommon => 'Common';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'rice';

  @override
  String get paywallBeforeItem2 => 'soap';

  @override
  String get paywallBeforeItem3 => 'meat';

  @override
  String get paywallBeforeItem4 => 'bread';

  @override
  String get paywallAfterItem1 => 'Grains';

  @override
  String get paywallAfterItem2 => 'Cleaning';

  @override
  String get paywallAfterItem3 => 'Meats';

  @override
  String get paywallAfterItem4 => 'Bakery';

  @override
  String get paywallTestimonialsTitle => 'What our users say:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organizes my shopping in seconds. I save 20 min per market trip.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'I never forgot a list item again. The AI chat is sensational!';

  @override
  String get paywallSocialProof => '+2,400 families use it';

  @override
  String get paywallCtaUnlock => 'Unlock PRO';

  @override
  String get paywallBestValue => 'BEST VALUE';

  @override
  String get paywallMostPopular => 'MOST POPULAR';

  @override
  String get paywallSafeCheckout => 'Secure payment';

  @override
  String get paywallSelectPlan => 'Choose your plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SAVE $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Only $price/month';
  }

  @override
  String get paywallPackageAnnual => 'Annual Plan';

  @override
  String get paywallPackageMonthly => 'Monthly Plan';

  @override
  String get paywallPackageLifetime => 'Lifetime Access';

  @override
  String get paywallCancelAnytime => 'Cancel anytime. No commitment.';

  @override
  String get paywallPolicy => 'Privacy Policy';

  @override
  String get paywallTerms => 'Terms of Use';

  @override
  String get paywallRestore => 'Restore';

  @override
  String get paywallHeroHeadline => 'Kipi AI always by your side';

  @override
  String get paywallHeroSubtitle =>
      'Add items, organize lists and save time with AI in your pocket';

  @override
  String get paywallBenefit1Desc => 'Adds, organizes and suggests items 24/7';

  @override
  String get paywallBenefit2Desc => 'No 3-list limit';

  @override
  String get paywallBenefit3Desc => 'Expense tracking and family lists';

  @override
  String get paywallPackageMonthlyDesc => 'Full flexibility';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Start free — $days days';
  }

  @override
  String get premiumUpgrade => 'Açmaq üçün yüksəldin';

  @override
  String get itemRemoved => 'Maddə silindi';

  @override
  String get undo => 'Geri al';

  @override
  String get emptyListTitle => 'Siyahınız boşdur';

  @override
  String get emptyListSubtitle => 'Başlamaq üçün maddələr əlavə edin';

  @override
  String get noListFoundTitle => 'Siyahı tapılmadı';

  @override
  String get noListFoundSubtitle => 'Başlamaq üçün ilk siyahınızı yaradın';

  @override
  String get createFirstList => 'İlk Siyahını Yarat';

  @override
  String get listBudgetTitle => 'Siyahı Büdcəsi';

  @override
  String get budgetAmountLabel => 'Büdcə məbləği';

  @override
  String get removeBudget => 'Sil';

  @override
  String get prefUnlimitedLists => 'Limitsiz siyahılar';

  @override
  String get prefSharing => 'Siyahıları paylaş';

  @override
  String get prefFullHistory => 'Tam tarixçə';

  @override
  String get prefExportData => 'Məlumatları ixrac et';

  @override
  String get prefCustomThemes => 'Fərdi temalar';

  @override
  String get prefMonthlyBudget => 'Qlobal aylıq büdcə';

  @override
  String get prefAIAssistant => 'Şəxsi AI Köməkçi';

  @override
  String get prefUnlimitedPantry => 'Limitsiz kiler';

  @override
  String get prefInteractiveArtifacts => 'İnteraktiv AI Artfaktları';

  @override
  String get themeGreen => 'Yaşıl';

  @override
  String get themeBlue => 'Mavi';

  @override
  String get themePurple => 'Bənövşəyi';

  @override
  String get themeRed => 'Qırmızı';

  @override
  String get themeOrange => 'Narıncı';

  @override
  String get themePink => 'Çəhrayı';

  @override
  String get themeIndigo => 'İndiqo';

  @override
  String get themeAmber => 'Kəhrəba';

  @override
  String get themeTeal => 'Mavi';

  @override
  String get themeBrown => 'Qəhvəyi';

  @override
  String get catFruits => 'Meyvələr';

  @override
  String get catCleaning => 'Təmizlik';

  @override
  String get catBeverages => 'İçkilər';

  @override
  String get catBakery => 'Çörək məmulatları';

  @override
  String get catOthers => 'Digər';

  @override
  String get unitPack => 'paket';

  @override
  String get shareSubject => 'Alış-veriş Siyahısı';

  @override
  String get monthlyBudgetTitle => 'Aylıq Büdcə';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Siyahını sil';

  @override
  String get pantryItemRemoved => 'Maddə silindi';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit maddə alınmalıdır',
      one: '$deficit maddə alınmalıdır',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Səbət cəmi';

  @override
  String get restockLabel => 'Təkər doldur';

  @override
  String get advancedFeatures => 'Qabaqcıl xüsusiyyətlər';

  @override
  String get selectAll => 'Hamısını seç';

  @override
  String get deselectAll => 'Hamısını seçmə';

  @override
  String get monthlyBudgetAppBar => 'Aylıq Büdcə';

  @override
  String get budgetEditTitle => 'Aylıq Büdcə';

  @override
  String get budgetDashboardTitle => 'Panel';

  @override
  String get selectListForDashboard => 'Paneli görmək üçün siyahı seçin.';

  @override
  String get spendingAnalysis => 'Xərc Təhlili';

  @override
  String get noItemsToAnalyze => 'Təhlil etmək üçün siyahıda maddə yoxdur.';

  @override
  String get markItemsToSeeAnalysis =>
      'Təhlili görmək üçün maddələri alınmış kimi işarələyin.';

  @override
  String get totalSpending => 'Ümumi Xərc';

  @override
  String get spendingByCategory => 'Kateqoriyaya görə Xərc';

  @override
  String get achievements => 'Nailiyyətlər';

  @override
  String get exportPdfExcel => 'PDF/Excel ixrac et';

  @override
  String get exportPdf => 'PDF olaraq ixrac et';

  @override
  String get exportExcel => 'Excel olaraq ixrac et';

  @override
  String get organizingAi => 'AI İLƏ TƏŞKİL EDİLİR...';

  @override
  String get yesLabel => 'Bəli';

  @override
  String get noLabel => 'Xeyr';

  @override
  String get shareListText => 'Alış-veriş Siyahım';

  @override
  String get emptyListAddItems =>
      'Siyahınız boşdur! Əvvəlcə maddələr əlavə edin. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Siyahı sehrli şəkildə kateqoriyalara görə təşkil edildi! ✨';

  @override
  String get shoppingMode => 'Alış-veriş Rejimi';

  @override
  String get smartOrganization => 'Ağıllı Təşkilat';

  @override
  String get savings => 'Qənaətlər';

  @override
  String get shoppingModeHeader => 'ALIŞ-VERİŞ REJİMİ';

  @override
  String get shareAsText => 'Maddələri formatlaşdırılmış mətn olaraq göndər';

  @override
  String get shareRealtime => 'Digər insanlarla real vaxt sinxronizasiyası';

  @override
  String get quickRecipe => 'Sürətli resept';

  @override
  String get quickRecipePrompt => 'Siyahımdakı maddələrlə reseptlər təklif et.';

  @override
  String get economyTips => 'Qənaət məsləhətləri';

  @override
  String get economyTipsPrompt => 'Bu alışda necə pul qənaət edə bilərəm?';

  @override
  String get organizeAisles => 'Rəflərə görə təşkil et';

  @override
  String get organizeAislesPrompt => 'Bazar rəflərinə görə təşkil et.';

  @override
  String get recipeSuggestion => 'Resept təklifi';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kredit qalıb';
  }

  @override
  String get addAllToList => 'Hamısını siyahıya əlavə et';

  @override
  String get organizeByAisles => 'Rəflərə görə təşkil et';

  @override
  String get voiceTranscriptionTooltip => 'Səsli yazma (Pulsuz)';

  @override
  String get aiVoiceCommandTooltip => 'AI Səs Əmri (Premium)';

  @override
  String get voiceCommandTitle => 'AI Səs Əmri';

  @override
  String get voiceCommandContent =>
      'Siyahınızı idarə etmək üçün təbii danışın!\n\nNümunələr:\n• \'Çörək, pendir və vetçina əlavə et\'\n• \'Camaşır yuyucusunu sil\'\n• \'Temanı maviyə dəyiş\'\n\nBu, KipiList Premium-un eksklüziv xüsusiyyətidir.';

  @override
  String get voiceCommandPlanBtn => 'Planlara Bax';

  @override
  String get itemsAddedSuccess => 'Maddələr siyahıya uğurla əlavə edildi!';

  @override
  String get viewList => 'Siyahıya bax';

  @override
  String get feedbackTitle => 'Rəy Göndər';

  @override
  String get feedbackPrompt => 'Nə paylaşmaq istərdiniz?';

  @override
  String get feedbackTypeBug => 'Xəta Bildir';

  @override
  String get feedbackTypeBugHint => 'Nəsə işləmir';

  @override
  String get feedbackTypeSuggestion => 'Təklif';

  @override
  String get feedbackTypeSuggestionHint => 'Tətbiqi yaxşılaşdırmaq üçün ideya';

  @override
  String get feedbackTypeTranslation => 'Tərcümə Problemi';

  @override
  String get feedbackTypeTranslationHint => 'Yanlış və ya gərgin tərcümə';

  @override
  String get feedbackTypeFeature => 'Xüsusiyyət İstəyi';

  @override
  String get feedbackTypeFeatureHint => 'Görmək istədiyiniz xüsusiyyət';

  @override
  String get feedbackTypeOther => 'Digər';

  @override
  String get feedbackTypeOtherHint => 'Digər rəy növü';

  @override
  String get feedbackHint => 'Rəyinizi ətraflı təsvir edin...';

  @override
  String get feedbackSend => 'Rəy Göndər';

  @override
  String get feedbackSending => 'Göndərilir...';

  @override
  String get feedbackThankYou => 'Təşəkkürlər!';

  @override
  String get feedbackThankYouMessage =>
      'Rəyiniz qəbul edildi və KipiList-ı hər kəs üçün yaxşılaşdırmağa kömək edir.';

  @override
  String get feedbackBack => 'Geri';

  @override
  String feedbackError(String error) {
    return 'Göndərmə xətası: $error';
  }

  @override
  String get feedbackRetry => 'Yenidən cəhd et';

  @override
  String get feedbackSettingsTitle => 'Rəy Göndər';

  @override
  String get feedbackSettingsSubtitle =>
      'Xətaları bildirin, təkmilləşdirmələr təklif edin və ya tərcümələri düzəldin';

  @override
  String get aiEnergy => 'AI Enerjisi';

  @override
  String get searchInConversation => 'Söhbətdə axtar...';

  @override
  String get noMessagesFound => 'Mesaj tapılmadı';

  @override
  String get suggestedQuestions => 'Təklif olunan suallar:';

  @override
  String get shoppingAssistant => 'Alış-veriş köməkçisi';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total ədəddən $purchased alınıb';
  }

  @override
  String get estimatedCost => 'Təxmini';

  @override
  String get viewItems => 'Elementlərə baxın';

  @override
  String get noItemsInList => 'Siyahıda element yoxdur';

  @override
  String get longHistoryWarning =>
      'Uzun tarix: köməkçi daha yaxşı performans üçün ən son mesajlara diqqət yetirir.';

  @override
  String get listening => 'Dinlənir...';

  @override
  String get addDirectToList => 'Birbaşa siyahıya əlavə edin';

  @override
  String get unlockFullResponse => 'Tam Cavabın kilidini açın';

  @override
  String get switchList => 'Siyahıya keçid';

  @override
  String get marketMode => 'Bazar rejimi';

  @override
  String get backToChat => 'Söhbətə qayıt';

  @override
  String get finishShopping => 'Alış-verişi bitirin';

  @override
  String get welcomeAiAssistant => 'AI köməkçisinə xoş gəlmisiniz';

  @override
  String get createListToStartAi =>
      'Ağıllı söhbətdən istifadə etməyə başlamaq üçün alış-veriş siyahısı yaradın.';

  @override
  String get howCanIHelp => 'Mən necə kömək edə bilərəm?';

  @override
  String get chatSubtitleShort =>
      'Qiymətlər, reseptlər, təşkilatçılıq haqqında soruşun...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total alınıb';
  }

  @override
  String get quickReplies => 'Tez cavablar:';

  @override
  String get voiceProFeature =>
      'Qabaqcıl səs əmrləri Pro-dur. Əsas diktə aktiv edilir...';

  @override
  String get viewPro => 'Pro-ya baxın';

  @override
  String get errorLoadingChat => 'Vay! Söhbəti yükləyərkən xəta baş verdi.';

  @override
  String get errorLoadingChatSubtitle =>
      'Bağlantınızı yoxlayın və ya daha sonra yenidən cəhd edin.';

  @override
  String get errorOscillation =>
      'Bu, şəbəkə rəqsləri və ya müvəqqəti əlçatan olmama səbəbindən baş verə bilər. Yenidən cəhd edin.';

  @override
  String get activeListening => 'Aktiv dinləmə';

  @override
  String get whatToDoWithItem => 'Bu elementlə nə etmək istərdiniz?';

  @override
  String get viewDetails => 'Ətraflı Baxın';

  @override
  String get openMenu => 'Menunu aç';

  @override
  String get viewRecipe => 'Reseptə bax';

  @override
  String get recipeCreated => 'Resept yaradıldı!';

  @override
  String get editRecipe => 'Redaktə et';

  @override
  String get deleteRecipe => 'Sil';

  @override
  String get deleteRecipeConfirm => 'Bu resepti silmək istəyirsiniz?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\" reseptini silmək istədiyinizə əminsiniz? Bu əməliyyat geri qaytarıla bilməz.';
  }

  @override
  String get ingredients => 'İnqrediyentlər';

  @override
  String get instructions => 'Təlimatlar';

  @override
  String get prepTime => 'Hazırlanma vaxtı';

  @override
  String get recipeSaved => 'Resept yadda saxlanıldı!';

  @override
  String get noRecipesSaved => 'Saxlanılan resept yoxdur';

  @override
  String get noRecipesSavedHint =>
      'Aşağıdakı düyməyə toxunaraq ilk xüsusi reseptinizi yaradın.';

  @override
  String get myRecipes => 'Mənim reseptlərim';

  @override
  String get newRecipe => 'Yeni resept';

  @override
  String get loadingRecipes => 'Reseptləriniz yüklənir...';

  @override
  String get errorLoadingRecipes => 'Reseptlərin yüklənməsində xəta baş verdi';

  @override
  String get addIngredient => 'İnqrediyent əlavə et';

  @override
  String get saveRecipe => 'Yadda saxla';

  @override
  String get recipeName => 'Reseptin adı';

  @override
  String get shortDescription => 'Qısa təsvir';

  @override
  String get prepTimeMinutes => 'Hazırlanma vaxtı (dəqiqə)';

  @override
  String get instructionsHint => 'Hər sətirə bir addım yazın...';

  @override
  String get addPhoto => 'Foto əlavə et';

  @override
  String get imageUrlPlaceholder => 'Və ya şəkil URL-ni yapışdırın';

  @override
  String get tags => 'Teqlər';

  @override
  String get recipeTags => 'Resept teqləri';

  @override
  String get suggestedTags => 'Təklif olunan';

  @override
  String get searchRecipes => 'Reseptləri axtar...';

  @override
  String get filterByTag => 'Teqə görə süzgəclə';

  @override
  String get allTags => 'Hamısı';

  @override
  String get recipeDeleted => 'Resept silindi';

  @override
  String get saveChanges => 'Dəyişiklikləri yadda saxla';

  @override
  String get editRecipeTitle => 'Resepti redaktə et';

  @override
  String get newRecipeTitle => 'Yeni resept';

  @override
  String get requiredField => 'Məcburidir';

  @override
  String get chooseImageSource => 'Şəkil mənbəyini seçin';

  @override
  String get gallery => 'Qalereya';

  @override
  String get enterUrl => 'URL daxil edin';

  @override
  String get recipeImage => 'Resept şəkli';

  @override
  String get removeImage => 'Şəkli sil';

  @override
  String get mealPlannerTitle => 'Yemək Planlayıcısı';

  @override
  String get mealPlannerViewMonthly => 'Aylıq görünüş';

  @override
  String get mealPlannerViewWeekly => 'Həftəlik görünüş';

  @override
  String get mealPlannerNoMeals => 'Planlaşdırılan yemək yoxdur';

  @override
  String get mealPlannerNoMealsHint =>
      'Yemək əlavə etmək üçün bir günə toxunun';

  @override
  String get mealPlannerLoading => 'Yemək planı yüklənir...';

  @override
  String get mealPlannerError => 'Yemək planının yüklənməsində xəta baş verdi';

  @override
  String get mealPlannerAddMeal => 'Yemək əlavə et';

  @override
  String get mealPlannerEditMeal => 'Yeməyi redaktə et';

  @override
  String get mealPlannerDeleteMeal => 'Yeməyi sil';

  @override
  String get mealPlannerMealDeleted => 'Yemək silindi';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porsiya',
      one: '$count porsiya',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porsiya sayı';

  @override
  String get mealPlannerNoteLabel => 'Qeyd (istəyə bağlı)';

  @override
  String get mealPlannerSelectRecipe => 'Resept seçin';

  @override
  String get mealPlannerSearchRecipes => 'Reseptləri axtar...';

  @override
  String get mealPlannerNoRecipesFound => 'Resept tapılmadı';

  @override
  String get mealPlannerNoRecipesHint =>
      'Əvvəlcə Reseptlər bölməsində reseptlər yaradın';

  @override
  String get mealPlannerSave => 'Plana əlavə et';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total yeməkdən $count-i planlaşdırılıb';
  }

  @override
  String get mealPlannerGenerateList => 'Alış-veriş siyahısı yarat';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Bu həftəlik planlaşdırılan yeməklərin bütün inqrediyentlərini alış-veriş siyahınıza əlavə edilsin?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'Siyahınıza $count inqrediyent əlavə edildi!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Əlavə ediləcək inqrediyent yoxdur. Əvvəlcə reseptlərlə bəzi yeməklər planlaşdırın.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Əvvəlcə bir alış-veriş siyahısı yaradın.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Səhər yeməyi';

  @override
  String get mealPlannerMealTypeLunch => 'Nahar';

  @override
  String get mealPlannerMealTypeDinner => 'Şam yeməyi';

  @override
  String get mealPlannerMealTypeSnack => 'Atışdırmalıq';

  @override
  String get mealPlannerDateLabel => 'Tarix';

  @override
  String get mealPlannerWeekEmpty => 'Bu həftə üçün heç nə planlaşdırılmayıb';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Yeməklərinizi planlaşdırmağa başlamaq üçün hər hansı bir günə toxunun!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes dəq';
  }

  @override
  String get inviteToList => 'Siyahıya dəvət edin';

  @override
  String get shareApp => 'Proqramı paylaşın';

  @override
  String get shareAppDescription =>
      'Dostlarınızı KipiList-dan istifadə etməyə dəvət edin';

  @override
  String shareReferralText(Object url) {
    return 'Alış-verişimi təşkil etmək üçün KipiList-dan istifadə edirəm! Linkim vasitəsilə endirin və ikimiz də 7 gün pulsuz Premium əldə edirik: $url';
  }

  @override
  String get shareReferralSubject => '7 günlük KipiList Premium əldə edin!';
}
