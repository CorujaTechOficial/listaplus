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
  String get navChat => 'Söhbət';

  @override
  String get navRecipes => 'Reseptlər';

  @override
  String get navLists => 'Siyahılar';

  @override
  String get navMealPlanner => 'Menyu';

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
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Alış-veriş rejimindən çıxın';

  @override
  String get exit => 'Çıx';

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
  String get aiLimitAlmostReached => 'Demək olar ki, AI mesajları bitdi';

  @override
  String get unlockAi => 'Limitsiz AI kilidini açın';

  @override
  String get aiTeaserFallback =>
      'Tam cavabı açmaq və alış-verişiniz üçün limitsiz AI məsləhətləri əldə etmək üçün Premiuma abunə olun...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI əməliyyatları bu ay qaldı — limitsiz olaraq təkmilləşdirin';
  }

  @override
  String get aiUsageExhausted =>
      'Aylıq AI limitinə çatıldı. Limitsiz → üçün Pro-ya yüksəldin';

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
  String get onboardingMaybeLater => 'Bəlkə sonra';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Salam $name, alış-verişinizi düzgün təşkil edin.';
  }

  @override
  String get onboardingSlide1Title => 'Ağıllı Alış-veriş Siyahıları';

  @override
  String get onboardingSlide1Body =>
      'Siyahıları dərhal yaradın və paylaşın. Kipi vərdişlərinizə əsasən elementləri avtomatik əlavə edir.';

  @override
  String get onboardingSlide2Title => 'Kipi ilə tanış olun';

  @override
  String get onboardingSlide2Body =>
      'İstənilən şeydən soruşun - siyahılar yaradın, reseptlər tapın, anbarınızı izləyin, həftənizi planlaşdırın.';

  @override
  String get onboardingSlide3Title => 'Kiler və Yemək Planlaması';

  @override
  String get onboardingSlide3Body =>
      'Əlinizdə olanları izləyin, yeməkləri planlaşdırın və avtomatik olaraq alış-veriş siyahıları yaradın.';

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
  String get paywallLoadingError =>
      'Təklifləri yükləmə xətası. Yenidən cəhd edin.';

  @override
  String get paywallPurchaseError =>
      'Satınalmanı tamamlamaq mümkün olmadı. Yenidən cəhd edin.';

  @override
  String get paywallRestoreError => 'Bərpa etmək üçün aktiv abunə tapılmadı.';

  @override
  String paywallTrialDays(Object days) {
    return '$days GÜNLƏR PULSUZ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count HƏFTƏLƏR PULSUZ',
      one: '$count HƏFTƏ PULSUZ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count AYLAR PULSUZ',
      one: '$count AY PULSUZ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'KipiList Pro-nu 7 gün pulsuz sınayın';

  @override
  String get paywallTrialSubtitle =>
      'İstənilən vaxt ləğv edin. Bu gün ödəniş yoxdur.';

  @override
  String get paywallTrialCta => 'Pulsuz sınağa başlayın';

  @override
  String get recipeAddToList => 'Alış-veriş siyahısına əlavə edin';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count inqrediyentlər $listName-a əlavə edildi';
  }

  @override
  String get noListSelected => 'Siyahı seçilməyib. Əvvəlcə siyahını açın.';

  @override
  String get paywallFeaturesTitle => 'Sizə lazım olan hər şey:';

  @override
  String get paywallFeatureUnlimitedLists => 'Limitsiz Siyahılar';

  @override
  String get paywallFeatureSmartAI => 'Ağıllı AI';

  @override
  String get paywallFeatureExpenseControl => 'Xərclərə nəzarət';

  @override
  String get paywallFeatureSharing => 'Paylaşma';

  @override
  String get paywallBeforeAfterTitle => 'AI əvvəl və sonra:';

  @override
  String get paywallLabelCommon => 'Ümumi';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'düyü';

  @override
  String get paywallBeforeItem2 => 'sabun';

  @override
  String get paywallBeforeItem3 => 'ət';

  @override
  String get paywallBeforeItem4 => 'çörək';

  @override
  String get paywallAfterItem1 => 'Taxıllar';

  @override
  String get paywallAfterItem2 => 'Təmizləmə';

  @override
  String get paywallAfterItem3 => 'Ətlər';

  @override
  String get paywallAfterItem4 => 'Çörəkxana';

  @override
  String get paywallTestimonialsTitle => 'İstifadəçilərimiz nə deyir:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI mənim alış-verişimi saniyələr ərzində təşkil edir. Hər bazar səfərinə 20 dəqiqə qənaət edirəm.';

  @override
  String get paywallTestimonial2Name => 'Çarlz M.';

  @override
  String get paywallTestimonial2Text =>
      'Bir daha siyahıda bir elementi unutmadım. AI söhbəti sensasiyalıdır!';

  @override
  String get paywallSocialProof => '+2400 ailə ondan istifadə edir';

  @override
  String get paywallCtaUnlock => 'PRO kilidini açın';

  @override
  String get paywallBestValue => 'ƏN YAXŞI DƏYƏR';

  @override
  String get paywallMostPopular => 'ƏN POPULLAR';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Təhlükəsiz ödəniş';

  @override
  String get paywallSelectPlan => 'Planınızı seçin:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% QƏNAƏT';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Yalnız $price/ay';
  }

  @override
  String get paywallPackageAnnual => 'İllik Plan';

  @override
  String get paywallPackageMonthly => 'Aylıq Plan';

  @override
  String get paywallPackageLifetime => 'Ömürlük Giriş';

  @override
  String get paywallCancelAnytime =>
      'İstənilən vaxt ləğv edin. Öhdəlik yoxdur.';

  @override
  String paywallTrialInCard(int days) {
    return 'İlk $days gün PULSUZ';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Play tərəfindən qorunur · İstənilən vaxt ləğv edin';

  @override
  String get paywallPolicy => 'Məxfilik Siyasəti';

  @override
  String get paywallTerms => 'İstifadə şərtləri';

  @override
  String get paywallRestore => 'Bərpa et';

  @override
  String get paywallHeroHeadline => 'Kipi AI həmişə sənin yanındadır';

  @override
  String get paywallHeroSubtitle =>
      'Cibinizdə AI ilə elementlər əlavə edin, siyahıları təşkil edin və vaxtınıza qənaət edin';

  @override
  String get paywallBenefit1Desc =>
      '24/7 maddələr əlavə edir, təşkil edir və təklif edir';

  @override
  String get paywallBenefit2Desc => '3 siyahı limiti yoxdur';

  @override
  String get paywallBenefit3Desc => 'Xərclərin izlənməsi və ailə siyahıları';

  @override
  String get paywallPackageMonthlyDesc => 'Tam çeviklik';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Ödənişsiz başlayın — $days gün';
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

  @override
  String get gestureHint =>
      'Seçmək üçün basıb saxlayın • Silmək üçün sürüşdürün';

  @override
  String get catalogTitle => 'Kataloq';

  @override
  String get catalogMyFrequents => 'Mənim Tez-tez';

  @override
  String get catalogSearchGlobal => 'İstənilən məhsulu axtarın...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category içində axtar...';
  }

  @override
  String get catalogSortPopular => 'Ən populyar';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Millilər';

  @override
  String get catalogRareSection => 'ölkənizdə daha az yayılmışdır';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 əlavə edin →';
  }

  @override
  String get catalogProductNotFound => 'Məhsul tapılmadı, adı yazın';

  @override
  String get catalogBrowse => 'Kataloqu nəzərdən keçirin';

  @override
  String get offlineBanner => 'Siz oflaynsınız';

  @override
  String get consentTitle => 'Məxfilik və Analitika';

  @override
  String get consentBody =>
      'KipiList təcrübənizi təkmilləşdirmək üçün Firebase Analytics istifadə edir. Məlumatlarınız Məxfilik Siyasətimizə uyğun olaraq işlənir.';

  @override
  String get consentAccept => 'Qəbul edin';

  @override
  String get consentDecline => 'Yox, sağ olun';

  @override
  String get mealPlannerPantryAllAvailable => 'Stokda var';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count çatışmayan element',
      one: '$count çatışmayan element',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'İstifadə müddəti';

  @override
  String get notInformed => 'Məlumatlı deyil';

  @override
  String get skip => 'Keç';

  @override
  String get onboardingAiTitle => 'Kipi ilə söhbət edin';

  @override
  String get onboardingAiGreeting =>
      'salam! Mən sizin şəxsi alış-veriş köməkçiniz Kipiyəm! 🛒';

  @override
  String get onboardingAiAskName => 'sənin adın nədir?';

  @override
  String get onboardingAiNameHint => 'Adınızı yazın...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Tanış olmaqdan məmnunam, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Ən sevdiyiniz yemək hansıdır?';

  @override
  String get onboardingAiFoodHint => 'məs. Pizza, suşi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Əla seçimlər! Siyahınıza əlavə edəcəyim budur:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Bu yaxşı görünür? Başqa bir şey yazmağa çalışın!';

  @override
  String get onboardingAiReady =>
      'Əla! Siz başlamağa hazırsınız. Gəlin hesabınızı quraşdıraq!';

  @override
  String get onboardingAiContinue => 'Davam et →';

  @override
  String get errorRenderScreen =>
      'Vay! Bu ekranı təqdim edərkən xəta baş verdi.';

  @override
  String get connectionError => 'Bağlantı xətası';

  @override
  String connectionErrorDesc(Object error) {
    return 'Serverə qoşulmaq mümkün olmadı. İnternetinizi yoxlayın.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Siyahıları yükləmə xətası';

  @override
  String get noListsFound => 'Heç bir siyahı tapılmadı';

  @override
  String get unlockPremiumTitle =>
      'Limitsiz siyahıları, AI və daha çoxunu açın';

  @override
  String get loadingSubscription => 'Abunəlik yüklənir...';

  @override
  String get errorLoadingSubscription => 'Abunəlik yüklənərkən xəta baş verdi';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Profilim';

  @override
  String get profileSubtitle => 'AI köməkçisi üçün şəxsi üstünlüklər';

  @override
  String get manageCategories => 'Kateqoriyaları idarə edin';

  @override
  String get manageCategoriesSubtitle => 'Element kateqoriyalarını idarə edin';

  @override
  String get profileSaved => 'Profil uğurla yadda saxlandı!';

  @override
  String errorSavingProfile(Object error) {
    return 'Yadda saxlama xətası: $error';
  }

  @override
  String get userProfile => 'İstifadəçi Profili';

  @override
  String get saveProfile => 'Profili yadda saxla';

  @override
  String get profileDescription =>
      'Şəxsi seçimlərinizi bizə bildirin ki, AI köməkçisi fərdiləşdirilmiş əşyalar və reseptlər təklif edə bilsin.';

  @override
  String get preferredMarket => 'Üstünlük Verilən Bazar';

  @override
  String get preferredMarketHint => 'Məsələn: Supermarket X';

  @override
  String get dietaryRestrictions => 'Pəhriz məhdudiyyətləri';

  @override
  String get dietaryRestrictionsHint => 'Məsələn: vegan, vegetarian, qlütensiz';

  @override
  String get marketsToAvoid => 'Qaçılması lazım olan bazarlar';

  @override
  String get marketsToAvoidHint => 'Məsələn: Y bazarı, Z bazarı';

  @override
  String get observations => 'Qeydlər';

  @override
  String get observationsHint => 'Köməkçi üçün digər üstünlüklər';

  @override
  String get manageCategoriesTitle => 'Kateqoriyaları idarə edin';

  @override
  String get categoryLimitReached =>
      'Pulsuz versiyada 10 kateqoriya limiti. Pro-a yüksəldin!';

  @override
  String get noCategories => 'Kateqoriya yoxdur.';

  @override
  String get deleteCategoryTitle => 'Kateqoriyanı silin';

  @override
  String deleteCategoryConfirm(Object category) {
    return '\"$category\" kateqoriyasındakı elementlər \"Başqaları\"na köçürüləcək.\nDavam edilsin?';
  }

  @override
  String get deleteCategory => 'Sil';

  @override
  String get myAchievements => 'Nailiyyətlərim';

  @override
  String get itemsPurchased => 'Alınan Əşyalar';

  @override
  String get totalSavings => 'Ümumi qənaət';

  @override
  String get currentStreak => 'Cari zolaq';

  @override
  String streakDays(Object days) {
    return '$days gün';
  }

  @override
  String get chooseThemeColor => 'Mövzu Rəngini seçin';

  @override
  String get errorLoadingHistory => 'Tarixçəni yükləmə xətası';

  @override
  String get deleteConversationTitle => 'Söhbət silinsin?';

  @override
  String get deleteConversationConfirm => 'Bu əməliyyat geri qaytarıla bilməz.';

  @override
  String get deleteConversation => 'Sil';

  @override
  String get unlockWithAd => 'Reklam ilə kilidini açın';

  @override
  String get aiPremiumDescription =>
      'Bu interaktiv interfeys qabaqcıl süni intellektdən istifadə edir və yalnız Pro üzvlərinə və ya sürətli reklam vasitəsilə verilir.';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get categoryNameHint => 'Məsələn: Ət';

  @override
  String get color => 'Rəng:';

  @override
  String get icon => 'İşarə:';

  @override
  String get scanBarcode => 'Barkodu skan edin';

  @override
  String get scanProduct => 'Məhsulu Skanlayın';

  @override
  String get positionBarcodeCenter => 'Barkodu mərkəzə yerləşdirin';

  @override
  String replaceItem(Object name) {
    return '$name dəyişdirin';
  }

  @override
  String get selectCheaperAlternative =>
      'Xərcləri optimallaşdırmaq üçün daha ucuz məhsul alternativi seçin.';

  @override
  String get swap => 'Mübadilə';

  @override
  String itemAdded(Object name) {
    return '$name əlavə edildi';
  }

  @override
  String errorLoadingProducts(Object error) {
    return 'Məhsulları yükləmə xətası: $error';
  }

  @override
  String get mealType => 'Yemək növü';

  @override
  String get requestTimeout => 'Üzr istəyirik, sorğunun vaxtı bitdi.';

  @override
  String get connectionError2 => 'Bağışlayın, əlaqə xətası baş verdi.';

  @override
  String get addingItems => 'Siyahıya elementlər əlavə edilir...';

  @override
  String get removingItems => 'Elementlər silinir...';

  @override
  String get updatingItem => 'Element yenilənir...';

  @override
  String get checkingItem => 'Element yoxlanılır...';

  @override
  String get uncheckingItem => 'Elementin işarəsi silinir...';

  @override
  String get clearingCheckedItems => 'Yoxlanmış elementlər silinir...';

  @override
  String get reorganizingList => 'Siyahı yenidən təşkil edilir...';

  @override
  String get creatingNewList => 'Yeni siyahı yaradılır...';

  @override
  String get removingList => 'Siyahı silinir...';

  @override
  String get renamingList => 'Siyahının adı dəyişdirilir...';

  @override
  String get queryingYourLists => 'Siyahılarınız sorğulanır...';

  @override
  String get settingBudget => 'Büdcə təyin edilir...';

  @override
  String get checkingPantry => 'Anbarınız yoxlanılır...';

  @override
  String get addingToPantry => 'Anbara əlavə olunur...';

  @override
  String get removingFromPantry => 'Anbardan çıxarılır...';

  @override
  String get updatingPantry => 'Kiler yenilənir...';

  @override
  String get savingRecipe => 'Resept yadda saxlanılır...';

  @override
  String get searchingRecipes => 'Reseptlər axtarılır...';

  @override
  String get removingRecipe => 'Resept silinir...';

  @override
  String get addingIngredientsToList =>
      'Siyahıya inqrediyentlər əlavə edilir...';

  @override
  String get organizingMenu => 'Menyunuz təşkil edilir...';

  @override
  String get loadingMenu => 'Menyunuz yüklənir...';

  @override
  String get updatingMenu => 'Menyu yenilənir...';

  @override
  String get searchingCategories => 'Kateqoriyalar axtarılır...';

  @override
  String get categorizingItems => 'Elementlər təsnif edilir...';

  @override
  String get generatingShareLink => 'Paylaşım linki yaradılır...';

  @override
  String get searchingSharedList => 'Paylaşılan siyahı axtarılır...';

  @override
  String get loadingProfile => 'Profiliniz yüklənir...';

  @override
  String get savingPreferences => 'Tercihləriniz yadda saxlanılır...';

  @override
  String get checkingSettings => 'Parametrləriniz yoxlanılır...';

  @override
  String get generatingContent => 'Fərdiləşdirilmiş məzmun yaradılır...';

  @override
  String get searchingProducts => 'Məhsullar axtarılır...';

  @override
  String get estimatingPrices => 'Qiymətlər təxmin edilir...';

  @override
  String get processing => 'Emal edilir...';

  @override
  String get shoppingList => 'Alış-veriş siyahısı';

  @override
  String get purchasedSuffix => '[Satın alındı]';

  @override
  String get listUnarchived => 'Siyahı uğurla arxivdən çıxarıldı.';

  @override
  String get toolDeleteList => 'Siyahını silin';

  @override
  String get toolAddItems => 'Elementlər əlavə edin';

  @override
  String get toolRemoveItems => 'Elementləri çıxarın';

  @override
  String get toolAddToPantry => 'Anbara əlavə edin';

  @override
  String get toolRemoveFromPantry => 'Kilerdən çıxarın';

  @override
  String get toolShareList => 'Paylaşma siyahısı';

  @override
  String get toolSaveRecipe => 'Resepti yadda saxla';

  @override
  String get toolDeleteRecipe => 'Resepti silin';

  @override
  String get toolRemoveMeal => 'Yeməyi çıxarın';

  @override
  String get toolSavePreference => 'Tercihi yadda saxla';

  @override
  String get toolRemovePreference => 'Üstünlükləri silin';

  @override
  String currentTheme(Object mode) {
    return 'Cari mövzu: $mode';
  }

  @override
  String themeChanged(Object mode) {
    return 'Mövzu $mode olaraq dəyişdirildi.';
  }

  @override
  String get addToList => 'Siyahıya əlavə et';

  @override
  String errorAddingItem(Object error) {
    return 'Element əlavə edərkən xəta: $error';
  }

  @override
  String errorAddingBatch(Object error) {
    return 'Toplu elementləri əlavə edərkən xəta oldu: $error';
  }

  @override
  String errorTogglingItem(Object error) {
    return 'Element statusunu dəyişərkən xəta oldu: $error';
  }

  @override
  String errorRemovingItem(Object error) {
    return 'Elementi silərkən xəta: $error';
  }

  @override
  String errorUpdatingItem(Object error) {
    return 'Elementi yeniləyərkən xəta: $error';
  }

  @override
  String errorUpdatingItems(Object error) {
    return 'Elementlərin yenilənməsi xətası: $error';
  }

  @override
  String errorRestoringItem(Object error) {
    return 'Elementi bərpa edərkən xəta: $error';
  }

  @override
  String errorIncreasingQty(Object error) {
    return 'Kəmiyyəti artırmaq xətası: $error';
  }

  @override
  String errorDecreasingQty(Object error) {
    return 'Kəmiyyəti azaltma xətası: $error';
  }

  @override
  String errorClearingList(Object error) {
    return 'Siyahını silərkən xəta: $error';
  }

  @override
  String errorClearingPurchased(Object error) {
    return 'Satın alınan elementləri silərkən xəta oldu: $error';
  }

  @override
  String errorRemovingItems(Object error) {
    return 'Elementlərin silinməsi xətası: $error';
  }

  @override
  String errorTogglingItems(Object error) {
    return 'Elementlərin dəyişdirilməsi xətası: $error';
  }

  @override
  String errorReordering(Object error) {
    return 'Elementi yenidən sıralamaq xətası: $error';
  }

  @override
  String get errorCreatingList => 'Siyahı yaratmaq xətası';

  @override
  String errorServerConnection(Object error) {
    return 'Serverə qoşulma xətası: $error';
  }

  @override
  String errorUpdatingList(Object error) {
    return 'Siyahını yeniləyərkən xəta oldu: $error';
  }

  @override
  String errorDeletingList(Object error) {
    return 'Siyahını silərkən xəta oldu: $error';
  }

  @override
  String errorRemovingSharedList(Object error) {
    return 'Paylaşılan siyahını silərkən xəta oldu: $error';
  }

  @override
  String errorSettingCurrentList(Object error) {
    return 'Cari siyahını təyin edərkən xəta baş verdi: $error';
  }

  @override
  String errorArchivingList(Object error) {
    return 'Siyahı arxivləşdirmə xətası: $error';
  }

  @override
  String errorUnarchivingList(Object error) {
    return 'Siyahının arxivdən çıxarılması xətası: $error';
  }

  @override
  String get errorUserNotAuthenticated =>
      'İstifadəçinin kimliyi təsdiqlənməyib.';

  @override
  String get errorGeneratingCode =>
      'Unikal kodun yaradılması xətası. Yenidən cəhd edin.';

  @override
  String pantryLimitReached(Object count) {
    return 'Pulsuz planda kilerdə $count element limiti. Daha çox əlavə etmək üçün təkmilləşdirin.';
  }

  @override
  String errorImportingList(Object name, Object error) {
    return '\"$name\" siyahısını idxal edərkən xəta oldu: $error';
  }

  @override
  String errorExecutingTool(Object tool, Object error) {
    return '$tool icrasında xəta: $error';
  }

  @override
  String get errorProcessingRequest =>
      'Sorğunuzu emal edərkən xəta baş verdi. Bağlantınızı yoxlayın və ya daha sonra yenidən cəhd edin.';

  @override
  String get couldNotProcess => 'Çox cəhddən sonra emal etmək mümkün olmadı.';

  @override
  String get errorResumingProcessing => 'Emalı bərpa edərkən xəta baş verdi.';

  @override
  String get errorResumingLoop => '[ResumeLoop] Döngəni davam etdirmək xətası';

  @override
  String get othersCategory => 'Digərləri';

  @override
  String get monthJanuary => 'yanvar';

  @override
  String get monthFebruary => 'fevral';

  @override
  String get monthMarch => 'mart';

  @override
  String get monthApril => 'aprel';

  @override
  String get monthMay => 'may';

  @override
  String get monthJune => 'iyun';

  @override
  String get monthJuly => 'iyul';

  @override
  String get monthAugust => 'avqust';

  @override
  String get monthSeptember => 'sentyabr';

  @override
  String get monthOctober => 'oktyabr';

  @override
  String get monthNovember => 'noyabr';

  @override
  String get monthDecember => 'dekabr';

  @override
  String get dayMon => 'Bazar ertəsi';

  @override
  String get dayTue => 'Çərşənbə axşamı';

  @override
  String get dayWed => 'Çərşənbə';

  @override
  String get dayThu => 'Cr';

  @override
  String get dayFri => 'Cümə';

  @override
  String get daySat => 'şənbə';

  @override
  String get daySun => 'Günəş';

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
  String get backToToday => 'Bu günə qayıt';

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
