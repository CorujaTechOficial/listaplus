// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'ഷോപ്പിംഗ് ലിസ്റ്റ്';

  @override
  String get lists => 'ലിസ്റ്റുകൾ';

  @override
  String get pantry => 'പാന്ട്രി';

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get save => 'സംരക്ഷിക്കുക';

  @override
  String get create => 'സൃഷ്ടിക്കുക';

  @override
  String get add => 'ചേർക്കുക';

  @override
  String get remove => 'നീക്കംചെയ്യുക';

  @override
  String get delete => 'ഇല്ലാതാക്കുക';

  @override
  String get edit => 'എഡിറ്റ് ചെയ്യുക';

  @override
  String get copy => 'പകർത്തുക';

  @override
  String get next => 'അടുത്തത്';

  @override
  String get retry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get regenerate => 'പുനഃസൃഷ്ടിക്കുക';

  @override
  String get copiedToClipboard => 'ക്ലിപ്പ്ബോർഡിലേക്ക് പകർത്തി';

  @override
  String get confirm => 'സ്ഥിരീകരിക്കുക';

  @override
  String get close => 'അടയ്ക്കുക';

  @override
  String get import => 'ഇറക്കുമതി ചെയ്യുക';

  @override
  String get rename => 'പുനർനാമകരണം';

  @override
  String get upgrade => 'അപ്‌ഗ്രേഡ് ചെയ്യുക';

  @override
  String get clear => 'മായ്ക്കുക';

  @override
  String error(String message) {
    return 'പിശക്: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'പിശക്: $message';
  }

  @override
  String get purchaseError =>
      'വാങ്ങൽ പ്രോസസ്സ് ചെയ്യുന്നതിൽ പിശക്. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get restoreError =>
      'വാങ്ങലുകൾ പുനഃസ്ഥാപിക്കുന്നതിൽ പിശക്. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get loading => 'ലോഡ് ചെയ്യുന്നു...';

  @override
  String get fieldRequired => 'നിർബന്ധിത ഫീൽഡ്';

  @override
  String get addedFeedback => 'ചേർത്തു!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count തിരഞ്ഞെടുത്തു',
      one: '$count തിരഞ്ഞെടുത്തു',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'ഏകദേശം';

  @override
  String get alreadyPurchased => 'ഇതിനകം വാങ്ങിയത്';

  @override
  String get clearList => 'ലിസ്റ്റ് മായ്ക്കുക';

  @override
  String get clearPurchased => 'വാങ്ങിയവ മായ്ക്കുക';

  @override
  String get share => 'പങ്കിടുക';

  @override
  String get shareViaCode => 'കോഡ് വഴി പങ്കിടുക';

  @override
  String get importViaCode => 'കോഡ് വഴി ഇറക്കുമതി ചെയ്യുക';

  @override
  String get listAssistant => 'ലിസ്റ്റ് അസിസ്റ്റന്റ്';

  @override
  String get globalAssistant => 'ഗ്ലോബൽ അസിസ്റ്റന്റ്';

  @override
  String get becomePremium => 'പ്രീമിയം ആകുക';

  @override
  String get manageSubscription => 'സബ്‌സ്ക്രിപ്ഷൻ നിയന്ത്രിക്കുക';

  @override
  String get completePurchase => 'വാങ്ങൽ പൂർത്തിയാക്കുക';

  @override
  String get confirmClearList => 'എല്ലാ ഇനങ്ങളും നീക്കംചെയ്യണോ?';

  @override
  String get shareListTitle => 'ലിസ്റ്റ് പങ്കിടുക';

  @override
  String get shareThisCode => 'ഈ കോഡ് പങ്കിടുക:';

  @override
  String get validForLimitedTime => 'പരിമിത സമയത്തേക്ക് മാത്രം സാധുത';

  @override
  String get importListTitle => 'ലിസ്റ്റ് ഇറക്കുമതി ചെയ്യുക';

  @override
  String get enterCodeHint => 'കോഡ് നൽകുക';

  @override
  String get confirmArchiveTitle => 'വാങ്ങൽ പൂർത്തിയാക്കുക';

  @override
  String get confirmArchiveContent =>
      'ഈ വാങ്ങൽ പൂർത്തിയാക്കി ലിസ്റ്റ് ആർക്കൈവ് ചെയ്യണോ?';

  @override
  String get complete => 'പൂർത്തിയാക്കുക';

  @override
  String get listArchived => 'ലിസ്റ്റ് വിജയകരമായി ആർക്കൈവ് ചെയ്തു!';

  @override
  String listAdded(String listName) {
    return '$listName ചേർത്തു!';
  }

  @override
  String get buy => 'വാങ്ങുക';

  @override
  String get unmark => 'അൺമാർക്ക് ചെയ്യുക';

  @override
  String confirmDeleteItems(int count) {
    return '$count ഇനം നീക്കംചെയ്യണോ?';
  }

  @override
  String get confirmDeleteTitle => 'സ്ഥിരീകരിക്കുക';

  @override
  String confirmContent(int count) {
    return '$count ഇനം നീക്കംചെയ്യണോ?';
  }

  @override
  String get archiveList => 'ലിസ്റ്റ് ആർക്കൈവ് ചെയ്യുക';

  @override
  String get pantryAppBar => 'പാന്ട്രി';

  @override
  String get generateShoppingList => 'ഷോപ്പിംഗ് ലിസ്റ്റ് ജനറേറ്റ് ചെയ്യുക';

  @override
  String get pantryEmpty => 'പാന്ട്രി ശൂന്യമാണ്';

  @override
  String get pantryEmptySubtitle =>
      'വീട്ടിൽ സൂക്ഷിക്കണമെന്ന് ആഗ്രഹിക്കുന്ന ഉൽപ്പന്നങ്ങൾ ചേർക്കുക';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ഇനം വാങ്ങേണ്ടതുണ്ട്';
  }

  @override
  String get noItemsToBuy => 'വാങ്ങേണ്ട ഇനങ്ങളൊന്നുമില്ല';

  @override
  String get newPantryList => 'പാന്ട്രി ഷോപ്പിംഗ്';

  @override
  String get newListTitle => 'പുതിയ ഷോപ്പിംഗ് ലിസ്റ്റ്';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ഇനം ചേർക്കും';
  }

  @override
  String get listNameLabel => 'ലിസ്റ്റിന്റെ പേര്';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" എന്ന ലിസ്റ്റ് $count ഇനങ്ങളോടെ സൃഷ്ടിച്ചു';
  }

  @override
  String get noTracking => 'ട്രാക്കിംഗ് ഇല്ല';

  @override
  String get markAsPurchased => 'വാങ്ങിയതായി അടയാളപ്പെടുത്തുക';

  @override
  String editPantryItem(String name) {
    return '$name എഡിറ്റ് ചെയ്യുക';
  }

  @override
  String get idealQuantity => 'ആദർശ അളവ്';

  @override
  String get currentQuantity => 'നിലവിലെ അളവ്';

  @override
  String get consumed => 'ഉപഭോഗം ചെയ്തത്';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit ആയി പുനഃസംഭരിച്ചു';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'പാന്ട്രിയിൽ നിന്ന് \"$name\" നീക്കംചെയ്യണോ?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name എഡിറ്റ് ചെയ്യുക';
  }

  @override
  String get settingsAppBar => 'ക്രമീകരണങ്ങൾ';

  @override
  String get language => 'ഭാഷ';

  @override
  String get languagePortuguese => 'പോർച്ചുഗീസ് (ബ്രസീൽ)';

  @override
  String get languageEnglish => 'ഇംഗ്ലീഷ്';

  @override
  String get languageSystem => 'സിസ്റ്റം ഡിഫോൾട്ട്';

  @override
  String get chooseLanguage => 'ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get searchLanguage => 'ഭാഷ തിരയുക...';

  @override
  String get currency => 'കറൻസി';

  @override
  String get chooseCurrency => 'കറൻസി തിരഞ്ഞെടുക്കുക';

  @override
  String get searchCurrency => 'കറൻസി തിരയുക...';

  @override
  String get appearance => 'രൂപഭാവം';

  @override
  String get light => 'ലൈറ്റ്';

  @override
  String get system => 'സിസ്റ്റം';

  @override
  String get dark => 'ഡാർക്ക്';

  @override
  String get themeColor => 'തീം നിറം';

  @override
  String get dynamicColors => 'ഡൈനാമിക് നിറങ്ങൾ';

  @override
  String get dynamicColorsSubtitle =>
      'നിങ്ങളുടെ വാൾപേപ്പറിനെ അടിസ്ഥാനമാക്കിയുള്ള നിറങ്ങൾ ഉപയോഗിക്കുക';

  @override
  String get dynamicColorsEnabledWarning =>
      'തീം വർണ്ണം പ്രാബല്യത്തിൽ വരുന്നതിന് ഡൈനാമിക് നിറങ്ങൾ പ്രവർത്തനരഹിതമാക്കുക';

  @override
  String get finance => 'ഫിനാൻസ്';

  @override
  String get monthlyBudgetNav => 'പ്രതിമാസ ബജറ്റ്';

  @override
  String get budgetSubtitle => 'നിങ്ങളുടെ പ്രതിമാസ ചെലവ് ട്രാക്ക് ചെയ്യുക';

  @override
  String get data => 'ഡാറ്റ';

  @override
  String get backupNav => 'ബാക്കപ്പ്';

  @override
  String get backupSubtitle =>
      'നിങ്ങളുടെ ഡാറ്റ എക്‌സ്‌പോർട്ട് ചെയ്യുക അല്ലെങ്കിൽ ഇറക്കുമതി ചെയ്യുക';

  @override
  String get about => 'കുറിച്ച്';

  @override
  String get version => 'പതിപ്പ്';

  @override
  String get privacy => 'സ്വകാര്യത';

  @override
  String get termsOfUse => 'ഉപയോഗ നിബന്ധനകൾ';

  @override
  String get backupTitle => 'ബാക്കപ്പ്';

  @override
  String get backupPremiumDescription =>
      'ബാക്കപ്പും എക്‌സ്‌പോർട്ടും ഒരു പ്രീമിയം ഫീച്ചറാണ്';

  @override
  String get exportData => 'ഡാറ്റ എക്‌സ്‌പോർട്ട് ചെയ്യുക';

  @override
  String get exportDataSubtitle => 'എല്ലാ ലിസ്റ്റുകളും JSON ആയി സംരക്ഷിക്കുക';

  @override
  String get importData => 'ഡാറ്റ ഇറക്കുമതി ചെയ്യുക';

  @override
  String get importDataSubtitle => 'JSON-ൽ നിന്ന് ലിസ്റ്റുകൾ പുനഃസ്ഥാപിക്കുക';

  @override
  String get importJsonTitle => 'JSON ഇറക്കുമതി ചെയ്യുക';

  @override
  String get importJsonHint => 'ബാക്കപ്പ് JSON ഇവിടെ പേസ്റ്റ് ചെയ്യുക...';

  @override
  String get backupExported => 'ബാക്കപ്പ് എക്‌സ്‌പോർട്ട് ചെയ്തു!';

  @override
  String get budgetAppBar => 'പ്രതിമാസ ബജറ്റ്';

  @override
  String get budgetPremiumLocked => 'ആഗോള പ്രതിമാസ ബജറ്റ് പ്രീമിയം ആണ്';

  @override
  String get budgetUpgradePrompt => 'അൺലോക്ക് ചെയ്യാൻ അപ്‌ഗ്രേഡ് ചെയ്യുക';

  @override
  String get noBudgetDefined => 'ബജറ്റ് സജ്ജീകരിച്ചിട്ടില്ല';

  @override
  String totalEstimated(String amount) {
    return 'ആകെ ഏകദേശം: $amount';
  }

  @override
  String get setBudgetButton => 'ബജറ്റ് സജ്ജമാക്കുക';

  @override
  String get budgetLists => 'ലിസ്റ്റുകൾ';

  @override
  String get budgetValueLabel => 'തുക';

  @override
  String get setBudgetTitle => 'പ്രതിമാസ ബജറ്റ്';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'എല്ലാം';

  @override
  String get filterPending => 'തീർപ്പാക്കാത്തവ';

  @override
  String get filterPurchased => 'വാങ്ങിയവ';

  @override
  String get sortName => 'പേര്';

  @override
  String get sortCategory => 'വിഭാഗം';

  @override
  String get sortDate => 'തീയതി';

  @override
  String get sortManual => 'രംഗം';

  @override
  String get addItem => 'ഇനം ചേർക്കുക';

  @override
  String get itemName => 'ഇനത്തിന്റെ പേര്';

  @override
  String get quantityShort => 'അളവ്';

  @override
  String get unit => 'യൂണിറ്റ്';

  @override
  String get category => 'വിഭാഗം';

  @override
  String get estimatedPrice => 'ഏകദേശ വില';

  @override
  String get addItemPrice => 'ഏകദേശ വില';

  @override
  String get editItem => 'ഇനം എഡിറ്റ് ചെയ്യുക';

  @override
  String get quantityFull => 'അളവ്';

  @override
  String get editItemPrice => 'ഏകദേശ വില';

  @override
  String get addToPantry => 'പാന്ട്രിയിലേക്ക് ചേർക്കുക';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" നിങ്ങളുടെ പാന്ട്രിയിലേക്ക് ചേർക്കണോ?';
  }

  @override
  String get yes => 'അതെ';

  @override
  String get productName => 'ഉൽപ്പന്നത്തിന്റെ പേര്';

  @override
  String get idealQty => 'ആദർശ അളവ്';

  @override
  String get currentQty => 'നിലവിലെ അളവ്';

  @override
  String get trackStock => 'സ്റ്റോക്ക് ട്രാക്ക് ചെയ്യുക';

  @override
  String get trackStockActive => 'ഷോപ്പിംഗ് നിർദ്ദേശങ്ങളിൽ ദൃശ്യമാകുന്നു';

  @override
  String get trackStockInactive => 'ഷോപ്പിംഗ് നിർദ്ദേശം സൃഷ്ടിക്കുന്നില്ല';

  @override
  String get createListDialog => 'ലിസ്റ്റ് സൃഷ്ടിക്കുക';

  @override
  String get renameListDialog => 'ലിസ്റ്റ് പുനർനാമകരണം';

  @override
  String get listHistory => 'ലിസ്റ്റ് ചരിത്രം';

  @override
  String get myLists => 'എന്റെ ലിസ്റ്റുകൾ';

  @override
  String get viewActive => 'സജീവമായവ കാണുക';

  @override
  String get viewHistory => 'ചരിത്രം കാണുക';

  @override
  String get noArchivedLists => 'ആർക്കൈവ് ചെയ്ത ലിസ്റ്റുകളൊന്നുമില്ല';

  @override
  String get noActiveLists => 'സജീവ ലിസ്റ്റുകളൊന്നുമില്ല';

  @override
  String completedOn(String date) {
    return '$date ന് പൂർത്തിയാക്കി';
  }

  @override
  String get sharedLabel => 'പങ്കിട്ടത്';

  @override
  String get restore => 'പുനഃസ്ഥാപിക്കുക';

  @override
  String get removeSharedTooltip => 'നീക്കംചെയ്യുക';

  @override
  String get deleteListTitle => 'ലിസ്റ്റ് ഇല്ലാതാക്കുക';

  @override
  String deleteListContent(String name) {
    return '\"$name\" ഇല്ലാതാക്കണമെന്ന് ഉറപ്പാണോ? എല്ലാ ഇനങ്ങളും നീക്കംചെയ്യും.';
  }

  @override
  String get removeSharedListTitle => 'പങ്കിട്ട ലിസ്റ്റ് നീക്കംചെയ്യുക';

  @override
  String removeSharedListContent(String name) {
    return 'നിങ്ങളുടെ ലിസ്റ്റുകളിൽ നിന്ന് \"$name\" നീക്കംചെയ്യണോ? യഥാർത്ഥ ലിസ്റ്റിനെ ബാധിക്കില്ല.';
  }

  @override
  String get createNewList => 'പുതിയ ലിസ്റ്റ് സൃഷ്ടിക്കുക';

  @override
  String get aiAssistant => 'AI അസിസ്റ്റന്റ്';

  @override
  String get aiAssistantDescription =>
      'ഞങ്ങളുടെ AI അസിസ്റ്റന്റുമായി സ്മാർട്ട് നിർദ്ദേശങ്ങളും പാചകക്കുറിപ്പുകളും വ്യക്തിഗത നുറുങ്ങുകളും നേടുക.';

  @override
  String get generalAssistant => 'ജനറൽ അസിസ്റ്റന്റ്';

  @override
  String get newChat => 'പുതിയ ചാറ്റ്';

  @override
  String get noHistory => 'ചാറ്റ് ചരിത്രമില്ല';

  @override
  String get deleteSession => 'ചാറ്റ് ഇല്ലാതാക്കുക';

  @override
  String get deleteSessionConfirm =>
      'ഈ ചാറ്റ് ഇല്ലാതാക്കണമെന്ന് തീർച്ചയാണോ? സന്ദേശങ്ങൾ ശാശ്വതമായി നഷ്ടപ്പെടും.';

  @override
  String get clearHistory => 'ചരിത്രം മായ്ക്കുക';

  @override
  String get clearHistoryConfirm => 'ഈ സെഷനിലെ എല്ലാ സന്ദേശങ്ങളും മായ്ക്കണോ?';

  @override
  String get chatHint => 'നിങ്ങളുടെ സന്ദേശം ടൈപ്പ് ചെയ്യുക...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'ചാറ്റ് ലോഡ് ചെയ്യുന്നതിൽ പിശക്: $error';
  }

  @override
  String get listHelp => 'നിങ്ങളുടെ ലിസ്റ്റിൽ എങ്ങനെ സഹായിക്കണം?';

  @override
  String get generalHelp => 'ഇന്ന് നിങ്ങളുടെ ഷോപ്പിംഗിൽ എങ്ങനെ സഹായിക്കണം?';

  @override
  String get chatSubtitle =>
      'ഇനങ്ങളുടെ നിർദ്ദേശങ്ങൾക്കും പാചകക്കുറിപ്പുകൾക്കും സേവിംഗ് ടിപ്പുകൾക്കുമായി ചോദിക്കുക.';

  @override
  String get aiError =>
      'ക്ഷമിക്കണം, നിങ്ങളുടെ അഭ്യർത്ഥന പ്രോസസ്സ് ചെയ്യുന്നതിൽ പിശക് സംഭവിച്ചു. നിങ്ങളുടെ കണക്ഷൻ പരിശോധിക്കുക അല്ലെങ്കിൽ പിന്നീട് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt =>
      'പ്രീമിയം ഫീച്ചറുകൾ\nഅൺലോക്ക് ചെയ്യാൻ ലോഗിൻ ചെയ്യുക';

  @override
  String get signInGoogle => 'Google ഉപയോഗിച്ച് സൈൻ ഇൻ ചെയ്യുക';

  @override
  String get signInApple => 'Apple ഉപയോഗിച്ച് സൈൻ ഇൻ ചെയ്യുക';

  @override
  String get continueAsGuest => 'അതിഥിയായി തുടരുക';

  @override
  String get onboardingWelcomeTitle => 'KipiList-ലേക്ക് സ്വാഗതം';

  @override
  String get onboardingWelcomeDesc =>
      'നിങ്ങളുടെ ഷോപ്പിംഗ് സംഘടിപ്പിക്കുന്നതിനും പണം ലാഭിക്കുന്നതിനുമുള്ള ഏറ്റവും മികച്ച മാർഗം.';

  @override
  String get onboardingSetupTitle => 'നിങ്ങളുടെ അനുഭവം വ്യക്തിഗതമാക്കുക';

  @override
  String get onboardingSetupDesc =>
      'KipiList എങ്ങനെ കാണണമെന്നും നിങ്ങൾക്കായി പ്രവർത്തിക്കണമെന്നും നിങ്ങൾ ആഗ്രഹിക്കുന്നുവെന്ന് തിരഞ്ഞെടുക്കുക.';

  @override
  String get onboardingLoginTitle => 'എല്ലാം ക്ലൗഡിലേക്ക് സംരക്ഷിക്കുക';

  @override
  String get onboardingLoginDesc =>
      'നിങ്ങളുടെ എല്ലാ ഉപകരണങ്ങളിലും നിങ്ങളുടെ ഡാറ്റ സമന്വയിപ്പിച്ചു';

  @override
  String get onboardingShareTitle => 'നിങ്ങൾ ഇഷ്ടപ്പെടുന്നവരുമായി പങ്കിടുക';

  @override
  String get onboardingShareDesc =>
      'കുടുംബാംഗങ്ങളുമായും സുഹൃത്തുക്കളുമായും ലിസ്റ്റുകൾ തത്സമയം സമന്വയിപ്പിക്കുക';

  @override
  String get onboardingPremiumTitle => 'എല്ലാ സവിശേഷതകളും അൺലോക്ക് ചെയ്യുക';

  @override
  String get onboardingPremiumSubtitle =>
      'നിങ്ങളുടെ ഷോപ്പിംഗ് ലിസ്റ്റുകൾ പരമാവധി പ്രയോജനപ്പെടുത്തുക';

  @override
  String get onboardingAnnualBadge => 'മികച്ച മൂല്യം';

  @override
  String get onboardingMonthlyLabel => 'പ്രതിമാസ';

  @override
  String get onboardingAnnualLabel => 'വാർഷികം';

  @override
  String get onboardingViewAllPlans => 'എല്ലാ പ്ലാനുകളും കാണുക';

  @override
  String get onboardingSubscribeCta => 'സബ്സ്ക്രൈബ് ചെയ്യുക';

  @override
  String get onboardingCancelAnytime =>
      'എപ്പോൾ വേണമെങ്കിലും റദ്ദാക്കുക. പ്രതിബദ്ധതയില്ല.';

  @override
  String get onboardingContinueAsGuest => 'അതിഥിയായി തുടരുക';

  @override
  String get onboardingRestore => 'പുനഃസ്ഥാപിക്കുക';

  @override
  String get onboardingRestoreDesc =>
      'ഇതിനകം ഒരു സബ്സ്ക്രിപ്ഷൻ ഉണ്ടോ? അത് പുനഃസ്ഥാപിക്കാൻ ഇവിടെ ടാപ്പ് ചെയ്യുക.';

  @override
  String get onboardingExit => 'പുറത്ത്';

  @override
  String get onboardingPersonalizationTitle => 'നമുക്ക് നിങ്ങളെ പരിചയപ്പെടാം';

  @override
  String get onboardingPersonalizationDesc =>
      'നിങ്ങളുടെ നിർദ്ദേശങ്ങൾ വ്യക്തിപരമാക്കാനും ഷോപ്പിംഗ് മികച്ചതാക്കാനും ഞങ്ങൾ ഇത് ഉപയോഗിക്കും.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'നിങ്ങളുടെ പ്രിയപ്പെട്ട ഭക്ഷണം ഏതാണ്?';

  @override
  String get onboardingPersonalizationFoodHint => 'ഉദാ. പിസ്സ, സുഷി, ലസാഗ്ന...';

  @override
  String get onboardingPersonalizationCta => 'തുടരുക';

  @override
  String get onboardingPersonalizationSkip => 'തൽക്കാലം ഒഴിവാക്കുക';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'തുടരാൻ നിങ്ങളുടെ പ്രിയപ്പെട്ട ഭക്ഷണം ഞങ്ങളോട് പറയുക';

  @override
  String get settingsDefaultScreen => 'ഡിഫോൾട്ട് ഹോം സ്‌ക്രീൻ';

  @override
  String get settingsDefaultScreenSubtitle =>
      'ഷോപ്പിംഗ് ലിസ്റ്റ് അല്ലെങ്കിൽ AI ചാറ്റ് എന്നിവയിൽ ഒന്ന് തിരഞ്ഞെടുക്കുക';

  @override
  String get settingsScreenList => 'ഷോപ്പിംഗ് ലിസ്റ്റ്';

  @override
  String get settingsScreenChat => 'AI ചാറ്റ്';

  @override
  String loginError(String error) {
    return 'ലോഗിൻ പിശക്: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

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
  String get paywallSocialProof =>
      'Join thousands of smart shoppers saving time and money';

  @override
  String get paywallCtaUnlock => 'Unlock KipiList PRO';

  @override
  String get paywallCtaTrial => 'Start My Free Trial';

  @override
  String get paywallBestValue => 'BEST VALUE';

  @override
  String get paywallMostPopular => 'MOST POPULAR';

  @override
  String get paywallSafeCheckout => 'Secure payment via App Store/Play Store';

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
  String get premiumUpgrade => 'അൺലോക്ക് ചെയ്യാൻ അപ്‌ഗ്രേഡ് ചെയ്യുക';

  @override
  String get itemRemoved => 'ഇനം നീക്കംചെയ്തു';

  @override
  String get undo => 'പഴയപടിയാക്കുക';

  @override
  String get emptyListTitle => 'നിങ്ങളുടെ ലിസ്റ്റ് ശൂന്യമാണ്';

  @override
  String get emptyListSubtitle => 'ആരംഭിക്കാൻ ഇനങ്ങൾ ചേർക്കുക';

  @override
  String get noListFoundTitle => 'ലിസ്റ്റുകളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get noListFoundSubtitle =>
      'ആരംഭിക്കാൻ നിങ്ങളുടെ ആദ്യ ലിസ്റ്റ് സൃഷ്ടിക്കുക';

  @override
  String get createFirstList => 'ആദ്യ ലിസ്റ്റ് സൃഷ്ടിക്കുക';

  @override
  String get listBudgetTitle => 'ലിസ്റ്റ് ബജറ്റ്';

  @override
  String get budgetAmountLabel => 'ബജറ്റ് തുക';

  @override
  String get removeBudget => 'നീക്കംചെയ്യുക';

  @override
  String get prefUnlimitedLists => 'പരിധിയില്ലാത്ത ലിസ്റ്റുകൾ';

  @override
  String get prefSharing => 'ലിസ്റ്റുകൾ പങ്കിടുക';

  @override
  String get prefFullHistory => 'പൂർണ്ണ ചരിത്രം';

  @override
  String get prefExportData => 'ഡാറ്റ എക്‌സ്‌പോർട്ട് ചെയ്യുക';

  @override
  String get prefCustomThemes => 'ഇഷ്ടാനുസൃത തീമുകൾ';

  @override
  String get prefMonthlyBudget => 'ആഗോള പ്രതിമാസ ബജറ്റ്';

  @override
  String get prefAIAssistant => 'വ്യക്തിഗത AI അസിസ്റ്റന്റ്';

  @override
  String get prefUnlimitedPantry => 'പരിധിയില്ലാത്ത പാന്ട്രി';

  @override
  String get prefInteractiveArtifacts => 'സംവേദനാത്മക AI ആർട്ടിഫാക്റ്റുകൾ';

  @override
  String get themeGreen => 'പച്ച';

  @override
  String get themeBlue => 'നീല';

  @override
  String get themePurple => 'പർപ്പിൾ';

  @override
  String get themeRed => 'ചുവപ്പ്';

  @override
  String get themeOrange => 'ഓറഞ്ച്';

  @override
  String get themePink => 'പിങ്ക്';

  @override
  String get themeIndigo => 'ഇൻഡിഗോ';

  @override
  String get themeAmber => 'ആമ്പർ';

  @override
  String get themeTeal => 'ടീൽ';

  @override
  String get themeBrown => 'ബ്രൗൺ';

  @override
  String get catFruits => 'പഴങ്ങൾ';

  @override
  String get catCleaning => 'ക്ലീനിംഗ്';

  @override
  String get catBeverages => 'പാനീയങ്ങൾ';

  @override
  String get catBakery => 'ബേക്കറി';

  @override
  String get catOthers => 'മറ്റുള്ളവ';

  @override
  String get unitPack => 'പായ്ക്ക്';

  @override
  String get shareSubject => 'ഷോപ്പിംഗ് ലിസ്റ്റ്';

  @override
  String get monthlyBudgetTitle => 'പ്രതിമാസ ബജറ്റ്';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'ലിസ്റ്റ് ഇല്ലാതാക്കുക';

  @override
  String get pantryItemRemoved => 'ഇനം നീക്കംചെയ്തു';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit ഇനങ്ങൾ വാങ്ങേണ്ടതുണ്ട്',
      one: '$deficit ഇനം വാങ്ങേണ്ടതുണ്ട്',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'കാർട്ട് ആകെ';

  @override
  String get restockLabel => 'പുനഃസംഭരിക്കുക';

  @override
  String get advancedFeatures => 'വിപുലമായ ഫീച്ചറുകൾ';

  @override
  String get selectAll => 'എല്ലാം തിരഞ്ഞെടുക്കുക';

  @override
  String get deselectAll => 'എല്ലാം അൺസെലക്റ്റ് ചെയ്യുക';

  @override
  String get monthlyBudgetAppBar => 'പ്രതിമാസ ബജറ്റ്';

  @override
  String get budgetEditTitle => 'പ്രതിമാസ ബജറ്റ്';

  @override
  String get budgetDashboardTitle => 'ഡാഷ്ബോർഡ്';

  @override
  String get selectListForDashboard =>
      'ഡാഷ്ബോർഡ് കാണുന്നതിന് ഒരു ലിസ്റ്റ് തിരഞ്ഞെടുക്കുക.';

  @override
  String get spendingAnalysis => 'ചെലവ് വിശകലനം';

  @override
  String get noItemsToAnalyze => 'വിശകലനം ചെയ്യാൻ ലിസ്റ്റിൽ ഇനങ്ങളൊന്നുമില്ല.';

  @override
  String get markItemsToSeeAnalysis =>
      'വിശകലനം കാണുന്നതിന് ഇനങ്ങൾ വാങ്ങിയതായി അടയാളപ്പെടുത്തുക.';

  @override
  String get totalSpending => 'ആകെ ചെലവ്';

  @override
  String get spendingByCategory => 'വിഭാഗം അനുസരിച്ച് ചെലവ്';

  @override
  String get achievements => 'നേട്ടങ്ങൾ';

  @override
  String get exportPdfExcel => 'PDF/Excel എക്‌സ്‌പോർട്ട് ചെയ്യുക';

  @override
  String get exportPdf => 'PDF ആയി എക്‌സ്‌പോർട്ട് ചെയ്യുക';

  @override
  String get exportExcel => 'Excel ആയി എക്‌സ്‌പോർട്ട് ചെയ്യുക';

  @override
  String get organizingAi => 'AI ഉപയോഗിച്ച് ഓർഗനൈസ് ചെയ്യുന്നു...';

  @override
  String get yesLabel => 'അതെ';

  @override
  String get noLabel => 'ഇല്ല';

  @override
  String get shareListText => 'എന്റെ ഷോപ്പിംഗ് ലിസ്റ്റ്';

  @override
  String get emptyListAddItems =>
      'നിങ്ങളുടെ ലിസ്റ്റ് ശൂന്യമാണ്! ആദ്യം ഇനങ്ങൾ ചേർക്കുക. ℹ️';

  @override
  String get listOrganizedMagic =>
      'ലിസ്റ്റ് വിഭാഗങ്ങൾ അനുസരിച്ച് മാന്ത്രികമായി ക്രമീകരിച്ചു! ✨';

  @override
  String get shoppingMode => 'ഷോപ്പിംഗ് മോഡ്';

  @override
  String get smartOrganization => 'സ്മാർട്ട് ഓർഗനൈസേഷൻ';

  @override
  String get savings => 'സേവിംഗ്സ്';

  @override
  String get shoppingModeHeader => 'ഷോപ്പിംഗ് മോഡ്';

  @override
  String get shareAsText => 'ഫോർമാറ്റ് ചെയ്ത ടെക്സ്റ്റായി ഇനങ്ങൾ അയയ്ക്കുക';

  @override
  String get shareRealtime => 'മറ്റ് ആളുകളുമായി തത്സമയ സമന്വയം';

  @override
  String get quickRecipe => 'പെട്ടെന്നുള്ള പാചകക്കുറിപ്പ്';

  @override
  String get quickRecipePrompt =>
      'എന്റെ ലിസ്റ്റിലെ ഇനങ്ങൾ ഉപയോഗിച്ച് പാചകക്കുറിപ്പുകൾ നിർദ്ദേശിക്കുക.';

  @override
  String get economyTips => 'സേവിംഗ് ടിപ്പുകൾ';

  @override
  String get economyTipsPrompt => 'ഈ വാങ്ങലിൽ എങ്ങനെ പണം ലാഭിക്കാം?';

  @override
  String get organizeAisles => 'ഐലുകൾ അനുസരിച്ച് ക്രമീകരിക്കുക';

  @override
  String get organizeAislesPrompt =>
      'മാർക്കറ്റ് ഐലുകൾ അനുസരിച്ച് ക്രമീകരിക്കുക.';

  @override
  String get recipeSuggestion => 'പാചകക്കുറിപ്പ് നിർദ്ദേശം';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining ക്രെഡിറ്റുകൾ ശേഷിക്കുന്നു';
  }

  @override
  String get addAllToList => 'എല്ലാം ലിസ്റ്റിലേക്ക് ചേർക്കുക';

  @override
  String get organizeByAisles => 'ഐലുകൾ അനുസരിച്ച് ക്രമീകരിക്കുക';

  @override
  String get voiceTranscriptionTooltip => 'വോയ്സ് ടൈപ്പിംഗ് (സൗജന്യം)';

  @override
  String get aiVoiceCommandTooltip => 'AI വോയ്സ് കമാൻഡ് (പ്രീമിയം)';

  @override
  String get voiceCommandTitle => 'AI വോയ്സ് കമാൻഡ്';

  @override
  String get voiceCommandContent =>
      'നിങ്ങളുടെ ലിസ്റ്റ് നിയന്ത്രിക്കാൻ സ്വാഭാവികമായി സംസാരിക്കുക!\n\nഉദാഹരണങ്ങൾ:\n• \'ബ്രെഡ്, ചീസ്, ഹാം എന്നിവ ചേർക്കുക\'\n• \'ലോൺഡ്രി ഡിറ്റർജന്റ് നീക്കംചെയ്യുക\'\n• \'തീം നീലയിലേക്ക് മാറ്റുക\'\n\nഇത് KipiList പ്രീമിയത്തിന്റെ എക്സ്ക്ലൂസീവ് ഫീച്ചറാണ്.';

  @override
  String get voiceCommandPlanBtn => 'പ്ലാനുകൾ കാണുക';

  @override
  String get itemsAddedSuccess => 'ഇനങ്ങൾ വിജയകരമായി ലിസ്റ്റിലേക്ക് ചേർത്തു!';

  @override
  String get viewList => 'ലിസ്റ്റ് കാണുക';

  @override
  String get feedbackTitle => 'ഫീഡ്ബാക്ക് അയയ്ക്കുക';

  @override
  String get feedbackPrompt => 'നിങ്ങൾ എന്താണ് പങ്കിടാൻ ആഗ്രഹിക്കുന്നത്?';

  @override
  String get feedbackTypeBug => 'ബഗ് റിപ്പോർട്ട് ചെയ്യുക';

  @override
  String get feedbackTypeBugHint => 'എന്തോ പ്രവർത്തിക്കുന്നില്ല';

  @override
  String get feedbackTypeSuggestion => 'നിർദ്ദേശം';

  @override
  String get feedbackTypeSuggestionHint => 'ആപ്പ് മെച്ചപ്പെടുത്താനുള്ള ആശയം';

  @override
  String get feedbackTypeTranslation => 'വിവർത്തന പ്രശ്നം';

  @override
  String get feedbackTypeTranslationHint =>
      'തെറ്റായ അല്ലെങ്കിൽ അസ്വാഭാവിക വിവർത്തനം';

  @override
  String get feedbackTypeFeature => 'ഫീച്ചർ അഭ്യർത്ഥന';

  @override
  String get feedbackTypeFeatureHint => 'നിങ്ങൾ കാണാൻ ആഗ്രഹിക്കുന്ന ഫീച്ചർ';

  @override
  String get feedbackTypeOther => 'മറ്റുള്ളത്';

  @override
  String get feedbackTypeOtherHint => 'മറ്റ് തരത്തിലുള്ള ഫീഡ്ബാക്ക്';

  @override
  String get feedbackHint => 'നിങ്ങളുടെ ഫീഡ്ബാക്ക് വിശദമായി വിവരിക്കുക...';

  @override
  String get feedbackSend => 'ഫീഡ്ബാക്ക് അയയ്ക്കുക';

  @override
  String get feedbackSending => 'അയയ്ക്കുന്നു...';

  @override
  String get feedbackThankYou => 'നന്ദി!';

  @override
  String get feedbackThankYouMessage =>
      'നിങ്ങളുടെ ഫീഡ്ബാക്ക് ലഭിച്ചു, എല്ലാവർക്കുമായി KipiList മെച്ചപ്പെടുത്താൻ ഇത് ഞങ്ങളെ സഹായിക്കുന്നു.';

  @override
  String get feedbackBack => 'തിരികെ';

  @override
  String feedbackError(String error) {
    return 'അയയ്ക്കുന്നതിൽ പിശക്: $error';
  }

  @override
  String get feedbackRetry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get feedbackSettingsTitle => 'ഫീഡ്ബാക്ക് അയയ്ക്കുക';

  @override
  String get feedbackSettingsSubtitle =>
      'ബഗുകൾ റിപ്പോർട്ട് ചെയ്യുക, മെച്ചപ്പെടുത്തലുകൾ നിർദ്ദേശിക്കുക, അല്ലെങ്കിൽ വിവർത്തനങ്ങൾ ശരിയാക്കുക';

  @override
  String get aiEnergy => 'AI ഊർജ്ജം';

  @override
  String get searchInConversation => 'സംഭാഷണത്തിൽ തിരയുക...';

  @override
  String get noMessagesFound => 'സന്ദേശങ്ങളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get suggestedQuestions => 'നിർദ്ദേശിച്ച ചോദ്യങ്ങൾ:';

  @override
  String get shoppingAssistant => 'ഷോപ്പിംഗ് അസിസ്റ്റൻ്റ്';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased of $total വാങ്ങി';
  }

  @override
  String get estimatedCost => 'കണക്കാക്കിയത്';

  @override
  String get viewItems => 'ഇനങ്ങൾ കാണുക';

  @override
  String get noItemsInList => 'ലിസ്റ്റിൽ ഇനങ്ങളൊന്നുമില്ല';

  @override
  String get longHistoryWarning =>
      'നീണ്ട ചരിത്രം: മികച്ച പ്രകടനത്തിനായി അസിസ്റ്റൻ്റ് ഏറ്റവും പുതിയ സന്ദേശങ്ങളിൽ ശ്രദ്ധ കേന്ദ്രീകരിക്കുന്നു.';

  @override
  String get listening => 'കേൾക്കുന്നു...';

  @override
  String get addDirectToList => 'പട്ടികയിലേക്ക് നേരിട്ട് ചേർക്കുക';

  @override
  String get unlockFullResponse => 'പൂർണ്ണ പ്രതികരണം അൺലോക്ക് ചെയ്യുക';

  @override
  String get switchList => 'ലിസ്റ്റ് മാറുക';

  @override
  String get marketMode => 'മാർക്കറ്റ് മോഡ്';

  @override
  String get backToChat => 'ചാറ്റിലേക്ക് മടങ്ങുക';

  @override
  String get finishShopping => 'ഷോപ്പിംഗ് പൂർത്തിയാക്കുക';

  @override
  String get welcomeAiAssistant => 'AI അസിസ്റ്റൻ്റിലേക്ക് സ്വാഗതം';

  @override
  String get createListToStartAi =>
      'സ്‌മാർട്ട് ചാറ്റ് ഉപയോഗിക്കാൻ തുടങ്ങാൻ ഒരു ഷോപ്പിംഗ് ലിസ്റ്റ് സൃഷ്‌ടിക്കുക.';

  @override
  String get howCanIHelp => 'എനിക്ക് എങ്ങനെ സഹായിക്കാനാകും?';

  @override
  String get chatSubtitleShort =>
      'വിലകൾ, പാചകക്കുറിപ്പുകൾ, ഓർഗനൈസേഷൻ എന്നിവയെക്കുറിച്ച് ചോദിക്കൂ...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total വാങ്ങി';
  }

  @override
  String get quickReplies => 'ദ്രുത മറുപടികൾ:';

  @override
  String get voiceProFeature =>
      'വിപുലമായ വോയ്‌സ് കമാൻഡുകൾ പ്രോ. അടിസ്ഥാന നിർദ്ദേശം പ്രവർത്തനക്ഷമമാക്കുന്നു...';

  @override
  String get viewPro => 'പ്രോ കാണുക';

  @override
  String get errorLoadingChat =>
      'ശ്ശോ! ചാറ്റ് ലോഡ് ചെയ്യുന്നതിൽ എന്തോ കുഴപ്പം സംഭവിച്ചു.';

  @override
  String get errorLoadingChatSubtitle =>
      'നിങ്ങളുടെ കണക്ഷൻ പരിശോധിക്കുക അല്ലെങ്കിൽ പിന്നീട് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get errorOscillation =>
      'നെറ്റ്‌വർക്ക് ആന്ദോളനങ്ങളോ താൽക്കാലിക ലഭ്യതയോ കാരണം ഇത് സംഭവിക്കാം. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get activeListening => 'സജീവമായി കേൾക്കൽ';

  @override
  String get whatToDoWithItem =>
      'ഈ ഇനം ഉപയോഗിച്ച് നിങ്ങൾ എന്താണ് ചെയ്യാൻ ആഗ്രഹിക്കുന്നത്?';

  @override
  String get viewDetails => 'വിശദാംശങ്ങൾ കാണുക';

  @override
  String get openMenu => 'മെനു തുറക്കുക';

  @override
  String get viewRecipe => 'റെസിപ്പി കാണുക';

  @override
  String get recipeCreated => 'റെസിപ്പി തയ്യാറാക്കി!';

  @override
  String get editRecipe => 'എഡിറ്റ് ചെയ്യുക';

  @override
  String get deleteRecipe => 'ഡിലീറ്റ് ചെയ്യുക';

  @override
  String get deleteRecipeConfirm => 'ഈ റെസിപ്പി ഡിലീറ്റ് ചെയ്യണോ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\" ഡിലീറ്റ് ചെയ്യണമെന്ന് നിങ്ങൾക്ക് ഉറപ്പാണോ? ഈ പ്രവർത്തനം റദ്ദാക്കാൻ കഴിയില്ല.';
  }

  @override
  String get ingredients => 'ചേരുവകൾ';

  @override
  String get instructions => 'നിർദ്ദേശങ്ങൾ';

  @override
  String get prepTime => 'തയ്യാറാക്കുന്ന സമയം';

  @override
  String get recipeSaved => 'റെസിപ്പി സേവ് ചെയ്തു!';

  @override
  String get noRecipesSaved => 'റെസിപ്പികളൊന്നും സേവ് ചെയ്തിട്ടില്ല';

  @override
  String get noRecipesSavedHint =>
      'താഴെയുള്ള ബട്ടൺ അമർത്തി നിങ്ങളുടെ ആദ്യത്തെ റെസിപ്പി നിർമ്മിക്കുക.';

  @override
  String get myRecipes => 'എന്റെ റെസിപ്പികൾ';

  @override
  String get newRecipe => 'പുതിയ റെസിപ്പി';

  @override
  String get loadingRecipes => 'നിങ്ങളുടെ റെസിപ്പികൾ ലോഡ് ചെയ്യുന്നു...';

  @override
  String get errorLoadingRecipes => 'റെസിപ്പികൾ ലോഡ് ചെയ്യുന്നതിൽ പിശക്';

  @override
  String get addIngredient => 'ചേരുവ ചേർക്കുക';

  @override
  String get saveRecipe => 'സേവ് ചെയ്യുക';

  @override
  String get recipeName => 'റെസിപ്പിയുടെ പേര്';

  @override
  String get shortDescription => 'ലഘുവിവരണം';

  @override
  String get prepTimeMinutes => 'തയ്യാറാക്കുന്ന സമയം (മിനിറ്റ്)';

  @override
  String get instructionsHint =>
      'ഓരോ വരിയിലും ഒരു ഘട്ടം വീതം ടൈപ്പ് ചെയ്യുക...';

  @override
  String get addPhoto => 'ഫോട്ടോ ചേർക്കുക';

  @override
  String get imageUrlPlaceholder =>
      'അല്ലെങ്കിൽ ഒരു ചിത്രത്തിന്റെ URL ഒട്ടിക്കുക';

  @override
  String get tags => 'ടാഗുകൾ';

  @override
  String get recipeTags => 'റെസിപ്പി ടാഗുകൾ';

  @override
  String get suggestedTags => 'നിർദ്ദേശിച്ചവ';

  @override
  String get searchRecipes => 'റെസിപ്പികൾ തിരയുക...';

  @override
  String get filterByTag => 'ടാഗ് അനുസരിച്ച് ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get allTags => 'എല്ലാം';

  @override
  String get recipeDeleted => 'റെസിപ്പി ഡിലീറ്റ് ചെയ്തു';

  @override
  String get saveChanges => 'മാറ്റങ്ങൾ സേവ് ചെയ്യുക';

  @override
  String get editRecipeTitle => 'റെസിപ്പി എഡിറ്റ് ചെയ്യുക';

  @override
  String get newRecipeTitle => 'പുതിയ റെസിപ്പി';

  @override
  String get requiredField => 'ആവശ്യമാണ്';

  @override
  String get chooseImageSource => 'ചിത്രത്തിന്റെ ഉറവിടം തിരഞ്ഞെടുക്കുക';

  @override
  String get gallery => 'ഗാലറി';

  @override
  String get enterUrl => 'URL നൽകുക';

  @override
  String get recipeImage => 'റെസിപ്പിയുടെ ചിത്രം';

  @override
  String get removeImage => 'ചിത്രം ഒഴിവാക്കുക';

  @override
  String get mealPlannerTitle => 'മീൽ പ്ലാനർ';

  @override
  String get mealPlannerViewMonthly => 'മാസത്തെ കാഴ്ച';

  @override
  String get mealPlannerViewWeekly => 'ആഴ്ചയിലെ കാഴ്ച';

  @override
  String get mealPlannerNoMeals => 'ഭക്ഷണങ്ങളൊന്നും പ്ലാൻ ചെയ്തിട്ടില്ല';

  @override
  String get mealPlannerNoMealsHint =>
      'ഒരു ദിവസം തിരഞ്ഞെടുത്ത് ഭക്ഷണം ചേർക്കുക';

  @override
  String get mealPlannerLoading => 'ഭക്ഷണ പ്ലാൻ ലോഡ് ചെയ്യുന്നു...';

  @override
  String get mealPlannerError => 'ഭക്ഷണ പ്ലാൻ ലോഡ് ചെയ്യുന്നതിൽ പിശക്';

  @override
  String get mealPlannerAddMeal => 'ഭക്ഷണം ചേർക്കുക';

  @override
  String get mealPlannerEditMeal => 'ഭക്ഷണം എഡിറ്റ് ചെയ്യുക';

  @override
  String get mealPlannerDeleteMeal => 'ഭക്ഷണം ഒഴിവാക്കുക';

  @override
  String get mealPlannerMealDeleted => 'ഭക്ഷണം ഒഴിവാക്കി';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count വിളമ്പലുകൾ',
      one: '$count വിളമ്പൽ',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'വിളമ്പലുകൾ';

  @override
  String get mealPlannerNoteLabel => 'കുറിപ്പ് (നിർബന്ധമില്ലാത്തത്)';

  @override
  String get mealPlannerSelectRecipe => 'ഒരു റെസിപ്പി തിരഞ്ഞെടുക്കുക';

  @override
  String get mealPlannerSearchRecipes => 'റെസിപ്പികൾ തിരയുക...';

  @override
  String get mealPlannerNoRecipesFound => 'റെസിപ്പികളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get mealPlannerNoRecipesHint =>
      'ആദ്യം റെസിപ്പീസ് ടാബിൽ റെസിപ്പികൾ നിർമ്മിക്കുക';

  @override
  String get mealPlannerSave => 'പ്ലാനിലേക്ക് ചേർക്കുക';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total-ൽ $count ഭക്ഷണം പ്ലാൻ ചെയ്തു';
  }

  @override
  String get mealPlannerGenerateList => 'ഷോപ്പിംഗ് ലിസ്റ്റ് തയ്യാറാക്കുക';

  @override
  String get mealPlannerGenerateListConfirm =>
      'ഈ ആഴ്ചയിലെ പ്ലാൻ ചെയ്ത ഭക്ഷണങ്ങളിലെ എല്ലാ ചേരുവകളും നിങ്ങളുടെ ഷോപ്പിംഗ് ലിസ്റ്റിലേക്ക് ചേർക്കണോ?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ചേരുവകൾ നിങ്ങളുടെ ലിസ്റ്റിൽ ചേർത്തു!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ചേർക്കാൻ ചേരുവകളൊന്നുമില്ല. ആദ്യം റെസിപ്പികൾ ഉൾപ്പെടുത്തി ഭക്ഷണം പ്ലാൻ ചെയ്യുക.';

  @override
  String get mealPlannerGenerateListNoList =>
      'ആദ്യം ഒരു ഷോപ്പിംഗ് ലിസ്റ്റ് നിർമ്മിക്കുക.';

  @override
  String get mealPlannerMealTypeBreakfast => 'പ്രഭാതഭക്ഷണം';

  @override
  String get mealPlannerMealTypeLunch => 'ഉച്ചഭക്ഷണം';

  @override
  String get mealPlannerMealTypeDinner => 'അത്താഴം';

  @override
  String get mealPlannerMealTypeSnack => 'ലഘുഭക്ഷണം';

  @override
  String get mealPlannerDateLabel => 'തീയതി';

  @override
  String get mealPlannerWeekEmpty => 'ഈ ആഴ്ചയിൽ പ്ലാൻ ചെയ്തവ ഒന്നുമില്ല';

  @override
  String get mealPlannerWeekEmptyHint =>
      'നിങ്ങളുടെ ഭക്ഷണം പ്ലാൻ ചെയ്യാൻ ഏതെങ്കിലും ദിവസം തിരഞ്ഞെടുക്കുക!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes മിനിറ്റ്';
  }

  @override
  String get inviteToList => 'പട്ടികയിലേക്ക് ക്ഷണിക്കുക';

  @override
  String get shareApp => 'ആപ്പ് പങ്കിടുക';

  @override
  String get shareAppDescription =>
      'KipiList ഉപയോഗിക്കുന്നതിന് സുഹൃത്തുക്കളെ ക്ഷണിക്കുക';

  @override
  String shareReferralText(Object url) {
    return 'എൻ്റെ ഷോപ്പിംഗ് സംഘടിപ്പിക്കാൻ ഞാൻ KipiList ഉപയോഗിക്കുന്നു! എൻ്റെ ലിങ്ക് വഴി ഡൗൺലോഡ് ചെയ്യൂ, ഞങ്ങൾ രണ്ടുപേർക്കും 7 ദിവസത്തെ പ്രീമിയം സൗജന്യമായി ലഭിക്കും: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList പ്രീമിയം 7 ദിവസത്തെ നേടൂ!';
}

