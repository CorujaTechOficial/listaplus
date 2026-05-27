// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'खरीदारी सूची';

  @override
  String get lists => 'सूचियाँ';

  @override
  String get pantry => 'पेंट्री';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get save => 'सहेजें';

  @override
  String get create => 'बनाएँ';

  @override
  String get add => 'जोड़ें';

  @override
  String get remove => 'हटाएँ';

  @override
  String get delete => 'हटाएँ';

  @override
  String get edit => 'संपादित करें';

  @override
  String get copy => 'कॉपी करें';

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String get regenerate => 'पुनः बनाएँ';

  @override
  String get copiedToClipboard => 'क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get confirm => 'पुष्टि करें';

  @override
  String get close => 'बंद करें';

  @override
  String get import => 'आयात करें';

  @override
  String get rename => 'नाम बदलें';

  @override
  String get upgrade => 'अपग्रेड करें';

  @override
  String get clear => 'साफ़ करें';

  @override
  String error(String message) {
    return 'त्रुटि: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'त्रुटि: $message';
  }

  @override
  String get purchaseError => 'खरीदारी में त्रुटि हुई। पुनः प्रयास करें।';

  @override
  String get restoreError =>
      'खरीदारी पुनर्स्थापित करने में त्रुटि हुई। पुनः प्रयास करें।';

  @override
  String get loading => 'लोड हो रहा है...';

  @override
  String get fieldRequired => 'आवश्यक फ़ील्ड';

  @override
  String get addedFeedback => 'जोड़ दिया गया!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count चयनित',
      one: '$count चयनित',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'अनुमानित';

  @override
  String get alreadyPurchased => 'पहले ही खरीदा जा चुका है';

  @override
  String get clearList => 'सूची साफ़ करें';

  @override
  String get clearPurchased => 'खरीदी गई वस्तुएँ हटाएँ';

  @override
  String get share => 'साझा करें';

  @override
  String get shareViaCode => 'कोड के माध्यम से साझा करें';

  @override
  String get importViaCode => 'कोड के माध्यम से आयात करें';

  @override
  String get listAssistant => 'सूची सहायक';

  @override
  String get globalAssistant => 'वैश्विक सहायक';

  @override
  String get becomePremium => 'प्रीमियम बनें';

  @override
  String get manageSubscription => 'सदस्यता प्रबंधित करें';

  @override
  String get completePurchase => 'खरीदारी पूर्ण करें';

  @override
  String get confirmClearList => 'सभी वस्तुएँ हटाएँ?';

  @override
  String get shareListTitle => 'सूची साझा करें';

  @override
  String get shareThisCode => 'यह कोड साझा करें:';

  @override
  String get validForLimitedTime => 'सीमित समय के लिए मान्य';

  @override
  String get importListTitle => 'सूची आयात करें';

  @override
  String get enterCodeHint => 'कोड दर्ज करें';

  @override
  String get confirmArchiveTitle => 'खरीदारी पूर्ण करें';

  @override
  String get confirmArchiveContent =>
      'इस खरीदारी को पूर्ण करें और सूची को संग्रहित करें?';

  @override
  String get complete => 'पूर्ण करें';

  @override
  String get listArchived => 'सूची सफलतापूर्वक संग्रहित की गई!';

  @override
  String listAdded(String listName) {
    return '$listName जोड़ दी गई!';
  }

  @override
  String get buy => 'खरीदें';

  @override
  String get unmark => 'चिह्न हटाएँ';

  @override
  String confirmDeleteItems(int count) {
    return '$count आइटम हटाएँ?';
  }

  @override
  String get confirmDeleteTitle => 'पुष्टि करें';

  @override
  String confirmContent(int count) {
    return '$count आइटम हटाएँ?';
  }

  @override
  String get archiveList => 'सूची संग्रहित करें';

  @override
  String get pantryAppBar => 'पेंट्री';

  @override
  String get generateShoppingList => 'खरीदारी सूची बनाएँ';

  @override
  String get pantryEmpty => 'पेंट्री खाली है';

  @override
  String get pantryEmptySubtitle =>
      'वे उत्पाद जोड़ें जिन्हें आप घर पर रखना चाहते हैं';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit आइटम खरीदे जाने चाहिए';
  }

  @override
  String get noItemsToBuy => 'खरीदने के लिए कोई आइटम नहीं है';

  @override
  String get newPantryList => 'पेंट्री खरीदारी';

  @override
  String get newListTitle => 'नई खरीदारी सूची';

  @override
  String itemsWillBeAdded(int count) {
    return '$count आइटम जोड़े जाएँगे';
  }

  @override
  String get listNameLabel => 'सूची का नाम';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" सूची $count आइटम के साथ बनाई गई';
  }

  @override
  String get noTracking => 'कोई ट्रैकिंग नहीं';

  @override
  String get markAsPurchased => 'खरीदा गया चिह्नित करें';

  @override
  String editPantryItem(String name) {
    return '$name संपादित करें';
  }

  @override
  String get idealQuantity => 'आदर्श मात्रा';

  @override
  String get currentQuantity => 'वर्तमान मात्रा';

  @override
  String get consumed => 'उपभोग किया गया';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name को $quantity $unit में पुनः भर दिया गया';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'पेंट्री से \"$name\" हटाएँ?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name संपादित करें';
  }

  @override
  String get settingsAppBar => 'सेटिंग्स';

  @override
  String get language => 'भाषा';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get appearance => 'दिखावट';

  @override
  String get light => 'हल्का';

  @override
  String get system => 'सिस्टम';

  @override
  String get dark => 'गहरा';

  @override
  String get themeColor => 'थीम रंग';

  @override
  String get finance => 'वित्त';

  @override
  String get monthlyBudgetNav => 'मासिक बजट';

  @override
  String get budgetSubtitle => 'अपने मासिक खर्च को ट्रैक करें';

  @override
  String get data => 'डेटा';

  @override
  String get backupNav => 'बैकअप';

  @override
  String get backupSubtitle => 'अपने डेटा को निर्यात या आयात करें';

  @override
  String get about => 'बारे में';

  @override
  String get version => 'संस्करण';

  @override
  String get privacy => 'गोपनीयता';

  @override
  String get termsOfUse => 'उपयोग की शर्तें';

  @override
  String get backupTitle => 'बैकअप';

  @override
  String get backupPremiumDescription =>
      'बैकअप और निर्यात एक प्रीमियम सुविधा है';

  @override
  String get exportData => 'डेटा निर्यात करें';

  @override
  String get exportDataSubtitle => 'सभी सूचियों को JSON के रूप में सहेजें';

  @override
  String get importData => 'डेटा आयात करें';

  @override
  String get importDataSubtitle => 'JSON से सूचियाँ पुनर्स्थापित करें';

  @override
  String get importJsonTitle => 'JSON आयात करें';

  @override
  String get importJsonHint => 'बैकअप JSON यहाँ पेस्ट करें...';

  @override
  String get backupExported => 'बैकअप निर्यात हो गया!';

  @override
  String get budgetAppBar => 'मासिक बजट';

  @override
  String get budgetPremiumLocked => 'वैश्विक मासिक बजट प्रीमियम है';

  @override
  String get budgetUpgradePrompt => 'अनलॉक करने के लिए अपग्रेड करें';

  @override
  String get noBudgetDefined => 'कोई बजट निर्धारित नहीं है';

  @override
  String totalEstimated(String amount) {
    return 'कुल अनुमानित: $amount';
  }

  @override
  String get setBudgetButton => 'बजट सेट करें';

  @override
  String get budgetLists => 'सूचियाँ';

  @override
  String get budgetValueLabel => 'राशि';

  @override
  String get setBudgetTitle => 'मासिक बजट';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'सभी';

  @override
  String get filterPending => 'लंबित';

  @override
  String get filterPurchased => 'खरीदा गया';

  @override
  String get sortName => 'नाम';

  @override
  String get sortCategory => 'श्रेणी';

  @override
  String get sortDate => 'तिथि';

  @override
  String get sortManual => 'मैन्युअल';

  @override
  String get addItem => 'आइटम जोड़ें';

  @override
  String get itemName => 'आइटम का नाम';

  @override
  String get quantityShort => 'मात्रा';

  @override
  String get unit => 'इकाई';

  @override
  String get category => 'श्रेणी';

  @override
  String get estimatedPrice => 'अनुमानित मूल्य';

  @override
  String get addItemPrice => 'अनुमानित मूल्य';

  @override
  String get editItem => 'आइटम संपादित करें';

  @override
  String get quantityFull => 'मात्रा';

  @override
  String get editItemPrice => 'अनुमानित मूल्य';

  @override
  String get addToPantry => 'पेंट्री में जोड़ें';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" को अपनी पेंट्री में जोड़ें?';
  }

  @override
  String get yes => 'हाँ';

  @override
  String get productName => 'उत्पाद का नाम';

  @override
  String get idealQty => 'आदर्श मात्रा';

  @override
  String get currentQty => 'वर्तमान मात्रा';

  @override
  String get trackStock => 'स्टॉक ट्रैक करें';

  @override
  String get trackStockActive => 'खरीदारी सुझावों में दिखाई देता है';

  @override
  String get trackStockInactive => 'खरीदारी सुझाव उत्पन्न नहीं करता';

  @override
  String get createListDialog => 'सूची बनाएँ';

  @override
  String get renameListDialog => 'सूची का नाम बदलें';

  @override
  String get listHistory => 'सूची इतिहास';

  @override
  String get myLists => 'मेरी सूचियाँ';

  @override
  String get viewActive => 'सक्रिय देखें';

  @override
  String get viewHistory => 'इतिहास देखें';

  @override
  String get noArchivedLists => 'कोई संग्रहित सूची नहीं';

  @override
  String get noActiveLists => 'कोई सक्रिय सूची नहीं';

  @override
  String completedOn(String date) {
    return '$date को पूर्ण हुई';
  }

  @override
  String get sharedLabel => 'साझा की गई';

  @override
  String get restore => 'पुनर्स्थापित करें';

  @override
  String get removeSharedTooltip => 'हटाएँ';

  @override
  String get deleteListTitle => 'सूची हटाएँ';

  @override
  String deleteListContent(String name) {
    return 'क्या आप वाकई \"$name\" को हटाना चाहते हैं? सभी आइटम हटा दिए जाएँगे।';
  }

  @override
  String get removeSharedListTitle => 'साझा सूची हटाएँ';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" को अपनी सूचियों से हटाएँ? मूल सूची प्रभावित नहीं होगी।';
  }

  @override
  String get createNewList => 'नई सूची बनाएँ';

  @override
  String get aiAssistant => 'AI सहायक';

  @override
  String get aiAssistantDescription =>
      'हमारे AI सहायक से स्मार्ट सुझाव, रेसिपी और व्यक्तिगत टिप्स प्राप्त करें।';

  @override
  String get generalAssistant => 'सामान्य सहायक';

  @override
  String get clearHistory => 'इतिहास साफ़ करें';

  @override
  String get clearHistoryConfirm => 'इस सत्र के सभी संदेश साफ़ करें?';

  @override
  String get chatHint => 'अपना संदेश लिखें...';

  @override
  String chatError(String error) {
    return 'चैट लोड करने में त्रुटि: $error';
  }

  @override
  String get listHelp => 'मैं आपकी सूची में कैसे मदद कर सकता हूँ?';

  @override
  String get generalHelp => 'आज आपकी खरीदारी में मैं कैसे मदद कर सकता हूँ?';

  @override
  String get chatSubtitle => 'आइटम सुझाव, रेसिपी या बचत टिप्स के लिए पूछें।';

  @override
  String get aiError =>
      'क्षमा करें, आपके अनुरोध को संसाधित करने में त्रुटि हुई। अपना कनेक्शन जाँचें या बाद में पुनः प्रयास करें।';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt =>
      'प्रीमियम सुविधाओं को अनलॉक\nकरने के लिए लॉग इन करें';

  @override
  String get signInGoogle => 'Google से साइन इन करें';

  @override
  String get signInApple => 'Apple से साइन इन करें';

  @override
  String get continueAsGuest => 'अतिथि के रूप में जारी रखें';

  @override
  String loginError(String error) {
    return 'लॉगिन त्रुटि: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus प्रीमियम';

  @override
  String get premiumUpgrade => 'अनलॉक करने के लिए अपग्रेड करें';

  @override
  String get itemRemoved => 'आइटम हटा दिया गया';

  @override
  String get undo => 'पूर्ववत करें';

  @override
  String get emptyListTitle => 'आपकी सूची खाली है';

  @override
  String get emptyListSubtitle => 'शुरू करने के लिए आइटम जोड़ें';

  @override
  String get noListFoundTitle => 'कोई सूची नहीं मिली';

  @override
  String get noListFoundSubtitle => 'शुरू करने के लिए अपनी पहली सूची बनाएँ';

  @override
  String get createFirstList => 'पहली सूची बनाएँ';

  @override
  String get listBudgetTitle => 'सूची बजट';

  @override
  String get budgetAmountLabel => 'बजट राशि';

  @override
  String get removeBudget => 'हटाएँ';

  @override
  String get prefUnlimitedLists => 'असीमित सूचियाँ';

  @override
  String get prefSharing => 'सूचियाँ साझा करें';

  @override
  String get prefFullHistory => 'पूर्ण इतिहास';

  @override
  String get prefExportData => 'डेटा निर्यात करें';

  @override
  String get prefCustomThemes => 'कस्टम थीम';

  @override
  String get prefMonthlyBudget => 'वैश्विक मासिक बजट';

  @override
  String get prefAIAssistant => 'व्यक्तिगत AI सहायक';

  @override
  String get prefUnlimitedPantry => 'असीमित पेंट्री';

  @override
  String get prefInteractiveArtifacts => 'इंटरैक्टिव AI आर्टिफैक्ट';

  @override
  String get themeGreen => 'हरा';

  @override
  String get themeBlue => 'नीला';

  @override
  String get themePurple => 'बैंगनी';

  @override
  String get themeRed => 'लाल';

  @override
  String get themeOrange => 'नारंगी';

  @override
  String get themePink => 'गुलाबी';

  @override
  String get themeIndigo => 'इंडिगो';

  @override
  String get themeAmber => 'एम्बर';

  @override
  String get themeTeal => 'टील';

  @override
  String get themeBrown => 'भूरा';

  @override
  String get catFruits => 'फल';

  @override
  String get catCleaning => 'सफाई';

  @override
  String get catBeverages => 'पेय पदार्थ';

  @override
  String get catBakery => 'बेकरी';

  @override
  String get catOthers => 'अन्य';

  @override
  String get unitPack => 'पैक';

  @override
  String get shareSubject => 'खरीदारी सूची';

  @override
  String get monthlyBudgetTitle => 'मासिक बजट';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'सूची हटाएँ';

  @override
  String get pantryItemRemoved => 'आइटम हटा दिया गया';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit आइटम खरीदे जाने चाहिए',
      one: '$deficit आइटम खरीदा जाना चाहिए',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'कुल कार्ट';

  @override
  String get restockLabel => 'पुनः भरें';

  @override
  String get advancedFeatures => 'उन्नत सुविधाएँ';

  @override
  String get selectAll => 'सभी चुनें';

  @override
  String get deselectAll => 'सभी अचयनित करें';

  @override
  String get monthlyBudgetAppBar => 'मासिक बजट';

  @override
  String get budgetEditTitle => 'मासिक बजट';

  @override
  String get budgetDashboardTitle => 'डैशबोर्ड';

  @override
  String get selectListForDashboard => 'डैशबोर्ड देखने के लिए एक सूची चुनें।';

  @override
  String get spendingAnalysis => 'खर्च विश्लेषण';

  @override
  String get noItemsToAnalyze =>
      'विश्लेषण करने के लिए सूची में कोई आइटम नहीं है।';

  @override
  String get markItemsToSeeAnalysis =>
      'विश्लेषण देखने के लिए आइटम को खरीदा गया चिह्नित करें।';

  @override
  String get totalSpending => 'कुल खर्च';

  @override
  String get spendingByCategory => 'श्रेणी के अनुसार खर्च';

  @override
  String get achievements => 'उपलब्धियाँ';

  @override
  String get exportPdfExcel => 'PDF/Excel निर्यात करें';

  @override
  String get exportPdf => 'PDF के रूप में निर्यात करें';

  @override
  String get exportExcel => 'Excel के रूप में निर्यात करें';

  @override
  String get organizingAi => 'AI के साथ व्यवस्थित किया जा रहा है...';

  @override
  String get yesLabel => 'हाँ';

  @override
  String get noLabel => 'नहीं';

  @override
  String get shareListText => 'मेरी खरीदारी सूची';

  @override
  String get emptyListAddItems => 'आपकी सूची खाली है! पहले आइटम जोड़ें। ℹ️';

  @override
  String get listOrganizedMagic =>
      'सूची जादुई रूप से श्रेणियों में व्यवस्थित हुई! ✨';

  @override
  String get shoppingMode => 'खरीदारी मोड';

  @override
  String get smartOrganization => 'स्मार्ट व्यवस्था';

  @override
  String get savings => 'बचत';

  @override
  String get shoppingModeHeader => 'खरीदारी मोड';

  @override
  String get shareAsText => 'आइटम को फ़ॉर्मेटेड टेक्स्ट के रूप में भेजें';

  @override
  String get shareRealtime => 'अन्य लोगों के साथ रीयल-टाइम सिंक';

  @override
  String get quickRecipe => 'त्वरित रेसिपी';

  @override
  String get quickRecipePrompt => 'मेरी सूची के आइटम से रेसिपी सुझाएँ।';

  @override
  String get economyTips => 'बचत टिप्स';

  @override
  String get economyTipsPrompt => 'मैं इस खरीदारी पर पैसे कैसे बचा सकता हूँ?';

  @override
  String get organizeAisles => 'गलियारों के अनुसार व्यवस्थित करें';

  @override
  String get organizeAislesPrompt =>
      'बाज़ार के गलियारों के अनुसार व्यवस्थित करें।';

  @override
  String get recipeSuggestion => 'रेसिपी सुझाव';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining क्रेडिट शेष';
  }

  @override
  String get addAllToList => 'सभी को सूची में जोड़ें';

  @override
  String get organizeByAisles => 'गलियारों के अनुसार व्यवस्थित करें';

  @override
  String get voiceTranscriptionTooltip => 'वॉइस टाइपिंग (मुफ़्त)';

  @override
  String get aiVoiceCommandTooltip => 'AI वॉइस कमांड (प्रीमियम)';

  @override
  String get voiceCommandTitle => 'AI वॉइस कमांड';

  @override
  String get voiceCommandContent =>
      'अपनी सूची प्रबंधित करने के लिए स्वाभाविक रूप से बोलें!\n\nउदाहरण:\n• \'ब्रेड, पनीर और हैम जोड़ें\'\n• \'लॉन्ड्री डिटर्जेंट हटाएँ\'\n• \'थीम को नीला करें\'\n\nयह Lista Plus प्रीमियम की एक विशेष सुविधा है।';

  @override
  String get voiceCommandPlanBtn => 'योजनाएँ देखें';

  @override
  String get itemsAddedSuccess => 'आइटम सफलतापूर्वक सूची में जोड़े गए!';

  @override
  String get viewList => 'सूची देखें';

  @override
  String get feedbackTitle => 'प्रतिक्रिया भेजें';

  @override
  String get feedbackPrompt => 'आप क्या साझा करना चाहेंगे?';

  @override
  String get feedbackTypeBug => 'बग रिपोर्ट करें';

  @override
  String get feedbackTypeBugHint => 'कुछ काम नहीं कर रहा है';

  @override
  String get feedbackTypeSuggestion => 'सुझाव';

  @override
  String get feedbackTypeSuggestionHint => 'ऐप को बेहतर बनाने का विचार';

  @override
  String get feedbackTypeTranslation => 'अनुवाद संबंधी समस्या';

  @override
  String get feedbackTypeTranslationHint => 'गलत या अटपटा अनुवाद';

  @override
  String get feedbackTypeFeature => 'फ़ीचर अनुरोध';

  @override
  String get feedbackTypeFeatureHint => 'वह फ़ीचर जो आप देखना चाहेंगे';

  @override
  String get feedbackTypeOther => 'अन्य';

  @override
  String get feedbackTypeOtherHint => 'अन्य प्रकार की प्रतिक्रिया';

  @override
  String get feedbackHint => 'अपनी प्रतिक्रिया का विस्तार से वर्णन करें...';

  @override
  String get feedbackSend => 'प्रतिक्रिया भेजें';

  @override
  String get feedbackSending => 'भेजा जा रहा है...';

  @override
  String get feedbackThankYou => 'धन्यवाद!';

  @override
  String get feedbackThankYouMessage =>
      'आपकी प्रतिक्रिया प्राप्त हो गई है और यह सभी के लिए Lista Plus को बेहतर बनाने में मदद करती है।';

  @override
  String get feedbackBack => 'वापस';

  @override
  String feedbackError(String error) {
    return 'भेजने में त्रुटि: $error';
  }

  @override
  String get feedbackRetry => 'पुनः प्रयास करें';

  @override
  String get feedbackSettingsTitle => 'प्रतिक्रिया भेजें';

  @override
  String get feedbackSettingsSubtitle =>
      'बग रिपोर्ट करें, सुधार सुझाएँ, या अनुवाद ठीक करें';

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

