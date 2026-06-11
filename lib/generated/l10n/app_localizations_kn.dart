// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'ಶಾಪಿಂಗ್ ಪಟ್ಟಿ';

  @override
  String get lists => 'ಪಟ್ಟಿಗಳು';

  @override
  String get pantry => 'ಪ್ಯಾಂಟ್ರಿ';

  @override
  String get navChat => 'ಚಾಟ್ ಮಾಡಿ';

  @override
  String get navRecipes => 'ಪಾಕವಿಧಾನಗಳು';

  @override
  String get navLists => 'ಪಟ್ಟಿಗಳು';

  @override
  String get navMealPlanner => 'ಮೆನು';

  @override
  String get cancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get save => 'ಉಳಿಸಿ';

  @override
  String get create => 'ರಚಿಸಿ';

  @override
  String get add => 'ಸೇರಿಸಿ';

  @override
  String get remove => 'ತೆಗೆದುಹಾಕಿ';

  @override
  String get delete => 'ಅಳಿಸಿ';

  @override
  String get edit => 'ಸಂಪಾದಿಸಿ';

  @override
  String get copy => 'ನಕಲಿಸಿ';

  @override
  String get next => 'ಮುಂದೆ';

  @override
  String get retry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get regenerate => 'ಮರುಉತ್ಪಾದಿಸಿ';

  @override
  String get copiedToClipboard => 'ಕ್ಲಿಪ್ಬೋರ್ಡ್ಗೆ ನಕಲಿಸಲಾಗಿದೆ';

  @override
  String get confirm => 'ದೃಢಪಡಿಸಿ';

  @override
  String get close => 'ಮುಚ್ಚಿ';

  @override
  String get import => 'ಆಮದು ಮಾಡಿ';

  @override
  String get rename => 'ಮರುಹೆಸರಿಸಿ';

  @override
  String get upgrade => 'ಅಪ್ಗ್ರೇಡ್ ಮಾಡಿ';

  @override
  String get clear => 'ತೆರವುಗೊಳಿಸಿ';

  @override
  String error(String message) {
    return 'ದೋಷ: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'ದೋಷ: $message';
  }

  @override
  String get purchaseError => 'ಖರೀದಿ ಪ್ರಕ್ರಿಯೆಯಲ್ಲಿ ದೋಷ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get restoreError =>
      'ಖರೀದಿಗಳನ್ನು ಮರುಸ್ಥಾಪಿಸುವಲ್ಲಿ ದೋಷ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get loading => 'ಲೋಡ್ ಆಗುತ್ತಿದೆ...';

  @override
  String get fieldRequired => 'ಅಗತ್ಯವಿರುವ ಕ್ಷೇತ್ರ';

  @override
  String get addedFeedback => 'ಸೇರಿಸಲಾಗಿದೆ!';

  @override
  String get profile => 'ಪ್ರೊಫೈಲ್';

  @override
  String get exitShoppingMode => 'ಶಾಪಿಂಗ್ ಮೋಡ್‌ನಿಂದ ನಿರ್ಗಮಿಸಿ';

  @override
  String get exit => 'ನಿರ್ಗಮಿಸಿ';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ',
      one: '$count ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'ಅಂದಾಜು';

  @override
  String get alreadyPurchased => 'ಈಗಾಗಲೇ ಖರೀದಿಸಲಾಗಿದೆ';

  @override
  String get clearList => 'ಪಟ್ಟಿ ತೆರವುಗೊಳಿಸಿ';

  @override
  String get clearPurchased => 'ಖರೀದಿಸಿದವು ತೆರವುಗೊಳಿಸಿ';

  @override
  String get share => 'ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get shareViaCode => 'ಕೋಡ್ ಮೂಲಕ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get importViaCode => 'ಕೋಡ್ ಮೂಲಕ ಆಮದು ಮಾಡಿ';

  @override
  String get listAssistant => 'ಪಟ್ಟಿ ಸಹಾಯಕ';

  @override
  String get globalAssistant => 'ಜಾಗತಿಕ ಸಹಾಯಕ';

  @override
  String get becomePremium => 'ಪ್ರೀಮಿಯಂ ಆಗಿ';

  @override
  String get manageSubscription => 'ಚಂದಾದಾರಿಕೆ ನಿರ್ವಹಿಸಿ';

  @override
  String get completePurchase => 'ಖರೀದಿ ಪೂರ್ಣಗೊಳಿಸಿ';

  @override
  String get confirmClearList => 'ಎಲ್ಲಾ ಐಟಂಗಳನ್ನು ತೆಗೆದುಹಾಕಬೇಕೆ?';

  @override
  String get shareListTitle => 'ಪಟ್ಟಿ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get shareThisCode => 'ಈ ಕೋಡ್ ಅನ್ನು ಹಂಚಿಕೊಳ್ಳಿ:';

  @override
  String get validForLimitedTime => 'ಸೀಮಿತ ಸಮಯಕ್ಕೆ ಮಾತ್ರ ಮಾನ್ಯ';

  @override
  String get importListTitle => 'ಪಟ್ಟಿ ಆಮದು ಮಾಡಿ';

  @override
  String get enterCodeHint => 'ಕೋಡ್ ನಮೂದಿಸಿ';

  @override
  String get confirmArchiveTitle => 'ಖರೀದಿ ಪೂರ್ಣಗೊಳಿಸಿ';

  @override
  String get confirmArchiveContent =>
      'ಈ ಖರೀದಿಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ ಮತ್ತು ಪಟ್ಟಿಯನ್ನು ಆರ್ಕೈವ್ ಮಾಡಬೇಕೆ?';

  @override
  String get complete => 'ಪೂರ್ಣಗೊಳಿಸಿ';

  @override
  String get listArchived => 'ಪಟ್ಟಿಯನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಆರ್ಕೈವ್ ಮಾಡಲಾಗಿದೆ!';

  @override
  String listAdded(String listName) {
    return '$listName ಸೇರಿಸಲಾಗಿದೆ!';
  }

  @override
  String get buy => 'ಖರೀದಿಸಿ';

  @override
  String get unmark => 'ಗುರುತು ತೆಗೆದುಹಾಕಿ';

  @override
  String confirmDeleteItems(int count) {
    return '$count ಐಟಂ(ಗಳ)ನ್ನು ತೆಗೆದುಹಾಕಬೇಕೆ?';
  }

  @override
  String get confirmDeleteTitle => 'ದೃಢಪಡಿಸಿ';

  @override
  String confirmContent(int count) {
    return '$count ಐಟಂ(ಗಳ)ನ್ನು ತೆಗೆದುಹಾಕಬೇಕೆ?';
  }

  @override
  String get archiveList => 'ಪಟ್ಟಿ ಆರ್ಕೈವ್ ಮಾಡಿ';

  @override
  String get pantryAppBar => 'ಪ್ಯಾಂಟ್ರಿ';

  @override
  String get generateShoppingList => 'ಶಾಪಿಂಗ್ ಪಟ್ಟಿ ರಚಿಸಿ';

  @override
  String get pantryEmpty => 'ಖಾಲಿ ಪ್ಯಾಂಟ್ರಿ';

  @override
  String get pantryEmptySubtitle =>
      'ನೀವು ಮನೆಯಲ್ಲಿ ಇಟ್ಟುಕೊಳ್ಳಲು ಬಯಸುವ ಉತ್ಪನ್ನಗಳನ್ನು ಸೇರಿಸಿ';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ಐಟಂ(ಗಳ)ನ್ನು ಖರೀದಿಸಬೇಕಾಗಿದೆ';
  }

  @override
  String get noItemsToBuy => 'ಖರೀದಿಸಲು ಯಾವುದೇ ಐಟಂಗಳಿಲ್ಲ';

  @override
  String get newPantryList => 'ಪ್ಯಾಂಟ್ರಿ ಶಾಪಿಂಗ್';

  @override
  String get newListTitle => 'ಹೊಸ ಶಾಪಿಂಗ್ ಪಟ್ಟಿ';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ಐಟಂ(ಗಳ)ನ್ನು ಸೇರಿಸಲಾಗುವುದು';
  }

  @override
  String get listNameLabel => 'ಪಟ್ಟಿಯ ಹೆಸರು';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" ಪಟ್ಟಿಯನ್ನು $count ಐಟಂಗಳೊಂದಿಗೆ ರಚಿಸಲಾಗಿದೆ';
  }

  @override
  String get noTracking => 'ಟ್ರ್ಯಾಕಿಂಗ್ ಇಲ್ಲ';

  @override
  String get markAsPurchased => 'ಖರೀದಿಸಿದ ಎಂದು ಗುರುತಿಸಿ';

  @override
  String editPantryItem(String name) {
    return '$name ಸಂಪಾದಿಸಿ';
  }

  @override
  String get idealQuantity => 'ಆದರ್ಶ ಪ್ರಮಾಣ';

  @override
  String get currentQuantity => 'ಪ್ರಸ್ತುತ ಪ್ರಮಾಣ';

  @override
  String get consumed => 'ಸೇವಿಸಲಾಗಿದೆ';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name ಅನ್ನು $quantity $unit ಗೆ ಮರುಪೂರೈಸಲಾಗಿದೆ';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'ಪ್ಯಾಂಟ್ರಿಯಿಂದ \"$name\" ತೆಗೆದುಹಾಕಬೇಕೆ?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name ಸಂಪಾದಿಸಿ';
  }

  @override
  String get scanProductTitle => 'ಉತ್ಪನ್ನವನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get positionBarcodeCenter => 'ಬಾರ್‌ಕೋಡ್ ಅನ್ನು ಮಧ್ಯದಲ್ಲಿ ಇರಿಸಿ';

  @override
  String get product => 'ಉತ್ಪನ್ನ';

  @override
  String get settingsAppBar => 'ಸೆಟ್ಟಿಂಗ್ಗಳು';

  @override
  String get language => 'ಭಾಷೆ';

  @override
  String get languagePortuguese => 'ಪೋರ್ಚುಗೀಸ್ (ಬ್ರೆಸಿಲ್)';

  @override
  String get languageEnglish => 'ಇಂಗ್ಲೀಷ್';

  @override
  String get languageSystem => 'ಸಿಸ್ಟಮ್ ಡೀಫಾಲ್ಟ್';

  @override
  String get chooseLanguage => 'ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get searchLanguage => 'ಭಾಷೆಯನ್ನು ಹುಡುಕಿ...';

  @override
  String get currency => 'ಕರೆನ್ಸಿ';

  @override
  String get chooseCurrency => 'ಕರೆನ್ಸಿ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get searchCurrency => 'ಕರೆನ್ಸಿ ಹುಡುಕಿ...';

  @override
  String get appearance => 'ಗೋಚರತೆ';

  @override
  String get light => 'ಲೈಟ್';

  @override
  String get system => 'ಸಿಸ್ಟಮ್';

  @override
  String get dark => 'ಡಾರ್ಕ್';

  @override
  String get themeColor => 'ಥೀಮ್ ಬಣ್ಣ';

  @override
  String get dynamicColors => 'ಡೈನಾಮಿಕ್ ಬಣ್ಣಗಳು';

  @override
  String get dynamicColorsSubtitle => 'ನಿಮ್ಮ ವಾಲ್‌ಪೇಪರ್ ಆಧಾರಿತ ಬಣ್ಣಗಳನ್ನು ಬಳಸಿ';

  @override
  String get dynamicColorsEnabledWarning =>
      'ಥೀಮ್ ಬಣ್ಣವು ಪರಿಣಾಮ ಬೀರಲು ಡೈನಾಮಿಕ್ ಬಣ್ಣಗಳನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get finance => 'ಹಣಕಾಸು';

  @override
  String get monthlyBudgetNav => 'ಮಾಸಿಕ ಬಜೆಟ್';

  @override
  String get budgetSubtitle => 'ನಿಮ್ಮ ಮಾಸಿಕ ಖರ್ಚು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ';

  @override
  String get data => 'ಡೇಟಾ';

  @override
  String get backupNav => 'ಬ್ಯಾಕಪ್';

  @override
  String get backupSubtitle => 'ನಿಮ್ಮ ಡೇಟಾವನ್ನು ರಫ್ತು ಅಥವಾ ಆಮದು ಮಾಡಿ';

  @override
  String get about => 'ಕುರಿತು';

  @override
  String get version => 'ಆವೃತ್ತಿ';

  @override
  String get privacy => 'ಗೌಪ್ಯತೆ';

  @override
  String get termsOfUse => 'ಬಳಕೆಯ ನಿಯಮಗಳು';

  @override
  String get myAchievements => 'ನನ್ನ ಸಾಧನೆಗಳು';

  @override
  String get itemsPurchased => 'ಖರೀದಿಸಿದ ವಸ್ತುಗಳು';

  @override
  String get totalSavings => 'ಒಟ್ಟು ಉಳಿತಾಯ';

  @override
  String get currentStreak => 'ಪ್ರಸ್ತುತ ಸ್ಟ್ರೀಕ್';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ದಿನಗಳು',
      one: '$count ದಿನ',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'ಅನ್‌ಲಾಕ್ ಮಾಡಿದ ಬ್ಯಾಡ್ಜ್‌ಗಳು';

  @override
  String get badgeBeginner => 'ಹರಿಕಾರ';

  @override
  String get badgeOrganized => 'ಆಯೋಜಿಸಲಾಗಿದೆ';

  @override
  String get badgeSavingMaster => 'ಉಳಿಸುವ ಮಾಸ್ಟರ್';

  @override
  String get badgeSuperPlanner => 'ಸೂಪರ್ ಪ್ಲಾನರ್';

  @override
  String get backupTitle => 'ಬ್ಯಾಕಪ್';

  @override
  String get backupPremiumDescription =>
      'ಬ್ಯಾಕಪ್ ಮತ್ತು ರಫ್ತು ಪ್ರೀಮಿಯಂ ವೈಶಿಷ್ಟ್ಯವಾಗಿದೆ';

  @override
  String get exportData => 'ಡೇಟಾ ರಫ್ತು ಮಾಡಿ';

  @override
  String get exportDataSubtitle => 'ಎಲ್ಲಾ ಪಟ್ಟಿಗಳನ್ನು JSON ಆಗಿ ಉಳಿಸಿ';

  @override
  String get importData => 'ಡೇಟಾ ಆಮದು ಮಾಡಿ';

  @override
  String get importDataSubtitle => 'JSON ನಿಂದ ಪಟ್ಟಿಗಳನ್ನು ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get importJsonTitle => 'JSON ಆಮದು ಮಾಡಿ';

  @override
  String get importJsonHint => 'ಬ್ಯಾಕಪ್ JSON ಅನ್ನು ಇಲ್ಲಿ ಅಂಟಿಸಿ...';

  @override
  String get backupExported => 'ಬ್ಯಾಕಪ್ ರಫ್ತು ಮಾಡಲಾಗಿದೆ!';

  @override
  String get budgetAppBar => 'ಮಾಸಿಕ ಬಜೆಟ್';

  @override
  String get budgetPremiumLocked => 'ಜಾಗತಿಕ ಮಾಸಿಕ ಬಜೆಟ್ ಪ್ರೀಮಿಯಂ ಆಗಿದೆ';

  @override
  String get budgetUpgradePrompt => 'ಅನ್ಲಾಕ್ ಮಾಡಲು ಅಪ್ಗ್ರೇಡ್ ಮಾಡಿ';

  @override
  String get noBudgetDefined => 'ಯಾವುದೇ ಬಜೆಟ್ ಹೊಂದಿಸಿಲ್ಲ';

  @override
  String totalEstimated(String amount) {
    return 'ಒಟ್ಟು ಅಂದಾಜು: $amount';
  }

  @override
  String get setBudgetButton => 'ಬಜೆಟ್ ಹೊಂದಿಸಿ';

  @override
  String get budgetLists => 'ಪಟ್ಟಿಗಳು';

  @override
  String get budgetValueLabel => 'ಮೊತ್ತ';

  @override
  String get setBudgetTitle => 'ಮಾಸಿಕ ಬಜೆಟ್';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'ಎಲ್ಲಾ';

  @override
  String get filterPending => 'ಬಾಕಿ ಇದೆ';

  @override
  String get filterPurchased => 'ಖರೀದಿಸಲಾಗಿದೆ';

  @override
  String get sortName => 'ಹೆಸರು';

  @override
  String get sortCategory => 'ವರ್ಗ';

  @override
  String get sortDate => 'ದಿನಾಂಕ';

  @override
  String get sortManual => 'ಹಸ್ತಚಾಲಿತ';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased ರಲ್ಲಿ $total ಐಟಂಗಳು';
  }

  @override
  String progressBudget(String amount) {
    return 'ಬಜೆಟ್: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'ಒಟ್ಟು: $amount';
  }

  @override
  String get addItem => 'ಐಟಂ ಸೇರಿಸಿ';

  @override
  String get itemName => 'ಐಟಂ ಹೆಸರು';

  @override
  String get quantityShort => 'ಪ್ರಮಾಣ';

  @override
  String get unit => 'ಘಟಕ';

  @override
  String get category => 'ವರ್ಗ';

  @override
  String get estimatedPrice => 'ಅಂದಾಜು ಬೆಲೆ';

  @override
  String get addItemPrice => 'ಅಂದಾಜು ಬೆಲೆ';

  @override
  String get editItem => 'ಐಟಂ ಸಂಪಾದಿಸಿ';

  @override
  String get quantityFull => 'ಪ್ರಮಾಣ';

  @override
  String get editItemPrice => 'ಅಂದಾಜು ಬೆಲೆ';

  @override
  String get addToPantry => 'ಪ್ಯಾಂಟ್ರಿಗೆ ಸೇರಿಸಿ';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" ಅನ್ನು ನಿಮ್ಮ ಪ್ಯಾಂಟ್ರಿಗೆ ಸೇರಿಸಬೇಕೆ?';
  }

  @override
  String get yes => 'ಹೌದು';

  @override
  String get productName => 'ಉತ್ಪನ್ನದ ಹೆಸರು';

  @override
  String get idealQty => 'ಆದರ್ಶ ಪ್ರಮಾಣ';

  @override
  String get currentQty => 'ಪ್ರಸ್ತುತ ಪ್ರಮಾಣ';

  @override
  String get trackStock => 'ಸ್ಟಾಕ್ ಟ್ರ್ಯಾಕ್ ಮಾಡಿ';

  @override
  String get trackStockActive => 'ಶಾಪಿಂಗ್ ಸಲಹೆಗಳಲ್ಲಿ ಕಾಣಿಸುತ್ತದೆ';

  @override
  String get trackStockInactive => 'ಶಾಪಿಂಗ್ ಸಲಹೆಯನ್ನು ಉತ್ಪಾದಿಸುವುದಿಲ್ಲ';

  @override
  String get createListDialog => 'ಪಟ್ಟಿ ರಚಿಸಿ';

  @override
  String get renameListDialog => 'ಪಟ್ಟಿ ಮರುಹೆಸರಿಸಿ';

  @override
  String get listHistory => 'ಪಟ್ಟಿ ಇತಿಹಾಸ';

  @override
  String get myLists => 'ನನ್ನ ಪಟ್ಟಿಗಳು';

  @override
  String get viewActive => 'ಸಕ್ರಿಯ ನೋಡಿ';

  @override
  String get viewHistory => 'ಇತಿಹಾಸ ನೋಡಿ';

  @override
  String get noArchivedLists => 'ಯಾವುದೇ ಆರ್ಕೈವ್ ಮಾಡಿದ ಪಟ್ಟಿಗಳಿಲ್ಲ';

  @override
  String get noActiveLists => 'ಯಾವುದೇ ಸಕ್ರಿಯ ಪಟ್ಟಿಗಳಿಲ್ಲ';

  @override
  String completedOn(String date) {
    return '$date ರಂದು ಪೂರ್ಣಗೊಂಡಿದೆ';
  }

  @override
  String get sharedLabel => 'ಹಂಚಿಕೊಂಡಿದೆ';

  @override
  String get restore => 'ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get removeSharedTooltip => 'ತೆಗೆದುಹಾಕಿ';

  @override
  String get deleteListTitle => 'ಪಟ್ಟಿ ಅಳಿಸಿ';

  @override
  String deleteListContent(String name) {
    return 'ನೀವು ಖಚಿತವಾಗಿ \"$name\" ಅಳಿಸಲು ಬಯಸುವಿರಾ? ಎಲ್ಲಾ ಐಟಂಗಳನ್ನು ತೆಗೆದುಹಾಕಲಾಗುವುದು.';
  }

  @override
  String get removeSharedListTitle => 'ಹಂಚಿಕೊಂಡ ಪಟ್ಟಿ ತೆಗೆದುಹಾಕಿ';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" ಅನ್ನು ನಿಮ್ಮ ಪಟ್ಟಿಗಳಿಂದ ತೆಗೆದುಹಾಕಬೇಕೆ? ಮೂಲ ಪಟ್ಟಿಯ ಮೇಲೆ ಪರಿಣಾಮ ಬೀರುವುದಿಲ್ಲ.';
  }

  @override
  String get createNewList => 'ಹೊಸ ಪಟ್ಟಿ ರಚಿಸಿ';

  @override
  String get aiAssistant => 'AI ಸಹಾಯಕ';

  @override
  String get aiAssistantDescription =>
      'ನಮ್ಮ AI ಸಹಾಯಕದೊಂದಿಗೆ ಸ್ಮಾರ್ಟ್ ಸಲಹೆಗಳು, ಪಾಕವಿಧಾನಗಳು ಮತ್ತು ವೈಯಕ್ತಿಕ ಸಲಹೆಗಳನ್ನು ಪಡೆಯಿರಿ.';

  @override
  String get generalAssistant => 'ಸಾಮಾನ್ಯ ಸಹಾಯಕ';

  @override
  String get newChat => 'ಹೊಸ ಚಾಟ್';

  @override
  String get noHistory => 'ಯಾವುದೇ ಚಾಟ್ ಇತಿಹಾಸವಿಲ್ಲ';

  @override
  String get deleteSession => 'ಚಾಟ್ ಅಳಿಸಿ';

  @override
  String get deleteSessionConfirm =>
      'ಈ ಚಾಟ್ ಅನ್ನು ಅಳಿಸಲು ನೀವು ಖಚಿತವಾಗಿ ಬಯಸುವಿರಾ? ಸಂದೇಶಗಳು ಶಾಶ್ವತವಾಗಿ ಕಳೆದುಹೋಗುತ್ತವೆ.';

  @override
  String get clearHistory => 'ಇತಿಹಾಸ ತೆರವುಗೊಳಿಸಿ';

  @override
  String get clearHistoryConfirm =>
      'ಈ ಸೆಷನ್ನಲ್ಲಿರುವ ಎಲ್ಲಾ ಸಂದೇಶಗಳನ್ನು ತೆರವುಗೊಳಿಸಬೇಕೆ?';

  @override
  String get chatHint => 'ನಿಮ್ಮ ಸಂದೇಶವನ್ನು ಟೈಪ್ ಮಾಡಿ...';

  @override
  String get chatHintBlocked => 'ಚಾಟ್ ಮಾಡಲು AI ಅನ್ನು ಅನ್‌ಲಾಕ್ ಮಾಡಿ';

  @override
  String chatError(String error) {
    return 'ಚಾಟ್ ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ: $error';
  }

  @override
  String get aiAssistantTitle => 'AI ಸಹಾಯಕ';

  @override
  String get closeSheet => 'ಮುಚ್ಚಿ';

  @override
  String get scanBarcodeTitle => 'ಬಾರ್ಕೋಡ್ ಅನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get listHelp => 'ನಿಮ್ಮ ಪಟ್ಟಿಯೊಂದಿಗೆ ನಾನು ಹೇಗೆ ಸಹಾಯ ಮಾಡಬಲ್ಲೆ?';

  @override
  String get generalHelp => 'ಇಂದು ನಿಮ್ಮ ಶಾಪಿಂಗ್ನಲ್ಲಿ ನಾನು ಹೇಗೆ ಸಹಾಯ ಮಾಡಬಲ್ಲೆ?';

  @override
  String get chatSubtitle =>
      'ಐಟಂ ಸಲಹೆಗಳು, ಪಾಕವಿಧಾನಗಳು ಅಥವಾ ಉಳಿತಾಯ ಸಲಹೆಗಳಿಗಾಗಿ ಕೇಳಿ.';

  @override
  String get aiError =>
      'ಕ್ಷಮಿಸಿ, ನಿಮ್ಮ ವಿನಂತಿಯನ್ನು ಪ್ರಕ್ರಿಯೆಗೊಳಿಸುವಲ್ಲಿ ದೋಷ ಸಂಭವಿಸಿದೆ. ನಿಮ್ಮ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ ಅಥವಾ ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get aiLimitAlmostReached => 'ಬಹುತೇಕ AI ಸಂದೇಶಗಳು ಹೊರಗಿವೆ';

  @override
  String get unlockAi => 'ಅನಿಯಮಿತ AI ಅನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get aiTeaserFallback =>
      'ಸಂಪೂರ್ಣ ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ಅನ್‌ಲಾಕ್ ಮಾಡಲು ಪ್ರೀಮಿಯಂಗೆ ಚಂದಾದಾರರಾಗಿ ಮತ್ತು ನಿಮ್ಮ ಶಾಪಿಂಗ್‌ಗಾಗಿ ಅನಿಯಮಿತ AI ಸಲಹೆಗಳನ್ನು ಪಡೆಯಿರಿ...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI ಕ್ರಿಯೆಗಳು ಈ ತಿಂಗಳು ಉಳಿದಿವೆ — ಅನಿಯಮಿತವಾಗಿ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ';
  }

  @override
  String get aiUsageExhausted =>
      'ಮಾಸಿಕ AI ಮಿತಿಯನ್ನು ತಲುಪಿದೆ. ಅನಿಯಮಿತ → ಗಾಗಿ Pro ಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ';

  @override
  String get kipiListTitle => 'ಕಿಪಿಲಿಸ್ಟ್';

  @override
  String get loginPrompt =>
      'ಪ್ರೀಮಿಯಂ ವೈಶಿಷ್ಟ್ಯಗಳನ್ನು\nಅನ್ಲಾಕ್ ಮಾಡಲು ಲಾಗಿನ್ ಮಾಡಿ';

  @override
  String get signInGoogle => 'Google ನೊಂದಿಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get signInApple => 'Apple ನೊಂದಿಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get continueAsGuest => 'ಅತಿಥಿಯಾಗಿ ಮುಂದುವರಿಸಿ';

  @override
  String get onboardingWelcomeTitle => 'KipiList ಗೆ ಸುಸ್ವಾಗತ';

  @override
  String get onboardingWelcomeDesc =>
      'ನಿಮ್ಮ ಶಾಪಿಂಗ್ ಅನ್ನು ಸಂಘಟಿಸಲು ಮತ್ತು ಹಣವನ್ನು ಉಳಿಸಲು ಬುದ್ಧಿವಂತ ಮಾರ್ಗವಾಗಿದೆ.';

  @override
  String get onboardingSetupTitle => 'ನಿಮ್ಮ ಅನುಭವವನ್ನು ವೈಯಕ್ತೀಕರಿಸಿ';

  @override
  String get onboardingSetupDesc =>
      'KipiList ಹೇಗೆ ಕಾಣಬೇಕೆಂದು ಮತ್ತು ನಿಮಗಾಗಿ ಕೆಲಸ ಮಾಡಬೇಕೆಂದು ನೀವು ಬಯಸುತ್ತೀರಿ ಎಂಬುದನ್ನು ಆರಿಸಿಕೊಳ್ಳಿ.';

  @override
  String get onboardingLoginTitle => 'ಎಲ್ಲವನ್ನೂ ಕ್ಲೌಡ್‌ಗೆ ಉಳಿಸಿ';

  @override
  String get onboardingLoginDesc =>
      'ನಿಮ್ಮ ಎಲ್ಲಾ ಸಾಧನಗಳಾದ್ಯಂತ ನಿಮ್ಮ ಡೇಟಾವನ್ನು ಸಿಂಕ್ ಮಾಡಲಾಗಿದೆ';

  @override
  String get onboardingShareTitle => 'ನೀವು ಇಷ್ಟಪಡುವವರೊಂದಿಗೆ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get onboardingShareDesc =>
      'ನೈಜ ಸಮಯದಲ್ಲಿ ಕುಟುಂಬ ಮತ್ತು ಸ್ನೇಹಿತರೊಂದಿಗೆ ಪಟ್ಟಿಗಳನ್ನು ಸಿಂಕ್ ಮಾಡಿ';

  @override
  String get onboardingPremiumTitle => 'ಎಲ್ಲಾ ವೈಶಿಷ್ಟ್ಯಗಳನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get onboardingPremiumSubtitle =>
      'ನಿಮ್ಮ ಶಾಪಿಂಗ್ ಪಟ್ಟಿಗಳಿಂದ ಹೆಚ್ಚಿನದನ್ನು ಪಡೆಯಿರಿ';

  @override
  String get onboardingAnnualBadge => 'ಅತ್ಯುತ್ತಮ ಮೌಲ್ಯ';

  @override
  String get onboardingMonthlyLabel => 'ಮಾಸಿಕ';

  @override
  String get onboardingAnnualLabel => 'ವಾರ್ಷಿಕ';

  @override
  String get onboardingViewAllPlans => 'ಎಲ್ಲಾ ಯೋಜನೆಗಳನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get onboardingSubscribeCta => 'ಚಂದಾದಾರರಾಗಿ';

  @override
  String get onboardingCancelAnytime => 'ಯಾವಾಗ ಬೇಕಾದರೂ ರದ್ದುಮಾಡಿ. ಬದ್ಧತೆ ಇಲ್ಲ.';

  @override
  String get onboardingContinueAsGuest => 'ಅತಿಥಿಯಾಗಿ ಮುಂದುವರಿಯಿರಿ';

  @override
  String get onboardingRestore => 'ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get onboardingRestoreDesc =>
      'ಈಗಾಗಲೇ ಚಂದಾದಾರಿಕೆ ಹೊಂದಿರುವಿರಾ? ಅದನ್ನು ಮರುಸ್ಥಾಪಿಸಲು ಇಲ್ಲಿ ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get onboardingMaybeLater => 'ಬಹುಶಃ ನಂತರ';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'ಹೇ $name, ನಿಮ್ಮ ಶಾಪಿಂಗ್ ಅನ್ನು ಸರಿಯಾದ ರೀತಿಯಲ್ಲಿ ಆಯೋಜಿಸಿ.';
  }

  @override
  String get onboardingSlide1Title => 'ಸ್ಮಾರ್ಟ್ ಶಾಪಿಂಗ್ ಪಟ್ಟಿಗಳು';

  @override
  String get onboardingSlide1Body =>
      'ಪಟ್ಟಿಗಳನ್ನು ತಕ್ಷಣವೇ ರಚಿಸಿ ಮತ್ತು ಹಂಚಿಕೊಳ್ಳಿ. Kipi ನಿಮ್ಮ ಅಭ್ಯಾಸಗಳನ್ನು ಆಧರಿಸಿ ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಐಟಂಗಳನ್ನು ಸೇರಿಸುತ್ತದೆ.';

  @override
  String get onboardingSlide2Title => 'ಕಿಪಿಯನ್ನು ಭೇಟಿ ಮಾಡಿ';

  @override
  String get onboardingSlide2Body =>
      'ಯಾವುದನ್ನಾದರೂ ಕೇಳಿ - ಪಟ್ಟಿಗಳನ್ನು ರಚಿಸಿ, ಪಾಕವಿಧಾನಗಳನ್ನು ಹುಡುಕಿ, ನಿಮ್ಮ ಪ್ಯಾಂಟ್ರಿಯನ್ನು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ, ನಿಮ್ಮ ವಾರವನ್ನು ಯೋಜಿಸಿ.';

  @override
  String get onboardingSlide3Title => 'ಪ್ಯಾಂಟ್ರಿ ಮತ್ತು ಊಟ ಯೋಜನೆ';

  @override
  String get onboardingSlide3Body =>
      'ನಿಮ್ಮಲ್ಲಿರುವದನ್ನು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ, ಊಟವನ್ನು ಯೋಜಿಸಿ ಮತ್ತು ಶಾಪಿಂಗ್ ಪಟ್ಟಿಗಳನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ರಚಿಸಿ.';

  @override
  String get onboardingExit => 'ನಿರ್ಗಮಿಸಿ';

  @override
  String get onboardingPersonalizationTitle => 'ನಿಮ್ಮನ್ನು ತಿಳಿದುಕೊಳ್ಳೋಣ';

  @override
  String get onboardingPersonalizationDesc =>
      'ನಿಮ್ಮ ಸಲಹೆಗಳನ್ನು ವೈಯಕ್ತೀಕರಿಸಲು ಮತ್ತು ಶಾಪಿಂಗ್ ಅನ್ನು ಚುರುಕುಗೊಳಿಸಲು ನಾವು ಇದನ್ನು ಬಳಸುತ್ತೇವೆ.';

  @override
  String get onboardingPersonalizationFoodLabel => 'ನಿಮ್ಮ ಮೆಚ್ಚಿನ ಆಹಾರ ಯಾವುದು?';

  @override
  String get onboardingPersonalizationFoodHint => 'ಉದಾ. ಪಿಜ್ಜಾ, ಸುಶಿ, ಲಸಾಂಜ...';

  @override
  String get onboardingPersonalizationCta => 'ಮುಂದುವರಿಸಿ';

  @override
  String get onboardingPersonalizationSkip => 'ಸದ್ಯಕ್ಕೆ ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'ಮುಂದುವರಿಯಲು ನಿಮ್ಮ ಮೆಚ್ಚಿನ ಆಹಾರವನ್ನು ನಮಗೆ ತಿಳಿಸಿ';

  @override
  String get settingsDefaultScreen => 'ಡೀಫಾಲ್ಟ್ ಹೋಮ್ ಸ್ಕ್ರೀನ್';

  @override
  String get settingsDefaultScreenSubtitle =>
      'ಶಾಪಿಂಗ್ ಪಟ್ಟಿ ಅಥವಾ AI ಚಾಟ್ ನಡುವೆ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get settingsScreenList => 'ಶಾಪಿಂಗ್ ಪಟ್ಟಿ';

  @override
  String get settingsScreenChat => 'AI ಚಾಟ್';

  @override
  String loginError(String error) {
    return 'ಲಾಗಿನ್ ದೋಷ: $error';
  }

  @override
  String get paywallTitle => 'KipiList ಪ್ರೀಮಿಯಂ';

  @override
  String get paywallLoadingError =>
      'ಕೊಡುಗೆಗಳನ್ನು ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get paywallPurchaseError =>
      'ಖರೀದಿಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get paywallRestoreError =>
      'ಮರುಸ್ಥಾಪಿಸಲು ಯಾವುದೇ ಸಕ್ರಿಯ ಚಂದಾದಾರಿಕೆ ಕಂಡುಬಂದಿಲ್ಲ.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ದಿನಗಳು ಉಚಿತ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ವಾರಗಳು ಉಚಿತ',
      one: '$count ವಾರ ಉಚಿತ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ತಿಂಗಳುಗಳು ಉಚಿತ',
      one: '$count ತಿಂಗಳು ಉಚಿತ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'ಕಿಪಿಲಿಸ್ಟ್ ಪ್ರೊ ಅನ್ನು 7 ದಿನಗಳವರೆಗೆ ಉಚಿತವಾಗಿ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get paywallTrialSubtitle =>
      'ಯಾವಾಗ ಬೇಕಾದರೂ ರದ್ದುಮಾಡಿ. ಇಂದು ಶುಲ್ಕವಿಲ್ಲ.';

  @override
  String get paywallTrialCta => 'ಉಚಿತ ಪ್ರಯೋಗವನ್ನು ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get recipeAddToList => 'ಶಾಪಿಂಗ್ ಪಟ್ಟಿಗೆ ಸೇರಿಸಿ';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ಪದಾರ್ಥಗಳನ್ನು $listName ಗೆ ಸೇರಿಸಲಾಗಿದೆ';
  }

  @override
  String get noListSelected =>
      'ಯಾವುದೇ ಪಟ್ಟಿಯನ್ನು ಆಯ್ಕೆಮಾಡಲಾಗಿಲ್ಲ. ಮೊದಲು ಪಟ್ಟಿಯನ್ನು ತೆರೆಯಿರಿ.';

  @override
  String get paywallFeaturesTitle => 'ನಿಮಗೆ ಬೇಕಾಗಿರುವುದು:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI ನಿಮ್ಮ ಪಟ್ಟಿಯನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಆಯೋಜಿಸುತ್ತದೆ';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'ನಿಮಗೆ ಅಗತ್ಯವಿರುವಷ್ಟು ಪಟ್ಟಿಗಳನ್ನು ರಚಿಸಿ';

  @override
  String get paywallFeatureDescSharing => 'ನೈಜ ಸಮಯದಲ್ಲಿ ಒಟ್ಟಿಗೆ ಶಾಪಿಂಗ್ ಮಾಡಿ';

  @override
  String get paywallFeatureDescPantry =>
      'ನಿಮ್ಮ ಮನೆಯಲ್ಲಿ ಏನಿದೆ ಎಂಬುದನ್ನು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ';

  @override
  String get paywallFeatureDescBudget => 'ಪ್ರತಿ ತಿಂಗಳು ಬಜೆಟ್‌ನಲ್ಲಿ ಉಳಿಯಿರಿ';

  @override
  String get paywallFeatureUnlimitedLists => 'ಅನಿಯಮಿತ ಪಟ್ಟಿಗಳು';

  @override
  String get paywallFeatureSmartAI => 'ಸ್ಮಾರ್ಟ್ AI';

  @override
  String get paywallFeatureExpenseControl => 'ವೆಚ್ಚ ನಿಯಂತ್ರಣ';

  @override
  String get paywallFeatureSharing => 'ಹಂಚಿಕೆ';

  @override
  String get paywallBeforeAfterTitle => 'AI ಮೊದಲು ಮತ್ತು ನಂತರ:';

  @override
  String get paywallLabelCommon => 'ಸಾಮಾನ್ಯ';

  @override
  String get paywallLabelPro => 'ಕಿಪಿಲಿಸ್ಟ್ ಪ್ರೊ';

  @override
  String get paywallBeforeItem1 => 'ಅಕ್ಕಿ';

  @override
  String get paywallBeforeItem2 => 'ಸಾಬೂನು';

  @override
  String get paywallBeforeItem3 => 'ಮಾಂಸ';

  @override
  String get paywallBeforeItem4 => 'ಬ್ರೆಡ್';

  @override
  String get paywallAfterItem1 => 'ಧಾನ್ಯಗಳು';

  @override
  String get paywallAfterItem2 => 'ಸ್ವಚ್ಛಗೊಳಿಸುವ';

  @override
  String get paywallAfterItem3 => 'ಮಾಂಸಗಳು';

  @override
  String get paywallAfterItem4 => 'ಬೇಕರಿ';

  @override
  String get paywallTestimonialsTitle => 'ನಮ್ಮ ಬಳಕೆದಾರರು ಏನು ಹೇಳುತ್ತಾರೆ:';

  @override
  String get paywallTestimonial1Name => 'ಆನ್ ಎಸ್.';

  @override
  String get paywallTestimonial1Text =>
      'AI ನನ್ನ ಶಾಪಿಂಗ್ ಅನ್ನು ಸೆಕೆಂಡುಗಳಲ್ಲಿ ಆಯೋಜಿಸುತ್ತದೆ. ನಾನು ಪ್ರತಿ ಮಾರುಕಟ್ಟೆ ಪ್ರವಾಸಕ್ಕೆ 20 ನಿಮಿಷಗಳನ್ನು ಉಳಿಸುತ್ತೇನೆ.';

  @override
  String get paywallTestimonial2Name => 'ಚಾರ್ಲ್ಸ್ ಎಂ.';

  @override
  String get paywallTestimonial2Text =>
      'ನಾನು ಮತ್ತೆ ಪಟ್ಟಿ ಐಟಂ ಅನ್ನು ಮರೆಯಲಿಲ್ಲ. AI ಚಾಟ್ ಸಂವೇದನಾಶೀಲವಾಗಿದೆ!';

  @override
  String get paywallSocialProof => '+2,400 ಕುಟುಂಬಗಳು ಇದನ್ನು ಬಳಸುತ್ತವೆ';

  @override
  String get paywallCtaUnlock => 'PRO ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get paywallBestValue => 'ಅತ್ಯುತ್ತಮ ಮೌಲ್ಯ';

  @override
  String get paywallMostPopular => 'ಅತ್ಯಂತ ಜನಪ್ರಿಯ';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'ಸುರಕ್ಷಿತ ಪಾವತಿ';

  @override
  String get paywallSelectPlan => 'ನಿಮ್ಮ ಯೋಜನೆಯನ್ನು ಆರಿಸಿ:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% ಉಳಿಸಿ';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'ಕೇವಲ $price/ತಿಂಗಳು';
  }

  @override
  String get paywallPackageAnnual => 'ವಾರ್ಷಿಕ ಯೋಜನೆ';

  @override
  String get paywallPackageMonthly => 'ಮಾಸಿಕ ಯೋಜನೆ';

  @override
  String get paywallPackageLifetime => 'ಜೀವಮಾನದ ಪ್ರವೇಶ';

  @override
  String get paywallCancelAnytime => 'ಯಾವಾಗ ಬೇಕಾದರೂ ರದ್ದುಮಾಡಿ. ಬದ್ಧತೆ ಇಲ್ಲ.';

  @override
  String paywallTrialInCard(int days) {
    return 'ಮೊದಲ $days ದಿನಗಳು ಉಚಿತ';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Play ನಿಂದ ಸುರಕ್ಷಿತವಾಗಿದೆ · ಯಾವುದೇ ಸಮಯದಲ್ಲಿ ರದ್ದುಮಾಡಿ';

  @override
  String get paywallPolicy => 'ಗೌಪ್ಯತೆ ನೀತಿ';

  @override
  String get paywallTerms => 'ಬಳಕೆಯ ನಿಯಮಗಳು';

  @override
  String get paywallRestore => 'ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get paywallHeroHeadline => 'Kipi AI ಯಾವಾಗಲೂ ನಿಮ್ಮ ಪಕ್ಕದಲ್ಲಿದೆ';

  @override
  String get paywallHeroSubtitle =>
      'ಐಟಂಗಳನ್ನು ಸೇರಿಸಿ, ಪಟ್ಟಿಗಳನ್ನು ಸಂಘಟಿಸಿ ಮತ್ತು ನಿಮ್ಮ ಜೇಬಿನಲ್ಲಿ AI ಯೊಂದಿಗೆ ಸಮಯವನ್ನು ಉಳಿಸಿ';

  @override
  String get paywallBenefit1Desc =>
      '24/7 ಐಟಂಗಳನ್ನು ಸೇರಿಸುತ್ತದೆ, ಸಂಘಟಿಸುತ್ತದೆ ಮತ್ತು ಸೂಚಿಸುತ್ತದೆ';

  @override
  String get paywallBenefit2Desc => '3-ಪಟ್ಟಿ ಮಿತಿ ಇಲ್ಲ';

  @override
  String get paywallBenefit3Desc => 'ವೆಚ್ಚ ಟ್ರ್ಯಾಕಿಂಗ್ ಮತ್ತು ಕುಟುಂಬದ ಪಟ್ಟಿಗಳು';

  @override
  String get paywallPackageMonthlyDesc => 'ಪೂರ್ಣ ನಮ್ಯತೆ';

  @override
  String paywallCtaTrialDays(int days) {
    return 'ಉಚಿತವಾಗಿ ಪ್ರಾರಂಭಿಸಿ — $days ದಿನಗಳು';
  }

  @override
  String get premiumUpgrade => 'ಅನ್ಲಾಕ್ ಮಾಡಲು ಅಪ್ಗ್ರೇಡ್ ಮಾಡಿ';

  @override
  String get itemRemoved => 'ಐಟಂ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';

  @override
  String get undo => 'ರದ್ದುಮಾಡಿ';

  @override
  String get emptyListTitle => 'ನಿಮ್ಮ ಪಟ್ಟಿ ಖಾಲಿಯಾಗಿದೆ';

  @override
  String get emptyListSubtitle => 'ಪ್ರಾರಂಭಿಸಲು ಐಟಂಗಳನ್ನು ಸೇರಿಸಿ';

  @override
  String get noListFoundTitle => 'ಯಾವುದೇ ಪಟ್ಟಿ ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get noListFoundSubtitle => 'ಪ್ರಾರಂಭಿಸಲು ನಿಮ್ಮ ಮೊದಲ ಪಟ್ಟಿಯನ್ನು ರಚಿಸಿ';

  @override
  String get createFirstList => 'ಮೊದಲ ಪಟ್ಟಿ ರಚಿಸಿ';

  @override
  String get listBudgetTitle => 'ಪಟ್ಟಿ ಬಜೆಟ್';

  @override
  String get budgetAmountLabel => 'ಬಜೆಟ್ ಮೊತ್ತ';

  @override
  String get removeBudget => 'ತೆಗೆದುಹಾಕಿ';

  @override
  String get prefUnlimitedLists => 'ಅನಿಯಮಿತ ಪಟ್ಟಿಗಳು';

  @override
  String get prefSharing => 'ಪಟ್ಟಿಗಳನ್ನು ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get prefFullHistory => 'ಪೂರ್ಣ ಇತಿಹಾಸ';

  @override
  String get prefExportData => 'ಡೇಟಾ ರಫ್ತು ಮಾಡಿ';

  @override
  String get prefCustomThemes => 'ಕಸ್ಟಮ್ ಥೀಮ್ಗಳು';

  @override
  String get prefMonthlyBudget => 'ಜಾಗತಿಕ ಮಾಸಿಕ ಬಜೆಟ್';

  @override
  String get prefAIAssistant => 'ವೈಯಕ್ತಿಕ AI ಸಹಾಯಕ';

  @override
  String get prefUnlimitedPantry => 'ಅನಿಯಮಿತ ಪ್ಯಾಂಟ್ರಿ';

  @override
  String get prefInteractiveArtifacts => 'ಸಂವಾದಾತ್ಮಕ AI ಆರ್ಟಿಫ್ಯಾಕ್ಟ್ಗಳು';

  @override
  String get themeGreen => 'ಹಸಿರು';

  @override
  String get themeBlue => 'ನೀಲಿ';

  @override
  String get themePurple => 'ನೇರಳೆ';

  @override
  String get themeRed => 'ಕೆಂಪು';

  @override
  String get themeOrange => 'ಕಿತ್ತಳೆ';

  @override
  String get themePink => 'ಗುಲಾಬಿ';

  @override
  String get themeIndigo => 'ಇಂಡಿಗೊ';

  @override
  String get themeAmber => 'ಅಂಬರ್';

  @override
  String get themeTeal => 'ಟೀಲ್';

  @override
  String get themeBrown => 'ಕಂದು';

  @override
  String get catFruits => 'ಹಣ್ಣುಗಳು';

  @override
  String get catCleaning => 'ಶುಚಿಗೊಳಿಸುವಿಕೆ';

  @override
  String get catBeverages => 'ಪಾನೀಯಗಳು';

  @override
  String get catBakery => 'ಬೇಕರಿ';

  @override
  String get catOthers => 'ಇತರೆ';

  @override
  String get unitPack => 'ಪ್ಯಾಕ್';

  @override
  String get shareSubject => 'ಶಾಪಿಂಗ್ ಪಟ್ಟಿ';

  @override
  String get monthlyBudgetTitle => 'ಮಾಸಿಕ ಬಜೆಟ್';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'ಪಟ್ಟಿ ಅಳಿಸಿ';

  @override
  String get pantryItemRemoved => 'ಐಟಂ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit ಐಟಂಗಳನ್ನು ಖರೀದಿಸಬೇಕಾಗಿದೆ',
      one: '$deficit ಐಟಂ ಅನ್ನು ಖರೀದಿಸಬೇಕಾಗಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'ಕಾರ್ಟ್ ಒಟ್ಟು';

  @override
  String get restockLabel => 'ಮರುಪೂರೈಸಿ';

  @override
  String get advancedFeatures => 'ಸುಧಾರಿತ ವೈಶಿಷ್ಟ್ಯಗಳು';

  @override
  String get selectAll => 'ಎಲ್ಲಾ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get deselectAll => 'ಎಲ್ಲಾ ಆಯ್ಕೆ ತೆಗೆದುಹಾಕಿ';

  @override
  String get monthlyBudgetAppBar => 'ಮಾಸಿಕ ಬಜೆಟ್';

  @override
  String get budgetEditTitle => 'ಮಾಸಿಕ ಬಜೆಟ್';

  @override
  String get budgetDashboardTitle => 'ಡ್ಯಾಶ್ಬೋರ್ಡ್';

  @override
  String get selectListForDashboard =>
      'ಡ್ಯಾಶ್ಬೋರ್ಡ್ ವೀಕ್ಷಿಸಲು ಪಟ್ಟಿಯನ್ನು ಆಯ್ಕೆಮಾಡಿ.';

  @override
  String get spendingAnalysis => 'ಖರ್ಚು ವಿಶ್ಲೇಷಣೆ';

  @override
  String get noItemsToAnalyze => 'ವಿಶ್ಲೇಷಿಸಲು ಪಟ್ಟಿಯಲ್ಲಿ ಯಾವುದೇ ಐಟಂಗಳಿಲ್ಲ.';

  @override
  String get markItemsToSeeAnalysis =>
      'ವಿಶ್ಲೇಷಣೆ ನೋಡಲು ಐಟಂಗಳನ್ನು ಖರೀದಿಸಿದ ಎಂದು ಗುರುತಿಸಿ.';

  @override
  String get totalSpending => 'ಒಟ್ಟು ಖರ್ಚು';

  @override
  String get spendingByCategory => 'ವರ್ಗದ ಪ್ರಕಾರ ಖರ್ಚು';

  @override
  String get achievements => 'ಸಾಧನೆಗಳು';

  @override
  String get exportPdfExcel => 'PDF/Excel ರಫ್ತು ಮಾಡಿ';

  @override
  String get exportPdf => 'PDF ಆಗಿ ರಫ್ತು ಮಾಡಿ';

  @override
  String get exportExcel => 'Excel ಆಗಿ ರಫ್ತು ಮಾಡಿ';

  @override
  String get organizingAi => 'AI ಜೊತೆ ಸಂಘಟಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get yesLabel => 'ಹೌದು';

  @override
  String get noLabel => 'ಇಲ್ಲ';

  @override
  String get shareListText => 'ನನ್ನ ಶಾಪಿಂಗ್ ಪಟ್ಟಿ';

  @override
  String get emptyListAddItems =>
      'ನಿಮ್ಮ ಪಟ್ಟಿ ಖಾಲಿಯಾಗಿದೆ! ಮೊದಲು ಐಟಂಗಳನ್ನು ಸೇರಿಸಿ. ℹ️';

  @override
  String get listOrganizedMagic =>
      'ಪಟ್ಟಿಯನ್ನು ಮಾಂತ್ರಿಕವಾಗಿ ವರ್ಗಗಳಾಗಿ ಸಂಘಟಿಸಲಾಗಿದೆ! ✨';

  @override
  String get shoppingMode => 'ಶಾಪಿಂಗ್ ಮೋಡ್';

  @override
  String get smartOrganization => 'ಸ್ಮಾರ್ಟ್ ಸಂಘಟನೆ';

  @override
  String get savings => 'ಉಳಿತಾಯ';

  @override
  String get shoppingModeHeader => 'ಶಾಪಿಂಗ್ ಮೋಡ್';

  @override
  String get shareAsText => 'ಫಾರ್ಮ್ಯಾಟ್ ಮಾಡಿದ ಪಠ್ಯವಾಗಿ ಐಟಂಗಳನ್ನು ಕಳುಹಿಸಿ';

  @override
  String get shareRealtime => 'ಇತರರೊಂದಿಗೆ ರಿಯಲ್-ಟೈಮ್ ಸಿಂಕ್';

  @override
  String get quickRecipe => 'ತ್ವರಿತ ಪಾಕವಿಧಾನ';

  @override
  String get quickRecipePrompt =>
      'ನನ್ನ ಪಟ್ಟಿಯ ಐಟಂಗಳೊಂದಿಗೆ ಪಾಕವಿಧಾನಗಳನ್ನು ಸೂಚಿಸಿ.';

  @override
  String get economyTips => 'ಉಳಿತಾಯ ಸಲಹೆಗಳು';

  @override
  String get economyTipsPrompt => 'ಈ ಖರೀದಿಯಲ್ಲಿ ನಾನು ಹೇಗೆ ಹಣ ಉಳಿಸಬಹುದು?';

  @override
  String get organizeAisles => 'ಹಜಾರಗಳ ಮೂಲಕ ಸಂಘಟಿಸಿ';

  @override
  String get organizeAislesPrompt => 'ಮಾರುಕಟ್ಟೆಯ ಹಜಾರಗಳ ಮೂಲಕ ಸಂಘಟಿಸಿ.';

  @override
  String get recipeSuggestion => 'ಪಾಕವಿಧಾನ ಸೂಚನೆ';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining ಕ್ರೆಡಿಟ್ಗಳು ಉಳಿದಿವೆ';
  }

  @override
  String get addAllToList => 'ಎಲ್ಲವನ್ನು ಪಟ್ಟಿಗೆ ಸೇರಿಸಿ';

  @override
  String get organizeByAisles => 'ಹಜಾರಗಳ ಮೂಲಕ ಸಂಘಟಿಸಿ';

  @override
  String get voiceTranscriptionTooltip => 'ಧ್ವನಿ ಟೈಪಿಂಗ್ (ಉಚಿತ)';

  @override
  String get aiVoiceCommandTooltip => 'AI ಧ್ವನಿ ಆಜ್ಞೆ (ಪ್ರೀಮಿಯಂ)';

  @override
  String get voiceCommandTitle => 'AI ಧ್ವನಿ ಆಜ್ಞೆ';

  @override
  String get voiceCommandContent =>
      'ನಿಮ್ಮ ಪಟ್ಟಿಯನ್ನು ನಿರ್ವಹಿಸಲು ಸ್ವಾಭಾವಿಕವಾಗಿ ಮಾತನಾಡಿ!\n\nಉದಾಹರಣೆಗಳು:\n• \'ಬ್ರೆಡ್, ಚೀಸ್ ಮತ್ತು ಹ್ಯಾಮ್ ಸೇರಿಸಿ\'\n• \'ಲಾಂಡ್ರಿ ಡಿಟರ್ಜೆಂಟ್ ತೆಗೆದುಹಾಕಿ\'\n• \'ಥೀಮ್ ಅನ್ನು ನೀಲಿ ಬಣ್ಣಕ್ಕೆ ಬದಲಾಯಿಸಿ\'\n\nಇದು KipiList ಪ್ರೀಮಿಯಂನ ವಿಶೇಷ ವೈಶಿಷ್ಟ್ಯವಾಗಿದೆ.';

  @override
  String get voiceCommandPlanBtn => 'ಯೋಜನೆಗಳನ್ನು ನೋಡಿ';

  @override
  String get itemsAddedSuccess => 'ಐಟಂಗಳನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಪಟ್ಟಿಗೆ ಸೇರಿಸಲಾಗಿದೆ!';

  @override
  String get viewList => 'ಪಟ್ಟಿ ನೋಡಿ';

  @override
  String get feedbackTitle => 'ಪ್ರತಿಕ್ರಿಯೆ ಕಳುಹಿಸಿ';

  @override
  String get feedbackPrompt => 'ನೀವು ಏನನ್ನು ಹಂಚಿಕೊಳ್ಳಲು ಬಯಸುತ್ತೀರಿ?';

  @override
  String get feedbackTypeBug => 'ಬಗ್ ವರದಿ ಮಾಡಿ';

  @override
  String get feedbackTypeBugHint => 'ಏನೋ ಕೆಲಸ ಮಾಡುತ್ತಿಲ್ಲ';

  @override
  String get feedbackTypeSuggestion => 'ಸಲಹೆ';

  @override
  String get feedbackTypeSuggestionHint => 'ಆಪ್ ಅನ್ನು ಸುಧಾರಿಸಲು ಕಲ್ಪನೆ';

  @override
  String get feedbackTypeTranslation => 'ಅನುವಾದ ಸಮಸ್ಯೆ';

  @override
  String get feedbackTypeTranslationHint => 'ತಪ್ಪಾದ ಅಥವಾ ಅಸ್ವಾಭಾವಿಕ ಅನುವಾದ';

  @override
  String get feedbackTypeFeature => 'ವೈಶಿಷ್ಟ್ಯ ವಿನಂತಿ';

  @override
  String get feedbackTypeFeatureHint => 'ನೀವು ನೋಡಲು ಬಯಸುವ ವೈಶಿಷ್ಟ್ಯ';

  @override
  String get feedbackTypeOther => 'ಇತರೆ';

  @override
  String get feedbackTypeOtherHint => 'ಇತರ ಪ್ರಕಾರದ ಪ್ರತಿಕ್ರಿಯೆ';

  @override
  String get feedbackHint => 'ನಿಮ್ಮ ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ವಿವರವಾಗಿ ವಿವರಿಸಿ...';

  @override
  String get feedbackSend => 'ಪ್ರತಿಕ್ರಿಯೆ ಕಳುಹಿಸಿ';

  @override
  String get feedbackSending => 'ಕಳುಹಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get feedbackThankYou => 'ಧನ್ಯವಾದಗಳು!';

  @override
  String get feedbackThankYouMessage =>
      'ನಿಮ್ಮ ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ಸ್ವೀಕರಿಸಲಾಗಿದೆ ಮತ್ತು ಇದು ಎಲ್ಲರಿಗೂ KipiList ಅನ್ನು ಸುಧಾರಿಸಲು ನಮಗೆ ಸಹಾಯ ಮಾಡುತ್ತದೆ.';

  @override
  String get feedbackBack => 'ಹಿಂತಿರುಗಿ';

  @override
  String feedbackError(String error) {
    return 'ಕಳುಹಿಸುವಲ್ಲಿ ದೋಷ: $error';
  }

  @override
  String get feedbackRetry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get feedbackSettingsTitle => 'ಪ್ರತಿಕ್ರಿಯೆ ಕಳುಹಿಸಿ';

  @override
  String get feedbackSettingsSubtitle =>
      'ಬಗ್ಗಳನ್ನು ವರದಿ ಮಾಡಿ, ಸುಧಾರಣೆಗಳನ್ನು ಸೂಚಿಸಿ ಅಥವಾ ಅನುವಾದಗಳನ್ನು ಸರಿಪಡಿಸಿ';

  @override
  String get aiEnergy => 'AI ಶಕ್ತಿ';

  @override
  String get searchInConversation => 'ಸಂಭಾಷಣೆಯಲ್ಲಿ ಹುಡುಕಿ...';

  @override
  String get noMessagesFound => 'ಯಾವುದೇ ಸಂದೇಶಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get suggestedQuestions => 'ಸೂಚಿಸಿದ ಪ್ರಶ್ನೆಗಳು:';

  @override
  String get shoppingAssistant => 'ಶಾಪಿಂಗ್ ಸಹಾಯಕ';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total ರಲ್ಲಿ $purchased ಖರೀದಿಸಲಾಗಿದೆ';
  }

  @override
  String get estimatedCost => 'ಅಂದಾಜಿಸಲಾಗಿದೆ';

  @override
  String get viewItems => 'ಐಟಂಗಳನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get noItemsInList => 'ಪಟ್ಟಿಯಲ್ಲಿ ಯಾವುದೇ ಐಟಂಗಳಿಲ್ಲ';

  @override
  String get longHistoryWarning =>
      'ದೀರ್ಘ ಇತಿಹಾಸ: ಉತ್ತಮ ಕಾರ್ಯಕ್ಷಮತೆಗಾಗಿ ಸಹಾಯಕ ಇತ್ತೀಚಿನ ಸಂದೇಶಗಳ ಮೇಲೆ ಕೇಂದ್ರೀಕರಿಸುತ್ತದೆ.';

  @override
  String get listening => 'ಕೇಳುತ್ತಿದೆ...';

  @override
  String get addDirectToList => 'ಪಟ್ಟಿಗೆ ನೇರವಾಗಿ ಸೇರಿಸಿ';

  @override
  String get unlockFullResponse => 'ಪೂರ್ಣ ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get switchList => 'ಪಟ್ಟಿಯನ್ನು ಬದಲಿಸಿ';

  @override
  String get marketMode => 'ಮಾರುಕಟ್ಟೆ ಮೋಡ್';

  @override
  String get backToChat => 'Chat ಗೆ ಹಿಂತಿರುಗಿ';

  @override
  String get finishShopping => 'ಶಾಪಿಂಗ್ ಮುಗಿಸಿ';

  @override
  String get welcomeAiAssistant => 'AI ಸಹಾಯಕಕ್ಕೆ ಸುಸ್ವಾಗತ';

  @override
  String get createListToStartAi =>
      'ಸ್ಮಾರ್ಟ್ ಚಾಟ್ ಬಳಸುವುದನ್ನು ಪ್ರಾರಂಭಿಸಲು ಶಾಪಿಂಗ್ ಪಟ್ಟಿಯನ್ನು ರಚಿಸಿ.';

  @override
  String get howCanIHelp => 'ನಾನು ಹೇಗೆ ಸಹಾಯ ಮಾಡಬಹುದು?';

  @override
  String get chatSubtitleShort => 'ಬೆಲೆಗಳು, ಪಾಕವಿಧಾನಗಳು, ಸಂಸ್ಥೆಯ ಬಗ್ಗೆ ಕೇಳಿ...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total ಖರೀದಿಸಲಾಗಿದೆ';
  }

  @override
  String get quickReplies => 'ತ್ವರಿತ ಪ್ರತ್ಯುತ್ತರಗಳು:';

  @override
  String get voiceProFeature =>
      'ಸುಧಾರಿತ ಧ್ವನಿ ಆಜ್ಞೆಗಳು ಪ್ರೊ. ಮೂಲ ನಿರ್ದೇಶನವನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get viewPro => 'ಪ್ರೊ ವೀಕ್ಷಿಸಿ';

  @override
  String get errorLoadingChat => 'ಓಹ್! ಚಾಟ್ ಲೋಡ್ ಮಾಡುವಾಗ ಏನೋ ತಪ್ಪಾಗಿದೆ.';

  @override
  String get errorLoadingChatSubtitle =>
      'ನಿಮ್ಮ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ ಅಥವಾ ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get errorOscillation =>
      'ನೆಟ್‌ವರ್ಕ್ ಆಂದೋಲನಗಳು ಅಥವಾ ತಾತ್ಕಾಲಿಕ ಅಲಭ್ಯತೆಯಿಂದಾಗಿ ಇದು ಸಂಭವಿಸಬಹುದು. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get activeListening => 'ಸಕ್ರಿಯ ಆಲಿಸುವಿಕೆ';

  @override
  String get whatToDoWithItem => 'ಈ ಐಟಂನೊಂದಿಗೆ ನೀವು ಏನು ಮಾಡಲು ಬಯಸುತ್ತೀರಿ?';

  @override
  String get viewDetails => 'ವಿವರಗಳನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get openMenu => 'ಮೆನು ತೆರೆಯಿರಿ';

  @override
  String get viewRecipe => 'ಪಾಕವಿಧಾನವನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get recipeCreated => 'ಪಾಕವಿಧಾನವನ್ನು ರಚಿಸಲಾಗಿದೆ!';

  @override
  String get editRecipe => 'ಸಂಪಾದಿಸಿ';

  @override
  String get deleteRecipe => 'ಅಳಿಸಿ';

  @override
  String get deleteRecipeConfirm => 'ಈ ಪಾಕವಿಧಾನವನ್ನು ಅಳಿಸುವುದೇ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'ನೀವು \"$recipeName\" ಅನ್ನು ಅಳಿಸಲು ಖಚಿತವಾಗಿ ಬಯಸುವಿರಾ? ಈ ಕ್ರಿಯೆಯನ್ನು ಹಿಂತಿರುಗಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ.';
  }

  @override
  String get ingredients => 'ಪದಾರ್ಥಗಳು';

  @override
  String get instructions => 'ಸೂಚನೆಗಳು';

  @override
  String get prepTime => 'ತಯಾರಿ ಸಮಯ';

  @override
  String get recipeSaved => 'ಪಾಕವಿಧಾನವನ್ನು ಉಳಿಸಲಾಗಿದೆ!';

  @override
  String get noRecipesSaved => 'ಯಾವುದೇ ಪಾಕವಿಧಾನಗಳನ್ನು ಉಳಿಸಲಾಗಿಲ್ಲ';

  @override
  String get noRecipesSavedHint =>
      'ಕೆಳಗಿನ ಬಟನ್ ಟ್ಯಾಪ್ ಮಾಡುವ ಮೂಲಕ ನಿಮ್ಮ ಮೊದಲ ಕಸ್ಟಮ್ ಪಾಕವಿಧಾನವನ್ನು ರಚಿಸಿ.';

  @override
  String get myRecipes => 'ನನ್ನ ಪಾಕವಿಧಾನಗಳು';

  @override
  String get newRecipe => 'ಹೊಸ ಪಾಕವಿಧಾನ';

  @override
  String get loadingRecipes => 'ನಿಮ್ಮ ಪಾಕವಿಧಾನಗಳನ್ನು ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get errorLoadingRecipes => 'ಪಾಕವಿಧಾನಗಳನ್ನು ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ';

  @override
  String get addIngredient => 'ಪದಾರ್ಥವನ್ನು ಸೇರಿಸಿ';

  @override
  String get saveRecipe => 'ಉಳಿಸಿ';

  @override
  String get recipeName => 'ಪಾಕವಿಧಾನದ ಹೆಸರು';

  @override
  String get shortDescription => 'ಸಣ್ಣ ವಿವರಣೆ';

  @override
  String get prepTimeMinutes => 'ತಯಾರಿ ಸಮಯ (ನಿಮಿಷಗಳು)';

  @override
  String get instructionsHint => 'ಪ್ರತಿ ಸಾಲಿನಲ್ಲಿ ಒಂದು ಹಂತವನ್ನು ಟೈಪ್ ಮಾಡಿ...';

  @override
  String get addPhoto => 'ಫೋಟೋ ಸೇರಿಸಿ';

  @override
  String get imageUrlPlaceholder => 'ಅಥವಾ ಚಿತ್ರದ URL ಅನ್ನು ಇಲ್ಲಿ ಅಂಟಿಸಿ';

  @override
  String get tags => 'ಟ್ಯಾಗ್‌ಗಳು';

  @override
  String get recipeTags => 'ಪಾಕವಿಧಾನದ ಟ್ಯಾಗ್‌ಗಳು';

  @override
  String get suggestedTags => 'ಸೂಚಿಸಿದ';

  @override
  String get searchRecipes => 'ಪಾಕವಿಧಾನಗಳನ್ನು ಹುಡುಕಿ...';

  @override
  String get filterByTag => 'ಟ್ಯಾಗ್ ಮೂಲಕ ಫಿಲ್ಟರ್ ಮಾಡಿ';

  @override
  String get allTags => 'ಎಲ್ಲಾ';

  @override
  String get recipeDeleted => 'ಪಾಕವಿಧಾನವನ್ನು ಅಳಿಸಲಾಗಿದೆ';

  @override
  String get saveChanges => 'ಬದಲಾವಣೆಗಳನ್ನು ಉಳಿಸಿ';

  @override
  String get editRecipeTitle => 'ಪಾಕವಿಧಾನವನ್ನು ಸಂಪಾದಿಸಿ';

  @override
  String get newRecipeTitle => 'ಹೊಸ ಪಾಕವಿಧಾನ';

  @override
  String get requiredField => 'ಅಗತ್ಯವಿದೆ';

  @override
  String get chooseImageSource => 'ಚಿತ್ರದ ಮೂಲವನ್ನು ಆರಿಸಿ';

  @override
  String get gallery => 'ಗ್ಯಾಲರಿ';

  @override
  String get enterUrl => 'URL ನಮೂದಿಸಿ';

  @override
  String get recipeImage => 'ಪಾಕವಿಧಾನದ ಚಿತ್ರ';

  @override
  String get removeImage => 'ಚಿತ್ರವನ್ನು ತೆಗೆದುಹಾಕಿ';

  @override
  String get mealPlannerTitle => 'ಮೀಲ್ ಪ್ಲಾನರ್';

  @override
  String get mealPlannerViewMonthly => 'ಮಾಸಿಕ ನೋಟ';

  @override
  String get mealPlannerViewWeekly => 'ಸಾಪ್ತಾಹಿಕ ನೋಟ';

  @override
  String get mealPlannerNoMeals => 'ಯಾವುದೇ ಊಟವನ್ನು ಯೋಜಿಸಲಾಗಿಲ್ಲ';

  @override
  String get mealPlannerNoMealsHint => 'ಊಟವನ್ನು ಸೇರಿಸಲು ದಿನದ ಮೇಲೆ ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get mealPlannerLoading => 'ಊಟದ ಯೋಜನೆಯನ್ನು ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get mealPlannerError => 'ಊಟದ ಯೋಜನೆಯನ್ನು ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ';

  @override
  String get mealPlannerAddMeal => 'ಊಟವನ್ನು ಸೇರಿಸಿ';

  @override
  String get mealPlannerEditMeal => 'ಊಟವನ್ನು ಸಂಪಾದಿಸಿ';

  @override
  String get mealPlannerDeleteMeal => 'ಊಟವನ್ನು ತೆಗೆದುಹಾಕಿ';

  @override
  String get mealPlannerMealDeleted => 'ಊಟವನ್ನು ತೆಗೆದುಹಾಕಲಾಗಿದೆ';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಸರ್ವಿಂಗ್‌ಗಳು',
      one: '$count ಸರ್ವಿಂಗ್',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'ಸರ್ವಿಂಗ್‌ಗಳು';

  @override
  String get mealPlannerNoteLabel => 'ಟಿಪ್ಪಣಿ (ಐಚ್ಛಿಕ)';

  @override
  String get mealPlannerSelectRecipe => 'ಪಾಕವಿಧಾನವನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get mealPlannerSearchRecipes => 'ಪಾಕವಿಧಾನಗಳನ್ನು ಹುಡುಕಿ...';

  @override
  String get mealPlannerNoRecipesFound => 'ಯಾವುದೇ ಪಾಕವಿಧಾನಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get mealPlannerNoRecipesHint =>
      'ಮೊದಲು ಪಾಕವಿಧಾನಗಳ ಟ್ಯಾಬ್‌ನಲ್ಲಿ ಪಾಕವಿಧಾನಗಳನ್ನು ರಚಿಸಿ';

  @override
  String get mealPlannerSave => 'ಯೋಜನೆಗೆ ಸೇರಿಸಿ';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total ರಲ್ಲಿ $count ಊಟಗಳನ್ನು ಯೋಜಿಸಲಾಗಿದೆ';
  }

  @override
  String get mealPlannerGenerateList => 'ಶಾಪಿಂಗ್ ಪಟ್ಟಿಯನ್ನು ರಚಿಸಿ';

  @override
  String get mealPlannerGenerateListConfirm =>
      'ಈ ವಾರದ ಯೋಜಿತ ಊಟದ ಎಲ್ಲಾ ಪದಾರ್ಥಗಳನ್ನು ನಿಮ್ಮ ಶಾಪಿಂಗ್ ಪಟ್ಟಿಗೆ ಸೇರಿಸಬೇಕೆ?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'ನಿಮ್ಮ ಪಟ್ಟಿಗೆ $count ಪದಾರ್ಥಗಳನ್ನು ಸೇರಿಸಲಾಗಿದೆ!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ಸೇರಿಸಲು ಯಾವುದೇ ಪದಾರ್ಥಗಳಿಲ್ಲ. ಮೊದಲು ಪಾಕವಿಧಾನಗಳೊಂದಿಗೆ ಕೆಲವು ಊಟಗಳನ್ನು ಯೋಜಿಸಿ.';

  @override
  String get mealPlannerGenerateListNoList => 'ಮೊದಲು ಶಾಪಿಂಗ್ ಪಟ್ಟಿಯನ್ನು ರಚಿಸಿ.';

  @override
  String get mealPlannerMealTypeBreakfast => 'ಉಪಾಹಾರ';

  @override
  String get mealPlannerMealTypeLunch => 'ಮಧ್ಯಾಹ್ನದ ಊಟ';

  @override
  String get mealPlannerMealTypeDinner => 'ರಾತ್ರಿಯ ಊಟ';

  @override
  String get mealPlannerMealTypeSnack => 'ತಿಂಡಿ';

  @override
  String get mealPlannerDateLabel => 'ದಿನಾಂಕ';

  @override
  String get mealPlannerWeekEmpty => 'ಈ ವಾರಕ್ಕೆ ಏನನ್ನೂ ಯೋಜಿಸಲಾಗಿಲ್ಲ';

  @override
  String get mealPlannerWeekEmptyHint =>
      'ನಿಮ್ಮ ಊಟವನ್ನು ಯೋಜಿಸಲು ಯಾವುದೇ ದಿನದ ಮೇಲೆ ಟ್ಯಾಪ್ ಮಾಡಿ!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes ನಿಮಿಷ';
  }

  @override
  String get inviteToList => 'ಪಟ್ಟಿಗೆ ಆಹ್ವಾನಿಸಿ';

  @override
  String get shareApp => 'ಅಪ್ಲಿಕೇಶನ್ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get shareAppDescription => 'KipiList ಬಳಸಲು ಸ್ನೇಹಿತರನ್ನು ಆಹ್ವಾನಿಸಿ';

  @override
  String shareReferralText(String url) {
    return 'ನನ್ನ ಶಾಪಿಂಗ್ ಅನ್ನು ಸಂಘಟಿಸಲು ನಾನು KipiList ಅನ್ನು ಬಳಸುತ್ತಿದ್ದೇನೆ! ನನ್ನ ಲಿಂಕ್ ಮೂಲಕ ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ ಮತ್ತು ನಾವಿಬ್ಬರೂ 7 ದಿನಗಳ ಪ್ರೀಮಿಯಂ ಅನ್ನು ಉಚಿತವಾಗಿ ಪಡೆಯುತ್ತೇವೆ: $url';
  }

  @override
  String get shareReferralSubject => '7 ದಿನಗಳ KipiList Premium ಪಡೆಯಿರಿ!';

  @override
  String get gestureHint => 'ಆಯ್ಕೆ ಮಾಡಲು ಹೋಲ್ಡ್ ಮಾಡಿ • ತೆಗೆದುಹಾಕಲು ಸ್ವೈಪ್ ಮಾಡಿ';

  @override
  String get catalogTitle => 'ಕ್ಯಾಟಲಾಗ್';

  @override
  String get catalogMyFrequents => 'ನನ್ನ ಆಗಾಗ್ಗೆ';

  @override
  String get catalogSearchGlobal => 'ಯಾವುದೇ ಉತ್ಪನ್ನವನ್ನು ಹುಡುಕಿ...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category ನಲ್ಲಿ ಹುಡುಕಿ...';
  }

  @override
  String get catalogSortPopular => 'ಅತ್ಯಂತ ಜನಪ್ರಿಯ';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'ರಾಷ್ಟ್ರೀಯರು';

  @override
  String get catalogRareSection => 'ನಿಮ್ಮ ದೇಶದಲ್ಲಿ ಕಡಿಮೆ ಸಾಮಾನ್ಯವಾಗಿದೆ';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 → ಸೇರಿಸಿ';
  }

  @override
  String get catalogProductNotFound =>
      'ಉತ್ಪನ್ನ ಕಂಡುಬಂದಿಲ್ಲ, ಹೆಸರನ್ನು ಟೈಪ್ ಮಾಡಿ';

  @override
  String get catalogBrowse => 'ಕ್ಯಾಟಲಾಗ್ ಬ್ರೌಸ್ ಮಾಡಿ';

  @override
  String get offlineBanner => 'ನೀವು ಆಫ್‌ಲೈನ್‌ನಲ್ಲಿರುವಿರಿ';

  @override
  String get consentTitle => 'ಗೌಪ್ಯತೆ ಮತ್ತು ವಿಶ್ಲೇಷಣೆ';

  @override
  String get consentBody =>
      'ನಿಮ್ಮ ಅನುಭವವನ್ನು ಸುಧಾರಿಸಲು KipiList Firebase Analytics ಅನ್ನು ಬಳಸುತ್ತದೆ. ನಿಮ್ಮ ಡೇಟಾವನ್ನು ನಮ್ಮ ಗೌಪ್ಯತಾ ನೀತಿಯ ಪ್ರಕಾರ ಪ್ರಕ್ರಿಯೆಗೊಳಿಸಲಾಗಿದೆ.';

  @override
  String get consentAccept => 'ಸ್ವೀಕರಿಸಿ';

  @override
  String get consentDecline => 'ಇಲ್ಲ, ಧನ್ಯವಾದಗಳು';

  @override
  String get mealPlannerPantryAllAvailable => 'ಸ್ಟಾಕ್‌ನಲ್ಲಿದೆ';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಕಾಣೆಯಾದ ಐಟಂಗಳು',
      one: '$count ಕಾಣೆಯಾದ ಐಟಂ',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'ಮುಕ್ತಾಯ ದಿನಾಂಕ';

  @override
  String get notInformed => 'ತಿಳಿಸಿಲ್ಲ';

  @override
  String get skip => 'ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get onboardingAiTitle => 'ಕಿಪಿ ಜೊತೆ ಚಾಟ್ ಮಾಡಿ';

  @override
  String get onboardingAiGreeting =>
      'ನಮಸ್ತೆ! ನಾನು ಕಿಪಿ, ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಶಾಪಿಂಗ್ ಸಹಾಯಕ! 🛒';

  @override
  String get onboardingAiAskName => 'ನಿಮ್ಮ ಹೆಸರೇನು?';

  @override
  String get onboardingAiNameHint => 'ನಿಮ್ಮ ಹೆಸರನ್ನು ಟೈಪ್ ಮಾಡಿ...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'ನಿಮ್ಮನ್ನು ಭೇಟಿಯಾಗಲು ಸಂತೋಷವಾಗಿದೆ, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'ನಿಮ್ಮ ಮೆಚ್ಚಿನ ಆಹಾರ ಯಾವುದು?';

  @override
  String get onboardingAiFoodHint => 'ಉದಾ. ಪಿಜ್ಜಾ, ಸುಶಿ...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'ಉತ್ತಮ ಆಯ್ಕೆಗಳು! ನಿಮ್ಮ ಪಟ್ಟಿಗೆ ನಾನು ಸೇರಿಸುವುದು ಇಲ್ಲಿದೆ:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'ಇದು ಚೆನ್ನಾಗಿ ಕಾಣುತ್ತಿದೆಯೇ? ಬೇರೆ ಯಾವುದನ್ನಾದರೂ ಟೈಪ್ ಮಾಡಲು ಪ್ರಯತ್ನಿಸಿ!';

  @override
  String get onboardingAiReady =>
      'ಗ್ರೇಟ್! ನೀವು ಪ್ರಾರಂಭಿಸಲು ಸಿದ್ಧರಾಗಿರುವಿರಿ. ನಿಮ್ಮ ಖಾತೆಯನ್ನು ಹೊಂದಿಸೋಣ!';

  @override
  String get onboardingAiContinue => 'ಮುಂದುವರಿಸಿ →';

  @override
  String get connectionError => 'ಸಂಪರ್ಕ ದೋಷ';

  @override
  String connectionErrorDesc(String error) {
    return 'ದೋಷ: $error';
  }

  @override
  String get errorLoadingLists => 'ಪಟ್ಟಿಗಳನ್ನು ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ';

  @override
  String get noListsFound => 'ಯಾವುದೇ ಪಟ್ಟಿಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get backToToday => 'ಇವತ್ತಿಗೆ ಹಿಂತಿರುಗಿ';

  @override
  String get quickSuggestions => 'ತ್ವರಿತ ಸಲಹೆಗಳು';

  @override
  String get aiEnergyLow => 'ಕಡಿಮೆ AI ಶಕ್ತಿ';

  @override
  String get aiUnlockUnlimited => 'ಅನಿಯಮಿತ AI ಅನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return 'ಇಂದು $remaining $_temp0';
  }

  @override
  String get aiSubscribeUnlimited => 'ಅನಿಯಮಿತ AI ಗೆ ಚಂದಾದಾರರಾಗಿ';

  @override
  String get unlockWithAd => 'ಜಾಹೀರಾತಿನೊಂದಿಗೆ ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get conversationHistoryTitle => 'ಸಂಭಾಷಣೆಯ ಇತಿಹಾಸ';

  @override
  String get noConversationsFound => 'ಯಾವುದೇ ಸಂಭಾಷಣೆಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get errorLoadingHistory => 'ಇತಿಹಾಸವನ್ನು ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ';

  @override
  String get deleteConversationTitle => 'ಸಂಭಾಷಣೆಯನ್ನು ಅಳಿಸಿ';

  @override
  String get deleteConversationConfirm =>
      'ಈ ಕ್ರಿಯೆಯನ್ನು ರದ್ದುಗೊಳಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get deleteConversation => 'ಅಳಿಸಿ';

  @override
  String get subscription => 'ಚಂದಾದಾರಿಕೆ';

  @override
  String get kipiListProActive => 'ಕಿಪಿಲಿಸ್ಟ್ ಪ್ರೊ ಆಕ್ಟಿವ್';

  @override
  String get unlockPremiumTitle => 'ಪ್ರೀಮಿಯಂ ಅನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get loadingSubscription => 'ಚಂದಾದಾರಿಕೆಯನ್ನು ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get errorLoadingSubscription => 'ಚಂದಾದಾರಿಕೆಯನ್ನು ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ';

  @override
  String get profileSection => 'ಪ್ರೊಫೈಲ್';

  @override
  String get myProfile => 'ನನ್ನ ಪ್ರೊಫೈಲ್';

  @override
  String get profileSubtitle => 'ನಿಮ್ಮ ಪ್ರೊಫೈಲ್ ಮಾಹಿತಿ';

  @override
  String get customizeAiAssistant => 'AI ಸಹಾಯಕವನ್ನು ಕಸ್ಟಮೈಸ್ ಮಾಡಿ';

  @override
  String get assistantHistory => 'ಸಹಾಯಕ ಇತಿಹಾಸ';

  @override
  String get assistantHistorySubtitle => 'ನಿಮ್ಮ ಸಂಭಾಷಣೆಯ ಇತಿಹಾಸವನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get manageCategories => 'ವರ್ಗಗಳನ್ನು ನಿರ್ವಹಿಸಿ';

  @override
  String get manageCategoriesSubtitle =>
      'ವರ್ಗಗಳನ್ನು ಸೇರಿಸಿ, ಸಂಪಾದಿಸಿ ಅಥವಾ ತೆಗೆದುಹಾಕಿ';

  @override
  String get customizeAssistant => 'ಕಸ್ಟಮೈಸ್ ಮಾಡಿ';

  @override
  String get assistantName => 'ಸಹಾಯಕ ಹೆಸರು';

  @override
  String get chooseIcon => 'ಐಕಾನ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get profileSaved => 'ಪ್ರೊಫೈಲ್ ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get errorSavingProfile => 'ಪ್ರೊಫೈಲ್ ಉಳಿಸುವಲ್ಲಿ ದೋಷ';

  @override
  String get userProfile => 'ಬಳಕೆದಾರರ ಪ್ರೊಫೈಲ್';

  @override
  String get profileDescription => 'ಪ್ರೊಫೈಲ್ ವಿವರಣೆ';

  @override
  String get preferredMarket => 'ಆದ್ಯತೆಯ ಮಾರುಕಟ್ಟೆ';

  @override
  String get preferredMarketHint =>
      'ನೀವು ಸಾಮಾನ್ಯವಾಗಿ ಎಲ್ಲಿ ಶಾಪಿಂಗ್ ಮಾಡುತ್ತೀರಿ?';

  @override
  String get dietaryRestrictions => 'ಆಹಾರದ ನಿರ್ಬಂಧಗಳು';

  @override
  String get dietaryRestrictionsHint => 'ಯಾವುದೇ ಆಹಾರ ನಿರ್ಬಂಧಗಳು?';

  @override
  String get marketsToAvoid => 'ತಪ್ಪಿಸಲು ಮಾರುಕಟ್ಟೆಗಳು';

  @override
  String get marketsToAvoidHint =>
      'ನೀವು ಶಾಪಿಂಗ್ ಮಾಡದಿರಲು ಇಷ್ಟಪಡುವ ಮಾರುಕಟ್ಟೆಗಳು';

  @override
  String get observations => 'ಅವಲೋಕನಗಳು';

  @override
  String get observationsHint => 'ಯಾವುದೇ ಹೆಚ್ಚುವರಿ ಟಿಪ್ಪಣಿಗಳು?';

  @override
  String get saveProfile => 'ಪ್ರೊಫೈಲ್ ಉಳಿಸಿ';

  @override
  String get everythingReady => 'ಎಲ್ಲವೂ ಸಿದ್ಧವಾಗಿದೆ!';

  @override
  String get youCompletedList => 'ನೀವು ಪಟ್ಟಿಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಿದ್ದೀರಿ!';

  @override
  String get selectCheaperAlternative => 'ಅಗ್ಗದ ಪರ್ಯಾಯವನ್ನು ಆರಿಸಿ';

  @override
  String get suggestedItems => 'ಸೂಚಿಸಿದ ವಸ್ತುಗಳು';

  @override
  String get swapped => 'ಬದಲಾಯಿಸಿಕೊಂಡರು';

  @override
  String get swap => 'ಸ್ವ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get chooseThemeColor => 'ಥೀಮ್ ಬಣ್ಣವನ್ನು ಆರಿಸಿ';

  @override
  String get manageCategoriesTitle => 'ವರ್ಗಗಳನ್ನು ನಿರ್ವಹಿಸಿ';

  @override
  String get categoryLimitReached => 'ವರ್ಗದ ಮಿತಿಯನ್ನು ತಲುಪಿದೆ';

  @override
  String get deleteCategoryTitle => 'ವರ್ಗವನ್ನು ಅಳಿಸಿ';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\" ನಲ್ಲಿರುವ ಐಟಂಗಳನ್ನು \"ಇತರರು\" ಗೆ ಸರಿಸಲಾಗುತ್ತದೆ.\nಮುಂದುವರಿಸುವುದೇ?';
  }

  @override
  String get deleteCategory => 'ಅಳಿಸಿ';

  @override
  String get newCategoryDialog => 'ಹೊಸ ವರ್ಗ';

  @override
  String get editCategoryDialog => 'ವರ್ಗವನ್ನು ಸಂಪಾದಿಸಿ';

  @override
  String get categoryName => 'ವರ್ಗದ ಹೆಸರು';

  @override
  String get categoryNameHint => 'ವರ್ಗದ ಹೆಸರನ್ನು ನಮೂದಿಸಿ';

  @override
  String get categoryColorLabel => 'ಬಣ್ಣ';

  @override
  String get categoryIconLabel => 'ಐಕಾನ್';

  @override
  String itemAddedSnack(String name) {
    return '$name ಸೇರಿಸಲಾಗಿದೆ';
  }

  @override
  String get kipiQuickBarHint => 'ನೀವು ಖರೀದಿಸಲು ಏನು ಬೇಕು?';

  @override
  String replaceItem(String item) {
    return '$item ಬದಲಾಯಿಸಿ';
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
      'ಕಿರಾಣಿ ವಸ್ತುವನ್ನು ಮತ್ತೆ ಎಂದಿಗೂ ಮರೆಯಬಾರದು';

  @override
  String get onboardingGoalSaveMoney => 'ಹಣವನ್ನು ಉಳಿಸಿ';

  @override
  String get onboardingGoalNeverForget => 'ವಸ್ತುಗಳನ್ನು ಎಂದಿಗೂ ಮರೆಯಬೇಡಿ';

  @override
  String get onboardingGoalFaster => 'ವೇಗವಾಗಿ ಶಾಪಿಂಗ್ ಮಾಡಿ';

  @override
  String get onboardingGoalFamily => 'ಕುಟುಂಬ ಶಾಪಿಂಗ್ ಅನ್ನು ಆಯೋಜಿಸಿ';

  @override
  String get onboardingGoalRecipes => 'ಪಾಕವಿಧಾನಗಳನ್ನು ಅನ್ವೇಷಿಸಿ';

  @override
  String get onboardingGoalPantry => 'ಟ್ರ್ಯಾಕ್ ಪ್ಯಾಂಟ್ರಿ';

  @override
  String get onboardingCommitmentsTitle => 'ನಿಮಗೆ ಯಾವುದು ಮುಖ್ಯ?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'ಕಿಪಿಲಿಸ್ಟ್ ಅನ್ನು ವೈಯಕ್ತೀಕರಿಸಲು ನಿಮ್ಮ ಗುರಿಗಳನ್ನು ಆರಿಸಿ';

  @override
  String get onboardingCommitmentsCta => 'ಹೋಗೋಣ!';

  @override
  String get onboardingPersonalizationNameLabel => 'ನಿಮ್ಮ ಹೆಸರು';

  @override
  String get onboardingPersonalizationNameHint => 'ನಿಮ್ಮ ಹೆಸರನ್ನು ನಮೂದಿಸಿ';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'ನೀವು ಯಾವುದಕ್ಕಾಗಿ ಶಾಪಿಂಗ್ ಮಾಡುತ್ತೀರಿ?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'ನೀವು ಯಾರಿಗಾಗಿ ಶಾಪಿಂಗ್ ಮಾಡುತ್ತೀರಿ?';

  @override
  String get onboardingCategoryGrocery => 'ದಿನಸಿ';

  @override
  String get onboardingCategoryPharmacy => 'ಔಷಧಾಲಯ';

  @override
  String get onboardingCategoryRecipes => 'ಪಾಕವಿಧಾನಗಳು';

  @override
  String get onboardingCategoryHome => 'ಮನೆ';

  @override
  String get onboardingCategoryPet => 'ಸಾಕುಪ್ರಾಣಿ';

  @override
  String get onboardingGroupSolo => 'ನಾನು ಮಾತ್ರ';

  @override
  String get onboardingGroupCouple => 'ಜೋಡಿ';

  @override
  String get onboardingGroupFamily => 'ಕುಟುಂಬ';

  @override
  String get onboardingLoadingTitle =>
      'ನಿಮ್ಮ ಅನುಭವವನ್ನು ಸಿದ್ಧಪಡಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get onboardingLoadingStep1 =>
      'ನಿಮ್ಮ ಆದ್ಯತೆಗಳನ್ನು ವಿಶ್ಲೇಷಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get onboardingLoadingStep2 => 'AI ಸಹಾಯಕವನ್ನು ಹೊಂದಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get onboardingLoadingStep3 => 'ಬಹುತೇಕ ಸಿದ್ಧವಾಗಿದೆ...';

  @override
  String get onboardingLoadingStat1Label => 'ಐಟಂಗಳನ್ನು ಪಟ್ಟಿ ಮಾಡಲಾಗಿದೆ';

  @override
  String get onboardingLoadingStat2Label => 'ಬಳಕೆದಾರರು ಸಹಾಯ ಮಾಡಿದರು';

  @override
  String get onboardingLoadingStat3Label => 'ನಿಮಿಷಗಳನ್ನು ಉಳಿಸಲಾಗಿದೆ';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, ಪ್ರತಿ ಪ್ರವಾಸದಲ್ಲಿ ಉಳಿಸಿ!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, ಐಟಂ ಅನ್ನು ಎಂದಿಗೂ ಮರೆಯಬೇಡಿ!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, ಅರ್ಧ ಸಮಯದಲ್ಲಿ ಶಾಪಿಂಗ್ ಮಾಡಿ!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, ಕುಟುಂಬ ಶಾಪಿಂಗ್ ಆಯೋಜಿಸಿ!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, ಹೊಸ ಪಾಕವಿಧಾನಗಳನ್ನು ಅನ್ವೇಷಿಸಿ!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, ನಿಮ್ಮ ಪ್ಯಾಂಟ್ರಿಯನ್ನು ಸಂಪೂರ್ಣವಾಗಿ ಟ್ರ್ಯಾಕ್ ಮಾಡಿ!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'ಪ್ರತಿ ಪ್ರವಾಸದಲ್ಲಿ ಉಳಿಸಿ!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'ಐಟಂ ಅನ್ನು ಎಂದಿಗೂ ಮರೆಯಬೇಡಿ!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'ಅರ್ಧ ಸಮಯದಲ್ಲಿ ಶಾಪಿಂಗ್ ಮಾಡಿ!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'ಕುಟುಂಬ ಶಾಪಿಂಗ್ ಅನ್ನು ಆಯೋಜಿಸಿ!';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'ಹೊಸ ಪಾಕವಿಧಾನಗಳನ್ನು ಅನ್ವೇಷಿಸಿ!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'ನಿಮ್ಮ ಪ್ಯಾಂಟ್ರಿಯನ್ನು ಸಂಪೂರ್ಣವಾಗಿ ಟ್ರ್ಯಾಕ್ ಮಾಡಿ!';

  @override
  String paywallPricePerDay(String price) {
    return 'ಕೇವಲ $price/ದಿನ — ಕಾಫಿಗಿಂತ ಕಡಿಮೆ';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'ಸದ್ಯಕ್ಕೆ ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get paywallTestimonial =>
      'AI ನನ್ನ ಶಾಪಿಂಗ್ ಅನ್ನು ಸೆಕೆಂಡುಗಳಲ್ಲಿ ಆಯೋಜಿಸುತ್ತದೆ. ನಾನು ಪ್ರತಿ ಪ್ರವಾಸಕ್ಕೆ 20 ನಿಮಿಷಗಳನ್ನು ಉಳಿಸುತ್ತೇನೆ.';

  @override
  String get paywallTestimonialAuthor => 'ಆನ್ ಎಸ್.';

  @override
  String get paywallTrialDisclaimer =>
      'ಯಾವಾಗ ಬೇಕಾದರೂ ರದ್ದುಮಾಡಿ · ನಿಮ್ಮ ಪ್ರಯೋಗ ಮುಗಿಯುವವರೆಗೆ ಯಾವುದೇ ಶುಲ್ಕವಿಲ್ಲ';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'ಹೇ $name! ನಿಮಗೆ ಏನು $category ಬೇಕು?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'ನಿಮಗೆ ಏನು $category ಬೇಕು?';
  }

  @override
  String get onboardingAiDemoYes => 'ಹೌದು!';

  @override
  String get onboardingAiDemoReaction => 'ಚೆನ್ನಾಗಿದೆ!';

  @override
  String get onboardingAiDemoChange => 'ಐಟಂ ಬದಲಾಯಿಸಿ';

  @override
  String get onboardingAiDemoOffer =>
      'ಬೇರೆ ಯಾವುದನ್ನಾದರೂ ಟೈಪ್ ಮಾಡಲು ಪ್ರಯತ್ನಿಸಿ!';

  @override
  String get onboardingAiDemoContinue => 'ಮುಂದುವರಿಸಿ';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'ನಿಮ್ಮ ಶಾಪಿಂಗ್ ಪಟ್ಟಿ, ಈಗ AI ಜೊತೆಗೆ';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'ಕಿಪಿ ಸೆಕೆಂಡುಗಳಲ್ಲಿ ನಿಮ್ಮ ಸಂಪೂರ್ಣ ಪಟ್ಟಿಯನ್ನು ಹೇಗೆ ನಿರ್ಮಿಸುತ್ತದೆ ಎಂಬುದನ್ನು ನೋಡಿ';

  @override
  String get onboardingAiDemoSlideCta => 'ನನಗೆ ಇದು ಬೇಕು! →';

  @override
  String get onboardingAiDemoSlideUserMsg =>
      'ನಾನು ಬಾರ್ಬೆಕ್ಯೂ 🔥 ಹೋಸ್ಟ್ ಮಾಡುತ್ತಿದ್ದೇನೆ';

  @override
  String get onboardingAiDemoSlideReady =>
      'ಸಿದ್ಧವಾಗಿದೆ! ನಿಮಗೆ ಬೇಕಾದ ಎಲ್ಲವೂ ಇಲ್ಲಿದೆ:';

  @override
  String get onboardingAiDemoSlideDone =>
      'ಸೆಕೆಂಡುಗಳಲ್ಲಿ ಪಟ್ಟಿಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ ✨';

  @override
  String get onboardingPainTitle =>
      'ಯಾವುದು ನಿಮ್ಮನ್ನು ಹೆಚ್ಚು ನಿರಾಶೆಗೊಳಿಸುತ್ತದೆ?';

  @override
  String get onboardingPainSubtitle =>
      'ಪ್ರಾಮಾಣಿಕವಾಗಿರಿ - ನಾವು ಪ್ರತಿಯೊಂದನ್ನು ಸರಿಪಡಿಸುತ್ತೇವೆ';

  @override
  String get onboardingPainCta => 'ಹೌದು, ಇದನ್ನು ನನಗೆ ಸರಿಪಡಿಸಿ →';

  @override
  String get onboardingPainForget =>
      'ನಾನು ಅಂಗಡಿಯಲ್ಲಿನ ವಸ್ತುಗಳನ್ನು ಮರೆತುಬಿಡುತ್ತೇನೆ';

  @override
  String get onboardingPainFamily =>
      'ನನ್ನ ಕುಟುಂಬವು ಎಂದಿಗೂ ಪಟ್ಟಿಯನ್ನು ನೋಡುವುದಿಲ್ಲ';

  @override
  String get onboardingPainOverspend => 'ನಾನು ಯಾವಾಗಲೂ ಬಜೆಟ್ ಅನ್ನು ಮೀರುತ್ತೇನೆ';

  @override
  String get onboardingPainRepeat => 'ಒಂದು ಪ್ರವಾಸ ಎಂದಿಗೂ ಸಾಕಾಗುವುದಿಲ್ಲ';

  @override
  String get aiWelcomeContent =>
      'ನಮಸ್ಕಾರ! 👋 ನಾನು **ಕಿಪಿ**, ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಶಾಪಿಂಗ್ ಮತ್ತು ಪಾಕವಿಧಾನ ಸಹಾಯಕ!\n\nನಿಮಗೆ ಸಹಾಯ ಮಾಡಲು ನಾನು ಇಲ್ಲಿದ್ದೇನೆ:\n🛒 **ಸಂಘಟಿಸಿ** ವಿಭಾಗಗಳ ಮೂಲಕ ನಿಮ್ಮ ಶಾಪಿಂಗ್ ಅನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಮಾಡಿ\n💰 **ಟ್ರ್ಯಾಕ್** ನಿಮ್ಮ ಬಜೆಟ್ ಮತ್ತು ನಿಮಗೆ ಹಣ ಉಳಿಸುವ ಸಲಹೆಗಳನ್ನು ನೀಡಿ\n🍲 **ಸಲಹೆ** ನೀವು ಈಗಾಗಲೇ ಹೊಂದಿರುವ ರುಚಿಕರವಾದ ಪಾಕವಿಧಾನಗಳನ್ನು\n\nಇಂದು ನಾನು ನಿಮಗೆ ಹೇಗೆ ಸಹಾಯ ಮಾಡಬಹುದು? ನಿಮ್ಮ ಮೊದಲ ಪಟ್ಟಿಯನ್ನು ರಚಿಸುವ ಮೂಲಕ ನೀವು ಪ್ರಾರಂಭಿಸಬಹುದು!';

  @override
  String get aiWelcomeSuggestCreateList => 'ನನ್ನ ಮೊದಲ ಪಟ್ಟಿಯನ್ನು ರಚಿಸಿ';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'ಕಿಪಿ, ನನ್ನ ಮೊದಲ ಶಾಪಿಂಗ್ ಪಟ್ಟಿಯನ್ನು ರಚಿಸಲು ನನಗೆ ಸಹಾಯ ಮಾಡಿ';

  @override
  String get aiWelcomeSuggestSave => 'ಹಣವನ್ನು ಉಳಿಸುವುದು ಹೇಗೆ?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'ಕಿಪಿ, ದಿನಸಿಯಲ್ಲಿ ಹಣವನ್ನು ಉಳಿಸಲು ನೀವು ನನಗೆ ಹೇಗೆ ಸಹಾಯ ಮಾಡಬಹುದು?';

  @override
  String get suggestionMilk => 'ಹಾಲು';

  @override
  String get suggestionBread => 'ಬ್ರೆಡ್';

  @override
  String get suggestionEggs => 'ಮೊಟ್ಟೆಗಳು';

  @override
  String get suggestionCoffee => 'ಕಾಫಿ';

  @override
  String get suggestionRice => 'ಅಕ್ಕಿ';

  @override
  String get suggestionFruits => 'ಹಣ್ಣುಗಳು';
}

