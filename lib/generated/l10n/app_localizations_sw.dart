// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appTitle => 'Orodha ya Ununuzi';

  @override
  String get lists => 'Orodha';

  @override
  String get pantry => 'Pantri';

  @override
  String get cancel => 'Ghairi';

  @override
  String get save => 'Hifadhi';

  @override
  String get create => 'Unda';

  @override
  String get add => 'Ongeza';

  @override
  String get remove => 'Ondoa';

  @override
  String get delete => 'Futa';

  @override
  String get edit => 'Hariri';

  @override
  String get copy => 'Nakili';

  @override
  String get retry => 'Jaribu tena';

  @override
  String get regenerate => 'Tengeneza upya';

  @override
  String get copiedToClipboard => 'Imenakiliwa kwenye ubao wa kunakilia';

  @override
  String get confirm => 'Thibitisha';

  @override
  String get close => 'Funga';

  @override
  String get import => 'Ingiza';

  @override
  String get rename => 'Badilisha jina';

  @override
  String get upgrade => 'Boresha';

  @override
  String get clear => 'Futa';

  @override
  String error(String message) {
    return 'Hitilafu: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Hitilafu: $message';
  }

  @override
  String get purchaseError => 'Hitilafu katika kuchakata ununuzi. Jaribu tena.';

  @override
  String get restoreError => 'Hitilafu katika kurejesha ununuzi. Jaribu tena.';

  @override
  String get loading => 'Inapakia...';

  @override
  String get fieldRequired => 'Sehemu inayohitajika';

  @override
  String get addedFeedback => 'Imeongezwa!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zimechaguliwa',
      one: '$count imechaguliwa',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Inakadiriwa';

  @override
  String get alreadyPurchased => 'Tayari imenunuliwa';

  @override
  String get clearList => 'Futa orodha';

  @override
  String get clearPurchased => 'Futa zilizonunuliwa';

  @override
  String get share => 'Shiriki';

  @override
  String get shareViaCode => 'Shiriki kwa msimbo';

  @override
  String get importViaCode => 'Ingiza kwa msimbo';

  @override
  String get listAssistant => 'Msaidizi wa orodha';

  @override
  String get globalAssistant => 'Msaidizi wa jumla';

  @override
  String get becomePremium => 'Kuwa Premium';

  @override
  String get manageSubscription => 'Dhibiti usajili';

  @override
  String get completePurchase => 'Kamilisha ununuzi';

  @override
  String get confirmClearList => 'Ondoa vitu vyote?';

  @override
  String get shareListTitle => 'Shiriki Orodha';

  @override
  String get shareThisCode => 'Shiriki msimbo huu:';

  @override
  String get validForLimitedTime => 'Inatumika kwa muda mfupi';

  @override
  String get importListTitle => 'Ingiza Orodha';

  @override
  String get enterCodeHint => 'Weka msimbo';

  @override
  String get confirmArchiveTitle => 'Kamilisha Ununuzi';

  @override
  String get confirmArchiveContent =>
      'Kamilisha ununuzi huu na uweke kumbukumbu?';

  @override
  String get complete => 'Kamilisha';

  @override
  String get listArchived => 'Orodha imehifadhiwa kwa mafanikio!';

  @override
  String listAdded(String listName) {
    return '$listName imeongezwa!';
  }

  @override
  String get buy => 'Nunua';

  @override
  String get unmark => 'Ondoa alama';

  @override
  String confirmDeleteItems(int count) {
    return 'Ondoa vitu $count?';
  }

  @override
  String get confirmDeleteTitle => 'Thibitisha';

  @override
  String confirmContent(int count) {
    return 'Ondoa vitu $count?';
  }

  @override
  String get archiveList => 'Weka kumbukumbu';

  @override
  String get pantryAppBar => 'Pantri';

  @override
  String get generateShoppingList => 'Tengeneza orodha ya ununuzi';

  @override
  String get pantryEmpty => 'Pantri tupu';

  @override
  String get pantryEmptySubtitle =>
      'Ongeza bidhaa unazotaka kuwa nazo nyumbani';

  @override
  String itemsNeedPurchase(int deficit) {
    return 'Vitu $deficit vinahitaji kununuliwa';
  }

  @override
  String get noItemsToBuy => 'Hakuna vitu vinavyohitaji kununuliwa';

  @override
  String get newPantryList => 'Ununuzi wa Pantri';

  @override
  String get newListTitle => 'Orodha Mpya ya Ununuzi';

  @override
  String itemsWillBeAdded(int count) {
    return 'Vitu $count vitaongezwa';
  }

  @override
  String get listNameLabel => 'Jina la orodha';

  @override
  String listCreated(String name, int count) {
    return 'Orodha \"$name\" imeundwa na vitu $count';
  }

  @override
  String get noTracking => 'Hakuna ufuatiliaji';

  @override
  String get markAsPurchased => 'Weka kama imenunuliwa';

  @override
  String editPantryItem(String name) {
    return 'Hariri $name';
  }

  @override
  String get idealQuantity => 'Kiasi bora';

  @override
  String get currentQuantity => 'Kiasi cha sasa';

  @override
  String get consumed => 'Imetumika';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name imejazwa tena hadi $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Ondoa \"$name\" kutoka pantri?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Hariri $name';
  }

  @override
  String get settingsAppBar => 'Mipangilio';

  @override
  String get language => 'Lugha';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Chaguo-msingi la mfumo';

  @override
  String get appearance => 'Mwonekano';

  @override
  String get light => 'Mwanga';

  @override
  String get system => 'Mfumo';

  @override
  String get dark => 'Giza';

  @override
  String get themeColor => 'Rangi ya mandhari';

  @override
  String get finance => 'Fedha';

  @override
  String get monthlyBudgetNav => 'Bajeti ya kila mwezi';

  @override
  String get budgetSubtitle => 'Fuatilia matumizi yako ya kila mwezi';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Hifadhi rudufu';

  @override
  String get backupSubtitle => 'Hamisha au ingiza data yako';

  @override
  String get about => 'Kuhusu';

  @override
  String get version => 'Toleo';

  @override
  String get privacy => 'Faragha';

  @override
  String get termsOfUse => 'Masharti ya matumizi';

  @override
  String get backupTitle => 'Hifadhi rudufu';

  @override
  String get backupPremiumDescription =>
      'Kuhifadhi rudufu na kusafirisha ni kipengele cha premium';

  @override
  String get exportData => 'Hamisha data';

  @override
  String get exportDataSubtitle => 'Hifadhi orodha zote kama JSON';

  @override
  String get importData => 'Ingiza data';

  @override
  String get importDataSubtitle => 'Rejesha orodha kutoka kwa JSON';

  @override
  String get importJsonTitle => 'Ingiza JSON';

  @override
  String get importJsonHint => 'Bandika JSON ya hifadhi rudufu hapa...';

  @override
  String get backupExported => 'Hifadhi rudufu imesafirishwa!';

  @override
  String get budgetAppBar => 'Bajeti ya Kila Mwezi';

  @override
  String get budgetPremiumLocked => 'Bajeti ya jumla ya kila mwezi ni premium';

  @override
  String get budgetUpgradePrompt => 'Boresha ili kufungua';

  @override
  String get noBudgetDefined => 'Hakuna bajeti iliyowekwa';

  @override
  String totalEstimated(String amount) {
    return 'Jumla inakadiriwa: $amount';
  }

  @override
  String get setBudgetButton => 'Weka bajeti';

  @override
  String get budgetLists => 'Orodha';

  @override
  String get budgetValueLabel => 'Kiasi';

  @override
  String get setBudgetTitle => 'Bajeti ya Kila Mwezi';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Zote';

  @override
  String get filterPending => 'Zinazosubiri';

  @override
  String get filterPurchased => 'Zilizonunuliwa';

  @override
  String get sortName => 'Jina';

  @override
  String get sortCategory => 'Kategoria';

  @override
  String get sortDate => 'Tarehe';

  @override
  String get sortManual => 'Mwenyewe';

  @override
  String get addItem => 'Ongeza Kitu';

  @override
  String get itemName => 'Jina la kitu';

  @override
  String get quantityShort => 'Idadi';

  @override
  String get unit => 'Kipimo';

  @override
  String get category => 'Kategoria';

  @override
  String get estimatedPrice => 'Bei inakadiriwa';

  @override
  String get addItemPrice => 'Bei inakadiriwa';

  @override
  String get editItem => 'Hariri Kitu';

  @override
  String get quantityFull => 'Kiasi';

  @override
  String get editItemPrice => 'Bei inakadiriwa';

  @override
  String get addToPantry => 'Ongeza kwenye Pantri';

  @override
  String addToPantryPrompt(String name) {
    return 'Ongeza \"$name\" kwenye Pantri yako?';
  }

  @override
  String get yes => 'Ndiyo';

  @override
  String get productName => 'Jina la bidhaa';

  @override
  String get idealQty => 'Kiasi bora';

  @override
  String get currentQty => 'Kiasi cha sasa';

  @override
  String get trackStock => 'Fuatilia hisa';

  @override
  String get trackStockActive => 'Inaonekana katika mapendekezo ya ununuzi';

  @override
  String get trackStockInactive => 'Haizalishi mapendekezo ya ununuzi';

  @override
  String get createListDialog => 'Unda Orodha';

  @override
  String get renameListDialog => 'Badilisha Jina la Orodha';

  @override
  String get listHistory => 'Historia ya Orodha';

  @override
  String get myLists => 'Orodha Zangu';

  @override
  String get viewActive => 'Tazama Zinazotumika';

  @override
  String get viewHistory => 'Tazama Historia';

  @override
  String get noArchivedLists => 'Hakuna orodha za kumbukumbu';

  @override
  String get noActiveLists => 'Hakuna orodha zinazotumika';

  @override
  String completedOn(String date) {
    return 'Ilikamilishwa tarehe $date';
  }

  @override
  String get sharedLabel => 'Imeshirikiwa';

  @override
  String get restore => 'Rejesha';

  @override
  String get removeSharedTooltip => 'Ondoa';

  @override
  String get deleteListTitle => 'Futa orodha';

  @override
  String deleteListContent(String name) {
    return 'Una uhakika unataka kufuta \"$name\"? Vitu vyote vitaondolewa.';
  }

  @override
  String get removeSharedListTitle => 'Ondoa orodha iliyoshirikiwa';

  @override
  String removeSharedListContent(String name) {
    return 'Ondoa \"$name\" kutoka kwenye orodha zako? Orodha asili haitaathiriwa.';
  }

  @override
  String get createNewList => 'Unda orodha mpya';

  @override
  String get aiAssistant => 'Msaidizi wa AI';

  @override
  String get aiAssistantDescription =>
      'Pata mapendekezo mahiri, mapishi na vidokezo vya kibinafsi kwa msaidizi wetu wa AI.';

  @override
  String get generalAssistant => 'Msaidizi Mkuu';

  @override
  String get clearHistory => 'Futa Historia';

  @override
  String get clearHistoryConfirm => 'Futa ujumbe wote katika kikao hiki?';

  @override
  String get chatHint => 'Andika ujumbe wako...';

  @override
  String chatError(String error) {
    return 'Hitilafu katika kupakia gumzo: $error';
  }

  @override
  String get listHelp => 'Naweza kusaidiaje na orodha yako?';

  @override
  String get generalHelp => 'Naweza kusaidiaje na ununuzi wako leo?';

  @override
  String get chatSubtitle =>
      'Uliza mapendekezo ya vitu, mapishi au vidokezo vya kuokoa.';

  @override
  String get aiError =>
      'Samahani, hitilafu ilitokea wakati wa kuchakata ombi lako. Angalia muunganisho wako au jaribu tena baadaye.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Ingia ili kufungua\nvipengele vya premium';

  @override
  String get signInGoogle => 'Ingia kwa Google';

  @override
  String get signInApple => 'Ingia kwa Apple';

  @override
  String get continueAsGuest => 'Endelea kama mgeni';

  @override
  String loginError(String error) {
    return 'Hitilafu ya kuingia: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Boresha ili kufungua';

  @override
  String get itemRemoved => 'Kitu kimeondolewa';

  @override
  String get undo => 'Tengua';

  @override
  String get emptyListTitle => 'Orodha yako haina kitu';

  @override
  String get emptyListSubtitle => 'Ongeza vitu ili kuanza';

  @override
  String get noListFoundTitle => 'Hakuna orodha zilizopatikana';

  @override
  String get noListFoundSubtitle => 'Unda orodha yako ya kwanza ili kuanza';

  @override
  String get createFirstList => 'Unda Orodha ya Kwanza';

  @override
  String get listBudgetTitle => 'Bajeti ya Orodha';

  @override
  String get budgetAmountLabel => 'Kiasi cha bajeti';

  @override
  String get removeBudget => 'Ondoa';

  @override
  String get prefUnlimitedLists => 'Orodha zisizo na kikomo';

  @override
  String get prefSharing => 'Shiriki orodha';

  @override
  String get prefFullHistory => 'Historia kamili';

  @override
  String get prefExportData => 'Hamisha data';

  @override
  String get prefCustomThemes => 'Mandhari maalum';

  @override
  String get prefMonthlyBudget => 'Bajeti ya jumla ya kila mwezi';

  @override
  String get prefAIAssistant => 'Msaidizi wa Kibinafsi wa AI';

  @override
  String get prefUnlimitedPantry => 'Pantri isiyo na kikomo';

  @override
  String get prefInteractiveArtifacts => 'Vipengee shirikishi vya AI';

  @override
  String get themeGreen => 'Kijani';

  @override
  String get themeBlue => 'Bluu';

  @override
  String get themePurple => 'Zambarau';

  @override
  String get themeRed => 'Nyekundu';

  @override
  String get themeOrange => 'Chungwa';

  @override
  String get themePink => 'Waridi';

  @override
  String get themeIndigo => 'Buluu';

  @override
  String get themeAmber => 'Kaharabu';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Kahawia';

  @override
  String get catFruits => 'Matunda';

  @override
  String get catCleaning => 'Usafishaji';

  @override
  String get catBeverages => 'Vinywaji';

  @override
  String get catBakery => 'Mkate';

  @override
  String get catOthers => 'Vingine';

  @override
  String get unitPack => 'pakiti';

  @override
  String get shareSubject => 'Orodha ya Ununuzi';

  @override
  String get monthlyBudgetTitle => 'Bajeti ya Kila Mwezi';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Futa orodha';

  @override
  String get pantryItemRemoved => 'Kitu kimeondolewa';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: 'Vipengee $deficit vinahitaji kununuliwa',
      one: 'Kipengee $deficit kinahitaji kununuliwa',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Jumla ya gari';

  @override
  String get restockLabel => 'Jaza tena';

  @override
  String get advancedFeatures => 'Vipengele vya hali ya juu';

  @override
  String get selectAll => 'Chagua zote';

  @override
  String get deselectAll => 'Achagua zote';

  @override
  String get monthlyBudgetAppBar => 'Bajeti ya Kila Mwezi';

  @override
  String get budgetEditTitle => 'Bajeti ya Kila Mwezi';

  @override
  String get budgetDashboardTitle => 'Dashibodi';

  @override
  String get selectListForDashboard => 'Chagua orodha ili kutazama dashibodi.';

  @override
  String get spendingAnalysis => 'Uchambuzi wa Matumizi';

  @override
  String get noItemsToAnalyze => 'Hakuna vitu kwenye orodha vya kuchambua.';

  @override
  String get markItemsToSeeAnalysis =>
      'Weka alama ya vitu kama vilivyonunuliwa ili kuona uchambuzi.';

  @override
  String get totalSpending => 'Jumla ya Matumizi';

  @override
  String get spendingByCategory => 'Matumizi kwa Kategoria';

  @override
  String get achievements => 'Mafanikio';

  @override
  String get exportPdfExcel => 'Hamisha PDF/Excel';

  @override
  String get exportPdf => 'Hamisha kama PDF';

  @override
  String get exportExcel => 'Hamisha kama Excel';

  @override
  String get organizingAi => 'INAPANGUA KWA AI...';

  @override
  String get yesLabel => 'Ndiyo';

  @override
  String get noLabel => 'Hapana';

  @override
  String get shareListText => 'Orodha Yangu ya Ununuzi';

  @override
  String get emptyListAddItems =>
      'Orodha yako haina kitu! Ongeza vitu kwanza. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Orodha imepanguliwa kichawi kwa kategoria! ✨';

  @override
  String get shoppingMode => 'Hali ya Ununuzi';

  @override
  String get smartOrganization => 'Upangaji Mahiri';

  @override
  String get savings => 'Akiba';

  @override
  String get shoppingModeHeader => 'HALI YA UNUNUZI';

  @override
  String get shareAsText => 'Tuma vitu kama maandishi yaliyopangwa';

  @override
  String get shareRealtime => 'Usawazishaji wa wakati halisi na watu wengine';

  @override
  String get quickRecipe => 'Mapishi ya haraka';

  @override
  String get quickRecipePrompt =>
      'Pendekeza mapishi na vitu kutoka kwenye orodha yangu.';

  @override
  String get economyTips => 'Vidokezo vya uchumi';

  @override
  String get economyTipsPrompt => 'Nawezaje kuokoa pesa kwenye ununuzi huu?';

  @override
  String get organizeAisles => 'Panga kwa safu';

  @override
  String get organizeAislesPrompt => 'Panga kwa safu za duka.';

  @override
  String get recipeSuggestion => 'Mapendekezo ya mapishi';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Salio la mikopo $remaining';
  }

  @override
  String get addAllToList => 'Ongeza yote kwenye orodha';

  @override
  String get organizeByAisles => 'Panga kwa safu';

  @override
  String get voiceTranscriptionTooltip => 'Kuandika kwa sauti (Bure)';

  @override
  String get aiVoiceCommandTooltip => 'Amri ya Sauti ya AI (Premium)';

  @override
  String get voiceCommandTitle => 'Amri ya Sauti ya AI';

  @override
  String get voiceCommandContent =>
      'Zungumza kwa asili ili kudhibiti orodha yako!\n\nMifano:\n• \'Ongeza mkate, jibini, na ham\'\n• \'Ondoa sabuni ya kufulia\'\n• \'Badilisha mandhari kuwa bluu\'\n\nHiki ni kipengele cha kipekee cha Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Tazama Pland';

  @override
  String get itemsAddedSuccess =>
      'Vitu vimeongezwa kwenye orodha kwa mafanikio!';

  @override
  String get viewList => 'Tazama orodha';

  @override
  String get feedbackTitle => 'Tuma Maoni';

  @override
  String get feedbackPrompt => 'Ungependa kushiriki nini?';

  @override
  String get feedbackTypeBug => 'Ripoti Hitilafu';

  @override
  String get feedbackTypeBugHint => 'Kitu hakifanyi kazi';

  @override
  String get feedbackTypeSuggestion => 'Pendekezo';

  @override
  String get feedbackTypeSuggestionHint => 'Wazo la kuboresha programu';

  @override
  String get feedbackTypeTranslation => 'Suala la Tafsiri';

  @override
  String get feedbackTypeTranslationHint =>
      'Tafsiri isiyo sahihi au isiyo nzuri';

  @override
  String get feedbackTypeFeature => 'Ombi la Kipengele';

  @override
  String get feedbackTypeFeatureHint => 'Kipengele ungependa kuona';

  @override
  String get feedbackTypeOther => 'Nyingine';

  @override
  String get feedbackTypeOtherHint => 'Aina nyingine ya maoni';

  @override
  String get feedbackHint => 'Eleza maoni yako kwa undani...';

  @override
  String get feedbackSend => 'Tuma Maoni';

  @override
  String get feedbackSending => 'Inatuma...';

  @override
  String get feedbackThankYou => 'Asante!';

  @override
  String get feedbackThankYouMessage =>
      'Maoni yako yamepokelewa na yanatusaidia kuboresha Lista Plus kwa kila mtu.';

  @override
  String get feedbackBack => 'Nyuma';

  @override
  String feedbackError(String error) {
    return 'Hitilafu ya kutuma: $error';
  }

  @override
  String get feedbackRetry => 'Jaribu tena';

  @override
  String get feedbackSettingsTitle => 'Tuma Maoni';

  @override
  String get feedbackSettingsSubtitle =>
      'Ripoti hitilafu, pendekeza maboresho, au rekebisha tafsiri';

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
