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
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

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
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Semua yang Anda butuhkan:';

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
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

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
  String shareReferralText(Object url) {
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
  String get manageCategoriesTitle => 'Kelola Kategori';

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
