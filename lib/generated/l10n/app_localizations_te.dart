// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'షాపింగ్ జాబితా';

  @override
  String get lists => 'జాబితాలు';

  @override
  String get pantry => 'ప్యాంట్రీ';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'వంటకాలు';

  @override
  String get navLists => 'జాబితాలు';

  @override
  String get navMealPlanner => 'మెనూ';

  @override
  String get cancel => 'రద్దు చేయి';

  @override
  String get save => 'సేవ్ చేయి';

  @override
  String get create => 'సృష్టించు';

  @override
  String get add => 'జోడించు';

  @override
  String get remove => 'తీసివేయి';

  @override
  String get delete => 'తొలగించు';

  @override
  String get edit => 'సవరించు';

  @override
  String get copy => 'కాపీ చేయి';

  @override
  String get next => 'తదుపరి';

  @override
  String get retry => 'మళ్ళీ ప్రయత్నించు';

  @override
  String get regenerate => 'పునరుత్పత్తి చేయి';

  @override
  String get copiedToClipboard => 'క్లిప్‌బోర్డ్‌కు కాపీ చేయబడింది';

  @override
  String get confirm => 'నిర్ధారించు';

  @override
  String get close => 'మూసివేయి';

  @override
  String get import => 'దిగుమతి';

  @override
  String get rename => 'పేరు మార్చు';

  @override
  String get upgrade => 'అప్‌గ్రేడ్ చేయి';

  @override
  String get clear => 'క్లియర్ చేయి';

  @override
  String error(String message) {
    return 'లోపం: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'లోపం: $message';
  }

  @override
  String get purchaseError =>
      'కొనుగోలును ప్రాసెస్ చేయడంలో లోపం. మళ్ళీ ప్రయత్నించండి.';

  @override
  String get restoreError =>
      'కొనుగోళ్లను పునరుద్ధరించడంలో లోపం. మళ్ళీ ప్రయత్నించండి.';

  @override
  String get loading => 'లోడ్ అవుతోంది...';

  @override
  String get fieldRequired => 'తప్పనిసరి ఫీల్డ్';

  @override
  String get addedFeedback => 'జోడించబడింది!';

  @override
  String get profile => 'Profile';

  @override
  String get exitShoppingMode => 'Exit Shopping Mode';

  @override
  String get exit => 'Exit';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ఎంచుకోబడ్డాయి',
      one: '$count ఎంచుకోబడింది',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'అంచనా';

  @override
  String get alreadyPurchased => 'ఇప్పటికే కొనుగోలు చేయబడింది';

  @override
  String get clearList => 'జాబితాను క్లియర్ చేయి';

  @override
  String get clearPurchased => 'కొనుగోలు చేసినవి క్లియర్ చేయి';

  @override
  String get share => 'భాగస్వామ్యం చేయి';

  @override
  String get shareViaCode => 'కోడ్ ద్వారా భాగస్వామ్యం చేయి';

  @override
  String get importViaCode => 'కోడ్ ద్వారా దిగుమతి చేయి';

  @override
  String get listAssistant => 'జాబితా సహాయకుడు';

  @override
  String get globalAssistant => 'గ్లోబల్ అసిస్టెంట్';

  @override
  String get becomePremium => 'ప్రీమియమ్ అవ్వండి';

  @override
  String get manageSubscription => 'సబ్‌స్క్రిప్షన్ నిర్వహించు';

  @override
  String get completePurchase => 'కొనుగోలును పూర్తి చేయి';

  @override
  String get confirmClearList => 'అన్ని అంశాలను తీసివేయాలా?';

  @override
  String get shareListTitle => 'జాబితాను భాగస్వామ్యం చేయి';

  @override
  String get shareThisCode => 'ఈ కోడ్‌ను భాగస్వామ్యం చేయండి:';

  @override
  String get validForLimitedTime => 'పరిమిత సమయం మాత్రమే చెల్లుతుంది';

  @override
  String get importListTitle => 'జాబితాను దిగుమతి చేయి';

  @override
  String get enterCodeHint => 'కోడ్‌ను నమోదు చేయండి';

  @override
  String get confirmArchiveTitle => 'కొనుగోలును పూర్తి చేయి';

  @override
  String get confirmArchiveContent =>
      'ఈ కొనుగోలును పూర్తి చేసి జాబితాను ఆర్కైవ్ చేయాలా?';

  @override
  String get complete => 'పూర్తి';

  @override
  String get listArchived => 'జాబితా విజయవంతంగా ఆర్కైవ్ చేయబడింది!';

  @override
  String listAdded(String listName) {
    return '$listName జోడించబడింది!';
  }

  @override
  String get buy => 'కొనుగోలు చేయి';

  @override
  String get unmark => 'గుర్తును తీసివేయి';

  @override
  String confirmDeleteItems(int count) {
    return '$count అంశం(ల)ను తీసివేయాలా?';
  }

  @override
  String get confirmDeleteTitle => 'నిర్ధారించు';

  @override
  String confirmContent(int count) {
    return '$count అంశం(ల)ను తీసివేయాలా?';
  }

  @override
  String get archiveList => 'జాబితాను ఆర్కైవ్ చేయి';

  @override
  String get pantryAppBar => 'ప్యాంట్రీ';

  @override
  String get generateShoppingList => 'షాపింగ్ జాబితాను రూపొందించు';

  @override
  String get pantryEmpty => 'ఖాళీ ప్యాంట్రీ';

  @override
  String get pantryEmptySubtitle =>
      'మీరు ఇంట్లో ఉంచుకోవాలనుకునే ఉత్పత్తులను జోడించండి';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit అంశం(లు) కొనుగోలు చేయాలి';
  }

  @override
  String get noItemsToBuy => 'కొనుగోలు చేయవలసిన అంశాలు ఏవీ లేవు';

  @override
  String get newPantryList => 'ప్యాంట్రీ షాపింగ్';

  @override
  String get newListTitle => 'కొత్త షాపింగ్ జాబితా';

  @override
  String itemsWillBeAdded(int count) {
    return '$count అంశం(లు) జోడించబడతాయి';
  }

  @override
  String get listNameLabel => 'జాబితా పేరు';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" జాబితా $count అంశాలతో సృష్టించబడింది';
  }

  @override
  String get noTracking => 'ట్రాకింగ్ లేదు';

  @override
  String get markAsPurchased => 'కొనుగోలు చేసినట్లు గుర్తించు';

  @override
  String editPantryItem(String name) {
    return '$nameని సవరించు';
  }

  @override
  String get idealQuantity => 'ఆదర్శ పరిమాణం';

  @override
  String get currentQuantity => 'ప్రస్తుత పరిమాణం';

  @override
  String get consumed => 'వినియోగించబడింది';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unitకి తిరిగి నింపబడింది';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'ప్యాంట్రీ నుండి \"$name\"ను తీసివేయాలా?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$nameని సవరించు';
  }

  @override
  String get settingsAppBar => 'సెట్టింగ్‌లు';

  @override
  String get language => 'భాష';

  @override
  String get languagePortuguese => 'పోర్చుగీస్ (బ్రెసిల్)';

  @override
  String get languageEnglish => 'ఇంగ్లీష్';

  @override
  String get languageSystem => 'సిస్టమ్ డిఫాల్ట్';

  @override
  String get chooseLanguage => 'భాషను ఎంచుకోండి';

  @override
  String get searchLanguage => 'శోధన భాష...';

  @override
  String get currency => 'కరెన్సీ';

  @override
  String get chooseCurrency => 'కరెన్సీని ఎంచుకోండి';

  @override
  String get searchCurrency => 'కరెన్సీని వెతకండి...';

  @override
  String get appearance => 'స్వరూపం';

  @override
  String get light => 'లైట్';

  @override
  String get system => 'సిస్టమ్';

  @override
  String get dark => 'డార్క్';

  @override
  String get themeColor => 'థీమ్ రంగు';

  @override
  String get dynamicColors => 'డైనమిక్ రంగులు';

  @override
  String get dynamicColorsSubtitle =>
      'మీ వాల్‌పేపర్ ఆధారంగా రంగులను ఉపయోగించండి';

  @override
  String get dynamicColorsEnabledWarning =>
      'థీమ్ రంగు ప్రభావం చూపడానికి డైనమిక్ రంగులను నిలిపివేయండి';

  @override
  String get finance => 'ఫైనాన్స్';

  @override
  String get monthlyBudgetNav => 'నెలవారీ బడ్జెట్';

  @override
  String get budgetSubtitle => 'మీ నెలవారీ ఖర్చులను ట్రాక్ చేయండి';

  @override
  String get data => 'డేటా';

  @override
  String get backupNav => 'బ్యాకప్';

  @override
  String get backupSubtitle => 'మీ డేటాను ఎగుమతి లేదా దిగుమతి చేయండి';

  @override
  String get about => 'గురించి';

  @override
  String get version => 'వెర్షన్';

  @override
  String get privacy => 'గోప్యత';

  @override
  String get termsOfUse => 'వినియోగ నిబంధనలు';

  @override
  String get backupTitle => 'బ్యాకప్';

  @override
  String get backupPremiumDescription =>
      'బ్యాకప్ మరియు ఎగుమతి ఒక ప్రీమియమ్ ఫీచర్';

  @override
  String get exportData => 'డేటాను ఎగుమతి చేయి';

  @override
  String get exportDataSubtitle => 'అన్ని జాబితాలను JSON గా సేవ్ చేయండి';

  @override
  String get importData => 'డేటాను దిగుమతి చేయి';

  @override
  String get importDataSubtitle => 'JSON నుండి జాబితాలను పునరుద్ధరించండి';

  @override
  String get importJsonTitle => 'JSON దిగుమతి';

  @override
  String get importJsonHint => 'బ్యాకప్ JSON ను ఇక్కడ పేస్ట్ చేయండి...';

  @override
  String get backupExported => 'బ్యాకప్ ఎగుమతి చేయబడింది!';

  @override
  String get budgetAppBar => 'నెలవారీ బడ్జెట్';

  @override
  String get budgetPremiumLocked => 'గ్లోబల్ నెలవారీ బడ్జెట్ ప్రీమియమ్';

  @override
  String get budgetUpgradePrompt => 'అన్‌లాక్ చేయడానికి అప్‌గ్రేడ్ చేయండి';

  @override
  String get noBudgetDefined => 'బడ్జెట్ సెట్ చేయబడలేదు';

  @override
  String totalEstimated(String amount) {
    return 'మొత్తం అంచనా: $amount';
  }

  @override
  String get setBudgetButton => 'బడ్జెట్ సెట్ చేయి';

  @override
  String get budgetLists => 'జాబితాలు';

  @override
  String get budgetValueLabel => 'మొత్తం';

  @override
  String get setBudgetTitle => 'నెలవారీ బడ్జెట్';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'అన్నీ';

  @override
  String get filterPending => 'పెండింగ్';

  @override
  String get filterPurchased => 'కొనుగోలు చేసినవి';

  @override
  String get sortName => 'పేరు';

  @override
  String get sortCategory => 'వర్గం';

  @override
  String get sortDate => 'తేదీ';

  @override
  String get sortManual => 'మాన్యువల్';

  @override
  String get addItem => 'అంశాన్ని జోడించు';

  @override
  String get itemName => 'అంశం పేరు';

  @override
  String get quantityShort => 'పరి';

  @override
  String get unit => 'యూనిట్';

  @override
  String get category => 'వర్గం';

  @override
  String get estimatedPrice => 'అంచనా ధర';

  @override
  String get addItemPrice => 'అంచనా ధర';

  @override
  String get editItem => 'అంశాన్ని సవరించు';

  @override
  String get quantityFull => 'పరిమాణం';

  @override
  String get editItemPrice => 'అంచనా ధర';

  @override
  String get addToPantry => 'ప్యాంట్రీకి జోడించు';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\"ను మీ ప్యాంట్రీకి జోడించాలా?';
  }

  @override
  String get yes => 'అవును';

  @override
  String get productName => 'ఉత్పత్తి పేరు';

  @override
  String get idealQty => 'ఆదర్శ పరి';

  @override
  String get currentQty => 'ప్రస్తుత పరి';

  @override
  String get trackStock => 'స్టాక్ ట్రాక్ చేయి';

  @override
  String get trackStockActive => 'షాపింగ్ సూచనలలో కనిపిస్తుంది';

  @override
  String get trackStockInactive => 'షాపింగ్ సూచనను రూపొందించదు';

  @override
  String get createListDialog => 'జాబితాను సృష్టించు';

  @override
  String get renameListDialog => 'జాబితా పేరు మార్చు';

  @override
  String get listHistory => 'జాబితా చరిత్ర';

  @override
  String get myLists => 'నా జాబితాలు';

  @override
  String get viewActive => 'యాక్టివ్ వీక్షించు';

  @override
  String get viewHistory => 'చరిత్ర వీక్షించు';

  @override
  String get noArchivedLists => 'ఆర్కైవ్ చేసిన జాబితాలు లేవు';

  @override
  String get noActiveLists => 'యాక్టివ్ జాబితాలు లేవు';

  @override
  String completedOn(String date) {
    return '$dateన పూర్తి చేయబడింది';
  }

  @override
  String get sharedLabel => 'భాగస్వామ్యం చేయబడింది';

  @override
  String get restore => 'పునరుద్ధరించు';

  @override
  String get removeSharedTooltip => 'తీసివేయి';

  @override
  String get deleteListTitle => 'జాబితాను తొలగించు';

  @override
  String deleteListContent(String name) {
    return '\"$name\"ను ఖచ్చితంగా తొలగించాలనుకుంటున్నారా? అన్ని అంశాలు తీసివేయబడతాయి.';
  }

  @override
  String get removeSharedListTitle => 'భాగస్వామ్య జాబితాను తీసివేయి';

  @override
  String removeSharedListContent(String name) {
    return 'మీ జాబితాల నుండి \"$name\"ను తీసివేయాలా? అసలు జాబితా ప్రభావితం కాదు.';
  }

  @override
  String get createNewList => 'కొత్త జాబితాను సృష్టించు';

  @override
  String get aiAssistant => 'AI అసిస్టెంట్';

  @override
  String get aiAssistantDescription =>
      'మా AI అసిస్టెంట్‌తో స్మార్ట్ సూచనలు, వంటకాలు మరియు వ్యక్తిగతీకరించిన చిట్కాలను పొందండి.';

  @override
  String get generalAssistant => 'జనరల్ అసిస్టెంట్';

  @override
  String get newChat => 'కొత్త చాట్';

  @override
  String get noHistory => 'చాట్ చరిత్ర లేదు';

  @override
  String get deleteSession => 'చాట్‌ని తొలగించండి';

  @override
  String get deleteSessionConfirm =>
      'మీరు ఖచ్చితంగా ఈ చాట్‌ని తొలగించాలనుకుంటున్నారా? సందేశాలు శాశ్వతంగా పోతాయి.';

  @override
  String get clearHistory => 'చరిత్రను క్లియర్ చేయి';

  @override
  String get clearHistoryConfirm =>
      'ఈ సెషన్‌లోని అన్ని సందేశాలను క్లియర్ చేయాలా?';

  @override
  String get chatHint => 'మీ సందేశాన్ని టైప్ చేయండి...';

  @override
  String get chatHintBlocked => 'చాట్ చేయడానికి AIని అన్‌లాక్ చేయండి';

  @override
  String chatError(String error) {
    return 'చాట్ లోడ్ చేయడంలో లోపం: $error';
  }

  @override
  String get listHelp => 'మీ జాబితాతో ఎలా సహాయపడగలను?';

  @override
  String get generalHelp => 'ఈ రోజు మీ షాపింగ్‌తో ఎలా సహాయపడగలను?';

  @override
  String get chatSubtitle =>
      'అంశం సూచనలు, వంటకాలు లేదా పొదుపు చిట్కాల కోసం అడగండి.';

  @override
  String get aiError =>
      'క్షమించండి, మీ అభ్యర్థనను ప్రాసెస్ చేయడంలో లోపం సంభవించింది. మీ కనెక్షన్‌ను తనిఖీ చేయండి లేదా తర్వాత మళ్ళీ ప్రయత్నించండి.';

  @override
  String get aiLimitAlmostReached => 'దాదాపు AI సందేశాలు లేవు';

  @override
  String get unlockAi => 'అపరిమిత AIని అన్‌లాక్ చేయండి';

  @override
  String get aiTeaserFallback =>
      'పూర్తి ప్రతిస్పందనను అన్‌లాక్ చేయడానికి మరియు మీ షాపింగ్ కోసం అపరిమిత AI చిట్కాలను పొందడానికి ప్రీమియంకు సభ్యత్వాన్ని పొందండి...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

  @override
  String get kipiListTitle => 'కిపిలిస్ట్';

  @override
  String get loginPrompt =>
      'ప్రీమియమ్ ఫీచర్లను\nఅన్‌లాక్ చేయడానికి లాగిన్ చేయండి';

  @override
  String get signInGoogle => 'Googleతో సైన్ ఇన్ చేయి';

  @override
  String get signInApple => 'Appleతో సైన్ ఇన్ చేయి';

  @override
  String get continueAsGuest => 'అతిథిగా కొనసాగు';

  @override
  String get onboardingWelcomeTitle => 'KipiListకి స్వాగతం';

  @override
  String get onboardingWelcomeDesc =>
      'మీ షాపింగ్‌ను నిర్వహించడానికి మరియు డబ్బు ఆదా చేయడానికి తెలివైన మార్గం.';

  @override
  String get onboardingSetupTitle => 'మీ అనుభవాన్ని వ్యక్తిగతీకరించండి';

  @override
  String get onboardingSetupDesc =>
      'KipiList మీ కోసం ఎలా కనిపించాలని మరియు పని చేయాలని మీరు కోరుకుంటున్నారో ఎంచుకోండి.';

  @override
  String get onboardingLoginTitle => 'ప్రతిదీ క్లౌడ్‌లో సేవ్ చేయండి';

  @override
  String get onboardingLoginDesc =>
      'మీ డేటా మీ అన్ని పరికరాల్లో సమకాలీకరించబడింది';

  @override
  String get onboardingShareTitle => 'మీరు ఇష్టపడే వారితో పంచుకోండి';

  @override
  String get onboardingShareDesc =>
      'నిజ సమయంలో కుటుంబం మరియు స్నేహితులతో జాబితాలను సమకాలీకరించండి';

  @override
  String get onboardingPremiumTitle => 'అన్ని లక్షణాలను అన్‌లాక్ చేయండి';

  @override
  String get onboardingPremiumSubtitle =>
      'మీ షాపింగ్ జాబితాల నుండి అత్యధిక ప్రయోజనాలను పొందండి';

  @override
  String get onboardingAnnualBadge => 'ఉత్తమ విలువ';

  @override
  String get onboardingMonthlyLabel => 'నెలవారీ';

  @override
  String get onboardingAnnualLabel => 'వార్షిక';

  @override
  String get onboardingViewAllPlans => 'అన్ని ప్లాన్‌లను చూడండి';

  @override
  String get onboardingSubscribeCta => 'సభ్యత్వం పొందండి';

  @override
  String get onboardingCancelAnytime => 'ఎప్పుడైనా రద్దు చేయండి. నిబద్ధత లేదు.';

  @override
  String get onboardingContinueAsGuest => 'అతిథిగా కొనసాగండి';

  @override
  String get onboardingRestore => 'కొనుగోళ్లను పునరుద్ధరించండి';

  @override
  String get onboardingRestoreDesc =>
      'ఇప్పటికే సబ్‌స్క్రిప్షన్ ఉందా? దీన్ని పునరుద్ధరించడానికి ఇక్కడ నొక్కండి.';

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
  String get onboardingExit => 'నిష్క్రమించు';

  @override
  String get onboardingPersonalizationTitle => 'మీ గురించి తెలుసుకుందాం';

  @override
  String get onboardingPersonalizationDesc =>
      'మీ సూచనలను వ్యక్తిగతీకరించడానికి మరియు షాపింగ్‌ను మరింత తెలివిగా చేయడానికి మేము దీన్ని ఉపయోగిస్తాము.';

  @override
  String get onboardingPersonalizationFoodLabel => 'మీకు ఇష్టమైన ఆహారం ఏమిటి?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'ఉదా పిజ్జా, సుషీ, లాసాగ్నా...';

  @override
  String get onboardingPersonalizationCta => 'కొనసాగించు';

  @override
  String get onboardingPersonalizationSkip => 'ప్రస్తుతానికి దాటవేయి';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'కొనసాగించడానికి మీకు ఇష్టమైన ఆహారాన్ని మాకు చెప్పండి';

  @override
  String get settingsDefaultScreen => 'డిఫాల్ట్ హోమ్ స్క్రీన్';

  @override
  String get settingsDefaultScreenSubtitle =>
      'షాపింగ్ జాబితా లేదా AI చాట్ మధ్య ఎంచుకోండి';

  @override
  String get settingsScreenList => 'షాపింగ్ జాబితా';

  @override
  String get settingsScreenChat => 'AI చాట్';

  @override
  String loginError(String error) {
    return 'లాగిన్ లోపం: $error';
  }

  @override
  String get paywallTitle => 'కిపిలిస్ట్ ప్రీమియం';

  @override
  String get paywallLoadingError =>
      'ఆఫర్‌లను లోడ్ చేయడంలో లోపం. మళ్లీ ప్రయత్నించండి.';

  @override
  String get paywallPurchaseError =>
      'కొనుగోలును పూర్తి చేయడం సాధ్యపడలేదు. మళ్లీ ప్రయత్నించండి.';

  @override
  String get paywallRestoreError =>
      'పునరుద్ధరించడానికి సక్రియ సభ్యత్వం కనుగొనబడలేదు.';

  @override
  String paywallTrialDays(Object days) {
    return '$days రోజులు ఉచితం';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count వారాలు ఉచితం',
      one: '$count వారం ఉచితం',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count నెలలు ఉచితం',
      one: '$count నెల ఉచితం',
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
  String get paywallFeaturesTitle => 'మీకు కావలసిందల్లా:';

  @override
  String get paywallFeatureUnlimitedLists => 'అపరిమిత జాబితాలు';

  @override
  String get paywallFeatureSmartAI => 'స్మార్ట్ AI';

  @override
  String get paywallFeatureExpenseControl => 'ఖర్చు నియంత్రణ';

  @override
  String get paywallFeatureSharing => 'భాగస్వామ్యం';

  @override
  String get paywallBeforeAfterTitle => 'AI ముందు మరియు తరువాత:';

  @override
  String get paywallLabelCommon => 'సాధారణ';

  @override
  String get paywallLabelPro => 'కిపిలిస్ట్ PRO';

  @override
  String get paywallBeforeItem1 => 'బియ్యం';

  @override
  String get paywallBeforeItem2 => 'సబ్బు';

  @override
  String get paywallBeforeItem3 => 'మాంసం';

  @override
  String get paywallBeforeItem4 => 'రొట్టె';

  @override
  String get paywallAfterItem1 => 'ధాన్యాలు';

  @override
  String get paywallAfterItem2 => 'క్లీనింగ్';

  @override
  String get paywallAfterItem3 => 'మాంసాలు';

  @override
  String get paywallAfterItem4 => 'బేకరీ';

  @override
  String get paywallTestimonialsTitle => 'మా వినియోగదారులు ఏమి చెబుతారు:';

  @override
  String get paywallTestimonial1Name => 'ఆన్ ఎస్.';

  @override
  String get paywallTestimonial1Text =>
      'AI నా షాపింగ్‌ను సెకన్లలో నిర్వహిస్తుంది. నేను ఒక్కో మార్కెట్ పర్యటనకు 20 నిమిషాలు ఆదా చేస్తాను.';

  @override
  String get paywallTestimonial2Name => 'చార్లెస్ ఎం.';

  @override
  String get paywallTestimonial2Text =>
      'నేను మళ్లీ జాబితా అంశాన్ని మరచిపోలేదు. AI చాట్ సంచలనం!';

  @override
  String get paywallSocialProof => '+2,400 కుటుంబాలు దీనిని ఉపయోగిస్తాయి';

  @override
  String get paywallCtaUnlock => 'PROని అన్‌లాక్ చేయండి';

  @override
  String get paywallBestValue => 'ఉత్తమ విలువ';

  @override
  String get paywallMostPopular => 'అత్యంత ప్రజాదరణ పొందినది';

  @override
  String get paywallSafeCheckout => 'సురక్షిత చెల్లింపు';

  @override
  String get paywallSelectPlan => 'మీ ప్రణాళికను ఎంచుకోండి:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% సేవ్ చేయండి';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return '$price/నెలకు మాత్రమే';
  }

  @override
  String get paywallPackageAnnual => 'వార్షిక ప్రణాళిక';

  @override
  String get paywallPackageMonthly => 'నెలవారీ ప్రణాళిక';

  @override
  String get paywallPackageLifetime => 'జీవితకాల యాక్సెస్';

  @override
  String get paywallCancelAnytime => 'ఎప్పుడైనా రద్దు చేయండి. నిబద్ధత లేదు.';

  @override
  String get paywallPolicy => 'గోప్యతా విధానం';

  @override
  String get paywallTerms => 'ఉపయోగ నిబంధనలు';

  @override
  String get paywallRestore => 'పునరుద్ధరించు';

  @override
  String get paywallHeroHeadline => 'కిపి AI ఎల్లప్పుడూ మీ పక్కనే ఉంటుంది';

  @override
  String get paywallHeroSubtitle =>
      'అంశాలను జోడించండి, జాబితాలను నిర్వహించండి మరియు మీ జేబులో AIతో సమయాన్ని ఆదా చేసుకోండి';

  @override
  String get paywallBenefit1Desc =>
      '24/7 అంశాలను జోడిస్తుంది, నిర్వహిస్తుంది మరియు సూచిస్తుంది';

  @override
  String get paywallBenefit2Desc => '3-జాబితా పరిమితి లేదు';

  @override
  String get paywallBenefit3Desc => 'ఖర్చు ట్రాకింగ్ మరియు కుటుంబ జాబితాలు';

  @override
  String get paywallPackageMonthlyDesc => 'పూర్తి వశ్యత';

  @override
  String paywallCtaTrialDays(int days) {
    return 'ఉచితంగా ప్రారంభించండి — $days రోజులు';
  }

  @override
  String get premiumUpgrade => 'అన్‌లాక్ చేయడానికి అప్‌గ్రేడ్ చేయండి';

  @override
  String get itemRemoved => 'అంశం తీసివేయబడింది';

  @override
  String get undo => 'రద్దు చేయి';

  @override
  String get emptyListTitle => 'మీ జాబితా ఖాళీగా ఉంది';

  @override
  String get emptyListSubtitle => 'ప్రారంభించడానికి అంశాలను జోడించండి';

  @override
  String get noListFoundTitle => 'జాబితాలు ఏవీ కనుగొనబడలేదు';

  @override
  String get noListFoundSubtitle =>
      'ప్రారంభించడానికి మీ మొదటి జాబితాను సృష్టించండి';

  @override
  String get createFirstList => 'మొదటి జాబితాను సృష్టించు';

  @override
  String get listBudgetTitle => 'జాబితా బడ్జెట్';

  @override
  String get budgetAmountLabel => 'బడ్జెట్ మొత్తం';

  @override
  String get removeBudget => 'తీసివేయి';

  @override
  String get prefUnlimitedLists => 'అపరిమిత జాబితాలు';

  @override
  String get prefSharing => 'జాబితాలను భాగస్వామ్యం చేయి';

  @override
  String get prefFullHistory => 'పూర్తి చరిత్ర';

  @override
  String get prefExportData => 'డేటాను ఎగుమతి చేయి';

  @override
  String get prefCustomThemes => 'కస్టమ్ థీమ్‌లు';

  @override
  String get prefMonthlyBudget => 'గ్లోబల్ నెలవారీ బడ్జెట్';

  @override
  String get prefAIAssistant => 'వ్యక్తిగత AI అసిస్టెంట్';

  @override
  String get prefUnlimitedPantry => 'అపరిమిత ప్యాంట్రీ';

  @override
  String get prefInteractiveArtifacts => 'ఇంటరాక్టివ్ AI ఆర్టిఫాక్ట్‌లు';

  @override
  String get themeGreen => 'ఆకుపచ్చ';

  @override
  String get themeBlue => 'నీలం';

  @override
  String get themePurple => 'ఊదా';

  @override
  String get themeRed => 'ఎరుపు';

  @override
  String get themeOrange => 'నారింజ';

  @override
  String get themePink => 'గులాబీ';

  @override
  String get themeIndigo => 'ఇండిగో';

  @override
  String get themeAmber => 'అంబర్';

  @override
  String get themeTeal => 'టీల్';

  @override
  String get themeBrown => 'గోధుమ';

  @override
  String get catFruits => 'పండ్లు';

  @override
  String get catCleaning => 'శుభ్రపరచడం';

  @override
  String get catBeverages => 'పానీయాలు';

  @override
  String get catBakery => 'బేకరీ';

  @override
  String get catOthers => 'ఇతరాలు';

  @override
  String get unitPack => 'ప్యాక్';

  @override
  String get shareSubject => 'షాపింగ్ జాబితా';

  @override
  String get monthlyBudgetTitle => 'నెలవారీ బడ్జెట్';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'జాబితాను తొలగించు';

  @override
  String get pantryItemRemoved => 'అంశం తీసివేయబడింది';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit అంశాలు కొనుగోలు చేయాలి',
      one: '$deficit అంశం కొనుగోలు చేయాలి',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'కార్ట్ మొత్తం';

  @override
  String get restockLabel => 'తిరిగి నింపు';

  @override
  String get advancedFeatures => 'అధునాతన ఫీచర్లు';

  @override
  String get selectAll => 'అన్నీ ఎంచుకోండి';

  @override
  String get deselectAll => 'అన్నీ ఎంపిక తీసివేయి';

  @override
  String get monthlyBudgetAppBar => 'నెలవారీ బడ్జెట్';

  @override
  String get budgetEditTitle => 'నెలవారీ బడ్జెట్';

  @override
  String get budgetDashboardTitle => 'డాష్‌బోర్డ్';

  @override
  String get selectListForDashboard =>
      'డాష్‌బోర్డ్ వీక్షించడానికి జాబితాను ఎంచుకోండి.';

  @override
  String get spendingAnalysis => 'ఖర్చు విశ్లేషణ';

  @override
  String get noItemsToAnalyze => 'విశ్లేషించడానికి జాబితాలో అంశాలు లేవు.';

  @override
  String get markItemsToSeeAnalysis =>
      'విశ్లేషణ చూడటానికి అంశాలను కొనుగోలు చేసినట్లు గుర్తించండి.';

  @override
  String get totalSpending => 'మొత్తం ఖర్చు';

  @override
  String get spendingByCategory => 'వర్గం వారీగా ఖర్చు';

  @override
  String get achievements => 'విజయాలు';

  @override
  String get exportPdfExcel => 'PDF/Excel ఎగుమతి';

  @override
  String get exportPdf => 'PDF గా ఎగుమతి చేయి';

  @override
  String get exportExcel => 'Excel గా ఎగుమతి చేయి';

  @override
  String get organizingAi => 'AI తో నిర్వహిస్తోంది...';

  @override
  String get yesLabel => 'అవును';

  @override
  String get noLabel => 'కాదు';

  @override
  String get shareListText => 'నా షాపింగ్ జాబితా';

  @override
  String get emptyListAddItems =>
      'మీ జాబితా ఖాళీగా ఉంది! ముందు అంశాలను జోడించండి. ℹ️';

  @override
  String get listOrganizedMagic =>
      'జాబితా వర్గాల ద్వారా మాయాజాలంగా నిర్వహించబడింది! ✨';

  @override
  String get shoppingMode => 'షాపింగ్ మోడ్';

  @override
  String get smartOrganization => 'స్మార్ట్ ఆర్గనైజేషన్';

  @override
  String get savings => 'పొదుపులు';

  @override
  String get shoppingModeHeader => 'షాపింగ్ మోడ్';

  @override
  String get shareAsText => 'అంశాలను ఫార్మాట్ చేసిన టెక్స్ట్ గా పంపండి';

  @override
  String get shareRealtime => 'ఇతర వ్యక్తులతో రియల్-టైమ్ సమకాలీకరణ';

  @override
  String get quickRecipe => 'శీఘ్ర వంటకం';

  @override
  String get quickRecipePrompt => 'నా జాబితాలోని అంశాలతో వంటకాలను సూచించండి.';

  @override
  String get economyTips => 'ఆర్థిక చిట్కాలు';

  @override
  String get economyTipsPrompt => 'ఈ కొనుగోలుపై నేను ఎలా డబ్బు ఆదా చేయగలను?';

  @override
  String get organizeAisles => 'ఐల్స్ వారీగా నిర్వహించు';

  @override
  String get organizeAislesPrompt => 'మార్కెట్ ఐల్స్ వారీగా నిర్వహించండి.';

  @override
  String get recipeSuggestion => 'వంటకం సూచన';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining క్రెడిట్‌లు మిగిలి ఉన్నాయి';
  }

  @override
  String get addAllToList => 'అన్నీ జాబితాకు జోడించు';

  @override
  String get organizeByAisles => 'ఐల్స్ వారీగా నిర్వహించు';

  @override
  String get voiceTranscriptionTooltip => 'వాయిస్ టైపింగ్ (ఉచితం)';

  @override
  String get aiVoiceCommandTooltip => 'AI వాయిస్ కమాండ్ (ప్రీమియమ్)';

  @override
  String get voiceCommandTitle => 'AI వాయిస్ కమాండ్';

  @override
  String get voiceCommandContent =>
      'మీ జాబితాను నిర్వహించడానికి సహజంగా మాట్లాడండి!\n\nఉదాహరణలు:\n• \'బ్రెడ్, జున్ను మరియు హామ్ జోడించు\'\n• \'లాండ్రీ డిటర్జెంట్ తీసివేయి\'\n• \'థీమ్‌ను నీలంగా మార్చు\'\n\nఇది KipiList Premium యొక్క ప్రత్యేక ఫీచర్.';

  @override
  String get voiceCommandPlanBtn => 'ప్లాన్‌లను వీక్షించు';

  @override
  String get itemsAddedSuccess => 'అంశాలు జాబితాకు విజయవంతంగా జోడించబడ్డాయి!';

  @override
  String get viewList => 'జాబితాను వీక్షించు';

  @override
  String get feedbackTitle => 'అభిప్రాయాన్ని పంపండి';

  @override
  String get feedbackPrompt => 'మీరు ఏమి షేర్ చేయాలనుకుంటున్నారు?';

  @override
  String get feedbackTypeBug => 'బగ్ నివేదించండి';

  @override
  String get feedbackTypeBugHint => 'ఏదో పని చేయడం లేదు';

  @override
  String get feedbackTypeSuggestion => 'సూచన';

  @override
  String get feedbackTypeSuggestionHint => 'యాప్‌ను మెరుగుపరచడానికి ఆలోచన';

  @override
  String get feedbackTypeTranslation => 'అనువాద సమస్య';

  @override
  String get feedbackTypeTranslationHint => 'తప్పు లేదా సహజంగా లేని అనువాదం';

  @override
  String get feedbackTypeFeature => 'ఫీచర్ అభ్యర్థన';

  @override
  String get feedbackTypeFeatureHint => 'మీరు చూడాలనుకునే ఫీచర్';

  @override
  String get feedbackTypeOther => 'ఇతర';

  @override
  String get feedbackTypeOtherHint => 'ఇతర రకం అభిప్రాయం';

  @override
  String get feedbackHint => 'మీ అభిప్రాయాన్ని వివరంగా వివరించండి...';

  @override
  String get feedbackSend => 'అభిప్రాయాన్ని పంపండి';

  @override
  String get feedbackSending => 'పంపుతోంది...';

  @override
  String get feedbackThankYou => 'ధన్యవాదాలు!';

  @override
  String get feedbackThankYouMessage =>
      'మీ అభిప్రాయం స్వీకరించబడింది మరియు అందరికీ KipiList మెరుగుపరచడంలో సహాయపడుతుంది.';

  @override
  String get feedbackBack => 'వెనుక';

  @override
  String feedbackError(String error) {
    return 'పంపడంలో లోపం: $error';
  }

  @override
  String get feedbackRetry => 'మళ్ళీ ప్రయత్నించండి';

  @override
  String get feedbackSettingsTitle => 'అభిప్రాయాన్ని పంపండి';

  @override
  String get feedbackSettingsSubtitle =>
      'బగ్‌లను నివేదించండి, మెరుగుదలలను సూచించండి లేదా అనువాదాలను సరిచేయండి';

  @override
  String get aiEnergy => 'AI శక్తి';

  @override
  String get searchInConversation => 'సంభాషణలో శోధించండి...';

  @override
  String get noMessagesFound => 'సందేశాలు ఏవీ కనుగొనబడలేదు';

  @override
  String get suggestedQuestions => 'సూచించబడిన ప్రశ్నలు:';

  @override
  String get shoppingAssistant => 'షాపింగ్ అసిస్టెంట్';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$totalలో $purchased కొనుగోలు చేయబడింది';
  }

  @override
  String get estimatedCost => 'అంచనా వేయబడింది';

  @override
  String get viewItems => 'అంశాలను వీక్షించండి';

  @override
  String get noItemsInList => 'జాబితాలో ఏ అంశాలు లేవు';

  @override
  String get longHistoryWarning =>
      'సుదీర్ఘ చరిత్ర: మెరుగైన పనితీరు కోసం అసిస్టెంట్ తాజా సందేశాలపై దృష్టి పెడుతుంది.';

  @override
  String get listening => 'వింటూ...';

  @override
  String get addDirectToList => 'జాబితాకు నేరుగా జోడించండి';

  @override
  String get unlockFullResponse => 'పూర్తి ప్రతిస్పందనను అన్‌లాక్ చేయండి';

  @override
  String get switchList => 'జాబితా మారండి';

  @override
  String get marketMode => 'మార్కెట్ మోడ్';

  @override
  String get backToChat => 'తిరిగి చాట్‌కి';

  @override
  String get finishShopping => 'షాపింగ్ ముగించు';

  @override
  String get welcomeAiAssistant => 'AI అసిస్టెంట్‌కి స్వాగతం';

  @override
  String get createListToStartAi =>
      'స్మార్ట్ చాట్‌ని ఉపయోగించడం ప్రారంభించడానికి షాపింగ్ జాబితాను సృష్టించండి.';

  @override
  String get howCanIHelp => 'నేను ఎలా సహాయం చేయగలను?';

  @override
  String get chatSubtitleShort => 'ధరలు, వంటకాలు, సంస్థ గురించి అడగండి...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total కొనుగోలు చేయబడింది';
  }

  @override
  String get quickReplies => 'త్వరిత సమాధానాలు:';

  @override
  String get voiceProFeature =>
      'అధునాతన వాయిస్ ఆదేశాలు ప్రో. ప్రాథమిక డిక్టేషన్‌ని ప్రారంభిస్తోంది...';

  @override
  String get viewPro => 'ప్రోని వీక్షించండి';

  @override
  String get errorLoadingChat =>
      'అయ్యో! చాట్‌ని లోడ్ చేయడంలో ఏదో తప్పు జరిగింది.';

  @override
  String get errorLoadingChatSubtitle =>
      'మీ కనెక్షన్‌ని తనిఖీ చేయండి లేదా తర్వాత మళ్లీ ప్రయత్నించండి.';

  @override
  String get errorOscillation =>
      'ఇది నెట్‌వర్క్ డోలనాలు లేదా తాత్కాలిక లభ్యత కారణంగా సంభవించవచ్చు. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get activeListening => 'చురుకుగా వినడం';

  @override
  String get whatToDoWithItem => 'మీరు ఈ వస్తువుతో ఏమి చేయాలనుకుంటున్నారు?';

  @override
  String get viewDetails => 'వివరాలను వీక్షించండి';

  @override
  String get openMenu => 'మెనుని తెరవండి';

  @override
  String get viewRecipe => 'రెసిపీని వీక్షించండి';

  @override
  String get recipeCreated => 'రెసిపీ సృష్టించబడింది!';

  @override
  String get editRecipe => 'సవరించు';

  @override
  String get deleteRecipe => 'తొలగించు';

  @override
  String get deleteRecipeConfirm => 'ఈ రెసిపీని తొలగించాలా?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'మీరు \"$recipeName\"ని ఖచ్చితంగా తొలగించాలనుకుంటున్నారా? ఈ చర్య రద్దు చేయబడదు.';
  }

  @override
  String get ingredients => 'కావలసినవి';

  @override
  String get instructions => 'సూచనలు';

  @override
  String get prepTime => 'ప్రిపరేషన్ సమయం';

  @override
  String get recipeSaved => 'రెసిపీ సేవ్ చేయబడింది!';

  @override
  String get noRecipesSaved => 'వంటకాలు ఏవీ సేవ్ చేయబడలేదు';

  @override
  String get noRecipesSavedHint =>
      'దిగువ బటన్‌ను నొక్కడం ద్వారా మీ మొదటి అనుకూల వంటకాన్ని సృష్టించండి.';

  @override
  String get myRecipes => 'నా వంటకాలు';

  @override
  String get newRecipe => 'కొత్త రెసిపీ';

  @override
  String get loadingRecipes => 'మీ వంటకాలను లోడ్ చేస్తోంది...';

  @override
  String get errorLoadingRecipes => 'వంటకాలను లోడ్ చేయడంలో లోపం';

  @override
  String get addIngredient => 'పదార్ధాన్ని జోడించండి';

  @override
  String get saveRecipe => 'సేవ్ చేయండి';

  @override
  String get recipeName => 'రెసిపీ పేరు';

  @override
  String get shortDescription => 'చిన్న వివరణ';

  @override
  String get prepTimeMinutes => 'ప్రిపరేషన్ సమయం (నిమిషాలు)';

  @override
  String get instructionsHint => 'పంక్తికి ఒక అడుగు టైప్ చేయండి...';

  @override
  String get addPhoto => 'ఫోటోను జోడించండి';

  @override
  String get imageUrlPlaceholder => 'లేదా చిత్ర URLని అతికించండి';

  @override
  String get tags => 'ట్యాగ్‌లు';

  @override
  String get recipeTags => 'రెసిపీ ట్యాగ్‌లు';

  @override
  String get suggestedTags => 'సూచించారు';

  @override
  String get searchRecipes => 'వంటకాలను శోధించండి...';

  @override
  String get filterByTag => 'ట్యాగ్ ద్వారా ఫిల్టర్ చేయండి';

  @override
  String get allTags => 'అన్నీ';

  @override
  String get recipeDeleted => 'రెసిపీ తొలగించబడింది';

  @override
  String get saveChanges => 'మార్పులను సేవ్ చేయండి';

  @override
  String get editRecipeTitle => 'రెసిపీని సవరించండి';

  @override
  String get newRecipeTitle => 'కొత్త రెసిపీ';

  @override
  String get requiredField => 'అవసరం';

  @override
  String get chooseImageSource => 'చిత్ర మూలాన్ని ఎంచుకోండి';

  @override
  String get gallery => 'గ్యాలరీ';

  @override
  String get enterUrl => 'URLని నమోదు చేయండి';

  @override
  String get recipeImage => 'రెసిపీ చిత్రం';

  @override
  String get removeImage => 'చిత్రాన్ని తీసివేయండి';

  @override
  String get mealPlannerTitle => 'మీల్ ప్లానర్';

  @override
  String get mealPlannerViewMonthly => 'నెలవారీ వీక్షణ';

  @override
  String get mealPlannerViewWeekly => 'వారపు వీక్షణ';

  @override
  String get mealPlannerNoMeals => 'భోజనం ప్లాన్ చేయలేదు';

  @override
  String get mealPlannerNoMealsHint =>
      'భోజనాన్ని జోడించడానికి ఒక రోజు నొక్కండి';

  @override
  String get mealPlannerLoading => 'భోజన ప్రణాళిక లోడ్ అవుతోంది...';

  @override
  String get mealPlannerError => 'భోజన ప్రణాళికను లోడ్ చేయడంలో లోపం ఏర్పడింది';

  @override
  String get mealPlannerAddMeal => 'భోజనం జోడించండి';

  @override
  String get mealPlannerEditMeal => 'భోజనాన్ని సవరించండి';

  @override
  String get mealPlannerDeleteMeal => 'భోజనం తొలగించండి';

  @override
  String get mealPlannerMealDeleted => 'భోజనం తీసివేయబడింది';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count సర్వింగ్‌లు',
      one: '$count సర్వింగ్',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'సర్వింగ్స్';

  @override
  String get mealPlannerNoteLabel => 'గమనిక (ఐచ్ఛికం)';

  @override
  String get mealPlannerSelectRecipe => 'రెసిపీని ఎంచుకోండి';

  @override
  String get mealPlannerSearchRecipes => 'వంటకాలను శోధించండి...';

  @override
  String get mealPlannerNoRecipesFound => 'వంటకాలు ఏవీ కనుగొనబడలేదు';

  @override
  String get mealPlannerNoRecipesHint =>
      'ముందుగా వంటకాల ట్యాబ్‌లో వంటకాలను సృష్టించండి';

  @override
  String get mealPlannerSave => 'ప్రణాళికకు జోడించండి';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$totalలో $count భోజనం ప్లాన్ చేయబడింది';
  }

  @override
  String get mealPlannerGenerateList => 'షాపింగ్ జాబితాను రూపొందించండి';

  @override
  String get mealPlannerGenerateListConfirm =>
      'మీ షాపింగ్ జాబితాకు ఈ వారం ప్లాన్ చేసిన భోజనం నుండి అన్ని పదార్థాలను జోడించాలా?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count పదార్ధం(లు) మీ జాబితాకు జోడించబడ్డాయి!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'జోడించడానికి పదార్థాలు లేవు. ముందుగా వంటకాలతో కొన్ని భోజనాలను ప్లాన్ చేయండి.';

  @override
  String get mealPlannerGenerateListNoList =>
      'ముందుగా షాపింగ్ జాబితాను రూపొందించండి.';

  @override
  String get mealPlannerMealTypeBreakfast => 'అల్పాహారం';

  @override
  String get mealPlannerMealTypeLunch => 'లంచ్';

  @override
  String get mealPlannerMealTypeDinner => 'డిన్నర్';

  @override
  String get mealPlannerMealTypeSnack => 'చిరుతిండి';

  @override
  String get mealPlannerDateLabel => 'తేదీ';

  @override
  String get mealPlannerWeekEmpty => 'ఈ వారం ఏమీ ప్లాన్ చేయలేదు';

  @override
  String get mealPlannerWeekEmptyHint =>
      'మీ భోజనాన్ని ప్లాన్ చేయడం ప్రారంభించడానికి ఏ రోజునైనా నొక్కండి!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes నిమి';
  }

  @override
  String get inviteToList => 'జాబితాకు ఆహ్వానించండి';

  @override
  String get shareApp => 'యాప్‌ను భాగస్వామ్యం చేయండి';

  @override
  String get shareAppDescription =>
      'KipiListని ఉపయోగించడానికి స్నేహితులను ఆహ్వానించండి';

  @override
  String shareReferralText(Object url) {
    return 'నేను నా షాపింగ్‌ని నిర్వహించడానికి KipiListని ఉపయోగిస్తున్నాను! నా లింక్ ద్వారా డౌన్‌లోడ్ చేసుకోండి మరియు మా ఇద్దరికీ 7 రోజుల ప్రీమియం ఉచితం: $url';
  }

  @override
  String get shareReferralSubject => '7 రోజుల KipiList ప్రీమియం పొందండి!';

  @override
  String get gestureHint => 'Hold to select • Swipe to remove';

  @override
  String get catalogTitle => 'Catalog';

  @override
  String get catalogMyFrequents => 'My Frequents';

  @override
  String get catalogSearchGlobal => 'Search any product...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Search in $category...';
  }

  @override
  String get catalogSortPopular => 'Most popular';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nationals';

  @override
  String get catalogRareSection => 'less common in your country';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Add $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Product not found, type the name';

  @override
  String get catalogBrowse => 'Browse Catalog';

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

