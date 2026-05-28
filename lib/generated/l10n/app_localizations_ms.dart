// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'Senarai Beli-belah';

  @override
  String get lists => 'Senarai';

  @override
  String get pantry => 'Pantri';

  @override
  String get cancel => 'Batal';

  @override
  String get save => 'Simpan';

  @override
  String get create => 'Cipta';

  @override
  String get add => 'Tambah';

  @override
  String get remove => 'Alih keluar';

  @override
  String get delete => 'Padam';

  @override
  String get edit => 'Sunting';

  @override
  String get copy => 'Salin';

  @override
  String get retry => 'Cuba semula';

  @override
  String get regenerate => 'Hasilkan semula';

  @override
  String get copiedToClipboard => 'Disalin ke papan klip';

  @override
  String get confirm => 'Sahkan';

  @override
  String get close => 'Tutup';

  @override
  String get import => 'Import';

  @override
  String get rename => 'Tukar nama';

  @override
  String get upgrade => 'Naik taraf';

  @override
  String get clear => 'Kosongkan';

  @override
  String error(String message) {
    return 'Ralat: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Ralat: $message';
  }

  @override
  String get purchaseError => 'Ralat semasa memproses pembelian. Cuba lagi.';

  @override
  String get restoreError => 'Ralat semasa memulihkan pembelian. Cuba lagi.';

  @override
  String get loading => 'Memuatkan...';

  @override
  String get fieldRequired => 'Ruangan diperlukan';

  @override
  String get addedFeedback => 'Ditambah!';

  @override
  String selectedItems(int count) {
    return '$count dipilih';
  }

  @override
  String get estimated => 'Anggaran';

  @override
  String get alreadyPurchased => 'Sudah dibeli';

  @override
  String get clearList => 'Kosongkan senarai';

  @override
  String get clearPurchased => 'Kosongkan yang dibeli';

  @override
  String get share => 'Kongsi';

  @override
  String get shareViaCode => 'Kongsi melalui kod';

  @override
  String get importViaCode => 'Import melalui kod';

  @override
  String get listAssistant => 'Pembantu senarai';

  @override
  String get globalAssistant => 'Pembantu global';

  @override
  String get becomePremium => 'Jadi Premium';

  @override
  String get manageSubscription => 'Urus langganan';

  @override
  String get completePurchase => 'Selesaikan pembelian';

  @override
  String get confirmClearList => 'Alih keluar semua item?';

  @override
  String get shareListTitle => 'Kongsi Senarai';

  @override
  String get shareThisCode => 'Kongsi kod ini:';

  @override
  String get validForLimitedTime => 'Sah untuk masa terhad';

  @override
  String get importListTitle => 'Import Senarai';

  @override
  String get enterCodeHint => 'Masukkan kod';

  @override
  String get confirmArchiveTitle => 'Selesaikan Pembelian';

  @override
  String get confirmArchiveContent =>
      'Selesaikan pembelian ini dan arkibkan senarai?';

  @override
  String get complete => 'Selesai';

  @override
  String get listArchived => 'Senarai berjaya diarkibkan!';

  @override
  String listAdded(String listName) {
    return '$listName ditambah!';
  }

  @override
  String get buy => 'Beli';

  @override
  String get unmark => 'Nyah tanda';

  @override
  String confirmDeleteItems(int count) {
    return 'Alih keluar $count item?';
  }

  @override
  String get confirmDeleteTitle => 'Sahkan';

  @override
  String confirmContent(int count) {
    return 'Alih keluar $count item?';
  }

  @override
  String get archiveList => 'Arkibkan senarai';

  @override
  String get pantryAppBar => 'Pantri';

  @override
  String get generateShoppingList => 'Hasilkan senarai beli-belah';

  @override
  String get pantryEmpty => 'Pantri kosong';

  @override
  String get pantryEmptySubtitle =>
      'Tambah produk yang anda mahu simpan di rumah';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item perlu dibeli';
  }

  @override
  String get noItemsToBuy => 'Tiada item perlu dibeli';

  @override
  String get newPantryList => 'Beli-belah Pantri';

  @override
  String get newListTitle => 'Senarai Beli-belah Baru';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item akan ditambah';
  }

  @override
  String get listNameLabel => 'Nama senarai';

  @override
  String listCreated(String name, int count) {
    return 'Senarai \"$name\" dicipta dengan $count item';
  }

  @override
  String get noTracking => 'Tiada penjejakan';

  @override
  String get markAsPurchased => 'Tandakan sebagai dibeli';

  @override
  String editPantryItem(String name) {
    return 'Sunting $name';
  }

  @override
  String get idealQuantity => 'Kuantiti ideal';

  @override
  String get currentQuantity => 'Kuantiti semasa';

  @override
  String get consumed => 'Digunakan';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name distok semula kepada $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Alih keluar \"$name\" dari pantri?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Sunting $name';
  }

  @override
  String get settingsAppBar => 'Tetapan';

  @override
  String get language => 'Bahasa';

  @override
  String get languagePortuguese => 'Portugis (Brazil)';

  @override
  String get languageEnglish => 'Inggeris';

  @override
  String get languageSystem => 'Lalai sistem';

  @override
  String get chooseLanguage => 'Pilih Bahasa';

  @override
  String get searchLanguage => 'Cari bahasa...';

  @override
  String get appearance => 'Penampilan';

  @override
  String get light => 'Terang';

  @override
  String get system => 'Sistem';

  @override
  String get dark => 'Gelap';

  @override
  String get themeColor => 'Warna tema';

  @override
  String get dynamicColors => 'Warna dinamik';

  @override
  String get dynamicColorsSubtitle =>
      'Gunakan warna berdasarkan kertas dinding anda';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Kewangan';

  @override
  String get monthlyBudgetNav => 'Belanjawan bulanan';

  @override
  String get budgetSubtitle => 'Jejaki perbelanjaan bulanan anda';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Sandaran';

  @override
  String get backupSubtitle => 'Eksport atau import data anda';

  @override
  String get about => 'Perihal';

  @override
  String get version => 'Versi';

  @override
  String get privacy => 'Privasi';

  @override
  String get termsOfUse => 'Syarat penggunaan';

  @override
  String get backupTitle => 'Sandaran';

  @override
  String get backupPremiumDescription =>
      'Sandaran dan eksport adalah ciri Premium';

  @override
  String get exportData => 'Eksport data';

  @override
  String get exportDataSubtitle => 'Simpan semua senarai sebagai JSON';

  @override
  String get importData => 'Import data';

  @override
  String get importDataSubtitle => 'Pulihkan senarai dari JSON';

  @override
  String get importJsonTitle => 'Import JSON';

  @override
  String get importJsonHint => 'Tampal JSON sandaran di sini...';

  @override
  String get backupExported => 'Sandaran berjaya dieksport!';

  @override
  String get budgetAppBar => 'Belanjawan Bulanan';

  @override
  String get budgetPremiumLocked => 'Belanjawan bulanan global adalah Premium';

  @override
  String get budgetUpgradePrompt => 'Naik taraf untuk membuka kunci';

  @override
  String get noBudgetDefined => 'Tiada belanjawan ditetapkan';

  @override
  String totalEstimated(String amount) {
    return 'Anggaran jumlah: $amount';
  }

  @override
  String get setBudgetButton => 'Tetapkan belanjawan';

  @override
  String get budgetLists => 'Senarai';

  @override
  String get budgetValueLabel => 'Jumlah';

  @override
  String get setBudgetTitle => 'Belanjawan Bulanan';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Semua';

  @override
  String get filterPending => 'Belum selesai';

  @override
  String get filterPurchased => 'Dibeli';

  @override
  String get sortName => 'Nama';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Tarikh';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Tambah Item';

  @override
  String get itemName => 'Nama item';

  @override
  String get quantityShort => 'Kuantiti';

  @override
  String get unit => 'Unit';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Harga anggaran';

  @override
  String get addItemPrice => 'Harga anggaran';

  @override
  String get editItem => 'Sunting Item';

  @override
  String get quantityFull => 'Kuantiti';

  @override
  String get editItemPrice => 'Harga anggaran';

  @override
  String get addToPantry => 'Tambah ke Pantri';

  @override
  String addToPantryPrompt(String name) {
    return 'Tambah \"$name\" ke Pantri anda?';
  }

  @override
  String get yes => 'Ya';

  @override
  String get productName => 'Nama produk';

  @override
  String get idealQty => 'Kuantiti ideal';

  @override
  String get currentQty => 'Kuantiti semasa';

  @override
  String get trackStock => 'Jejaki stok';

  @override
  String get trackStockActive => 'Muncul dalam cadangan beli-belah';

  @override
  String get trackStockInactive => 'Tidak menjana cadangan beli-belah';

  @override
  String get createListDialog => 'Cipta Senarai';

  @override
  String get renameListDialog => 'Tukar Nama Senarai';

  @override
  String get listHistory => 'Sejarah Senarai';

  @override
  String get myLists => 'Senarai Saya';

  @override
  String get viewActive => 'Lihat Aktif';

  @override
  String get viewHistory => 'Lihat Sejarah';

  @override
  String get noArchivedLists => 'Tiada senarai diarkibkan';

  @override
  String get noActiveLists => 'Tiada senarai aktif';

  @override
  String completedOn(String date) {
    return 'Selesai pada $date';
  }

  @override
  String get sharedLabel => 'Dikongsi';

  @override
  String get restore => 'Pulihkan';

  @override
  String get removeSharedTooltip => 'Alih keluar';

  @override
  String get deleteListTitle => 'Padam senarai';

  @override
  String deleteListContent(String name) {
    return 'Adakah anda pasti mahu memadam \"$name\"? Semua item akan dialih keluar.';
  }

  @override
  String get removeSharedListTitle => 'Alih keluar senarai dikongsi';

  @override
  String removeSharedListContent(String name) {
    return 'Alih keluar \"$name\" dari senarai anda? Senarai asal tidak akan terjejas.';
  }

  @override
  String get createNewList => 'Cipta senarai baru';

  @override
  String get aiAssistant => 'Pembantu AI';

  @override
  String get aiAssistantDescription =>
      'Dapatkan cadangan pintar, resipi dan tip peribadi dengan pembantu AI kami.';

  @override
  String get generalAssistant => 'Pembantu Umum';

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
  String get clearHistory => 'Kosongkan Sejarah';

  @override
  String get clearHistoryConfirm => 'Kosongkan semua mesej dalam sesi ini?';

  @override
  String get chatHint => 'Taip mesej anda...';

  @override
  String chatError(String error) {
    return 'Ralat memuatkan sembang: $error';
  }

  @override
  String get listHelp => 'Bagaimana saya boleh bantu dengan senarai anda?';

  @override
  String get generalHelp =>
      'Bagaimana saya boleh bantu dengan beli-belah anda hari ini?';

  @override
  String get chatSubtitle => 'Minta cadangan item, resipi atau tip penjimatan.';

  @override
  String get aiError =>
      'Maaf, ralat berlaku semasa memproses permintaan anda. Periksa sambungan anda atau cuba lagi kemudian.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Log masuk untuk membuka kunci\nciri Premium';

  @override
  String get signInGoogle => 'Log masuk dengan Google';

  @override
  String get signInApple => 'Log masuk dengan Apple';

  @override
  String get continueAsGuest => 'Teruskan sebagai tetamu';

  @override
  String get onboardingAiGreeting =>
      'Hi! I\'m your smart assistant. What would you like to call me?';

  @override
  String onboardingAiNameResponse(String name) {
    return '$name? Love it! I can help with lists, categorize items, give suggestions and much more. What\'s your favorite food?';
  }

  @override
  String get onboardingAiFoodResponse =>
      'Yum! And how do you prepare it? I can suggest the ingredients!';

  @override
  String get onboardingAiListReady =>
      'Done! Your list is organized. Do you want to go to the shopping list or keep chatting?';

  @override
  String get onboardingAiSuggestButton => 'Suggest!';

  @override
  String get onboardingGoToList => 'Go to list';

  @override
  String get onboardingKeepChatting => 'Keep chatting';

  @override
  String get onboardingSkipToApp => 'Skip to app';

  @override
  String get onboardingChatPlaceholder => 'Type a message...';

  @override
  String get onboardingLoginTitle => 'Save everything to the cloud';

  @override
  String get onboardingLoginDesc => 'Your data synced across all your devices';

  @override
  String get onboardingShareTitle => 'Share with the ones you love';

  @override
  String get onboardingShareDesc =>
      'Sync lists with family and friends in real time';

  @override
  String get onboardingPremiumTitle => 'Unlock all features';

  @override
  String get onboardingPremiumSubtitle =>
      'Get the most out of your shopping lists';

  @override
  String get onboardingAnnualBadge => 'Best Value';

  @override
  String get onboardingMonthlyLabel => 'Monthly';

  @override
  String get onboardingAnnualLabel => 'Annual';

  @override
  String get onboardingViewAllPlans => 'View all plans';

  @override
  String get onboardingSubscribeCta => 'Subscribe';

  @override
  String get onboardingCancelAnytime => 'Cancel anytime. No commitment.';

  @override
  String get onboardingContinueAsGuest => 'Continue as guest';

  @override
  String get onboardingRestore => 'Restore';

  @override
  String get settingsDefaultScreen => 'Default home screen';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Choose between shopping list or AI chat';

  @override
  String get settingsScreenList => 'Shopping List';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Ralat log masuk: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Naik taraf untuk membuka kunci';

  @override
  String get itemRemoved => 'Item dialih keluar';

  @override
  String get undo => 'Buat asal';

  @override
  String get emptyListTitle => 'Senarai anda kosong';

  @override
  String get emptyListSubtitle => 'Tambah item untuk memulakan';

  @override
  String get noListFoundTitle => 'Tiada senarai ditemui';

  @override
  String get noListFoundSubtitle =>
      'Cipta senarai pertama anda untuk memulakan';

  @override
  String get createFirstList => 'Cipta Senarai Pertama';

  @override
  String get listBudgetTitle => 'Belanjawan Senarai';

  @override
  String get budgetAmountLabel => 'Jumlah belanjawan';

  @override
  String get removeBudget => 'Alih keluar';

  @override
  String get prefUnlimitedLists => 'Senarai tanpa had';

  @override
  String get prefSharing => 'Kongsi senarai';

  @override
  String get prefFullHistory => 'Sejarah penuh';

  @override
  String get prefExportData => 'Eksport data';

  @override
  String get prefCustomThemes => 'Tema tersuai';

  @override
  String get prefMonthlyBudget => 'Belanjawan bulanan global';

  @override
  String get prefAIAssistant => 'Pembantu AI Peribadi';

  @override
  String get prefUnlimitedPantry => 'Pantri tanpa had';

  @override
  String get prefInteractiveArtifacts => 'Artifak AI Interaktif';

  @override
  String get themeGreen => 'Hijau';

  @override
  String get themeBlue => 'Biru';

  @override
  String get themePurple => 'Ungu';

  @override
  String get themeRed => 'Merah';

  @override
  String get themeOrange => 'Jingga';

  @override
  String get themePink => 'Merah jambu';

  @override
  String get themeIndigo => 'Nila';

  @override
  String get themeAmber => 'Ambar';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Perang';

  @override
  String get catFruits => 'Buah-buahan';

  @override
  String get catCleaning => 'Pembersihan';

  @override
  String get catBeverages => 'Minuman';

  @override
  String get catBakery => 'Bakeri';

  @override
  String get catOthers => 'Lain-lain';

  @override
  String get unitPack => 'bungkus';

  @override
  String get shareSubject => 'Senarai Beli-belah';

  @override
  String get monthlyBudgetTitle => 'Belanjawan Bulanan';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Padam senarai';

  @override
  String get pantryItemRemoved => 'Item dialih keluar';

  @override
  String deficitItems(int deficit) {
    return '$deficit item perlu dibeli';
  }

  @override
  String get cartTotal => 'Jumlah troli';

  @override
  String get restockLabel => 'Stok semula';

  @override
  String get advancedFeatures => 'Ciri lanjutan';

  @override
  String get selectAll => 'Pilih semua';

  @override
  String get deselectAll => 'Nyahpilih semua';

  @override
  String get monthlyBudgetAppBar => 'Belanjawan Bulanan';

  @override
  String get budgetEditTitle => 'Belanjawan Bulanan';

  @override
  String get budgetDashboardTitle => 'Papan Pemuka';

  @override
  String get selectListForDashboard =>
      'Pilih senarai untuk melihat papan pemuka.';

  @override
  String get spendingAnalysis => 'Analisis Perbelanjaan';

  @override
  String get noItemsToAnalyze => 'Tiada item dalam senarai untuk dianalisis.';

  @override
  String get markItemsToSeeAnalysis =>
      'Tandakan item sebagai dibeli untuk melihat analisis.';

  @override
  String get totalSpending => 'Jumlah Perbelanjaan';

  @override
  String get spendingByCategory => 'Perbelanjaan mengikut Kategori';

  @override
  String get achievements => 'Pencapaian';

  @override
  String get exportPdfExcel => 'Eksport PDF/Excel';

  @override
  String get exportPdf => 'Eksport sebagai PDF';

  @override
  String get exportExcel => 'Eksport sebagai Excel';

  @override
  String get organizingAi => 'MENGORGANISASI DENGAN AI...';

  @override
  String get yesLabel => 'Ya';

  @override
  String get noLabel => 'Tidak';

  @override
  String get shareListText => 'Senarai Beli-belah Saya';

  @override
  String get emptyListAddItems => 'Senarai anda kosong! Tambah item dahulu.';

  @override
  String get listOrganizedMagic =>
      'Senarai teratur secara ajaib mengikut kategori!';

  @override
  String get shoppingMode => 'Mod Beli-belah';

  @override
  String get smartOrganization => 'Organisasi Pintar';

  @override
  String get savings => 'Penjimatan';

  @override
  String get shoppingModeHeader => 'MOD BELI-BELAH';

  @override
  String get shareAsText => 'Hantar item sebagai teks berformat';

  @override
  String get shareRealtime => 'Segerak masa nyata dengan orang lain';

  @override
  String get quickRecipe => 'Resipi cepat';

  @override
  String get quickRecipePrompt =>
      'Cadangkan resipi dengan item dari senarai saya.';

  @override
  String get economyTips => 'Tip penjimatan';

  @override
  String get economyTipsPrompt =>
      'Bagaimana saya boleh menjimatkan wang pada pembelian ini?';

  @override
  String get organizeAisles => 'Susun mengikut lorong';

  @override
  String get organizeAislesPrompt => 'Susun mengikut lorong pasar.';

  @override
  String get recipeSuggestion => 'Cadangan resipi';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kredit berbaki';
  }

  @override
  String get addAllToList => 'Tambah semua ke senarai';

  @override
  String get organizeByAisles => 'Susun mengikut lorong';

  @override
  String get voiceTranscriptionTooltip => 'Taip suara (Percuma)';

  @override
  String get aiVoiceCommandTooltip => 'Arahan Suara AI (Premium)';

  @override
  String get voiceCommandTitle => 'Arahan Suara AI';

  @override
  String get voiceCommandContent =>
      'Bercakap secara semula jadi untuk mengurus senarai anda!\n\nContoh:\n• \'Tambah roti, keju dan ham\'\n• \'Alih keluar pencuci pakaian\'\n• \'Tukar tema kepada biru\'\n\nIni adalah ciri eksklusif Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Lihat Pelan';

  @override
  String get itemsAddedSuccess => 'Item berjaya ditambah ke senarai!';

  @override
  String get viewList => 'Lihat senarai';

  @override
  String get feedbackTitle => 'Hantar Maklum Balas';

  @override
  String get feedbackPrompt => 'Apa yang ingin anda kongsikan?';

  @override
  String get feedbackTypeBug => 'Laporkan Pepijat';

  @override
  String get feedbackTypeBugHint => 'Sesuatu tidak berfungsi';

  @override
  String get feedbackTypeSuggestion => 'Cadangan';

  @override
  String get feedbackTypeSuggestionHint => 'Idea untuk menambah baik apl';

  @override
  String get feedbackTypeTranslation => 'Isu Terjemahan';

  @override
  String get feedbackTypeTranslationHint =>
      'Terjemahan tidak betul atau janggal';

  @override
  String get feedbackTypeFeature => 'Permintaan Ciri';

  @override
  String get feedbackTypeFeatureHint => 'Ciri yang anda ingin lihat';

  @override
  String get feedbackTypeOther => 'Lain-lain';

  @override
  String get feedbackTypeOtherHint => 'Jenis maklum balas lain';

  @override
  String get feedbackHint => 'Huraikan maklum balas anda secara terperinci...';

  @override
  String get feedbackSend => 'Hantar Maklum Balas';

  @override
  String get feedbackSending => 'Menghantar...';

  @override
  String get feedbackThankYou => 'Terima Kasih!';

  @override
  String get feedbackThankYouMessage =>
      'Maklum balas anda telah diterima dan membantu kami menambah baik Lista Plus untuk semua orang.';

  @override
  String get feedbackBack => 'Kembali';

  @override
  String feedbackError(String error) {
    return 'Ralat menghantar: $error';
  }

  @override
  String get feedbackRetry => 'Cuba semula';

  @override
  String get feedbackSettingsTitle => 'Hantar Maklum Balas';

  @override
  String get feedbackSettingsSubtitle =>
      'Laporkan pepijat, cadangkan penambahbaikan, atau baiki terjemahan';

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
  String get openMenu => 'Buka menu';

  @override
  String get viewRecipe => 'Lihat Resipi';

  @override
  String get recipeCreated => 'Resipi dicipta!';

  @override
  String get editRecipe => 'Edit';

  @override
  String get deleteRecipe => 'Padam';

  @override
  String get deleteRecipeConfirm => 'Padam resipi ini?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Adakah anda pasti mahu memadam \"$recipeName\"? Tindakan ini tidak boleh dibatalkan.';
  }

  @override
  String get ingredients => 'Ramuan';

  @override
  String get instructions => 'Arahan';

  @override
  String get prepTime => 'Masa penyediaan';

  @override
  String get recipeSaved => 'Resipi disimpan!';

  @override
  String get noRecipesSaved => 'Tiada resipi disimpan';

  @override
  String get noRecipesSavedHint =>
      'Cipta resipi tersuai pertama anda dengan mengetik butang di bawah.';

  @override
  String get myRecipes => 'Resipi Saya';

  @override
  String get newRecipe => 'Resipi Baharu';

  @override
  String get loadingRecipes => 'Memuatkan resipi anda...';

  @override
  String get errorLoadingRecipes => 'Ralat memuatkan resipi';

  @override
  String get addIngredient => 'Tambah ramuan';

  @override
  String get saveRecipe => 'Simpan';

  @override
  String get recipeName => 'Nama resipi';

  @override
  String get shortDescription => 'Penerangan ringkas';

  @override
  String get prepTimeMinutes => 'Masa penyediaan (minit)';

  @override
  String get instructionsHint => 'Taip satu langkah setiap baris...';

  @override
  String get addPhoto => 'Tambah foto';

  @override
  String get imageUrlPlaceholder => 'Atau tampal URL imej';

  @override
  String get tags => 'Tag';

  @override
  String get recipeTags => 'Tag resipi';

  @override
  String get suggestedTags => 'Dicadangkan';

  @override
  String get searchRecipes => 'Cari resipi...';

  @override
  String get filterByTag => 'Tapis mengikut tag';

  @override
  String get allTags => 'Semua';

  @override
  String get recipeDeleted => 'Resipi dipadam';

  @override
  String get saveChanges => 'Simpan perubahan';

  @override
  String get editRecipeTitle => 'Edit Resipi';

  @override
  String get newRecipeTitle => 'Resipi Baharu';

  @override
  String get requiredField => 'Diperlukan';

  @override
  String get chooseImageSource => 'Pilih sumber imej';

  @override
  String get gallery => 'Galeri';

  @override
  String get enterUrl => 'Masukkan URL';

  @override
  String get recipeImage => 'Imej resipi';

  @override
  String get removeImage => 'Buang imej';

  @override
  String get mealPlannerTitle => 'Perancang Hidangan';

  @override
  String get mealPlannerViewMonthly => 'Paparan bulanan';

  @override
  String get mealPlannerViewWeekly => 'Paparan mingguan';

  @override
  String get mealPlannerNoMeals => 'Tiada hidangan dirancang';

  @override
  String get mealPlannerNoMealsHint => 'Ketik hari untuk menambah hidangan';

  @override
  String get mealPlannerLoading => 'Memuatkan rancangan hidangan...';

  @override
  String get mealPlannerError => 'Ralat memuatkan rancangan hidangan';

  @override
  String get mealPlannerAddMeal => 'Tambah Hidangan';

  @override
  String get mealPlannerEditMeal => 'Edit Hidangan';

  @override
  String get mealPlannerDeleteMeal => 'Buang hidangan';

  @override
  String get mealPlannerMealDeleted => 'Hidangan dibuang';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hidangan',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Hidangan';

  @override
  String get mealPlannerNoteLabel => 'Nota (pilihan)';

  @override
  String get mealPlannerSelectRecipe => 'Pilih resipi';

  @override
  String get mealPlannerSearchRecipes => 'Cari resipi...';

  @override
  String get mealPlannerNoRecipesFound => 'Tiada resipi ditemui';

  @override
  String get mealPlannerNoRecipesHint => 'Cipta resipi dalam tab Resipi dahulu';

  @override
  String get mealPlannerSave => 'Tambah ke rancangan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count daripada $total hidangan dirancang';
  }

  @override
  String get mealPlannerGenerateList => 'Hasilkan senarai beli-belah';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Tambah semua ramuan daripada hidangan yang dirancang minggu ini ke senarai beli-belah anda?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ramuan ditambah ke senarai anda!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Tiada ramuan untuk ditambah. Rancang beberapa hidangan dengan resipi dahulu.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Cipta senarai beli-belah dahulu.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Sarapan';

  @override
  String get mealPlannerMealTypeLunch => 'Makan Tengah Hari';

  @override
  String get mealPlannerMealTypeDinner => 'Makan Malam';

  @override
  String get mealPlannerMealTypeSnack => 'Snek';

  @override
  String get mealPlannerDateLabel => 'Tarikh';

  @override
  String get mealPlannerWeekEmpty => 'Tiada apa-apa dirancang untuk minggu ini';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Ketik mana-mana hari untuk mula merancang hidangan anda!';

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

