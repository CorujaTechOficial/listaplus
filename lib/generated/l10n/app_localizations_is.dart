// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get appTitle => 'Innkaupalisti';

  @override
  String get lists => 'Listar';

  @override
  String get pantry => 'Búrka';

  @override
  String get cancel => 'Hætta við';

  @override
  String get save => 'Vista';

  @override
  String get create => 'Búa til';

  @override
  String get add => 'Bæta við';

  @override
  String get remove => 'Fjarlægja';

  @override
  String get delete => 'Eyða';

  @override
  String get edit => 'Breyta';

  @override
  String get copy => 'Afrita';

  @override
  String get retry => 'Reyna aftur';

  @override
  String get regenerate => 'Endurgera';

  @override
  String get copiedToClipboard => 'Afritað á klippispjald';

  @override
  String get confirm => 'Staðfesta';

  @override
  String get close => 'Loka';

  @override
  String get import => 'Flytja inn';

  @override
  String get rename => 'Endurnefna';

  @override
  String get upgrade => 'Uppfæra';

  @override
  String get clear => 'Hreinsa';

  @override
  String error(String message) {
    return 'Villa: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Villa: $message';
  }

  @override
  String get purchaseError => 'Villa við að vinna úr kaupum. Reyndu aftur.';

  @override
  String get restoreError => 'Villa við að endurheimta kaup. Reyndu aftur.';

  @override
  String get loading => 'Hleð...';

  @override
  String get fieldRequired => 'Skyldureitur';

  @override
  String get addedFeedback => 'Bætt við!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valin',
      one: '$count valið',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Áætlað';

  @override
  String get alreadyPurchased => 'Þegar keypt';

  @override
  String get clearList => 'Hreinsa lista';

  @override
  String get clearPurchased => 'Hreinsa keypt';

  @override
  String get share => 'Deila';

  @override
  String get shareViaCode => 'Deila með kóða';

  @override
  String get importViaCode => 'Flytja inn með kóða';

  @override
  String get listAssistant => 'Listaaðstoð';

  @override
  String get globalAssistant => 'Alheimsaðstoð';

  @override
  String get becomePremium => 'Verða Premium';

  @override
  String get manageSubscription => 'Stjórna áskrift';

  @override
  String get completePurchase => 'Ljúka kaupum';

  @override
  String get confirmClearList => 'Fjarlægja alla hluti?';

  @override
  String get shareListTitle => 'Deila lista';

  @override
  String get shareThisCode => 'Deildu þessum kóða:';

  @override
  String get validForLimitedTime => 'Gildir í takmarkaðan tíma';

  @override
  String get importListTitle => 'Flytja inn lista';

  @override
  String get enterCodeHint => 'Sláðu inn kóðann';

  @override
  String get confirmArchiveTitle => 'Ljúka kaupum';

  @override
  String get confirmArchiveContent =>
      'Ljúka þessum kaupum og arkívera listann?';

  @override
  String get complete => 'Ljúka';

  @override
  String get listArchived => 'Listi arkíveraður!';

  @override
  String listAdded(String listName) {
    return '$listName bætt við!';
  }

  @override
  String get buy => 'Kaupa';

  @override
  String get unmark => 'Afmerkja';

  @override
  String confirmDeleteItems(int count) {
    return 'Fjarlægja $count hlut(e)?';
  }

  @override
  String get confirmDeleteTitle => 'Staðfesta';

  @override
  String confirmContent(int count) {
    return 'Fjarlægja $count hlut(e)?';
  }

  @override
  String get archiveList => 'Arkívera lista';

  @override
  String get pantryAppBar => 'Búrka';

  @override
  String get generateShoppingList => 'Búa til innkaupalista';

  @override
  String get pantryEmpty => 'Tóm búrka';

  @override
  String get pantryEmptySubtitle => 'Bættu við vörum sem þú vilt hafa heima';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit hlut(ir) þarf að kaupa';
  }

  @override
  String get noItemsToBuy => 'Engir hlutir þarf að kaupa';

  @override
  String get newPantryList => 'Búrkukaup';

  @override
  String get newListTitle => 'Nýr innkaupalisti';

  @override
  String itemsWillBeAdded(int count) {
    return '$count hlut(ir) verða bætt við';
  }

  @override
  String get listNameLabel => 'Nafn lista';

  @override
  String listCreated(String name, int count) {
    return 'Listi \"$name\" búinn til með $count hlutum';
  }

  @override
  String get noTracking => 'Engin rakning';

  @override
  String get markAsPurchased => 'Merkja sem keypt';

  @override
  String editPantryItem(String name) {
    return 'Breyta $name';
  }

  @override
  String get idealQuantity => 'Ákjósanlegt magn';

  @override
  String get currentQuantity => 'Núverandi magn';

  @override
  String get consumed => 'Notað';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name enduruppfyllt: $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Fjarlægja \"$name\" úr búrku?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Breyta $name';
  }

  @override
  String get settingsAppBar => 'Stillingar';

  @override
  String get language => 'Tungumál';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Sjálfgefið kerfi';

  @override
  String get chooseLanguage => 'Veldu tungumál';

  @override
  String get searchLanguage => 'Leita að tungumáli...';

  @override
  String get appearance => 'Útlit';

  @override
  String get light => 'Ljóst';

  @override
  String get system => 'Kerfi';

  @override
  String get dark => 'Dökkt';

  @override
  String get themeColor => 'Þemalitur';

  @override
  String get dynamicColors => 'Breytilegir litir';

  @override
  String get dynamicColorsSubtitle => 'Nota liti byggða á veggfóðrinu þínu';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

  @override
  String get finance => 'Fjármál';

  @override
  String get monthlyBudgetNav => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetSubtitle => 'Fylgdu mánaðarlegum útgjöldum þínum';

  @override
  String get data => 'Gögn';

  @override
  String get backupNav => 'Öryggisafrit';

  @override
  String get backupSubtitle => 'Flytja út eða inn gögnin þín';

  @override
  String get about => 'Um';

  @override
  String get version => 'Útgáfa';

  @override
  String get privacy => 'Persónuvernd';

  @override
  String get termsOfUse => 'Notkunarskilmálar';

  @override
  String get backupTitle => 'Öryggisafrit';

  @override
  String get backupPremiumDescription =>
      'Öryggisafrit og útflutningur er premium eiginleiki';

  @override
  String get exportData => 'Flytja út gögn';

  @override
  String get exportDataSubtitle => 'Vista alla lista sem JSON';

  @override
  String get importData => 'Flytja inn gögn';

  @override
  String get importDataSubtitle => 'Endurheimta lista úr JSON';

  @override
  String get importJsonTitle => 'Flytja inn JSON';

  @override
  String get importJsonHint => 'Límdu öryggisafrit JSON hér...';

  @override
  String get backupExported => 'Öryggisafrit flutt út!';

  @override
  String get budgetAppBar => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetPremiumLocked =>
      'Alheims mánaðarleg fjárhagsáætlun er premium';

  @override
  String get budgetUpgradePrompt => 'Uppfærðu til að opna';

  @override
  String get noBudgetDefined => 'Engin fjárhagsáætlun stillt';

  @override
  String totalEstimated(String amount) {
    return 'Áætluð samtals: $amount';
  }

  @override
  String get setBudgetButton => 'Stilla fjárhagsáætlun';

  @override
  String get budgetLists => 'Listar';

  @override
  String get budgetValueLabel => 'Upphæð';

  @override
  String get setBudgetTitle => 'Mánaðarleg fjárhagsáætlun';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Allt';

  @override
  String get filterPending => 'Í bið';

  @override
  String get filterPurchased => 'Keypt';

  @override
  String get sortName => 'Nafn';

  @override
  String get sortCategory => 'Flokkur';

  @override
  String get sortDate => 'Dagsetning';

  @override
  String get sortManual => 'Handvirkt';

  @override
  String get addItem => 'Bæta við hlut';

  @override
  String get itemName => 'Heiti hlutar';

  @override
  String get quantityShort => 'Magn';

  @override
  String get unit => 'Eining';

  @override
  String get category => 'Flokkur';

  @override
  String get estimatedPrice => 'Áætlað verð';

  @override
  String get addItemPrice => 'Áætlað verð';

  @override
  String get editItem => 'Breyta hlut';

  @override
  String get quantityFull => 'Magn';

  @override
  String get editItemPrice => 'Áætlað verð';

  @override
  String get addToPantry => 'Bæta í búrku';

  @override
  String addToPantryPrompt(String name) {
    return 'Bæta \"$name\" við búrku?';
  }

  @override
  String get yes => 'Já';

  @override
  String get productName => 'Heiti vöru';

  @override
  String get idealQty => 'Ákjósanlegt magn';

  @override
  String get currentQty => 'Núverandi magn';

  @override
  String get trackStock => 'Rekja birgðir';

  @override
  String get trackStockActive => 'Birtist í innkaupatillögum';

  @override
  String get trackStockInactive => 'Myndar ekki innkaupatillögu';

  @override
  String get createListDialog => 'Búa til lista';

  @override
  String get renameListDialog => 'Endurnefna lista';

  @override
  String get listHistory => 'Listasaga';

  @override
  String get myLists => 'Listarnir mínir';

  @override
  String get viewActive => 'Skoða virka';

  @override
  String get viewHistory => 'Skoða sögu';

  @override
  String get noArchivedLists => 'Enginn arkíveraður listi';

  @override
  String get noActiveLists => 'Engir virkir listar';

  @override
  String completedOn(String date) {
    return 'Lokið þann $date';
  }

  @override
  String get sharedLabel => 'Deilt';

  @override
  String get restore => 'Endurheimta';

  @override
  String get removeSharedTooltip => 'Fjarlægja';

  @override
  String get deleteListTitle => 'Eyða lista';

  @override
  String deleteListContent(String name) {
    return 'Ertu viss um að þú viljir eyða \"$name\"? Öllum hlutum verður eytt.';
  }

  @override
  String get removeSharedListTitle => 'Fjarlægja deildan lista';

  @override
  String removeSharedListContent(String name) {
    return 'Fjarlægja \"$name\" af listunum þínum? Upprunalegi listinn verður ekki fyrir áhrifum.';
  }

  @override
  String get createNewList => 'Búa til nýjan lista';

  @override
  String get aiAssistant => 'AI aðstoð';

  @override
  String get aiAssistantDescription =>
      'Fáðu snjallar tillögur, uppskriftir og persónulegar ábendingar með AI aðstoðarmanni okkar.';

  @override
  String get generalAssistant => 'Almenn aðstoð';

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
  String get clearHistory => 'Hreinsa sögu';

  @override
  String get clearHistoryConfirm =>
      'Hreinsa öll skilaboð í þessum samtalsglugga?';

  @override
  String get chatHint => 'Skrifaðu skilaboð...';

  @override
  String chatError(String error) {
    return 'Villa við að hlaða spjalli: $error';
  }

  @override
  String get listHelp => 'Hvernig get ég aðstoðað þig með listann?';

  @override
  String get generalHelp => 'Hvernig get ég aðstoðað þig við innkaupin í dag?';

  @override
  String get chatSubtitle =>
      'Spurðu um vörutillögur, uppskriftir eða sparnaðarábendingar.';

  @override
  String get aiError =>
      'Því miður, villa kom upp við að vinna úr beiðninni þinni. Athugaðu tenginguna eða reyndu aftur síðar.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Skráðu þig inn til að\nopna premium eiginleika';

  @override
  String get signInGoogle => 'Skráðu þig inn með Google';

  @override
  String get signInApple => 'Skráðu þig inn með Apple';

  @override
  String get continueAsGuest => 'Halda áfram sem gestur';

  @override
  String get onboardingAiGreeting =>
      'Hi! I\'m your smart assistant. What would you like to call me?';

  @override
  String onboardingAiNameResponse(String name) {
    return '$name? Love it! I can help with lists, categorize items, give suggestions and much more. What\'s your favorite food?';
  }

  @override
  String get onboardingAiFoodResponse =>
      'Yum! And how do you prepare it? I can suggest the ingredients!';

  @override
  String get onboardingAiListReady =>
      'Done! Your list is organized. Do you want to go to the shopping list or keep chatting?';

  @override
  String get onboardingAiSuggestButton => 'Suggest!';

  @override
  String get onboardingGoToList => 'Go to list';

  @override
  String get onboardingKeepChatting => 'Keep chatting';

  @override
  String get onboardingSkipToApp => 'Skip to app';

  @override
  String get onboardingChatPlaceholder => 'Type a message...';

  @override
  String get onboardingLoginTitle => 'Save everything to the cloud';

  @override
  String get onboardingLoginDesc => 'Your data synced across all your devices';

  @override
  String get onboardingShareTitle => 'Share with the ones you love';

  @override
  String get onboardingShareDesc =>
      'Sync lists with family and friends in real time';

  @override
  String get onboardingPremiumTitle => 'Unlock all features';

  @override
  String get onboardingPremiumSubtitle =>
      'Get the most out of your shopping lists';

  @override
  String get onboardingAnnualBadge => 'Best Value';

  @override
  String get onboardingMonthlyLabel => 'Monthly';

  @override
  String get onboardingAnnualLabel => 'Annual';

  @override
  String get onboardingViewAllPlans => 'View all plans';

  @override
  String get onboardingSubscribeCta => 'Subscribe';

  @override
  String get onboardingCancelAnytime => 'Cancel anytime. No commitment.';

  @override
  String get onboardingContinueAsGuest => 'Continue as guest';

  @override
  String get onboardingRestore => 'Restore';

  @override
  String get settingsDefaultScreen => 'Default home screen';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Choose between shopping list or AI chat';

  @override
  String get settingsScreenList => 'Shopping List';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Innskráningarvilla: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Uppfærðu til að opna';

  @override
  String get itemRemoved => 'Hlut fjarlægður';

  @override
  String get undo => 'Afturkalla';

  @override
  String get emptyListTitle => 'Listinn þinn er tómur';

  @override
  String get emptyListSubtitle => 'Bættu við hlutum til að byrja';

  @override
  String get noListFoundTitle => 'Engir listar fundust';

  @override
  String get noListFoundSubtitle => 'Búðu til þinn fyrsta lista til að byrja';

  @override
  String get createFirstList => 'Búa til fyrsta lista';

  @override
  String get listBudgetTitle => 'Fjárhagsáætlun lista';

  @override
  String get budgetAmountLabel => 'Upphæð fjárhagsáætlunar';

  @override
  String get removeBudget => 'Fjarlægja';

  @override
  String get prefUnlimitedLists => 'Ótakmarkaðir listar';

  @override
  String get prefSharing => 'Deila listum';

  @override
  String get prefFullHistory => 'Full saga';

  @override
  String get prefExportData => 'Flytja út gögn';

  @override
  String get prefCustomThemes => 'Sérsniðin þemu';

  @override
  String get prefMonthlyBudget => 'Alheims mánaðarleg fjárhagsáætlun';

  @override
  String get prefAIAssistant => 'Persónulegur AI aðstoðarmaður';

  @override
  String get prefUnlimitedPantry => 'Ótakmörkuð búrka';

  @override
  String get prefInteractiveArtifacts => 'Gagnvirk AI greinar';

  @override
  String get themeGreen => 'Grænn';

  @override
  String get themeBlue => 'Blár';

  @override
  String get themePurple => 'Fjólublár';

  @override
  String get themeRed => 'Rauður';

  @override
  String get themeOrange => 'Appelsínugulur';

  @override
  String get themePink => 'Bleikur';

  @override
  String get themeIndigo => 'Indígó';

  @override
  String get themeAmber => 'Rauðgulur';

  @override
  String get themeTeal => 'Grænblár';

  @override
  String get themeBrown => 'Brúnn';

  @override
  String get catFruits => 'Ávextir';

  @override
  String get catCleaning => 'Hreinsun';

  @override
  String get catBeverages => 'Drykkir';

  @override
  String get catBakery => 'Bakarí';

  @override
  String get catOthers => 'Annað';

  @override
  String get unitPack => 'pakkning';

  @override
  String get shareSubject => 'Innkaupalisti';

  @override
  String get monthlyBudgetTitle => 'Mánaðarleg fjárhagsáætlun';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Eyða lista';

  @override
  String get pantryItemRemoved => 'Hlut fjarlægður';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit hluti þarf að kaupa',
      one: '$deficit hlut þarf að kaupa',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Karfa samtals';

  @override
  String get restockLabel => 'Enduruppfylla';

  @override
  String get advancedFeatures => 'Ítarlegir eiginleikar';

  @override
  String get selectAll => 'Velja allt';

  @override
  String get deselectAll => 'Afvelja allt';

  @override
  String get monthlyBudgetAppBar => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetEditTitle => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetDashboardTitle => 'Mælaborð';

  @override
  String get selectListForDashboard => 'Veldu lista til að skoða mælaborð.';

  @override
  String get spendingAnalysis => 'Útgjaldagreining';

  @override
  String get noItemsToAnalyze => 'Engir hlutir í listanum til að greina.';

  @override
  String get markItemsToSeeAnalysis =>
      'Merktu hluti sem keypta til að sjá greininguna.';

  @override
  String get totalSpending => 'Heildarútgjöld';

  @override
  String get spendingByCategory => 'Útgjöld eftir flokki';

  @override
  String get achievements => 'Áfangar';

  @override
  String get exportPdfExcel => 'Flytja út PDF/Excel';

  @override
  String get exportPdf => 'Flytja út sem PDF';

  @override
  String get exportExcel => 'Flytja út sem Excel';

  @override
  String get organizingAi => 'RÖÐUN MEÐ AI...';

  @override
  String get yesLabel => 'Já';

  @override
  String get noLabel => 'Nei';

  @override
  String get shareListText => 'Innkaupalistinn minn';

  @override
  String get emptyListAddItems =>
      'Listinn þinn er tómur! Bættu fyrst við hlutum. ℹ️';

  @override
  String get listOrganizedMagic => 'Listi töfrandi raðaður í flokka! ✨';

  @override
  String get shoppingMode => 'Innkaupahamur';

  @override
  String get smartOrganization => 'Snjöll röðun';

  @override
  String get savings => 'Sparnaður';

  @override
  String get shoppingModeHeader => 'INNKAUPHAMUR';

  @override
  String get shareAsText => 'Senda hluti sem sniðinn texta';

  @override
  String get shareRealtime => 'Rauntímasamstilling með öðrum';

  @override
  String get quickRecipe => 'Fljótleg uppskrift';

  @override
  String get quickRecipePrompt =>
      'Leggðu til uppskriftir með hlutum af listanum mínum.';

  @override
  String get economyTips => 'Sparnaðarábendingar';

  @override
  String get economyTipsPrompt =>
      'Hvernig get ég sparað peninga við þessi kaup?';

  @override
  String get organizeAisles => 'Raða eftir göngum';

  @override
  String get organizeAislesPrompt => 'Raða eftir göngum markaðarins.';

  @override
  String get recipeSuggestion => 'Uppskriftartillaga';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining einingar eftir';
  }

  @override
  String get addAllToList => 'Bæta öllu við lista';

  @override
  String get organizeByAisles => 'Raða eftir göngum';

  @override
  String get voiceTranscriptionTooltip => 'Radduppskrift (Ókeypis)';

  @override
  String get aiVoiceCommandTooltip => 'AI raddskipun (Premium)';

  @override
  String get voiceCommandTitle => 'AI raddskipun';

  @override
  String get voiceCommandContent =>
      'Talaðu náttúrulega til að stjórna listanum þínum!\n\nDæmi:\n• \'Bæta við brauði, osti og skinku\'\n• \'Fjarlægja þvottaefni\'\n• \'Breyta þema í blátt\'\n\nÞetta er einkaeiginleiki Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Skoða áætlanir';

  @override
  String get itemsAddedSuccess => 'Hlutum bætt við lista!';

  @override
  String get viewList => 'Skoða lista';

  @override
  String get feedbackTitle => 'Senda ábendingu';

  @override
  String get feedbackPrompt => 'Hvað viltu deila?';

  @override
  String get feedbackTypeBug => 'Tilkynna villu';

  @override
  String get feedbackTypeBugHint => 'Eitthvað virkar ekki';

  @override
  String get feedbackTypeSuggestion => 'Ábending';

  @override
  String get feedbackTypeSuggestionHint => 'Hugmynd að því að bæta forritið';

  @override
  String get feedbackTypeTranslation => 'Þýðingarvilla';

  @override
  String get feedbackTypeTranslationHint => 'Röng þýðing eða óeðlilegt orðalag';

  @override
  String get feedbackTypeFeature => 'Beðni um eiginleika';

  @override
  String get feedbackTypeFeatureHint => 'Eiginleiki sem þú vilt sjá';

  @override
  String get feedbackTypeOther => 'Annað';

  @override
  String get feedbackTypeOtherHint => 'Annars konar ábending';

  @override
  String get feedbackHint => 'Lýstu ábendingunni þinni í smáatriðum...';

  @override
  String get feedbackSend => 'Senda ábendingu';

  @override
  String get feedbackSending => 'Sendi...';

  @override
  String get feedbackThankYou => 'Takk!';

  @override
  String get feedbackThankYouMessage =>
      'Ábendingin þín hefur borist og hjálpar okkur að bæta Lista Plus fyrir alla.';

  @override
  String get feedbackBack => 'Til baka';

  @override
  String feedbackError(String error) {
    return 'Villa við sendingu: $error';
  }

  @override
  String get feedbackRetry => 'Reyna aftur';

  @override
  String get feedbackSettingsTitle => 'Senda ábendingu';

  @override
  String get feedbackSettingsSubtitle =>
      'Tilkynna villur, stinga upp á endurbótum eða laga þýðingar';

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
  String get openMenu => 'Opna valmynd';

  @override
  String get viewRecipe => 'Skoða uppskrift';

  @override
  String get recipeCreated => 'Uppskrift búin til!';

  @override
  String get editRecipe => 'Breyta';

  @override
  String get deleteRecipe => 'Eyða';

  @override
  String get deleteRecipeConfirm => 'Eyða þessari uppskrift?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Ertu viss um að þú viljir eyða „$recipeName“? Ekki er hægt að afturkalla þessa aðgerð.';
  }

  @override
  String get ingredients => 'Hráefni';

  @override
  String get instructions => 'Leiðbeiningar';

  @override
  String get prepTime => 'Undirbúningstími';

  @override
  String get recipeSaved => 'Uppskrift vistuð!';

  @override
  String get noRecipesSaved => 'Engar uppskriftir vistaðar';

  @override
  String get noRecipesSavedHint =>
      'Búðu til þína fyrstu sérsniðnu uppskrift með því að smella á hnappinn hér að neðan.';

  @override
  String get myRecipes => 'Mínar uppskriftir';

  @override
  String get newRecipe => 'Ný uppskrift';

  @override
  String get loadingRecipes => 'Hleður uppskriftunum þínum...';

  @override
  String get errorLoadingRecipes => 'Villa við að hlaða uppskriftum';

  @override
  String get addIngredient => 'Bæta við hráefni';

  @override
  String get saveRecipe => 'Vista';

  @override
  String get recipeName => 'Heiti uppskriftar';

  @override
  String get shortDescription => 'Stutt lýsing';

  @override
  String get prepTimeMinutes => 'Undirbúningstími (mínútur)';

  @override
  String get instructionsHint => 'Skrifaðu eitt skref á hverja línu...';

  @override
  String get addPhoto => 'Bæta við mynd';

  @override
  String get imageUrlPlaceholder => 'Eða límdu inn vefslóð myndar';

  @override
  String get tags => 'Merki';

  @override
  String get recipeTags => 'Merki uppskriftar';

  @override
  String get suggestedTags => 'Tillögur';

  @override
  String get searchRecipes => 'Leita í uppskriftum...';

  @override
  String get filterByTag => 'Sía eftir merki';

  @override
  String get allTags => 'Allt';

  @override
  String get recipeDeleted => 'Uppskrift eytt';

  @override
  String get saveChanges => 'Vista breytingar';

  @override
  String get editRecipeTitle => 'Breyta uppskrift';

  @override
  String get newRecipeTitle => 'Ný uppskrift';

  @override
  String get requiredField => 'Reitur áskilinn';

  @override
  String get chooseImageSource => 'Veldu mynduppsprettu';

  @override
  String get gallery => 'Galéria';

  @override
  String get enterUrl => 'Sláðu inn vefslóð';

  @override
  String get recipeImage => 'Mynd af uppskrift';

  @override
  String get removeImage => 'Fjarlægja mynd';

  @override
  String get mealPlannerTitle => 'Matseðill';

  @override
  String get mealPlannerViewMonthly => 'Mánaðarlegt yfirlit';

  @override
  String get mealPlannerViewWeekly => 'Vikulegt yfirlit';

  @override
  String get mealPlannerNoMeals => 'Engar máltíðir áætlaðar';

  @override
  String get mealPlannerNoMealsHint => 'Smelltu á dag til að bæta við máltíð';

  @override
  String get mealPlannerLoading => 'Hleður matseðli...';

  @override
  String get mealPlannerError => 'Villa við að hlaða matseðli';

  @override
  String get mealPlannerAddMeal => 'Bæta við máltíð';

  @override
  String get mealPlannerEditMeal => 'Breyta máltíð';

  @override
  String get mealPlannerDeleteMeal => 'Fjarlægja máltíð';

  @override
  String get mealPlannerMealDeleted => 'Máltíð fjarlægð';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count skammtar',
      one: '$count skammtur',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Skammtar';

  @override
  String get mealPlannerNoteLabel => 'Athugasemd (valfrjálst)';

  @override
  String get mealPlannerSelectRecipe => 'Veldu uppskrift';

  @override
  String get mealPlannerSearchRecipes => 'Leita í uppskriftum...';

  @override
  String get mealPlannerNoRecipesFound => 'Engar uppskriftir fundust';

  @override
  String get mealPlannerNoRecipesHint =>
      'Búðu til uppskriftir í Uppskriftir flipanum fyrst';

  @override
  String get mealPlannerSave => 'Bæta við áætlun';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count af $total máltíðum áætlaðar';
  }

  @override
  String get mealPlannerGenerateList => 'Gera innkaupalista';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Bæta öllu hráefni úr fyrirhuguðum máltíðum vikunnar á innkaupalistann þinn?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count hráefni bætt við listann þinn!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Engu hráefni til að bæta við. Skipuleggðu máltíðir með uppskriftum fyrst.';

  @override
  String get mealPlannerGenerateListNoList => 'Búðu til innkaupalista fyrst.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Morgunmatur';

  @override
  String get mealPlannerMealTypeLunch => 'Hádegismatur';

  @override
  String get mealPlannerMealTypeDinner => 'Kvöldmatur';

  @override
  String get mealPlannerMealTypeSnack => 'Millimál';

  @override
  String get mealPlannerDateLabel => 'Dagsetning';

  @override
  String get mealPlannerWeekEmpty => 'Ekkert áætlað fyrir þessa viku';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Smelltu á hvaða dag sem er til að byrja að skipuleggja máltíðirnar þínar!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes mín';
  }

  @override
  String get inviteToList => 'Invite to list';

  @override
  String get shareApp => 'Share app';

  @override
  String get shareAppDescription => 'Invite friends to use Lista Plus';

  @override
  String shareReferralText(Object url) {
    return 'I\'m using Lista Plus to organize my shopping! Download via my link and we both get 7 days of Premium free: $url';
  }

  @override
  String get shareReferralSubject => 'Get 7 days of Lista Plus Premium!';
}

