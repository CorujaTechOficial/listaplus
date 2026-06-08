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
  String get navChat => 'Sohbet';

  @override
  String get navRecipes => 'Tarifler';

  @override
  String get navLists => 'Listeler';

  @override
  String get navMealPlanner => 'Menü';

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
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Alışveriş Modundan Çık';

  @override
  String get exit => 'Çıkış';

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
  String get chatHintBlocked => 'Sohbet etmek için AI\'nın kilidini açın';

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
  String get aiLimitAlmostReached => 'AI mesajları neredeyse tükendi';

  @override
  String get unlockAi => 'Sınırsız yapay zekanın kilidini açın';

  @override
  String get aiTeaserFallback =>
      'Tam yanıtın kilidini açmak ve alışverişiniz için sınırsız AI ipuçları almak için Premium\'a abone olun...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

  @override
  String get kipiListTitle => 'Kipi Listesi';

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
  String get paywallLoadingError =>
      'Teklifler yüklenirken hata oluştu. Tekrar deneyin.';

  @override
  String get paywallPurchaseError =>
      'Satın alma işlemi tamamlanamadı. Tekrar deneyin.';

  @override
  String get paywallRestoreError =>
      'Geri yüklenecek etkin abonelik bulunamadı.';

  @override
  String paywallTrialDays(Object days) {
    return '$days GÜN ÜCRETSİZ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count HAFTA ÜCRETSİZ',
      one: '$count HAFTA ÜCRETSİZ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count AY ÜCRETSİZ',
      one: '$count AY ÜCRETSİZ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'KipiList Pro\'yu 7 gün boyunca ücretsiz deneyin';

  @override
  String get paywallTrialSubtitle =>
      'İstediğiniz zaman iptal edin. Bugün ücret yok.';

  @override
  String get paywallTrialCta => 'Ücretsiz Denemeyi Başlat';

  @override
  String get recipeAddToList => 'Alışveriş listesine ekle';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count malzemeler $listName\'e eklendi';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'İhtiyacınız olan her şey:';

  @override
  String get paywallFeatureUnlimitedLists => 'Sınırsız Liste';

  @override
  String get paywallFeatureSmartAI => 'Akıllı Yapay Zeka';

  @override
  String get paywallFeatureExpenseControl => 'Gider Kontrolü';

  @override
  String get paywallFeatureSharing => 'Paylaşma';

  @override
  String get paywallBeforeAfterTitle => 'Yapay Zekanın Öncesi ve Sonrası:';

  @override
  String get paywallLabelCommon => 'Yaygın';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'pirinç';

  @override
  String get paywallBeforeItem2 => 'sabun';

  @override
  String get paywallBeforeItem3 => 'et';

  @override
  String get paywallBeforeItem4 => 'ekmek';

  @override
  String get paywallAfterItem1 => 'Tahıllar';

  @override
  String get paywallAfterItem2 => 'Temizlik';

  @override
  String get paywallAfterItem3 => 'Etler';

  @override
  String get paywallAfterItem4 => 'Fırın';

  @override
  String get paywallTestimonialsTitle => 'Kullanıcılarımız ne diyor:';

  @override
  String get paywallTestimonial1Name => 'Anne S.';

  @override
  String get paywallTestimonial1Text =>
      'Yapay zeka alışverişimi saniyeler içinde organize ediyor. Pazar gezisi başına 20 dakika tasarruf ediyorum.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Bir liste öğesini bir daha asla unutmadım. AI sohbeti sansasyonel!';

  @override
  String get paywallSocialProof => '+2.400 aile kullanıyor';

  @override
  String get paywallCtaUnlock => 'PRO\'nun kilidini aç';

  @override
  String get paywallBestValue => 'EN İYİ DEĞER';

  @override
  String get paywallMostPopular => 'EN POPÜLER';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Güvenli ödeme';

  @override
  String get paywallSelectPlan => 'Planınızı seçin:';

  @override
  String paywallSavePercent(Object percent) {
    return '%$percent TASARRUF EDİN';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Yalnızca $price/ay';
  }

  @override
  String get paywallPackageAnnual => 'Yıllık Plan';

  @override
  String get paywallPackageMonthly => 'Aylık Plan';

  @override
  String get paywallPackageLifetime => 'Ömür Boyu Erişim';

  @override
  String get paywallCancelAnytime =>
      'İstediğiniz zaman iptal edin. Taahhüt yok.';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'Gizlilik Politikası';

  @override
  String get paywallTerms => 'Kullanım Koşulları';

  @override
  String get paywallRestore => 'Eski haline getirmek';

  @override
  String get paywallHeroHeadline => 'Kipi AI her zaman yanınızda';

  @override
  String get paywallHeroSubtitle =>
      'Cebinizdeki AI ile öğeler ekleyin, listeleri düzenleyin ve zamandan tasarruf edin';

  @override
  String get paywallBenefit1Desc => 'Öğeleri 7/24 ekler, düzenler ve önerir';

  @override
  String get paywallBenefit2Desc => '3 liste sınırı yok';

  @override
  String get paywallBenefit3Desc => 'Gider takibi ve aile listeleri';

  @override
  String get paywallPackageMonthlyDesc => 'Tam esneklik';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Ücretsiz başlayın — $days gün';
  }

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

  @override
  String get gestureHint =>
      'Seçmek için basılı tutun • Kaldırmak için kaydırın';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Sık Kullanılanlarım';

  @override
  String get catalogSearchGlobal => 'Herhangi bir ürünü arayın...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category\'da ara...';
  }

  @override
  String get catalogSortPopular => 'En popüler';

  @override
  String get catalogSortAZ => 'A\'dan Z\'ye';

  @override
  String get catalogFilterNational => 'Vatandaşlar';

  @override
  String get catalogRareSection => 'ülkenizde daha az yaygın';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 ekle →';
  }

  @override
  String get catalogProductNotFound => 'Ürün bulunamadı, adını yazın';

  @override
  String get catalogBrowse => 'Kataloğa Göz Atın';

  @override
  String get offlineBanner => 'Çevrimdışısınız';

  @override
  String get consentTitle => 'Gizlilik ve Analitik';

  @override
  String get consentBody =>
      'KipiList deneyiminizi geliştirmek için Firebase Analytics\'i kullanıyor. Verileriniz Gizlilik Politikamıza uygun olarak işlenmektedir.';

  @override
  String get consentAccept => 'Kabul etmek';

  @override
  String get consentDecline => 'Hayır, teşekkürler';

  @override
  String get mealPlannerPantryAllAvailable => 'Stokta var';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eksik öğe',
      one: '$count eksik öğe',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Son kullanma tarihi';

  @override
  String get notInformed => 'Bilgilendirilmedi';

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
  String get manageCategoriesTitle => 'Kategorileri Yönet';

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
  String get sortAZ => 'A\'dan Z\'ye';

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
  String get backToToday => 'Bugüne dön';

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
  String get navChat => 'Sohbet';

  @override
  String get navRecipes => 'Tarifler';

  @override
  String get navLists => 'Listeler';

  @override
  String get navMealPlanner => 'Menü';

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
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Alışveriş Modundan Çık';

  @override
  String get exit => 'Çıkış';

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
  String get chatHintBlocked => 'Sohbet etmek için AI\'nın kilidini açın';

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
  String get aiLimitAlmostReached => 'AI mesajları neredeyse tükendi';

  @override
  String get unlockAi => 'Sınırsız yapay zekanın kilidini açın';

  @override
  String get aiTeaserFallback =>
      'Tam yanıtın kilidini açmak ve alışverişiniz için sınırsız AI ipuçları almak için Premium\'a abone olun...';

  @override
  String get kipiListTitle => 'Kipi Listesi';

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
  String get paywallLoadingError =>
      'Teklifler yüklenirken hata oluştu. Tekrar deneyin.';

  @override
  String get paywallPurchaseError =>
      'Satın alma işlemi tamamlanamadı. Tekrar deneyin.';

  @override
  String get paywallRestoreError =>
      'Geri yüklenecek etkin abonelik bulunamadı.';

  @override
  String paywallTrialDays(Object days) {
    return '$days GÜN ÜCRETSİZ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count HAFTA ÜCRETSİZ',
      one: '$count HAFTA ÜCRETSİZ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count AY ÜCRETSİZ',
      one: '$count AY ÜCRETSİZ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'KipiList Pro\'yu 7 gün boyunca ücretsiz deneyin';

  @override
  String get paywallTrialSubtitle =>
      'İstediğiniz zaman iptal edin. Bugün ücret yok.';

  @override
  String get paywallTrialCta => 'Ücretsiz Denemeyi Başlat';

  @override
  String get recipeAddToList => 'Alışveriş listesine ekle';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count malzemeler $listName\'e eklendi';
  }

  @override
  String get paywallFeaturesTitle => 'İhtiyacınız olan her şey:';

  @override
  String get paywallFeatureUnlimitedLists => 'Sınırsız Liste';

  @override
  String get paywallFeatureSmartAI => 'Akıllı Yapay Zeka';

  @override
  String get paywallFeatureExpenseControl => 'Gider Kontrolü';

  @override
  String get paywallFeatureSharing => 'Paylaşma';

  @override
  String get paywallBeforeAfterTitle => 'Yapay Zekanın Öncesi ve Sonrası:';

  @override
  String get paywallLabelCommon => 'Yaygın';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'pirinç';

  @override
  String get paywallBeforeItem2 => 'sabun';

  @override
  String get paywallBeforeItem3 => 'et';

  @override
  String get paywallBeforeItem4 => 'ekmek';

  @override
  String get paywallAfterItem1 => 'Tahıllar';

  @override
  String get paywallAfterItem2 => 'Temizlik';

  @override
  String get paywallAfterItem3 => 'Etler';

  @override
  String get paywallAfterItem4 => 'Fırın';

  @override
  String get paywallTestimonialsTitle => 'Kullanıcılarımız ne diyor:';

  @override
  String get paywallTestimonial1Name => 'Anne S.';

  @override
  String get paywallTestimonial1Text =>
      'Yapay zeka alışverişimi saniyeler içinde organize ediyor. Pazar gezisi başına 20 dakika tasarruf ediyorum.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Bir liste öğesini bir daha asla unutmadım. AI sohbeti sansasyonel!';

  @override
  String get paywallSocialProof => '+2.400 aile kullanıyor';

  @override
  String get paywallCtaUnlock => 'PRO\'nun kilidini aç';

  @override
  String get paywallBestValue => 'EN İYİ DEĞER';

  @override
  String get paywallMostPopular => 'EN POPÜLER';

  @override
  String get paywallSafeCheckout => 'Güvenli ödeme';

  @override
  String get paywallSelectPlan => 'Planınızı seçin:';

  @override
  String paywallSavePercent(Object percent) {
    return '%$percent TASARRUF EDİN';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Yalnızca $price/ay';
  }

  @override
  String get paywallPackageAnnual => 'Yıllık Plan';

  @override
  String get paywallPackageMonthly => 'Aylık Plan';

  @override
  String get paywallPackageLifetime => 'Ömür Boyu Erişim';

  @override
  String get paywallCancelAnytime =>
      'İstediğiniz zaman iptal edin. Taahhüt yok.';

  @override
  String get paywallPolicy => 'Gizlilik Politikası';

  @override
  String get paywallTerms => 'Kullanım Koşulları';

  @override
  String get paywallRestore => 'Eski haline getirmek';

  @override
  String get paywallHeroHeadline => 'Kipi AI her zaman yanınızda';

  @override
  String get paywallHeroSubtitle =>
      'Cebinizdeki AI ile öğeler ekleyin, listeleri düzenleyin ve zamandan tasarruf edin';

  @override
  String get paywallBenefit1Desc => 'Öğeleri 7/24 ekler, düzenler ve önerir';

  @override
  String get paywallBenefit2Desc => '3 liste sınırı yok';

  @override
  String get paywallBenefit3Desc => 'Gider takibi ve aile listeleri';

  @override
  String get paywallPackageMonthlyDesc => 'Tam esneklik';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Ücretsiz başlayın — $days gün';
  }

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

  @override
  String get gestureHint =>
      'Seçmek için basılı tutun • Kaldırmak için kaydırın';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Sık Kullanılanlarım';

  @override
  String get catalogSearchGlobal => 'Herhangi bir ürünü arayın...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category\'da ara...';
  }

  @override
  String get catalogSortPopular => 'En popüler';

  @override
  String get catalogSortAZ => 'A\'dan Z\'ye';

  @override
  String get catalogFilterNational => 'Vatandaşlar';

  @override
  String get catalogRareSection => 'ülkenizde daha az yaygın';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 ekle →';
  }

  @override
  String get catalogProductNotFound => 'Ürün bulunamadı, adını yazın';

  @override
  String get catalogBrowse => 'Kataloğa Göz Atın';

  @override
  String get offlineBanner => 'Çevrimdışısınız';

  @override
  String get consentTitle => 'Gizlilik ve Analitik';

  @override
  String get consentBody =>
      'KipiList deneyiminizi geliştirmek için Firebase Analytics\'i kullanıyor. Verileriniz Gizlilik Politikamıza uygun olarak işlenmektedir.';

  @override
  String get consentAccept => 'Kabul etmek';

  @override
  String get consentDecline => 'Hayır, teşekkürler';

  @override
  String get mealPlannerPantryAllAvailable => 'Stokta var';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eksik öğe',
      one: '$count eksik öğe',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Son kullanma tarihi';

  @override
  String get notInformed => 'Bilgilendirilmedi';

  @override
  String get manageCategoriesTitle => 'Kategorileri Yönet';

  @override
  String get sortAZ => 'A\'dan Z\'ye';

  @override
  String get backToToday => 'Bugüne dön';
}
