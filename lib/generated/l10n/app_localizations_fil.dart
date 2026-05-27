// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appTitle => 'Listahan ng Pamimili';

  @override
  String get lists => 'Mga Listahan';

  @override
  String get pantry => 'Dispatch';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get save => 'I-save';

  @override
  String get create => 'Gumawa';

  @override
  String get add => 'Idagdag';

  @override
  String get remove => 'Alisin';

  @override
  String get delete => 'Burahin';

  @override
  String get edit => 'I-edit';

  @override
  String get copy => 'Kopyahin';

  @override
  String get retry => 'Subukan muli';

  @override
  String get regenerate => 'Muling buuin';

  @override
  String get copiedToClipboard => 'Nakopya sa clipboard';

  @override
  String get confirm => 'Kumpirmahin';

  @override
  String get close => 'Isara';

  @override
  String get import => 'I-import';

  @override
  String get rename => 'Palitan ng pangalan';

  @override
  String get upgrade => 'Mag-upgrade';

  @override
  String get clear => 'Linisin';

  @override
  String error(String message) {
    return 'Error: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Error: $message';
  }

  @override
  String get purchaseError => 'Error sa pagproseso ng pagbili. Subukan muli.';

  @override
  String get restoreError =>
      'Error sa pag-restore ng mga pagbili. Subukan muli.';

  @override
  String get loading => 'Naglo-load...';

  @override
  String get fieldRequired => 'Kinakailangang field';

  @override
  String get addedFeedback => 'Naidagdag!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ang napili',
      one: '$count ang napili',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Tantiya';

  @override
  String get alreadyPurchased => 'Nabili na';

  @override
  String get clearList => 'Linisin ang listahan';

  @override
  String get clearPurchased => 'Linisin ang mga nabili';

  @override
  String get share => 'Ibahagi';

  @override
  String get shareViaCode => 'Ibahagi sa pamamagitan ng code';

  @override
  String get importViaCode => 'I-import sa pamamagitan ng code';

  @override
  String get listAssistant => 'Katulong ng listahan';

  @override
  String get globalAssistant => 'Pangkalahatang katulong';

  @override
  String get becomePremium => 'Maging Premium';

  @override
  String get manageSubscription => 'Pamahalaan ang subscription';

  @override
  String get completePurchase => 'Kumpletuhin ang pagbili';

  @override
  String get confirmClearList => 'Alisin lahat ng item?';

  @override
  String get shareListTitle => 'Ibahagi ang Listahan';

  @override
  String get shareThisCode => 'Ibahagi ang code na ito:';

  @override
  String get validForLimitedTime => 'May bisa sa limitadong panahon';

  @override
  String get importListTitle => 'I-import ang Listahan';

  @override
  String get enterCodeHint => 'Ilagay ang code';

  @override
  String get confirmArchiveTitle => 'Kumpletuhin ang Pagbili';

  @override
  String get confirmArchiveContent =>
      'Kumpletuhin ang pagbiling ito at i-archive ang listahan?';

  @override
  String get complete => 'Kumpletuhin';

  @override
  String get listArchived => 'Matagumpay na na-archive ang listahan!';

  @override
  String listAdded(String listName) {
    return 'Naidagdag ang $listName!';
  }

  @override
  String get buy => 'Bumili';

  @override
  String get unmark => 'Alisin ang marka';

  @override
  String confirmDeleteItems(int count) {
    return 'Alisin ang $count item?';
  }

  @override
  String get confirmDeleteTitle => 'Kumpirmahin';

  @override
  String confirmContent(int count) {
    return 'Alisin ang $count item?';
  }

  @override
  String get archiveList => 'I-archive ang listahan';

  @override
  String get pantryAppBar => 'Dispatch';

  @override
  String get generateShoppingList => 'Gumawa ng listahan ng pamimili';

  @override
  String get pantryEmpty => 'Walang laman ang dispatch';

  @override
  String get pantryEmptySubtitle =>
      'Idagdag ang mga produktong gusto mong itabi sa bahay';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item ang kailangang bilhin';
  }

  @override
  String get noItemsToBuy => 'Walang item na kailangang bilhin';

  @override
  String get newPantryList => 'Pamili mula sa Dispatch';

  @override
  String get newListTitle => 'Bagong Listahan ng Pamimili';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item ang idadagdag';
  }

  @override
  String get listNameLabel => 'Pangalan ng listahan';

  @override
  String listCreated(String name, int count) {
    return 'Ang listahang \"$name\" ay ginawa na may $count item';
  }

  @override
  String get noTracking => 'Walang pagsubaybay';

  @override
  String get markAsPurchased => 'Markahan bilang nabili';

  @override
  String editPantryItem(String name) {
    return 'I-edit ang $name';
  }

  @override
  String get idealQuantity => 'Tamang dami';

  @override
  String get currentQuantity => 'Kasalukuyang dami';

  @override
  String get consumed => 'Nagamit na';

  @override
  String restocked(String name, int quantity, String unit) {
    return 'Ang $name ay ni-restock sa $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Alisin ang \"$name\" sa dispatch?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'I-edit ang $name';
  }

  @override
  String get settingsAppBar => 'Mga Setting';

  @override
  String get language => 'Wika';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Default ng system';

  @override
  String get appearance => 'Itsura';

  @override
  String get light => 'Maliwanag';

  @override
  String get system => 'System';

  @override
  String get dark => 'Madilim';

  @override
  String get themeColor => 'Kulay ng tema';

  @override
  String get finance => 'Pananalapi';

  @override
  String get monthlyBudgetNav => 'Buwanang badyet';

  @override
  String get budgetSubtitle => 'Subaybayan ang iyong buwanang paggastos';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'I-export o i-import ang iyong data';

  @override
  String get about => 'Tungkol';

  @override
  String get version => 'Bersyon';

  @override
  String get privacy => 'Privacy';

  @override
  String get termsOfUse => 'Mga tuntunin ng paggamit';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Ang backup at pag-export ay isang premium na feature';

  @override
  String get exportData => 'I-export ang data';

  @override
  String get exportDataSubtitle => 'I-save ang lahat ng listahan bilang JSON';

  @override
  String get importData => 'I-import ang data';

  @override
  String get importDataSubtitle => 'I-restore ang mga listahan mula sa JSON';

  @override
  String get importJsonTitle => 'I-import ang JSON';

  @override
  String get importJsonHint => 'I-paste ang backup na JSON dito...';

  @override
  String get backupExported => 'Na-export ang backup!';

  @override
  String get budgetAppBar => 'Buwanang Badyet';

  @override
  String get budgetPremiumLocked =>
      'Ang pandaigdigang buwanang badyet ay premium';

  @override
  String get budgetUpgradePrompt => 'Mag-upgrade para ma-unlock';

  @override
  String get noBudgetDefined => 'Walang nakatakdang badyet';

  @override
  String totalEstimated(String amount) {
    return 'Kabuuang tantiya: $amount';
  }

  @override
  String get setBudgetButton => 'Itakda ang badyet';

  @override
  String get budgetLists => 'Mga Listahan';

  @override
  String get budgetValueLabel => 'Halaga';

  @override
  String get setBudgetTitle => 'Buwanang Badyet';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Lahat';

  @override
  String get filterPending => 'Nakabinbin';

  @override
  String get filterPurchased => 'Nabili na';

  @override
  String get sortName => 'Pangalan';

  @override
  String get sortCategory => 'Kategorya';

  @override
  String get sortDate => 'Petsa';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Magdagdag ng Item';

  @override
  String get itemName => 'Pangalan ng item';

  @override
  String get quantityShort => 'Dami';

  @override
  String get unit => 'Unit';

  @override
  String get category => 'Kategorya';

  @override
  String get estimatedPrice => 'Tantiya sa presyo';

  @override
  String get addItemPrice => 'Tantiya sa presyo';

  @override
  String get editItem => 'I-edit ang Item';

  @override
  String get quantityFull => 'Dami';

  @override
  String get editItemPrice => 'Tantiya sa presyo';

  @override
  String get addToPantry => 'Idagdag sa Dispatch';

  @override
  String addToPantryPrompt(String name) {
    return 'Idagdag ang \"$name\" sa iyong Dispatch?';
  }

  @override
  String get yes => 'Oo';

  @override
  String get productName => 'Pangalan ng produkto';

  @override
  String get idealQty => 'Tamang dami';

  @override
  String get currentQty => 'Kasalukuyang dami';

  @override
  String get trackStock => 'Subaybayan ang stock';

  @override
  String get trackStockActive => 'Lumalabas sa mga mungkahi sa pamimili';

  @override
  String get trackStockInactive => 'Hindi lumilikha ng mungkahi sa pamimili';

  @override
  String get createListDialog => 'Gumawa ng Listahan';

  @override
  String get renameListDialog => 'Palitan ang Pangalan ng Listahan';

  @override
  String get listHistory => 'Kasaysayan ng Listahan';

  @override
  String get myLists => 'Aking mga Listahan';

  @override
  String get viewActive => 'Tingnan ang Aktibo';

  @override
  String get viewHistory => 'Tingnan ang Kasaysayan';

  @override
  String get noArchivedLists => 'Walang naka-archive na listahan';

  @override
  String get noActiveLists => 'Walang aktibong listahan';

  @override
  String completedOn(String date) {
    return 'Natapos noong $date';
  }

  @override
  String get sharedLabel => 'Ibinahagi';

  @override
  String get restore => 'I-restore';

  @override
  String get removeSharedTooltip => 'Alisin';

  @override
  String get deleteListTitle => 'Burahin ang listahan';

  @override
  String deleteListContent(String name) {
    return 'Sigurado ka bang gusto mong burahin ang \"$name\"? Ang lahat ng item ay aalisin.';
  }

  @override
  String get removeSharedListTitle => 'Alisin ang ibinahaging listahan';

  @override
  String removeSharedListContent(String name) {
    return 'Alisin ang \"$name\" sa iyong mga listahan? Ang orihinal na listahan ay hindi maaapektuhan.';
  }

  @override
  String get createNewList => 'Gumawa ng bagong listahan';

  @override
  String get aiAssistant => 'AI Assistant';

  @override
  String get aiAssistantDescription =>
      'Kumuha ng matatalinong mungkahi, recipe at personal na tip gamit ang aming AI assistant.';

  @override
  String get generalAssistant => 'Pangkalahatang Assistant';

  @override
  String get clearHistory => 'Linisin ang Kasaysayan';

  @override
  String get clearHistoryConfirm =>
      'Linisin lahat ng mensahe sa session na ito?';

  @override
  String get chatHint => 'I-type ang iyong mensahe...';

  @override
  String chatError(String error) {
    return 'Error sa pag-load ng chat: $error';
  }

  @override
  String get listHelp => 'Paano ako makakatulong sa iyong listahan?';

  @override
  String get generalHelp => 'Paano ako makakatulong sa iyong pamimili ngayon?';

  @override
  String get chatSubtitle =>
      'Humiling ng mga mungkahi sa item, recipe o tip sa pagtitipid.';

  @override
  String get aiError =>
      'Paumanhin, may error sa pagproseso ng iyong kahilingan. Suriin ang iyong koneksyon o subukan muli mamaya.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt =>
      'Mag-log in upang i-unlock\nang mga premium na feature';

  @override
  String get signInGoogle => 'Mag-sign in gamit ang Google';

  @override
  String get signInApple => 'Mag-sign in gamit ang Apple';

  @override
  String get continueAsGuest => 'Magpatuloy bilang bisita';

  @override
  String loginError(String error) {
    return 'Error sa pag-login: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Mag-upgrade para ma-unlock';

  @override
  String get itemRemoved => 'Naalis ang item';

  @override
  String get undo => 'I-undo';

  @override
  String get emptyListTitle => 'Walang laman ang iyong listahan';

  @override
  String get emptyListSubtitle => 'Magdagdag ng mga item para makapagsimula';

  @override
  String get noListFoundTitle => 'Walang nakitang listahan';

  @override
  String get noListFoundSubtitle =>
      'Gawin ang iyong unang listahan para makapagsimula';

  @override
  String get createFirstList => 'Gumawa ng Unang Listahan';

  @override
  String get listBudgetTitle => 'Badyet ng Listahan';

  @override
  String get budgetAmountLabel => 'Halaga ng badyet';

  @override
  String get removeBudget => 'Alisin';

  @override
  String get prefUnlimitedLists => 'Walang limitasyong listahan';

  @override
  String get prefSharing => 'Ibahagi ang mga listahan';

  @override
  String get prefFullHistory => 'Buong kasaysayan';

  @override
  String get prefExportData => 'I-export ang data';

  @override
  String get prefCustomThemes => 'Mga custom na tema';

  @override
  String get prefMonthlyBudget => 'Pandaigdigang buwanang badyet';

  @override
  String get prefAIAssistant => 'Personal na AI Assistant';

  @override
  String get prefUnlimitedPantry => 'Walang limitasyong dispatch';

  @override
  String get prefInteractiveArtifacts => 'Interactive na AI Artifacts';

  @override
  String get themeGreen => 'Berde';

  @override
  String get themeBlue => 'Asul';

  @override
  String get themePurple => 'Lila';

  @override
  String get themeRed => 'Pula';

  @override
  String get themeOrange => 'Kahel';

  @override
  String get themePink => 'Rosas';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Kayumanggi';

  @override
  String get catFruits => 'Mga Prutas';

  @override
  String get catCleaning => 'Paglilinis';

  @override
  String get catBeverages => 'Mga Inumin';

  @override
  String get catBakery => 'Panaderya';

  @override
  String get catOthers => 'Iba pa';

  @override
  String get unitPack => 'pack';

  @override
  String get shareSubject => 'Listahan ng Pamimili';

  @override
  String get monthlyBudgetTitle => 'Buwanang Badyet';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Burahin ang listahan';

  @override
  String get pantryItemRemoved => 'Naalis ang item';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit item ang kailangang bilhin',
      one: '$deficit item ang kailangang bilhin',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Kabuuan ng cart';

  @override
  String get restockLabel => 'Mag-restock';

  @override
  String get advancedFeatures => 'Mga advanced na feature';

  @override
  String get selectAll => 'Piliin lahat';

  @override
  String get deselectAll => 'Alisin lahat ng pagpili';

  @override
  String get monthlyBudgetAppBar => 'Buwanang Badyet';

  @override
  String get budgetEditTitle => 'Buwanang Badyet';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard =>
      'Pumili ng listahan para tingnan ang dashboard.';

  @override
  String get spendingAnalysis => 'Pagsusuri ng Paggastos';

  @override
  String get noItemsToAnalyze => 'Walang item sa listahan para suriin.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markahan ang mga item bilang nabili para makita ang pagsusuri.';

  @override
  String get totalSpending => 'Kabuuang Nagastos';

  @override
  String get spendingByCategory => 'Paggastos ayon sa Kategorya';

  @override
  String get achievements => 'Mga Nakamit';

  @override
  String get exportPdfExcel => 'I-export ang PDF/Excel';

  @override
  String get exportPdf => 'I-export bilang PDF';

  @override
  String get exportExcel => 'I-export bilang Excel';

  @override
  String get organizingAi => 'NAGSASA-AYOS GAMIT ANG AI...';

  @override
  String get yesLabel => 'Oo';

  @override
  String get noLabel => 'Hindi';

  @override
  String get shareListText => 'Aking Listahan ng Pamimili';

  @override
  String get emptyListAddItems =>
      'Walang laman ang iyong listahan! Magdagdag muna ng mga item. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Mahiwagang naayos ang listahan ayon sa mga kategorya! ✨';

  @override
  String get shoppingMode => 'Mode ng Pamimili';

  @override
  String get smartOrganization => 'Matalinong Organisasyon';

  @override
  String get savings => 'Mga Natipid';

  @override
  String get shoppingModeHeader => 'MODE NG PAMIMILI';

  @override
  String get shareAsText => 'Ipadala ang mga item bilang naka-format na teksto';

  @override
  String get shareRealtime => 'Real-time na sync sa ibang tao';

  @override
  String get quickRecipe => 'Mabilis na recipe';

  @override
  String get quickRecipePrompt =>
      'Magmungkahi ng mga recipe gamit ang mga item mula sa aking listahan.';

  @override
  String get economyTips => 'Mga tip sa pagtitipid';

  @override
  String get economyTipsPrompt => 'Paano ako makakatipid sa pagbilhing ito?';

  @override
  String get organizeAisles => 'Ayusin ayon sa mga aisle';

  @override
  String get organizeAislesPrompt => 'Ayusin ayon sa mga aisle ng palengke.';

  @override
  String get recipeSuggestion => 'Mungkahing recipe';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining natitirang credits';
  }

  @override
  String get addAllToList => 'Idagdag lahat sa listahan';

  @override
  String get organizeByAisles => 'Ayusin ayon sa mga aisle';

  @override
  String get voiceTranscriptionTooltip => 'Pag-type gamit ang boses (Libre)';

  @override
  String get aiVoiceCommandTooltip => 'AI Voice Command (Premium)';

  @override
  String get voiceCommandTitle => 'AI Voice Command';

  @override
  String get voiceCommandContent =>
      'Magsalita nang natural para pamahalaan ang iyong listahan!\n\nMga Halimbawa:\n• \'Magdagdag ng tinapay, keso, at hamon\'\n• \'Alisin ang detergent\'\n• \'Palitan ang tema sa asul\'\n\nIto ay isang eksklusibong feature ng Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Tingnan ang mga Plano';

  @override
  String get itemsAddedSuccess =>
      'Matagumpay na naidagdag ang mga item sa listahan!';

  @override
  String get viewList => 'Tingnan ang listahan';

  @override
  String get feedbackTitle => 'Magpadala ng Feedback';

  @override
  String get feedbackPrompt => 'Ano ang nais mong ibahagi?';

  @override
  String get feedbackTypeBug => 'Mag-ulat ng Bug';

  @override
  String get feedbackTypeBugHint => 'May hindi gumagana';

  @override
  String get feedbackTypeSuggestion => 'Mungkahi';

  @override
  String get feedbackTypeSuggestionHint => 'Ideya para mapabuti ang app';

  @override
  String get feedbackTypeTranslation => 'Isyu sa Pagsasalin';

  @override
  String get feedbackTypeTranslationHint => 'Mali o awkward na pagsasalin';

  @override
  String get feedbackTypeFeature => 'Kahilingan ng Feature';

  @override
  String get feedbackTypeFeatureHint => 'Feature na gusto mong makita';

  @override
  String get feedbackTypeOther => 'Iba pa';

  @override
  String get feedbackTypeOtherHint => 'Iba pang uri ng feedback';

  @override
  String get feedbackHint => 'Ilarawan ang iyong feedback nang detalyado...';

  @override
  String get feedbackSend => 'Ipadala ang Feedback';

  @override
  String get feedbackSending => 'Ipinapadala...';

  @override
  String get feedbackThankYou => 'Salamat!';

  @override
  String get feedbackThankYouMessage =>
      'Natanggap ang iyong feedback at tinutulungan kaming pagbutihin ang Lista Plus para sa lahat.';

  @override
  String get feedbackBack => 'Bumalik';

  @override
  String feedbackError(String error) {
    return 'Error sa pagpapadala: $error';
  }

  @override
  String get feedbackRetry => 'Subukan muli';

  @override
  String get feedbackSettingsTitle => 'Magpadala ng Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Mag-ulat ng bug, magmungkahi ng pagpapabuti, o ayusin ang mga pagsasalin';

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
