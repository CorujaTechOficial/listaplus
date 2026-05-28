// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get appTitle => 'किनमेल सूची';

  @override
  String get lists => 'सूचीहरू';

  @override
  String get pantry => 'भण्डार';

  @override
  String get cancel => 'रद्द गर्नुहोस्';

  @override
  String get save => 'सुरक्षित गर्नुहोस्';

  @override
  String get create => 'सिर्जना गर्नुहोस्';

  @override
  String get add => 'थप्नुहोस्';

  @override
  String get remove => 'हटाउनुहोस्';

  @override
  String get delete => 'मेटाउनुहोस्';

  @override
  String get edit => 'सम्पादन गर्नुहोस्';

  @override
  String get copy => 'प्रतिलिपि गर्नुहोस्';

  @override
  String get retry => 'पुनः प्रयास गर्नुहोस्';

  @override
  String get regenerate => 'पुनः उत्पन्न गर्नुहोस्';

  @override
  String get copiedToClipboard => 'क्लिपबोर्डमा प्रतिलिपि गरियो';

  @override
  String get confirm => 'पुष्टि गर्नुहोस्';

  @override
  String get close => 'बन्द गर्नुहोस्';

  @override
  String get import => 'आयात गर्नुहोस्';

  @override
  String get rename => 'नाम परिवर्तन गर्नुहोस्';

  @override
  String get upgrade => 'अपग्रेड गर्नुहोस्';

  @override
  String get clear => 'खाली गर्नुहोस्';

  @override
  String error(String message) {
    return 'त्रुटि: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'त्रुटि: $message';
  }

  @override
  String get purchaseError => 'खरिद प्रक्रियामा त्रुटि। पुनः प्रयास गर्नुहोस्।';

  @override
  String get restoreError =>
      'खरिद पुनर्स्थापनामा त्रुटि। पुनः प्रयास गर्नुहोस्।';

  @override
  String get loading => 'लोड हुँदै...';

  @override
  String get fieldRequired => 'आवश्यक फिल्ड';

  @override
  String get addedFeedback => 'थपियो!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count चयन गरियो',
      one: '$count चयन गरियो',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'अनुमानित';

  @override
  String get alreadyPurchased => 'पहिले नै किनिएको';

  @override
  String get clearList => 'सूची खाली गर्नुहोस्';

  @override
  String get clearPurchased => 'किनिएको खाली गर्नुहोस्';

  @override
  String get share => 'सेयर गर्नुहोस्';

  @override
  String get shareViaCode => 'कोड मार्फत सेयर गर्नुहोस्';

  @override
  String get importViaCode => 'कोड मार्फत आयात गर्नुहोस्';

  @override
  String get listAssistant => 'सूची सहायक';

  @override
  String get globalAssistant => 'सामान्य सहायक';

  @override
  String get becomePremium => 'प्रिमियम बन्नुहोस्';

  @override
  String get manageSubscription => 'सदस्यता व्यवस्थापन गर्नुहोस्';

  @override
  String get completePurchase => 'खरिद पूरा गर्नुहोस्';

  @override
  String get confirmClearList => 'सबै वस्तु हटाउने?';

  @override
  String get shareListTitle => 'सूची सेयर गर्नुहोस्';

  @override
  String get shareThisCode => 'यो कोड सेयर गर्नुहोस्:';

  @override
  String get validForLimitedTime => 'सीमित समयको लागि मान्य';

  @override
  String get importListTitle => 'सूची आयात गर्नुहोस्';

  @override
  String get enterCodeHint => 'कोड प्रविष्ट गर्नुहोस्';

  @override
  String get confirmArchiveTitle => 'खरिद पूरा गर्नुहोस्';

  @override
  String get confirmArchiveContent => 'यो खरिद पूरा गरी सूचीलाई अभिलेख गर्ने?';

  @override
  String get complete => 'पूरा गर्नुहोस्';

  @override
  String get listArchived => 'सूची सफलतापूर्वक अभिलेख गरियो!';

  @override
  String listAdded(String listName) {
    return '$listName थपियो!';
  }

  @override
  String get buy => 'किन्नुहोस्';

  @override
  String get unmark => 'चिन्ह हटाउनुहोस्';

  @override
  String confirmDeleteItems(int count) {
    return '$count वस्तु(हरू) हटाउने?';
  }

  @override
  String get confirmDeleteTitle => 'पुष्टि गर्नुहोस्';

  @override
  String confirmContent(int count) {
    return '$count वस्तु(हरू) हटाउने?';
  }

  @override
  String get archiveList => 'सूची अभिलेख गर्नुहोस्';

  @override
  String get pantryAppBar => 'भण्डार';

  @override
  String get generateShoppingList => 'किनमेल सूची उत्पन्न गर्नुहोस्';

  @override
  String get pantryEmpty => 'खाली भण्डार';

  @override
  String get pantryEmptySubtitle =>
      'तपाईं घरमा राख्न चाहनुहुने उत्पादनहरू थप्नुहोस्';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit वस्तु(हरू) किन्न आवश्यक छ';
  }

  @override
  String get noItemsToBuy => 'किन्न आवश्यक वस्तु छैन';

  @override
  String get newPantryList => 'भण्डार किनमेल';

  @override
  String get newListTitle => 'नयाँ किनमेल सूची';

  @override
  String itemsWillBeAdded(int count) {
    return '$count वस्तु(हरू) थपिनेछ';
  }

  @override
  String get listNameLabel => 'सूचीको नाम';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" सूची $count वस्तुहरू सहित सिर्जना गरियो';
  }

  @override
  String get noTracking => 'कुनै ट्र्याकिङ छैन';

  @override
  String get markAsPurchased => 'किनिएको रूपमा चिन्ह लगाउनुहोस्';

  @override
  String editPantryItem(String name) {
    return '$name सम्पादन गर्नुहोस्';
  }

  @override
  String get idealQuantity => 'आदर्श मात्रा';

  @override
  String get currentQuantity => 'हालको मात्रा';

  @override
  String get consumed => 'उपभोग गरियो';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit मा पुनः भण्डार गरियो';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" भण्डारबाट हटाउने?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name सम्पादन गर्नुहोस्';
  }

  @override
  String get settingsAppBar => 'सेटिङहरू';

  @override
  String get language => 'भाषा';

  @override
  String get languagePortuguese => 'पोर्तुगाली (ब्राजिल)';

  @override
  String get languageEnglish => 'अङ्ग्रेजी';

  @override
  String get languageSystem => 'प्रणाली पूर्वनिर्धारित';

  @override
  String get chooseLanguage => 'भाषा चयन गर्नुहोस्';

  @override
  String get searchLanguage => 'भाषा खोज्नुहोस्...';

  @override
  String get appearance => 'उपस्थिति';

  @override
  String get light => 'उज्यालो';

  @override
  String get system => 'प्रणाली';

  @override
  String get dark => 'गाढा';

  @override
  String get themeColor => 'थिम रङ';

  @override
  String get dynamicColors => 'गतिशील रंगहरू';

  @override
  String get dynamicColorsSubtitle =>
      'तपाईंको वालपेपरमा आधारित रंगहरू प्रयोग गर्नुहोस्';

  @override
  String get finance => 'वित्त';

  @override
  String get monthlyBudgetNav => 'मासिक बजेट';

  @override
  String get budgetSubtitle => 'आफ्नो मासिक खर्च ट्र्याक गर्नुहोस्';

  @override
  String get data => 'डाटा';

  @override
  String get backupNav => 'ब्याकअप';

  @override
  String get backupSubtitle => 'आफ्नो डाटा निर्यात वा आयात गर्नुहोस्';

  @override
  String get about => 'बारे';

  @override
  String get version => 'संस्करण';

  @override
  String get privacy => 'गोपनीयता';

  @override
  String get termsOfUse => 'प्रयोगका सर्तहरू';

  @override
  String get backupTitle => 'ब्याकअप';

  @override
  String get backupPremiumDescription => 'ब्याकअप र निर्यात प्रिमियम सुविधा हो';

  @override
  String get exportData => 'डाटा निर्यात गर्नुहोस्';

  @override
  String get exportDataSubtitle =>
      'सबै सूचीहरू JSON को रूपमा सुरक्षित गर्नुहोस्';

  @override
  String get importData => 'डाटा आयात गर्नुहोस्';

  @override
  String get importDataSubtitle => 'JSON बाट सूचीहरू पुनर्स्थापना गर्नुहोस्';

  @override
  String get importJsonTitle => 'JSON आयात गर्नुहोस्';

  @override
  String get importJsonHint => 'ब्याकअप JSON यहाँ टाँस्नुहोस्...';

  @override
  String get backupExported => 'ब्याकअप निर्यात गरियो!';

  @override
  String get budgetAppBar => 'मासिक बजेट';

  @override
  String get budgetPremiumLocked => 'वैश्विक मासिक बजेट प्रिमियम हो';

  @override
  String get budgetUpgradePrompt => 'अनलक गर्न अपग्रेड गर्नुहोस्';

  @override
  String get noBudgetDefined => 'कुनै बजेट सेट गरिएको छैन';

  @override
  String totalEstimated(String amount) {
    return 'कुल अनुमानित: $amount';
  }

  @override
  String get setBudgetButton => 'बजेट सेट गर्नुहोस्';

  @override
  String get budgetLists => 'सूचीहरू';

  @override
  String get budgetValueLabel => 'रकम';

  @override
  String get setBudgetTitle => 'मासिक बजेट';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'सबै';

  @override
  String get filterPending => 'पेन्डिङ';

  @override
  String get filterPurchased => 'किनिएको';

  @override
  String get sortName => 'नाम';

  @override
  String get sortCategory => 'श्रेणी';

  @override
  String get sortDate => 'मिति';

  @override
  String get sortManual => 'म्यानुअल';

  @override
  String get addItem => 'वस्तु थप्नुहोस्';

  @override
  String get itemName => 'वस्तुको नाम';

  @override
  String get quantityShort => 'मात्रा';

  @override
  String get unit => 'एकाइ';

  @override
  String get category => 'श्रेणी';

  @override
  String get estimatedPrice => 'अनुमानित मूल्य';

  @override
  String get addItemPrice => 'अनुमानित मूल्य';

  @override
  String get editItem => 'वस्तु सम्पादन गर्नुहोस्';

  @override
  String get quantityFull => 'मात्रा';

  @override
  String get editItemPrice => 'अनुमानित मूल्य';

  @override
  String get addToPantry => 'भण्डारमा थप्नुहोस्';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" आफ्नो भण्डारमा थप्ने?';
  }

  @override
  String get yes => 'हो';

  @override
  String get productName => 'उत्पादनको नाम';

  @override
  String get idealQty => 'आदर्श मात्रा';

  @override
  String get currentQty => 'हालको मात्रा';

  @override
  String get trackStock => 'स्टक ट्र्याक गर्नुहोस्';

  @override
  String get trackStockActive => 'किनमेल सुझावहरूमा देखिन्छ';

  @override
  String get trackStockInactive => 'किनमेल सुझाव उत्पन्न गर्दैन';

  @override
  String get createListDialog => 'सूची सिर्जना गर्नुहोस्';

  @override
  String get renameListDialog => 'सूचीको नाम परिवर्तन गर्नुहोस्';

  @override
  String get listHistory => 'सूची इतिहास';

  @override
  String get myLists => 'मेरा सूचीहरू';

  @override
  String get viewActive => 'सक्रिय हेर्नुहोस्';

  @override
  String get viewHistory => 'इतिहास हेर्नुहोस्';

  @override
  String get noArchivedLists => 'कुनै अभिलेख गरिएको सूची छैन';

  @override
  String get noActiveLists => 'कुनै सक्रिय सूची छैन';

  @override
  String completedOn(String date) {
    return '$date मा पूरा गरियो';
  }

  @override
  String get sharedLabel => 'सेयर गरिएको';

  @override
  String get restore => 'पुनर्स्थापना गर्नुहोस्';

  @override
  String get removeSharedTooltip => 'हटाउनुहोस्';

  @override
  String get deleteListTitle => 'सूची मेटाउनुहोस्';

  @override
  String deleteListContent(String name) {
    return 'के तपाईं \"$name\" मेटाउन निश्चित हुनुहुन्छ? सबै वस्तुहरू हटाइनेछन्।';
  }

  @override
  String get removeSharedListTitle => 'सेयर गरिएको सूची हटाउनुहोस्';

  @override
  String removeSharedListContent(String name) {
    return 'आफ्नो सूचीहरूबाट \"$name\" हटाउने? मूल सूची प्रभावित हुँदैन।';
  }

  @override
  String get createNewList => 'नयाँ सूची सिर्जना गर्नुहोस्';

  @override
  String get aiAssistant => 'AI सहायक';

  @override
  String get aiAssistantDescription =>
      'हाम्रो AI सहायकसँग स्मार्ट सुझाव, रेसिपी र व्यक्तिगत सुझावहरू प्राप्त गर्नुहोस्।';

  @override
  String get generalAssistant => 'सामान्य सहायक';

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
  String get clearHistory => 'इतिहास खाली गर्नुहोस्';

  @override
  String get clearHistoryConfirm => 'यो सत्रका सबै सन्देशहरू खाली गर्ने?';

  @override
  String get chatHint => 'आफ्नो सन्देश टाइप गर्नुहोस्...';

  @override
  String chatError(String error) {
    return 'च्याट लोड गर्दा त्रुटि: $error';
  }

  @override
  String get listHelp => 'म तपाईंको सूचीमा कसरी मद्दत गर्न सक्छु?';

  @override
  String get generalHelp => 'म आज तपाईंको किनमेलमा कसरी मद्दत गर्न सक्छु?';

  @override
  String get chatSubtitle =>
      'वस्तु सुझाव, रेसिपी वा बचत सुझावहरूको लागि सोध्नुहोस्।';

  @override
  String get aiError =>
      'माफ गर्नुहोस्, तपाईंको अनुरोध प्रक्रिया गर्दा त्रुटि भयो। आफ्नो जडान जाँच गर्नुहोस् वा पछि पुनः प्रयास गर्नुहोस्।';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'प्रिमियम सुविधाहरू\nअनलक गर्न लगइन गर्नुहोस्';

  @override
  String get signInGoogle => 'Google बाट साइन इन गर्नुहोस्';

  @override
  String get signInApple => 'Apple बाट साइन इन गर्नुहोस्';

  @override
  String get continueAsGuest => 'पाहुनाको रूपमा जारी राख्नुहोस्';

  @override
  String loginError(String error) {
    return 'लगइन त्रुटि: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'अनलक गर्न अपग्रेड गर्नुहोस्';

  @override
  String get itemRemoved => 'वस्तु हटाइयो';

  @override
  String get undo => 'पूर्ववत गर्नुहोस्';

  @override
  String get emptyListTitle => 'तपाईंको सूची खाली छ';

  @override
  String get emptyListSubtitle => 'सुरु गर्न वस्तुहरू थप्नुहोस्';

  @override
  String get noListFoundTitle => 'कुनै सूची फेला परेन';

  @override
  String get noListFoundSubtitle =>
      'सुरु गर्न आफ्नो पहिलो सूची सिर्जना गर्नुहोस्';

  @override
  String get createFirstList => 'पहिलो सूची सिर्जना गर्नुहोस्';

  @override
  String get listBudgetTitle => 'सूची बजेट';

  @override
  String get budgetAmountLabel => 'बजेट रकम';

  @override
  String get removeBudget => 'हटाउनुहोस्';

  @override
  String get prefUnlimitedLists => 'असीमित सूचीहरू';

  @override
  String get prefSharing => 'सूचीहरू सेयर गर्नुहोस्';

  @override
  String get prefFullHistory => 'पूर्ण इतिहास';

  @override
  String get prefExportData => 'डाटा निर्यात गर्नुहोस्';

  @override
  String get prefCustomThemes => 'अनुकूलन थिमहरू';

  @override
  String get prefMonthlyBudget => 'वैश्विक मासिक बजेट';

  @override
  String get prefAIAssistant => 'व्यक्तिगत AI सहायक';

  @override
  String get prefUnlimitedPantry => 'असीमित भण्डार';

  @override
  String get prefInteractiveArtifacts => 'अन्तरक्रियात्मक AI आर्टिफ्याक्ट्स';

  @override
  String get themeGreen => 'हरियो';

  @override
  String get themeBlue => 'निलो';

  @override
  String get themePurple => 'बैजनी';

  @override
  String get themeRed => 'रातो';

  @override
  String get themeOrange => 'सुन्तला';

  @override
  String get themePink => 'गुलाबी';

  @override
  String get themeIndigo => 'इन्डिगो';

  @override
  String get themeAmber => 'एम्बर';

  @override
  String get themeTeal => 'टिल';

  @override
  String get themeBrown => 'खैरो';

  @override
  String get catFruits => 'फलफूल';

  @override
  String get catCleaning => 'सफाई';

  @override
  String get catBeverages => 'पेय पदार्थ';

  @override
  String get catBakery => 'बेकरी';

  @override
  String get catOthers => 'अन्य';

  @override
  String get unitPack => 'प्याक';

  @override
  String get shareSubject => 'किनमेल सूची';

  @override
  String get monthlyBudgetTitle => 'मासिक बजेट';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'सूची मेटाउनुहोस्';

  @override
  String get pantryItemRemoved => 'वस्तु हटाइयो';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit वस्तुहरू किन्न आवश्यक छ',
      one: '$deficit वस्तु किन्न आवश्यक छ',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'कार्ट जम्मा';

  @override
  String get restockLabel => 'पुनः भण्डार गर्नुहोस्';

  @override
  String get advancedFeatures => 'उन्नत सुविधाहरू';

  @override
  String get selectAll => 'सबै चयन गर्नुहोस्';

  @override
  String get deselectAll => 'सबै अचयन गर्नुहोस्';

  @override
  String get monthlyBudgetAppBar => 'मासिक बजेट';

  @override
  String get budgetEditTitle => 'मासिक बजेट';

  @override
  String get budgetDashboardTitle => 'ड्यासबोर्ड';

  @override
  String get selectListForDashboard => 'ड्यासबोर्ड हेर्न सूची चयन गर्नुहोस्।';

  @override
  String get spendingAnalysis => 'खर्च विश्लेषण';

  @override
  String get noItemsToAnalyze => 'विश्लेषण गर्न सूचीमा कुनै वस्तु छैन।';

  @override
  String get markItemsToSeeAnalysis =>
      'विश्लेषण हेर्न वस्तुहरूलाई किनिएको रूपमा चिन्ह लगाउनुहोस्।';

  @override
  String get totalSpending => 'कुल खर्च';

  @override
  String get spendingByCategory => 'श्रेणी अनुसार खर्च';

  @override
  String get achievements => 'उपलब्धिहरू';

  @override
  String get exportPdfExcel => 'PDF/Excel निर्यात गर्नुहोस्';

  @override
  String get exportPdf => 'PDF को रूपमा निर्यात गर्नुहोस्';

  @override
  String get exportExcel => 'Excel को रूपमा निर्यात गर्नुहोस्';

  @override
  String get organizingAi => 'AI सँग व्यवस्थित गर्दै...';

  @override
  String get yesLabel => 'हो';

  @override
  String get noLabel => 'होइन';

  @override
  String get shareListText => 'मेरो किनमेल सूची';

  @override
  String get emptyListAddItems =>
      'तपाईंको सूची खाली छ! पहिले वस्तुहरू थप्नुहोस्।';

  @override
  String get listOrganizedMagic =>
      'सूची जादुई रूपमा श्रेणीहरूमा व्यवस्थित गरियो!';

  @override
  String get shoppingMode => 'किनमेल मोड';

  @override
  String get smartOrganization => 'स्मार्ट व्यवस्थापन';

  @override
  String get savings => 'बचत';

  @override
  String get shoppingModeHeader => 'किनमेल मोड';

  @override
  String get shareAsText => 'वस्तुहरू ढाँचा गरिएको पाठको रूपमा पठाउनुहोस्';

  @override
  String get shareRealtime => 'अन्य व्यक्तिहरूसँग वास्तविक-समय सिङ्क';

  @override
  String get quickRecipe => 'द्रुत रेसिपी';

  @override
  String get quickRecipePrompt =>
      'मेरो सूचीका वस्तुहरूसँग रेसिपीहरू सुझाव दिनुहोस्।';

  @override
  String get economyTips => 'बचत सुझावहरू';

  @override
  String get economyTipsPrompt => 'म यस खरिदमा कसरी पैसा बचत गर्न सक्छु?';

  @override
  String get organizeAisles => 'पसलका गल्लीहरूद्वारा व्यवस्थित गर्नुहोस्';

  @override
  String get organizeAislesPrompt =>
      'बजारका गल्लीहरूद्वारा व्यवस्थित गर्नुहोस्।';

  @override
  String get recipeSuggestion => 'रेसिपी सुझाव';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining क्रेडिट बाँकी';
  }

  @override
  String get addAllToList => 'सबै सूचीमा थप्नुहोस्';

  @override
  String get organizeByAisles => 'गल्लीहरूद्वारा व्यवस्थित गर्नुहोस्';

  @override
  String get voiceTranscriptionTooltip => 'भ्वाइस टाइपिङ (नि:शुल्क)';

  @override
  String get aiVoiceCommandTooltip => 'AI भ्वाइस कमाण्ड (प्रिमियम)';

  @override
  String get voiceCommandTitle => 'AI भ्वाइस कमाण्ड';

  @override
  String get voiceCommandContent =>
      'आफ्नो सूची व्यवस्थापन गर्न स्वाभाविक रूपमा बोल्नुहोस्!\n\nउदाहरणहरू:\n• \'रोटी, पनीर र ह्याम थप्नुहोस्\'\n• \'लुगा धुने डिटर्जेन्ट हटाउनुहोस्\'\n• \'थिम निलोमा परिवर्तन गर्नुहोस्\'\n\nयो Lista Plus Premium को विशेष सुविधा हो।';

  @override
  String get voiceCommandPlanBtn => 'योजनाहरू हेर्नुहोस्';

  @override
  String get itemsAddedSuccess => 'वस्तुहरू सफलतापूर्वक सूचीमा थपियो!';

  @override
  String get viewList => 'सूची हेर्नुहोस्';

  @override
  String get feedbackTitle => 'प्रतिक्रिया पठाउनुहोस्';

  @override
  String get feedbackPrompt => 'तपाईं के साझेदारी गर्न चाहनुहुन्छ?';

  @override
  String get feedbackTypeBug => 'बग रिपोर्ट गर्नुहोस्';

  @override
  String get feedbackTypeBugHint => 'केही काम गरिरहेको छैन';

  @override
  String get feedbackTypeSuggestion => 'सुझाव';

  @override
  String get feedbackTypeSuggestionHint => 'एप सुधार गर्न विचार';

  @override
  String get feedbackTypeTranslation => 'अनुवाद समस्या';

  @override
  String get feedbackTypeTranslationHint => 'गलत वा अप्ठ्यारो अनुवाद';

  @override
  String get feedbackTypeFeature => 'सुविधा अनुरोध';

  @override
  String get feedbackTypeFeatureHint => 'तपाईंले हेर्न चाहनुभएको सुविधा';

  @override
  String get feedbackTypeOther => 'अन्य';

  @override
  String get feedbackTypeOtherHint => 'अन्य प्रकारको प्रतिक्रिया';

  @override
  String get feedbackHint =>
      'आफ्नो प्रतिक्रिया विस्तृत रूपमा वर्णन गर्नुहोस्...';

  @override
  String get feedbackSend => 'प्रतिक्रिया पठाउनुहोस्';

  @override
  String get feedbackSending => 'पठाउँदै...';

  @override
  String get feedbackThankYou => 'धन्यवाद!';

  @override
  String get feedbackThankYouMessage =>
      'तपाईंको प्रतिक्रिया प्राप्त भएको छ र यसले Lista Plus लाई सबैको लागि सुधार गर्न मद्दत गर्दछ।';

  @override
  String get feedbackBack => 'पछाडि';

  @override
  String feedbackError(String error) {
    return 'पठाउन त्रुटि: $error';
  }

  @override
  String get feedbackRetry => 'पुनः प्रयास गर्नुहोस्';

  @override
  String get feedbackSettingsTitle => 'प्रतिक्रिया पठाउनुहोस्';

  @override
  String get feedbackSettingsSubtitle =>
      'बग रिपोर्ट गर्नुहोस्, सुधार सुझाव दिनुहोस्, वा अनुवाद सच्याउनुहोस्';

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
  String get openMenu => 'मेनु खोल्नुहोस्';

  @override
  String get viewRecipe => 'रेसिपी हेर्नुहोस्';

  @override
  String get recipeCreated => 'रेसिपी बनाइयो!';

  @override
  String get editRecipe => 'सम्पादन गर्नुहोस्';

  @override
  String get deleteRecipe => 'मेटाउनुहोस्';

  @override
  String get deleteRecipeConfirm => 'यो रेसिपी मेटाउने?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'के तपाईं निश्चित रूपमा \"$recipeName\" मेटाउन चाहनुहुन्छ? यो कार्य फिर्ता गर्न सकिँदैन।';
  }

  @override
  String get ingredients => 'सामग्रीहरू';

  @override
  String get instructions => 'निर्देशनहरू';

  @override
  String get prepTime => 'तयारी समय';

  @override
  String get recipeSaved => 'रेसिपी सुरक्षित गरियो!';

  @override
  String get noRecipesSaved => 'कुनै रेसिपी सुरक्षित गरिएको छैन';

  @override
  String get noRecipesSavedHint =>
      'तलको बटन ट्याप गरेर आफ्नो पहिलो अनुकूल रेसिपी बनाउनुहोस्।';

  @override
  String get myRecipes => 'मेरा रेसिपीहरू';

  @override
  String get newRecipe => 'नयाँ रेसिपी';

  @override
  String get loadingRecipes => 'तपाईंका रेसिपीहरू लोड हुँदैछन्...';

  @override
  String get errorLoadingRecipes => 'रेसिपी लोड गर्दा त्रुटि';

  @override
  String get addIngredient => 'सामग्री थप्नुहोस्';

  @override
  String get saveRecipe => 'सुरक्षित गर्नुहोस्';

  @override
  String get recipeName => 'रेसिपीको नाम';

  @override
  String get shortDescription => 'छोटो विवरण';

  @override
  String get prepTimeMinutes => 'तयारी समय (मिनेट)';

  @override
  String get instructionsHint => 'प्रत्येक पङ्क्तिमा एक चरण टाइप गर्नुहोस्...';

  @override
  String get addPhoto => 'फोटो थप्नुहोस्';

  @override
  String get imageUrlPlaceholder => 'वा छवि URL टाँस्नुहोस्';

  @override
  String get tags => 'ट्यागहरू';

  @override
  String get recipeTags => 'रेसिपी ट्यागहरू';

  @override
  String get suggestedTags => 'सुझाइएको';

  @override
  String get searchRecipes => 'रेसिपी खोज्नुहोस्...';

  @override
  String get filterByTag => 'ट्याग द्वारा फिल्टर गर्नुहोस्';

  @override
  String get allTags => 'सबै';

  @override
  String get recipeDeleted => 'रेसिपी मेटाइयो';

  @override
  String get saveChanges => 'परिवर्तनहरू सुरक्षित गर्नुहोस्';

  @override
  String get editRecipeTitle => 'रेसिपी सम्पादन गर्नुहोस्';

  @override
  String get newRecipeTitle => 'नयाँ रेसिपी';

  @override
  String get requiredField => 'आवश्यक';

  @override
  String get chooseImageSource => 'छवि स्रोत चयन गर्नुहोस्';

  @override
  String get gallery => 'ग्यालरी';

  @override
  String get enterUrl => 'URL प्रविष्ट गर्नुहोस्';

  @override
  String get recipeImage => 'रेसिपीको छवि';

  @override
  String get removeImage => 'छवि हटाउनुहोस्';

  @override
  String get mealPlannerTitle => 'खाना योजनाकार';

  @override
  String get mealPlannerViewMonthly => 'मासिक दृश्य';

  @override
  String get mealPlannerViewWeekly => 'साप्ताहिक दृश्य';

  @override
  String get mealPlannerNoMeals => 'कुनै खाना योजना गरिएको छैन';

  @override
  String get mealPlannerNoMealsHint =>
      'खाना थप्नको लागि कुनै दिनमा ट्याप गर्नुहोस्';

  @override
  String get mealPlannerLoading => 'खाना योजना लोड हुँदैछ...';

  @override
  String get mealPlannerError => 'खाना योजना लोड गर्दा त्रुटि';

  @override
  String get mealPlannerAddMeal => 'खाना थप्नुहोस्';

  @override
  String get mealPlannerEditMeal => 'खाना सम्पादन गर्नुहोस्';

  @override
  String get mealPlannerDeleteMeal => 'खाना हटाउनुहोस्';

  @override
  String get mealPlannerMealDeleted => 'खाना हटाइयो';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count व्यक्ति',
      one: '$count व्यक्ति',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'व्यक्ति';

  @override
  String get mealPlannerNoteLabel => 'नोट (वैकल्पिक)';

  @override
  String get mealPlannerSelectRecipe => 'रेसिपी चयन गर्नुहोस्';

  @override
  String get mealPlannerSearchRecipes => 'रेसिपी खोज्नुहोस्...';

  @override
  String get mealPlannerNoRecipesFound => 'कुनै रेसिपी फेला परेन';

  @override
  String get mealPlannerNoRecipesHint =>
      'पहिले रेसिपी ट्याबमा रेसिपीहरू बनाउनुहोस्';

  @override
  String get mealPlannerSave => 'योजनामा थप्नुहोस्';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total मध्ये $count खाना योजना गरिएको';
  }

  @override
  String get mealPlannerGenerateList => 'किनमेल सूची बनाउनुहोस्';

  @override
  String get mealPlannerGenerateListConfirm =>
      'यो हप्ताको योजनाबद्ध खानाका सबै सामग्रीहरू तपाईंको किनमेल सूचीमा थप्ने?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'तपाईंको सूचीमा $count सामग्री(हरू) थपियो!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'थप्नका लागि कुनै सामग्री छैन। पहिले रेसिपीहरू सहित केही खानाको योजना बनाउनुहोस्।';

  @override
  String get mealPlannerGenerateListNoList => 'पहिले किनमेल सूची बनाउनुहोस्।';

  @override
  String get mealPlannerMealTypeBreakfast => 'बिहानको खाजा';

  @override
  String get mealPlannerMealTypeLunch => 'दिउँसोको खाना';

  @override
  String get mealPlannerMealTypeDinner => 'बेलुकाको खाना';

  @override
  String get mealPlannerMealTypeSnack => 'खाजा';

  @override
  String get mealPlannerDateLabel => 'मिति';

  @override
  String get mealPlannerWeekEmpty => 'यो हप्ताको लागि केहि योजना गरिएको छैन';

  @override
  String get mealPlannerWeekEmptyHint =>
      'आफ्नो खाना योजना सुरु गर्न कुनै पनि दिनमा ट्याप गर्नुहोस्!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes मिनेट';
  }
}