/// The translations for Hindi, as used in India (`hi_IN`).
class AppLocalizationsHiIn extends AppLocalizationsHi {
  AppLocalizationsHiIn() : super('hi_IN');

  @override
  String get appTitle => 'खरीदारी सूची';

  @override
  String get lists => 'सूचियाँ';

  @override
  String get pantry => 'पेंट्री';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get save => 'सहेजें';

  @override
  String get create => 'बनाएँ';

  @override
  String get add => 'जोड़ें';

  @override
  String get remove => 'हटाएँ';

  @override
  String get delete => 'हटाएँ';

  @override
  String get edit => 'संपादित करें';

  @override
  String get copy => 'कॉपी करें';

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String get regenerate => 'पुनः बनाएँ';

  @override
  String get copiedToClipboard => 'क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get confirm => 'पुष्टि करें';

  @override
  String get close => 'बंद करें';

  @override
  String get import => 'आयात करें';

  @override
  String get rename => 'नाम बदलें';

  @override
  String get upgrade => 'अपग्रेड करें';

  @override
  String get clear => 'साफ़ करें';

  @override
  String error(String message) {
    return 'त्रुटि: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'त्रुटि: $message';
  }

  @override
  String get purchaseError => 'खरीदारी में त्रुटि हुई। पुनः प्रयास करें।';

