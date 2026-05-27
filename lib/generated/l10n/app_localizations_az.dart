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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Sistem defoltu';

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
  String get clearHistory => 'Tarixçəni Təmizlə';

  @override
  String get clearHistoryConfirm => 'Bu sessiyadakı bütün mesajları təmizlə?';

  @override
  String get chatHint => 'Mesajınızı yazın...';

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Premium xüsusiyyətləri\naçmaq üçün daxil olun';

  @override
  String get signInGoogle => 'Google ilə daxil ol';

  @override
  String get signInApple => 'Apple ilə daxil ol';

  @override
  String get continueAsGuest => 'Qonaq olaraq davam et';

  @override
  String loginError(String error) {
    return 'Giriş xətası: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
  String get themeTeal => 'Teal';

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
      'Siyahınızı idarə etmək üçün təbii danışın!\n\nNümunələr:\n• \'Çörək, pendir və vetçina əlavə et\'\n• \'Camaşır yuyucusunu sil\'\n• \'Temanı maviyə dəyiş\'\n\nBu, Lista Plus Premium-un eksklüziv xüsusiyyətidir.';

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
      'Rəyiniz qəbul edildi və Lista Plus-ı hər kəs üçün yaxşılaşdırmağa kömək edir.';

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
}