/// The translations for Telugu, as used in India (`te_IN`).
class AppLocalizationsTeIn extends AppLocalizationsTe {
  AppLocalizationsTeIn() : super('te_IN');

  @override
  String get appTitle => 'షాపింగ్ జాబితా';

  @override
  String get lists => 'జాబితాలు';

  @override
  String get pantry => 'ప్యాంట్రీ';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'వంటకాలు';

  @override
  String get navLists => 'జాబితాలు';

  @override
  String get navMealPlanner => 'మెనూ';

  @override
  String get cancel => 'రద్దు చేయి';

  @override
  String get save => 'సేవ్ చేయి';

  @override
  String get create => 'సృష్టించు';

  @override
  String get add => 'జోడించు';

  @override
  String get remove => 'తీసివేయి';

  @override
  String get delete => 'తొలగించు';

  @override
  String get edit => 'సవరించు';

  @override
  String get copy => 'కాపీ చేయి';

  @override
  String get next => 'తదుపరి';

  @override
  String get retry => 'మళ్ళీ ప్రయత్నించు';

  @override
  String get regenerate => 'పునరుత్పత్తి చేయి';

  @override
  String get copiedToClipboard => 'క్లిప్‌బోర్డ్‌కు కాపీ చేయబడింది';

  @override
  String get confirm => 'నిర్ధారించు';

