// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class AppLocalizationsLo extends AppLocalizations {
  AppLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get appTitle => 'ລາຍການຊື້ເຄື່ອງ';

  @override
  String get lists => 'ລາຍການ';

  @override
  String get pantry => 'ຕູ້ເຄື່ອງໃຊ້';

  @override
  String get cancel => 'ຍົກເລີກ';

  @override
  String get save => 'ບັນທຶກ';

  @override
  String get create => 'ສ້າງ';

  @override
  String get add => 'ເພີ່ມ';

  @override
  String get remove => 'ລຶບອອກ';

  @override
  String get delete => 'ລຶບ';

  @override
  String get edit => 'ແກ້ໄຂ';

  @override
  String get copy => 'ສຳເນົາ';

  @override
  String get retry => 'ລອງໃໝ່';

  @override
  String get regenerate => 'ສ້າງໃໝ່';

  @override
  String get copiedToClipboard => 'ສຳເນົາໄປທີ່ຄລິບບອດແລ້ວ';

  @override
  String get confirm => 'ຢືນຢັນ';

  @override
  String get close => 'ປິດ';

  @override
  String get import => 'ນຳເຂົ້າ';

  @override
  String get rename => 'ປ່ຽນຊື່';

  @override
  String get upgrade => 'ອັບເກຣດ';

  @override
  String get clear => 'ລ້າງ';

  @override
  String error(String message) {
    return 'ຂໍ້ຜິດພາດ: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'ຂໍ້ຜິດພາດ: $message';
  }

  @override
  String get purchaseError => 'ຂໍ້ຜິດພາດໃນການຊຳລະເງິນ. ກະລຸນາລອງໃໝ່.';

  @override
  String get restoreError => 'ຂໍ້ຜິດພາດໃນການກູ້ຄືນ. ກະລຸນາລອງໃໝ່.';

  @override
  String get loading => 'ກຳລັງໂຫຼດ...';

  @override
  String get fieldRequired => 'ຊ່ອງທີ່ຕ້ອງການ';

  @override
  String get addedFeedback => 'ເພີ່ມແລ້ວ!';

  @override
  String selectedItems(int count) {
    return 'ເລືອກ $count ລາຍການ';
  }

  @override
  String get estimated => 'ປະມານ';

  @override
  String get alreadyPurchased => 'ຊື້ແລ້ວ';

  @override
  String get clearList => 'ລ້າງລາຍການ';

  @override
  String get clearPurchased => 'ລ້າງທີ່ຊື້ແລ້ວ';

  @override
  String get share => 'ແບ່ງປັນ';

  @override
  String get shareViaCode => 'ແບ່ງປັນຜ່ານລະຫັດ';

  @override
  String get importViaCode => 'ນຳເຂົ້າຜ່ານລະຫັດ';

  @override
  String get listAssistant => 'ຜູ້ຊ່ວຍລາຍການ';

  @override
  String get globalAssistant => 'ຜູ້ຊ່ວຍທົ່ວໄປ';

  @override
  String get becomePremium => 'ກາຍເປັນ Premium';

  @override
  String get manageSubscription => 'ຈັດການການສະໝັກ';

  @override
  String get completePurchase => 'ຊຳລະເງິນໃຫ້ສຳເລັດ';

  @override
  String get confirmClearList => 'ລຶບທຸກລາຍການອອກ?';

  @override
  String get shareListTitle => 'ແບ່ງປັນລາຍການ';

  @override
  String get shareThisCode => 'ແບ່ງປັນລະຫັດນີ້:';

  @override
  String get validForLimitedTime => 'ໃຊ້ໄດ້ໃນເວລາຈຳກັດ';

  @override
  String get importListTitle => 'ນຳເຂົ້າລາຍການ';

  @override
  String get enterCodeHint => 'ປ້ອນລະຫັດ';

  @override
  String get confirmArchiveTitle => 'ຊຳລະເງິນໃຫ້ສຳເລັດ';

  @override
  String get confirmArchiveContent =>
      'ຊຳລະເງິນນີ້ໃຫ້ສຳເລັດ ແລະ ເກັບລາຍການໃສ່ບ່ອນເກັບ?';

  @override
  String get complete => 'ສຳເລັດ';

  @override
  String get listArchived => 'ເກັບລາຍການໃສ່ບ່ອນເກັບສຳເລັດແລ້ວ!';

  @override
  String listAdded(String listName) {
    return 'ເພີ່ມ $listName ແລ້ວ!';
  }

  @override
  String get buy => 'ຊື້';

  @override
  String get unmark => 'ຍົກເລີກເຄື່ອງໝາຍ';

  @override
  String confirmDeleteItems(int count) {
    return 'ລຶບ $count ລາຍການ?';
  }

  @override
  String get confirmDeleteTitle => 'ຢືນຢັນ';

  @override
  String confirmContent(int count) {
    return 'ລຶບ $count ລາຍການ?';
  }

  @override
  String get archiveList => 'ເກັບລາຍການ';

  @override
  String get pantryAppBar => 'ຕູ້ເຄື່ອງໃຊ້';

  @override
  String get generateShoppingList => 'ສ້າງລາຍການຊື້ເຄື່ອງ';

  @override
  String get pantryEmpty => 'ຕູ້ເຄື່ອງໃຊ້ວ່າງ';

  @override
  String get pantryEmptySubtitle => 'ເພີ່ມສິນຄ້າທີ່ທ່ານຕ້ອງການເກັບໄວ້ໃນເຮືອນ';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ລາຍການທີ່ຕ້ອງຊື້';
  }

  @override
  String get noItemsToBuy => 'ບໍ່ມີລາຍການທີ່ຕ້ອງຊື້';

  @override
  String get newPantryList => 'ຊື້ເຄື່ອງຈາກຕູ້ເຄື່ອງໃຊ້';

  @override
  String get newListTitle => 'ລາຍການຊື້ເຄື່ອງໃໝ່';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ລາຍການຈະຖືກເພີ່ມ';
  }

  @override
  String get listNameLabel => 'ຊື່ລາຍການ';

  @override
  String listCreated(String name, int count) {
    return 'ສ້າງລາຍການ \"$name\" ດ້ວຍ $count ລາຍການແລ້ວ';
  }

  @override
  String get noTracking => 'ບໍ່ຕິດຕາມ';

  @override
  String get markAsPurchased => 'ໝາຍວ່າຊື້ແລ້ວ';

  @override
  String editPantryItem(String name) {
    return 'ແກ້ໄຂ $name';
  }

  @override
  String get idealQuantity => 'ປະລິມານທີ່ຕ້ອງການ';

  @override
  String get currentQuantity => 'ປະລິມານປັດຈຸບັນ';

  @override
  String get consumed => 'ບໍລິໂພກແລ້ວ';

  @override
  String restocked(String name, int quantity, String unit) {
    return 'ເຕີມ $name ເປັນ $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'ລຶບ \"$name\" ອອກຈາກຕູ້ເຄື່ອງໃຊ້?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'ແກ້ໄຂ $name';
  }

  @override
  String get settingsAppBar => 'ການຕັ້ງຄ່າ';

  @override
  String get language => 'ພາສາ';

  @override
  String get languagePortuguese => 'ພາສາປອກຕຸຍການ (ບຣາຊິວ)';

  @override
  String get languageEnglish => 'ພາສາອັງກິດ';

  @override
  String get languageSystem => 'ຄ່າເລີ່ມຕົ້ນຂອງລະບົບ';

  @override
  String get appearance => 'ຮູບລັກສະນະ';

  @override
  String get light => 'ສະຫວ່າງ';

  @override
  String get system => 'ລະບົບ';

  @override
  String get dark => 'ມືດ';

  @override
  String get themeColor => 'ສີຊຸດຮູບແບບ';

  @override
  String get finance => 'ການເງິນ';

  @override
  String get monthlyBudgetNav => 'ງົບປະມານປະຈຳເດືອນ';

  @override
  String get budgetSubtitle => 'ຕິດຕາມການໃຊ້ຈ່າຍປະຈຳເດືອນຂອງທ່ານ';

  @override
  String get data => 'ຂໍ້ມູນ';

  @override
  String get backupNav => 'ສຳຮອງ';

  @override
  String get backupSubtitle => 'ສົ່ງອອກ ຫຼື ນຳເຂົ້າຂໍ້ມູນຂອງທ່ານ';

  @override
  String get about => 'ກ່ຽວກັບ';

  @override
  String get version => 'ເວີຊັນ';

  @override
  String get privacy => 'ຄວາມເປັນສ່ວນຕົວ';

  @override
  String get termsOfUse => 'ເງື່ອນໄຂການໃຊ້ງານ';

  @override
  String get backupTitle => 'ສຳຮອງ';

  @override
  String get backupPremiumDescription =>
      'ການສຳຮອງ ແລະ ສົ່ງອອກແມ່ນຟີເຈີຣ໌ Premium';

  @override
  String get exportData => 'ສົ່ງອອກຂໍ້ມູນ';

  @override
  String get exportDataSubtitle => 'ບັນທຶກທຸກລາຍການເປັນ JSON';

  @override
  String get importData => 'ນຳເຂົ້າຂໍ້ມູນ';

  @override
  String get importDataSubtitle => 'ກູ້ຄືນລາຍການຈາກ JSON';

  @override
  String get importJsonTitle => 'ນຳເຂົ້າ JSON';

  @override
  String get importJsonHint => 'ວາງ JSON ສຳຮອງບ່ອນນີ້...';

  @override
  String get backupExported => 'ສົ່ງອອກສຳຮອງແລ້ວ!';

  @override
  String get budgetAppBar => 'ງົບປະມານປະຈຳເດືອນ';

  @override
  String get budgetPremiumLocked => 'ງົບປະມານປະຈຳເດືອນທົ່ວໄປແມ່ນ Premium';

  @override
  String get budgetUpgradePrompt => 'ອັບເກຣດເພື່ອປົດລັອກ';

  @override
  String get noBudgetDefined => 'ບໍ່ໄດ້ຕັ້ງງົບປະມານ';

  @override
  String totalEstimated(String amount) {
    return 'ປະມານລວມ: $amount';
  }

  @override
  String get setBudgetButton => 'ຕັ້ງງົບປະມານ';

  @override
  String get budgetLists => 'ລາຍການ';

  @override
  String get budgetValueLabel => 'ຈຳນວນເງິນ';

  @override
  String get setBudgetTitle => 'ງົບປະມານປະຈຳເດືອນ';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'ທັງໝົດ';

  @override
  String get filterPending => 'ທີ່ລໍຖ້າ';

  @override
  String get filterPurchased => 'ຊື້ແລ້ວ';

  @override
  String get sortName => 'ຊື່';

  @override
  String get sortCategory => 'ໝວດ';

  @override
  String get sortDate => 'ວັນທີ';

  @override
  String get sortManual => 'ດ້ວຍມື';

  @override
  String get addItem => 'ເພີ່ມລາຍການ';

  @override
  String get itemName => 'ຊື່ລາຍການ';

  @override
  String get quantityShort => 'ຈຳນວນ';

  @override
  String get unit => 'ຫົວໜ່ວຍ';

  @override
  String get category => 'ໝວດ';

  @override
  String get estimatedPrice => 'ລາຄາປະມານ';

  @override
  String get addItemPrice => 'ລາຄາປະມານ';

  @override
  String get editItem => 'ແກ້ໄຂລາຍການ';

  @override
  String get quantityFull => 'ຈຳນວນ';

  @override
  String get editItemPrice => 'ລາຄາປະມານ';

  @override
  String get addToPantry => 'ເພີ່ມໃສ່ຕູ້ເຄື່ອງໃຊ້';

  @override
  String addToPantryPrompt(String name) {
    return 'ເພີ່ມ \"$name\" ໃສ່ຕູ້ເຄື່ອງໃຊ້ຂອງທ່ານ?';
  }

  @override
  String get yes => 'ແມ່ນ';

  @override
  String get productName => 'ຊື່ສິນຄ້າ';

  @override
  String get idealQty => 'ຈຳນວນທີ່ຕ້ອງການ';

  @override
  String get currentQty => 'ຈຳນວນປັດຈຸບັນ';

  @override
  String get trackStock => 'ຕິດຕາມສະຕັອກ';

  @override
  String get trackStockActive => 'ສະແດງໃນຄຳແນະນຳການຊື້ເຄື່ອງ';

  @override
  String get trackStockInactive => 'ບໍ່ສ້າງຄຳແນະນຳການຊື້ເຄື່ອງ';

  @override
  String get createListDialog => 'ສ້າງລາຍການ';

  @override
  String get renameListDialog => 'ປ່ຽນຊື່ລາຍການ';

  @override
  String get listHistory => 'ປະຫວັດລາຍການ';

  @override
  String get myLists => 'ລາຍການຂອງຂ້ອຍ';

  @override
  String get viewActive => 'ເບິ່ງທີ່ໃຊ້ງານ';

  @override
  String get viewHistory => 'ເບິ່ງປະຫວັດ';

  @override
  String get noArchivedLists => 'ບໍ່ມີລາຍການທີ່ເກັບໄວ້';

  @override
  String get noActiveLists => 'ບໍ່ມີລາຍການທີ່ໃຊ້ງານ';

  @override
  String completedOn(String date) {
    return 'ສຳເລັດເມື່ອ $date';
  }

  @override
  String get sharedLabel => 'ແບ່ງປັນ';

  @override
  String get restore => 'ກູ້ຄືນ';

  @override
  String get removeSharedTooltip => 'ລຶບອອກ';

  @override
  String get deleteListTitle => 'ລຶບລາຍການ';

  @override
  String deleteListContent(String name) {
    return 'ທ່ານແນ່ໃຈບໍ່ວ່າຕ້ອງການລຶບ \"$name\"? ທຸກລາຍການຈະຖືກລຶບອອກ.';
  }

  @override
  String get removeSharedListTitle => 'ລຶບລາຍການທີ່ແບ່ງປັນ';

  @override
  String removeSharedListContent(String name) {
    return 'ລຶບ \"$name\" ອອກຈາກລາຍການຂອງທ່ານ? ລາຍການຕົ້ນສະບັບຈະບໍ່ຖືກກະທົບ.';
  }

  @override
  String get createNewList => 'ສ້າງລາຍການໃໝ່';

  @override
  String get aiAssistant => 'ຜູ້ຊ່ວຍ AI';

  @override
  String get aiAssistantDescription =>
      'ຮັບຄຳແນະນຳອັດສະລິຍະ ສູດອາຫານ ແລະ ຄຳແນະນຳສ່ວນຕົວກັບຜູ້ຊ່ວຍ AI ຂອງພວກເຮົາ.';

  @override
  String get generalAssistant => 'ຜູ້ຊ່ວຍທົ່ວໄປ';

  @override
  String get clearHistory => 'ລ້າງປະຫວັດ';

  @override
  String get clearHistoryConfirm => 'ລ້າງຂໍ້ຄວາມທັງໝົດໃນເຊສຊັນນີ້?';

  @override
  String get chatHint => 'ພິມຂໍ້ຄວາມຂອງທ່ານ...';

  @override
  String chatError(String error) {
    return 'ຂໍ້ຜິດພາດໃນການໂຫຼດການສົນທະນາ: $error';
  }

  @override
  String get listHelp => 'ຂ້ອຍສາມາດຊ່ວຍທ່ານກ່ຽວກັບລາຍການຂອງທ່ານແນວໃດ?';

  @override
  String get generalHelp => 'ຂ້ອຍສາມາດຊ່ວຍທ່ານກ່ຽວກັບການຊື້ເຄື່ອງມື້ນີ້ແນວໃດ?';

  @override
  String get chatSubtitle =>
      'ຖາມຫາຄຳແນະນຳລາຍການ ສູດອາຫານ ຫຼື ຄຳແນະນຳການປະຫຍັດເງິນ.';

  @override
  String get aiError =>
      'ຂໍອະໄພ ມີຂໍ້ຜິດພາດໃນການດຳເນີນການຕາມຄຳຂໍຂອງທ່ານ. ກະລຸນາກວດສອບການເຊື່ອມຕໍ່ ຫຼື ລອງໃໝ່ພາຍຫຼັງ.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'ເຂົ້າສູ່ລະບົບເພື່ອປົດລັອກ\nຟີເຈີຣ໌ Premium';

  @override
  String get signInGoogle => 'ເຂົ້າສູ່ລະບົບດ້ວຍ Google';

  @override
  String get signInApple => 'ເຂົ້າສູ່ລະບົບດ້ວຍ Apple';

  @override
  String get continueAsGuest => 'ສືບຕໍ່ໃນຖານະແຂກ';

  @override
  String loginError(String error) {
    return 'ຂໍ້ຜິດພາດໃນການເຂົ້າສູ່ລະບົບ: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'ອັບເກຣດເພື່ອປົດລັອກ';

  @override
  String get itemRemoved => 'ລາຍການຖືກລຶບອອກ';

  @override
  String get undo => 'ຍົກເລີກ';

  @override
  String get emptyListTitle => 'ລາຍການຂອງທ່ານວ່າງ';

  @override
  String get emptyListSubtitle => 'ເພີ່ມລາຍການເພື່ອເລີ່ມຕົ້ນ';

  @override
  String get noListFoundTitle => 'ບໍ່ພົບລາຍການ';

  @override
  String get noListFoundSubtitle => 'ສ້າງລາຍການທຳອິດຂອງທ່ານເພື່ອເລີ່ມຕົ້ນ';

  @override
  String get createFirstList => 'ສ້າງລາຍການທຳອິດ';

  @override
  String get listBudgetTitle => 'ງົບປະມານລາຍການ';

  @override
  String get budgetAmountLabel => 'ຈຳນວນງົບປະມານ';

  @override
  String get removeBudget => 'ລຶບອອກ';

  @override
  String get prefUnlimitedLists => 'ລາຍການບໍ່ຈຳກັດ';

  @override
  String get prefSharing => 'ແບ່ງປັນລາຍການ';

  @override
  String get prefFullHistory => 'ປະຫວັດເຕັມ';

  @override
  String get prefExportData => 'ສົ່ງອອກຂໍ້ມູນ';

  @override
  String get prefCustomThemes => 'ຊຸດຮູບແບບທີ່ກຳນົດເອງ';

  @override
  String get prefMonthlyBudget => 'ງົບປະມານປະຈຳເດືອນທົ່ວໄປ';

  @override
  String get prefAIAssistant => 'ຜູ້ຊ່ວຍ AI ສ່ວນຕົວ';

  @override
  String get prefUnlimitedPantry => 'ຕູ້ເຄື່ອງໃຊ້ບໍ່ຈຳກັດ';

  @override
  String get prefInteractiveArtifacts => 'AI Artifacts ແບບໂຕ້ຕອບ';

  @override
  String get themeGreen => 'ຂຽວ';

  @override
  String get themeBlue => 'ຟ້າ';

  @override
  String get themePurple => 'ມ່ວງ';

  @override
  String get themeRed => 'ແດງ';

  @override
  String get themeOrange => 'ສົ້ມ';

  @override
  String get themePink => 'ບົວ';

  @override
  String get themeIndigo => 'ຄາມ';

  @override
  String get themeAmber => 'ອຳພັນ';

  @override
  String get themeTeal => 'ຂຽວຟ້າ';

  @override
  String get themeBrown => 'ນ້ຳຕານ';

  @override
  String get catFruits => 'ໝາກໄມ້';

  @override
  String get catCleaning => 'ທຳຄວາມສະອາດ';

  @override
  String get catBeverages => 'ເຄື່ອງດື່ມ';

  @override
  String get catBakery => 'ເບເກີຣີ';

  @override
  String get catOthers => 'ອື່ນໆ';

  @override
  String get unitPack => 'ຊອງ';

  @override
  String get shareSubject => 'ລາຍການຊື້ເຄື່ອງ';

  @override
  String get monthlyBudgetTitle => 'ງົບປະມານປະຈຳເດືອນ';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'ລຶບລາຍການ';

  @override
  String get pantryItemRemoved => 'ລາຍການຖືກລຶບອອກ';

  @override
  String deficitItems(int deficit) {
    return '$deficit ລາຍການທີ່ຕ້ອງຊື້';
  }

  @override
  String get cartTotal => 'ລວມກະຕ່າ';

  @override
  String get restockLabel => 'ເຕີມສະຕັອກ';

  @override
  String get advancedFeatures => 'ຟີເຈີຣ໌ຂັ້ນສູງ';

  @override
  String get selectAll => 'ເລືອກທັງໝົດ';

  @override
  String get deselectAll => 'ຍົກເລີກການເລືອກທັງໝົດ';

  @override
  String get monthlyBudgetAppBar => 'ງົບປະມານປະຈຳເດືອນ';

  @override
  String get budgetEditTitle => 'ງົບປະມານປະຈຳເດືອນ';

  @override
  String get budgetDashboardTitle => 'ແດດຊະບອດ';

  @override
  String get selectListForDashboard => 'ເລືອກລາຍການເພື່ອເບິ່ງແດດຊະບອດ.';

  @override
  String get spendingAnalysis => 'ການວິເຄາະການໃຊ້ຈ່າຍ';

  @override
  String get noItemsToAnalyze => 'ບໍ່ມີລາຍການໃນລາຍການເພື່ອວິເຄາະ.';

  @override
  String get markItemsToSeeAnalysis =>
      'ໝາຍລາຍການວ່າຊື້ແລ້ວເພື່ອເບິ່ງການວິເຄາະ.';

  @override
  String get totalSpending => 'ການໃຊ້ຈ່າຍທັງໝົດ';

  @override
  String get spendingByCategory => 'ການໃຊ້ຈ່າຍຕາມໝວດ';

  @override
  String get achievements => 'ຜົນສຳເລັດ';

  @override
  String get exportPdfExcel => 'ສົ່ງອອກ PDF/Excel';

  @override
  String get exportPdf => 'ສົ່ງອອກເປັນ PDF';

  @override
  String get exportExcel => 'ສົ່ງອອກເປັນ Excel';

  @override
  String get organizingAi => 'ກຳລັງຈັດລະບຽບດ້ວຍ AI...';

  @override
  String get yesLabel => 'ແມ່ນ';

  @override
  String get noLabel => 'ບໍ່';

  @override
  String get shareListText => 'ລາຍການຊື້ເຄື່ອງຂອງຂ້ອຍ';

  @override
  String get emptyListAddItems => 'ລາຍການຂອງທ່ານວ່າງ! ເພີ່ມລາຍການກ່ອນ.';

  @override
  String get listOrganizedMagic => 'ລາຍການຖືກຈັດລະບຽບຕາມໝວດຢ່າງມະຫັດສະຈັນ!';

  @override
  String get shoppingMode => 'ໂໝດຊື້ເຄື່ອງ';

  @override
  String get smartOrganization => 'ການຈັດລະບຽບອັດສະລິຍະ';

  @override
  String get savings => 'ການປະຫຍັດ';

  @override
  String get shoppingModeHeader => 'ໂໝດຊື້ເຄື່ອງ';

  @override
  String get shareAsText => 'ສົ່ງລາຍການເປັນຂໍ້ຄວາມທີ່ຈັດຮູບແບບ';

  @override
  String get shareRealtime => 'ຊິງຄ໌ແບບສົດໆກັບຜູ້ອື່ນ';

  @override
  String get quickRecipe => 'ສູດອາຫານດ່ວນ';

  @override
  String get quickRecipePrompt => 'ແນະນຳສູດອາຫານດ້ວຍລາຍການຈາກລາຍການຂອງຂ້ອຍ.';

  @override
  String get economyTips => 'ຄຳແນະນຳການປະຫຍັດ';

  @override
  String get economyTipsPrompt => 'ຂ້ອຍຈະປະຫຍັດເງິນໃນການຊື້ນີ້ໄດ້ແນວໃດ?';

  @override
  String get organizeAisles => 'ຈັດລະບຽບຕາມແຖວ';

  @override
  String get organizeAislesPrompt => 'ຈັດລະບຽບຕາມແຖວຕະຫຼາດ.';

  @override
  String get recipeSuggestion => 'ຄຳແນະນຳສູດອາຫານ';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'ຍັງເຫຼືອ $remaining ເຄຣດິດ';
  }

  @override
  String get addAllToList => 'ເພີ່ມທັງໝົດໃສ່ລາຍການ';

  @override
  String get organizeByAisles => 'ຈັດລະບຽບຕາມແຖວ';

  @override
  String get voiceTranscriptionTooltip => 'ພິມດ້ວຍສຽງ (ຟຣີ)';

  @override
  String get aiVoiceCommandTooltip => 'ຄຳສັ່ງສຽງ AI (Premium)';

  @override
  String get voiceCommandTitle => 'ຄຳສັ່ງສຽງ AI';

  @override
  String get voiceCommandContent =>
      'ເວົ້າຢ່າງທຳມະຊາດເພື່ອຈັດການລາຍການຂອງທ່ານ!\n\nຕົວຢ່າງ:\n• \'ເພີ່ມເຂົ້າຈີ່ ເນີຍແຂງ ແລະ ແຮມ\'\n• \'ລຶບຜົງຊັກຟອກ\'\n• \'ປ່ຽນຊຸດຮູບແບບເປັນສີຟ້າ\'\n\nນີ້ແມ່ນຟີເຈີຣ໌ສະເພາະຂອງ Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'ເບິ່ງແຜນ';

  @override
  String get itemsAddedSuccess => 'ເພີ່ມລາຍການໃສ່ລາຍການສຳເລັດແລ້ວ!';

  @override
  String get viewList => 'ເບິ່ງລາຍການ';

  @override
  String get feedbackTitle => 'ສົ່ງຄຳຕິຊົມ';

  @override
  String get feedbackPrompt => 'ທ່ານຕ້ອງການແບ່ງປັນຫຍັງ?';

  @override
  String get feedbackTypeBug => 'ລາຍງານຂໍ້ຜິດພາດ';

  @override
  String get feedbackTypeBugHint => 'ບາງຢ່າງບໍ່ຖືກຕ້ອງ';

  @override
  String get feedbackTypeSuggestion => 'ຄຳແນະນຳ';

  @override
  String get feedbackTypeSuggestionHint => 'ແນວຄວາມຄິດເພື່ອປັບປຸງແອັບ';

  @override
  String get feedbackTypeTranslation => 'ບັນຫາການແປ';

  @override
  String get feedbackTypeTranslationHint => 'ການແປບໍ່ຖືກຕ້ອງ ຫຼື ບໍ່ເໝາະສົມ';

  @override
  String get feedbackTypeFeature => 'ຂໍຟີເຈີຣ໌';

  @override
  String get feedbackTypeFeatureHint => 'ຟີເຈີຣ໌ທີ່ທ່ານຢາກເຫັນ';

  @override
  String get feedbackTypeOther => 'ອື່ນໆ';

  @override
  String get feedbackTypeOtherHint => 'ຄຳຕິຊົມປະເພດອື່ນ';

  @override
  String get feedbackHint => 'ອະທິບາຍຄຳຕິຊົມຂອງທ່ານໃຫ້ລະອຽດ...';

  @override
  String get feedbackSend => 'ສົ່ງຄຳຕິຊົມ';

  @override
  String get feedbackSending => 'ກຳລັງສົ່ງ...';

  @override
  String get feedbackThankYou => 'ຂອບໃຈ!';

  @override
  String get feedbackThankYouMessage =>
      'ຄຳຕິຊົມຂອງທ່ານໄດ້ຮັບແລ້ວ ແລະ ຊ່ວຍພວກເຮົາປັບປຸງ Lista Plus ສຳລັບທຸກຄົນ.';

  @override
  String get feedbackBack => 'ກັບ';

  @override
  String feedbackError(String error) {
    return 'ຂໍ້ຜິດພາດໃນການສົ່ງ: $error';
  }

  @override
  String get feedbackRetry => 'ລອງໃໝ່';

  @override
  String get feedbackSettingsTitle => 'ສົ່ງຄຳຕິຊົມ';

  @override
  String get feedbackSettingsSubtitle =>
      'ລາຍງານຂໍ້ຜິດພາດ, ແນະນຳການປັບປຸງ, ຫຼື ແກ້ໄຂການແປ';

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

