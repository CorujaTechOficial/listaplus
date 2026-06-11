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
  String get navChat => 'ਚੈਟ';

  @override
  String get navRecipes => 'ਪਕਵਾਨਾਂ';

  @override
  String get navLists => 'ਲਿਸਟਾਂ';

  @override
  String get navMealPlanner => 'ਮੀਨੂ';

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
  String get profile => 'ਪ੍ਰੋਫਾਈਲ';

  @override
  String get exitShoppingMode => 'ਸ਼ਾਪਿੰਗ ਮੋਡ ਤੋਂ ਬਾਹਰ ਜਾਓ';

  @override
  String get exit => 'ਨਿਕਾਸ';

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
  String get scanProductTitle => 'ਉਤਪਾਦ ਸਕੈਨ ਕਰੋ';

  @override
  String get positionBarcodeCenter => 'ਬਾਰਕੋਡ ਨੂੰ ਕੇਂਦਰ ਵਿੱਚ ਰੱਖੋ';

  @override
  String get product => 'ਉਤਪਾਦ';

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
  String get myAchievements => 'ਮੇਰੀਆਂ ਪ੍ਰਾਪਤੀਆਂ';

  @override
  String get itemsPurchased => 'ਆਈਟਮਾਂ ਖਰੀਦੀਆਂ ਗਈਆਂ';

  @override
  String get totalSavings => 'ਕੁੱਲ ਬਚਤ';

  @override
  String get currentStreak => 'ਮੌਜੂਦਾ ਸਟ੍ਰੀਕ';

  @override
  String streakDays(int count) {
    return '$days ਦਿਨ';
  }

  @override
  String get unlockedBadges => 'ਅਨਲੌਕ ਕੀਤੇ ਬੈਜ';

  @override
  String get badgeBeginner => 'ਸ਼ੁਰੂਆਤ ਕਰਨ ਵਾਲਾ';

  @override
  String get badgeOrganized => 'ਸੰਗਠਿਤ';

  @override
  String get badgeSavingMaster => 'ਸੇਵਿੰਗ ਮਾਸਟਰ';

  @override
  String get badgeSuperPlanner => 'ਸੁਪਰ ਪਲੈਨਰ';

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
  String progressItemsOf(int purchased, int total) {
    return '$total ਆਈਟਮਾਂ ਵਿੱਚੋਂ $purchased';
  }

  @override
  String progressBudget(String amount) {
    return 'ਬਜਟ: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'ਕੁੱਲ: $amount';
  }

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
  String get chatHintBlocked => 'ਚੈਟ ਕਰਨ ਲਈ AI ਨੂੰ ਅਨਲੌਕ ਕਰੋ';

  @override
  String chatError(String error) {
    return 'ਚੈਟ ਲੋਡ ਕਰਨ ਵਿੱਚ ਗਲਤੀ: $error';
  }

  @override
  String get aiAssistantTitle => 'AI ਸਹਾਇਕ';

  @override
  String get closeSheet => 'ਬੰਦ ਕਰੋ';

  @override
  String get scanBarcodeTitle => 'ਬਾਰਕੋਡ ਸਕੈਨ ਕਰੋ';

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
  String get aiLimitAlmostReached => 'AI ਸੁਨੇਹਿਆਂ ਵਿੱਚੋਂ ਲਗਭਗ ਬਾਹਰ';

  @override
  String get unlockAi => 'ਅਸੀਮਤ AI ਨੂੰ ਅਨਲੌਕ ਕਰੋ';

  @override
  String get aiTeaserFallback =>
      'ਪੂਰੇ ਜਵਾਬ ਨੂੰ ਅਨਲੌਕ ਕਰਨ ਲਈ ਪ੍ਰੀਮੀਅਮ ਦੇ ਗਾਹਕ ਬਣੋ ਅਤੇ ਆਪਣੀ ਖਰੀਦਦਾਰੀ ਲਈ ਅਸੀਮਤ AI ਸੁਝਾਅ ਪ੍ਰਾਪਤ ਕਰੋ...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI ਕਾਰਵਾਈਆਂ ਇਸ ਮਹੀਨੇ ਬਾਕੀ ਹਨ — ਅਸੀਮਤ ਲਈ ਅੱਪਗ੍ਰੇਡ ਕਰੋ';
  }

  @override
  String get aiUsageExhausted =>
      'ਮਹੀਨਾਵਾਰ AI ਸੀਮਾ ਪੂਰੀ ਹੋ ਗਈ ਹੈ। ਅਸੀਮਤ → ਲਈ ਪ੍ਰੋ \'ਤੇ ਅੱਪਗ੍ਰੇਡ ਕਰੋ';

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
  String get onboardingMaybeLater => 'ਸ਼ਾਇਦ ਬਾਅਦ ਵਿੱਚ';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'ਹੇ $name, ਆਪਣੀ ਖਰੀਦਦਾਰੀ ਨੂੰ ਸਹੀ ਤਰੀਕੇ ਨਾਲ ਵਿਵਸਥਿਤ ਕਰੋ।';
  }

  @override
  String get onboardingSlide1Title => 'ਸਮਾਰਟ ਸ਼ਾਪਿੰਗ ਸੂਚੀਆਂ';

  @override
  String get onboardingSlide1Body =>
      'ਸੂਚੀਆਂ ਨੂੰ ਤੁਰੰਤ ਬਣਾਓ ਅਤੇ ਸਾਂਝਾ ਕਰੋ। ਕੀਪੀ ਤੁਹਾਡੀਆਂ ਆਦਤਾਂ ਦੇ ਆਧਾਰ \'ਤੇ ਆਈਟਮਾਂ ਨੂੰ ਆਪਣੇ ਆਪ ਜੋੜਦਾ ਹੈ।';

  @override
  String get onboardingSlide2Title => 'ਕੀਪੀ ਨੂੰ ਮਿਲੋ';

  @override
  String get onboardingSlide2Body =>
      'ਕੁਝ ਵੀ ਪੁੱਛੋ — ਸੂਚੀਆਂ ਬਣਾਓ, ਪਕਵਾਨਾਂ ਲੱਭੋ, ਆਪਣੀ ਪੈਂਟਰੀ ਨੂੰ ਟ੍ਰੈਕ ਕਰੋ, ਆਪਣੇ ਹਫ਼ਤੇ ਦੀ ਯੋਜਨਾ ਬਣਾਓ।';

  @override
  String get onboardingSlide3Title => 'ਪੈਂਟਰੀ ਅਤੇ ਖਾਣੇ ਦੀ ਯੋਜਨਾ';

  @override
  String get onboardingSlide3Body =>
      'ਤੁਹਾਡੇ ਕੋਲ ਕੀ ਹੈ ਉਸ ਨੂੰ ਟ੍ਰੈਕ ਕਰੋ, ਭੋਜਨ ਦੀ ਯੋਜਨਾ ਬਣਾਓ, ਅਤੇ ਖਰੀਦਦਾਰੀ ਸੂਚੀਆਂ ਆਪਣੇ ਆਪ ਤਿਆਰ ਕਰੋ।';

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
  String get paywallLoadingError =>
      'ਪੇਸ਼ਕਸ਼ਾਂ ਨੂੰ ਲੋਡ ਕਰਨ ਵਿੱਚ ਤਰੁੱਟੀ। ਫਿਰ ਕੋਸ਼ਿਸ਼ ਕਰੋ.';

  @override
  String get paywallPurchaseError =>
      'ਖਰੀਦ ਪੂਰੀ ਨਹੀਂ ਕੀਤੀ ਜਾ ਸਕੀ। ਫਿਰ ਕੋਸ਼ਿਸ਼ ਕਰੋ.';

  @override
  String get paywallRestoreError =>
      'ਰੀਸਟੋਰ ਕਰਨ ਲਈ ਕੋਈ ਕਿਰਿਆਸ਼ੀਲ ਗਾਹਕੀ ਨਹੀਂ ਮਿਲੀ।';

  @override
  String paywallTrialDays(Object days) {
    return '$days ਦਿਨ ਮੁਫ਼ਤ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਹਫ਼ਤੇ ਮੁਫ਼ਤ',
      one: '$count ਹਫ਼ਤਾ ਮੁਫ਼ਤ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਮਹੀਨੇ ਮੁਫ਼ਤ',
      one: '$count ਮਹੀਨਾ ਮੁਫ਼ਤ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'KipiList Pro ਨੂੰ 7 ਦਿਨਾਂ ਲਈ ਮੁਫ਼ਤ ਅਜ਼ਮਾਓ';

  @override
  String get paywallTrialSubtitle => 'ਕਿਸੇ ਵੀ ਸਮੇਂ ਰੱਦ ਕਰੋ। ਅੱਜ ਕੋਈ ਚਾਰਜ ਨਹੀਂ।';

  @override
  String get paywallTrialCta => 'ਮੁਫ਼ਤ ਅਜ਼ਮਾਇਸ਼ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get recipeAddToList => 'ਖਰੀਦਦਾਰੀ ਸੂਚੀ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ਸਮੱਗਰੀ $listName ਵਿੱਚ ਸ਼ਾਮਲ ਕੀਤੀ ਗਈ';
  }

  @override
  String get noListSelected => 'ਕੋਈ ਸੂਚੀ ਨਹੀਂ ਚੁਣੀ ਗਈ। ਪਹਿਲਾਂ ਇੱਕ ਸੂਚੀ ਖੋਲ੍ਹੋ।';

  @override
  String get paywallFeaturesTitle => 'ਹਰ ਚੀਜ਼ ਜਿਸਦੀ ਤੁਹਾਨੂੰ ਲੋੜ ਹੈ:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI ਤੁਹਾਡੀ ਸੂਚੀ ਨੂੰ ਆਪਣੇ ਆਪ ਵਿਵਸਥਿਤ ਕਰਦਾ ਹੈ';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'ਜਿੰਨੀਆਂ ਤੁਹਾਨੂੰ ਲੋੜ ਹੈ, ਉੱਨੀਆਂ ਸੂਚੀਆਂ ਬਣਾਓ';

  @override
  String get paywallFeatureDescSharing => 'ਰੀਅਲ ਟਾਈਮ ਵਿੱਚ ਇਕੱਠੇ ਖਰੀਦਦਾਰੀ ਕਰੋ';

  @override
  String get paywallFeatureDescPantry => 'ਤੁਹਾਡੇ ਘਰ ਵਿੱਚ ਕੀ ਹੈ ਉਸ ਨੂੰ ਟਰੈਕ ਕਰੋ';

  @override
  String get paywallFeatureDescBudget => 'ਹਰ ਮਹੀਨੇ ਬਜਟ \'ਤੇ ਰਹੋ';

  @override
  String get paywallFeatureUnlimitedLists => 'ਅਸੀਮਤ ਸੂਚੀਆਂ';

  @override
  String get paywallFeatureSmartAI => 'ਸਮਾਰਟ ਏ.ਆਈ';

  @override
  String get paywallFeatureExpenseControl => 'ਖਰਚ ਕੰਟਰੋਲ';

  @override
  String get paywallFeatureSharing => 'ਸਾਂਝਾ ਕਰਨਾ';

  @override
  String get paywallBeforeAfterTitle => 'AI ਪਹਿਲਾਂ ਅਤੇ ਬਾਅਦ ਵਿੱਚ:';

  @override
  String get paywallLabelCommon => 'ਆਮ';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ਚੌਲ';

  @override
  String get paywallBeforeItem2 => 'ਸਾਬਣ';

  @override
  String get paywallBeforeItem3 => 'ਮੀਟ';

  @override
  String get paywallBeforeItem4 => 'ਰੋਟੀ';

  @override
  String get paywallAfterItem1 => 'ਅਨਾਜ';

  @override
  String get paywallAfterItem2 => 'ਸਫਾਈ';

  @override
  String get paywallAfterItem3 => 'ਮੀਟ';

  @override
  String get paywallAfterItem4 => 'ਬੇਕਰੀ';

  @override
  String get paywallTestimonialsTitle => 'ਸਾਡੇ ਉਪਭੋਗਤਾ ਕੀ ਕਹਿੰਦੇ ਹਨ:';

  @override
  String get paywallTestimonial1Name => 'ਐਨ ਐਸ.';

  @override
  String get paywallTestimonial1Text =>
      'AI ਮੇਰੀ ਖਰੀਦਦਾਰੀ ਨੂੰ ਸਕਿੰਟਾਂ ਵਿੱਚ ਵਿਵਸਥਿਤ ਕਰਦਾ ਹੈ। ਮੈਂ ਪ੍ਰਤੀ ਮਾਰਕੀਟ ਯਾਤਰਾ 20 ਮਿੰਟ ਬਚਾਉਂਦਾ ਹਾਂ।';

  @override
  String get paywallTestimonial2Name => 'ਚਾਰਲਸ ਐੱਮ.';

  @override
  String get paywallTestimonial2Text =>
      'ਮੈਂ ਇੱਕ ਸੂਚੀ ਆਈਟਮ ਨੂੰ ਦੁਬਾਰਾ ਕਦੇ ਨਹੀਂ ਭੁੱਲਿਆ. ਏਆਈ ਚੈਟ ਸਨਸਨੀਖੇਜ਼ ਹੈ!';

  @override
  String get paywallSocialProof => '+2,400 ਪਰਿਵਾਰ ਇਸ ਦੀ ਵਰਤੋਂ ਕਰਦੇ ਹਨ';

  @override
  String get paywallCtaUnlock => 'PRO ਨੂੰ ਅਨਲੌਕ ਕਰੋ';

  @override
  String get paywallBestValue => 'ਸਭ ਤੋਂ ਵਧੀਆ ਮੁੱਲ';

  @override
  String get paywallMostPopular => 'ਸਭ ਤੋਂ ਵੱਧ ਪ੍ਰਸਿੱਧ';

  @override
  String get paywallProLabel => 'ਪ੍ਰੋ';

  @override
  String get paywallSafeCheckout => 'ਸੁਰੱਖਿਅਤ ਭੁਗਤਾਨ';

  @override
  String get paywallSelectPlan => 'ਆਪਣੀ ਯੋਜਨਾ ਚੁਣੋ:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% ਬਚਾਓ';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'ਸਿਰਫ਼ $price/ਮਹੀਨਾ';
  }

  @override
  String get paywallPackageAnnual => 'ਸਾਲਾਨਾ ਯੋਜਨਾ';

  @override
  String get paywallPackageMonthly => 'ਮਹੀਨਾਵਾਰ ਯੋਜਨਾ';

  @override
  String get paywallPackageLifetime => 'ਲਾਈਫਟਾਈਮ ਐਕਸੈਸ';

  @override
  String get paywallCancelAnytime => 'ਕਿਸੇ ਵੀ ਸਮੇਂ ਰੱਦ ਕਰੋ। ਕੋਈ ਵਚਨਬੱਧਤਾ ਨਹੀਂ।';

  @override
  String paywallTrialInCard(int days) {
    return 'ਪਹਿਲੇ $days ਦਿਨ ਮੁਫ਼ਤ';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Play ਦੁਆਰਾ ਸੁਰੱਖਿਅਤ · ਕਿਸੇ ਵੀ ਸਮੇਂ ਰੱਦ ਕਰੋ';

  @override
  String get paywallPolicy => 'ਪਰਾਈਵੇਟ ਨੀਤੀ';

  @override
  String get paywallTerms => 'ਵਰਤੋ ਦੀਆਂ ਸ਼ਰਤਾਂ';

  @override
  String get paywallRestore => 'ਰੀਸਟੋਰ ਕਰੋ';

  @override
  String get paywallHeroHeadline => 'Kipi AI ਹਮੇਸ਼ਾ ਤੁਹਾਡੇ ਨਾਲ';

  @override
  String get paywallHeroSubtitle =>
      'ਆਈਟਮਾਂ ਸ਼ਾਮਲ ਕਰੋ, ਸੂਚੀਆਂ ਨੂੰ ਵਿਵਸਥਿਤ ਕਰੋ ਅਤੇ ਆਪਣੀ ਜੇਬ ਵਿੱਚ AI ਨਾਲ ਸਮਾਂ ਬਚਾਓ';

  @override
  String get paywallBenefit1Desc =>
      '24/7 ਆਈਟਮਾਂ ਨੂੰ ਜੋੜਦਾ, ਸੰਗਠਿਤ ਕਰਦਾ ਅਤੇ ਸੁਝਾਅ ਦਿੰਦਾ ਹੈ';

  @override
  String get paywallBenefit2Desc => 'ਕੋਈ 3-ਸੂਚੀ ਸੀਮਾ ਨਹੀਂ';

  @override
  String get paywallBenefit3Desc => 'ਖਰਚੇ ਦੀ ਟਰੈਕਿੰਗ ਅਤੇ ਪਰਿਵਾਰਕ ਸੂਚੀਆਂ';

  @override
  String get paywallPackageMonthlyDesc => 'ਪੂਰੀ ਲਚਕਤਾ';

  @override
  String paywallCtaTrialDays(int days) {
    return 'ਮੁਫ਼ਤ ਸ਼ੁਰੂ ਕਰੋ — $days ਦਿਨ';
  }

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
  String shareReferralText(String url) {
    return 'ਮੈਂ ਆਪਣੀ ਖਰੀਦਦਾਰੀ ਨੂੰ ਵਿਵਸਥਿਤ ਕਰਨ ਲਈ KipiList ਦੀ ਵਰਤੋਂ ਕਰ ਰਿਹਾ/ਰਹੀ ਹਾਂ! ਮੇਰੇ ਲਿੰਕ ਰਾਹੀਂ ਡਾਊਨਲੋਡ ਕਰੋ ਅਤੇ ਅਸੀਂ ਦੋਵਾਂ ਨੂੰ 7 ਦਿਨਾਂ ਦਾ ਪ੍ਰੀਮੀਅਮ ਮੁਫ਼ਤ ਮਿਲਦਾ ਹੈ: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList ਪ੍ਰੀਮੀਅਮ ਦੇ 7 ਦਿਨ ਪ੍ਰਾਪਤ ਕਰੋ!';

  @override
  String get gestureHint => 'ਚੁਣਨ ਲਈ ਹੋਲਡ ਕਰੋ • ਹਟਾਉਣ ਲਈ ਸਵਾਈਪ ਕਰੋ';

  @override
  String get catalogTitle => 'ਕੈਟਾਲਾਗ';

  @override
  String get catalogMyFrequents => 'ਮੇਰੀ ਬਾਰੰਬਾਰਤਾ';

  @override
  String get catalogSearchGlobal => 'ਕੋਈ ਵੀ ਉਤਪਾਦ ਖੋਜੋ...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category ਵਿੱਚ ਖੋਜੋ...';
  }

  @override
  String get catalogSortPopular => 'ਸਭ ਤੋਂ ਵੱਧ ਪ੍ਰਸਿੱਧ';

  @override
  String get catalogSortAZ => 'A-Z';

  @override
  String get catalogFilterNational => 'ਨਾਗਰਿਕ';

  @override
  String get catalogRareSection => 'ਤੁਹਾਡੇ ਦੇਸ਼ ਵਿੱਚ ਘੱਟ ਆਮ ਹੈ';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 → ਸ਼ਾਮਲ ਕਰੋ';
  }

  @override
  String get catalogProductNotFound => 'ਉਤਪਾਦ ਨਹੀਂ ਮਿਲਿਆ, ਨਾਮ ਟਾਈਪ ਕਰੋ';

  @override
  String get catalogBrowse => 'ਕੈਟਾਲਾਗ ਬ੍ਰਾਊਜ਼ ਕਰੋ';

  @override
  String get offlineBanner => 'ਤੁਸੀਂ ਔਫਲਾਈਨ ਹੋ';

  @override
  String get consentTitle => 'ਗੋਪਨੀਯਤਾ ਅਤੇ ਵਿਸ਼ਲੇਸ਼ਣ';

  @override
  String get consentBody =>
      'KipiList ਤੁਹਾਡੇ ਅਨੁਭਵ ਨੂੰ ਬਿਹਤਰ ਬਣਾਉਣ ਲਈ ਫਾਇਰਬੇਸ ਵਿਸ਼ਲੇਸ਼ਣ ਦੀ ਵਰਤੋਂ ਕਰਦਾ ਹੈ। ਤੁਹਾਡੇ ਡੇਟਾ ਦੀ ਪ੍ਰਕਿਰਿਆ ਸਾਡੀ ਗੋਪਨੀਯਤਾ ਨੀਤੀ ਦੇ ਅਨੁਸਾਰ ਕੀਤੀ ਜਾਂਦੀ ਹੈ।';

  @override
  String get consentAccept => 'ਸਵੀਕਾਰ ਕਰੋ';

  @override
  String get consentDecline => 'ਨਹੀਂ ਧੰਨਵਾਦ';

  @override
  String get mealPlannerPantryAllAvailable => 'ਭੰਡਾਰ ਵਿੱਚ';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ਗੁੰਮ ਆਈਟਮ',
      one: '$count ਗੁੰਮ ਆਈਟਮ',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'ਅੰਤ ਦੀ ਤਾਰੀਖ';

  @override
  String get notInformed => 'ਜਾਣਕਾਰੀ ਨਹੀਂ ਦਿੱਤੀ ਗਈ';

  @override
  String get skip => 'ਛੱਡੋ';

  @override
  String get onboardingAiTitle => 'ਕੀਪੀ ਨਾਲ ਗੱਲਬਾਤ ਕਰੋ';

  @override
  String get onboardingAiGreeting =>
      'ਹੈਲੋ! ਮੈਂ ਕਿਪੀ ਹਾਂ, ਤੁਹਾਡਾ ਨਿੱਜੀ ਖਰੀਦਦਾਰੀ ਸਹਾਇਕ! 🛒';

  @override
  String get onboardingAiAskName => 'ਤੁਹਾਡਾ ਨਾਮ ਕੀ ਹੈ?';

  @override
  String get onboardingAiNameHint => 'ਆਪਣਾ ਨਾਮ ਟਾਈਪ ਕਰੋ...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'ਤੁਹਾਨੂੰ ਮਿਲ ਕੇ ਖੁਸ਼ੀ ਹੋਈ, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'ਤੁਹਾਡਾ ਮਨਪਸੰਦ ਭੋਜਨ ਕੀ ਹੈ?';

  @override
  String get onboardingAiFoodHint => 'ਜਿਵੇਂ ਕਿ ਪੀਜ਼ਾ, ਸੁਸ਼ੀ...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'ਸ਼ਾਨਦਾਰ ਵਿਕਲਪ! ਇਹ ਉਹ ਹੈ ਜੋ ਮੈਂ ਤੁਹਾਡੀ ਸੂਚੀ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰਾਂਗਾ:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'ਕੀ ਇਹ ਵਧੀਆ ਲੱਗ ਰਿਹਾ ਹੈ? ਕੁਝ ਹੋਰ ਟਾਈਪ ਕਰਨ ਦੀ ਕੋਸ਼ਿਸ਼ ਕਰੋ!';

  @override
  String get onboardingAiReady =>
      'ਬਹੁਤ ਵਧੀਆ! ਤੁਸੀਂ ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਤਿਆਰ ਹੋ। ਚਲੋ ਤੁਹਾਡਾ ਖਾਤਾ ਸੈਟ ਅਪ ਕਰੀਏ!';

  @override
  String get onboardingAiContinue => 'ਜਾਰੀ ਰੱਖੋ →';

  @override
  String get connectionError => 'ਕਨੈਕਸ਼ਨ ਗਲਤੀ';

  @override
  String connectionErrorDesc(String error) {
    return 'ਸਰਵਰ ਨਾਲ ਕਨੈਕਟ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਿਆ। ਆਪਣੇ ਇੰਟਰਨੈੱਟ ਦੀ ਜਾਂਚ ਕਰੋ।\n($error)';
  }

  @override
  String get errorLoadingLists => 'ਸੂਚੀਆਂ ਨੂੰ ਲੋਡ ਕਰਨ ਵਿੱਚ ਤਰੁੱਟੀ';

  @override
  String get noListsFound => 'ਕੋਈ ਸੂਚੀਆਂ ਨਹੀਂ ਮਿਲੀਆਂ';

  @override
  String get backToToday => 'ਅੱਜ \'ਤੇ ਵਾਪਸ ਜਾਓ';

  @override
  String get quickSuggestions => 'ਤੇਜ਼ ਸੁਝਾਅ';

  @override
  String get aiEnergyLow => 'ਘੱਟ AI ਊਰਜਾ';

  @override
  String get aiUnlockUnlimited => 'ਅਸੀਮਤ AI ਨੂੰ ਅਨਲੌਕ ਕਰੋ';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 ਅੱਜ';
  }

  @override
  String get aiSubscribeUnlimited => 'ਅਸੀਮਤ AI ਲਈ ਗਾਹਕ ਬਣੋ';

  @override
  String get unlockWithAd => 'ਵਿਗਿਆਪਨ ਨਾਲ ਅਨਲੌਕ ਕਰੋ';

  @override
  String get conversationHistoryTitle => 'ਗੱਲਬਾਤ ਦਾ ਇਤਿਹਾਸ';

  @override
  String get noConversationsFound => 'ਕੋਈ ਗੱਲਬਾਤ ਨਹੀਂ ਮਿਲੀ';

  @override
  String get errorLoadingHistory => 'ਇਤਿਹਾਸ ਲੋਡ ਕਰਨ ਵਿੱਚ ਤਰੁੱਟੀ';

  @override
  String get deleteConversationTitle => 'ਕੀ ਗੱਲਬਾਤ ਨੂੰ ਮਿਟਾਉਣਾ ਹੈ?';

  @override
  String get deleteConversationConfirm =>
      'ਇਸ ਕਾਰਵਾਈ ਨੂੰ ਅਣਕੀਤਾ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';

  @override
  String get deleteConversation => 'ਮਿਟਾਓ';

  @override
  String get subscription => 'ਗਾਹਕੀ';

  @override
  String get kipiListProActive => 'KipiList Pro ਐਕਟਿਵ';

  @override
  String get unlockPremiumTitle => 'ਅਸੀਮਤ ਸੂਚੀਆਂ, AI ਅਤੇ ਹੋਰ ਨੂੰ ਅਨਲੌਕ ਕਰੋ';

  @override
  String get loadingSubscription => 'ਗਾਹਕੀ ਲੋਡ ਕੀਤੀ ਜਾ ਰਹੀ ਹੈ...';

  @override
  String get errorLoadingSubscription => 'ਗਾਹਕੀ ਲੋਡ ਕਰਨ ਵਿੱਚ ਤਰੁੱਟੀ';

  @override
  String get profileSection => 'ਪ੍ਰੋਫਾਈਲ';

  @override
  String get myProfile => 'ਮੇਰੀ ਪ੍ਰੋਫ਼ਾਈਲ';

  @override
  String get profileSubtitle => 'AI ਸਹਾਇਕ ਲਈ ਨਿੱਜੀ ਤਰਜੀਹਾਂ';

  @override
  String get customizeAiAssistant => 'AI ਸਹਾਇਕ ਨੂੰ ਅਨੁਕੂਲਿਤ ਕਰੋ';

  @override
  String get assistantHistory => 'ਸਹਾਇਕ ਇਤਿਹਾਸ';

  @override
  String get assistantHistorySubtitle => 'ਆਪਣੀ ਗੱਲਬਾਤ ਦਾ ਇਤਿਹਾਸ ਦੇਖੋ';

  @override
  String get manageCategories => 'ਸ਼੍ਰੇਣੀਆਂ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ';

  @override
  String get manageCategoriesSubtitle => 'ਆਈਟਮ ਸ਼੍ਰੇਣੀਆਂ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ';

  @override
  String get customizeAssistant => 'ਅਨੁਕੂਲਿਤ ਕਰੋ';

  @override
  String get assistantName => 'ਸਹਾਇਕ ਦਾ ਨਾਮ';

  @override
  String get chooseIcon => 'ਆਈਕਨ ਚੁਣੋ';

  @override
  String get profileSaved => 'ਪ੍ਰੋਫਾਈਲ ਸਫਲਤਾਪੂਰਵਕ ਸੁਰੱਖਿਅਤ ਕੀਤੀ ਗਈ!';

  @override
  String get errorSavingProfile => 'ਸੰਭਾਲਣ ਵਿੱਚ ਤਰੁੱਟੀ: null';

  @override
  String get userProfile => 'ਯੂਜ਼ਰ ਪ੍ਰੋਫ਼ਾਈਲ';

  @override
  String get profileDescription =>
      'ਸਾਨੂੰ ਆਪਣੀਆਂ ਨਿੱਜੀ ਤਰਜੀਹਾਂ ਦੱਸੋ ਤਾਂ ਕਿ AI ਸਹਾਇਕ ਵਿਅਕਤੀਗਤ ਆਈਟਮਾਂ ਅਤੇ ਪਕਵਾਨਾਂ ਦਾ ਸੁਝਾਅ ਦੇ ਸਕੇ।';

  @override
  String get preferredMarket => 'ਤਰਜੀਹੀ ਮਾਰਕੀਟ';

  @override
  String get preferredMarketHint => 'ਉਦਾਹਰਨ ਲਈ: ਸੁਪਰਮਾਰਕੀਟ ਐਕਸ';

  @override
  String get dietaryRestrictions => 'ਖੁਰਾਕ ਸੰਬੰਧੀ ਪਾਬੰਦੀਆਂ';

  @override
  String get dietaryRestrictionsHint =>
      'ਉਦਾਹਰਨ ਲਈ: ਸ਼ਾਕਾਹਾਰੀ, ਸ਼ਾਕਾਹਾਰੀ, ਗਲੁਟਨ-ਮੁਕਤ';

  @override
  String get marketsToAvoid => 'ਬਚਣ ਲਈ ਬਾਜ਼ਾਰ';

  @override
  String get marketsToAvoidHint => 'ਉਦਾਹਰਨ: Market Y, Market Z';

  @override
  String get observations => 'ਨੋਟਸ';

  @override
  String get observationsHint => 'ਸਹਾਇਕ ਲਈ ਹੋਰ ਤਰਜੀਹਾਂ';

  @override
  String get saveProfile => 'ਪ੍ਰੋਫਾਈਲ ਸੁਰੱਖਿਅਤ ਕਰੋ';

  @override
  String get everythingReady => 'ਸਭ ਕੁਝ ਤਿਆਰ ਹੈ!';

  @override
  String get youCompletedList => 'ਤੁਸੀਂ ਸੂਚੀ ਪੂਰੀ ਕਰ ਲਈ ਹੈ!';

  @override
  String get selectCheaperAlternative =>
      'ਲਾਗਤ ਨੂੰ ਅਨੁਕੂਲ ਬਣਾਉਣ ਲਈ ਇੱਕ ਸਸਤਾ ਉਤਪਾਦ ਵਿਕਲਪ ਚੁਣੋ।';

  @override
  String get suggestedItems => 'ਸੁਝਾਏ ਗਏ ਆਈਟਮਾਂ';

  @override
  String get swapped => 'ਸਵੈਪ ਕੀਤਾ';

  @override
  String get swap => 'ਸਵੈਪ';

  @override
  String get chooseThemeColor => 'ਥੀਮ ਦਾ ਰੰਗ ਚੁਣੋ';

  @override
  String get manageCategoriesTitle => 'ਸ਼੍ਰੇਣੀਆਂ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ';

  @override
  String get categoryLimitReached =>
      'ਮੁਫਤ ਸੰਸਕਰਣ \'ਤੇ 10 ਸ਼੍ਰੇਣੀਆਂ ਦੀ ਸੀਮਾ। ਪ੍ਰੋ \'ਤੇ ਅੱਪਗ੍ਰੇਡ ਕਰੋ!';

  @override
  String get deleteCategoryTitle => 'ਸ਼੍ਰੇਣੀ ਮਿਟਾਓ';

  @override
  String deleteCategoryConfirm(String category) {
    return 'ਸ਼੍ਰੇਣੀ \"$category\" ਵਿੱਚ ਆਈਟਮਾਂ ਨੂੰ \"ਹੋਰ\" ਵਿੱਚ ਭੇਜਿਆ ਜਾਵੇਗਾ।\nਜਾਰੀ ਰੱਖਣਾ ਹੈ?';
  }

  @override
  String get deleteCategory => 'ਮਿਟਾਓ';

  @override
  String get newCategoryDialog => 'ਨਵੀਂ ਸ਼੍ਰੇਣੀ';

  @override
  String get editCategoryDialog => 'ਸ਼੍ਰੇਣੀ ਦਾ ਸੰਪਾਦਨ ਕਰੋ';

  @override
  String get categoryName => 'ਸ਼੍ਰੇਣੀ ਦਾ ਨਾਮ';

  @override
  String get categoryNameHint => 'ਉਦਾਹਰਨ ਲਈ: ਮੀਟ';

  @override
  String get categoryColorLabel => 'ਰੰਗ';

  @override
  String get categoryIconLabel => 'ਆਈਕਨ';

  @override
  String itemAddedSnack(String name) {
    return '$name ਸ਼ਾਮਲ ਕੀਤਾ ਗਿਆ';
  }

  @override
  String get kipiQuickBarHint => 'ਤੁਹਾਨੂੰ ਕੀ ਖਰੀਦਣ ਦੀ ਲੋੜ ਹੈ?';

  @override
  String replaceItem(String item) {
    return '$item ਬਦਲੋ';
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
  String get onboardingHookHeadline => 'ਕਰਿਆਨੇ ਦੀ ਵਸਤੂ ਨੂੰ ਦੁਬਾਰਾ ਕਦੇ ਨਾ ਭੁੱਲੋ';

  @override
  String get onboardingGoalSaveMoney => 'ਪੈਸੇ ਬਚਾਓ';

  @override
  String get onboardingGoalNeverForget => 'ਚੀਜ਼ਾਂ ਨੂੰ ਕਦੇ ਨਾ ਭੁੱਲੋ';

  @override
  String get onboardingGoalFaster => 'ਤੇਜ਼ੀ ਨਾਲ ਖਰੀਦਦਾਰੀ ਕਰੋ';

  @override
  String get onboardingGoalFamily => 'ਪਰਿਵਾਰਕ ਖਰੀਦਦਾਰੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ';

  @override
  String get onboardingGoalRecipes => 'ਪਕਵਾਨਾਂ ਦੀ ਖੋਜ ਕਰੋ';

  @override
  String get onboardingGoalPantry => 'ਪੈਂਟਰੀ ਨੂੰ ਟਰੈਕ ਕਰੋ';

  @override
  String get onboardingCommitmentsTitle => 'ਤੁਹਾਡੇ ਲਈ ਕੀ ਮਾਇਨੇ ਰੱਖਦਾ ਹੈ?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'KipiList ਨੂੰ ਨਿੱਜੀ ਬਣਾਉਣ ਲਈ ਆਪਣੇ ਟੀਚਿਆਂ ਨੂੰ ਚੁਣੋ';

  @override
  String get onboardingCommitmentsCta => 'ਚਲਾਂ ਚਲਦੇ ਹਾਂ!';

  @override
  String get onboardingPersonalizationNameLabel => 'ਤੁਹਾਡਾ ਨਾਮ';

  @override
  String get onboardingPersonalizationNameHint => 'ਆਪਣਾ ਨਾਮ ਦਰਜ ਕਰੋ';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'ਤੁਸੀਂ ਕਿਸ ਲਈ ਖਰੀਦਦਾਰੀ ਕਰਦੇ ਹੋ?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'ਤੁਸੀਂ ਕਿਸ ਲਈ ਖਰੀਦਦਾਰੀ ਕਰਦੇ ਹੋ?';

  @override
  String get onboardingCategoryGrocery => 'ਕਰਿਆਨੇ';

  @override
  String get onboardingCategoryPharmacy => 'ਫਾਰਮੇਸੀ';

  @override
  String get onboardingCategoryRecipes => 'ਪਕਵਾਨਾਂ';

  @override
  String get onboardingCategoryHome => 'ਘਰ';

  @override
  String get onboardingCategoryPet => 'ਪਾਲਤੂ';

  @override
  String get onboardingGroupSolo => 'ਸਿਰਫ ਮੈਂ';

  @override
  String get onboardingGroupCouple => 'ਜੋੜਾ';

  @override
  String get onboardingGroupFamily => 'ਪਰਿਵਾਰ';

  @override
  String get onboardingLoadingTitle =>
      'ਤੁਹਾਡੇ ਅਨੁਭਵ ਨੂੰ ਤਿਆਰ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String get onboardingLoadingStep1 =>
      'ਤੁਹਾਡੀਆਂ ਤਰਜੀਹਾਂ ਦਾ ਵਿਸ਼ਲੇਸ਼ਣ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String get onboardingLoadingStep2 => 'AI ਸਹਾਇਕ ਸੈੱਟਅੱਪ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String get onboardingLoadingStep3 => 'ਲਗਭਗ ਤਿਆਰ...';

  @override
  String get onboardingLoadingStat1Label => 'ਸੂਚੀਬੱਧ ਆਈਟਮਾਂ';

  @override
  String get onboardingLoadingStat2Label => 'ਉਪਭੋਗਤਾਵਾਂ ਨੇ ਮਦਦ ਕੀਤੀ';

  @override
  String get onboardingLoadingStat3Label => 'ਮਿੰਟ ਬਚਾਏ ਗਏ';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, ਹਰ ਯਾਤਰਾ \'ਤੇ ਬਚਤ ਕਰੋ!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, ਇੱਕ ਆਈਟਮ ਨੂੰ ਕਦੇ ਨਾ ਭੁੱਲੋ!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, ਅੱਧੇ ਸਮੇਂ ਵਿੱਚ ਖਰੀਦਦਾਰੀ ਕਰੋ!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, ਪਰਿਵਾਰਕ ਖਰੀਦਦਾਰੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, ਨਵੀਆਂ ਪਕਵਾਨਾਂ ਦੀ ਖੋਜ ਕਰੋ!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, ਆਪਣੀ ਪੈਂਟਰੀ ਨੂੰ ਪੂਰੀ ਤਰ੍ਹਾਂ ਟ੍ਰੈਕ ਕਰੋ!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'ਹਰ ਯਾਤਰਾ \'ਤੇ ਬਚਾਓ!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'ਇੱਕ ਆਈਟਮ ਨੂੰ ਕਦੇ ਨਾ ਭੁੱਲੋ!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'ਅੱਧੇ ਸਮੇਂ ਵਿੱਚ ਖਰੀਦਦਾਰੀ ਕਰੋ!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'ਪਰਿਵਾਰਕ ਖਰੀਦਦਾਰੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'ਨਵੀਆਂ ਪਕਵਾਨਾਂ ਦੀ ਖੋਜ ਕਰੋ!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'ਆਪਣੀ ਪੈਂਟਰੀ ਨੂੰ ਪੂਰੀ ਤਰ੍ਹਾਂ ਟ੍ਰੈਕ ਕਰੋ!';

  @override
  String paywallPricePerDay(String price) {
    return 'ਸਿਰਫ਼ $price/ਦਿਨ — ਇੱਕ ਕੌਫ਼ੀ ਤੋਂ ਘੱਟ';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'ਹੁਣ ਲਈ ਛੱਡੋ';

  @override
  String get paywallTestimonial =>
      'AI ਮੇਰੀ ਖਰੀਦਦਾਰੀ ਨੂੰ ਸਕਿੰਟਾਂ ਵਿੱਚ ਵਿਵਸਥਿਤ ਕਰਦਾ ਹੈ। ਮੈਂ ਪ੍ਰਤੀ ਯਾਤਰਾ 20 ਮਿੰਟ ਬਚਾਉਂਦਾ ਹਾਂ।';

  @override
  String get paywallTestimonialAuthor => 'ਐਨ ਐਸ.';

  @override
  String get paywallTrialDisclaimer =>
      'ਕਿਸੇ ਵੀ ਸਮੇਂ ਰੱਦ ਕਰੋ · ਤੁਹਾਡੀ ਪਰਖ ਖਤਮ ਹੋਣ ਤੱਕ ਕੋਈ ਚਾਰਜ ਨਹੀਂ ਹੈ';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'ਹੇ $name! ਤੁਹਾਨੂੰ ਕਿਸ $category ਦੀ ਲੋੜ ਹੈ?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'ਤੁਹਾਨੂੰ ਕਿਸ $category ਦੀ ਲੋੜ ਹੈ?';
  }

  @override
  String get onboardingAiDemoYes => 'ਹਾਂ!';

  @override
  String get onboardingAiDemoReaction => 'ਵਧੀਆ!';

  @override
  String get onboardingAiDemoChange => 'ਆਈਟਮ ਬਦਲੋ';

  @override
  String get onboardingAiDemoOffer => 'ਕੁਝ ਹੋਰ ਟਾਈਪ ਕਰਨ ਦੀ ਕੋਸ਼ਿਸ਼ ਕਰੋ!';

  @override
  String get onboardingAiDemoContinue => 'ਜਾਰੀ ਰੱਖੋ';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'ਤੁਹਾਡੀ ਖਰੀਦਦਾਰੀ ਸੂਚੀ, ਹੁਣ AI ਨਾਲ';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'ਦੇਖੋ ਕਿਪੀ ਤੁਹਾਡੀ ਪੂਰੀ ਸੂਚੀ ਨੂੰ ਸਕਿੰਟਾਂ ਵਿੱਚ ਕਿਵੇਂ ਬਣਾਉਂਦਾ ਹੈ';

  @override
  String get onboardingAiDemoSlideCta => 'ਮੈਂ ਇਹ ਚਾਹੁੰਦਾ ਹਾਂ! →';

  @override
  String get onboardingAiDemoSlideUserMsg =>
      'ਮੈਂ ਇੱਕ ਬਾਰਬਿਕਯੂ ਦੀ ਮੇਜ਼ਬਾਨੀ ਕਰ ਰਿਹਾ/ਰਹੀ ਹਾਂ 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'ਤਿਆਰ! ਇੱਥੇ ਉਹ ਸਭ ਕੁਝ ਹੈ ਜਿਸਦੀ ਤੁਹਾਨੂੰ ਲੋੜ ਹੈ:';

  @override
  String get onboardingAiDemoSlideDone => 'ਸਕਿੰਟਾਂ ਵਿੱਚ ਪੂਰੀ ਸੂਚੀ ✨';

  @override
  String get onboardingPainTitle =>
      'ਕਿਹੜੀ ਚੀਜ਼ ਤੁਹਾਨੂੰ ਸਭ ਤੋਂ ਵੱਧ ਨਿਰਾਸ਼ ਕਰਦੀ ਹੈ?';

  @override
  String get onboardingPainSubtitle =>
      'ਇਮਾਨਦਾਰ ਰਹੋ - ਅਸੀਂ ਹਰ ਇੱਕ ਨੂੰ ਠੀਕ ਕਰਾਂਗੇ';

  @override
  String get onboardingPainCta => 'ਹਾਂ, ਮੇਰੇ ਲਈ ਇਸ ਨੂੰ ਠੀਕ ਕਰੋ →';

  @override
  String get onboardingPainForget => 'ਮੈਂ ਸਟੋਰ \'ਤੇ ਚੀਜ਼ਾਂ ਭੁੱਲ ਜਾਂਦਾ ਹਾਂ';

  @override
  String get onboardingPainFamily => 'ਮੇਰਾ ਪਰਿਵਾਰ ਸੂਚੀ ਨੂੰ ਕਦੇ ਨਹੀਂ ਦੇਖਦਾ';

  @override
  String get onboardingPainOverspend => 'ਮੈਂ ਹਮੇਸ਼ਾ ਬਜਟ ਤੋਂ ਵੱਧ ਜਾਂਦਾ ਹਾਂ';

  @override
  String get onboardingPainRepeat => 'ਇੱਕ ਯਾਤਰਾ ਕਦੇ ਵੀ ਕਾਫ਼ੀ ਨਹੀਂ ਹੁੰਦੀ';

  @override
  String get aiWelcomeContent =>
      'ਸਤ ਸ੍ਰੀ ਅਕਾਲ! 👋 ਮੈਂ **Kipi** ਹਾਂ, ਤੁਹਾਡੀ ਨਿੱਜੀ ਖਰੀਦਦਾਰੀ ਅਤੇ ਰੈਸਿਪੀ ਸਹਾਇਕ!\n\nਮੈਂ ਤੁਹਾਡੀ ਮਦਦ ਕਰਨ ਲਈ ਇੱਥੇ ਹਾਂ:\n🛒 **ਆਟੋਮੈਟਿਕਲੀ ਸ਼੍ਰੇਣੀਆਂ ਦੁਆਰਾ ਆਪਣੀ ਖਰੀਦਦਾਰੀ ਨੂੰ ** ਸੰਗਠਿਤ ਕਰੋ\n💰 **ਆਪਣੇ ਬਜਟ ਨੂੰ ਟ੍ਰੈਕ ਕਰੋ** ਅਤੇ ਤੁਹਾਨੂੰ ਪੈਸੇ ਬਚਾਉਣ ਦੇ ਸੁਝਾਅ ਦਿਓ\n🍲 **ਸੁਝਾਓ** ਸੁਆਦੀ ਪਕਵਾਨਾਂ ਜੋ ਤੁਹਾਡੇ ਕੋਲ ਪਹਿਲਾਂ ਹੀ ਹਨ\n\nਅੱਜ ਮੈਂ ਤੁਹਾਡੀ ਕਿਵੇਂ ਮਦਦ ਕਰ ਸਕਦਾ ਹਾਂ? ਤੁਸੀਂ ਆਪਣੀ ਪਹਿਲੀ ਸੂਚੀ ਬਣਾ ਕੇ ਸ਼ੁਰੂ ਕਰ ਸਕਦੇ ਹੋ!';

  @override
  String get aiWelcomeSuggestCreateList => 'ਮੇਰੀ ਪਹਿਲੀ ਸੂਚੀ ਬਣਾਓ';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'ਕਿਪੀ, ਮੇਰੀ ਪਹਿਲੀ ਖਰੀਦਦਾਰੀ ਸੂਚੀ ਬਣਾਉਣ ਵਿੱਚ ਮੇਰੀ ਮਦਦ ਕਰੋ';

  @override
  String get aiWelcomeSuggestSave => 'ਪੈਸੇ ਦੀ ਬਚਤ ਕਿਵੇਂ ਕਰੀਏ?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'ਕੀਪੀ, ਤੁਸੀਂ ਕਰਿਆਨੇ \'ਤੇ ਪੈਸੇ ਬਚਾਉਣ ਵਿੱਚ ਮੇਰੀ ਕਿਵੇਂ ਮਦਦ ਕਰ ਸਕਦੇ ਹੋ?';

  @override
  String get suggestionMilk => 'ਦੁੱਧ';

  @override
  String get suggestionBread => 'ਰੋਟੀ';

  @override
  String get suggestionEggs => 'ਅੰਡੇ';

  @override
  String get suggestionCoffee => 'ਕਾਫੀ';

  @override
  String get suggestionRice => 'ਚਾਵਲ';

  @override
  String get suggestionFruits => 'ਫਲ';
}