/// The translations for Icelandic, as used in Iceland (`is_IS`).
class AppLocalizationsIsIs extends AppLocalizationsIs {
  AppLocalizationsIsIs() : super('is_IS');

  @override
  String get appTitle => 'Innkaupalisti';

  @override
  String get lists => 'Listar';

  @override
  String get pantry => 'Búrka';

  @override
  String get cancel => 'Hætta við';

  @override
  String get save => 'Vista';

  @override
  String get create => 'Búa til';

  @override
  String get add => 'Bæta við';

  @override
  String get remove => 'Fjarlægja';

  @override
  String get delete => 'Eyða';

  @override
  String get edit => 'Breyta';

  @override
  String get copy => 'Afrita';

  @override
  String get retry => 'Reyna aftur';

  @override
  String get regenerate => 'Endurgera';

  @override
  String get copiedToClipboard => 'Afritað á klippispjald';

  @override
  String get confirm => 'Staðfesta';

  @override
  String get close => 'Loka';

  @override
  String get import => 'Flytja inn';

  @override
  String get rename => 'Endurnefna';

  @override
  String get upgrade => 'Uppfæra';

  @override
  String get clear => 'Hreinsa';

  @override
  String error(String message) {
    return 'Villa: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Villa: $message';
  }

  @override
  String get purchaseError => 'Villa við að vinna úr kaupum. Reyndu aftur.';