/// The translations for Malayalam, as used in India (`ml_IN`).
class AppLocalizationsMlIn extends AppLocalizationsMl {
  AppLocalizationsMlIn() : super('ml_IN');

  @override
  String get appTitle => 'ഷോപ്പിംഗ് ലിസ്റ്റ്';

  @override
  String get lists => 'ലിസ്റ്റുകൾ';

  @override
  String get pantry => 'പാന്ട്രി';

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get save => 'സംരക്ഷിക്കുക';

  @override
  String get create => 'സൃഷ്ടിക്കുക';

  @override
  String get add => 'ചേർക്കുക';

  @override
  String get remove => 'നീക്കംചെയ്യുക';

  @override
  String get delete => 'ഇല്ലാതാക്കുക';

  @override
  String get edit => 'എഡിറ്റ് ചെയ്യുക';

  @override
  String get copy => 'പകർത്തുക';

  @override
  String get next => 'അടുത്തത്';

  @override
  String get retry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get regenerate => 'പുനഃസൃഷ്ടിക്കുക';

  @override
  String get copiedToClipboard => 'ക്ലിപ്പ്ബോർഡിലേക്ക് പകർത്തി';

  @override
  String get confirm => 'സ്ഥിരീകരിക്കുക';

  @override
  String get close => 'അടയ്ക്കുക';

