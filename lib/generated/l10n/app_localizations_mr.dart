// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'शॉपिंग लिस्ट';

  @override
  String get lists => 'लिस्ट';

  @override
  String get pantry => 'पॅन्ट्री';

  @override
  String get navChat => 'गप्पा';

  @override
  String get navRecipes => 'पाककृती';

  @override
  String get navLists => 'लिस्ट';

  @override
  String get navMealPlanner => 'मेनू';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get save => 'जतन करा';

  @override
  String get create => 'तयार करा';

  @override
  String get add => 'जोडा';

  @override
  String get remove => 'काढा';

  @override
  String get delete => 'हटवा';

  @override
  String get edit => 'संपादित करा';

  @override
  String get copy => 'कॉपी करा';

  @override
  String get next => 'पुढे';

  @override
  String get retry => 'पुन्हा प्रयत्न करा';

  @override
  String get regenerate => 'पुनर्निर्माण करा';

  @override
  String get copiedToClipboard => 'क्लिपबोर्डवर कॉपी केले';

  @override
  String get confirm => 'पुष्टी करा';

  @override
  String get close => 'बंद करा';

  @override
  String get import => 'आयात करा';

  @override
  String get rename => 'पुनर्नामित करा';

  @override
  String get upgrade => 'अपग्रेड करा';

  @override
  String get clear => 'साफ करा';

  @override
  String error(String message) {
    return 'त्रुटी: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'त्रुटी: $message';
  }

  @override
  String get purchaseError => 'खरेदी प्रक्रियेत त्रुटी. पुन्हा प्रयत्न करा.';

  @override
  String get restoreError =>
      'खरेदी पुनर्संचयित करताना त्रुटी. पुन्हा प्रयत्न करा.';

  @override
  String get loading => 'लोड होत आहे...';

  @override
  String get fieldRequired => 'आवश्यक फील्ड';

  @override
  String get addedFeedback => 'जोडले!';

  @override
  String get profile => 'प्रोफाइल';

  @override
  String get exitShoppingMode => 'शॉपिंग मोडमधून बाहेर पडा';

  @override
  String get exit => 'बाहेर पडा';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count निवडले',
      one: '$count निवडले',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'अंदाजे';

  @override
  String get alreadyPurchased => 'आधीच खरेदी केले';

  @override
  String get clearList => 'लिस्ट साफ करा';

  @override
  String get clearPurchased => 'खरेदी केलेले साफ करा';

  @override
  String get share => 'शेअर करा';

  @override
  String get shareViaCode => 'कोडद्वारे शेअर करा';

  @override
  String get importViaCode => 'कोडद्वारे आयात करा';

  @override
  String get listAssistant => 'लिस्ट सहाय्यक';

  @override
  String get globalAssistant => 'जागतिक सहाय्यक';

  @override
  String get becomePremium => 'प्रीमियम व्हा';

  @override
  String get manageSubscription => 'सबस्क्रिप्शन व्यवस्थापित करा';

  @override
  String get completePurchase => 'खरेदी पूर्ण करा';

  @override
  String get confirmClearList => 'सर्व आयटम काढायचे?';

  @override
  String get shareListTitle => 'लिस्ट शेअर करा';

  @override
  String get shareThisCode => 'हा कोड शेअर करा:';

  @override
  String get validForLimitedTime => 'मर्यादित कालावधीसाठी वैध';

  @override
  String get importListTitle => 'लिस्ट आयात करा';

  @override
  String get enterCodeHint => 'कोड प्रविष्ट करा';

  @override
  String get confirmArchiveTitle => 'खरेदी पूर्ण करा';

  @override
  String get confirmArchiveContent =>
      'ही खरेदी पूर्ण करून लिस्ट आर्काइव्ह करायची?';

  @override
  String get complete => 'पूर्ण करा';

  @override
  String get listArchived => 'लिस्ट यशस्वीरित्या आर्काइव्ह केली!';

  @override
  String listAdded(String listName) {
    return '$listName जोडले!';
  }

  @override
  String get buy => 'खरेदी करा';

  @override
  String get unmark => 'चिन्ह काढा';

  @override
  String confirmDeleteItems(int count) {
    return '$count आयटम काढायचे?';
  }

  @override
  String get confirmDeleteTitle => 'पुष्टी करा';

  @override
  String confirmContent(int count) {
    return '$count आयटम काढायचे?';
  }

  @override
  String get archiveList => 'लिस्ट आर्काइव्ह करा';

  @override
  String get pantryAppBar => 'पॅन्ट्री';

  @override
  String get generateShoppingList => 'शॉपिंग लिस्ट तयार करा';

  @override
  String get pantryEmpty => 'पॅन्ट्री रिकामी आहे';

  @override
  String get pantryEmptySubtitle => 'तुम्हाला घरी ठेवायचे असलेले उत्पादन जोडा';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit आयटम खरेदी करणे आवश्यक आहे';
  }

  @override
  String get noItemsToBuy => 'खरेदी करण्यासाठी कोणतेही आयटम नाहीत';

  @override
  String get newPantryList => 'पॅन्ट्री शॉपिंग';

  @override
  String get newListTitle => 'नवीन शॉपिंग लिस्ट';

  @override
  String itemsWillBeAdded(int count) {
    return '$count आयटम जोडले जातील';
  }

  @override
  String get listNameLabel => 'लिस्टचे नाव';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" लिस्ट $count आयटमसह तयार केली';
  }

  @override
  String get noTracking => 'ट्रॅकिंग नाही';

  @override
  String get markAsPurchased => 'खरेदी केले म्हणून चिन्हांकित करा';

  @override
  String editPantryItem(String name) {
    return '$name संपादित करा';
  }

  @override
  String get idealQuantity => 'आदर्श प्रमाण';

  @override
  String get currentQuantity => 'सध्याचे प्रमाण';

  @override
  String get consumed => 'वापरले';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name पुन्हा साठवले $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'पॅन्ट्रीमधून \"$name\" काढायचे?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name संपादित करा';
  }

  @override
  String get scanProductTitle => 'उत्पादन स्कॅन करा';

  @override
  String get positionBarcodeCenter => 'बारकोड मध्यभागी ठेवा';

  @override
  String get product => 'उत्पादन';

  @override
  String get settingsAppBar => 'सेटिंग्ज';

  @override
  String get language => 'भाषा';

  @override
  String get languagePortuguese => 'पोर्तुगीज (ब्राझील)';

  @override
  String get languageEnglish => 'इंग्रजी';

  @override
  String get languageSystem => 'सिस्टम डीफॉल्ट';

  @override
  String get chooseLanguage => 'भाषा निवडा';

  @override
  String get searchLanguage => 'भाषा शोधा...';

  @override
  String get currency => 'चलन';

  @override
  String get chooseCurrency => 'चलन निवडा';

  @override
  String get searchCurrency => 'चलन शोधा...';

  @override
  String get appearance => 'स्वरूप';

  @override
  String get light => 'लाइट';

  @override
  String get system => 'सिस्टम';

  @override
  String get dark => 'डार्क';

  @override
  String get themeColor => 'थीम रंग';

  @override
  String get dynamicColors => 'डायनॅमिक रंग';

  @override
  String get dynamicColorsSubtitle =>
      'तुमच्या वॉलपेपरवर आधारित रंगांचा वापर करा';

  @override
  String get dynamicColorsEnabledWarning =>
      'थीम रंग प्रभावी होण्यासाठी डायनॅमिक रंग अक्षम करा';

  @override
  String get finance => 'वित्त';

  @override
  String get monthlyBudgetNav => 'मासिक बजेट';

  @override
  String get budgetSubtitle => 'तुमचा मासिक खर्च ट्रॅक करा';

  @override
  String get data => 'डेटा';

  @override
  String get backupNav => 'बॅकअप';

  @override
  String get backupSubtitle => 'तुमचा डेटा एक्सपोर्ट किंवा आयात करा';

  @override
  String get about => 'बद्दल';

  @override
  String get version => 'आवृत्ती';

  @override
  String get privacy => 'गोपनीयता';

  @override
  String get termsOfUse => 'वापराच्या अटी';

  @override
  String get myAchievements => 'माझी उपलब्धी';

  @override
  String get itemsPurchased => 'वस्तू खरेदी केल्या';

  @override
  String get totalSavings => 'एकूण बचत';

  @override
  String get currentStreak => 'वर्तमान स्ट्रीक';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवस',
      one: '$count दिवस',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'अनलॉक केलेले बॅज';

  @override
  String get badgeBeginner => 'नवशिक्या';

  @override
  String get badgeOrganized => 'संघटित';

  @override
  String get badgeSavingMaster => 'सेव्हिंग मास्टर';

  @override
  String get badgeSuperPlanner => 'सुपर प्लॅनर';

  @override
  String get backupTitle => 'बॅकअप';

  @override
  String get backupPremiumDescription =>
      'बॅकअप आणि एक्सपोर्ट हे प्रीमियम वैशिष्ट्य आहे';

  @override
  String get exportData => 'डेटा एक्सपोर्ट करा';

  @override
  String get exportDataSubtitle => 'सर्व लिस्ट JSON म्हणून जतन करा';

  @override
  String get importData => 'डेटा आयात करा';

  @override
  String get importDataSubtitle => 'JSON वरून लिस्ट पुनर्संचयित करा';

  @override
  String get importJsonTitle => 'JSON आयात करा';

  @override
  String get importJsonHint => 'बॅकअप JSON येथे पेस्ट करा...';

  @override
  String get backupExported => 'बॅकअप एक्सपोर्ट केला!';

  @override
  String get budgetAppBar => 'मासिक बजेट';

  @override
  String get budgetPremiumLocked => 'जागतिक मासिक बजेट प्रीमियम आहे';

  @override
  String get budgetUpgradePrompt => 'अनलॉक करण्यासाठी अपग्रेड करा';

  @override
  String get noBudgetDefined => 'बजेट सेट केले नाही';

  @override
  String totalEstimated(String amount) {
    return 'एकूण अंदाजे: $amount';
  }

  @override
  String get setBudgetButton => 'बजेट सेट करा';

  @override
  String get budgetLists => 'लिस्ट';

  @override
  String get budgetValueLabel => 'रक्कम';

  @override
  String get setBudgetTitle => 'मासिक बजेट';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'सर्व';

  @override
  String get filterPending => 'प्रलंबित';

  @override
  String get filterPurchased => 'खरेदी केलेले';

  @override
  String get sortName => 'नाव';

  @override
  String get sortCategory => 'वर्ग';

  @override
  String get sortDate => 'तारीख';

  @override
  String get sortManual => 'मॅन्युअल';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$total आयटमपैकी $purchased';
  }

  @override
  String progressBudget(String amount) {
    return 'बजेट: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'एकूण: $amount';
  }

  @override
  String get addItem => 'आयटम जोडा';

  @override
  String get itemName => 'आयटमचे नाव';

  @override
  String get quantityShort => 'प्रमाण';

  @override
  String get unit => 'युनिट';

  @override
  String get category => 'वर्ग';

  @override
  String get estimatedPrice => 'अंदाजे किंमत';

  @override
  String get addItemPrice => 'अंदाजे किंमत';

  @override
  String get editItem => 'आयटम संपादित करा';

  @override
  String get quantityFull => 'प्रमाण';

  @override
  String get editItemPrice => 'अंदाजे किंमत';

  @override
  String get addToPantry => 'पॅन्ट्रीमध्ये जोडा';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" तुमच्या पॅन्ट्रीमध्ये जोडायचे?';
  }

  @override
  String get yes => 'होय';

  @override
  String get productName => 'उत्पादनाचे नाव';

  @override
  String get idealQty => 'आदर्श प्रमाण';

  @override
  String get currentQty => 'सध्याचे प्रमाण';

  @override
  String get trackStock => 'स्टॉक ट्रॅक करा';

  @override
  String get trackStockActive => 'शॉपिंग सूचनांमध्ये दिसते';

  @override
  String get trackStockInactive => 'शॉपिंग सूचना तयार करत नाही';

  @override
  String get createListDialog => 'लिस्ट तयार करा';

  @override
  String get renameListDialog => 'लिस्ट पुनर्नामित करा';

  @override
  String get listHistory => 'लिस्ट इतिहास';

  @override
  String get myLists => 'माझ्या लिस्ट';

  @override
  String get viewActive => 'सक्रिय पहा';

  @override
  String get viewHistory => 'इतिहास पहा';

  @override
  String get noArchivedLists => 'कोणत्याही आर्काइव्ह केलेल्या लिस्ट नाहीत';

  @override
  String get noActiveLists => 'कोणत्याही सक्रिय लिस्ट नाहीत';

  @override
  String completedOn(String date) {
    return '$date रोजी पूर्ण';
  }

  @override
  String get sharedLabel => 'शेअर केले';

  @override
  String get restore => 'पुनर्संचयित करा';

  @override
  String get removeSharedTooltip => 'काढा';

  @override
  String get deleteListTitle => 'लिस्ट हटवा';

  @override
  String deleteListContent(String name) {
    return 'तुम्हाला \"$name\" हटवायचे असल्याची खात्री आहे? सर्व आयटम काढले जातील.';
  }

  @override
  String get removeSharedListTitle => 'शेअर केलेली लिस्ट काढा';

  @override
  String removeSharedListContent(String name) {
    return 'तुमच्या लिस्टमधून \"$name\" काढायचे? मूळ लिस्टवर परिणाम होणार नाही.';
  }

  @override
  String get createNewList => 'नवीन लिस्ट तयार करा';

  @override
  String get aiAssistant => 'AI सहाय्यक';

  @override
  String get aiAssistantDescription =>
      'आमच्या AI सहाय्यकासह स्मार्ट सूचना, पाककृती आणि वैयक्तिक टिपा मिळवा.';

  @override
  String get generalAssistant => 'सामान्य सहाय्यक';

  @override
  String get newChat => 'नवीन गप्पा';

  @override
  String get noHistory => 'चॅट इतिहास नाही';

  @override
  String get deleteSession => 'चॅट हटवा';

  @override
  String get deleteSessionConfirm =>
      'तुम्हाला खात्री आहे की तुम्ही ही चॅट हटवू इच्छिता? संदेश कायमचे गमावले जातील.';

  @override
  String get clearHistory => 'इतिहास साफ करा';

  @override
  String get clearHistoryConfirm => 'या सत्रातील सर्व संदेश साफ करायचे?';

  @override
  String get chatHint => 'तुमचा संदेश टाइप करा...';

  @override
  String get chatHintBlocked => 'चॅट करण्यासाठी AI अनलॉक करा';

  @override
  String chatError(String error) {
    return 'चॅट लोड करताना त्रुटी: $error';
  }

  @override
  String get aiAssistantTitle => 'एआय सहाय्यक';

  @override
  String get closeSheet => 'बंद करा';

  @override
  String get scanBarcodeTitle => 'बारकोड स्कॅन करा';

  @override
  String get listHelp => 'तुमच्या लिस्टमध्ये कशी मदत करू?';

  @override
  String get generalHelp => 'तुमच्या खरेदीमध्ये आज कशी मदत करू?';

  @override
  String get chatSubtitle => 'आयटम सूचना, पाककृती किंवा बचत टिपांसाठी विचारा.';

  @override
  String get aiError =>
      'क्षमस्व, तुमची विनंती प्रक्रिया करताना त्रुटी आली. तुमचे कनेक्शन तपासा किंवा नंतर पुन्हा प्रयत्न करा.';

  @override
  String get aiLimitAlmostReached => 'AI संदेश जवळजवळ संपले';

  @override
  String get unlockAi => 'अमर्यादित AI अनलॉक करा';

  @override
  String get aiTeaserFallback =>
      'पूर्ण प्रतिसाद अनलॉक करण्यासाठी प्रीमियमची सदस्यता घ्या आणि तुमच्या खरेदीसाठी अमर्यादित AI टिपा मिळवा...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI क्रिया या महिन्यात शिल्लक आहेत — अमर्यादित श्रेणीसुधारित करा';
  }

  @override
  String get aiUsageExhausted =>
      'मासिक AI मर्यादा गाठली. अमर्यादित → साठी प्रो वर श्रेणीसुधारित करा';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'प्रीमियम वैशिष्ट्ये\nअनलॉक करण्यासाठी लॉगिन करा';

  @override
  String get signInGoogle => 'Google ने साइन इन करा';

  @override
  String get signInApple => 'Apple ने साइन इन करा';

  @override
  String get continueAsGuest => 'पाहुणे म्हणून सुरू ठेवा';

  @override
  String get onboardingWelcomeTitle => 'KipiList मध्ये आपले स्वागत आहे';

  @override
  String get onboardingWelcomeDesc =>
      'तुमची खरेदी व्यवस्थापित करण्याचा आणि पैसे वाचवण्याचा सर्वात हुशार मार्ग.';

  @override
  String get onboardingSetupTitle => 'तुमचा अनुभव वैयक्तिकृत करा';

  @override
  String get onboardingSetupDesc =>
      'तुम्हाला KipiList कसे दिसावे आणि तुमच्यासाठी कसे कार्य करायचे ते निवडा.';

  @override
  String get onboardingLoginTitle => 'क्लाउडवर सर्वकाही जतन करा';

  @override
  String get onboardingLoginDesc =>
      'तुमचा डेटा तुमच्या सर्व डिव्हाइसेसवर सिंक केला आहे';

  @override
  String get onboardingShareTitle => 'तुम्हाला आवडत असलेल्यांसोबत शेअर करा';

  @override
  String get onboardingShareDesc =>
      'रिअल टाइममध्ये कुटुंब आणि मित्रांसह याद्या समक्रमित करा';

  @override
  String get onboardingPremiumTitle => 'सर्व वैशिष्ट्ये अनलॉक करा';

  @override
  String get onboardingPremiumSubtitle =>
      'तुमच्या खरेदी सूचीमधून जास्तीत जास्त मिळवा';

  @override
  String get onboardingAnnualBadge => 'सर्वोत्तम मूल्य';

  @override
  String get onboardingMonthlyLabel => 'मासिक';

  @override
  String get onboardingAnnualLabel => 'वार्षिक';

  @override
  String get onboardingViewAllPlans => 'सर्व योजना पहा';

  @override
  String get onboardingSubscribeCta => 'सदस्यता घ्या';

  @override
  String get onboardingCancelAnytime => 'कधीही रद्द करा. बांधिलकी नाही.';

  @override
  String get onboardingContinueAsGuest => 'अतिथी म्हणून सुरू ठेवा';

  @override
  String get onboardingRestore => 'पुनर्संचयित करा';

  @override
  String get onboardingRestoreDesc =>
      'आधीपासूनच सदस्यता आहे? ते पुनर्संचयित करण्यासाठी येथे टॅप करा.';

  @override
  String get onboardingMaybeLater => 'कदाचित नंतर';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'अहो $name, तुमची खरेदी योग्य प्रकारे आयोजित करा.';
  }

  @override
  String get onboardingSlide1Title => 'स्मार्ट खरेदी याद्या';

  @override
  String get onboardingSlide1Body =>
      'त्वरित सूची तयार करा आणि सामायिक करा. Kipi तुमच्या सवयींवर आधारित वस्तू आपोआप जोडते.';

  @override
  String get onboardingSlide2Title => 'किपीला भेटा';

  @override
  String get onboardingSlide2Body =>
      'काहीही विचारा — सूची तयार करा, पाककृती शोधा, तुमची पॅन्ट्री ट्रॅक करा, तुमच्या आठवड्याची योजना करा.';

  @override
  String get onboardingSlide3Title => 'पेंट्री आणि जेवण नियोजन';

  @override
  String get onboardingSlide3Body =>
      'तुमच्याकडे काय आहे याचा मागोवा घ्या, जेवणाची योजना करा आणि आपोआप खरेदी सूची तयार करा.';

  @override
  String get onboardingExit => 'बाहेर पडा';

  @override
  String get onboardingPersonalizationTitle => 'चला तुम्हाला ओळखू या';

  @override
  String get onboardingPersonalizationDesc =>
      'तुमच्या सूचना वैयक्तिकृत करण्यासाठी आणि खरेदी अधिक स्मार्ट करण्यासाठी आम्ही याचा वापर करू.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'तुमचे आवडते अन्न कोणते आहे?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'उदा. पिझ्झा, सुशी, लसाग्ना...';

  @override
  String get onboardingPersonalizationCta => 'चालू ठेवा';

  @override
  String get onboardingPersonalizationSkip => 'आतासाठी वगळा';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'सुरू ठेवण्यासाठी आम्हाला तुमचे आवडते पदार्थ सांगा';

  @override
  String get settingsDefaultScreen => 'डीफॉल्ट होम स्क्रीन';

  @override
  String get settingsDefaultScreenSubtitle =>
      'खरेदी सूची किंवा एआय चॅट यापैकी निवडा';

  @override
  String get settingsScreenList => 'खरेदी सूची';

  @override
  String get settingsScreenChat => 'एआय गप्पा';

  @override
  String loginError(String error) {
    return 'लॉगिन त्रुटी: $error';
  }

  @override
  String get paywallTitle => 'KipiList प्रीमियम';

  @override
  String get paywallLoadingError =>
      'ऑफर लोड करताना त्रुटी. पुन्हा प्रयत्न करा.';

  @override
  String get paywallPurchaseError =>
      'खरेदी पूर्ण करू शकलो नाही. पुन्हा प्रयत्न करा.';

  @override
  String get paywallRestoreError =>
      'पुनर्संचयित करण्यासाठी कोणतीही सक्रिय सदस्यता आढळली नाही.';

  @override
  String paywallTrialDays(Object days) {
    return '$days दिवस विनामूल्य';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आठवडे मोफत',
      one: '$count आठवडा मोफत',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count महिने मोफत',
      one: '$count महिना मोफत',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => '7 दिवसांसाठी KipiList Pro मोफत वापरून पहा';

  @override
  String get paywallTrialSubtitle => 'कधीही रद्द करा. आज कोणतेही शुल्क नाही.';

  @override
  String get paywallTrialCta => 'विनामूल्य चाचणी सुरू करा';

  @override
  String get recipeAddToList => 'खरेदी सूचीमध्ये जोडा';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$listName मध्ये $count घटक जोडले';
  }

  @override
  String get noListSelected => 'कोणतीही यादी निवडलेली नाही. प्रथम सूची उघडा.';

  @override
  String get paywallFeaturesTitle => 'आपल्याला आवश्यक असलेली प्रत्येक गोष्ट:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI तुमची यादी आपोआप व्यवस्थित करते';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'आपल्याला आवश्यक तितक्या याद्या तयार करा';

  @override
  String get paywallFeatureDescSharing => 'रिअल टाइममध्ये एकत्र खरेदी करा';

  @override
  String get paywallFeatureDescPantry => 'तुमच्या घरी काय आहे याचा मागोवा घ्या';

  @override
  String get paywallFeatureDescBudget => 'दर महिन्याच्या बजेटवर रहा';

  @override
  String get paywallFeatureUnlimitedLists => 'अमर्यादित याद्या';

  @override
  String get paywallFeatureSmartAI => 'स्मार्ट AI';

  @override
  String get paywallFeatureExpenseControl => 'खर्चावर नियंत्रण';

  @override
  String get paywallFeatureSharing => 'शेअरिंग';

  @override
  String get paywallBeforeAfterTitle => 'AI आधी आणि नंतर:';

  @override
  String get paywallLabelCommon => 'सामान्य';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'तांदूळ';

  @override
  String get paywallBeforeItem2 => 'साबण';

  @override
  String get paywallBeforeItem3 => 'मांस';

  @override
  String get paywallBeforeItem4 => 'ब्रेड';

  @override
  String get paywallAfterItem1 => 'धान्य';

  @override
  String get paywallAfterItem2 => 'साफसफाई';

  @override
  String get paywallAfterItem3 => 'मांस';

  @override
  String get paywallAfterItem4 => 'बेकरी';

  @override
  String get paywallTestimonialsTitle => 'आमचे वापरकर्ते काय म्हणतात:';

  @override
  String get paywallTestimonial1Name => 'ॲन एस.';

  @override
  String get paywallTestimonial1Text =>
      'AI काही सेकंदात माझी खरेदी आयोजित करते. मी प्रति मार्केट ट्रिप 20 मिनिटे वाचवतो.';

  @override
  String get paywallTestimonial2Name => 'चार्ल्स एम.';

  @override
  String get paywallTestimonial2Text =>
      'मी पुन्हा एक यादी आयटम विसरलो नाही. एआय चॅट खळबळजनक आहे!';

  @override
  String get paywallSocialProof => '+2,400 कुटुंबे त्याचा वापर करतात';

  @override
  String get paywallCtaUnlock => 'PRO अनलॉक करा';

  @override
  String get paywallBestValue => 'सर्वोत्तम मूल्य';

  @override
  String get paywallMostPopular => 'सर्वाधिक लोकप्रिय';

  @override
  String get paywallProLabel => 'प्रो';

  @override
  String get paywallSafeCheckout => 'सुरक्षित पेमेंट';

  @override
  String get paywallSelectPlan => 'तुमची योजना निवडा:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% जतन करा';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'फक्त $price/महिना';
  }

  @override
  String get paywallPackageAnnual => 'वार्षिक योजना';

  @override
  String get paywallPackageMonthly => 'मासिक योजना';

  @override
  String get paywallPackageLifetime => 'आजीवन प्रवेश';

  @override
  String get paywallCancelAnytime => 'कधीही रद्द करा. बांधिलकी नाही.';

  @override
  String paywallTrialInCard(int days) {
    return 'पहिले $days दिवस मोफत';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Play द्वारे सुरक्षित · कधीही रद्द करा';

  @override
  String get paywallPolicy => 'गोपनीयता धोरण';

  @override
  String get paywallTerms => 'वापराच्या अटी';

  @override
  String get paywallRestore => 'पुनर्संचयित करा';

  @override
  String get paywallHeroHeadline => 'Kipi AI नेहमी तुमच्या पाठीशी';

  @override
  String get paywallHeroSubtitle =>
      'आयटम जोडा, सूची व्यवस्थापित करा आणि तुमच्या खिशात AI सह वेळ वाचवा';

  @override
  String get paywallBenefit1Desc =>
      '24/7 आयटम जोडते, व्यवस्थापित करते आणि सुचवते';

  @override
  String get paywallBenefit2Desc => '3-सूची मर्यादा नाही';

  @override
  String get paywallBenefit3Desc => 'खर्च ट्रॅकिंग आणि कुटुंब याद्या';

  @override
  String get paywallPackageMonthlyDesc => 'पूर्ण लवचिकता';

  @override
  String paywallCtaTrialDays(int days) {
    return 'विनामूल्य प्रारंभ करा — $days दिवस';
  }

  @override
  String get premiumUpgrade => 'अनलॉक करण्यासाठी अपग्रेड करा';

  @override
  String get itemRemoved => 'आयटम काढला';

  @override
  String get undo => 'पूर्ववत करा';

  @override
  String get emptyListTitle => 'तुमची लिस्ट रिकामी आहे';

  @override
  String get emptyListSubtitle => 'सुरू करण्यासाठी आयटम जोडा';

  @override
  String get noListFoundTitle => 'कोणतीही लिस्ट सापडली नाही';

  @override
  String get noListFoundSubtitle =>
      'सुरू करण्यासाठी तुमची पहिली लिस्ट तयार करा';

  @override
  String get createFirstList => 'पहिली लिस्ट तयार करा';

  @override
  String get listBudgetTitle => 'लिस्ट बजेट';

  @override
  String get budgetAmountLabel => 'बजेट रक्कम';

  @override
  String get removeBudget => 'काढा';

  @override
  String get prefUnlimitedLists => 'अमर्यादित लिस्ट';

  @override
  String get prefSharing => 'लिस्ट शेअर करा';

  @override
  String get prefFullHistory => 'पूर्ण इतिहास';

  @override
  String get prefExportData => 'डेटा एक्सपोर्ट करा';

  @override
  String get prefCustomThemes => 'सानुकूल थीम';

  @override
  String get prefMonthlyBudget => 'जागतिक मासिक बजेट';

  @override
  String get prefAIAssistant => 'वैयक्तिक AI सहाय्यक';

  @override
  String get prefUnlimitedPantry => 'अमर्यादित पॅन्ट्री';

  @override
  String get prefInteractiveArtifacts => 'संवादात्मक AI आर्टिफॅक्ट्स';

  @override
  String get themeGreen => 'हिरवा';

  @override
  String get themeBlue => 'निळा';

  @override
  String get themePurple => 'जांभळा';

  @override
  String get themeRed => 'लाल';

  @override
  String get themeOrange => 'नारिंगी';

  @override
  String get themePink => 'गुलाबी';

  @override
  String get themeIndigo => 'इंडिगो';

  @override
  String get themeAmber => 'एम्बर';

  @override
  String get themeTeal => 'टील';

  @override
  String get themeBrown => 'तपकिरी';

  @override
  String get catFruits => 'फळे';

  @override
  String get catCleaning => 'स्वच्छता';

  @override
  String get catBeverages => 'पेये';

  @override
  String get catBakery => 'बेकरी';

  @override
  String get catOthers => 'इतर';

  @override
  String get unitPack => 'पॅक';

  @override
  String get shareSubject => 'शॉपिंग लिस्ट';

  @override
  String get monthlyBudgetTitle => 'मासिक बजेट';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'लिस्ट हटवा';

  @override
  String get pantryItemRemoved => 'आयटम काढला';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit आयटम खरेदी करणे आवश्यक आहेत',
      one: '$deficit आयटम खरेदी करणे आवश्यक आहे',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'कार्ट एकूण';

  @override
  String get restockLabel => 'पुन्हा साठवा';

  @override
  String get advancedFeatures => 'प्रगत वैशिष्ट्ये';

  @override
  String get selectAll => 'सर्व निवडा';

  @override
  String get deselectAll => 'सर्व अडीज करा';

  @override
  String get monthlyBudgetAppBar => 'मासिक बजेट';

  @override
  String get budgetEditTitle => 'मासिक बजेट';

  @override
  String get budgetDashboardTitle => 'डॅशबोर्ड';

  @override
  String get selectListForDashboard => 'डॅशबोर्ड पाहण्यासाठी एक लिस्ट निवडा.';

  @override
  String get spendingAnalysis => 'खर्च विश्लेषण';

  @override
  String get noItemsToAnalyze =>
      'विश्लेषण करण्यासाठी लिस्टमध्ये कोणतेही आयटम नाहीत.';

  @override
  String get markItemsToSeeAnalysis =>
      'विश्लेषण पाहण्यासाठी आयटम खरेदी केले म्हणून चिन्हांकित करा.';

  @override
  String get totalSpending => 'एकूण खर्च';

  @override
  String get spendingByCategory => 'वर्गानुसार खर्च';

  @override
  String get achievements => 'कामगिरी';

  @override
  String get exportPdfExcel => 'PDF/Excel एक्सपोर्ट करा';

  @override
  String get exportPdf => 'PDF म्हणून एक्सपोर्ट करा';

  @override
  String get exportExcel => 'Excel म्हणून एक्सपोर्ट करा';

  @override
  String get organizingAi => 'AI सह आयोजित करत आहे...';

  @override
  String get yesLabel => 'होय';

  @override
  String get noLabel => 'नाही';

  @override
  String get shareListText => 'माझी शॉपिंग लिस्ट';

  @override
  String get emptyListAddItems => 'तुमची लिस्ट रिकामी आहे! प्रथम आयटम जोडा. ℹ️';

  @override
  String get listOrganizedMagic => 'लिस्ट वर्गांनुसार जादूने आयोजित केली! ✨';

  @override
  String get shoppingMode => 'शॉपिंग मोड';

  @override
  String get smartOrganization => 'स्मार्ट आयोजन';

  @override
  String get savings => 'बचत';

  @override
  String get shoppingModeHeader => 'शॉपिंग मोड';

  @override
  String get shareAsText => 'फॉरमॅट केलेला मजकूर म्हणून आयटम पाठवा';

  @override
  String get shareRealtime => 'इतर लोकांसह रिअल-टाइम सिंक';

  @override
  String get quickRecipe => 'त्वरित पाककृती';

  @override
  String get quickRecipePrompt => 'माझ्या लिस्टमधील आयटमसह पाककृती सुचवा.';

  @override
  String get economyTips => 'बचत टिपा';

  @override
  String get economyTipsPrompt => 'या खरेदीवर मी पैसे कसे वाचवू शकतो?';

  @override
  String get organizeAisles => 'आयल्सनुसार आयोजित करा';

  @override
  String get organizeAislesPrompt => 'मार्केट आयल्सनुसार आयोजित करा.';

  @override
  String get recipeSuggestion => 'पाककृती सूचना';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining क्रेडिट शिल्लक';
  }

  @override
  String get addAllToList => 'सर्व लिस्टमध्ये जोडा';

  @override
  String get organizeByAisles => 'आयल्सनुसार आयोजित करा';

  @override
  String get voiceTranscriptionTooltip => 'व्हॉइस टायपिंग (विनामूल्य)';

  @override
  String get aiVoiceCommandTooltip => 'AI व्हॉइस कमांड (प्रीमियम)';

  @override
  String get voiceCommandTitle => 'AI व्हॉइस कमांड';

  @override
  String get voiceCommandContent =>
      'तुमची लिस्ट व्यवस्थापित करण्यासाठी नैसर्गिकपणे बोला!\n\nउदाहरणे:\n• \'ब्रेड, चीज आणि हॅम जोडा\'\n• \'लॉन्ड्री डिटर्जंट काढा\'\n• \'थीम निळ्यामध्ये बदला\'\n\nहे KipiList प्रीमियमचे अनन्य वैशिष्ट्य आहे.';

  @override
  String get voiceCommandPlanBtn => 'प्लॅन पहा';

  @override
  String get itemsAddedSuccess => 'आयटम यशस्वीरित्या लिस्टमध्ये जोडले!';

  @override
  String get viewList => 'लिस्ट पहा';

  @override
  String get feedbackTitle => 'अभिप्राय पाठवा';

  @override
  String get feedbackPrompt => 'तुम्ही काय शेअर करू इच्छिता?';

  @override
  String get feedbackTypeBug => 'बगची तक्रार करा';

  @override
  String get feedbackTypeBugHint => 'काहीतरी काम करत नाही आहे';

  @override
  String get feedbackTypeSuggestion => 'सूचना';

  @override
  String get feedbackTypeSuggestionHint => 'अॅप सुधारण्यासाठी कल्पना';

  @override
  String get feedbackTypeTranslation => 'भाषांतर समस्या';

  @override
  String get feedbackTypeTranslationHint => 'चुकीचे किंवा विचित्र भाषांतर';

  @override
  String get feedbackTypeFeature => 'वैशिष्ट्य विनंती';

  @override
  String get feedbackTypeFeatureHint => 'तुम्हाला पाहायचे असलेले वैशिष्ट्य';

  @override
  String get feedbackTypeOther => 'इतर';

  @override
  String get feedbackTypeOtherHint => 'इतर प्रकारचा अभिप्राय';

  @override
  String get feedbackHint => 'तुमचा अभिप्राय तपशीलवार वर्णन करा...';

  @override
  String get feedbackSend => 'अभिप्राय पाठवा';

  @override
  String get feedbackSending => 'पाठवत आहे...';

  @override
  String get feedbackThankYou => 'धन्यवाद!';

  @override
  String get feedbackThankYouMessage =>
      'तुमचा अभिप्राय प्राप्त झाला आहे आणि तो KipiList सर्वांसाठी सुधारण्यास मदत करतो.';

  @override
  String get feedbackBack => 'मागे';

  @override
  String feedbackError(String error) {
    return 'पाठवताना त्रुटी: $error';
  }

  @override
  String get feedbackRetry => 'पुन्हा प्रयत्न करा';

  @override
  String get feedbackSettingsTitle => 'अभिप्राय पाठवा';

  @override
  String get feedbackSettingsSubtitle =>
      'बगची तक्रार करा, सुधारणा सुचवा किंवा भाषांतरे दुरुस्त करा';

  @override
  String get aiEnergy => 'एआय एनर्जी';

  @override
  String get searchInConversation => 'संभाषणात शोधा...';

  @override
  String get noMessagesFound => 'कोणतेही संदेश आढळले नाहीत';

  @override
  String get suggestedQuestions => 'सुचवलेले प्रश्न:';

  @override
  String get shoppingAssistant => 'खरेदी सहाय्यक';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total पैकी $purchased खरेदी केले';
  }

  @override
  String get estimatedCost => 'अंदाज';

  @override
  String get viewItems => 'आयटम पहा';

  @override
  String get noItemsInList => 'सूचीमध्ये कोणतेही आयटम नाहीत';

  @override
  String get longHistoryWarning =>
      'दीर्घ इतिहास: अधिक चांगल्या कामगिरीसाठी सहाय्यक नवीनतम संदेशांवर लक्ष केंद्रित करतो.';

  @override
  String get listening => 'ऐकत आहे...';

  @override
  String get addDirectToList => 'थेट सूचीमध्ये जोडा';

  @override
  String get unlockFullResponse => 'पूर्ण प्रतिसाद अनलॉक करा';

  @override
  String get switchList => 'सूची स्विच करा';

  @override
  String get marketMode => 'मार्केट मोड';

  @override
  String get backToChat => 'चॅट वर परत';

  @override
  String get finishShopping => 'खरेदी पूर्ण करा';

  @override
  String get welcomeAiAssistant => 'AI सहाय्यकामध्ये आपले स्वागत आहे';

  @override
  String get createListToStartAi =>
      'स्मार्ट चॅट वापरणे सुरू करण्यासाठी खरेदी सूची तयार करा.';

  @override
  String get howCanIHelp => 'मी कशी मदत करू शकतो?';

  @override
  String get chatSubtitleShort => 'किंमती, पाककृती, संस्था याबद्दल विचारा...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total खरेदी केले';
  }

  @override
  String get quickReplies => 'द्रुत प्रत्युत्तरे:';

  @override
  String get voiceProFeature =>
      'प्रगत व्हॉइस कमांड प्रो आहेत. मूलभूत श्रुतलेख सक्षम करत आहे...';

  @override
  String get viewPro => 'प्रो पहा';

  @override
  String get errorLoadingChat => 'अरेरे! चॅट लोड करताना काहीतरी चूक झाली.';

  @override
  String get errorLoadingChatSubtitle =>
      'तुमचे कनेक्शन तपासा किंवा नंतर पुन्हा प्रयत्न करा.';

  @override
  String get errorOscillation =>
      'हे नेटवर्क दोलन किंवा तात्पुरत्या अनुपलब्धतेमुळे उद्भवू शकते. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get activeListening => 'सक्रिय ऐकणे';

  @override
  String get whatToDoWithItem => 'तुम्हाला या आयटमचे काय करायचे आहे?';

  @override
  String get viewDetails => 'तपशील पहा';

  @override
  String get openMenu => 'मेनू उघडा';

  @override
  String get viewRecipe => 'रेसिपी पहा';

  @override
  String get recipeCreated => 'रेसिपी तयार केली!';

  @override
  String get editRecipe => 'संपादित करा';

  @override
  String get deleteRecipe => 'हटवा';

  @override
  String get deleteRecipeConfirm => 'ही रेसिपी हटवायची?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'तुम्हाला खात्री आहे की तुम्ही \"$recipeName\" हटवू इच्छिता? ही क्रिया पूर्ववत केली जाऊ शकत नाही.';
  }

  @override
  String get ingredients => 'घटक';

  @override
  String get instructions => 'सूचना';

  @override
  String get prepTime => 'तयारीचा वेळ';

  @override
  String get recipeSaved => 'रेसिपी जतन केली!';

  @override
  String get noRecipesSaved => 'कोणतीही रेसिपी जतन केलेली नाही';

  @override
  String get noRecipesSavedHint =>
      'खालील बटणावर टॅप करून तुमची पहिली सानुकूल रेसिपी तयार करा.';

  @override
  String get myRecipes => 'माझ्या रेसिपी';

  @override
  String get newRecipe => 'नवीन रेसिपी';

  @override
  String get loadingRecipes => 'तुमच्या रेसिपी लोड होत आहेत...';

  @override
  String get errorLoadingRecipes => 'रेसिपी लोड करताना त्रुटी';

  @override
  String get addIngredient => 'घटक जोडा';

  @override
  String get saveRecipe => 'जतन करा';

  @override
  String get recipeName => 'रेसिपीचे नाव';

  @override
  String get shortDescription => 'लघु वर्णन';

  @override
  String get prepTimeMinutes => 'तयारीचा वेळ (मिनिटे)';

  @override
  String get instructionsHint => 'प्रत्येक ओळीवर एक पायरी टाइप करा...';

  @override
  String get addPhoto => 'फोटो जोडा';

  @override
  String get imageUrlPlaceholder => 'किंवा प्रतिमेची URL पेस्ट करा';

  @override
  String get tags => 'टॅग';

  @override
  String get recipeTags => 'रेसिपी टॅग';

  @override
  String get suggestedTags => 'सुचवलेले';

  @override
  String get searchRecipes => 'रेसिपी शोधा...';

  @override
  String get filterByTag => 'टॅगनुसार फिल्टर करा';

  @override
  String get allTags => 'सर्व';

  @override
  String get recipeDeleted => 'रेसिपी हटवली';

  @override
  String get saveChanges => 'बदल जतन करा';

  @override
  String get editRecipeTitle => 'रेसिपी संपादित करा';

  @override
  String get newRecipeTitle => 'नवीन रेसिपी';

  @override
  String get requiredField => 'आवश्यक';

  @override
  String get chooseImageSource => 'प्रतिमेचा स्रोत निवडा';

  @override
  String get gallery => 'गॅलरी';

  @override
  String get enterUrl => 'URL प्रविष्ट करा';

  @override
  String get recipeImage => 'रेसिपी प्रतिमा';

  @override
  String get removeImage => 'प्रतिमा काढा';

  @override
  String get mealPlannerTitle => 'जेवण नियोजक';

  @override
  String get mealPlannerViewMonthly => 'मासिक दृश्य';

  @override
  String get mealPlannerViewWeekly => 'साप्ताहिक दृश्य';

  @override
  String get mealPlannerNoMeals => 'कोणतेही जेवण नियोजित नाही';

  @override
  String get mealPlannerNoMealsHint => 'जेवण जोडण्यासाठी दिवसावर टॅप करा';

  @override
  String get mealPlannerLoading => 'जेवण योजना लोड होत आहे...';

  @override
  String get mealPlannerError => 'जेवण योजना लोड करताना त्रुटी';

  @override
  String get mealPlannerAddMeal => 'जेवण जोडा';

  @override
  String get mealPlannerEditMeal => 'जेवण संपादित करा';

  @override
  String get mealPlannerDeleteMeal => 'जेवण काढा';

  @override
  String get mealPlannerMealDeleted => 'जेवण काढले';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वाढणी',
      one: '$count वाढणी',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'वाढणी';

  @override
  String get mealPlannerNoteLabel => 'नोंद (पर्यायी)';

  @override
  String get mealPlannerSelectRecipe => 'रेसिपी निवडा';

  @override
  String get mealPlannerSearchRecipes => 'रेसिपी शोधा...';

  @override
  String get mealPlannerNoRecipesFound => 'कोणतीही रेसिपी सापडली नाही';

  @override
  String get mealPlannerNoRecipesHint =>
      'प्रथम रेसिपी टॅबमध्ये रेसिपी तयार करा';

  @override
  String get mealPlannerSave => 'योजनेमध्ये जोडा';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total पैकी $count जेवण नियोजित';
  }

  @override
  String get mealPlannerGenerateList => 'शॉपिंग लिस्ट तयार करा';

  @override
  String get mealPlannerGenerateListConfirm =>
      'या आठवड्यातील नियोजित जेवणातील सर्व घटक तुमच्या शॉपिंग लिस्टमधून जोडायचे?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'तुमच्या लिस्टमध्ये $count घटक जोडले गेले!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'जोडण्यासाठी कोणतेही घटक नाहीत. प्रथम रेसिपीसह काही जेवणांचे नियोजन करा.';

  @override
  String get mealPlannerGenerateListNoList => 'प्रथम शॉपिंग लिस्ट तयार करा.';

  @override
  String get mealPlannerMealTypeBreakfast => 'न्याहारी';

  @override
  String get mealPlannerMealTypeLunch => 'दुपारचे जेवण';

  @override
  String get mealPlannerMealTypeDinner => 'रात्रीचे जेवण';

  @override
  String get mealPlannerMealTypeSnack => 'नाश्ता';

  @override
  String get mealPlannerDateLabel => 'तारीख';

  @override
  String get mealPlannerWeekEmpty => 'या आठवड्यासाठी काहीही नियोजित नाही';

  @override
  String get mealPlannerWeekEmptyHint =>
      'तुमच्या जेवणाचे नियोजन सुरू करण्यासाठी कोणत्याही दिवसावर टॅप करा!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes मिनीटे';
  }

  @override
  String get inviteToList => 'सूचीसाठी आमंत्रित करा';

  @override
  String get shareApp => 'ॲप शेअर करा';

  @override
  String get shareAppDescription =>
      'KipiList वापरण्यासाठी मित्रांना आमंत्रित करा';

  @override
  String shareReferralText(String url) {
    return 'मी माझी खरेदी आयोजित करण्यासाठी KipiList वापरत आहे! माझ्या लिंकद्वारे डाउनलोड करा आणि आम्हा दोघांना 7 दिवसांचे प्रीमियम मोफत मिळेल: $url';
  }

  @override
  String get shareReferralSubject => '७ दिवसांचे KipiList प्रीमियम मिळवा!';

  @override
  String get gestureHint => 'निवडण्यासाठी धरून ठेवा • काढण्यासाठी स्वाइप करा';

  @override
  String get catalogTitle => 'कॅटलॉग';

  @override
  String get catalogMyFrequents => 'माझे वारंवार';

  @override
  String get catalogSearchGlobal => 'कोणतेही उत्पादन शोधा...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category मध्ये शोधा...';
  }

  @override
  String get catalogSortPopular => 'सर्वात लोकप्रिय';

  @override
  String get catalogSortAZ => 'A-Z';

  @override
  String get catalogFilterNational => 'नागरिक';

  @override
  String get catalogRareSection => 'तुमच्या देशात कमी सामान्य';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 → जोडा';
  }

  @override
  String get catalogProductNotFound => 'उत्पादन आढळले नाही, नाव टाइप करा';

  @override
  String get catalogBrowse => 'कॅटलॉग ब्राउझ करा';

  @override
  String get offlineBanner => 'तुम्ही ऑफलाइन आहात';

  @override
  String get consentTitle => 'गोपनीयता आणि विश्लेषण';

  @override
  String get consentBody =>
      'KipiList तुमचा अनुभव सुधारण्यासाठी Firebase Analytics वापरते. तुमच्या डेटावर आमच्या गोपनीयता धोरणानुसार प्रक्रिया केली जाते.';

  @override
  String get consentAccept => 'स्वीकारा';

  @override
  String get consentDecline => 'नाही, धन्यवाद';

  @override
  String get mealPlannerPantryAllAvailable => 'स्टॉक मध्ये';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count गहाळ आयटम',
      one: '$count गहाळ आयटम',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'कालबाह्यता तारीख';

  @override
  String get notInformed => 'माहिती दिली नाही';

  @override
  String get skip => 'वगळा';

  @override
  String get onboardingAiTitle => 'किपीशी गप्पा मारा';

  @override
  String get onboardingAiGreeting =>
      'हाय! मी किपी आहे, तुमचा वैयक्तिक खरेदी सहाय्यक आहे! 🛒';

  @override
  String get onboardingAiAskName => 'तुझे नाव काय आहे?';

  @override
  String get onboardingAiNameHint => 'तुमचे नाव टाइप करा...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'तुम्हाला भेटून आनंद झाला, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'तुमचे आवडते अन्न कोणते आहे?';

  @override
  String get onboardingAiFoodHint => 'उदा. पिझ्झा, सुशी...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'उत्तम पर्याय! मी तुमच्या सूचीमध्ये काय जोडू इच्छित आहे ते येथे आहे:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'हे चांगले दिसते का? दुसरे काहीतरी टाइप करून पहा!';

  @override
  String get onboardingAiReady =>
      'छान! तुम्ही सुरू करण्यासाठी तयार आहात. चला तुमचे खाते सेट करूया!';

  @override
  String get onboardingAiContinue => 'सुरू ठेवा →';

  @override
  String get connectionError => 'कनेक्शन त्रुटी';

  @override
  String connectionErrorDesc(String error) {
    return 'त्रुटी: $error';
  }

  @override
  String get errorLoadingLists => 'सूची लोड करताना त्रुटी';

  @override
  String get noListsFound => 'याद्या सापडल्या नाहीत';

  @override
  String get backToToday => 'आज परत';

  @override
  String get quickSuggestions => 'जलद सूचना';

  @override
  String get aiEnergyLow => 'कमी AI ऊर्जा';

  @override
  String get aiUnlockUnlimited => 'अमर्यादित AI अनलॉक करा';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 आज';
  }

  @override
  String get aiSubscribeUnlimited => 'अमर्यादित AI साठी सदस्यता घ्या';

  @override
  String get unlockWithAd => 'जाहिरातीसह अनलॉक करा';

  @override
  String get conversationHistoryTitle => 'संभाषण इतिहास';

  @override
  String get noConversationsFound => 'कोणतीही संभाषणे आढळली नाहीत';

  @override
  String get errorLoadingHistory => 'इतिहास लोड करताना त्रुटी';

  @override
  String get deleteConversationTitle => 'संभाषण हटवा';

  @override
  String get deleteConversationConfirm =>
      'ही क्रिया पूर्ववत केली जाऊ शकत नाही.';

  @override
  String get deleteConversation => 'हटवा';

  @override
  String get subscription => 'वर्गणी';

  @override
  String get kipiListProActive => 'KipiList Pro सक्रिय';

  @override
  String get unlockPremiumTitle => 'प्रीमियम अनलॉक करा';

  @override
  String get loadingSubscription => 'सदस्यता लोड करत आहे...';

  @override
  String get errorLoadingSubscription => 'सदस्यता लोड करताना त्रुटी';

  @override
  String get profileSection => 'प्रोफाइल';

  @override
  String get myProfile => 'माझे प्रोफाइल';

  @override
  String get profileSubtitle => 'तुमची प्रोफाइल माहिती';

  @override
  String get customizeAiAssistant => 'AI सहाय्यक सानुकूलित करा';

  @override
  String get assistantHistory => 'सहाय्यक इतिहास';

  @override
  String get assistantHistorySubtitle => 'तुमचा संभाषण इतिहास पहा';

  @override
  String get manageCategories => 'श्रेणी व्यवस्थापित करा';

  @override
  String get manageCategoriesSubtitle => 'श्रेणी जोडा, संपादित करा किंवा काढा';

  @override
  String get customizeAssistant => 'सानुकूल करा';

  @override
  String get assistantName => 'सहाय्यक नाव';

  @override
  String get chooseIcon => 'चिन्ह निवडा';

  @override
  String get profileSaved => 'प्रोफाइल सेव्ह केले';

  @override
  String get errorSavingProfile => 'प्रोफाइल जतन करताना त्रुटी';

  @override
  String get userProfile => 'वापरकर्ता प्रोफाइल';

  @override
  String get profileDescription => 'प्रोफाइल वर्णन';

  @override
  String get preferredMarket => 'पसंतीचा बाजार';

  @override
  String get preferredMarketHint => 'तुम्ही सहसा कुठे खरेदी करता?';

  @override
  String get dietaryRestrictions => 'आहारातील निर्बंध';

  @override
  String get dietaryRestrictionsHint => 'काही आहार प्रतिबंध?';

  @override
  String get marketsToAvoid => 'बाजार टाळण्यासाठी';

  @override
  String get marketsToAvoidHint => 'ज्या मार्केटमध्ये तुम्ही खरेदी करू नका';

  @override
  String get observations => 'निरीक्षणे';

  @override
  String get observationsHint => 'कोणत्याही अतिरिक्त नोट्स?';

  @override
  String get saveProfile => 'प्रोफाइल जतन करा';

  @override
  String get everythingReady => 'सर्व काही तयार!';

  @override
  String get youCompletedList => 'तुम्ही यादी पूर्ण केली!';

  @override
  String get selectCheaperAlternative => 'स्वस्त पर्याय निवडा';

  @override
  String get suggestedItems => 'सुचविलेल्या वस्तू';

  @override
  String get swapped => 'अदलाबदल';

  @override
  String get swap => 'स्वॅप';

  @override
  String get chooseThemeColor => 'थीम रंग निवडा';

  @override
  String get manageCategoriesTitle => 'श्रेण्या व्यवस्थापित करा';

  @override
  String get categoryLimitReached => 'श्रेणी मर्यादा गाठली';

  @override
  String get deleteCategoryTitle => 'श्रेणी हटवा';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\" मधील आयटम \"इतर\" मध्ये हलवले जातील.\nसुरू ठेवायचे?';
  }

  @override
  String get deleteCategory => 'हटवा';

  @override
  String get newCategoryDialog => 'नवीन श्रेणी';

  @override
  String get editCategoryDialog => 'श्रेणी संपादित करा';

  @override
  String get categoryName => 'श्रेणीचे नाव';

  @override
  String get categoryNameHint => 'श्रेणीचे नाव प्रविष्ट करा';

  @override
  String get categoryColorLabel => 'रंग';

  @override
  String get categoryIconLabel => 'चिन्ह';

  @override
  String itemAddedSnack(String name) {
    return '$name जोडले';
  }

  @override
  String get kipiQuickBarHint => 'आपल्याला काय खरेदी करण्याची आवश्यकता आहे?';

  @override
  String replaceItem(String item) {
    return '$item बदला';
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
  String get onboardingHookHeadline => 'किराणा माल पुन्हा कधीही विसरू नका';

  @override
  String get onboardingGoalSaveMoney => 'पैसे वाचवा';

  @override
  String get onboardingGoalNeverForget => 'आयटम कधीही विसरू नका';

  @override
  String get onboardingGoalFaster => 'जलद खरेदी करा';

  @override
  String get onboardingGoalFamily => 'कौटुंबिक खरेदी आयोजित करा';

  @override
  String get onboardingGoalRecipes => 'पाककृती शोधा';

  @override
  String get onboardingGoalPantry => 'पॅन्ट्रीचा मागोवा घ्या';

  @override
  String get onboardingCommitmentsTitle => 'तुमच्यासाठी काय महत्त्वाचे आहे?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'KipiList वैयक्तिकृत करण्यासाठी तुमचे ध्येय निवडा';

  @override
  String get onboardingCommitmentsCta => 'चला जाऊया!';

  @override
  String get onboardingPersonalizationNameLabel => 'तुमचे नाव';

  @override
  String get onboardingPersonalizationNameHint => 'तुमचे नाव टाका';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'तुम्ही कशासाठी खरेदी करता?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'तुम्ही कोणासाठी खरेदी करता?';

  @override
  String get onboardingCategoryGrocery => 'किराणा सामान';

  @override
  String get onboardingCategoryPharmacy => 'फार्मसी';

  @override
  String get onboardingCategoryRecipes => 'पाककृती';

  @override
  String get onboardingCategoryHome => 'घर';

  @override
  String get onboardingCategoryPet => 'पाळीव प्राणी';

  @override
  String get onboardingGroupSolo => 'फक्त मी';

  @override
  String get onboardingGroupCouple => 'जोडपे';

  @override
  String get onboardingGroupFamily => 'कुटुंब';

  @override
  String get onboardingLoadingTitle => 'तुमचा अनुभव तयार करत आहे...';

  @override
  String get onboardingLoadingStep1 =>
      'तुमच्या प्राधान्यांचे विश्लेषण करत आहे...';

  @override
  String get onboardingLoadingStep2 => 'AI सहाय्यक सेट करत आहे...';

  @override
  String get onboardingLoadingStep3 => 'जवळजवळ तयार...';

  @override
  String get onboardingLoadingStat1Label => 'आयटम कॅटलॉग';

  @override
  String get onboardingLoadingStat2Label => 'वापरकर्त्यांनी मदत केली';

  @override
  String get onboardingLoadingStat3Label => 'मिनिटे वाचली';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, प्रत्येक सहलीवर बचत करा!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, आयटम कधीही विसरू नका!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, अर्ध्या वेळेत खरेदी करा!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, कुटुंब खरेदी आयोजित करा!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, नवीन पाककृती शोधा!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, तुमच्या पॅन्ट्रीचा उत्तम प्रकारे मागोवा घ्या!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'प्रत्येक सहलीवर बचत करा!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'एखादी वस्तू कधीही विसरू नका!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'अर्ध्या वेळेत खरेदी करा!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'कुटुंब खरेदी आयोजित करा!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'नवीन पाककृती शोधा!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'आपल्या पॅन्ट्रीचा उत्तम प्रकारे मागोवा घ्या!';

  @override
  String paywallPricePerDay(String price) {
    return 'फक्त $price/दिवस — कॉफीपेक्षा कमी';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'आतासाठी वगळा';

  @override
  String get paywallTestimonial =>
      'AI काही सेकंदात माझी खरेदी आयोजित करते. मी प्रति ट्रिप 20 मिनिटे वाचवतो.';

  @override
  String get paywallTestimonialAuthor => 'ॲन एस.';

  @override
  String get paywallTrialDisclaimer =>
      'कधीही रद्द करा · तुमची चाचणी संपेपर्यंत कोणतेही शुल्क नाही';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'अहो $name! तुम्हाला $category कशाची गरज आहे?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'तुम्हाला $category कशाची गरज आहे?';
  }

  @override
  String get onboardingAiDemoYes => 'होय!';

  @override
  String get onboardingAiDemoReaction => 'छान!';

  @override
  String get onboardingAiDemoChange => 'आयटम बदला';

  @override
  String get onboardingAiDemoOffer => 'दुसरे काहीतरी टाइप करून पहा!';

  @override
  String get onboardingAiDemoContinue => 'चालू ठेवा';

  @override
  String get onboardingAiDemoSlideHeadline => 'तुमची खरेदी सूची, आता AI सह';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Kipi तुमची पूर्ण यादी सेकंदात कशी तयार करते ते पहा';

  @override
  String get onboardingAiDemoSlideCta => 'मला हे हवे आहे! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'मी बार्बेक्यू होस्ट करत आहे 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'तयार! आपल्याला आवश्यक असलेली प्रत्येक गोष्ट येथे आहे:';

  @override
  String get onboardingAiDemoSlideDone => 'सेकंदात पूर्ण यादी ✨';

  @override
  String get onboardingPainTitle => 'तुम्हाला सर्वात जास्त काय निराश करते?';

  @override
  String get onboardingPainSubtitle =>
      'प्रामाणिक राहा - आम्ही प्रत्येकाचे निराकरण करू';

  @override
  String get onboardingPainCta => 'होय, माझ्यासाठी हे निश्चित करा →';

  @override
  String get onboardingPainForget => 'मी दुकानात वस्तू विसरतो';

  @override
  String get onboardingPainFamily => 'माझे कुटुंब कधीही यादी पाहत नाही';

  @override
  String get onboardingPainOverspend => 'मी नेहमी बजेट ओलांडतो';

  @override
  String get onboardingPainRepeat => 'एक ट्रिप कधीही पुरेशी नसते';

  @override
  String get aiWelcomeContent =>
      'नमस्कार! 👋 मी **किपी** आहे, तुमचा वैयक्तिक खरेदी आणि पाककृती सहाय्यक आहे!\n\nमी तुम्हाला मदत करण्यासाठी येथे आहे:\n🛒 वर्गवारीनुसार तुमची खरेदी **व्यवस्थित करा**\n💰 **तुमच्या बजेटचा मागोवा घ्या** आणि तुम्हाला पैसे वाचवण्याच्या टिप्स द्या\n🍲 **सुचवा** स्वादिष्ट पाककृती तुमच्याकडे आधीपासून आहेत\n\nआज मी तुम्हाला कशी मदत करू शकतो? तुम्ही तुमची पहिली यादी तयार करून सुरुवात करू शकता!';

  @override
  String get aiWelcomeSuggestCreateList => 'माझी पहिली यादी तयार करा';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'किपी, माझी पहिली खरेदी सूची तयार करण्यात मला मदत करा';

  @override
  String get aiWelcomeSuggestSave => 'पैसे कसे वाचवायचे?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'किपी, किराणा सामानावर पैसे वाचवण्यासाठी तुम्ही मला कशी मदत करू शकता?';

  @override
  String get suggestionMilk => 'दूध';

  @override
  String get suggestionBread => 'भाकरी';

  @override
  String get suggestionEggs => 'अंडी';

  @override
  String get suggestionCoffee => 'कॉफी';

  @override
  String get suggestionRice => 'तांदूळ';

  @override
  String get suggestionFruits => 'फळे';
}