  @override
  String get close => 'మూసివేయి';

  @override
  String get import => 'దిగుమతి';

  @override
  String get rename => 'పేరు మార్చు';

  @override
  String get upgrade => 'అప్‌గ్రేడ్ చేయి';

  @override
  String get clear => 'క్లియర్ చేయి';

  @override
  String error(String message) {
    return 'లోపం: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'లోపం: $message';
  }

  @override
  String get purchaseError =>
      'కొనుగోలును ప్రాసెస్ చేయడంలో లోపం. మళ్ళీ ప్రయత్నించండి.';

  @override
  String get restoreError =>
      'కొనుగోళ్లను పునరుద్ధరించడంలో లోపం. మళ్ళీ ప్రయత్నించండి.';

  @override
  String get loading => 'లోడ్ అవుతోంది...';

  @override
  String get fieldRequired => 'తప్పనిసరి ఫీల్డ్';

  @override
  String get addedFeedback => 'జోడించబడింది!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ఎంచుకోబడ్డాయి',
      one: '$count ఎంచుకోబడింది',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'అంచనా';

  @override
  String get alreadyPurchased => 'ఇప్పటికే కొనుగోలు చేయబడింది';

  @override
  String get clearList => 'జాబితాను క్లియర్ చేయి';

  @override
  String get clearPurchased => 'కొనుగోలు చేసినవి క్లియర్ చేయి';