/// The translations for Kannada, as used in India (`kn_IN`).
class AppLocalizationsKnIn extends AppLocalizationsKn {
  AppLocalizationsKnIn() : super('kn_IN');

  @override
  String get appTitle => 'ಶಾಪಿಂಗ್ ಪಟ್ಟಿ';

  @override
  String get lists => 'ಪಟ್ಟಿಗಳು';

  @override
  String get pantry => 'ಪ್ಯಾಂಟ್ರಿ';

  @override
  String get navChat => 'ಚಾಟ್ ಮಾಡಿ';

  @override
  String get navRecipes => 'ಪಾಕವಿಧಾನಗಳು';

  @override
  String get navLists => 'ಪಟ್ಟಿಗಳು';

  @override
  String get navMealPlanner => 'ಮೆನು';

  @override
  String get cancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get save => 'ಉಳಿಸಿ';

  @override
  String get create => 'ರಚಿಸಿ';

  @override
  String get add => 'ಸೇರಿಸಿ';

  @override
  String get remove => 'ತೆಗೆದುಹಾಕಿ';

  @override
  String get delete => 'ಅಳಿಸಿ';

  @override
  String get edit => 'ಸಂಪಾದಿಸಿ';

  @override
  String get copy => 'ನಕಲಿಸಿ';

