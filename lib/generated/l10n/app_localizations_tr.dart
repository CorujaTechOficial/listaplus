// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Alışveriş Listesi';

  @override
  String get lists => 'Listeler';

  @override
  String get pantry => 'Kiler';

  @override
  String get cancel => 'İptal';

  @override
  String get save => 'Kaydet';

  @override
  String get create => 'Oluştur';

  @override
  String get add => 'Ekle';

  @override
  String get remove => 'Kaldır';

  @override
  String get delete => 'Sil';

  @override
  String get edit => 'Düzenle';

  @override
  String get copy => 'Kopyala';

  @override
  String get next => 'Sonraki';

  @override
  String get retry => 'Tekrar dene';

  @override
  String get regenerate => 'Yeniden oluştur';

  @override
  String get copiedToClipboard => 'Panoya kopyalandı';

  @override
  String get confirm => 'Onayla';

  @override
  String get close => 'Kapat';

  @override
  String get import => 'İçe aktar';

  @override
  String get rename => 'Yeniden adlandır';

  @override
  String get upgrade => 'Yükselt';

  @override
  String get clear => 'Temizle';

  @override
  String error(String message) {
    return 'Hata: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Hata: $message';
  }

  @override
  String get purchaseError =>
      'Satın alma işlenirken hata oluştu. Tekrar deneyin.';

  @override
  String get restoreError =>
      'Satın almalar geri yüklenirken hata oluştu. Tekrar deneyin.';

  @override
  String get loading => 'Yükleniyor...';

  @override
  String get fieldRequired => 'Gerekli alan';

  @override
  String get addedFeedback => 'Eklendi!';

  @override
  String selectedItems(int count) {
    return '$count seçili';
  }

  @override
  String get estimated => 'Tahmini';

  @override
  String get alreadyPurchased => 'Zaten satın alındı';

  @override
  String get clearList => 'Listeyi temizle';

  @override
  String get clearPurchased => 'Satın alınanları temizle';

  @override
  String get share => 'Paylaş';

  @override
  String get shareViaCode => 'Kodla paylaş';

  @override
  String get importViaCode => 'Kodla içe aktar';

  @override
  String get listAssistant => 'Liste asistanı';

  @override
  String get globalAssistant => 'Genel asistan';

  @override
  String get becomePremium => 'Premium Ol';

  @override
  String get manageSubscription => 'Aboneliği yönet';

  @override
  String get completePurchase => 'Satın almayı tamamla';

  @override
  String get confirmClearList => 'Tüm öğeler kaldırılsın mı?';

  @override
  String get shareListTitle => 'Listeyi Paylaş';

  @override
  String get shareThisCode => 'Bu kodu paylaşın:';

  @override
  String get validForLimitedTime => 'Sınırlı süre için geçerlidir';

  @override
  String get importListTitle => 'Listeyi İçe Aktar';

  @override
  String get enterCodeHint => 'Kodu girin';

  @override
  String get confirmArchiveTitle => 'Satın Almayı Tamamla';

  @override
  String get confirmArchiveContent =>
      'Bu satın alma işlemini tamamlayıp listeyi arşivlesin mi?';

  @override
  String get complete => 'Tamamla';

  @override
  String get listArchived => 'Liste başarıyla arşivlendi!';

  @override
  String listAdded(String listName) {
    return '$listName eklendi!';
  }

  @override
  String get buy => 'Satın al';

  @override
  String get unmark => 'İşareti kaldır';

  @override
  String confirmDeleteItems(int count) {
    return '$count öğe kaldırılsın mı?';
  }

  @override
  String get confirmDeleteTitle => 'Onayla';

  @override
  String confirmContent(int count) {
    return '$count öğe kaldırılsın mı?';
  }

  @override
  String get archiveList => 'Listeyi arşivle';

  @override
  String get pantryAppBar => 'Kiler';

  @override
  String get generateShoppingList => 'Alışveriş listesi oluştur';

  @override
  String get pantryEmpty => 'Boş kiler';

  @override
  String get pantryEmptySubtitle =>
      'Evde bulundurmak istediğiniz ürünleri ekleyin';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit öğenin satın alınması gerekiyor';
  }

  @override
  String get noItemsToBuy => 'Satın alınması gereken öğe yok';

  @override
  String get newPantryList => 'Kiler Alışverişi';

  @override
  String get newListTitle => 'Yeni Alışveriş Listesi';

  @override
  String itemsWillBeAdded(int count) {
    return '$count öğe eklenecek';
  }

  @override
  String get listNameLabel => 'Liste adı';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" listesi $count öğe ile oluşturuldu';
  }

  @override
  String get noTracking => 'Takip yok';

  @override
  String get markAsPurchased => 'Satın alındı olarak işaretle';

  @override
  String editPantryItem(String name) {
    return '$name düzenle';
  }

  @override
  String get idealQuantity => 'İdeal miktar';

  @override
  String get currentQuantity => 'Mevcut miktar';

  @override
  String get consumed => 'Tüketildi';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit olarak yenilendi';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" kilerden kaldırılsın mı?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name düzenle';
  }

  @override
  String get settingsAppBar => 'Ayarlar';

  @override
  String get language => 'Dil';

  @override
  String get languagePortuguese => 'Portekizce (Brezilya)';

  @override
  String get languageEnglish => 'İngilizce';

  @override
  String get languageSystem => 'Sistem varsayılanı';

  @override
  String get chooseLanguage => 'Dil Seçiniz';

  @override
  String get searchLanguage => 'Dil ara...';

  @override
  String get currency => 'Para birimi';

  @override
  String get chooseCurrency => 'Para Birimi Seçin';

  @override
  String get searchCurrency => 'Para birimini ara...';

  @override
  String get appearance => 'Görünüm';

  @override
  String get light => 'Aydınlık';

  @override
  String get system => 'Sistem';

  @override
  String get dark => 'Karanlık';

  @override
  String get themeColor => 'Tema rengi';

  @override
  String get dynamicColors => 'Dinamik renkler';

  @override
  String get dynamicColorsSubtitle => 'Duvar kağıdınıza göre renkler kullanın';

  @override
  String get dynamicColorsEnabledWarning =>
      'Tema renginin etkili olması için dinamik renkleri devre dışı bırakın';

  @override
  String get finance => 'Finans';

  @override
  String get monthlyBudgetNav => 'Aylık bütçe';

  @override
  String get budgetSubtitle => 'Aylık harcamalarınızı takip edin';

  @override
  String get data => 'Veri';

  @override
  String get backupNav => 'Yedekle';

  @override
  String get backupSubtitle => 'Verilerinizi dışa veya içe aktarın';

  @override
  String get about => 'Hakkında';

  @override
  String get version => 'Sürüm';

  @override
  String get privacy => 'Gizlilik';

  @override
  String get termsOfUse => 'Kullanım koşulları';

  @override
  String get backupTitle => 'Yedekleme';

  @override
  String get backupPremiumDescription =>
      'Yedekleme ve dışa aktarma bir premium özelliğidir';

  @override
  String get exportData => 'Veriyi dışa aktar';

  @override
  String get exportDataSubtitle => 'Tüm listeleri JSON olarak kaydedin';

  @override
  String get importData => 'Veriyi içe aktar';

  @override
  String get importDataSubtitle => 'JSON\'dan listeleri geri yükleyin';

  @override
  String get importJsonTitle => 'JSON İçe Aktar';

  @override
  String get importJsonHint => 'Yedek JSON\'u buraya yapıştırın...';

  @override
  String get backupExported => 'Yedek dışa aktarıldı!';

  @override
  String get budgetAppBar => 'Aylık Bütçe';

  @override
  String get budgetPremiumLocked => 'Genel aylık bütçe premium özelliktir';

  @override
  String get budgetUpgradePrompt => 'Kilidi açmak için yükseltin';

  @override
  String get noBudgetDefined => 'Bütçe belirlenmedi';

  @override
  String totalEstimated(String amount) {
    return 'Toplam tahmini: $amount';
  }

  @override
  String get setBudgetButton => 'Bütçe belirle';

  @override
  String get budgetLists => 'Listeler';

  @override
  String get budgetValueLabel => 'Tutar';

  @override
  String get setBudgetTitle => 'Aylık Bütçe';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tümü';

  @override
  String get filterPending => 'Bekleyen';

  @override
  String get filterPurchased => 'Satın alınanlar';

  @override
  String get sortName => 'Ad';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Tarih';

  @override
  String get sortManual => 'Manuel';

  @override
  String get addItem => 'Öğe Ekle';

  @override
  String get itemName => 'Öğe adı';

  @override
  String get quantityShort => 'Adet';

  @override
  String get unit => 'Birim';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Tahmini fiyat';

  @override
  String get addItemPrice => 'Tahmini fiyat';

  @override
  String get editItem => 'Öğeyi Düzenle';

  @override
  String get quantityFull => 'Miktar';

  @override
  String get editItemPrice => 'Tahmini fiyat';

  @override
  String get addToPantry => 'Kiler\'e Ekle';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" kilerinize eklensin mi?';
  }

  @override
  String get yes => 'Evet';

  @override
  String get productName => 'Ürün adı';

  @override
  String get idealQty => 'İdeal miktar';

  @override
  String get currentQty => 'Mevcut miktar';

  @override
  String get trackStock => 'Stok takibi';

  @override
  String get trackStockActive => 'Alışveriş önerilerinde görünür';

  @override
  String get trackStockInactive => 'Alışveriş önerisi oluşturmaz';

  @override
  String get createListDialog => 'Liste Oluştur';

  @override
  String get renameListDialog => 'Listeyi Yeniden Adlandır';

  @override
  String get listHistory => 'Liste Geçmişi';

  @override
  String get myLists => 'Listelerim';

  @override
  String get viewActive => 'Aktif Olanları Gör';

  @override
  String get viewHistory => 'Geçmişi Gör';

  @override
  String get noArchivedLists => 'Arşivlenmiş liste yok';

  @override
  String get noActiveLists => 'Aktif liste yok';

  @override
  String completedOn(String date) {
    return '$date tarihinde tamamlandı';
  }

  @override
  String get sharedLabel => 'Paylaşıldı';

  @override
  String get restore => 'Geri yükle';

  @override
  String get removeSharedTooltip => 'Kaldır';

  @override
  String get deleteListTitle => 'Listeyi sil';

  @override
  String deleteListContent(String name) {
    return '\"$name\" silmek istediğinize emin misiniz? Tüm öğeler kaldırılacak.';
  }

  @override
  String get removeSharedListTitle => 'Paylaşılan listeyi kaldır';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" listenizden kaldırılsın mı? Orijinal liste etkilenmeyecek.';
  }

  @override
  String get createNewList => 'Yeni liste oluştur';

  @override
  String get aiAssistant => 'AI Asistan';

  @override
  String get aiAssistantDescription =>
      'AI asistanımızla akıllı öneriler, tarifler ve kişiselleştirilmiş ipuçları alın.';

  @override
  String get generalAssistant => 'Genel Asistan';

  @override
  String get newChat => 'Yeni Sohbet';

  @override
  String get noHistory => 'Sohbet geçmişi yok';

  @override
  String get deleteSession => 'Sohbeti Sil';

  @override
  String get deleteSessionConfirm =>
      'Bu sohbeti silmek istediğinizden emin misiniz? Mesajlar kalıcı olarak kaybolacak.';

  @override
  String get clearHistory => 'Geçmişi Temizle';

  @override
  String get clearHistoryConfirm =>
      'Bu oturumdaki tüm mesajlar temizlensin mi?';

  @override
  String get chatHint => 'Mesajınızı yazın...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Sohbet yüklenirken hata: $error';
  }

  @override
  String get listHelp => 'Listenizle ilgili nasıl yardımcı olabilirim?';

  @override
  String get generalHelp =>
      'Bugün alışverişinizle ilgili nasıl yardımcı olabilirim?';

  @override
  String get chatSubtitle =>
      'Öğe önerileri, tarifler veya tasarruf ipuçları isteyin.';

  @override
  String get aiError =>
      'Üzgünüz, isteğiniz işlenirken bir hata oluştu. Bağlantınızı kontrol edin veya daha sonra tekrar deneyin.';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt =>
      'Premium özelliklerin\nkilidini açmak için giriş yapın';

  @override
  String get signInGoogle => 'Google ile giriş yap';

  @override
  String get signInApple => 'Apple ile giriş yap';

  @override
  String get continueAsGuest => 'Misafir olarak devam et';

  @override
  String get onboardingWelcomeTitle => 'KipiList\'a hoş geldiniz';

  @override
  String get onboardingWelcomeDesc =>
      'Alışverişinizi organize etmenin ve paradan tasarruf etmenin en akıllı yolu.';

  @override
  String get onboardingSetupTitle => 'Deneyiminizi kişiselleştirin';

  @override
  String get onboardingSetupDesc =>
      'KipiList\'ın sizin için nasıl görünmesini ve çalışmasını istediğinizi seçin.';

  @override
  String get onboardingLoginTitle => 'Her şeyi buluta kaydedin';

  @override
  String get onboardingLoginDesc =>
      'Verileriniz tüm cihazlarınızda senkronize edildi';

  @override
  String get onboardingShareTitle => 'Sevdiklerinizle paylaşın';

  @override
  String get onboardingShareDesc =>
      'Listeleri aileniz ve arkadaşlarınızla gerçek zamanlı olarak senkronize edin';

  @override
  String get onboardingPremiumTitle => 'Tüm özelliklerin kilidini açın';

  @override
  String get onboardingPremiumSubtitle =>
      'Alışveriş listelerinizden en iyi şekilde yararlanın';

  @override
  String get onboardingAnnualBadge => 'En İyi Değer';

  @override
  String get onboardingMonthlyLabel => 'Aylık';

  @override
  String get onboardingAnnualLabel => 'Yıllık';

  @override
  String get onboardingViewAllPlans => 'Tüm planları görüntüle';

  @override
  String get onboardingSubscribeCta => 'Abone';

  @override
  String get onboardingCancelAnytime =>
      'İstediğiniz zaman iptal edin. Taahhüt yok.';

  @override
  String get onboardingContinueAsGuest => 'Konuk olarak devam et';

  @override
  String get onboardingRestore => 'Eski haline getirmek';

  @override
  String get onboardingRestoreDesc =>
      'Zaten bir aboneliğiniz var mı? Geri yüklemek için buraya dokunun.';

  @override
  String get onboardingExit => 'Çıkış';

  @override
  String get onboardingPersonalizationTitle => 'Hadi seni tanıyalım';

  @override
  String get onboardingPersonalizationDesc =>
      'Bunu önerilerinizi kişiselleştirmek ve alışverişi daha akıllı hale getirmek için kullanacağız.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'En sevdiğiniz yemek hangisi?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'örneğin Pizza, Suşi, Lazanya...';

  @override
  String get onboardingPersonalizationCta => 'Devam etmek';

  @override
  String get onboardingPersonalizationSkip => 'Şimdilik atla';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Devam etmek için bize en sevdiğiniz yemeği söyleyin';

  @override
  String get settingsDefaultScreen => 'Varsayılan ana ekran';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Alışveriş listesi veya AI sohbeti arasında seçim yapın';

  @override
  String get settingsScreenList => 'Alışveriş listesi';

  @override
  String get settingsScreenChat => 'Yapay Zeka Sohbeti';

  @override
  String loginError(String error) {
    return 'Giriş hatası: $error';
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
  String get premiumUpgrade => 'Kilidi açmak için yükseltin';

  @override
  String get itemRemoved => 'Öğe kaldırıldı';

  @override
  String get undo => 'Geri al';

  @override
  String get emptyListTitle => 'Listeniz boş';

  @override
  String get emptyListSubtitle => 'Başlamak için öğe ekleyin';

  @override
  String get noListFoundTitle => 'Liste bulunamadı';

  @override
  String get noListFoundSubtitle => 'Başlamak için ilk listenizi oluşturun';

  @override
  String get createFirstList => 'İlk Listeyi Oluştur';

  @override
  String get listBudgetTitle => 'Liste Bütçesi';

  @override
  String get budgetAmountLabel => 'Bütçe tutarı';

  @override
  String get removeBudget => 'Kaldır';

  @override
  String get prefUnlimitedLists => 'Sınırsız liste';

  @override
  String get prefSharing => 'Listeleri paylaş';

  @override
  String get prefFullHistory => 'Tam geçmiş';

  @override
  String get prefExportData => 'Veriyi dışa aktar';

  @override
  String get prefCustomThemes => 'Özel temalar';

  @override
  String get prefMonthlyBudget => 'Genel aylık bütçe';

  @override
  String get prefAIAssistant => 'Kişisel AI Asistan';

  @override
  String get prefUnlimitedPantry => 'Sınırsız kiler';

  @override
  String get prefInteractiveArtifacts => 'Etkileşimli AI Yapay Ürünleri';

  @override
  String get themeGreen => 'Yeşil';

  @override
  String get themeBlue => 'Mavi';

  @override
  String get themePurple => 'Mor';

  @override
  String get themeRed => 'Kırmızı';

  @override
  String get themeOrange => 'Turuncu';

  @override
  String get themePink => 'Pembe';

  @override
  String get themeIndigo => 'Çivit';

  @override
  String get themeAmber => 'Kehribar';

  @override
  String get themeTeal => 'Deniz yeşili';

  @override
  String get themeBrown => 'Kahverengi';

  @override
  String get catFruits => 'Meyve';

  @override
  String get catCleaning => 'Temizlik';

  @override
  String get catBeverages => 'İçecekler';

  @override
  String get catBakery => 'Fırın';

  @override
  String get catOthers => 'Diğer';

  @override
  String get unitPack => 'paket';

  @override
  String get shareSubject => 'Alışveriş Listesi';

  @override
  String get monthlyBudgetTitle => 'Aylık Bütçe';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Listeyi sil';

  @override
  String get pantryItemRemoved => 'Öğe kaldırıldı';

  @override
  String deficitItems(int deficit) {
    return '$deficit öğenin satın alınması gerekiyor';
  }

  @override
  String get cartTotal => 'Sepet toplamı';

  @override
  String get restockLabel => 'Yenile';

  @override
  String get advancedFeatures => 'Gelişmiş özellikler';

  @override
  String get selectAll => 'Tümünü seç';

  @override
  String get deselectAll => 'Tümünün seçimini kaldır';

  @override
  String get monthlyBudgetAppBar => 'Aylık Bütçe';

  @override
  String get budgetEditTitle => 'Aylık Bütçe';

  @override
  String get budgetDashboardTitle => 'Kontrol Paneli';

  @override
  String get selectListForDashboard =>
      'Kontrol panelini görüntülemek için bir liste seçin.';

  @override
  String get spendingAnalysis => 'Harcama Analizi';

  @override
  String get noItemsToAnalyze => 'Analiz edilecek listede öğe yok.';

  @override
  String get markItemsToSeeAnalysis =>
      'Analizi görmek için öğeleri satın alındı olarak işaretleyin.';

  @override
  String get totalSpending => 'Toplam Harcama';

  @override
  String get spendingByCategory => 'Kategoriye Göre Harcama';

  @override
  String get achievements => 'Başarılar';

  @override
  String get exportPdfExcel => 'PDF/Excel Dışa Aktar';

  @override
  String get exportPdf => 'PDF olarak dışa aktar';

  @override
  String get exportExcel => 'Excel olarak dışa aktar';

  @override
  String get organizingAi => 'AI İLE DÜZENLENİYOR...';

  @override
  String get yesLabel => 'Evet';

  @override
  String get noLabel => 'Hayır';

  @override
  String get shareListText => 'Alışveriş Listem';

  @override
  String get emptyListAddItems => 'Listeniz boş! Önce öğe ekleyin. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Liste kategorilere göre sihirli bir şekilde düzenlendi! ✨';

  @override
  String get shoppingMode => 'Alışveriş Modu';

  @override
  String get smartOrganization => 'Akıllı Düzenleme';

  @override
  String get savings => 'Tasarruf';

  @override
  String get shoppingModeHeader => 'ALIŞVERİŞ MODU';

  @override
  String get shareAsText => 'Öğeleri biçimlendirilmiş metin olarak gönder';

  @override
  String get shareRealtime => 'Diğer kişilerle gerçek zamanlı senkronizasyon';

  @override
  String get quickRecipe => 'Hızlı tarif';

  @override
  String get quickRecipePrompt => 'Listemdeki öğelerle tarif öner.';

  @override
  String get economyTips => 'Tasarruf ipuçları';

  @override
  String get economyTipsPrompt => 'Bu alışverişte nasıl para biriktirebilirim?';

  @override
  String get organizeAisles => 'Reyonlara göre düzenle';

  @override
  String get organizeAislesPrompt => 'Market reyonlarına göre düzenle.';

  @override
  String get recipeSuggestion => 'Tarif önerisi';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kredi kaldı';
  }

  @override
  String get addAllToList => 'Tümünü listeye ekle';

  @override
  String get organizeByAisles => 'Reyonlara göre düzenle';

  @override
  String get voiceTranscriptionTooltip => 'Sesle yazma (Ücretsiz)';

  @override
  String get aiVoiceCommandTooltip => 'AI Ses Komutu (Premium)';

  @override
  String get voiceCommandTitle => 'AI Ses Komutu';

  @override
  String get voiceCommandContent =>
      'Listenizi yönetmek için doğal bir şekilde konuşun!\n\nÖrnekler:\n• \'Ekmek, peynir ve jambon ekle\'\n• \'Çamaşır deterjanını kaldır\'\n• \'Temayı mavi yap\'\n\nBu, KipiList Premium\'un özel bir özelliğidir.';

  @override
  String get voiceCommandPlanBtn => 'Planları Gör';

  @override
  String get itemsAddedSuccess => 'Öğeler listeye başarıyla eklendi!';

  @override
  String get viewList => 'Listeyi görüntüle';

  @override
  String get feedbackTitle => 'Geri Bildirim Gönder';

  @override
  String get feedbackPrompt => 'Ne paylaşmak istersiniz?';

  @override
  String get feedbackTypeBug => 'Hata Bildir';

  @override
  String get feedbackTypeBugHint => 'Bir şey çalışmıyor';

  @override
  String get feedbackTypeSuggestion => 'Öneri';

  @override
  String get feedbackTypeSuggestionHint => 'Uygulamayı geliştirme fikri';

  @override
  String get feedbackTypeTranslation => 'Çeviri Sorunu';

  @override
  String get feedbackTypeTranslationHint => 'Yanlış veya doğal olmayan çeviri';

  @override
  String get feedbackTypeFeature => 'Özellik Talebi';

  @override
  String get feedbackTypeFeatureHint => 'Görmek istediğiniz özellik';

  @override
  String get feedbackTypeOther => 'Diğer';

  @override
  String get feedbackTypeOtherHint => 'Diğer geri bildirim türü';

  @override
  String get feedbackHint => 'Geri bildiriminizi ayrıntılı olarak açıklayın...';

  @override
  String get feedbackSend => 'Geri Bildirim Gönder';

  @override
  String get feedbackSending => 'Gönderiliyor...';

  @override
  String get feedbackThankYou => 'Teşekkürler!';

  @override
  String get feedbackThankYouMessage =>
      'Geri bildiriminiz alındı ve KipiList\'ı herkes için iyileştirmemize yardımcı oluyor.';

  @override
  String get feedbackBack => 'Geri';

  @override
  String feedbackError(String error) {
    return 'Gönderme hatası: $error';
  }

  @override
  String get feedbackRetry => 'Tekrar dene';

  @override
  String get feedbackSettingsTitle => 'Geri Bildirim Gönder';

  @override
  String get feedbackSettingsSubtitle =>
      'Hataları bildirin, iyileştirmeler önerin veya çevirileri düzeltin';

  @override
  String get aiEnergy => 'Yapay Zeka Enerjisi';

  @override
  String get searchInConversation => 'Görüşmede ara...';

  @override
  String get noMessagesFound => 'Mesaj bulunamadı';

  @override
  String get suggestedQuestions => 'Önerilen sorular:';

  @override
  String get shoppingAssistant => 'Alışveriş asistanı';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased / $total satın alındı';
  }

  @override
  String get estimatedCost => 'Tahmini';

  @override
  String get viewItems => 'Öğeleri görüntüle';

  @override
  String get noItemsInList => 'Listede öğe yok';

  @override
  String get longHistoryWarning =>
      'Uzun geçmiş: Asistan, daha iyi performans için en son mesajlara odaklanır.';

  @override
  String get listening => 'Dinleme...';

  @override
  String get addDirectToList => 'Doğrudan listeye ekle';

  @override
  String get unlockFullResponse => 'Tam Yanıtın Kilidini Aç';

  @override
  String get switchList => 'Listeyi değiştir';

  @override
  String get marketMode => 'Piyasa Modu';

  @override
  String get backToChat => 'Sohbete Geri Dön';

  @override
  String get finishShopping => 'Alışverişi Bitir';

  @override
  String get welcomeAiAssistant => 'AI Assistant\'a hoş geldiniz';

  @override
  String get createListToStartAi =>
      'Akıllı sohbeti kullanmaya başlamak için bir alışveriş listesi oluşturun.';

  @override
  String get howCanIHelp => 'Nasıl yardımcı olabilirim?';

  @override
  String get chatSubtitleShort =>
      'Fiyatlar, tarifler, organizasyon hakkında bilgi alın...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total satın alındı';
  }

  @override
  String get quickReplies => 'Hızlı yanıtlar:';

  @override
  String get voiceProFeature =>
      'Gelişmiş sesli komutlar Pro\'dur. Temel dikte etkinleştiriliyor...';

  @override
  String get viewPro => 'Pro\'yu Görüntüle';

  @override
  String get errorLoadingChat =>
      'Hata! Sohbet yüklenirken bir şeyler ters gitti.';

  @override
  String get errorLoadingChatSubtitle =>
      'Bağlantınızı kontrol edin veya daha sonra tekrar deneyin.';

  @override
  String get errorOscillation =>
      'Bu, ağ salınımları veya geçici olarak kullanılamama nedeniyle meydana gelebilir. Lütfen tekrar deneyin.';

  @override
  String get activeListening => 'Aktif Dinleme';

  @override
  String get whatToDoWithItem => 'Bu eşyayla ne yapmak istersiniz?';

  @override
  String get viewDetails => 'Ayrıntıları Görüntüle';

  @override
  String get openMenu => 'Menüyü aç';

  @override
  String get viewRecipe => 'Tarifi Görüntüle';

  @override
  String get recipeCreated => 'Tarif oluşturuldu!';

  @override
  String get editRecipe => 'Düzenlemek';

  @override
  String get deleteRecipe => 'Silmek';

  @override
  String get deleteRecipeConfirm => 'Bu tarif silinsin mi?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\" öğesini silmek istediğinizden emin misiniz? Bu işlem geri alınamaz.';
  }

  @override
  String get ingredients => 'İçindekiler';

  @override
  String get instructions => 'Talimatlar';

  @override
  String get prepTime => 'Hazırlık zamanı';

  @override
  String get recipeSaved => 'Tarif kaydedildi!';

  @override
  String get noRecipesSaved => 'Hiç tarif kaydedilmedi';

  @override
  String get noRecipesSavedHint =>
      'Aşağıdaki düğmeye dokunarak ilk özel tarifinizi oluşturun.';

  @override
  String get myRecipes => 'Tariflerim';

  @override
  String get newRecipe => 'Yeni Tarif';

  @override
  String get loadingRecipes => 'Tarifleriniz yükleniyor...';

  @override
  String get errorLoadingRecipes => 'Tarifler yüklenirken hata oluştu';

  @override
  String get addIngredient => 'İçerik ekle';

  @override
  String get saveRecipe => 'Kaydetmek';

  @override
  String get recipeName => 'Tarif adı';

  @override
  String get shortDescription => 'Kısa açıklama';

  @override
  String get prepTimeMinutes => 'Hazırlık süresi (dakika)';

  @override
  String get instructionsHint => 'Her satıra bir adım yazın...';

  @override
  String get addPhoto => 'Fotoğraf ekle';

  @override
  String get imageUrlPlaceholder => 'Veya bir resim URL\'si yapıştırın';

  @override
  String get tags => 'Etiketler';

  @override
  String get recipeTags => 'Tarif etiketleri';

  @override
  String get suggestedTags => 'Önerilen';

  @override
  String get searchRecipes => 'Tarif ara...';

  @override
  String get filterByTag => 'Etikete göre filtrele';

  @override
  String get allTags => 'Tüm';

  @override
  String get recipeDeleted => 'Tarif silindi';

  @override
  String get saveChanges => 'Değişiklikleri kaydet';

  @override
  String get editRecipeTitle => 'Tarifi Düzenle';

  @override
  String get newRecipeTitle => 'Yeni Tarif';

  @override
  String get requiredField => 'Gerekli';

  @override
  String get chooseImageSource => 'Resim kaynağını seçin';

  @override
  String get gallery => 'Galeri';

  @override
  String get enterUrl => 'URL\'yi girin';

  @override
  String get recipeImage => 'Tarif resmi';

  @override
  String get removeImage => 'Resmi kaldır';

  @override
  String get mealPlannerTitle => 'Yemek Planlayıcı';

  @override
  String get mealPlannerViewMonthly => 'Aylık görünüm';

  @override
  String get mealPlannerViewWeekly => 'Haftalık görünüm';

  @override
  String get mealPlannerNoMeals => 'Yemek planlanmadı';

  @override
  String get mealPlannerNoMealsHint => 'Yemek eklemek için bir güne dokunun';

  @override
  String get mealPlannerLoading => 'Yemek planı yükleniyor...';

  @override
  String get mealPlannerError => 'Yemek planı yüklenirken hata oluştu';

  @override
  String get mealPlannerAddMeal => 'Yemek Ekle';

  @override
  String get mealPlannerEditMeal => 'Yemeği Düzenle';

  @override
  String get mealPlannerDeleteMeal => 'Yemeği kaldır';

  @override
  String get mealPlannerMealDeleted => 'Yemek kaldırıldı';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porsiyon',
      one: '$count porsiyon',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porsiyon';

  @override
  String get mealPlannerNoteLabel => 'Not (isteğe bağlı)';

  @override
  String get mealPlannerSelectRecipe => 'Bir tarif seçin';

  @override
  String get mealPlannerSearchRecipes => 'Tarif ara...';

  @override
  String get mealPlannerNoRecipesFound => 'Tarif bulunamadı';

  @override
  String get mealPlannerNoRecipesHint =>
      'Önce Tarifler sekmesinde tarifler oluşturun';

  @override
  String get mealPlannerSave => 'Plana ekle';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total öğün planlandı';
  }

  @override
  String get mealPlannerGenerateList => 'Alışveriş listesi oluştur';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Bu hafta planladığınız öğünlerdeki tüm malzemeleri alışveriş listenize eklemek ister misiniz?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count içerik(ler) listenize eklendi!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Eklenecek malzeme yok. Önce tariflerle birlikte bazı yemekler planlayın.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Öncelikle bir alışveriş listesi oluşturun.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Kahvaltı';

  @override
  String get mealPlannerMealTypeLunch => 'Öğle yemeği';

  @override
  String get mealPlannerMealTypeDinner => 'Akşam yemeği';

  @override
  String get mealPlannerMealTypeSnack => 'Atıştırmalık';

  @override
  String get mealPlannerDateLabel => 'Tarih';

  @override
  String get mealPlannerWeekEmpty => 'Bu hafta için planlanmış bir şey yok';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Yemeklerinizi planlamaya başlamak için herhangi bir güne dokunun!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes dk.';
  }

  @override
  String get inviteToList => 'Listeye davet et';

  @override
  String get shareApp => 'Uygulamayı paylaş';

  @override
  String get shareAppDescription =>
      'Arkadaşlarınızı KipiList\'ı kullanmaya davet edin';

  @override
  String shareReferralText(Object url) {
    return 'Alışverişimi düzenlemek için KipiList\'ı kullanıyorum! Bağlantım aracılığıyla indirin ve ikimiz de 7 günlük ücretsiz Premium üyeliğine sahip olalım: $url';
  }

  @override
  String get shareReferralSubject => '7 günlük KipiList Premium\'u edinin!';
}

