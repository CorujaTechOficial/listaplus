// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appTitle => 'ਸ਼ਾਪਿੰਗ ਲਿਸਟ';

  @override
  String get lists => 'ਲਿਸਟਾਂ';

  @override
  String get pantry => 'ਪੈਂਟਰੀ';

  @override
  String get cancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get save => 'ਸੁਰੱਖਿਅਤ ਕਰੋ';

  @override
  String get create => 'ਬਣਾਓ';

  @override
  String get add => 'ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get remove => 'ਹਟਾਓ';

  @override
  String get delete => 'ਮਿਟਾਓ';

  @override
  String get edit => 'ਸੰਪਾਦਨ ਕਰੋ';

  @override
  String get copy => 'ਕਾਪੀ ਕਰੋ';

  @override
  String get next => 'ਅਗਲਾ';

  @override
  String get retry => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get regenerate => 'ਮੁੜ-ਉਤਪੰਨ ਕਰੋ';

  @override
  String get copiedToClipboard => 'ਕਲਿੱਪਬੋਰਡ \'ਤੇ ਕਾਪੀ ਕੀਤਾ';

  @override
  String get confirm => 'ਪੁਸ਼ਟੀ ਕਰੋ';

  @override
  String get close => 'ਬੰਦ ਕਰੋ';

  @override
  String get import => 'ਇੰਪੋਰਟ ਕਰੋ';

  @override
  String get rename => 'ਮੁੜ-ਨਾਮ';

  @override
  String get upgrade => 'ਅਪਗ੍ਰੇਡ ਕਰੋ';

  @override
  String get clear => 'ਸਾਫ਼ ਕਰੋ';

  @override
  String error(String message) {
    return 'ਗਲਤੀ: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'ਗਲਤੀ: $message';
  }

  @override
  String get purchaseError => 'ਖਰੀਦ ਪ੍ਰਕਿਰਿਆ ਵਿੱਚ ਗਲਤੀ। ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get restoreError => 'ਖਰੀਦਾਂ ਬਹਾਲ ਕਰਨ ਵਿੱਚ ਗਲਤੀ। ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get loading => 'ਲੋਡ ਹੋ ਰਿਹਾ ਹੈ...';

  @override
  String get fieldRequired => 'ਲੋੜੀਂਦਾ ਖੇਤਰ';

  @override
  String get addedFeedback => 'ਸ਼ਾਮਲ ਕੀਤਾ!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਚੁਣੇ',
      one: '$count ਚੁਣਿਆ',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'ਅਨੁਮਾਨਿਤ';

  @override
  String get alreadyPurchased => 'ਪਹਿਲਾਂ ਹੀ ਖਰੀਦਿਆ';

  @override
  String get clearList => 'ਲਿਸਟ ਸਾਫ਼ ਕਰੋ';

  @override
  String get clearPurchased => 'ਖਰੀਦੇ ਹੋਏ ਸਾਫ਼ ਕਰੋ';

  @override
  String get share => 'ਸਾਂਝਾ ਕਰੋ';

  @override
  String get shareViaCode => 'ਕੋਡ ਰਾਹੀਂ ਸਾਂਝਾ ਕਰੋ';

  @override
  String get importViaCode => 'ਕੋਡ ਰਾਹੀਂ ਇੰਪੋਰਟ ਕਰੋ';

  @override
  String get listAssistant => 'ਲਿਸਟ ਸਹਾਇਕ';

  @override
  String get globalAssistant => 'ਗਲੋਬਲ ਸਹਾਇਕ';

  @override
  String get becomePremium => 'ਪ੍ਰੀਮੀਅਮ ਬਣੋ';

  @override
  String get manageSubscription => 'ਮੈਂਬਰੀ ਪ੍ਰਬੰਧ ਕਰੋ';

  @override
  String get completePurchase => 'ਖਰੀਦ ਪੂਰੀ ਕਰੋ';

  @override
  String get confirmClearList => 'ਸਾਰੀਆਂ ਚੀਜ਼ਾਂ ਹਟਾਈਆਂ ਜਾਣ?';

  @override
  String get shareListTitle => 'ਲਿਸਟ ਸਾਂਝੀ ਕਰੋ';

  @override
  String get shareThisCode => 'ਇਹ ਕੋਡ ਸਾਂਝਾ ਕਰੋ:';

  @override
  String get validForLimitedTime => 'ਸੀਮਤ ਸਮੇਂ ਲਈ ਵੈਧ';

  @override
  String get importListTitle => 'ਲਿਸਟ ਇੰਪੋਰਟ ਕਰੋ';

  @override
  String get enterCodeHint => 'ਕੋਡ ਦਰਜ ਕਰੋ';

  @override
  String get confirmArchiveTitle => 'ਖਰੀਦ ਪੂਰੀ ਕਰੋ';

  @override
  String get confirmArchiveContent => 'ਇਹ ਖਰੀਦ ਪੂਰੀ ਕਰਕੇ ਲਿਸਟ ਆਰਕਾਈਵ ਕਰੀਏ?';

  @override
  String get complete => 'ਪੂਰਾ ਕਰੋ';

  @override
  String get listArchived => 'ਲਿਸਟ ਸਫਲਤਾਪੂਰਵਕ ਆਰਕਾਈਵ ਕੀਤੀ!';

  @override
  String listAdded(String listName) {
    return '$listName ਸ਼ਾਮਲ ਕੀਤੀ!';
  }

  @override
  String get buy => 'ਖਰੀਦੋ';

  @override
  String get unmark => 'ਨਿਸ਼ਾਨ ਹਟਾਓ';

  @override
  String confirmDeleteItems(int count) {
    return '$count ਚੀਜ਼(ਾਂ) ਹਟਾਈਆਂ ਜਾਣ?';
  }

  @override
  String get confirmDeleteTitle => 'ਪੁਸ਼ਟੀ ਕਰੋ';

  @override
  String confirmContent(int count) {
    return '$count ਚੀਜ਼(ਾਂ) ਹਟਾਈਆਂ ਜਾਣ?';
  }

  @override
  String get archiveList => 'ਲਿਸਟ ਆਰਕਾਈਵ ਕਰੋ';

  @override
  String get pantryAppBar => 'ਪੈਂਟਰੀ';

  @override
  String get generateShoppingList => 'ਸ਼ਾਪਿੰਗ ਲਿਸਟ ਬਣਾਓ';

  @override
  String get pantryEmpty => 'ਖਾਲੀ ਪੈਂਟਰੀ';

  @override
  String get pantryEmptySubtitle =>
      'ਉਤਪਾਦ ਸ਼ਾਮਲ ਕਰੋ ਜੋ ਤੁਸੀਂ ਘਰ ਰੱਖਣਾ ਚਾਹੁੰਦੇ ਹੋ';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ਚੀਜ਼(ਾਂ) ਖਰੀਦਣ ਦੀ ਲੋੜ ਹੈ';
  }

  @override
  String get noItemsToBuy => 'ਖਰੀਦਣ ਲਈ ਕੋਈ ਚੀਜ਼ ਨਹੀਂ ਹੈ';

  @override
  String get newPantryList => 'ਪੈਂਟਰੀ ਸ਼ਾਪਿੰਗ';

  @override
  String get newListTitle => 'ਨਵੀਂ ਸ਼ਾਪਿੰਗ ਲਿਸਟ';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ਚੀਜ਼(ਾਂ) ਸ਼ਾਮਲ ਕੀਤੀਆਂ ਜਾਣਗੀਆਂ';
  }

  @override
  String get listNameLabel => 'ਲਿਸਟ ਦਾ ਨਾਮ';

  @override
  String listCreated(String name, int count) {
    return 'ਲਿਸਟ \"$name\" $count ਚੀਜ਼ਾਂ ਨਾਲ ਬਣਾਈ';
  }

  @override
  String get noTracking => 'ਕੋਈ ਟਰੈਕਿੰਗ ਨਹੀਂ';

  @override
  String get markAsPurchased => 'ਖਰੀਦਿਆ ਹੋਇਆ ਦਰਜ ਕਰੋ';

  @override
  String editPantryItem(String name) {
    return '$name ਸੰਪਾਦਨ ਕਰੋ';
  }

  @override
  String get idealQuantity => 'ਆਦਰਸ਼ ਮਾਤਰਾ';

  @override
  String get currentQuantity => 'ਮੌਜੂਦਾ ਮਾਤਰਾ';

  @override
  String get consumed => 'ਖਪਤ ਕੀਤਾ';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit ਵਜੋਂ ਮੁੜ-ਸਟਾਕ ਕੀਤਾ';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'ਪੈਂਟਰੀ ਤੋਂ \"$name\" ਹਟਾਈਏ?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name ਸੰਪਾਦਨ ਕਰੋ';
  }

  @override
  String get settingsAppBar => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get language => 'ਭਾਸ਼ਾ';

  @override
  String get languagePortuguese => 'ਪੁਰਤਗਾਲੀ (ਬ੍ਰਾਜ਼ੀਲ)';

  @override
  String get languageEnglish => 'ਅੰਗਰੇਜ਼ੀ';

  @override
  String get languageSystem => 'ਸਿਸਟਮ ਡਿਫੌਲਟ';

  @override
  String get chooseLanguage => 'ਭਾਸ਼ਾ ਚੁਣੋ';

  @override
  String get searchLanguage => 'ਭਾਸ਼ਾ ਖੋਜੋ...';

  @override
  String get currency => 'ਮੁਦਰਾ';

  @override
  String get chooseCurrency => 'ਮੁਦਰਾ ਚੁਣੋ';

  @override
  String get searchCurrency => 'ਮੁਦਰਾ ਖੋਜੋ...';

  @override
  String get appearance => 'ਦਿੱਖ';

  @override
  String get light => 'ਚਾਨਣ';

  @override
  String get system => 'ਸਿਸਟਮ';

  @override
  String get dark => 'ਹਨੇਰਾ';

  @override
  String get themeColor => 'ਥੀਮ ਰੰਗ';

  @override
  String get dynamicColors => 'ਗਤੀਸ਼ੀਲ ਰੰਗ';

  @override
  String get dynamicColorsSubtitle =>
      'ਆਪਣੇ ਵਾਲਪੇਪਰ ਦੇ ਆਧਾਰ \'ਤੇ ਰੰਗਾਂ ਦੀ ਵਰਤੋਂ ਕਰੋ';

  @override
  String get dynamicColorsEnabledWarning =>
      'ਥੀਮ ਰੰਗ ਨੂੰ ਪ੍ਰਭਾਵੀ ਕਰਨ ਲਈ ਗਤੀਸ਼ੀਲ ਰੰਗਾਂ ਨੂੰ ਅਸਮਰੱਥ ਬਣਾਓ';

  @override
  String get finance => 'ਵਿੱਤ';

  @override
  String get monthlyBudgetNav => 'ਮਹੀਨਾਵਾਰ ਬਜਟ';

  @override
  String get budgetSubtitle => 'ਆਪਣੇ ਮਹੀਨਾਵਾਰ ਖਰਚ ਨੂੰ ਟਰੈਕ ਕਰੋ';

  @override
  String get data => 'ਡੇਟਾ';

  @override
  String get backupNav => 'ਬੈਕਅੱਪ';

  @override
  String get backupSubtitle => 'ਆਪਣੇ ਡੇਟਾ ਨੂੰ ਐਕਸਪੋਰਟ ਜਾਂ ਇੰਪੋਰਟ ਕਰੋ';

  @override
  String get about => 'ਬਾਰੇ';

  @override
  String get version => 'ਵਰਜਨ';

  @override
  String get privacy => 'ਪਰਦੇਦਾਰੀ';

  @override
  String get termsOfUse => 'ਵਰਤੋਂ ਦੀਆਂ ਸ਼ਰਤਾਂ';

  @override
  String get backupTitle => 'ਬੈਕਅੱਪ';

  @override
  String get backupPremiumDescription =>
      'ਬੈਕਅੱਪ ਅਤੇ ਐਕਸਪੋਰਟ ਇੱਕ ਪ੍ਰੀਮੀਅਮ ਵਿਸ਼ੇਸ਼ਤਾ ਹੈ';

  @override
  String get exportData => 'ਡੇਟਾ ਐਕਸਪੋਰਟ ਕਰੋ';

  @override
  String get exportDataSubtitle => 'ਸਾਰੀਆਂ ਲਿਸਟਾਂ JSON ਵਜੋਂ ਸੁਰੱਖਿਅਤ ਕਰੋ';

  @override
  String get importData => 'ਡੇਟਾ ਇੰਪੋਰਟ ਕਰੋ';

  @override
  String get importDataSubtitle => 'JSON ਤੋਂ ਲਿਸਟਾਂ ਬਹਾਲ ਕਰੋ';

  @override
  String get importJsonTitle => 'JSON ਇੰਪੋਰਟ ਕਰੋ';

  @override
  String get importJsonHint => 'ਬੈਕਅੱਪ JSON ਇੱਥੇ ਪੇਸਟ ਕਰੋ...';

  @override
  String get backupExported => 'ਬੈਕਅੱਪ ਐਕਸਪੋਰਟ ਕੀਤਾ!';

  @override
  String get budgetAppBar => 'ਮਹੀਨਾਵਾਰ ਬਜਟ';

  @override
  String get budgetPremiumLocked => 'ਗਲੋਬਲ ਮਹੀਨਾਵਾਰ ਬਜਟ ਪ੍ਰੀਮੀਅਮ ਹੈ';

  @override
  String get budgetUpgradePrompt => 'ਅਨਲੌਕ ਕਰਨ ਲਈ ਅਪਗ੍ਰੇਡ ਕਰੋ';

  @override
  String get noBudgetDefined => 'ਕੋਈ ਬਜਟ ਸੈੱਟ ਨਹੀਂ';

  @override
  String totalEstimated(String amount) {
    return 'ਕੁੱਲ ਅਨੁਮਾਨ: $amount';
  }

  @override
  String get setBudgetButton => 'ਬਜਟ ਸੈੱਟ ਕਰੋ';

  @override
  String get budgetLists => 'ਲਿਸਟਾਂ';

  @override
  String get budgetValueLabel => 'ਰਕਮ';

  @override
  String get setBudgetTitle => 'ਮਹੀਨਾਵਾਰ ਬਜਟ';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'ਸਭ';

  @override
  String get filterPending => 'ਬਕਾਇਆ';

  @override
  String get filterPurchased => 'ਖਰੀਦੇ';

  @override
  String get sortName => 'ਨਾਮ';

  @override
  String get sortCategory => 'ਸ਼੍ਰੇਣੀ';

  @override
  String get sortDate => 'ਮਿਤੀ';

  @override
  String get sortManual => 'ਦਸਤੀ';

  @override
  String get addItem => 'ਚੀਜ਼ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get itemName => 'ਚੀਜ਼ ਦਾ ਨਾਮ';

  @override
  String get quantityShort => 'ਮਾਤਰਾ';

  @override
  String get unit => 'ਇਕਾਈ';

  @override
  String get category => 'ਸ਼੍ਰੇਣੀ';

  @override
  String get estimatedPrice => 'ਅਨੁਮਾਨਿਤ ਕੀਮਤ';

  @override
  String get addItemPrice => 'ਅਨੁਮਾਨਿਤ ਕੀਮਤ';

  @override
  String get editItem => 'ਚੀਜ਼ ਸੰਪਾਦਨ ਕਰੋ';

  @override
  String get quantityFull => 'ਮਾਤਰਾ';

  @override
  String get editItemPrice => 'ਅਨੁਮਾਨਿਤ ਕੀਮਤ';

  @override
  String get addToPantry => 'ਪੈਂਟਰੀ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" ਨੂੰ ਆਪਣੀ ਪੈਂਟਰੀ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੀਏ?';
  }

  @override
  String get yes => 'ਹਾਂ';

  @override
  String get productName => 'ਉਤਪਾਦ ਦਾ ਨਾਮ';

  @override
  String get idealQty => 'ਆਦਰਸ਼ ਮਾਤਰਾ';

  @override
  String get currentQty => 'ਮੌਜੂਦਾ ਮਾਤਰਾ';

  @override
  String get trackStock => 'ਸਟਾਕ ਟਰੈਕ ਕਰੋ';

  @override
  String get trackStockActive => 'ਸ਼ਾਪਿੰਗ ਸੁਝਾਵਾਂ ਵਿੱਚ ਦਿਖਦਾ ਹੈ';

  @override
  String get trackStockInactive => 'ਸ਼ਾਪਿੰਗ ਸੁਝਾਅ ਨਹੀਂ ਬਣਾਉਂਦਾ';

  @override
  String get createListDialog => 'ਲਿਸਟ ਬਣਾਓ';

  @override
  String get renameListDialog => 'ਲਿਸਟ ਦਾ ਨਾਮ ਬਦਲੋ';

  @override
  String get listHistory => 'ਲਿਸਟ ਇਤਿਹਾਸ';

  @override
  String get myLists => 'ਮੇਰੀਆਂ ਲਿਸਟਾਂ';

  @override
  String get viewActive => 'ਸਰਗਰਮ ਵੇਖੋ';

  @override
  String get viewHistory => 'ਇਤਿਹਾਸ ਵੇਖੋ';

  @override
  String get noArchivedLists => 'ਕੋਈ ਆਰਕਾਈਵ ਲਿਸਟ ਨਹੀਂ';

  @override
  String get noActiveLists => 'ਕੋਈ ਸਰਗਰਮ ਲਿਸਟ ਨਹੀਂ';

  @override
  String completedOn(String date) {
    return '$date ਨੂੰ ਪੂਰਾ ਹੋਇਆ';
  }

  @override
  String get sharedLabel => 'ਸਾਂਝੀ';

  @override
  String get restore => 'ਬਹਾਲ ਕਰੋ';

  @override
  String get removeSharedTooltip => 'ਹਟਾਓ';

  @override
  String get deleteListTitle => 'ਲਿਸਟ ਮਿਟਾਓ';

  @override
  String deleteListContent(String name) {
    return 'ਕੀ ਤੁਸੀਂ \"$name\" ਨੂੰ ਮਿਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ? ਸਾਰੀਆਂ ਚੀਜ਼ਾਂ ਹਟਾ ਦਿੱਤੀਆਂ ਜਾਣਗੀਆਂ।';
  }

  @override
  String get removeSharedListTitle => 'ਸਾਂਝੀ ਲਿਸਟ ਹਟਾਓ';

  @override
  String removeSharedListContent(String name) {
    return 'ਆਪਣੀਆਂ ਲਿਸਟਾਂ ਵਿੱਚੋਂ \"$name\" ਹਟਾਈਏ? ਅਸਲ ਲਿਸਟ \'ਤੇ ਕੋਈ ਅਸਰ ਨਹੀਂ ਪਵੇਗਾ।';
  }

  @override
  String get createNewList => 'ਨਵੀਂ ਲਿਸਟ ਬਣਾਓ';

  @override
  String get aiAssistant => 'AI ਸਹਾਇਕ';

  @override
  String get aiAssistantDescription =>
      'ਸਾਡੇ AI ਸਹਾਇਕ ਨਾਲ ਸਮਝਦਾਰ ਸੁਝਾਅ, ਪਕਵਾਨਾਂ ਅਤੇ ਨਿੱਜੀ ਸੁਝਾਅ ਪ੍ਰਾਪਤ ਕਰੋ।';

  @override
  String get generalAssistant => 'ਆਮ ਸਹਾਇਕ';

  @override
  String get newChat => 'ਨਵੀਂ ਚੈਟ';

  @override
  String get noHistory => 'ਕੋਈ ਚੈਟ ਇਤਿਹਾਸ ਨਹੀਂ';

  @override
  String get deleteSession => 'ਚੈਟ ਮਿਟਾਓ';

  @override
  String get deleteSessionConfirm =>
      'ਕੀ ਤੁਸੀਂ ਯਕੀਨਨ ਇਸ ਚੈਟ ਨੂੰ ਮਿਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ? ਸੁਨੇਹੇ ਪੱਕੇ ਤੌਰ \'ਤੇ ਖਤਮ ਹੋ ਜਾਣਗੇ।';

  @override
  String get clearHistory => 'ਇਤਿਹਾਸ ਸਾਫ਼ ਕਰੋ';

  @override
  String get clearHistoryConfirm => 'ਇਸ ਸੈਸ਼ਨ ਦੇ ਸਾਰੇ ਸੁਨੇਹੇ ਸਾਫ਼ ਕਰੀਏ?';

  @override
  String get chatHint => 'ਆਪਣਾ ਸੁਨੇਹਾ ਲਿਖੋ...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'ਚੈਟ ਲੋਡ ਕਰਨ ਵਿੱਚ ਗਲਤੀ: $error';
  }

  @override
  String get listHelp => 'ਮੈਂ ਤੁਹਾਡੀ ਲਿਸਟ ਵਿੱਚ ਕਿਵੇਂ ਮਦਦ ਕਰ ਸਕਦਾ ਹਾਂ?';

  @override
  String get generalHelp => 'ਅੱਜ ਮੈਂ ਤੁਹਾਡੀ ਸ਼ਾਪਿੰਗ ਵਿੱਚ ਕਿਵੇਂ ਮਦਦ ਕਰ ਸਕਦਾ ਹਾਂ?';

  @override
  String get chatSubtitle =>
      'ਚੀਜ਼ਾਂ ਦੇ ਸੁਝਾਅ, ਪਕਵਾਨਾਂ ਜਾਂ ਬਚਤ ਸੁਝਾਵਾਂ ਲਈ ਪੁੱਛੋ।';

  @override
  String get aiError =>
      'ਮੁਆਫ ਕਰਨਾ, ਤੁਹਾਡੀ ਬੇਨਤੀ ਦੀ ਪ੍ਰਕਿਰਿਆ ਕਰਨ ਵਿੱਚ ਗਲਤੀ ਆਈ। ਆਪਣਾ ਕਨੈਕਸ਼ਨ ਚੈੱਕ ਕਰੋ ਜਾਂ ਬਾਅਦ ਵਿੱਚ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'ਪ੍ਰੀਮੀਅਮ ਵਿਸ਼ੇਸ਼ਤਾਵਾਂ\nਅਨਲੌਕ ਕਰਨ ਲਈ ਲੌਗ ਇਨ ਕਰੋ';

  @override
  String get signInGoogle => 'Google ਨਾਲ ਸਾਈਨ ਇਨ ਕਰੋ';

  @override
  String get signInApple => 'Apple ਨਾਲ ਸਾਈਨ ਇਨ ਕਰੋ';

  @override
  String get continueAsGuest => 'ਮਹਿਮਾਨ ਵਜੋਂ ਜਾਰੀ ਰੱਖੋ';

  @override
  String get onboardingWelcomeTitle => 'KipiList ਵਿੱਚ ਤੁਹਾਡਾ ਸੁਆਗਤ ਹੈ';

  @override
  String get onboardingWelcomeDesc =>
      'ਤੁਹਾਡੀ ਖਰੀਦਦਾਰੀ ਨੂੰ ਸੰਗਠਿਤ ਕਰਨ ਅਤੇ ਪੈਸੇ ਬਚਾਉਣ ਦਾ ਸਭ ਤੋਂ ਵਧੀਆ ਤਰੀਕਾ।';

  @override
  String get onboardingSetupTitle => 'ਆਪਣੇ ਅਨੁਭਵ ਨੂੰ ਨਿਜੀ ਬਣਾਓ';

  @override
  String get onboardingSetupDesc =>
      'ਚੁਣੋ ਕਿ ਤੁਸੀਂ KipiList ਕਿਵੇਂ ਦਿਖਣਾ ਚਾਹੁੰਦੇ ਹੋ ਅਤੇ ਤੁਹਾਡੇ ਲਈ ਕੰਮ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ।';

  @override
  String get onboardingLoginTitle => 'ਹਰ ਚੀਜ਼ ਨੂੰ ਕਲਾਉਡ ਵਿੱਚ ਸੁਰੱਖਿਅਤ ਕਰੋ';

  @override
  String get onboardingLoginDesc =>
      'ਤੁਹਾਡਾ ਡੇਟਾ ਤੁਹਾਡੀਆਂ ਸਾਰੀਆਂ ਡਿਵਾਈਸਾਂ ਵਿੱਚ ਸਿੰਕ ਕੀਤਾ ਗਿਆ ਹੈ';

  @override
  String get onboardingShareTitle =>
      'ਜਿਨ੍ਹਾਂ ਨੂੰ ਤੁਸੀਂ ਪਿਆਰ ਕਰਦੇ ਹੋ ਉਹਨਾਂ ਨਾਲ ਸਾਂਝਾ ਕਰੋ';

  @override
  String get onboardingShareDesc =>
      'ਰੀਅਲ ਟਾਈਮ ਵਿੱਚ ਪਰਿਵਾਰ ਅਤੇ ਦੋਸਤਾਂ ਨਾਲ ਸੂਚੀਆਂ ਨੂੰ ਸਿੰਕ ਕਰੋ';

  @override
  String get onboardingPremiumTitle => 'ਸਾਰੀਆਂ ਵਿਸ਼ੇਸ਼ਤਾਵਾਂ ਨੂੰ ਅਨਲੌਕ ਕਰੋ';

  @override
  String get onboardingPremiumSubtitle =>
      'ਆਪਣੀਆਂ ਖਰੀਦਦਾਰੀ ਸੂਚੀਆਂ ਦਾ ਵੱਧ ਤੋਂ ਵੱਧ ਲਾਹਾ ਲਓ';

  @override
  String get onboardingAnnualBadge => 'ਵਧੀਆ ਮੁੱਲ';

  @override
  String get onboardingMonthlyLabel => 'ਮਹੀਨਾਵਾਰ';

  @override
  String get onboardingAnnualLabel => 'ਸਾਲਾਨਾ';

  @override
  String get onboardingViewAllPlans => 'ਸਾਰੀਆਂ ਯੋਜਨਾਵਾਂ ਦੇਖੋ';

  @override
  String get onboardingSubscribeCta => 'ਸਬਸਕ੍ਰਾਈਬ ਕਰੋ';

  @override
  String get onboardingCancelAnytime =>
      'ਕਿਸੇ ਵੀ ਸਮੇਂ ਰੱਦ ਕਰੋ। ਕੋਈ ਵਚਨਬੱਧਤਾ ਨਹੀਂ।';

  @override
  String get onboardingContinueAsGuest => 'ਮਹਿਮਾਨ ਵਜੋਂ ਜਾਰੀ ਰੱਖੋ';

  @override
  String get onboardingRestore => 'ਰੀਸਟੋਰ ਕਰੋ';

  @override
  String get onboardingRestoreDesc =>
      'ਕੀ ਪਹਿਲਾਂ ਤੋਂ ਹੀ ਗਾਹਕੀ ਹੈ? ਇਸਨੂੰ ਰੀਸਟੋਰ ਕਰਨ ਲਈ ਇੱਥੇ ਟੈਪ ਕਰੋ।';

  @override
  String get onboardingExit => 'ਨਿਕਾਸ';

  @override
  String get onboardingPersonalizationTitle => 'ਆਓ ਤੁਹਾਨੂੰ ਜਾਣੀਏ';

  @override
  String get onboardingPersonalizationDesc =>
      'ਅਸੀਂ ਇਸਦੀ ਵਰਤੋਂ ਤੁਹਾਡੇ ਸੁਝਾਵਾਂ ਨੂੰ ਵਿਅਕਤੀਗਤ ਬਣਾਉਣ ਅਤੇ ਖਰੀਦਦਾਰੀ ਨੂੰ ਚੁਸਤ ਬਣਾਉਣ ਲਈ ਕਰਾਂਗੇ।';

  @override
  String get onboardingPersonalizationFoodLabel => 'ਤੁਹਾਡਾ ਮਨਪਸੰਦ ਭੋਜਨ ਕੀ ਹੈ?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'ਜਿਵੇਂ ਕਿ ਪੀਜ਼ਾ, ਸੁਸ਼ੀ, ਲਾਸਗਨਾ...';

  @override
  String get onboardingPersonalizationCta => 'ਜਾਰੀ ਰੱਖੋ';

  @override
  String get onboardingPersonalizationSkip => 'ਹੁਣ ਲਈ ਛੱਡੋ';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'ਜਾਰੀ ਰੱਖਣ ਲਈ ਸਾਨੂੰ ਆਪਣਾ ਮਨਪਸੰਦ ਭੋਜਨ ਦੱਸੋ';

  @override
  String get settingsDefaultScreen => 'ਪੂਰਵ-ਨਿਰਧਾਰਤ ਹੋਮ ਸਕ੍ਰੀਨ';

  @override
  String get settingsDefaultScreenSubtitle =>
      'ਖਰੀਦਦਾਰੀ ਸੂਚੀ ਜਾਂ ਏਆਈ ਚੈਟ ਵਿੱਚੋਂ ਚੁਣੋ';

  @override
  String get settingsScreenList => 'ਖਰੀਦਦਾਰੀ ਸੂਚੀ';

  @override
  String get settingsScreenChat => 'ਏਆਈ ਚੈਟ';

  @override
  String loginError(String error) {
    return 'ਲੌਗਇਨ ਗਲਤੀ: $error';
  }

  @override
  String get paywallTitle => 'KipiList ਪ੍ਰੀਮੀਅਮ';

  @override
  String get paywallLoadingError => 'Error loading offers. Try again.';

  @override
  String get paywallPurchaseError => 'Could not complete purchase. Try again.';

  @override
  String get paywallRestoreError => 'No active subscription found to restore.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAYS FREE';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count WEEKS FREE',
      one: '$count WEEK FREE',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MONTHS FREE',
      one: '$count MONTH FREE',
    );
    return '$_temp0';
  }

  @override
  String get paywallFeaturesTitle => 'Everything you need:';

  @override
  String get paywallFeatureUnlimitedLists => 'Unlimited Lists';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Expense Control';

  @override
  String get paywallFeatureSharing => 'Sharing';

  @override
  String get paywallBeforeAfterTitle => 'AI Before and After:';

  @override
  String get paywallLabelCommon => 'Common';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'rice';

  @override
  String get paywallBeforeItem2 => 'soap';

  @override
  String get paywallBeforeItem3 => 'meat';

  @override
  String get paywallBeforeItem4 => 'bread';

  @override
  String get paywallAfterItem1 => 'Grains';

  @override
  String get paywallAfterItem2 => 'Cleaning';

  @override
  String get paywallAfterItem3 => 'Meats';

  @override
  String get paywallAfterItem4 => 'Bakery';

  @override
  String get paywallTestimonialsTitle => 'What our users say:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organizes my shopping in seconds. I save 20 min per market trip.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'I never forgot a list item again. The AI chat is sensational!';

  @override
  String get paywallSelectPlan => 'Choose your plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SAVE $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Only $price/month';
  }

  @override
  String get paywallPackageAnnual => 'Annual Plan';

  @override
  String get paywallPackageMonthly => 'Monthly Plan';

  @override
  String get paywallPackageLifetime => 'Lifetime Access';

  @override
  String get paywallCancelAnytime => 'Cancel anytime. No commitment.';

  @override
  String get paywallPolicy => 'Privacy Policy';

  @override
  String get paywallTerms => 'Terms of Use';

  @override
  String get paywallRestore => 'Restore';

  @override
  String get premiumUpgrade => 'ਅਨਲੌਕ ਕਰਨ ਲਈ ਅਪਗ੍ਰੇਡ ਕਰੋ';

  @override
  String get itemRemoved => 'ਚੀਜ਼ ਹਟਾਈ';

  @override
  String get undo => 'ਅਣ-ਕਰੋ';

  @override
  String get emptyListTitle => 'ਤੁਹਾਡੀ ਲਿਸਟ ਖਾਲੀ ਹੈ';

  @override
  String get emptyListSubtitle => 'ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਚੀਜ਼ਾਂ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get noListFoundTitle => 'ਕੋਈ ਲਿਸਟ ਨਹੀਂ ਲੱਭੀ';

  @override
  String get noListFoundSubtitle => 'ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਆਪਣੀ ਪਹਿਲੀ ਲਿਸਟ ਬਣਾਓ';

  @override
  String get createFirstList => 'ਪਹਿਲੀ ਲਿਸਟ ਬਣਾਓ';

  @override
  String get listBudgetTitle => 'ਲਿਸਟ ਬਜਟ';

  @override
  String get budgetAmountLabel => 'ਬਜਟ ਰਕਮ';

  @override
  String get removeBudget => 'ਹਟਾਓ';

  @override
  String get prefUnlimitedLists => 'ਅਸੀਮਤ ਲਿਸਟਾਂ';

  @override
  String get prefSharing => 'ਲਿਸਟਾਂ ਸਾਂਝੀਆਂ ਕਰੋ';

  @override
  String get prefFullHistory => 'ਪੂਰਾ ਇਤਿਹਾਸ';

  @override
  String get prefExportData => 'ਡੇਟਾ ਐਕਸਪੋਰਟ ਕਰੋ';

  @override
  String get prefCustomThemes => 'ਕਸਟਮ ਥੀਮ';

  @override
  String get prefMonthlyBudget => 'ਗਲੋਬਲ ਮਹੀਨਾਵਾਰ ਬਜਟ';

  @override
  String get prefAIAssistant => 'ਨਿੱਜੀ AI ਸਹਾਇਕ';

  @override
  String get prefUnlimitedPantry => 'ਅਸੀਮਤ ਪੈਂਟਰੀ';

  @override
  String get prefInteractiveArtifacts => 'ਇੰਟਰਐਕਟਿਵ AI ਆਰਟੀਫੈਕਟ';

  @override
  String get themeGreen => 'ਹਰਾ';

  @override
  String get themeBlue => 'ਨੀਲਾ';

  @override
  String get themePurple => 'ਜਾਮਣੀ';

  @override
  String get themeRed => 'ਲਾਲ';

  @override
  String get themeOrange => 'ਸੰਤਰੀ';

  @override
  String get themePink => 'ਗੁਲਾਬੀ';

  @override
  String get themeIndigo => 'ਨੀਲ';

  @override
  String get themeAmber => 'ਅੰਬਰ';

  @override
  String get themeTeal => 'ਟੀਲ';

  @override
  String get themeBrown => 'ਭੂਰਾ';

  @override
  String get catFruits => 'ਫਲ';

  @override
  String get catCleaning => 'ਸਫਾਈ';

  @override
  String get catBeverages => 'ਪੀਣ ਵਾਲੇ';

  @override
  String get catBakery => 'ਬੇਕਰੀ';

  @override
  String get catOthers => 'ਹੋਰ';

  @override
  String get unitPack => 'ਪੈਕ';

  @override
  String get shareSubject => 'ਸ਼ਾਪਿੰਗ ਲਿਸਟ';

  @override
  String get monthlyBudgetTitle => 'ਮਹੀਨਾਵਾਰ ਬਜਟ';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'ਲਿਸਟ ਮਿਟਾਓ';

  @override
  String get pantryItemRemoved => 'ਚੀਜ਼ ਹਟਾਈ';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit ਚੀਜ਼ਾਂ ਖਰੀਦਣ ਦੀ ਲੋੜ ਹਨ',
      one: '$deficit ਚੀਜ਼ ਖਰੀਦਣ ਦੀ ਲੋੜ ਹੈ',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'ਕਾਰਟ ਕੁੱਲ';

  @override
  String get restockLabel => 'ਮੁੜ-ਸਟਾਕ';

  @override
  String get advancedFeatures => 'ਉੱਨਤ ਵਿਸ਼ੇਸ਼ਤਾਵਾਂ';

  @override
  String get selectAll => 'ਸਭ ਚੁਣੋ';

  @override
  String get deselectAll => 'ਸਭ ਅਣ-ਚੁਣੋ';

  @override
  String get monthlyBudgetAppBar => 'ਮਹੀਨਾਵਾਰ ਬਜਟ';

  @override
  String get budgetEditTitle => 'ਮਹੀਨਾਵਾਰ ਬਜਟ';

  @override
  String get budgetDashboardTitle => 'ਡੈਸ਼ਬੋਰਡ';

  @override
  String get selectListForDashboard => 'ਡੈਸ਼ਬੋਰਡ ਵੇਖਣ ਲਈ ਇੱਕ ਲਿਸਟ ਚੁਣੋ।';

  @override
  String get spendingAnalysis => 'ਖਰਚ ਵਿਸ਼ਲੇਸ਼ਣ';

  @override
  String get noItemsToAnalyze => 'ਵਿਸ਼ਲੇਸ਼ਣ ਕਰਨ ਲਈ ਲਿਸਟ ਵਿੱਚ ਕੋਈ ਚੀਜ਼ ਨਹੀਂ।';

  @override
  String get markItemsToSeeAnalysis =>
      'ਵਿਸ਼ਲੇਸ਼ਣ ਵੇਖਣ ਲਈ ਚੀਜ਼ਾਂ ਨੂੰ ਖਰੀਦਿਆ ਦਰਜ ਕਰੋ।';

  @override
  String get totalSpending => 'ਕੁੱਲ ਖਰਚ';

  @override
  String get spendingByCategory => 'ਸ਼੍ਰੇਣੀ ਅਨੁਸਾਰ ਖਰਚ';

  @override
  String get achievements => 'ਪ੍ਰਾਪਤੀਆਂ';

  @override
  String get exportPdfExcel => 'PDF/Excel ਐਕਸਪੋਰਟ ਕਰੋ';

  @override
  String get exportPdf => 'PDF ਵਜੋਂ ਐਕਸਪੋਰਟ ਕਰੋ';

  @override
  String get exportExcel => 'Excel ਵਜੋਂ ਐਕਸਪੋਰਟ ਕਰੋ';

  @override
  String get organizingAi => 'AI ਨਾਲ ਸੰਗਠਿਤ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String get yesLabel => 'ਹਾਂ';

  @override
  String get noLabel => 'ਨਹੀਂ';

  @override
  String get shareListText => 'ਮੇਰੀ ਸ਼ਾਪਿੰਗ ਲਿਸਟ';

  @override
  String get emptyListAddItems =>
      'ਤੁਹਾਡੀ ਲਿਸਟ ਖਾਲੀ ਹੈ! ਪਹਿਲਾਂ ਚੀਜ਼ਾਂ ਸ਼ਾਮਲ ਕਰੋ। ℹ️';

  @override
  String get listOrganizedMagic =>
      'ਲਿਸਟ ਸ਼੍ਰੇਣੀਆਂ ਅਨੁਸਾਰ ਜਾਦੂਈ ਢੰਗ ਨਾਲ ਸੰਗਠਿਤ! ✨';

  @override
  String get shoppingMode => 'ਸ਼ਾਪਿੰਗ ਮੋਡ';

  @override
  String get smartOrganization => 'ਸਮਾਰਟ ਸੰਗਠਨ';

  @override
  String get savings => 'ਬਚਤ';

  @override
  String get shoppingModeHeader => 'ਸ਼ਾਪਿੰਗ ਮੋਡ';

  @override
  String get shareAsText => 'ਫਾਰਮੈਟ ਕੀਤੇ ਟੈਕਸਟ ਵਜੋਂ ਚੀਜ਼ਾਂ ਭੇਜੋ';

  @override
  String get shareRealtime => 'ਦੂਜਿਆਂ ਨਾਲ ਰੀਅਲ-ਟਾਈਮ ਸਿੰਕ';

  @override
  String get quickRecipe => 'ਤੁਰੰਤ ਪਕਵਾਨ';

  @override
  String get quickRecipePrompt => 'ਮੇਰੀ ਲਿਸਟ ਦੀਆਂ ਚੀਜ਼ਾਂ ਨਾਲ ਪਕਵਾਨਾਂ ਸੁਝਾਓ।';

  @override
  String get economyTips => 'ਬਚਤ ਸੁਝਾਅ';

  @override
  String get economyTipsPrompt => 'ਮੈਂ ਇਸ ਖਰੀਦ \'ਤੇ ਪੈਸੇ ਕਿਵੇਂ ਬਚਾ ਸਕਦਾ ਹਾਂ?';

  @override
  String get organizeAisles => 'ਗਲੀਆਂ ਅਨੁਸਾਰ ਸੰਗਠਿਤ ਕਰੋ';

  @override
  String get organizeAislesPrompt => 'ਮਾਰਕੀਟ ਗਲੀਆਂ ਅਨੁਸਾਰ ਸੰਗਠਿਤ ਕਰੋ।';

  @override
  String get recipeSuggestion => 'ਪਕਵਾਨ ਸੁਝਾਅ';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining ਕ੍ਰੈਡਿਟ ਬਾਕੀ';
  }

  @override
  String get addAllToList => 'ਸਭ ਲਿਸਟ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get organizeByAisles => 'ਗਲੀਆਂ ਅਨੁਸਾਰ ਸੰਗਠਿਤ ਕਰੋ';

  @override
  String get voiceTranscriptionTooltip => 'ਆਵਾਜ਼ ਟਾਈਪਿੰਗ (ਮੁਫ਼ਤ)';

  @override
  String get aiVoiceCommandTooltip => 'AI ਆਵਾਜ਼ ਕਮਾਂਡ (ਪ੍ਰੀਮੀਅਮ)';

  @override
  String get voiceCommandTitle => 'AI ਆਵਾਜ਼ ਕਮਾਂਡ';

  @override
  String get voiceCommandContent =>
      'ਆਪਣੀ ਲਿਸਟ ਦਾ ਪ੍ਰਬੰਧ ਕਰਨ ਲਈ ਕੁਦਰਤੀ ਢੰਗ ਨਾਲ ਬੋਲੋ!\n\nਉਦਾਹਰਣਾਂ:\n• \'ਰੋਟੀ, ਪਨੀਰ ਅਤੇ ਹੈਮ ਸ਼ਾਮਲ ਕਰੋ\'\n• \'ਲਾਂਡਰੀ ਡਿਟਰਜੈਂਟ ਹਟਾਓ\'\n• \'ਥੀਮ ਨੀਲਾ ਕਰੋ\'\n\nਇਹ KipiList ਪ੍ਰੀਮੀਅਮ ਦੀ ਵਿਸ਼ੇਸ਼ ਵਿਸ਼ੇਸ਼ਤਾ ਹੈ।';

  @override
  String get voiceCommandPlanBtn => 'ਯੋਜਨਾਵਾਂ ਵੇਖੋ';

  @override
  String get itemsAddedSuccess => 'ਚੀਜ਼ਾਂ ਸਫਲਤਾਪੂਰਵਕ ਲਿਸਟ ਵਿੱਚ ਸ਼ਾਮਲ!';

  @override
  String get viewList => 'ਲਿਸਟ ਵੇਖੋ';

  @override
  String get feedbackTitle => 'ਸੁਝਾਅ ਭੇਜੋ';

  @override
  String get feedbackPrompt => 'ਤੁਸੀਂ ਕੀ ਸਾਂਝਾ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ?';

  @override
  String get feedbackTypeBug => 'ਬੱਗ ਦੀ ਰਿਪੋਰਟ ਕਰੋ';

  @override
  String get feedbackTypeBugHint => 'ਕੁਝ ਕੰਮ ਨਹੀਂ ਕਰ ਰਿਹਾ';

  @override
  String get feedbackTypeSuggestion => 'ਸੁਝਾਅ';

  @override
  String get feedbackTypeSuggestionHint => 'ਐਪ ਨੂੰ ਬਿਹਤਰ ਬਣਾਉਣ ਲਈ ਵਿਚਾਰ';

  @override
  String get feedbackTypeTranslation => 'ਅਨੁਵਾਦ ਸਮੱਸਿਆ';

  @override
  String get feedbackTypeTranslationHint => 'ਗਲਤ ਜਾਂ ਬੇਢੰਗਾ ਅਨੁਵਾਦ';

  @override
  String get feedbackTypeFeature => 'ਫੀਚਰ ਬੇਨਤੀ';

  @override
  String get feedbackTypeFeatureHint => 'ਉਹ ਫੀਚਰ ਜੋ ਤੁਸੀਂ ਦੇਖਣਾ ਚਾਹੁੰਦੇ ਹੋ';

  @override
  String get feedbackTypeOther => 'ਹੋਰ';

  @override
  String get feedbackTypeOtherHint => 'ਹੋਰ ਕਿਸਮ ਦਾ ਸੁਝਾਅ';

  @override
  String get feedbackHint => 'ਆਪਣੇ ਸੁਝਾਅ ਦਾ ਵਿਸਥਾਰ ਵਿੱਚ ਵਰਣਨ ਕਰੋ...';

  @override
  String get feedbackSend => 'ਸੁਝਾਅ ਭੇਜੋ';

  @override
  String get feedbackSending => 'ਭੇਜ ਰਿਹਾ ਹੈ...';

  @override
  String get feedbackThankYou => 'ਧੰਨਵਾਦ!';

  @override
  String get feedbackThankYouMessage =>
      'ਤੁਹਾਡਾ ਸੁਝਾਅ ਪ੍ਰਾਪਤ ਹੋ ਗਿਆ ਹੈ ਅਤੇ ਇਹ KipiList ਨੂੰ ਸਭ ਲਈ ਬਿਹਤਰ ਬਣਾਉਣ ਵਿੱਚ ਸਾਡੀ ਮਦਦ ਕਰਦਾ ਹੈ।';

  @override
  String get feedbackBack => 'ਵਾਪਸ';

  @override
  String feedbackError(String error) {
    return 'ਭੇਜਣ ਵਿੱਚ ਗਲਤੀ: $error';
  }

  @override
  String get feedbackRetry => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get feedbackSettingsTitle => 'ਸੁਝਾਅ ਭੇਜੋ';

  @override
  String get feedbackSettingsSubtitle =>
      'ਬੱਗ ਰਿਪੋਰਟ ਕਰੋ, ਸੁਧਾਰ ਸੁਝਾਓ, ਜਾਂ ਅਨੁਵਾਦ ਠੀਕ ਕਰੋ';

  @override
  String get aiEnergy => 'AI ਊਰਜਾ';

  @override
  String get searchInConversation => 'ਗੱਲਬਾਤ ਵਿੱਚ ਖੋਜੋ...';

  @override
  String get noMessagesFound => 'ਕੋਈ ਸੁਨੇਹਾ ਨਹੀਂ ਮਿਲਿਆ';

  @override
  String get suggestedQuestions => 'ਸੁਝਾਏ ਗਏ ਸਵਾਲ:';

  @override
  String get shoppingAssistant => 'ਖਰੀਦਦਾਰੀ ਸਹਾਇਕ';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total ਵਿੱਚੋਂ $purchased ਖਰੀਦਿਆ ਗਿਆ';
  }

  @override
  String get estimatedCost => 'ਅਨੁਮਾਨਿਤ';

  @override
  String get viewItems => 'ਆਈਟਮਾਂ ਦੇਖੋ';

  @override
  String get noItemsInList => 'ਸੂਚੀ ਵਿੱਚ ਕੋਈ ਆਈਟਮਾਂ ਨਹੀਂ ਹਨ';

  @override
  String get longHistoryWarning =>
      'ਲੰਮਾ ਇਤਿਹਾਸ: ਸਹਾਇਕ ਬਿਹਤਰ ਪ੍ਰਦਰਸ਼ਨ ਲਈ ਨਵੀਨਤਮ ਸੁਨੇਹਿਆਂ \'ਤੇ ਫੋਕਸ ਕਰਦਾ ਹੈ।';

  @override
  String get listening => 'ਸੁਣ ਰਿਹਾ ਹੈ...';

  @override
  String get addDirectToList => 'ਸੂਚੀ ਵਿੱਚ ਸਿੱਧੇ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get unlockFullResponse => 'ਪੂਰਾ ਜਵਾਬ ਅਣਲਾਕ ਕਰੋ';

  @override
  String get switchList => 'ਸੂਚੀ ਬਦਲੋ';

  @override
  String get marketMode => 'ਮਾਰਕੀਟ ਮੋਡ';

  @override
  String get backToChat => 'ਚੈਟ \'ਤੇ ਵਾਪਸ ਜਾਓ';

  @override
  String get finishShopping => 'ਖਰੀਦਦਾਰੀ ਖਤਮ ਕਰੋ';

  @override
  String get welcomeAiAssistant => 'AI ਸਹਾਇਕ ਵਿੱਚ ਤੁਹਾਡਾ ਸੁਆਗਤ ਹੈ';

  @override
  String get createListToStartAi =>
      'ਸਮਾਰਟ ਚੈਟ ਦੀ ਵਰਤੋਂ ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਇੱਕ ਖਰੀਦਦਾਰੀ ਸੂਚੀ ਬਣਾਓ।';

  @override
  String get howCanIHelp => 'ਮੈਂ ਕਿਵੇਂ ਮਦਦ ਕਰ ਸਕਦਾ/ਸਕਦੀ ਹਾਂ?';

  @override
  String get chatSubtitleShort => 'ਕੀਮਤਾਂ, ਪਕਵਾਨਾਂ, ਸੰਗਠਨ ਬਾਰੇ ਪੁੱਛੋ...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total ਖਰੀਦਿਆ ਗਿਆ';
  }

  @override
  String get quickReplies => 'ਤੇਜ਼ ਜਵਾਬ:';

  @override
  String get voiceProFeature =>
      'ਐਡਵਾਂਸਡ ਵੌਇਸ ਕਮਾਂਡਾਂ ਪ੍ਰੋ. ਬੁਨਿਆਦੀ ਡਿਕਸ਼ਨ ਨੂੰ ਸਮਰੱਥ ਬਣਾਇਆ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String get viewPro => 'ਦੇਖੋ ਪ੍ਰੋ';

  @override
  String get errorLoadingChat => 'ਓਹ! ਚੈਟ ਨੂੰ ਲੋਡ ਕਰਨ ਦੌਰਾਨ ਕੋਈ ਗੜਬੜ ਹੋ ਗਈ।';

  @override
  String get errorLoadingChatSubtitle =>
      'ਆਪਣੇ ਕਨੈਕਸ਼ਨ ਦੀ ਜਾਂਚ ਕਰੋ ਜਾਂ ਬਾਅਦ ਵਿੱਚ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get errorOscillation =>
      'ਇਹ ਨੈੱਟਵਰਕ ਔਸਿਲੇਸ਼ਨਾਂ ਜਾਂ ਅਸਥਾਈ ਅਣਉਪਲਬਧਤਾ ਦੇ ਕਾਰਨ ਹੋ ਸਕਦਾ ਹੈ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get activeListening => 'ਕਿਰਿਆਸ਼ੀਲ ਸੁਣਨਾ';

  @override
  String get whatToDoWithItem => 'ਤੁਸੀਂ ਇਸ ਆਈਟਮ ਨਾਲ ਕੀ ਕਰਨਾ ਚਾਹੋਗੇ?';

  @override
  String get viewDetails => 'ਵੇਰਵੇ ਵੇਖੋ';

  @override
  String get openMenu => 'ਮੀਨੂ ਖੋਲ੍ਹੋ';

  @override
  String get viewRecipe => 'ਵਿਅੰਜਨ ਦੇਖੋ';

  @override
  String get recipeCreated => 'ਵਿਅੰਜਨ ਬਣਾਇਆ ਗਿਆ!';

  @override
  String get editRecipe => 'ਸੰਪਾਦਿਤ ਕਰੋ';

  @override
  String get deleteRecipe => 'ਮਿਟਾਓ';

  @override
  String get deleteRecipeConfirm => 'ਕੀ ਇਸ ਵਿਅੰਜਨ ਨੂੰ ਮਿਟਾਉਣਾ ਹੈ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'ਕੀ ਤੁਸੀਂ ਯਕੀਨੀ ਤੌਰ \'ਤੇ \"$recipeName\" ਨੂੰ ਮਿਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ? ਇਸ ਕਾਰਵਾਈ ਨੂੰ ਅਣਕੀਤਾ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';
  }

  @override
  String get ingredients => 'ਸਮੱਗਰੀ';

  @override
  String get instructions => 'ਹਦਾਇਤਾਂ';

  @override
  String get prepTime => 'ਤਿਆਰੀ ਦਾ ਸਮਾਂ';

  @override
  String get recipeSaved => 'ਵਿਅੰਜਨ ਸੁਰੱਖਿਅਤ ਕੀਤਾ ਗਿਆ!';

  @override
  String get noRecipesSaved => 'ਕੋਈ ਪਕਵਾਨਾਂ ਨੂੰ ਸੁਰੱਖਿਅਤ ਨਹੀਂ ਕੀਤਾ ਗਿਆ';

  @override
  String get noRecipesSavedHint =>
      'ਹੇਠਾਂ ਦਿੱਤੇ ਬਟਨ \'ਤੇ ਟੈਪ ਕਰਕੇ ਆਪਣੀ ਪਹਿਲੀ ਕਸਟਮ ਵਿਅੰਜਨ ਬਣਾਓ।';

  @override
  String get myRecipes => 'ਮੇਰੀਆਂ ਪਕਵਾਨਾਂ';

  @override
  String get newRecipe => 'ਨਵੀਂ ਵਿਅੰਜਨ';

  @override
  String get loadingRecipes => 'ਤੁਹਾਡੀਆਂ ਪਕਵਾਨਾਂ ਨੂੰ ਲੋਡ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String get errorLoadingRecipes => 'ਪਕਵਾਨਾਂ ਨੂੰ ਲੋਡ ਕਰਨ ਵਿੱਚ ਤਰੁੱਟੀ';

  @override
  String get addIngredient => 'ਸਮੱਗਰੀ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get saveRecipe => 'ਸੇਵ ਕਰੋ';

  @override
  String get recipeName => 'ਵਿਅੰਜਨ ਦਾ ਨਾਮ';

  @override
  String get shortDescription => 'ਛੋਟਾ ਵੇਰਵਾ';

  @override
  String get prepTimeMinutes => 'ਤਿਆਰੀ ਦਾ ਸਮਾਂ (ਮਿੰਟ)';

  @override
  String get instructionsHint => 'ਪ੍ਰਤੀ ਲਾਈਨ ਇੱਕ ਕਦਮ ਟਾਈਪ ਕਰੋ...';

  @override
  String get addPhoto => 'ਫੋਟੋ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get imageUrlPlaceholder => 'ਜਾਂ ਇੱਕ ਚਿੱਤਰ URL ਪੇਸਟ ਕਰੋ';

  @override
  String get tags => 'ਟੈਗਸ';

  @override
  String get recipeTags => 'ਵਿਅੰਜਨ ਟੈਗ';

  @override
  String get suggestedTags => 'ਸੁਝਾਏ ਗਏ';

  @override
  String get searchRecipes => 'ਪਕਵਾਨਾ ਖੋਜੋ...';

  @override
  String get filterByTag => 'ਟੈਗ ਦੁਆਰਾ ਫਿਲਟਰ ਕਰੋ';

  @override
  String get allTags => 'ਸਾਰੇ';

  @override
  String get recipeDeleted => 'ਵਿਅੰਜਨ ਮਿਟਾਇਆ ਗਿਆ';

  @override
  String get saveChanges => 'ਤਬਦੀਲੀਆਂ ਨੂੰ ਸੁਰੱਖਿਅਤ ਕਰੋ';

  @override
  String get editRecipeTitle => 'ਵਿਅੰਜਨ ਦਾ ਸੰਪਾਦਨ ਕਰੋ';

  @override
  String get newRecipeTitle => 'ਨਵੀਂ ਵਿਅੰਜਨ';

  @override
  String get requiredField => 'ਲੋੜੀਂਦਾ ਹੈ';

  @override
  String get chooseImageSource => 'ਚਿੱਤਰ ਸਰੋਤ ਚੁਣੋ';

  @override
  String get gallery => 'ਗੈਲਰੀ';

  @override
  String get enterUrl => 'URL ਦਾਖਲ ਕਰੋ';

  @override
  String get recipeImage => 'ਵਿਅੰਜਨ ਚਿੱਤਰ';

  @override
  String get removeImage => 'ਚਿੱਤਰ ਨੂੰ ਹਟਾਓ';

  @override
  String get mealPlannerTitle => 'ਭੋਜਨ ਯੋਜਨਾਕਾਰ';

  @override
  String get mealPlannerViewMonthly => 'ਮਹੀਨਾਵਾਰ ਦ੍ਰਿਸ਼';

  @override
  String get mealPlannerViewWeekly => 'ਹਫਤਾਵਾਰੀ ਦ੍ਰਿਸ਼';

  @override
  String get mealPlannerNoMeals => 'ਭੋਜਨ ਦੀ ਕੋਈ ਯੋਜਨਾ ਨਹੀਂ ਹੈ';

  @override
  String get mealPlannerNoMealsHint => 'ਭੋਜਨ ਸ਼ਾਮਲ ਕਰਨ ਲਈ ਇੱਕ ਦਿਨ \'ਤੇ ਟੈਪ ਕਰੋ';

  @override
  String get mealPlannerLoading => 'ਭੋਜਨ ਯੋਜਨਾ ਨੂੰ ਲੋਡ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String get mealPlannerError => 'ਭੋਜਨ ਯੋਜਨਾ ਲੋਡ ਕਰਨ ਵਿੱਚ ਤਰੁੱਟੀ';

  @override
  String get mealPlannerAddMeal => 'ਭੋਜਨ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get mealPlannerEditMeal => 'ਭੋਜਨ ਦਾ ਸੰਪਾਦਨ ਕਰੋ';

  @override
  String get mealPlannerDeleteMeal => 'ਭੋਜਨ ਹਟਾਓ';

  @override
  String get mealPlannerMealDeleted => 'ਭੋਜਨ ਹਟਾਇਆ ਗਿਆ';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਸਰਵਿੰਗ',
      one: '$count ਸਰਵਿੰਗ',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'ਸਰਵਿੰਗ';

  @override
  String get mealPlannerNoteLabel => 'ਨੋਟ (ਵਿਕਲਪਿਕ)';

  @override
  String get mealPlannerSelectRecipe => 'ਇੱਕ ਵਿਅੰਜਨ ਚੁਣੋ';

  @override
  String get mealPlannerSearchRecipes => 'ਪਕਵਾਨਾ ਖੋਜੋ...';

  @override
  String get mealPlannerNoRecipesFound => 'ਕੋਈ ਪਕਵਾਨ ਨਹੀਂ ਮਿਲੇ';

  @override
  String get mealPlannerNoRecipesHint =>
      'ਪਹਿਲਾਂ ਰੈਸਿਪੀਜ਼ ਟੈਬ ਵਿੱਚ ਪਕਵਾਨਾਂ ਬਣਾਓ';

  @override
  String get mealPlannerSave => 'ਯੋਜਨਾ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total ਵਿੱਚੋਂ $count ਭੋਜਨ ਯੋਜਨਾਬੱਧ';
  }

  @override
  String get mealPlannerGenerateList => 'ਖਰੀਦਦਾਰੀ ਸੂਚੀ ਤਿਆਰ ਕਰੋ';

  @override
  String get mealPlannerGenerateListConfirm =>
      'ਕੀ ਇਸ ਹਫ਼ਤੇ ਯੋਜਨਾਬੱਧ ਭੋਜਨ ਤੋਂ ਸਾਰੀਆਂ ਸਮੱਗਰੀਆਂ ਨੂੰ ਆਪਣੀ ਖਰੀਦਦਾਰੀ ਸੂਚੀ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰਨਾ ਹੈ?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'ਤੁਹਾਡੀ ਸੂਚੀ ਵਿੱਚ $count ਸਮੱਗਰੀ ਸ਼ਾਮਲ ਕੀਤੀ ਗਈ ਹੈ!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ਜੋੜਨ ਲਈ ਕੋਈ ਸਮੱਗਰੀ ਨਹੀਂ। ਪਹਿਲਾਂ ਪਕਵਾਨਾਂ ਦੇ ਨਾਲ ਕੁਝ ਭੋਜਨ ਦੀ ਯੋਜਨਾ ਬਣਾਓ।';

  @override
  String get mealPlannerGenerateListNoList => 'ਪਹਿਲਾਂ ਇੱਕ ਖਰੀਦਦਾਰੀ ਸੂਚੀ ਬਣਾਓ।';

  @override
  String get mealPlannerMealTypeBreakfast => 'ਨਾਸ਼ਤਾ';

  @override
  String get mealPlannerMealTypeLunch => 'ਦੁਪਹਿਰ ਦਾ ਖਾਣਾ';

  @override
  String get mealPlannerMealTypeDinner => 'ਰਾਤ ਦਾ ਖਾਣਾ';

  @override
  String get mealPlannerMealTypeSnack => 'ਸਨੈਕ';

  @override
  String get mealPlannerDateLabel => 'ਮਿਤੀ';

  @override
  String get mealPlannerWeekEmpty => 'ਇਸ ਹਫ਼ਤੇ ਲਈ ਕੁਝ ਵੀ ਯੋਜਨਾਬੱਧ ਨਹੀਂ ਹੈ';

  @override
  String get mealPlannerWeekEmptyHint =>
      'ਆਪਣੇ ਭੋਜਨ ਦੀ ਯੋਜਨਾ ਬਣਾਉਣ ਲਈ ਕਿਸੇ ਵੀ ਦਿਨ ਟੈਪ ਕਰੋ!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes ਮਿੰਟ';
  }

  @override
  String get inviteToList => 'ਸੂਚੀ ਲਈ ਸੱਦਾ ਦਿਓ';

  @override
  String get shareApp => 'ਐਪ ਨੂੰ ਸਾਂਝਾ ਕਰੋ';

  @override
  String get shareAppDescription =>
      'KipiList ਦੀ ਵਰਤੋਂ ਕਰਨ ਲਈ ਦੋਸਤਾਂ ਨੂੰ ਸੱਦਾ ਦਿਓ';

  @override
  String shareReferralText(Object url) {
    return 'ਮੈਂ ਆਪਣੀ ਖਰੀਦਦਾਰੀ ਨੂੰ ਵਿਵਸਥਿਤ ਕਰਨ ਲਈ KipiList ਦੀ ਵਰਤੋਂ ਕਰ ਰਿਹਾ/ਰਹੀ ਹਾਂ! ਮੇਰੇ ਲਿੰਕ ਰਾਹੀਂ ਡਾਊਨਲੋਡ ਕਰੋ ਅਤੇ ਅਸੀਂ ਦੋਵਾਂ ਨੂੰ 7 ਦਿਨਾਂ ਦਾ ਪ੍ਰੀਮੀਅਮ ਮੁਫ਼ਤ ਮਿਲਦਾ ਹੈ: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList ਪ੍ਰੀਮੀਅਮ ਦੇ 7 ਦਿਨ ਪ੍ਰਾਪਤ ਕਰੋ!';
}