/// The translations for Lao, as used in the Lao People's Democratic Republic (`lo_LA`).
class AppLocalizationsLoLa extends AppLocalizationsLo {
  AppLocalizationsLoLa() : super('lo_LA');

  @override
  String get appTitle => 'ລາຍການຊື້ເຄື່ອງ';

  @override
  String get lists => 'ລາຍການ';

  @override
  String get pantry => 'ຕູ້ເກັບອາຫານ';

  @override
  String get cancel => 'ຍົກເລີກ';

  @override
  String get save => 'ບັນທຶກ';

  @override
  String get create => 'ສ້າງ';

  @override
  String get add => 'ເພີ່ມ';

  @override
  String get remove => 'ລຶບອອກ';

  @override
  String get delete => 'ລຶບ';

  @override
  String get edit => 'ແກ້ໄຂ';

  @override
  String get copy => 'ສຳເນົາ';

  @override
  String get retry => 'ລອງໃໝ່';

  @override
  String get regenerate => 'ສ້າງໃໝ່';

  @override
  String get copiedToClipboard => 'ສຳເນົາໃສ່ຄລິບບອດແລ້ວ';

  @override
  String get confirm => 'ຢືນຢັນ';

  @override
  String get close => 'ປິດ';

  @override
  String get import => 'ນຳເຂົ້າ';