/// The translations for Marathi, as used in India (`mr_IN`).
class AppLocalizationsMrIn extends AppLocalizationsMr {
  AppLocalizationsMrIn() : super('mr_IN');

  @override
  String get appTitle => 'शॉपिंग लिस्ट';

  @override
  String get lists => 'लिस्ट';

  @override
  String get pantry => 'पॅन्ट्री';

  @override
  String get navChat => 'गप्पा';

  @override
  String get navRecipes => 'पाककृती';

  @override
  String get navLists => 'लिस्ट';

  @override
  String get navMealPlanner => 'मेनू';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get save => 'जतन करा';

  @override
  String get create => 'तयार करा';

  @override
  String get add => 'जोडा';

  @override
  String get remove => 'काढा';

  @override
  String get delete => 'हटवा';

  @override
  String get edit => 'संपादित करा';

  @override
  String get copy => 'कॉपी करा';

  @override
  String get next => 'पुढे';

  @override
  String get retry => 'पुन्हा प्रयत्न करा';

  @override
  String get regenerate => 'पुनर्निर्माण करा';

  @override
  String get copiedToClipboard => 'क्लिपबोर्डवर कॉपी केले';

  @override
  String get confirm => 'पुष्टी करा';

  @override
  String get close => 'बंद करा';