/// The translations for Malay, as used in Malaysia (`ms_MY`).
class AppLocalizationsMsMy extends AppLocalizationsMs {
  AppLocalizationsMsMy() : super('ms_MY');

  @override
  String get appTitle => 'Senarai Beli-belah';

  @override
  String get lists => 'Senarai';

  @override
  String get pantry => 'Pantri';

  @override
  String get cancel => 'Batal';

  @override
  String get save => 'Simpan';

  @override
  String get create => 'Cipta';

  @override
  String get add => 'Tambah';

  @override
  String get remove => 'Alih keluar';

  @override
  String get delete => 'Padam';

  @override
  String get edit => 'Sunting';

  @override
  String get copy => 'Salin';

  @override
  String get retry => 'Cuba semula';

  @override
  String get regenerate => 'Hasilkan semula';

  @override
  String get copiedToClipboard => 'Disalin ke papan klip';

  @override
  String get confirm => 'Sahkan';

  @override
  String get close => 'Tutup';

  @override
  String get import => 'Import';

  @override
  String get rename => 'Tukar nama';

  @override
  String get upgrade => 'Naik taraf';

  @override
  String get clear => 'Kosongkan';

  @override
  String error(String message) {
    return 'Ralat: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Ralat: $message';
  }

  @override
  String get purchaseError => 'Ralat memproses pembelian. Cuba semula.';