  @override
  String get import => 'ഇറക്കുമതി ചെയ്യുക';

  @override
  String get rename => 'പുനർനാമകരണം';

  @override
  String get upgrade => 'അപ്‌ഗ്രേഡ് ചെയ്യുക';

  @override
  String get clear => 'മായ്ക്കുക';

  @override
  String error(String message) {
    return 'പിശക്: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'പിശക്: $message';
  }

  @override
  String get purchaseError =>
      'വാങ്ങൽ പ്രോസസ്സ് ചെയ്യുന്നതിൽ പിശക്. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get restoreError =>
      'വാങ്ങലുകൾ പുനഃസ്ഥാപിക്കുന്നതിൽ പിശക്. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get loading => 'ലോഡ് ചെയ്യുന്നു...';

  @override
  String get fieldRequired => 'നിർബന്ധിത ഫീൽഡ്';

  @override
  String get addedFeedback => 'ചേർത്തു!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count തിരഞ്ഞെടുത്തു',
      one: '$count തിരഞ്ഞെടുത്തു',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'ഏകദേശം';

  @override
  String get alreadyPurchased => 'ഇതിനകം വാങ്ങിയത്';

  @override
  String get clearList => 'ലിസ്റ്റ് മായ്ക്കുക';

  @override
  String get clearPurchased => 'വാങ്ങിയവ മായ്ക്കുക';