  @override
  String get import => 'आयात करा';

  @override
  String get rename => 'पुनर्नामित करा';

  @override
  String get upgrade => 'अपग्रेड करा';

  @override
  String get clear => 'साफ करा';

  @override
  String error(String message) {
    return 'त्रुटी: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'त्रुटी: $message';
  }

  @override
  String get purchaseError => 'खरेदी प्रक्रियेत त्रुटी. पुन्हा प्रयत्न करा.';

  @override
  String get restoreError =>
      'खरेदी पुनर्संचयित करताना त्रुटी. पुन्हा प्रयत्न करा.';

  @override
  String get loading => 'लोड होत आहे...';

  @override
  String get fieldRequired => 'आवश्यक फील्ड';

  @override
  String get addedFeedback => 'जोडले!';

  @override
  String get profile => 'प्रोफाइल';

  @override
  String get exitShoppingMode => 'शॉपिंग मोडमधून बाहेर पडा';

  @override
  String get exit => 'बाहेर पडा';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count निवडले',
      one: '$count निवडले',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'अंदाजे';

  @override
  String get alreadyPurchased => 'आधीच खरेदी केले';

  @override
  String get clearList => 'लिस्ट साफ करा';

  @override
  String get clearPurchased => 'खरेदी केलेले साफ करा';