  @override
  String get rename => 'ປ່ຽນຊື່';

  @override
  String get upgrade => 'ອັບເກຣດ';

  @override
  String get clear => 'ລ້າງ';

  @override
  String error(String message) {
    return 'ຂໍ້ຜິດພາດ: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'ຂໍ້ຜິດພາດ: $message';
  }

  @override
  String get purchaseError => 'ມີຂໍ້ຜິດພາດໃນການດຳເນີນການຊື້. ກະລຸນາລອງໃໝ່.';

  @override
  String get restoreError => 'ມີຂໍ້ຜິດພາດໃນການກູ້ຄືນການຊື້. ກະລຸນາລອງໃໝ່.';

  @override
  String get loading => 'ກຳລັງໂຫຼດ...';

  @override
  String get fieldRequired => 'ຊ່ອງທີ່ຕ້ອງການ';

  @override
  String get addedFeedback => 'ເພີ່ມແລ້ວ!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ຖືກເລືອກ',
      one: '$count ຖືກເລືອກ',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'ປະມານ';

  @override
  String get alreadyPurchased => 'ຊື້ແລ້ວ';

  @override
  String get clearList => 'ລ້າງລາຍການ';

  @override
  String get clearPurchased => 'ລ້າງທີ່ຊື້ແລ້ວ';