/// The translations for Nepali, as used in Nepal (`ne_NP`).
class AppLocalizationsNeNp extends AppLocalizationsNe {
  AppLocalizationsNeNp() : super('ne_NP');

  @override
  String get appTitle => 'किनमेल सूची';

  @override
  String get lists => 'सूचीहरू';

  @override
  String get pantry => 'भण्डार';

  @override
  String get cancel => 'रद्द गर्नुहोस्';

  @override
  String get save => 'सुरक्षित गर्नुहोस्';

  @override
  String get create => 'सिर्जना गर्नुहोस्';

  @override
  String get add => 'थप्नुहोस्';

  @override
  String get remove => 'हटाउनुहोस्';

  @override
  String get delete => 'मेटाउनुहोस्';

  @override
  String get edit => 'सम्पादन गर्नुहोस्';

  @override
  String get copy => 'प्रतिलिपि गर्नुहोस्';

  @override
  String get retry => 'पुनः प्रयास गर्नुहोस्';

  @override
  String get regenerate => 'पुनः उत्पन्न गर्नुहोस्';

  @override
  String get copiedToClipboard => 'क्लिपबोर्डमा प्रतिलिपि गरियो';

  @override
  String get confirm => 'पुष्टि गर्नुहोस्';

  @override
  String get close => 'बन्द गर्नुहोस्';