  @override
  String get share => 'భాగస్వామ్యం చేయి';

  @override
  String get shareViaCode => 'కోడ్ ద్వారా భాగస్వామ్యం చేయి';

  @override
  String get importViaCode => 'కోడ్ ద్వారా దిగుమతి చేయి';

  @override
  String get listAssistant => 'జాబితా సహాయకుడు';

  @override
  String get globalAssistant => 'గ్లోబల్ అసిస్టెంట్';

  @override
  String get becomePremium => 'ప్రీమియమ్ అవ్వండి';

  @override
  String get manageSubscription => 'సబ్‌స్క్రిప్షన్ నిర్వహించు';

  @override
  String get completePurchase => 'కొనుగోలును పూర్తి చేయి';

  @override
  String get confirmClearList => 'అన్ని అంశాలను తీసివేయాలా?';

  @override
  String get shareListTitle => 'జాబితాను భాగస్వామ్యం చేయి';

  @override
  String get shareThisCode => 'ఈ కోడ్‌ను భాగస్వామ్యం చేయండి:';

  @override
  String get validForLimitedTime => 'పరిమిత సమయం మాత్రమే చెల్లుతుంది';

  @override
  String get importListTitle => 'జాబితాను దిగుమతి చేయి';

  @override
  String get enterCodeHint => 'కోడ్‌ను నమోదు చేయండి';