/// The translations for Turkish, as used in Turkey (`tr_TR`).
class AppLocalizationsTrTr extends AppLocalizationsTr {
  AppLocalizationsTrTr() : super('tr_TR');

  @override
  String get appTitle => 'Alışveriş Listesi';

  @override
  String get lists => 'Listeler';

  @override
  String get pantry => 'Kiler';

  @override
  String get cancel => 'İptal';

  @override
  String get save => 'Kaydet';

  @override
  String get create => 'Oluştur';

  @override
  String get add => 'Ekle';

  @override
  String get remove => 'Kaldır';

  @override
  String get delete => 'Sil';

  @override
  String get edit => 'Düzenle';

  @override
  String get copy => 'Kopyala';

  @override
  String get next => 'Sonraki';

  @override
  String get retry => 'Tekrar dene';

  @override
  String get regenerate => 'Yeniden oluştur';

  @override
  String get copiedToClipboard => 'Panoya kopyalandı';

  @override
  String get confirm => 'Onayla';

  @override
  String get close => 'Kapat';

  @override
  String get import => 'İçe aktar';

  @override
  String get rename => 'Yeniden adlandır';

  @override
  String get upgrade => 'Yükselt';

  @override
  String get clear => 'Temizle';

  @override
  String error(String message) {
    return 'Hata: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Hata: $message';
  }