  @override
  String get share => 'शेअर करा';

  @override
  String get shareViaCode => 'कोडद्वारे शेअर करा';

  @override
  String get importViaCode => 'कोडद्वारे आयात करा';

  @override
  String get listAssistant => 'लिस्ट सहाय्यक';

  @override
  String get globalAssistant => 'जागतिक सहाय्यक';

  @override
  String get becomePremium => 'प्रीमियम व्हा';

  @override
  String get manageSubscription => 'सबस्क्रिप्शन व्यवस्थापित करा';

  @override
  String get completePurchase => 'खरेदी पूर्ण करा';

  @override
  String get confirmClearList => 'सर्व आयटम काढायचे?';

  @override
  String get shareListTitle => 'लिस्ट शेअर करा';

  @override
  String get shareThisCode => 'हा कोड शेअर करा:';

  @override
  String get validForLimitedTime => 'मर्यादित कालावधीसाठी वैध';

  @override
  String get importListTitle => 'लिस्ट आयात करा';

  @override
  String get enterCodeHint => 'कोड प्रविष्ट करा';

  @override
  String get confirmArchiveTitle => 'खरेदी पूर्ण करा';

  @override
  String get confirmArchiveContent =>
      'ही खरेदी पूर्ण करून लिस्ट आर्काइव्ह करायची?';

