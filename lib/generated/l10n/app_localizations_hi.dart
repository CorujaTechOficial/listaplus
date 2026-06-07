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
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'व्यंजनों';

  @override
  String get navLists => 'सूचियाँ';

  @override
  String get navMealPlanner => 'मेनू';

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
  String get next => 'अगला';

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
  String get profile => 'प्रोफ़ाइल';

  @override
  String get exitShoppingMode => 'शॉपिंग मोड से बाहर निकलें';

  @override
  String get exit => 'बाहर निकलना';

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
  String get languagePortuguese => 'पोर्टुगुएस (ब्राजील)';

  @override
  String get languageEnglish => 'अंग्रेज़ी';

  @override
  String get languageSystem => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get chooseLanguage => 'भाषा चुनें';

  @override
  String get searchLanguage => 'भाषा खोजें...';

  @override
  String get currency => 'मुद्रा';

  @override
  String get chooseCurrency => 'मुद्रा चुनें';

  @override
  String get searchCurrency => 'मुद्रा खोजें...';

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
  String get dynamicColors => 'गतिशील रंग';

  @override
  String get dynamicColorsSubtitle =>
      'अपने वॉलपेपर के आधार पर रंगों का उपयोग करें';

  @override
  String get dynamicColorsEnabledWarning =>
      'थीम रंग को प्रभावी बनाने के लिए गतिशील रंगों को अक्षम करें';

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
  String get newChat => 'नई चैट';

  @override
  String get noHistory => 'कोई चैट इतिहास नहीं';

  @override
  String get deleteSession => 'चैट हटाएँ';

  @override
  String get deleteSessionConfirm =>
      'क्या आप वाकई इस चैट को हटाना चाहते हैं? संदेश स्थायी रूप से खो जायेंगे.';

  @override
  String get clearHistory => 'इतिहास साफ़ करें';

  @override
  String get clearHistoryConfirm => 'इस सत्र के सभी संदेश साफ़ करें?';

  @override
  String get chatHint => 'अपना संदेश लिखें...';

  @override
  String get chatHintBlocked => 'चैट करने के लिए AI अनलॉक करें';

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
  String get aiLimitAlmostReached => 'AI संदेश लगभग ख़त्म हो गए हैं';

  @override
  String get unlockAi => 'असीमित AI अनलॉक करें';

  @override
  String get aiTeaserFallback =>
      'पूर्ण प्रतिक्रिया अनलॉक करने और अपनी खरीदारी के लिए असीमित एआई युक्तियाँ प्राप्त करने के लिए प्रीमियम की सदस्यता लें...';

  @override
  String get kipiListTitle => 'KipiList';

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
  String get onboardingWelcomeTitle => 'KipiList में आपका स्वागत है';

  @override
  String get onboardingWelcomeDesc =>
      'अपनी खरीदारी को व्यवस्थित करने और पैसे बचाने का सबसे स्मार्ट तरीका।';

  @override
  String get onboardingSetupTitle => 'अपने अनुभव को निजीकृत करें';

  @override
  String get onboardingSetupDesc =>
      'चुनें कि आप KipiList को कैसा दिखाना चाहते हैं और आपके लिए कैसे काम करना चाहते हैं।';

  @override
  String get onboardingLoginTitle => 'सब कुछ क्लाउड पर सहेजें';

  @override
  String get onboardingLoginDesc =>
      'आपका डेटा आपके सभी डिवाइसों पर समन्वयित हो गया है';

  @override
  String get onboardingShareTitle =>
      'जिन्हें आप प्यार करते हैं उनके साथ साझा करें';

  @override
  String get onboardingShareDesc =>
      'वास्तविक समय में परिवार और दोस्तों के साथ सूचियों को सिंक करें';

  @override
  String get onboardingPremiumTitle => 'सभी सुविधाएं अनलॉक करें';

  @override
  String get onboardingPremiumSubtitle =>
      'अपनी खरीदारी सूची से अधिकतम लाभ उठाएँ';

  @override
  String get onboardingAnnualBadge => 'सबसे अच्छा मूल्य';

  @override
  String get onboardingMonthlyLabel => 'महीने के';

  @override
  String get onboardingAnnualLabel => 'वार्षिक';

  @override
  String get onboardingViewAllPlans => 'सभी योजनाएं देखें';

  @override
  String get onboardingSubscribeCta => 'सदस्यता लें';

  @override
  String get onboardingCancelAnytime =>
      'किसी भी समय रद्द करें. कोई प्रतिबद्धता नहीं.';

  @override
  String get onboardingContinueAsGuest => 'अतिथि के रूप में जारी रखें';

  @override
  String get onboardingRestore => 'पुनर्स्थापित करना';

  @override
  String get onboardingRestoreDesc =>
      'क्या आपके पास पहले से ही सदस्यता है? इसे पुनर्स्थापित करने के लिए यहां टैप करें.';

  @override
  String get onboardingExit => 'बाहर निकलना';

  @override
  String get onboardingPersonalizationTitle => 'आइए आपको जानते हैं';

  @override
  String get onboardingPersonalizationDesc =>
      'हम इसका उपयोग आपके सुझावों को वैयक्तिकृत करने और खरीदारी को स्मार्ट बनाने के लिए करेंगे।';

  @override
  String get onboardingPersonalizationFoodLabel => 'आपका पसंदीदा भोजन क्या है?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'जैसे पिज़्ज़ा, सुशी, लसग्ना...';

  @override
  String get onboardingPersonalizationCta => 'जारी रखना';

  @override
  String get onboardingPersonalizationSkip => 'अभी के लिए छोड़ दे';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'जारी रखने के लिए हमें अपना पसंदीदा भोजन बताएं';

  @override
  String get settingsDefaultScreen => 'डिफ़ॉल्ट होम स्क्रीन';

  @override
  String get settingsDefaultScreenSubtitle =>
      'खरीदारी सूची या एआई चैट में से चुनें';

  @override
  String get settingsScreenList => 'खरीदारी की सूची';

  @override
  String get settingsScreenChat => 'एआई चैट';

  @override
  String loginError(String error) {
    return 'लॉगिन त्रुटि: $error';
  }

  @override
  String get paywallTitle => 'KipiList प्रीमियम';

  @override
  String get paywallLoadingError =>
      'ऑफ़र लोड करने में त्रुटि. पुनः प्रयास करें।';

  @override
  String get paywallPurchaseError =>
      'खरीदारी पूरी नहीं हो सकी. पुनः प्रयास करें।';

  @override
  String get paywallRestoreError =>
      'पुनर्स्थापित करने के लिए कोई सक्रिय सदस्यता नहीं मिली.';

  @override
  String paywallTrialDays(Object days) {
    return '$days दिन मुफ़्त';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सप्ताह मुफ़्त',
      one: '$count सप्ताह मुफ़्त',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count महीना मुफ़्त',
      one: '$count महीना मुफ़्त',
    );
    return '$_temp0';
  }

  @override
  String get paywallFeaturesTitle => 'आपकी ज़रूरत की हर चीज़:';

  @override
  String get paywallFeatureUnlimitedLists => 'असीमित सूचियाँ';

  @override
  String get paywallFeatureSmartAI => 'स्मार्ट एआई';

  @override
  String get paywallFeatureExpenseControl => 'व्यय नियंत्रण';

  @override
  String get paywallFeatureSharing => 'शेयरिंग';

  @override
  String get paywallBeforeAfterTitle => 'एआई पहले और बाद में:';

  @override
  String get paywallLabelCommon => 'सामान्य';

  @override
  String get paywallLabelPro => 'किपिलिस्ट प्रो';

  @override
  String get paywallBeforeItem1 => 'चावल';

  @override
  String get paywallBeforeItem2 => 'साबुन';

  @override
  String get paywallBeforeItem3 => 'मांस';

  @override
  String get paywallBeforeItem4 => 'रोटी';

  @override
  String get paywallAfterItem1 => 'अनाज';

  @override
  String get paywallAfterItem2 => 'सफाई';

  @override
  String get paywallAfterItem3 => 'मांस';

  @override
  String get paywallAfterItem4 => 'बेकरी';

  @override
  String get paywallTestimonialsTitle => 'हमारे उपयोगकर्ता क्या कहते हैं:';

  @override
  String get paywallTestimonial1Name => 'ऐन एस.';

  @override
  String get paywallTestimonial1Text =>
      'AI मेरी खरीदारी को कुछ ही सेकंड में व्यवस्थित कर देता है। मैं प्रति बाज़ार यात्रा में 20 मिनट बचाता हूँ।';

  @override
  String get paywallTestimonial2Name => 'चार्ल्स एम.';

  @override
  String get paywallTestimonial2Text =>
      'मैं फिर कभी कोई सूची आइटम नहीं भूला। एआई चैट सनसनीखेज है!';

  @override
  String get paywallSocialProof => '+2,400 परिवार इसका उपयोग करते हैं';

  @override
  String get paywallCtaUnlock => 'प्रो अनलॉक करें';

  @override
  String get paywallBestValue => 'सबसे अच्छा मूल्य';

  @override
  String get paywallMostPopular => 'सबसे लोकप्रिय';

  @override
  String get paywallSafeCheckout => 'भुगतान सुरक्षित';

  @override
  String get paywallSelectPlan => 'अपनी योजना चुनें:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% बचाएं';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'केवल $price/माह';
  }

  @override
  String get paywallPackageAnnual => 'वार्षिक योजना';

  @override
  String get paywallPackageMonthly => 'मासिक योजना';

  @override
  String get paywallPackageLifetime => 'आजीवन प्रवेश';

  @override
  String get paywallCancelAnytime =>
      'किसी भी समय रद्द करें. कोई प्रतिबद्धता नहीं.';

  @override
  String get paywallPolicy => 'गोपनीयता नीति';

  @override
  String get paywallTerms => 'उपयोग की शर्तें';

  @override
  String get paywallRestore => 'पुनर्स्थापित करना';

  @override
  String get paywallHeroHeadline => 'किपी एआई हमेशा आपके साथ है';

  @override
  String get paywallHeroSubtitle =>
      'आइटम जोड़ें, सूचियाँ व्यवस्थित करें और अपनी जेब में AI के साथ समय बचाएं';

  @override
  String get paywallBenefit1Desc =>
      '24/7 आइटम जोड़ता है, व्यवस्थित करता है और सुझाव देता है';

  @override
  String get paywallBenefit2Desc => 'कोई 3-सूची सीमा नहीं';

  @override
  String get paywallBenefit3Desc => 'व्यय ट्रैकिंग और पारिवारिक सूचियाँ';

  @override
  String get paywallPackageMonthlyDesc => 'पूर्ण लचीलापन';

  @override
  String paywallCtaTrialDays(int days) {
    return 'निःशुल्क प्रारंभ करें - $days दिन';
  }

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
      'अपनी सूची प्रबंधित करने के लिए स्वाभाविक रूप से बोलें!\n\nउदाहरण:\n• \'ब्रेड, पनीर और हैम जोड़ें\'\n• \'लॉन्ड्री डिटर्जेंट हटाएँ\'\n• \'थीम को नीला करें\'\n\nयह KipiList प्रीमियम की एक विशेष सुविधा है।';

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
      'आपकी प्रतिक्रिया प्राप्त हो गई है और यह सभी के लिए KipiList को बेहतर बनाने में मदद करती है।';

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
  String get aiEnergy => 'एआई एनर्जी';

  @override
  String get searchInConversation => 'बातचीत में खोजें...';

  @override
  String get noMessagesFound => 'कोई संदेश नहीं मिला';

  @override
  String get suggestedQuestions => 'सुझाए गए प्रश्न:';

  @override
  String get shoppingAssistant => 'खरीदारी सहायक';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total में से $purchased खरीदा गया';
  }

  @override
  String get estimatedCost => 'अनुमानित';

  @override
  String get viewItems => 'आइटम देखें';

  @override
  String get noItemsInList => 'सूची में कोई आइटम नहीं';

  @override
  String get longHistoryWarning =>
      'लंबा इतिहास: सहायक बेहतर प्रदर्शन के लिए नवीनतम संदेशों पर ध्यान केंद्रित करता है।';

  @override
  String get listening => 'सुनना...';

  @override
  String get addDirectToList => 'सीधे सूची में जोड़ें';

  @override
  String get unlockFullResponse => 'पूर्ण प्रतिक्रिया अनलॉक करें';

  @override
  String get switchList => 'सूची स्विच करें';

  @override
  String get marketMode => 'बाज़ार मोड';

  @override
  String get backToChat => 'चैट पर वापस जाएँ';

  @override
  String get finishShopping => 'खरीदारी समाप्त करें';

  @override
  String get welcomeAiAssistant => 'एआई असिस्टेंट में आपका स्वागत है';

  @override
  String get createListToStartAi =>
      'स्मार्ट चैट का उपयोग शुरू करने के लिए खरीदारी सूची बनाएं।';

  @override
  String get howCanIHelp => 'मैं आपकी कैसे मदद कर सकता हूँ?';

  @override
  String get chatSubtitleShort =>
      'कीमतों, व्यंजनों, संगठन के बारे में पूछें...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total खरीदा गया';
  }

  @override
  String get quickReplies => 'त्वरित उत्तर:';

  @override
  String get voiceProFeature =>
      'उन्नत वॉयस कमांड प्रो हैं। बुनियादी श्रुतलेखन सक्षम किया जा रहा है...';

  @override
  String get viewPro => 'प्रो देखें';

  @override
  String get errorLoadingChat => 'उफ़! चैट लोड करते समय कुछ गड़बड़ी हुई.';

  @override
  String get errorLoadingChatSubtitle =>
      'अपना कनेक्शन जाँचें या बाद में पुनः प्रयास करें।';

  @override
  String get errorOscillation =>
      'यह नेटवर्क दोलन या अस्थायी अनुपलब्धता के कारण हो सकता है। कृपया पुन: प्रयास करें।';

  @override
  String get activeListening => 'स्फूर्ति से ध्यान देना';

  @override
  String get whatToDoWithItem => 'आप इस वस्तु के साथ क्या करना चाहेंगे?';

  @override
  String get viewDetails => 'विवरण देखें';

  @override
  String get openMenu => 'मेनू खोलें';

  @override
  String get viewRecipe => 'रेसिपी देखें';

  @override
  String get recipeCreated => 'रेसिपी बनाई गई!';

  @override
  String get editRecipe => 'संपादित करें';

  @override
  String get deleteRecipe => 'हटाएँ';

  @override
  String get deleteRecipeConfirm => 'यह रेसिपी हटाएँ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'क्या आप वाकई \"$recipeName\" को हटाना चाहते हैं? यह क्रिया पूर्ववत नहीं की जा सकती।';
  }

  @override
  String get ingredients => 'सामग्री';

  @override
  String get instructions => 'निर्देश';

  @override
  String get prepTime => 'तैयारी का समय';

  @override
  String get recipeSaved => 'रेसिपी सहेजी गई!';

  @override
  String get noRecipesSaved => 'कोई रेसिपी सहेजी नहीं गई';

  @override
  String get noRecipesSavedHint =>
      'नीचे दिए गए बटन पर टैप करके अपनी पहली कस्टम रेसिपी बनाएँ।';

  @override
  String get myRecipes => 'मेरी रेसिपी';

  @override
  String get newRecipe => 'नई रेसिपी';

  @override
  String get loadingRecipes => 'आपकी रेसिपी लोड हो रही हैं...';

  @override
  String get errorLoadingRecipes => 'रेसिपी लोड करने में त्रुटि';

  @override
  String get addIngredient => 'सामग्री जोड़ें';

  @override
  String get saveRecipe => 'सहेजें';

  @override
  String get recipeName => 'रेसिपी का नाम';

  @override
  String get shortDescription => 'संक्षिप्त विवरण';

  @override
  String get prepTimeMinutes => 'तैयारी का समय (मिनट)';

  @override
  String get instructionsHint => 'प्रति पंक्ति एक चरण लिखें...';

  @override
  String get addPhoto => 'फोटो जोड़ें';

  @override
  String get imageUrlPlaceholder => 'या छवि URL पेस्ट करें';

  @override
  String get tags => 'टैग';

  @override
  String get recipeTags => 'रेसिपी टैग';

  @override
  String get suggestedTags => 'सुझाए गए';

  @override
  String get searchRecipes => 'रेसिपी खोजें...';

  @override
  String get filterByTag => 'टैग द्वारा फ़िल्टर करें';

  @override
  String get allTags => 'सभी';

  @override
  String get recipeDeleted => 'रेसिपी हटा दी गई';

  @override
  String get saveChanges => 'परिवर्तन सहेजें';

  @override
  String get editRecipeTitle => 'रेसिपी संपादित करें';

  @override
  String get newRecipeTitle => 'नई रेसिपी';

  @override
  String get requiredField => 'आवश्यक';

  @override
  String get chooseImageSource => 'छवि स्रोत चुनें';

  @override
  String get gallery => 'गैलरी';

  @override
  String get enterUrl => 'URL दर्ज करें';

  @override
  String get recipeImage => 'रेसिपी छवि';

  @override
  String get removeImage => 'छवि हटाएँ';

  @override
  String get mealPlannerTitle => 'मील प्लानर';

  @override
  String get mealPlannerViewMonthly => 'मासिक दृश्य';

  @override
  String get mealPlannerViewWeekly => 'साप्ताहिक दृश्य';

  @override
  String get mealPlannerNoMeals => 'कोई भोजन नियोजित नहीं';

  @override
  String get mealPlannerNoMealsHint =>
      'भोजन जोड़ने के लिए किसी दिन पर टैप करें';

  @override
  String get mealPlannerLoading => 'भोजन योजना लोड हो रहा है...';

  @override
  String get mealPlannerError => 'भोजन योजना लोड करने में त्रुटि';

  @override
  String get mealPlannerAddMeal => 'भोजन जोड़ें';

  @override
  String get mealPlannerEditMeal => 'भोजन संपादित करें';

  @override
  String get mealPlannerDeleteMeal => 'भोजन हटाएँ';

  @override
  String get mealPlannerMealDeleted => 'भोजन हटा दिया गया';

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
  String get mealPlannerServingsLabel => 'कितने लोगों के लिए';

  @override
  String get mealPlannerNoteLabel => 'नोट (वैकल्पिक)';

  @override
  String get mealPlannerSelectRecipe => 'रेसिपी चुनें';

  @override
  String get mealPlannerSearchRecipes => 'रेसिपी खोजें...';

  @override
  String get mealPlannerNoRecipesFound => 'कोई रेसिपी नहीं मिली';

  @override
  String get mealPlannerNoRecipesHint => 'पहले रेसिपी टैब में रेसिपी बनाएँ';

  @override
  String get mealPlannerSave => 'योजना में जोड़ें';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total में से $count भोजन नियोजित';
  }

  @override
  String get mealPlannerGenerateList => 'खरीदारी सूची बनाएँ';

  @override
  String get mealPlannerGenerateListConfirm =>
      'इस सप्ताह के नियोजित भोजन की सभी सामग्री अपनी खरीदारी सूची में जोड़ें?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'आपकी सूची में $count सामग्री जोड़ी गई!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'जोड़ने के लिए कोई सामग्री नहीं है। पहले रेसिपी के साथ कुछ भोजन नियोजित करें।';

  @override
  String get mealPlannerGenerateListNoList => 'पहले खरीदारी सूची बनाएँ।';

  @override
  String get mealPlannerMealTypeBreakfast => 'नाश्ता';

  @override
  String get mealPlannerMealTypeLunch => 'दोपहर का खाना';

  @override
  String get mealPlannerMealTypeDinner => 'रात का खाना';

  @override
  String get mealPlannerMealTypeSnack => 'स्नैक';

  @override
  String get mealPlannerDateLabel => 'तिथि';

  @override
  String get mealPlannerWeekEmpty => 'इस सप्ताह के लिए कुछ भी नियोजित नहीं है';

  @override
  String get mealPlannerWeekEmptyHint =>
      'अपने भोजन की योजना बनाना शुरू करने के लिए किसी भी दिन टैप करें!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes मिनट';
  }

  @override
  String get inviteToList => 'सूची के लिए आमंत्रित करें';

  @override
  String get shareApp => 'ऐप साझा करें';

  @override
  String get shareAppDescription =>
      'KipiList का उपयोग करने के लिए मित्रों को आमंत्रित करें';

  @override
  String shareReferralText(Object url) {
    return 'मैं अपनी खरीदारी व्यवस्थित करने के लिए KipiList का उपयोग कर रहा हूँ! मेरे लिंक के माध्यम से डाउनलोड करें और हम दोनों को 7 दिनों का प्रीमियम निःशुल्क मिलेगा: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList प्रीमियम के 7 दिन प्राप्त करें!';

  @override
  String get gestureHint =>
      'चयन करने के लिए दबाए रखें • हटाने के लिए स्वाइप करें';

  @override
  String get catalogTitle => 'सूची';

  @override
  String get catalogMyFrequents => 'मेरे बारंबार';

  @override
  String get catalogSearchGlobal => 'कोई भी उत्पाद खोजें...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category में खोजें...';
  }

  @override
  String get catalogSortPopular => 'सबसे लोकप्रिय';

  @override
  String get catalogSortAZ => 'A-Z';

  @override
  String get catalogFilterNational => 'नागरिकों';

  @override
  String get catalogRareSection => 'आपके देश में कम आम है';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 जोड़ें →';
  }

  @override
  String get catalogProductNotFound => 'उत्पाद नहीं मिला, नाम लिखें';

  @override
  String get catalogBrowse => 'कैटलॉग ब्राउज़ करें';
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
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'व्यंजनों';

  @override
  String get navLists => 'सूचियाँ';

  @override
  String get navMealPlanner => 'मेनू';

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
  String get next => 'अगला';

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
  String get profile => 'प्रोफ़ाइल';

  @override
  String get exitShoppingMode => 'शॉपिंग मोड से बाहर निकलें';

  @override
  String get exit => 'बाहर निकलना';

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
  String get languagePortuguese => 'पोर्टुगुएस (ब्राजील)';

  @override
  String get languageEnglish => 'अंग्रेज़ी';

  @override
  String get languageSystem => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get chooseLanguage => 'भाषा चुनें';

  @override
  String get searchLanguage => 'भाषा खोजें...';

  @override
  String get currency => 'मुद्रा';

  @override
  String get chooseCurrency => 'मुद्रा चुनें';

  @override
  String get searchCurrency => 'मुद्रा खोजें...';

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
  String get dynamicColors => 'गतिशील रंग';

  @override
  String get dynamicColorsSubtitle =>
      'अपने वॉलपेपर के आधार पर रंगों का उपयोग करें';

  @override
  String get dynamicColorsEnabledWarning =>
      'थीम रंग को प्रभावी बनाने के लिए गतिशील रंगों को अक्षम करें';

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
  String get newChat => 'नई चैट';

  @override
  String get noHistory => 'कोई चैट इतिहास नहीं';

  @override
  String get deleteSession => 'चैट हटाएँ';

  @override
  String get deleteSessionConfirm =>
      'क्या आप वाकई इस चैट को हटाना चाहते हैं? संदेश स्थायी रूप से खो जायेंगे.';

  @override
  String get clearHistory => 'इतिहास साफ़ करें';

  @override
  String get clearHistoryConfirm => 'इस सत्र के सभी संदेश साफ़ करें?';

  @override
  String get chatHint => 'अपना संदेश लिखें...';

  @override
  String get chatHintBlocked => 'चैट करने के लिए AI अनलॉक करें';

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
  String get aiLimitAlmostReached => 'AI संदेश लगभग ख़त्म हो गए हैं';

  @override
  String get unlockAi => 'असीमित AI अनलॉक करें';

  @override
  String get aiTeaserFallback =>
      'पूर्ण प्रतिक्रिया अनलॉक करने और अपनी खरीदारी के लिए असीमित एआई युक्तियाँ प्राप्त करने के लिए प्रीमियम की सदस्यता लें...';

  @override
  String get kipiListTitle => 'KipiList';

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
  String get onboardingWelcomeTitle => 'KipiList में आपका स्वागत है';

  @override
  String get onboardingWelcomeDesc =>
      'अपनी खरीदारी को व्यवस्थित करने और पैसे बचाने का सबसे स्मार्ट तरीका।';

  @override
  String get onboardingSetupTitle => 'अपने अनुभव को निजीकृत करें';

  @override
  String get onboardingSetupDesc =>
      'चुनें कि आप KipiList को कैसा दिखाना चाहते हैं और आपके लिए कैसे काम करना चाहते हैं।';

  @override
  String get onboardingLoginTitle => 'सब कुछ क्लाउड पर सहेजें';

  @override
  String get onboardingLoginDesc =>
      'आपका डेटा आपके सभी डिवाइसों पर समन्वयित हो गया है';

  @override
  String get onboardingShareTitle =>
      'जिन्हें आप प्यार करते हैं उनके साथ साझा करें';

  @override
  String get onboardingShareDesc =>
      'वास्तविक समय में परिवार और दोस्तों के साथ सूचियों को सिंक करें';

  @override
  String get onboardingPremiumTitle => 'सभी सुविधाएं अनलॉक करें';

  @override
  String get onboardingPremiumSubtitle =>
      'अपनी खरीदारी सूची से अधिकतम लाभ उठाएँ';

  @override
  String get onboardingAnnualBadge => 'सबसे अच्छा मूल्य';

  @override
  String get onboardingMonthlyLabel => 'महीने के';

  @override
  String get onboardingAnnualLabel => 'वार्षिक';

  @override
  String get onboardingViewAllPlans => 'सभी योजनाएं देखें';

  @override
  String get onboardingSubscribeCta => 'सदस्यता लें';

  @override
  String get onboardingCancelAnytime =>
      'किसी भी समय रद्द करें. कोई प्रतिबद्धता नहीं.';

  @override
  String get onboardingContinueAsGuest => 'अतिथि के रूप में जारी रखें';

  @override
  String get onboardingRestore => 'पुनर्स्थापित करना';

  @override
  String get onboardingRestoreDesc =>
      'क्या आपके पास पहले से ही सदस्यता है? इसे पुनर्स्थापित करने के लिए यहां टैप करें.';

  @override
  String get onboardingExit => 'बाहर निकलना';

  @override
  String get onboardingPersonalizationTitle => 'आइए आपको जानते हैं';

  @override
  String get onboardingPersonalizationDesc =>
      'हम इसका उपयोग आपके सुझावों को वैयक्तिकृत करने और खरीदारी को स्मार्ट बनाने के लिए करेंगे।';

  @override
  String get onboardingPersonalizationFoodLabel => 'आपका पसंदीदा भोजन क्या है?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'जैसे पिज़्ज़ा, सुशी, लसग्ना...';

  @override
  String get onboardingPersonalizationCta => 'जारी रखना';

  @override
  String get onboardingPersonalizationSkip => 'अभी के लिए छोड़ दे';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'जारी रखने के लिए हमें अपना पसंदीदा भोजन बताएं';

  @override
  String get settingsDefaultScreen => 'डिफ़ॉल्ट होम स्क्रीन';

  @override
  String get settingsDefaultScreenSubtitle =>
      'खरीदारी सूची या एआई चैट में से चुनें';

  @override
  String get settingsScreenList => 'खरीदारी की सूची';

  @override
  String get settingsScreenChat => 'एआई चैट';

  @override
  String loginError(String error) {
    return 'लॉगिन त्रुटि: $error';
  }

  @override
  String get paywallTitle => 'KipiList प्रीमियम';

  @override
  String get paywallLoadingError =>
      'ऑफ़र लोड करने में त्रुटि. पुनः प्रयास करें।';

  @override
  String get paywallPurchaseError =>
      'खरीदारी पूरी नहीं हो सकी. पुनः प्रयास करें।';

  @override
  String get paywallRestoreError =>
      'पुनर्स्थापित करने के लिए कोई सक्रिय सदस्यता नहीं मिली.';

  @override
  String paywallTrialDays(Object days) {
    return '$days दिन मुफ़्त';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सप्ताह मुफ़्त',
      one: '$count सप्ताह मुफ़्त',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count महीना मुफ़्त',
      one: '$count महीना मुफ़्त',
    );
    return '$_temp0';
  }

  @override
  String get paywallFeaturesTitle => 'आपकी ज़रूरत की हर चीज़:';

  @override
  String get paywallFeatureUnlimitedLists => 'असीमित सूचियाँ';

  @override
  String get paywallFeatureSmartAI => 'स्मार्ट एआई';

  @override
  String get paywallFeatureExpenseControl => 'व्यय नियंत्रण';

  @override
  String get paywallFeatureSharing => 'शेयरिंग';

  @override
  String get paywallBeforeAfterTitle => 'एआई पहले और बाद में:';

  @override
  String get paywallLabelCommon => 'सामान्य';

  @override
  String get paywallLabelPro => 'किपिलिस्ट प्रो';

  @override
  String get paywallBeforeItem1 => 'चावल';

  @override
  String get paywallBeforeItem2 => 'साबुन';

  @override
  String get paywallBeforeItem3 => 'मांस';

  @override
  String get paywallBeforeItem4 => 'रोटी';

  @override
  String get paywallAfterItem1 => 'अनाज';

  @override
  String get paywallAfterItem2 => 'सफाई';

  @override
  String get paywallAfterItem3 => 'मांस';

  @override
  String get paywallAfterItem4 => 'बेकरी';

  @override
  String get paywallTestimonialsTitle => 'हमारे उपयोगकर्ता क्या कहते हैं:';

  @override
  String get paywallTestimonial1Name => 'ऐन एस.';

  @override
  String get paywallTestimonial1Text =>
      'AI मेरी खरीदारी को कुछ ही सेकंड में व्यवस्थित कर देता है। मैं प्रति बाज़ार यात्रा में 20 मिनट बचाता हूँ।';

  @override
  String get paywallTestimonial2Name => 'चार्ल्स एम.';

  @override
  String get paywallTestimonial2Text =>
      'मैं फिर कभी कोई सूची आइटम नहीं भूला। एआई चैट सनसनीखेज है!';

  @override
  String get paywallSocialProof => '+2,400 परिवार इसका उपयोग करते हैं';

  @override
  String get paywallCtaUnlock => 'प्रो अनलॉक करें';

  @override
  String get paywallBestValue => 'सबसे अच्छा मूल्य';

  @override
  String get paywallMostPopular => 'सबसे लोकप्रिय';

  @override
  String get paywallSafeCheckout => 'भुगतान सुरक्षित';

  @override
  String get paywallSelectPlan => 'अपनी योजना चुनें:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% बचाएं';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'केवल $price/माह';
  }

  @override
  String get paywallPackageAnnual => 'वार्षिक योजना';

  @override
  String get paywallPackageMonthly => 'मासिक योजना';

  @override
  String get paywallPackageLifetime => 'आजीवन प्रवेश';

  @override
  String get paywallCancelAnytime =>
      'किसी भी समय रद्द करें. कोई प्रतिबद्धता नहीं.';

  @override
  String get paywallPolicy => 'गोपनीयता नीति';

  @override
  String get paywallTerms => 'उपयोग की शर्तें';

  @override
  String get paywallRestore => 'पुनर्स्थापित करना';

  @override
  String get paywallHeroHeadline => 'किपी एआई हमेशा आपके साथ है';

  @override
  String get paywallHeroSubtitle =>
      'आइटम जोड़ें, सूचियाँ व्यवस्थित करें और अपनी जेब में AI के साथ समय बचाएं';

  @override
  String get paywallBenefit1Desc =>
      '24/7 आइटम जोड़ता है, व्यवस्थित करता है और सुझाव देता है';

  @override
  String get paywallBenefit2Desc => 'कोई 3-सूची सीमा नहीं';

  @override
  String get paywallBenefit3Desc => 'व्यय ट्रैकिंग और पारिवारिक सूचियाँ';

  @override
  String get paywallPackageMonthlyDesc => 'पूर्ण लचीलापन';

  @override
  String paywallCtaTrialDays(int days) {
    return 'निःशुल्क प्रारंभ करें - $days दिन';
  }

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
      'अपनी सूची प्रबंधित करने के लिए स्वाभाविक रूप से बोलें!\n\nउदाहरण:\n• \'ब्रेड, पनीर और हैम जोड़ें\'\n• \'लॉन्ड्री डिटर्जेंट हटाएँ\'\n• \'थीम को नीला करें\'\n\nयह KipiList प्रीमियम की एक विशेष सुविधा है।';

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
      'आपकी प्रतिक्रिया प्राप्त हो गई है और यह हमें सभी के लिए KipiList को बेहतर बनाने में मदद करती है।';

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
  String get aiEnergy => 'एआई एनर्जी';

  @override
  String get searchInConversation => 'बातचीत में खोजें...';

  @override
  String get noMessagesFound => 'कोई संदेश नहीं मिला';

  @override
  String get suggestedQuestions => 'सुझाए गए प्रश्न:';

  @override
  String get shoppingAssistant => 'खरीदारी सहायक';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total में से $purchased खरीदा गया';
  }

  @override
  String get estimatedCost => 'अनुमानित';

  @override
  String get viewItems => 'आइटम देखें';

  @override
  String get noItemsInList => 'सूची में कोई आइटम नहीं';

  @override
  String get longHistoryWarning =>
      'लंबा इतिहास: सहायक बेहतर प्रदर्शन के लिए नवीनतम संदेशों पर ध्यान केंद्रित करता है।';

  @override
  String get listening => 'सुनना...';

  @override
  String get addDirectToList => 'सीधे सूची में जोड़ें';

  @override
  String get unlockFullResponse => 'पूर्ण प्रतिक्रिया अनलॉक करें';

  @override
  String get switchList => 'सूची स्विच करें';

  @override
  String get marketMode => 'बाज़ार मोड';

  @override
  String get backToChat => 'चैट पर वापस जाएँ';

  @override
  String get finishShopping => 'खरीदारी समाप्त करें';

  @override
  String get welcomeAiAssistant => 'एआई असिस्टेंट में आपका स्वागत है';

  @override
  String get createListToStartAi =>
      'स्मार्ट चैट का उपयोग शुरू करने के लिए खरीदारी सूची बनाएं।';

  @override
  String get howCanIHelp => 'मैं आपकी कैसे मदद कर सकता हूँ?';

  @override
  String get chatSubtitleShort =>
      'कीमतों, व्यंजनों, संगठन के बारे में पूछें...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total खरीदा गया';
  }

  @override
  String get quickReplies => 'त्वरित उत्तर:';

  @override
  String get voiceProFeature =>
      'उन्नत वॉयस कमांड प्रो हैं। बुनियादी श्रुतलेखन सक्षम किया जा रहा है...';

  @override
  String get viewPro => 'प्रो देखें';

  @override
  String get errorLoadingChat => 'उफ़! चैट लोड करते समय कुछ गड़बड़ी हुई.';

  @override
  String get errorLoadingChatSubtitle =>
      'अपना कनेक्शन जाँचें या बाद में पुनः प्रयास करें।';

  @override
  String get errorOscillation =>
      'यह नेटवर्क दोलन या अस्थायी अनुपलब्धता के कारण हो सकता है। कृपया पुन: प्रयास करें।';

  @override
  String get activeListening => 'स्फूर्ति से ध्यान देना';

  @override
  String get whatToDoWithItem => 'आप इस वस्तु के साथ क्या करना चाहेंगे?';

  @override
  String get viewDetails => 'विवरण देखें';

  @override
  String get openMenu => 'मेनू खोलें';

  @override
  String get viewRecipe => 'रेसिपी देखें';

  @override
  String get recipeCreated => 'रेसिपी बनाई गई!';

  @override
  String get editRecipe => 'संपादित करें';

  @override
  String get deleteRecipe => 'हटाएँ';

  @override
  String get deleteRecipeConfirm => 'यह रेसिपी हटाएँ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'क्या आप वाकई \"$recipeName\" को हटाना चाहते हैं? यह क्रिया पूर्ववत नहीं की जा सकती।';
  }

  @override
  String get ingredients => 'सामग्री';

  @override
  String get instructions => 'निर्देश';

  @override
  String get prepTime => 'तैयारी का समय';

  @override
  String get recipeSaved => 'रेसिपी सहेजी गई!';

  @override
  String get noRecipesSaved => 'कोई रेसिपी सहेजी नहीं गई';

  @override
  String get noRecipesSavedHint =>
      'नीचे दिए गए बटन पर टैप करके अपनी पहली कस्टम रेसिपी बनाएँ।';

  @override
  String get myRecipes => 'मेरी रेसिपी';

  @override
  String get newRecipe => 'नई रेसिपी';

  @override
  String get loadingRecipes => 'आपकी रेसिपी लोड हो रही हैं...';

  @override
  String get errorLoadingRecipes => 'रेसिपी लोड करने में त्रुटि';

  @override
  String get addIngredient => 'सामग्री जोड़ें';

  @override
  String get saveRecipe => 'सहेजें';

  @override
  String get recipeName => 'रेसिपी का नाम';

  @override
  String get shortDescription => 'संक्षिप्त विवरण';

  @override
  String get prepTimeMinutes => 'तैयारी का समय (मिनिट)';

  @override
  String get instructionsHint => 'प्रति पंक्ति एक चरण लिखें...';

  @override
  String get addPhoto => 'फोटो जोड़ें';

  @override
  String get imageUrlPlaceholder => 'या छवि URL पेस्ट करें';

  @override
  String get tags => 'टैग';

  @override
  String get recipeTags => 'रेसिपी टैग';

  @override
  String get suggestedTags => 'सुझाए गए';

  @override
  String get searchRecipes => 'रेसिपी खोजें...';

  @override
  String get filterByTag => 'टैग द्वारा फ़िल्टर करें';

  @override
  String get allTags => 'सभी';

  @override
  String get recipeDeleted => 'रेसिपी हटा दी गई';

  @override
  String get saveChanges => 'परिवर्तन सहेजें';

  @override
  String get editRecipeTitle => 'रेसिपी संपादित करें';

  @override
  String get newRecipeTitle => 'नई रेसिपी';

  @override
  String get requiredField => 'आवश्यक';

  @override
  String get chooseImageSource => 'छवि स्रोत चुनें';

  @override
  String get gallery => 'गैलरी';

  @override
  String get enterUrl => 'URL दर्ज करें';

  @override
  String get recipeImage => 'रेसिपी छवि';

  @override
  String get removeImage => 'छवि हटाएँ';

  @override
  String get mealPlannerTitle => 'मील प्लानर';

  @override
  String get mealPlannerViewMonthly => 'मासिक दृश्य';

  @override
  String get mealPlannerViewWeekly => 'साप्ताहिक दृश्य';

  @override
  String get mealPlannerNoMeals => 'कोई भोजन नियोजित नहीं';

  @override
  String get mealPlannerNoMealsHint =>
      'भोजन जोड़ने के लिए किसी दिन पर टैप करें';

  @override
  String get mealPlannerLoading => 'भोजन योजना लोड हो रहा है...';

  @override
  String get mealPlannerError => 'भोजन योजना लोड करने में त्रुटि';

  @override
  String get mealPlannerAddMeal => 'भोजन जोड़ें';

  @override
  String get mealPlannerEditMeal => 'भोजन संपादित करें';

  @override
  String get mealPlannerDeleteMeal => 'भोजन हटाएँ';

  @override
  String get mealPlannerMealDeleted => 'भोजन हटा दिया गया';

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
  String get mealPlannerServingsLabel => 'कितने लोगों के लिए';

  @override
  String get mealPlannerNoteLabel => 'नोट (वैकल्पिक)';

  @override
  String get mealPlannerSelectRecipe => 'रेसिपी चुनें';

  @override
  String get mealPlannerSearchRecipes => 'रेसिपी खोजें...';

  @override
  String get mealPlannerNoRecipesFound => 'कोई रेसिपी नहीं मिली';

  @override
  String get mealPlannerNoRecipesHint => 'पहले रेसिपी टैब में रेसिपी बनाएँ';

  @override
  String get mealPlannerSave => 'योजना में जोड़ें';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total में से $count भोजन नियोजित';
  }

  @override
  String get mealPlannerGenerateList => 'खरीदारी सूची बनाएँ';

  @override
  String get mealPlannerGenerateListConfirm =>
      'इस सप्ताह के नियोजित भोजन की सभी सामग्री अपनी खरीदारी सूची में जोड़ें?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'आपकी सूची में $count सामग्री जोड़ी गई!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'जोड़ने के लिए कोई सामग्री नहीं है। पहले रेसिपी के साथ कुछ भोजन नियोजित करें।';

  @override
  String get mealPlannerGenerateListNoList => 'पहले खरीदारी सूची बनाएँ।';

  @override
  String get mealPlannerMealTypeBreakfast => 'नाश्ता';

  @override
  String get mealPlannerMealTypeLunch => 'दोपहर का खाना';

  @override
  String get mealPlannerMealTypeDinner => 'रात का खाना';

  @override
  String get mealPlannerMealTypeSnack => 'स्नैक';

  @override
  String get mealPlannerDateLabel => 'तिथि';

  @override
  String get mealPlannerWeekEmpty => 'इस सप्ताह के लिए कुछ भी नियोजित नहीं है';

  @override
  String get mealPlannerWeekEmptyHint =>
      'अपने भोजन की योजना बनाना शुरू करने के लिए किसी भी दिन टैप करें!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes मिनट';
  }

  @override
  String get inviteToList => 'सूची के लिए आमंत्रित करें';

  @override
  String get shareApp => 'ऐप साझा करें';

  @override
  String get shareAppDescription =>
      'KipiList का उपयोग करने के लिए मित्रों को आमंत्रित करें';

  @override
  String shareReferralText(Object url) {
    return 'मैं अपनी खरीदारी व्यवस्थित करने के लिए KipiList का उपयोग कर रहा हूँ! मेरे लिंक के माध्यम से डाउनलोड करें और हम दोनों को 7 दिनों का प्रीमियम निःशुल्क मिलेगा: $url';
  }

  @override
  String get shareReferralSubject => 'KipiList प्रीमियम के 7 दिन प्राप्त करें!';

  @override
  String get gestureHint =>
      'चयन करने के लिए दबाए रखें • हटाने के लिए स्वाइप करें';

  @override
  String get catalogTitle => 'सूची';

  @override
  String get catalogMyFrequents => 'मेरे बारंबार';

  @override
  String get catalogSearchGlobal => 'कोई भी उत्पाद खोजें...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category में खोजें...';
  }

  @override
  String get catalogSortPopular => 'सबसे लोकप्रिय';

  @override
  String get catalogSortAZ => 'A-Z';

  @override
  String get catalogFilterNational => 'नागरिकों';

  @override
  String get catalogRareSection => 'आपके देश में कम आम है';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 जोड़ें →';
  }

  @override
  String get catalogProductNotFound => 'उत्पाद नहीं मिला, नाम लिखें';

  @override
  String get catalogBrowse => 'कैटलॉग ब्राउज़ करें';
}