  @override
  String get purchaseError =>
      'Satın alma işlenirken hata oluştu. Tekrar deneyin.';

  @override
  String get restoreError =>
      'Satın almalar geri yüklenirken hata oluştu. Tekrar deneyin.';

  @override
  String get loading => 'Yükleniyor...';

  @override
  String get fieldRequired => 'Gerekli alan';

  @override
  String get addedFeedback => 'Eklendi!';

  @override
  String selectedItems(int count) {
    return '$count seçili';
  }

  @override
  String get estimated => 'Tahmini';

  @override
  String get alreadyPurchased => 'Zaten satın alındı';

  @override
  String get clearList => 'Listeyi temizle';

  @override
  String get clearPurchased => 'Satın alınanları temizle';

  @override
  String get share => 'Paylaş';

  @override
  String get shareViaCode => 'Kodla paylaş';

  @override
  String get importViaCode => 'Kodla içe aktar';

  @override
  String get listAssistant => 'Liste asistanı';

  @override
  String get globalAssistant => 'Genel asistan';

  @override
  String get becomePremium => 'Premium Ol';

  @override
  String get manageSubscription => 'Aboneliği yönet';

  @override
  String get completePurchase => 'Satın almayı tamamla';

  @override
  String get confirmClearList => 'Tüm öğeler kaldırılsın mı?';