  @override
  String get next => 'ಮುಂದೆ';

  @override
  String get retry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get regenerate => 'ಮರುಉತ್ಪಾದಿಸಿ';

  @override
  String get copiedToClipboard => 'ಕ್ಲಿಪ್ಬೋರ್ಡ್ಗೆ ನಕಲಿಸಲಾಗಿದೆ';

  @override
  String get confirm => 'ದೃಢಪಡಿಸಿ';

  @override
  String get close => 'ಮುಚ್ಚಿ';

  @override
  String get import => 'ಆಮದು ಮಾಡಿ';

  @override
  String get rename => 'ಮರುಹೆಸರಿಸಿ';

  @override
  String get upgrade => 'ಅಪ್ಗ್ರೇಡ್ ಮಾಡಿ';

  @override
  String get clear => 'ತೆರವುಗೊಳಿಸಿ';

  @override
  String error(String message) {
    return 'ದೋಷ: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'ದೋಷ: $message';
  }

  @override
  String get purchaseError => 'ಖರೀದಿ ಪ್ರಕ್ರಿಯೆಯಲ್ಲಿ ದೋಷ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get restoreError =>
      'ಖರೀದಿಗಳನ್ನು ಮರುಸ್ಥಾಪಿಸುವಲ್ಲಿ ದೋಷ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get loading => 'ಲೋಡ್ ಆಗುತ್ತಿದೆ...';

