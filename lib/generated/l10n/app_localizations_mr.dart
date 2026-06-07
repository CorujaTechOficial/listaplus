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
  String get navChat => 'Chat';

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
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

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
  String get paywallFeaturesTitle => 'आपल्याला आवश्यक असलेली प्रत्येक गोष्ट:';

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
  String shareReferralText(Object url) {
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
  String get navChat => 'Chat';

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
  String get paywallFeaturesTitle => 'आपल्याला आवश्यक असलेली प्रत्येक गोष्ट:';

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
  String shareReferralText(Object url) {
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
}
