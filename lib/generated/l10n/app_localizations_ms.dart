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
  String get currency => 'mata wang';

  @override
  String get chooseCurrency => 'Pilih Mata Wang';

  @override
  String get searchCurrency => 'Cari mata wang...';

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
  String get aiLimitAlmostReached => 'Hampir kehabisan mesej AI';

  @override
  String get unlockAi => 'Buka kunci AI tanpa had';

  @override
  String get aiTeaserFallback =>
      'Langgan Premium untuk membuka kunci respons penuh dan dapatkan petua AI tanpa had untuk membeli-belah anda...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Log masuk untuk membuka kunci\nciri Premium';

  @override
  String get signInGoogle => 'Log masuk dengan Google';

  @override
  String get signInApple => 'Log masuk dengan Apple';

  @override
  String get continueAsGuest => 'Teruskan sebagai tetamu';

  @override
  String get onboardingWelcomeTitle => 'Selamat datang ke KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Cara paling bijak untuk mengatur belanja anda dan menjimatkan wang.';

  @override
  String get onboardingSetupTitle => 'Peribadikan pengalaman anda';

  @override
  String get onboardingSetupDesc =>
      'Pilih cara anda mahu KipiList kelihatan dan berfungsi untuk anda.';

  @override
  String get onboardingLoginTitle => 'Simpan semuanya ke awan';

  @override
  String get onboardingLoginDesc =>
      'Data anda disegerakkan merentas semua peranti anda';

  @override
  String get onboardingShareTitle => 'Kongsi dengan orang yang anda sayangi';

  @override
  String get onboardingShareDesc =>
      'Segerakkan senarai dengan keluarga dan rakan dalam masa nyata';

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
  String get onboardingExit => 'Keluar';

  @override
  String get onboardingPersonalizationTitle => 'Jom kenali awak';

  @override
  String get onboardingPersonalizationDesc =>
      'Kami akan menggunakan ini untuk memperibadikan cadangan anda dan menjadikan beli-belah lebih bijak.';

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
  String recipeAddedConfirmation(int count, String listName) {
    return '$count bahan ditambahkan pada $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Semua yang anda perlukan:';

  @override
  String get paywallFeatureUnlimitedLists => 'Senarai tanpa had';

  @override
  String get paywallFeatureSmartAI => 'AI Pintar';

  @override
  String get paywallFeatureExpenseControl => 'Kawalan Perbelanjaan';

  @override
  String get paywallFeatureSharing => 'Berkongsi';

  @override
  String get paywallBeforeAfterTitle => 'AI Sebelum dan Selepas:';

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
  String paywallSavePercent(Object percent) {
    return 'JIMAT $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
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
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'Dasar Privasi';

  @override
  String get paywallTerms => 'Syarat Penggunaan';

  @override
  String get paywallRestore => 'Pulihkan';

  @override
  String get paywallHeroHeadline => 'Kipi AI sentiasa di sisi anda';

  @override
  String get paywallHeroSubtitle =>
      'Tambah item, susun senarai dan jimat masa dengan AI dalam poket anda';

  @override
  String get paywallBenefit1Desc =>
      'Menambah, menyusun dan mencadangkan item 24/7';

  @override
  String get paywallBenefit2Desc => 'Tiada had 3 senarai';

  @override
  String get paywallBenefit3Desc =>
      'Penjejakan perbelanjaan dan senarai keluarga';

  @override
  String get paywallPackageMonthlyDesc => 'Fleksibiliti penuh';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Mula percuma — $days hari';
  }

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
      'Bercakap secara semula jadi untuk mengurus senarai anda!\n\nContoh:\n• \'Tambah roti, keju dan ham\'\n• \'Alih keluar pencuci pakaian\'\n• \'Tukar tema kepada biru\'\n\nIni adalah ciri eksklusif KipiList Premium.';

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
      'Maklum balas anda telah diterima dan membantu kami menambah baik KipiList untuk semua orang.';

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
  String get inviteToList => 'Jemput ke senarai';

  @override
  String get shareApp => 'Kongsi apl';

  @override
  String get shareAppDescription => 'Ajak kawan-kawan guna KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Saya menggunakan KipiList untuk mengatur pembelian saya! Muat turun melalui pautan saya dan kami berdua mendapat 7 hari Premium percuma: $url';
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
  String get expirationDate => 'tarikh luput';

  @override
  String get notInformed => 'Tidak dimaklumkan';

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
  String get manageCategoriesTitle => 'Uruskan Kategori';

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
  String get sortAZ => 'A–Z';

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
  String get backToToday => 'Kembali ke hari ini';

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
  String get aiLimitAlmostReached => 'Hampir kehabisan mesej AI';

  @override
  String get unlockAi => 'Buka kunci AI tanpa had';

  @override
  String get aiTeaserFallback =>
      'Langgan Premium untuk membuka kunci respons penuh dan dapatkan petua AI tanpa had untuk membeli-belah anda...';

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
      'Cara paling bijak untuk mengatur belanja anda dan menjimatkan wang.';

  @override
  String get onboardingSetupTitle => 'Peribadikan pengalaman anda';

  @override
  String get onboardingSetupDesc =>
      'Pilih cara anda mahu KipiList kelihatan dan berfungsi untuk anda.';

  @override
  String get onboardingLoginTitle => 'Simpan semuanya ke awan';

  @override
  String get onboardingLoginDesc =>
      'Data anda disegerakkan merentas semua peranti anda';

  @override
  String get onboardingShareTitle => 'Kongsi dengan orang yang anda sayangi';

  @override
  String get onboardingShareDesc =>
      'Segerakkan senarai dengan keluarga dan rakan dalam masa nyata';

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
  String get onboardingExit => 'Keluar';

  @override
  String get onboardingPersonalizationTitle => 'Jom kenali awak';

  @override
  String get onboardingPersonalizationDesc =>
      'Kami akan menggunakan ini untuk memperibadikan cadangan anda dan menjadikan beli-belah lebih bijak.';

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
  String recipeAddedConfirmation(int count, String listName) {
    return '$count bahan ditambahkan pada $listName';
  }

  @override
  String get paywallFeaturesTitle => 'Semua yang anda perlukan:';

  @override
  String get paywallFeatureUnlimitedLists => 'Senarai tanpa had';

  @override
  String get paywallFeatureSmartAI => 'AI Pintar';

  @override
  String get paywallFeatureExpenseControl => 'Kawalan Perbelanjaan';

  @override
  String get paywallFeatureSharing => 'Berkongsi';

  @override
  String get paywallBeforeAfterTitle => 'AI Sebelum dan Selepas:';

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
  String get paywallSafeCheckout => 'Pembayaran selamat';

  @override
  String get paywallSelectPlan => 'Pilih rancangan anda:';

  @override
  String paywallSavePercent(Object percent) {
    return 'JIMAT $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
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
  String get paywallPolicy => 'Dasar Privasi';

  @override
  String get paywallTerms => 'Syarat Penggunaan';

  @override
  String get paywallRestore => 'Pulihkan';

  @override
  String get paywallHeroHeadline => 'Kipi AI sentiasa di sisi anda';

  @override
  String get paywallHeroSubtitle =>
      'Tambah item, susun senarai dan jimat masa dengan AI dalam poket anda';

  @override
  String get paywallBenefit1Desc =>
      'Menambah, menyusun dan mencadangkan item 24/7';

  @override
  String get paywallBenefit2Desc => 'Tiada had 3 senarai';

  @override
  String get paywallBenefit3Desc =>
      'Penjejakan perbelanjaan dan senarai keluarga';

  @override
  String get paywallPackageMonthlyDesc => 'Fleksibiliti penuh';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Mula percuma — $days hari';
  }

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
      'Bercakap secara semula jadi untuk mengurus senarai anda!\n\nContoh:\n• \'Tambah roti, keju dan ham\'\n• \'Alih keluar detergen dobi\'\n• \'Tukar tema kepada biru\'\n\nIni adalah ciri eksklusif KipiList Premium.';

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
      'Maklum balas anda telah diterima dan membantu kami menambah baik KipiList untuk semua orang.';

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
  String get inviteToList => 'Jemput ke senarai';

  @override
  String get shareApp => 'Kongsi apl';

  @override
  String get shareAppDescription => 'Ajak kawan-kawan guna KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Saya menggunakan KipiList untuk mengatur pembelian saya! Muat turun melalui pautan saya dan kami berdua mendapat 7 hari Premium percuma: $url';
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
  String get expirationDate => 'tarikh luput';

  @override
  String get notInformed => 'Tidak dimaklumkan';

  @override
  String get manageCategoriesTitle => 'Uruskan Kategori';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get backToToday => 'Kembali ke hari ini';
}