  @override
  String get fieldRequired => 'ಅಗತ್ಯವಿರುವ ಕ್ಷೇತ್ರ';

  @override
  String get addedFeedback => 'ಸೇರಿಸಲಾಗಿದೆ!';

  @override
  String get profile => 'ಪ್ರೊಫೈಲ್';

  @override
  String get exitShoppingMode => 'ಶಾಪಿಂಗ್ ಮೋಡ್‌ನಿಂದ ನಿರ್ಗಮಿಸಿ';

  @override
  String get exit => 'ನಿರ್ಗಮಿಸಿ';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ',
      one: '$count ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'ಅಂದಾಜು';

  @override
  String get alreadyPurchased => 'ಈಗಾಗಲೇ ಖರೀದಿಸಲಾಗಿದೆ';

  @override
  String get clearList => 'ಪಟ್ಟಿ ತೆರವುಗೊಳಿಸಿ';

  @override
  String get clearPurchased => 'ಖರೀದಿಸಿದವು ತೆರವುಗೊಳಿಸಿ';

  @override
  String get share => 'ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get shareViaCode => 'ಕೋಡ್ ಮೂಲಕ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get importViaCode => 'ಕೋಡ್ ಮೂಲಕ ಆಮದು ಮಾಡಿ';

  @override
  String get listAssistant => 'ಪಟ್ಟಿ ಸಹಾಯಕ';