  @override
  String get restoreError =>
      'खरीदारी पुनर्स्थापित करने में त्रुटि हुई। पुनः प्रयास करें।';

  @override
  String get loading => 'लोड हो रहा है...';

  @override
  String get fieldRequired => 'आवश्यक फ़ील्ड';

  @override
  String get addedFeedback => 'जोड़ दिया गया!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count चयनित',
      one: '$count चयनित',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'अनुमानित';

  @override
  String get alreadyPurchased => 'पहले ही खरीदा जा चुका है';

  @override
  String get clearList => 'सूची साफ़ करें';

  @override
  String get clearPurchased => 'खरीदी गई वस्तुएँ हटाएँ';

  @override
  String get share => 'साझा करें';

  @override
  String get shareViaCode => 'कोड के माध्यम से साझा करें';

  @override
  String get importViaCode => 'कोड के माध्यम से आयात करें';

  @override
  String get listAssistant => 'सूची सहायक';

  @override
  String get globalAssistant => 'वैश्विक सहायक';

  @override
  String get becomePremium => 'प्रीमियम बनें';

  @override
  String get manageSubscription => 'सदस्यता प्रबंधित करें';

  @override
  String get completePurchase => 'खरीदारी पूर्ण करें';

  @override
  String get confirmClearList => 'सभी वस्तुएँ हटाएँ?';

