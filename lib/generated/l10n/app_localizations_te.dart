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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'సిస్టమ్ డిఫాల్ట్';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

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
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

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
  String get newChat => 'New Chat';

  @override
  String get noHistory => 'No chat history';

  @override
  String get deleteSession => 'Delete Chat';

  @override
  String get deleteSessionConfirm =>
      'Are you sure you want to delete this chat? The messages will be permanently lost.';

  @override
  String get clearHistory => 'చరిత్రను క్లియర్ చేయి';

  @override
  String get clearHistoryConfirm =>
      'ఈ సెషన్‌లోని అన్ని సందేశాలను క్లియర్ చేయాలా?';

  @override
  String get chatHint => 'మీ సందేశాన్ని టైప్ చేయండి...';

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
  String get listaPlusTitle => 'Lista Plus';

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
  String loginError(String error) {
    return 'లాగిన్ లోపం: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'మీ జాబితాను నిర్వహించడానికి సహజంగా మాట్లాడండి!\n\nఉదాహరణలు:\n• \'బ్రెడ్, జున్ను మరియు హామ్ జోడించు\'\n• \'లాండ్రీ డిటర్జెంట్ తీసివేయి\'\n• \'థీమ్‌ను నీలంగా మార్చు\'\n\nఇది Lista Plus Premium యొక్క ప్రత్యేక ఫీచర్.';

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
      'మీ అభిప్రాయం స్వీకరించబడింది మరియు అందరికీ Lista Plus మెరుగుపరచడంలో సహాయపడుతుంది.';

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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'సిస్టమ్ డిఫాల్ట్';

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
  String get clearHistory => 'చరిత్రను క్లియర్ చేయి';

  @override
  String get clearHistoryConfirm =>
      'ఈ సెషన్‌లోని అన్ని సందేశాలను క్లియర్ చేయాలా?';

  @override
  String get chatHint => 'మీ సందేశాన్ని టైప్ చేయండి...';

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
  String get listaPlusTitle => 'Lista Plus';

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
  String loginError(String error) {
    return 'లాగిన్ లోపం: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'మీ జాబితాను నిర్వహించడానికి సహజంగా మాట్లాడండి!\n\nఉదాహరణలు:\n• \'బ్రెడ్, జున్ను మరియు హామ్ జోడించు\'\n• \'లాండ్రీ డిటర్జెంట్ తీసివేయి\'\n• \'థీమ్‌ను నీలంగా మార్చు\'\n\nఇది Lista Plus Premium యొక్క ప్రత్యేక ఫీచర్.';

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
      'మీ అభిప్రాయం అందింది మరియు Lista Plus ను అందరికీ మెరుగుపరచడానికి మాకు సహాయపడుతుంది.';

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