  @override
  String get restoreError => 'Villa við að endurheimta kaup. Reyndu aftur.';

  @override
  String get loading => 'Hleð...';

  @override
  String get fieldRequired => 'Skyldureitur';

  @override
  String get addedFeedback => 'Bætt við!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valin',
      one: '$count valið',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Áætlað';

  @override
  String get alreadyPurchased => 'Þegar keypt';

  @override
  String get clearList => 'Hreinsa lista';

  @override
  String get clearPurchased => 'Hreinsa keypt';

  @override
  String get share => 'Deila';

  @override
  String get shareViaCode => 'Deila með kóða';

  @override
  String get importViaCode => 'Flytja inn með kóða';

  @override
  String get listAssistant => 'Listaaðstoð';

  @override
  String get globalAssistant => 'Alheimsaðstoð';

  @override
  String get becomePremium => 'Verða Premium';

  @override
  String get manageSubscription => 'Stjórna áskrift';

  @override
  String get completePurchase => 'Ljúka kaupum';

  @override
  String get confirmClearList => 'Fjarlægja alla hluti?';

  @override
  String get shareListTitle => 'Deila lista';

  @override
  String get shareThisCode => 'Deildu þessum kóða:';

  @override
  String get validForLimitedTime => 'Gildir í takmarkaðan tíma';