  @override
  String get shareListTitle => 'सूची साझा करें';

  @override
  String get shareThisCode => 'यह कोड साझा करें:';

  @override
  String get validForLimitedTime => 'सीमित समय के लिए मान्य';

  @override
  String get importListTitle => 'सूची आयात करें';

  @override
  String get enterCodeHint => 'कोड दर्ज करें';

  @override
  String get confirmArchiveTitle => 'खरीदारी पूर्ण करें';

  @override
  String get confirmArchiveContent =>
      'इस खरीदारी को पूर्ण करें और सूची को संग्रहित करें?';

  @override
  String get complete => 'पूर्ण करें';

  @override
  String get listArchived => 'सूची सफलतापूर्वक संग्रहित की गई!';

  @override
  String listAdded(String listName) {
    return '$listName जोड़ दी गई!';
  }

  @override
  String get buy => 'खरीदें';

  @override
  String get unmark => 'चिह्न हटाएँ';

  @override
  String confirmDeleteItems(int count) {
    return '$count आइटम हटाएँ?';
  }

  @override
  String get confirmDeleteTitle => 'पुष्टि करें';

  @override
  String confirmContent(int count) {
    return '$count आइटम हटाएँ?';
  }

  @override
  String get archiveList => 'सूची संग्रहित करें';