  @override
  String get shareListTitle => 'Listeyi Paylaş';

  @override
  String get shareThisCode => 'Bu kodu paylaşın:';

  @override
  String get validForLimitedTime => 'Sınırlı süre için geçerlidir';

  @override
  String get importListTitle => 'Listeyi İçe Aktar';

  @override
  String get enterCodeHint => 'Kodu girin';

  @override
  String get confirmArchiveTitle => 'Satın Almayı Tamamla';

  @override
  String get confirmArchiveContent =>
      'Bu satın alma işlemini tamamlayıp listeyi arşivlesin mi?';

  @override
  String get complete => 'Tamamla';

  @override
  String get listArchived => 'Liste başarıyla arşivlendi!';

  @override
  String listAdded(String listName) {
    return '$listName eklendi!';
  }

  @override
  String get buy => 'Satın al';

  @override
  String get unmark => 'İşareti kaldır';

  @override
  String confirmDeleteItems(int count) {
    return '$count öğe kaldırılsın mı?';
  }

  @override
  String get confirmDeleteTitle => 'Onayla';

  @override
  String confirmContent(int count) {
    return '$count öğe kaldırılsın mı?';
  }

  @override
  String get archiveList => 'Listeyi arşivle';

  @override
  String get pantryAppBar => 'Kiler';

