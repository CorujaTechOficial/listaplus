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
  String get navChat => 'Chat';

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
  String get paywallTrialTitle => 'Try for free!';

  @override
  String get paywallTrialSubtitle => 'Cancel anytime. No charge today.';

  @override
  String get paywallTrialCta => 'Start Free Trial';

  @override
  String get recipeAddToList => 'Add to shopping list';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 added to $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'ನಿಮಗೆ ಬೇಕಾಗಿರುವುದು:';

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
  String shareReferralText(Object url) {
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
  String get offlineBanner => 'You are offline';

  @override
  String get consentTitle => 'Privacy & Analytics';

  @override
  String get consentBody =>
      'KipiList uses Firebase Analytics to improve your experience. Your data is processed according to our Privacy Policy.';

  @override
  String get consentAccept => 'Accept';

  @override
  String get consentDecline => 'No, thanks';

  @override
  String get mealPlannerPantryAllAvailable => 'All ingredients available';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 missing';
  }

  @override
  String get expirationDate => 'Expiration date';

  @override
  String get notInformed => 'Not set';
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
  String get navChat => 'Chat';

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
  String get paywallFeaturesTitle => 'ನಿಮಗೆ ಬೇಕಾಗಿರುವುದು:';

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
  String shareReferralText(Object url) {
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
}