  @override
  String get share => 'പങ്കിടുക';

  @override
  String get shareViaCode => 'കോഡ് വഴി പങ്കിടുക';

  @override
  String get importViaCode => 'കോഡ് വഴി ഇറക്കുമതി ചെയ്യുക';

  @override
  String get listAssistant => 'ലിസ്റ്റ് അസിസ്റ്റന്റ്';

  @override
  String get globalAssistant => 'ഗ്ലോബൽ അസിസ്റ്റന്റ്';

  @override
  String get becomePremium => 'പ്രീമിയം ആകുക';

  @override
  String get manageSubscription => 'സബ്‌സ്ക്രിപ്ഷൻ നിയന്ത്രിക്കുക';

  @override
  String get completePurchase => 'വാങ്ങൽ പൂർത്തിയാക്കുക';

  @override
  String get confirmClearList => 'എല്ലാ ഇനങ്ങളും നീക്കംചെയ്യണോ?';

  @override
  String get shareListTitle => 'ലിസ്റ്റ് പങ്കിടുക';

  @override
  String get shareThisCode => 'ഈ കോഡ് പങ്കിടുക:';

  @override
  String get validForLimitedTime => 'പരിമിത സമയത്തേക്ക് മാത്രം സാധുത';

  @override
  String get importListTitle => 'ലിസ്റ്റ് ഇറക്കുമതി ചെയ്യുക';