  @override
  String get confirmArchiveTitle => 'కొనుగోలును పూర్తి చేయి';

  @override
  String get confirmArchiveContent =>
      'ఈ కొనుగోలును పూర్తి చేసి జాబితాను ఆర్కైవ్ చేయాలా?';

  @override
  String get complete => 'పూర్తి';

  @override
  String get listArchived => 'జాబితా విజయవంతంగా ఆర్కైవ్ చేయబడింది!';

  @override
  String listAdded(String listName) {
    return '$listName జోడించబడింది!';
  }

  @override
  String get buy => 'కొనుగోలు చేయి';

  @override
  String get unmark => 'గుర్తును తీసివేయి';

  @override
  String confirmDeleteItems(int count) {
    return '$count అంశం(ల)ను తీసివేయాలా?';
  }

  @override
  String get confirmDeleteTitle => 'నిర్ధారించు';

  @override
  String confirmContent(int count) {
    return '$count అంశం(ల)ను తీసివేయాలా?';
  }

  @override
  String get archiveList => 'జాబితాను ఆర్కైవ్ చేయి';

  @override
  String get pantryAppBar => 'ప్యాంట్రీ';

  @override
  String get generateShoppingList => 'షాపింగ్ జాబితాను రూపొందించు';

  @override
  String get pantryEmpty => 'ఖాళీ ప్యాంట్రీ';