  @override
  String get generateShoppingList => 'Alışveriş listesi oluştur';

  @override
  String get pantryEmpty => 'Boş kiler';

  @override
  String get pantryEmptySubtitle =>
      'Evde bulundurmak istediğiniz ürünleri ekleyin';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit öğenin satın alınması gerekiyor';
  }

  @override
  String get noItemsToBuy => 'Satın alınması gereken öğe yok';

  @override
  String get newPantryList => 'Kiler Alışverişi';

  @override
  String get newListTitle => 'Yeni Alışveriş Listesi';

  @override
  String itemsWillBeAdded(int count) {
    return '$count öğe eklenecek';
  }

  @override
  String get listNameLabel => 'Liste adı';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" listesi $count öğe ile oluşturuldu';
  }

  @override
  String get noTracking => 'Takip yok';

  @override
  String get markAsPurchased => 'Satın alındı olarak işaretle';

  @override
  String editPantryItem(String name) {
    return '$name düzenle';
  }

  @override
  String get idealQuantity => 'İdeal miktar';

  @override
  String get currentQuantity => 'Mevcut miktar';

  @override
  String get consumed => 'Tüketildi';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit olarak yenilendi';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" kilerden kaldırılsın mı?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name düzenle';
  }

  @override
  String get settingsAppBar => 'Ayarlar';

  @override
  String get language => 'Dil';

  @override
  String get languagePortuguese => 'Portekizce (Brezilya)';

  @override
  String get languageEnglish => 'İngilizce';

  @override
  String get languageSystem => 'Sistem varsayılanı';

  @override
  String get chooseLanguage => 'Dil Seçiniz';

  @override
  String get searchLanguage => 'Dil ara...';

  @override
  String get currency => 'Para birimi';

  @override
  String get chooseCurrency => 'Para Birimi Seçin';

  @override
  String get searchCurrency => 'Para birimini ara...';

  @override
  String get appearance => 'Görünüm';

  @override
  String get light => 'Aydınlık';

  @override
  String get system => 'Sistem';

  @override
  String get dark => 'Karanlık';

  @override
  String get themeColor => 'Tema rengi';

  @override
  String get dynamicColors => 'Dinamik renkler';

  @override
  String get dynamicColorsSubtitle => 'Duvar kağıdınıza göre renkler kullanın';

  @override
  String get dynamicColorsEnabledWarning =>
      'Tema renginin etkili olması için dinamik renkleri devre dışı bırakın';

  @override
  String get finance => 'Finans';

  @override
  String get monthlyBudgetNav => 'Aylık bütçe';

  @override
  String get budgetSubtitle => 'Aylık harcamalarınızı takip edin';

  @override
  String get data => 'Veri';

  @override
  String get backupNav => 'Yedekle';

  @override
  String get backupSubtitle => 'Verilerinizi dışa veya içe aktarın';

  @override
  String get about => 'Hakkında';

  @override
  String get version => 'Sürüm';

  @override
  String get privacy => 'Gizlilik';

  @override
  String get termsOfUse => 'Kullanım koşulları';

  @override
  String get backupTitle => 'Yedekleme';

  @override
  String get backupPremiumDescription =>
      'Yedekleme ve dışa aktarma bir premium özelliğidir';

  @override
  String get exportData => 'Veriyi dışa aktar';

  @override
  String get exportDataSubtitle => 'Tüm listeleri JSON olarak kaydedin';

  @override
  String get importData => 'Veriyi içe aktar';

  @override
  String get importDataSubtitle => 'JSON\'dan listeleri geri yükleyin';

  @override
  String get importJsonTitle => 'JSON İçe Aktar';

  @override
  String get importJsonHint => 'Yedek JSON\'u buraya yapıştırın...';

  @override
  String get backupExported => 'Yedek dışa aktarıldı!';

  @override
  String get budgetAppBar => 'Aylık Bütçe';

  @override
  String get budgetPremiumLocked => 'Genel aylık bütçe premium özelliktir';

  @override
  String get budgetUpgradePrompt => 'Kilidi açmak için yükseltin';

  @override
  String get noBudgetDefined => 'Bütçe belirlenmedi';

  @override
  String totalEstimated(String amount) {
    return 'Toplam tahmini: $amount';
  }

  @override
  String get setBudgetButton => 'Bütçe belirle';

  @override
  String get budgetLists => 'Listeler';

  @override
  String get budgetValueLabel => 'Tutar';

  @override
  String get setBudgetTitle => 'Aylık Bütçe';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tümü';

  @override
  String get filterPending => 'Bekleyen';

  @override
  String get filterPurchased => 'Satın alınanlar';

  @override
  String get sortName => 'Ad';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Tarih';

  @override
  String get sortManual => 'Manuel';

  @override
  String get addItem => 'Öğe Ekle';

  @override
  String get itemName => 'Öğe adı';

  @override
  String get quantityShort => 'Adet';

  @override
  String get unit => 'Birim';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Tahmini fiyat';

  @override
  String get addItemPrice => 'Tahmini fiyat';

  @override
  String get editItem => 'Öğeyi Düzenle';

  @override
  String get quantityFull => 'Miktar';

  @override
  String get editItemPrice => 'Tahmini fiyat';

  @override
  String get addToPantry => 'Kiler\'e Ekle';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" kilerinize eklensin mi?';
  }

  @override
  String get yes => 'Evet';

  @override
  String get productName => 'Ürün adı';

  @override
  String get idealQty => 'İdeal miktar';

  @override
  String get currentQty => 'Mevcut miktar';

  @override
  String get trackStock => 'Stok takibi';

  @override
  String get trackStockActive => 'Alışveriş önerilerinde görünür';

  @override
  String get trackStockInactive => 'Alışveriş önerisi oluşturmaz';

  @override
  String get createListDialog => 'Liste Oluştur';

  @override
  String get renameListDialog => 'Listeyi Yeniden Adlandır';

  @override
  String get listHistory => 'Liste Geçmişi';

  @override
  String get myLists => 'Listelerim';

  @override
  String get viewActive => 'Aktif Olanları Gör';

  @override
  String get viewHistory => 'Geçmişi Gör';

  @override
  String get noArchivedLists => 'Arşivlenmiş liste yok';

  @override
  String get noActiveLists => 'Aktif liste yok';

  @override
  String completedOn(String date) {
    return '$date tarihinde tamamlandı';
  }

  @override
  String get sharedLabel => 'Paylaşıldı';

  @override
  String get restore => 'Geri yükle';

  @override
  String get removeSharedTooltip => 'Kaldır';

  @override
  String get deleteListTitle => 'Listeyi sil';

  @override
  String deleteListContent(String name) {
    return '\"$name\" silmek istediğinize emin misiniz? Tüm öğeler kaldırılacak.';
  }

  @override
  String get removeSharedListTitle => 'Paylaşılan listeyi kaldır';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" listenizden kaldırılsın mı? Orijinal liste etkilenmeyecek.';
  }

  @override
  String get createNewList => 'Yeni liste oluştur';

  @override
  String get aiAssistant => 'AI Asistan';

  @override
  String get aiAssistantDescription =>
      'AI asistanımızla akıllı öneriler, tarifler ve kişiselleştirilmiş ipuçları alın.';

  @override
  String get generalAssistant => 'Genel Asistan';

  @override
  String get newChat => 'Yeni Sohbet';

  @override
  String get noHistory => 'Sohbet geçmişi yok';

  @override
  String get deleteSession => 'Sohbeti Sil';

  @override
  String get deleteSessionConfirm =>
      'Bu sohbeti silmek istediğinizden emin misiniz? Mesajlar kalıcı olarak kaybolacak.';

  @override
  String get clearHistory => 'Geçmişi Temizle';

  @override
  String get clearHistoryConfirm =>
      'Bu oturumdaki tüm mesajlar temizlensin mi?';

  @override
  String get chatHint => 'Mesajınızı yazın...';

  @override
  String chatError(String error) {
    return 'Sohbet yüklenirken hata: $error';
  }

  @override
  String get listHelp => 'Listenizle ilgili nasıl yardımcı olabilirim?';

  @override
  String get generalHelp =>
      'Bugün alışverişinizle ilgili nasıl yardımcı olabilirim?';

  @override
  String get chatSubtitle =>
      'Öğe önerileri, tarifler veya tasarruf ipuçları isteyin.';

  @override
  String get aiError =>
      'Üzgünüz, isteğiniz işlenirken bir hata oluştu. Bağlantınızı kontrol edin veya daha sonra tekrar deneyin.';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt =>
      'Premium özelliklerin\nkilidini açmak için giriş yapın';

  @override
  String get signInGoogle => 'Google ile giriş yap';

  @override
  String get signInApple => 'Apple ile giriş yap';

  @override
  String get continueAsGuest => 'Misafir olarak devam et';

  @override
  String get onboardingWelcomeTitle => 'KipiList\'a hoş geldiniz';

  @override
  String get onboardingWelcomeDesc =>
      'Alışverişinizi organize etmenin ve paradan tasarruf etmenin en akıllı yolu.';

  @override
  String get onboardingSetupTitle => 'Deneyiminizi kişiselleştirin';

  @override
  String get onboardingSetupDesc =>
      'KipiList\'ın sizin için nasıl görünmesini ve çalışmasını istediğinizi seçin.';

  @override
  String get onboardingLoginTitle => 'Her şeyi buluta kaydedin';

  @override
  String get onboardingLoginDesc =>
      'Verileriniz tüm cihazlarınızda senkronize edildi';

  @override
  String get onboardingShareTitle => 'Sevdiklerinizle paylaşın';

  @override
  String get onboardingShareDesc =>
      'Listeleri aileniz ve arkadaşlarınızla gerçek zamanlı olarak senkronize edin';

  @override
  String get onboardingPremiumTitle => 'Tüm özelliklerin kilidini açın';

  @override
  String get onboardingPremiumSubtitle =>
      'Alışveriş listelerinizden en iyi şekilde yararlanın';

  @override
  String get onboardingAnnualBadge => 'En İyi Değer';

  @override
  String get onboardingMonthlyLabel => 'Aylık';

  @override
  String get onboardingAnnualLabel => 'Yıllık';

  @override
  String get onboardingViewAllPlans => 'Tüm planları görüntüle';

  @override
  String get onboardingSubscribeCta => 'Abone';

  @override
  String get onboardingCancelAnytime =>
      'İstediğiniz zaman iptal edin. Taahhüt yok.';

  @override
  String get onboardingContinueAsGuest => 'Konuk olarak devam et';

  @override
  String get onboardingRestore => 'Satın Alınanları Geri Yükle';

  @override
  String get onboardingRestoreDesc =>
      'Zaten bir aboneliğiniz var mı? Geri yüklemek için buraya dokunun.';

  @override
  String get onboardingExit => 'Çıkış';

  @override
  String get onboardingPersonalizationTitle => 'Hadi seni tanıyalım';

  @override
  String get onboardingPersonalizationDesc =>
      'Bunu önerilerinizi kişiselleştirmek ve alışverişi daha akıllı hale getirmek için kullanacağız.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'En sevdiğiniz yemek hangisi?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'örneğin Pizza, Suşi, Lazanya...';

  @override
  String get onboardingPersonalizationCta => 'Devam etmek';

  @override
  String get onboardingPersonalizationSkip => 'Şimdilik atla';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Devam etmek için bize en sevdiğiniz yemeği söyleyin';

  @override
  String get settingsDefaultScreen => 'Varsayılan ana ekran';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Alışveriş listesi veya AI sohbeti arasında seçim yapın';

  @override
  String get settingsScreenList => 'Alışveriş listesi';

  @override
  String get settingsScreenChat => 'Yapay Zeka Sohbeti';

  @override
  String loginError(String error) {
    return 'Giriş hatası: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get premiumUpgrade => 'Kilidi açmak için yükseltin';

  @override
  String get itemRemoved => 'Öğe kaldırıldı';

  @override
  String get undo => 'Geri al';

  @override
  String get emptyListTitle => 'Listeniz boş';

  @override
  String get emptyListSubtitle => 'Başlamak için öğe ekleyin';

  @override
  String get noListFoundTitle => 'Liste bulunamadı';

  @override
  String get noListFoundSubtitle => 'Başlamak için ilk listenizi oluşturun';

  @override
  String get createFirstList => 'İlk Listeyi Oluştur';

  @override
  String get listBudgetTitle => 'Liste Bütçesi';

  @override
  String get budgetAmountLabel => 'Bütçe tutarı';

  @override
  String get removeBudget => 'Kaldır';

  @override
  String get prefUnlimitedLists => 'Sınırsız liste';

  @override
  String get prefSharing => 'Listeleri paylaş';

  @override
  String get prefFullHistory => 'Tam geçmiş';

  @override
  String get prefExportData => 'Veriyi dışa aktar';

  @override
  String get prefCustomThemes => 'Özel temalar';

  @override
  String get prefMonthlyBudget => 'Genel aylık bütçe';

  @override
  String get prefAIAssistant => 'Kişisel AI Asistan';

  @override
  String get prefUnlimitedPantry => 'Sınırsız kiler';

  @override
  String get prefInteractiveArtifacts => 'Etkileşimli AI Yapay Ürünleri';

  @override
  String get themeGreen => 'Yeşil';

  @override
  String get themeBlue => 'Mavi';

  @override
  String get themePurple => 'Mor';

  @override
  String get themeRed => 'Kırmızı';

  @override
  String get themeOrange => 'Turuncu';

  @override
  String get themePink => 'Pembe';

  @override
  String get themeIndigo => 'Çivit';

  @override
  String get themeAmber => 'Kehribar';

  @override
  String get themeTeal => 'Deniz yeşili';

  @override
  String get themeBrown => 'Kahverengi';

  @override
  String get catFruits => 'Meyve';

  @override
  String get catCleaning => 'Temizlik';

  @override
  String get catBeverages => 'İçecekler';

  @override
  String get catBakery => 'Fırın';

  @override
  String get catOthers => 'Diğer';

  @override
  String get unitPack => 'paket';

  @override
  String get shareSubject => 'Alışveriş Listesi';

  @override
  String get monthlyBudgetTitle => 'Aylık Bütçe';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Listeyi sil';

  @override
  String get pantryItemRemoved => 'Öğe kaldırıldı';

  @override
  String deficitItems(int deficit) {
    return '$deficit öğenin satın alınması gerekiyor';
  }

  @override
  String get cartTotal => 'Sepet toplamı';

  @override
  String get restockLabel => 'Yenile';

  @override
  String get advancedFeatures => 'Gelişmiş özellikler';

  @override
  String get selectAll => 'Tümünü seç';

  @override
  String get deselectAll => 'Tümünün seçimini kaldır';

  @override
  String get monthlyBudgetAppBar => 'Aylık Bütçe';

  @override
  String get budgetEditTitle => 'Aylık Bütçe';

  @override
  String get budgetDashboardTitle => 'Kontrol Paneli';

  @override
  String get selectListForDashboard =>
      'Kontrol panelini görüntülemek için bir liste seçin.';

  @override
  String get spendingAnalysis => 'Harcama Analizi';

  @override
  String get noItemsToAnalyze => 'Analiz edilecek listede öğe yok.';

  @override
  String get markItemsToSeeAnalysis =>
      'Analizi görmek için öğeleri satın alındı olarak işaretleyin.';

  @override
  String get totalSpending => 'Toplam Harcama';

  @override
  String get spendingByCategory => 'Kategoriye Göre Harcama';

  @override
  String get achievements => 'Başarılar';

  @override
  String get exportPdfExcel => 'PDF/Excel Dışa Aktar';

  @override
  String get exportPdf => 'PDF olarak dışa aktar';

  @override
  String get exportExcel => 'Excel olarak dışa aktar';

  @override
  String get organizingAi => 'AI İLE DÜZENLENİYOR...';

  @override
  String get yesLabel => 'Evet';

  @override
  String get noLabel => 'Hayır';

  @override
  String get shareListText => 'Alışveriş Listem';

  @override
  String get emptyListAddItems => 'Listeniz boş! Önce öğe ekleyin. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Liste kategorilere göre sihirli bir şekilde düzenlendi! ✨';

  @override
  String get shoppingMode => 'Alışveriş Modu';

  @override
  String get smartOrganization => 'Akıllı Düzenleme';

  @override
  String get savings => 'Tasarruf';

  @override
  String get shoppingModeHeader => 'ALIŞVERİŞ MODU';

  @override
  String get shareAsText => 'Öğeleri biçimlendirilmiş metin olarak gönder';

  @override
  String get shareRealtime => 'Diğer kişilerle gerçek zamanlı senkronizasyon';

  @override
  String get quickRecipe => 'Hızlı tarif';

  @override
  String get quickRecipePrompt => 'Listemdeki öğelerle tarif öner.';

  @override
  String get economyTips => 'Tasarruf ipuçları';

  @override
  String get economyTipsPrompt => 'Bu alışverişte nasıl para biriktirebilirim?';

  @override
  String get organizeAisles => 'Reyonlara göre düzenle';

  @override
  String get organizeAislesPrompt => 'Market reyonlarına göre düzenle.';

  @override
  String get recipeSuggestion => 'Tarif önerisi';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kredi kaldı';
  }

  @override
  String get addAllToList => 'Tümünü listeye ekle';

  @override
  String get organizeByAisles => 'Reyonlara göre düzenle';

  @override
  String get voiceTranscriptionTooltip => 'Sesle yazma (Ücretsiz)';

  @override
  String get aiVoiceCommandTooltip => 'AI Ses Komutu (Premium)';

  @override
  String get voiceCommandTitle => 'AI Ses Komutu';

  @override
  String get voiceCommandContent =>
      'Listenizi yönetmek için doğal bir şekilde konuşun!\n\nÖrnekler:\n• \'Ekmek, peynir ve jambon ekle\'\n• \'Çamaşır deterjanını kaldır\'\n• \'Temayı mavi yap\'\n\nBu, KipiList Premium\'un özel bir özelliğidir.';

  @override
  String get voiceCommandPlanBtn => 'Planları Gör';

  @override
  String get itemsAddedSuccess => 'Öğeler listeye başarıyla eklendi!';

  @override
  String get viewList => 'Listeyi görüntüle';

  @override
  String get feedbackTitle => 'Geri Bildirim Gönder';

  @override
  String get feedbackPrompt => 'Ne paylaşmak istersiniz?';

  @override
  String get feedbackTypeBug => 'Hata Bildir';

  @override
  String get feedbackTypeBugHint => 'Bir şey çalışmıyor';

  @override
  String get feedbackTypeSuggestion => 'Öneri';

  @override
  String get feedbackTypeSuggestionHint => 'Uygulamayı geliştirme fikri';

  @override
  String get feedbackTypeTranslation => 'Çeviri Sorunu';

  @override
  String get feedbackTypeTranslationHint => 'Yanlış veya garip çeviri';

  @override
  String get feedbackTypeFeature => 'Özellik Talebi';

  @override
  String get feedbackTypeFeatureHint => 'Görmek istediğiniz özellik';

  @override
  String get feedbackTypeOther => 'Diğer';

  @override
  String get feedbackTypeOtherHint => 'Diğer geri bildirim türü';

  @override
  String get feedbackHint => 'Geri bildiriminizi ayrıntılı olarak açıklayın...';

  @override
  String get feedbackSend => 'Geri Bildirim Gönder';

  @override
  String get feedbackSending => 'Gönderiliyor...';

  @override
  String get feedbackThankYou => 'Teşekkürler!';

  @override
  String get feedbackThankYouMessage =>
      'Geri bildiriminiz alındı ve KipiList\'ı herkes için geliştirmemize yardımcı oluyor.';

  @override
  String get feedbackBack => 'Geri';

  @override
  String feedbackError(String error) {
    return 'Gönderme hatası: $error';
  }

  @override
  String get feedbackRetry => 'Tekrar dene';

  @override
  String get feedbackSettingsTitle => 'Geri Bildirim Gönder';

  @override
  String get feedbackSettingsSubtitle =>
      'Hataları bildirin, iyileştirmeler önerin veya çevirileri düzeltin';

  @override
  String get aiEnergy => 'Yapay Zeka Enerjisi';

  @override
  String get searchInConversation => 'Görüşmede ara...';

  @override
  String get noMessagesFound => 'Mesaj bulunamadı';

  @override
  String get suggestedQuestions => 'Önerilen sorular:';

  @override
  String get shoppingAssistant => 'Alışveriş asistanı';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased / $total satın alındı';
  }

  @override
  String get estimatedCost => 'Tahmini';

  @override
  String get viewItems => 'Öğeleri görüntüle';

  @override
  String get noItemsInList => 'Listede öğe yok';

  @override
  String get longHistoryWarning =>
      'Uzun geçmiş: Asistan, daha iyi performans için en son mesajlara odaklanır.';

  @override
  String get listening => 'Dinleme...';

  @override
  String get addDirectToList => 'Doğrudan listeye ekle';

  @override
  String get unlockFullResponse => 'Tam Yanıtın Kilidini Aç';

  @override
  String get switchList => 'Listeyi değiştir';

  @override
  String get marketMode => 'Piyasa Modu';

  @override
  String get backToChat => 'Sohbete Geri Dön';

  @override
  String get finishShopping => 'Alışverişi Bitir';

  @override
  String get welcomeAiAssistant => 'AI Assistant\'a hoş geldiniz';

  @override
  String get createListToStartAi =>
      'Akıllı sohbeti kullanmaya başlamak için bir alışveriş listesi oluşturun.';

  @override
  String get howCanIHelp => 'Nasıl yardımcı olabilirim?';

  @override
  String get chatSubtitleShort =>
      'Fiyatlar, tarifler, organizasyon hakkında bilgi alın...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total satın alındı';
  }

  @override
  String get quickReplies => 'Hızlı yanıtlar:';

  @override
  String get voiceProFeature =>
      'Gelişmiş sesli komutlar Pro\'dur. Temel dikte etkinleştiriliyor...';

  @override
  String get viewPro => 'Pro\'yu Görüntüle';

  @override
  String get errorLoadingChat =>
      'Hata! Sohbet yüklenirken bir şeyler ters gitti.';

  @override
  String get errorLoadingChatSubtitle =>
      'Bağlantınızı kontrol edin veya daha sonra tekrar deneyin.';

  @override
  String get errorOscillation =>
      'Bu, ağ salınımları veya geçici olarak kullanılamama nedeniyle meydana gelebilir. Lütfen tekrar deneyin.';

  @override
  String get activeListening => 'Aktif Dinleme';

  @override
  String get whatToDoWithItem => 'Bu eşyayla ne yapmak istersiniz?';

  @override
  String get viewDetails => 'Ayrıntıları Görüntüle';

  @override
  String get openMenu => 'Menüyü aç';

  @override
  String get viewRecipe => 'Tarifi Görüntüle';

  @override
  String get recipeCreated => 'Tarif oluşturuldu!';

  @override
  String get editRecipe => 'Düzenlemek';

  @override
  String get deleteRecipe => 'Silmek';

  @override
  String get deleteRecipeConfirm => 'Bu tarif silinsin mi?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\" öğesini silmek istediğinizden emin misiniz? Bu işlem geri alınamaz.';
  }

  @override
  String get ingredients => 'İçindekiler';

  @override
  String get instructions => 'Talimatlar';

  @override
  String get prepTime => 'Hazırlık zamanı';

  @override
  String get recipeSaved => 'Tarif kaydedildi!';

  @override
  String get noRecipesSaved => 'Hiç tarif kaydedilmedi';

  @override
  String get noRecipesSavedHint =>
      'Aşağıdaki düğmeye dokunarak ilk özel tarifinizi oluşturun.';

  @override
  String get myRecipes => 'Tariflerim';

  @override
  String get newRecipe => 'Yeni Tarif';

  @override
  String get loadingRecipes => 'Tarifleriniz yükleniyor...';

  @override
  String get errorLoadingRecipes => 'Tarifler yüklenirken hata oluştu';

  @override
  String get addIngredient => 'İçerik ekle';

  @override
  String get saveRecipe => 'Kaydetmek';

  @override
  String get recipeName => 'Tarif adı';

  @override
  String get shortDescription => 'Kısa açıklama';

  @override
  String get prepTimeMinutes => 'Hazırlık süresi (dakika)';

  @override
  String get instructionsHint => 'Her satıra bir adım yazın...';

  @override
  String get addPhoto => 'Fotoğraf ekle';

  @override
  String get imageUrlPlaceholder => 'Veya bir resim URL\'si yapıştırın';

  @override
  String get tags => 'Etiketler';

  @override
  String get recipeTags => 'Tarif etiketleri';

  @override
  String get suggestedTags => 'Önerilen';

  @override
  String get searchRecipes => 'Tarif ara...';

  @override
  String get filterByTag => 'Etikete göre filtrele';

  @override
  String get allTags => 'Tüm';

  @override
  String get recipeDeleted => 'Tarif silindi';

  @override
  String get saveChanges => 'Değişiklikleri kaydet';

  @override
  String get editRecipeTitle => 'Tarifi Düzenle';

  @override
  String get newRecipeTitle => 'Yeni Tarif';

  @override
  String get requiredField => 'Gerekli';

  @override
  String get chooseImageSource => 'Resim kaynağını seçin';

  @override
  String get gallery => 'Galeri';

  @override
  String get enterUrl => 'URL\'yi girin';

  @override
  String get recipeImage => 'Tarif resmi';

  @override
  String get removeImage => 'Resmi kaldır';

  @override
  String get mealPlannerTitle => 'Yemek Planlayıcı';

  @override
  String get mealPlannerViewMonthly => 'Aylık görünüm';

  @override
  String get mealPlannerViewWeekly => 'Haftalık görünüm';

  @override
  String get mealPlannerNoMeals => 'Yemek planlanmadı';

  @override
  String get mealPlannerNoMealsHint => 'Yemek eklemek için bir güne dokunun';

  @override
  String get mealPlannerLoading => 'Yemek planı yükleniyor...';

  @override
  String get mealPlannerError => 'Yemek planı yüklenirken hata oluştu';

  @override
  String get mealPlannerAddMeal => 'Yemek Ekle';

  @override
  String get mealPlannerEditMeal => 'Yemeği Düzenle';

  @override
  String get mealPlannerDeleteMeal => 'Yemeği kaldır';

  @override
  String get mealPlannerMealDeleted => 'Yemek kaldırıldı';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porsiyon',
      one: '$count porsiyon',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porsiyon';

  @override
  String get mealPlannerNoteLabel => 'Not (isteğe bağlı)';

  @override
  String get mealPlannerSelectRecipe => 'Bir tarif seçin';

  @override
  String get mealPlannerSearchRecipes => 'Tarif ara...';

  @override
  String get mealPlannerNoRecipesFound => 'Tarif bulunamadı';

  @override
  String get mealPlannerNoRecipesHint =>
      'Önce Tarifler sekmesinde tarifler oluşturun';

  @override
  String get mealPlannerSave => 'Plana ekle';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total öğün planlandı';
  }

  @override
  String get mealPlannerGenerateList => 'Alışveriş listesi oluştur';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Bu hafta planladığınız öğünlerdeki tüm malzemeleri alışveriş listenize eklemek ister misiniz?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count içerik(ler) listenize eklendi!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Eklenecek malzeme yok. Önce tariflerle birlikte bazı yemekler planlayın.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Öncelikle bir alışveriş listesi oluşturun.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Kahvaltı';

  @override
  String get mealPlannerMealTypeLunch => 'Öğle yemeği';

  @override
  String get mealPlannerMealTypeDinner => 'Akşam yemeği';

  @override
  String get mealPlannerMealTypeSnack => 'Atıştırmalık';

  @override
  String get mealPlannerDateLabel => 'Tarih';

  @override
  String get mealPlannerWeekEmpty => 'Bu hafta için planlanmış bir şey yok';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Yemeklerinizi planlamaya başlamak için herhangi bir güne dokunun!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes dk.';
  }

  @override
  String get inviteToList => 'Listeye davet et';

  @override
  String get shareApp => 'Uygulamayı paylaş';

  @override
  String get shareAppDescription =>
      'Arkadaşlarınızı KipiList\'ı kullanmaya davet edin';

  @override
  String shareReferralText(Object url) {
    return 'Alışverişimi düzenlemek için KipiList\'ı kullanıyorum! Bağlantım aracılığıyla indirin ve ikimiz de 7 günlük ücretsiz Premium üyeliğine sahip olalım: $url';
  }

  @override
  String get shareReferralSubject => '7 günlük KipiList Premium\'u edinin!';
}