  @override
  String get share => 'ແບ່ງປັນ';

  @override
  String get shareViaCode => 'ແບ່ງປັນຜ່ານລະຫັດ';

  @override
  String get importViaCode => 'ນຳເຂົ້າຜ່ານລະຫັດ';

  @override
  String get listAssistant => 'ຜູ້ຊ່ວຍລາຍການ';

  @override
  String get globalAssistant => 'ຜູ້ຊ່ວຍທົ່ວໂລກ';

  @override
  String get becomePremium => 'ກາຍເປັນ Premium';

  @override
  String get manageSubscription => 'ຈັດການການສະໝັກ';

  @override
  String get completePurchase => 'ສຳເລັດການຊື້';

  @override
  String get confirmClearList => 'ລຶບລາຍການທັງໝົດ?';

  @override
  String get shareListTitle => 'ແບ່ງປັນລາຍການ';

  @override
  String get shareThisCode => 'ແບ່ງປັນລະຫັດນີ້:';

  @override
  String get validForLimitedTime => 'ໃຊ້ໄດ້ໃນເວລາຈຳກັດ';

  @override
  String get importListTitle => 'ນຳເຂົ້າລາຍການ';

  @override
  String get enterCodeHint => 'ໃສ່ລະຫັດ';

  @override
  String get confirmArchiveTitle => 'ສຳເລັດການຊື້';

