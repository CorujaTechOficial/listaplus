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
  String get navChat => 'ສົນທະນາ';

  @override
  String get navRecipes => 'ສູດ';

  @override
  String get navLists => 'ລາຍການ';

  @override
  String get navMealPlanner => 'ເມນູ';

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
  String get next => 'ຕໍ່ໄປ';

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
  String get profile => 'ໂປຣໄຟລ໌';

  @override
  String get exitShoppingMode => 'ອອກຈາກໂໝດຊື້ເຄື່ອງ';

  @override
  String get exit => 'ອອກໄປ';

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
  String get chooseLanguage => 'ເລືອກພາສາ';

  @override
  String get searchLanguage => 'ຄົ້ນຫາພາສາ...';

  @override
  String get currency => 'ສະກຸນເງິນ';

  @override
  String get chooseCurrency => 'ເລືອກສະກຸນເງິນ';

  @override
  String get searchCurrency => 'ຊອກຫາສະກຸນເງິນ...';

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
  String get dynamicColors => 'ສີໄດນາມິກ';

  @override
  String get dynamicColorsSubtitle => 'ໃຊ້ສີຕາມວໍເປເປີຂອງທ່ານ';

  @override
  String get dynamicColorsEnabledWarning =>
      'ປິດການໃຊ້ງານສີແບບໄດນາມິກເພື່ອໃຫ້ສີຮູບແບບສີສັນມີຜົນ';

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
  String get newChat => 'ສົນທະນາໃໝ່';

  @override
  String get noHistory => 'ບໍ່ມີປະຫວັດການສົນທະນາ';

  @override
  String get deleteSession => 'ລຶບການສົນທະນາ';

  @override
  String get deleteSessionConfirm =>
      'ທ່ານແນ່ໃຈບໍ່ວ່າຕ້ອງການລຶບການສົນທະນານີ້? ຂໍ້ຄວາມຈະສູນເສຍຢ່າງຖາວອນ.';

  @override
  String get clearHistory => 'ລ້າງປະຫວັດ';

  @override
  String get clearHistoryConfirm => 'ລ້າງຂໍ້ຄວາມທັງໝົດໃນເຊສຊັນນີ້?';

  @override
  String get chatHint => 'ພິມຂໍ້ຄວາມຂອງທ່ານ...';

  @override
  String get chatHintBlocked => 'ປົດລັອກ AI ເພື່ອສົນທະນາ';

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
  String get aiLimitAlmostReached => 'ເກືອບອອກຈາກຂໍ້ຄວາມ AI';

  @override
  String get unlockAi => 'ປົດລັອກ AI ບໍ່ຈໍາກັດ';

  @override
  String get aiTeaserFallback =>
      'ສະໝັກໃຊ້ Premium ເພື່ອປົດລັອກການຕອບຮັບເຕັມຮູບແບບ ແລະ ຮັບເຄັດລັບ AI ແບບບໍ່ຈຳກັດສຳລັບການໄປຊື້ເຄື່ອງຂອງທ່ານ...';

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
  String get loginPrompt => 'ເຂົ້າສູ່ລະບົບເພື່ອປົດລັອກ\nຟີເຈີຣ໌ Premium';

  @override
  String get signInGoogle => 'ເຂົ້າສູ່ລະບົບດ້ວຍ Google';

  @override
  String get signInApple => 'ເຂົ້າສູ່ລະບົບດ້ວຍ Apple';

  @override
  String get continueAsGuest => 'ສືບຕໍ່ໃນຖານະແຂກ';

  @override
  String get onboardingWelcomeTitle => 'ຍິນດີຕ້ອນຮັບສູ່ KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'ວິທີທີ່ສະຫລາດທີ່ສຸດໃນການຈັດລະບຽບການຊື້ເຄື່ອງຂອງທ່ານແລະປະຫຍັດເງິນ.';

  @override
  String get onboardingSetupTitle => 'ປັບແຕ່ງປະສົບການຂອງທ່ານ';

  @override
  String get onboardingSetupDesc =>
      'ເລືອກວິທີທີ່ທ່ານຕ້ອງການໃຫ້ KipiList ເບິ່ງ ແລະເຮັດວຽກສໍາລັບທ່ານ.';

  @override
  String get onboardingLoginTitle => 'ບັນທຶກທຸກຢ່າງໄວ້ໃນຄລາວ';

  @override
  String get onboardingLoginDesc =>
      'ຂໍ້​ມູນ​ຂອງ​ທ່ານ synced ໃນ​ທົ່ວ​ອຸ​ປະ​ກອນ​ຂອງ​ທ່ານ​ທັງ​ຫມົດ​';

  @override
  String get onboardingShareTitle => 'ແບ່ງປັນກັບຄົນທີ່ທ່ານຮັກ';

  @override
  String get onboardingShareDesc =>
      'ຊິ້ງຂໍ້ມູນລາຍຊື່ກັບຄອບຄົວ ແລະໝູ່ເພື່ອນໃນເວລາຈິງ';

  @override
  String get onboardingPremiumTitle => 'ປົດລັອກຄຸນສົມບັດທັງໝົດ';

  @override
  String get onboardingPremiumSubtitle =>
      'ໃຊ້ປະໂຫຍດສູງສຸດຈາກລາຍການຊື້ເຄື່ອງຂອງເຈົ້າ';

  @override
  String get onboardingAnnualBadge => 'ມູນຄ່າທີ່ດີທີ່ສຸດ';

  @override
  String get onboardingMonthlyLabel => 'ປະຈໍາເດືອນ';

  @override
  String get onboardingAnnualLabel => 'ປະຈໍາປີ';

  @override
  String get onboardingViewAllPlans => 'ເບິ່ງແຜນການທັງຫມົດ';

  @override
  String get onboardingSubscribeCta => 'ຈອງ';

  @override
  String get onboardingCancelAnytime =>
      'ຍົກເລີກໄດ້ທຸກເວລາ. ບໍ່ມີຄໍາຫມັ້ນສັນຍາ.';

  @override
  String get onboardingContinueAsGuest => 'ສືບຕໍ່ໃນຖານະແຂກ';

  @override
  String get onboardingRestore => 'ຟື້ນຟູ';

  @override
  String get onboardingRestoreDesc =>
      'ມີການສະໝັກໃຊ້ຢູ່ແລ້ວບໍ? ແຕະບ່ອນນີ້ເພື່ອກູ້ມັນຄືນມາ.';

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
  String get onboardingExit => 'ອອກໄປ';

  @override
  String get onboardingPersonalizationTitle => 'ມາຮູ້ຈັກກັບເຈົ້າ';

  @override
  String get onboardingPersonalizationDesc =>
      'ພວກເຮົາຈະໃຊ້ອັນນີ້ເພື່ອປັບແຕ່ງຄຳແນະນຳຂອງທ່ານໃຫ້ເປັນແບບສ່ວນຕົວ ແລະ ເຮັດໃຫ້ການຊື້ເຄື່ອງສະຫຼາດຂຶ້ນ.';

  @override
  String get onboardingPersonalizationFoodLabel => 'ອາຫານທີ່ທ່ານມັກແມ່ນຫຍັງ?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'ຕົວຢ່າງ: Pizza, Sushi, Lasagna...';

  @override
  String get onboardingPersonalizationCta => 'ສືບຕໍ່';

  @override
  String get onboardingPersonalizationSkip => 'ຂ້າມໄປດຽວນີ້';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'ບອກພວກເຮົາອາຫານທີ່ທ່ານມັກເພື່ອສືບຕໍ່';

  @override
  String get settingsDefaultScreen => 'ໜ້າຈໍຫຼັກເລີ່ມຕົ້ນ';

  @override
  String get settingsDefaultScreenSubtitle =>
      'ເລືອກລະຫວ່າງລາຍການຊື້ເຄື່ອງ ຫຼື AI ສົນທະນາ';

  @override
  String get settingsScreenList => 'ລາຍການຊື້ເຄື່ອງ';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'ຂໍ້ຜິດພາດໃນການເຂົ້າສູ່ລະບົບ: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'ເກີດຄວາມຜິດພາດໃນການໂຫຼດຂໍ້ສະເໜີ. ລອງອີກຄັ້ງ.';

  @override
  String get paywallPurchaseError => 'ບໍ່ສາມາດສຳເລັດການຊື້ໄດ້. ລອງອີກຄັ້ງ.';

  @override
  String get paywallRestoreError =>
      'ບໍ່ພົບການສະໝັກໃຊ້ທີ່ເຄື່ອນໄຫວເພື່ອກູ້ຂໍ້ມູນຄືນມາ.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ມື້ຟຣີ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ອາທິດຟຣີ',
      one: '$count ອາທິດຟຣີ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ເດືອນຟຣີ',
      one: '$count ເດືອນຟຣີ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'ລອງໃຊ້ KipiList Pro ຟຣີເປັນເວລາ 7 ມື້';

  @override
  String get paywallTrialSubtitle =>
      'ຍົກເລີກໄດ້ທຸກເວລາ. ບໍ່ມີຄ່າໃຊ້ຈ່າຍໃນມື້ນີ້.';

  @override
  String get paywallTrialCta => 'ເລີ່ມການທົດລອງໃຊ້ຟຣີ';

  @override
  String get recipeAddToList => 'ເພີ່ມໃສ່ລາຍການຊື້ເຄື່ອງ';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ສ່ວນປະກອບເພີ່ມໃສ່ $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'ທຸກ​ສິ່ງ​ທຸກ​ຢ່າງ​ທີ່​ທ່ານ​ຕ້ອງ​ການ​:';

  @override
  String get paywallFeatureUnlimitedLists => 'ບັນຊີລາຍຊື່ບໍ່ຈໍາກັດ';

  @override
  String get paywallFeatureSmartAI => 'AI ອັດສະລິຍະ';

  @override
  String get paywallFeatureExpenseControl => 'ການຄວບຄຸມຄ່າໃຊ້ຈ່າຍ';

  @override
  String get paywallFeatureSharing => 'ການແບ່ງປັນ';

  @override
  String get paywallBeforeAfterTitle => 'AI ກ່ອນ ແລະ ຫຼັງ:';

  @override
  String get paywallLabelCommon => 'ທົ່ວໄປ';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ເຂົ້າ';

  @override
  String get paywallBeforeItem2 => 'ສະບູ່';

  @override
  String get paywallBeforeItem3 => 'ຊີ້ນ';

  @override
  String get paywallBeforeItem4 => 'ເຂົ້າຈີ່';

  @override
  String get paywallAfterItem1 => 'ເມັດພືດ';

  @override
  String get paywallAfterItem2 => 'ທໍາຄວາມສະອາດ';

  @override
  String get paywallAfterItem3 => 'ຊີ້ນ';

  @override
  String get paywallAfterItem4 => 'ເບເກີຣີ';

  @override
  String get paywallTestimonialsTitle => 'ສິ່ງທີ່ຜູ້ໃຊ້ຂອງພວກເຮົາເວົ້າ:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI ຈັດການຊື້ຂອງຂ້ອຍໃນວິນາທີ. ຂ້ອຍປະຫຍັດ 20 ນາທີຕໍ່ການເດີນທາງຕະຫຼາດ.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'ຂ້ອຍບໍ່ເຄີຍລືມລາຍການລາຍຊື່ອີກ. AI ສົນທະນາແມ່ນຄວາມຮູ້ສຶກ!';

  @override
  String get paywallSocialProof => '+2,400 ຄອບຄົວໃຊ້ມັນ';

  @override
  String get paywallCtaUnlock => 'ປົດລັອກ PRO';

  @override
  String get paywallBestValue => 'VALUE ທີ່ດີທີ່ສຸດ';

  @override
  String get paywallMostPopular => 'ນິຍົມທີ່ສຸດ';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'ການຊໍາລະທີ່ປອດໄພ';

  @override
  String get paywallSelectPlan => 'ເລືອກແຜນຂອງທ່ານ:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ປະຢັດ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'ພຽງແຕ່ $price/ເດືອນ';
  }

  @override
  String get paywallPackageAnnual => 'ແຜນປະຈຳປີ';

  @override
  String get paywallPackageMonthly => 'ແຜນປະຈໍາເດືອນ';

  @override
  String get paywallPackageLifetime => 'ການເຂົ້າເຖິງຕະຫຼອດຊີວິດ';

  @override
  String get paywallCancelAnytime => 'ຍົກເລີກໄດ້ທຸກເວລາ. ບໍ່ມີຄໍາຫມັ້ນສັນຍາ.';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'ນະໂຍບາຍຄວາມເປັນສ່ວນຕົວ';

  @override
  String get paywallTerms => 'ເງື່ອນໄຂການນໍາໃຊ້';

  @override
  String get paywallRestore => 'ຟື້ນຟູ';

  @override
  String get paywallHeroHeadline => 'Kipi AI ຢູ່ຄຽງຂ້າງເຈົ້າສະເໝີ';

  @override
  String get paywallHeroSubtitle =>
      'ເພີ່ມລາຍການ, ຈັດລະບຽບລາຍການແລະປະຫຍັດເວລາດ້ວຍ AI ໃນຖົງຂອງທ່ານ';

  @override
  String get paywallBenefit1Desc => 'ເພີ່ມ, ຈັດລະບຽບ ແລະແນະນຳລາຍການ 24/7';

  @override
  String get paywallBenefit2Desc => 'ບໍ່ມີຂອບເຂດຈໍາກັດ 3 ລາຍການ';

  @override
  String get paywallBenefit3Desc => 'ການຕິດຕາມຄ່າໃຊ້ຈ່າຍແລະລາຍຊື່ຄອບຄົວ';

  @override
  String get paywallPackageMonthlyDesc => 'ຄວາມຍືດຫຍຸ່ນຢ່າງເຕັມທີ່';

  @override
  String paywallCtaTrialDays(int days) {
    return 'ເລີ່ມຟຣີ — $days ມື້';
  }

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
      'ເວົ້າຢ່າງທຳມະຊາດເພື່ອຈັດການລາຍການຂອງທ່ານ!\n\nຕົວຢ່າງ:\n• \'ເພີ່ມເຂົ້າຈີ່ ເນີຍແຂງ ແລະ ແຮມ\'\n• \'ລຶບຜົງຊັກຟອກ\'\n• \'ປ່ຽນຊຸດຮູບແບບເປັນສີຟ້າ\'\n\nນີ້ແມ່ນຟີເຈີຣ໌ສະເພາະຂອງ KipiList Premium.';

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
      'ຄຳຕິຊົມຂອງທ່ານໄດ້ຮັບແລ້ວ ແລະ ຊ່ວຍພວກເຮົາປັບປຸງ KipiList ສຳລັບທຸກຄົນ.';

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
  String get aiEnergy => 'ພະລັງງານ AI';

  @override
  String get searchInConversation => 'ຊອກຫາໃນການສົນທະນາ...';

  @override
  String get noMessagesFound => 'ບໍ່ພົບຂໍ້ຄວາມ';

  @override
  String get suggestedQuestions => 'ຄຳຖາມທີ່ແນະນຳ:';

  @override
  String get shoppingAssistant => 'ຜູ້ຊ່ວຍຊື້ເຄື່ອງ';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased ຈາກທັງໝົດ $total ຊື້ແລ້ວ';
  }

  @override
  String get estimatedCost => 'ຄາດຄະເນ';

  @override
  String get viewItems => 'ເບິ່ງລາຍການ';

  @override
  String get noItemsInList => 'ບໍ່ມີລາຍການຢູ່ໃນບັນຊີລາຍຊື່';

  @override
  String get longHistoryWarning =>
      'ປະຫວັດຍາວ: ຜູ້ຊ່ວຍສຸມໃສ່ຂໍ້ຄວາມຫຼ້າສຸດເພື່ອປະສິດທິພາບທີ່ດີກວ່າ.';

  @override
  String get listening => 'ກຳລັງຟັງ...';

  @override
  String get addDirectToList => 'ເພີ່ມໂດຍກົງໃສ່ລາຍຊື່';

  @override
  String get unlockFullResponse => 'ປົດລັອກການຕອບໂຕ້ຢ່າງເຕັມທີ່';

  @override
  String get switchList => 'ສະຫຼັບລາຍຊື່';

  @override
  String get marketMode => 'ຮູບແບບຕະຫຼາດ';

  @override
  String get backToChat => 'ກັບໄປທີ່ການສົນທະນາ';

  @override
  String get finishShopping => 'ສຳເລັດການຊື້ເຄື່ອງ';

  @override
  String get welcomeAiAssistant => 'ຍິນດີຕ້ອນຮັບສູ່ຜູ້ຊ່ວຍ AI';

  @override
  String get createListToStartAi =>
      'ສ້າງລາຍການຊື້ເຄື່ອງເພື່ອເລີ່ມໃຊ້ການສົນທະນາອັດສະລິຍະ.';

  @override
  String get howCanIHelp => 'ຂ້ອຍສາມາດຊ່ວຍໄດ້ແນວໃດ?';

  @override
  String get chatSubtitleShort => 'ສອບຖາມລາຄາ, ສູດອາຫານ, ອົງກອນ...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total ຊື້ແລ້ວ';
  }

  @override
  String get quickReplies => 'ຕອບກັບດ່ວນ:';

  @override
  String get voiceProFeature =>
      'ຄໍາສັ່ງສຽງຂັ້ນສູງແມ່ນ Pro. ເປີດໃຊ້ການພິມຕາມຄຳສັ່ງພື້ນຖານ...';

  @override
  String get viewPro => 'ເບິ່ງ Pro';

  @override
  String get errorLoadingChat =>
      'ອຸຍ! ເກີດບາງຢ່າງຜິດພາດຂຶ້ນໃນການໂຫລດການສົນທະນາ.';

  @override
  String get errorLoadingChatSubtitle =>
      'ກວດເບິ່ງການເຊື່ອມຕໍ່ຂອງທ່ານ ຫຼືລອງໃໝ່ໃນພາຍຫຼັງ.';

  @override
  String get errorOscillation =>
      'ອັນນີ້ອາດຈະເກີດຂຶ້ນຍ້ອນການສັ່ນສະເທືອນຂອງເຄືອຂ່າຍ ຫຼືຄວາມບໍ່ພ້ອມຊົ່ວຄາວ. ກະລຸນາລອງອີກຄັ້ງ.';

  @override
  String get activeListening => 'Active Listening';

  @override
  String get whatToDoWithItem => 'ເຈົ້າຢາກຈະເຮັດແນວໃດກັບລາຍການນີ້?';

  @override
  String get viewDetails => 'ເບິ່ງລາຍລະອຽດ';

  @override
  String get openMenu => 'ເປີດເມນູ';

  @override
  String get viewRecipe => 'ເບິ່ງສູດອາຫານ';

  @override
  String get recipeCreated => 'ສ້າງສູດອາຫານແລ້ວ!';

  @override
  String get editRecipe => 'ແກ້ໄຂ';

  @override
  String get deleteRecipe => 'ລຶບ';

  @override
  String get deleteRecipeConfirm => 'ລຶບສູດອາຫານນີ້?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'ທ່ານແນ່ໃຈບໍ່ວ່າຕ້ອງການລຶບ \"$recipeName\"? ການດຳເນີນການນີ້ບໍ່ສາມາດຍົກເລີກໄດ້.';
  }

  @override
  String get ingredients => 'ສ່ວນປະສົມ';

  @override
  String get instructions => 'ວິທີເຮັດ';

  @override
  String get prepTime => 'ເວລາໃນການກຽມ';

  @override
  String get recipeSaved => 'ບັນທຶກສູດອາຫານແລ້ວ!';

  @override
  String get noRecipesSaved => 'ບໍ່ມີສູດອາຫານທີ່ບັນທຶກໄວ້';

  @override
  String get noRecipesSavedHint =>
      'ສ້າງສູດອາຫານທຳອິດຂອງທ່ານໂດຍການແຕະປຸ່ມຂ້າງລຸ່ມນີ້.';

  @override
  String get myRecipes => 'ສູດອາຫານຂອງຂ້ອຍ';

  @override
  String get newRecipe => 'ສູດອາຫານໃໝ່';

  @override
  String get loadingRecipes => 'ກຳລັງໂຫຼດສູດອາຫານຂອງທ່ານ...';

  @override
  String get errorLoadingRecipes => 'ເກີດຂໍ້ຜິດພາດໃນການໂຫຼດສູດອາຫານ';

  @override
  String get addIngredient => 'ເພີ່ມສ່ວນປະສົມ';

  @override
  String get saveRecipe => 'ບັນທຶກ';

  @override
  String get recipeName => 'ຊື່ສູດອາຫານ';

  @override
  String get shortDescription => 'ຄຳອະທິບາຍສັ້ນໆ';

  @override
  String get prepTimeMinutes => 'ເວລາໃນການກຽມ (ນາທີ)';

  @override
  String get instructionsHint => 'ພິມຂັ້ນຕອນລະໜຶ່ງແຖວ...';

  @override
  String get addPhoto => 'ເພີ່ມຮູບພາບ';

  @override
  String get imageUrlPlaceholder => 'ຫຼື ວາງ URL ຂອງຮູບພາບ';

  @override
  String get tags => 'ແທັກ';

  @override
  String get recipeTags => 'ແທັກສູດອາຫານ';

  @override
  String get suggestedTags => 'ແນະນຳ';

  @override
  String get searchRecipes => 'ຄົ້ນຫາສູດອາຫານ...';

  @override
  String get filterByTag => 'ກັ່ນຕອງຕາມແທັກ';

  @override
  String get allTags => 'ທັງໝົດ';

  @override
  String get recipeDeleted => 'ລຶບສູດອາຫານແລ້ວ';

  @override
  String get saveChanges => 'ບັນທຶກການປ່ຽນແປງ';

  @override
  String get editRecipeTitle => 'ແກ້ໄຂສູດອາຫານ';

  @override
  String get newRecipeTitle => 'ສູດອາຫານໃໝ່';

  @override
  String get requiredField => 'ຈຳເປັນ';

  @override
  String get chooseImageSource => 'ເລືອກແຫຼ່ງຮູບພາບ';

  @override
  String get gallery => 'ແກເລີຣີ';

  @override
  String get enterUrl => 'ປ້ອນ URL';

  @override
  String get recipeImage => 'ຮູບພາບສູດອາຫານ';

  @override
  String get removeImage => 'ລຶບຮູບພາບອອກ';

  @override
  String get mealPlannerTitle => 'ເຄື່ອງມືວາງແຜນອາຫານ';

  @override
  String get mealPlannerViewMonthly => 'ເບິ່ງແບບລາຍເດືອນ';

  @override
  String get mealPlannerViewWeekly => 'ເບິ່ງແບບລາຍອາທິດ';

  @override
  String get mealPlannerNoMeals => 'ບໍ່ມີຄາບອາຫານທີ່ວາງແຜນໄວ້';

  @override
  String get mealPlannerNoMealsHint => 'ແຕະທີ່ວັນເພື່ອເພີ່ມຄາບອາຫານ';

  @override
  String get mealPlannerLoading => 'ກຳລັງໂຫຼດແຜນອາຫານ...';

  @override
  String get mealPlannerError => 'ເກີດຂໍ້ຜິດພາດໃນການໂຫຼດແຜນອາຫານ';

  @override
  String get mealPlannerAddMeal => 'ເພີ່ມຄາບອາຫານ';

  @override
  String get mealPlannerEditMeal => 'ແກ້ໄຂຄາບອາຫານ';

  @override
  String get mealPlannerDeleteMeal => 'ລຶບຄາບອາຫານອອກ';

  @override
  String get mealPlannerMealDeleted => 'ລຶບຄາບອາຫານອອກແລ້ວ';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ທີ່',
      one: '$count ທີ່',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'ຈຳນວນທີ່';

  @override
  String get mealPlannerNoteLabel => 'ໝາຍເຫດ (ທາງເລືອກ)';

  @override
  String get mealPlannerSelectRecipe => 'ເລືອກສູດອາຫານ';

  @override
  String get mealPlannerSearchRecipes => 'ຄົ້ນຫາສູດອາຫານ...';

  @override
  String get mealPlannerNoRecipesFound => 'ບໍ່ພົບສູດອາຫານ';

  @override
  String get mealPlannerNoRecipesHint => 'ສ້າງສູດອາຫານໃນແທັບສູດອາຫານກ່ອນ';

  @override
  String get mealPlannerSave => 'ເພີ່ມໃສ່ແຜນ';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'ວາງແຜນແລ້ວ $count ຈາກ $total ຄາບ';
  }

  @override
  String get mealPlannerGenerateList => 'ສ້າງລາຍການຊື້ເຄື່ອງ';

  @override
  String get mealPlannerGenerateListConfirm =>
      'ເພີ່ມສ່ວນປະສົມທັງໝົດຈາກຄາບອາຫານທີ່ວາງແຜນໄວ້ໃນອາທິດນີ້ໃສ່ລາຍການຊື້ເຄື່ອງຂອງທ່ານບໍ?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'ເພີ່ມ $count ສ່ວນປະສົມໃສ່ລາຍການຂອງທ່ານແລ້ວ!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ບໍ່ມີສ່ວນປະສົມທີ່ຈະເພີ່ມ. ວາງແຜນຄາບອາຫານດ້ວຍສູດອາຫານກ່ອນ.';

  @override
  String get mealPlannerGenerateListNoList => 'ສ້າງລາຍການຊື້ເຄື່ອງກ່ອນ.';

  @override
  String get mealPlannerMealTypeBreakfast => 'ອາຫານເຊົ້າ';

  @override
  String get mealPlannerMealTypeLunch => 'ອາຫານທ່ຽງ';

  @override
  String get mealPlannerMealTypeDinner => 'ອາຫານແລງ';

  @override
  String get mealPlannerMealTypeSnack => 'ອາຫານວ່າງ';

  @override
  String get mealPlannerDateLabel => 'ວັນທີ';

  @override
  String get mealPlannerWeekEmpty => 'ບໍ່ມີແຜນສຳລັບອາທິດນີ້';

  @override
  String get mealPlannerWeekEmptyHint =>
      'ແຕະທີ່ມື້ໃດກໍໄດ້ເພື່ອເລີ່ມວາງແຜນອາຫານຂອງທ່ານ!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes ນາທີ';
  }

  @override
  String get inviteToList => 'ເຊີນເຂົ້າຮ່ວມລາຍການ';

  @override
  String get shareApp => 'ແບ່ງປັນແອັບ';

  @override
  String get shareAppDescription => 'ເຊີນໝູ່ມາໃຊ້ KipiList';

  @override
  String shareReferralText(Object url) {
    return 'ຂ້ອຍກຳລັງໃຊ້ KipiList ເພື່ອຈັດລະບຽບການຊື້ເຄື່ອງຂອງຂ້ອຍ! ດາວໂຫລດຜ່ານລິ້ງຂອງຂ້ອຍ ແລະພວກເຮົາທັງສອງຈະໄດ້ຮັບ Premium ຟຣີ 7 ມື້: $url';
  }

  @override
  String get shareReferralSubject => 'ຮັບ 7 ມື້ຂອງ KipiList Premium!';

  @override
  String get gestureHint => 'ກົດຄ້າງໄວ້ເພື່ອເລືອກ • ປັດເພື່ອເອົາອອກ';

  @override
  String get catalogTitle => 'ລາຍການ';

  @override
  String get catalogMyFrequents => 'ເລື້ອຍໆຂອງຂ້ອຍ';

  @override
  String get catalogSearchGlobal => 'ຊອກຫາຜະລິດຕະພັນໃດນຶ່ງ...';

  @override
  String catalogSearchInCategory(String category) {
    return 'ຊອກຫາໃນ $category...';
  }

  @override
  String get catalogSortPopular => 'ນິຍົມທີ່ສຸດ';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'ຊາດ';

  @override
  String get catalogRareSection => 'ບໍ່ຄ່ອຍມີຢູ່ໃນປະເທດຂອງເຈົ້າ';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'ເພີ່ມ $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'ບໍ່ພົບສິນຄ້າ, ພິມຊື່';

  @override
  String get catalogBrowse => 'ຊອກຫາລາຍການ';

  @override
  String get offlineBanner => 'ທ່ານອອບລາຍຢູ່';

  @override
  String get consentTitle => 'ຄວາມເປັນສ່ວນຕົວ & ການວິເຄາະ';

  @override
  String get consentBody =>
      'KipiList ໃຊ້ Firebase Analytics ເພື່ອປັບປຸງປະສົບການຂອງທ່ານ. ຂໍ້ມູນຂອງທ່ານຖືກປະມວນຜົນຕາມນະໂຍບາຍຄວາມເປັນສ່ວນຕົວຂອງພວກເຮົາ.';

  @override
  String get consentAccept => 'ຍອມຮັບ';

  @override
  String get consentDecline => 'ບໍ່, ຂອບໃຈ';

  @override
  String get mealPlannerPantryAllAvailable => 'ໃນຫຼັກຊັບ';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ລາຍການທີ່ຂາດຫາຍໄປ',
      one: '$count ລາຍການທີ່ຂາດຫາຍໄປ',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'ວັນໝົດອາຍຸ';

  @override
  String get notInformed => 'ບໍ່ໄດ້ແຈ້ງໃຫ້ຊາບ';

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
  String get navChat => 'ສົນທະນາ';

  @override
  String get navRecipes => 'ສູດ';

  @override
  String get navLists => 'ລາຍການ';

  @override
  String get navMealPlanner => 'ເມນູ';

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
  String get next => 'ຕໍ່ໄປ';

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
  String get profile => 'ໂປຣໄຟລ໌';

  @override
  String get exitShoppingMode => 'ອອກຈາກໂໝດຊື້ເຄື່ອງ';

  @override
  String get exit => 'ອອກໄປ';

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
  String get languagePortuguese => 'ປອກຕຸຍການ (ບຣາຊິວ)';

  @override
  String get languageEnglish => 'ພາສາອັງກິດ';

  @override
  String get languageSystem => 'ຄ່າເລີ່ມຕົ້ນຂອງລະບົບ';

  @override
  String get chooseLanguage => 'ເລືອກພາສາ';

  @override
  String get searchLanguage => 'ຄົ້ນຫາພາສາ...';

  @override
  String get currency => 'ສະກຸນເງິນ';

  @override
  String get chooseCurrency => 'ເລືອກສະກຸນເງິນ';

  @override
  String get searchCurrency => 'ຊອກຫາສະກຸນເງິນ...';

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
  String get dynamicColors => 'ສີໄດນາມິກ';

  @override
  String get dynamicColorsSubtitle => 'ໃຊ້ສີຕາມວໍເປເປີຂອງທ່ານ';

  @override
  String get dynamicColorsEnabledWarning =>
      'ປິດການໃຊ້ງານສີແບບໄດນາມິກເພື່ອໃຫ້ສີຮູບແບບສີສັນມີຜົນ';

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
  String get newChat => 'ສົນທະນາໃໝ່';

  @override
  String get noHistory => 'ບໍ່ມີປະຫວັດການສົນທະນາ';

  @override
  String get deleteSession => 'ລຶບການສົນທະນາ';

  @override
  String get deleteSessionConfirm =>
      'ທ່ານແນ່ໃຈບໍ່ວ່າຕ້ອງການລຶບການສົນທະນານີ້? ຂໍ້ຄວາມຈະສູນເສຍຢ່າງຖາວອນ.';

  @override
  String get clearHistory => 'ລ້າງປະຫວັດ';

  @override
  String get clearHistoryConfirm => 'ລ້າງຂໍ້ຄວາມທັງໝົດໃນເຊສຊັນນີ້?';

  @override
  String get chatHint => 'ພິມຂໍ້ຄວາມຂອງທ່ານ...';

  @override
  String get chatHintBlocked => 'ປົດລັອກ AI ເພື່ອສົນທະນາ';

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
  String get aiLimitAlmostReached => 'ເກືອບອອກຈາກຂໍ້ຄວາມ AI';

  @override
  String get unlockAi => 'ປົດລັອກ AI ບໍ່ຈໍາກັດ';

  @override
  String get aiTeaserFallback =>
      'ສະໝັກໃຊ້ Premium ເພື່ອປົດລັອກການຕອບຮັບເຕັມຮູບແບບ ແລະ ຮັບເຄັດລັບ AI ແບບບໍ່ຈຳກັດສຳລັບການໄປຊື້ເຄື່ອງຂອງທ່ານ...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'ເຂົ້າສູ່ລະບົບເພື່ອປົດລັອກ\nຄຸນສົມບັດພິເສດ';

  @override
  String get signInGoogle => 'ເຂົ້າສູ່ລະບົບດ້ວຍ Google';

  @override
  String get signInApple => 'ເຂົ້າສູ່ລະບົບດ້ວຍ Apple';

  @override
  String get continueAsGuest => 'ສືບຕໍ່ເປັນແຂກ';

  @override
  String get onboardingWelcomeTitle => 'ຍິນດີຕ້ອນຮັບສູ່ KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'ວິທີທີ່ສະຫລາດທີ່ສຸດໃນການຈັດລະບຽບການຊື້ເຄື່ອງຂອງທ່ານແລະປະຫຍັດເງິນ.';

  @override
  String get onboardingSetupTitle => 'ປັບແຕ່ງປະສົບການຂອງທ່ານ';

  @override
  String get onboardingSetupDesc =>
      'ເລືອກວິທີທີ່ທ່ານຕ້ອງການໃຫ້ KipiList ເບິ່ງ ແລະເຮັດວຽກສໍາລັບທ່ານ.';

  @override
  String get onboardingLoginTitle => 'ບັນທຶກທຸກຢ່າງໄວ້ໃນຄລາວ';

  @override
  String get onboardingLoginDesc =>
      'ຂໍ້​ມູນ​ຂອງ​ທ່ານ synced ໃນ​ທົ່ວ​ອຸ​ປະ​ກອນ​ຂອງ​ທ່ານ​ທັງ​ຫມົດ​';

  @override
  String get onboardingShareTitle => 'ແບ່ງປັນກັບຄົນທີ່ທ່ານຮັກ';

  @override
  String get onboardingShareDesc =>
      'ຊິ້ງຂໍ້ມູນລາຍຊື່ກັບຄອບຄົວ ແລະໝູ່ເພື່ອນໃນເວລາຈິງ';

  @override
  String get onboardingPremiumTitle => 'ປົດລັອກຄຸນສົມບັດທັງໝົດ';

  @override
  String get onboardingPremiumSubtitle =>
      'ໃຊ້ປະໂຫຍດສູງສຸດຈາກລາຍການຊື້ເຄື່ອງຂອງເຈົ້າ';

  @override
  String get onboardingAnnualBadge => 'ມູນຄ່າທີ່ດີທີ່ສຸດ';

  @override
  String get onboardingMonthlyLabel => 'ປະຈໍາເດືອນ';

  @override
  String get onboardingAnnualLabel => 'ປະຈໍາປີ';

  @override
  String get onboardingViewAllPlans => 'ເບິ່ງແຜນການທັງຫມົດ';

  @override
  String get onboardingSubscribeCta => 'ຈອງ';

  @override
  String get onboardingCancelAnytime =>
      'ຍົກເລີກໄດ້ທຸກເວລາ. ບໍ່ມີຄໍາຫມັ້ນສັນຍາ.';

  @override
  String get onboardingContinueAsGuest => 'ສືບຕໍ່ໃນຖານະແຂກ';

  @override
  String get onboardingRestore => 'ຟື້ນຟູ';

  @override
  String get onboardingRestoreDesc =>
      'ມີການສະໝັກໃຊ້ຢູ່ແລ້ວບໍ? ແຕະບ່ອນນີ້ເພື່ອກູ້ມັນຄືນມາ.';

  @override
  String get onboardingExit => 'ອອກໄປ';

  @override
  String get onboardingPersonalizationTitle => 'ມາຮູ້ຈັກກັບເຈົ້າ';

  @override
  String get onboardingPersonalizationDesc =>
      'ພວກເຮົາຈະໃຊ້ອັນນີ້ເພື່ອປັບແຕ່ງຄຳແນະນຳຂອງທ່ານໃຫ້ເປັນແບບສ່ວນຕົວ ແລະ ເຮັດໃຫ້ການຊື້ເຄື່ອງສະຫຼາດຂຶ້ນ.';

  @override
  String get onboardingPersonalizationFoodLabel => 'ອາຫານທີ່ທ່ານມັກແມ່ນຫຍັງ?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'ຕົວຢ່າງ: Pizza, Sushi, Lasagna...';

  @override
  String get onboardingPersonalizationCta => 'ສືບຕໍ່';

  @override
  String get onboardingPersonalizationSkip => 'ຂ້າມໄປດຽວນີ້';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'ບອກພວກເຮົາອາຫານທີ່ທ່ານມັກເພື່ອສືບຕໍ່';

  @override
  String get settingsDefaultScreen => 'ໜ້າຈໍຫຼັກເລີ່ມຕົ້ນ';

  @override
  String get settingsDefaultScreenSubtitle =>
      'ເລືອກລະຫວ່າງລາຍການຊື້ເຄື່ອງ ຫຼື AI ສົນທະນາ';

  @override
  String get settingsScreenList => 'ລາຍການຊື້ເຄື່ອງ';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'ຂໍ້ຜິດພາດການເຂົ້າສູ່ລະບົບ: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'ເກີດຄວາມຜິດພາດໃນການໂຫຼດຂໍ້ສະເໜີ. ລອງອີກຄັ້ງ.';

  @override
  String get paywallPurchaseError => 'ບໍ່ສາມາດສຳເລັດການຊື້ໄດ້. ລອງອີກຄັ້ງ.';

  @override
  String get paywallRestoreError =>
      'ບໍ່ພົບການສະໝັກໃຊ້ທີ່ເຄື່ອນໄຫວເພື່ອກູ້ຂໍ້ມູນຄືນມາ.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ມື້ຟຣີ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ອາທິດຟຣີ',
      one: '$count ອາທິດຟຣີ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ເດືອນຟຣີ',
      one: '$count ເດືອນຟຣີ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'ລອງໃຊ້ KipiList Pro ຟຣີເປັນເວລາ 7 ມື້';

  @override
  String get paywallTrialSubtitle =>
      'ຍົກເລີກໄດ້ທຸກເວລາ. ບໍ່ມີຄ່າໃຊ້ຈ່າຍໃນມື້ນີ້.';

  @override
  String get paywallTrialCta => 'ເລີ່ມການທົດລອງໃຊ້ຟຣີ';

  @override
  String get recipeAddToList => 'ເພີ່ມໃສ່ລາຍການຊື້ເຄື່ອງ';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ສ່ວນປະກອບເພີ່ມໃສ່ $listName';
  }

  @override
  String get paywallFeaturesTitle => 'ທຸກ​ສິ່ງ​ທຸກ​ຢ່າງ​ທີ່​ທ່ານ​ຕ້ອງ​ການ​:';

  @override
  String get paywallFeatureUnlimitedLists => 'ບັນຊີລາຍຊື່ບໍ່ຈໍາກັດ';

  @override
  String get paywallFeatureSmartAI => 'AI ອັດສະລິຍະ';

  @override
  String get paywallFeatureExpenseControl => 'ການຄວບຄຸມຄ່າໃຊ້ຈ່າຍ';

  @override
  String get paywallFeatureSharing => 'ການແບ່ງປັນ';

  @override
  String get paywallBeforeAfterTitle => 'AI ກ່ອນ ແລະ ຫຼັງ:';

  @override
  String get paywallLabelCommon => 'ທົ່ວໄປ';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ເຂົ້າ';

  @override
  String get paywallBeforeItem2 => 'ສະບູ່';

  @override
  String get paywallBeforeItem3 => 'ຊີ້ນ';

  @override
  String get paywallBeforeItem4 => 'ເຂົ້າຈີ່';

  @override
  String get paywallAfterItem1 => 'ເມັດພືດ';

  @override
  String get paywallAfterItem2 => 'ທໍາຄວາມສະອາດ';

  @override
  String get paywallAfterItem3 => 'ຊີ້ນ';

  @override
  String get paywallAfterItem4 => 'ເບເກີຣີ';

  @override
  String get paywallTestimonialsTitle => 'ສິ່ງທີ່ຜູ້ໃຊ້ຂອງພວກເຮົາເວົ້າ:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI ຈັດການຊື້ຂອງຂ້ອຍໃນວິນາທີ. ຂ້ອຍປະຫຍັດ 20 ນາທີຕໍ່ການເດີນທາງຕະຫຼາດ.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'ຂ້ອຍບໍ່ເຄີຍລືມລາຍການລາຍຊື່ອີກ. AI ສົນທະນາແມ່ນຄວາມຮູ້ສຶກ!';

  @override
  String get paywallSocialProof => '+2,400 ຄອບຄົວໃຊ້ມັນ';

  @override
  String get paywallCtaUnlock => 'ປົດລັອກ PRO';

  @override
  String get paywallBestValue => 'VALUE ທີ່ດີທີ່ສຸດ';

  @override
  String get paywallMostPopular => 'ນິຍົມທີ່ສຸດ';

  @override
  String get paywallSafeCheckout => 'ການຊໍາລະທີ່ປອດໄພ';

  @override
  String get paywallSelectPlan => 'ເລືອກແຜນຂອງທ່ານ:';

  @override
  String paywallSavePercent(Object percent) {
    return 'ປະຢັດ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'ພຽງແຕ່ $price/ເດືອນ';
  }

  @override
  String get paywallPackageAnnual => 'ແຜນປະຈຳປີ';

  @override
  String get paywallPackageMonthly => 'ແຜນປະຈໍາເດືອນ';

  @override
  String get paywallPackageLifetime => 'ການເຂົ້າເຖິງຕະຫຼອດຊີວິດ';

  @override
  String get paywallCancelAnytime => 'ຍົກເລີກໄດ້ທຸກເວລາ. ບໍ່ມີຄໍາຫມັ້ນສັນຍາ.';

  @override
  String get paywallPolicy => 'ນະໂຍບາຍຄວາມເປັນສ່ວນຕົວ';

  @override
  String get paywallTerms => 'ເງື່ອນໄຂການນໍາໃຊ້';

  @override
  String get paywallRestore => 'ຟື້ນຟູ';

  @override
  String get paywallHeroHeadline => 'Kipi AI ຢູ່ຄຽງຂ້າງເຈົ້າສະເໝີ';

  @override
  String get paywallHeroSubtitle =>
      'ເພີ່ມລາຍການ, ຈັດລະບຽບລາຍການແລະປະຫຍັດເວລາດ້ວຍ AI ໃນຖົງຂອງທ່ານ';

  @override
  String get paywallBenefit1Desc => 'ເພີ່ມ, ຈັດລະບຽບ ແລະແນະນຳລາຍການ 24/7';

  @override
  String get paywallBenefit2Desc => 'ບໍ່ມີຂອບເຂດຈໍາກັດ 3 ລາຍການ';

  @override
  String get paywallBenefit3Desc => 'ການຕິດຕາມຄ່າໃຊ້ຈ່າຍແລະລາຍຊື່ຄອບຄົວ';

  @override
  String get paywallPackageMonthlyDesc => 'ຄວາມຍືດຫຍຸ່ນຢ່າງເຕັມທີ່';

  @override
  String paywallCtaTrialDays(int days) {
    return 'ເລີ່ມຟຣີ — $days ມື້';
  }

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
      'ເວົ້າຕາມທຳມະຊາດເພື່ອຈັດການລາຍການຂອງທ່ານ!\n\nຕົວຢ່າງ:\n• \'ເພີ່ມເຂົ້າຈີ່, ເນີຍແຂງ ແລະ ແຮມ\'\n• \'ລຶບຜົງຊັກຜ້າ\'\n• \'ປ່ຽນຊຸດຮູບແບບເປັນສີຟ້າ\'\n\nນີ້ແມ່ນຄຸນສົມບັດພິເສດຂອງ KipiList Premium.';

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
      'ຄຳຕິຊົມຂອງທ່ານໄດ້ຮັບແລ້ວ ແລະ ຊ່ວຍພວກເຮົາປັບປຸງ KipiList ສຳລັບທຸກຄົນ.';

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
  String get aiEnergy => 'ພະລັງງານ AI';

  @override
  String get searchInConversation => 'ຊອກຫາໃນການສົນທະນາ...';

  @override
  String get noMessagesFound => 'ບໍ່ພົບຂໍ້ຄວາມ';

  @override
  String get suggestedQuestions => 'ຄຳຖາມທີ່ແນະນຳ:';

  @override
  String get shoppingAssistant => 'ຜູ້ຊ່ວຍຊື້ເຄື່ອງ';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased ຈາກທັງໝົດ $total ຊື້ແລ້ວ';
  }

  @override
  String get estimatedCost => 'ຄາດຄະເນ';

  @override
  String get viewItems => 'ເບິ່ງລາຍການ';

  @override
  String get noItemsInList => 'ບໍ່ມີລາຍການຢູ່ໃນບັນຊີລາຍຊື່';

  @override
  String get longHistoryWarning =>
      'ປະຫວັດຍາວ: ຜູ້ຊ່ວຍສຸມໃສ່ຂໍ້ຄວາມຫຼ້າສຸດເພື່ອປະສິດທິພາບທີ່ດີກວ່າ.';

  @override
  String get listening => 'ກຳລັງຟັງ...';

  @override
  String get addDirectToList => 'ເພີ່ມໂດຍກົງໃສ່ລາຍຊື່';

  @override
  String get unlockFullResponse => 'ປົດລັອກການຕອບໂຕ້ຢ່າງເຕັມທີ່';

  @override
  String get switchList => 'ສະຫຼັບລາຍຊື່';

  @override
  String get marketMode => 'ຮູບແບບຕະຫຼາດ';

  @override
  String get backToChat => 'ກັບໄປທີ່ການສົນທະນາ';

  @override
  String get finishShopping => 'ສຳເລັດການຊື້ເຄື່ອງ';

  @override
  String get welcomeAiAssistant => 'ຍິນດີຕ້ອນຮັບສູ່ຜູ້ຊ່ວຍ AI';

  @override
  String get createListToStartAi =>
      'ສ້າງລາຍການຊື້ເຄື່ອງເພື່ອເລີ່ມໃຊ້ການສົນທະນາອັດສະລິຍະ.';

  @override
  String get howCanIHelp => 'ຂ້ອຍສາມາດຊ່ວຍໄດ້ແນວໃດ?';

  @override
  String get chatSubtitleShort => 'ສອບຖາມລາຄາ, ສູດອາຫານ, ອົງກອນ...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total ຊື້ແລ້ວ';
  }

  @override
  String get quickReplies => 'ຕອບກັບດ່ວນ:';

  @override
  String get voiceProFeature =>
      'ຄໍາສັ່ງສຽງຂັ້ນສູງແມ່ນ Pro. ເປີດໃຊ້ການພິມຕາມຄຳສັ່ງພື້ນຖານ...';

  @override
  String get viewPro => 'ເບິ່ງ Pro';

  @override
  String get errorLoadingChat =>
      'ອຸຍ! ເກີດບາງຢ່າງຜິດພາດຂຶ້ນໃນການໂຫລດການສົນທະນາ.';

  @override
  String get errorLoadingChatSubtitle =>
      'ກວດເບິ່ງການເຊື່ອມຕໍ່ຂອງທ່ານ ຫຼືລອງໃໝ່ໃນພາຍຫຼັງ.';

  @override
  String get errorOscillation =>
      'ອັນນີ້ອາດຈະເກີດຂຶ້ນຍ້ອນການສັ່ນສະເທືອນຂອງເຄືອຂ່າຍ ຫຼືຄວາມບໍ່ພ້ອມຊົ່ວຄາວ. ກະລຸນາລອງອີກຄັ້ງ.';

  @override
  String get activeListening => 'Active Listening';

  @override
  String get whatToDoWithItem => 'ເຈົ້າຢາກຈະເຮັດແນວໃດກັບລາຍການນີ້?';

  @override
  String get viewDetails => 'ເບິ່ງລາຍລະອຽດ';

  @override
  String get openMenu => 'ເປີດເມນູ';

  @override
  String get viewRecipe => 'ເບິ່ງສູດອາຫານ';

  @override
  String get recipeCreated => 'ສ້າງສູດອາຫານແລ້ວ!';

  @override
  String get editRecipe => 'ແກ້ໄຂ';

  @override
  String get deleteRecipe => 'ລຶບ';

  @override
  String get deleteRecipeConfirm => 'ລຶບສູດອາຫານນີ້?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'ທ່ານແນ່ໃຈບໍ່ວ່າຕ້ອງການລຶບ \"$recipeName\"? ການດຳເນີນການນີ້ບໍ່ສາມາດຍົກເລີກໄດ້.';
  }

  @override
  String get ingredients => 'ສ່ວນປະສົມ';

  @override
  String get instructions => 'ວິທີເຮັດ';

  @override
  String get prepTime => 'ເວລາໃນການກຽມ';

  @override
  String get recipeSaved => 'ບັນທຶກສູດອາຫານແລ້ວ!';

  @override
  String get noRecipesSaved => 'ບໍ່ມີສູດອາຫານທີ່ບັນທຶກໄວ້';

  @override
  String get noRecipesSavedHint =>
      'ສ້າງສູດອາຫານທຳອິດຂອງທ່ານໂດຍການແຕະປຸ່ມຂ້າງລຸ່ມນີ້.';

  @override
  String get myRecipes => 'ສູດອາຫານຂອງຂ້ອຍ';

  @override
  String get newRecipe => 'ສູດອາຫານໃໝ່';

  @override
  String get loadingRecipes => 'ກຳລັງໂຫຼດສູດອາຫານຂອງທ່ານ...';

  @override
  String get errorLoadingRecipes => 'ເກີດຂໍ້ຜິດພາດໃນການໂຫຼດສູດອາຫານ';

  @override
  String get addIngredient => 'ເພີ່ມສ່ວນປະສົມ';

  @override
  String get saveRecipe => 'ບັນທຶກ';

  @override
  String get recipeName => 'ຊື່ສູດອາຫານ';

  @override
  String get shortDescription => 'ຄຳອະທິບາຍສັ້ນໆ';

  @override
  String get prepTimeMinutes => 'ເວລາໃນການກຽມ (ນາທີ)';

  @override
  String get instructionsHint => 'ພິມຂັ້ນຕອນລະໜຶ່ງແຖວ...';

  @override
  String get addPhoto => 'ເພີ່ມຮູບພາບ';

  @override
  String get imageUrlPlaceholder => 'ຫຼື ວາງ URL ຂອງຮູບພາບ';

  @override
  String get tags => 'ແທັກ';

  @override
  String get recipeTags => 'ແທັກສູດອາຫານ';

  @override
  String get suggestedTags => 'ແນະນຳ';

  @override
  String get searchRecipes => 'ຄົ້ນຫາສູດອາຫານ...';

  @override
  String get filterByTag => 'ກັ່ນຕອງຕາມແທັກ';

  @override
  String get allTags => 'ທັງໝົດ';

  @override
  String get recipeDeleted => 'ລຶບສູດອາຫານແລ້ວ';

  @override
  String get saveChanges => 'ບັນທຶກການປ່ຽນແປງ';

  @override
  String get editRecipeTitle => 'ແກ້ໄຂສູດອາຫານ';

  @override
  String get newRecipeTitle => 'ສູດອາຫານໃໝ່';

  @override
  String get requiredField => 'ຈຳເປັນ';

  @override
  String get chooseImageSource => 'ເລືອກແຫຼ່ງຮູບພາບ';

  @override
  String get gallery => 'ແກເລີຣີ';

  @override
  String get enterUrl => 'ປ້ອນ URL';

  @override
  String get recipeImage => 'ຮູບພາບສູດອາຫານ';

  @override
  String get removeImage => 'ລຶບຮູບພາບອອກ';

  @override
  String get mealPlannerTitle => 'ເຄື່ອງມືວາງແຜນອາຫານ';

  @override
  String get mealPlannerViewMonthly => 'ເບິ່ງແບບລາຍເດືອນ';

  @override
  String get mealPlannerViewWeekly => 'ເບິ່ງແບບລາຍອາທິດ';

  @override
  String get mealPlannerNoMeals => 'ບໍ່ມີຄາບອາຫານທີ່ວາງແຜນໄວ້';

  @override
  String get mealPlannerNoMealsHint => 'ແຕະທີ່ວັນເພື່ອເພີ່ມຄາບອາຫານ';

  @override
  String get mealPlannerLoading => 'ກຳລັງໂຫຼດແຜນອາຫານ...';

  @override
  String get mealPlannerError => 'ເກີດຂໍ້ຜິດພາດໃນການໂຫຼດແຜນອາຫານ';

  @override
  String get mealPlannerAddMeal => 'ເພີ່ມຄາບອາຫານ';

  @override
  String get mealPlannerEditMeal => 'ແກ້ໄຂຄາບອາຫານ';

  @override
  String get mealPlannerDeleteMeal => 'ລຶບຄາບອາຫານອອກ';

  @override
  String get mealPlannerMealDeleted => 'ລຶບຄາບອາຫານອອກແລ້ວ';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ທີ່',
      one: '$count ທີ່',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'ຈຳນວນທີ່';

  @override
  String get mealPlannerNoteLabel => 'ໝາຍເຫດ (ທາງເລືອກ)';

  @override
  String get mealPlannerSelectRecipe => 'ເລືອກສູດອາຫານ';

  @override
  String get mealPlannerSearchRecipes => 'ຄົ້ນຫາສູດອາຫານ...';

  @override
  String get mealPlannerNoRecipesFound => 'ບໍ່ພົບສູດອາຫານ';

  @override
  String get mealPlannerNoRecipesHint => 'ສ້າງສູດອາຫານໃນແທັບສູດອາຫານກ່ອນ';

  @override
  String get mealPlannerSave => 'ເພີ່ມໃສ່ແຜນ';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'ວາງແຜນແລ້ວ $count ຈາກ $total ຄາບ';
  }

  @override
  String get mealPlannerGenerateList => 'ສ້າງລາຍການຊື້ເຄື່ອງ';

  @override
  String get mealPlannerGenerateListConfirm =>
      'ເພີ່ມສ່ວນປະສົມທັງໝົດຈາກຄາບອາຫານທີ່ວາງແຜນໄວ້ໃນອາທິດນີ້ໃສ່ລາຍການຊື້ເຄື່ອງຂອງທ່ານບໍ?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'ເພີ່ມ $count ສ່ວນປະສົມໃສ່ລາຍການຂອງທ່ານແລ້ວ!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ບໍ່ມີສ່ວນປະສົມທີ່ຈະເພີ່ມ. ວາງແຜນຄາບອາຫານດ້ວຍສູດອາຫານກ່ອນ.';

  @override
  String get mealPlannerGenerateListNoList => 'ສ້າງລາຍການຊື້ເຄື່ອງກ່ອນ.';

  @override
  String get mealPlannerMealTypeBreakfast => 'ອາຫານເຊົ້າ';

  @override
  String get mealPlannerMealTypeLunch => 'ອາຫານທ່ຽງ';

  @override
  String get mealPlannerMealTypeDinner => 'ອາຫານແລງ';

  @override
  String get mealPlannerMealTypeSnack => 'ອາຫານວ່າງ';

  @override
  String get mealPlannerDateLabel => 'ວັນທີ';

  @override
  String get mealPlannerWeekEmpty => 'ບໍ່ມີແຜນສຳລັບອາທິດນີ້';

  @override
  String get mealPlannerWeekEmptyHint =>
      'ແຕະທີ່ມື້ໃດກໍໄດ້ເພື່ອເລີ່ມວາງແຜນອາຫານຂອງທ່ານ!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes ນາທີ';
  }

  @override
  String get inviteToList => 'ເຊີນເຂົ້າຮ່ວມລາຍການ';

  @override
  String get shareApp => 'ແບ່ງປັນແອັບ';

  @override
  String get shareAppDescription => 'ເຊີນໝູ່ມາໃຊ້ KipiList';

  @override
  String shareReferralText(Object url) {
    return 'ຂ້ອຍກຳລັງໃຊ້ KipiList ເພື່ອຈັດລະບຽບການຊື້ເຄື່ອງຂອງຂ້ອຍ! ດາວໂຫລດຜ່ານລິ້ງຂອງຂ້ອຍ ແລະພວກເຮົາທັງສອງຈະໄດ້ຮັບ Premium ຟຣີ 7 ມື້: $url';
  }

  @override
  String get shareReferralSubject => 'ຮັບ 7 ມື້ຂອງ KipiList Premium!';

  @override
  String get gestureHint => 'ກົດຄ້າງໄວ້ເພື່ອເລືອກ • ປັດເພື່ອເອົາອອກ';

  @override
  String get catalogTitle => 'ລາຍການ';

  @override
  String get catalogMyFrequents => 'ເລື້ອຍໆຂອງຂ້ອຍ';

  @override
  String get catalogSearchGlobal => 'ຊອກຫາຜະລິດຕະພັນໃດນຶ່ງ...';

  @override
  String catalogSearchInCategory(String category) {
    return 'ຊອກຫາໃນ $category...';
  }

  @override
  String get catalogSortPopular => 'ນິຍົມທີ່ສຸດ';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'ຊາດ';

  @override
  String get catalogRareSection => 'ບໍ່ຄ່ອຍມີຢູ່ໃນປະເທດຂອງເຈົ້າ';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'ເພີ່ມ $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'ບໍ່ພົບສິນຄ້າ, ພິມຊື່';

  @override
  String get catalogBrowse => 'ຊອກຫາລາຍການ';

  @override
  String get offlineBanner => 'ທ່ານອອບລາຍຢູ່';

  @override
  String get consentTitle => 'ຄວາມເປັນສ່ວນຕົວ & ການວິເຄາະ';

  @override
  String get consentBody =>
      'KipiList ໃຊ້ Firebase Analytics ເພື່ອປັບປຸງປະສົບການຂອງທ່ານ. ຂໍ້ມູນຂອງທ່ານຖືກປະມວນຜົນຕາມນະໂຍບາຍຄວາມເປັນສ່ວນຕົວຂອງພວກເຮົາ.';

  @override
  String get consentAccept => 'ຍອມຮັບ';

  @override
  String get consentDecline => 'ບໍ່, ຂອບໃຈ';

  @override
  String get mealPlannerPantryAllAvailable => 'ໃນຫຼັກຊັບ';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ລາຍການທີ່ຂາດຫາຍໄປ',
      one: '$count ລາຍການທີ່ຂາດຫາຍໄປ',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'ວັນໝົດອາຍຸ';

  @override
  String get notInformed => 'ບໍ່ໄດ້ແຈ້ງໃຫ້ຊາບ';
}