  @override
  String get import => 'आयात गर्नुहोस्';

  @override
  String get rename => 'पुनः नामाकरण गर्नुहोस्';

  @override
  String get upgrade => 'अपग्रेड गर्नुहोस्';

  @override
  String get clear => 'सफा गर्नुहोस्';

  @override
  String error(String message) {
    return 'त्रुटि: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'त्रुटि: $message';
  }

  @override
  String get purchaseError => 'खरिद प्रक्रियामा त्रुटि। पुनः प्रयास गर्नुहोस्।';

  @override
  String get restoreError =>
      'खरिदहरू पुनर्स्थापित गर्न त्रुटि। पुनः प्रयास गर्नुहोस्।';

  @override
  String get loading => 'लोड हुँदै...';

  @override
  String get fieldRequired => 'आवश्यक फिल्ड';

  @override
  String get addedFeedback => 'थपियो!';

  @override
  String selectedItems(int count) {
    return '$count चयन गरियो';
  }

  @override
  String get estimated => 'अनुमानित';

  @override
  String get alreadyPurchased => 'पहिले नै खरिद गरिएको';

  @override
  String get clearList => 'सूची सफा गर्नुहोस्';

  @override
  String get clearPurchased => 'खरिद गरिएका हटाउनुहोस्';

  @override
  String get share => 'साझेदारी गर्नुहोस्';