  @override
  String get importListTitle => 'Flytja inn lista';

  @override
  String get enterCodeHint => 'Sláðu inn kóðann';

  @override
  String get confirmArchiveTitle => 'Ljúka kaupum';

  @override
  String get confirmArchiveContent =>
      'Ljúka þessum kaupum og arkívera listann?';

  @override
  String get complete => 'Ljúka';

  @override
  String get listArchived => 'Listi arkíveraður!';

  @override
  String listAdded(String listName) {
    return '$listName bætt við!';
  }

  @override
  String get buy => 'Kaupa';

  @override
  String get unmark => 'Afmerkja';

  @override
  String confirmDeleteItems(int count) {
    return 'Fjarlægja $count hlut(e)?';
  }

  @override
  String get confirmDeleteTitle => 'Staðfesta';

  @override
  String confirmContent(int count) {
    return 'Fjarlægja $count hlut(e)?';
  }

  @override
  String get archiveList => 'Arkívera lista';

  @override
  String get pantryAppBar => 'Búrka';

  @override
  String get generateShoppingList => 'Búa til innkaupalista';

  @override
  String get pantryEmpty => 'Tóm búrka';

  @override
  String get pantryEmptySubtitle => 'Bættu við vörum sem þú vilt hafa heima';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit hlut(ir) þarf að kaupa';
  }

  @override
  String get noItemsToBuy => 'Engir hlutir þarf að kaupa';

  @override
  String get newPantryList => 'Búrkukaup';

  @override
  String get newListTitle => 'Nýr innkaupalisti';

  @override
  String itemsWillBeAdded(int count) {
    return '$count hlut(ir) verða bætt við';
  }

  @override
  String get listNameLabel => 'Nafn lista';

  @override
  String listCreated(String name, int count) {
    return 'Listi \"$name\" búinn til með $count hlutum';
  }

  @override
  String get noTracking => 'Engin rakning';

  @override
  String get markAsPurchased => 'Merkja sem keypt';

  @override
  String editPantryItem(String name) {
    return 'Breyta $name';
  }

  @override
  String get idealQuantity => 'Ákjósanlegt magn';

  @override
  String get currentQuantity => 'Núverandi magn';

  @override
  String get consumed => 'Notað';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name enduruppfyllt: $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Fjarlægja \"$name\" úr búrku?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Breyta $name';
  }

  @override
  String get settingsAppBar => 'Stillingar';

  @override
  String get language => 'Tungumál';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Sjálfgefið kerfi';

  @override
  String get chooseLanguage => 'Veldu tungumál';

  @override
  String get searchLanguage => 'Leita að tungumáli...';

  @override
  String get appearance => 'Útlit';

  @override
  String get light => 'Ljóst';

  @override
  String get system => 'Kerfi';

  @override
  String get dark => 'Dökkt';

  @override
  String get themeColor => 'Þemalitur';

  @override
  String get dynamicColors => 'Breytilegir litir';

  @override
  String get dynamicColorsSubtitle => 'Nota liti byggða á veggfóðrinu þínu';

  @override
  String get finance => 'Fjármál';

  @override
  String get monthlyBudgetNav => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetSubtitle => 'Fylgdu mánaðarlegum útgjöldum þínum';

  @override
  String get data => 'Gögn';

  @override
  String get backupNav => 'Öryggisafrit';

  @override
  String get backupSubtitle => 'Flytja út eða inn gögnin þín';

  @override
  String get about => 'Um';

  @override
  String get version => 'Útgáfa';

  @override
  String get privacy => 'Persónuvernd';

  @override
  String get termsOfUse => 'Notkunarskilmálar';

  @override
  String get backupTitle => 'Öryggisafrit';

  @override
  String get backupPremiumDescription =>
      'Öryggisafrit og útflutningur er premium eiginleiki';

  @override
  String get exportData => 'Flytja út gögn';

  @override
  String get exportDataSubtitle => 'Vista alla lista sem JSON';

  @override
  String get importData => 'Flytja inn gögn';

  @override
  String get importDataSubtitle => 'Endurheimta lista úr JSON';

  @override
  String get importJsonTitle => 'Flytja inn JSON';

  @override
  String get importJsonHint => 'Límdu öryggisafrit JSON hér...';

  @override
  String get backupExported => 'Öryggisafrit flutt út!';

  @override
  String get budgetAppBar => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetPremiumLocked =>
      'Alheims mánaðarleg fjárhagsáætlun er premium';

  @override
  String get budgetUpgradePrompt => 'Uppfærðu til að opna';

  @override
  String get noBudgetDefined => 'Engin fjárhagsáætlun stillt';

  @override
  String totalEstimated(String amount) {
    return 'Áætluð samtals: $amount';
  }

  @override
  String get setBudgetButton => 'Stilla fjárhagsáætlun';

  @override
  String get budgetLists => 'Listar';

  @override
  String get budgetValueLabel => 'Upphæð';

  @override
  String get setBudgetTitle => 'Mánaðarleg fjárhagsáætlun';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Allt';

  @override
  String get filterPending => 'Í bið';

  @override
  String get filterPurchased => 'Keypt';

  @override
  String get sortName => 'Nafn';

  @override
  String get sortCategory => 'Flokkur';

  @override
  String get sortDate => 'Dagsetning';

  @override
  String get sortManual => 'Handvirkt';

  @override
  String get addItem => 'Bæta við hlut';

  @override
  String get itemName => 'Heiti hlutar';

  @override
  String get quantityShort => 'Magn';

  @override
  String get unit => 'Eining';

  @override
  String get category => 'Flokkur';

  @override
  String get estimatedPrice => 'Áætlað verð';

  @override
  String get addItemPrice => 'Áætlað verð';

  @override
  String get editItem => 'Breyta hlut';

  @override
  String get quantityFull => 'Magn';

  @override
  String get editItemPrice => 'Áætlað verð';

  @override
  String get addToPantry => 'Bæta í búrku';

  @override
  String addToPantryPrompt(String name) {
    return 'Bæta \"$name\" við búrku?';
  }

  @override
  String get yes => 'Já';

  @override
  String get productName => 'Heiti vöru';

  @override
  String get idealQty => 'Ákjósanlegt magn';

  @override
  String get currentQty => 'Núverandi magn';

  @override
  String get trackStock => 'Rekja birgðir';

  @override
  String get trackStockActive => 'Birtist í innkaupatillögum';

  @override
  String get trackStockInactive => 'Myndar ekki innkaupatillögu';

  @override
  String get createListDialog => 'Búa til lista';

  @override
  String get renameListDialog => 'Endurnefna lista';

  @override
  String get listHistory => 'Listasaga';

  @override
  String get myLists => 'Listarnir mínir';

  @override
  String get viewActive => 'Skoða virka';

  @override
  String get viewHistory => 'Skoða sögu';

  @override
  String get noArchivedLists => 'Enginn arkíveraður listi';

  @override
  String get noActiveLists => 'Engir virkir listar';

  @override
  String completedOn(String date) {
    return 'Lokið þann $date';
  }

  @override
  String get sharedLabel => 'Deilt';

  @override
  String get restore => 'Endurheimta';

  @override
  String get removeSharedTooltip => 'Fjarlægja';

  @override
  String get deleteListTitle => 'Eyða lista';

  @override
  String deleteListContent(String name) {
    return 'Ertu viss um að þú viljir eyða \"$name\"? Öllum hlutum verður eytt.';
  }

  @override
  String get removeSharedListTitle => 'Fjarlægja deildan lista';

  @override
  String removeSharedListContent(String name) {
    return 'Fjarlægja \"$name\" af listunum þínum? Upprunalegi listinn verður ekki fyrir áhrifum.';
  }

  @override
  String get createNewList => 'Búa til nýjan lista';

  @override
  String get aiAssistant => 'AI aðstoð';

  @override
  String get aiAssistantDescription =>
      'Fáðu snjallar tillögur, uppskriftir og persónulegar ábendingar með AI aðstoðarmanni okkar.';

  @override
  String get generalAssistant => 'Almenn aðstoð';

  @override
  String get clearHistory => 'Hreinsa sögu';

  @override
  String get clearHistoryConfirm =>
      'Hreinsa öll skilaboð í þessum samtalsglugga?';

  @override
  String get chatHint => 'Skrifaðu skilaboð...';

  @override
  String chatError(String error) {
    return 'Villa við að hlaða spjalli: $error';
  }

  @override
  String get listHelp => 'Hvernig get ég aðstoðað þig með listann?';

  @override
  String get generalHelp => 'Hvernig get ég aðstoðað þig við innkaupin í dag?';

  @override
  String get chatSubtitle =>
      'Spurðu um vörutillögur, uppskriftir eða sparnaðarábendingar.';

  @override
  String get aiError =>
      'Því miður, villa kom upp við að vinna úr beiðninni þinni. Athugaðu tenginguna eða reyndu aftur síðar.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Skráðu þig inn til að\nopna premium eiginleika';

  @override
  String get signInGoogle => 'Skráðu þig inn með Google';

  @override
  String get signInApple => 'Skráðu þig inn með Apple';

  @override
  String get continueAsGuest => 'Halda áfram sem gestur';

  @override
  String loginError(String error) {
    return 'Innskráningarvilla: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Uppfærðu til að opna';

  @override
  String get itemRemoved => 'Hlut fjarlægður';

  @override
  String get undo => 'Afturkalla';

  @override
  String get emptyListTitle => 'Listinn þinn er tómur';

  @override
  String get emptyListSubtitle => 'Bættu við hlutum til að byrja';

  @override
  String get noListFoundTitle => 'Engir listar fundust';

  @override
  String get noListFoundSubtitle => 'Búðu til þinn fyrsta lista til að byrja';

  @override
  String get createFirstList => 'Búa til fyrsta lista';

  @override
  String get listBudgetTitle => 'Fjárhagsáætlun lista';

  @override
  String get budgetAmountLabel => 'Upphæð fjárhagsáætlunar';

  @override
  String get removeBudget => 'Fjarlægja';

  @override
  String get prefUnlimitedLists => 'Ótakmarkaðir listar';

  @override
  String get prefSharing => 'Deila listum';

  @override
  String get prefFullHistory => 'Full saga';

  @override
  String get prefExportData => 'Flytja út gögn';

  @override
  String get prefCustomThemes => 'Sérsniðin þemu';

  @override
  String get prefMonthlyBudget => 'Alheims mánaðarleg fjárhagsáætlun';

  @override
  String get prefAIAssistant => 'Persónulegur AI aðstoðarmaður';

  @override
  String get prefUnlimitedPantry => 'Ótakmörkuð búrka';

  @override
  String get prefInteractiveArtifacts => 'Gagnvirk AI greinar';

  @override
  String get themeGreen => 'Grænn';

  @override
  String get themeBlue => 'Blár';

  @override
  String get themePurple => 'Fjólublár';

  @override
  String get themeRed => 'Rauður';

  @override
  String get themeOrange => 'Appelsínugulur';

  @override
  String get themePink => 'Bleikur';

  @override
  String get themeIndigo => 'Indígó';

  @override
  String get themeAmber => 'Rauðgulur';

  @override
  String get themeTeal => 'Grænblár';

  @override
  String get themeBrown => 'Brúnn';

  @override
  String get catFruits => 'Ávextir';

  @override
  String get catCleaning => 'Hreinsun';

  @override
  String get catBeverages => 'Drykkir';

  @override
  String get catBakery => 'Bakarí';

  @override
  String get catOthers => 'Annað';

  @override
  String get unitPack => 'pakkning';

  @override
  String get shareSubject => 'Innkaupalisti';

  @override
  String get monthlyBudgetTitle => 'Mánaðarleg fjárhagsáætlun';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Eyða lista';

  @override
  String get pantryItemRemoved => 'Hlut fjarlægður';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit hluti þarf að kaupa',
      one: '$deficit hlut þarf að kaupa',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Karfa samtals';

  @override
  String get restockLabel => 'Enduruppfylla';

  @override
  String get advancedFeatures => 'Ítarlegir eiginleikar';

  @override
  String get selectAll => 'Velja allt';

  @override
  String get deselectAll => 'Afvelja allt';

  @override
  String get monthlyBudgetAppBar => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetEditTitle => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetDashboardTitle => 'Mælaborð';

  @override
  String get selectListForDashboard => 'Veldu lista til að skoða mælaborð.';

  @override
  String get spendingAnalysis => 'Útgjaldagreining';

  @override
  String get noItemsToAnalyze => 'Engir hlutir í listanum til að greina.';

  @override
  String get markItemsToSeeAnalysis =>
      'Merktu hluti sem keypta til að sjá greininguna.';

  @override
  String get totalSpending => 'Heildarútgjöld';

  @override
  String get spendingByCategory => 'Útgjöld eftir flokki';

  @override
  String get achievements => 'Áfangar';

  @override
  String get exportPdfExcel => 'Flytja út PDF/Excel';

  @override
  String get exportPdf => 'Flytja út sem PDF';

  @override
  String get exportExcel => 'Flytja út sem Excel';

  @override
  String get organizingAi => 'RÖÐUN MEÐ AI...';

  @override
  String get yesLabel => 'Já';

  @override
  String get noLabel => 'Nei';

  @override
  String get shareListText => 'Innkaupalistinn minn';

  @override
  String get emptyListAddItems =>
      'Listinn þinn er tómur! Bættu fyrst við hlutum. ℹ️';

  @override
  String get listOrganizedMagic => 'Listi töfrandi raðaður í flokka! ✨';

  @override
  String get shoppingMode => 'Innkaupahamur';

  @override
  String get smartOrganization => 'Snjöll röðun';

  @override
  String get savings => 'Sparnaður';

  @override
  String get shoppingModeHeader => 'INNKAUPHAMUR';

  @override
  String get shareAsText => 'Senda hluti sem sniðinn texta';

  @override
  String get shareRealtime => 'Rauntímasamstilling með öðrum';

  @override
  String get quickRecipe => 'Fljótleg uppskrift';

  @override
  String get quickRecipePrompt =>
      'Leggðu til uppskriftir með hlutum af listanum mínum.';

  @override
  String get economyTips => 'Sparnaðarábendingar';

  @override
  String get economyTipsPrompt =>
      'Hvernig get ég sparað peninga við þessi kaup?';

  @override
  String get organizeAisles => 'Raða eftir göngum';

  @override
  String get organizeAislesPrompt => 'Raða eftir göngum markaðarins.';

  @override
  String get recipeSuggestion => 'Uppskriftartillaga';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining einingar eftir';
  }

  @override
  String get addAllToList => 'Bæta öllu við lista';

  @override
  String get organizeByAisles => 'Raða eftir göngum';

  @override
  String get voiceTranscriptionTooltip => 'Radduppskrift (Ókeypis)';

  @override
  String get aiVoiceCommandTooltip => 'AI raddskipun (Premium)';

  @override
  String get voiceCommandTitle => 'AI raddskipun';

  @override
  String get voiceCommandContent =>
      'Talaðu náttúrulega til að stjórna listanum þínum!\n\nDæmi:\n• \'Bæta við brauði, osti og skinku\'\n• \'Fjarlægja þvottaefni\'\n• \'Breyta þema í blátt\'\n\nÞetta er einkaeiginleiki Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Skoða áætlanir';

  @override
  String get itemsAddedSuccess => 'Hlutum bætt við lista!';

  @override
  String get viewList => 'Skoða lista';

  @override
  String get feedbackTitle => 'Senda ábendingu';

  @override
  String get feedbackPrompt => 'Hvað viltu deila?';

  @override
  String get feedbackTypeBug => 'Tilkynna villu';

  @override
  String get feedbackTypeBugHint => 'Eitthvað virkar ekki';

  @override
  String get feedbackTypeSuggestion => 'Ábending';

  @override
  String get feedbackTypeSuggestionHint => 'Hugmynd til að bæta forritið';

  @override
  String get feedbackTypeTranslation => 'Þýðingarvilla';

  @override
  String get feedbackTypeTranslationHint => 'Rang eða óeðlileg þýðing';

  @override
  String get feedbackTypeFeature => 'Beðni um eiginleika';

  @override
  String get feedbackTypeFeatureHint => 'Eiginleiki sem þú vilt sjá';

  @override
  String get feedbackTypeOther => 'Annað';

  @override
  String get feedbackTypeOtherHint => 'Önnur tegund ábendingar';

  @override
  String get feedbackHint => 'Lýstu ábendingunni þinni í smáatriðum...';

  @override
  String get feedbackSend => 'Senda ábendingu';

  @override
  String get feedbackSending => 'Sendi...';

  @override
  String get feedbackThankYou => 'Takk!';

  @override
  String get feedbackThankYouMessage =>
      'Ábendingin þín hefur borist og hjálpar okkur að bæta Lista Plus fyrir alla.';

  @override
  String get feedbackBack => 'Til baka';

  @override
  String feedbackError(String error) {
    return 'Villa við sendingu: $error';
  }

  @override
  String get feedbackRetry => 'Reyna aftur';

  @override
  String get feedbackSettingsTitle => 'Senda ábendingu';

  @override
  String get feedbackSettingsSubtitle =>
      'Tilkynna villur, stinga upp á endurbótum eða laga þýðingar';

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
  String get openMenu => 'Opna valmynd';

  @override
  String get viewRecipe => 'Skoða uppskrift';

  @override
  String get recipeCreated => 'Uppskrift búin til!';

  @override
  String get editRecipe => 'Breyta';

  @override
  String get deleteRecipe => 'Eyða';

  @override
  String get deleteRecipeConfirm => 'Eyða þessari uppskrift?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Ertu viss um að þú viljir eyða „$recipeName“? Ekki er hægt að afturkalla þessa aðgerð.';
  }

  @override
  String get ingredients => 'Hráefni';

  @override
  String get instructions => 'Leiðbeiningar';

  @override
  String get prepTime => 'Undirbúningstími';

  @override
  String get recipeSaved => 'Uppskrift vistuð!';

  @override
  String get noRecipesSaved => 'Engar uppskriftir vistaðar';

  @override
  String get noRecipesSavedHint =>
      'Búðu til þína fyrstu sérsniðnu uppskrift með því að smella á hnappinn hér að neðan.';

  @override
  String get myRecipes => 'Mínar uppskriftir';

  @override
  String get newRecipe => 'Ný uppskrift';

  @override
  String get loadingRecipes => 'Hleður uppskriftunum þínum...';

  @override
  String get errorLoadingRecipes => 'Villa við að hlaða uppskriftum';

  @override
  String get addIngredient => 'Bæta við hráefni';

  @override
  String get saveRecipe => 'Vista';

  @override
  String get recipeName => 'Heiti uppskriftar';

  @override
  String get shortDescription => 'Stutt lýsing';

  @override
  String get prepTimeMinutes => 'Undirbúningstími (mínútur)';

  @override
  String get instructionsHint => 'Skrifaðu eitt skref á hverja línu...';

  @override
  String get addPhoto => 'Bæta við mynd';

  @override
  String get imageUrlPlaceholder => 'Eða límdu inn vefslóð myndar';

  @override
  String get tags => 'Merki';

  @override
  String get recipeTags => 'Merki uppskriftar';

  @override
  String get suggestedTags => 'Tillögur';

  @override
  String get searchRecipes => 'Leita í uppskriftum...';

  @override
  String get filterByTag => 'Sía eftir merki';

  @override
  String get allTags => 'Allt';

  @override
  String get recipeDeleted => 'Uppskrift eytt';

  @override
  String get saveChanges => 'Vista breytingar';

  @override
  String get editRecipeTitle => 'Breyta uppskrift';

  @override
  String get newRecipeTitle => 'Ný uppskrift';

  @override
  String get requiredField => 'Reitur áskilinn';

  @override
  String get chooseImageSource => 'Veldu mynduppsprettu';

  @override
  String get gallery => 'Galéria';

  @override
  String get enterUrl => 'Sláðu inn vefslóð';

  @override
  String get recipeImage => 'Mynd af uppskrift';

  @override
  String get removeImage => 'Fjarlægja mynd';

  @override
  String get mealPlannerTitle => 'Matseðill';

  @override
  String get mealPlannerViewMonthly => 'Mánaðarlegt yfirlit';

  @override
  String get mealPlannerViewWeekly => 'Vikulegt yfirlit';

  @override
  String get mealPlannerNoMeals => 'Engar máltíðir áætlaðar';

  @override
  String get mealPlannerNoMealsHint => 'Smelltu á dag til að bæta við máltíð';

  @override
  String get mealPlannerLoading => 'Hleður matseðli...';

  @override
  String get mealPlannerError => 'Villa við að hlaða matseðli';

  @override
  String get mealPlannerAddMeal => 'Bæta við máltíð';

  @override
  String get mealPlannerEditMeal => 'Breyta máltíð';

  @override
  String get mealPlannerDeleteMeal => 'Fjarlægja máltíð';

  @override
  String get mealPlannerMealDeleted => 'Máltíð fjarlægð';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count skammtar',
      one: '$count skammtur',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Skammtar';

  @override
  String get mealPlannerNoteLabel => 'Athugasemd (valfrjálst)';

  @override
  String get mealPlannerSelectRecipe => 'Veldu uppskrift';

  @override
  String get mealPlannerSearchRecipes => 'Leita í uppskriftum...';

  @override
  String get mealPlannerNoRecipesFound => 'Engar uppskriftir fundust';

  @override
  String get mealPlannerNoRecipesHint =>
      'Búðu til uppskriftir í Uppskriftir flipanum fyrst';

  @override
  String get mealPlannerSave => 'Bæta við áætlun';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count af $total máltíðum áætlaðar';
  }

  @override
  String get mealPlannerGenerateList => 'Gera innkaupalista';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Bæta öllu hráefni úr fyrirhuguðum máltíðum vikunnar á innkaupalistann þinn?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count hráefni bætt við listann þinn!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Engu hráefni til að bæta við. Skipuleggðu máltíðir með uppskriftum fyrst.';

  @override
  String get mealPlannerGenerateListNoList => 'Búðu til innkaupalista fyrst.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Morgunmatur';

  @override
  String get mealPlannerMealTypeLunch => 'Hádegismatur';

  @override
  String get mealPlannerMealTypeDinner => 'Kvöldmatur';

  @override
  String get mealPlannerMealTypeSnack => 'Millimál';

  @override
  String get mealPlannerDateLabel => 'Dagsetning';

  @override
  String get mealPlannerWeekEmpty => 'Ekkert áætlað fyrir þessa viku';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Smelltu á hvaða dag sem er til að byrja að skipuleggja máltíðirnar þínar!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes mín';
  }
}
