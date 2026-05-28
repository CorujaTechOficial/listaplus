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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'ਸਿਸਟਮ ਡਿਫੌਲਟ';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

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
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

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
  String get newChat => 'New Chat';

  @override
  String get noHistory => 'No chat history';

  @override
  String get deleteSession => 'Delete Chat';

  @override
  String get deleteSessionConfirm =>
      'Are you sure you want to delete this chat? The messages will be permanently lost.';

  @override
  String get clearHistory => 'ਇਤਿਹਾਸ ਸਾਫ਼ ਕਰੋ';

  @override
  String get clearHistoryConfirm => 'ਇਸ ਸੈਸ਼ਨ ਦੇ ਸਾਰੇ ਸੁਨੇਹੇ ਸਾਫ਼ ਕਰੀਏ?';

  @override
  String get chatHint => 'ਆਪਣਾ ਸੁਨੇਹਾ ਲਿਖੋ...';

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
  String get listaPlusTitle => 'ਲਿਸਟਾ ਪਲੱਸ';

  @override
  String get loginPrompt => 'ਪ੍ਰੀਮੀਅਮ ਵਿਸ਼ੇਸ਼ਤਾਵਾਂ\nਅਨਲੌਕ ਕਰਨ ਲਈ ਲੌਗ ਇਨ ਕਰੋ';

  @override
  String get signInGoogle => 'Google ਨਾਲ ਸਾਈਨ ਇਨ ਕਰੋ';

  @override
  String get signInApple => 'Apple ਨਾਲ ਸਾਈਨ ਇਨ ਕਰੋ';

  @override
  String get continueAsGuest => 'ਮਹਿਮਾਨ ਵਜੋਂ ਜਾਰੀ ਰੱਖੋ';

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
    return 'ਲੌਗਇਨ ਗਲਤੀ: $error';
  }

  @override
  String get paywallTitle => 'ਲਿਸਟਾ ਪਲੱਸ ਪ੍ਰੀਮੀਅਮ';

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
      'ਆਪਣੀ ਲਿਸਟ ਦਾ ਪ੍ਰਬੰਧ ਕਰਨ ਲਈ ਕੁਦਰਤੀ ਢੰਗ ਨਾਲ ਬੋਲੋ!\n\nਉਦਾਹਰਣਾਂ:\n• \'ਰੋਟੀ, ਪਨੀਰ ਅਤੇ ਹੈਮ ਸ਼ਾਮਲ ਕਰੋ\'\n• \'ਲਾਂਡਰੀ ਡਿਟਰਜੈਂਟ ਹਟਾਓ\'\n• \'ਥੀਮ ਨੀਲਾ ਕਰੋ\'\n\nਇਹ ਲਿਸਟਾ ਪਲੱਸ ਪ੍ਰੀਮੀਅਮ ਦੀ ਵਿਸ਼ੇਸ਼ ਵਿਸ਼ੇਸ਼ਤਾ ਹੈ।';

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
      'ਤੁਹਾਡਾ ਸੁਝਾਅ ਪ੍ਰਾਪਤ ਹੋ ਗਿਆ ਹੈ ਅਤੇ ਇਹ Lista Plus ਨੂੰ ਸਭ ਲਈ ਬਿਹਤਰ ਬਣਾਉਣ ਵਿੱਚ ਸਾਡੀ ਮਦਦ ਕਰਦਾ ਹੈ।';

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

  @override
  String get mealPlannerTitle => 'Meal Planner';

  @override
  String get mealPlannerViewMonthly => 'Monthly view';

  @override
  String get mealPlannerViewWeekly => 'Weekly view';

  @override
  String get mealPlannerNoMeals => 'No meals planned';

  @override
  String get mealPlannerNoMealsHint => 'Tap a day to add a meal';

  @override
  String get mealPlannerLoading => 'Loading meal plan...';

  @override
  String get mealPlannerError => 'Error loading meal plan';

  @override
  String get mealPlannerAddMeal => 'Add Meal';

  @override
  String get mealPlannerEditMeal => 'Edit Meal';

  @override
  String get mealPlannerDeleteMeal => 'Remove meal';

  @override
  String get mealPlannerMealDeleted => 'Meal removed';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count servings',
      one: '$count serving',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Servings';

  @override
  String get mealPlannerNoteLabel => 'Note (optional)';

  @override
  String get mealPlannerSelectRecipe => 'Select a recipe';

  @override
  String get mealPlannerSearchRecipes => 'Search recipes...';

  @override
  String get mealPlannerNoRecipesFound => 'No recipes found';

  @override
  String get mealPlannerNoRecipesHint =>
      'Create recipes in the Recipes tab first';

  @override
  String get mealPlannerSave => 'Add to plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count of $total meals planned';
  }

  @override
  String get mealPlannerGenerateList => 'Generate shopping list';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Add all ingredients from planned meals this week to your shopping list?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingredient(s) added to your list!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'No ingredients to add. Plan some meals with recipes first.';

  @override
  String get mealPlannerGenerateListNoList => 'Create a shopping list first.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Breakfast';

  @override
  String get mealPlannerMealTypeLunch => 'Lunch';

  @override
  String get mealPlannerMealTypeDinner => 'Dinner';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Date';

  @override
  String get mealPlannerWeekEmpty => 'Nothing planned for this week';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tap any day to start planning your meals!';

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