  @override
  String get globalAssistant => 'ಜಾಗತಿಕ ಸಹಾಯಕ';

  @override
  String get becomePremium => 'ಪ್ರೀಮಿಯಂ ಆಗಿ';

  @override
  String get manageSubscription => 'ಚಂದಾದಾರಿಕೆ ನಿರ್ವಹಿಸಿ';

  @override
  String get completePurchase => 'ಖರೀದಿ ಪೂರ್ಣಗೊಳಿಸಿ';

  @override
  String get confirmClearList => 'ಎಲ್ಲಾ ಐಟಂಗಳನ್ನು ತೆಗೆದುಹಾಕಬೇಕೆ?';

  @override
  String get shareListTitle => 'ಪಟ್ಟಿ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get shareThisCode => 'ಈ ಕೋಡ್ ಅನ್ನು ಹಂಚಿಕೊಳ್ಳಿ:';

  @override
  String get validForLimitedTime => 'ಸೀಮಿತ ಸಮಯಕ್ಕೆ ಮಾತ್ರ ಮಾನ್ಯ';

  @override
  String get importListTitle => 'ಪಟ್ಟಿ ಆಮದು ಮಾಡಿ';

  @override
  String get enterCodeHint => 'ಕೋಡ್ ನಮೂದಿಸಿ';

  @override
  String get confirmArchiveTitle => 'ಖರೀದಿ ಪೂರ್ಣಗೊಳಿಸಿ';

  @override
  String get confirmArchiveContent =>
      'ಈ ಖರೀದಿಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ ಮತ್ತು ಪಟ್ಟಿಯನ್ನು ಆರ್ಕೈವ್ ಮಾಡಬೇಕೆ?';

  @override
  String get complete => 'ಪೂರ್ಣಗೊಳಿಸಿ';

  @override
  String get listArchived => 'ಪಟ್ಟಿಯನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಆರ್ಕೈವ್ ಮಾಡಲಾಗಿದೆ!';

  @override
  String listAdded(String listName) {
    return '$listName ಸೇರಿಸಲಾಗಿದೆ!';
  }

  @override
  String get buy => 'ಖರೀದಿಸಿ';

  @override
  String get unmark => 'ಗುರುತು ತೆಗೆದುಹಾಕಿ';

  @override
  String confirmDeleteItems(int count) {
    return '$count ಐಟಂ(ಗಳ)ನ್ನು ತೆಗೆದುಹಾಕಬೇಕೆ?';
  }

  @override
  String get confirmDeleteTitle => 'ದೃಢಪಡಿಸಿ';

  @override
  String confirmContent(int count) {
    return '$count ಐಟಂ(ಗಳ)ನ್ನು ತೆಗೆದುಹಾಕಬೇಕೆ?';
  }

  @override
  String get archiveList => 'ಪಟ್ಟಿ ಆರ್ಕೈವ್ ಮಾಡಿ';

  @override
  String get pantryAppBar => 'ಪ್ಯಾಂಟ್ರಿ';

  @override
  String get generateShoppingList => 'ಶಾಪಿಂಗ್ ಪಟ್ಟಿ ರಚಿಸಿ';

  @override
  String get pantryEmpty => 'ಖಾಲಿ ಪ್ಯಾಂಟ್ರಿ';