  @override
  String get shareViaCode => 'कोड मार्फत साझेदारी गर्नुहोस्';

  @override
  String get importViaCode => 'कोड मार्फत आयात गर्नुहोस्';

  @override
  String get listAssistant => 'सूची सहायक';

  @override
  String get globalAssistant => 'सामान्य सहायक';

  @override
  String get becomePremium => 'प्रिमियम बन्नुहोस्';

  @override
  String get manageSubscription => 'सदस्यता व्यवस्थापन गर्नुहोस्';

  @override
  String get completePurchase => 'खरिद पूरा गर्नुहोस्';

  @override
  String get confirmClearList => 'सबै वस्तुहरू हटाउने?';

  @override
  String get shareListTitle => 'सूची साझेदारी गर्नुहोस्';

  @override
  String get shareThisCode => 'यो कोड साझेदारी गर्नुहोस्:';

  @override
  String get validForLimitedTime => 'सीमित समयको लागि मान्य';

  @override
  String get importListTitle => 'सूची आयात गर्नुहोस्';

  @override
  String get enterCodeHint => 'कोड प्रविष्ट गर्नुहोस्';

  @override
  String get confirmArchiveTitle => 'खरिद पूरा गर्नुहोस्';

  @override
  String get confirmArchiveContent => 'यो खरिद पूरा गरी सूची अभिलेख गर्ने?';

