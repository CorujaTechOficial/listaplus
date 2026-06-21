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
  String get navChat => 'Sembang';

  @override
  String get navRecipes => 'resepi';

  @override
  String get navLists => 'Senarai';

  @override
  String get navMealPlanner => 'Menu';

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
  String get next => 'Seterusnya';

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
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Keluar daripada Mod Beli-belah';

  @override
  String get exit => 'Keluar';

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
      'Selesaikan pembelian ini and arkibkan senarai?';

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
  String pantryDeficitCount(int count, String unit) {
    return 'Tiada $count$unit';
  }

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
  String get scanProductTitle => 'Imbas Produk';

  @override
  String get positionBarcodeCenter => 'Letakkan kod bar di tengah';

  @override
  String get product => 'produk';

  @override
  String get settingsAppBar => 'Tetapan';

  @override
  String get preferencesSection => 'Keutamaan';

  @override
  String get aiSection => 'Penolong AI';

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
  String get currency => 'mata wang';

  @override
  String get chooseCurrency => 'Pilih Mata Wang';

  @override
  String get searchCurrency => 'Cari mata wang...';

  @override
  String get appearance => 'Penampilan';

  @override
  String get themeMode => 'Mod tema';

  @override
  String get chooseThemeMode => 'Pilih mod tema';

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
      'Lumpuhkan warna dinamik untuk warna tema berkuat kuasa';

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
  String get myAchievements => 'Pencapaian Saya';

  @override
  String get itemsPurchased => 'Barangan yang Dibeli';

  @override
  String get totalSavings => 'Jumlah Simpanan';

  @override
  String get currentStreak => 'Streak Semasa';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari',
      one: '$count hari',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Lencana Tidak Berkunci';

  @override
  String get badgeBeginner => 'pemula';

  @override
  String get badgeOrganized => 'Tersusun';

  @override
  String get badgeSavingMaster => 'Guru Penyelamat';

  @override
  String get badgeSuperPlanner => 'Perancang Super';

  @override
  String get backupTitle => 'Sandaran';

  @override
  String get backupPremiumDescription =>
      'Sandaran and eksport adalah ciri Premium';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased daripada $total item';
  }

  @override
  String progressBudget(String amount) {
    return 'Belanjawan: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Jumlah: $amount';
  }

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
  String get trackStockInactive => 'Tidak menghasilkan cadangan beli-belah';

  @override
  String get keepAdding => 'Teruskan menambah';

  @override
  String get keepAddingSubtitle =>
      'Pastikan helaian terbuka untuk menambah berbilang item';

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
    return 'Alih keluar \"$name\" from senarai anda? Senarai asal tidak akan terjejas.';
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
  String get newChat => 'Sembang Baharu';

  @override
  String get noHistory => 'Tiada sejarah sembang';

  @override
  String get deleteSession => 'Padam Sembang';

  @override
  String get deleteSessionConfirm =>
      'Adakah anda pasti mahu memadamkan sembang ini? Mesej akan hilang secara kekal.';

  @override
  String get clearHistory => 'Kosongkan Sejarah';

  @override
  String get clearHistoryConfirm => 'Kosongkan semua mesej dalam sesi ini?';

  @override
  String get chatHint => 'Taip mesej anda...';

  @override
  String get chatHintBlocked => 'Buka kunci AI untuk bersembang';

  @override
  String get chatEmptySubtitle =>
      'Minta cadangan item, resipi atau petua menyimpan untuk bermula.';

  @override
  String get chatEmptyTitle => 'Sembang anda kosong';

  @override
  String chatError(String error) {
    return 'Ralat memuatkan sembang: $error';
  }

  @override
  String get goodResponse => 'Sambutan yang baik';

  @override
  String get badResponse => 'Sambutan buruk';

  @override
  String get scrollToBottom => 'Tatal ke bawah';

  @override
  String get somethingWentWrong => 'Sesuatu telah berlaku';

  @override
  String get editMessage => 'Edit mesej';

  @override
  String get searchConversations => 'Cari perbualan';

  @override
  String get dateGroupToday => 'Hari ini';

  @override
  String get dateGroupYesterday => 'Semalam';

  @override
  String get dateGroupPrevious7Days => '7 hari sebelumnya';

  @override
  String get dateGroupOlder => 'Lebih tua';

  @override
  String get aiAssistantTitle => 'Penolong AI';

  @override
  String get closeSheet => 'tutup';

  @override
  String get scanBarcodeTitle => 'Imbas Kod Bar';

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
  String get aiLimitAlmostReached => 'Hampir kehabisan mesej AI';

  @override
  String get unlockAi => 'Buka kunci AI tanpa had';

  @override
  String get aiTeaserFallback =>
      'Langgan Premium untuk membuka kunci respons penuh dan dapatkan petua AI tanpa had untuk membeli-belah anda...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Tindakan AI yang tinggal pada bulan ini — naik taraf tanpa had';
  }

  @override
  String get aiUsageExhausted =>
      'Had AI bulanan dicapai. Naik taraf kepada Pro untuk tanpa had →';

  @override
  String get undo => 'Buat asal';

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
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Log masuk untuk membuka kunci\nciri Premium';

  @override
  String get signInGoogle => 'Daftar masuk dengan Google';

  @override
  String get signInApple => 'Daftar masuk dengan Apple';

  @override
  String get continueAsGuest => 'Teruskan sebagai tetamu';

  @override
  String get onboardingWelcomeTitle => 'Selamat datang ke KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Cara paling bijak untuk mengatur belanja anda and menjimatkan wang.';

  @override
  String get onboardingSetupTitle => 'Peribadikan pengalaman anda';

  @override
  String get onboardingSetupDesc =>
      'Pilih cara anda mahu KipiList kelihatan and berfungsi untuk anda.';

  @override
  String get onboardingLoginTitle => 'Simpan semuanya ke awan';

  @override
  String get onboardingLoginDesc =>
      'Data anda disegerakkan merentas semua peranti anda';

  @override
  String get onboardingShareTitle => 'Kongsi dengan orang yang anda sayangi';

  @override
  String get onboardingShareDesc =>
      'Segerakkan senarai dengan keluarga and rakan dalam masa nyata';

  @override
  String get onboardingPremiumTitle => 'Buka kunci semua ciri';

  @override
  String get onboardingPremiumSubtitle =>
      'Manfaatkan sepenuhnya senarai beli-belah anda';

  @override
  String get onboardingAnnualBadge => 'Nilai Terbaik';

  @override
  String get onboardingMonthlyLabel => 'Bulanan';

  @override
  String get onboardingAnnualLabel => 'tahunan';

  @override
  String get onboardingViewAllPlans => 'Lihat semua rancangan';

  @override
  String get onboardingSubscribeCta => 'Langgan';

  @override
  String get onboardingCancelAnytime =>
      'Batalkan bila-bila masa. Tiada komitmen.';

  @override
  String get onboardingContinueAsGuest => 'Teruskan sebagai tetamu';

  @override
  String get onboardingRestore => 'Pulihkan';

  @override
  String get onboardingRestoreDesc =>
      'Sudah mempunyai langganan? Ketik di sini untuk memulihkannya.';

  @override
  String get onboardingMaybeLater => 'Mungkin nanti';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hai $name, atur belanja anda dengan cara yang betul.';
  }

  @override
  String get onboardingSlide1Title => 'Senarai Beli-belah Pintar';

  @override
  String get onboardingSlide1Body =>
      'Buat and kongsi senarai serta-merta. Kipi menambah item secara automatik berdasarkan tabiat anda.';

  @override
  String get onboardingSlide2Title => 'Jumpa Kipi';

  @override
  String get onboardingSlide2Body =>
      'Tanya apa sahaja — buat senarai, cari resipi, jejak pantri anda, rancang minggu anda.';

  @override
  String get onboardingSlide3Title => 'Pantri & Perancangan Makanan';

  @override
  String get onboardingSlide3Body =>
      'Jejaki apa yang anda ada, rancang makanan and jana senarai beli-belah secara automatik.';

  @override
  String get onboardingExit => 'Keluar';

  @override
  String get onboardingPersonalizationTitle => 'Jom kenali awak';

  @override
  String get onboardingPersonalizationDesc =>
      'Kami akan menggunakan ini untuk memperibadikan cadangan anda and menjadikan beli-belah lebih bijak.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Apakah makanan kegemaran anda?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'cth. Pizza, Sushi, Lasagna...';

  @override
  String get onboardingPersonalizationCta => 'teruskan';

  @override
  String get onboardingPersonalizationSkip => 'Langkau buat masa ini';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Beritahu kami makanan kegemaran anda untuk meneruskan';

  @override
  String get settingsDefaultScreen => 'Skrin utama lalai';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Pilih antara senarai beli-belah atau sembang AI';

  @override
  String get settingsScreenList => 'Senarai Membeli-belah';

  @override
  String get settingsScreenChat => 'Sembang AI';

  @override
  String loginError(String error) {
    return 'Ralat log masuk: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError => 'Ralat memuatkan tawaran. Cuba lagi.';

  @override
  String get paywallPurchaseError =>
      'Tidak dapat menyelesaikan pembelian. Cuba lagi.';

  @override
  String get paywallRestoreError =>
      'Tiada langganan aktif ditemui untuk dipulihkan.';

  @override
  String paywallTrialDays(Object days) {
    return '$days HARI PERCUMA';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MINGGU PERCUMA',
      one: '$count MINGGU PERCUMA',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count BULAN PERCUMA',
      one: '$count BULAN PERCUMA',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'Cuba KipiList Pro secara percuma selama 7 hari';

  @override
  String get paywallTrialSubtitle =>
      'Batalkan bila-bila masa. Tiada caj hari ini.';

  @override
  String get paywallTrialCta => 'Mulakan Percubaan Percuma';

  @override
  String get recipeAddToList => 'Tambahkan ke senarai beli-belah';

  @override
  String get recipeAddError =>
      'Tidak dapat menambah senarai anda. Sila cuba lagi.';

  @override
  String get recipeTapToCheck =>
      'Ketik bahan untuk menyemaknya semasa anda memasak';

  @override
  String get recipeIngredientInPantry => 'Dalam pantri';

  @override
  String get recipeIngredientLowPantry => 'Rendah dalam pantri';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count bahan ditambahkan pada $listName';
  }

  @override
  String get noListSelected => 'Tiada senarai dipilih. Buka senarai dahulu.';

  @override
  String get paywallFeaturesTitle => 'Semua yang anda perlukan:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI mengatur senarai anda secara automatik';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Buat seberapa banyak senarai yang anda perlukan';

  @override
  String get paywallFeatureDescSharing =>
      'Beli-belah bersama-sama dalam masa nyata';

  @override
  String get paywallFeatureDescPantry => 'Jejaki apa yang anda ada di rumah';

  @override
  String get paywallFeatureDescBudget => 'Kekal pada bajet setiap bulan';

  @override
  String get paywallFeatureUnlimitedLists => 'Senarai tanpa had';

  @override
  String get paywallFeatureSmartAI => 'AI Pintar';

  @override
  String get paywallFeatureExpenseControl => 'Kawalan Perbelanjaan';

  @override
  String get paywallFeatureSharing => 'Berkongsi';

  @override
  String get paywallBeforeAfterTitle => 'AI Sebelum and Selepas:';

  @override
  String get paywallLabelCommon => 'Biasa';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'nasi';

  @override
  String get paywallBeforeItem2 => 'sabun';

  @override
  String get paywallBeforeItem3 => 'daging';

  @override
  String get paywallBeforeItem4 => 'roti';

  @override
  String get paywallAfterItem1 => 'Bijirin';

  @override
  String get paywallAfterItem2 => 'Pembersihan';

  @override
  String get paywallAfterItem3 => 'Daging';

  @override
  String get paywallAfterItem4 => 'Bakeri';

  @override
  String get paywallTestimonialsTitle => 'Apa yang pengguna kami katakan:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI mengatur belanja saya dalam beberapa saat. Saya menjimatkan 20 minit setiap perjalanan pasaran.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Saya tidak pernah lupa item senarai lagi. Sembang AI adalah sensasi!';

  @override
  String get paywallSocialProof => '+2,400 keluarga menggunakannya';

  @override
  String get paywallCtaUnlock => 'Buka kunci PRO';

  @override
  String get paywallBestValue => 'NILAI TERBAIK';

  @override
  String get paywallMostPopular => 'PALING POPULAR';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Pembayaran selamat';

  @override
  String get paywallSelectPlan => 'Pilih rancangan anda:';

  @override
  String paywallSavePercent(int percent) {
    return 'JIMAT $percent%';
  }

  @override
  String paywallPricePerMonth(String price) {
    return 'Hanya $price/bulan';
  }

  @override
  String get paywallPackageAnnual => 'Rancangan Tahunan';

  @override
  String get paywallPackageMonthly => 'Rancangan Bulanan';

  @override
  String get paywallPackageLifetime => 'Akses Sepanjang Hayat';

  @override
  String get paywallCancelAnytime => 'Batalkan bila-bila masa. Tiada komitmen.';

  @override
  String paywallTrialInCard(int days) {
    return '$days hari pertama PERCUMA';
  }

  @override
  String get paywallSecuredByStore =>
      'Dijamin oleh Google Play · Batalkan pada bila-bila masa';

  @override
  String get paywallPolicy => 'Dasar Privasi';

  @override
  String get paywallTerms => 'Syarat Penggunaan';

  @override
  String get paywallRestore => 'Pulihkan';

  @override
  String get paywallTimelineToday => 'Hari ini';

  @override
  String get paywallTimelineTodayDesc => 'Buka kunci akses penuh serta-merta';

  @override
  String paywallTimelineDay(int day) {
    return 'Hari $day';
  }

  @override
  String get paywallTimelineReminderDesc =>
      'Kami mengingatkan anda sebelum percubaan tamat';

  @override
  String get paywallTimelineChargeDesc =>
      'Langganan anda bermula — batalkan pada bila-bila masa';

  @override
  String get paywallHeroFeatureTitle => 'Pembantu Beli-belah AI';

  @override
  String get paywallHeroFeatureDesc =>
      'Sebut atau tampal senarai keseluruhan — AI menyusun, mengkategorikan dan membiayainya dalam beberapa saat';

  @override
  String get paywallBasedOnAnswers => 'Diperibadikan daripada jawapan anda';

  @override
  String get paywallHeroHeadline => 'Kipi AI sentiasa di sisi anda';

  @override
  String get paywallHeroSubtitle =>
      'Tambah item, susun senarai and jimat masa with AI dalam poket anda';

  @override
  String get paywallBenefit1Desc =>
      'Menambah, menyusun and mencadangkan item 24/7';

  @override
  String get paywallBenefit2Desc => 'Tiada had 3 senarai';

  @override
  String get paywallBenefit3Desc =>
      'Penjejakan perbelanjaan and senarai keluarga';

  @override
  String get paywallPackageMonthlyDesc => 'Fleksibiliti penuh';

  @override
  String get paywallWelcomeOfferBadge => '🎁 Tawaran alu-aluan';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Mula percuma — $days hari';
  }

  @override
  String get premiumUpgrade => 'Naik taraf untuk membuka kunci';

  @override
  String get itemRemoved => 'Item dialih keluar';

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
  String get pantryItemAdded => 'Item ditambah';

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
      'Bercakap secara semula jadi untuk mengurus senarai anda!\n\nContoh:\n• \'Tambah roti, keju and ham\'\n• \'Alih keluar pencuci pakaian\'\n• \'Tukar tema kepada biru\'\n\nIni adalah ciri eksklusif KipiList Premium.';

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
      'Maklum balas anda telah diterima and membantu kami menambah baik KipiList untuk semua orang.';

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
  String get aiEnergy => 'Tenaga AI';

  @override
  String get searchInConversation => 'Cari dalam perbualan...';

  @override
  String get noMessagesFound => 'Tiada mesej ditemui';

  @override
  String get suggestedQuestions => 'Soalan yang dicadangkan:';

  @override
  String get shoppingAssistant => 'Pembantu beli-belah';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased daripada $total dibeli';
  }

  @override
  String get estimatedCost => 'Dianggarkan';

  @override
  String get viewItems => 'Lihat item';

  @override
  String get noItemsInList => 'Tiada item dalam senarai';

  @override
  String get longHistoryWarning =>
      'Sejarah panjang: pembantu memfokuskan pada mesej terkini untuk prestasi yang lebih baik.';

  @override
  String get listening => 'Mendengar...';

  @override
  String get addDirectToList => 'Tambahkan terus ke senarai';

  @override
  String get unlockFullResponse => 'Buka kunci Respons Penuh';

  @override
  String get switchList => 'Tukar senarai';

  @override
  String get marketMode => 'Mod Pasaran';

  @override
  String get backToChat => 'Kembali ke Sembang';

  @override
  String get finishShopping => 'Selesai Membeli-belah';

  @override
  String get welcomeAiAssistant => 'Selamat datang ke AI Assistant';

  @override
  String get createListToStartAi =>
      'Buat senarai beli-belah untuk mula menggunakan sembang pintar.';

  @override
  String get howCanIHelp => 'Bagaimana saya boleh membantu?';

  @override
  String get chatSubtitleShort => 'Tanya tentang harga, resipi, organisasi...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total dibeli';
  }

  @override
  String get quickReplies => 'Balasan pantas:';

  @override
  String get voiceProFeature =>
      'Perintah suara lanjutan adalah Pro. Mendayakan imlak asas...';

  @override
  String get viewPro => 'Lihat Pro';

  @override
  String get errorLoadingChat =>
      'Aduh! Kesilapan telah berlaku semasa memuatkan sembang.';

  @override
  String get errorLoadingChatSubtitle =>
      'Semak sambungan anda atau cuba lagi kemudian.';

  @override
  String get errorOscillation =>
      'Ini mungkin berlaku disebabkan oleh ayunan rangkaian atau ketiadaan sementara. Sila cuba lagi.';

  @override
  String get activeListening => 'Mendengar Aktif';

  @override
  String get whatToDoWithItem =>
      'Apakah yang anda ingin lakukan dengan item ini?';

  @override
  String get viewDetails => 'Lihat Butiran';

  @override
  String get openMenu => 'Buka menu';

  @override
  String get viewRecipe => 'Lihat Resipi';

  @override
  String get recipeCreated => 'Resipi dicipta!';

  @override
  String get editRecipe => 'Sunting';

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
  String get recipeYieldServings => 'Hidangan hasil';

  @override
  String get recipeManualTotalCost => 'Jumlah kos manual';

  @override
  String get recipeManualTotalCostHint =>
      'Biarkan kosong untuk menganggarkan daripada harga bahan.';

  @override
  String get recipeEstimatedTotalCost => 'Anggaran jumlah kos';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / hidangan';
  }

  @override
  String recipeServesCount(int count) {
    return 'Dihidangkan $count';
  }

  @override
  String get recipeEstimatePartial =>
      'Anggaran separa berdasarkan bahan dengan harga.';

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
  String get mealPlannerEstimatePartial =>
      'Anggarkan berdasarkan resipi dengan data harga separa.';

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
  String mealPlannerBudgetMonthCost(String amount) {
    return 'Month: $amount';
  }

  @override
  String mealPlannerBudgetWeekCost(String amount) {
    return 'Week: $amount';
  }

  @override
  String mealPlannerBudgetTodayCost(String amount) {
    return 'Today: $amount';
  }

  @override
  String get mealPlannerBudgetRemoveGoal => 'Remove goal';

  @override
  String get mealPlannerBudgetGoalNav => 'Meal planner budget';

  @override
  String get mealPlannerBudgetGoalSubtitle =>
      'Monthly spending goal for meal planning';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Jemput ke senarai';

  @override
  String get shareApp => 'Kongsi apl';

  @override
  String get shareAppDescription => 'Ajak kawan-kawan guna KipiList';

  @override
  String shareReferralText(String url) {
    return 'Saya menggunakan KipiList untuk mengatur pembelian saya! Muat turun melalui pautan saya and kami berdua mendapat 7 hari Premium percuma: $url';
  }

  @override
  String get shareReferralSubject => 'Dapatkan 7 hari KipiList Premium!';

  @override
  String get gestureHint => 'Tahan untuk memilih • Leret untuk mengalih keluar';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Kekerapan Saya';

  @override
  String get catalogSearchGlobal => 'Cari mana-mana produk...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Cari dalam $category...';
  }

  @override
  String get catalogSortPopular => 'Paling popular';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'warganegara';

  @override
  String get catalogRareSection => 'kurang biasa di negara anda';

  @override
  String get catalogRareBadge => 'Jarang';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Tambah $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Produk tidak dijumpai, taip nama';

  @override
  String get catalogBrowse => 'Layari Katalog';

  @override
  String get catalogCategories => 'Kategori';

  @override
  String get offlineBanner => 'Anda berada di luar talian';

  @override
  String get consentTitle => 'Privasi & Analitis';

  @override
  String get consentBody =>
      'KipiList menggunakan Analitis Firebase untuk meningkatkan pengalaman anda. Data anda diproses mengikut Dasar Privasi kami.';

  @override
  String get consentAccept => 'Terima';

  @override
  String get consentDecline => 'Tidak, terima kasih';

  @override
  String get mealPlannerPantryAllAvailable => 'Dalam stok';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count item tiada',
      one: '$count item tiada',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerManageTypes => 'Menguruskan jenis makanan';

  @override
  String get mealPlannerAddType => 'Tambah jenis hidangan';

  @override
  String get mealPlannerEditType => 'Edit jenis hidangan';

  @override
  String get mealPlannerTypeName => 'Nama';

  @override
  String get mealPlannerTypeColor => 'warna';

  @override
  String get mealPlannerTypeIcon => 'ikon';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      'Adakah anda pasti mahu memadamkan jenis makanan ini? Makanan yang dirancang dengan jenis ini akan kekal.';

  @override
  String get mealPlannerTypeNameEmpty => 'Nama tidak boleh kosong';

  @override
  String get mealPlannerTypeDeleteError =>
      'Tidak boleh memadam jenis hidangan ini.';

  @override
  String get mealPlannerCustomTypeLabel => 'Jenis tersuai';

  @override
  String get mealPlannerDefaultTypeLabel => 'Jenis lalai';

  @override
  String get expirationDate => 'tarikh luput';

  @override
  String get notInformed => 'Tidak dimaklumkan';

  @override
  String get skip => 'Langkau';

  @override
  String get onboardingAiTitle => 'Berbual dengan Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hai! Saya Kipi, pembantu beli-belah peribadi awak! 🛒';

  @override
  String get onboardingAiAskName => 'siapa nama awak?';

  @override
  String get onboardingAiNameHint => 'Taip nama anda...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Gembira bertemu dengan anda, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Apakah makanan kegemaran anda?';

  @override
  String get onboardingAiFoodHint => 'cth. Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Pilihan yang hebat! Inilah yang saya akan tambahkan pada senarai anda:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Adakah ini kelihatan baik? Cuba taip sesuatu yang lain!';

  @override
  String get onboardingAiReady =>
      'Hebat! Anda sudah bersedia untuk bermula. Mari sediakan akaun anda!';

  @override
  String get onboardingAiContinue => 'Teruskan →';

  @override
  String get connectionError => 'Ralat Sambungan';

  @override
  String connectionErrorDesc(String error) {
    return 'Tidak dapat menyambung ke pelayan. Semak internet anda.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Ralat memuatkan senarai';

  @override
  String get errorLoadingItems => 'Ralat memuatkan item';

  @override
  String get noListsFound => 'Tiada senarai ditemui';

  @override
  String get backToToday => 'Kembali ke hari ini';

  @override
  String get quickSuggestions => 'Cadangan cepat';

  @override
  String get aiEnergyLow => 'Tenaga AI yang rendah';

  @override
  String get aiUnlockUnlimited => 'Buka kunci AI tanpa had';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 hari ini';
  }

  @override
  String get aiSubscribeUnlimited => 'Langgan untuk AI tanpa had';

  @override
  String get unlockWithAd => 'Buka kunci dengan Iklan';

  @override
  String get conversationHistoryTitle => 'Sejarah perbualan';

  @override
  String get noConversationsFound => 'Tiada perbualan ditemui';

  @override
  String get errorLoadingHistory => 'Ralat memuatkan sejarah';

  @override
  String get deleteConversationTitle => 'Padamkan Perbualan?';

  @override
  String get deleteConversationConfirm =>
      'Tindakan ini tidak boleh dibuat asal.';

  @override
  String get deleteConversation => 'Padam';

  @override
  String get subscription => 'Langganan';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle =>
      'Buka kunci senarai tanpa had, AI and banyak lagi';

  @override
  String get loadingSubscription => 'Memuatkan langganan...';

  @override
  String get errorLoadingSubscription => 'Ralat memuatkan langganan';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Profil Saya';

  @override
  String get profileSubtitle => 'Pilihan peribadi untuk pembantu AI';

  @override
  String get customizeAiAssistant => 'Sesuaikan pembantu AI';

  @override
  String get assistantHistory => 'Sejarah penolong';

  @override
  String get assistantHistorySubtitle => 'Lihat sejarah perbualan anda';

  @override
  String get manageCategories => 'Uruskan Kategori';

  @override
  String get manageCategoriesSubtitle => 'Uruskan kategori item';

  @override
  String get customizeAssistant => 'Sesuaikan';

  @override
  String get assistantName => 'Nama pembantu';

  @override
  String get chooseIcon => 'Pilih ikon';

  @override
  String get profileSaved => 'Profil berjaya disimpan!';

  @override
  String get errorSavingProfile => 'Ralat menyimpan: null';

  @override
  String get userProfile => 'Profil Pengguna';

  @override
  String get profileDescription =>
      'Beritahu kami pilihan peribadi anda supaya pembantu AI boleh mencadangkan item and resipi yang diperibadikan.';

  @override
  String get preferredMarket => 'Pasaran Pilihan';

  @override
  String get preferredMarketHint => 'Cth.: Pasaraya X';

  @override
  String get dietaryRestrictions => 'Sekatan Pemakanan';

  @override
  String get dietaryRestrictionsHint => 'Cth: vegan, vegetarian, bebas gluten';

  @override
  String get marketsToAvoid => 'Pasaran yang Perlu Dielakkan';

  @override
  String get marketsToAvoidHint => 'Cth.: Pasaran Y, Pasaran Z';

  @override
  String get observations => 'Nota';

  @override
  String get observationsHint => 'Pilihan lain untuk pembantu';

  @override
  String get saveProfile => 'Simpan Profil';

  @override
  String get everythingReady => 'Semua dah siap!';

  @override
  String get youCompletedList => 'Anda telah melengkapkan senarai!';

  @override
  String get selectCheaperAlternative =>
      'Pilih alternatif produk yang lebih murah untuk mengoptimumkan kos.';

  @override
  String get suggestedItems => 'Item yang dicadangkan';

  @override
  String get swapped => 'Ditukar';

  @override
  String get swap => 'Tukar';

  @override
  String get chooseThemeColor => 'Pilih Warna Tema';

  @override
  String get manageCategoriesTitle => 'Uruskan Kategori';

  @override
  String get categoryLimitReached =>
      'Had 10 kategori pada versi percuma. Naik taraf kepada Pro!';

  @override
  String get deleteCategoryTitle => 'Padamkan Kategori';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Item dalam kategori \"$category\" akan dialihkan ke \"Lain-lain\".\nteruskan?';
  }

  @override
  String get deleteCategory => 'Padam';

  @override
  String get newCategoryDialog => 'Kategori baharu';

  @override
  String get editCategoryDialog => 'Edit kategori';

  @override
  String get categoryName => 'Nama kategori';

  @override
  String get categoryNameHint => 'Cth.: Daging';

  @override
  String get categoryColorLabel => 'warna';

  @override
  String get categoryIconLabel => 'ikon';

  @override
  String itemAddedSnack(String name) {
    return '$name ditambahkan';
  }

  @override
  String get kipiQuickBarHint => 'Apa yang anda perlu beli?';

  @override
  String replaceItem(String item) {
    return 'Gantikan $item';
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
      'Jangan sekali-kali melupakan barang runcit lagi';

  @override
  String get onboardingGoalSaveMoney => 'Jimat duit';

  @override
  String get onboardingGoalNeverForget => 'Jangan sekali-kali melupakan item';

  @override
  String get onboardingGoalFaster => 'Beli lebih cepat';

  @override
  String get onboardingGoalFamily => 'Atur belanja keluarga';

  @override
  String get onboardingGoalRecipes => 'Temui resipi';

  @override
  String get onboardingGoalPantry => 'Pantry trek';

  @override
  String get onboardingCommitmentsTitle => 'Apa yang penting bagi anda?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Pilih matlamat anda untuk memperibadikan KipiList';

  @override
  String get onboardingCommitmentsCta => 'jom pergi!';

  @override
  String get onboardingPersonalizationNameLabel => 'nama awak';

  @override
  String get onboardingPersonalizationNameHint => 'Masukkan nama anda';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'Anda berbelanja untuk apa?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Anda berbelanja untuk siapa?';

  @override
  String get onboardingCategoryGrocery => 'Barangan runcit';

  @override
  String get onboardingCategoryPharmacy => 'farmasi';

  @override
  String get onboardingCategoryRecipes => 'resepi';

  @override
  String get onboardingCategoryHome => 'Rumah';

  @override
  String get onboardingCategoryPet => 'Haiwan peliharaan';

  @override
  String get onboardingGroupSolo => 'Hanya saya';

  @override
  String get onboardingGroupCouple => 'berpasangan';

  @override
  String get onboardingGroupFamily => 'Keluarga';

  @override
  String get onboardingLoadingTitle => 'Menyediakan pengalaman anda...';

  @override
  String get onboardingLoadingStep1 => 'Menganalisis pilihan anda...';

  @override
  String get onboardingLoadingStep2 => 'Menyediakan pembantu AI...';

  @override
  String get onboardingLoadingStep3 => 'hampir siap...';

  @override
  String get onboardingLoadingStat1Label => 'Item dikatalogkan';

  @override
  String get onboardingLoadingStat2Label => 'Pengguna membantu';

  @override
  String get onboardingLoadingStat3Label => 'Minit disimpan';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, jimat pada setiap perjalanan!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, jangan sekali-kali melupakan item!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, belanja separuh masa!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, atur belanja keluarga!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, temui resipi baharu!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, jejak pantri anda dengan sempurna!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Jimat pada setiap perjalanan!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Jangan sekali-kali melupakan item!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Beli separuh masa!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Atur belanja keluarga!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Temui resipi baharu!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Jejaki pantri anda dengan sempurna!';

  @override
  String paywallPricePerDay(String price) {
    return 'Hanya $price/hari — kurang daripada sebiji kopi';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Langkau buat masa ini';

  @override
  String get paywallTestimonial =>
      'AI mengatur belanja saya dalam beberapa saat. Saya menjimatkan 20 minit setiap perjalanan.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Batalkan bila-bila masa · Tiada caj sehingga percubaan anda tamat';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hei $name! Apakah $category yang anda perlukan?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Apakah $category yang anda perlukan?';
  }

  @override
  String get onboardingAiDemoYes => 'Ya!';

  @override
  String get onboardingAiDemoReaction => 'bagus!';

  @override
  String get onboardingAiDemoChange => 'Tukar item';

  @override
  String get onboardingAiDemoOffer => 'Cuba taip sesuatu yang lain!';

  @override
  String get onboardingAiDemoContinue => 'teruskan';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Senarai beli-belah anda, kini dengan AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Lihat cara Kipi membina senarai penuh anda dalam beberapa saat';

  @override
  String get onboardingAiDemoSlideCta => 'Saya mahu ini! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Saya menganjurkan barbeku 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'sedia! Inilah semua yang anda perlukan:';

  @override
  String get onboardingAiDemoSlideDone =>
      'Senarai lengkap dalam beberapa saat ✨';

  @override
  String get onboardingPainTitle => 'Apa yang paling mengecewakan anda?';

  @override
  String get onboardingPainSubtitle =>
      'Jujurlah — kami akan membetulkan setiap satu';

  @override
  String get onboardingPainCta => 'Ya, betulkan ini untuk saya →';

  @override
  String get onboardingPainForget => 'Saya lupa barang di kedai';

  @override
  String get onboardingPainFamily =>
      'Keluarga saya tidak pernah melihat senarai itu';

  @override
  String get onboardingPainOverspend => 'Saya selalu melampaui bajet';

  @override
  String get onboardingPainRepeat => 'Satu perjalanan tidak pernah cukup';

  @override
  String get aiWelcomeContent =>
      'helo! 👋 Saya **Kipi**, pembantu beli-belah dan resipi peribadi anda!\n\nSaya di sini untuk membantu anda:\n🛒 **Atur** belanja anda mengikut kategori secara automatik\n💰 **Jejaki** belanjawan anda dan berikan anda petua penjimatan wang\n🍲 **Cadangkan** resipi lazat dengan apa yang anda sudah ada\n\nBagaimana saya boleh membantu anda hari ini? Anda boleh mulakan dengan membuat senarai pertama anda!';

  @override
  String get aiWelcomeSuggestCreateList => 'Buat senarai pertama saya';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, bantu saya membuat senarai beli-belah pertama saya';

  @override
  String get aiWelcomeSuggestSave => 'Bagaimana untuk menjimatkan wang?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, bagaimana anda boleh membantu saya menjimatkan wang untuk barangan runcit?';

  @override
  String get suggestionMilk => 'susu';

  @override
  String get suggestionBread => 'roti';

  @override
  String get suggestionEggs => 'Telur';

  @override
  String get suggestionCoffee => 'Kopi';

  @override
  String get suggestionRice => 'nasi';

  @override
  String get suggestionFruits => 'buah-buahan';

  @override
  String get recipeIngredientSingular => '1 bahan';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count bahan';
  }

  @override
  String get pantryAvailabilityAll => 'Semua siap!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return '$availableCount/$totalCount dalam pantri';
  }

  @override
  String onboardingProgress(int current, int total) {
    return 'Langkah $current daripada $total';
  }

  @override
  String get onboardingDemoHeadline =>
      'Beritahu kami apa yang anda rancangkan. Kipi membina senarai.';

  @override
  String get onboardingDemoSubtitle =>
      'Dapatkan item tersusun dalam beberapa saat.';

  @override
  String get onboardingPersonalizationEffect =>
      'Ini membantu Kipi mencadangkan item dan kuantiti yang lebih berkaitan.';

  @override
  String get onboardingPersonalizeWithName => 'Peribadikan dengan nama saya';

  @override
  String get onboardingCreateFirstList => 'Buat senarai pertama saya';

  @override
  String get onboardingPromptWeekly => 'Rancang keperluan mingguan saya';

  @override
  String get onboardingPromptEvent =>
      'Saya sedang menyediakan sesuatu yang istimewa';

  @override
  String get onboardingPromptEssentials =>
      'Cadangkan perkara penting untuk saya';

  @override
  String get onboardingFallbackGrocery =>
      '🍚 Nasi|🫘 Kacang|🥛 Susu|🥚 Telur|🍞 Roti|🍎 Buah';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 Pembalut pelekat|🌡️ Termometer|🧴 Antiseptik|😷 Topeng muka|🧼 Hand sanitizer';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 Tomato|🧅 Bawang|🧄 Bawang Putih|🥚 Telur|🧀 Keju|🌿 Herba segar';

  @override
  String get onboardingFallbackHome =>
      '🧻 Tuala kertas|🧽 Span|🧴 Detergen|🗑️ Beg sampah|🧹 Kain pembersih';

  @override
  String get onboardingFallbackPet =>
      '🥣 Makanan haiwan peliharaan|🦴 Rawatan|🧼 Syampu haiwan peliharaan|🧸 Mainan|🧻 Beg buangan';

  @override
  String get onboardingListSaveFailed =>
      'Saya menyediakan item, tetapi tidak dapat menyimpan senarai. Cuba lagi untuk menyimpannya dalam apl.';

  @override
  String onboardingListCreated(int count) {
    return 'Senarai anda sudah sedia: $count item disusun untuk anda.';
  }

  @override
  String get onboardingContinueToOffer => 'teruskan';

  @override
  String onboardingPaywallListReady(int count) {
    return 'Senarai pertama anda sudah sedia · $count item';
  }

  @override
  String get paywallContinueFree => 'Teruskan dengan versi percuma';

  @override
  String get paywallPurchasePending =>
      'Pembayaran anda menunggu kelulusan. Akses akan dikeluarkan secara automatik selepas pengesahan.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return 'Hari ini: tiada bayaran. Kemudian $price/tahun selepas $days hari. Batalkan bila-bila masa.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return 'Hari ini: tiada bayaran. Kemudian $price/bulan selepas $days hari. Batalkan bila-bila masa.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price/tahun. Batalkan bila-bila masa.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/bulan. Batalkan bila-bila masa.';
  }

  @override
  String get obHookTitle => 'Membeli-belah yang lebih bijak bermula di sini';

  @override
  String get obHookSubtitle =>
      'Senarai dikuasakan AI yang menjimatkan masa dan wang anda, setiap perjalanan.';

  @override
  String get obHookSocial =>
      'Dipercayai oleh beribu-ribu pembeli di seluruh dunia';

  @override
  String get obHookCta => 'Mulakan';

  @override
  String get obQuizHouseholdTitle => 'Anda berbelanja untuk siapa?';

  @override
  String get obQuizHouseholdSolo => 'Hanya saya';

  @override
  String get obQuizHouseholdCouple => 'Saya dan pasangan saya';

  @override
  String get obQuizHouseholdFamilySmall => 'Keluarga 3–4';

  @override
  String get obQuizHouseholdFamilyLarge => 'Keluarga 5+';

  @override
  String get obQuizFrequencyTitle => 'Berapa kerap anda membeli barang runcit?';

  @override
  String get obQuizFrequencyDaily => 'Hampir setiap hari';

  @override
  String get obQuizFrequencyWeekly => 'Seminggu sekali';

  @override
  String get obQuizFrequencyBiweekly => 'Setiap dua minggu';

  @override
  String get obQuizFrequencyMonthly => 'Haul bulanan yang besar';

  @override
  String get obQuizPainTitle =>
      'Apa yang paling mengecewakan anda tentang membeli-belah?';

  @override
  String get obQuizPainForget => 'Saya selalu lupa barang';

  @override
  String get obQuizPainOverspend =>
      'Saya berbelanja lebih daripada yang dirancang';

  @override
  String get obQuizPainWaste => 'Makanan menjadi sia-sia di rumah';

  @override
  String get obQuizPainTime => 'Ia mengambil masa yang terlalu lama';

  @override
  String get obQuizSavingsTitle =>
      'Berapa banyak yang anda ingin simpan setiap bulan?';

  @override
  String get obQuizSavingsSmall => 'Sedikit - setiap bit penting';

  @override
  String get obQuizSavingsMedium => 'Sekitar 10% daripada bil runcit saya';

  @override
  String get obQuizSavingsLarge => 'Seboleh-bolehnya';

  @override
  String get obQuizMethodTitle =>
      'Bagaimanakah anda membuat senarai beli-belah hari ini?';

  @override
  String get obQuizMethodPaper => 'Pen dan kertas';

  @override
  String get obQuizMethodNotes => 'Apl nota';

  @override
  String get obQuizMethodMemory => 'Saya simpan dalam kepala saya';

  @override
  String get obQuizMethodNone => 'Saya tidak membuat senarai';

  @override
  String get obSocialTitle => 'Anda berada dalam syarikat yang baik';

  @override
  String get obSocialSubtitle =>
      'Pembeli seperti anda sudah pun berjimat dengan KipiList';

  @override
  String get obSocialQuote1 =>
      'Saya tidak pernah melupakan apa-apa lagi. AI membina senarai saya dalam beberapa saat.';

  @override
  String get obSocialQuote2 =>
      'Kami memotong bil runcit kami dengan ketara pada bulan pertama.';

  @override
  String get obSocialQuote3 =>
      'Berkongsi senarai dengan pasangan saya menamatkan kekacauan membeli-belah kami.';

  @override
  String get obLoadingTitle => 'Membina pelan peribadi anda...';

  @override
  String get obLoadingStepProfile => 'Menyesuaikan diri untuk isi rumah anda';

  @override
  String get obLoadingStepHabits => 'Menala rutin membeli-belah anda';

  @override
  String get obLoadingStepSavings => 'Mengoptimumkan strategi simpanan anda';

  @override
  String get obLoadingStepLists => 'Menyediakan senarai pintar anda';

  @override
  String get obRevealTitle => 'Rancangan anda sudah sedia!';

  @override
  String get obRevealSubtitle =>
      'Begini cara KipiList akan berfungsi untuk anda';

  @override
  String get obRevealSavingsCaption => 'Unjuran penjimatan dengan KipiList';

  @override
  String obRevealMonth(int n) {
    return 'Bulan $n';
  }

  @override
  String get obRevealFeatureAi => 'AI membina dan menyusun senarai anda';

  @override
  String get obRevealFeatureBudget =>
      'Perbelanjaan dijejaki terhadap matlamat anda';

  @override
  String get obRevealFeaturePantry => 'Penjejakan pantri memotong sisa makanan';

  @override
  String get obRevealFeatureShare =>
      'Perkongsian masa nyata dengan isi rumah anda';

  @override
  String get obPaywallTitle => 'Buka kunci rancangan anda';

  @override
  String get obPaywallRetry => 'Cuba lagi';

  @override
  String get obLoginTitle => 'Simpan rancangan anda';

  @override
  String get obLoginSubtitle =>
      'Log masuk supaya senarai anda disegerakkan merentas peranti';

  @override
  String get obLoginGoogle => 'Teruskan dengan Google';

  @override
  String get obLoginApple => 'Teruskan dengan Apple';

  @override
  String get obLoginSkip => 'bukan sekarang';

  @override
  String get obLoginError =>
      'Log masuk gagal. Cuba lagi atau langkau buat masa ini.';

  @override
  String get searchMessages => 'Cari mesej...';

  @override
  String get deletedList => 'Senarai dipadamkan';

  @override
  String get openConversation => 'Buka perbualan';

  @override
  String get userRole => 'awak';

  @override
  String get assistantRole => 'Penolong';

  @override
  String get agentActionsRunning => 'Menjalankan tindakan...';

  @override
  String get agentActionsFailed => 'Gagal menjalankan tindakan';

  @override
  String get agentActionsPremium => 'Tindakan memerlukan Premium';

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
  String get undoChanges => 'Buat asal perubahan';

  @override
  String premiumStepDescription(String description) {
    return '$description (Premium)';
  }

  @override
  String get itemAddedToList => 'Item ditambahkan pada senarai.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return 'Keadaan sebelumnya: $quantity $unit [$category]$price';
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
      'Langgan Premium untuk membuka kunci tindakan automatik.';

  @override
  String get viewPlans => 'Lihat rancangan';

  @override
  String get artifactSynced => 'disegerakkan';

  @override
  String get artifactBudgetLabel => 'Belanjawan:';

  @override
  String get totalEstimatedLabel => 'Anggaran jumlah';

  @override
  String get quickActionPantry => 'Lihat pantri';

  @override
  String get quickActionAi => 'Berbual dengan Kipi';

  @override
  String aiApiError(int statusCode) {
    return 'Perkhidmatan AI mengembalikan ralat ($statusCode).';
  }

  @override
  String get aiTimeoutError =>
      'Permintaan itu mengambil masa terlalu lama. Sila cuba lagi.';

  @override
  String get aiConnectionError =>
      'Tidak dapat menyambung ke perkhidmatan AI. Semak sambungan anda.';

  @override
  String get aiEmptyResponseError =>
      'Perkhidmatan AI mengembalikan respons kosong.';

  @override
  String get aiInvalidResponseError =>
      'Perkhidmatan AI mengembalikan respons yang tidak sah.';

  @override
  String get categoryFruits => 'buah-buahan';

  @override
  String get categoryCleaning => 'Pembersihan';

  @override
  String get categoryBeverages => 'Minuman';

  @override
  String get categoryBakery => 'Bakeri';

  @override
  String get categoryMeat => 'daging';

  @override
  String get categoryDairy => 'tenusu';

  @override
  String get categoryVegetables => 'Sayur-sayuran';

  @override
  String get categoryGrains => 'Bijirin dan bijirin';

  @override
  String get categoryHygiene => 'Penjagaan peribadi';

  @override
  String get categoryFrozen => 'Makanan sejuk beku';

  @override
  String get categoryCanned => 'Barangan dalam tin';

  @override
  String get categorySeasonings => 'bahan perasa';

  @override
  String get categorySweets => 'Gula-gula dan pencuci mulut';

  @override
  String get categoryAlcohol => 'Minuman beralkohol';

  @override
  String get categoryFish => 'ikan';

  @override
  String get categoryColdCuts => 'Luka sejuk';

  @override
  String get categoryUtilities => 'Bekalan rumah';

  @override
  String get categoryPet => 'Bekalan haiwan peliharaan';

  @override
  String get categoryBaby => 'sayang';

  @override
  String get categoryOthers => 'Lain-lain';

  @override
  String chatEmptyGreeting(String name) {
    return 'Hai $name, saya Kipi 👋';
  }

  @override
  String get chatEmptyGreetingNoName => 'Hai, saya Kipi 👋';

  @override
  String get chatEmptyPitch =>
      'Saya membina senarai, mencadangkan resipi dan mencari tempat untuk disimpan. Di mana kita bermula?';

  @override
  String get aiWelcomeSuggestBarbecue => 'Rancang barbeku';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'Kipi, saya menganjurkan barbeku — bantu saya membina senarai beli-belah';

  @override
  String get aiRateLimitError =>
      'Terlalu banyak mesej dalam masa yang singkat. Tunggu beberapa saat dan cuba lagi.';

  @override
  String get chatHistoryErrorTitle => 'Tidak dapat memuatkan perbualan ini';

  @override
  String get chatHistoryErrorBody =>
      'Sesuatu telah berlaku pada pihak kami. Ketik cuba semula untuk mencuba lagi.';

  @override
  String get chatHistoryOfflineTitle => 'Anda di luar talian';

  @override
  String get chatHistoryOfflineBody =>
      'Semak sambungan internet anda dan cuba lagi.';

  @override
  String get aiGeneratingResponse => 'Menjana respons…';
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
  String get navChat => 'Sembang';

  @override
  String get navRecipes => 'resepi';

  @override
  String get navLists => 'Senarai';

  @override
  String get navMealPlanner => 'Menu';

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
  String get next => 'Seterusnya';

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
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Keluar daripada Mod Beli-belah';

  @override
  String get exit => 'Keluar';

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
      'Selesaikan pembelian ini and arkibkan senarai?';

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
  String pantryDeficitCount(int count, String unit) {
    return 'Tiada $count$unit';
  }

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
  String get scanProductTitle => 'Imbas Produk';

  @override
  String get positionBarcodeCenter => 'Letakkan kod bar di tengah';

  @override
  String get product => 'produk';

  @override
  String get settingsAppBar => 'Tetapan';

  @override
  String get preferencesSection => 'Keutamaan';

  @override
  String get aiSection => 'Penolong AI';

  @override
  String get language => 'Bahasa';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'Inggeris';

  @override
  String get languageSystem => 'Sistem lalai';

  @override
  String get chooseLanguage => 'Pilih Bahasa';

  @override
  String get searchLanguage => 'Cari bahasa...';

  @override
  String get currency => 'mata wang';

  @override
  String get chooseCurrency => 'Pilih Mata Wang';

  @override
  String get searchCurrency => 'Cari mata wang...';

  @override
  String get appearance => 'Penampilan';

  @override
  String get themeMode => 'Mod tema';

  @override
  String get chooseThemeMode => 'Pilih mod tema';

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
      'Lumpuhkan warna dinamik untuk warna tema berkuat kuasa';

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
  String get myAchievements => 'Pencapaian Saya';

  @override
  String get itemsPurchased => 'Barangan yang Dibeli';

  @override
  String get totalSavings => 'Jumlah Simpanan';

  @override
  String get currentStreak => 'Streak Semasa';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari',
      one: '$count hari',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Lencana Tidak Berkunci';

  @override
  String get badgeBeginner => 'pemula';

  @override
  String get badgeOrganized => 'Tersusun';

  @override
  String get badgeSavingMaster => 'Guru Penyelamat';

  @override
  String get badgeSuperPlanner => 'Perancang Super';

  @override
  String get backupTitle => 'Sandaran';

  @override
  String get backupPremiumDescription =>
      'Sandaran and eksport adalah ciri premium';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased daripada $total item';
  }

  @override
  String progressBudget(String amount) {
    return 'Belanjawan: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Jumlah: $amount';
  }

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
  String get keepAdding => 'Teruskan menambah';

  @override
  String get keepAddingSubtitle =>
      'Pastikan helaian terbuka untuk menambah berbilang item';

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
  String get newChat => 'Sembang Baharu';

  @override
  String get noHistory => 'Tiada sejarah sembang';

  @override
  String get deleteSession => 'Padam Sembang';

  @override
  String get deleteSessionConfirm =>
      'Adakah anda pasti mahu memadamkan sembang ini? Mesej akan hilang secara kekal.';

  @override
  String get clearHistory => 'Kosongkan Sejarah';

  @override
  String get clearHistoryConfirm => 'Kosongkan semua mesej dalam sesi ini?';

  @override
  String get chatHint => 'Taip mesej anda...';

  @override
  String get chatHintBlocked => 'Buka kunci AI untuk bersembang';

  @override
  String get chatEmptySubtitle =>
      'Minta cadangan item, resipi atau petua menyimpan untuk bermula.';

  @override
  String get chatEmptyTitle => 'Sembang anda kosong';

  @override
  String chatError(String error) {
    return 'Ralat memuatkan sembang: $error';
  }

  @override
  String get goodResponse => 'Sambutan yang baik';

  @override
  String get badResponse => 'Sambutan buruk';

  @override
  String get scrollToBottom => 'Tatal ke bawah';

  @override
  String get somethingWentWrong => 'Sesuatu telah berlaku';

  @override
  String get editMessage => 'Edit mesej';

  @override
  String get searchConversations => 'Cari perbualan';

  @override
  String get dateGroupToday => 'Hari ini';

  @override
  String get dateGroupYesterday => 'Semalam';

  @override
  String get dateGroupPrevious7Days => '7 hari sebelumnya';

  @override
  String get dateGroupOlder => 'Lebih tua';

  @override
  String get aiAssistantTitle => 'Penolong AI';

  @override
  String get closeSheet => 'tutup';

  @override
  String get scanBarcodeTitle => 'Imbas Kod Bar';

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
  String get aiLimitAlmostReached => 'Hampir kehabisan mesej AI';

  @override
  String get unlockAi => 'Buka kunci AI tanpa had';

  @override
  String get aiTeaserFallback =>
      'Langgan Premium untuk membuka kunci respons penuh dan dapatkan petua AI tanpa had untuk membeli-belah anda...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Tindakan AI yang tinggal pada bulan ini — naik taraf tanpa had';
  }

  @override
  String get aiUsageExhausted =>
      'Had AI bulanan dicapai. Naik taraf kepada Pro untuk tanpa had →';

  @override
  String get undo => 'Buat asal';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Log masuk untuk membuka kunci\nciri premium';

  @override
  String get signInGoogle => 'Daftar masuk dengan Google';

  @override
  String get signInApple => 'Daftar masuk dengan Apple';

  @override
  String get continueAsGuest => 'Teruskan sebagai tetamu';

  @override
  String get onboardingWelcomeTitle => 'Selamat datang ke KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Cara paling bijak untuk mengatur belanja anda and menjimatkan wang.';

  @override
  String get onboardingSetupTitle => 'Peribadikan pengalaman anda';

  @override
  String get onboardingSetupDesc =>
      'Pilih cara anda mahu KipiList kelihatan and berfungsi untuk anda.';

  @override
  String get onboardingLoginTitle => 'Simpan semuanya ke awan';

  @override
  String get onboardingLoginDesc =>
      'Data anda disegerakkan merentas semua peranti anda';

  @override
  String get onboardingShareTitle => 'Kongsi dengan orang yang anda sayangi';

  @override
  String get onboardingShareDesc =>
      'Segerakkan senarai dengan keluarga and rakan dalam masa nyata';

  @override
  String get onboardingPremiumTitle => 'Buka kunci semua ciri';

  @override
  String get onboardingPremiumSubtitle =>
      'Manfaatkan sepenuhnya senarai beli-belah anda';

  @override
  String get onboardingAnnualBadge => 'Nilai Terbaik';

  @override
  String get onboardingMonthlyLabel => 'Bulanan';

  @override
  String get onboardingAnnualLabel => 'tahunan';

  @override
  String get onboardingViewAllPlans => 'Lihat semua rancangan';

  @override
  String get onboardingSubscribeCta => 'Langgan';

  @override
  String get onboardingCancelAnytime =>
      'Batalkan bila-bila masa. Tiada komitmen.';

  @override
  String get onboardingContinueAsGuest => 'Teruskan sebagai tetamu';

  @override
  String get onboardingRestore => 'Pulihkan';

  @override
  String get onboardingRestoreDesc =>
      'Sudah mempunyai langganan? Ketik di sini untuk memulihkannya.';

  @override
  String get onboardingMaybeLater => 'Mungkin nanti';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hai $name, atur belanja anda dengan cara yang betul.';
  }

  @override
  String get onboardingSlide1Title => 'Senarai Beli-belah Pintar';

  @override
  String get onboardingSlide1Body =>
      'Buat and kongsi senarai serta-merta. Kipi menambah item secara automatik berdasarkan tabiat anda.';

  @override
  String get onboardingSlide2Title => 'Jumpa Kipi';

  @override
  String get onboardingSlide2Body =>
      'Tanya apa sahaja — buat senarai, cari resipi, jejak pantri anda, rancang minggu anda.';

  @override
  String get onboardingSlide3Title => 'Pantri & Perancangan Makanan';

  @override
  String get onboardingSlide3Body =>
      'Jejaki apa yang anda ada, rancang makanan and jana senarai beli-belah secara automatik.';

  @override
  String get onboardingExit => 'Keluar';

  @override
  String get onboardingPersonalizationTitle => 'Jom kenali awak';

  @override
  String get onboardingPersonalizationDesc =>
      'Kami akan menggunakan ini untuk memperibadikan cadangan anda and menjadikan beli-belah lebih bijak.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Apakah makanan kegemaran anda?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'cth. Pizza, Sushi, Lasagna...';

  @override
  String get onboardingPersonalizationCta => 'teruskan';

  @override
  String get onboardingPersonalizationSkip => 'Langkau buat masa ini';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Beritahu kami makanan kegemaran anda untuk meneruskan';

  @override
  String get settingsDefaultScreen => 'Skrin utama lalai';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Pilih antara senarai beli-belah atau sembang AI';

  @override
  String get settingsScreenList => 'Senarai Membeli-belah';

  @override
  String get settingsScreenChat => 'Sembang AI';

  @override
  String loginError(String error) {
    return 'Ralat log masuk: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError => 'Ralat memuatkan tawaran. Cuba lagi.';

  @override
  String get paywallPurchaseError =>
      'Tidak dapat menyelesaikan pembelian. Cuba lagi.';

  @override
  String get paywallRestoreError =>
      'Tiada langganan aktif ditemui untuk dipulihkan.';

  @override
  String paywallTrialDays(Object days) {
    return '$days HARI PERCUMA';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MINGGU PERCUMA',
      one: '$count MINGGU PERCUMA',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count BULAN PERCUMA',
      one: '$count BULAN PERCUMA',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'Cuba KipiList Pro secara percuma selama 7 hari';

  @override
  String get paywallTrialSubtitle =>
      'Batalkan bila-bila masa. Tiada caj hari ini.';

  @override
  String get paywallTrialCta => 'Mulakan Percubaan Percuma';

  @override
  String get recipeAddToList => 'Tambahkan ke senarai beli-belah';

  @override
  String get recipeAddError =>
      'Tidak dapat menambah senarai anda. Sila cuba lagi.';

  @override
  String get recipeTapToCheck =>
      'Ketik bahan untuk menyemaknya semasa anda memasak';

  @override
  String get recipeIngredientInPantry => 'Dalam pantri';

  @override
  String get recipeIngredientLowPantry => 'Rendah dalam pantri';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count bahan ditambahkan pada $listName';
  }

  @override
  String get noListSelected => 'Tiada senarai dipilih. Buka senarai dahulu.';

  @override
  String get paywallFeaturesTitle => 'Semua yang anda perlukan:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI mengatur senarai anda secara automatik';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Buat seberapa banyak senarai yang anda perlukan';

  @override
  String get paywallFeatureDescSharing =>
      'Beli-belah bersama-sama dalam masa nyata';

  @override
  String get paywallFeatureDescPantry => 'Jejaki apa yang anda ada di rumah';

  @override
  String get paywallFeatureDescBudget => 'Kekal pada bajet setiap bulan';

  @override
  String get paywallFeatureUnlimitedLists => 'Senarai tanpa had';

  @override
  String get paywallFeatureSmartAI => 'AI Pintar';

  @override
  String get paywallFeatureExpenseControl => 'Kawalan Perbelanjaan';

  @override
  String get paywallFeatureSharing => 'Berkongsi';

  @override
  String get paywallBeforeAfterTitle => 'AI Sebelum and Selepas:';

  @override
  String get paywallLabelCommon => 'Biasa';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'nasi';

  @override
  String get paywallBeforeItem2 => 'sabun';

  @override
  String get paywallBeforeItem3 => 'daging';

  @override
  String get paywallBeforeItem4 => 'roti';

  @override
  String get paywallAfterItem1 => 'Bijirin';

  @override
  String get paywallAfterItem2 => 'Pembersihan';

  @override
  String get paywallAfterItem3 => 'Daging';

  @override
  String get paywallAfterItem4 => 'Bakeri';

  @override
  String get paywallTestimonialsTitle => 'Apa yang pengguna kami katakan:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI mengatur belanja saya dalam beberapa saat. Saya menjimatkan 20 minit setiap perjalanan pasaran.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Saya tidak pernah lupa item senarai lagi. Sembang AI adalah sensasi!';

  @override
  String get paywallSocialProof => '+2,400 keluarga menggunakannya';

  @override
  String get paywallCtaUnlock => 'Buka kunci PRO';

  @override
  String get paywallBestValue => 'NILAI TERBAIK';

  @override
  String get paywallMostPopular => 'PALING POPULAR';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Pembayaran selamat';

  @override
  String get paywallSelectPlan => 'Pilih rancangan anda:';

  @override
  String paywallSavePercent(int percent) {
    return 'JIMAT $percent%';
  }

  @override
  String paywallPricePerMonth(String price) {
    return 'Hanya $price/bulan';
  }

  @override
  String get paywallPackageAnnual => 'Rancangan Tahunan';

  @override
  String get paywallPackageMonthly => 'Rancangan Bulanan';

  @override
  String get paywallPackageLifetime => 'Akses Sepanjang Hayat';

  @override
  String get paywallCancelAnytime => 'Batalkan bila-bila masa. Tiada komitmen.';

  @override
  String paywallTrialInCard(int days) {
    return '$days hari pertama PERCUMA';
  }

  @override
  String get paywallSecuredByStore =>
      'Dijamin oleh Google Play · Batalkan pada bila-bila masa';

  @override
  String get paywallPolicy => 'Dasar Privasi';

  @override
  String get paywallTerms => 'Syarat Penggunaan';

  @override
  String get paywallRestore => 'Pulihkan';

  @override
  String get paywallTimelineToday => 'Hari ini';

  @override
  String get paywallTimelineTodayDesc => 'Buka kunci akses penuh serta-merta';

  @override
  String paywallTimelineDay(int day) {
    return 'Hari $day';
  }

  @override
  String get paywallTimelineReminderDesc =>
      'Kami mengingatkan anda sebelum percubaan tamat';

  @override
  String get paywallTimelineChargeDesc =>
      'Langganan anda bermula — batalkan pada bila-bila masa';

  @override
  String get paywallHeroFeatureTitle => 'Pembantu Beli-belah AI';

  @override
  String get paywallHeroFeatureDesc =>
      'Sebut atau tampal senarai keseluruhan — AI menyusun, mengkategorikan dan membiayainya dalam beberapa saat';

  @override
  String get paywallBasedOnAnswers => 'Diperibadikan daripada jawapan anda';

  @override
  String get paywallHeroHeadline => 'Kipi AI sentiasa di sisi anda';

  @override
  String get paywallHeroSubtitle =>
      'Tambah item, susun senarai and jimat masa dengan AI dalam poket anda';

  @override
  String get paywallBenefit1Desc =>
      'Menambah, menyusun and mencadangkan item 24/7';

  @override
  String get paywallBenefit2Desc => 'Tiada had 3 senarai';

  @override
  String get paywallBenefit3Desc =>
      'Penjejakan perbelanjaan and senarai keluarga';

  @override
  String get paywallPackageMonthlyDesc => 'Fleksibiliti penuh';

  @override
  String get paywallWelcomeOfferBadge => '🎁 Tawaran alu-aluan';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Mula percuma — $days hari';
  }

  @override
  String get premiumUpgrade => 'Naik taraf untuk membuka kunci';

  @override
  String get itemRemoved => 'Item dialih keluar';

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
  String get pantryItemAdded => 'Item ditambah';

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
      'Bercakap secara semula jadi untuk mengurus senarai anda!\n\nContoh:\n• \'Tambah roti, keju and ham\'\n• \'Alih keluar detergen dobi\'\n• \'Tukar tema kepada biru\'\n\nIni adalah ciri eksklusif KipiList Premium.';

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
      'Maklum balas anda telah diterima and membantu kami menambah baik KipiList untuk semua orang.';

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
  String get aiEnergy => 'Tenaga AI';

  @override
  String get searchInConversation => 'Cari dalam perbualan...';

  @override
  String get noMessagesFound => 'Tiada mesej ditemui';

  @override
  String get suggestedQuestions => 'Soalan yang dicadangkan:';

  @override
  String get shoppingAssistant => 'Pembantu beli-belah';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased daripada $total dibeli';
  }

  @override
  String get estimatedCost => 'Dianggarkan';

  @override
  String get viewItems => 'Lihat item';

  @override
  String get noItemsInList => 'Tiada item dalam senarai';

  @override
  String get longHistoryWarning =>
      'Sejarah panjang: pembantu memfokuskan pada mesej terkini untuk prestasi yang lebih baik.';

  @override
  String get listening => 'Mendengar...';

  @override
  String get addDirectToList => 'Tambahkan terus ke senarai';

  @override
  String get unlockFullResponse => 'Buka kunci Respons Penuh';

  @override
  String get switchList => 'Tukar senarai';

  @override
  String get marketMode => 'Mod Pasaran';

  @override
  String get backToChat => 'Kembali ke Sembang';

  @override
  String get finishShopping => 'Selesai Membeli-belah';

  @override
  String get welcomeAiAssistant => 'Selamat datang ke AI Assistant';

  @override
  String get createListToStartAi =>
      'Buat senarai beli-belah untuk mula menggunakan sembang pintar.';

  @override
  String get howCanIHelp => 'Bagaimana saya boleh membantu?';

  @override
  String get chatSubtitleShort => 'Tanya tentang harga, resipi, organisasi...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total dibeli';
  }

  @override
  String get quickReplies => 'Balasan pantas:';

  @override
  String get voiceProFeature =>
      'Perintah suara lanjutan adalah Pro. Mendayakan imlak asas...';

  @override
  String get viewPro => 'Lihat Pro';

  @override
  String get errorLoadingChat =>
      'Aduh! Kesilapan telah berlaku semasa memuatkan sembang.';

  @override
  String get errorLoadingChatSubtitle =>
      'Semak sambungan anda atau cuba lagi kemudian.';

  @override
  String get errorOscillation =>
      'Ini mungkin berlaku disebabkan oleh ayunan rangkaian atau ketiadaan sementara. Sila cuba lagi.';

  @override
  String get activeListening => 'Mendengar Aktif';

  @override
  String get whatToDoWithItem =>
      'Apakah yang anda ingin lakukan dengan item ini?';

  @override
  String get viewDetails => 'Lihat Butiran';

  @override
  String get openMenu => 'Buka menu';

  @override
  String get viewRecipe => 'Lihat Resipi';

  @override
  String get recipeCreated => 'Resipi dicipta!';

  @override
  String get editRecipe => 'Sunting';

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
  String get recipeYieldServings => 'Hidangan hasil';

  @override
  String get recipeManualTotalCost => 'Jumlah kos manual';

  @override
  String get recipeManualTotalCostHint =>
      'Biarkan kosong untuk menganggarkan daripada harga bahan.';

  @override
  String get recipeEstimatedTotalCost => 'Anggaran jumlah kos';

  @override
  String recipeEstimatedCostPerServing(String cost) {
    return '$cost / hidangan';
  }

  @override
  String recipeServesCount(int count) {
    return 'Dihidangkan $count';
  }

  @override
  String get recipeEstimatePartial =>
      'Anggaran separa berdasarkan bahan dengan harga.';

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
  String get mealPlannerEstimatePartial =>
      'Anggarkan berdasarkan resipi dengan data harga separa.';

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
  String get inviteToList => 'Jemput ke senarai';

  @override
  String get shareApp => 'Kongsi apl';

  @override
  String get shareAppDescription => 'Ajak kawan-kawan guna KipiList';

  @override
  String shareReferralText(String url) {
    return 'Saya menggunakan KipiList untuk mengatur pembelian saya! Muat turun melalui pautan saya and kami berdua mendapat 7 hari Premium percuma: $url';
  }

  @override
  String get shareReferralSubject => 'Dapatkan 7 hari KipiList Premium!';

  @override
  String get gestureHint => 'Tahan untuk memilih • Leret untuk mengalih keluar';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Kekerapan Saya';

  @override
  String get catalogSearchGlobal => 'Cari mana-mana produk...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Cari dalam $category...';
  }

  @override
  String get catalogSortPopular => 'Paling popular';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'warganegara';

  @override
  String get catalogRareSection => 'kurang biasa di negara anda';

  @override
  String get catalogRareBadge => 'Jarang';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Tambah $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Produk tidak dijumpai, taip nama';

  @override
  String get catalogBrowse => 'Layari Katalog';

  @override
  String get catalogCategories => 'Kategori';

  @override
  String get offlineBanner => 'Anda berada di luar talian';

  @override
  String get consentTitle => 'Privasi & Analitis';

  @override
  String get consentBody =>
      'KipiList menggunakan Analitis Firebase untuk meningkatkan pengalaman anda. Data anda diproses mengikut Dasar Privasi kami.';

  @override
  String get consentAccept => 'Terima';

  @override
  String get consentDecline => 'Tidak, terima kasih';

  @override
  String get mealPlannerPantryAllAvailable => 'Dalam stok';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count item tiada',
      one: '$count item tiada',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerManageTypes => 'Menguruskan jenis makanan';

  @override
  String get mealPlannerAddType => 'Tambah jenis hidangan';

  @override
  String get mealPlannerEditType => 'Edit jenis hidangan';

  @override
  String get mealPlannerTypeName => 'Nama';

  @override
  String get mealPlannerTypeColor => 'warna';

  @override
  String get mealPlannerTypeIcon => 'ikon';

  @override
  String get mealPlannerTypeDeleteConfirm =>
      'Adakah anda pasti mahu memadamkan jenis makanan ini? Makanan yang dirancang dengan jenis ini akan kekal.';

  @override
  String get mealPlannerTypeNameEmpty => 'Nama tidak boleh kosong';

  @override
  String get mealPlannerTypeDeleteError =>
      'Tidak boleh memadam jenis hidangan ini.';

  @override
  String get mealPlannerCustomTypeLabel => 'Jenis tersuai';

  @override
  String get mealPlannerDefaultTypeLabel => 'Jenis lalai';

  @override
  String get expirationDate => 'tarikh luput';

  @override
  String get notInformed => 'Tidak dimaklumkan';

  @override
  String get skip => 'Langkau';

  @override
  String get onboardingAiTitle => 'Berbual dengan Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hai! Saya Kipi, pembantu beli-belah peribadi awak! 🛒';

  @override
  String get onboardingAiAskName => 'siapa nama awak?';

  @override
  String get onboardingAiNameHint => 'Taip nama anda...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Gembira bertemu dengan anda, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Apakah makanan kegemaran anda?';

  @override
  String get onboardingAiFoodHint => 'cth. Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Pilihan yang hebat! Inilah yang saya akan tambahkan pada senarai anda:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Adakah ini kelihatan baik? Cuba taip sesuatu yang lain!';

  @override
  String get onboardingAiReady =>
      'Hebat! Anda sudah bersedia untuk bermula. Mari sediakan akaun anda!';

  @override
  String get onboardingAiContinue => 'Teruskan →';

  @override
  String get connectionError => 'Ralat Sambungan';

  @override
  String connectionErrorDesc(String error) {
    return 'Tidak dapat menyambung ke pelayan. Semak internet anda.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Ralat memuatkan senarai';

  @override
  String get errorLoadingItems => 'Ralat memuatkan item';

  @override
  String get noListsFound => 'Tiada senarai ditemui';

  @override
  String get backToToday => 'Kembali ke hari ini';

  @override
  String get quickSuggestions => 'Cadangan cepat';

  @override
  String get aiEnergyLow => 'Tenaga AI yang rendah';

  @override
  String get aiUnlockUnlimited => 'Buka kunci AI tanpa had';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 hari ini';
  }

  @override
  String get aiSubscribeUnlimited => 'Langgan untuk AI tanpa had';

  @override
  String get unlockWithAd => 'Buka kunci dengan Iklan';

  @override
  String get conversationHistoryTitle => 'Sejarah perbualan';

  @override
  String get noConversationsFound => 'Tiada perbualan ditemui';

  @override
  String get errorLoadingHistory => 'Ralat memuatkan sejarah';

  @override
  String get deleteConversationTitle => 'Padamkan Perbualan?';

  @override
  String get deleteConversationConfirm =>
      'Tindakan ini tidak boleh dibuat asal.';

  @override
  String get deleteConversation => 'Padam';

  @override
  String get subscription => 'Langganan';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle =>
      'Buka kunci senarai tanpa had, AI and banyak lagi';

  @override
  String get loadingSubscription => 'Memuatkan langganan...';

  @override
  String get errorLoadingSubscription => 'Ralat memuatkan langganan';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Profil Saya';

  @override
  String get profileSubtitle => 'Pilihan peribadi untuk pembantu AI';

  @override
  String get customizeAiAssistant => 'Sesuaikan pembantu AI';

  @override
  String get assistantHistory => 'Sejarah penolong';

  @override
  String get assistantHistorySubtitle => 'Lihat sejarah perbualan anda';

  @override
  String get manageCategories => 'Uruskan Kategori';

  @override
  String get manageCategoriesSubtitle => 'Uruskan kategori item';

  @override
  String get customizeAssistant => 'Sesuaikan';

  @override
  String get assistantName => 'Nama pembantu';

  @override
  String get chooseIcon => 'Pilih ikon';

  @override
  String get profileSaved => 'Profil berjaya disimpan!';

  @override
  String get errorSavingProfile => 'Ralat menyimpan: null';

  @override
  String get userProfile => 'Profil Pengguna';

  @override
  String get profileDescription =>
      'Beritahu kami pilihan peribadi anda supaya pembantu AI boleh mencadangkan item and resipi yang diperibadikan.';

  @override
  String get preferredMarket => 'Pasaran Pilihan';

  @override
  String get preferredMarketHint => 'Cth.: Pasaraya X';

  @override
  String get dietaryRestrictions => 'Sekatan Pemakanan';

  @override
  String get dietaryRestrictionsHint => 'Cth: vegan, vegetarian, bebas gluten';

  @override
  String get marketsToAvoid => 'Pasaran yang Perlu Dielakkan';

  @override
  String get marketsToAvoidHint => 'Cth.: Pasaran Y, Pasaran Z';

  @override
  String get observations => 'Nota';

  @override
  String get observationsHint => 'Pilihan lain untuk pembantu';

  @override
  String get saveProfile => 'Simpan Profil';

  @override
  String get everythingReady => 'Semua dah siap!';

  @override
  String get youCompletedList => 'Anda telah melengkapkan senarai!';

  @override
  String get selectCheaperAlternative =>
      'Pilih alternatif produk yang lebih murah untuk mengoptimumkan kos.';

  @override
  String get suggestedItems => 'Item yang dicadangkan';

  @override
  String get swapped => 'Ditukar';

  @override
  String get swap => 'Tukar';

  @override
  String get chooseThemeColor => 'Pilih Warna Tema';

  @override
  String get manageCategoriesTitle => 'Uruskan Kategori';

  @override
  String get categoryLimitReached =>
      'Had 10 kategori pada versi percuma. Naik taraf kepada Pro!';

  @override
  String get deleteCategoryTitle => 'Padamkan Kategori';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Item dalam kategori \"$category\" akan dialihkan ke \"Lain-lain\".\nteruskan?';
  }

  @override
  String get deleteCategory => 'Padam';

  @override
  String get newCategoryDialog => 'Kategori baharu';

  @override
  String get editCategoryDialog => 'Edit kategori';

  @override
  String get categoryName => 'Nama kategori';

  @override
  String get categoryNameHint => 'Cth.: Daging';

  @override
  String get categoryColorLabel => 'warna';

  @override
  String get categoryIconLabel => 'ikon';

  @override
  String itemAddedSnack(String name) {
    return '$name ditambahkan';
  }

  @override
  String get kipiQuickBarHint => 'Apa yang anda perlu beli?';

  @override
  String replaceItem(String item) {
    return 'Gantikan $item';
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
      'Jangan sekali-kali melupakan barang runcit lagi';

  @override
  String get onboardingGoalSaveMoney => 'Jimat duit';

  @override
  String get onboardingGoalNeverForget => 'Jangan sekali-kali melupakan item';

  @override
  String get onboardingGoalFaster => 'Beli lebih cepat';

  @override
  String get onboardingGoalFamily => 'Atur belanja keluarga';

  @override
  String get onboardingGoalRecipes => 'Temui resipi';

  @override
  String get onboardingGoalPantry => 'Pantry trek';

  @override
  String get onboardingCommitmentsTitle => 'Apa yang penting bagi anda?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Pilih matlamat anda untuk memperibadikan KipiList';

  @override
  String get onboardingCommitmentsCta => 'jom pergi!';

  @override
  String get onboardingPersonalizationNameLabel => 'nama awak';

  @override
  String get onboardingPersonalizationNameHint => 'Masukkan nama anda';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'Anda berbelanja untuk apa?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Anda berbelanja untuk siapa?';

  @override
  String get onboardingCategoryGrocery => 'Barangan runcit';

  @override
  String get onboardingCategoryPharmacy => 'farmasi';

  @override
  String get onboardingCategoryRecipes => 'resepi';

  @override
  String get onboardingCategoryHome => 'Rumah';

  @override
  String get onboardingCategoryPet => 'Haiwan peliharaan';

  @override
  String get onboardingGroupSolo => 'Hanya saya';

  @override
  String get onboardingGroupCouple => 'berpasangan';

  @override
  String get onboardingGroupFamily => 'Keluarga';

  @override
  String get onboardingLoadingTitle => 'Menyediakan pengalaman anda...';

  @override
  String get onboardingLoadingStep1 => 'Menganalisis pilihan anda...';

  @override
  String get onboardingLoadingStep2 => 'Menyediakan pembantu AI...';

  @override
  String get onboardingLoadingStep3 => 'hampir siap...';

  @override
  String get onboardingLoadingStat1Label => 'Item dikatalogkan';

  @override
  String get onboardingLoadingStat2Label => 'Pengguna membantu';

  @override
  String get onboardingLoadingStat3Label => 'Minit disimpan';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, jimat pada setiap perjalanan!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, jangan sekali-kali melupakan item!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, belanja separuh masa!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, atur belanja keluarga!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, temui resipi baharu!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, jejak pantri anda dengan sempurna!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Jimat pada setiap perjalanan!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Jangan sekali-kali melupakan item!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Beli separuh masa!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Atur belanja keluarga!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Temui resipi baharu!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Jejaki pantri anda dengan sempurna!';

  @override
  String paywallPricePerDay(String price) {
    return 'Hanya $price/hari — kurang daripada sebiji kopi';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Langkau buat masa ini';

  @override
  String get paywallTestimonial =>
      'AI mengatur belanja saya dalam beberapa saat. Saya menjimatkan 20 minit setiap perjalanan.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Batalkan bila-bila masa · Tiada caj sehingga percubaan anda tamat';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hei $name! Apakah $category yang anda perlukan?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Apakah $category yang anda perlukan?';
  }

  @override
  String get onboardingAiDemoYes => 'Ya!';

  @override
  String get onboardingAiDemoReaction => 'bagus!';

  @override
  String get onboardingAiDemoChange => 'Tukar item';

  @override
  String get onboardingAiDemoOffer => 'Cuba taip sesuatu yang lain!';

  @override
  String get onboardingAiDemoContinue => 'teruskan';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Senarai beli-belah anda, kini dengan AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Lihat cara Kipi membina senarai penuh anda dalam beberapa saat';

  @override
  String get onboardingAiDemoSlideCta => 'Saya mahu ini! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Saya menganjurkan barbeku 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'sedia! Inilah semua yang anda perlukan:';

  @override
  String get onboardingAiDemoSlideDone =>
      'Senarai lengkap dalam beberapa saat ✨';

  @override
  String get onboardingPainTitle => 'Apa yang paling mengecewakan anda?';

  @override
  String get onboardingPainSubtitle =>
      'Jujurlah — kami akan membetulkan setiap satu';

  @override
  String get onboardingPainCta => 'Ya, betulkan ini untuk saya →';

  @override
  String get onboardingPainForget => 'Saya lupa barang di kedai';

  @override
  String get onboardingPainFamily =>
      'Keluarga saya tidak pernah melihat senarai itu';

  @override
  String get onboardingPainOverspend => 'Saya selalu melampaui bajet';

  @override
  String get onboardingPainRepeat => 'Satu perjalanan tidak pernah cukup';

  @override
  String get aiWelcomeContent =>
      'helo! 👋 Saya **Kipi**, pembantu beli-belah dan resipi peribadi anda!\n\nSaya di sini untuk membantu anda:\n🛒 **Atur** belanja anda mengikut kategori secara automatik\n💰 **Jejaki** belanjawan anda dan berikan anda petua penjimatan wang\n🍲 **Cadangkan** resipi lazat dengan apa yang anda sudah ada\n\nBagaimana saya boleh membantu anda hari ini? Anda boleh mulakan dengan membuat senarai pertama anda!';

  @override
  String get aiWelcomeSuggestCreateList => 'Buat senarai pertama saya';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, bantu saya membuat senarai beli-belah pertama saya';

  @override
  String get aiWelcomeSuggestSave => 'Bagaimana untuk menjimatkan wang?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, bagaimana anda boleh membantu saya menjimatkan wang untuk barangan runcit?';

  @override
  String get suggestionMilk => 'susu';

  @override
  String get suggestionBread => 'roti';

  @override
  String get suggestionEggs => 'Telur';

  @override
  String get suggestionCoffee => 'Kopi';

  @override
  String get suggestionRice => 'nasi';

  @override
  String get suggestionFruits => 'buah-buahan';

  @override
  String get recipeIngredientSingular => '1 bahan';

  @override
  String recipeIngredientsPlural(int count) {
    return '$count bahan';
  }

  @override
  String get pantryAvailabilityAll => 'Semua siap!';

  @override
  String pantryAvailabilityCount(int availableCount, int totalCount) {
    return '$availableCount/$totalCount dalam pantri';
  }

  @override
  String onboardingProgress(int current, int total) {
    return 'Langkah $current daripada $total';
  }

  @override
  String get onboardingDemoHeadline =>
      'Beritahu kami apa yang anda rancangkan. Kipi membina senarai.';

  @override
  String get onboardingDemoSubtitle =>
      'Dapatkan item tersusun dalam beberapa saat.';

  @override
  String get onboardingPersonalizationEffect =>
      'Ini membantu Kipi mencadangkan item dan kuantiti yang lebih berkaitan.';

  @override
  String get onboardingPersonalizeWithName => 'Peribadikan dengan nama saya';

  @override
  String get onboardingCreateFirstList => 'Buat senarai pertama saya';

  @override
  String get onboardingPromptWeekly => 'Rancang keperluan mingguan saya';

  @override
  String get onboardingPromptEvent =>
      'Saya sedang menyediakan sesuatu yang istimewa';

  @override
  String get onboardingPromptEssentials =>
      'Cadangkan perkara penting untuk saya';

  @override
  String get onboardingFallbackGrocery =>
      '🍚 Nasi|🫘 Kacang|🥛 Susu|🥚 Telur|🍞 Roti|🍎 Buah';

  @override
  String get onboardingFallbackPharmacy =>
      '🩹 Pembalut pelekat|🌡️ Termometer|🧴 Antiseptik|😷 Topeng muka|🧼 Hand sanitizer';

  @override
  String get onboardingFallbackRecipes =>
      '🍅 Tomato|🧅 Bawang|🧄 Bawang Putih|🥚 Telur|🧀 Keju|🌿 Herba segar';

  @override
  String get onboardingFallbackHome =>
      '🧻 Tuala kertas|🧽 Span|🧴 Detergen|🗑️ Beg sampah|🧹 Kain pembersih';

  @override
  String get onboardingFallbackPet =>
      '🥣 Makanan haiwan peliharaan|🦴 Rawatan|🧼 Syampu haiwan peliharaan|🧸 Mainan|🧻 Beg buangan';

  @override
  String get onboardingListSaveFailed =>
      'Saya menyediakan item, tetapi tidak dapat menyimpan senarai. Cuba lagi untuk menyimpannya dalam apl.';

  @override
  String onboardingListCreated(int count) {
    return 'Senarai anda sudah sedia: $count item disusun untuk anda.';
  }

  @override
  String get onboardingContinueToOffer => 'teruskan';

  @override
  String onboardingPaywallListReady(int count) {
    return 'Senarai pertama anda sudah sedia · $count item';
  }

  @override
  String get paywallContinueFree => 'Teruskan dengan versi percuma';

  @override
  String get paywallPurchasePending =>
      'Pembayaran anda menunggu kelulusan. Akses akan dikeluarkan secara automatik selepas pengesahan.';

  @override
  String paywallTrialDisclosureAnnual(int days, String price) {
    return 'Hari ini: tiada bayaran. Kemudian $price/tahun selepas $days hari. Batalkan bila-bila masa.';
  }

  @override
  String paywallTrialDisclosureMonthly(int days, String price) {
    return 'Hari ini: tiada bayaran. Kemudian $price/bulan selepas $days hari. Batalkan bila-bila masa.';
  }

  @override
  String paywallBillingAnnual(String price) {
    return '$price/tahun. Batalkan bila-bila masa.';
  }

  @override
  String paywallBillingMonthly(String price) {
    return '$price/bulan. Batalkan bila-bila masa.';
  }

  @override
  String get obHookTitle => 'Membeli-belah yang lebih bijak bermula di sini';

  @override
  String get obHookSubtitle =>
      'Senarai dikuasakan AI yang menjimatkan masa dan wang anda, setiap perjalanan.';

  @override
  String get obHookSocial =>
      'Dipercayai oleh beribu-ribu pembeli di seluruh dunia';

  @override
  String get obHookCta => 'Mulakan';

  @override
  String get obQuizHouseholdTitle => 'Anda berbelanja untuk siapa?';

  @override
  String get obQuizHouseholdSolo => 'Hanya saya';

  @override
  String get obQuizHouseholdCouple => 'Saya dan pasangan saya';

  @override
  String get obQuizHouseholdFamilySmall => 'Keluarga 3–4';

  @override
  String get obQuizHouseholdFamilyLarge => 'Keluarga 5+';

  @override
  String get obQuizFrequencyTitle => 'Berapa kerap anda membeli barang runcit?';

  @override
  String get obQuizFrequencyDaily => 'Hampir setiap hari';

  @override
  String get obQuizFrequencyWeekly => 'Seminggu sekali';

  @override
  String get obQuizFrequencyBiweekly => 'Setiap dua minggu';

  @override
  String get obQuizFrequencyMonthly => 'Haul bulanan yang besar';

  @override
  String get obQuizPainTitle =>
      'Apa yang paling mengecewakan anda tentang membeli-belah?';

  @override
  String get obQuizPainForget => 'Saya selalu lupa barang';

  @override
  String get obQuizPainOverspend =>
      'Saya berbelanja lebih daripada yang dirancang';

  @override
  String get obQuizPainWaste => 'Makanan menjadi sia-sia di rumah';

  @override
  String get obQuizPainTime => 'Ia mengambil masa yang terlalu lama';

  @override
  String get obQuizSavingsTitle =>
      'Berapa banyak yang anda ingin simpan setiap bulan?';

  @override
  String get obQuizSavingsSmall => 'Sedikit - setiap bit penting';

  @override
  String get obQuizSavingsMedium => 'Sekitar 10% daripada bil runcit saya';

  @override
  String get obQuizSavingsLarge => 'Seboleh-bolehnya';

  @override
  String get obQuizMethodTitle =>
      'Bagaimanakah anda membuat senarai beli-belah hari ini?';

  @override
  String get obQuizMethodPaper => 'Pen dan kertas';

  @override
  String get obQuizMethodNotes => 'Apl nota';

  @override
  String get obQuizMethodMemory => 'Saya simpan dalam kepala saya';

  @override
  String get obQuizMethodNone => 'Saya tidak membuat senarai';

  @override
  String get obSocialTitle => 'Anda berada dalam syarikat yang baik';

  @override
  String get obSocialSubtitle =>
      'Pembeli seperti anda sudah pun berjimat dengan KipiList';

  @override
  String get obSocialQuote1 =>
      'Saya tidak pernah melupakan apa-apa lagi. AI membina senarai saya dalam beberapa saat.';

  @override
  String get obSocialQuote2 =>
      'Kami memotong bil runcit kami dengan ketara pada bulan pertama.';

  @override
  String get obSocialQuote3 =>
      'Berkongsi senarai dengan pasangan saya menamatkan kekacauan membeli-belah kami.';

  @override
  String get obLoadingTitle => 'Membina pelan peribadi anda...';

  @override
  String get obLoadingStepProfile => 'Menyesuaikan diri untuk isi rumah anda';

  @override
  String get obLoadingStepHabits => 'Menala rutin membeli-belah anda';

  @override
  String get obLoadingStepSavings => 'Mengoptimumkan strategi simpanan anda';

  @override
  String get obLoadingStepLists => 'Menyediakan senarai pintar anda';

  @override
  String get obRevealTitle => 'Rancangan anda sudah sedia!';

  @override
  String get obRevealSubtitle =>
      'Begini cara KipiList akan berfungsi untuk anda';

  @override
  String get obRevealSavingsCaption => 'Unjuran penjimatan dengan KipiList';

  @override
  String obRevealMonth(int n) {
    return 'Bulan $n';
  }

  @override
  String get obRevealFeatureAi => 'AI membina dan menyusun senarai anda';

  @override
  String get obRevealFeatureBudget =>
      'Perbelanjaan dijejaki terhadap matlamat anda';

  @override
  String get obRevealFeaturePantry => 'Penjejakan pantri memotong sisa makanan';

  @override
  String get obRevealFeatureShare =>
      'Perkongsian masa nyata dengan isi rumah anda';

  @override
  String get obPaywallTitle => 'Buka kunci rancangan anda';

  @override
  String get obPaywallRetry => 'Cuba lagi';

  @override
  String get obLoginTitle => 'Simpan rancangan anda';

  @override
  String get obLoginSubtitle =>
      'Log masuk supaya senarai anda disegerakkan merentas peranti';

  @override
  String get obLoginGoogle => 'Teruskan dengan Google';

  @override
  String get obLoginApple => 'Teruskan dengan Apple';

  @override
  String get obLoginSkip => 'bukan sekarang';

  @override
  String get obLoginError =>
      'Log masuk gagal. Cuba lagi atau langkau buat masa ini.';

  @override
  String get searchMessages => 'Cari mesej...';

  @override
  String get deletedList => 'Senarai dipadamkan';

  @override
  String get openConversation => 'Buka perbualan';

  @override
  String get userRole => 'awak';

  @override
  String get assistantRole => 'Penolong';

  @override
  String get agentActionsRunning => 'Menjalankan tindakan...';

  @override
  String get agentActionsFailed => 'Gagal menjalankan tindakan';

  @override
  String get agentActionsPremium => 'Tindakan memerlukan Premium';

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
  String get undoChanges => 'Buat asal perubahan';

  @override
  String premiumStepDescription(String description) {
    return '$description (Premium)';
  }

  @override
  String get itemAddedToList => 'Item ditambahkan pada senarai.';

  @override
  String previousItemState(
    String quantity,
    String unit,
    String category,
    String price,
  ) {
    return 'Keadaan sebelumnya: $quantity $unit [$category]$price';
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
      'Langgan Premium untuk membuka kunci tindakan automatik.';

  @override
  String get viewPlans => 'Lihat rancangan';

  @override
  String get artifactSynced => 'disegerakkan';

  @override
  String get artifactBudgetLabel => 'Belanjawan:';

  @override
  String get totalEstimatedLabel => 'Anggaran jumlah';

  @override
  String get quickActionPantry => 'Lihat pantri';

  @override
  String get quickActionAi => 'Berbual dengan Kipi';

  @override
  String aiApiError(int statusCode) {
    return 'Perkhidmatan AI mengembalikan ralat ($statusCode).';
  }

  @override
  String get aiTimeoutError =>
      'Permintaan itu mengambil masa terlalu lama. Sila cuba lagi.';

  @override
  String get aiConnectionError =>
      'Tidak dapat menyambung ke perkhidmatan AI. Semak sambungan anda.';

  @override
  String get aiEmptyResponseError =>
      'Perkhidmatan AI mengembalikan respons kosong.';

  @override
  String get aiInvalidResponseError =>
      'Perkhidmatan AI mengembalikan respons yang tidak sah.';

  @override
  String get categoryFruits => 'buah-buahan';

  @override
  String get categoryCleaning => 'Pembersihan';

  @override
  String get categoryBeverages => 'Minuman';

  @override
  String get categoryBakery => 'Bakeri';

  @override
  String get categoryMeat => 'daging';

  @override
  String get categoryDairy => 'tenusu';

  @override
  String get categoryVegetables => 'Sayur-sayuran';

  @override
  String get categoryGrains => 'Bijirin dan bijirin';

  @override
  String get categoryHygiene => 'Penjagaan peribadi';

  @override
  String get categoryFrozen => 'Makanan sejuk beku';

  @override
  String get categoryCanned => 'Barangan dalam tin';

  @override
  String get categorySeasonings => 'bahan perasa';

  @override
  String get categorySweets => 'Gula-gula dan pencuci mulut';

  @override
  String get categoryAlcohol => 'Minuman beralkohol';

  @override
  String get categoryFish => 'ikan';

  @override
  String get categoryColdCuts => 'Luka sejuk';

  @override
  String get categoryUtilities => 'Bekalan rumah';

  @override
  String get categoryPet => 'Bekalan haiwan peliharaan';

  @override
  String get categoryBaby => 'sayang';

  @override
  String get categoryOthers => 'Lain-lain';

  @override
  String chatEmptyGreeting(String name) {
    return 'Hai $name, saya Kipi 👋';
  }

  @override
  String get chatEmptyGreetingNoName => 'Hai, saya Kipi 👋';

  @override
  String get chatEmptyPitch =>
      'Saya membina senarai, mencadangkan resipi dan mencari tempat untuk disimpan. Di mana kita bermula?';

  @override
  String get aiWelcomeSuggestBarbecue => 'Rancang barbeku';

  @override
  String get aiWelcomeSuggestBarbecuePrompt =>
      'Kipi, saya menganjurkan barbeku — bantu saya membina senarai beli-belah';

  @override
  String get aiRateLimitError =>
      'Terlalu banyak mesej dalam masa yang singkat. Tunggu beberapa saat dan cuba lagi.';

  @override
  String get chatHistoryErrorTitle => 'Tidak dapat memuatkan perbualan ini';

  @override
  String get chatHistoryErrorBody =>
      'Sesuatu telah berlaku pada pihak kami. Ketik cuba semula untuk mencuba lagi.';

  @override
  String get chatHistoryOfflineTitle => 'Anda di luar talian';

  @override
  String get chatHistoryOfflineBody =>
      'Semak sambungan internet anda dan cuba lagi.';

  @override
  String get aiGeneratingResponse => 'Menjana respons…';
}