  @override
  String get complete => 'पूर्ण करा';

  @override
  String get listArchived => 'लिस्ट यशस्वीरित्या आर्काइव्ह केली!';

  @override
  String listAdded(String listName) {
    return '$listName जोडले!';
  }

  @override
  String get buy => 'खरेदी करा';

  @override
  String get unmark => 'चिन्ह काढा';

  @override
  String confirmDeleteItems(int count) {
    return '$count आयटम काढायचे?';
  }

  @override
  String get confirmDeleteTitle => 'पुष्टी करा';

  @override
  String confirmContent(int count) {
    return '$count आयटम काढायचे?';
  }

  @override
  String get archiveList => 'लिस्ट आर्काइव्ह करा';

  @override
  String get pantryAppBar => 'पॅन्ट्री';

  @override
  String get generateShoppingList => 'शॉपिंग लिस्ट तयार करा';

  @override
  String get pantryEmpty => 'पॅन्ट्री रिकामी आहे';

  @override
  String get pantryEmptySubtitle => 'तुम्हाला घरी ठेवायचे असलेले उत्पादन जोडा';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit आयटम खरेदी करणे आवश्यक आहे';
  }

  @override
  String get noItemsToBuy => 'खरेदी करण्यासाठी कोणतेही आयटम नाहीत';

  @override
  String get newPantryList => 'पॅन्ट्री शॉपिंग';

  @override
  String get newListTitle => 'नवीन शॉपिंग लिस्ट';

  @override
  String itemsWillBeAdded(int count) {
    return '$count आयटम जोडले जातील';
  }

  @override
  String get listNameLabel => 'लिस्टचे नाव';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" लिस्ट $count आयटमसह तयार केली';
  }

  @override
  String get noTracking => 'ट्रॅकिंग नाही';

  @override
  String get markAsPurchased => 'खरेदी केले म्हणून चिन्हांकित करा';

  @override
  String editPantryItem(String name) {
    return '$name संपादित करा';
  }

  @override
  String get idealQuantity => 'आदर्श प्रमाण';

  @override
  String get currentQuantity => 'सध्याचे प्रमाण';

  @override
  String get consumed => 'वापरले';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name पुन्हा साठवले $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'पॅन्ट्रीमधून \"$name\" काढायचे?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name संपादित करा';
  }

  @override
  String get scanProductTitle => 'उत्पादन स्कॅन करा';

  @override
  String get positionBarcodeCenter => 'बारकोड मध्यभागी ठेवा';

  @override
  String get product => 'उत्पादन';

  @override
  String get settingsAppBar => 'सेटिंग्ज';

  @override
  String get language => 'भाषा';

  @override
  String get languagePortuguese => 'पोर्तुगीज (ब्राझील)';

  @override
  String get languageEnglish => 'इंग्रजी';

  @override
  String get languageSystem => 'सिस्टम डीफॉल्ट';

  @override
  String get chooseLanguage => 'भाषा निवडा';

  @override
  String get searchLanguage => 'भाषा शोधा...';

  @override
  String get currency => 'चलन';

  @override
  String get chooseCurrency => 'चलन निवडा';

  @override
  String get searchCurrency => 'चलन शोधा...';

  @override
  String get appearance => 'स्वरूप';

  @override
  String get light => 'लाइट';

  @override
  String get system => 'सिस्टम';

  @override
  String get dark => 'डार्क';

  @override
  String get themeColor => 'थीम रंग';

  @override
  String get dynamicColors => 'डायनॅमिक रंग';

  @override
  String get dynamicColorsSubtitle =>
      'तुमच्या वॉलपेपरवर आधारित रंगांचा वापर करा';

  @override
  String get dynamicColorsEnabledWarning =>
      'थीम रंग प्रभावी होण्यासाठी डायनॅमिक रंग अक्षम करा';

  @override
  String get finance => 'वित्त';

  @override
  String get monthlyBudgetNav => 'मासिक बजेट';

  @override
  String get budgetSubtitle => 'तुमचा मासिक खर्च ट्रॅक करा';

  @override
  String get data => 'डेटा';

  @override
  String get backupNav => 'बॅकअप';

  @override
  String get backupSubtitle => 'तुमचा डेटा एक्सपोर्ट किंवा आयात करा';

  @override
  String get about => 'बद्दल';

  @override
  String get version => 'आवृत्ती';

  @override
  String get privacy => 'गोपनीयता';

  @override
  String get termsOfUse => 'वापराच्या अटी';

  @override
  String get myAchievements => 'माझी उपलब्धी';

  @override
  String get itemsPurchased => 'वस्तू खरेदी केल्या';

  @override
  String get totalSavings => 'एकूण बचत';

  @override
  String get currentStreak => 'वर्तमान स्ट्रीक';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवस',
      one: '$count दिवस',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'अनलॉक केलेले बॅज';

  @override
  String get badgeBeginner => 'नवशिक्या';

  @override
  String get badgeOrganized => 'संघटित';

  @override
  String get badgeSavingMaster => 'सेव्हिंग मास्टर';

  @override
  String get badgeSuperPlanner => 'सुपर प्लॅनर';

  @override
  String get backupTitle => 'बॅकअप';

  @override
  String get backupPremiumDescription =>
      'बॅकअप आणि एक्सपोर्ट हे प्रीमियम वैशिष्ट्य आहे';

  @override
  String get exportData => 'डेटा एक्सपोर्ट करा';

  @override
  String get exportDataSubtitle => 'सर्व लिस्ट JSON म्हणून जतन करा';

  @override
  String get importData => 'डेटा आयात करा';

  @override
  String get importDataSubtitle => 'JSON वरून लिस्ट पुनर्संचयित करा';

  @override
  String get importJsonTitle => 'JSON आयात करा';

  @override
  String get importJsonHint => 'बॅकअप JSON येथे पेस्ट करा...';

  @override
  String get backupExported => 'बॅकअप एक्सपोर्ट केला!';

  @override
  String get budgetAppBar => 'मासिक बजेट';

  @override
  String get budgetPremiumLocked => 'जागतिक मासिक बजेट प्रीमियम आहे';

  @override
  String get budgetUpgradePrompt => 'अनलॉक करण्यासाठी अपग्रेड करा';

  @override
  String get noBudgetDefined => 'बजेट सेट केले नाही';

  @override
  String totalEstimated(String amount) {
    return 'एकूण अंदाजे: $amount';
  }

  @override
  String get setBudgetButton => 'बजेट सेट करा';

  @override
  String get budgetLists => 'लिस्ट';

  @override
  String get budgetValueLabel => 'रक्कम';

  @override
  String get setBudgetTitle => 'मासिक बजेट';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'सर्व';

  @override
  String get filterPending => 'प्रलंबित';

  @override
  String get filterPurchased => 'खरेदी केलेले';

  @override
  String get sortName => 'नाव';

  @override
  String get sortCategory => 'वर्ग';

  @override
  String get sortDate => 'तारीख';

  @override
  String get sortManual => 'मॅन्युअल';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$total पैकी $purchased आयटम';
  }

  @override
  String progressBudget(String amount) {
    return 'बजेट: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'एकूण: $amount';
  }

  @override
  String get addItem => 'आयटम जोडा';

  @override
  String get itemName => 'आयटमचे नाव';

  @override
  String get quantityShort => 'प्रमाण';

  @override
  String get unit => 'युनिट';

  @override
  String get category => 'वर्ग';

  @override
  String get estimatedPrice => 'अंदाजे किंमत';

  @override
  String get addItemPrice => 'अंदाजे किंमत';

  @override
  String get editItem => 'आयटम संपादित करा';

  @override
  String get quantityFull => 'प्रमाण';

  @override
  String get editItemPrice => 'अंदाजे किंमत';

  @override
  String get addToPantry => 'पॅन्ट्रीमध्ये जोडा';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" तुमच्या पॅन्ट्रीमध्ये जोडायचे?';
  }

  @override
  String get yes => 'होय';

  @override
  String get productName => 'उत्पादनाचे नाव';

  @override
  String get idealQty => 'आदर्श प्रमाण';

  @override
  String get currentQty => 'सध्याचे प्रमाण';

  @override
  String get trackStock => 'स्टॉक ट्रॅक करा';

  @override
  String get trackStockActive => 'शॉपिंग सूचनांमध्ये दिसते';

  @override
  String get trackStockInactive => 'शॉपिंग सूचना तयार करत नाही';

  @override
  String get createListDialog => 'लिस्ट तयार करा';

  @override
  String get renameListDialog => 'लिस्ट पुनर्नामित करा';

  @override
  String get listHistory => 'लिस्ट इतिहास';

  @override
  String get myLists => 'माझ्या लिस्ट';

  @override
  String get viewActive => 'सक्रिय पहा';

  @override
  String get viewHistory => 'इतिहास पहा';

  @override
  String get noArchivedLists => 'कोणत्याही आर्काइव्ह केलेल्या लिस्ट नाहीत';

  @override
  String get noActiveLists => 'कोणत्याही सक्रिय लिस्ट नाहीत';

  @override
  String completedOn(String date) {
    return '$date रोजी पूर्ण';
  }

  @override
  String get sharedLabel => 'शेअर केले';

  @override
  String get restore => 'पुनर्संचयित करा';

  @override
  String get removeSharedTooltip => 'काढा';

  @override
  String get deleteListTitle => 'लिस्ट हटवा';

  @override
  String deleteListContent(String name) {
    return 'तुम्हाला \"$name\" हटवायचे असल्याची खात्री आहे? सर्व आयटम काढले जातील.';
  }

  @override
  String get removeSharedListTitle => 'शेअर केलेली लिस्ट काढा';

  @override
  String removeSharedListContent(String name) {
    return 'तुमच्या लिस्टमधून \"$name\" काढायचे? मूळ लिस्टवर परिणाम होणार नाही.';
  }

  @override
  String get createNewList => 'नवीन लिस्ट तयार करा';

  @override
  String get aiAssistant => 'AI सहाय्यक';

  @override
  String get aiAssistantDescription =>
      'आमच्या AI सहाय्यकासह स्मार्ट सूचना, पाककृती आणि वैयक्तिक टिपा मिळवा.';

  @override
  String get generalAssistant => 'सामान्य सहाय्यक';

  @override
  String get newChat => 'नवीन गप्पा';

  @override
  String get noHistory => 'चॅट इतिहास नाही';

  @override
  String get deleteSession => 'चॅट हटवा';

  @override
  String get deleteSessionConfirm =>
      'तुम्हाला खात्री आहे की तुम्ही ही चॅट हटवू इच्छिता? संदेश कायमचे गमावले जातील.';

  @override
  String get clearHistory => 'इतिहास साफ करा';

  @override
  String get clearHistoryConfirm => 'या सत्रातील सर्व संदेश साफ करायचे?';

  @override
  String get chatHint => 'तुमचा संदेश टाइप करा...';

  @override
  String get chatHintBlocked => 'चॅट करण्यासाठी AI अनलॉक करा';

  @override
  String chatError(String error) {
    return 'चॅट लोड करताना त्रुटी: $error';
  }

  @override
  String get aiAssistantTitle => 'एआय सहाय्यक';

  @override
  String get closeSheet => 'बंद करा';

  @override
  String get scanBarcodeTitle => 'बारकोड स्कॅन करा';

  @override
  String get listHelp => 'तुमच्या लिस्टमध्ये कशी मदत करू?';

  @override
  String get generalHelp => 'तुमच्या खरेदीमध्ये आज कशी मदत करू?';

  @override
  String get chatSubtitle => 'आयटम सूचना, पाककृती किंवा बचत टिपांसाठी विचारा.';

  @override
  String get aiError =>
      'क्षमस्व, तुमची विनंती प्रक्रिया करताना त्रुटी आली. तुमचे कनेक्शन तपासा किंवा नंतर पुन्हा प्रयत्न करा.';

  @override
  String get aiLimitAlmostReached => 'AI संदेश जवळजवळ संपले';

  @override
  String get unlockAi => 'अमर्यादित AI अनलॉक करा';

  @override
  String get aiTeaserFallback =>
      'पूर्ण प्रतिसाद अनलॉक करण्यासाठी प्रीमियमची सदस्यता घ्या आणि तुमच्या खरेदीसाठी अमर्यादित AI टिपा मिळवा...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI क्रिया या महिन्यात शिल्लक आहेत — अमर्यादित श्रेणीसुधारित करा';
  }

  @override
  String get aiUsageExhausted =>
      'मासिक AI मर्यादा गाठली. अमर्यादित → साठी प्रो वर श्रेणीसुधारित करा';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'प्रीमियम वैशिष्ट्ये\nअनलॉक करण्यासाठी लॉगिन करा';

  @override
  String get signInGoogle => 'Google ने साइन इन करा';

  @override
  String get signInApple => 'Apple ने साइन इन करा';

  @override
  String get continueAsGuest => 'पाहुणे म्हणून सुरू ठेवा';

  @override
  String get onboardingWelcomeTitle => 'KipiList मध्ये आपले स्वागत आहे';

  @override
  String get onboardingWelcomeDesc =>
      'तुमची खरेदी व्यवस्थापित करण्याचा आणि पैसे वाचवण्याचा सर्वात हुशार मार्ग.';

  @override
  String get onboardingSetupTitle => 'तुमचा अनुभव वैयक्तिकृत करा';

  @override
  String get onboardingSetupDesc =>
      'तुम्हाला KipiList कसे दिसावे आणि तुमच्यासाठी कसे कार्य करायचे ते निवडा.';

  @override
  String get onboardingLoginTitle => 'क्लाउडवर सर्वकाही जतन करा';

  @override
  String get onboardingLoginDesc =>
      'तुमचा डेटा तुमच्या सर्व डिव्हाइसेसवर सिंक केला आहे';

  @override
  String get onboardingShareTitle => 'तुम्हाला आवडत असलेल्यांसोबत शेअर करा';

  @override
  String get onboardingShareDesc =>
      'रिअल टाइममध्ये कुटुंब आणि मित्रांसह याद्या समक्रमित करा';

  @override
  String get onboardingPremiumTitle => 'सर्व वैशिष्ट्ये अनलॉक करा';

  @override
  String get onboardingPremiumSubtitle =>
      'तुमच्या खरेदी सूचीमधून जास्तीत जास्त मिळवा';

  @override
  String get onboardingAnnualBadge => 'सर्वोत्तम मूल्य';

  @override
  String get onboardingMonthlyLabel => 'मासिक';

  @override
  String get onboardingAnnualLabel => 'वार्षिक';

  @override
  String get onboardingViewAllPlans => 'सर्व योजना पहा';

  @override
  String get onboardingSubscribeCta => 'सदस्यता घ्या';

  @override
  String get onboardingCancelAnytime => 'कधीही रद्द करा. बांधिलकी नाही.';

  @override
  String get onboardingContinueAsGuest => 'अतिथी म्हणून सुरू ठेवा';

  @override
  String get onboardingRestore => 'पुनर्संचयित करा';

  @override
  String get onboardingRestoreDesc =>
      'आधीपासूनच सदस्यता आहे? ते पुनर्संचयित करण्यासाठी येथे टॅप करा.';

  @override
  String get onboardingMaybeLater => 'कदाचित नंतर';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'अहो $name, तुमची खरेदी योग्य प्रकारे आयोजित करा.';
  }

  @override
  String get onboardingSlide1Title => 'स्मार्ट खरेदी याद्या';

  @override
  String get onboardingSlide1Body =>
      'त्वरित सूची तयार करा आणि सामायिक करा. Kipi तुमच्या सवयींवर आधारित वस्तू आपोआप जोडते.';

  @override
  String get onboardingSlide2Title => 'किपीला भेटा';

  @override
  String get onboardingSlide2Body =>
      'काहीही विचारा — सूची तयार करा, पाककृती शोधा, तुमची पॅन्ट्री ट्रॅक करा, तुमच्या आठवड्याची योजना करा.';

  @override
  String get onboardingSlide3Title => 'पेंट्री आणि जेवण नियोजन';

  @override
  String get onboardingSlide3Body =>
      'तुमच्याकडे काय आहे याचा मागोवा घ्या, जेवणाची योजना करा आणि आपोआप खरेदी सूची तयार करा.';

  @override
  String get onboardingExit => 'बाहेर पडा';

  @override
  String get onboardingPersonalizationTitle => 'चला तुम्हाला ओळखू या';

  @override
  String get onboardingPersonalizationDesc =>
      'तुमच्या सूचना वैयक्तिकृत करण्यासाठी आणि खरेदी अधिक स्मार्ट करण्यासाठी आम्ही याचा वापर करू.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'तुमचे आवडते अन्न कोणते आहे?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'उदा. पिझ्झा, सुशी, लसाग्ना...';

  @override
  String get onboardingPersonalizationCta => 'चालू ठेवा';

  @override
  String get onboardingPersonalizationSkip => 'आतासाठी वगळा';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'सुरू ठेवण्यासाठी आम्हाला तुमचे आवडते पदार्थ सांगा';

  @override
  String get settingsDefaultScreen => 'डीफॉल्ट होम स्क्रीन';

  @override
  String get settingsDefaultScreenSubtitle =>
      'खरेदी सूची किंवा एआय चॅट यापैकी निवडा';

  @override
  String get settingsScreenList => 'खरेदी सूची';

  @override
  String get settingsScreenChat => 'एआय गप्पा';

  @override
  String loginError(String error) {
    return 'लॉगिन त्रुटी: $error';
  }

  @override
  String get paywallTitle => 'KipiList प्रीमियम';

  @override
  String get paywallLoadingError =>
      'ऑफर लोड करताना त्रुटी. पुन्हा प्रयत्न करा.';

  @override
  String get paywallPurchaseError =>
      'खरेदी पूर्ण करू शकलो नाही. पुन्हा प्रयत्न करा.';

  @override
  String get paywallRestoreError =>
      'पुनर्संचयित करण्यासाठी कोणतीही सक्रिय सदस्यता आढळली नाही.';

  @override
  String paywallTrialDays(Object days) {
    return '$days दिवस विनामूल्य';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आठवडे मोफत',
      one: '$count आठवडा मोफत',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count महिने मोफत',
      one: '$count महिना मोफत',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => '7 दिवसांसाठी KipiList Pro मोफत वापरून पहा';

  @override
  String get paywallTrialSubtitle => 'कधीही रद्द करा. आज कोणतेही शुल्क नाही.';

  @override
  String get paywallTrialCta => 'विनामूल्य चाचणी सुरू करा';

  @override
  String get recipeAddToList => 'खरेदी सूचीमध्ये जोडा';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$listName मध्ये $count घटक जोडले';
  }

  @override
  String get noListSelected => 'कोणतीही यादी निवडलेली नाही. प्रथम सूची उघडा.';

  @override
  String get paywallFeaturesTitle => 'आपल्याला आवश्यक असलेली प्रत्येक गोष्ट:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI तुमची यादी आपोआप व्यवस्थित करते';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'आपल्याला आवश्यक तितक्या याद्या तयार करा';

  @override
  String get paywallFeatureDescSharing => 'रिअल टाइममध्ये एकत्र खरेदी करा';

  @override
  String get paywallFeatureDescPantry => 'तुमच्या घरी काय आहे याचा मागोवा घ्या';

  @override
  String get paywallFeatureDescBudget => 'दर महिन्याच्या बजेटवर रहा';

  @override
  String get paywallFeatureUnlimitedLists => 'अमर्यादित याद्या';

  @override
  String get paywallFeatureSmartAI => 'स्मार्ट AI';

  @override
  String get paywallFeatureExpenseControl => 'खर्चावर नियंत्रण';

  @override
  String get paywallFeatureSharing => 'शेअरिंग';

  @override
  String get paywallBeforeAfterTitle => 'AI आधी आणि नंतर:';

  @override
  String get paywallLabelCommon => 'सामान्य';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'तांदूळ';

  @override
  String get paywallBeforeItem2 => 'साबण';

  @override
  String get paywallBeforeItem3 => 'मांस';

  @override
  String get paywallBeforeItem4 => 'ब्रेड';

  @override
  String get paywallAfterItem1 => 'धान्य';

  @override
  String get paywallAfterItem2 => 'साफसफाई';

  @override
  String get paywallAfterItem3 => 'मांस';

  @override
  String get paywallAfterItem4 => 'बेकरी';

  @override
  String get paywallTestimonialsTitle => 'आमचे वापरकर्ते काय म्हणतात:';

  @override
  String get paywallTestimonial1Name => 'ॲन एस.';

  @override
  String get paywallTestimonial1Text =>
      'AI काही सेकंदात माझी खरेदी आयोजित करते. मी प्रति मार्केट ट्रिप 20 मिनिटे वाचवतो.';

  @override
  String get paywallTestimonial2Name => 'चार्ल्स एम.';

  @override
  String get paywallTestimonial2Text =>
      'मी पुन्हा एक यादी आयटम विसरलो नाही. एआय चॅट खळबळजनक आहे!';

  @override
  String get paywallSocialProof => '+2,400 कुटुंबे त्याचा वापर करतात';

  @override
  String get paywallCtaUnlock => 'PRO अनलॉक करा';

  @override
  String get paywallBestValue => 'सर्वोत्तम मूल्य';

  @override
  String get paywallMostPopular => 'सर्वाधिक लोकप्रिय';

  @override
  String get paywallProLabel => 'प्रो';

  @override
  String get paywallSafeCheckout => 'सुरक्षित पेमेंट';

  @override
  String get paywallSelectPlan => 'तुमची योजना निवडा:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% जतन करा';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'फक्त $price/महिना';
  }

  @override
  String get paywallPackageAnnual => 'वार्षिक योजना';

  @override
  String get paywallPackageMonthly => 'मासिक योजना';

  @override
  String get paywallPackageLifetime => 'आजीवन प्रवेश';

  @override
  String get paywallCancelAnytime => 'कधीही रद्द करा. बांधिलकी नाही.';

  @override
  String paywallTrialInCard(int days) {
    return 'पहिले $days दिवस मोफत';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Play द्वारे सुरक्षित · कधीही रद्द करा';

  @override
  String get paywallPolicy => 'गोपनीयता धोरण';

  @override
  String get paywallTerms => 'वापराच्या अटी';

  @override
  String get paywallRestore => 'पुनर्संचयित करा';

  @override
  String get paywallHeroHeadline => 'Kipi AI नेहमी तुमच्या पाठीशी';

  @override
  String get paywallHeroSubtitle =>
      'आयटम जोडा, सूची व्यवस्थापित करा आणि तुमच्या खिशात AI सह वेळ वाचवा';

  @override
  String get paywallBenefit1Desc =>
      '24/7 आयटम जोडते, व्यवस्थापित करते आणि सुचवते';

  @override
  String get paywallBenefit2Desc => '3-सूची मर्यादा नाही';

  @override
  String get paywallBenefit3Desc => 'खर्च ट्रॅकिंग आणि कुटुंब याद्या';

  @override
  String get paywallPackageMonthlyDesc => 'पूर्ण लवचिकता';

  @override
  String paywallCtaTrialDays(int days) {
    return 'विनामूल्य प्रारंभ करा — $days दिवस';
  }

  @override
  String get premiumUpgrade => 'अनलॉक करण्यासाठी अपग्रेड करा';

  @override
  String get itemRemoved => 'आयटम काढला';

  @override
  String get undo => 'पूर्ववत करा';

  @override
  String get emptyListTitle => 'तुमची लिस्ट रिकामी आहे';

  @override
  String get emptyListSubtitle => 'सुरू करण्यासाठी आयटम जोडा';

  @override
  String get noListFoundTitle => 'कोणतीही लिस्ट सापडली नाही';

  @override
  String get noListFoundSubtitle =>
      'सुरू करण्यासाठी तुमची पहिली लिस्ट तयार करा';

  @override
  String get createFirstList => 'पहिली लिस्ट तयार करा';

  @override
  String get listBudgetTitle => 'लिस्ट बजेट';

  @override
  String get budgetAmountLabel => 'बजेट रक्कम';

  @override
  String get removeBudget => 'काढा';

  @override
  String get prefUnlimitedLists => 'अमर्यादित लिस्ट';

  @override
  String get prefSharing => 'लिस्ट शेअर करा';

  @override
  String get prefFullHistory => 'पूर्ण इतिहास';

  @override
  String get prefExportData => 'डेटा एक्सपोर्ट करा';

  @override
  String get prefCustomThemes => 'सानुकूल थीम';

  @override
  String get prefMonthlyBudget => 'जागतिक मासिक बजेट';

  @override
  String get prefAIAssistant => 'वैयक्तिक AI सहाय्यक';

  @override
  String get prefUnlimitedPantry => 'अमर्यादित पॅन्ट्री';

  @override
  String get prefInteractiveArtifacts => 'संवादात्मक AI आर्टिफॅक्ट्स';

  @override
  String get themeGreen => 'हिरवा';

  @override
  String get themeBlue => 'निळा';

  @override
  String get themePurple => 'जांभळा';

  @override
  String get themeRed => 'लाल';

  @override
  String get themeOrange => 'नारिंगी';

  @override
  String get themePink => 'गुलाबी';

  @override
  String get themeIndigo => 'इंडिगो';

  @override
  String get themeAmber => 'एम्बर';

  @override
  String get themeTeal => 'टील';

  @override
  String get themeBrown => 'तपकिरी';

  @override
  String get catFruits => 'फळे';

  @override
  String get catCleaning => 'स्वच्छता';

  @override
  String get catBeverages => 'पेये';

  @override
  String get catBakery => 'बेकरी';

  @override
  String get catOthers => 'इतर';

  @override
  String get unitPack => 'पॅक';

  @override
  String get shareSubject => 'शॉपिंग लिस्ट';

  @override
  String get monthlyBudgetTitle => 'मासिक बजेट';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'लिस्ट हटवा';

  @override
  String get pantryItemRemoved => 'आयटम काढला';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit आयटम खरेदी करणे आवश्यक आहेत',
      one: '$deficit आयटम खरेदी करणे आवश्यक आहे',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'कार्ट एकूण';

  @override
  String get restockLabel => 'पुन्हा साठवा';

  @override
  String get advancedFeatures => 'प्रगत वैशिष्ट्ये';

  @override
  String get selectAll => 'सर्व निवडा';

  @override
  String get deselectAll => 'सर्व अडीज करा';

  @override
  String get monthlyBudgetAppBar => 'मासिक बजेट';

  @override
  String get budgetEditTitle => 'मासिक बजेट';

  @override
  String get budgetDashboardTitle => 'डॅशबोर्ड';

  @override
  String get selectListForDashboard => 'डॅशबोर्ड पाहण्यासाठी एक लिस्ट निवडा.';

  @override
  String get spendingAnalysis => 'खर्च विश्लेषण';

  @override
  String get noItemsToAnalyze =>
      'विश्लेषण करण्यासाठी लिस्टमध्ये कोणतेही आयटम नाहीत.';

  @override
  String get markItemsToSeeAnalysis =>
      'विश्लेषण पाहण्यासाठी आयटम खरेदी केले म्हणून चिन्हांकित करा.';

  @override
  String get totalSpending => 'एकूण खर्च';

  @override
  String get spendingByCategory => 'वर्गानुसार खर्च';

  @override
  String get achievements => 'कामगिरी';

  @override
  String get exportPdfExcel => 'PDF/Excel एक्सपोर्ट करा';

  @override
  String get exportPdf => 'PDF म्हणून एक्सपोर्ट करा';

  @override
  String get exportExcel => 'Excel म्हणून एक्सपोर्ट करा';

  @override
  String get organizingAi => 'AI सह आयोजित करत आहे...';

  @override
  String get yesLabel => 'होय';

  @override
  String get noLabel => 'नाही';

  @override
  String get shareListText => 'माझी शॉपिंग लिस्ट';

  @override
  String get emptyListAddItems => 'तुमची लिस्ट रिकामी आहे! प्रथम आयटम जोडा. ℹ️';

  @override
  String get listOrganizedMagic => 'लिस्ट वर्गांनुसार जादूने आयोजित केली! ✨';

  @override
  String get shoppingMode => 'शॉपिंग मोड';

  @override
  String get smartOrganization => 'स्मार्ट आयोजन';

  @override
  String get savings => 'बचत';

  @override
  String get shoppingModeHeader => 'शॉपिंग मोड';

  @override
  String get shareAsText => 'फॉरमॅट केलेला मजकूर म्हणून आयटम पाठवा';

  @override
  String get shareRealtime => 'इतर लोकांसह रिअल-टाइम सिंक';

  @override
  String get quickRecipe => 'त्वरित पाककृती';

  @override
  String get quickRecipePrompt => 'माझ्या लिस्टमधील आयटमसह पाककृती सुचवा.';

  @override
  String get economyTips => 'बचत टिपा';

  @override
  String get economyTipsPrompt => 'या खरेदीवर मी पैसे कसे वाचवू शकतो?';

  @override
  String get organizeAisles => 'आयल्सनुसार आयोजित करा';

  @override
  String get organizeAislesPrompt => 'मार्केट आयल्सनुसार आयोजित करा.';

  @override
  String get recipeSuggestion => 'पाककृती सूचना';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining क्रेडिट शिल्लक';
  }

  @override
  String get addAllToList => 'सर्व लिस्टमध्ये जोडा';

  @override
  String get organizeByAisles => 'आयल्सनुसार आयोजित करा';

  @override
  String get voiceTranscriptionTooltip => 'व्हॉइस टायपिंग (विनामूल्य)';

  @override
  String get aiVoiceCommandTooltip => 'AI व्हॉइस कमांड (प्रीमियम)';

  @override
  String get voiceCommandTitle => 'AI व्हॉइस कमांड';

  @override
  String get voiceCommandContent =>
      'तुमची लिस्ट व्यवस्थापित करण्यासाठी नैसर्गिकपणे बोला!\n\nउदाहरणे:\n• \'ब्रेड, चीज आणि हॅम जोडा\'\n• \'लॉन्ड्री डिटर्जंट काढा\'\n• \'थीम निळ्यामध्ये बदला\'\n\nहे KipiList प्रीमियमचे अनन्य वैशिष्ट्य आहे.';

  @override
  String get voiceCommandPlanBtn => 'प्लॅन पहा';

  @override
  String get itemsAddedSuccess => 'आयटम यशस्वीरित्या लिस्टमध्ये जोडले!';

  @override
  String get viewList => 'लिस्ट पहा';

  @override
  String get feedbackTitle => 'अभिप्राय पाठवा';

  @override
  String get feedbackPrompt => 'तुम्ही काय शेअर करू इच्छिता?';

  @override
  String get feedbackTypeBug => 'बग अहवाल द्या';

  @override
  String get feedbackTypeBugHint => 'काहीतरी योग्यरित्या काम करत नाही';

  @override
  String get feedbackTypeSuggestion => 'सूचना';

  @override
  String get feedbackTypeSuggestionHint => 'अॅप सुधारण्यासाठी कल्पना';

  @override
  String get feedbackTypeTranslation => 'भाषांतर समस्या';

  @override
  String get feedbackTypeTranslationHint => 'चुकीचे किंवा विचित्र भाषांतर';

  @override
  String get feedbackTypeFeature => 'वैशिष्ट्य विनंती';

  @override
  String get feedbackTypeFeatureHint => 'तुम्हाला हवे असलेले वैशिष्ट्य';

  @override
  String get feedbackTypeOther => 'इतर';

  @override
  String get feedbackTypeOtherHint => 'इतर प्रकारचा अभिप्राय';

  @override
  String get feedbackHint => 'आपला अभिप्राय तपशीलवार वर्णन करा...';

  @override
  String get feedbackSend => 'अभिप्राय पाठवा';

  @override
  String get feedbackSending => 'पाठवत आहे...';

  @override
  String get feedbackThankYou => 'धन्यवाद!';

  @override
  String get feedbackThankYouMessage =>
      'तुमचा अभिप्राय प्राप्त झाला आहे आणि तो KipiList सर्वांसाठी सुधारण्यास मदत करतो.';

  @override
  String get feedbackBack => 'मागे';

  @override
  String feedbackError(String error) {
    return 'पाठवताना त्रुटी: $error';
  }

  @override
  String get feedbackRetry => 'पुन्हा प्रयत्न करा';

  @override
  String get feedbackSettingsTitle => 'अभिप्राय पाठवा';

  @override
  String get feedbackSettingsSubtitle =>
      'बग कळवा, सुधारणा सुचवा किंवा भाषांतर दुरुस्त करा';

  @override
  String get aiEnergy => 'एआय एनर्जी';

  @override
  String get searchInConversation => 'संभाषणात शोधा...';

  @override
  String get noMessagesFound => 'कोणतेही संदेश आढळले नाहीत';

  @override
  String get suggestedQuestions => 'सुचवलेले प्रश्न:';

  @override
  String get shoppingAssistant => 'खरेदी सहाय्यक';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$total पैकी $purchased खरेदी केले';
  }

  @override
  String get estimatedCost => 'अंदाज';

  @override
  String get viewItems => 'आयटम पहा';

  @override
  String get noItemsInList => 'सूचीमध्ये कोणतेही आयटम नाहीत';

  @override
  String get longHistoryWarning =>
      'दीर्घ इतिहास: अधिक चांगल्या कामगिरीसाठी सहाय्यक नवीनतम संदेशांवर लक्ष केंद्रित करतो.';

  @override
  String get listening => 'ऐकत आहे...';

  @override
  String get addDirectToList => 'थेट सूचीमध्ये जोडा';

  @override
  String get unlockFullResponse => 'पूर्ण प्रतिसाद अनलॉक करा';

  @override
  String get switchList => 'सूची स्विच करा';

  @override
  String get marketMode => 'मार्केट मोड';

  @override
  String get backToChat => 'चॅट वर परत';

  @override
  String get finishShopping => 'खरेदी पूर्ण करा';

  @override
  String get welcomeAiAssistant => 'AI सहाय्यकामध्ये आपले स्वागत आहे';

  @override
  String get createListToStartAi =>
      'स्मार्ट चॅट वापरणे सुरू करण्यासाठी खरेदी सूची तयार करा.';

  @override
  String get howCanIHelp => 'मी कशी मदत करू शकतो?';

  @override
  String get chatSubtitleShort => 'किंमती, पाककृती, संस्था याबद्दल विचारा...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total खरेदी केले';
  }

  @override
  String get quickReplies => 'द्रुत प्रत्युत्तरे:';

  @override
  String get voiceProFeature =>
      'प्रगत व्हॉइस कमांड प्रो आहेत. मूलभूत श्रुतलेख सक्षम करत आहे...';

  @override
  String get viewPro => 'प्रो पहा';

  @override
  String get errorLoadingChat => 'अरेरे! चॅट लोड करताना काहीतरी चूक झाली.';

  @override
  String get errorLoadingChatSubtitle =>
      'तुमचे कनेक्शन तपासा किंवा नंतर पुन्हा प्रयत्न करा.';

  @override
  String get errorOscillation =>
      'हे नेटवर्क दोलन किंवा तात्पुरत्या अनुपलब्धतेमुळे उद्भवू शकते. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get activeListening => 'सक्रिय ऐकणे';

  @override
  String get whatToDoWithItem => 'तुम्हाला या आयटमचे काय करायचे आहे?';

  @override
  String get viewDetails => 'तपशील पहा';

  @override
  String get openMenu => 'मेनू उघडा';

  @override
  String get viewRecipe => 'रेसिपी पहा';

  @override
  String get recipeCreated => 'रेसिपी तयार केली!';

  @override
  String get editRecipe => 'संपादित करा';

  @override
  String get deleteRecipe => 'हटवा';

  @override
  String get deleteRecipeConfirm => 'ही रेसिपी हटवायची?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'तुम्हाला खात्री आहे की तुम्ही \"$recipeName\" हटवू इच्छिता? ही क्रिया पूर्ववत केली जाऊ शकत नाही.';
  }

  @override
  String get ingredients => 'घटक';

  @override
  String get instructions => 'सूचना';

  @override
  String get prepTime => 'तयारीचा वेळ';

  @override
  String get recipeSaved => 'रेसिपी जतन केली!';

  @override
  String get noRecipesSaved => 'कोणतीही रेसिपी जतन केलेली नाही';

  @override
  String get noRecipesSavedHint =>
      'खालील बटणावर टॅप करून तुमची पहिली सानुकूल रेसिपी तयार करा.';

  @override
  String get myRecipes => 'माझ्या रेसिपी';

  @override
  String get newRecipe => 'नवीन रेसिपी';

  @override
  String get loadingRecipes => 'तुमच्या रेसिपी लोड होत आहेत...';

  @override
  String get errorLoadingRecipes => 'रेसिपी लोड करताना त्रुटी';

  @override
  String get addIngredient => 'घटक जोडा';

  @override
  String get saveRecipe => 'जतन करा';

  @override
  String get recipeName => 'रेसिपीचे नाव';

  @override
  String get shortDescription => 'लघु वर्णन';

  @override
  String get prepTimeMinutes => 'तयारीचा वेळ (मिनिटे)';

  @override
  String get instructionsHint => 'प्रत्येक ओळीवर एक पायरी टाइप करा...';

  @override
  String get addPhoto => 'फोटो जोडा';

  @override
  String get imageUrlPlaceholder => 'किंवा प्रतिमेची URL पेस्ट करा';

  @override
  String get tags => 'टॅग';

  @override
  String get recipeTags => 'रेसिपी टॅग';

  @override
  String get suggestedTags => 'सुचवलेले';

  @override
  String get searchRecipes => 'रेसिपी शोधा...';

  @override
  String get filterByTag => 'टॅगनुसार फिल्टर करा';

  @override
  String get allTags => 'सर्व';

  @override
  String get recipeDeleted => 'रेसिपी हटवली';

  @override
  String get saveChanges => 'बदल जतन करा';

  @override
  String get editRecipeTitle => 'रेसिपी संपादित करा';

  @override
  String get newRecipeTitle => 'नवीन रेसिपी';

  @override
  String get requiredField => 'आवश्यक';

  @override
  String get chooseImageSource => 'प्रतिमेचा स्रोत निवडा';

  @override
  String get gallery => 'गॅलरी';

  @override
  String get enterUrl => 'URL प्रविष्ट करा';

  @override
  String get recipeImage => 'रेसिपी प्रतिमा';

  @override
  String get removeImage => 'प्रतिमा काढा';

  @override
  String get mealPlannerTitle => 'जेवण नियोजक';

  @override
  String get mealPlannerViewMonthly => 'मासिक दृश्य';

  @override
  String get mealPlannerViewWeekly => 'साप्ताहिक दृश्य';

  @override
  String get mealPlannerNoMeals => 'कोणतेही जेवण नियोजित नाही';

  @override
  String get mealPlannerNoMealsHint => 'जेवण जोडण्यासाठी दिवसावर टॅप करा';

  @override
  String get mealPlannerLoading => 'जेवण योजना लोड होत आहे...';

  @override
  String get mealPlannerError => 'जेवण योजना लोड करताना त्रुटी';

  @override
  String get mealPlannerAddMeal => 'जेवण जोडा';

  @override
  String get mealPlannerEditMeal => 'जेवण संपादित करा';

  @override
  String get mealPlannerDeleteMeal => 'जेवण काढा';

  @override
  String get mealPlannerMealDeleted => 'जेवण काढले';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वाढणी',
      one: '$count वाढणी',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'वाढणी';

  @override
  String get mealPlannerNoteLabel => 'नोंद (पर्यायी)';

  @override
  String get mealPlannerSelectRecipe => 'रेसिपी निवडा';

  @override
  String get mealPlannerSearchRecipes => 'रेसिपी शोधा...';

  @override
  String get mealPlannerNoRecipesFound => 'कोणतीही रेसिपी सापडली नाही';

  @override
  String get mealPlannerNoRecipesHint =>
      'प्रथम रेसिपी टॅबमध्ये रेसिपी तयार करा';

  @override
  String get mealPlannerSave => 'योजनेमध्ये जोडा';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$total पैकी $count जेवण नियोजित';
  }

  @override
  String get mealPlannerGenerateList => 'शॉपिंग लिस्ट तयार करा';

  @override
  String get mealPlannerGenerateListConfirm =>
      'या आठवड्यातील नियोजित जेवणातील सर्व घटक तुमच्या शॉपिंग लिस्टमधून जोडायचे?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'तुमच्या लिस्टमध्ये $count घटक जोडले गेले!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'जोडण्यासाठी कोणतेही घटक नाहीत. प्रथम रेसिपीसह काही जेवणांचे नियोजन करा.';

  @override
  String get mealPlannerGenerateListNoList => 'प्रथम शॉपिंग लिस्ट तयार करा.';

  @override
  String get mealPlannerMealTypeBreakfast => 'न्याहारी';

  @override
  String get mealPlannerMealTypeLunch => 'दुपारचे जेवण';

  @override
  String get mealPlannerMealTypeDinner => 'रात्रीचे जेवण';

  @override
  String get mealPlannerMealTypeSnack => 'नाश्ता';

  @override
  String get mealPlannerDateLabel => 'तारीख';

  @override
  String get mealPlannerWeekEmpty => 'या आठवड्यासाठी काहीही नियोजित नाही';

  @override
  String get mealPlannerWeekEmptyHint =>
      'तुमच्या जेवणाचे नियोजन सुरू करण्यासाठी कोणत्याही दिवसावर टॅप करा!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes मिनीटे';
  }

  @override
  String get inviteToList => 'सूचीसाठी आमंत्रित करा';

  @override
  String get shareApp => 'ॲप शेअर करा';

  @override
  String get shareAppDescription =>
      'KipiList वापरण्यासाठी मित्रांना आमंत्रित करा';

  @override
  String shareReferralText(String url) {
    return 'मी माझी खरेदी आयोजित करण्यासाठी KipiList वापरत आहे! माझ्या लिंकद्वारे डाउनलोड करा आणि आम्हा दोघांना 7 दिवसांचे प्रीमियम मोफत मिळेल: $url';
  }

  @override
  String get shareReferralSubject => '७ दिवसांचे KipiList प्रीमियम मिळवा!';

  @override
  String get gestureHint => 'निवडण्यासाठी धरून ठेवा • काढण्यासाठी स्वाइप करा';

  @override
  String get catalogTitle => 'कॅटलॉग';

  @override
  String get catalogMyFrequents => 'माझे वारंवार';

  @override
  String get catalogSearchGlobal => 'कोणतेही उत्पादन शोधा...';

  @override
  String catalogSearchInCategory(String category) {
    return '$category मध्ये शोधा...';
  }

  @override
  String get catalogSortPopular => 'सर्वात लोकप्रिय';

  @override
  String get catalogSortAZ => 'A-Z';

  @override
  String get catalogFilterNational => 'नागरिक';

  @override
  String get catalogRareSection => 'तुमच्या देशात कमी सामान्य';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return '$count $_temp0 → जोडा';
  }

  @override
  String get catalogProductNotFound => 'उत्पादन आढळले नाही, नाव टाइप करा';

  @override
  String get catalogBrowse => 'कॅटलॉग ब्राउझ करा';

  @override
  String get offlineBanner => 'तुम्ही ऑफलाइन आहात';

  @override
  String get consentTitle => 'गोपनीयता आणि विश्लेषण';

  @override
  String get consentBody =>
      'KipiList तुमचा अनुभव सुधारण्यासाठी Firebase Analytics वापरते. तुमच्या डेटावर आमच्या गोपनीयता धोरणानुसार प्रक्रिया केली जाते.';

  @override
  String get consentAccept => 'स्वीकारा';

  @override
  String get consentDecline => 'नाही, धन्यवाद';

  @override
  String get mealPlannerPantryAllAvailable => 'स्टॉक मध्ये';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count गहाळ आयटम',
      one: '$count गहाळ आयटम',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'कालबाह्यता तारीख';

  @override
  String get notInformed => 'माहिती दिली नाही';

  @override
  String get skip => 'वगळा';

  @override
  String get onboardingAiTitle => 'किपीशी गप्पा मारा';

  @override
  String get onboardingAiGreeting =>
      'हाय! मी किपी आहे, तुमचा वैयक्तिक खरेदी सहाय्यक आहे! 🛒';

  @override
  String get onboardingAiAskName => 'तुझे नाव काय आहे?';

  @override
  String get onboardingAiNameHint => 'तुमचे नाव टाइप करा...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'तुम्हाला भेटून आनंद झाला, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'तुमचे आवडते अन्न कोणते आहे?';

  @override
  String get onboardingAiFoodHint => 'उदा. पिझ्झा, सुशी...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'उत्तम पर्याय! मी तुमच्या सूचीमध्ये काय जोडू इच्छित आहे ते येथे आहे:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'हे चांगले दिसते का? दुसरे काहीतरी टाइप करून पहा!';

  @override
  String get onboardingAiReady =>
      'छान! तुम्ही सुरू करण्यासाठी तयार आहात. चला तुमचे खाते सेट करूया!';

  @override
  String get onboardingAiContinue => 'सुरू ठेवा →';

  @override
  String get connectionError => 'कनेक्शन त्रुटी';

  @override
  String connectionErrorDesc(String error) {
    return 'त्रुटी: $error';
  }

  @override
  String get errorLoadingLists => 'सूची लोड करताना त्रुटी';

  @override
  String get noListsFound => 'याद्या सापडल्या नाहीत';

  @override
  String get backToToday => 'आज परत';

  @override
  String get quickSuggestions => 'जलद सूचना';

  @override
  String get aiEnergyLow => 'कमी AI ऊर्जा';

  @override
  String get aiUnlockUnlimited => 'अमर्यादित AI अनलॉक करा';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 आज';
  }

  @override
  String get aiSubscribeUnlimited => 'अमर्यादित AI साठी सदस्यता घ्या';

  @override
  String get unlockWithAd => 'जाहिरातीसह अनलॉक करा';

  @override
  String get conversationHistoryTitle => 'संभाषण इतिहास';

  @override
  String get noConversationsFound => 'कोणतीही संभाषणे आढळली नाहीत';

  @override
  String get errorLoadingHistory => 'इतिहास लोड करताना त्रुटी';

  @override
  String get deleteConversationTitle => 'संभाषण हटवा';

  @override
  String get deleteConversationConfirm =>
      'ही क्रिया पूर्ववत केली जाऊ शकत नाही.';

  @override
  String get deleteConversation => 'हटवा';

  @override
  String get subscription => 'वर्गणी';

  @override
  String get kipiListProActive => 'KipiList Pro सक्रिय';

  @override
  String get unlockPremiumTitle => 'प्रीमियम अनलॉक करा';

  @override
  String get loadingSubscription => 'सदस्यता लोड करत आहे...';

  @override
  String get errorLoadingSubscription => 'सदस्यता लोड करताना त्रुटी';

  @override
  String get profileSection => 'प्रोफाइल';

  @override
  String get myProfile => 'माझे प्रोफाइल';

  @override
  String get profileSubtitle => 'तुमची प्रोफाइल माहिती';

  @override
  String get customizeAiAssistant => 'AI सहाय्यक सानुकूलित करा';

  @override
  String get assistantHistory => 'सहाय्यक इतिहास';

  @override
  String get assistantHistorySubtitle => 'तुमचा संभाषण इतिहास पहा';

  @override
  String get manageCategories => 'श्रेणी व्यवस्थापित करा';

  @override
  String get manageCategoriesSubtitle => 'श्रेणी जोडा, संपादित करा किंवा काढा';

  @override
  String get customizeAssistant => 'सानुकूल करा';

  @override
  String get assistantName => 'सहाय्यक नाव';

  @override
  String get chooseIcon => 'चिन्ह निवडा';

  @override
  String get profileSaved => 'प्रोफाइल सेव्ह केले';

  @override
  String get errorSavingProfile => 'प्रोफाइल जतन करताना त्रुटी';

  @override
  String get userProfile => 'वापरकर्ता प्रोफाइल';

  @override
  String get profileDescription => 'प्रोफाइल वर्णन';

  @override
  String get preferredMarket => 'पसंतीचा बाजार';

  @override
  String get preferredMarketHint => 'तुम्ही सहसा कुठे खरेदी करता?';

  @override
  String get dietaryRestrictions => 'आहारातील निर्बंध';

  @override
  String get dietaryRestrictionsHint => 'काही आहार प्रतिबंध?';

  @override
  String get marketsToAvoid => 'बाजार टाळण्यासाठी';

  @override
  String get marketsToAvoidHint => 'ज्या मार्केटमध्ये तुम्ही खरेदी करू नका';

  @override
  String get observations => 'निरीक्षणे';

  @override
  String get observationsHint => 'कोणत्याही अतिरिक्त नोट्स?';

  @override
  String get saveProfile => 'प्रोफाइल जतन करा';

  @override
  String get everythingReady => 'सर्व काही तयार!';

  @override
  String get youCompletedList => 'तुम्ही यादी पूर्ण केली!';

  @override
  String get selectCheaperAlternative => 'स्वस्त पर्याय निवडा';

  @override
  String get suggestedItems => 'सुचविलेल्या वस्तू';

  @override
  String get swapped => 'अदलाबदल';

  @override
  String get swap => 'स्वॅप';

  @override
  String get chooseThemeColor => 'थीम रंग निवडा';

  @override
  String get manageCategoriesTitle => 'श्रेण्या व्यवस्थापित करा';

  @override
  String get categoryLimitReached => 'श्रेणी मर्यादा गाठली';

  @override
  String get deleteCategoryTitle => 'श्रेणी हटवा';

  @override
  String deleteCategoryConfirm(String category) {
    return '\"$category\" मधील आयटम \"इतर\" मध्ये हलवले जातील.\nसुरू ठेवायचे?';
  }

  @override
  String get deleteCategory => 'हटवा';

  @override
  String get newCategoryDialog => 'नवीन श्रेणी';

  @override
  String get editCategoryDialog => 'श्रेणी संपादित करा';

  @override
  String get categoryName => 'श्रेणीचे नाव';

  @override
  String get categoryNameHint => 'श्रेणीचे नाव प्रविष्ट करा';

  @override
  String get categoryColorLabel => 'रंग';

  @override
  String get categoryIconLabel => 'चिन्ह';

  @override
  String itemAddedSnack(String name) {
    return '$name जोडले';
  }

  @override
  String get kipiQuickBarHint => 'आपल्याला काय खरेदी करण्याची आवश्यकता आहे?';

  @override
  String replaceItem(String item) {
    return '$item बदला';
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
  String get onboardingHookHeadline => 'किराणा माल पुन्हा कधीही विसरू नका';

  @override
  String get onboardingGoalSaveMoney => 'पैसे वाचवा';

  @override
  String get onboardingGoalNeverForget => 'आयटम कधीही विसरू नका';

  @override
  String get onboardingGoalFaster => 'जलद खरेदी करा';

  @override
  String get onboardingGoalFamily => 'कौटुंबिक खरेदी आयोजित करा';

  @override
  String get onboardingGoalRecipes => 'पाककृती शोधा';

  @override
  String get onboardingGoalPantry => 'पॅन्ट्रीचा मागोवा घ्या';

  @override
  String get onboardingCommitmentsTitle => 'तुमच्यासाठी काय महत्त्वाचे आहे?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'KipiList वैयक्तिकृत करण्यासाठी तुमचे ध्येय निवडा';

  @override
  String get onboardingCommitmentsCta => 'चला जाऊया!';

  @override
  String get onboardingPersonalizationNameLabel => 'तुमचे नाव';

  @override
  String get onboardingPersonalizationNameHint => 'तुमचे नाव टाका';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'तुम्ही कशासाठी खरेदी करता?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'तुम्ही कोणासाठी खरेदी करता?';

  @override
  String get onboardingCategoryGrocery => 'किराणा सामान';

  @override
  String get onboardingCategoryPharmacy => 'फार्मसी';

  @override
  String get onboardingCategoryRecipes => 'पाककृती';

  @override
  String get onboardingCategoryHome => 'घर';

  @override
  String get onboardingCategoryPet => 'पाळीव प्राणी';

  @override
  String get onboardingGroupSolo => 'फक्त मी';

  @override
  String get onboardingGroupCouple => 'जोडपे';

  @override
  String get onboardingGroupFamily => 'कुटुंब';

  @override
  String get onboardingLoadingTitle => 'तुमचा अनुभव तयार करत आहे...';

  @override
  String get onboardingLoadingStep1 =>
      'तुमच्या प्राधान्यांचे विश्लेषण करत आहे...';

  @override
  String get onboardingLoadingStep2 => 'AI सहाय्यक सेट करत आहे...';

  @override
  String get onboardingLoadingStep3 => 'जवळजवळ तयार...';

  @override
  String get onboardingLoadingStat1Label => 'आयटम कॅटलॉग';

  @override
  String get onboardingLoadingStat2Label => 'वापरकर्त्यांनी मदत केली';

  @override
  String get onboardingLoadingStat3Label => 'मिनिटे वाचली';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, प्रत्येक सहलीवर बचत करा!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, आयटम कधीही विसरू नका!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, अर्ध्या वेळेत खरेदी करा!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, कुटुंब खरेदी आयोजित करा!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, नवीन पाककृती शोधा!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, तुमच्या पॅन्ट्रीचा उत्तम प्रकारे मागोवा घ्या!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'प्रत्येक सहलीवर बचत करा!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'एखादी वस्तू कधीही विसरू नका!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'अर्ध्या वेळेत खरेदी करा!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'कुटुंब खरेदी आयोजित करा!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'नवीन पाककृती शोधा!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'आपल्या पॅन्ट्रीचा उत्तम प्रकारे मागोवा घ्या!';

  @override
  String paywallPricePerDay(String price) {
    return 'फक्त $price/दिवस — कॉफीपेक्षा कमी';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'आतासाठी वगळा';

  @override
  String get paywallTestimonial =>
      'AI काही सेकंदात माझी खरेदी आयोजित करते. मी प्रति ट्रिप 20 मिनिटे वाचवतो.';

  @override
  String get paywallTestimonialAuthor => 'ॲन एस.';

  @override
  String get paywallTrialDisclaimer =>
      'कधीही रद्द करा · तुमची चाचणी संपेपर्यंत कोणतेही शुल्क नाही';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'अहो $name! तुम्हाला $category कशाची गरज आहे?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'तुम्हाला $category कशाची गरज आहे?';
  }

  @override
  String get onboardingAiDemoYes => 'होय!';

  @override
  String get onboardingAiDemoReaction => 'छान!';

  @override
  String get onboardingAiDemoChange => 'आयटम बदला';

  @override
  String get onboardingAiDemoOffer => 'दुसरे काहीतरी टाइप करून पहा!';

  @override
  String get onboardingAiDemoContinue => 'चालू ठेवा';

  @override
  String get onboardingAiDemoSlideHeadline => 'तुमची खरेदी सूची, आता AI सह';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Kipi तुमची पूर्ण यादी सेकंदात कशी तयार करते ते पहा';

  @override
  String get onboardingAiDemoSlideCta => 'मला हे हवे आहे! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'मी बार्बेक्यू होस्ट करत आहे 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'तयार! आपल्याला आवश्यक असलेली प्रत्येक गोष्ट येथे आहे:';

  @override
  String get onboardingAiDemoSlideDone => 'सेकंदात पूर्ण यादी ✨';

  @override
  String get onboardingPainTitle => 'तुम्हाला सर्वात जास्त काय निराश करते?';

  @override
  String get onboardingPainSubtitle =>
      'प्रामाणिक राहा - आम्ही प्रत्येकाचे निराकरण करू';

  @override
  String get onboardingPainCta => 'होय, माझ्यासाठी हे निश्चित करा →';

  @override
  String get onboardingPainForget => 'मी दुकानात वस्तू विसरतो';

  @override
  String get onboardingPainFamily => 'माझे कुटुंब कधीही यादी पाहत नाही';

  @override
  String get onboardingPainOverspend => 'मी नेहमी बजेट ओलांडतो';

  @override
  String get onboardingPainRepeat => 'एक ट्रिप कधीही पुरेशी नसते';

  @override
  String get aiWelcomeContent =>
      'नमस्कार! 👋 मी **किपी** आहे, तुमचा वैयक्तिक खरेदी आणि पाककृती सहाय्यक आहे!\n\nमी तुम्हाला मदत करण्यासाठी येथे आहे:\n🛒 वर्गवारीनुसार तुमची खरेदी **व्यवस्थित करा**\n💰 **तुमच्या बजेटचा मागोवा घ्या** आणि तुम्हाला पैसे वाचवण्याच्या टिप्स द्या\n🍲 **सुचवा** स्वादिष्ट पाककृती तुमच्याकडे आधीपासून आहेत\n\nआज मी तुम्हाला कशी मदत करू शकतो? तुम्ही तुमची पहिली यादी तयार करून सुरुवात करू शकता!';

  @override
  String get aiWelcomeSuggestCreateList => 'माझी पहिली यादी तयार करा';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'किपी, माझी पहिली खरेदी सूची तयार करण्यात मला मदत करा';

  @override
  String get aiWelcomeSuggestSave => 'पैसे कसे वाचवायचे?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'किपी, किराणा सामानावर पैसे वाचवण्यासाठी तुम्ही मला कशी मदत करू शकता?';

  @override
  String get suggestionMilk => 'दूध';

  @override
  String get suggestionBread => 'भाकरी';

  @override
  String get suggestionEggs => 'अंडी';

  @override
  String get suggestionCoffee => 'कॉफी';

  @override
  String get suggestionRice => 'तांदूळ';

  @override
  String get suggestionFruits => 'फळे';
}