  @override
  String get pantryEmptySubtitle =>
      'మీరు ఇంట్లో ఉంచుకోవాలనుకునే ఉత్పత్తులను జోడించండి';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit అంశం(లు) కొనుగోలు చేయాలి';
  }

  @override
  String get noItemsToBuy => 'కొనుగోలు చేయవలసిన అంశాలు ఏవీ లేవు';

  @override
  String get newPantryList => 'ప్యాంట్రీ షాపింగ్';

  @override
  String get newListTitle => 'కొత్త షాపింగ్ జాబితా';

  @override
  String itemsWillBeAdded(int count) {
    return '$count అంశం(లు) జోడించబడతాయి';
  }

  @override
  String get listNameLabel => 'జాబితా పేరు';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" జాబితా $count అంశాలతో సృష్టించబడింది';
  }

  @override
  String get noTracking => 'ట్రాకింగ్ లేదు';

  @override
  String get markAsPurchased => 'కొనుగోలు చేసినట్లు గుర్తించు';

  @override
  String editPantryItem(String name) {
    return '$nameని సవరించు';
  }

  @override
  String get idealQuantity => 'ఆదర్శ పరిమాణం';

  @override
  String get currentQuantity => 'ప్రస్తుత పరిమాణం';

  @override
  String get consumed => 'వినియోగించబడింది';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity $unitకి తిరిగి నింపబడింది';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'ప్యాంట్రీ నుండి \"$name\"ను తీసివేయాలా?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$nameని సవరించు';
  }

  @override
  String get settingsAppBar => 'సెట్టింగ్‌లు';

  @override
  String get language => 'భాష';

  @override
  String get languagePortuguese => 'పోర్చుగీస్ (బ్రెసిల్)';

  @override
  String get languageEnglish => 'ఇంగ్లీష్';

  @override
  String get languageSystem => 'సిస్టమ్ డిఫాల్ట్';

  @override
  String get chooseLanguage => 'భాషను ఎంచుకోండి';

  @override
  String get searchLanguage => 'శోధన భాష...';

  @override
  String get currency => 'కరెన్సీ';

  @override
  String get chooseCurrency => 'కరెన్సీని ఎంచుకోండి';

  @override
  String get searchCurrency => 'కరెన్సీని వెతకండి...';

  @override
  String get appearance => 'స్వరూపం';

  @override
  String get light => 'లైట్';

  @override
  String get system => 'సిస్టమ్';

  @override
  String get dark => 'డార్క్';

  @override
  String get themeColor => 'థీమ్ రంగు';

  @override
  String get dynamicColors => 'డైనమిక్ రంగులు';

  @override
  String get dynamicColorsSubtitle =>
      'మీ వాల్‌పేపర్ ఆధారంగా రంగులను ఉపయోగించండి';

  @override
  String get dynamicColorsEnabledWarning =>
      'థీమ్ రంగు ప్రభావం చూపడానికి డైనమిక్ రంగులను నిలిపివేయండి';

  @override
  String get finance => 'ఫైనాన్స్';

  @override
  String get monthlyBudgetNav => 'నెలవారీ బడ్జెట్';

  @override
  String get budgetSubtitle => 'మీ నెలవారీ ఖర్చులను ట్రాక్ చేయండి';

  @override
  String get data => 'డేటా';

  @override
  String get backupNav => 'బ్యాకప్';

  @override
  String get backupSubtitle => 'మీ డేటాను ఎగుమతి లేదా దిగుమతి చేయండి';

  @override
  String get about => 'గురించి';

  @override
  String get version => 'వెర్షన్';

  @override
  String get privacy => 'గోప్యత';

  @override
  String get termsOfUse => 'వినియోగ నిబంధనలు';

  @override
  String get backupTitle => 'బ్యాకప్';

  @override
  String get backupPremiumDescription =>
      'బ్యాకప్ మరియు ఎగుమతి ఒక ప్రీమియమ్ ఫీచర్';

  @override
  String get exportData => 'డేటాను ఎగుమతి చేయి';

  @override
  String get exportDataSubtitle => 'అన్ని జాబితాలను JSON గా సేవ్ చేయండి';

  @override
  String get importData => 'డేటాను దిగుమతి చేయి';

  @override
  String get importDataSubtitle => 'JSON నుండి జాబితాలను పునరుద్ధరించండి';

  @override
  String get importJsonTitle => 'JSON దిగుమతి';

  @override
  String get importJsonHint => 'బ్యాకప్ JSON ను ఇక్కడ పేస్ట్ చేయండి...';

  @override
  String get backupExported => 'బ్యాకప్ ఎగుమతి చేయబడింది!';

  @override
  String get budgetAppBar => 'నెలవారీ బడ్జెట్';

  @override
  String get budgetPremiumLocked => 'గ్లోబల్ నెలవారీ బడ్జెట్ ప్రీమియమ్';

  @override
  String get budgetUpgradePrompt => 'అన్‌లాక్ చేయడానికి అప్‌గ్రేడ్ చేయండి';

  @override
  String get noBudgetDefined => 'బడ్జెట్ సెట్ చేయబడలేదు';

  @override
  String totalEstimated(String amount) {
    return 'మొత్తం అంచనా: $amount';
  }

  @override
  String get setBudgetButton => 'బడ్జెట్ సెట్ చేయి';

  @override
  String get budgetLists => 'జాబితాలు';

  @override
  String get budgetValueLabel => 'మొత్తం';

  @override
  String get setBudgetTitle => 'నెలవారీ బడ్జెట్';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'అన్నీ';

  @override
  String get filterPending => 'పెండింగ్';

  @override
  String get filterPurchased => 'కొనుగోలు చేసినవి';

  @override
  String get sortName => 'పేరు';

  @override
  String get sortCategory => 'వర్గం';

  @override
  String get sortDate => 'తేదీ';

  @override
  String get sortManual => 'మాన్యువల్';

  @override
  String get addItem => 'అంశాన్ని జోడించు';

  @override
  String get itemName => 'అంశం పేరు';

  @override
  String get quantityShort => 'పరి';

  @override
  String get unit => 'యూనిట్';

  @override
  String get category => 'వర్గం';

  @override
  String get estimatedPrice => 'అంచనా ధర';

  @override
  String get addItemPrice => 'అంచనా ధర';

  @override
  String get editItem => 'అంశాన్ని సవరించు';

  @override
  String get quantityFull => 'పరిమాణం';

  @override
  String get editItemPrice => 'అంచనా ధర';

  @override
  String get addToPantry => 'ప్యాంట్రీకి జోడించు';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\"ను మీ ప్యాంట్రీకి జోడించాలా?';
  }

  @override
  String get yes => 'అవును';

  @override
  String get productName => 'ఉత్పత్తి పేరు';

  @override
  String get idealQty => 'ఆదర్శ పరి';

  @override
  String get currentQty => 'ప్రస్తుత పరి';

  @override
  String get trackStock => 'స్టాక్ ట్రాక్ చేయి';

  @override
  String get trackStockActive => 'షాపింగ్ సూచనలలో కనిపిస్తుంది';

  @override
  String get trackStockInactive => 'షాపింగ్ సూచనను రూపొందించదు';

  @override
  String get createListDialog => 'జాబితాను సృష్టించు';

  @override
  String get renameListDialog => 'జాబితా పేరు మార్చు';

  @override
  String get listHistory => 'జాబితా చరిత్ర';

  @override
  String get myLists => 'నా జాబితాలు';

  @override
  String get viewActive => 'యాక్టివ్ వీక్షించు';

  @override
  String get viewHistory => 'చరిత్ర వీక్షించు';

  @override
  String get noArchivedLists => 'ఆర్కైవ్ చేసిన జాబితాలు లేవు';

  @override
  String get noActiveLists => 'యాక్టివ్ జాబితాలు లేవు';

  @override
  String completedOn(String date) {
    return '$dateన పూర్తి చేయబడింది';
  }

  @override
  String get sharedLabel => 'భాగస్వామ్యం చేయబడింది';

  @override
  String get restore => 'పునరుద్ధరించు';

  @override
  String get removeSharedTooltip => 'తీసివేయి';

  @override
  String get deleteListTitle => 'జాబితాను తొలగించు';

  @override
  String deleteListContent(String name) {
    return '\"$name\"ను ఖచ్చితంగా తొలగించాలనుకుంటున్నారా? అన్ని అంశాలు తీసివేయబడతాయి.';
  }

  @override
  String get removeSharedListTitle => 'భాగస్వామ్య జాబితాను తీసివేయి';

  @override
  String removeSharedListContent(String name) {
    return 'మీ జాబితాల నుండి \"$name\"ను తీసివేయాలా? అసలు జాబితా ప్రభావితం కాదు.';
  }

  @override
  String get createNewList => 'కొత్త జాబితాను సృష్టించు';

  @override
  String get aiAssistant => 'AI అసిస్టెంట్';

  @override
  String get aiAssistantDescription =>
      'మా AI అసిస్టెంట్‌తో స్మార్ట్ సూచనలు, వంటకాలు మరియు వ్యక్తిగతీకరించిన చిట్కాలను పొందండి.';

  @override
  String get generalAssistant => 'జనరల్ అసిస్టెంట్';

  @override
  String get newChat => 'కొత్త చాట్';

  @override
  String get noHistory => 'చాట్ చరిత్ర లేదు';

  @override
  String get deleteSession => 'చాట్‌ని తొలగించండి';

  @override
  String get deleteSessionConfirm =>
      'మీరు ఖచ్చితంగా ఈ చాట్‌ని తొలగించాలనుకుంటున్నారా? సందేశాలు శాశ్వతంగా పోతాయి.';

  @override
  String get clearHistory => 'చరిత్రను క్లియర్ చేయి';

  @override
  String get clearHistoryConfirm =>
      'ఈ సెషన్‌లోని అన్ని సందేశాలను క్లియర్ చేయాలా?';

  @override
  String get chatHint => 'మీ సందేశాన్ని టైప్ చేయండి...';

  @override
  String get chatHintBlocked => 'చాట్ చేయడానికి AIని అన్‌లాక్ చేయండి';

  @override
  String chatError(String error) {
    return 'చాట్ లోడ్ చేయడంలో లోపం: $error';
  }

  @override
  String get listHelp => 'మీ జాబితాతో ఎలా సహాయపడగలను?';

  @override
  String get generalHelp => 'ఈ రోజు మీ షాపింగ్‌తో ఎలా సహాయపడగలను?';

  @override
  String get chatSubtitle =>
      'అంశం సూచనలు, వంటకాలు లేదా పొదుపు చిట్కాల కోసం అడగండి.';

  @override
  String get aiError =>
      'క్షమించండి, మీ అభ్యర్థనను ప్రాసెస్ చేయడంలో లోపం సంభవించింది. మీ కనెక్షన్‌ను తనిఖీ చేయండి లేదా తర్వాత మళ్ళీ ప్రయత్నించండి.';

  @override
  String get aiLimitAlmostReached => 'దాదాపు AI సందేశాలు లేవు';

  @override
  String get unlockAi => 'అపరిమిత AIని అన్‌లాక్ చేయండి';

  @override
  String get aiTeaserFallback =>
      'పూర్తి ప్రతిస్పందనను అన్‌లాక్ చేయడానికి మరియు మీ షాపింగ్ కోసం అపరిమిత AI చిట్కాలను పొందడానికి ప్రీమియంకు సభ్యత్వాన్ని పొందండి...';

  @override
  String get kipiListTitle => 'కిపిలిస్ట్';

  @override
  String get loginPrompt =>
      'ప్రీమియమ్ ఫీచర్లను\nఅన్‌లాక్ చేయడానికి లాగిన్ చేయండి';

  @override
  String get signInGoogle => 'Googleతో సైన్ ఇన్ చేయి';

  @override
  String get signInApple => 'Appleతో సైన్ ఇన్ చేయి';

  @override
  String get continueAsGuest => 'అతిథిగా కొనసాగు';

  @override
  String get onboardingWelcomeTitle => 'KipiListకి స్వాగతం';

  @override
  String get onboardingWelcomeDesc =>
      'మీ షాపింగ్‌ను నిర్వహించడానికి మరియు డబ్బు ఆదా చేయడానికి తెలివైన మార్గం.';

  @override
  String get onboardingSetupTitle => 'మీ అనుభవాన్ని వ్యక్తిగతీకరించండి';

  @override
  String get onboardingSetupDesc =>
      'KipiList మీ కోసం ఎలా కనిపించాలని మరియు పని చేయాలని మీరు కోరుకుంటున్నారో ఎంచుకోండి.';

  @override
  String get onboardingLoginTitle => 'ప్రతిదీ క్లౌడ్‌లో సేవ్ చేయండి';

  @override
  String get onboardingLoginDesc =>
      'మీ డేటా మీ అన్ని పరికరాల్లో సమకాలీకరించబడింది';

  @override
  String get onboardingShareTitle => 'మీరు ఇష్టపడే వారితో పంచుకోండి';

  @override
  String get onboardingShareDesc =>
      'నిజ సమయంలో కుటుంబం మరియు స్నేహితులతో జాబితాలను సమకాలీకరించండి';

  @override
  String get onboardingPremiumTitle => 'అన్ని లక్షణాలను అన్‌లాక్ చేయండి';

  @override
  String get onboardingPremiumSubtitle =>
      'మీ షాపింగ్ జాబితాల నుండి అత్యధిక ప్రయోజనాలను పొందండి';

  @override
  String get onboardingAnnualBadge => 'ఉత్తమ విలువ';

  @override
  String get onboardingMonthlyLabel => 'నెలవారీ';

  @override
  String get onboardingAnnualLabel => 'వార్షిక';

  @override
  String get onboardingViewAllPlans => 'అన్ని ప్లాన్‌లను చూడండి';

  @override
  String get onboardingSubscribeCta => 'సభ్యత్వం పొందండి';

  @override
  String get onboardingCancelAnytime => 'ఎప్పుడైనా రద్దు చేయండి. నిబద్ధత లేదు.';

  @override
  String get onboardingContinueAsGuest => 'అతిథిగా కొనసాగండి';

  @override
  String get onboardingRestore => 'కొనుగోళ్లను పునరుద్ధరించండి';

  @override
  String get onboardingRestoreDesc =>
      'ఇప్పటికే సబ్‌స్క్రిప్షన్ ఉందా? దీన్ని పునరుద్ధరించడానికి ఇక్కడ నొక్కండి.';

  @override
  String get onboardingExit => 'నిష్క్రమించు';

  @override
  String get onboardingPersonalizationTitle => 'మీ గురించి తెలుసుకుందాం';

  @override
  String get onboardingPersonalizationDesc =>
      'మీ సూచనలను వ్యక్తిగతీకరించడానికి మరియు షాపింగ్‌ను మరింత తెలివిగా చేయడానికి మేము దీన్ని ఉపయోగిస్తాము.';

  @override
  String get onboardingPersonalizationFoodLabel => 'మీకు ఇష్టమైన ఆహారం ఏమిటి?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'ఉదా పిజ్జా, సుషీ, లాసాగ్నా...';

  @override
  String get onboardingPersonalizationCta => 'కొనసాగించు';

  @override
  String get onboardingPersonalizationSkip => 'ప్రస్తుతానికి దాటవేయి';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'కొనసాగించడానికి మీకు ఇష్టమైన ఆహారాన్ని మాకు చెప్పండి';

  @override
  String get settingsDefaultScreen => 'డిఫాల్ట్ హోమ్ స్క్రీన్';

  @override
  String get settingsDefaultScreenSubtitle =>
      'షాపింగ్ జాబితా లేదా AI చాట్ మధ్య ఎంచుకోండి';

  @override
  String get settingsScreenList => 'షాపింగ్ జాబితా';

  @override
  String get settingsScreenChat => 'AI చాట్';

  @override
  String loginError(String error) {
    return 'లాగిన్ లోపం: $error';
  }

  @override
  String get paywallTitle => 'కిపిలిస్ట్ ప్రీమియం';

  @override
  String get paywallLoadingError =>
      'ఆఫర్‌లను లోడ్ చేయడంలో లోపం. మళ్లీ ప్రయత్నించండి.';

  @override
  String get paywallPurchaseError =>
      'కొనుగోలును పూర్తి చేయడం సాధ్యపడలేదు. మళ్లీ ప్రయత్నించండి.';

  @override
  String get paywallRestoreError =>
      'పునరుద్ధరించడానికి సక్రియ సభ్యత్వం కనుగొనబడలేదు.';

  @override
  String paywallTrialDays(Object days) {
    return '$days రోజులు ఉచితం';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count వారాలు ఉచితం',
      one: '$count వారం ఉచితం',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count నెలలు ఉచితం',
      one: '$count నెల ఉచితం',
    );
    return '$_temp0';
  }

  @override
  String get paywallFeaturesTitle => 'మీకు కావలసిందల్లా:';

  @override
  String get paywallFeatureUnlimitedLists => 'అపరిమిత జాబితాలు';

  @override
  String get paywallFeatureSmartAI => 'స్మార్ట్ AI';

  @override
  String get paywallFeatureExpenseControl => 'ఖర్చు నియంత్రణ';

  @override
  String get paywallFeatureSharing => 'భాగస్వామ్యం';

  @override
  String get paywallBeforeAfterTitle => 'AI ముందు మరియు తరువాత:';

  @override
  String get paywallLabelCommon => 'సాధారణ';

  @override
  String get paywallLabelPro => 'కిపిలిస్ట్ PRO';

  @override
  String get paywallBeforeItem1 => 'బియ్యం';

  @override
  String get paywallBeforeItem2 => 'సబ్బు';

  @override
  String get paywallBeforeItem3 => 'మాంసం';

  @override
  String get paywallBeforeItem4 => 'రొట్టె';

  @override
  String get paywallAfterItem1 => 'ధాన్యాలు';

  @override
  String get paywallAfterItem2 => 'క్లీనింగ్';

  @override
  String get paywallAfterItem3 => 'మాంసాలు';

  @override
  String get paywallAfterItem4 => 'బేకరీ';

  @override
  String get paywallTestimonialsTitle => 'మా వినియోగదారులు ఏమి చెబుతారు:';

  @override
  String get paywallTestimonial1Name => 'ఆన్ ఎస్.';

  @override
  String get paywallTestimonial1Text =>
      'AI నా షాపింగ్‌ను సెకన్లలో నిర్వహిస్తుంది. నేను ఒక్కో మార్కెట్ పర్యటనకు 20 నిమిషాలు ఆదా చేస్తాను.';

  @override
  String get paywallTestimonial2Name => 'చార్లెస్ ఎం.';

  @override
  String get paywallTestimonial2Text =>
      'నేను మళ్లీ జాబితా అంశాన్ని మరచిపోలేదు. AI చాట్ సంచలనం!';

  @override
  String get paywallSocialProof => '+2,400 కుటుంబాలు దీనిని ఉపయోగిస్తాయి';

  @override
  String get paywallCtaUnlock => 'PROని అన్‌లాక్ చేయండి';

  @override
  String get paywallBestValue => 'ఉత్తమ విలువ';

  @override
  String get paywallMostPopular => 'అత్యంత ప్రజాదరణ పొందినది';

  @override
  String get paywallSafeCheckout => 'సురక్షిత చెల్లింపు';

  @override
  String get paywallSelectPlan => 'మీ ప్రణాళికను ఎంచుకోండి:';

  @override
  String paywallSavePercent(Object percent) {
    return '$percent% సేవ్ చేయండి';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return '$price/నెలకు మాత్రమే';
  }

  @override
  String get paywallPackageAnnual => 'వార్షిక ప్రణాళిక';

  @override
  String get paywallPackageMonthly => 'నెలవారీ ప్రణాళిక';

  @override
  String get paywallPackageLifetime => 'జీవితకాల యాక్సెస్';

  @override
  String get paywallCancelAnytime => 'ఎప్పుడైనా రద్దు చేయండి. నిబద్ధత లేదు.';

  @override
  String get paywallPolicy => 'గోప్యతా విధానం';

  @override
  String get paywallTerms => 'ఉపయోగ నిబంధనలు';

  @override
  String get paywallRestore => 'పునరుద్ధరించు';

  @override
  String get paywallHeroHeadline => 'కిపి AI ఎల్లప్పుడూ మీ పక్కనే ఉంటుంది';

  @override
  String get paywallHeroSubtitle =>
      'అంశాలను జోడించండి, జాబితాలను నిర్వహించండి మరియు మీ జేబులో AIతో సమయాన్ని ఆదా చేసుకోండి';

  @override
  String get paywallBenefit1Desc =>
      '24/7 అంశాలను జోడిస్తుంది, నిర్వహిస్తుంది మరియు సూచిస్తుంది';

  @override
  String get paywallBenefit2Desc => '3-జాబితా పరిమితి లేదు';

  @override
  String get paywallBenefit3Desc => 'ఖర్చు ట్రాకింగ్ మరియు కుటుంబ జాబితాలు';

  @override
  String get paywallPackageMonthlyDesc => 'పూర్తి వశ్యత';

  @override
  String paywallCtaTrialDays(int days) {
    return 'ఉచితంగా ప్రారంభించండి — $days రోజులు';
  }

  @override
  String get premiumUpgrade => 'అన్‌లాక్ చేయడానికి అప్‌గ్రేడ్ చేయండి';

  @override
  String get itemRemoved => 'అంశం తీసివేయబడింది';

  @override
  String get undo => 'రద్దు చేయి';

  @override
  String get emptyListTitle => 'మీ జాబితా ఖాళీగా ఉంది';

  @override
  String get emptyListSubtitle => 'ప్రారంభించడానికి అంశాలను జోడించండి';

  @override
  String get noListFoundTitle => 'జాబితాలు ఏవీ కనుగొనబడలేదు';

  @override
  String get noListFoundSubtitle =>
      'ప్రారంభించడానికి మీ మొదటి జాబితాను సృష్టించండి';

  @override
  String get createFirstList => 'మొదటి జాబితాను సృష్టించు';

  @override
  String get listBudgetTitle => 'జాబితా బడ్జెట్';

  @override
  String get budgetAmountLabel => 'బడ్జెట్ మొత్తం';

  @override
  String get removeBudget => 'తీసివేయి';

  @override
  String get prefUnlimitedLists => 'అపరిమిత జాబితాలు';

  @override
  String get prefSharing => 'జాబితాలను భాగస్వామ్యం చేయి';

  @override
  String get prefFullHistory => 'పూర్తి చరిత్ర';

  @override
  String get prefExportData => 'డేటాను ఎగుమతి చేయి';

  @override
  String get prefCustomThemes => 'కస్టమ్ థీమ్‌లు';

  @override
  String get prefMonthlyBudget => 'గ్లోబల్ నెలవారీ బడ్జెట్';

  @override
  String get prefAIAssistant => 'వ్యక్తిగత AI అసిస్టెంట్';

  @override
  String get prefUnlimitedPantry => 'అపరిమిత ప్యాంట్రీ';

  @override
  String get prefInteractiveArtifacts => 'ఇంటరాక్టివ్ AI ఆర్టిఫాక్ట్‌లు';

  @override
  String get themeGreen => 'ఆకుపచ్చ';

  @override
  String get themeBlue => 'నీలం';

  @override
  String get themePurple => 'ఊదా';

  @override
  String get themeRed => 'ఎరుపు';

  @override
  String get themeOrange => 'నారింజ';

  @override
  String get themePink => 'గులాబీ';

  @override
  String get themeIndigo => 'ఇండిగో';

  @override
  String get themeAmber => 'అంబర్';

  @override
  String get themeTeal => 'టీల్';

  @override
  String get themeBrown => 'గోధుమ';

  @override
  String get catFruits => 'పండ్లు';

  @override
  String get catCleaning => 'శుభ్రపరచడం';

  @override
  String get catBeverages => 'పానీయాలు';

  @override
  String get catBakery => 'బేకరీ';

  @override
  String get catOthers => 'ఇతరాలు';

  @override
  String get unitPack => 'ప్యాక్';

  @override
  String get shareSubject => 'షాపింగ్ జాబితా';

  @override
  String get monthlyBudgetTitle => 'నెలవారీ బడ్జెట్';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'జాబితాను తొలగించు';

  @override
  String get pantryItemRemoved => 'అంశం తీసివేయబడింది';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit అంశాలు కొనుగోలు చేయాలి',
      one: '$deficit అంశం కొనుగోలు చేయాలి',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'కార్ట్ మొత్తం';

  @override
  String get restockLabel => 'తిరిగి నింపు';

  @override
  String get advancedFeatures => 'అధునాతన ఫీచర్లు';

  @override
  String get selectAll => 'అన్నీ ఎంచుకోండి';

  @override
  String get deselectAll => 'అన్నీ ఎంపిక తీసివేయి';

  @override
  String get monthlyBudgetAppBar => 'నెలవారీ బడ్జెట్';

  @override
  String get budgetEditTitle => 'నెలవారీ బడ్జెట్';

  @override
  String get budgetDashboardTitle => 'డాష్‌బోర్డ్';

  @override
  String get selectListForDashboard =>
      'డాష్‌బోర్డ్ వీక్షించడానికి జాబితాను ఎంచుకోండి.';

  @override
  String get spendingAnalysis => 'ఖర్చు విశ్లేషణ';

  @override
  String get noItemsToAnalyze => 'విశ్లేషించడానికి జాబితాలో అంశాలు లేవు.';

  @override
  String get markItemsToSeeAnalysis =>
      'విశ్లేషణ చూడటానికి అంశాలను కొనుగోలు చేసినట్లు గుర్తించండి.';

  @override
  String get totalSpending => 'మొత్తం ఖర్చు';

  @override
  String get spendingByCategory => 'వర్గం వారీగా ఖర్చు';

  @override
  String get achievements => 'విజయాలు';

  @override
  String get exportPdfExcel => 'PDF/Excel ఎగుమతి';

  @override
  String get exportPdf => 'PDF గా ఎగుమతి చేయి';

  @override
  String get exportExcel => 'Excel గా ఎగుమతి చేయి';

  @override
  String get organizingAi => 'AI తో నిర్వహిస్తోంది...';

  @override
  String get yesLabel => 'అవును';

  @override
  String get noLabel => 'కాదు';

  @override
  String get shareListText => 'నా షాపింగ్ జాబితా';

  @override
  String get emptyListAddItems =>
      'మీ జాబితా ఖాళీగా ఉంది! ముందు అంశాలను జోడించండి. ℹ️';

  @override
  String get listOrganizedMagic =>
      'జాబితా వర్గాల ద్వారా మాయాజాలంగా నిర్వహించబడింది! ✨';

  @override
  String get shoppingMode => 'షాపింగ్ మోడ్';

  @override
  String get smartOrganization => 'స్మార్ట్ ఆర్గనైజేషన్';

  @override
  String get savings => 'పొదుపులు';

  @override
  String get shoppingModeHeader => 'షాపింగ్ మోడ్';

  @override
  String get shareAsText => 'అంశాలను ఫార్మాట్ చేసిన టెక్స్ట్ గా పంపండి';

  @override
  String get shareRealtime => 'ఇతర వ్యక్తులతో రియల్-టైమ్ సమకాలీకరణ';

  @override
  String get quickRecipe => 'శీఘ్ర వంటకం';

  @override
  String get quickRecipePrompt => 'నా జాబితాలోని అంశాలతో వంటకాలను సూచించండి.';

  @override
  String get economyTips => 'ఆర్థిక చిట్కాలు';

  @override
  String get economyTipsPrompt => 'ఈ కొనుగోలుపై నేను ఎలా డబ్బు ఆదా చేయగలను?';

  @override
  String get organizeAisles => 'ఐల్స్ వారీగా నిర్వహించు';

  @override
  String get organizeAislesPrompt => 'మార్కెట్ ఐల్స్ వారీగా నిర్వహించండి.';

  @override
  String get recipeSuggestion => 'వంటకం సూచన';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining క్రెడిట్‌లు మిగిలి ఉన్నాయి';
  }

  @override
  String get addAllToList => 'అన్నీ జాబితాకు జోడించు';

  @override
  String get organizeByAisles => 'ఐల్స్ వారీగా నిర్వహించు';

  @override
  String get voiceTranscriptionTooltip => 'వాయిస్ టైపింగ్ (ఉచితం)';

  @override
  String get aiVoiceCommandTooltip => 'AI వాయిస్ కమాండ్ (ప్రీమియమ్)';

  @override
  String get voiceCommandTitle => 'AI వాయిస్ కమాండ్';

  @override
  String get voiceCommandContent =>
      'మీ జాబితాను నిర్వహించడానికి సహజంగా మాట్లాడండి!\n\nఉదాహరణలు:\n• \'బ్రెడ్, జున్ను మరియు హామ్ జోడించు\'\n• \'లాండ్రీ డిటర్జెంట్ తీసివేయి\'\n• \'థీమ్‌ను నీలంగా మార్చు\'\n\nఇది KipiList Premium యొక్క ప్రత్యేక ఫీచర్.';

  @override
  String get voiceCommandPlanBtn => 'ప్లాన్‌లను వీక్షించు';

  @override
  String get itemsAddedSuccess => 'అంశాలు జాబితాకు విజయవంతంగా జోడించబడ్డాయి!';

  @override
  String get viewList => 'జాబితాను వీక్షించు';

  @override
  String get feedbackTitle => 'అభిప్రాయాన్ని పంపండి';

  @override
  String get feedbackPrompt => 'మీరు ఏమి షేర్ చేయాలనుకుంటున్నారు?';

  @override
  String get feedbackTypeBug => 'బగ్ నివేదించండి';

  @override
  String get feedbackTypeBugHint => 'ఏదో పని చేయడం లేదు';

  @override
  String get feedbackTypeSuggestion => 'సూచన';

  @override
  String get feedbackTypeSuggestionHint => 'యాప్‌ను మెరుగుపరచడానికి ఆలోచన';

  @override
  String get feedbackTypeTranslation => 'అనువాద సమస్య';

  @override
  String get feedbackTypeTranslationHint => 'తప్పు లేదా వికారమైన అనువాదం';

  @override
  String get feedbackTypeFeature => 'ఫీచర్ అభ్యర్థన';

  @override
  String get feedbackTypeFeatureHint => 'మీరు చూడాలనుకునే ఫీచర్';

  @override
  String get feedbackTypeOther => 'ఇతర';

  @override
  String get feedbackTypeOtherHint => 'ఇతర రకం అభిప్రాయం';

  @override
  String get feedbackHint => 'మీ అభిప్రాయాన్ని వివరంగా వివరించండి...';

  @override
  String get feedbackSend => 'అభిప్రాయాన్ని పంపండి';

  @override
  String get feedbackSending => 'పంపుతోంది...';

  @override
  String get feedbackThankYou => 'ధన్యవాదాలు!';

  @override
  String get feedbackThankYouMessage =>
      'మీ అభిప్రాయం అందింది మరియు KipiList ను అందరికీ మెరుగుపరచడానికి మాకు సహాయపడుతుంది.';

  @override
  String get feedbackBack => 'వెనుకకు';

  @override
  String feedbackError(String error) {
    return 'పంపడంలో లోపం: $error';
  }

  @override
  String get feedbackRetry => 'మళ్ళీ ప్రయత్నించండి';

  @override
  String get feedbackSettingsTitle => 'అభిప్రాయాన్ని పంపండి';

  @override
  String get feedbackSettingsSubtitle =>
      'బగ్‌లను నివేదించండి, మెరుగుదలలను సూచించండి లేదా అనువాదాలను సరిచేయండి';

  @override
  String get aiEnergy => 'AI శక్తి';

  @override
  String get searchInConversation => 'సంభాషణలో శోధించండి...';

  @override
  String get noMessagesFound => 'సందేశాలు ఏవీ కనుగొనబడలేదు';

  @override
  String get suggestedQuestions => 'సూచించబడిన ప్రశ్నలు:';

  @override
  String get shoppingAssistant => 'షాపింగ్ అసిస్టెంట్';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$totalలో $purchased కొనుగోలు చేయబడింది';
  }

  @override
  String get estimatedCost => 'అంచనా వేయబడింది';

  @override
  String get viewItems => 'అంశాలను వీక్షించండి';

  @override
  String get noItemsInList => 'జాబితాలో ఏ అంశాలు లేవు';

  @override
  String get longHistoryWarning =>
      'సుదీర్ఘ చరిత్ర: మెరుగైన పనితీరు కోసం అసిస్టెంట్ తాజా సందేశాలపై దృష్టి పెడుతుంది.';

  @override
  String get listening => 'వింటూ...';

  @override
  String get addDirectToList => 'జాబితాకు నేరుగా జోడించండి';

  @override
  String get unlockFullResponse => 'పూర్తి ప్రతిస్పందనను అన్‌లాక్ చేయండి';

  @override
  String get switchList => 'జాబితా మారండి';

  @override
  String get marketMode => 'మార్కెట్ మోడ్';

  @override
  String get backToChat => 'తిరిగి చాట్‌కి';

  @override
  String get finishShopping => 'షాపింగ్ ముగించు';

  @override
  String get welcomeAiAssistant => 'AI అసిస్టెంట్‌కి స్వాగతం';

  @override
  String get createListToStartAi =>
      'స్మార్ట్ చాట్‌ని ఉపయోగించడం ప్రారంభించడానికి షాపింగ్ జాబితాను సృష్టించండి.';

  @override
  String get howCanIHelp => 'నేను ఎలా సహాయం చేయగలను?';

  @override
  String get chatSubtitleShort => 'ధరలు, వంటకాలు, సంస్థ గురించి అడగండి...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total కొనుగోలు చేయబడింది';
  }

  @override
  String get quickReplies => 'త్వరిత సమాధానాలు:';

  @override
  String get voiceProFeature =>
      'అధునాతన వాయిస్ ఆదేశాలు ప్రో. ప్రాథమిక డిక్టేషన్‌ని ప్రారంభిస్తోంది...';

  @override
  String get viewPro => 'ప్రోని వీక్షించండి';

  @override
  String get errorLoadingChat =>
      'అయ్యో! చాట్‌ని లోడ్ చేయడంలో ఏదో తప్పు జరిగింది.';

  @override
  String get errorLoadingChatSubtitle =>
      'మీ కనెక్షన్‌ని తనిఖీ చేయండి లేదా తర్వాత మళ్లీ ప్రయత్నించండి.';

  @override
  String get errorOscillation =>
      'ఇది నెట్‌వర్క్ డోలనాలు లేదా తాత్కాలిక లభ్యత కారణంగా సంభవించవచ్చు. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get activeListening => 'చురుకుగా వినడం';

  @override
  String get whatToDoWithItem => 'మీరు ఈ వస్తువుతో ఏమి చేయాలనుకుంటున్నారు?';

  @override
  String get viewDetails => 'వివరాలను వీక్షించండి';

  @override
  String get openMenu => 'మెనుని తెరవండి';

  @override
  String get viewRecipe => 'రెసిపీని వీక్షించండి';

  @override
  String get recipeCreated => 'రెసిపీ సృష్టించబడింది!';

  @override
  String get editRecipe => 'సవరించు';

  @override
  String get deleteRecipe => 'తొలగించు';

  @override
  String get deleteRecipeConfirm => 'ఈ రెసిపీని తొలగించాలా?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'మీరు \"$recipeName\"ని ఖచ్చితంగా తొలగించాలనుకుంటున్నారా? ఈ చర్య రద్దు చేయబడదు.';
  }

  @override
  String get ingredients => 'కావలసినవి';

  @override
  String get instructions => 'సూచనలు';

  @override
  String get prepTime => 'ప్రిపరేషన్ సమయం';

  @override
  String get recipeSaved => 'రెసిపీ సేవ్ చేయబడింది!';

  @override
  String get noRecipesSaved => 'వంటకాలు ఏవీ సేవ్ చేయబడలేదు';

  @override
  String get noRecipesSavedHint =>
      'దిగువ బటన్‌ను నొక్కడం ద్వారా మీ మొదటి అనుకూల వంటకాన్ని సృష్టించండి.';

  @override
  String get myRecipes => 'నా వంటకాలు';

  @override
  String get newRecipe => 'కొత్త రెసిపీ';

  @override
  String get loadingRecipes => 'మీ వంటకాలను లోడ్ చేస్తోంది...';

  @override
  String get errorLoadingRecipes => 'వంటకాలను లోడ్ చేయడంలో లోపం';

  @override
  String get addIngredient => 'పదార్ధాన్ని జోడించండి';

  @override
  String get saveRecipe => 'సేవ్ చేయండి';

  @override
  String get recipeName => 'రెసిపీ పేరు';

  @override
  String get shortDescription => 'చిన్న వివరణ';

  @override
  String get prepTimeMinutes => 'ప్రిపరేషన్ సమయం (నిమిషాలు)';

  @override
  String get instructionsHint => 'పంక్తికి ఒక అడుగు టైప్ చేయండి...';

  @override
  String get addPhoto => 'ఫోటోను జోడించండి';

  @override
  String get imageUrlPlaceholder => 'లేదా చిత్ర URLని అతికించండి';

  @override
  String get tags => 'ట్యాగ్‌లు';

  @override
  String get recipeTags => 'రెసిపీ ట్యాగ్‌లు';

  @override
  String get suggestedTags => 'సూచించారు';

  @override
  String get searchRecipes => 'వంటకాలను శోధించండి...';

  @override
  String get filterByTag => 'ట్యాగ్ ద్వారా ఫిల్టర్ చేయండి';

  @override
  String get allTags => 'అన్నీ';

  @override
  String get recipeDeleted => 'రెసిపీ తొలగించబడింది';

  @override
  String get saveChanges => 'మార్పులను సేవ్ చేయండి';

  @override
  String get editRecipeTitle => 'రెసిపీని సవరించండి';

  @override
  String get newRecipeTitle => 'కొత్త రెసిపీ';

  @override
  String get requiredField => 'అవసరం';

  @override
  String get chooseImageSource => 'చిత్ర మూలాన్ని ఎంచుకోండి';

  @override
  String get gallery => 'గ్యాలరీ';

  @override
  String get enterUrl => 'URLని నమోదు చేయండి';

  @override
  String get recipeImage => 'రెసిపీ చిత్రం';

  @override
  String get removeImage => 'చిత్రాన్ని తీసివేయండి';

  @override
  String get mealPlannerTitle => 'మీల్ ప్లానర్';

  @override
  String get mealPlannerViewMonthly => 'నెలవారీ వీక్షణ';

  @override
  String get mealPlannerViewWeekly => 'వారపు వీక్షణ';

  @override
  String get mealPlannerNoMeals => 'భోజనం ప్లాన్ చేయలేదు';

  @override
  String get mealPlannerNoMealsHint =>
      'భోజనాన్ని జోడించడానికి ఒక రోజు నొక్కండి';

  @override
  String get mealPlannerLoading => 'భోజన ప్రణాళిక లోడ్ అవుతోంది...';

  @override
  String get mealPlannerError => 'భోజన ప్రణాళికను లోడ్ చేయడంలో లోపం ఏర్పడింది';

  @override
  String get mealPlannerAddMeal => 'భోజనం జోడించండి';

  @override
  String get mealPlannerEditMeal => 'భోజనాన్ని సవరించండి';

  @override
  String get mealPlannerDeleteMeal => 'భోజనం తొలగించండి';

  @override
  String get mealPlannerMealDeleted => 'భోజనం తీసివేయబడింది';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count సర్వింగ్‌లు',
      one: '$count సర్వింగ్',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'సర్వింగ్స్';

  @override
  String get mealPlannerNoteLabel => 'గమనిక (ఐచ్ఛికం)';

  @override
  String get mealPlannerSelectRecipe => 'రెసిపీని ఎంచుకోండి';

  @override
  String get mealPlannerSearchRecipes => 'వంటకాలను శోధించండి...';

  @override
  String get mealPlannerNoRecipesFound => 'వంటకాలు ఏవీ కనుగొనబడలేదు';

  @override
  String get mealPlannerNoRecipesHint =>
      'ముందుగా వంటకాల ట్యాబ్‌లో వంటకాలను సృష్టించండి';

  @override
  String get mealPlannerSave => 'ప్రణాళికకు జోడించండి';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$totalలో $count భోజనం ప్లాన్ చేయబడింది';
  }

  @override
  String get mealPlannerGenerateList => 'షాపింగ్ జాబితాను రూపొందించండి';

  @override
  String get mealPlannerGenerateListConfirm =>
      'మీ షాపింగ్ జాబితాకు ఈ వారం ప్లాన్ చేసిన భోజనం నుండి అన్ని పదార్థాలను జోడించాలా?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count పదార్ధం(లు) మీ జాబితాకు జోడించబడ్డాయి!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'జోడించడానికి పదార్థాలు లేవు. ముందుగా వంటకాలతో కొన్ని భోజనాలను ప్లాన్ చేయండి.';

  @override
  String get mealPlannerGenerateListNoList =>
      'ముందుగా షాపింగ్ జాబితాను రూపొందించండి.';

  @override
  String get mealPlannerMealTypeBreakfast => 'అల్పాహారం';

  @override
  String get mealPlannerMealTypeLunch => 'లంచ్';

  @override
  String get mealPlannerMealTypeDinner => 'డిన్నర్';

  @override
  String get mealPlannerMealTypeSnack => 'చిరుతిండి';

  @override
  String get mealPlannerDateLabel => 'తేదీ';

  @override
  String get mealPlannerWeekEmpty => 'ఈ వారం ఏమీ ప్లాన్ చేయలేదు';

  @override
  String get mealPlannerWeekEmptyHint =>
      'మీ భోజనాన్ని ప్లాన్ చేయడం ప్రారంభించడానికి ఏ రోజునైనా నొక్కండి!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes నిమి';
  }

  @override
  String get inviteToList => 'జాబితాకు ఆహ్వానించండి';

  @override
  String get shareApp => 'యాప్‌ను భాగస్వామ్యం చేయండి';

  @override
  String get shareAppDescription =>
      'KipiListని ఉపయోగించడానికి స్నేహితులను ఆహ్వానించండి';

  @override
  String shareReferralText(Object url) {
    return 'నేను నా షాపింగ్‌ని నిర్వహించడానికి KipiListని ఉపయోగిస్తున్నాను! నా లింక్ ద్వారా డౌన్‌లోడ్ చేసుకోండి మరియు మా ఇద్దరికీ 7 రోజుల ప్రీమియం ఉచితం: $url';
  }

  @override
  String get shareReferralSubject => '7 రోజుల KipiList ప్రీమియం పొందండి!';
}