  @override
  String get restoreError => 'Ralat memulihkan pembelian. Cuba semula.';

  @override
  String get loading => 'Memuatkan...';

  @override
  String get fieldRequired => 'Ruangan wajib';

  @override
  String get addedFeedback => 'Ditambah!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dipilih',
      one: '$count dipilih',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Anggaran';

  @override
  String get alreadyPurchased => 'Sudah dibeli';

  @override
  String get clearList => 'Kosongkan senarai';

  @override
  String get clearPurchased => 'Kosongkan pembelian';

  @override
  String get share => 'Kongsi';

  @override
  String get shareViaCode => 'Kongsi melalui kod';

  @override
  String get importViaCode => 'Import melalui kod';

  @override
  String get listAssistant => 'Pembantu senarai';

  @override
  String get globalAssistant => 'Pembantu global';

  @override
  String get becomePremium => 'Jadi Premium';

  @override
  String get manageSubscription => 'Urus langganan';

  @override
  String get completePurchase => 'Selesaikan pembelian';

  @override
  String get confirmClearList => 'Alih keluar semua item?';

  @override
  String get shareListTitle => 'Kongsi Senarai';

  @override
  String get shareThisCode => 'Kongsi kod ini:';

  @override
  String get validForLimitedTime => 'Sah untuk masa terhad';