  @override
  String get pantryAppBar => 'पेंट्री';

  @override
  String get generateShoppingList => 'खरीदारी सूची बनाएँ';

  @override
  String get pantryEmpty => 'पेंट्री खाली है';

  @override
  String get pantryEmptySubtitle =>
      'वे उत्पाद जोड़ें जिन्हें आप घर पर रखना चाहते हैं';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit आइटम खरीदे जाने चाहिए';
  }

  @override
  String get noItemsToBuy => 'खरीदने के लिए कोई आइटम नहीं है';

  @override
  String get newPantryList => 'पेंट्री खरीदारी';

  @override
  String get newListTitle => 'नई खरीदारी सूची';

  @override
  String itemsWillBeAdded(int count) {
    return '$count आइटम जोड़े जाएँगे';
  }

  @override
  String get listNameLabel => 'सूची का नाम';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" सूची $count आइटम के साथ बनाई गई';
  }

  @override
  String get noTracking => 'कोई ट्रैकिंग नहीं';

  @override
  String get markAsPurchased => 'खरीदा गया चिह्नित करें';

  @override
  String editPantryItem(String name) {
    return '$name संपादित करें';
  }

  @override
  String get idealQuantity => 'आदर्श मात्रा';

  @override
  String get currentQuantity => 'वर्तमान मात्रा';

  @override
  String get consumed => 'उपभोग किया गया';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name को $quantity $unit में पुनः भर दिया गया';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'पेंट्री से \"$name\" हटाएँ?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name संपादित करें';
  }

  @override
  String get settingsAppBar => 'सेटिंग्स';

  @override
  String get language => 'भाषा';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get appearance => 'दिखावट';

  @override
  String get light => 'हल्का';

  @override
  String get system => 'सिस्टम';

  @override
  String get dark => 'गहरा';

  @override
  String get themeColor => 'थीम रंग';

  @override
  String get finance => 'वित्त';

  @override
  String get monthlyBudgetNav => 'मासिक बजट';

  @override
  String get budgetSubtitle => 'अपने मासिक खर्च को ट्रैक करें';

  @override
  String get data => 'डेटा';

  @override
  String get backupNav => 'बैकअप';

  @override
  String get backupSubtitle => 'अपने डेटा को निर्यात या आयात करें';

  @override
  String get about => 'बारे में';

  @override
  String get version => 'संस्करण';

  @override
  String get privacy => 'गोपनीयता';

  @override
  String get termsOfUse => 'उपयोग की शर्तें';

  @override
  String get backupTitle => 'बैकअप';

  @override
  String get backupPremiumDescription =>
      'बैकअप और निर्यात एक प्रीमियम सुविधा है';

  @override
  String get exportData => 'डेटा निर्यात करें';

  @override
  String get exportDataSubtitle => 'सभी सूचियों को JSON के रूप में सहेजें';

  @override
  String get importData => 'डेटा आयात करें';

  @override
  String get importDataSubtitle => 'JSON से सूचियाँ पुनर्स्थापित करें';

  @override
  String get importJsonTitle => 'JSON आयात करें';

  @override
  String get importJsonHint => 'बैकअप JSON यहाँ पेस्ट करें...';

  @override
  String get backupExported => 'बैकअप निर्यात हो गया!';

  @override
  String get budgetAppBar => 'मासिक बजट';

  @override
  String get budgetPremiumLocked => 'वैश्विक मासिक बजट प्रीमियम है';

  @override
  String get budgetUpgradePrompt => 'अनलॉक करने के लिए अपग्रेड करें';

  @override
  String get noBudgetDefined => 'कोई बजट निर्धारित नहीं है';

  @override
  String totalEstimated(String amount) {
    return 'कुल अनुमानित: $amount';
  }

  @override
  String get setBudgetButton => 'बजट सेट करें';

  @override
  String get budgetLists => 'सूचियाँ';

  @override
  String get budgetValueLabel => 'राशि';

  @override
  String get setBudgetTitle => 'मासिक बजट';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'सभी';

  @override
  String get filterPending => 'लंबित';

  @override
  String get filterPurchased => 'खरीदा गया';

  @override
  String get sortName => 'नाम';

  @override
  String get sortCategory => 'श्रेणी';

  @override
  String get sortDate => 'तिथि';

  @override
  String get sortManual => 'मैन्युअल';

  @override
  String get addItem => 'आइटम जोड़ें';

  @override
  String get itemName => 'आइटम का नाम';

  @override
  String get quantityShort => 'मात्रा';

  @override
  String get unit => 'इकाई';

  @override
  String get category => 'श्रेणी';

  @override
  String get estimatedPrice => 'अनुमानित मूल्य';

  @override
  String get addItemPrice => 'अनुमानित मूल्य';

  @override
  String get editItem => 'आइटम संपादित करें';

  @override
  String get quantityFull => 'मात्रा';

  @override
  String get editItemPrice => 'अनुमानित मूल्य';

  @override
  String get addToPantry => 'पेंट्री में जोड़ें';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" को अपनी पेंट्री में जोड़ें?';
  }

  @override
  String get yes => 'हाँ';

  @override
  String get productName => 'उत्पाद का नाम';

  @override
  String get idealQty => 'आदर्श मात्रा';

  @override
  String get currentQty => 'वर्तमान मात्रा';

  @override
  String get trackStock => 'स्टॉक ट्रैक करें';

  @override
  String get trackStockActive => 'खरीदारी सुझावों में दिखाई देता है';

  @override
  String get trackStockInactive => 'खरीदारी सुझाव उत्पन्न नहीं करता';

  @override
  String get createListDialog => 'सूची बनाएँ';

  @override
  String get renameListDialog => 'सूची का नाम बदलें';

  @override
  String get listHistory => 'सूची इतिहास';

  @override
  String get myLists => 'मेरी सूचियाँ';

  @override
  String get viewActive => 'सक्रिय देखें';

  @override
  String get viewHistory => 'इतिहास देखें';

  @override
  String get noArchivedLists => 'कोई संग्रहित सूची नहीं';

  @override
  String get noActiveLists => 'कोई सक्रिय सूची नहीं';

  @override
  String completedOn(String date) {
    return '$date को पूर्ण हुई';
  }

  @override
  String get sharedLabel => 'साझा की गई';

  @override
  String get restore => 'पुनर्स्थापित करें';

  @override
  String get removeSharedTooltip => 'हटाएँ';

  @override
  String get deleteListTitle => 'सूची हटाएँ';

  @override
  String deleteListContent(String name) {
    return 'क्या आप वाकई \"$name\" को हटाना चाहते हैं? सभी आइटम हटा दिए जाएँगे।';
  }

  @override
  String get removeSharedListTitle => 'साझा सूची हटाएँ';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" को अपनी सूचियों से हटाएँ? मूल सूची प्रभावित नहीं होगी।';
  }

  @override
  String get createNewList => 'नई सूची बनाएँ';

  @override
  String get aiAssistant => 'AI सहायक';

  @override
  String get aiAssistantDescription =>
      'हमारे AI सहायक से स्मार्ट सुझाव, रेसिपी और व्यक्तिगत टिप्स प्राप्त करें।';

  @override
  String get generalAssistant => 'सामान्य सहायक';

  @override
  String get clearHistory => 'इतिहास साफ़ करें';

  @override
  String get clearHistoryConfirm => 'इस सत्र के सभी संदेश साफ़ करें?';

  @override
  String get chatHint => 'अपना संदेश लिखें...';

  @override
  String chatError(String error) {
    return 'चैट लोड करने में त्रुटि: $error';
  }

  @override
  String get listHelp => 'मैं आपकी सूची में कैसे मदद कर सकता हूँ?';

  @override
  String get generalHelp => 'आज आपकी खरीदारी में मैं कैसे मदद कर सकता हूँ?';

  @override
  String get chatSubtitle => 'आइटम सुझाव, रेसिपी या बचत टिप्स के लिए पूछें।';

  @override
  String get aiError =>
      'क्षमा करें, आपके अनुरोध को संसाधित करने में त्रुटि हुई। अपना कनेक्शन जाँचें या बाद में पुनः प्रयास करें।';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt =>
      'प्रीमियम सुविधाओं को अनलॉक\nकरने के लिए लॉग इन करें';

  @override
  String get signInGoogle => 'Google से साइन इन करें';

  @override
  String get signInApple => 'Apple से साइन इन करें';

  @override
  String get continueAsGuest => 'अतिथि के रूप में जारी रखें';

  @override
  String loginError(String error) {
    return 'लॉगिन त्रुटि: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus प्रीमियम';

  @override
  String get premiumUpgrade => 'अनलॉक करने के लिए अपग्रेड करें';

  @override
  String get itemRemoved => 'आइटम हटा दिया गया';

  @override
  String get undo => 'पूर्ववत करें';

  @override
  String get emptyListTitle => 'आपकी सूची खाली है';

  @override
  String get emptyListSubtitle => 'शुरू करने के लिए आइटम जोड़ें';

  @override
  String get noListFoundTitle => 'कोई सूची नहीं मिली';

  @override
  String get noListFoundSubtitle => 'शुरू करने के लिए अपनी पहली सूची बनाएँ';

  @override
  String get createFirstList => 'पहली सूची बनाएँ';

  @override
  String get listBudgetTitle => 'सूची बजट';

  @override
  String get budgetAmountLabel => 'बजट राशि';

  @override
  String get removeBudget => 'हटाएँ';

  @override
  String get prefUnlimitedLists => 'असीमित सूचियाँ';

  @override
  String get prefSharing => 'सूचियाँ साझा करें';

  @override
  String get prefFullHistory => 'पूर्ण इतिहास';

  @override
  String get prefExportData => 'डेटा निर्यात करें';

  @override
  String get prefCustomThemes => 'कस्टम थीम';

  @override
  String get prefMonthlyBudget => 'वैश्विक मासिक बजट';

  @override
  String get prefAIAssistant => 'व्यक्तिगत AI सहायक';

  @override
  String get prefUnlimitedPantry => 'असीमित पेंट्री';

  @override
  String get prefInteractiveArtifacts => 'इंटरैक्टिव AI आर्टिफैक्ट';

  @override
  String get themeGreen => 'हरा';

  @override
  String get themeBlue => 'नीला';

  @override
  String get themePurple => 'बैंगनी';

  @override
  String get themeRed => 'लाल';

  @override
  String get themeOrange => 'नारंगी';

  @override
  String get themePink => 'गुलाबी';

  @override
  String get themeIndigo => 'इंडिगो';

  @override
  String get themeAmber => 'एम्बर';

  @override
  String get themeTeal => 'टील';

  @override
  String get themeBrown => 'भूरा';

  @override
  String get catFruits => 'फल';

  @override
  String get catCleaning => 'सफाई';

  @override
  String get catBeverages => 'पेय पदार्थ';

  @override
  String get catBakery => 'बेकरी';

  @override
  String get catOthers => 'अन्य';

  @override
  String get unitPack => 'पैक';

  @override
  String get shareSubject => 'खरीदारी सूची';

  @override
  String get monthlyBudgetTitle => 'मासिक बजट';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'सूची हटाएँ';

  @override
  String get pantryItemRemoved => 'आइटम हटा दिया गया';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit आइटम खरीदे जाने चाहिए',
      one: '$deficit आइटम खरीदा जाना चाहिए',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'कुल कार्ट';

  @override
  String get restockLabel => 'पुनः भरें';

  @override
  String get advancedFeatures => 'उन्नत सुविधाएँ';

  @override
  String get selectAll => 'सभी चुनें';

  @override
  String get deselectAll => 'सभी अचयनित करें';

  @override
  String get monthlyBudgetAppBar => 'मासिक बजट';

  @override
  String get budgetEditTitle => 'मासिक बजट';

  @override
  String get budgetDashboardTitle => 'डैशबोर्ड';

  @override
  String get selectListForDashboard => 'डैशबोर्ड देखने के लिए एक सूची चुनें।';

  @override
  String get spendingAnalysis => 'खर्च विश्लेषण';

  @override
  String get noItemsToAnalyze =>
      'विश्लेषण करने के लिए सूची में कोई आइटम नहीं है।';

  @override
  String get markItemsToSeeAnalysis =>
      'विश्लेषण देखने के लिए आइटम को खरीदा गया चिह्नित करें।';

  @override
  String get totalSpending => 'कुल खर्च';

  @override
  String get spendingByCategory => 'श्रेणी के अनुसार खर्च';

  @override
  String get achievements => 'उपलब्धियाँ';

  @override
  String get exportPdfExcel => 'PDF/Excel निर्यात करें';

  @override
  String get exportPdf => 'PDF के रूप में निर्यात करें';

  @override
  String get exportExcel => 'Excel के रूप में निर्यात करें';

  @override
  String get organizingAi => 'AI के साथ व्यवस्थित किया जा रहा है...';

  @override
  String get yesLabel => 'हाँ';

  @override
  String get noLabel => 'नहीं';

  @override
  String get shareListText => 'मेरी खरीदारी सूची';

  @override
  String get emptyListAddItems => 'आपकी सूची खाली है! पहले आइटम जोड़ें। ℹ️';

  @override
  String get listOrganizedMagic =>
      'सूची जादुई रूप से श्रेणियों में व्यवस्थित हुई! ✨';

  @override
  String get shoppingMode => 'खरीदारी मोड';

  @override
  String get smartOrganization => 'स्मार्ट व्यवस्था';

  @override
  String get savings => 'बचत';

  @override
  String get shoppingModeHeader => 'खरीदारी मोड';

  @override
  String get shareAsText => 'आइटम को फ़ॉर्मेटेड टेक्स्ट के रूप में भेजें';

  @override
  String get shareRealtime => 'अन्य लोगों के साथ रीयल-टाइम सिंक';

  @override
  String get quickRecipe => 'त्वरित रेसिपी';

  @override
  String get quickRecipePrompt => 'मेरी सूची के आइटम से रेसिपी सुझाएँ।';

  @override
  String get economyTips => 'बचत टिप्स';

  @override
  String get economyTipsPrompt => 'मैं इस खरीदारी पर पैसे कैसे बचा सकता हूँ?';

  @override
  String get organizeAisles => 'गलियारों के अनुसार व्यवस्थित करें';

  @override
  String get organizeAislesPrompt =>
      'बाज़ार के गलियारों के अनुसार व्यवस्थित करें।';

  @override
  String get recipeSuggestion => 'रेसिपी सुझाव';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining क्रेडिट शेष';
  }

  @override
  String get addAllToList => 'सभी को सूची में जोड़ें';

  @override
  String get organizeByAisles => 'गलियारों के अनुसार व्यवस्थित करें';

  @override
  String get voiceTranscriptionTooltip => 'वॉइस टाइपिंग (मुफ़्त)';

  @override
  String get aiVoiceCommandTooltip => 'AI वॉइस कमांड (प्रीमियम)';

  @override
  String get voiceCommandTitle => 'AI वॉइस कमांड';

  @override
  String get voiceCommandContent =>
      'अपनी सूची प्रबंधित करने के लिए स्वाभाविक रूप से बोलें!\n\nउदाहरण:\n• \'ब्रेड, पनीर और हैम जोड़ें\'\n• \'लॉन्ड्री डिटर्जेंट हटाएँ\'\n• \'थीम को नीला करें\'\n\nयह Lista Plus प्रीमियम की एक विशेष सुविधा है।';

  @override
  String get voiceCommandPlanBtn => 'योजनाएँ देखें';

  @override
  String get itemsAddedSuccess => 'आइटम सफलतापूर्वक सूची में जोड़े गए!';

  @override
  String get viewList => 'सूची देखें';

  @override
  String get feedbackTitle => 'प्रतिक्रिया भेजें';

  @override
  String get feedbackPrompt => 'आप क्या साझा करना चाहेंगे?';

  @override
  String get feedbackTypeBug => 'बग रिपोर्ट करें';

  @override
  String get feedbackTypeBugHint => 'कुछ काम नहीं कर रहा';

  @override
  String get feedbackTypeSuggestion => 'सुझाव';

  @override
  String get feedbackTypeSuggestionHint => 'ऐप को बेहतर बनाने का विचार';

  @override
  String get feedbackTypeTranslation => 'अनुवाद संबंधी समस्या';

  @override
  String get feedbackTypeTranslationHint => 'गलत या अटपटा अनुवाद';

  @override
  String get feedbackTypeFeature => 'फ़ीचर अनुरोध';

  @override
  String get feedbackTypeFeatureHint => 'वह फ़ीचर जो आप देखना चाहेंगे';

  @override
  String get feedbackTypeOther => 'अन्य';

  @override
  String get feedbackTypeOtherHint => 'अन्य प्रकार की प्रतिक्रिया';

  @override
  String get feedbackHint => 'अपनी प्रतिक्रिया विस्तार से बताएं...';

  @override
  String get feedbackSend => 'प्रतिक्रिया भेजें';

  @override
  String get feedbackSending => 'भेज रहा है...';

  @override
  String get feedbackThankYou => 'धन्यवाद!';

  @override
  String get feedbackThankYouMessage =>
      'आपकी प्रतिक्रिया प्राप्त हो गई है और यह हमें सभी के लिए Lista Plus को बेहतर बनाने में मदद करती है।';

  @override
  String get feedbackBack => 'वापस';

  @override
  String feedbackError(String error) {
    return 'भेजने में त्रुटि: $error';
  }

  @override
  String get feedbackRetry => 'पुनः प्रयास करें';

  @override
  String get feedbackSettingsTitle => 'प्रतिक्रिया भेजें';

  @override
  String get feedbackSettingsSubtitle =>
      'बग रिपोर्ट करें, सुधार सुझाएँ या अनुवाद ठीक करें';

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
