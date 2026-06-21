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
  String pantryDeficitCount(int count, String unit) {
    return '$count$unit eksik';
  }

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
  String get scanProductTitle => 'Ürünü Tara';

  @override
  String get positionBarcodeCenter => 'Barkodu ortaya yerleştirin';

  @override
  String get product => 'Ürün';

  @override
  String get settingsAppBar => 'Ayarlar';

  @override
  String get preferencesSection => 'Tercihler';

  @override
  String get aiSection => 'Yapay Zeka Asistanı';

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
  String get themeMode => 'Tema modu';

  @override
  String get chooseThemeMode => 'Tema modunu seçin';

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
  String get myAchievements => 'Başarılarım';

  @override
  String get itemsPurchased => 'Satın Alınan Öğeler';

  @override
  String get totalSavings => 'Toplam Tasarruf';

  @override
  String get currentStreak => 'Mevcut Seri';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
      one: '$count gün',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Kilidi Açılmış Rozetler';

  @override
  String get badgeBeginner => 'Acemi';

  @override
  String get badgeOrganized => 'Organize';

  @override
  String get badgeSavingMaster => 'Master kaydetme';

  @override
  String get badgeSuperPlanner => 'Süper Planlayıcı';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased / $total öğe';
  }

  @override
  String progressBudget(String amount) {
    return 'Bütçe: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Toplam: $amount';
  }

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
  String get keepAdding => 'Eklemeye devam et';

  @override
  String get keepAddingSubtitle =>
      'Birden fazla öğe eklemek için sayfayı açık tutun';

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
  String get chatEmptySubtitle =>
      'Başlamak için ürün önerileri, tarifler veya tasarruf ipuçları isteyin.';

  @override
  String get chatEmptyTitle => 'Sohbetiniz boş';

  @override
  String chatError(String error) {
    return 'Sohbet yüklenirken hata: $error';
  }

  @override
  String get goodResponse => 'İyi yanıt';

  @override
  String get badResponse => 'Kötü yanıt';

  @override
  String get scrollToBottom => 'Aşağıya doğru kaydır';

  @override
  String get somethingWentWrong => 'Bir şeyler ters gitti';

  @override
  String get editMessage => 'Mesajı düzenle';

  @override
  String get searchConversations => 'Konuşmaları arayın';

  @override
  String get dateGroupToday => 'Bugün';

  @override
  String get dateGroupYesterday => 'Dün';

  @override
  String get dateGroupPrevious7Days => 'Önceki 7 gün';

  @override
  String get dateGroupOlder => 'daha yaşlı';

  @override
  String get aiAssistantTitle => 'Yapay Zeka Asistanı';

  @override
  String get closeSheet => 'Kapalı';

  @override
  String get scanBarcodeTitle => 'Barkodu Tara';

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
    return '$remaining Bu ay kalan AI işlemleri — sınırsız yükseltme';
  }

  @override
  String get aiUsageExhausted =>
      'Aylık AI sınırına ulaşıldı. Sınırsız olarak Pro\'ya yükseltin →';

  @override
  String get undo => 'Geri al';

  @override
  String get newChatStarted => 'New chat started';

  @override
  String get quickAddToList => 'Add to list';

  @override
  String get aiCapabilitiesTitle => 'What can I do?';

  @override
  String get aiCapabilitiesLists => 'Shopping Lists';

  @override
  String get aiCapabilitiesBudget => 'Budget & Prices';

  @override
  String get aiCapabilitiesRecipes => 'Recipes & Menus';

  @override
  String get aiCapabilitiesOrganize => 'Organization';

  @override
  String get marketModeDescription => 'Check off items as you shop';

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
  String get onboardingMaybeLater => 'Belki daha sonra';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hey $name, alışverişinizi doğru şekilde düzenleyin.';
  }

  @override
  String get onboardingSlide1Title => 'Akıllı Alışveriş Listeleri';

  @override
  String get onboardingSlide1Body =>
      'Anında listeler oluşturun ve paylaşın. Kipi, alışkanlıklarınıza göre öğeleri otomatik olarak ekler.';

  @override
  String get onboardingSlide2Title => 'Kipi\'yle tanışın';

  @override
  String get onboardingSlide2Body =>
      'İstediğiniz şeyi sorun; listeler oluşturun, tarifler bulun, kilerinizi takip edin, haftanızı planlayın.';

  @override
  String get onboardingSlide3Title => 'Kiler ve Yemek Planlama';

  @override
  String get onboardingSlide3Body =>
      'Sahip olduklarınızı takip edin, yemekleri planlayın ve otomatik olarak alışveriş listeleri oluşturun.';

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
  String get paywallTrialTitle => 'Ücretsiz deneyin!';

  @override
  String get paywallTrialSubtitle =>
      'İstediğiniz zaman iptal edin. Bugün ücret yok.';

  @override
  String get paywallTrialCta => 'Ücretsiz Denemeyi Başlat';

  @override
  String get recipeAddToList => 'Alışveriş listesine ekle';

  @override
  String get recipeAddError => 'Listenize eklenemedi. Lütfen tekrar deneyin.';

  @override
  String get recipeTapToCheck =>
      'Yemek pişirirken kontrol etmek için bir malzemeye dokunun';

  @override
  String get recipeIngredientInPantry => 'Kilerde';

  @override
  String get recipeIngredientLowPantry => 'Kilerde düşük';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0, $listName\'e eklendi';
  }

  @override
  String get noListSelected => 'Liste seçilmedi. Önce bir liste açın.';

  @override
  String get paywallFeaturesTitle => 'İhtiyacınız olan her şey:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI listenizi otomatik olarak düzenler';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'İhtiyacınız kadar liste oluşturun';

  @override
  String get paywallFeatureDescSharing =>
      'Gerçek zamanlı olarak birlikte alışveriş yapın';

  @override
  String get paywallFeatureDescPantry => 'Evde ne varsa takip edin';

  @override
  String get paywallFeatureDescBudget => 'Her ay bütçenizi aşındırmayın';

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
  String paywallSavePercent(int percent) {
    return '%$percent TASARRUF EDİN';
  }

  @override
  String paywallPricePerMonth(String price) {
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
    return 'İlk $days gün ÜCRETSİZ';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Play tarafından güvence altına alınmıştır · İstediğiniz zaman iptal edin';

  @override
  String get paywallPolicy => 'Gizlilik Politikası';

  @override
  String get paywallTerms => 'Kullanım Koşulları';

  @override
  String get paywallRestore => 'Eski haline getirmek';

  @override
  String get paywallTimelineToday => 'Bugün';

  @override
  String get paywallTimelineTodayDesc => 'Tam erişimin kilidini anında açın';

  @override
  String paywallTimelineDay(int day) {
    return 'Gün $day';
  }

  @override
  String get paywallTimelineReminderDesc =>
      'Deneme süresi bitmeden size hatırlatırız';

  @override
  String get paywallTimelineChargeDesc =>
      'Aboneliğiniz başlıyor; istediğiniz zaman iptal edin';

  @override
  String get paywallHeroFeatureTitle => 'Yapay Zeka Alışveriş Asistanı';

  @override
  String get paywallHeroFeatureDesc =>
      'Tüm listeyi söyleyin veya yapıştırın; yapay zeka, listeyi saniyeler içinde sıralar, kategorilere ayırır ve bütçelendirir';

  @override
  String get paywallBasedOnAnswers => 'Yanıtlarınıza göre kişiselleştirildi';

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
  String get paywallWelcomeOfferBadge => '🎁 Hoş geldin teklifi';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Ücretsiz başlayın — $days gün';
  }

  @override
  String get premiumUpgrade => 'Kilidi açmak için yükseltin';

  @override
  String get itemRemoved => 'Öğe kaldırıldı';

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
  String get pantryItemAdded => 'Öğe eklendi';

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
  String get recipeYieldServings => 'Verim porsiyonları';

  @override
  String get recipeManualTotalCost => 'Manuel toplam maliyet';

  @override
  String get recipeManualTotalCostHint =>
      'İçerik fiyatlarından tahmin yapmak için boş bırakın.';

  @override
  String get recipeEstimatedTotalCost => 'Tahmini toplam maliyet';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / porsiyon';
  }

  @override
  String recipeServesCount(int count) {
    return '$count hizmet veriyor';
  }

  @override
  String get recipeEstimatePartial => 'Fiyatlı içeriklere dayalı kısmi tahmin.';

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
  String get mealPlannerEstimatePartial =>
      'Kısmi fiyat verileri içeren tariflere dayalı tahmin.';

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
  String shareReferralText(String url) {
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
  String get catalogRareBadge => 'Nadir';

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
  String get catalogCategories => 'Kategoriler';

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
  String get mealPlannerPantryAllAvailable => 'Tüm malzemeler mevcut';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 eksik';
  }

  @override
  String get mealPlannerManageTypes => 'Yemek türlerini yönetin';

  @override
  String get mealPlannerAddType => 'Yemek türü ekle';

  @override
  String get mealPlannerEditType => 'Yemek türünü düzenle';

  @override
  String get mealPlannerTypeName => 'İsim';

  @override
  String get mealPlannerTypeColor => 'Renk';

  @override
  String get mealPlannerTypeIcon => 'Simge';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      'Bu yemek türünü silmek istediğinizden emin misiniz? Bu türle planlanan yemekler kalacaktır.';

  @override
  String get mealPlannerTypeNameEmpty => 'Ad boş olamaz';

  @override
  String get mealPlannerTypeDeleteError => 'Bu yemek türü silinemiyor.';

  @override
  String get mealPlannerCustomTypeLabel => 'Özel tür';

  @override
  String get mealPlannerDefaultTypeLabel => 'Varsayılan tür';

  @override
  String get expirationDate => 'Son kullanma tarihi';

  @override
  String get notInformed => 'Ayarlanmadı';

  @override
  String get skip => 'Atlamak';

  @override
  String get onboardingAiTitle => 'Kipi ile sohbet et';

  @override
  String get onboardingAiGreeting =>
      'MERHABA! Ben kişisel alışveriş asistanınız Kipi\'yim! 🛒';

  @override
  String get onboardingAiAskName => 'Adınız ne?';

  @override
  String get onboardingAiNameHint => 'Adınızı yazın...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Tanıştığımıza memnun oldum $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'En sevdiğiniz yemek hangisi?';

  @override
  String get onboardingAiFoodHint => 'örneğin Pizza, Suşi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Harika seçimler! İşte listenize ekleyeceğim şeyler:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Bu iyi görünüyor mu? Başka bir şey yazmayı deneyin!';

  @override
  String get onboardingAiReady =>
      'Harika! Başlamaya hazırsınız. Hesabınızı kuralım!';

  @override
  String get onboardingAiContinue => 'Devam →';

  @override
  String get connectionError => 'Bağlantı Hatası';

  @override
  String connectionErrorDesc(String error) {
    return 'Sunucuya bağlanılamadı. İnternetinizi kontrol edin.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Listeler yüklenirken hata oluştu';

  @override
  String get errorLoadingItems => 'Öğeler yüklenirken hata oluştu';

  @override
  String get noListsFound => 'Liste bulunamadı';

  @override
  String get backToToday => 'Bugüne dön';

  @override
  String get quickSuggestions => 'Hızlı öneriler';

  @override
  String get aiEnergyLow => 'Düşük yapay zeka enerjisi';

  @override
  String get aiUnlockUnlimited => 'Sınırsız yapay zekanın kilidini açın';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 bugün';
  }

  @override
  String get aiSubscribeUnlimited => 'Sınırsız yapay zeka için abone olun';

  @override
  String get unlockWithAd => 'Reklamla Kilidini Aç';

  @override
  String get conversationHistoryTitle => 'Konuşma geçmişi';

  @override
  String get noConversationsFound => 'Hiçbir görüşme bulunamadı';

  @override
  String get errorLoadingHistory => 'Geçmiş yüklenirken hata oluştu';

  @override
  String get deleteConversationTitle => 'Görüşme Silinsin mi?';

  @override
  String get deleteConversationConfirm => 'Bu işlem geri alınamaz.';

  @override
  String get deleteConversation => 'Silmek';

  @override
  String get subscription => 'Abonelik';

  @override
  String get kipiListProActive => 'KipiList Pro Aktif';

  @override
  String get unlockPremiumTitle =>
      'Sınırsız listelerin, yapay zekanın ve daha fazlasının kilidini açın';

  @override
  String get loadingSubscription => 'Abonelik yükleniyor...';

  @override
  String get errorLoadingSubscription => 'Abonelik yüklenirken hata oluştu';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Profilim';

  @override
  String get profileSubtitle => 'Yapay zeka asistanı için kişisel tercihler';

  @override
  String get customizeAiAssistant => 'Yapay Zeka asistanını özelleştirin';

  @override
  String get assistantHistory => 'Asistan geçmişi';

  @override
  String get assistantHistorySubtitle => 'Konuşma geçmişinizi görüntüleyin';

  @override
  String get manageCategories => 'Kategorileri Yönet';

  @override
  String get manageCategoriesSubtitle => 'Öğe kategorilerini yönet';

  @override
  String get customizeAssistant => 'Özelleştirmek';

  @override
  String get assistantName => 'Asistan adı';

  @override
  String get chooseIcon => 'Simge seç';

  @override
  String get profileSaved => 'Profil başarıyla kaydedildi!';

  @override
  String get errorSavingProfile => 'Kaydederken hata oluştu: null';

  @override
  String get userProfile => 'Kullanıcı Profili';

  @override
  String get profileDescription =>
      'Yapay zeka asistanının kişiselleştirilmiş öğeler ve tarifler önerebilmesi için bize kişisel tercihlerinizi bildirin.';

  @override
  String get preferredMarket => 'Tercih Edilen Pazar';

  @override
  String get preferredMarketHint => 'Örn: Süpermarket X';

  @override
  String get dietaryRestrictions => 'Diyet Kısıtlamaları';

  @override
  String get dietaryRestrictionsHint => 'Örn: vegan, vejetaryen, glutensiz';

  @override
  String get marketsToAvoid => 'Kaçınılması Gereken Piyasalar';

  @override
  String get marketsToAvoidHint => 'Örn: Y Pazarı, Z Pazarı';

  @override
  String get observations => 'Notlar';

  @override
  String get observationsHint => 'Asistan için diğer tercihler';

  @override
  String get saveProfile => 'Profili Kaydet';

  @override
  String get everythingReady => 'Her şey hazır!';

  @override
  String get youCompletedList => 'Listeyi tamamladınız!';

  @override
  String get selectCheaperAlternative =>
      'Maliyeti optimize etmek için daha ucuz bir ürün alternatifi seçin.';

  @override
  String get suggestedItems => 'Önerilen öğeler';

  @override
  String get swapped => 'Değiştirildi';

  @override
  String get swap => 'Takas';

  @override
  String get chooseThemeColor => 'Tema Rengini Seçin';

  @override
  String get manageCategoriesTitle => 'Kategorileri Yönet';

  @override
  String get categoryLimitReached =>
      'Ücretsiz sürümde 10 kategori sınırı bulunmaktadır. Pro\'ya yükseltin!';

  @override
  String get deleteCategoryTitle => 'Kategoriyi Sil';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\" kategorisindeki öğeler \"Diğerleri\"ne taşınacaktır.\nDevam etmek?';
  }

  @override
  String get deleteCategory => 'Silmek';

  @override
  String get newCategoryDialog => 'Yeni kategori';

  @override
  String get editCategoryDialog => 'Kategoriyi düzenle';

  @override
  String get categoryName => 'Kategori adı';

  @override
  String get categoryNameHint => 'Örn: Etler';

  @override
  String get categoryColorLabel => 'Renk';

  @override
  String get categoryIconLabel => 'Simge';

  @override
  String itemAddedSnack(String name) {
    return '$name eklendi';
  }

  @override
  String get kipiQuickBarHint => 'Ne satın almanız gerekiyor?';

  @override
  String replaceItem(String item) {
    return '$item öğesini değiştirin';
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
  String get onboardingHookHeadline =>
      'Bir bakkaliye ürününü bir daha asla unutma';

  @override
  String get onboardingGoalSaveMoney => 'Paradan tasarruf edin';

  @override
  String get onboardingGoalNeverForget => 'Öğeleri asla unutma';

  @override
  String get onboardingGoalFaster => 'Daha hızlı alışveriş yapın';

  @override
  String get onboardingGoalFamily => 'Aile alışverişini organize edin';

  @override
  String get onboardingGoalRecipes => 'Tarifleri keşfedin';

  @override
  String get onboardingGoalPantry => 'Parça kileri';

  @override
  String get onboardingCommitmentsTitle => 'Senin için önemli olan ne?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'KipiList\'i kişiselleştirmek için hedeflerinizi seçin';

  @override
  String get onboardingCommitmentsCta => 'Hadi gidelim!';

  @override
  String get onboardingPersonalizationNameLabel => 'Adınız';

  @override
  String get onboardingPersonalizationNameHint => 'Adınızı girin';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'Ne için alışveriş yaparsınız?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Kimin için alışveriş yapıyorsun?';

  @override
  String get onboardingCategoryGrocery => 'Bakkaliye';

  @override
  String get onboardingCategoryPharmacy => 'Eczane';

  @override
  String get onboardingCategoryRecipes => 'Tarifler';

  @override
  String get onboardingCategoryHome => 'Ev';

  @override
  String get onboardingCategoryPet => 'Evcil Hayvan';

  @override
  String get onboardingGroupSolo => 'Benim';

  @override
  String get onboardingGroupCouple => 'Çift';

  @override
  String get onboardingGroupFamily => 'Aile';

  @override
  String get onboardingLoadingTitle => 'Deneyiminiz hazırlanıyor...';

  @override
  String get onboardingLoadingStep1 => 'Tercihleriniz analiz ediliyor...';

  @override
  String get onboardingLoadingStep2 => 'Yapay zeka asistanı kuruluyor...';

  @override
  String get onboardingLoadingStep3 => 'Neredeyse hazır...';

  @override
  String get onboardingLoadingStat1Label => 'Kataloglanan ürünler';

  @override
  String get onboardingLoadingStat2Label => 'Kullanıcılar yardımcı oldu';

  @override
  String get onboardingLoadingStat3Label => 'Dakikalar kaydedildi';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, her yolculukta tasarruf edin!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, hiçbir öğeyi asla unutma!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, yarı zamanda alışveriş yapın!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, aile alışverişini organize edin!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, yeni tarifler keşfet!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, kilerinizi mükemmel bir şekilde takip edin!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Her yolculukta tasarruf edin!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => 'Bir öğeyi asla unutma!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Yarı zamanda alışveriş yapın!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Aile alışverişini düzenleyin!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Yeni tarifler keşfedin!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Kilerinizi mükemmel bir şekilde takip edin!';

  @override
  String paywallPricePerDay(String price) {
    return 'Yalnızca $price/gün — bir kahveden az';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Şimdilik atla';

  @override
  String get paywallTestimonial =>
      'Yapay zeka alışverişimi saniyeler içinde organize ediyor. Yolculuk başına 20 dakika tasarruf ediyorum.';

  @override
  String get paywallTestimonialAuthor => 'Anne S.';

  @override
  String get paywallTrialDisclaimer =>
      'İstediğiniz zaman iptal edin · Deneme süreniz bitene kadar ücretsiz';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Merhaba $name! Hangi $category\'e ihtiyacınız var?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Hangi $category\'a ihtiyacınız var?';
  }

  @override
  String get onboardingAiDemoYes => 'Evet!';

  @override
  String get onboardingAiDemoReaction => 'Güzel!';

  @override
  String get onboardingAiDemoChange => 'Öğeyi değiştir';

  @override
  String get onboardingAiDemoOffer => 'Başka bir şey yazmayı deneyin!';

  @override
  String get onboardingAiDemoContinue => 'Devam etmek';

  @override
  String get onboardingAiDemoSlideHeadline => 'Alışveriş listeniz artık AI ile';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Kipi\'nin tam listenizi saniyeler içinde nasıl oluşturduğunu görün';

  @override
  String get onboardingAiDemoSlideCta => 'Bunu istiyorum! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Barbekü düzenliyorum 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Hazır! İhtiyacınız olan her şey burada:';

  @override
  String get onboardingAiDemoSlideDone =>
      'Listeyi saniyeler içinde tamamlayın ✨';

  @override
  String get onboardingPainTitle => 'Seni en çok ne sinirlendirir?';

  @override
  String get onboardingPainSubtitle => 'Dürüst olun; her birini düzelteceğiz';

  @override
  String get onboardingPainCta => 'Evet, bunu benim için düzelt →';

  @override
  String get onboardingPainForget => 'Mağazadaki eşyaları unutuyorum';

  @override
  String get onboardingPainFamily => 'Ailem listeyi hiç görmüyor';

  @override
  String get onboardingPainOverspend => 'Her zaman bütçeyi aşarım';

  @override
  String get onboardingPainRepeat => 'Bir yolculuk asla yeterli değildir';

  @override
  String get aiWelcomeContent =>
      'Merhaba! 👋 Ben **Kipi**, kişisel alışveriş ve yemek tarifi asistanınım!\n\nSize yardım etmek için buradayım:\n🛒 Alışverişinizi otomatik olarak kategorilere göre **düzenleyin**\n💰 **Bütçenizi takip edin** ve paradan tasarruf etmenizi sağlayacak ipuçları verin\n🍲 **Elinizde olanlarla lezzetli tarifler önerin**\n\nBugün sana nasıl yardımcı olabilirim? İlk listenizi oluşturarak başlayabilirsiniz!';

  @override
  String get aiWelcomeSuggestCreateList => 'İlk listemi oluştur';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, ilk alışveriş listemi oluşturmama yardım et';

  @override
  String get aiWelcomeSuggestSave => 'Paradan nasıl tasarruf edilir?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, alışverişten tasarruf etmeme nasıl yardımcı olabilirsin?';

  @override
  String get suggestionMilk => 'Süt';

  @override
  String get suggestionBread => 'Ekmek';

  @override
  String get suggestionEggs => 'Yumurtalar';

  @override
  String get suggestionCoffee => 'Kahve';

  @override
  String get suggestionRice => 'Pirinç';

  @override
  String get suggestionFruits => 'Meyveler';

  @override
  String get recipeIngredientSingular => '1 bileşen';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count malzemeler';
  }

  @override
  String get pantryAvailabilityAll => 'Her şey hazır!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return '$availableCount/$totalCount kilerde';
  }

  @override
  String onboardingProgress(int current, int total) {
    return '$current / $total Adımı';
  }

  @override
  String get onboardingDemoHeadline =>
      'Bize ne planladığınızı söyleyin. Kipi listeyi oluşturur.';

  @override
  String get onboardingDemoSubtitle =>
      'Eşyaları saniyeler içinde organize edin.';

  @override
  String get onboardingPersonalizationEffect =>
      'Bu, Kipi\'nin daha alakalı öğeler ve miktarlar önermesine yardımcı olur.';

  @override
  String get onboardingPersonalizeWithName => 'Adımla kişiselleştir';

  @override
  String get onboardingCreateFirstList => 'İlk listemi oluştur';

  @override
  String get onboardingPromptWeekly => 'Haftalık ihtiyaçlarımı planla';

  @override
  String get onboardingPromptEvent => 'Özel bir şey hazırlıyorum';

  @override
  String get onboardingPromptEssentials => 'Benim için olmazsa olmazları öner';

  @override
  String get onboardingFallbackGrocery =>
      '🍚 Pirinç|🫘 Fasulye|🥛 Süt|🥚 Yumurta|🍞 Ekmek|🍎 Meyve';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 Yapışkanlı bandajlar|🌡️ Termometre|🧴 Antiseptik|😷 Yüz maskeleri|🧼 El dezenfektanı';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 Domates|🧅 Soğan|🧄 Sarımsak|🥚 Yumurta|🧀 Peynir|🌿 Taze otlar';

  @override
  String get onboardingFallbackHome =>
      '🧻 Kağıt havlular|🧽 Süngerler|🧴 Deterjan|🗑️ Çöp torbaları|🧹 Temizlik bezleri';

  @override
  String get onboardingFallbackPet =>
      '🥣 Evcil hayvan maması|🦴 İkramlar|🧼 Evcil hayvan şampuanı|🧸 Oyuncak|🧻 Atık torbaları';

  @override
  String get onboardingListSaveFailed =>
      'Malzemeleri hazırladım ama listeyi kaydedemedim. Uygulamada tutmayı tekrar deneyin.';

  @override
  String onboardingListCreated(int count) {
    return 'Listeniz hazır: $count öğe sizin için düzenlendi.';
  }

  @override
  String get onboardingContinueToOffer => 'Devam etmek';

  @override
  String onboardingPaywallListReady(int count) {
    return 'İlk listeniz hazır · $count öğe';
  }

  @override
  String get paywallContinueFree => 'Ücretsiz sürümle devam edin';

  @override
  String get paywallPurchasePending =>
      'Ödemeniz onay bekliyor. Onaylandıktan sonra erişim otomatik olarak serbest bırakılacaktır.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return 'Bugün: ücretsiz. Daha sonra $price/yıl, $days gün sonra. İstediğiniz zaman iptal edin.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return 'Bugün: ücretsiz. Daha sonra $price/ay, $days gün sonra. İstediğiniz zaman iptal edin.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price/yıl. İstediğiniz zaman iptal edin.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/ay. İstediğiniz zaman iptal edin.';
  }

  @override
  String get obHookTitle => 'Daha akıllı alışveriş burada başlıyor';

  @override
  String get obHookSubtitle =>
      'Her yolculukta zamandan ve paradan tasarruf etmenizi sağlayan yapay zeka destekli listeler.';

  @override
  String get obHookSocial => 'Dünya çapında binlerce alışverişçinin güvendiği';

  @override
  String get obHookCta => 'Başlayın';

  @override
  String get obQuizHouseholdTitle => 'Kimin için alışveriş yapıyorsun?';

  @override
  String get obQuizHouseholdSolo => 'Benim';

  @override
  String get obQuizHouseholdCouple => 'Ben ve ortağım';

  @override
  String get obQuizHouseholdFamilySmall => '3-4 kişilik aile';

  @override
  String get obQuizHouseholdFamilyLarge => '5+ kişilik aile';

  @override
  String get obQuizFrequencyTitle =>
      'Ne sıklıkla market alışverişi yaparsınız?';

  @override
  String get obQuizFrequencyDaily => 'Neredeyse her gün';

  @override
  String get obQuizFrequencyWeekly => 'Haftada bir';

  @override
  String get obQuizFrequencyBiweekly => 'Her iki haftada bir';

  @override
  String get obQuizFrequencyMonthly => 'Büyük aylık taşıma';

  @override
  String get obQuizPainTitle => 'Alışverişte sizi en çok ne sinirlendirir?';

  @override
  String get obQuizPainForget => 'Eşyaları hep unutuyorum';

  @override
  String get obQuizPainOverspend => 'Planladığımdan daha fazlasını harcıyorum';

  @override
  String get obQuizPainWaste => 'Evde yiyecekler çöpe gidiyor';

  @override
  String get obQuizPainTime => 'Çok fazla zaman alıyor';

  @override
  String get obQuizSavingsTitle => 'Aylık ne kadar tasarruf etmek istersiniz?';

  @override
  String get obQuizSavingsSmall => 'Biraz — her zerre önemlidir';

  @override
  String get obQuizSavingsMedium => 'Market faturamın yaklaşık %10\'u';

  @override
  String get obQuizSavingsLarge => 'Mümkün olduğu kadar';

  @override
  String get obQuizMethodTitle =>
      'Bugün alışveriş listelerini nasıl hazırlıyorsunuz?';

  @override
  String get obQuizMethodPaper => 'Kalem ve kağıt';

  @override
  String get obQuizMethodNotes => 'Notlar uygulaması';

  @override
  String get obQuizMethodMemory => 'Bunu kafamda tutuyorum';

  @override
  String get obQuizMethodNone => 'Liste yapmıyorum';

  @override
  String get obSocialTitle => 'İyi bir arkadaşsın';

  @override
  String get obSocialSubtitle =>
      'Sizin gibi alışveriş yapanlar KipiList ile zaten tasarruf ediyor';

  @override
  String get obSocialQuote1 =>
      'Artık hiçbir şeyi unutmuyorum. Yapay zeka listemi saniyeler içinde oluşturuyor.';

  @override
  String get obSocialQuote2 =>
      'İlk ayda market faturamızı gözle görülür şekilde kestik.';

  @override
  String get obSocialQuote3 =>
      'Listeyi eşimle paylaşmak alışveriş kaosuna son verdi.';

  @override
  String get obLoadingTitle => 'Kişiselleştirilmiş planınızı oluşturmak...';

  @override
  String get obLoadingStepProfile => 'Evinize göre ayarlama';

  @override
  String get obLoadingStepHabits => 'Alışveriş rutininize uyum sağlama';

  @override
  String get obLoadingStepSavings => 'Tasarruf stratejinizi optimize etme';

  @override
  String get obLoadingStepLists => 'Akıllı listelerinizi hazırlamak';

  @override
  String get obRevealTitle => 'Planınız hazır!';

  @override
  String get obRevealSubtitle =>
      'İşte KipiList\'in sizin için nasıl çalışacağı';

  @override
  String get obRevealSavingsCaption => 'KipiList ile öngörülen tasarruflar';

  @override
  String obRevealMonth(int n) {
    return 'Ay $n';
  }

  @override
  String get obRevealFeatureAi =>
      'Yapay zeka listelerinizi oluşturur ve düzenler';

  @override
  String get obRevealFeatureBudget => 'Hedefinize göre takip edilen harcamalar';

  @override
  String get obRevealFeaturePantry => 'Kiler takibi gıda israfını azaltır';

  @override
  String get obRevealFeatureShare => 'Evinizle gerçek zamanlı paylaşım';

  @override
  String get obPaywallTitle => 'Planınızın kilidini açın';

  @override
  String get obPaywallRetry => 'Tekrar deneyin';

  @override
  String get obLoginTitle => 'Planınızı kaydedin';

  @override
  String get obLoginSubtitle =>
      'Listelerinizin cihazlar arasında senkronize edilmesi için oturum açın';

  @override
  String get obLoginGoogle => 'Google ile devam et';

  @override
  String get obLoginApple => 'Apple\'la devam et';

  @override
  String get obLoginSkip => 'Şimdi değil';

  @override
  String get obLoginError =>
      'Oturum açma başarısız oldu. Tekrar deneyin veya şimdilik atlayın.';

  @override
  String get searchMessages => 'Mesajları ara...';

  @override
  String get deletedList => 'Silinen liste';

  @override
  String get openConversation => 'Konuşmayı aç';

  @override
  String get userRole => 'Sen';

  @override
  String get assistantRole => 'Asistan';

  @override
  String get agentActionsRunning => 'Eylemler çalıştırılıyor...';

  @override
  String get agentActionsFailed => 'İşlemler çalıştırılamadı';

  @override
  String get agentActionsPremium => 'Eylemler Premium gerektirir';

  @override
  String agentActionsCompleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count actions completed',
      one: '1 action completed',
    );
    return '$_temp0';
  }

  @override
  String get undoChanges => 'Değişiklikleri geri al';

  @override
  String premiumStepDescription(String description) {
    return '$description (Premium)';
  }

  @override
  String get itemAddedToList => 'Öğe listeye eklendi.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return 'Önceki durum: $quantity $unit [$category]$price';
  }

  @override
  String itemsAffectedByAction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items affected by the action.',
      one: '1 item affected by the action.',
    );
    return '$_temp0';
  }

  @override
  String get premiumActionsPrompt =>
      'Otomatik işlemlerin kilidini açmak için Premium\'a abone olun.';

  @override
  String get viewPlans => 'Planları görüntüle';

  @override
  String get artifactSynced => 'Senkronize edildi';

  @override
  String get artifactBudgetLabel => 'Bütçe:';

  @override
  String get totalEstimatedLabel => 'Tahmini toplam';

  @override
  String get quickActionPantry => 'Kileri görüntüle';

  @override
  String get quickActionAi => 'Kipi ile sohbet et';

  @override
  String aiApiError(int statusCode) {
    return 'AI hizmeti bir hata döndürdü ($statusCode).';
  }

  @override
  String get aiTimeoutError => 'Talep çok uzun sürdü. Lütfen tekrar deneyin.';

  @override
  String get aiConnectionError =>
      'AI hizmetine bağlanılamadı. Bağlantınızı kontrol edin.';

  @override
  String get aiEmptyResponseError => 'AI hizmeti boş bir yanıt döndürdü.';

  @override
  String get aiInvalidResponseError =>
      'AI hizmeti geçersiz bir yanıt döndürdü.';

  @override
  String get categoryFruits => 'Meyveler';

  @override
  String get categoryCleaning => 'Temizlik';

  @override
  String get categoryBeverages => 'İçecekler';

  @override
  String get categoryBakery => 'Fırın';

  @override
  String get categoryMeat => 'Et';

  @override
  String get categoryDairy => 'Günlük';

  @override
  String get categoryVegetables => 'Sebze';

  @override
  String get categoryGrains => 'Tahıllar ve tahıllar';

  @override
  String get categoryHygiene => 'Kişisel bakım';

  @override
  String get categoryFrozen => 'Dondurulmuş gıdalar';

  @override
  String get categoryCanned => 'Konserve ürünler';

  @override
  String get categorySeasonings => 'Baharatlar';

  @override
  String get categorySweets => 'Tatlılar ve tatlılar';

  @override
  String get categoryAlcohol => 'Alkollü içecekler';

  @override
  String get categoryFish => 'Balık';

  @override
  String get categoryColdCuts => 'Soğuk etler';

  @override
  String get categoryUtilities => 'Ev malzemeleri';

  @override
  String get categoryPet => 'Evcil hayvan malzemeleri';

  @override
  String get categoryBaby => 'Bebek';

  @override
  String get categoryOthers => 'Diğer';

  @override
  String chatEmptyGreeting(String name) {
    return 'Merhaba $name, ben Kipi 👋';
  }

  @override
  String get chatEmptyGreetingNoName => 'Merhaba ben Kipi 👋';

  @override
  String get chatEmptyPitch =>
      'Listeler oluşturuyorum, tarifler öneriyorum ve nereye kaydedeceğimi buluyorum. Nereden başlayacağız?';

  @override
  String get aiWelcomeSuggestBarbecue => 'Barbekü planlayın';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'Kipi, barbekü düzenliyorum - alışveriş listesini oluşturmama yardım et';

  @override
  String get aiRateLimitError =>
      'Kısa sürede çok fazla mesaj var. Birkaç saniye bekleyip tekrar deneyin.';

  @override
  String get chatHistoryErrorTitle => 'Bu görüşme yüklenemedi';

  @override
  String get chatHistoryErrorBody =>
      'Bizim açımızdan bir şeyler ters gitti. Tekrar denemek için Yeniden dene\'ye dokunun.';

  @override
  String get chatHistoryOfflineTitle => 'Çevrimdışısınız';

  @override
  String get chatHistoryOfflineBody =>
      'İnternet bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String get aiGeneratingResponse => 'Yanıt oluşturuluyor…';
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
  String pantryDeficitCount(int count, String unit) {
    return '$count$unit eksik';
  }

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
  String get scanProductTitle => 'Ürünü Tara';

  @override
  String get positionBarcodeCenter => 'Barkodu ortaya yerleştirin';

  @override
  String get product => 'Ürün';

  @override
  String get settingsAppBar => 'Ayarlar';

  @override
  String get preferencesSection => 'Tercihler';

  @override
  String get aiSection => 'Yapay Zeka Asistanı';

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
  String get themeMode => 'Tema modu';

  @override
  String get chooseThemeMode => 'Tema modunu seçin';

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
  String get myAchievements => 'Başarılarım';

  @override
  String get itemsPurchased => 'Satın Alınan Öğeler';

  @override
  String get totalSavings => 'Toplam Tasarruf';

  @override
  String get currentStreak => 'Mevcut Seri';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
      one: '$count gün',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Kilidi Açılmış Rozetler';

  @override
  String get badgeBeginner => 'Acemi';

  @override
  String get badgeOrganized => 'Organize';

  @override
  String get badgeSavingMaster => 'Master kaydetme';

  @override
  String get badgeSuperPlanner => 'Süper Planlayıcı';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased / $total öğe';
  }

  @override
  String progressBudget(String amount) {
    return 'Bütçe: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Toplam: $amount';
  }

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
  String get keepAdding => 'Eklemeye devam et';

  @override
  String get keepAddingSubtitle =>
      'Birden fazla öğe eklemek için sayfayı açık tutun';

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
  String get chatEmptySubtitle =>
      'Başlamak için ürün önerileri, tarifler veya tasarruf ipuçları isteyin.';

  @override
  String get chatEmptyTitle => 'Sohbetiniz boş';

  @override
  String chatError(String error) {
    return 'Sohbet yüklenirken hata: $error';
  }

  @override
  String get goodResponse => 'İyi yanıt';

  @override
  String get badResponse => 'Kötü yanıt';

  @override
  String get scrollToBottom => 'Aşağıya doğru kaydır';

  @override
  String get somethingWentWrong => 'Bir şeyler ters gitti';

  @override
  String get editMessage => 'Mesajı düzenle';

  @override
  String get searchConversations => 'Konuşmaları arayın';

  @override
  String get dateGroupToday => 'Bugün';

  @override
  String get dateGroupYesterday => 'Dün';

  @override
  String get dateGroupPrevious7Days => 'Önceki 7 gün';

  @override
  String get dateGroupOlder => 'daha yaşlı';

  @override
  String get aiAssistantTitle => 'Yapay Zeka Asistanı';

  @override
  String get closeSheet => 'Kapalı';

  @override
  String get scanBarcodeTitle => 'Barkodu Tara';

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
    return '$remaining Bu ay kalan AI işlemleri — sınırsız yükseltme';
  }

  @override
  String get aiUsageExhausted =>
      'Aylık AI sınırına ulaşıldı. Sınırsız olarak Pro\'ya yükseltin →';

  @override
  String get undo => 'Geri al';

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
  String get onboardingMaybeLater => 'Belki daha sonra';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hey $name, alışverişinizi doğru şekilde düzenleyin.';
  }

  @override
  String get onboardingSlide1Title => 'Akıllı Alışveriş Listeleri';

  @override
  String get onboardingSlide1Body =>
      'Anında listeler oluşturun ve paylaşın. Kipi, alışkanlıklarınıza göre öğeleri otomatik olarak ekler.';

  @override
  String get onboardingSlide2Title => 'Kipi\'yle tanışın';

  @override
  String get onboardingSlide2Body =>
      'İstediğiniz şeyi sorun; listeler oluşturun, tarifler bulun, kilerinizi takip edin, haftanızı planlayın.';

  @override
  String get onboardingSlide3Title => 'Kiler ve Yemek Planlama';

  @override
  String get onboardingSlide3Body =>
      'Sahip olduklarınızı takip edin, yemekleri planlayın ve otomatik olarak alışveriş listeleri oluşturun.';

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
  String get paywallTrialTitle => 'Ücretsiz deneyin!';

  @override
  String get paywallTrialSubtitle =>
      'İstediğiniz zaman iptal edin. Bugün ücret yok.';

  @override
  String get paywallTrialCta => 'Ücretsiz Denemeyi Başlat';

  @override
  String get recipeAddToList => 'Alışveriş listesine ekle';

  @override
  String get recipeAddError => 'Listenize eklenemedi. Lütfen tekrar deneyin.';

  @override
  String get recipeTapToCheck =>
      'Yemek pişirirken kontrol etmek için bir malzemeye dokunun';

  @override
  String get recipeIngredientInPantry => 'Kilerde';

  @override
  String get recipeIngredientLowPantry => 'Kilerde düşük';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0, $listName\'e eklendi';
  }

  @override
  String get noListSelected => 'Liste seçilmedi. Önce bir liste açın.';

  @override
  String get paywallFeaturesTitle => 'İhtiyacınız olan her şey:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI listenizi otomatik olarak düzenler';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'İhtiyacınız kadar liste oluşturun';

  @override
  String get paywallFeatureDescSharing =>
      'Gerçek zamanlı olarak birlikte alışveriş yapın';

  @override
  String get paywallFeatureDescPantry => 'Evde ne varsa takip edin';

  @override
  String get paywallFeatureDescBudget => 'Her ay bütçenizi aşındırmayın';

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
  String paywallSavePercent(int percent) {
    return '%$percent TASARRUF EDİN';
  }

  @override
  String paywallPricePerMonth(String price) {
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
    return 'İlk $days gün ÜCRETSİZ';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Play tarafından güvence altına alınmıştır · İstediğiniz zaman iptal edin';

  @override
  String get paywallPolicy => 'Gizlilik Politikası';

  @override
  String get paywallTerms => 'Kullanım Koşulları';

  @override
  String get paywallRestore => 'Eski haline getirmek';

  @override
  String get paywallTimelineToday => 'Bugün';

  @override
  String get paywallTimelineTodayDesc => 'Tam erişimin kilidini anında açın';

  @override
  String paywallTimelineDay(int day) {
    return 'Gün $day';
  }

  @override
  String get paywallTimelineReminderDesc =>
      'Deneme süresi bitmeden size hatırlatırız';

  @override
  String get paywallTimelineChargeDesc =>
      'Aboneliğiniz başlıyor; istediğiniz zaman iptal edin';

  @override
  String get paywallHeroFeatureTitle => 'Yapay Zeka Alışveriş Asistanı';

  @override
  String get paywallHeroFeatureDesc =>
      'Tüm listeyi söyleyin veya yapıştırın; yapay zeka, listeyi saniyeler içinde sıralar, kategorilere ayırır ve bütçelendirir';

  @override
  String get paywallBasedOnAnswers => 'Yanıtlarınıza göre kişiselleştirildi';

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
  String get paywallWelcomeOfferBadge => '🎁 Hoş geldin teklifi';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Ücretsiz başlayın — $days gün';
  }

  @override
  String get premiumUpgrade => 'Kilidi açmak için yükseltin';

  @override
  String get itemRemoved => 'Öğe kaldırıldı';

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
  String get pantryItemAdded => 'Öğe eklendi';

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
  String get recipeYieldServings => 'Verim porsiyonları';

  @override
  String get recipeManualTotalCost => 'Manuel toplam maliyet';

  @override
  String get recipeManualTotalCostHint =>
      'İçerik fiyatlarından tahmin yapmak için boş bırakın.';

  @override
  String get recipeEstimatedTotalCost => 'Tahmini toplam maliyet';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / porsiyon';
  }

  @override
  String recipeServesCount(int count) {
    return '$count hizmet veriyor';
  }

  @override
  String get recipeEstimatePartial => 'Fiyatlı içeriklere dayalı kısmi tahmin.';

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
  String get mealPlannerEstimatePartial =>
      'Kısmi fiyat verileri içeren tariflere dayalı tahmin.';

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
  String shareReferralText(String url) {
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
  String get catalogRareBadge => 'Nadir';

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
  String get catalogCategories => 'Kategoriler';

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
  String get mealPlannerPantryAllAvailable => 'Tüm malzemeler mevcut';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 eksik';
  }

  @override
  String get mealPlannerManageTypes => 'Yemek türlerini yönetin';

  @override
  String get mealPlannerAddType => 'Yemek türü ekle';

  @override
  String get mealPlannerEditType => 'Yemek türünü düzenle';

  @override
  String get mealPlannerTypeName => 'İsim';

  @override
  String get mealPlannerTypeColor => 'Renk';

  @override
  String get mealPlannerTypeIcon => 'Simge';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      'Bu yemek türünü silmek istediğinizden emin misiniz? Bu türle planlanan yemekler kalacaktır.';

  @override
  String get mealPlannerTypeNameEmpty => 'Ad boş olamaz';

  @override
  String get mealPlannerTypeDeleteError => 'Bu yemek türü silinemiyor.';

  @override
  String get mealPlannerCustomTypeLabel => 'Özel tür';

  @override
  String get mealPlannerDefaultTypeLabel => 'Varsayılan tür';

  @override
  String get expirationDate => 'Son kullanma tarihi';

  @override
  String get notInformed => 'Ayarlanmadı';

  @override
  String get skip => 'Atlamak';

  @override
  String get onboardingAiTitle => 'Kipi ile sohbet et';

  @override
  String get onboardingAiGreeting =>
      'MERHABA! Ben kişisel alışveriş asistanınız Kipi\'yim! 🛒';

  @override
  String get onboardingAiAskName => 'Adınız ne?';

  @override
  String get onboardingAiNameHint => 'Adınızı yazın...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Tanıştığımıza memnun oldum $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'En sevdiğiniz yemek hangisi?';

  @override
  String get onboardingAiFoodHint => 'örneğin Pizza, Suşi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Harika seçimler! İşte listenize ekleyeceğim şeyler:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Bu iyi görünüyor mu? Başka bir şey yazmayı deneyin!';

  @override
  String get onboardingAiReady =>
      'Harika! Başlamaya hazırsınız. Hesabınızı kuralım!';

  @override
  String get onboardingAiContinue => 'Devam →';

  @override
  String get connectionError => 'Bağlantı Hatası';

  @override
  String connectionErrorDesc(String error) {
    return 'Sunucuya bağlanılamadı. İnternetinizi kontrol edin.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Listeler yüklenirken hata oluştu';

  @override
  String get errorLoadingItems => 'Öğeler yüklenirken hata oluştu';

  @override
  String get noListsFound => 'Liste bulunamadı';

  @override
  String get backToToday => 'Bugüne dön';

  @override
  String get quickSuggestions => 'Hızlı öneriler';

  @override
  String get aiEnergyLow => 'Düşük yapay zeka enerjisi';

  @override
  String get aiUnlockUnlimited => 'Sınırsız yapay zekanın kilidini açın';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 bugün';
  }

  @override
  String get aiSubscribeUnlimited => 'Sınırsız yapay zeka için abone olun';

  @override
  String get unlockWithAd => 'Reklamla Kilidini Aç';

  @override
  String get conversationHistoryTitle => 'Konuşma geçmişi';

  @override
  String get noConversationsFound => 'Hiçbir görüşme bulunamadı';

  @override
  String get errorLoadingHistory => 'Geçmiş yüklenirken hata oluştu';

  @override
  String get deleteConversationTitle => 'Görüşme Silinsin mi?';

  @override
  String get deleteConversationConfirm => 'Bu işlem geri alınamaz.';

  @override
  String get deleteConversation => 'Silmek';

  @override
  String get subscription => 'Abonelik';

  @override
  String get kipiListProActive => 'KipiList Pro Aktif';

  @override
  String get unlockPremiumTitle =>
      'Sınırsız listelerin, yapay zekanın ve daha fazlasının kilidini açın';

  @override
  String get loadingSubscription => 'Abonelik yükleniyor...';

  @override
  String get errorLoadingSubscription => 'Abonelik yüklenirken hata oluştu';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Profilim';

  @override
  String get profileSubtitle => 'Yapay zeka asistanı için kişisel tercihler';

  @override
  String get customizeAiAssistant => 'Yapay Zeka asistanını özelleştirin';

  @override
  String get assistantHistory => 'Asistan geçmişi';

  @override
  String get assistantHistorySubtitle => 'Konuşma geçmişinizi görüntüleyin';

  @override
  String get manageCategories => 'Kategorileri Yönet';

  @override
  String get manageCategoriesSubtitle => 'Öğe kategorilerini yönet';

  @override
  String get customizeAssistant => 'Özelleştirmek';

  @override
  String get assistantName => 'Asistan adı';

  @override
  String get chooseIcon => 'Simge seç';

  @override
  String get profileSaved => 'Profil başarıyla kaydedildi!';

  @override
  String get errorSavingProfile => 'Kaydederken hata oluştu: null';

  @override
  String get userProfile => 'Kullanıcı Profili';

  @override
  String get profileDescription =>
      'Yapay zeka asistanının kişiselleştirilmiş öğeler ve tarifler önerebilmesi için bize kişisel tercihlerinizi bildirin.';

  @override
  String get preferredMarket => 'Tercih Edilen Pazar';

  @override
  String get preferredMarketHint => 'Örn: Süpermarket X';

  @override
  String get dietaryRestrictions => 'Diyet Kısıtlamaları';

  @override
  String get dietaryRestrictionsHint => 'Örn: vegan, vejetaryen, glutensiz';

  @override
  String get marketsToAvoid => 'Kaçınılması Gereken Piyasalar';

  @override
  String get marketsToAvoidHint => 'Örn: Y Pazarı, Z Pazarı';

  @override
  String get observations => 'Notlar';

  @override
  String get observationsHint => 'Asistan için diğer tercihler';

  @override
  String get saveProfile => 'Profili Kaydet';

  @override
  String get everythingReady => 'Her şey hazır!';

  @override
  String get youCompletedList => 'Listeyi tamamladınız!';

  @override
  String get selectCheaperAlternative =>
      'Maliyeti optimize etmek için daha ucuz bir ürün alternatifi seçin.';

  @override
  String get suggestedItems => 'Önerilen öğeler';

  @override
  String get swapped => 'Değiştirildi';

  @override
  String get swap => 'Takas';

  @override
  String get chooseThemeColor => 'Tema Rengini Seçin';

  @override
  String get manageCategoriesTitle => 'Kategorileri Yönet';

  @override
  String get categoryLimitReached =>
      'Ücretsiz sürümde 10 kategori sınırı bulunmaktadır. Pro\'ya yükseltin!';

  @override
  String get deleteCategoryTitle => 'Kategoriyi Sil';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\" kategorisindeki öğeler \"Diğerleri\"ne taşınacaktır.\nDevam etmek?';
  }

  @override
  String get deleteCategory => 'Silmek';

  @override
  String get newCategoryDialog => 'Yeni kategori';

  @override
  String get editCategoryDialog => 'Kategoriyi düzenle';

  @override
  String get categoryName => 'Kategori adı';

  @override
  String get categoryNameHint => 'Örn: Etler';

  @override
  String get categoryColorLabel => 'Renk';

  @override
  String get categoryIconLabel => 'Simge';

  @override
  String itemAddedSnack(String name) {
    return '$name eklendi';
  }

  @override
  String get kipiQuickBarHint => 'Ne satın almanız gerekiyor?';

  @override
  String replaceItem(String item) {
    return '$item öğesini değiştirin';
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
  String get onboardingHookHeadline =>
      'Bir bakkaliye ürününü bir daha asla unutma';

  @override
  String get onboardingGoalSaveMoney => 'Paradan tasarruf edin';

  @override
  String get onboardingGoalNeverForget => 'Öğeleri asla unutma';

  @override
  String get onboardingGoalFaster => 'Daha hızlı alışveriş yapın';

  @override
  String get onboardingGoalFamily => 'Aile alışverişini organize edin';

  @override
  String get onboardingGoalRecipes => 'Tarifleri keşfedin';

  @override
  String get onboardingGoalPantry => 'Parça kileri';

  @override
  String get onboardingCommitmentsTitle => 'Senin için önemli olan ne?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'KipiList\'i kişiselleştirmek için hedeflerinizi seçin';

  @override
  String get onboardingCommitmentsCta => 'Hadi gidelim!';

  @override
  String get onboardingPersonalizationNameLabel => 'Adınız';

  @override
  String get onboardingPersonalizationNameHint => 'Adınızı girin';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'Ne için alışveriş yaparsınız?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Kimin için alışveriş yapıyorsun?';

  @override
  String get onboardingCategoryGrocery => 'Bakkaliye';

  @override
  String get onboardingCategoryPharmacy => 'Eczane';

  @override
  String get onboardingCategoryRecipes => 'Tarifler';

  @override
  String get onboardingCategoryHome => 'Ev';

  @override
  String get onboardingCategoryPet => 'Evcil Hayvan';

  @override
  String get onboardingGroupSolo => 'Benim';

  @override
  String get onboardingGroupCouple => 'Çift';

  @override
  String get onboardingGroupFamily => 'Aile';

  @override
  String get onboardingLoadingTitle => 'Deneyiminiz hazırlanıyor...';

  @override
  String get onboardingLoadingStep1 => 'Tercihleriniz analiz ediliyor...';

  @override
  String get onboardingLoadingStep2 => 'Yapay zeka asistanı kuruluyor...';

  @override
  String get onboardingLoadingStep3 => 'Neredeyse hazır...';

  @override
  String get onboardingLoadingStat1Label => 'Kataloglanan ürünler';

  @override
  String get onboardingLoadingStat2Label => 'Kullanıcılar yardımcı oldu';

  @override
  String get onboardingLoadingStat3Label => 'Dakikalar kaydedildi';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, her yolculukta tasarruf edin!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, hiçbir öğeyi asla unutma!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, yarı zamanda alışveriş yapın!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, aile alışverişini organize edin!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, yeni tarifler keşfet!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, kilerinizi mükemmel bir şekilde takip edin!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Her yolculukta tasarruf edin!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => 'Bir öğeyi asla unutma!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Yarı zamanda alışveriş yapın!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Aile alışverişini düzenleyin!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Yeni tarifler keşfedin!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Kilerinizi mükemmel bir şekilde takip edin!';

  @override
  String paywallPricePerDay(String price) {
    return 'Yalnızca $price/gün — bir kahveden az';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Şimdilik atla';

  @override
  String get paywallTestimonial =>
      'Yapay zeka alışverişimi saniyeler içinde organize ediyor. Yolculuk başına 20 dakika tasarruf ediyorum.';

  @override
  String get paywallTestimonialAuthor => 'Anne S.';

  @override
  String get paywallTrialDisclaimer =>
      'İstediğiniz zaman iptal edin · Deneme süreniz bitene kadar ücretsiz';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Merhaba $name! Hangi $category\'e ihtiyacınız var?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Hangi $category\'a ihtiyacınız var?';
  }

  @override
  String get onboardingAiDemoYes => 'Evet!';

  @override
  String get onboardingAiDemoReaction => 'Güzel!';

  @override
  String get onboardingAiDemoChange => 'Öğeyi değiştir';

  @override
  String get onboardingAiDemoOffer => 'Başka bir şey yazmayı deneyin!';

  @override
  String get onboardingAiDemoContinue => 'Devam etmek';

  @override
  String get onboardingAiDemoSlideHeadline => 'Alışveriş listeniz artık AI ile';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Kipi\'nin tam listenizi saniyeler içinde nasıl oluşturduğunu görün';

  @override
  String get onboardingAiDemoSlideCta => 'Bunu istiyorum! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Barbekü düzenliyorum 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Hazır! İhtiyacınız olan her şey burada:';

  @override
  String get onboardingAiDemoSlideDone =>
      'Listeyi saniyeler içinde tamamlayın ✨';

  @override
  String get onboardingPainTitle => 'Seni en çok ne sinirlendirir?';

  @override
  String get onboardingPainSubtitle => 'Dürüst olun; her birini düzelteceğiz';

  @override
  String get onboardingPainCta => 'Evet, bunu benim için düzelt →';

  @override
  String get onboardingPainForget => 'Mağazadaki eşyaları unutuyorum';

  @override
  String get onboardingPainFamily => 'Ailem listeyi hiç görmüyor';

  @override
  String get onboardingPainOverspend => 'Her zaman bütçeyi aşarım';

  @override
  String get onboardingPainRepeat => 'Bir yolculuk asla yeterli değildir';

  @override
  String get aiWelcomeContent =>
      'Merhaba! 👋 Ben **Kipi**, kişisel alışveriş ve yemek tarifi asistanınım!\n\nSize yardım etmek için buradayım:\n🛒 Alışverişinizi otomatik olarak kategorilere göre **düzenleyin**\n💰 **Bütçenizi takip edin** ve paradan tasarruf etmenizi sağlayacak ipuçları verin\n🍲 **Elinizde olanlarla lezzetli tarifler önerin**\n\nBugün sana nasıl yardımcı olabilirim? İlk listenizi oluşturarak başlayabilirsiniz!';

  @override
  String get aiWelcomeSuggestCreateList => 'İlk listemi oluştur';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, ilk alışveriş listemi oluşturmama yardım et';

  @override
  String get aiWelcomeSuggestSave => 'Paradan nasıl tasarruf edilir?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, alışverişten tasarruf etmeme nasıl yardımcı olabilirsin?';

  @override
  String get suggestionMilk => 'Süt';

  @override
  String get suggestionBread => 'Ekmek';

  @override
  String get suggestionEggs => 'Yumurtalar';

  @override
  String get suggestionCoffee => 'Kahve';

  @override
  String get suggestionRice => 'Pirinç';

  @override
  String get suggestionFruits => 'Meyveler';

  @override
  String get recipeIngredientSingular => '1 bileşen';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count malzemeler';
  }

  @override
  String get pantryAvailabilityAll => 'Her şey hazır!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return '$availableCount/$totalCount kilerde';
  }

  @override
  String onboardingProgress(int current, int total) {
    return '$current / $total Adımı';
  }

  @override
  String get onboardingDemoHeadline =>
      'Bize ne planladığınızı söyleyin. Kipi listeyi oluşturur.';

  @override
  String get onboardingDemoSubtitle =>
      'Eşyaları saniyeler içinde organize edin.';

  @override
  String get onboardingPersonalizationEffect =>
      'Bu, Kipi\'nin daha alakalı öğeler ve miktarlar önermesine yardımcı olur.';

  @override
  String get onboardingPersonalizeWithName => 'Adımla kişiselleştir';

  @override
  String get onboardingCreateFirstList => 'İlk listemi oluştur';

  @override
  String get onboardingPromptWeekly => 'Haftalık ihtiyaçlarımı planla';

  @override
  String get onboardingPromptEvent => 'Özel bir şey hazırlıyorum';

  @override
  String get onboardingPromptEssentials => 'Benim için olmazsa olmazları öner';

  @override
  String get onboardingFallbackGrocery =>
      '🍚 Pirinç|🫘 Fasulye|🥛 Süt|🥚 Yumurta|🍞 Ekmek|🍎 Meyve';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 Yapışkanlı bandajlar|🌡️ Termometre|🧴 Antiseptik|😷 Yüz maskeleri|🧼 El dezenfektanı';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 Domates|🧅 Soğan|🧄 Sarımsak|🥚 Yumurta|🧀 Peynir|🌿 Taze otlar';

  @override
  String get onboardingFallbackHome =>
      '🧻 Kağıt havlular|🧽 Süngerler|🧴 Deterjan|🗑️ Çöp torbaları|🧹 Temizlik bezleri';

  @override
  String get onboardingFallbackPet =>
      '🥣 Evcil hayvan maması|🦴 İkramlar|🧼 Evcil hayvan şampuanı|🧸 Oyuncak|🧻 Atık torbaları';

  @override
  String get onboardingListSaveFailed =>
      'Malzemeleri hazırladım ama listeyi kaydedemedim. Uygulamada tutmayı tekrar deneyin.';

  @override
  String onboardingListCreated(int count) {
    return 'Listeniz hazır: $count öğe sizin için düzenlendi.';
  }

  @override
  String get onboardingContinueToOffer => 'Devam etmek';

  @override
  String onboardingPaywallListReady(int count) {
    return 'İlk listeniz hazır · $count öğe';
  }

  @override
  String get paywallContinueFree => 'Ücretsiz sürümle devam edin';

  @override
  String get paywallPurchasePending =>
      'Ödemeniz onay bekliyor. Onaylandıktan sonra erişim otomatik olarak serbest bırakılacaktır.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return 'Bugün: ücretsiz. Daha sonra $price/yıl, $days gün sonra. İstediğiniz zaman iptal edin.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return 'Bugün: ücretsiz. Daha sonra $price/ay, $days gün sonra. İstediğiniz zaman iptal edin.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price/yıl. İstediğiniz zaman iptal edin.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/ay. İstediğiniz zaman iptal edin.';
  }

  @override
  String get obHookTitle => 'Daha akıllı alışveriş burada başlıyor';

  @override
  String get obHookSubtitle =>
      'Her yolculukta zamandan ve paradan tasarruf etmenizi sağlayan yapay zeka destekli listeler.';

  @override
  String get obHookSocial => 'Dünya çapında binlerce alışverişçinin güvendiği';

  @override
  String get obHookCta => 'Başlayın';

  @override
  String get obQuizHouseholdTitle => 'Kimin için alışveriş yapıyorsun?';

  @override
  String get obQuizHouseholdSolo => 'Benim';

  @override
  String get obQuizHouseholdCouple => 'Ben ve ortağım';

  @override
  String get obQuizHouseholdFamilySmall => '3-4 kişilik aile';

  @override
  String get obQuizHouseholdFamilyLarge => '5+ kişilik aile';

  @override
  String get obQuizFrequencyTitle =>
      'Ne sıklıkla market alışverişi yaparsınız?';

  @override
  String get obQuizFrequencyDaily => 'Neredeyse her gün';

  @override
  String get obQuizFrequencyWeekly => 'Haftada bir';

  @override
  String get obQuizFrequencyBiweekly => 'Her iki haftada bir';

  @override
  String get obQuizFrequencyMonthly => 'Büyük aylık taşıma';

  @override
  String get obQuizPainTitle => 'Alışverişte sizi en çok ne sinirlendirir?';

  @override
  String get obQuizPainForget => 'Eşyaları hep unutuyorum';

  @override
  String get obQuizPainOverspend => 'Planladığımdan daha fazlasını harcıyorum';

  @override
  String get obQuizPainWaste => 'Evde yiyecekler çöpe gidiyor';

  @override
  String get obQuizPainTime => 'Çok fazla zaman alıyor';

  @override
  String get obQuizSavingsTitle => 'Aylık ne kadar tasarruf etmek istersiniz?';

  @override
  String get obQuizSavingsSmall => 'Biraz — her zerre önemlidir';

  @override
  String get obQuizSavingsMedium => 'Market faturamın yaklaşık %10\'u';

  @override
  String get obQuizSavingsLarge => 'Mümkün olduğu kadar';

  @override
  String get obQuizMethodTitle =>
      'Bugün alışveriş listelerini nasıl hazırlıyorsunuz?';

  @override
  String get obQuizMethodPaper => 'Kalem ve kağıt';

  @override
  String get obQuizMethodNotes => 'Notlar uygulaması';

  @override
  String get obQuizMethodMemory => 'Bunu kafamda tutuyorum';

  @override
  String get obQuizMethodNone => 'Liste yapmıyorum';

  @override
  String get obSocialTitle => 'İyi bir arkadaşsın';

  @override
  String get obSocialSubtitle =>
      'Sizin gibi alışveriş yapanlar KipiList ile zaten tasarruf ediyor';

  @override
  String get obSocialQuote1 =>
      'Artık hiçbir şeyi unutmuyorum. Yapay zeka listemi saniyeler içinde oluşturuyor.';

  @override
  String get obSocialQuote2 =>
      'İlk ayda market faturamızı gözle görülür şekilde kestik.';

  @override
  String get obSocialQuote3 =>
      'Listeyi eşimle paylaşmak alışveriş kaosuna son verdi.';

  @override
  String get obLoadingTitle => 'Kişiselleştirilmiş planınızı oluşturmak...';

  @override
  String get obLoadingStepProfile => 'Evinize göre ayarlama';

  @override
  String get obLoadingStepHabits => 'Alışveriş rutininize uyum sağlama';

  @override
  String get obLoadingStepSavings => 'Tasarruf stratejinizi optimize etme';

  @override
  String get obLoadingStepLists => 'Akıllı listelerinizi hazırlamak';

  @override
  String get obRevealTitle => 'Planınız hazır!';

  @override
  String get obRevealSubtitle =>
      'İşte KipiList\'in sizin için nasıl çalışacağı';

  @override
  String get obRevealSavingsCaption => 'KipiList ile öngörülen tasarruflar';

  @override
  String obRevealMonth(int n) {
    return 'Ay $n';
  }

  @override
  String get obRevealFeatureAi =>
      'Yapay zeka listelerinizi oluşturur ve düzenler';

  @override
  String get obRevealFeatureBudget => 'Hedefinize göre takip edilen harcamalar';

  @override
  String get obRevealFeaturePantry => 'Kiler takibi gıda israfını azaltır';

  @override
  String get obRevealFeatureShare => 'Evinizle gerçek zamanlı paylaşım';

  @override
  String get obPaywallTitle => 'Planınızın kilidini açın';

  @override
  String get obPaywallRetry => 'Tekrar deneyin';

  @override
  String get obLoginTitle => 'Planınızı kaydedin';

  @override
  String get obLoginSubtitle =>
      'Listelerinizin cihazlar arasında senkronize edilmesi için oturum açın';

  @override
  String get obLoginGoogle => 'Google ile devam et';

  @override
  String get obLoginApple => 'Apple\'la devam et';

  @override
  String get obLoginSkip => 'Şimdi değil';

  @override
  String get obLoginError =>
      'Oturum açma başarısız oldu. Tekrar deneyin veya şimdilik atlayın.';

  @override
  String get searchMessages => 'Mesajları ara...';

  @override
  String get deletedList => 'Silinen liste';

  @override
  String get openConversation => 'Konuşmayı aç';

  @override
  String get userRole => 'Sen';

  @override
  String get assistantRole => 'Asistan';

  @override
  String get agentActionsRunning => 'Eylemler çalıştırılıyor...';

  @override
  String get agentActionsFailed => 'İşlemler çalıştırılamadı';

  @override
  String get agentActionsPremium => 'Eylemler Premium gerektirir';

  @override
  String agentActionsCompleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count actions completed',
      one: '1 action completed',
    );
    return '$_temp0';
  }

  @override
  String get undoChanges => 'Değişiklikleri geri al';

  @override
  String premiumStepDescription(String description) {
    return '$description (Premium)';
  }

  @override
  String get itemAddedToList => 'Öğe listeye eklendi.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return 'Önceki durum: $quantity $unit [$category]$price';
  }

  @override
  String itemsAffectedByAction(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items affected by the action.',
      one: '1 item affected by the action.',
    );
    return '$_temp0';
  }

  @override
  String get premiumActionsPrompt =>
      'Otomatik işlemlerin kilidini açmak için Premium\'a abone olun.';

  @override
  String get viewPlans => 'Planları görüntüle';

  @override
  String get artifactSynced => 'Senkronize edildi';

  @override
  String get artifactBudgetLabel => 'Bütçe:';

  @override
  String get totalEstimatedLabel => 'Tahmini toplam';

  @override
  String get quickActionPantry => 'Kileri görüntüle';

  @override
  String get quickActionAi => 'Kipi ile sohbet et';

  @override
  String aiApiError(int statusCode) {
    return 'AI hizmeti bir hata döndürdü ($statusCode).';
  }

  @override
  String get aiTimeoutError => 'Talep çok uzun sürdü. Lütfen tekrar deneyin.';

  @override
  String get aiConnectionError =>
      'AI hizmetine bağlanılamadı. Bağlantınızı kontrol edin.';

  @override
  String get aiEmptyResponseError => 'AI hizmeti boş bir yanıt döndürdü.';

  @override
  String get aiInvalidResponseError =>
      'AI hizmeti geçersiz bir yanıt döndürdü.';

  @override
  String get categoryFruits => 'Meyveler';

  @override
  String get categoryCleaning => 'Temizlik';

  @override
  String get categoryBeverages => 'İçecekler';

  @override
  String get categoryBakery => 'Fırın';

  @override
  String get categoryMeat => 'Et';

  @override
  String get categoryDairy => 'Günlük';

  @override
  String get categoryVegetables => 'Sebze';

  @override
  String get categoryGrains => 'Tahıllar ve tahıllar';

  @override
  String get categoryHygiene => 'Kişisel bakım';

  @override
  String get categoryFrozen => 'Dondurulmuş gıdalar';

  @override
  String get categoryCanned => 'Konserve ürünler';

  @override
  String get categorySeasonings => 'Baharatlar';

  @override
  String get categorySweets => 'Tatlılar ve tatlılar';

  @override
  String get categoryAlcohol => 'Alkollü içecekler';

  @override
  String get categoryFish => 'Balık';

  @override
  String get categoryColdCuts => 'Soğuk etler';

  @override
  String get categoryUtilities => 'Ev malzemeleri';

  @override
  String get categoryPet => 'Evcil hayvan malzemeleri';

  @override
  String get categoryBaby => 'Bebek';

  @override
  String get categoryOthers => 'Diğer';

  @override
  String chatEmptyGreeting(String name) {
    return 'Merhaba $name, ben Kipi 👋';
  }

  @override
  String get chatEmptyGreetingNoName => 'Merhaba ben Kipi 👋';

  @override
  String get chatEmptyPitch =>
      'Listeler oluşturuyorum, tarifler öneriyorum ve nereye kaydedeceğimi buluyorum. Nereden başlayacağız?';

  @override
  String get aiWelcomeSuggestBarbecue => 'Barbekü planlayın';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'Kipi, barbekü düzenliyorum - alışveriş listesini oluşturmama yardım et';

  @override
  String get aiRateLimitError =>
      'Kısa sürede çok fazla mesaj var. Birkaç saniye bekleyip tekrar deneyin.';

  @override
  String get chatHistoryErrorTitle => 'Bu görüşme yüklenemedi';

  @override
  String get chatHistoryErrorBody =>
      'Bizim açımızdan bir şeyler ters gitti. Tekrar denemek için Yeniden dene\'ye dokunun.';

  @override
  String get chatHistoryOfflineTitle => 'Çevrimdışısınız';

  @override
  String get chatHistoryOfflineBody =>
      'İnternet bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String get aiGeneratingResponse => 'Yanıt oluşturuluyor…';
}