  @override
  String get confirmArchiveContent => 'ສຳເລັດການຊື້ນີ້ ແລະເກັບລາຍການໄວ້?';

  @override
  String get complete => 'ສຳເລັດ';

  @override
  String get listArchived => 'ເກັບລາຍການໄວ້ສຳເລັດ!';

  @override
  String listAdded(String listName) {
    return '$listName ເພີ່ມແລ້ວ!';
  }

  @override
  String get buy => 'ຊື້';

  @override
  String get unmark => 'ຍົກເລີກເຄື່ອງໝາຍ';

  @override
  String confirmDeleteItems(int count) {
    return 'ລຶບ $count ລາຍການ?';
  }

  @override
  String get confirmDeleteTitle => 'ຢືນຢັນ';

  @override
  String confirmContent(int count) {
    return 'ລຶບ $count ລາຍການ?';
  }

  @override
  String get archiveList => 'ເກັບລາຍການໄວ້';

  @override
  String get pantryAppBar => 'ຕູ້ເກັບອາຫານ';

  @override
  String get generateShoppingList => 'ສ້າງລາຍການຊື້ເຄື່ອງ';

  @override
  String get pantryEmpty => 'ຕູ້ເກັບອາຫານຫວ່າງ';

  @override
  String get pantryEmptySubtitle =>
      'ເພີ່ມຜະລິດຕະພັນທີ່ທ່ານຕ້ອງການເກັບໄວ້ທີ່ບ້ານ';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ລາຍການທີ່ຕ້ອງຊື້';
  }

  @override
  String get noItemsToBuy => 'ບໍ່ມີລາຍການທີ່ຕ້ອງຊື້';

  @override
  String get newPantryList => 'ຊື້ເຄື່ອງເພີ່ມເຕີມ';

  @override
  String get newListTitle => 'ລາຍການຊື້ເຄື່ອງໃໝ່';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ລາຍການຈະຖືກເພີ່ມ';
  }

  @override
  String get listNameLabel => 'ຊື່ລາຍການ';

  @override
  String listCreated(String name, int count) {
    return 'ລາຍການ \"$name\" ຖືກສ້າງດ້ວຍ $count ລາຍການ';
  }

  @override
  String get noTracking => 'ບໍ່ຕິດຕາມ';

  @override
  String get markAsPurchased => 'ໝາຍວ່າຊື້ແລ້ວ';

  @override
  String editPantryItem(String name) {
    return 'ແກ້ໄຂ $name';
  }

  @override
  String get idealQuantity => 'ປະລິມານທີ່ເໝາະສົມ';

  @override
  String get currentQuantity => 'ປະລິມານປັດຈຸບັນ';

  @override
  String get consumed => 'ບໍລິໂພກແລ້ວ';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name ຖືກເພີ່ມເຕີມເປັນ $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'ລຶບ \"$name\" ອອກຈາກຕູ້ເກັບອາຫານ?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'ແກ້ໄຂ $name';
  }

  @override
  String get settingsAppBar => 'ການຕັ້ງຄ່າ';

  @override
  String get language => 'ພາສາ';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'ຄ່າເລີ່ມຕົ້ນຂອງລະບົບ';

  @override
  String get appearance => 'ຮູບລັກສະນະ';

  @override
  String get light => 'ສະຫວ່າງ';

  @override
  String get system => 'ລະບົບ';

  @override
  String get dark => 'ມືດ';

  @override
  String get themeColor => 'ສີຊຸດຮູບແບບ';

  @override
  String get finance => 'ການເງິນ';

  @override
  String get monthlyBudgetNav => 'ງົບປະມານປະຈຳເດືອນ';

  @override
  String get budgetSubtitle => 'ຕິດຕາມການໃຊ້ຈ່າຍປະຈຳເດືອນຂອງທ່ານ';

  @override
  String get data => 'ຂໍ້ມູນ';

  @override
  String get backupNav => 'ສຳຮອງ';

  @override
  String get backupSubtitle => 'ສົ່ງອອກ ຫຼື ນຳເຂົ້າຂໍ້ມູນຂອງທ່ານ';

  @override
  String get about => 'ກ່ຽວກັບ';

  @override
  String get version => 'ຮຸ່ນ';

  @override
  String get privacy => 'ຄວາມເປັນສ່ວນຕົວ';

  @override
  String get termsOfUse => 'ເງື່ອນໄຂການໃຊ້ງານ';

  @override
  String get backupTitle => 'ສຳຮອງ';

  @override
  String get backupPremiumDescription =>
      'ການສຳຮອງ ແລະ ສົ່ງອອກແມ່ນຄຸນສົມບັດພິເສດ';

  @override
  String get exportData => 'ສົ່ງອອກຂໍ້ມູນ';

  @override
  String get exportDataSubtitle => 'ບັນທຶກລາຍການທັງໝົດເປັນ JSON';

  @override
  String get importData => 'ນຳເຂົ້າຂໍ້ມູນ';

  @override
  String get importDataSubtitle => 'ກູ້ຄືນລາຍການຈາກ JSON';

  @override
  String get importJsonTitle => 'ນຳເຂົ້າ JSON';

  @override
  String get importJsonHint => 'ວາງ JSON ສຳຮອງທີ່ນີ້...';

  @override
  String get backupExported => 'ສົ່ງອອກສຳຮອງແລ້ວ!';

  @override
  String get budgetAppBar => 'ງົບປະມານປະຈຳເດືອນ';

  @override
  String get budgetPremiumLocked =>
      'ງົບປະມານປະຈຳເດືອນທົ່ວໂລກແມ່ນຄຸນສົມບັດພິເສດ';

  @override
  String get budgetUpgradePrompt => 'ອັບເກຣດເພື່ອປົດລັອກ';

  @override
  String get noBudgetDefined => 'ຍັງບໍ່ໄດ້ຕັ້ງງົບປະມານ';

  @override
  String totalEstimated(String amount) {
    return 'ລວມປະມານ: $amount';
  }

  @override
  String get setBudgetButton => 'ຕັ້ງງົບປະມານ';

  @override
  String get budgetLists => 'ລາຍການ';

  @override
  String get budgetValueLabel => 'ຈຳນວນເງິນ';

  @override
  String get setBudgetTitle => 'ງົບປະມານປະຈຳເດືອນ';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'ທັງໝົດ';

  @override
  String get filterPending => 'ທີ່ລໍຖ້າ';

  @override
  String get filterPurchased => 'ຊື້ແລ້ວ';

  @override
  String get sortName => 'ຊື່';

  @override
  String get sortCategory => 'ໝວດ';

  @override
  String get sortDate => 'ວັນທີ';

  @override
  String get sortManual => 'ດ້ວຍມື';

  @override
  String get addItem => 'ເພີ່ມລາຍການ';

  @override
  String get itemName => 'ຊື່ລາຍການ';

  @override
  String get quantityShort => 'ຈຳນວນ';

  @override
  String get unit => 'ຫົວໜ່ວຍ';

  @override
  String get category => 'ໝວດ';

  @override
  String get estimatedPrice => 'ລາຄາປະມານ';

  @override
  String get addItemPrice => 'ລາຄາປະມານ';

  @override
  String get editItem => 'ແກ້ໄຂລາຍການ';

  @override
  String get quantityFull => 'ປະລິມານ';

  @override
  String get editItemPrice => 'ລາຄາປະມານ';

  @override
  String get addToPantry => 'ເພີ່ມໃສ່ຕູ້ເກັບອາຫານ';

  @override
  String addToPantryPrompt(String name) {
    return 'ເພີ່ມ \"$name\" ໃສ່ຕູ້ເກັບອາຫານຂອງທ່ານ?';
  }

  @override
  String get yes => 'ແມ່ນ';

  @override
  String get productName => 'ຊື່ຜະລິດຕະພັນ';

  @override
  String get idealQty => 'ຈຳນວນທີ່ເໝາະສົມ';

  @override
  String get currentQty => 'ຈຳນວນປັດຈຸບັນ';

  @override
  String get trackStock => 'ຕິດຕາມສະຕັອກ';

  @override
  String get trackStockActive => 'ສະແດງໃນຄຳແນະນຳການຊື້ເຄື່ອງ';

  @override
  String get trackStockInactive => 'ບໍ່ສ້າງຄຳແນະນຳການຊື້ເຄື່ອງ';

  @override
  String get createListDialog => 'ສ້າງລາຍການ';

  @override
  String get renameListDialog => 'ປ່ຽນຊື່ລາຍການ';

  @override
  String get listHistory => 'ປະຫວັດລາຍການ';

  @override
  String get myLists => 'ລາຍການຂອງຂ້ອຍ';

  @override
  String get viewActive => 'ເບິ່ງທີ່ໃຊ້ງານ';

  @override
  String get viewHistory => 'ເບິ່ງປະຫວັດ';

  @override
  String get noArchivedLists => 'ບໍ່ມີລາຍການທີ່ເກັບໄວ້';

  @override
  String get noActiveLists => 'ບໍ່ມີລາຍການທີ່ໃຊ້ງານ';

  @override
  String completedOn(String date) {
    return 'ສຳເລັດເມື່ອ $date';
  }

  @override
  String get sharedLabel => 'ແບ່ງປັນ';

  @override
  String get restore => 'ກູ້ຄືນ';

  @override
  String get removeSharedTooltip => 'ລຶບອອກ';

  @override
  String get deleteListTitle => 'ລຶບລາຍການ';

  @override
  String deleteListContent(String name) {
    return 'ທ່ານແນ່ໃຈບໍ່ວ່າຕ້ອງການລຶບ \"$name\"? ລາຍການທັງໝົດຈະຖືກລຶບ.';
  }

  @override
  String get removeSharedListTitle => 'ລຶບລາຍການທີ່ແບ່ງປັນ';

  @override
  String removeSharedListContent(String name) {
    return 'ລຶບ \"$name\" ອອກຈາກລາຍການຂອງທ່ານ? ລາຍການຕົ້ນສະບັບຈະບໍ່ຖືກກະທົບ.';
  }

  @override
  String get createNewList => 'ສ້າງລາຍການໃໝ່';

  @override
  String get aiAssistant => 'ຜູ້ຊ່ວຍ AI';

  @override
  String get aiAssistantDescription =>
      'ຮັບຄຳແນະນຳອັດສະລິຍະ, ສູດອາຫານ ແລະ ຄຳແນະນຳສ່ວນຕົວກັບຜູ້ຊ່ວຍ AI ຂອງພວກເຮົາ.';

  @override
  String get generalAssistant => 'ຜູ້ຊ່ວຍທົ່ວໄປ';

  @override
  String get clearHistory => 'ລ້າງປະຫວັດ';

  @override
  String get clearHistoryConfirm => 'ລ້າງຂໍ້ຄວາມທັງໝົດໃນເຊສຊັນນີ້?';

  @override
  String get chatHint => 'ພິມຂໍ້ຄວາມຂອງທ່ານ...';

  @override
  String chatError(String error) {
    return 'ຂໍ້ຜິດພາດໃນການໂຫຼດສົນທະນາ: $error';
  }

  @override
  String get listHelp => 'ຂ້ອຍຈະຊ່ວຍລາຍການຂອງທ່ານແນວໃດ?';

  @override
  String get generalHelp => 'ຂ້ອຍຈະຊ່ວຍການຊື້ເຄື່ອງຂອງທ່ານມື້ນີ້ແນວໃດ?';

  @override
  String get chatSubtitle => 'ຖາມຫາຄຳແນະນຳລາຍການ, ສູດອາຫານ ຫຼື ຄຳແນະນຳປະຢັດ.';

  @override
  String get aiError =>
      'ຂໍອະໄພ, ເກີດຂໍ້ຜິດພາດໃນການດຳເນີນການຄຳຮ້ອງຂອງທ່ານ. ກະລຸນາກວດສອບການເຊື່ອມຕໍ່ ຫຼື ລອງໃໝ່ພາຍຫຼັງ.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'ເຂົ້າສູ່ລະບົບເພື່ອປົດລັອກ\nຄຸນສົມບັດພິເສດ';

  @override
  String get signInGoogle => 'ເຂົ້າສູ່ລະບົບດ້ວຍ Google';

  @override
  String get signInApple => 'ເຂົ້າສູ່ລະບົບດ້ວຍ Apple';

  @override
  String get continueAsGuest => 'ສືບຕໍ່ເປັນແຂກ';

  @override
  String loginError(String error) {
    return 'ຂໍ້ຜິດພາດການເຂົ້າສູ່ລະບົບ: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'ອັບເກຣດເພື່ອປົດລັອກ';

  @override
  String get itemRemoved => 'ລາຍການຖຶກລຶບອອກ';

  @override
  String get undo => 'ຍົກເລີກ';

  @override
  String get emptyListTitle => 'ລາຍການຂອງທ່ານວ່າງເປົ່າ';

  @override
  String get emptyListSubtitle => 'ເພີ່ມລາຍການເພື່ອເລີ່ມຕົ້ນ';

  @override
  String get noListFoundTitle => 'ບໍ່ພົບລາຍການ';

  @override
  String get noListFoundSubtitle => 'ສ້າງລາຍການທຳອິດຂອງທ່ານເພື່ອເລີ່ມຕົ້ນ';

  @override
  String get createFirstList => 'ສ້າງລາຍການທຳອິດ';

  @override
  String get listBudgetTitle => 'ງົບປະມານລາຍການ';

  @override
  String get budgetAmountLabel => 'ຈຳນວນງົບປະມານ';

  @override
  String get removeBudget => 'ລຶບອອກ';

  @override
  String get prefUnlimitedLists => 'ລາຍການບໍ່ຈຳກັດ';

  @override
  String get prefSharing => 'ແບ່ງປັນລາຍການ';

  @override
  String get prefFullHistory => 'ປະຫວັດເຕັມ';

  @override
  String get prefExportData => 'ສົ່ງອອກຂໍ້ມູນ';

  @override
  String get prefCustomThemes => 'ຊຸດຮູບແບບທີ່ກຳນົດເອງ';

  @override
  String get prefMonthlyBudget => 'ງົບປະມານປະຈຳເດືອນທົ່ວໂລກ';

  @override
  String get prefAIAssistant => 'ຜູ້ຊ່ວຍ AI ສ່ວນຕົວ';

  @override
  String get prefUnlimitedPantry => 'ຕູ້ເກັບອາຫານບໍ່ຈຳກັດ';

  @override
  String get prefInteractiveArtifacts => 'AI ແບບໂຕ້ຕອບ';

  @override
  String get themeGreen => 'ຂຽວ';

  @override
  String get themeBlue => 'ຟ້າ';

  @override
  String get themePurple => 'ມ່ວງ';

  @override
  String get themeRed => 'ແດງ';

  @override
  String get themeOrange => 'ສົ້ມ';

  @override
  String get themePink => 'ຊົມພູ';

  @override
  String get themeIndigo => 'ຄາມ';

  @override
  String get themeAmber => 'ອຳພັນ';

  @override
  String get themeTeal => 'ຂຽວຟ້າ';

  @override
  String get themeBrown => 'ນ້ຳຕານ';

  @override
  String get catFruits => 'ໝາກໄມ້';

  @override
  String get catCleaning => 'ທຳຄວາມສະອາດ';

  @override
  String get catBeverages => 'ເຄື່ອງດື່ມ';

  @override
  String get catBakery => 'ເຄັກເຂົ້າຈີ່';

  @override
  String get catOthers => 'ອື່ນໆ';

  @override
  String get unitPack => 'ຊອງ';

  @override
  String get shareSubject => 'ລາຍການຊື້ເຄື່ອງ';

  @override
  String get monthlyBudgetTitle => 'ງົບປະມານປະຈຳເດືອນ';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'ລຶບລາຍການ';

  @override
  String get pantryItemRemoved => 'ລາຍການຖຶກລຶບອອກ';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit ລາຍການທີ່ຕ້ອງຊື້',
      one: '$deficit ລາຍການທີ່ຕ້ອງຊື້',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'ລວມກະຕ່າ';

  @override
  String get restockLabel => 'ເພີ່ມເຕີມ';

  @override
  String get advancedFeatures => 'ຄຸນສົມບັດຂັ້ນສູງ';

  @override
  String get selectAll => 'ເລືອກທັງໝົດ';

  @override
  String get deselectAll => 'ຍົກເລີກການເລືອກທັງໝົດ';

  @override
  String get monthlyBudgetAppBar => 'ງົບປະມານປະຈຳເດືອນ';

  @override
  String get budgetEditTitle => 'ງົບປະມານປະຈຳເດືອນ';

  @override
  String get budgetDashboardTitle => 'ແດດຊໍບອດ';

  @override
  String get selectListForDashboard => 'ເລືອກລາຍການເພື່ອເບິ່ງແດດຊໍບອດ.';

  @override
  String get spendingAnalysis => 'ການວິເຄາະການໃຊ້ຈ່າຍ';

  @override
  String get noItemsToAnalyze => 'ບໍ່ມີລາຍການໃນລາຍການເພື່ອວິເຄາະ.';

  @override
  String get markItemsToSeeAnalysis =>
      'ໝາຍລາຍການວ່າຊື້ແລ້ວເພື່ອເບິ່ງການວິເຄາະ.';

  @override
  String get totalSpending => 'ການໃຊ້ຈ່າຍທັງໝົດ';

  @override
  String get spendingByCategory => 'ການໃຊ້ຈ່າຍຕາມໝວດ';

  @override
  String get achievements => 'ຜົນສຳເລັດ';

  @override
  String get exportPdfExcel => 'ສົ່ງອອກ PDF/Excel';

  @override
  String get exportPdf => 'ສົ່ງອອກເປັນ PDF';

  @override
  String get exportExcel => 'ສົ່ງອອກເປັນ Excel';

  @override
  String get organizingAi => 'ກຳລັງຈັດລະບຽບດ້ວຍ AI...';

  @override
  String get yesLabel => 'ແມ່ນ';

  @override
  String get noLabel => 'ບໍ່';

  @override
  String get shareListText => 'ລາຍການຊື້ເຄື່ອງຂອງຂ້ອຍ';

  @override
  String get emptyListAddItems => 'ລາຍການຂອງທ່ານວ່າງເປົ່າ! ເພີ່ມລາຍການກ່ອນ. ℹ️';

  @override
  String get listOrganizedMagic => 'ລາຍການຖືກຈັດຮຽງຕາມໝວດຢ່າງມະຫັດສະຈັນ! ✨';

  @override
  String get shoppingMode => 'ໂໝດຊື້ເຄື່ອງ';

  @override
  String get smartOrganization => 'ການຈັດລະບຽບອັດສະລິຍະ';

  @override
  String get savings => 'ເງິນປະຢັດ';

  @override
  String get shoppingModeHeader => 'ໂໝດຊື້ເຄື່ອງ';

  @override
  String get shareAsText => 'ສົ່ງລາຍການເປັນຂໍ້ຄວາມທີ່ຈັດຮູບແບບ';

  @override
  String get shareRealtime => 'ຊິງຄ໌ແບບທັນທີກັບຄົນອື່ນ';

  @override
  String get quickRecipe => 'ສູດອາຫານດ່ວນ';

  @override
  String get quickRecipePrompt => 'ແນະນຳສູດອາຫານກັບລາຍການຈາກລາຍການຂອງຂ້ອຍ.';

  @override
  String get economyTips => 'ຄຳແນະນຳປະຢັດ';

  @override
  String get economyTipsPrompt => 'ຂ້ອຍຈະປະຢັດເງິນໃນການຊື້ນີ້ໄດ້ແນວໃດ?';

  @override
  String get organizeAisles => 'ຈັດຮຽງຕາມຊ່ອງທາງ';

  @override
  String get organizeAislesPrompt => 'ຈັດຮຽງຕາມຊ່ອງທາງຕະຫຼາດ.';

  @override
  String get recipeSuggestion => 'ຄຳແນະນຳສູດອາຫານ';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining ເຄຣດິດຍັງເຫຼືອ';
  }

  @override
  String get addAllToList => 'ເພີ່ມທັງໝົດໃສ່ລາຍການ';

  @override
  String get organizeByAisles => 'ຈັດຮຽງຕາມຊ່ອງທາງ';

  @override
  String get voiceTranscriptionTooltip => 'ພິມດ້ວຍສຽງ (ຟຣີ)';

  @override
  String get aiVoiceCommandTooltip => 'ຄຳສັ່ງສຽງ AI (ພິເສດ)';

  @override
  String get voiceCommandTitle => 'ຄຳສັ່ງສຽງ AI';

  @override
  String get voiceCommandContent =>
      'ເວົ້າຕາມທຳມະຊາດເພື່ອຈັດການລາຍການຂອງທ່ານ!\n\nຕົວຢ່າງ:\n• \'ເພີ່ມເຂົ້າຈີ່, ເນີຍແຂງ ແລະ ແຮມ\'\n• \'ລຶບຜົງຊັກຜ້າ\'\n• \'ປ່ຽນຊຸດຮູບແບບເປັນສີຟ້າ\'\n\nນີ້ແມ່ນຄຸນສົມບັດພິເສດຂອງ Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'ເບິ່ງແຜນ';

  @override
  String get itemsAddedSuccess => 'ເພີ່ມລາຍການໃສ່ລາຍການສຳເລັດ!';

  @override
  String get viewList => 'ເບິ່ງລາຍການ';

  @override
  String get feedbackTitle => 'ສົ່ງຄຳຕິຊົມ';

  @override
  String get feedbackPrompt => 'ທ່ານຕ້ອງການແບ່ງປັນຫຍັງ?';

  @override
  String get feedbackTypeBug => 'ລາຍງານຂໍ້ຜິດພາດ';

  @override
  String get feedbackTypeBugHint => 'ບາງຢ່າງບໍ່ຖືກຕ້ອງ';

  @override
  String get feedbackTypeSuggestion => 'ຄຳແນະນຳ';

  @override
  String get feedbackTypeSuggestionHint => 'ແນວຄວາມຄິດເພື່ອປັບປຸງແອັບ';

  @override
  String get feedbackTypeTranslation => 'ບັນຫາການແປ';

  @override
  String get feedbackTypeTranslationHint => 'ການແປບໍ່ຖືກຕ້ອງ ຫຼື ບໍ່ເໝາະສົມ';

  @override
  String get feedbackTypeFeature => 'ຂໍຟີເຈີຣ໌';

  @override
  String get feedbackTypeFeatureHint => 'ຟີເຈີຣ໌ທີ່ທ່ານຢາກເຫັນ';

  @override
  String get feedbackTypeOther => 'ອື່ນໆ';

  @override
  String get feedbackTypeOtherHint => 'ຄຳຕິຊົມປະເພດອື່ນ';

  @override
  String get feedbackHint => 'ອະທິບາຍຄຳຕິຊົມຂອງທ່ານໃຫ້ລະອຽດ...';

  @override
  String get feedbackSend => 'ສົ່ງຄຳຕິຊົມ';

  @override
  String get feedbackSending => 'ກຳລັງສົ່ງ...';

  @override
  String get feedbackThankYou => 'ຂອບໃຈ!';

  @override
  String get feedbackThankYouMessage =>
      'ຄຳຕິຊົມຂອງທ່ານໄດ້ຮັບແລ້ວ ແລະ ຊ່ວຍພວກເຮົາປັບປຸງ Lista Plus ສຳລັບທຸກຄົນ.';

  @override
  String get feedbackBack => 'ກັບ';

  @override
  String feedbackError(String error) {
    return 'ຂໍ້ຜິດພາດໃນການສົ່ງ: $error';
  }

  @override
  String get feedbackRetry => 'ລອງໃໝ່';

  @override
  String get feedbackSettingsTitle => 'ສົ່ງຄຳຕິຊົມ';

  @override
  String get feedbackSettingsSubtitle =>
      'ລາຍງານຂໍ້ຜິດພາດ, ແນະນຳການປັບປຸງ, ຫຼື ແກ້ໄຂການແປ';

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
