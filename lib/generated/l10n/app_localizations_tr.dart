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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Sistem varsayılanı';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

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
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

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
  String get newChat => 'New Chat';

  @override
  String get noHistory => 'No chat history';

  @override
  String get deleteSession => 'Delete Chat';

  @override
  String get deleteSessionConfirm =>
      'Are you sure you want to delete this chat? The messages will be permanently lost.';

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
  String get listaPlusTitle => 'Lista Plus';

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
  String loginError(String error) {
    return 'Giriş hatası: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'Listenizi yönetmek için doğal bir şekilde konuşun!\n\nÖrnekler:\n• \'Ekmek, peynir ve jambon ekle\'\n• \'Çamaşır deterjanını kaldır\'\n• \'Temayı mavi yap\'\n\nBu, Lista Plus Premium\'un özel bir özelliğidir.';

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
      'Geri bildiriminiz alındı ve Lista Plus\'ı herkes için iyileştirmemize yardımcı oluyor.';

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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Sistem varsayılanı';

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
  String get listaPlusTitle => 'Lista Plus';

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
  String loginError(String error) {
    return 'Giriş hatası: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'Listenizi yönetmek için doğal bir şekilde konuşun!\n\nÖrnekler:\n• \'Ekmek, peynir ve jambon ekle\'\n• \'Çamaşır deterjanını kaldır\'\n• \'Temayı mavi yap\'\n\nBu, Lista Plus Premium\'un özel bir özelliğidir.';

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
      'Geri bildiriminiz alındı ve Lista Plus\'ı herkes için geliştirmemize yardımcı oluyor.';

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
}