  @override
  String get pantryEmptySubtitle =>
      'ನೀವು ಮನೆಯಲ್ಲಿ ಇಟ್ಟುಕೊಳ್ಳಲು ಬಯಸುವ ಉತ್ಪನ್ನಗಳನ್ನು ಸೇರಿಸಿ';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ಐಟಂ(ಗಳ)ನ್ನು ಖರೀದಿಸಬೇಕಾಗಿದೆ';
  }

  @override
  String get noItemsToBuy => 'ಖರೀದಿಸಲು ಯಾವುದೇ ಐಟಂಗಳಿಲ್ಲ';

  @override
  String get newPantryList => 'ಪ್ಯಾಂಟ್ರಿ ಶಾಪಿಂಗ್';

  @override
  String get newListTitle => 'ಹೊಸ ಶಾಪಿಂಗ್ ಪಟ್ಟಿ';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ಐಟಂ(ಗಳ)ನ್ನು ಸೇರಿಸಲಾಗುವುದು';
  }

  @override
  String get listNameLabel => 'ಪಟ್ಟಿಯ ಹೆಸರು';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" ಪಟ್ಟಿಯನ್ನು $count ಐಟಂಗಳೊಂದಿಗೆ ರಚಿಸಲಾಗಿದೆ';
  }

  @override
  String get noTracking => 'ಟ್ರ್ಯಾಕಿಂಗ್ ಇಲ್ಲ';

  @override
  String get markAsPurchased => 'ಖರೀದಿಸಿದ ಎಂದು ಗುರುತಿಸಿ';

  @override
  String editPantryItem(String name) {
    return '$name ಸಂಪಾದಿಸಿ';
  }

  @override
  String get idealQuantity => 'ಆದರ್ಶ ಪ್ರಮಾಣ';

  @override
  String get currentQuantity => 'ಪ್ರಸ್ತುತ ಪ್ರಮಾಣ';

  @override
  String get consumed => 'ಸೇವಿಸಲಾಗಿದೆ';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name ಅನ್ನು $quantity $unit ಗೆ ಮರುಪೂರೈಸಲಾಗಿದೆ';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'ಪ್ಯಾಂಟ್ರಿಯಿಂದ \"$name\" ತೆಗೆದುಹಾಕಬೇಕೆ?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name ಸಂಪಾದಿಸಿ';
  }

  @override
  String get scanProductTitle => 'ಉತ್ಪನ್ನವನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get positionBarcodeCenter => 'ಬಾರ್‌ಕೋಡ್ ಅನ್ನು ಮಧ್ಯದಲ್ಲಿ ಇರಿಸಿ';

  @override
  String get product => 'ಉತ್ಪನ್ನ';

  @override
  String get settingsAppBar => 'ಸೆಟ್ಟಿಂಗ್ಗಳು';

  @override
  String get language => 'ಭಾಷೆ';

  @override
  String get languagePortuguese => 'ಪೋರ್ಚುಗೀಸ್ (ಬ್ರೆಸಿಲ್)';

  @override
  String get languageEnglish => 'ಇಂಗ್ಲೀಷ್';

  @override
  String get languageSystem => 'ಸಿಸ್ಟಮ್ ಡೀಫಾಲ್ಟ್';

  @override
  String get chooseLanguage => 'ಭಾಷೆಯನ್ನು ಆರಿಸಿ';

  @override
  String get searchLanguage => 'ಭಾಷೆಯನ್ನು ಹುಡುಕಿ...';

  @override
  String get currency => 'ಕರೆನ್ಸಿ';

  @override
  String get chooseCurrency => 'ಕರೆನ್ಸಿ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get searchCurrency => 'ಕರೆನ್ಸಿ ಹುಡುಕಿ...';

  @override
  String get appearance => 'ಗೋಚರತೆ';

  @override
  String get light => 'ಲೈಟ್';

  @override
  String get system => 'ಸಿಸ್ಟಮ್';

  @override
  String get dark => 'ಡಾರ್ಕ್';

  @override
  String get themeColor => 'ಥೀಮ್ ಬಣ್ಣ';

  @override
  String get dynamicColors => 'ಡೈನಾಮಿಕ್ ಬಣ್ಣಗಳು';

  @override
  String get dynamicColorsSubtitle => 'ನಿಮ್ಮ ವಾಲ್ಪೇಪರ್ ಆಧರಿಸಿದ ಬಣ್ಣಗಳನ್ನು ಬಳಸಿ';

  @override
  String get dynamicColorsEnabledWarning =>
      'ಥೀಮ್ ಬಣ್ಣವು ಪರಿಣಾಮ ಬೀರಲು ಡೈನಾಮಿಕ್ ಬಣ್ಣಗಳನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get finance => 'ಹಣಕಾಸು';

  @override
  String get monthlyBudgetNav => 'ಮಾಸಿಕ ಬಜೆಟ್';

  @override
  String get budgetSubtitle => 'ನಿಮ್ಮ ಮಾಸಿಕ ಖರ್ಚು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ';

  @override
  String get data => 'ಡೇಟಾ';

  @override
  String get backupNav => 'ಬ್ಯಾಕಪ್';

  @override
  String get backupSubtitle => 'ನಿಮ್ಮ ಡೇಟಾವನ್ನು ರಫ್ತು ಅಥವಾ ಆಮದು ಮಾಡಿ';

  @override
  String get about => 'ಕುರಿತು';

  @override
  String get version => 'ಆವೃತ್ತಿ';

  @override
  String get privacy => 'ಗೌಪ್ಯತೆ';

  @override
  String get termsOfUse => 'ಬಳಕೆಯ ನಿಯಮಗಳು';

  @override
  String get myAchievements => 'ನನ್ನ ಸಾಧನೆಗಳು';

  @override
  String get itemsPurchased => 'ಖರೀದಿಸಿದ ವಸ್ತುಗಳು';

  @override
  String get totalSavings => 'ಒಟ್ಟು ಉಳಿತಾಯ';

  @override
  String get currentStreak => 'ಪ್ರಸ್ತುತ ಸ್ಟ್ರೀಕ್';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ದಿನಗಳು',
      one: '$count ದಿನ',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'ಅನ್‌ಲಾಕ್ ಮಾಡಿದ ಬ್ಯಾಡ್ಜ್‌ಗಳು';

  @override
  String get badgeBeginner => 'ಹರಿಕಾರ';

  @override
  String get badgeOrganized => 'ಆಯೋಜಿಸಲಾಗಿದೆ';

  @override
  String get badgeSavingMaster => 'ಉಳಿಸುವ ಮಾಸ್ಟರ್';

  @override
  String get badgeSuperPlanner => 'ಸೂಪರ್ ಪ್ಲಾನರ್';

  @override
  String get backupTitle => 'ಬ್ಯಾಕಪ್';

  @override
  String get backupPremiumDescription =>
      'ಬ್ಯಾಕಪ್ ಮತ್ತು ರಫ್ತು ಪ್ರೀಮಿಯಂ ವೈಶಿಷ್ಟ್ಯವಾಗಿದೆ';

  @override
  String get exportData => 'ಡೇಟಾ ರಫ್ತು ಮಾಡಿ';

  @override
  String get exportDataSubtitle => 'ಎಲ್ಲಾ ಪಟ್ಟಿಗಳನ್ನು JSON ಆಗಿ ಉಳಿಸಿ';

  @override
  String get importData => 'ಡೇಟಾ ಆಮದು ಮಾಡಿ';

  @override
  String get importDataSubtitle => 'JSON ನಿಂದ ಪಟ್ಟಿಗಳನ್ನು ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get importJsonTitle => 'JSON ಆಮದು ಮಾಡಿ';

  @override
  String get importJsonHint => 'ಬ್ಯಾಕಪ್ JSON ಅನ್ನು ಇಲ್ಲಿ ಅಂಟಿಸಿ...';

  @override
  String get backupExported => 'ಬ್ಯಾಕಪ್ ರಫ್ತು ಮಾಡಲಾಗಿದೆ!';

  @override
  String get budgetAppBar => 'ಮಾಸಿಕ ಬಜೆಟ್';

  @override
  String get budgetPremiumLocked => 'ಜಾಗತಿಕ ಮಾಸಿಕ ಬಜೆಟ್ ಪ್ರೀಮಿಯಂ ಆಗಿದೆ';

  @override
  String get budgetUpgradePrompt => 'ಅನ್ಲಾಕ್ ಮಾಡಲು ಅಪ್ಗ್ರೇಡ್ ಮಾಡಿ';

  @override
  String get noBudgetDefined => 'ಯಾವುದೇ ಬಜೆಟ್ ಹೊಂದಿಸಿಲ್ಲ';

  @override
  String totalEstimated(String amount) {
    return 'ಒಟ್ಟು ಅಂದಾಜು: $amount';
  }

  @override
  String get setBudgetButton => 'ಬಜೆಟ್ ಹೊಂದಿಸಿ';

  @override
  String get budgetLists => 'ಪಟ್ಟಿಗಳು';

  @override
  String get budgetValueLabel => 'ಮೊತ್ತ';

  @override
  String get setBudgetTitle => 'ಮಾಸಿಕ ಬಜೆಟ್';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'ಎಲ್ಲಾ';

  @override
  String get filterPending => 'ಬಾಕಿ ಇದೆ';

  @override
  String get filterPurchased => 'ಖರೀದಿಸಲಾಗಿದೆ';

  @override
  String get sortName => 'ಹೆಸರು';

  @override
  String get sortCategory => 'ವರ್ಗ';

  @override
  String get sortDate => 'ದಿನಾಂಕ';

  @override
  String get sortManual => 'ಹಸ್ತಚಾಲಿತ';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased ರಲ್ಲಿ $total ಐಟಂಗಳು';
  }

  @override
  String progressBudget(String amount) {
    return 'ಬಜೆಟ್: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'ಒಟ್ಟು: $amount';
  }

  @override
  String get addItem => 'ಐಟಂ ಸೇರಿಸಿ';

  @override
  String get itemName => 'ಐಟಂ ಹೆಸರು';

  @override
  String get quantityShort => 'ಪ್ರಮಾಣ';

  @override
  String get unit => 'ಘಟಕ';

  @override
  String get category => 'ವರ್ಗ';

  @override
  String get estimatedPrice => 'ಅಂದಾಜು ಬೆಲೆ';

  @override
  String get addItemPrice => 'ಅಂದಾಜು ಬೆಲೆ';

  @override
  String get editItem => 'ಐಟಂ ಸಂಪಾದಿಸಿ';

  @override
  String get quantityFull => 'ಪ್ರಮಾಣ';

  @override
  String get editItemPrice => 'ಅಂದಾಜು ಬೆಲೆ';

  @override
  String get addToPantry => 'ಪ್ಯಾಂಟ್ರಿಗೆ ಸೇರಿಸಿ';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" ಅನ್ನು ನಿಮ್ಮ ಪ್ಯಾಂಟ್ರಿಗೆ ಸೇರಿಸಬೇಕೆ?';
  }

  @override
  String get yes => 'ಹೌದು';

  @override
  String get productName => 'ಉತ್ಪನ್ನದ ಹೆಸರು';

  @override
  String get idealQty => 'ಆದರ್ಶ ಪ್ರಮಾಣ';

  @override
  String get currentQty => 'ಪ್ರಸ್ತುತ ಪ್ರಮಾಣ';

  @override
  String get trackStock => 'ಸ್ಟಾಕ್ ಟ್ರ್ಯಾಕ್ ಮಾಡಿ';

  @override
  String get trackStockActive => 'ಶಾಪಿಂಗ್ ಸಲಹೆಗಳಲ್ಲಿ ಕಾಣಿಸುತ್ತದೆ';

  @override
  String get trackStockInactive => 'ಶಾಪಿಂಗ್ ಸಲಹೆಯನ್ನು ಉತ್ಪಾದಿಸುವುದಿಲ್ಲ';

  @override
  String get createListDialog => 'ಪಟ್ಟಿ ರಚಿಸಿ';

  @override
  String get renameListDialog => 'ಪಟ್ಟಿ ಮರುಹೆಸರಿಸಿ';

  @override
  String get listHistory => 'ಪಟ್ಟಿ ಇತಿಹಾಸ';

  @override
  String get myLists => 'ನನ್ನ ಪಟ್ಟಿಗಳು';

  @override
  String get viewActive => 'ಸಕ್ರಿಯ ನೋಡಿ';

  @override
  String get viewHistory => 'ಇತಿಹಾಸ ನೋಡಿ';

  @override
  String get noArchivedLists => 'ಯಾವುದೇ ಆರ್ಕೈವ್ ಮಾಡಿದ ಪಟ್ಟಿಗಳಿಲ್ಲ';

  @override
  String get noActiveLists => 'ಯಾವುದೇ ಸಕ್ರಿಯ ಪಟ್ಟಿಗಳಿಲ್ಲ';

  @override
  String completedOn(String date) {
    return '$date ರಂದು ಪೂರ್ಣಗೊಂಡಿದೆ';
  }

  @override
  String get sharedLabel => 'ಹಂಚಿಕೊಂಡಿದೆ';

  @override
  String get restore => 'ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get removeSharedTooltip => 'ತೆಗೆದುಹಾಕಿ';

  @override
  String get deleteListTitle => 'ಪಟ್ಟಿ ಅಳಿಸಿ';

  @override
  String deleteListContent(String name) {
    return 'ನೀವು ಖಚಿತವಾಗಿ \"$name\" ಅಳಿಸಲು ಬಯಸುವಿರಾ? ಎಲ್ಲಾ ಐಟಂಗಳನ್ನು ತೆಗೆದುಹಾಕಲಾಗುವುದು.';
  }

  @override
  String get removeSharedListTitle => 'ಹಂಚಿಕೊಂಡ ಪಟ್ಟಿ ತೆಗೆದುಹಾಕಿ';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" ಅನ್ನು ನಿಮ್ಮ ಪಟ್ಟಿಗಳಿಂದ ತೆಗೆದುಹಾಕಬೇಕೆ? ಮೂಲ ಪಟ್ಟಿಯ ಮೇಲೆ ಪರಿಣಾಮ ಬೀರುವುದಿಲ್ಲ.';
  }

  @override
  String get createNewList => 'ಹೊಸ ಪಟ್ಟಿ ರಚಿಸಿ';

  @override
  String get aiAssistant => 'AI ಸಹಾಯಕ';

  @override
  String get aiAssistantDescription =>
      'ನಮ್ಮ AI ಸಹಾಯಕದೊಂದಿಗೆ ಸ್ಮಾರ್ಟ್ ಸಲಹೆಗಳು, ಪಾಕವಿಧಾನಗಳು ಮತ್ತು ವೈಯಕ್ತಿಕ ಸಲಹೆಗಳನ್ನು ಪಡೆಯಿರಿ.';

  @override
  String get generalAssistant => 'ಸಾಮಾನ್ಯ ಸಹಾಯಕ';

  @override
  String get newChat => 'ಹೊಸ ಚಾಟ್';

  @override
  String get noHistory => 'ಯಾವುದೇ ಚಾಟ್ ಇತಿಹಾಸವಿಲ್ಲ';

  @override
  String get deleteSession => 'ಚಾಟ್ ಅಳಿಸಿ';

  @override
  String get deleteSessionConfirm =>
      'ಈ ಚಾಟ್ ಅನ್ನು ಅಳಿಸಲು ನೀವು ಖಚಿತವಾಗಿ ಬಯಸುವಿರಾ? ಸಂದೇಶಗಳು ಶಾಶ್ವತವಾಗಿ ಕಳೆದುಹೋಗುತ್ತವೆ.';

  @override
  String get clearHistory => 'ಇತಿಹಾಸ ತೆರವುಗೊಳಿಸಿ';

  @override
  String get clearHistoryConfirm =>
      'ಈ ಸೆಷನ್ನಲ್ಲಿರುವ ಎಲ್ಲಾ ಸಂದೇಶಗಳನ್ನು ತೆರವುಗೊಳಿಸಬೇಕೆ?';

  @override
  String get chatHint => 'ನಿಮ್ಮ ಸಂದೇಶವನ್ನು ಟೈಪ್ ಮಾಡಿ...';

  @override
  String get chatHintBlocked => 'ಚಾಟ್ ಮಾಡಲು AI ಅನ್ನು ಅನ್‌ಲಾಕ್ ಮಾಡಿ';

  @override
  String chatError(String error) {
    return 'ಚಾಟ್ ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ: $error';
  }

  @override
  String get aiAssistantTitle => 'AI ಸಹಾಯಕ';

  @override
  String get closeSheet => 'ಮುಚ್ಚಿ';

  @override
  String get scanBarcodeTitle => 'ಬಾರ್ಕೋಡ್ ಅನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get listHelp => 'ನಿಮ್ಮ ಪಟ್ಟಿಯೊಂದಿಗೆ ನಾನು ಹೇಗೆ ಸಹಾಯ ಮಾಡಬಲ್ಲೆ?';

  @override
  String get generalHelp => 'ಇಂದು ನಿಮ್ಮ ಶಾಪಿಂಗ್ನಲ್ಲಿ ನಾನು ಹೇಗೆ ಸಹಾಯ ಮಾಡಬಲ್ಲೆ?';

  @override
  String get chatSubtitle =>
      'ಐಟಂ ಸಲಹೆಗಳು, ಪಾಕವಿಧಾನಗಳು ಅಥವಾ ಉಳಿತಾಯ ಸಲಹೆಗಳಿಗಾಗಿ ಕೇಳಿ.';

  @override
  String get aiError =>
      'ಕ್ಷಮಿಸಿ, ನಿಮ್ಮ ವಿನಂತಿಯನ್ನು ಪ್ರಕ್ರಿಯೆಗೊಳಿಸುವಲ್ಲಿ ದೋಷ ಸಂಭವಿಸಿದೆ. ನಿಮ್ಮ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ ಅಥವಾ ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get aiLimitAlmostReached => 'ಬಹುತೇಕ AI ಸಂದೇಶಗಳು ಹೊರಗಿವೆ';

  @override
  String get unlockAi => 'ಅನಿಯಮಿತ AI ಅನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get aiTeaserFallback =>
      'ಸಂಪೂರ್ಣ ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ಅನ್‌ಲಾಕ್ ಮಾಡಲು ಪ್ರೀಮಿಯಂಗೆ ಚಂದಾದಾರರಾಗಿ ಮತ್ತು ನಿಮ್ಮ ಶಾಪಿಂಗ್‌ಗಾಗಿ ಅನಿಯಮಿತ AI ಸಲಹೆಗಳನ್ನು ಪಡೆಯಿರಿ...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI ಕ್ರಿಯೆಗಳು ಈ ತಿಂಗಳು ಉಳಿದಿವೆ — ಅನಿಯಮಿತವಾಗಿ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ';
  }

  @override
  String get aiUsageExhausted =>
      'ಮಾಸಿಕ AI ಮಿತಿಯನ್ನು ತಲುಪಿದೆ. ಅನಿಯಮಿತ → ಗಾಗಿ Pro ಗೆ ಅಪ್‌ಗ್ರೇಡ್ ಮಾಡಿ';

  @override
  String get kipiListTitle => 'ಕಿಪಿಲಿಸ್ಟ್';

  @override
  String get loginPrompt =>
      'ಪ್ರೀಮಿಯಂ ವೈಶಿಷ್ಟ್ಯಗಳನ್ನು\nಅನ್ಲಾಕ್ ಮಾಡಲು ಲಾಗಿನ್ ಮಾಡಿ';

  @override
  String get signInGoogle => 'Google ನೊಂದಿಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get signInApple => 'Apple ನೊಂದಿಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get continueAsGuest => 'ಅತಿಥಿಯಾಗಿ ಮುಂದುವರಿಸಿ';

  @override
  String get onboardingWelcomeTitle => 'KipiList ಗೆ ಸುಸ್ವಾಗತ';

  @override
  String get onboardingWelcomeDesc =>
      'ನಿಮ್ಮ ಶಾಪಿಂಗ್ ಅನ್ನು ಸಂಘಟಿಸಲು ಮತ್ತು ಹಣವನ್ನು ಉಳಿಸಲು ಬುದ್ಧಿವಂತ ಮಾರ್ಗವಾಗಿದೆ.';

  @override
  String get onboardingSetupTitle => 'ನಿಮ್ಮ ಅನುಭವವನ್ನು ವೈಯಕ್ತೀಕರಿಸಿ';

  @override
  String get onboardingSetupDesc =>
      'KipiList ಹೇಗೆ ಕಾಣಬೇಕೆಂದು ಮತ್ತು ನಿಮಗಾಗಿ ಕೆಲಸ ಮಾಡಬೇಕೆಂದು ನೀವು ಬಯಸುತ್ತೀರಿ ಎಂಬುದನ್ನು ಆರಿಸಿಕೊಳ್ಳಿ.';

  @override
  String get onboardingLoginTitle => 'ಎಲ್ಲವನ್ನೂ ಕ್ಲೌಡ್‌ಗೆ ಉಳಿಸಿ';

  @override
  String get onboardingLoginDesc =>
      'ನಿಮ್ಮ ಎಲ್ಲಾ ಸಾಧನಗಳಾದ್ಯಂತ ನಿಮ್ಮ ಡೇಟಾವನ್ನು ಸಿಂಕ್ ಮಾಡಲಾಗಿದೆ';

  @override
  String get onboardingShareTitle => 'ನೀವು ಇಷ್ಟಪಡುವವರೊಂದಿಗೆ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get onboardingShareDesc =>
      'ನೈಜ ಸಮಯದಲ್ಲಿ ಕುಟುಂಬ ಮತ್ತು ಸ್ನೇಹಿತರೊಂದಿಗೆ ಪಟ್ಟಿಗಳನ್ನು ಸಿಂಕ್ ಮಾಡಿ';

  @override
  String get onboardingPremiumTitle => 'ಎಲ್ಲಾ ವೈಶಿಷ್ಟ್ಯಗಳನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get onboardingPremiumSubtitle =>
      'ನಿಮ್ಮ ಶಾಪಿಂಗ್ ಪಟ್ಟಿಗಳಿಂದ ಹೆಚ್ಚಿನದನ್ನು ಪಡೆಯಿರಿ';

  @override
  String get onboardingAnnualBadge => 'ಅತ್ಯುತ್ತಮ ಮೌಲ್ಯ';

  @override
  String get onboardingMonthlyLabel => 'ಮಾಸಿಕ';

  @override
  String get onboardingAnnualLabel => 'ವಾರ್ಷಿಕ';

  @override
  String get onboardingViewAllPlans => 'ಎಲ್ಲಾ ಯೋಜನೆಗಳನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get onboardingSubscribeCta => 'ಚಂದಾದಾರರಾಗಿ';

  @override
  String get onboardingCancelAnytime => 'ಯಾವಾಗ ಬೇಕಾದರೂ ರದ್ದುಮಾಡಿ. ಬದ್ಧತೆ ಇಲ್ಲ.';

  @override
  String get onboardingContinueAsGuest => 'ಅತಿಥಿಯಾಗಿ ಮುಂದುವರಿಯಿರಿ';

  @override
  String get onboardingRestore => 'ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get onboardingRestoreDesc =>
      'ಈಗಾಗಲೇ ಚಂದಾದಾರಿಕೆ ಹೊಂದಿರುವಿರಾ? ಅದನ್ನು ಮರುಸ್ಥಾಪಿಸಲು ಇಲ್ಲಿ ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get onboardingMaybeLater => 'ಬಹುಶಃ ನಂತರ';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'ಹೇ $name, ನಿಮ್ಮ ಶಾಪಿಂಗ್ ಅನ್ನು ಸರಿಯಾದ ರೀತಿಯಲ್ಲಿ ಆಯೋಜಿಸಿ.';
  }

  @override
  String get onboardingSlide1Title => 'ಸ್ಮಾರ್ಟ್ ಶಾಪಿಂಗ್ ಪಟ್ಟಿಗಳು';

  @override
  String get onboardingSlide1Body =>
      'ಪಟ್ಟಿಗಳನ್ನು ತಕ್ಷಣವೇ ರಚಿಸಿ ಮತ್ತು ಹಂಚಿಕೊಳ್ಳಿ. Kipi ನಿಮ್ಮ ಅಭ್ಯಾಸಗಳನ್ನು ಆಧರಿಸಿ ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಐಟಂಗಳನ್ನು ಸೇರಿಸುತ್ತದೆ.';

  @override
  String get onboardingSlide2Title => 'ಕಿಪಿಯನ್ನು ಭೇಟಿ ಮಾಡಿ';

  @override
  String get onboardingSlide2Body =>
      'ಯಾವುದನ್ನಾದರೂ ಕೇಳಿ - ಪಟ್ಟಿಗಳನ್ನು ರಚಿಸಿ, ಪಾಕವಿಧಾನಗಳನ್ನು ಹುಡುಕಿ, ನಿಮ್ಮ ಪ್ಯಾಂಟ್ರಿಯನ್ನು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ, ನಿಮ್ಮ ವಾರವನ್ನು ಯೋಜಿಸಿ.';

  @override
  String get onboardingSlide3Title => 'ಪ್ಯಾಂಟ್ರಿ ಮತ್ತು ಊಟ ಯೋಜನೆ';

  @override
  String get onboardingSlide3Body =>
      'ನಿಮ್ಮಲ್ಲಿರುವದನ್ನು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ, ಊಟವನ್ನು ಯೋಜಿಸಿ ಮತ್ತು ಶಾಪಿಂಗ್ ಪಟ್ಟಿಗಳನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ರಚಿಸಿ.';

  @override
  String get onboardingExit => 'ನಿರ್ಗಮಿಸಿ';

  @override
  String get onboardingPersonalizationTitle => 'ನಿಮ್ಮನ್ನು ತಿಳಿದುಕೊಳ್ಳೋಣ';

  @override
  String get onboardingPersonalizationDesc =>
      'ನಿಮ್ಮ ಸಲಹೆಗಳನ್ನು ವೈಯಕ್ತೀಕರಿಸಲು ಮತ್ತು ಶಾಪಿಂಗ್ ಅನ್ನು ಚುರುಕುಗೊಳಿಸಲು ನಾವು ಇದನ್ನು ಬಳಸುತ್ತೇವೆ.';

  @override
  String get onboardingPersonalizationFoodLabel => 'ನಿಮ್ಮ ಮೆಚ್ಚಿನ ಆಹಾರ ಯಾವುದು?';

  @override
  String get onboardingPersonalizationFoodHint => 'ಉದಾ. ಪಿಜ್ಜಾ, ಸುಶಿ, ಲಸಾಂಜ...';

  @override
  String get onboardingPersonalizationCta => 'ಮುಂದುವರಿಸಿ';

  @override
  String get onboardingPersonalizationSkip => 'ಸದ್ಯಕ್ಕೆ ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'ಮುಂದುವರಿಯಲು ನಿಮ್ಮ ಮೆಚ್ಚಿನ ಆಹಾರವನ್ನು ನಮಗೆ ತಿಳಿಸಿ';

  @override
  String get settingsDefaultScreen => 'ಡೀಫಾಲ್ಟ್ ಹೋಮ್ ಸ್ಕ್ರೀನ್';

  @override
  String get settingsDefaultScreenSubtitle =>
      'ಶಾಪಿಂಗ್ ಪಟ್ಟಿ ಅಥವಾ AI ಚಾಟ್ ನಡುವೆ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get settingsScreenList => 'ಶಾಪಿಂಗ್ ಪಟ್ಟಿ';

  @override
  String get settingsScreenChat => 'AI ಚಾಟ್';

  @override
  String loginError(String error) {
    return 'ಲಾಗಿನ್ ದೋಷ: $error';
  }

  @override
  String get paywallTitle => 'KipiList ಪ್ರೀಮಿಯಂ';

  @override
  String get paywallLoadingError =>
      'ಕೊಡುಗೆಗಳನ್ನು ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get paywallPurchaseError =>
      'ಖರೀದಿಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get paywallRestoreError =>
      'ಮರುಸ್ಥಾಪಿಸಲು ಯಾವುದೇ ಸಕ್ರಿಯ ಚಂದಾದಾರಿಕೆ ಕಂಡುಬಂದಿಲ್ಲ.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ದಿನಗಳು ಉಚಿತ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ವಾರಗಳು ಉಚಿತ',
      one: '$count ವಾರ ಉಚಿತ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ತಿಂಗಳುಗಳು ಉಚಿತ',
      one: '$count ತಿಂಗಳು ಉಚಿತ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'ಕಿಪಿಲಿಸ್ಟ್ ಪ್ರೊ ಅನ್ನು 7 ದಿನಗಳವರೆಗೆ ಉಚಿತವಾಗಿ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get paywallTrialSubtitle =>
      'ಯಾವಾಗ ಬೇಕಾದರೂ ರದ್ದುಮಾಡಿ. ಇಂದು ಶುಲ್ಕವಿಲ್ಲ.';

  @override
  String get paywallTrialCta => 'ಉಚಿತ ಪ್ರಯೋಗವನ್ನು ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get recipeAddToList => 'ಶಾಪಿಂಗ್ ಪಟ್ಟಿಗೆ ಸೇರಿಸಿ';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ಪದಾರ್ಥಗಳನ್ನು $listName ಗೆ ಸೇರಿಸಲಾಗಿದೆ';
  }

  @override
  String get noListSelected =>
      'ಯಾವುದೇ ಪಟ್ಟಿಯನ್ನು ಆಯ್ಕೆಮಾಡಲಾಗಿಲ್ಲ. ಮೊದಲು ಪಟ್ಟಿಯನ್ನು ತೆರೆಯಿರಿ.';

  @override
  String get paywallFeaturesTitle => 'ನಿಮಗೆ ಬೇಕಾಗಿರುವುದು:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI ನಿಮ್ಮ ಪಟ್ಟಿಯನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಆಯೋಜಿಸುತ್ತದೆ';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'ನಿಮಗೆ ಅಗತ್ಯವಿರುವಷ್ಟು ಪಟ್ಟಿಗಳನ್ನು ರಚಿಸಿ';

  @override
  String get paywallFeatureDescSharing => 'ನೈಜ ಸಮಯದಲ್ಲಿ ಒಟ್ಟಿಗೆ ಶಾಪಿಂಗ್ ಮಾಡಿ';

  @override
  String get paywallFeatureDescPantry =>
      'ನಿಮ್ಮ ಮನೆಯಲ್ಲಿ ಏನಿದೆ ಎಂಬುದನ್ನು ಟ್ರ್ಯಾಕ್ ಮಾಡಿ';

  @override
  String get paywallFeatureDescBudget => 'ಪ್ರತಿ ತಿಂಗಳು ಬಜೆಟ್‌ನಲ್ಲಿ ಉಳಿಯಿರಿ';

  @override
  String get paywallFeatureUnlimitedLists => 'ಅನಿಯಮಿತ ಪಟ್ಟಿಗಳು';

  @override
  String get paywallFeatureSmartAI => 'ಸ್ಮಾರ್ಟ್ AI';

  @override
  String get paywallFeatureExpenseControl => 'ವೆಚ್ಚ ನಿಯಂತ್ರಣ';

  @override
  String get paywallFeatureSharing => 'ಹಂಚಿಕೆ';

  @override
  String get paywallBeforeAfterTitle => 'AI ಮೊದಲು ಮತ್ತು ನಂತರ:';

  @override
  String get paywallLabelCommon => 'ಸಾಮಾನ್ಯ';

  @override
  String get paywallLabelPro => 'ಕಿಪಿಲಿಸ್ಟ್ ಪ್ರೊ';

  @override
  String get paywallBeforeItem1 => 'ಅಕ್ಕಿ';

  @override
  String get paywallBeforeItem2 => 'ಸಾಬೂನು';

  @override
  String get paywallBeforeItem3 => 'ಮಾಂಸ';

  @override
  String get paywallBeforeItem4 => 'ಬ್ರೆಡ್';

  @override
  String get paywallAfterItem1 => 'ಧಾನ್ಯಗಳು';

  @override
  String get paywallAfterItem2 => 'ಸ್ವಚ್ಛಗೊಳಿಸುವ';

  @override
  String get paywallAfterItem3 => 'ಮಾಂಸಗಳು';

  @override
  String get paywallAfterItem4 => 'ಬೇಕರಿ';

  @override
  String get paywallTestimonialsTitle => 'ನಮ್ಮ ಬಳಕೆದಾರರು ಏನು ಹೇಳುತ್ತಾರೆ:';

  @override
  String get paywallTestimonial1Name => 'ಆನ್ ಎಸ್.';

  @override
  String get paywallTestimonial1Text =>
      'AI ನನ್ನ ಶಾಪಿಂಗ್ ಅನ್ನು ಸೆಕೆಂಡುಗಳಲ್ಲಿ ಆಯೋಜಿಸುತ್ತದೆ. ನಾನು ಪ್ರತಿ ಮಾರುಕಟ್ಟೆ ಪ್ರವಾಸಕ್ಕೆ 20 ನಿಮಿಷಗಳನ್ನು ಉಳಿಸುತ್ತೇನೆ.';

  @override
  String get paywallTestimonial2Name => 'ಚಾರ್ಲ್ಸ್ ಎಂ.';

  @override
  String get paywallTestimonial2Text =>
      'ನಾನು ಮತ್ತೆ ಪಟ್ಟಿ ಐಟಂ ಅನ್ನು ಮರೆಯಲಿಲ್ಲ. AI ಚಾಟ್ ಸಂವೇದನಾಶೀಲವಾಗಿದೆ!';

  @override
  String get paywallSocialProof => '+2,400 ಕುಟುಂಬಗಳು ಇದನ್ನು ಬಳಸುತ್ತವೆ';

  @override
  String get paywallCtaUnlock => 'PRO ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get paywallBestValue => 'ಅತ್ಯುತ್ತಮ ಮೌಲ್ಯ';

  @override
  String get paywallMostPopular => 'ಅತ್ಯಂತ ಜನಪ್ರಿಯ';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'ಸುರಕ್ಷಿತ ಪಾವತಿ';

  @override
  String get paywallSelectPlan => 'ನಿಮ್ಮ ಯೋಜನೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% ಉಳಿಸಿ';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'ಕೇವಲ $price/ತಿಂಗಳು';
  }

  @override
  String get paywallPackageAnnual => 'ವಾರ್ಷಿಕ ಯೋಜನೆ';

  @override
  String get paywallPackageMonthly => 'ಮಾಸಿಕ ಯೋಜನೆ';

  @override
  String get paywallPackageLifetime => 'ಜೀವಮಾನದ ಪ್ರವೇಶ';

  @override
  String get paywallCancelAnytime => 'ಯಾವಾಗ ಬೇಕಾದರೂ ರದ್ದುಮಾಡಿ. ಬದ್ಧತೆ ಇಲ್ಲ.';

  @override
  String paywallTrialInCard(int days) {
    return 'ಮೊದಲ $days ದಿನಗಳು ಉಚಿತ';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Play ನಿಂದ ಸುರಕ್ಷಿತವಾಗಿದೆ · ಯಾವುದೇ ಸಮಯದಲ್ಲಿ ರದ್ದುಮಾಡಿ';

  @override
  String get paywallPolicy => 'ಗೌಪ್ಯತೆ ನೀತಿ';

  @override
  String get paywallTerms => 'ಬಳಕೆಯ ನಿಯಮಗಳು';

  @override
  String get paywallRestore => 'ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get paywallHeroHeadline => 'Kipi AI ಯಾವಾಗಲೂ ನಿಮ್ಮ ಪಕ್ಕದಲ್ಲಿದೆ';

  @override
  String get paywallHeroSubtitle =>
      'ಐಟಂಗಳನ್ನು ಸೇರಿಸಿ, ಪಟ್ಟಿಗಳನ್ನು ಸಂಘಟಿಸಿ ಮತ್ತು ನಿಮ್ಮ ಜೇಬಿನಲ್ಲಿ AI ಯೊಂದಿಗೆ ಸಮಯವನ್ನು ಉಳಿಸಿ';

  @override
  String get paywallBenefit1Desc =>
      '24/7 ಐಟಂಗಳನ್ನು ಸೇರಿಸುತ್ತದೆ, ಸಂಘಟಿಸುತ್ತದೆ ಮತ್ತು ಸೂಚಿಸುತ್ತದೆ';

  @override
  String get paywallBenefit2Desc => '3-ಪಟ್ಟಿ ಮಿತಿ ಇಲ್ಲ';

  @override
  String get paywallBenefit3Desc => 'ವೆಚ್ಚ ಟ್ರ್ಯಾಕಿಂಗ್ ಮತ್ತು ಕುಟುಂಬದ ಪಟ್ಟಿಗಳು';

  @override
  String get paywallPackageMonthlyDesc => 'ಪೂರ್ಣ ನಮ್ಯತೆ';

  @override
  String paywallCtaTrialDays(int days) {
    return 'ಉಚಿತವಾಗಿ ಪ್ರಾರಂಭಿಸಿ — $days ದಿನಗಳು';
  }

  @override
  String get premiumUpgrade => 'ಅನ್ಲಾಕ್ ಮಾಡಲು ಅಪ್ಗ್ರೇಡ್ ಮಾಡಿ';

  @override
  String get itemRemoved => 'ಐಟಂ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';

  @override
  String get undo => 'ರದ್ದುಮಾಡಿ';

  @override
  String get emptyListTitle => 'ನಿಮ್ಮ ಪಟ್ಟಿ ಖಾಲಿಯಾಗಿದೆ';

  @override
  String get emptyListSubtitle => 'ಪ್ರಾರಂಭಿಸಲು ಐಟಂಗಳನ್ನು ಸೇರಿಸಿ';

  @override
  String get noListFoundTitle => 'ಯಾವುದೇ ಪಟ್ಟಿ ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get noListFoundSubtitle => 'ಪ್ರಾರಂಭಿಸಲು ನಿಮ್ಮ ಮೊದಲ ಪಟ್ಟಿಯನ್ನು ರಚಿಸಿ';

  @override
  String get createFirstList => 'ಮೊದಲ ಪಟ್ಟಿ ರಚಿಸಿ';

  @override
  String get listBudgetTitle => 'ಪಟ್ಟಿ ಬಜೆಟ್';

  @override
  String get budgetAmountLabel => 'ಬಜೆಟ್ ಮೊತ್ತ';

  @override
  String get removeBudget => 'ತೆಗೆದುಹಾಕಿ';

  @override
  String get prefUnlimitedLists => 'ಅನಿಯಮಿತ ಪಟ್ಟಿಗಳು';

  @override
  String get prefSharing => 'ಪಟ್ಟಿಗಳನ್ನು ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get prefFullHistory => 'ಪೂರ್ಣ ಇತಿಹಾಸ';

  @override
  String get prefExportData => 'ಡೇಟಾ ರಫ್ತು ಮಾಡಿ';

  @override
  String get prefCustomThemes => 'ಕಸ್ಟಮ್ ಥೀಮ್ಗಳು';

  @override
  String get prefMonthlyBudget => 'ಜಾಗತಿಕ ಮಾಸಿಕ ಬಜೆಟ್';

  @override
  String get prefAIAssistant => 'ವೈಯಕ್ತಿಕ AI ಸಹಾಯಕ';

  @override
  String get prefUnlimitedPantry => 'ಅನಿಯಮಿತ ಪ್ಯಾಂಟ್ರಿ';

  @override
  String get prefInteractiveArtifacts => 'ಸಂವಾದಾತ್ಮಕ AI ಆರ್ಟಿಫ್ಯಾಕ್ಟ್ಗಳು';

  @override
  String get themeGreen => 'ಹಸಿರು';

  @override
  String get themeBlue => 'ನೀಲಿ';

  @override
  String get themePurple => 'ನೇರಳೆ';

  @override
  String get themeRed => 'ಕೆಂಪು';

  @override
  String get themeOrange => 'ಕಿತ್ತಳೆ';

  @override
  String get themePink => 'ಗುಲಾಬಿ';

  @override
  String get themeIndigo => 'ಇಂಡಿಗೊ';

  @override
  String get themeAmber => 'ಅಂಬರ್';

  @override
  String get themeTeal => 'ಟೀಲ್';

  @override
  String get themeBrown => 'ಕಂದು';

  @override
  String get catFruits => 'ಹಣ್ಣುಗಳು';

  @override
  String get catCleaning => 'ಶುಚಿಗೊಳಿಸುವಿಕೆ';

  @override
  String get catBeverages => 'ಪಾನೀಯಗಳು';

  @override
  String get catBakery => 'ಬೇಕರಿ';

  @override
  String get catOthers => 'ಇತರೆ';

  @override
  String get unitPack => 'ಪ್ಯಾಕ್';

  @override
  String get shareSubject => 'ಶಾಪಿಂಗ್ ಪಟ್ಟಿ';

  @override
  String get monthlyBudgetTitle => 'ಮಾಸಿಕ ಬಜೆಟ್';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'ಪಟ್ಟಿ ಅಳಿಸಿ';

  @override
  String get pantryItemRemoved => 'ಐಟಂ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit ಐಟಂಗಳನ್ನು ಖರೀದಿಸಬೇಕಾಗಿದೆ',
      one: '$deficit ಐಟಂ ಅನ್ನು ಖರೀದಿಸಬೇಕಾಗಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'ಕಾರ್ಟ್ ಒಟ್ಟು';

  @override
  String get restockLabel => 'ಮರುಪೂರೈಸಿ';

  @override
  String get advancedFeatures => 'ಸುಧಾರಿತ ವೈಶಿಷ್ಟ್ಯಗಳು';

  @override
  String get selectAll => 'ಎಲ್ಲಾ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get deselectAll => 'ಎಲ್ಲಾ ಆಯ್ಕೆ ತೆಗೆದುಹಾಕಿ';

  @override
  String get monthlyBudgetAppBar => 'ಮಾಸಿಕ ಬಜೆಟ್';

  @override
  String get budgetEditTitle => 'ಮಾಸಿಕ ಬಜೆಟ್';

  @override
  String get budgetDashboardTitle => 'ಡ್ಯಾಶ್ಬೋರ್ಡ್';

  @override
  String get selectListForDashboard =>
      'ಡ್ಯಾಶ್ಬೋರ್ಡ್ ವೀಕ್ಷಿಸಲು ಪಟ್ಟಿಯನ್ನು ಆಯ್ಕೆಮಾಡಿ.';

  @override
  String get spendingAnalysis => 'ಖರ್ಚು ವಿಶ್ಲೇಷಣೆ';

  @override
  String get noItemsToAnalyze => 'ವಿಶ್ಲೇಷಿಸಲು ಪಟ್ಟಿಯಲ್ಲಿ ಯಾವುದೇ ಐಟಂಗಳಿಲ್ಲ.';

  @override
  String get markItemsToSeeAnalysis =>
      'ವಿಶ್ಲೇಷಣೆ ನೋಡಲು ಐಟಂಗಳನ್ನು ಖರೀದಿಸಿದ ಎಂದು ಗುರುತಿಸಿ.';

  @override
  String get totalSpending => 'ಒಟ್ಟು ಖರ್ಚು';

  @override
  String get spendingByCategory => 'ವರ್ಗದ ಪ್ರಕಾರ ಖರ್ಚು';

  @override
  String get achievements => 'ಸಾಧನೆಗಳು';

  @override
  String get exportPdfExcel => 'PDF/Excel ರಫ್ತು ಮಾಡಿ';

  @override
  String get exportPdf => 'PDF ಆಗಿ ರಫ್ತು ಮಾಡಿ';

  @override
  String get exportExcel => 'Excel ಆಗಿ ರಫ್ತು ಮಾಡಿ';

  @override
  String get organizingAi => 'AI ಜೊತೆ ಸಂಘಟಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get yesLabel => 'ಹೌದು';

  @override
  String get noLabel => 'ಇಲ್ಲ';

  @override
  String get shareListText => 'ನನ್ನ ಶಾಪಿಂಗ್ ಪಟ್ಟಿ';

  @override
  String get emptyListAddItems =>
      'ನಿಮ್ಮ ಪಟ್ಟಿ ಖಾಲಿಯಾಗಿದೆ! ಮೊದಲು ಐಟಂಗಳನ್ನು ಸೇರಿಸಿ. ℹ️';

  @override
  String get listOrganizedMagic =>
      'ಪಟ್ಟಿಯನ್ನು ಮಾಂತ್ರಿಕವಾಗಿ ವರ್ಗಗಳಾಗಿ ಸಂಘಟಿಸಲಾಗಿದೆ! ✨';

  @override
  String get shoppingMode => 'ಶಾಪಿಂಗ್ ಮೋಡ್';

  @override
  String get smartOrganization => 'ಸ್ಮಾರ್ಟ್ ಸಂಘಟನೆ';

  @override
  String get savings => 'ಉಳಿತಾಯ';

  @override
  String get shoppingModeHeader => 'ಶಾಪಿಂಗ್ ಮೋಡ್';

  @override
  String get shareAsText => 'ಫಾರ್ಮ್ಯಾಟ್ ಮಾಡಿದ ಪಠ್ಯವಾಗಿ ಐಟಂಗಳನ್ನು ಕಳುಹಿಸಿ';

  @override
  String get shareRealtime => 'ಇತರರೊಂದಿಗೆ ರಿಯಲ್-ಟೈಮ್ ಸಿಂಕ್';

  @override
  String get quickRecipe => 'ತ್ವರಿತ ಪಾಕವಿಧಾನ';

  @override
  String get quickRecipePrompt =>
      'ನನ್ನ ಪಟ್ಟಿಯ ಐಟಂಗಳೊಂದಿಗೆ ಪಾಕವಿಧಾನಗಳನ್ನು ಸೂಚಿಸಿ.';

  @override
  String get economyTips => 'ಉಳಿತಾಯ ಸಲಹೆಗಳು';

  @override
  String get economyTipsPrompt => 'ಈ ಖರೀದಿಯಲ್ಲಿ ನಾನು ಹೇಗೆ ಹಣ ಉಳಿಸಬಹುದು?';

  @override
  String get organizeAisles => 'ಹಜಾರಗಳ ಮೂಲಕ ಸಂಘಟಿಸಿ';

  @override
  String get organizeAislesPrompt => 'ಮಾರುಕಟ್ಟೆಯ ಹಜಾರಗಳ ಮೂಲಕ ಸಂಘಟಿಸಿ.';

  @override
  String get recipeSuggestion => 'ಪಾಕವಿಧಾನ ಸೂಚನೆ';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining ಕ್ರೆಡಿಟ್ಗಳು ಉಳಿದಿವೆ';
  }

  @override
  String get addAllToList => 'ಎಲ್ಲವನ್ನು ಪಟ್ಟಿಗೆ ಸೇರಿಸಿ';

  @override
  String get organizeByAisles => 'ಹಜಾರಗಳ ಮೂಲಕ ಸಂಘಟಿಸಿ';

  @override
  String get voiceTranscriptionTooltip => 'ಧ್ವನಿ ಟೈಪಿಂಗ್ (ಉಚಿತ)';

  @override
  String get aiVoiceCommandTooltip => 'AI ಧ್ವನಿ ಆಜ್ಞೆ (ಪ್ರೀಮಿಯಂ)';

  @override
  String get voiceCommandTitle => 'AI ಧ್ವನಿ ಆಜ್ಞೆ';

  @override
  String get voiceCommandContent =>
      'ನಿಮ್ಮ ಪಟ್ಟಿಯನ್ನು ನಿರ್ವಹಿಸಲು ಸ್ವಾಭಾವಿಕವಾಗಿ ಮಾತನಾಡಿ!\n\nಉದಾಹರಣೆಗಳು:\n• \'ಬ್ರೆಡ್, ಚೀಸ್ ಮತ್ತು ಹ್ಯಾಮ್ ಸೇರಿಸಿ\'\n• \'ಲಾಂಡ್ರಿ ಡಿಟರ್ಜೆಂಟ್ ತೆಗೆದುಹಾಕಿ\'\n• \'ಥೀಮ್ ಅನ್ನು ನೀಲಿ ಬಣ್ಣಕ್ಕೆ ಬದಲಾಯಿಸಿ\'\n\nಇದು KipiList ಪ್ರೀಮಿಯಂನ ವಿಶೇಷ ವೈಶಿಷ್ಟ್ಯವಾಗಿದೆ.';

  @override
  String get voiceCommandPlanBtn => 'ಯೋಜನೆಗಳನ್ನು ನೋಡಿ';

  @override
  String get itemsAddedSuccess => 'ಐಟಂಗಳನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಪಟ್ಟಿಗೆ ಸೇರಿಸಲಾಗಿದೆ!';

  @override
  String get viewList => 'ಪಟ್ಟಿ ನೋಡಿ';

  @override
  String get feedbackTitle => 'ಪ್ರತಿಕ್ರಿಯೆ ಕಳುಹಿಸಿ';

  @override
  String get feedbackPrompt => 'ನೀವು ಏನನ್ನು ಹಂಚಿಕೊಳ್ಳಲು ಬಯಸುತ್ತೀರಿ?';

  @override
  String get feedbackTypeBug => 'ದೋಷ ವರದಿ ಮಾಡಿ';

  @override
  String get feedbackTypeBugHint => 'ಏನೋ ಕಾರ್ಯನಿರ್ವಹಿಸುತ್ತಿಲ್ಲ';

  @override
  String get feedbackTypeSuggestion => 'ಸಲಹೆ';

  @override
  String get feedbackTypeSuggestionHint => 'ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಸುಧಾರಿಸಲು ಕಲ್ಪನೆ';

  @override
  String get feedbackTypeTranslation => 'ಅನುವಾದ ಸಮಸ್ಯೆ';

  @override
  String get feedbackTypeTranslationHint => 'ತಪ್ಪು ಅಥವಾ ಅಸ್ವಾಭಾವಿಕ ಅನುವಾದ';

  @override
  String get feedbackTypeFeature => 'ವೈಶಿಷ್ಟ್ಯ ವಿನಂತಿ';

  @override
  String get feedbackTypeFeatureHint => 'ನೀವು ನೋಡಲು ಬಯಸುವ ವೈಶಿಷ್ಟ್ಯ';

  @override
  String get feedbackTypeOther => 'ಇತರೆ';

  @override
  String get feedbackTypeOtherHint => 'ಇತರ ಪ್ರಕಾರದ ಪ್ರತಿಕ್ರಿಯೆ';

  @override
  String get feedbackHint => 'ನಿಮ್ಮ ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ವಿವರವಾಗಿ ವಿವರಿಸಿ...';

  @override
  String get feedbackSend => 'ಪ್ರತಿಕ್ರಿಯೆ ಕಳುಹಿಸಿ';

  @override
  String get feedbackSending => 'ಕಳುಹಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get feedbackThankYou => 'ಧನ್ಯವಾದಗಳು!';

  @override
  String get feedbackThankYouMessage =>
      'ನಿಮ್ಮ ಪ್ರತಿಕ್ರಿಯೆ ಸ್ವೀಕರಿಸಲಾಗಿದೆ ಮತ್ತು ಇದು ಎಲ್ಲರಿಗೂ KipiList ಅನ್ನು ಸುಧಾರಿಸಲು ನಮಗೆ ಸಹಾಯ ಮಾಡುತ್ತದೆ.';

  @override
  String get feedbackBack => 'ಹಿಂದೆ';

  @override
  String feedbackError(String error) {
    return 'ಕಳುಹಿಸುವಲ್ಲಿ ದೋಷ: $error';
  }

  @override
  String get feedbackRetry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get feedbackSettingsTitle => 'ಪ್ರತಿಕ್ರಿಯೆ ಕಳುಹಿಸಿ';

  @override
  String get feedbackSettingsSubtitle =>
      'ದೋಷಗಳನ್ನು ವರದಿ ಮಾಡಿ, ಸುಧಾರಣೆಗಳನ್ನು ಸೂಚಿಸಿ ಅಥವಾ ಅನುವಾದಗಳನ್ನು ಸರಿಪಡಿಸಿ';

  @override
  String get aiEnergy => 'AI ಶಕ್ತಿ';

  @override
  String get searchInConversation => 'ಸಂಭಾಷಣೆಯಲ್ಲಿ ಹುಡುಕಿ...';

  @override
  String get noMessagesFound => 'ಯಾವುದೇ ಸಂದೇಶಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get suggestedQuestions => 'ಸೂಚಿಸಿದ ಪ್ರಶ್ನೆಗಳು:';

  @override
  String get shoppingAssistant => 'ಶಾಪಿಂಗ್ ಸಹಾಯಕ';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total ರಲ್ಲಿ $purchased ಖರೀದಿಸಲಾಗಿದೆ';
  }

  @override
  String get estimatedCost => 'ಅಂದಾಜಿಸಲಾಗಿದೆ';

  @override
  String get viewItems => 'ಐಟಂಗಳನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get noItemsInList => 'ಪಟ್ಟಿಯಲ್ಲಿ ಯಾವುದೇ ಐಟಂಗಳಿಲ್ಲ';

  @override
  String get longHistoryWarning =>
      'ದೀರ್ಘ ಇತಿಹಾಸ: ಉತ್ತಮ ಕಾರ್ಯಕ್ಷಮತೆಗಾಗಿ ಸಹಾಯಕ ಇತ್ತೀಚಿನ ಸಂದೇಶಗಳ ಮೇಲೆ ಕೇಂದ್ರೀಕರಿಸುತ್ತದೆ.';

  @override
  String get listening => 'ಕೇಳುತ್ತಿದೆ...';

  @override
  String get addDirectToList => 'ಪಟ್ಟಿಗೆ ನೇರವಾಗಿ ಸೇರಿಸಿ';

  @override
  String get unlockFullResponse => 'ಪೂರ್ಣ ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get switchList => 'ಪಟ್ಟಿಯನ್ನು ಬದಲಿಸಿ';

  @override
  String get marketMode => 'ಮಾರುಕಟ್ಟೆ ಮೋಡ್';

  @override
  String get backToChat => 'Chat ಗೆ ಹಿಂತಿರುಗಿ';

  @override
  String get finishShopping => 'ಶಾಪಿಂಗ್ ಮುಗಿಸಿ';

  @override
  String get welcomeAiAssistant => 'AI ಸಹಾಯಕಕ್ಕೆ ಸುಸ್ವಾಗತ';

  @override
  String get createListToStartAi =>
      'ಸ್ಮಾರ್ಟ್ ಚಾಟ್ ಬಳಸುವುದನ್ನು ಪ್ರಾರಂಭಿಸಲು ಶಾಪಿಂಗ್ ಪಟ್ಟಿಯನ್ನು ರಚಿಸಿ.';

  @override
  String get howCanIHelp => 'ನಾನು ಹೇಗೆ ಸಹಾಯ ಮಾಡಬಹುದು?';

  @override
  String get chatSubtitleShort => 'ಬೆಲೆಗಳು, ಪಾಕವಿಧಾನಗಳು, ಸಂಸ್ಥೆಯ ಬಗ್ಗೆ ಕೇಳಿ...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total ಖರೀದಿಸಲಾಗಿದೆ';
  }

  @override
  String get quickReplies => 'ತ್ವರಿತ ಪ್ರತ್ಯುತ್ತರಗಳು:';

  @override
  String get voiceProFeature =>
      'ಸುಧಾರಿತ ಧ್ವನಿ ಆಜ್ಞೆಗಳು ಪ್ರೊ. ಮೂಲ ನಿರ್ದೇಶನವನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get viewPro => 'ಪ್ರೊ ವೀಕ್ಷಿಸಿ';

  @override
  String get errorLoadingChat => 'ಓಹ್! ಚಾಟ್ ಲೋಡ್ ಮಾಡುವಾಗ ಏನೋ ತಪ್ಪಾಗಿದೆ.';

  @override
  String get errorLoadingChatSubtitle =>
      'ನಿಮ್ಮ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ ಅಥವಾ ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get errorOscillation =>
      'ನೆಟ್‌ವರ್ಕ್ ಆಂದೋಲನಗಳು ಅಥವಾ ತಾತ್ಕಾಲಿಕ ಅಲಭ್ಯತೆಯಿಂದಾಗಿ ಇದು ಸಂಭವಿಸಬಹುದು. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get activeListening => 'ಸಕ್ರಿಯ ಆಲಿಸುವಿಕೆ';

  @override
  String get whatToDoWithItem => 'ಈ ಐಟಂನೊಂದಿಗೆ ನೀವು ಏನು ಮಾಡಲು ಬಯಸುತ್ತೀರಿ?';

  @override
  String get viewDetails => 'ವಿವರಗಳನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get openMenu => 'ಮೆನುವನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get viewRecipe => 'ಪಾಕವಿಧಾನ ನೋಡಿ';

  @override
  String get recipeCreated => 'ಪಾಕವಿಧಾನ ರಚಿಸಲಾಗಿದೆ!';

  @override
  String get editRecipe => 'ಸಂಪಾದಿಸಿ';

  @override
  String get deleteRecipe => 'ಅಳಿಸಿ';

  @override
  String get deleteRecipeConfirm => 'ಈ ಪಾಕವಿಧಾನವನ್ನು ಅಳಿಸಬೇಕೆ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\" ಅನ್ನು ಅಳಿಸಲು ನೀವು ಖಚಿತವಾಗಿ ಬಯಸುವಿರಾ? ಈ ಕ್ರಿಯೆಯನ್ನು ಹಿಂತಿರುಗಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ.';
  }

  @override
  String get ingredients => 'ಪದಾರ್ಥಗಳು';

  @override
  String get instructions => 'ಸೂಚನೆಗಳು';

  @override
  String get prepTime => 'ತಯಾರಿಕೆಯ ಸಮಯ';

  @override
  String get recipeSaved => 'ಪಾಕವಿಧಾನ ಉಳಿಸಲಾಗಿದೆ!';

  @override
  String get noRecipesSaved => 'ಯಾವುದೇ ಪಾಕವಿಧಾನಗಳನ್ನು ಉಳಿಸಿಲ್ಲ';

  @override
  String get noRecipesSavedHint =>
      'ಕೆಳಗಿನ ಬಟನ್ ಟ್ಯಾಪ್ ಮಾಡುವ ಮೂಲಕ ನಿಮ್ಮ ಮೊದಲ ಕಸ್ಟಮ್ ಪಾಕವಿಧಾನವನ್ನು ರಚಿಸಿ.';

  @override
  String get myRecipes => 'ನನ್ನ ಪಾಕವಿಧಾನಗಳು';

  @override
  String get newRecipe => 'ಹೊಸ ಪಾಕವಿಧಾನ';

  @override
  String get loadingRecipes => 'ನಿಮ್ಮ ಪಾಕವಿಧಾನಗಳನ್ನು ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get errorLoadingRecipes => 'ಪಾಕವಿಧಾನಗಳನ್ನು ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ';

  @override
  String get addIngredient => 'ಪದಾರ್ಥವನ್ನು ಸೇರಿಸಿ';

  @override
  String get saveRecipe => 'ಉಳಿಸಿ';

  @override
  String get recipeName => 'ಪಾಕವಿಧಾನದ ಹೆಸರು';

  @override
  String get shortDescription => 'ಸಣ್ಣ ವಿವರಣೆ';

  @override
  String get prepTimeMinutes => 'ತಯಾರಿಕೆಯ ಸಮಯ (ನಿಮಿಷಗಳು)';

  @override
  String get instructionsHint => 'ಪ್ರತಿ ಸಾಲಿಗೆ ಒಂದು ಹಂತವನ್ನು ಟೈಪ್ ಮಾಡಿ...';

  @override
  String get addPhoto => 'ಫೋಟೋ ಸೇರಿಸಿ';

  @override
  String get imageUrlPlaceholder => 'ಅಥವಾ ಚಿತ್ರದ URL ಅನ್ನು ಅಂಟಿಸಿ';

  @override
  String get tags => 'ಟ್ಯಾಗ್ಗಳು';

  @override
  String get recipeTags => 'ಪಾಕವಿಧಾನ ಟ್ಯಾಗ್ಗಳು';

  @override
  String get suggestedTags => 'ಸೂಚಿಸಲಾಗಿದೆ';

  @override
  String get searchRecipes => 'ಪಾಕವಿಧಾನಗಳನ್ನು ಹುಡುಕಿ...';

  @override
  String get filterByTag => 'ಟ್ಯಾಗ್ ಮೂಲಕ ಫಿಲ್ಟರ್ ಮಾಡಿ';

  @override
  String get allTags => 'ಎಲ್ಲಾ';

  @override
  String get recipeDeleted => 'ಪಾಕವಿಧಾನ ಅಳಿಸಲಾಗಿದೆ';

  @override
  String get saveChanges => 'ಬದಲಾವಣೆಗಳನ್ನು ಉಳಿಸಿ';

  @override
  String get editRecipeTitle => 'ಪಾಕವಿಧಾನ ಸಂಪಾದಿಸಿ';

  @override
  String get newRecipeTitle => 'ಹೊಸ ಪಾಕವಿಧಾನ';

  @override
  String get requiredField => 'ಅಗತ್ಯವಿದೆ';

  @override
  String get chooseImageSource => 'ಚಿತ್ರದ ಮೂಲವನ್ನು ಆರಿಸಿ';

  @override
  String get gallery => 'ಗ್ಯಾಲರಿ';

  @override
  String get enterUrl => 'URL ನಮೂದಿಸಿ';

  @override
  String get recipeImage => 'ಪಾಕವಿಧಾನದ ಚಿತ್ರ';

  @override
  String get removeImage => 'ಚಿತ್ರವನ್ನು ತೆಗೆದುಹಾಕಿ';

  @override
  String get mealPlannerTitle => 'ಊಟದ ಯೋಜಕ';

  @override
  String get mealPlannerViewMonthly => 'ಮಾಸಿಕ ನೋಟ';

  @override
  String get mealPlannerViewWeekly => 'ಸಾಪ್ತಾಹಿಕ ನೋಟ';

  @override
  String get mealPlannerNoMeals => 'ಯಾವುದೇ ಊಟವನ್ನು ಯೋಜಿಸಿಲ್ಲ';

  @override
  String get mealPlannerNoMealsHint => 'ಊಟವನ್ನು ಸೇರಿಸಲು ದಿನದ ಮೇಲೆ ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get mealPlannerLoading => 'ಊಟದ ಯೋಜನೆಯನ್ನು ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get mealPlannerError => 'ಊಟದ ಯೋಜನೆಯನ್ನು ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ';

  @override
  String get mealPlannerAddMeal => 'ಊಟವನ್ನು ಸೇರಿಸಿ';

  @override
  String get mealPlannerEditMeal => 'ಊಟವನ್ನು ಸಂಪಾದಿಸಿ';

  @override
  String get mealPlannerDeleteMeal => 'ಊಟವನ್ನು ತೆಗೆದುಹಾಕಿ';

  @override
  String get mealPlannerMealDeleted => 'ಊಟವನ್ನು ತೆಗೆದುಹಾಕಲಾಗಿದೆ';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಸರ್ವಿಂಗ್ಗಳು',
      one: '$count ಸರ್ವಿಂಗ್',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'ಸರ್ವಿಂಗ್ಗಳು';

  @override
  String get mealPlannerNoteLabel => 'ಟಿಪ್ಪಣಿ (ಐಚ್ಛಿಕ)';

  @override
  String get mealPlannerSelectRecipe => 'ಪಾಕವಿಧಾನವನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get mealPlannerSearchRecipes => 'ಪಾಕವಿಧಾನಗಳನ್ನು ಹುಡುಕಿ...';

  @override
  String get mealPlannerNoRecipesFound => 'ಯಾವುದೇ ಪಾಕವಿಧಾನಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get mealPlannerNoRecipesHint =>
      'ಮೊದಲು ಪಾಕವಿಧಾನಗಳ ಟ್ಯಾಬ್ನಲ್ಲಿ ಪಾಕವಿಧಾನಗಳನ್ನು ರಚಿಸಿ';

  @override
  String get mealPlannerSave => 'ಯೋಜನೆಗೆ ಸೇರಿಸಿ';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total ಊಟಗಳನ್ನು ಯೋಜಿಸಲಾಗಿದೆ';
  }

  @override
  String get mealPlannerGenerateList => 'ಶಾಪಿಂಗ್ ಪಟ್ಟಿ ರಚಿಸಿ';

  @override
  String get mealPlannerGenerateListConfirm =>
      'ಈ ವಾರದ ಯೋಜಿತ ಊಟದ ಎಲ್ಲಾ ಪದಾರ್ಥಗಳನ್ನು ನಿಮ್ಮ ಶಾಪಿಂಗ್ ಪಟ್ಟಿಗೆ ಸೇರಿಸಬೇಕೆ?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ಪದಾರ್ಥ(ಗಳು) ನಿಮ್ಮ ಪಟ್ಟಿಗೆ ಸೇರಿಸಲಾಗಿದೆ!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ಸೇರಿಸಲು ಯಾವುದೇ ಪದಾರ್ಥಗಳಿಲ್ಲ. ಮೊದಲು ಪಾಕವಿಧಾನಗಳೊಂದಿಗೆ ಕೆಲವು ಊಟಗಳನ್ನು ಯೋಜಿಸಿ.';

  @override
  String get mealPlannerGenerateListNoList => 'ಮೊದಲು ಶಾಪಿಂಗ್ ಪಟ್ಟಿಯನ್ನು ರಚಿಸಿ.';

  @override
  String get mealPlannerMealTypeBreakfast => 'ಬಳಗಿನ ಉಪಹಾರ';

  @override
  String get mealPlannerMealTypeLunch => 'ಮಧ್ಯಾಹ್ನದ ಊಟ';

  @override
  String get mealPlannerMealTypeDinner => 'ರಾತ್ರಿಯ ಊಟ';

  @override
  String get mealPlannerMealTypeSnack => 'ಲಘು ಆಹಾರ';

  @override
  String get mealPlannerDateLabel => 'ದಿನಾಂಕ';

  @override
  String get mealPlannerWeekEmpty => 'ಈ ವಾರಕ್ಕೆ ಏನನ್ನೂ ಯೋಜಿಸಿಲ್ಲ';

  @override
  String get mealPlannerWeekEmptyHint =>
      'ನಿಮ್ಮ ಊಟವನ್ನು ಯೋಜಿಸಲು ಪ್ರಾರಂಭಿಸಲು ಯಾವುದೇ ದಿನದ ಮೇಲೆ ಟ್ಯಾಪ್ ಮಾಡಿ!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes ನಿಮಿಷ';
  }

  @override
  String get inviteToList => 'ಪಟ್ಟಿಗೆ ಆಹ್ವಾನಿಸಿ';

  @override
  String get shareApp => 'ಅಪ್ಲಿಕೇಶನ್ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get shareAppDescription => 'KipiList ಬಳಸಲು ಸ್ನೇಹಿತರನ್ನು ಆಹ್ವಾನಿಸಿ';

  @override
  String shareReferralText(String url) {
    return 'ನನ್ನ ಶಾಪಿಂಗ್ ಅನ್ನು ಸಂಘಟಿಸಲು ನಾನು KipiList ಅನ್ನು ಬಳಸುತ್ತಿದ್ದೇನೆ! ನನ್ನ ಲಿಂಕ್ ಮೂಲಕ ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ ಮತ್ತು ನಾವಿಬ್ಬರೂ 7 ದಿನಗಳ ಪ್ರೀಮಿಯಂ ಅನ್ನು ಉಚಿತವಾಗಿ ಪಡೆಯುತ್ತೇವೆ: $url';
  }

  @override
  String get shareReferralSubject => '7 ದಿನಗಳ KipiList Premium ಪಡೆಯಿರಿ!';

  @override
  String get gestureHint => 'ಆಯ್ಕೆ ಮಾಡಲು ಹೋಲ್ಡ್ ಮಾಡಿ • ತೆಗೆದುಹಾಕಲು ಸ್ವೈಪ್ ಮಾಡಿ';

  @override
  String get catalogTitle => 'ಕ್ಯಾಟಲಾಗ್';

  @override
  String get catalogMyFrequents => 'ನನ್ನ ಆಗಾಗ್ಗೆ';

  @override
  String get catalogSearchGlobal => 'ಯಾವುದೇ ಉತ್ಪನ್ನವನ್ನು ಹುಡುಕಿ...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category ನಲ್ಲಿ ಹುಡುಕಿ...';
  }

  @override
  String get catalogSortPopular => 'ಅತ್ಯಂತ ಜನಪ್ರಿಯ';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'ರಾಷ್ಟ್ರೀಯರು';

  @override
  String get catalogRareSection => 'ನಿಮ್ಮ ದೇಶದಲ್ಲಿ ಕಡಿಮೆ ಸಾಮಾನ್ಯವಾಗಿದೆ';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 → ಸೇರಿಸಿ';
  }

  @override
  String get catalogProductNotFound =>
      'ಉತ್ಪನ್ನ ಕಂಡುಬಂದಿಲ್ಲ, ಹೆಸರನ್ನು ಟೈಪ್ ಮಾಡಿ';

  @override
  String get catalogBrowse => 'ಕ್ಯಾಟಲಾಗ್ ಬ್ರೌಸ್ ಮಾಡಿ';

  @override
  String get offlineBanner => 'ನೀವು ಆಫ್‌ಲೈನ್‌ನಲ್ಲಿರುವಿರಿ';

  @override
  String get consentTitle => 'ಗೌಪ್ಯತೆ ಮತ್ತು ವಿಶ್ಲೇಷಣೆ';

  @override
  String get consentBody =>
      'ನಿಮ್ಮ ಅನುಭವವನ್ನು ಸುಧಾರಿಸಲು KipiList Firebase Analytics ಅನ್ನು ಬಳಸುತ್ತದೆ. ನಿಮ್ಮ ಡೇಟಾವನ್ನು ನಮ್ಮ ಗೌಪ್ಯತಾ ನೀತಿಯ ಪ್ರಕಾರ ಪ್ರಕ್ರಿಯೆಗೊಳಿಸಲಾಗಿದೆ.';

  @override
  String get consentAccept => 'ಸ್ವೀಕರಿಸಿ';

  @override
  String get consentDecline => 'ಇಲ್ಲ, ಧನ್ಯವಾದಗಳು';

  @override
  String get mealPlannerPantryAllAvailable => 'ಸ್ಟಾಕ್‌ನಲ್ಲಿದೆ';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಕಾಣೆಯಾದ ಐಟಂಗಳು',
      one: '$count ಕಾಣೆಯಾದ ಐಟಂ',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'ಮುಕ್ತಾಯ ದಿನಾಂಕ';

  @override
  String get notInformed => 'ತಿಳಿಸಿಲ್ಲ';

  @override
  String get skip => 'ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get onboardingAiTitle => 'ಕಿಪಿ ಜೊತೆ ಚಾಟ್ ಮಾಡಿ';

  @override
  String get onboardingAiGreeting =>
      'ನಮಸ್ತೆ! ನಾನು ಕಿಪಿ, ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಶಾಪಿಂಗ್ ಸಹಾಯಕ! 🛒';

  @override
  String get onboardingAiAskName => 'ನಿಮ್ಮ ಹೆಸರೇನು?';

  @override
  String get onboardingAiNameHint => 'ನಿಮ್ಮ ಹೆಸರನ್ನು ಟೈಪ್ ಮಾಡಿ...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'ನಿಮ್ಮನ್ನು ಭೇಟಿಯಾಗಲು ಸಂತೋಷವಾಗಿದೆ, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'ನಿಮ್ಮ ಮೆಚ್ಚಿನ ಆಹಾರ ಯಾವುದು?';

  @override
  String get onboardingAiFoodHint => 'ಉದಾ. ಪಿಜ್ಜಾ, ಸುಶಿ...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'ಉತ್ತಮ ಆಯ್ಕೆಗಳು! ನಿಮ್ಮ ಪಟ್ಟಿಗೆ ನಾನು ಸೇರಿಸುವುದು ಇಲ್ಲಿದೆ:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'ಇದು ಚೆನ್ನಾಗಿ ಕಾಣುತ್ತಿದೆಯೇ? ಬೇರೆ ಯಾವುದನ್ನಾದರೂ ಟೈಪ್ ಮಾಡಲು ಪ್ರಯತ್ನಿಸಿ!';

  @override
  String get onboardingAiReady =>
      'ಗ್ರೇಟ್! ನೀವು ಪ್ರಾರಂಭಿಸಲು ಸಿದ್ಧರಾಗಿರುವಿರಿ. ನಿಮ್ಮ ಖಾತೆಯನ್ನು ಹೊಂದಿಸೋಣ!';

  @override
  String get onboardingAiContinue => 'ಮುಂದುವರಿಸಿ →';

  @override
  String get connectionError => 'ಸಂಪರ್ಕ ದೋಷ';

  @override
  String connectionErrorDesc(String error) {
    return 'ದೋಷ: $error';
  }

  @override
  String get errorLoadingLists => 'ಪಟ್ಟಿಗಳನ್ನು ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ';

  @override
  String get noListsFound => 'ಯಾವುದೇ ಪಟ್ಟಿಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get backToToday => 'ಇವತ್ತಿಗೆ ಹಿಂತಿರುಗಿ';

  @override
  String get quickSuggestions => 'ತ್ವರಿತ ಸಲಹೆಗಳು';

  @override
  String get aiEnergyLow => 'ಕಡಿಮೆ AI ಶಕ್ತಿ';

  @override
  String get aiUnlockUnlimited => 'ಅನಿಯಮಿತ AI ಅನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return 'ಇಂದು $remaining $_temp0';
  }

  @override
  String get aiSubscribeUnlimited => 'ಅನಿಯಮಿತ AI ಗೆ ಚಂದಾದಾರರಾಗಿ';

  @override
  String get unlockWithAd => 'ಜಾಹೀರಾತಿನೊಂದಿಗೆ ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get conversationHistoryTitle => 'ಸಂಭಾಷಣೆಯ ಇತಿಹಾಸ';

  @override
  String get noConversationsFound => 'ಯಾವುದೇ ಸಂಭಾಷಣೆಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get errorLoadingHistory => 'ಇತಿಹಾಸವನ್ನು ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ';

  @override
  String get deleteConversationTitle => 'ಸಂಭಾಷಣೆಯನ್ನು ಅಳಿಸಿ';

  @override
  String get deleteConversationConfirm =>
      'ಈ ಕ್ರಿಯೆಯನ್ನು ರದ್ದುಗೊಳಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get deleteConversation => 'ಅಳಿಸಿ';

  @override
  String get subscription => 'ಚಂದಾದಾರಿಕೆ';

  @override
  String get kipiListProActive => 'ಕಿಪಿಲಿಸ್ಟ್ ಪ್ರೊ ಆಕ್ಟಿವ್';

  @override
  String get unlockPremiumTitle => 'ಪ್ರೀಮಿಯಂ ಅನ್ನು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get loadingSubscription => 'ಚಂದಾದಾರಿಕೆಯನ್ನು ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get errorLoadingSubscription => 'ಚಂದಾದಾರಿಕೆಯನ್ನು ಲೋಡ್ ಮಾಡುವಲ್ಲಿ ದೋಷ';

  @override
  String get profileSection => 'ಪ್ರೊಫೈಲ್';

  @override
  String get myProfile => 'ನನ್ನ ಪ್ರೊಫೈಲ್';

  @override
  String get profileSubtitle => 'ನಿಮ್ಮ ಪ್ರೊಫೈಲ್ ಮಾಹಿತಿ';

  @override
  String get customizeAiAssistant => 'AI ಸಹಾಯಕವನ್ನು ಕಸ್ಟಮೈಸ್ ಮಾಡಿ';

  @override
  String get assistantHistory => 'ಸಹಾಯಕ ಇತಿಹಾಸ';

  @override
  String get assistantHistorySubtitle => 'ನಿಮ್ಮ ಸಂಭಾಷಣೆಯ ಇತಿಹಾಸವನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String get manageCategories => 'ವರ್ಗಗಳನ್ನು ನಿರ್ವಹಿಸಿ';

  @override
  String get manageCategoriesSubtitle =>
      'ವರ್ಗಗಳನ್ನು ಸೇರಿಸಿ, ಸಂಪಾದಿಸಿ ಅಥವಾ ತೆಗೆದುಹಾಕಿ';

  @override
  String get customizeAssistant => 'ಕಸ್ಟಮೈಸ್ ಮಾಡಿ';

  @override
  String get assistantName => 'ಸಹಾಯಕ ಹೆಸರು';

  @override
  String get chooseIcon => 'ಐಕಾನ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get profileSaved => 'ಪ್ರೊಫೈಲ್ ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get errorSavingProfile => 'ಪ್ರೊಫೈಲ್ ಉಳಿಸುವಲ್ಲಿ ದೋಷ';

  @override
  String get userProfile => 'ಬಳಕೆದಾರರ ಪ್ರೊಫೈಲ್';

  @override
  String get profileDescription => 'ಪ್ರೊಫೈಲ್ ವಿವರಣೆ';

  @override
  String get preferredMarket => 'ಆದ್ಯತೆಯ ಮಾರುಕಟ್ಟೆ';

  @override
  String get preferredMarketHint =>
      'ನೀವು ಸಾಮಾನ್ಯವಾಗಿ ಎಲ್ಲಿ ಶಾಪಿಂಗ್ ಮಾಡುತ್ತೀರಿ?';

  @override
  String get dietaryRestrictions => 'ಆಹಾರದ ನಿರ್ಬಂಧಗಳು';

  @override
  String get dietaryRestrictionsHint => 'ಯಾವುದೇ ಆಹಾರ ನಿರ್ಬಂಧಗಳು?';

  @override
  String get marketsToAvoid => 'ತಪ್ಪಿಸಲು ಮಾರುಕಟ್ಟೆಗಳು';

  @override
  String get marketsToAvoidHint =>
      'ನೀವು ಶಾಪಿಂಗ್ ಮಾಡದಿರಲು ಇಷ್ಟಪಡುವ ಮಾರುಕಟ್ಟೆಗಳು';

  @override
  String get observations => 'ಅವಲೋಕನಗಳು';

  @override
  String get observationsHint => 'ಯಾವುದೇ ಹೆಚ್ಚುವರಿ ಟಿಪ್ಪಣಿಗಳು?';

  @override
  String get saveProfile => 'ಪ್ರೊಫೈಲ್ ಉಳಿಸಿ';

  @override
  String get everythingReady => 'ಎಲ್ಲವೂ ಸಿದ್ಧವಾಗಿದೆ!';

  @override
  String get youCompletedList => 'ನೀವು ಪಟ್ಟಿಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಿದ್ದೀರಿ!';

  @override
  String get selectCheaperAlternative => 'ಅಗ್ಗದ ಪರ್ಯಾಯವನ್ನು ಆರಿಸಿ';

  @override
  String get suggestedItems => 'ಸೂಚಿಸಿದ ವಸ್ತುಗಳು';

  @override
  String get swapped => 'ಬದಲಾಯಿಸಿಕೊಂಡರು';

  @override
  String get swap => 'ಸ್ವ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get chooseThemeColor => 'ಥೀಮ್ ಬಣ್ಣವನ್ನು ಆರಿಸಿ';

  @override
  String get manageCategoriesTitle => 'ವರ್ಗಗಳನ್ನು ನಿರ್ವಹಿಸಿ';

  @override
  String get categoryLimitReached => 'ವರ್ಗದ ಮಿತಿಯನ್ನು ತಲುಪಿದೆ';

  @override
  String get deleteCategoryTitle => 'ವರ್ಗವನ್ನು ಅಳಿಸಿ';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\" ನಲ್ಲಿರುವ ಐಟಂಗಳನ್ನು \"ಇತರರು\" ಗೆ ಸರಿಸಲಾಗುತ್ತದೆ.\nಮುಂದುವರಿಸುವುದೇ?';
  }

  @override
  String get deleteCategory => 'ಅಳಿಸಿ';

  @override
  String get newCategoryDialog => 'ಹೊಸ ವರ್ಗ';

  @override
  String get editCategoryDialog => 'ವರ್ಗವನ್ನು ಸಂಪಾದಿಸಿ';

  @override
  String get categoryName => 'ವರ್ಗದ ಹೆಸರು';

  @override
  String get categoryNameHint => 'ವರ್ಗದ ಹೆಸರನ್ನು ನಮೂದಿಸಿ';

  @override
  String get categoryColorLabel => 'ಬಣ್ಣ';

  @override
  String get categoryIconLabel => 'ಐಕಾನ್';

  @override
  String itemAddedSnack(String name) {
    return '$name ಸೇರಿಸಲಾಗಿದೆ';
  }

  @override
  String get kipiQuickBarHint => 'ನೀವು ಖರೀದಿಸಲು ಏನು ಬೇಕು?';

  @override
  String replaceItem(String item) {
    return '$item ಬದಲಾಯಿಸಿ';
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
      'ಕಿರಾಣಿ ವಸ್ತುವನ್ನು ಮತ್ತೆ ಎಂದಿಗೂ ಮರೆಯಬಾರದು';

  @override
  String get onboardingGoalSaveMoney => 'ಹಣವನ್ನು ಉಳಿಸಿ';

  @override
  String get onboardingGoalNeverForget => 'ವಸ್ತುಗಳನ್ನು ಎಂದಿಗೂ ಮರೆಯಬೇಡಿ';

  @override
  String get onboardingGoalFaster => 'ವೇಗವಾಗಿ ಶಾಪಿಂಗ್ ಮಾಡಿ';

  @override
  String get onboardingGoalFamily => 'ಕುಟುಂಬ ಶಾಪಿಂಗ್ ಅನ್ನು ಆಯೋಜಿಸಿ';

  @override
  String get onboardingGoalRecipes => 'ಪಾಕವಿಧಾನಗಳನ್ನು ಅನ್ವೇಷಿಸಿ';

  @override
  String get onboardingGoalPantry => 'ಟ್ರ್ಯಾಕ್ ಪ್ಯಾಂಟ್ರಿ';

  @override
  String get onboardingCommitmentsTitle => 'ನಿಮಗೆ ಯಾವುದು ಮುಖ್ಯ?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'ಕಿಪಿಲಿಸ್ಟ್ ಅನ್ನು ವೈಯಕ್ತೀಕರಿಸಲು ನಿಮ್ಮ ಗುರಿಗಳನ್ನು ಆರಿಸಿ';

  @override
  String get onboardingCommitmentsCta => 'ಹೋಗೋಣ!';

  @override
  String get onboardingPersonalizationNameLabel => 'ನಿಮ್ಮ ಹೆಸರು';

  @override
  String get onboardingPersonalizationNameHint => 'ನಿಮ್ಮ ಹೆಸರನ್ನು ನಮೂದಿಸಿ';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'ನೀವು ಯಾವುದಕ್ಕಾಗಿ ಶಾಪಿಂಗ್ ಮಾಡುತ್ತೀರಿ?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'ನೀವು ಯಾರಿಗಾಗಿ ಶಾಪಿಂಗ್ ಮಾಡುತ್ತೀರಿ?';

  @override
  String get onboardingCategoryGrocery => 'ದಿನಸಿ';

  @override
  String get onboardingCategoryPharmacy => 'ಔಷಧಾಲಯ';

  @override
  String get onboardingCategoryRecipes => 'ಪಾಕವಿಧಾನಗಳು';

  @override
  String get onboardingCategoryHome => 'ಮನೆ';

  @override
  String get onboardingCategoryPet => 'ಸಾಕುಪ್ರಾಣಿ';

  @override
  String get onboardingGroupSolo => 'ನಾನು ಮಾತ್ರ';

  @override
  String get onboardingGroupCouple => 'ಜೋಡಿ';

  @override
  String get onboardingGroupFamily => 'ಕುಟುಂಬ';

  @override
  String get onboardingLoadingTitle =>
      'ನಿಮ್ಮ ಅನುಭವವನ್ನು ಸಿದ್ಧಪಡಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get onboardingLoadingStep1 =>
      'ನಿಮ್ಮ ಆದ್ಯತೆಗಳನ್ನು ವಿಶ್ಲೇಷಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get onboardingLoadingStep2 => 'AI ಸಹಾಯಕವನ್ನು ಹೊಂದಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get onboardingLoadingStep3 => 'ಬಹುತೇಕ ಸಿದ್ಧವಾಗಿದೆ...';

  @override
  String get onboardingLoadingStat1Label => 'ಐಟಂಗಳನ್ನು ಪಟ್ಟಿ ಮಾಡಲಾಗಿದೆ';

  @override
  String get onboardingLoadingStat2Label => 'ಬಳಕೆದಾರರು ಸಹಾಯ ಮಾಡಿದರು';

  @override
  String get onboardingLoadingStat3Label => 'ನಿಮಿಷಗಳನ್ನು ಉಳಿಸಲಾಗಿದೆ';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, ಪ್ರತಿ ಪ್ರವಾಸದಲ್ಲಿ ಉಳಿಸಿ!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, ಐಟಂ ಅನ್ನು ಎಂದಿಗೂ ಮರೆಯಬೇಡಿ!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, ಅರ್ಧ ಸಮಯದಲ್ಲಿ ಶಾಪಿಂಗ್ ಮಾಡಿ!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, ಕುಟುಂಬ ಶಾಪಿಂಗ್ ಆಯೋಜಿಸಿ!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, ಹೊಸ ಪಾಕವಿಧಾನಗಳನ್ನು ಅನ್ವೇಷಿಸಿ!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, ನಿಮ್ಮ ಪ್ಯಾಂಟ್ರಿಯನ್ನು ಸಂಪೂರ್ಣವಾಗಿ ಟ್ರ್ಯಾಕ್ ಮಾಡಿ!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'ಪ್ರತಿ ಪ್ರವಾಸದಲ್ಲಿ ಉಳಿಸಿ!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'ಐಟಂ ಅನ್ನು ಎಂದಿಗೂ ಮರೆಯಬೇಡಿ!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'ಅರ್ಧ ಸಮಯದಲ್ಲಿ ಶಾಪಿಂಗ್ ಮಾಡಿ!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'ಕುಟುಂಬ ಶಾಪಿಂಗ್ ಅನ್ನು ಆಯೋಜಿಸಿ!';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'ಹೊಸ ಪಾಕವಿಧಾನಗಳನ್ನು ಅನ್ವೇಷಿಸಿ!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'ನಿಮ್ಮ ಪ್ಯಾಂಟ್ರಿಯನ್ನು ಸಂಪೂರ್ಣವಾಗಿ ಟ್ರ್ಯಾಕ್ ಮಾಡಿ!';

  @override
  String paywallPricePerDay(String price) {
    return 'ಕೇವಲ $price/ದಿನ — ಕಾಫಿಗಿಂತ ಕಡಿಮೆ';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'ಸದ್ಯಕ್ಕೆ ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get paywallTestimonial =>
      'AI ನನ್ನ ಶಾಪಿಂಗ್ ಅನ್ನು ಸೆಕೆಂಡುಗಳಲ್ಲಿ ಆಯೋಜಿಸುತ್ತದೆ. ನಾನು ಪ್ರತಿ ಪ್ರವಾಸಕ್ಕೆ 20 ನಿಮಿಷಗಳನ್ನು ಉಳಿಸುತ್ತೇನೆ.';

  @override
  String get paywallTestimonialAuthor => 'ಆನ್ ಎಸ್.';

  @override
  String get paywallTrialDisclaimer =>
      'ಯಾವಾಗ ಬೇಕಾದರೂ ರದ್ದುಮಾಡಿ · ನಿಮ್ಮ ಪ್ರಯೋಗ ಮುಗಿಯುವವರೆಗೆ ಯಾವುದೇ ಶುಲ್ಕವಿಲ್ಲ';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'ಹೇ $name! ನಿಮಗೆ ಏನು $category ಬೇಕು?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'ನಿಮಗೆ ಏನು $category ಬೇಕು?';
  }

  @override
  String get onboardingAiDemoYes => 'ಹೌದು!';

  @override
  String get onboardingAiDemoReaction => 'ಚೆನ್ನಾಗಿದೆ!';

  @override
  String get onboardingAiDemoChange => 'ಐಟಂ ಬದಲಾಯಿಸಿ';

  @override
  String get onboardingAiDemoOffer =>
      'ಬೇರೆ ಯಾವುದನ್ನಾದರೂ ಟೈಪ್ ಮಾಡಲು ಪ್ರಯತ್ನಿಸಿ!';

  @override
  String get onboardingAiDemoContinue => 'ಮುಂದುವರಿಸಿ';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'ನಿಮ್ಮ ಶಾಪಿಂಗ್ ಪಟ್ಟಿ, ಈಗ AI ಜೊತೆಗೆ';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'ಕಿಪಿ ಸೆಕೆಂಡುಗಳಲ್ಲಿ ನಿಮ್ಮ ಸಂಪೂರ್ಣ ಪಟ್ಟಿಯನ್ನು ಹೇಗೆ ನಿರ್ಮಿಸುತ್ತದೆ ಎಂಬುದನ್ನು ನೋಡಿ';

  @override
  String get onboardingAiDemoSlideCta => 'ನನಗೆ ಇದು ಬೇಕು! →';

  @override
  String get onboardingAiDemoSlideUserMsg =>
      'ನಾನು ಬಾರ್ಬೆಕ್ಯೂ 🔥 ಹೋಸ್ಟ್ ಮಾಡುತ್ತಿದ್ದೇನೆ';

  @override
  String get onboardingAiDemoSlideReady =>
      'ಸಿದ್ಧವಾಗಿದೆ! ನಿಮಗೆ ಬೇಕಾದ ಎಲ್ಲವೂ ಇಲ್ಲಿದೆ:';

  @override
  String get onboardingAiDemoSlideDone =>
      'ಸೆಕೆಂಡುಗಳಲ್ಲಿ ಪಟ್ಟಿಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಿ ✨';

  @override
  String get onboardingPainTitle =>
      'ಯಾವುದು ನಿಮ್ಮನ್ನು ಹೆಚ್ಚು ನಿರಾಶೆಗೊಳಿಸುತ್ತದೆ?';

  @override
  String get onboardingPainSubtitle =>
      'ಪ್ರಾಮಾಣಿಕವಾಗಿರಿ - ನಾವು ಪ್ರತಿಯೊಂದನ್ನು ಸರಿಪಡಿಸುತ್ತೇವೆ';

  @override
  String get onboardingPainCta => 'ಹೌದು, ಇದನ್ನು ನನಗೆ ಸರಿಪಡಿಸಿ →';

  @override
  String get onboardingPainForget =>
      'ನಾನು ಅಂಗಡಿಯಲ್ಲಿನ ವಸ್ತುಗಳನ್ನು ಮರೆತುಬಿಡುತ್ತೇನೆ';

  @override
  String get onboardingPainFamily =>
      'ನನ್ನ ಕುಟುಂಬವು ಎಂದಿಗೂ ಪಟ್ಟಿಯನ್ನು ನೋಡುವುದಿಲ್ಲ';

  @override
  String get onboardingPainOverspend => 'ನಾನು ಯಾವಾಗಲೂ ಬಜೆಟ್ ಅನ್ನು ಮೀರುತ್ತೇನೆ';

  @override
  String get onboardingPainRepeat => 'ಒಂದು ಪ್ರವಾಸ ಎಂದಿಗೂ ಸಾಕಾಗುವುದಿಲ್ಲ';

  @override
  String get aiWelcomeContent =>
      'ನಮಸ್ಕಾರ! 👋 ನಾನು **ಕಿಪಿ**, ನಿಮ್ಮ ವೈಯಕ್ತಿಕ ಶಾಪಿಂಗ್ ಮತ್ತು ಪಾಕವಿಧಾನ ಸಹಾಯಕ!\n\nನಿಮಗೆ ಸಹಾಯ ಮಾಡಲು ನಾನು ಇಲ್ಲಿದ್ದೇನೆ:\n🛒 **ಸಂಘಟಿಸಿ** ವಿಭಾಗಗಳ ಮೂಲಕ ನಿಮ್ಮ ಶಾಪಿಂಗ್ ಅನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಮಾಡಿ\n💰 **ಟ್ರ್ಯಾಕ್** ನಿಮ್ಮ ಬಜೆಟ್ ಮತ್ತು ನಿಮಗೆ ಹಣ ಉಳಿಸುವ ಸಲಹೆಗಳನ್ನು ನೀಡಿ\n🍲 **ಸಲಹೆ** ನೀವು ಈಗಾಗಲೇ ಹೊಂದಿರುವ ರುಚಿಕರವಾದ ಪಾಕವಿಧಾನಗಳನ್ನು\n\nಇಂದು ನಾನು ನಿಮಗೆ ಹೇಗೆ ಸಹಾಯ ಮಾಡಬಹುದು? ನಿಮ್ಮ ಮೊದಲ ಪಟ್ಟಿಯನ್ನು ರಚಿಸುವ ಮೂಲಕ ನೀವು ಪ್ರಾರಂಭಿಸಬಹುದು!';

  @override
  String get aiWelcomeSuggestCreateList => 'ನನ್ನ ಮೊದಲ ಪಟ್ಟಿಯನ್ನು ರಚಿಸಿ';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'ಕಿಪಿ, ನನ್ನ ಮೊದಲ ಶಾಪಿಂಗ್ ಪಟ್ಟಿಯನ್ನು ರಚಿಸಲು ನನಗೆ ಸಹಾಯ ಮಾಡಿ';

  @override
  String get aiWelcomeSuggestSave => 'ಹಣವನ್ನು ಉಳಿಸುವುದು ಹೇಗೆ?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'ಕಿಪಿ, ದಿನಸಿಯಲ್ಲಿ ಹಣವನ್ನು ಉಳಿಸಲು ನೀವು ನನಗೆ ಹೇಗೆ ಸಹಾಯ ಮಾಡಬಹುದು?';

  @override
  String get suggestionMilk => 'ಹಾಲು';

  @override
  String get suggestionBread => 'ಬ್ರೆಡ್';

  @override
  String get suggestionEggs => 'ಮೊಟ್ಟೆಗಳು';

  @override
  String get suggestionCoffee => 'ಕಾಫಿ';

  @override
  String get suggestionRice => 'ಅಕ್ಕಿ';

  @override
  String get suggestionFruits => 'ಹಣ್ಣುಗಳು';
}