  @override
  String get enterCodeHint => 'കോഡ് നൽകുക';

  @override
  String get confirmArchiveTitle => 'വാങ്ങൽ പൂർത്തിയാക്കുക';

  @override
  String get confirmArchiveContent =>
      'ഈ വാങ്ങൽ പൂർത്തിയാക്കി ലിസ്റ്റ് ആർക്കൈവ് ചെയ്യണോ?';

  @override
  String get complete => 'പൂർത്തിയാക്കുക';

  @override
  String get listArchived => 'ലിസ്റ്റ് വിജയകരമായി ആർക്കൈവ് ചെയ്തു!';

  @override
  String listAdded(String listName) {
    return '$listName ചേർത്തു!';
  }

  @override
  String get buy => 'വാങ്ങുക';

  @override
  String get unmark => 'അൺമാർക്ക് ചെയ്യുക';

  @override
  String confirmDeleteItems(int count) {
    return '$count ഇനം നീക്കംചെയ്യണോ?';
  }

  @override
  String get confirmDeleteTitle => 'സ്ഥിരീകരിക്കുക';

  @override
  String confirmContent(int count) {
    return '$count ഇനം നീക്കംചെയ്യണോ?';
  }

  @override
  String get archiveList => 'ലിസ്റ്റ് ആർക്കൈവ് ചെയ്യുക';

  @override
  String get pantryAppBar => 'പാന്ട്രി';

  @override
  String get generateShoppingList => 'ഷോപ്പിംഗ് ലിസ്റ്റ് ജനറേറ്റ് ചെയ്യുക';

  @override
  String get pantryEmpty => 'പാന്ട്രി ശൂന്യമാണ്';