  @override
  String get complete => 'पूरा गर्नुहोस्';

  @override
  String get listArchived => 'सूची सफलतापूर्वक अभिलेख गरियो!';

  @override
  String listAdded(String listName) {
    return '$listName थपियो!';
  }

  @override
  String get buy => 'किन्नुहोस्';

  @override
  String get unmark => 'चिन्ह हटाउनुहोस्';

  @override
  String confirmDeleteItems(int count) {
    return '$count वस्तु(हरू) हटाउने?';
  }

  @override
  String get confirmDeleteTitle => 'पुष्टि गर्नुहोस्';

  @override
  String confirmContent(int count) {
    return '$count वस्तु(हरू) हटाउने?';
  }

  @override
  String get archiveList => 'सूची अभिलेख गर्नुहोस्';

  @override
  String get pantryAppBar => 'भण्डार';

  @override
  String get generateShoppingList => 'किनमेल सूची सिर्जना गर्नुहोस्';

  @override
  String get pantryEmpty => 'भण्डार खाली छ';

  @override
  String get pantryEmptySubtitle =>
      'तपाईं घरमा राख्न चाहनुहुने उत्पादनहरू थप्नुहोस्';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit वस्तु(हरू) खरिद गर्न आवश्यक छ';
  }

  @override
  String get noItemsToBuy => 'खरिद गर्न आवश्यक वस्तुहरू छैनन्';

  @override
  String get newPantryList => 'भण्डार किनमेल';

  @override
  String get newListTitle => 'नयाँ किनमेल सूची';

  @override
  String itemsWillBeAdded(int count) {
    return '$count वस्तु(हरू) थपिनेछ';
  }

  @override
  String get listNameLabel => 'सूचीको नाम';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" सूची $count वस्तुहरूसहित सिर्जना गरियो';
  }

  @override
  String get noTracking => 'ट्र्याकिङ छैन';

  @override
  String get markAsPurchased => 'खरिद गरिएको रूपमा चिन्ह लगाउनुहोस्';

  @override
  String editPantryItem(String name) {
    return '$name सम्पादन गर्नुहोस्';
  }

  @override
  String get idealQuantity => 'आदर्श मात्रा';

  @override
  String get currentQuantity => 'हालको मात्रा';

  @override
  String get consumed => 'उपभोग गरियो';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unit मा पुनः भण्डार गरियो';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'भण्डारबाट \"$name\" हटाउने?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name सम्पादन गर्नुहोस्';
  }

  @override
  String get settingsAppBar => 'सेटिङ्हरू';

  @override
  String get language => 'भाषा';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'प्रणाली पूर्वनिर्धारित';

  @override
  String get chooseLanguage => 'भाषा चयन गर्नुहोस्';

  @override
  String get searchLanguage => 'भाषा खोज्नुहोस्...';

  @override
  String get appearance => 'उपस्थिति';

  @override
  String get light => 'उज्यालो';

  @override
  String get system => 'प्रणाली';

  @override
  String get dark => 'अँध्यारो';

  @override
  String get themeColor => 'थिम रङ';

  @override
  String get dynamicColors => 'गतिशील रंगहरू';

  @override
  String get dynamicColorsSubtitle =>
      'तपाईंको वालपेपरमा आधारित रंगहरू प्रयोग गर्नुहोस्';

  @override
  String get finance => 'वित्त';

  @override
  String get monthlyBudgetNav => 'मासिक बजेट';

  @override
  String get budgetSubtitle => 'आफ्नो मासिक खर्च ट्र्याक गर्नुहोस्';

  @override
  String get data => 'डेटा';

  @override
  String get backupNav => 'ब्याकअप';

  @override
  String get backupSubtitle => 'आफ्नो डेटा निर्यात वा आयात गर्नुहोस्';

  @override
  String get about => 'बारेमा';

  @override
  String get version => 'संस्करण';

  @override
  String get privacy => 'गोपनीयता';

  @override
  String get termsOfUse => 'प्रयोगका सर्तहरू';

  @override
  String get backupTitle => 'ब्याकअप';

  @override
  String get backupPremiumDescription => 'ब्याकअप र निर्यात प्रिमियम सुविधा हो';

  @override
  String get exportData => 'डेटा निर्यात गर्नुहोस्';

  @override
  String get exportDataSubtitle =>
      'सबै सूचीहरू JSON को रूपमा सुरक्षित गर्नुहोस्';

  @override
  String get importData => 'डेटा आयात गर्नुहोस्';

  @override
  String get importDataSubtitle => 'JSON बाट सूचीहरू पुनर्स्थापित गर्नुहोस्';

  @override
  String get importJsonTitle => 'JSON आयात गर्नुहोस्';

  @override
  String get importJsonHint => 'ब्याकअप JSON यहाँ टाँस्नुहोस्...';

  @override
  String get backupExported => 'ब्याकअप निर्यात गरियो!';

  @override
  String get budgetAppBar => 'मासिक बजेट';

  @override
  String get budgetPremiumLocked => 'वैश्विक मासिक बजेट प्रिमियम हो';

  @override
  String get budgetUpgradePrompt => 'अनलक गर्न अपग्रेड गर्नुहोस्';

  @override
  String get noBudgetDefined => 'बजेट सेट गरिएको छैन';

  @override
  String totalEstimated(String amount) {
    return 'कुल अनुमानित: $amount';
  }

  @override
  String get setBudgetButton => 'बजेट सेट गर्नुहोस्';

  @override
  String get budgetLists => 'सूचीहरू';

  @override
  String get budgetValueLabel => 'रकम';

  @override
  String get setBudgetTitle => 'मासिक बजेट';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'सबै';

  @override
  String get filterPending => 'विचाराधीन';

  @override
  String get filterPurchased => 'खरिद गरिएको';

  @override
  String get sortName => 'नाम';

  @override
  String get sortCategory => 'श्रेणी';

  @override
  String get sortDate => 'मिति';

  @override
  String get sortManual => 'म्यानुअल';

  @override
  String get addItem => 'वस्तु थप्नुहोस्';

  @override
  String get itemName => 'वस्तुको नाम';

  @override
  String get quantityShort => 'मात्रा';

  @override
  String get unit => 'एकाइ';

  @override
  String get category => 'श्रेणी';

  @override
  String get estimatedPrice => 'अनुमानित मूल्य';

  @override
  String get addItemPrice => 'अनुमानित मूल्य';

  @override
  String get editItem => 'वस्तु सम्पादन गर्नुहोस्';

  @override
  String get quantityFull => 'मात्रा';

  @override
  String get editItemPrice => 'अनुमानित मूल्य';

  @override
  String get addToPantry => 'भण्डारमा थप्नुहोस्';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" तपाईंको भण्डारमा थप्ने?';
  }

  @override
  String get yes => 'हो';

  @override
  String get productName => 'उत्पादनको नाम';

  @override
  String get idealQty => 'आदर्श मात्रा';

  @override
  String get currentQty => 'हालको मात्रा';

  @override
  String get trackStock => 'स्टक ट्र्याक गर्नुहोस्';

  @override
  String get trackStockActive => 'किनमेल सुझावहरूमा देखिन्छ';

  @override
  String get trackStockInactive => 'किनमेल सुझाव उत्पन्न गर्दैन';

  @override
  String get createListDialog => 'सूची सिर्जना गर्नुहोस्';

  @override
  String get renameListDialog => 'सूची पुनः नामाकरण गर्नुहोस्';

  @override
  String get listHistory => 'सूची इतिहास';

  @override
  String get myLists => 'मेरो सूचीहरू';

  @override
  String get viewActive => 'सक्रिय हेर्नुहोस्';

  @override
  String get viewHistory => 'इतिहास हेर्नुहोस्';

  @override
  String get noArchivedLists => 'कुनै अभिलेख गरिएको सूची छैन';

  @override
  String get noActiveLists => 'कुनै सक्रिय सूची छैन';

  @override
  String completedOn(String date) {
    return '$date मा पूरा भयो';
  }

  @override
  String get sharedLabel => 'साझेदारी गरियो';

  @override
  String get restore => 'पुनर्स्थापित गर्नुहोस्';

  @override
  String get removeSharedTooltip => 'हटाउनुहोस्';

  @override
  String get deleteListTitle => 'सूची मेटाउनुहोस्';

  @override
  String deleteListContent(String name) {
    return 'के तपाईं \"$name\" मेटाउन निश्चित हुनुहुन्छ? सबै वस्तुहरू हटाइनेछ।';
  }

  @override
  String get removeSharedListTitle => 'साझेदारी गरिएको सूची हटाउनुहोस्';

  @override
  String removeSharedListContent(String name) {
    return 'तपाईंको सूचीहरूबाट \"$name\" हटाउने? मूल सूची प्रभावित हुने छैन।';
  }

  @override
  String get createNewList => 'नयाँ सूची सिर्जना गर्नुहोस्';

  @override
  String get aiAssistant => 'AI सहायक';

  @override
  String get aiAssistantDescription =>
      'हाम्रो AI सहायकसँग स्मार्ट सुझावहरू, व्यञ्जनहरू र व्यक्तिगत सुझावहरू प्राप्त गर्नुहोस्।';

  @override
  String get generalAssistant => 'सामान्य सहायक';

  @override
  String get clearHistory => 'इतिहास सफा गर्नुहोस्';

  @override
  String get clearHistoryConfirm => 'यो सत्रका सबै सन्देशहरू सफा गर्ने?';

  @override
  String get chatHint => 'आफ्नो सन्देश टाइप गर्नुहोस्...';

  @override
  String chatError(String error) {
    return 'च्याट लोड गर्दा त्रुटि: $error';
  }

  @override
  String get listHelp => 'तपाईंको सूचीमा कसरी मद्दत गर्न सक्छु?';

  @override
  String get generalHelp => 'आज तपाईंको किनमेलमा कसरी मद्दत गर्न सक्छु?';

  @override
  String get chatSubtitle =>
      'वस्तु सुझावहरू, व्यञ्जनहरू वा बचत सुझावहरूको लागि सोध्नुहोस्।';

  @override
  String get aiError =>
      'माफ गर्नुहोस्, तपाईंको अनुरोध प्रक्रिया गर्दा त्रुटि भयो। आफ्नो जडान जाँच गर्नुहोस् वा पछि पुनः प्रयास गर्नुहोस्।';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'प्रिमियम सुविधाहरू\nअनलक गर्न लगइन गर्नुहोस्';

  @override
  String get signInGoogle => 'Google बाट साइन इन गर्नुहोस्';

  @override
  String get signInApple => 'Apple बाट साइन इन गर्नुहोस्';

  @override
  String get continueAsGuest => 'अतिथिको रूपमा जारी राख्नुहोस्';

  @override
  String loginError(String error) {
    return 'लगइन त्रुटि: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'अनलक गर्न अपग्रेड गर्नुहोस्';

  @override
  String get itemRemoved => 'वस्तु हटाइयो';

  @override
  String get undo => 'पूर्वावस्थामा फर्काउनुहोस्';

  @override
  String get emptyListTitle => 'तपाईंको सूची खाली छ';

  @override
  String get emptyListSubtitle => 'सुरु गर्न वस्तुहरू थप्नुहोस्';

  @override
  String get noListFoundTitle => 'कुनै सूची फेला परेन';

  @override
  String get noListFoundSubtitle =>
      'सुरु गर्न आफ्नो पहिलो सूची सिर्जना गर्नुहोस्';

  @override
  String get createFirstList => 'पहिलो सूची सिर्जना गर्नुहोस्';

  @override
  String get listBudgetTitle => 'सूची बजेट';

  @override
  String get budgetAmountLabel => 'बजेट रकम';

  @override
  String get removeBudget => 'हटाउनुहोस्';

  @override
  String get prefUnlimitedLists => 'असीमित सूचीहरू';

  @override
  String get prefSharing => 'सूचीहरू साझेदारी गर्नुहोस्';

  @override
  String get prefFullHistory => 'पूर्ण इतिहास';

  @override
  String get prefExportData => 'डेटा निर्यात गर्नुहोस्';

  @override
  String get prefCustomThemes => 'अनुकूल थिमहरू';

  @override
  String get prefMonthlyBudget => 'वैश्विक मासिक बजेट';

  @override
  String get prefAIAssistant => 'व्यक्तिगत AI सहायक';

  @override
  String get prefUnlimitedPantry => 'असीमित भण्डार';

  @override
  String get prefInteractiveArtifacts => 'अन्तरक्रियात्मक AI आर्टिफ्याक्टहरू';

  @override
  String get themeGreen => 'हरियो';

  @override
  String get themeBlue => 'नीलो';

  @override
  String get themePurple => 'बैजनी';

  @override
  String get themeRed => 'रातो';

  @override
  String get themeOrange => 'सुन्तला';

  @override
  String get themePink => 'गुलाबी';

  @override
  String get themeIndigo => 'इन्डिगो';

  @override
  String get themeAmber => 'एम्बर';

  @override
  String get themeTeal => 'टिल';

  @override
  String get themeBrown => 'खैरो';

  @override
  String get catFruits => 'फलफूल';

  @override
  String get catCleaning => 'सफाई';

  @override
  String get catBeverages => 'पेय पदार्थ';

  @override
  String get catBakery => 'बेकरी';

  @override
  String get catOthers => 'अन्य';

  @override
  String get unitPack => 'प्याक';

  @override
  String get shareSubject => 'किनमेल सूची';

  @override
  String get monthlyBudgetTitle => 'मासिक बजेट';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'सूची मेटाउनुहोस्';

  @override
  String get pantryItemRemoved => 'वस्तु हटाइयो';

  @override
  String deficitItems(int deficit) {
    return '$deficit वस्तु(हरू) खरिद गर्न आवश्यक छ';
  }

  @override
  String get cartTotal => 'कार्ट कुल';

  @override
  String get restockLabel => 'पुनः भण्डार गर्नुहोस्';

  @override
  String get advancedFeatures => 'उन्नत सुविधाहरू';

  @override
  String get selectAll => 'सबै चयन गर्नुहोस्';

  @override
  String get deselectAll => 'सबै अचयन गर्नुहोस्';

  @override
  String get monthlyBudgetAppBar => 'मासिक बजेट';

  @override
  String get budgetEditTitle => 'मासिक बजेट';

  @override
  String get budgetDashboardTitle => 'ड्यासबोर्ड';

  @override
  String get selectListForDashboard => 'ड्यासबोर्ड हेर्न सूची चयन गर्नुहोस्।';

  @override
  String get spendingAnalysis => 'खर्च विश्लेषण';

  @override
  String get noItemsToAnalyze => 'विश्लेषण गर्न सूचीमा कुनै वस्तु छैन।';

  @override
  String get markItemsToSeeAnalysis =>
      'विश्लेषण हेर्न वस्तुहरूलाई खरिद गरिएको रूपमा चिन्ह लगाउनुहोस्।';

  @override
  String get totalSpending => 'कुल खर्च';

  @override
  String get spendingByCategory => 'श्रेणी अनुसार खर्च';

  @override
  String get achievements => 'उपलब्धिहरू';

  @override
  String get exportPdfExcel => 'PDF/Excel निर्यात गर्नुहोस्';

  @override
  String get exportPdf => 'PDF को रूपमा निर्यात गर्नुहोस्';

  @override
  String get exportExcel => 'Excel को रूपमा निर्यात गर्नुहोस्';

  @override
  String get organizingAi => 'AI सँग व्यवस्थित गर्दै...';

  @override
  String get yesLabel => 'हो';

  @override
  String get noLabel => 'होइन';

  @override
  String get shareListText => 'मेरो किनमेल सूची';

  @override
  String get emptyListAddItems =>
      'तपाईंको सूची खाली छ! पहिले वस्तुहरू थप्नुहोस्। ℹ️';

  @override
  String get listOrganizedMagic =>
      'सूची श्रेणीहरूद्वारा जादुई रूपमा व्यवस्थित गरियो! ✨';

  @override
  String get shoppingMode => 'किनमेल मोड';

  @override
  String get smartOrganization => 'स्मार्ट व्यवस्थापन';

  @override
  String get savings => 'बचत';

  @override
  String get shoppingModeHeader => 'किनमेल मोड';

  @override
  String get shareAsText => 'वस्तुहरूलाई ढाँचा गरिएको पाठको रूपमा पठाउनुहोस्';

  @override
  String get shareRealtime => 'अन्य व्यक्तिहरूसँग वास्तविक-समय सिङ्क';

  @override
  String get quickRecipe => 'द्रुत व्यञ्जन';

  @override
  String get quickRecipePrompt =>
      'मेरो सूचीका वस्तुहरूसँग व्यञ्जनहरू सुझाव दिनुहोस्।';

  @override
  String get economyTips => 'बचत सुझावहरू';

  @override
  String get economyTipsPrompt => 'यो खरिदमा म कसरी पैसा बचत गर्न सक्छु?';

  @override
  String get organizeAisles => 'गल्लीहरूद्वारा व्यवस्थित गर्नुहोस्';

  @override
  String get organizeAislesPrompt =>
      'बजारको गल्लीहरूद्वारा व्यवस्थित गर्नुहोस्।';

  @override
  String get recipeSuggestion => 'व्यञ्जन सुझाव';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining क्रेडिट बाँकी';
  }

  @override
  String get addAllToList => 'सबै सूचीमा थप्नुहोस्';

  @override
  String get organizeByAisles => 'गल्लीहरूद्वारा व्यवस्थित गर्नुहोस्';

  @override
  String get voiceTranscriptionTooltip => 'भ्वाइस टाइपिङ (नि:शुल्क)';

  @override
  String get aiVoiceCommandTooltip => 'AI भ्वाइस कमाण्ड (प्रिमियम)';

  @override
  String get voiceCommandTitle => 'AI भ्वाइस कमाण्ड';

  @override
  String get voiceCommandContent =>
      'आफ्नो सूची व्यवस्थापन गर्न स्वाभाविक रूपमा बोल्नुहोस्!\n\nउदाहरणहरू:\n• \'रोटी, पनीर र ह्याम थप्नुहोस्\'\n• \'लुगा धुने साबुन हटाउनुहोस्\'\n• \'थिम नीलोमा बदल्नुहोस्\'\n\nयो Lista Plus Premium को एक विशेष सुविधा हो।';

  @override
  String get voiceCommandPlanBtn => 'योजनाहरू हेर्नुहोस्';

  @override
  String get itemsAddedSuccess => 'वस्तुहरू सफलतापूर्वक सूचीमा थपियो!';

  @override
  String get viewList => 'सूची हेर्नुहोस्';

  @override
  String get feedbackTitle => 'प्रतिक्रिया पठाउनुहोस्';

  @override
  String get feedbackPrompt => 'तपाईं के साझेदारी गर्न चाहनुहुन्छ?';

  @override
  String get feedbackTypeBug => 'बग रिपोर्ट गर्नुहोस्';

  @override
  String get feedbackTypeBugHint => 'केही काम गरिरहेको छैन';

  @override
  String get feedbackTypeSuggestion => 'सुझाव';

  @override
  String get feedbackTypeSuggestionHint => 'एप सुधार गर्न विचार';

  @override
  String get feedbackTypeTranslation => 'अनुवाद समस्या';

  @override
  String get feedbackTypeTranslationHint => 'गलत वा अप्ठ्यारो अनुवाद';

  @override
  String get feedbackTypeFeature => 'सुविधा अनुरोध';

  @override
  String get feedbackTypeFeatureHint => 'तपाईंले हेर्न चाहनुभएको सुविधा';

  @override
  String get feedbackTypeOther => 'अन्य';

  @override
  String get feedbackTypeOtherHint => 'अन्य प्रकारको प्रतिक्रिया';

  @override
  String get feedbackHint =>
      'आफ्नो प्रतिक्रिया विस्तृत रूपमा वर्णन गर्नुहोस्...';

  @override
  String get feedbackSend => 'प्रतिक्रिया पठाउनुहोस्';

  @override
  String get feedbackSending => 'पठाउँदै...';

  @override
  String get feedbackThankYou => 'धन्यवाद!';

  @override
  String get feedbackThankYouMessage =>
      'तपाईंको प्रतिक्रिया प्राप्त भएको छ र यसले Lista Plus लाई सबैको लागि सुधार गर्न मद्दत गर्दछ।';

  @override
  String get feedbackBack => 'पछाडि';

  @override
  String feedbackError(String error) {
    return 'पठाउन त्रुटि: $error';
  }

  @override
  String get feedbackRetry => 'पुनः प्रयास गर्नुहोस्';

  @override
  String get feedbackSettingsTitle => 'प्रतिक्रिया पठाउनुहोस्';

  @override
  String get feedbackSettingsSubtitle =>
      'बग रिपोर्ट गर्नुहोस्, सुधार सुझाव दिनुहोस्, वा अनुवाद सच्याउनुहोस्';

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
  String get openMenu => 'मेनु खोल्नुहोस्';

  @override
  String get viewRecipe => 'रेसिपी हेर्नुहोस्';

  @override
  String get recipeCreated => 'रेसिपी बनाइयो!';

  @override
  String get editRecipe => 'सम्पादन गर्नुहोस्';

  @override
  String get deleteRecipe => 'मेटाउनुहोस्';

  @override
  String get deleteRecipeConfirm => 'यो रेसिपी मेटाउने?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'के तपाईं निश्चित रूपमा \"$recipeName\" मेटाउन चाहनुहुन्छ? यो कार्य फिर्ता गर्न सकिँदैन।';
  }

  @override
  String get ingredients => 'सामग्रीहरू';

  @override
  String get instructions => 'निर्देशनहरू';

  @override
  String get prepTime => 'तयारी समय';

  @override
  String get recipeSaved => 'रेसिपी सुरक्षित गरियो!';

  @override
  String get noRecipesSaved => 'कुनै रेसिपी सुरक्षित गरिएको छैन';

  @override
  String get noRecipesSavedHint =>
      'तलको बटन ट्याप गरेर आफ्नो पहिलो अनुकूल रेसिपी बनाउनुहोस्।';

  @override
  String get myRecipes => 'मेरा रेसिपीहरू';

  @override
  String get newRecipe => 'नयाँ रेसिपी';

  @override
  String get loadingRecipes => 'तपाईंका रेसिपीहरू लोड हुँदैछन्...';

  @override
  String get errorLoadingRecipes => 'रेसिपी लोड गर्दा त्रुटि';

  @override
  String get addIngredient => 'सामग्री थप्नुहोस्';

  @override
  String get saveRecipe => 'सुरक्षित गर्नुहोस्';

  @override
  String get recipeName => 'रेसिपीको नाम';

  @override
  String get shortDescription => 'छोटो विवरण';

  @override
  String get prepTimeMinutes => 'तयारी समय (मिनेट)';

  @override
  String get instructionsHint => 'प्रत्येक पङ्क्तिमा एक चरण टाइप गर्नुहोस्...';

  @override
  String get addPhoto => 'फोटो थप्नुहोस्';

  @override
  String get imageUrlPlaceholder => 'वा छवि URL टाँस्नुहोस्';

  @override
  String get tags => 'ट्यागहरू';

  @override
  String get recipeTags => 'रेसिपी ट्यागहरू';

  @override
  String get suggestedTags => 'सुझाइएको';

  @override
  String get searchRecipes => 'रेसिपी खोज्नुहोस्...';

  @override
  String get filterByTag => 'ट्याग द्वारा फिल्टर गर्नुहोस्';

  @override
  String get allTags => 'सबै';

  @override
  String get recipeDeleted => 'रेसिपी मेटाइयो';

  @override
  String get saveChanges => 'परिवर्तनहरू सुरक्षित गर्नुहोस्';

  @override
  String get editRecipeTitle => 'रेसिपी सम्पादन गर्नुहोस्';

  @override
  String get newRecipeTitle => 'नयाँ रेसिपी';

  @override
  String get requiredField => 'आवश्यक';

  @override
  String get chooseImageSource => 'छवि स्रोत चयन गर्नुहोस्';

  @override
  String get gallery => 'ग्यालरी';

  @override
  String get enterUrl => 'URL प्रविष्ट गर्नुहोस्';

  @override
  String get recipeImage => 'रेसिपीको छवि';

  @override
  String get removeImage => 'छवि हटाउनुहोस्';

  @override
  String get mealPlannerTitle => 'खाना योजनाकार';

  @override
  String get mealPlannerViewMonthly => 'मासिक दृश्य';

  @override
  String get mealPlannerViewWeekly => 'साप्ताहिक दृश्य';

  @override
  String get mealPlannerNoMeals => 'कुनै खाना योजना गरिएको छैन';

  @override
  String get mealPlannerNoMealsHint =>
      'खाना थप्नको लागि कुनै दिनमा ट्याप गर्नुहोस्';

  @override
  String get mealPlannerLoading => 'खाना योजना लोड हुँदैछ...';

  @override
  String get mealPlannerError => 'खाना योजना लोड गर्दा त्रुटि';

  @override
  String get mealPlannerAddMeal => 'खाना थप्नुहोस्';

  @override
  String get mealPlannerEditMeal => 'खाना सम्पादन गर्नुहोस्';

  @override
  String get mealPlannerDeleteMeal => 'खाना हटाउनुहोस्';

  @override
  String get mealPlannerMealDeleted => 'खाना हटाइयो';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count व्यक्ति',
      one: '$count व्यक्ति',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'व्यक्ति';

  @override
  String get mealPlannerNoteLabel => 'नोट (वैकल्पिक)';

  @override
  String get mealPlannerSelectRecipe => 'रेसिपी चयन गर्नुहोस्';

  @override
  String get mealPlannerSearchRecipes => 'रेसिपी खोज्नुहोस्...';

  @override
  String get mealPlannerNoRecipesFound => 'कुनै रेसिपी फेला परेन';

  @override
  String get mealPlannerNoRecipesHint =>
      'पहिले रेसिपी ट्याबमा रेसिपीहरू बनाउनुहोस्';

  @override
  String get mealPlannerSave => 'योजनामा थप्नुहोस्';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total मध्ये $count खाना योजना गरिएको';
  }

  @override
  String get mealPlannerGenerateList => 'किनमेल सूची बनाउनुहोस्';

  @override
  String get mealPlannerGenerateListConfirm =>
      'यो हप्ताको योजनाबद्ध खानाका सबै सामग्रीहरू तपाईंको किनमेल सूचीमा थप्ने?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'तपाईंको सूचीमा $count सामग्री(हरू) थपियो!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'थप्नका लागि कुनै सामग्री छैन। पहिले रेसिपीहरू सहित केही खानाको योजना बनाउनुहोस्।';

  @override
  String get mealPlannerGenerateListNoList => 'पहिले किनमेल सूची बनाउनुहोस्।';

  @override
  String get mealPlannerMealTypeBreakfast => 'बिहानको खाजा';

  @override
  String get mealPlannerMealTypeLunch => 'दिउँसोको खाना';

  @override
  String get mealPlannerMealTypeDinner => 'बेलुकाको खाना';

  @override
  String get mealPlannerMealTypeSnack => 'खाजा';

  @override
  String get mealPlannerDateLabel => 'मिति';

  @override
  String get mealPlannerWeekEmpty => 'यो हप्ताको लागि केहि योजना गरिएको छैन';

  @override
  String get mealPlannerWeekEmptyHint =>
      'आफ्नो खाना योजना सुरु गर्न कुनै पनि दिनमा ट्याप गर्नुहोस्!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes मिनेट';
  }
}