  @override
  String get importListTitle => 'Import Senarai';

  @override
  String get enterCodeHint => 'Masukkan kod';

  @override
  String get confirmArchiveTitle => 'Selesaikan Pembelian';

  @override
  String get confirmArchiveContent =>
      'Selesaikan pembelian ini dan arkibkan senarai?';

  @override
  String get complete => 'Selesai';

  @override
  String get listArchived => 'Senarai berjaya diarkibkan!';

  @override
  String listAdded(String listName) {
    return '$listName ditambah!';
  }

  @override
  String get buy => 'Beli';

  @override
  String get unmark => 'Nyah tanda';

  @override
  String confirmDeleteItems(int count) {
    return 'Alih keluar $count item?';
  }

  @override
  String get confirmDeleteTitle => 'Sahkan';

  @override
  String confirmContent(int count) {
    return 'Alih keluar $count item?';
  }

  @override
  String get archiveList => 'Arkibkan senarai';

  @override
  String get pantryAppBar => 'Pantri';

  @override
  String get generateShoppingList => 'Hasilkan senarai beli-belah';

  @override
  String get pantryEmpty => 'Pantri kosong';

  @override
  String get pantryEmptySubtitle =>
      'Tambah produk yang anda mahu simpan di rumah';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item perlu dibeli';
  }

  @override
  String get noItemsToBuy => 'Tiada item perlu dibeli';

  @override
  String get newPantryList => 'Beli-belah Pantri';

  @override
  String get newListTitle => 'Senarai Beli-belah Baharu';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item akan ditambah';
  }

  @override
  String get listNameLabel => 'Nama senarai';

  @override
  String listCreated(String name, int count) {
    return 'Senarai \"$name\" dicipta dengan $count item';
  }

  @override
  String get noTracking => 'Tiada penjejakan';

  @override
  String get markAsPurchased => 'Tandakan sebagai dibeli';

  @override
  String editPantryItem(String name) {
    return 'Sunting $name';
  }

  @override
  String get idealQuantity => 'Kuantiti ideal';

  @override
  String get currentQuantity => 'Kuantiti semasa';

  @override
  String get consumed => 'Digunakan';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name diisi semula kepada $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Alih keluar \"$name\" dari pantri?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Sunting $name';
  }

  @override
  String get settingsAppBar => 'Tetapan';

  @override
  String get language => 'Bahasa';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Sistem lalai';

  @override
  String get chooseLanguage => 'Pilih Bahasa';

  @override
  String get searchLanguage => 'Cari bahasa...';

  @override
  String get appearance => 'Penampilan';

  @override
  String get light => 'Terang';

  @override
  String get system => 'Sistem';

  @override
  String get dark => 'Gelap';

  @override
  String get themeColor => 'Warna tema';

  @override
  String get dynamicColors => 'Warna dinamik';

  @override
  String get dynamicColorsSubtitle =>
      'Gunakan warna berdasarkan kertas dinding anda';

  @override
  String get finance => 'Kewangan';

  @override
  String get monthlyBudgetNav => 'Belanjawan bulanan';

  @override
  String get budgetSubtitle => 'Jejak perbelanjaan bulanan anda';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Sandaran';

  @override
  String get backupSubtitle => 'Eksport atau import data anda';

  @override
  String get about => 'Perihal';

  @override
  String get version => 'Versi';

  @override
  String get privacy => 'Privasi';

  @override
  String get termsOfUse => 'Syarat penggunaan';

  @override
  String get backupTitle => 'Sandaran';

  @override
  String get backupPremiumDescription =>
      'Sandaran dan eksport adalah ciri premium';

  @override
  String get exportData => 'Eksport data';

  @override
  String get exportDataSubtitle => 'Simpan semua senarai sebagai JSON';

  @override
  String get importData => 'Import data';

  @override
  String get importDataSubtitle => 'Pulihkan senarai dari JSON';

  @override
  String get importJsonTitle => 'Import JSON';

  @override
  String get importJsonHint => 'Tampal JSON sandaran di sini...';

  @override
  String get backupExported => 'Sandaran berjaya dieksport!';

  @override
  String get budgetAppBar => 'Belanjawan Bulanan';

  @override
  String get budgetPremiumLocked => 'Belanjawan bulanan global adalah premium';

  @override
  String get budgetUpgradePrompt => 'Naik taraf untuk membuka kunci';

  @override
  String get noBudgetDefined => 'Tiada belanjawan ditetapkan';

  @override
  String totalEstimated(String amount) {
    return 'Jumlah anggaran: $amount';
  }

  @override
  String get setBudgetButton => 'Tetapkan belanjawan';

  @override
  String get budgetLists => 'Senarai';

  @override
  String get budgetValueLabel => 'Jumlah';

  @override
  String get setBudgetTitle => 'Belanjawan Bulanan';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Semua';

  @override
  String get filterPending => 'Belum selesai';

  @override
  String get filterPurchased => 'Dibeli';

  @override
  String get sortName => 'Nama';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Tarikh';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Tambah Item';

  @override
  String get itemName => 'Nama item';

  @override
  String get quantityShort => 'Kuantiti';

  @override
  String get unit => 'Unit';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Harga anggaran';

  @override
  String get addItemPrice => 'Harga anggaran';

  @override
  String get editItem => 'Sunting Item';

  @override
  String get quantityFull => 'Kuantiti';

  @override
  String get editItemPrice => 'Harga anggaran';

  @override
  String get addToPantry => 'Tambah ke Pantri';

  @override
  String addToPantryPrompt(String name) {
    return 'Tambah \"$name\" ke Pantri anda?';
  }

  @override
  String get yes => 'Ya';

  @override
  String get productName => 'Nama produk';

  @override
  String get idealQty => 'Kuantiti ideal';

  @override
  String get currentQty => 'Kuantiti semasa';

  @override
  String get trackStock => 'Jejak stok';

  @override
  String get trackStockActive => 'Muncul dalam cadangan beli-belah';

  @override
  String get trackStockInactive => 'Tidak menghasilkan cadangan beli-belah';

  @override
  String get createListDialog => 'Cipta Senarai';

  @override
  String get renameListDialog => 'Tukar Nama Senarai';

  @override
  String get listHistory => 'Sejarah Senarai';

  @override
  String get myLists => 'Senarai Saya';

  @override
  String get viewActive => 'Lihat Aktif';

  @override
  String get viewHistory => 'Lihat Sejarah';

  @override
  String get noArchivedLists => 'Tiada senarai diarkibkan';

  @override
  String get noActiveLists => 'Tiada senarai aktif';

  @override
  String completedOn(String date) {
    return 'Selesai pada $date';
  }

  @override
  String get sharedLabel => 'Dikongsi';

  @override
  String get restore => 'Pulihkan';

  @override
  String get removeSharedTooltip => 'Alih keluar';

  @override
  String get deleteListTitle => 'Padam senarai';

  @override
  String deleteListContent(String name) {
    return 'Adakah anda pasti mahu memadam \"$name\"? Semua item akan dialih keluar.';
  }

  @override
  String get removeSharedListTitle => 'Alih keluar senarai dikongsi';

  @override
  String removeSharedListContent(String name) {
    return 'Alih keluar \"$name\" dari senarai anda? Senarai asal tidak akan terjejas.';
  }

  @override
  String get createNewList => 'Cipta senarai baharu';

  @override
  String get aiAssistant => 'Pembantu AI';

  @override
  String get aiAssistantDescription =>
      'Dapatkan cadangan pintar, resipi dan petua peribadi dengan pembantu AI kami.';

  @override
  String get generalAssistant => 'Pembantu Am';

  @override
  String get clearHistory => 'Kosongkan Sejarah';

  @override
  String get clearHistoryConfirm => 'Kosongkan semua mesej dalam sesi ini?';

  @override
  String get chatHint => 'Taip mesej anda...';

  @override
  String chatError(String error) {
    return 'Ralat memuatkan sembang: $error';
  }

  @override
  String get listHelp => 'Bagaimana saya boleh bantu dengan senarai anda?';

  @override
  String get generalHelp =>
      'Bagaimana saya boleh bantu dengan beli-belah anda hari ini?';

  @override
  String get chatSubtitle =>
      'Minta cadangan item, resipi atau petua penjimatan.';

  @override
  String get aiError =>
      'Maaf, ralat berlaku semasa memproses permintaan anda. Periksa sambungan anda atau cuba lagi kemudian.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Log masuk untuk membuka kunci\nciri premium';

  @override
  String get signInGoogle => 'Daftar masuk dengan Google';

  @override
  String get signInApple => 'Daftar masuk dengan Apple';

  @override
  String get continueAsGuest => 'Teruskan sebagai tetamu';

  @override
  String loginError(String error) {
    return 'Ralat log masuk: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Naik taraf untuk membuka kunci';

  @override
  String get itemRemoved => 'Item dialih keluar';

  @override
  String get undo => 'Buat asal';

  @override
  String get emptyListTitle => 'Senarai anda kosong';

  @override
  String get emptyListSubtitle => 'Tambah item untuk memulakan';

  @override
  String get noListFoundTitle => 'Tiada senarai ditemui';

  @override
  String get noListFoundSubtitle =>
      'Cipta senarai pertama anda untuk memulakan';

  @override
  String get createFirstList => 'Cipta Senarai Pertama';

  @override
  String get listBudgetTitle => 'Belanjawan Senarai';

  @override
  String get budgetAmountLabel => 'Jumlah belanjawan';

  @override
  String get removeBudget => 'Alih keluar';

  @override
  String get prefUnlimitedLists => 'Senarai tanpa had';

  @override
  String get prefSharing => 'Kongsi senarai';

  @override
  String get prefFullHistory => 'Sejarah penuh';

  @override
  String get prefExportData => 'Eksport data';

  @override
  String get prefCustomThemes => 'Tema tersuai';

  @override
  String get prefMonthlyBudget => 'Belanjawan bulanan global';

  @override
  String get prefAIAssistant => 'Pembantu AI Peribadi';

  @override
  String get prefUnlimitedPantry => 'Pantri tanpa had';

  @override
  String get prefInteractiveArtifacts => 'AI Interaktif';

  @override
  String get themeGreen => 'Hijau';

  @override
  String get themeBlue => 'Biru';

  @override
  String get themePurple => 'Ungu';

  @override
  String get themeRed => 'Merah';

  @override
  String get themeOrange => 'Oren';

  @override
  String get themePink => 'Merah jambu';

  @override
  String get themeIndigo => 'Nila';

  @override
  String get themeAmber => 'Ambar';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Coklat';

  @override
  String get catFruits => 'Buah-buahan';

  @override
  String get catCleaning => 'Pembersihan';

  @override
  String get catBeverages => 'Minuman';

  @override
  String get catBakery => 'Bakeri';

  @override
  String get catOthers => 'Lain-lain';

  @override
  String get unitPack => 'bungkus';

  @override
  String get shareSubject => 'Senarai Beli-belah';

  @override
  String get monthlyBudgetTitle => 'Belanjawan Bulanan';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Padam senarai';

  @override
  String get pantryItemRemoved => 'Item dialih keluar';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit item perlu dibeli',
      one: '$deficit item perlu dibeli',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Jumlah troli';

  @override
  String get restockLabel => 'Isi semula';

  @override
  String get advancedFeatures => 'Ciri lanjutan';

  @override
  String get selectAll => 'Pilih semua';

  @override
  String get deselectAll => 'Nyahpilih semua';

  @override
  String get monthlyBudgetAppBar => 'Belanjawan Bulanan';

  @override
  String get budgetEditTitle => 'Belanjawan Bulanan';

  @override
  String get budgetDashboardTitle => 'Papan pemuka';

  @override
  String get selectListForDashboard =>
      'Pilih senarai untuk melihat papan pemuka.';

  @override
  String get spendingAnalysis => 'Analisis Perbelanjaan';

  @override
  String get noItemsToAnalyze => 'Tiada item dalam senarai untuk dianalisis.';

  @override
  String get markItemsToSeeAnalysis =>
      'Tandakan item sebagai dibeli untuk melihat analisis.';

  @override
  String get totalSpending => 'Jumlah Perbelanjaan';

  @override
  String get spendingByCategory => 'Perbelanjaan mengikut Kategori';

  @override
  String get achievements => 'Pencapaian';

  @override
  String get exportPdfExcel => 'Eksport PDF/Excel';

  @override
  String get exportPdf => 'Eksport sebagai PDF';

  @override
  String get exportExcel => 'Eksport sebagai Excel';

  @override
  String get organizingAi => 'MENGORGANISASIKAN DENGAN AI...';

  @override
  String get yesLabel => 'Ya';

  @override
  String get noLabel => 'Tidak';

  @override
  String get shareListText => 'Senarai Beli-belah Saya';

  @override
  String get emptyListAddItems => 'Senarai anda kosong! Tambah item dahulu. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Senarai teratur secara ajaib mengikut kategori! ✨';

  @override
  String get shoppingMode => 'Mod Beli-belah';

  @override
  String get smartOrganization => 'Organisasi Pintar';

  @override
  String get savings => 'Simpanan';

  @override
  String get shoppingModeHeader => 'MOD BELI-BELAH';

  @override
  String get shareAsText => 'Hantar item sebagai teks berformat';

  @override
  String get shareRealtime => 'Segerak masa nyata dengan orang lain';

  @override
  String get quickRecipe => 'Resipi cepat';

  @override
  String get quickRecipePrompt =>
      'Cadangkan resipi dengan item dari senarai saya.';

  @override
  String get economyTips => 'Petua jimat';

  @override
  String get economyTipsPrompt =>
      'Bagaimana saya boleh jimat wang pada pembelian ini?';

  @override
  String get organizeAisles => 'Susun mengikut lorong';

  @override
  String get organizeAislesPrompt => 'Susun mengikut lorong pasar.';

  @override
  String get recipeSuggestion => 'Cadangan resipi';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kredit tinggal';
  }

  @override
  String get addAllToList => 'Tambah semua ke senarai';

  @override
  String get organizeByAisles => 'Susun mengikut lorong';

  @override
  String get voiceTranscriptionTooltip => 'Menaip suara (Percuma)';

  @override
  String get aiVoiceCommandTooltip => 'Arahan Suara AI (Premium)';

  @override
  String get voiceCommandTitle => 'Arahan Suara AI';

  @override
  String get voiceCommandContent =>
      'Bercakap secara semula jadi untuk mengurus senarai anda!\n\nContoh:\n• \'Tambah roti, keju dan ham\'\n• \'Alih keluar detergen dobi\'\n• \'Tukar tema kepada biru\'\n\nIni adalah ciri eksklusif Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Lihat Pelan';

  @override
  String get itemsAddedSuccess => 'Item berjaya ditambah ke senarai!';

  @override
  String get viewList => 'Lihat senarai';

  @override
  String get feedbackTitle => 'Hantar Maklum Balas';

  @override
  String get feedbackPrompt => 'Apa yang ingin anda kongsikan?';

  @override
  String get feedbackTypeBug => 'Laporkan Pepijat';

  @override
  String get feedbackTypeBugHint => 'Sesuatu tidak berfungsi';

  @override
  String get feedbackTypeSuggestion => 'Cadangan';

  @override
  String get feedbackTypeSuggestionHint => 'Idea untuk menambah baik apl';

  @override
  String get feedbackTypeTranslation => 'Isu Terjemahan';

  @override
  String get feedbackTypeTranslationHint =>
      'Terjemahan tidak betul atau janggal';

  @override
  String get feedbackTypeFeature => 'Permintaan Ciri';

  @override
  String get feedbackTypeFeatureHint => 'Ciri yang anda ingin lihat';

  @override
  String get feedbackTypeOther => 'Lain-lain';

  @override
  String get feedbackTypeOtherHint => 'Jenis maklum balas lain';

  @override
  String get feedbackHint => 'Huraikan maklum balas anda secara terperinci...';

  @override
  String get feedbackSend => 'Hantar Maklum Balas';

  @override
  String get feedbackSending => 'Menghantar...';

  @override
  String get feedbackThankYou => 'Terima Kasih!';

  @override
  String get feedbackThankYouMessage =>
      'Maklum balas anda telah diterima dan membantu kami menambah baik Lista Plus untuk semua orang.';

  @override
  String get feedbackBack => 'Kembali';

  @override
  String feedbackError(String error) {
    return 'Ralat menghantar: $error';
  }

  @override
  String get feedbackRetry => 'Cuba semula';

  @override
  String get feedbackSettingsTitle => 'Hantar Maklum Balas';

  @override
  String get feedbackSettingsSubtitle =>
      'Laporkan pepijat, cadangkan penambahbaikan, atau baiki terjemahan';

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
  String get openMenu => 'Buka menu';

  @override
  String get viewRecipe => 'Lihat Resipi';

  @override
  String get recipeCreated => 'Resipi dicipta!';

  @override
  String get editRecipe => 'Edit';

  @override
  String get deleteRecipe => 'Padam';

  @override
  String get deleteRecipeConfirm => 'Padam resipi ini?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Adakah anda pasti mahu memadam \"$recipeName\"? Tindakan ini tidak boleh dibatalkan.';
  }

  @override
  String get ingredients => 'Ramuan';

  @override
  String get instructions => 'Arahan';

  @override
  String get prepTime => 'Masa penyediaan';

  @override
  String get recipeSaved => 'Resipi disimpan!';

  @override
  String get noRecipesSaved => 'Tiada resipi disimpan';

  @override
  String get noRecipesSavedHint =>
      'Cipta resipi tersuai pertama anda dengan mengetik butang di bawah.';

  @override
  String get myRecipes => 'Resipi Saya';

  @override
  String get newRecipe => 'Resipi Baharu';

  @override
  String get loadingRecipes => 'Memuatkan resipi anda...';

  @override
  String get errorLoadingRecipes => 'Ralat memuatkan resipi';

  @override
  String get addIngredient => 'Tambah ramuan';

  @override
  String get saveRecipe => 'Simpan';

  @override
  String get recipeName => 'Nama resipi';

  @override
  String get shortDescription => 'Penerangan ringkas';

  @override
  String get prepTimeMinutes => 'Masa penyediaan (minit)';

  @override
  String get instructionsHint => 'Taip satu langkah setiap baris...';

  @override
  String get addPhoto => 'Tambah foto';

  @override
  String get imageUrlPlaceholder => 'Atau tampal URL imej';

  @override
  String get tags => 'Tag';

  @override
  String get recipeTags => 'Tag resipi';

  @override
  String get suggestedTags => 'Dicadangkan';

  @override
  String get searchRecipes => 'Cari resipi...';

  @override
  String get filterByTag => 'Tapis mengikut tag';

  @override
  String get allTags => 'Semua';

  @override
  String get recipeDeleted => 'Resipi dipadam';

  @override
  String get saveChanges => 'Simpan perubahan';

  @override
  String get editRecipeTitle => 'Edit Resipi';

  @override
  String get newRecipeTitle => 'Resipi Baharu';

  @override
  String get requiredField => 'Diperlukan';

  @override
  String get chooseImageSource => 'Pilih sumber imej';

  @override
  String get gallery => 'Galeri';

  @override
  String get enterUrl => 'Masukkan URL';

  @override
  String get recipeImage => 'Imej resipi';

  @override
  String get removeImage => 'Buang imej';

  @override
  String get mealPlannerTitle => 'Perancang Hidangan';

  @override
  String get mealPlannerViewMonthly => 'Paparan bulanan';

  @override
  String get mealPlannerViewWeekly => 'Paparan mingguan';

  @override
  String get mealPlannerNoMeals => 'Tiada hidangan dirancang';

  @override
  String get mealPlannerNoMealsHint => 'Ketik hari untuk menambah hidangan';

  @override
  String get mealPlannerLoading => 'Memuatkan rancangan hidangan...';

  @override
  String get mealPlannerError => 'Ralat memuatkan rancangan hidangan';

  @override
  String get mealPlannerAddMeal => 'Tambah Hidangan';

  @override
  String get mealPlannerEditMeal => 'Edit Hidangan';

  @override
  String get mealPlannerDeleteMeal => 'Buang hidangan';

  @override
  String get mealPlannerMealDeleted => 'Hidangan dibuang';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hidangan',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Hidangan';

  @override
  String get mealPlannerNoteLabel => 'Nota (pilihan)';

  @override
  String get mealPlannerSelectRecipe => 'Pilih resipi';

  @override
  String get mealPlannerSearchRecipes => 'Cari resipi...';

  @override
  String get mealPlannerNoRecipesFound => 'Tiada resipi ditemui';

  @override
  String get mealPlannerNoRecipesHint => 'Cipta resipi dalam tab Resipi dahulu';

  @override
  String get mealPlannerSave => 'Tambah ke rancangan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count daripada $total hidangan dirancang';
  }

  @override
  String get mealPlannerGenerateList => 'Hasilkan senarai beli-belah';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Tambah semua ramuan daripada hidangan yang dirancang minggu ini ke senarai beli-belah anda?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ramuan ditambah ke senarai anda!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Tiada ramuan untuk ditambah. Rancang beberapa hidangan dengan resipi dahulu.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Cipta senarai beli-belah dahulu.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Sarapan';

  @override
  String get mealPlannerMealTypeLunch => 'Makan Tengah Hari';

  @override
  String get mealPlannerMealTypeDinner => 'Makan Malam';

  @override
  String get mealPlannerMealTypeSnack => 'Snek';

  @override
  String get mealPlannerDateLabel => 'Tarikh';

  @override
  String get mealPlannerWeekEmpty => 'Tiada apa-apa dirancang untuk minggu ini';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Ketik mana-mana hari untuk mula merancang hidangan anda!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }
}
