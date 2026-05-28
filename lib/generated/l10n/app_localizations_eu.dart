// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get appTitle => 'Erosketa Zerrenda';

  @override
  String get lists => 'Zerrendak';

  @override
  String get pantry => 'Jakitegia';

  @override
  String get cancel => 'Utzi';

  @override
  String get save => 'Gorde';

  @override
  String get create => 'Sortu';

  @override
  String get add => 'Gehitu';

  @override
  String get remove => 'Kendu';

  @override
  String get delete => 'Ezabatu';

  @override
  String get edit => 'Editatu';

  @override
  String get copy => 'Kopiatu';

  @override
  String get retry => 'Saiatu berriro';

  @override
  String get regenerate => 'Birgeneratu';

  @override
  String get copiedToClipboard => 'Arbelera kopiatuta';

  @override
  String get confirm => 'Baieztatu';

  @override
  String get close => 'Itxi';

  @override
  String get import => 'Inportatu';

  @override
  String get rename => 'Berrizendatu';

  @override
  String get upgrade => 'Hobetu';

  @override
  String get clear => 'Garbitu';

  @override
  String error(String message) {
    return 'Errorea: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Errorea: $message';
  }

  @override
  String get purchaseError => 'Errorea erosketa prozesatzean. Saiatu berriro.';

  @override
  String get restoreError =>
      'Errorea erosketak berreskuratzean. Saiatu berriro.';

  @override
  String get loading => 'Kargatzen...';

  @override
  String get fieldRequired => 'Eremu beharrezkoa';

  @override
  String get addedFeedback => 'Gehituta!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hautatuta',
      one: '$count hautatuta',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimatuta';

  @override
  String get alreadyPurchased => 'Dagoeneko erosita';

  @override
  String get clearList => 'Garbitu zerrenda';

  @override
  String get clearPurchased => 'Garbitu erositakoak';

  @override
  String get share => 'Partekatu';

  @override
  String get shareViaCode => 'Partekatu kode bidez';

  @override
  String get importViaCode => 'Inportatu kode bidez';

  @override
  String get listAssistant => 'Zerrenda laguntzailea';

  @override
  String get globalAssistant => 'Laguntzaile orokorra';

  @override
  String get becomePremium => 'Premium bihurtu';

  @override
  String get manageSubscription => 'Kudeatu harpidetza';

  @override
  String get completePurchase => 'Osatu erosketa';

  @override
  String get confirmClearList => 'Kendu elementu guztiak?';

  @override
  String get shareListTitle => 'Partekatu Zerrenda';

  @override
  String get shareThisCode => 'Partekatu kode hau:';

  @override
  String get validForLimitedTime => 'Denbora mugaturako baliozkoa';

  @override
  String get importListTitle => 'Inportatu Zerrenda';

  @override
  String get enterCodeHint => 'Sartu kodea';

  @override
  String get confirmArchiveTitle => 'Osatu Erosketa';

  @override
  String get confirmArchiveContent =>
      'Erosketa hau osatu eta zerrenda artxibatu?';

  @override
  String get complete => 'Osatu';

  @override
  String get listArchived => 'Zerrenda behar bezala artxibatu da!';

  @override
  String listAdded(String listName) {
    return '$listName gehituta!';
  }

  @override
  String get buy => 'Erosi';

  @override
  String get unmark => 'Desmarkatu';

  @override
  String confirmDeleteItems(int count) {
    return '$count elementu(k) kendu?';
  }

  @override
  String get confirmDeleteTitle => 'Baieztatu';

  @override
  String confirmContent(int count) {
    return '$count elementu(k) kendu?';
  }

  @override
  String get archiveList => 'Artxibatu zerrenda';

  @override
  String get pantryAppBar => 'Jakitegia';

  @override
  String get generateShoppingList => 'Sortu erosketa zerrenda';

  @override
  String get pantryEmpty => 'Jakitegia hutsik';

  @override
  String get pantryEmptySubtitle =>
      'Gehitu etxean eduki nahi dituzun produktuak';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit elementu(k) erosi behar dira';
  }

  @override
  String get noItemsToBuy => 'Ez dago erosi beharreko elementurik';

  @override
  String get newPantryList => 'Jakitegiko Erosketa';

  @override
  String get newListTitle => 'Erosketa Zerrenda Berria';

  @override
  String itemsWillBeAdded(int count) {
    return '$count elementu(k) gehituko dira';
  }

  @override
  String get listNameLabel => 'Zerrendaren izena';

  @override
  String listCreated(String name, int count) {
    return '\"$name\" zerrenda $count elementurekin sortu da';
  }

  @override
  String get noTracking => 'Seguimendurik gabe';

  @override
  String get markAsPurchased => 'Markatu erosita bezala';

  @override
  String editPantryItem(String name) {
    return 'Editatu $name';
  }

  @override
  String get idealQuantity => 'Kantitate ideala';

  @override
  String get currentQuantity => 'Uneko kantitatea';

  @override
  String get consumed => 'Kontsumitua';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name $quantity ${unit}ra berriz bete da';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Kendu \"$name\" jakitegitik?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editatu $name';
  }

  @override
  String get settingsAppBar => 'Ezarpenak';

  @override
  String get language => 'Hizkuntza';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Sistemaren lehenetsia';

  @override
  String get chooseLanguage => 'Hautatu hizkuntza';

  @override
  String get searchLanguage => 'Bilatu hizkuntza...';

  @override
  String get appearance => 'Itxura';

  @override
  String get light => 'Argia';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Iluna';

  @override
  String get themeColor => 'Gaiaren kolorea';

  @override
  String get dynamicColors => 'Kolore dinamikoak';

  @override
  String get dynamicColorsSubtitle =>
      'Erabili zure hondo-irudian oinarritutako koloreak';

  @override
  String get finance => 'Finantzak';

  @override
  String get monthlyBudgetNav => 'Hileko aurrekontua';

  @override
  String get budgetSubtitle => 'Jarraitu zure hileko gastuak';

  @override
  String get data => 'Datuak';

  @override
  String get backupNav => 'Segurtasun kopia';

  @override
  String get backupSubtitle => 'Esportatu edo inportatu zure datuak';

  @override
  String get about => 'Honi buruz';

  @override
  String get version => 'Bertsioa';

  @override
  String get privacy => 'Pribatutasuna';

  @override
  String get termsOfUse => 'Erabilera baldintzak';

  @override
  String get backupTitle => 'Segurtasun kopia';

  @override
  String get backupPremiumDescription =>
      'Segurtasun kopia eta esportazioa premium ezaugarria da';

  @override
  String get exportData => 'Esportatu datuak';

  @override
  String get exportDataSubtitle => 'Gorde zerrenda guztiak JSON gisa';

  @override
  String get importData => 'Inportatu datuak';

  @override
  String get importDataSubtitle => 'Berreskuratu zerrendak JSON batetik';

  @override
  String get importJsonTitle => 'Inportatu JSON';

  @override
  String get importJsonHint => 'Itsatsi segurtasun kopiako JSON-a hemen...';

  @override
  String get backupExported => 'Segurtasun kopia esportatuta!';

  @override
  String get budgetAppBar => 'Hileko Aurrekontua';

  @override
  String get budgetPremiumLocked => 'Hileko aurrekontu orokorra premium da';

  @override
  String get budgetUpgradePrompt => 'Hobetu desblokeatzeko';

  @override
  String get noBudgetDefined => 'Aurrekonturik ezarri gabe';

  @override
  String totalEstimated(String amount) {
    return 'Guztira estimatua: $amount';
  }

  @override
  String get setBudgetButton => 'Ezarri aurrekontua';

  @override
  String get budgetLists => 'Zerrendak';

  @override
  String get budgetValueLabel => 'Kopurua';

  @override
  String get setBudgetTitle => 'Hileko Aurrekontua';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Denak';

  @override
  String get filterPending => 'Zain';

  @override
  String get filterPurchased => 'Erosita';

  @override
  String get sortName => 'Izena';

  @override
  String get sortCategory => 'Kategoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Eskuz';

  @override
  String get addItem => 'Gehitu Elementua';

  @override
  String get itemName => 'Elementuaren izena';

  @override
  String get quantityShort => 'Kop';

  @override
  String get unit => 'Unitatea';

  @override
  String get category => 'Kategoria';

  @override
  String get estimatedPrice => 'Estimatutako prezioa';

  @override
  String get addItemPrice => 'Estimatutako prezioa';

  @override
  String get editItem => 'Editatu Elementua';

  @override
  String get quantityFull => 'Kantitatea';

  @override
  String get editItemPrice => 'Estimatutako prezioa';

  @override
  String get addToPantry => 'Gehitu Jakitegian';

  @override
  String addToPantryPrompt(String name) {
    return 'Gehitu \"$name\" zure Jakitegian?';
  }

  @override
  String get yes => 'Bai';

  @override
  String get productName => 'Produktuaren izena';

  @override
  String get idealQty => 'Kopuru ideala';

  @override
  String get currentQty => 'Uneko kopurua';

  @override
  String get trackStock => 'Jarraitu stocka';

  @override
  String get trackStockActive => 'Erosketa iradokizunetan agertzen da';

  @override
  String get trackStockInactive => 'Ez du erosketa iradokizunik sortzen';

  @override
  String get createListDialog => 'Sortu Zerrenda';

  @override
  String get renameListDialog => 'Berrizendatu Zerrenda';

  @override
  String get listHistory => 'Zerrendaren Historia';

  @override
  String get myLists => 'Nire Zerrendak';

  @override
  String get viewActive => 'Ikusi Aktiboak';

  @override
  String get viewHistory => 'Ikusi Historia';

  @override
  String get noArchivedLists => 'Ez dago artxibatutako zerrendarik';

  @override
  String get noActiveLists => 'Ez dago zerrenda aktiborik';

  @override
  String completedOn(String date) {
    return '$date(e)an osatua';
  }

  @override
  String get sharedLabel => 'Partekatua';

  @override
  String get restore => 'Berreskuratu';

  @override
  String get removeSharedTooltip => 'Kendu';

  @override
  String get deleteListTitle => 'Ezabatu zerrenda';

  @override
  String deleteListContent(String name) {
    return 'Ziur zaude \"$name\" ezabatu nahi duzula? Elementu guztiak kenduko dira.';
  }

  @override
  String get removeSharedListTitle => 'Kendu partekatutako zerrenda';

  @override
  String removeSharedListContent(String name) {
    return 'Kendu \"$name\" zure zerrendetatik? Jatorrizko zerrendak ez du kalterik izango.';
  }

  @override
  String get createNewList => 'Sortu zerrenda berria';

  @override
  String get aiAssistant => 'AI Laguntzailea';

  @override
  String get aiAssistantDescription =>
      'Eskuratu iradokizun adimentsuak, errezetak eta aholku pertsonalizatuak gure AI laguntzailearekin.';

  @override
  String get generalAssistant => 'Laguntzaile Orokorra';

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
  String get clearHistory => 'Garbitu Historia';

  @override
  String get clearHistoryConfirm => 'Saio honetako mezu guztiak garbitu?';

  @override
  String get chatHint => 'Idatzi zure mezua...';

  @override
  String chatError(String error) {
    return 'Errorea txata kargatzean: $error';
  }

  @override
  String get listHelp => 'Nola lagundu dezaket zure zerrendarekin?';

  @override
  String get generalHelp => 'Nola lagundu dezaket zure erosketetan gaur?';

  @override
  String get chatSubtitle =>
      'Eskatu elementu iradokizunak, errezetak edo aurrezteko aholkuak.';

  @override
  String get aiError =>
      'Barkatu, errorea gertatu da zure eskaera prozesatzean. Egiaztatu konexioa edo saiatu berriro geroago.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Saioa hasi premium\nezaugarriak desblokeatzeko';

  @override
  String get signInGoogle => 'Saioa hasi Google-rekin';

  @override
  String get signInApple => 'Saioa hasi Apple-rekin';

  @override
  String get continueAsGuest => 'Jarraitu gonbidatu gisa';

  @override
  String loginError(String error) {
    return 'Saio-hasierako errorea: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Hobetu desblokeatzeko';

  @override
  String get itemRemoved => 'Elementua kenduta';

  @override
  String get undo => 'Desegin';

  @override
  String get emptyListTitle => 'Zure zerrenda hutsik dago';

  @override
  String get emptyListSubtitle => 'Gehitu elementuak hasteko';

  @override
  String get noListFoundTitle => 'Ez da zerrendarik aurkitu';

  @override
  String get noListFoundSubtitle => 'Sortu zure lehen zerrenda hasteko';

  @override
  String get createFirstList => 'Sortu Lehen Zerrenda';

  @override
  String get listBudgetTitle => 'Zerrendaren Aurrekontua';

  @override
  String get budgetAmountLabel => 'Aurrekontuaren kopurua';

  @override
  String get removeBudget => 'Kendu';

  @override
  String get prefUnlimitedLists => 'Zerrenda mugagabeak';

  @override
  String get prefSharing => 'Partekatu zerrendak';

  @override
  String get prefFullHistory => 'Historia osoa';

  @override
  String get prefExportData => 'Esportatu datuak';

  @override
  String get prefCustomThemes => 'Gai pertsonalizatuak';

  @override
  String get prefMonthlyBudget => 'Hileko aurrekontu orokorra';

  @override
  String get prefAIAssistant => 'AI Laguntzaile Pertsonala';

  @override
  String get prefUnlimitedPantry => 'Jakitegi mugagabea';

  @override
  String get prefInteractiveArtifacts => 'AI Artifizio Interaktiboak';

  @override
  String get themeGreen => 'Berdea';

  @override
  String get themeBlue => 'Urdina';

  @override
  String get themePurple => 'Morea';

  @override
  String get themeRed => 'Gorria';

  @override
  String get themeOrange => 'Laranja';

  @override
  String get themePink => 'Arrosa';

  @override
  String get themeIndigo => 'Indigoa';

  @override
  String get themeAmber => 'Anbarra';

  @override
  String get themeTeal => 'Teala';

  @override
  String get themeBrown => 'Marroia';

  @override
  String get catFruits => 'Frutak';

  @override
  String get catCleaning => 'Garbiketa';

  @override
  String get catBeverages => 'Edariak';

  @override
  String get catBakery => 'Okindegia';

  @override
  String get catOthers => 'Besteak';

  @override
  String get unitPack => 'pakete';

  @override
  String get shareSubject => 'Erosketa Zerrenda';

  @override
  String get monthlyBudgetTitle => 'Hileko Aurrekontua';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Ezabatu zerrenda';

  @override
  String get pantryItemRemoved => 'Elementua kenduta';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit elementu erosi behar dira',
      one: '$deficit elementu erosi behar da',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Saskiaren guztira';

  @override
  String get restockLabel => 'Berriz bete';

  @override
  String get advancedFeatures => 'Ezaugarri aurreratuak';

  @override
  String get selectAll => 'Hautatu guztiak';

  @override
  String get deselectAll => 'Deshautatu guztiak';

  @override
  String get monthlyBudgetAppBar => 'Hileko Aurrekontua';

  @override
  String get budgetEditTitle => 'Hileko Aurrekontua';

  @override
  String get budgetDashboardTitle => 'Panela';

  @override
  String get selectListForDashboard => 'Hautatu zerrenda bat panela ikusteko.';

  @override
  String get spendingAnalysis => 'Gastuen Analisia';

  @override
  String get noItemsToAnalyze => 'Ez dago elementurik zerrendan analizatzeko.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markatu elementuak erosita gisa analisia ikusteko.';

  @override
  String get totalSpending => 'Gastatutako Guztira';

  @override
  String get spendingByCategory => 'Gastuak Kategoriaren arabera';

  @override
  String get achievements => 'Edukiak';

  @override
  String get exportPdfExcel => 'Esportatu PDF/Excel';

  @override
  String get exportPdf => 'Esportatu PDF gisa';

  @override
  String get exportExcel => 'Esportatu Excel gisa';

  @override
  String get organizingAi => 'AI-REKIN ANTOLATZEN...';

  @override
  String get yesLabel => 'Bai';

  @override
  String get noLabel => 'Ez';

  @override
  String get shareListText => 'Nire Erosketa Zerrenda';

  @override
  String get emptyListAddItems =>
      'Zure zerrenda hutsik dago! Gehitu elementuak lehenik. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Zerrenda modu magikoan antolatuta kategorien arabera! ✨';

  @override
  String get shoppingMode => 'Erosketa Modua';

  @override
  String get smartOrganization => 'Antolaketa Adimentsua';

  @override
  String get savings => 'Aurrezkiak';

  @override
  String get shoppingModeHeader => 'EROSKETA MODUA';

  @override
  String get shareAsText => 'Bidali elementuak testu formatudun gisa';

  @override
  String get shareRealtime =>
      'Denbora errealeko sinkronizazioa beste pertsonekin';

  @override
  String get quickRecipe => 'Errezeta azkarra';

  @override
  String get quickRecipePrompt =>
      'Iradoki errezetak nire zerrendako elementuekin.';

  @override
  String get economyTips => 'Aurrezteko aholkuak';

  @override
  String get economyTipsPrompt =>
      'Nola aurreztu dezaket dirua erosketa honetan?';

  @override
  String get organizeAisles => 'Antolatu pasilloka';

  @override
  String get organizeAislesPrompt => 'Antolatu merkatuaren pasilloen arabera.';

  @override
  String get recipeSuggestion => 'Errezeta iradokizuna';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kreditu geratzen dira';
  }

  @override
  String get addAllToList => 'Gehitu denak zerrendara';

  @override
  String get organizeByAisles => 'Antolatu pasilloka';

  @override
  String get voiceTranscriptionTooltip => 'Ahots bidezko idazketa (Doan)';

  @override
  String get aiVoiceCommandTooltip => 'AI Ahots Komandoa (Premium)';

  @override
  String get voiceCommandTitle => 'AI Ahots Komandoa';

  @override
  String get voiceCommandContent =>
      'Hitzez naturalki zure zerrenda kudeatzeko!\n\nAdibideak:\n• \'Gehitu ogia, gazta eta urdaiazpikoa\'\n• \'Kendu detergentea\'\n• \'Aldatu gaia urdinera\'\n\nHau Lista Plus Premium-en ezaugarri esklusiboa da.';

  @override
  String get voiceCommandPlanBtn => 'Ikusi Planak';

  @override
  String get itemsAddedSuccess =>
      'Elementuak behar bezala gehitu dira zerrendara!';

  @override
  String get viewList => 'Ikusi zerrenda';

  @override
  String get feedbackTitle => 'Bidali Iritzia';

  @override
  String get feedbackPrompt => 'Zer partekatu nahi zenuke?';

  @override
  String get feedbackTypeBug => 'Akatsa Salatu';

  @override
  String get feedbackTypeBugHint => 'Zerbait ez dabil';

  @override
  String get feedbackTypeSuggestion => 'Iradokizuna';

  @override
  String get feedbackTypeSuggestionHint => 'Aplikazioa hobetzeko ideia';

  @override
  String get feedbackTypeTranslation => 'Itzulpen Arazoa';

  @override
  String get feedbackTypeTranslationHint => 'Itzulpen okerra edo baldarka';

  @override
  String get feedbackTypeFeature => 'Ezaugarri Eskaera';

  @override
  String get feedbackTypeFeatureHint => 'Ikusi nahi duzun ezaugarria';

  @override
  String get feedbackTypeOther => 'Besteak';

  @override
  String get feedbackTypeOtherHint => 'Beste iritzi mota bat';

  @override
  String get feedbackHint => 'Deskribatu zure iritzia xehetasunez...';

  @override
  String get feedbackSend => 'Bidali Iritzia';

  @override
  String get feedbackSending => 'Bidaltzen...';

  @override
  String get feedbackThankYou => 'Eskerrik asko!';

  @override
  String get feedbackThankYouMessage =>
      'Zure iritzia jaso dugu eta Lista Plus denontzat hobetzen laguntzen digu.';

  @override
  String get feedbackBack => 'Atzera';

  @override
  String feedbackError(String error) {
    return 'Bidaltze-errorea: $error';
  }

  @override
  String get feedbackRetry => 'Saiatu berriro';

  @override
  String get feedbackSettingsTitle => 'Bidali Iritzia';

  @override
  String get feedbackSettingsSubtitle =>
      'Salatu akatsak, iradoki hobekuntzak edo konpondu itzulpenak';

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
  String get openMenu => 'Ireki menua';

  @override
  String get viewRecipe => 'Ikusi errezeta';

  @override
  String get recipeCreated => 'Errezeta sortuta!';

  @override
  String get editRecipe => 'Editatu';

  @override
  String get deleteRecipe => 'Ezabatu';

  @override
  String get deleteRecipeConfirm => 'Errezeta hau ezabatu?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Ziur zaude \"$recipeName\" ezabatu nahi duzula? Ekintza hau ezin da desegin.';
  }

  @override
  String get ingredients => 'Osagaiak';

  @override
  String get instructions => 'Argibideak';

  @override
  String get prepTime => 'Prestatze denbora';

  @override
  String get recipeSaved => 'Errezeta gordeta!';

  @override
  String get noRecipesSaved => 'Ez dago errezetarik gordeta';

  @override
  String get noRecipesSavedHint =>
      'Sortu zure lehen errezeta pertsonalizatua beheko botoia sakatuz.';

  @override
  String get myRecipes => 'Nire errezetak';

  @override
  String get newRecipe => 'Errezeta berria';

  @override
  String get loadingRecipes => 'Zure errezetak kargatzen...';

  @override
  String get errorLoadingRecipes => 'Errorea errezetak kargatzean';

  @override
  String get addIngredient => 'Gehitu osagaia';

  @override
  String get saveRecipe => 'Gorde';

  @override
  String get recipeName => 'Errezetaren izena';

  @override
  String get shortDescription => 'Deskribapen laburra';

  @override
  String get prepTimeMinutes => 'Prestatze denbora (minutuak)';

  @override
  String get instructionsHint => 'Idatzi urrats bat lerroko...';

  @override
  String get addPhoto => 'Gehitu argazkia';

  @override
  String get imageUrlPlaceholder => 'Edo itsatsi irudi baten URLa';

  @override
  String get tags => 'Etiketak';

  @override
  String get recipeTags => 'Errezetaren etiketak';

  @override
  String get suggestedTags => 'Iradokitakoak';

  @override
  String get searchRecipes => 'Bilatu errezetak...';

  @override
  String get filterByTag => 'Filtratu etiketaren arabera';

  @override
  String get allTags => 'Denak';

  @override
  String get recipeDeleted => 'Errezeta ezabatuta';

  @override
  String get saveChanges => 'Gorde aldaketak';

  @override
  String get editRecipeTitle => 'Editatu errezeta';

  @override
  String get newRecipeTitle => 'Errezeta berria';

  @override
  String get requiredField => 'Beharrezkoa';

  @override
  String get chooseImageSource => 'Hautatu irudiaren jatorria';

  @override
  String get gallery => 'Galeria';

  @override
  String get enterUrl => 'Sartu URLa';

  @override
  String get recipeImage => 'Errezetaren irudia';

  @override
  String get removeImage => 'Kendu irudia';

  @override
  String get mealPlannerTitle => 'Otorduen planifikatzailea';

  @override
  String get mealPlannerViewMonthly => 'Hileko ikuspegia';

  @override
  String get mealPlannerViewWeekly => 'Asteko ikuspegia';

  @override
  String get mealPlannerNoMeals => 'Ez dago otordurik planifikatuta';

  @override
  String get mealPlannerNoMealsHint => 'Sakatu egun bat otordu bat gehitzeko';

  @override
  String get mealPlannerLoading => 'Otorduen plana kargatzen...';

  @override
  String get mealPlannerError => 'Errorea otorduen plana kargatzean';

  @override
  String get mealPlannerAddMeal => 'Gehitu otordua';

  @override
  String get mealPlannerEditMeal => 'Editatu otordua';

  @override
  String get mealPlannerDeleteMeal => 'Kendu otordua';

  @override
  String get mealPlannerMealDeleted => 'Otordua kenduta';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ano',
      one: '$count ano',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Anoak';

  @override
  String get mealPlannerNoteLabel => 'Oharra (aukerakoa)';

  @override
  String get mealPlannerSelectRecipe => 'Hautatu errezeta bat';

  @override
  String get mealPlannerSearchRecipes => 'Bilatu errezetak...';

  @override
  String get mealPlannerNoRecipesFound => 'Ez da errezetarik aurkitu';

  @override
  String get mealPlannerNoRecipesHint =>
      'Sortu errezetak Errezetak fitxan lehenik';

  @override
  String get mealPlannerSave => 'Gehitu planera';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total otordu planifikatuta';
  }

  @override
  String get mealPlannerGenerateList => 'Sortu erosketa zerrenda';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Gehitu aste honetako otorduetako osagai guztiak erosketa zerrendara?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '¡$count osagai gehitu dira zerrendara!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Ez dago osagairik gehitzeko. Planifikatu otorduak errezetekin lehenik.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Sortu erosketa zerrenda bat lehenik.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Gosaria';

  @override
  String get mealPlannerMealTypeLunch => 'Bazkaria';

  @override
  String get mealPlannerMealTypeDinner => 'Afaria';

  @override
  String get mealPlannerMealTypeSnack => 'Askaria';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty =>
      'Ez dago ezer planifikatuta aste honetarako';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Sakatu edozein egun otorduak planifikatzen hasteko!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Invite to list';

  @override
  String get shareApp => 'Share app';

  @override
  String get shareAppDescription => 'Invite friends to use Lista Plus';
}
