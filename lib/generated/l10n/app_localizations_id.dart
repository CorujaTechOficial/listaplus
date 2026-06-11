// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Daftar Belanja';

  @override
  String get lists => 'Daftar';

  @override
  String get pantry => 'Dapur';

  @override
  String get navChat => 'Mengobrol';

  @override
  String get navRecipes => 'Resep';

  @override
  String get navLists => 'Daftar';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Batal';

  @override
  String get save => 'Simpan';

  @override
  String get create => 'Buat';

  @override
  String get add => 'Tambah';

  @override
  String get remove => 'Hapus';

  @override
  String get delete => 'Hapus';

  @override
  String get edit => 'Sunting';

  @override
  String get copy => 'Salin';

  @override
  String get next => 'Berikutnya';

  @override
  String get retry => 'Coba lagi';

  @override
  String get regenerate => 'Hasilkan ulang';

  @override
  String get copiedToClipboard => 'Disalin ke papan klip';

  @override
  String get confirm => 'Konfirmasi';

  @override
  String get close => 'Tutup';

  @override
  String get import => 'Impor';

  @override
  String get rename => 'Ganti nama';

  @override
  String get upgrade => 'Tingkatkan';

  @override
  String get clear => 'Bersihkan';

  @override
  String error(String message) {
    return 'Kesalahan: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Kesalahan: $message';
  }

  @override
  String get purchaseError => 'Kesalahan memproses pembelian. Coba lagi.';

  @override
  String get restoreError => 'Kesalahan memulihkan pembelian. Coba lagi.';

  @override
  String get loading => 'Memuat...';

  @override
  String get fieldRequired => 'Kolom wajib';

  @override
  String get addedFeedback => 'Ditambahkan!';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Keluar dari Mode Belanja';

  @override
  String get exit => 'KELUAR';

  @override
  String selectedItems(int count) {
    return '$count dipilih';
  }

  @override
  String get estimated => 'Estimasi';

  @override
  String get alreadyPurchased => 'Sudah dibeli';

  @override
  String get clearList => 'Bersihkan daftar';

  @override
  String get clearPurchased => 'Hapus yang sudah dibeli';

  @override
  String get share => 'Bagikan';

  @override
  String get shareViaCode => 'Bagikan melalui kode';

  @override
  String get importViaCode => 'Impor melalui kode';

  @override
  String get listAssistant => 'Asisten daftar';

  @override
  String get globalAssistant => 'Asisten global';

  @override
  String get becomePremium => 'Jadi Premium';

  @override
  String get manageSubscription => 'Kelola langganan';

  @override
  String get completePurchase => 'Selesaikan pembelian';

  @override
  String get confirmClearList => 'Hapus semua item?';

  @override
  String get shareListTitle => 'Bagikan Daftar';

  @override
  String get shareThisCode => 'Bagikan kode ini:';

  @override
  String get validForLimitedTime => 'Berlaku untuk waktu terbatas';

  @override
  String get importListTitle => 'Impor Daftar';

  @override
  String get enterCodeHint => 'Masukkan kode';

  @override
  String get confirmArchiveTitle => 'Selesaikan Pembelian';

  @override
  String get confirmArchiveContent =>
      'Selesaikan pembelian ini dan arsipkan daftar?';

  @override
  String get complete => 'Selesai';

  @override
  String get listArchived => 'Daftar berhasil diarsipkan!';

  @override
  String listAdded(String listName) {
    return '$listName ditambahkan!';
  }

  @override
  String get buy => 'Beli';

  @override
  String get unmark => 'Hapus tanda';

  @override
  String confirmDeleteItems(int count) {
    return 'Hapus $count item?';
  }

  @override
  String get confirmDeleteTitle => 'Konfirmasi';

  @override
  String confirmContent(int count) {
    return 'Hapus $count item?';
  }

  @override
  String get archiveList => 'Arsipkan daftar';

  @override
  String get pantryAppBar => 'Dapur';

  @override
  String get generateShoppingList => 'Buat daftar belanja';

  @override
  String get pantryEmpty => 'Dapur kosong';

  @override
  String get pantryEmptySubtitle =>
      'Tambahkan produk yang ingin Anda simpan di rumah';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item perlu dibeli';
  }

  @override
  String get noItemsToBuy => 'Tidak ada item yang perlu dibeli';

  @override
  String get newPantryList => 'Belanja Dapur';

  @override
  String get newListTitle => 'Daftar Belanja Baru';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item akan ditambahkan';
  }

  @override
  String get listNameLabel => 'Nama daftar';

  @override
  String listCreated(String name, int count) {
    return 'Daftar \"$name\" dibuat dengan $count item';
  }

  @override
  String get noTracking => 'Tanpa pelacakan';

  @override
  String get markAsPurchased => 'Tandai sudah dibeli';

  @override
  String editPantryItem(String name) {
    return 'Sunting $name';
  }

  @override
  String get idealQuantity => 'Jumlah ideal';

  @override
  String get currentQuantity => 'Jumlah saat ini';

  @override
  String get consumed => 'Dikonsumsi';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name diisi ulang menjadi $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Hapus \"$name\" dari dapur?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Sunting $name';
  }

  @override
  String get scanProductTitle => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Position the barcode in the center';

  @override
  String get product => 'Product';

  @override
  String get settingsAppBar => 'Pengaturan';

  @override
  String get language => 'Bahasa';

  @override
  String get languagePortuguese => 'Portugis (Brasil)';

  @override
  String get languageEnglish => 'Bahasa inggris';

  @override
  String get languageSystem => 'Default sistem';

  @override
  String get chooseLanguage => 'Pilih Bahasa';

  @override
  String get searchLanguage => 'Cari bahasa...';

  @override
  String get currency => 'Mata uang';

  @override
  String get chooseCurrency => 'Pilih Mata Uang';

  @override
  String get searchCurrency => 'Cari mata uang...';

  @override
  String get appearance => 'Tampilan';

  @override
  String get light => 'Terang';

  @override
  String get system => 'Sistem';

  @override
  String get dark => 'Gelap';

  @override
  String get themeColor => 'Warna tema';

  @override
  String get dynamicColors => 'Warna dinamis';

  @override
  String get dynamicColorsSubtitle =>
      'Gunakan warna berdasarkan wallpaper Anda';

  @override
  String get dynamicColorsEnabledWarning =>
      'Nonaktifkan warna dinamis agar warna tema dapat diterapkan';

  @override
  String get finance => 'Keuangan';

  @override
  String get monthlyBudgetNav => 'Anggaran bulanan';

  @override
  String get budgetSubtitle => 'Lacak pengeluaran bulanan Anda';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Cadangan';

  @override
  String get backupSubtitle => 'Ekspor atau impor data Anda';

  @override
  String get about => 'Tentang';

  @override
  String get version => 'Versi';

  @override
  String get privacy => 'Privasi';

  @override
  String get termsOfUse => 'Syarat penggunaan';

  @override
  String get myAchievements => 'My Achievements';

  @override
  String get itemsPurchased => 'Items Purchased';

  @override
  String get totalSavings => 'Total Savings';

  @override
  String get currentStreak => 'Current Streak';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '$count day',
    );
    return '$_temp0';
  }

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
  String get backupTitle => 'Cadangan';

  @override
  String get backupPremiumDescription =>
      'Cadangan dan ekspor adalah fitur premium';

  @override
  String get exportData => 'Ekspor data';

  @override
  String get exportDataSubtitle => 'Simpan semua daftar sebagai JSON';

  @override
  String get importData => 'Impor data';

  @override
  String get importDataSubtitle => 'Pulihkan daftar dari JSON';

  @override
  String get importJsonTitle => 'Impor JSON';

  @override
  String get importJsonHint => 'Tempel JSON cadangan di sini...';

  @override
  String get backupExported => 'Cadangan berhasil diekspor!';

  @override
  String get budgetAppBar => 'Anggaran Bulanan';

  @override
  String get budgetPremiumLocked => 'Anggaran bulanan global adalah premium';

  @override
  String get budgetUpgradePrompt => 'Tingkatkan untuk membuka';

  @override
  String get noBudgetDefined => 'Belum ada anggaran';

  @override
  String totalEstimated(String amount) {
    return 'Total estimasi: $amount';
  }

  @override
  String get setBudgetButton => 'Atur anggaran';

  @override
  String get budgetLists => 'Daftar';

  @override
  String get budgetValueLabel => 'Jumlah';

  @override
  String get setBudgetTitle => 'Anggaran Bulanan';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Semua';

  @override
  String get filterPending => 'Tertunda';

  @override
  String get filterPurchased => 'Dibeli';

  @override
  String get sortName => 'Nama';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Tanggal';

  @override
  String get sortManual => 'petunjuk';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased of $total items';
  }

  @override
  String progressBudget(String amount) {
    return 'Budget: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Total: $amount';
  }

  @override
  String get addItem => 'Tambah Item';

  @override
  String get itemName => 'Nama item';

  @override
  String get quantityShort => 'Jml';

  @override
  String get unit => 'Satuan';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Estimasi harga';

  @override
  String get addItemPrice => 'Estimasi harga';

  @override
  String get editItem => 'Sunting Item';

  @override
  String get quantityFull => 'Jumlah';

  @override
  String get editItemPrice => 'Estimasi harga';

  @override
  String get addToPantry => 'Tambahkan ke Dapur';

  @override
  String addToPantryPrompt(String name) {
    return 'Tambahkan \"$name\" ke Dapur?';
  }

  @override
  String get yes => 'Ya';

  @override
  String get productName => 'Nama produk';

  @override
  String get idealQty => 'Jml ideal';

  @override
  String get currentQty => 'Jml saat ini';

  @override
  String get trackStock => 'Lacak stok';

  @override
  String get trackStockActive => 'Muncul dalam saran belanja';

  @override
  String get trackStockInactive => 'Tidak menghasilkan saran belanja';

  @override
  String get createListDialog => 'Buat Daftar';

  @override
  String get renameListDialog => 'Ganti Nama Daftar';

  @override
  String get listHistory => 'Riwayat Daftar';

  @override
  String get myLists => 'Daftar Saya';

  @override
  String get viewActive => 'Lihat Aktif';

  @override
  String get viewHistory => 'Lihat Riwayat';

  @override
  String get noArchivedLists => 'Tidak ada daftar yang diarsipkan';

  @override
  String get noActiveLists => 'Tidak ada daftar aktif';

  @override
  String completedOn(String date) {
    return 'Selesai pada $date';
  }

  @override
  String get sharedLabel => 'Dibagikan';

  @override
  String get restore => 'Pulihkan';

  @override
  String get removeSharedTooltip => 'Hapus';

  @override
  String get deleteListTitle => 'Hapus daftar';

  @override
  String deleteListContent(String name) {
    return 'Anda yakin ingin menghapus \"$name\"? Semua item akan dihapus.';
  }

  @override
  String get removeSharedListTitle => 'Hapus daftar bersama';

  @override
  String removeSharedListContent(String name) {
    return 'Hapus \"$name\" dari daftar Anda? Daftar asli tidak akan terpengaruh.';
  }

  @override
  String get createNewList => 'Buat daftar baru';

  @override
  String get aiAssistant => 'Asisten AI';

  @override
  String get aiAssistantDescription =>
      'Dapatkan saran pintar, resep, dan tips personal dengan asisten AI kami.';

  @override
  String get generalAssistant => 'Asisten Umum';

  @override
  String get newChat => 'Obrolan Baru';

  @override
  String get noHistory => 'Tidak ada riwayat obrolan';

  @override
  String get deleteSession => 'Hapus Obrolan';

  @override
  String get deleteSessionConfirm =>
      'Apakah Anda yakin ingin menghapus obrolan ini? Pesan-pesan tersebut akan hilang secara permanen.';

  @override
  String get clearHistory => 'Hapus Riwayat';

  @override
  String get clearHistoryConfirm => 'Hapus semua pesan dalam sesi ini?';

  @override
  String get chatHint => 'Ketik pesan Anda...';

  @override
  String get chatHintBlocked => 'Buka kunci AI untuk mengobrol';

  @override
  String chatError(String error) {
    return 'Kesalahan memuat chat: $error';
  }

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

  @override
  String get listHelp => 'Bagaimana saya bisa membantu dengan daftar Anda?';

  @override
  String get generalHelp =>
      'Bagaimana saya bisa membantu belanja Anda hari ini?';

  @override
  String get chatSubtitle => 'Minta saran item, resep, atau tips hemat.';

  @override
  String get aiError =>
      'Maaf, terjadi kesalahan memproses permintaan Anda. Periksa koneksi Anda atau coba lagi nanti.';

  @override
  String get aiLimitAlmostReached => 'Hampir kehabisan pesan AI';

  @override
  String get unlockAi => 'Buka kunci AI tanpa batas';

  @override
  String get aiTeaserFallback =>
      'Berlangganan Premium untuk mendapatkan respons penuh dan mendapatkan tips AI tanpa batas untuk belanja Anda...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Tindakan AI tersisa bulan ini — tingkatkan tanpa batas';
  }

  @override
  String get aiUsageExhausted =>
      'Batas AI bulanan tercapai. Tingkatkan ke Pro tanpa batas →';

  @override
  String get kipiListTitle => 'Daftar Kipi';

  @override
  String get loginPrompt => 'Masuk untuk membuka\nfitur premium';

  @override
  String get signInGoogle => 'Masuk dengan Google';

  @override
  String get signInApple => 'Masuk dengan Apple';

  @override
  String get continueAsGuest => 'Lanjutkan sebagai tamu';

  @override
  String get onboardingWelcomeTitle => 'Selamat datang di KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Cara paling cerdas untuk mengatur belanja Anda dan menghemat uang.';

  @override
  String get onboardingSetupTitle => 'Personalisasikan pengalaman Anda';

  @override
  String get onboardingSetupDesc =>
      'Pilih tampilan dan fungsi KipiList yang Anda inginkan.';

  @override
  String get onboardingLoginTitle => 'Simpan semuanya ke cloud';

  @override
  String get onboardingLoginDesc =>
      'Data Anda disinkronkan di semua perangkat Anda';

  @override
  String get onboardingShareTitle => 'Bagikan dengan orang yang Anda cintai';

  @override
  String get onboardingShareDesc =>
      'Sinkronkan daftar dengan keluarga dan teman secara real time';

  @override
  String get onboardingPremiumTitle => 'Buka kunci semua fitur';

  @override
  String get onboardingPremiumSubtitle =>
      'Dapatkan hasil maksimal dari daftar belanja Anda';

  @override
  String get onboardingAnnualBadge => 'Nilai Terbaik';

  @override
  String get onboardingMonthlyLabel => 'Bulanan';

  @override
  String get onboardingAnnualLabel => 'Tahunan';

  @override
  String get onboardingViewAllPlans => 'Lihat semua paket';

  @override
  String get onboardingSubscribeCta => 'Berlangganan';

  @override
  String get onboardingCancelAnytime =>
      'Batalkan kapan saja. Tidak ada komitmen.';

  @override
  String get onboardingContinueAsGuest => 'Lanjutkan sebagai tamu';

  @override
  String get onboardingRestore => 'Memulihkan';

  @override
  String get onboardingRestoreDesc =>
      'Sudah berlangganan? Ketuk di sini untuk memulihkannya.';

  @override
  String get onboardingMaybeLater => 'mungkin nanti';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hai $name, atur belanjaan Anda dengan benar.';
  }

  @override
  String get onboardingSlide1Title => 'Daftar Belanja Cerdas';

  @override
  String get onboardingSlide1Body =>
      'Buat dan bagikan daftar secara instan. Kipi menambahkan item secara otomatis berdasarkan kebiasaan Anda.';

  @override
  String get onboardingSlide2Title => 'Temui Kipi';

  @override
  String get onboardingSlide2Body =>
      'Tanyakan apa saja — buat daftar, temukan resep, lacak dapur Anda, rencanakan minggu Anda.';

  @override
  String get onboardingSlide3Title => 'Perencanaan Dapur & Makan';

  @override
  String get onboardingSlide3Body =>
      'Lacak apa yang Anda miliki, rencanakan makanan, dan buat daftar belanjaan secara otomatis.';

  @override
  String get onboardingExit => 'KELUAR';

  @override
  String get onboardingPersonalizationTitle => 'Mari mengenal Anda';

  @override
  String get onboardingPersonalizationDesc =>
      'Kami akan menggunakan ini untuk mempersonalisasi saran Anda dan menjadikan belanja lebih cerdas.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Apa makanan favoritmu?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'misalnya Pizza, Sushi, Lasagna...';

  @override
  String get onboardingPersonalizationCta => 'Melanjutkan';

  @override
  String get onboardingPersonalizationSkip => 'Lewati untuk saat ini';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Beri tahu kami makanan favorit Anda untuk melanjutkan';

  @override
  String get settingsDefaultScreen => 'Layar beranda bawaan';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Pilih antara daftar belanja atau obrolan AI';

  @override
  String get settingsScreenList => 'Daftar Belanja';

  @override
  String get settingsScreenChat => 'Obrolan AI';

  @override
  String loginError(String error) {
    return 'Kesalahan masuk: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Terjadi kesalahan saat memuat penawaran. Coba lagi.';

  @override
  String get paywallPurchaseError =>
      'Tidak dapat menyelesaikan pembelian. Coba lagi.';

  @override
  String get paywallRestoreError =>
      'Tidak ditemukan langganan aktif untuk dipulihkan.';

  @override
  String paywallTrialDays(Object days) {
    return '$days HARI GRATIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MINGGU GRATIS',
      one: '$count MINGGU GRATIS',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count BULAN GRATIS',
      one: '$count BULAN GRATIS',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Coba KipiList Pro gratis selama 7 hari';

  @override
  String get paywallTrialSubtitle =>
      'Batalkan kapan saja. Tidak ada biaya hari ini.';

  @override
  String get paywallTrialCta => 'Mulai Uji Coba Gratis';

  @override
  String get recipeAddToList => 'Tambahkan ke daftar belanja';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count bahan ditambahkan ke $listName';
  }

  @override
  String get noListSelected =>
      'Tidak ada daftar yang dipilih. Buka daftar terlebih dahulu.';

  @override
  String get paywallFeaturesTitle => 'Semua yang Anda butuhkan:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI mengatur daftar Anda secara otomatis';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Buat daftar sebanyak yang Anda perlukan';

  @override
  String get paywallFeatureDescSharing => 'Berbelanja bersama secara real time';

  @override
  String get paywallFeatureDescPantry => 'Lacak apa yang Anda miliki di rumah';

  @override
  String get paywallFeatureDescBudget => 'Tetap sesuai anggaran setiap bulan';

  @override
  String get paywallFeatureUnlimitedLists => 'Daftar Tidak Terbatas';

  @override
  String get paywallFeatureSmartAI => 'AI yang cerdas';

  @override
  String get paywallFeatureExpenseControl => 'Pengendalian Biaya';

  @override
  String get paywallFeatureSharing => 'Membagikan';

  @override
  String get paywallBeforeAfterTitle => 'AI Sebelum dan Sesudah:';

  @override
  String get paywallLabelCommon => 'Umum';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'beras';

  @override
  String get paywallBeforeItem2 => 'sabun';

  @override
  String get paywallBeforeItem3 => 'daging';

  @override
  String get paywallBeforeItem4 => 'roti';

  @override
  String get paywallAfterItem1 => 'Biji-bijian';

  @override
  String get paywallAfterItem2 => 'Pembersihan';

  @override
  String get paywallAfterItem3 => 'Daging';

  @override
  String get paywallAfterItem4 => 'Toko roti';

  @override
  String get paywallTestimonialsTitle => 'Apa yang dikatakan pengguna kami:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI mengatur belanjaan saya dalam hitungan detik. Saya menghemat 20 menit per perjalanan pasar.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Saya tidak pernah melupakan item daftar lagi. Obrolan AI itu sensasional!';

  @override
  String get paywallSocialProof => '+2.400 keluarga menggunakannya';

  @override
  String get paywallCtaUnlock => 'Buka kunci PRO';

  @override
  String get paywallBestValue => 'NILAI TERBAIK';

  @override
  String get paywallMostPopular => 'PALING POPULER';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Pembayaran aman';

  @override
  String get paywallSelectPlan => 'Pilih paket Anda:';

  @override
  String paywallSavePercent(Object percent) {
    return 'HEMAT $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Hanya $price/bulan';
  }

  @override
  String get paywallPackageAnnual => 'Paket Tahunan';

  @override
  String get paywallPackageMonthly => 'Paket Bulanan';

  @override
  String get paywallPackageLifetime => 'Akses Seumur Hidup';

  @override
  String get paywallCancelAnytime => 'Batalkan kapan saja. Tidak ada komitmen.';

  @override
  String paywallTrialInCard(int days) {
    return '$days hari pertama GRATIS';
  }

  @override
  String get paywallSecuredByStore =>
      'Diamankan oleh Google Play · Batalkan kapan saja';

  @override
  String get paywallPolicy => 'Kebijakan Privasi';

  @override
  String get paywallTerms => 'Ketentuan Penggunaan';

  @override
  String get paywallRestore => 'Memulihkan';

  @override
  String get paywallHeroHeadline => 'Kipi AI selalu di sisimu';

  @override
  String get paywallHeroSubtitle =>
      'Tambahkan item, atur daftar, dan hemat waktu dengan AI di saku Anda';

  @override
  String get paywallBenefit1Desc =>
      'Menambahkan, mengatur, dan menyarankan item 24/7';

  @override
  String get paywallBenefit2Desc => 'Tidak ada batasan 3 daftar';

  @override
  String get paywallBenefit3Desc => 'Pelacakan pengeluaran dan daftar keluarga';

  @override
  String get paywallPackageMonthlyDesc => 'Fleksibilitas penuh';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Mulai gratis — $days hari';
  }

  @override
  String get premiumUpgrade => 'Tingkatkan untuk membuka';

  @override
  String get itemRemoved => 'Item dihapus';

  @override
  String get undo => 'Urungkan';

  @override
  String get emptyListTitle => 'Daftar Anda kosong';

  @override
  String get emptyListSubtitle => 'Tambahkan item untuk memulai';

  @override
  String get noListFoundTitle => 'Tidak ada daftar ditemukan';

  @override
  String get noListFoundSubtitle => 'Buat daftar pertama Anda untuk memulai';

  @override
  String get createFirstList => 'Buat Daftar Pertama';

  @override
  String get listBudgetTitle => 'Anggaran Daftar';

  @override
  String get budgetAmountLabel => 'Jumlah anggaran';

  @override
  String get removeBudget => 'Hapus';

  @override
  String get prefUnlimitedLists => 'Daftar tak terbatas';

  @override
  String get prefSharing => 'Bagikan daftar';

  @override
  String get prefFullHistory => 'Riwayat lengkap';

  @override
  String get prefExportData => 'Ekspor data';

  @override
  String get prefCustomThemes => 'Tema kustom';

  @override
  String get prefMonthlyBudget => 'Anggaran bulanan global';

  @override
  String get prefAIAssistant => 'Asisten AI Pribadi';

  @override
  String get prefUnlimitedPantry => 'Dapur tak terbatas';

  @override
  String get prefInteractiveArtifacts => 'Artefak AI Interaktif';

  @override
  String get themeGreen => 'Hijau';

  @override
  String get themeBlue => 'Biru';

  @override
  String get themePurple => 'Ungu';

  @override
  String get themeRed => 'Merah';

  @override
  String get themeOrange => 'Oranye';

  @override
  String get themePink => 'Merah Muda';

  @override
  String get themeIndigo => 'Nila';

  @override
  String get themeAmber => 'Kuning';

  @override
  String get themeTeal => 'teal';

  @override
  String get themeBrown => 'Coklat';

  @override
  String get catFruits => 'Buah';

  @override
  String get catCleaning => 'Kebersihan';

  @override
  String get catBeverages => 'Minuman';

  @override
  String get catBakery => 'Roti';

  @override
  String get catOthers => 'Lainnya';

  @override
  String get unitPack => 'bungkus';

  @override
  String get shareSubject => 'Daftar Belanja';

  @override
  String get monthlyBudgetTitle => 'Anggaran Bulanan';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Hapus daftar';

  @override
  String get pantryItemRemoved => 'Item dihapus';

  @override
  String deficitItems(int deficit) {
    return '$deficit item perlu dibeli';
  }

  @override
  String get cartTotal => 'Total keranjang';

  @override
  String get restockLabel => 'Isi ulang';

  @override
  String get advancedFeatures => 'Fitur lanjutan';

  @override
  String get selectAll => 'Pilih semua';

  @override
  String get deselectAll => 'Batalkan pilihan semua';

  @override
  String get monthlyBudgetAppBar => 'Anggaran Bulanan';

  @override
  String get budgetEditTitle => 'Anggaran Bulanan';

  @override
  String get budgetDashboardTitle => 'Dasbor';

  @override
  String get selectListForDashboard => 'Pilih daftar untuk melihat dasbor.';

  @override
  String get spendingAnalysis => 'Analisis Pengeluaran';

  @override
  String get noItemsToAnalyze =>
      'Tidak ada item dalam daftar untuk dianalisis.';

  @override
  String get markItemsToSeeAnalysis =>
      'Tandai item sebagai dibeli untuk melihat analisis.';

  @override
  String get totalSpending => 'Total Pengeluaran';

  @override
  String get spendingByCategory => 'Pengeluaran per Kategori';

  @override
  String get achievements => 'Pencapaian';

  @override
  String get exportPdfExcel => 'Ekspor PDF/Excel';

  @override
  String get exportPdf => 'Ekspor sebagai PDF';

  @override
  String get exportExcel => 'Ekspor sebagai Excel';

  @override
  String get organizingAi => 'MENGORGANISASI DENGAN AI...';

  @override
  String get yesLabel => 'Ya';

  @override
  String get noLabel => 'Tidak';

  @override
  String get shareListText => 'Daftar Belanja Saya';

  @override
  String get emptyListAddItems =>
      'Daftar Anda kosong! Tambahkan item terlebih dahulu. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Daftar secara ajaib diatur berdasarkan kategori! ✨';

  @override
  String get shoppingMode => 'Mode Belanja';

  @override
  String get smartOrganization => 'Organisasi Pintar';

  @override
  String get savings => 'Penghematan';

  @override
  String get shoppingModeHeader => 'MODE BELANJA';

  @override
  String get shareAsText => 'Kirim item sebagai teks terformat';

  @override
  String get shareRealtime => 'Sinkronisasi real-time dengan orang lain';

  @override
  String get quickRecipe => 'Resep cepat';

  @override
  String get quickRecipePrompt =>
      'Sarankan resep dengan item dari daftar saya.';

  @override
  String get economyTips => 'Tips hemat';

  @override
  String get economyTipsPrompt =>
      'Bagaimana saya bisa menghemat uang untuk pembelian ini?';

  @override
  String get organizeAisles => 'Atur berdasarkan lorong';

  @override
  String get organizeAislesPrompt => 'Atur berdasarkan lorong pasar.';

  @override
  String get recipeSuggestion => 'Saran resep';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kredit tersisa';
  }

  @override
  String get addAllToList => 'Tambahkan semua ke daftar';

  @override
  String get organizeByAisles => 'Atur berdasarkan lorong';

  @override
  String get voiceTranscriptionTooltip => 'Ketik suara (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'Perintah Suara AI (Premium)';

  @override
  String get voiceCommandTitle => 'Perintah Suara AI';

  @override
  String get voiceCommandContent =>
      'Bicaralah secara alami untuk mengelola daftar Anda!\n\nContoh:\n• \'Tambahkan roti, keju, dan ham\'\n• \'Hapus deterjen pakaian\'\n• \'Ubah tema menjadi biru\'\n\nIni adalah fitur eksklusif KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Lihat Paket';

  @override
  String get itemsAddedSuccess => 'Item berhasil ditambahkan ke daftar!';

  @override
  String get viewList => 'Lihat daftar';

  @override
  String get feedbackTitle => 'Kirim Masukan';

  @override
  String get feedbackPrompt => 'Apa yang ingin Anda bagikan?';

  @override
  String get feedbackTypeBug => 'Laporkan Bug';

  @override
  String get feedbackTypeBugHint => 'Sesuatu tidak berfungsi';

  @override
  String get feedbackTypeSuggestion => 'Saran';

  @override
  String get feedbackTypeSuggestionHint => 'Ide untuk meningkatkan aplikasi';

  @override
  String get feedbackTypeTranslation => 'Masalah Terjemahan';

  @override
  String get feedbackTypeTranslationHint => 'Terjemahan salah atau tidak alami';

  @override
  String get feedbackTypeFeature => 'Permintaan Fitur';

  @override
  String get feedbackTypeFeatureHint => 'Fitur yang ingin Anda lihat';

  @override
  String get feedbackTypeOther => 'Lainnya';

  @override
  String get feedbackTypeOtherHint => 'Jenis masukan lainnya';

  @override
  String get feedbackHint => 'Jelaskan masukan Anda secara detail...';

  @override
  String get feedbackSend => 'Kirim Masukan';

  @override
  String get feedbackSending => 'Mengirim...';

  @override
  String get feedbackThankYou => 'Terima Kasih!';

  @override
  String get feedbackThankYouMessage =>
      'Masukan Anda telah diterima dan membantu kami meningkatkan KipiList untuk semua orang.';

  @override
  String get feedbackBack => 'Kembali';

  @override
  String feedbackError(String error) {
    return 'Kesalahan mengirim: $error';
  }

  @override
  String get feedbackRetry => 'Coba lagi';

  @override
  String get feedbackSettingsTitle => 'Kirim Masukan';

  @override
  String get feedbackSettingsSubtitle =>
      'Laporkan bug, sarankan perbaikan, atau perbaiki terjemahan';

  @override
  String get aiEnergy => 'Energi AI';

  @override
  String get searchInConversation => 'Telusuri dalam percakapan...';

  @override
  String get noMessagesFound => 'Tidak ada pesan yang ditemukan';

  @override
  String get suggestedQuestions => 'Pertanyaan yang disarankan:';

  @override
  String get shoppingAssistant => 'Asisten belanja';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased dari $total dibeli';
  }

  @override
  String get estimatedCost => 'Diperkirakan';

  @override
  String get viewItems => 'Lihat item';

  @override
  String get noItemsInList => 'Tidak ada item dalam daftar';

  @override
  String get longHistoryWarning =>
      'Sejarah panjang: asisten berfokus pada pesan terbaru untuk kinerja yang lebih baik.';

  @override
  String get listening => 'Mendengarkan...';

  @override
  String get addDirectToList => 'Tambahkan langsung ke daftar';

  @override
  String get unlockFullResponse => 'Buka Kunci Respons Penuh';

  @override
  String get switchList => 'Ganti daftar';

  @override
  String get marketMode => 'Modus Pasar';

  @override
  String get backToChat => 'Kembali ke Obrolan';

  @override
  String get finishShopping => 'Selesai Berbelanja';

  @override
  String get welcomeAiAssistant => 'Selamat datang di Asisten AI';

  @override
  String get createListToStartAi =>
      'Buat daftar belanja untuk mulai menggunakan obrolan pintar.';

  @override
  String get howCanIHelp => 'Apa yang bisa saya bantu?';

  @override
  String get chatSubtitleShort =>
      'Tanyakan tentang harga, resep, organisasi...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total dibeli';
  }

  @override
  String get quickReplies => 'Balasan cepat:';

  @override
  String get voiceProFeature =>
      'Perintah suara tingkat lanjut adalah Pro. Mengaktifkan dikte dasar...';

  @override
  String get viewPro => 'Lihat Pro';

  @override
  String get errorLoadingChat => 'Ups! Terjadi masalah saat memuat obrolan.';

  @override
  String get errorLoadingChatSubtitle =>
      'Periksa koneksi Anda atau coba lagi nanti.';

  @override
  String get errorOscillation =>
      'Hal ini mungkin terjadi karena fluktuasi jaringan atau ketidaktersediaan sementara. Silakan coba lagi.';

  @override
  String get activeListening => 'Mendengarkan Aktif';

  @override
  String get whatToDoWithItem =>
      'Apa yang ingin Anda lakukan dengan barang ini?';

  @override
  String get viewDetails => 'Lihat Detail';

  @override
  String get openMenu => 'Buka menu';

  @override
  String get viewRecipe => 'Lihat Resep';

  @override
  String get recipeCreated => 'Resep dibuat!';

  @override
  String get editRecipe => 'Sunting';

  @override
  String get deleteRecipe => 'Hapus';

  @override
  String get deleteRecipeConfirm => 'Hapus resep ini?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Apakah Anda yakin ingin menghapus \"$recipeName\"? Tindakan ini tidak dapat dibatalkan.';
  }

  @override
  String get ingredients => 'Bahan-bahan';

  @override
  String get instructions => 'Instruksi';

  @override
  String get prepTime => 'Waktu persiapan';

  @override
  String get recipeSaved => 'Resep disimpan!';

  @override
  String get noRecipesSaved => 'Tidak ada resep yang disimpan';

  @override
  String get noRecipesSavedHint =>
      'Buat resep kustom pertama Anda dengan mengetuk tombol di bawah.';

  @override
  String get myRecipes => 'Resep Saya';

  @override
  String get newRecipe => 'Resep Baru';

  @override
  String get loadingRecipes => 'Memuat resep Anda...';

  @override
  String get errorLoadingRecipes => 'Gagal memuat resep';

  @override
  String get addIngredient => 'Tambah bahan';

  @override
  String get saveRecipe => 'Simpan';

  @override
  String get recipeName => 'Nama resep';

  @override
  String get shortDescription => 'Deskripsi singkat';

  @override
  String get prepTimeMinutes => 'Waktu persiapan (menit)';

  @override
  String get instructionsHint => 'Ketik satu langkah per baris...';

  @override
  String get addPhoto => 'Tambah foto';

  @override
  String get imageUrlPlaceholder => 'Atau tempel URL gambar';

  @override
  String get tags => 'Tag';

  @override
  String get recipeTags => 'Tag resep';

  @override
  String get suggestedTags => 'Disarankan';

  @override
  String get searchRecipes => 'Cari resep...';

  @override
  String get filterByTag => 'Filter berdasarkan tag';

  @override
  String get allTags => 'Semua';

  @override
  String get recipeDeleted => 'Resep dihapus';

  @override
  String get saveChanges => 'Simpan perubahan';

  @override
  String get editRecipeTitle => 'Edit Resep';

  @override
  String get newRecipeTitle => 'Resep Baru';

  @override
  String get requiredField => 'Wajib diisi';

  @override
  String get chooseImageSource => 'Pilih sumber gambar';

  @override
  String get gallery => 'Galeri';

  @override
  String get enterUrl => 'Masukkan URL';

  @override
  String get recipeImage => 'Gambar resep';

  @override
  String get removeImage => 'Hapus gambar';

  @override
  String get mealPlannerTitle => 'Perencana Makan';

  @override
  String get mealPlannerViewMonthly => 'Tampilan bulanan';

  @override
  String get mealPlannerViewWeekly => 'Tampilan mingguan';

  @override
  String get mealPlannerNoMeals => 'Belum ada rencana makan';

  @override
  String get mealPlannerNoMealsHint => 'Ketuk hari untuk menambah makanan';

  @override
  String get mealPlannerLoading => 'Memuat rencana makan...';

  @override
  String get mealPlannerError => 'Gagal memuat rencana makan';

  @override
  String get mealPlannerAddMeal => 'Tambah Makanan';

  @override
  String get mealPlannerEditMeal => 'Edit Makanan';

  @override
  String get mealPlannerDeleteMeal => 'Hapus makanan';

  @override
  String get mealPlannerMealDeleted => 'Makanan dihapus';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porsi',
      one: '$count porsi',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porsi';

  @override
  String get mealPlannerNoteLabel => 'Catatan (opsional)';

  @override
  String get mealPlannerSelectRecipe => 'Pilih resep';

  @override
  String get mealPlannerSearchRecipes => 'Cari resep...';

  @override
  String get mealPlannerNoRecipesFound => 'Resep tidak ditemukan';

  @override
  String get mealPlannerNoRecipesHint =>
      'Buat resep di tab Resep terlebih dahulu';

  @override
  String get mealPlannerSave => 'Tambah ke rencana';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count dari $total makanan terencana';
  }

  @override
  String get mealPlannerGenerateList => 'Buat daftar belanja';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Tambahkan semua bahan dari rencana makan minggu ini ke daftar belanja Anda?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count bahan telah ditambahkan ke daftar Anda!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Tidak ada bahan untuk ditambahkan. Buat rencana makan dengan resep terlebih dahulu.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Buat daftar belanja terlebih dahulu.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Sarapan';

  @override
  String get mealPlannerMealTypeLunch => 'Makan Siang';

  @override
  String get mealPlannerMealTypeDinner => 'Makan Malam';

  @override
  String get mealPlannerMealTypeSnack => 'Cemilan';

  @override
  String get mealPlannerDateLabel => 'Tanggal';

  @override
  String get mealPlannerWeekEmpty => 'Belum ada rencana untuk minggu ini';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Ketuk hari apa saja untuk mulai merencanakan makanan Anda!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes mnt';
  }

  @override
  String get inviteToList => 'Undang untuk mendaftar';

  @override
  String get shareApp => 'Bagikan aplikasi';

  @override
  String get shareAppDescription => 'Undang teman untuk menggunakan KipiList';

  @override
  String shareReferralText(String url) {
    return 'Saya menggunakan KipiList untuk mengatur belanjaan saya! Unduh melalui tautan saya dan kami berdua mendapatkan Premium gratis selama 7 hari: $url';
  }

  @override
  String get shareReferralSubject => 'Dapatkan KipiList Premium selama 7 hari!';

  @override
  String get gestureHint => 'Tahan untuk memilih • Geser untuk menghapus';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Yang Sering Saya';

  @override
  String get catalogSearchGlobal => 'Telusuri produk apa saja...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Cari di $category...';
  }

  @override
  String get catalogSortPopular => 'Paling populer';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Warga negara';

  @override
  String get catalogRareSection => 'kurang umum di negara Anda';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Tambahkan $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Produk tidak ditemukan, ketikkan namanya';

  @override
  String get catalogBrowse => 'Telusuri Katalog';

  @override
  String get offlineBanner => 'Anda sedang luring';

  @override
  String get consentTitle => 'Privasi & Analisis';

  @override
  String get consentBody =>
      'KipiList menggunakan Firebase Analytics untuk meningkatkan pengalaman Anda. Data Anda diproses sesuai dengan Kebijakan Privasi kami.';

  @override
  String get consentAccept => 'Menerima';

  @override
  String get consentDecline => 'Tidak, terima kasih';

  @override
  String get mealPlannerPantryAllAvailable => 'Tersedia';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count barang hilang',
      one: '$count barang hilang',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Kedaluwarsa';

  @override
  String get notInformed => 'Tidak diberitahu';

  @override
  String get skip => 'Melewati';

  @override
  String get onboardingAiTitle => 'Ngobrol dengan Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hai! Saya Kipi, asisten belanja pribadi Anda! 🛒';

  @override
  String get onboardingAiAskName => 'Siapa namamu?';

  @override
  String get onboardingAiNameHint => 'Ketikkan nama Anda...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Senang bertemu dengan Anda, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Apa makanan favoritmu?';

  @override
  String get onboardingAiFoodHint => 'misalnya Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Pilihan bagus! Inilah yang akan saya tambahkan ke daftar Anda:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Apakah ini terlihat bagus? Coba ketik yang lain!';

  @override
  String get onboardingAiReady =>
      'Besar! Anda siap untuk memulai. Ayo siapkan akun Anda!';

  @override
  String get onboardingAiContinue => 'Lanjutkan →';

  @override
  String get connectionError => 'Kesalahan koneksi';

  @override
  String connectionErrorDesc(String error) {
    return 'Kesalahan: $error';
  }

  @override
  String get errorLoadingLists => 'Terjadi kesalahan saat memuat daftar';

  @override
  String get noListsFound => 'Tidak ada daftar yang ditemukan';

  @override
  String get backToToday => 'Kembali ke hari ini';

  @override
  String get quickSuggestions => 'Saran cepat';

  @override
  String get aiEnergyLow => 'Energi AI rendah';

  @override
  String get aiUnlockUnlimited => 'Buka kunci AI tanpa batas';

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
  String get aiSubscribeUnlimited => 'Berlangganan AI tanpa batas';

  @override
  String get unlockWithAd => 'Buka kunci dengan iklan';

  @override
  String get conversationHistoryTitle => 'Riwayat percakapan';

  @override
  String get noConversationsFound => 'Tidak ada percakapan yang ditemukan';

  @override
  String get errorLoadingHistory => 'Terjadi kesalahan saat memuat riwayat';

  @override
  String get deleteConversationTitle => 'Hapus percakapan';

  @override
  String get deleteConversationConfirm =>
      'Tindakan ini tidak dapat dibatalkan.';

  @override
  String get deleteConversation => 'Menghapus';

  @override
  String get subscription => 'Berlangganan';

  @override
  String get kipiListProActive => 'KipiList Pro Aktif';

  @override
  String get unlockPremiumTitle => 'Buka kunci Premium';

  @override
  String get loadingSubscription => 'Memuat langganan...';

  @override
  String get errorLoadingSubscription =>
      'Terjadi kesalahan saat memuat langganan';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Profil saya';

  @override
  String get profileSubtitle => 'Informasi profil Anda';

  @override
  String get customizeAiAssistant => 'Sesuaikan asisten AI';

  @override
  String get assistantHistory => 'Sejarah asisten';

  @override
  String get assistantHistorySubtitle => 'Lihat riwayat percakapan Anda';

  @override
  String get manageCategories => 'Kelola kategori';

  @override
  String get manageCategoriesSubtitle => 'Tambahkan, edit, atau hapus kategori';

  @override
  String get customizeAssistant => 'Sesuaikan';

  @override
  String get assistantName => 'Nama asisten';

  @override
  String get chooseIcon => 'Pilih ikon';

  @override
  String get profileSaved => 'Profil disimpan';

  @override
  String get errorSavingProfile => 'Terjadi kesalahan saat menyimpan profil';

  @override
  String get userProfile => 'Profil pengguna';

  @override
  String get profileDescription => 'Deskripsi profil';

  @override
  String get preferredMarket => 'Pasar pilihan';

  @override
  String get preferredMarketHint => 'Di mana biasanya Anda berbelanja?';

  @override
  String get dietaryRestrictions => 'Pembatasan diet';

  @override
  String get dietaryRestrictionsHint => 'Adakah pantangan makanan?';

  @override
  String get marketsToAvoid => 'Pasar yang harus dihindari';

  @override
  String get marketsToAvoidHint =>
      'Pasar yang Anda pilih untuk tidak berbelanja';

  @override
  String get observations => 'Pengamatan';

  @override
  String get observationsHint => 'Ada catatan tambahan?';

  @override
  String get saveProfile => 'Simpan profil';

  @override
  String get everythingReady => 'Semuanya siap!';

  @override
  String get youCompletedList => 'Anda menyelesaikan daftarnya!';

  @override
  String get selectCheaperAlternative => 'Pilih alternatif yang lebih murah';

  @override
  String get suggestedItems => 'Item yang disarankan';

  @override
  String get swapped => 'Bertukar';

  @override
  String get swap => 'Menukar';

  @override
  String get chooseThemeColor => 'Pilih warna tema';

  @override
  String get manageCategoriesTitle => 'Kelola Kategori';

  @override
  String get categoryLimitReached => 'Batas kategori tercapai';

  @override
  String get deleteCategoryTitle => 'Hapus kategori';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Item di \"$category\" akan dipindahkan ke \"Lainnya\".\nMelanjutkan?';
  }

  @override
  String get deleteCategory => 'Menghapus';

  @override
  String get newCategoryDialog => 'Kategori baru';

  @override
  String get editCategoryDialog => 'Sunting kategori';

  @override
  String get categoryName => 'Nama kategori';

  @override
  String get categoryNameHint => 'Masukkan nama kategori';

  @override
  String get categoryColorLabel => 'Warna';

  @override
  String get categoryIconLabel => 'Ikon';

  @override
  String itemAddedSnack(String name) {
    return '$name ditambahkan';
  }

  @override
  String get kipiQuickBarHint => 'Apa yang perlu Anda beli?';

  @override
  String replaceItem(String item) {
    return 'Ganti $item';
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
      'Jangan pernah melupakan barang belanjaan lagi';

  @override
  String get onboardingGoalSaveMoney => 'Menghemat uang';

  @override
  String get onboardingGoalNeverForget => 'Jangan pernah melupakan item';

  @override
  String get onboardingGoalFaster => 'Berbelanja lebih cepat';

  @override
  String get onboardingGoalFamily => 'Atur belanja keluarga';

  @override
  String get onboardingGoalRecipes => 'Temukan resep';

  @override
  String get onboardingGoalPantry => 'Lacak dapur';

  @override
  String get onboardingCommitmentsTitle => 'Apa yang penting bagi Anda?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Pilih tujuan Anda untuk mempersonalisasi KipiList';

  @override
  String get onboardingCommitmentsCta => 'Ayo pergi!';

  @override
  String get onboardingPersonalizationNameLabel => 'Namamu';

  @override
  String get onboardingPersonalizationNameHint => 'Masukkan nama Anda';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'Untuk apa kamu berbelanja?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Untuk siapa Anda berbelanja?';

  @override
  String get onboardingCategoryGrocery => 'Bahan makanan';

  @override
  String get onboardingCategoryPharmacy => 'Farmasi';

  @override
  String get onboardingCategoryRecipes => 'Resep';

  @override
  String get onboardingCategoryHome => 'Rumah';

  @override
  String get onboardingCategoryPet => 'Peliharaan';

  @override
  String get onboardingGroupSolo => 'Hanya aku';

  @override
  String get onboardingGroupCouple => 'Pasangan';

  @override
  String get onboardingGroupFamily => 'Keluarga';

  @override
  String get onboardingLoadingTitle => 'Mempersiapkan pengalaman Anda...';

  @override
  String get onboardingLoadingStep1 => 'Menganalisis preferensi Anda...';

  @override
  String get onboardingLoadingStep2 => 'Menyiapkan asisten AI...';

  @override
  String get onboardingLoadingStep3 => 'Hampir siap...';

  @override
  String get onboardingLoadingStat1Label => 'Item dikatalogkan';

  @override
  String get onboardingLoadingStat2Label => 'Pengguna membantu';

  @override
  String get onboardingLoadingStat3Label => 'Menit dihemat';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, hemat di setiap perjalanan!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, jangan pernah lupa satu item pun!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, berbelanja separuh waktu!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, atur belanja keluarga!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, temukan resep baru!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, lacak dapur Anda dengan sempurna!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Hemat di setiap perjalanan!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Jangan pernah melupakan satu item pun!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Berbelanja separuh waktu!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Atur belanja keluarga!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Temukan resep baru!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Lacak dapur Anda dengan sempurna!';

  @override
  String paywallPricePerDay(String price) {
    return 'Hanya $price/hari — kurang dari secangkir kopi';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Lewati untuk saat ini';

  @override
  String get paywallTestimonial =>
      'AI mengatur belanjaan saya dalam hitungan detik. Saya menghemat 20 menit per perjalanan.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Batalkan kapan saja · Tanpa biaya hingga uji coba Anda berakhir';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hai $name! $category apa yang Anda butuhkan?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return '$category apa yang Anda butuhkan?';
  }

  @override
  String get onboardingAiDemoYes => 'Ya!';

  @override
  String get onboardingAiDemoReaction => 'Bagus!';

  @override
  String get onboardingAiDemoChange => 'Ganti barang';

  @override
  String get onboardingAiDemoOffer => 'Coba ketik yang lain!';

  @override
  String get onboardingAiDemoContinue => 'Melanjutkan';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Daftar belanjaan Anda, kini dengan AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Lihat bagaimana Kipi menyusun daftar lengkap Anda dalam hitungan detik';

  @override
  String get onboardingAiDemoSlideCta => 'Saya ingin ini! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Saya mengadakan barbekyu 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Siap! Inilah semua yang Anda butuhkan:';

  @override
  String get onboardingAiDemoSlideDone =>
      'Daftar lengkap dalam hitungan detik ✨';

  @override
  String get onboardingPainTitle => 'Apa yang paling membuatmu frustrasi?';

  @override
  String get onboardingPainSubtitle =>
      'Jujur saja — kami akan memperbaikinya satu per satu';

  @override
  String get onboardingPainCta => 'Ya, perbaiki ini untuk saya →';

  @override
  String get onboardingPainForget => 'Saya lupa barang di toko';

  @override
  String get onboardingPainFamily =>
      'Keluarga saya tidak pernah melihat daftarnya';

  @override
  String get onboardingPainOverspend => 'Saya selalu melebihi anggaran';

  @override
  String get onboardingPainRepeat => 'Satu perjalanan tidak pernah cukup';
}