  @override
  String get pantryEmptySubtitle =>
      'വീട്ടിൽ സൂക്ഷിക്കണമെന്ന് ആഗ്രഹിക്കുന്ന ഉൽപ്പന്നങ്ങൾ ചേർക്കുക';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit ഇനം വാങ്ങേണ്ടതുണ്ട്';
  }

  @override
  String get noItemsToBuy => 'വാങ്ങേണ്ട ഇനങ്ങളൊന്നുമില്ല';

  @override
  String get newPantryList => 'പാന്ട്രി ഷോപ്പിംഗ്';

  @override
  String get newListTitle => 'പുതിയ ഷോപ്പിംഗ് ലിസ്റ്റ്';

  @override
  String itemsWillBeAdded(int count) {
    return '$count ഇനം ചേർക്കും';
  }

  @override
  String get listNameLabel => 'ലിസ്റ്റിന്റെ പേര്';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" എന്ന ലിസ്റ്റ് $count ഇനങ്ങളോടെ സൃഷ്ടിച്ചു';
  }

  @override
  String get noTracking => 'ട്രാക്കിംഗ് ഇല്ല';

  @override
  String get markAsPurchased => 'വാങ്ങിയതായി അടയാളപ്പെടുത്തുക';

  @override
  String editPantryItem(String name) {
    return '$name എഡിറ്റ് ചെയ്യുക';
  }

  @override
  String get idealQuantity => 'ആദർശ അളവ്';

  @override
  String get currentQuantity => 'നിലവിലെ അളവ്';

  @override
  String get consumed => 'ഉപഭോഗം ചെയ്തത്';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit ആയി പുനഃസംഭരിച്ചു';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'പാന്ട്രിയിൽ നിന്ന് \"$name\" നീക്കംചെയ്യണോ?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name എഡിറ്റ് ചെയ്യുക';
  }

  @override
  String get settingsAppBar => 'ക്രമീകരണങ്ങൾ';

  @override
  String get language => 'ഭാഷ';

  @override
  String get languagePortuguese => 'പോർച്ചുഗീസ് (ബ്രസീൽ)';

  @override
  String get languageEnglish => 'ഇംഗ്ലീഷ്';

  @override
  String get languageSystem => 'സിസ്റ്റം ഡിഫോൾട്ട്';

  @override
  String get chooseLanguage => 'ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get searchLanguage => 'ഭാഷ തിരയുക...';

  @override
  String get currency => 'കറൻസി';

  @override
  String get chooseCurrency => 'കറൻസി തിരഞ്ഞെടുക്കുക';

  @override
  String get searchCurrency => 'കറൻസി തിരയുക...';

  @override
  String get appearance => 'രൂപഭാവം';

  @override
  String get light => 'ലൈറ്റ്';

  @override
  String get system => 'സിസ്റ്റം';

  @override
  String get dark => 'ഡാർക്ക്';

  @override
  String get themeColor => 'തീം നിറം';

  @override
  String get dynamicColors => 'ഡൈനാമിക് നിറങ്ങൾ';

  @override
  String get dynamicColorsSubtitle =>
      'നിങ്ങളുടെ വാൾപേപ്പറിനെ അടിസ്ഥാനമാക്കിയുള്ള നിറങ്ങൾ ഉപയോഗിക്കുക';

  @override
  String get dynamicColorsEnabledWarning =>
      'തീം വർണ്ണം പ്രാബല്യത്തിൽ വരുന്നതിന് ഡൈനാമിക് നിറങ്ങൾ പ്രവർത്തനരഹിതമാക്കുക';

  @override
  String get finance => 'ഫിനാൻസ്';

  @override
  String get monthlyBudgetNav => 'പ്രതിമാസ ബജറ്റ്';

  @override
  String get budgetSubtitle => 'നിങ്ങളുടെ പ്രതിമാസ ചെലവ് ട്രാക്ക് ചെയ്യുക';

  @override
  String get data => 'ഡാറ്റ';

  @override
  String get backupNav => 'ബാക്കപ്പ്';

  @override
  String get backupSubtitle =>
      'നിങ്ങളുടെ ഡാറ്റ എക്‌സ്‌പോർട്ട് ചെയ്യുക അല്ലെങ്കിൽ ഇറക്കുമതി ചെയ്യുക';

  @override
  String get about => 'കുറിച്ച്';

  @override
  String get version => 'പതിപ്പ്';

  @override
  String get privacy => 'സ്വകാര്യത';

  @override
  String get termsOfUse => 'ഉപയോഗ നിബന്ധനകൾ';

  @override
  String get backupTitle => 'ബാക്കപ്പ്';

  @override
  String get backupPremiumDescription =>
      'ബാക്കപ്പും എക്‌സ്‌പോർട്ടും ഒരു പ്രീമിയം ഫീച്ചറാണ്';

  @override
  String get exportData => 'ഡാറ്റ എക്‌സ്‌പോർട്ട് ചെയ്യുക';

  @override
  String get exportDataSubtitle => 'എല്ലാ ലിസ്റ്റുകളും JSON ആയി സംരക്ഷിക്കുക';

  @override
  String get importData => 'ഡാറ്റ ഇറക്കുമതി ചെയ്യുക';

  @override
  String get importDataSubtitle => 'JSON-ൽ നിന്ന് ലിസ്റ്റുകൾ പുനഃസ്ഥാപിക്കുക';

  @override
  String get importJsonTitle => 'JSON ഇറക്കുമതി ചെയ്യുക';

  @override
  String get importJsonHint => 'ബാക്കപ്പ് JSON ഇവിടെ പേസ്റ്റ് ചെയ്യുക...';

  @override
  String get backupExported => 'ബാക്കപ്പ് എക്‌സ്‌പോർട്ട് ചെയ്തു!';

  @override
  String get budgetAppBar => 'പ്രതിമാസ ബജറ്റ്';

  @override
  String get budgetPremiumLocked => 'ആഗോള പ്രതിമാസ ബജറ്റ് പ്രീമിയം ആണ്';

  @override
  String get budgetUpgradePrompt => 'അൺലോക്ക് ചെയ്യാൻ അപ്‌ഗ്രേഡ് ചെയ്യുക';

  @override
  String get noBudgetDefined => 'ബജറ്റ് സജ്ജീകരിച്ചിട്ടില്ല';

  @override
  String totalEstimated(String amount) {
    return 'ആകെ ഏകദേശം: $amount';
  }

  @override
  String get setBudgetButton => 'ബജറ്റ് സജ്ജമാക്കുക';

  @override
  String get budgetLists => 'ലിസ്റ്റുകൾ';

  @override
  String get budgetValueLabel => 'തുക';

  @override
  String get setBudgetTitle => 'പ്രതിമാസ ബജറ്റ്';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'എല്ലാം';

  @override
  String get filterPending => 'തീർപ്പാക്കാത്തവ';

  @override
  String get filterPurchased => 'വാങ്ങിയവ';

  @override
  String get sortName => 'പേര്';

  @override
  String get sortCategory => 'വിഭാഗം';

  @override
  String get sortDate => 'തീയതി';

  @override
  String get sortManual => 'രംഗം';

  @override
  String get addItem => 'ഇനം ചേർക്കുക';

  @override
  String get itemName => 'ഇനത്തിന്റെ പേര്';

  @override
  String get quantityShort => 'അളവ്';

  @override
  String get unit => 'യൂണിറ്റ്';

  @override
  String get category => 'വിഭാഗം';

  @override
  String get estimatedPrice => 'ഏകദേശ വില';

  @override
  String get addItemPrice => 'ഏകദേശ വില';

  @override
  String get editItem => 'ഇനം എഡിറ്റ് ചെയ്യുക';

  @override
  String get quantityFull => 'അളവ്';

  @override
  String get editItemPrice => 'ഏകദേശ വില';

  @override
  String get addToPantry => 'പാന്ട്രിയിലേക്ക് ചേർക്കുക';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" നിങ്ങളുടെ പാന്ട്രിയിലേക്ക് ചേർക്കണോ?';
  }

  @override
  String get yes => 'അതെ';

  @override
  String get productName => 'ഉൽപ്പന്നത്തിന്റെ പേര്';

  @override
  String get idealQty => 'ആദർശ അളവ്';

  @override
  String get currentQty => 'നിലവിലെ അളവ്';

  @override
  String get trackStock => 'സ്റ്റോക്ക് ട്രാക്ക് ചെയ്യുക';

  @override
  String get trackStockActive => 'ഷോപ്പിംഗ് നിർദ്ദേശങ്ങളിൽ ദൃശ്യമാകുന്നു';

  @override
  String get trackStockInactive => 'ഷോപ്പിംഗ് നിർദ്ദേശം സൃഷ്ടിക്കുന്നില്ല';

  @override
  String get createListDialog => 'ലിസ്റ്റ് സൃഷ്ടിക്കുക';

  @override
  String get renameListDialog => 'ലിസ്റ്റ് പുനർനാമകരണം';

  @override
  String get listHistory => 'ലിസ്റ്റ് ചരിത്രം';

  @override
  String get myLists => 'എന്റെ ലിസ്റ്റുകൾ';

  @override
  String get viewActive => 'സജീവമായവ കാണുക';

  @override
  String get viewHistory => 'ചരിത്രം കാണുക';

  @override
  String get noArchivedLists => 'ആർക്കൈവ് ചെയ്ത ലിസ്റ്റുകളൊന്നുമില്ല';

  @override
  String get noActiveLists => 'സജീവ ലിസ്റ്റുകളൊന്നുമില്ല';

  @override
  String completedOn(String date) {
    return '$date ന് പൂർത്തിയാക്കി';
  }

  @override
  String get sharedLabel => 'പങ്കിട്ടത്';

  @override
  String get restore => 'പുനഃസ്ഥാപിക്കുക';

  @override
  String get removeSharedTooltip => 'നീക്കംചെയ്യുക';

  @override
  String get deleteListTitle => 'ലിസ്റ്റ് ഇല്ലാതാക്കുക';

  @override
  String deleteListContent(String name) {
    return '\"$name\" ഇല്ലാതാക്കണമെന്ന് ഉറപ്പാണോ? എല്ലാ ഇനങ്ങളും നീക്കംചെയ്യും.';
  }

  @override
  String get removeSharedListTitle => 'പങ്കിട്ട ലിസ്റ്റ് നീക്കംചെയ്യുക';

  @override
  String removeSharedListContent(String name) {
    return 'നിങ്ങളുടെ ലിസ്റ്റുകളിൽ നിന്ന് \"$name\" നീക്കംചെയ്യണോ? യഥാർത്ഥ ലിസ്റ്റിനെ ബാധിക്കില്ല.';
  }

  @override
  String get createNewList => 'പുതിയ ലിസ്റ്റ് സൃഷ്ടിക്കുക';

  @override
  String get aiAssistant => 'AI അസിസ്റ്റന്റ്';

  @override
  String get aiAssistantDescription =>
      'ഞങ്ങളുടെ AI അസിസ്റ്റന്റുമായി സ്മാർട്ട് നിർദ്ദേശങ്ങളും പാചകക്കുറിപ്പുകളും വ്യക്തിഗത നുറുങ്ങുകളും നേടുക.';

  @override
  String get generalAssistant => 'ജനറൽ അസിസ്റ്റന്റ്';

  @override
  String get newChat => 'പുതിയ ചാറ്റ്';

  @override
  String get noHistory => 'ചാറ്റ് ചരിത്രമില്ല';

  @override
  String get deleteSession => 'ചാറ്റ് ഇല്ലാതാക്കുക';

  @override
  String get deleteSessionConfirm =>
      'ഈ ചാറ്റ് ഇല്ലാതാക്കണമെന്ന് തീർച്ചയാണോ? സന്ദേശങ്ങൾ ശാശ്വതമായി നഷ്ടപ്പെടും.';

  @override
  String get clearHistory => 'ചരിത്രം മായ്ക്കുക';

  @override
  String get clearHistoryConfirm => 'ഈ സെഷനിലെ എല്ലാ സന്ദേശങ്ങളും മായ്ക്കണോ?';

  @override
  String get chatHint => 'നിങ്ങളുടെ സന്ദേശം ടൈപ്പ് ചെയ്യുക...';

  @override
  String chatError(String error) {
    return 'ചാറ്റ് ലോഡ് ചെയ്യുന്നതിൽ പിശക്: $error';
  }

  @override
  String get listHelp => 'നിങ്ങളുടെ ലിസ്റ്റിൽ എങ്ങനെ സഹായിക്കണം?';

  @override
  String get generalHelp => 'ഇന്ന് നിങ്ങളുടെ ഷോപ്പിംഗിൽ എങ്ങനെ സഹായിക്കണം?';

  @override
  String get chatSubtitle =>
      'ഇനങ്ങളുടെ നിർദ്ദേശങ്ങൾക്കും പാചകക്കുറിപ്പുകൾക്കും സേവിംഗ് ടിപ്പുകൾക്കുമായി ചോദിക്കുക.';

  @override
  String get aiError =>
      'ക്ഷമിക്കണം, നിങ്ങളുടെ അഭ്യർത്ഥന പ്രോസസ്സ് ചെയ്യുന്നതിൽ പിശക് സംഭവിച്ചു. നിങ്ങളുടെ കണക്ഷൻ പരിശോധിക്കുക അല്ലെങ്കിൽ പിന്നീട് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt =>
      'പ്രീമിയം ഫീച്ചറുകൾ\nഅൺലോക്ക് ചെയ്യാൻ ലോഗിൻ ചെയ്യുക';

  @override
  String get signInGoogle => 'Google ഉപയോഗിച്ച് സൈൻ ഇൻ ചെയ്യുക';

  @override
  String get signInApple => 'Apple ഉപയോഗിച്ച് സൈൻ ഇൻ ചെയ്യുക';

  @override
  String get continueAsGuest => 'അതിഥിയായി തുടരുക';

  @override
  String get onboardingWelcomeTitle => 'KipiList-ലേക്ക് സ്വാഗതം';

  @override
  String get onboardingWelcomeDesc =>
      'നിങ്ങളുടെ ഷോപ്പിംഗ് സംഘടിപ്പിക്കുന്നതിനും പണം ലാഭിക്കുന്നതിനുമുള്ള ഏറ്റവും മികച്ച മാർഗം.';

  @override
  String get onboardingSetupTitle => 'നിങ്ങളുടെ അനുഭവം വ്യക്തിഗതമാക്കുക';

  @override
  String get onboardingSetupDesc =>
      'KipiList എങ്ങനെ കാണണമെന്നും നിങ്ങൾക്കായി പ്രവർത്തിക്കണമെന്നും നിങ്ങൾ ആഗ്രഹിക്കുന്നുവെന്ന് തിരഞ്ഞെടുക്കുക.';

  @override
  String get onboardingLoginTitle => 'എല്ലാം ക്ലൗഡിലേക്ക് സംരക്ഷിക്കുക';

  @override
  String get onboardingLoginDesc =>
      'നിങ്ങളുടെ എല്ലാ ഉപകരണങ്ങളിലും നിങ്ങളുടെ ഡാറ്റ സമന്വയിപ്പിച്ചു';

  @override
  String get onboardingShareTitle => 'നിങ്ങൾ ഇഷ്ടപ്പെടുന്നവരുമായി പങ്കിടുക';

  @override
  String get onboardingShareDesc =>
      'കുടുംബാംഗങ്ങളുമായും സുഹൃത്തുക്കളുമായും ലിസ്റ്റുകൾ തത്സമയം സമന്വയിപ്പിക്കുക';

  @override
  String get onboardingPremiumTitle => 'എല്ലാ സവിശേഷതകളും അൺലോക്ക് ചെയ്യുക';

  @override
  String get onboardingPremiumSubtitle =>
      'നിങ്ങളുടെ ഷോപ്പിംഗ് ലിസ്റ്റുകൾ പരമാവധി പ്രയോജനപ്പെടുത്തുക';

  @override
  String get onboardingAnnualBadge => 'മികച്ച മൂല്യം';

  @override
  String get onboardingMonthlyLabel => 'പ്രതിമാസ';

  @override
  String get onboardingAnnualLabel => 'വാർഷികം';

  @override
  String get onboardingViewAllPlans => 'എല്ലാ പ്ലാനുകളും കാണുക';

  @override
  String get onboardingSubscribeCta => 'സബ്സ്ക്രൈബ് ചെയ്യുക';

  @override
  String get onboardingCancelAnytime =>
      'എപ്പോൾ വേണമെങ്കിലും റദ്ദാക്കുക. പ്രതിബദ്ധതയില്ല.';

  @override
  String get onboardingContinueAsGuest => 'അതിഥിയായി തുടരുക';

  @override
  String get onboardingRestore => 'പുനഃസ്ഥാപിക്കുക';

  @override
  String get onboardingRestoreDesc =>
      'ഇതിനകം ഒരു സബ്സ്ക്രിപ്ഷൻ ഉണ്ടോ? അത് പുനഃസ്ഥാപിക്കാൻ ഇവിടെ ടാപ്പ് ചെയ്യുക.';

  @override
  String get onboardingExit => 'പുറത്ത്';

  @override
  String get onboardingPersonalizationTitle => 'നമുക്ക് നിങ്ങളെ പരിചയപ്പെടാം';

  @override
  String get onboardingPersonalizationDesc =>
      'നിങ്ങളുടെ നിർദ്ദേശങ്ങൾ വ്യക്തിപരമാക്കാനും ഷോപ്പിംഗ് മികച്ചതാക്കാനും ഞങ്ങൾ ഇത് ഉപയോഗിക്കും.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'നിങ്ങളുടെ പ്രിയപ്പെട്ട ഭക്ഷണം ഏതാണ്?';

  @override
  String get onboardingPersonalizationFoodHint => 'ഉദാ. പിസ്സ, സുഷി, ലസാഗ്ന...';

  @override
  String get onboardingPersonalizationCta => 'തുടരുക';

  @override
  String get onboardingPersonalizationSkip => 'തൽക്കാലം ഒഴിവാക്കുക';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'തുടരാൻ നിങ്ങളുടെ പ്രിയപ്പെട്ട ഭക്ഷണം ഞങ്ങളോട് പറയുക';

  @override
  String get settingsDefaultScreen => 'ഡിഫോൾട്ട് ഹോം സ്‌ക്രീൻ';

  @override
  String get settingsDefaultScreenSubtitle =>
      'ഷോപ്പിംഗ് ലിസ്റ്റ് അല്ലെങ്കിൽ AI ചാറ്റ് എന്നിവയിൽ ഒന്ന് തിരഞ്ഞെടുക്കുക';

  @override
  String get settingsScreenList => 'ഷോപ്പിംഗ് ലിസ്റ്റ്';

  @override
  String get settingsScreenChat => 'AI ചാറ്റ്';

  @override
  String loginError(String error) {
    return 'ലോഗിൻ പിശക്: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get premiumUpgrade => 'അൺലോക്ക് ചെയ്യാൻ അപ്‌ഗ്രേഡ് ചെയ്യുക';

  @override
  String get itemRemoved => 'ഇനം നീക്കംചെയ്തു';

  @override
  String get undo => 'പഴയപടിയാക്കുക';

  @override
  String get emptyListTitle => 'നിങ്ങളുടെ ലിസ്റ്റ് ശൂന്യമാണ്';

  @override
  String get emptyListSubtitle => 'ആരംഭിക്കാൻ ഇനങ്ങൾ ചേർക്കുക';

  @override
  String get noListFoundTitle => 'ലിസ്റ്റുകളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get noListFoundSubtitle =>
      'ആരംഭിക്കാൻ നിങ്ങളുടെ ആദ്യ ലിസ്റ്റ് സൃഷ്ടിക്കുക';

  @override
  String get createFirstList => 'ആദ്യ ലിസ്റ്റ് സൃഷ്ടിക്കുക';

  @override
  String get listBudgetTitle => 'ലിസ്റ്റ് ബജറ്റ്';

  @override
  String get budgetAmountLabel => 'ബജറ്റ് തുക';

  @override
  String get removeBudget => 'നീക്കംചെയ്യുക';

  @override
  String get prefUnlimitedLists => 'പരിധിയില്ലാത്ത ലിസ്റ്റുകൾ';

  @override
  String get prefSharing => 'ലിസ്റ്റുകൾ പങ്കിടുക';

  @override
  String get prefFullHistory => 'പൂർണ്ണ ചരിത്രം';

  @override
  String get prefExportData => 'ഡാറ്റ എക്‌സ്‌പോർട്ട് ചെയ്യുക';

  @override
  String get prefCustomThemes => 'ഇഷ്ടാനുസൃത തീമുകൾ';

  @override
  String get prefMonthlyBudget => 'ആഗോള പ്രതിമാസ ബജറ്റ്';

  @override
  String get prefAIAssistant => 'വ്യക്തിഗത AI അസിസ്റ്റന്റ്';

  @override
  String get prefUnlimitedPantry => 'പരിധിയില്ലാത്ത പാന്ട്രി';

  @override
  String get prefInteractiveArtifacts => 'സംവേദനാത്മക AI ആർട്ടിഫാക്റ്റുകൾ';

  @override
  String get themeGreen => 'പച്ച';

  @override
  String get themeBlue => 'നീല';

  @override
  String get themePurple => 'പർപ്പിൾ';

  @override
  String get themeRed => 'ചുവപ്പ്';

  @override
  String get themeOrange => 'ഓറഞ്ച്';

  @override
  String get themePink => 'പിങ്ക്';

  @override
  String get themeIndigo => 'ഇൻഡിഗോ';

  @override
  String get themeAmber => 'ആമ്പർ';

  @override
  String get themeTeal => 'ടീൽ';

  @override
  String get themeBrown => 'ബ്രൗൺ';

  @override
  String get catFruits => 'പഴങ്ങൾ';

  @override
  String get catCleaning => 'ക്ലീനിംഗ്';

  @override
  String get catBeverages => 'പാനീയങ്ങൾ';

  @override
  String get catBakery => 'ബേക്കറി';

  @override
  String get catOthers => 'മറ്റുള്ളവ';

  @override
  String get unitPack => 'പായ്ക്ക്';

  @override
  String get shareSubject => 'ഷോപ്പിംഗ് ലിസ്റ്റ്';

  @override
  String get monthlyBudgetTitle => 'പ്രതിമാസ ബജറ്റ്';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'ലിസ്റ്റ് ഇല്ലാതാക്കുക';

  @override
  String get pantryItemRemoved => 'ഇനം നീക്കംചെയ്തു';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit ഇനങ്ങൾ വാങ്ങേണ്ടതുണ്ട്',
      one: '$deficit ഇനം വാങ്ങേണ്ടതുണ്ട്',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'കാർട്ട് ആകെ';

  @override
  String get restockLabel => 'പുനഃസംഭരിക്കുക';

  @override
  String get advancedFeatures => 'വിപുലമായ ഫീച്ചറുകൾ';

  @override
  String get selectAll => 'എല്ലാം തിരഞ്ഞെടുക്കുക';

  @override
  String get deselectAll => 'എല്ലാം അൺസെലക്റ്റ് ചെയ്യുക';

  @override
  String get monthlyBudgetAppBar => 'പ്രതിമാസ ബജറ്റ്';

  @override
  String get budgetEditTitle => 'പ്രതിമാസ ബജറ്റ്';

  @override
  String get budgetDashboardTitle => 'ഡാഷ്ബോർഡ്';

  @override
  String get selectListForDashboard =>
      'ഡാഷ്ബോർഡ് കാണുന്നതിന് ഒരു ലിസ്റ്റ് തിരഞ്ഞെടുക്കുക.';

  @override
  String get spendingAnalysis => 'ചെലവ് വിശകലനം';

  @override
  String get noItemsToAnalyze => 'വിശകലനം ചെയ്യാൻ ലിസ്റ്റിൽ ഇനങ്ങളൊന്നുമില്ല.';

  @override
  String get markItemsToSeeAnalysis =>
      'വിശകലനം കാണുന്നതിന് ഇനങ്ങൾ വാങ്ങിയതായി അടയാളപ്പെടുത്തുക.';

  @override
  String get totalSpending => 'ആകെ ചെലവ്';

  @override
  String get spendingByCategory => 'വിഭാഗം അനുസരിച്ച് ചെലവ്';

  @override
  String get achievements => 'നേട്ടങ്ങൾ';

  @override
  String get exportPdfExcel => 'PDF/Excel എക്‌സ്‌പോർട്ട് ചെയ്യുക';

  @override
  String get exportPdf => 'PDF ആയി എക്‌സ്‌പോർട്ട് ചെയ്യുക';

  @override
  String get exportExcel => 'Excel ആയി എക്‌സ്‌പോർട്ട് ചെയ്യുക';

  @override
  String get organizingAi => 'AI ഉപയോഗിച്ച് ഓർഗനൈസ് ചെയ്യുന്നു...';

  @override
  String get yesLabel => 'അതെ';

  @override
  String get noLabel => 'ഇല്ല';

  @override
  String get shareListText => 'എന്റെ ഷോപ്പിംഗ് ലിസ്റ്റ്';

  @override
  String get emptyListAddItems =>
      'നിങ്ങളുടെ ലിസ്റ്റ് ശൂന്യമാണ്! ആദ്യം ഇനങ്ങൾ ചേർക്കുക. ℹ️';

  @override
  String get listOrganizedMagic =>
      'ലിസ്റ്റ് വിഭാഗങ്ങൾ അനുസരിച്ച് മാന്ത്രികമായി ക്രമീകരിച്ചു! ✨';

  @override
  String get shoppingMode => 'ഷോപ്പിംഗ് മോഡ്';

  @override
  String get smartOrganization => 'സ്മാർട്ട് ഓർഗനൈസേഷൻ';

  @override
  String get savings => 'സേവിംഗ്സ്';

  @override
  String get shoppingModeHeader => 'ഷോപ്പിംഗ് മോഡ്';

  @override
  String get shareAsText => 'ഫോർമാറ്റ് ചെയ്ത ടെക്സ്റ്റായി ഇനങ്ങൾ അയയ്ക്കുക';

  @override
  String get shareRealtime => 'മറ്റ് ആളുകളുമായി തത്സമയ സമന്വയം';

  @override
  String get quickRecipe => 'പെട്ടെന്നുള്ള പാചകക്കുറിപ്പ്';

  @override
  String get quickRecipePrompt =>
      'എന്റെ ലിസ്റ്റിലെ ഇനങ്ങൾ ഉപയോഗിച്ച് പാചകക്കുറിപ്പുകൾ നിർദ്ദേശിക്കുക.';

  @override
  String get economyTips => 'സേവിംഗ് ടിപ്പുകൾ';

  @override
  String get economyTipsPrompt => 'ഈ വാങ്ങലിൽ എങ്ങനെ പണം ലാഭിക്കാം?';

  @override
  String get organizeAisles => 'ഐലുകൾ അനുസരിച്ച് ക്രമീകരിക്കുക';

  @override
  String get organizeAislesPrompt =>
      'മാർക്കറ്റ് ഐലുകൾ അനുസരിച്ച് ക്രമീകരിക്കുക.';

  @override
  String get recipeSuggestion => 'പാചകക്കുറിപ്പ് നിർദ്ദേശം';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining ക്രെഡിറ്റുകൾ ശേഷിക്കുന്നു';
  }

  @override
  String get addAllToList => 'എല്ലാം ലിസ്റ്റിലേക്ക് ചേർക്കുക';

  @override
  String get organizeByAisles => 'ഐലുകൾ അനുസരിച്ച് ക്രമീകരിക്കുക';

  @override
  String get voiceTranscriptionTooltip => 'വോയ്സ് ടൈപ്പിംഗ് (സൗജന്യം)';

  @override
  String get aiVoiceCommandTooltip => 'AI വോയ്സ് കമാൻഡ് (പ്രീമിയം)';

  @override
  String get voiceCommandTitle => 'AI വോയ്സ് കമാൻഡ്';

  @override
  String get voiceCommandContent =>
      'നിങ്ങളുടെ ലിസ്റ്റ് നിയന്ത്രിക്കാൻ സ്വാഭാവികമായി സംസാരിക്കുക!\n\nഉദാഹരണങ്ങൾ:\n• \'ബ്രെഡ്, ചീസ്, ഹാം എന്നിവ ചേർക്കുക\'\n• \'ലോൺഡ്രി ഡിറ്റർജന്റ് നീക്കംചെയ്യുക\'\n• \'തീം നീലയിലേക്ക് മാറ്റുക\'\n\nഇത് KipiList പ്രീമിയത്തിന്റെ എക്സ്ക്ലൂസീവ് ഫീച്ചറാണ്.';

  @override
  String get voiceCommandPlanBtn => 'പ്ലാനുകൾ കാണുക';

  @override
  String get itemsAddedSuccess => 'ഇനങ്ങൾ വിജയകരമായി ലിസ്റ്റിലേക്ക് ചേർത്തു!';

  @override
  String get viewList => 'ലിസ്റ്റ് കാണുക';

  @override
  String get feedbackTitle => 'ഫീഡ്‌ബാക്ക് അയയ്ക്കുക';

  @override
  String get feedbackPrompt => 'എന്താണ് നിങ്ങൾ പങ്കിടാൻ ആഗ്രഹിക്കുന്നത്?';

  @override
  String get feedbackTypeBug => 'ബഗ് റിപ്പോർട്ട് ചെയ്യുക';

  @override
  String get feedbackTypeBugHint => 'എന്തോ ശരിയായി പ്രവർത്തിക്കുന്നില്ല';

  @override
  String get feedbackTypeSuggestion => 'നിർദ്ദേശം';

  @override
  String get feedbackTypeSuggestionHint => 'ആപ്പ് മെച്ചപ്പെടുത്താനുള്ള ആശയം';

  @override
  String get feedbackTypeTranslation => 'വിവർത്തന പ്രശ്നം';

  @override
  String get feedbackTypeTranslationHint =>
      'തെറ്റായ അല്ലെങ്കിൽ അസ്വാഭാവിക വിവർത്തനം';

  @override
  String get feedbackTypeFeature => 'ഫീച്ചർ അഭ്യർത്ഥന';

  @override
  String get feedbackTypeFeatureHint => 'നിങ്ങൾ കാണാൻ ആഗ്രഹിക്കുന്ന ഫീച്ചർ';

  @override
  String get feedbackTypeOther => 'മറ്റുള്ളവ';

  @override
  String get feedbackTypeOtherHint => 'മറ്റ് തരത്തിലുള്ള ഫീഡ്‌ബാക്ക്';

  @override
  String get feedbackHint => 'നിങ്ങളുടെ ഫീഡ്‌ബാക്ക് വിശദമായി വിവരിക്കുക...';

  @override
  String get feedbackSend => 'ഫീഡ്‌ബാക്ക് അയയ്ക്കുക';

  @override
  String get feedbackSending => 'അയയ്ക്കുന്നു...';

  @override
  String get feedbackThankYou => 'നന്ദി!';

  @override
  String get feedbackThankYouMessage =>
      'നിങ്ങളുടെ ഫീഡ്‌ബാക്ക് ലഭിച്ചു, എല്ലാവർക്കുമായി KipiList മെച്ചപ്പെടുത്താൻ ഇത് ഞങ്ങളെ സഹായിക്കുന്നു.';

  @override
  String get feedbackBack => 'തിരികെ';

  @override
  String feedbackError(String error) {
    return 'അയയ്ക്കുന്നതിൽ പിശക്: $error';
  }

  @override
  String get feedbackRetry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get feedbackSettingsTitle => 'ഫീഡ്‌ബാക്ക് അയയ്ക്കുക';

  @override
  String get feedbackSettingsSubtitle =>
      'ബഗുകൾ റിപ്പോർട്ട് ചെയ്യുക, മെച്ചപ്പെടുത്തലുകൾ നിർദ്ദേശിക്കുക, അല്ലെങ്കിൽ വിവർത്തനങ്ങൾ ശരിയാക്കുക';

  @override
  String get aiEnergy => 'AI ഊർജ്ജം';

  @override
  String get searchInConversation => 'സംഭാഷണത്തിൽ തിരയുക...';

  @override
  String get noMessagesFound => 'സന്ദേശങ്ങളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get suggestedQuestions => 'നിർദ്ദേശിച്ച ചോദ്യങ്ങൾ:';

  @override
  String get shoppingAssistant => 'ഷോപ്പിംഗ് അസിസ്റ്റൻ്റ്';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased of $total വാങ്ങി';
  }

  @override
  String get estimatedCost => 'കണക്കാക്കിയത്';

  @override
  String get viewItems => 'ഇനങ്ങൾ കാണുക';

  @override
  String get noItemsInList => 'ലിസ്റ്റിൽ ഇനങ്ങളൊന്നുമില്ല';

  @override
  String get longHistoryWarning =>
      'നീണ്ട ചരിത്രം: മികച്ച പ്രകടനത്തിനായി അസിസ്റ്റൻ്റ് ഏറ്റവും പുതിയ സന്ദേശങ്ങളിൽ ശ്രദ്ധ കേന്ദ്രീകരിക്കുന്നു.';

  @override
  String get listening => 'കേൾക്കുന്നു...';

  @override
  String get addDirectToList => 'പട്ടികയിലേക്ക് നേരിട്ട് ചേർക്കുക';

  @override
  String get unlockFullResponse => 'പൂർണ്ണ പ്രതികരണം അൺലോക്ക് ചെയ്യുക';

  @override
  String get switchList => 'ലിസ്റ്റ് മാറുക';

  @override
  String get marketMode => 'മാർക്കറ്റ് മോഡ്';

  @override
  String get backToChat => 'ചാറ്റിലേക്ക് മടങ്ങുക';

  @override
  String get finishShopping => 'ഷോപ്പിംഗ് പൂർത്തിയാക്കുക';

  @override
  String get welcomeAiAssistant => 'AI അസിസ്റ്റൻ്റിലേക്ക് സ്വാഗതം';

  @override
  String get createListToStartAi =>
      'സ്‌മാർട്ട് ചാറ്റ് ഉപയോഗിക്കാൻ തുടങ്ങാൻ ഒരു ഷോപ്പിംഗ് ലിസ്റ്റ് സൃഷ്‌ടിക്കുക.';

  @override
  String get howCanIHelp => 'എനിക്ക് എങ്ങനെ സഹായിക്കാനാകും?';

  @override
  String get chatSubtitleShort =>
      'വിലകൾ, പാചകക്കുറിപ്പുകൾ, ഓർഗനൈസേഷൻ എന്നിവയെക്കുറിച്ച് ചോദിക്കൂ...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total വാങ്ങി';
  }

  @override
  String get quickReplies => 'ദ്രുത മറുപടികൾ:';

  @override
  String get voiceProFeature =>
      'വിപുലമായ വോയ്‌സ് കമാൻഡുകൾ പ്രോ. അടിസ്ഥാന നിർദ്ദേശം പ്രവർത്തനക്ഷമമാക്കുന്നു...';

  @override
  String get viewPro => 'പ്രോ കാണുക';

  @override
  String get errorLoadingChat =>
      'ശ്ശോ! ചാറ്റ് ലോഡ് ചെയ്യുന്നതിൽ എന്തോ കുഴപ്പം സംഭവിച്ചു.';

  @override
  String get errorLoadingChatSubtitle =>
      'നിങ്ങളുടെ കണക്ഷൻ പരിശോധിക്കുക അല്ലെങ്കിൽ പിന്നീട് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get errorOscillation =>
      'നെറ്റ്‌വർക്ക് ആന്ദോളനങ്ങളോ താൽക്കാലിക ലഭ്യതയോ കാരണം ഇത് സംഭവിക്കാം. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get activeListening => 'സജീവമായി കേൾക്കൽ';

  @override
  String get whatToDoWithItem =>
      'ഈ ഇനം ഉപയോഗിച്ച് നിങ്ങൾ എന്താണ് ചെയ്യാൻ ആഗ്രഹിക്കുന്നത്?';

  @override
  String get viewDetails => 'വിശദാംശങ്ങൾ കാണുക';

  @override
  String get openMenu => 'മെനു തുറക്കുക';

  @override
  String get viewRecipe => 'റെസിപ്പി കാണുക';

  @override
  String get recipeCreated => 'റെസിപ്പി തയ്യാറാക്കി!';

  @override
  String get editRecipe => 'എഡിറ്റ് ചെയ്യുക';

  @override
  String get deleteRecipe => 'ഡിലീറ്റ് ചെയ്യുക';

  @override
  String get deleteRecipeConfirm => 'ഈ റെസിപ്പി ഡിലീറ്റ് ചെയ്യണോ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '\"$recipeName\" ഡിലീറ്റ് ചെയ്യണമെന്ന് നിങ്ങൾക്ക് ഉറപ്പാണോ? ഈ പ്രവർത്തനം റദ്ദാക്കാൻ കഴിയില്ല.';
  }

  @override
  String get ingredients => 'ചേരുവകൾ';

  @override
  String get instructions => 'നിർദ്ദേശങ്ങൾ';

  @override
  String get prepTime => 'തയ്യാറാക്കുന്ന സമയം';

  @override
  String get recipeSaved => 'റെസിപ്പി സേവ് ചെയ്തു!';

  @override
  String get noRecipesSaved => 'റെസിപ്പികളൊന്നും സേവ് ചെയ്തിട്ടില്ല';

  @override
  String get noRecipesSavedHint =>
      'താഴെയുള്ള ബട്ടൺ അമർത്തി നിങ്ങളുടെ ആദ്യത്തെ റെസിപ്പി നിർമ്മിക്കുക.';

  @override
  String get myRecipes => 'എന്റെ റെസിപ്പികൾ';

  @override
  String get newRecipe => 'പുതിയ റെസിപ്പി';

  @override
  String get loadingRecipes => 'നിങ്ങളുടെ റെസിപ്പികൾ ലോഡ് ചെയ്യുന്നു...';

  @override
  String get errorLoadingRecipes => 'റെസിപ്പികൾ ലോഡ് ചെയ്യുന്നതിൽ പിശക്';

  @override
  String get addIngredient => 'ചേരുവ ചേർക്കുക';

  @override
  String get saveRecipe => 'സേവ് ചെയ്യുക';

  @override
  String get recipeName => 'റെസിപ്പിയുടെ പേര്';

  @override
  String get shortDescription => 'ലഘുവിവരണം';

  @override
  String get prepTimeMinutes => 'തയ്യാറാക്കുന്ന സമയം (മിനിറ്റ്)';

  @override
  String get instructionsHint =>
      'ഓരോ വരിയിലും ഒരു ഘട്ടം വീതം ടൈപ്പ് ചെയ്യുക...';

  @override
  String get addPhoto => 'ഫോട്ടോ ചേർക്കുക';

  @override
  String get imageUrlPlaceholder =>
      'അല്ലെങ്കിൽ ഒരു ചിത്രത്തിന്റെ URL ഒട്ടിക്കുക';

  @override
  String get tags => 'ടാഗുകൾ';

  @override
  String get recipeTags => 'റെസിപ്പി ടാഗുകൾ';

  @override
  String get suggestedTags => 'നിർദ്ദേശിച്ചവ';

  @override
  String get searchRecipes => 'റെസിപ്പികൾ തിരയുക...';

  @override
  String get filterByTag => 'ടാഗ് അനുസരിച്ച് ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get allTags => 'എല്ലാം';

  @override
  String get recipeDeleted => 'റെസിപ്പി ഡിലീറ്റ് ചെയ്തു';

  @override
  String get saveChanges => 'മാറ്റങ്ങൾ സേവ് ചെയ്യുക';

  @override
  String get editRecipeTitle => 'റെസിപ്പി എഡിറ്റ് ചെയ്യുക';

  @override
  String get newRecipeTitle => 'പുതിയ റെസിപ്പി';

  @override
  String get requiredField => 'ആവശ്യമാണ്';

  @override
  String get chooseImageSource => 'ചിത്രത്തിന്റെ ഉറവിടം തിരഞ്ഞെടുക്കുക';

  @override
  String get gallery => 'ഗാലറി';

  @override
  String get enterUrl => 'URL നൽകുക';

  @override
  String get recipeImage => 'റെസിപ്പിയുടെ ചിത്രം';

  @override
  String get removeImage => 'ചിത്രം ഒഴിവാക്കുക';

  @override
  String get mealPlannerTitle => 'മീൽ പ്ലാനർ';

  @override
  String get mealPlannerViewMonthly => 'മാസത്തെ കാഴ്ച';

  @override
  String get mealPlannerViewWeekly => 'ആഴ്ചയിലെ കാഴ്ച';

  @override
  String get mealPlannerNoMeals => 'ഭക്ഷണങ്ങളൊന്നും പ്ലാൻ ചെയ്തിട്ടില്ല';

  @override
  String get mealPlannerNoMealsHint =>
      'ഒരു ദിവസം തിരഞ്ഞെടുത്ത് ഭക്ഷണം ചേർക്കുക';

  @override
  String get mealPlannerLoading => 'ഭക്ഷണ പ്ലാൻ ലോഡ് ചെയ്യുന്നു...';

  @override
  String get mealPlannerError => 'ഭക്ഷണ പ്ലാൻ ലോഡ് ചെയ്യുന്നതിൽ പിശക്';

  @override
  String get mealPlannerAddMeal => 'ഭക്ഷണം ചേർക്കുക';

  @override
  String get mealPlannerEditMeal => 'ഭക്ഷണം എഡിറ്റ് ചെയ്യുക';

  @override
  String get mealPlannerDeleteMeal => 'ഭക്ഷണം ഒഴിവാക്കുക';

  @override
  String get mealPlannerMealDeleted => 'ഭക്ഷണം ഒഴിവാക്കി';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count വിളമ്പലുകൾ',
      one: '$count വിളമ്പൽ',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'വിളമ്പലുകൾ';

  @override
  String get mealPlannerNoteLabel => 'കുറിപ്പ് (നിർബന്ധമില്ലാത്തത്)';

  @override
  String get mealPlannerSelectRecipe => 'ഒരു റെസിപ്പി തിരഞ്ഞെടുക്കുക';

  @override
  String get mealPlannerSearchRecipes => 'റെസിപ്പികൾ തിരയുക...';

  @override
  String get mealPlannerNoRecipesFound => 'റെസിപ്പികളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get mealPlannerNoRecipesHint =>
      'ആദ്യം റെസിപ്പീസ് ടാബിൽ റെസിപ്പികൾ നിർമ്മിക്കുക';

  @override
  String get mealPlannerSave => 'പ്ലാനിലേക്ക് ചേർക്കുക';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total-ൽ $count ഭക്ഷണം പ്ലാൻ ചെയ്തു';
  }

  @override
  String get mealPlannerGenerateList => 'ഷോപ്പിംഗ് ലിസ്റ്റ് തയ്യാറാക്കുക';

  @override
  String get mealPlannerGenerateListConfirm =>
      'ഈ ആഴ്ചയിലെ പ്ലാൻ ചെയ്ത ഭക്ഷണങ്ങളിലെ എല്ലാ ചേരുവകളും നിങ്ങളുടെ ഷോപ്പിംഗ് ലിസ്റ്റിലേക്ക് ചേർക്കണോ?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ചേരുവകൾ നിങ്ങളുടെ ലിസ്റ്റിൽ ചേർത്തു!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'ചേർക്കാൻ ചേരുവകളൊന്നുമില്ല. ആദ്യം റെസിപ്പികൾ ഉൾപ്പെടുത്തി ഭക്ഷണം പ്ലാൻ ചെയ്യുക.';

  @override
  String get mealPlannerGenerateListNoList =>
      'ആദ്യം ഒരു ഷോപ്പിംഗ് ലിസ്റ്റ് നിർമ്മിക്കുക.';

  @override
  String get mealPlannerMealTypeBreakfast => 'പ്രഭാതഭക്ഷണം';

  @override
  String get mealPlannerMealTypeLunch => 'ഉച്ചഭക്ഷണം';

  @override
  String get mealPlannerMealTypeDinner => 'അത്താഴം';

  @override
  String get mealPlannerMealTypeSnack => 'ലഘുഭക്ഷണം';

  @override
  String get mealPlannerDateLabel => 'തീയതി';

  @override
  String get mealPlannerWeekEmpty => 'ഈ ആഴ്ചയിൽ പ്ലാൻ ചെയ്തവ ഒന്നുമില്ല';

  @override
  String get mealPlannerWeekEmptyHint =>
      'നിങ്ങളുടെ ഭക്ഷണം പ്ലാൻ ചെയ്യാൻ ഏതെങ്കിലും ദിവസം തിരഞ്ഞെടുക്കുക!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes മിനിറ്റ്';
  }

  @override
  String get inviteToList => 'പട്ടികയിലേക്ക് ക്ഷണിക്കുക';

  @override
  String get shareApp => 'ആപ്പ് പങ്കിടുക';

  @override
  String get shareAppDescription =>
      'KipiList ഉപയോഗിക്കുന്നതിന് സുഹൃത്തുക്കളെ ക്ഷണിക്കുക';

  @override
  String shareReferralText(Object url) {
    return 'എൻ്റെ ഷോപ്പിംഗ് സംഘടിപ്പിക്കാൻ ഞാൻ KipiList ഉപയോഗിക്കുന്നു! എൻ്റെ ലിങ്ക് വഴി ഡൗൺലോഡ് ചെയ്യൂ, ഞങ്ങൾ രണ്ടുപേർക്കും 7 ദിവസത്തെ പ്രീമിയം സൗജന്യമായി ലഭിക്കും: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList പ്രീമിയം 7 ദിവസത്തെ നേടൂ!';
}
