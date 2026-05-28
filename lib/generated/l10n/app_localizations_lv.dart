// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get appTitle => 'Iepirkumu saraksts';

  @override
  String get lists => 'Saraksti';

  @override
  String get pantry => 'Pieliekamais';

  @override
  String get cancel => 'Atcelt';

  @override
  String get save => 'Saglabāt';

  @override
  String get create => 'Izveidot';

  @override
  String get add => 'Pievienot';

  @override
  String get remove => 'Noņemt';

  @override
  String get delete => 'Dzēst';

  @override
  String get edit => 'Rediģēt';

  @override
  String get copy => 'Kopēt';

  @override
  String get retry => 'Mēģināt vēlreiz';

  @override
  String get regenerate => 'Atjaunot';

  @override
  String get copiedToClipboard => 'Nokopēts starpliktuvē';

  @override
  String get confirm => 'Apstiprināt';

  @override
  String get close => 'Aizvērt';

  @override
  String get import => 'Importēt';

  @override
  String get rename => 'Pārsaukt';

  @override
  String get upgrade => 'Jaunināt';

  @override
  String get clear => 'Notīrīt';

  @override
  String error(String message) {
    return 'Kļūda: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Kļūda: $message';
  }

  @override
  String get purchaseError => 'Kļūda, apstrādājot pirkumu. Mēģiniet vēlreiz.';

  @override
  String get restoreError => 'Kļūda, atjaunojot pirkumus. Mēģiniet vēlreiz.';

  @override
  String get loading => 'Ielādē...';

  @override
  String get fieldRequired => 'Obligāts lauks';

  @override
  String get addedFeedback => 'Pievienots!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izvēlēti $count vienumi',
      one: 'Izvēlēts $count vienums',
      zero: 'Izvēlēti 0 vienumi',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Aptuveni';

  @override
  String get alreadyPurchased => 'Jau iegādāts';

  @override
  String get clearList => 'Notīrīt sarakstu';

  @override
  String get clearPurchased => 'Notīrīt iegādāto';

  @override
  String get share => 'Dalīties';

  @override
  String get shareViaCode => 'Dalīties ar kodu';

  @override
  String get importViaCode => 'Importēt ar kodu';

  @override
  String get listAssistant => 'Saraksta palīgs';

  @override
  String get globalAssistant => 'Globālais palīgs';

  @override
  String get becomePremium => 'Kļūt par Premium';

  @override
  String get manageSubscription => 'Pārvaldīt abonementu';

  @override
  String get completePurchase => 'Pabeigt pirkumu';

  @override
  String get confirmClearList => 'Noņemt visus vienumus?';

  @override
  String get shareListTitle => 'Dalīties ar sarakstu';

  @override
  String get shareThisCode => 'Dalieties ar šo kodu:';

  @override
  String get validForLimitedTime => 'Derīgs ierobežotu laiku';

  @override
  String get importListTitle => 'Importēt sarakstu';

  @override
  String get enterCodeHint => 'Ievadiet kodu';

  @override
  String get confirmArchiveTitle => 'Pabeigt pirkumu';

  @override
  String get confirmArchiveContent => 'Pabeigt šo pirkumu un arhivēt sarakstu?';

  @override
  String get complete => 'Pabeigt';

  @override
  String get listArchived => 'Saraksts veiksmīgi arhivēts!';

  @override
  String listAdded(String listName) {
    return '$listName pievienots!';
  }

  @override
  String get buy => 'Pirkt';

  @override
  String get unmark => 'Noņemt atzīmi';

  @override
  String confirmDeleteItems(int count) {
    return 'Noņemt $count vienumu(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Apstiprināt';

  @override
  String confirmContent(int count) {
    return 'Noņemt $count vienumu(s)?';
  }

  @override
  String get archiveList => 'Arhivēt sarakstu';

  @override
  String get pantryAppBar => 'Pieliekamais';

  @override
  String get generateShoppingList => 'Ģenerēt iepirkumu sarakstu';

  @override
  String get pantryEmpty => 'Tukšs pieliekamais';

  @override
  String get pantryEmptySubtitle =>
      'Pievienojiet produktus, kurus vēlaties turēt mājās';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vienums(-i) jāiegādājas';
  }

  @override
  String get noItemsToBuy => 'Nav jāiegādājas neviens vienums';

  @override
  String get newPantryList => 'Pieliekamā iepirkums';

  @override
  String get newListTitle => 'Jauns iepirkumu saraksts';

  @override
  String itemsWillBeAdded(int count) {
    return 'Tiks pievienots $count vienums(-i)';
  }

  @override
  String get listNameLabel => 'Saraksta nosaukums';

  @override
  String listCreated(String name, int count) {
    return 'Saraksts \"$name\" izveidots ar $count vienumiem';
  }

  @override
  String get noTracking => 'Bez izsekošanas';

  @override
  String get markAsPurchased => 'Atzīmēt kā iegādātu';

  @override
  String editPantryItem(String name) {
    return 'Rediģēt $name';
  }

  @override
  String get idealQuantity => 'Ideālais daudzums';

  @override
  String get currentQuantity => 'Pašreizējais daudzums';

  @override
  String get consumed => 'Patērēts';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name papildināts līdz $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Noņemt \"$name\" no pieliekamā?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Rediģēt $name';
  }

  @override
  String get settingsAppBar => 'Iestatījumi';

  @override
  String get language => 'Valoda';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Sistēmas noklusējums';

  @override
  String get chooseLanguage => 'Izvēlēties valodu';

  @override
  String get searchLanguage => 'Meklēt valodu...';

  @override
  String get appearance => 'Izskats';

  @override
  String get light => 'Gaišs';

  @override
  String get system => 'Sistēma';

  @override
  String get dark => 'Tumšs';

  @override
  String get themeColor => 'Tēmas krāsa';

  @override
  String get dynamicColors => 'Dinamiskās krāsas';

  @override
  String get dynamicColorsSubtitle =>
      'Izmantot krāsas, pamatojoties uz tapetēm';

  @override
  String get finance => 'Finanses';

  @override
  String get monthlyBudgetNav => 'Mēneša budžets';

  @override
  String get budgetSubtitle => 'Sekojiet līdzi saviem ikmēneša izdevumiem';

  @override
  String get data => 'Dati';

  @override
  String get backupNav => 'Rezerves kopija';

  @override
  String get backupSubtitle => 'Eksportējiet vai importējiet savus datus';

  @override
  String get about => 'Par';

  @override
  String get version => 'Versija';

  @override
  String get privacy => 'Privātums';

  @override
  String get termsOfUse => 'Lietošanas noteikumi';

  @override
  String get backupTitle => 'Rezerves kopija';

  @override
  String get backupPremiumDescription =>
      'Rezerves kopēšana un eksportēšana ir premium funkcija';

  @override
  String get exportData => 'Eksportēt datus';

  @override
  String get exportDataSubtitle => 'Saglabāt visus sarakstus kā JSON';

  @override
  String get importData => 'Importēt datus';

  @override
  String get importDataSubtitle => 'Atjaunot sarakstus no JSON';

  @override
  String get importJsonTitle => 'Importēt JSON';

  @override
  String get importJsonHint => 'Ielīmējiet rezerves JSON šeit...';

  @override
  String get backupExported => 'Rezerves kopija eksportēta!';

  @override
  String get budgetAppBar => 'Mēneša budžets';

  @override
  String get budgetPremiumLocked => 'Globālais mēneša budžets ir premium';

  @override
  String get budgetUpgradePrompt => 'Jauniniet, lai atbloķētu';

  @override
  String get noBudgetDefined => 'Nav iestatīts budžets';

  @override
  String totalEstimated(String amount) {
    return 'Aptuvenā kopsumma: $amount';
  }

  @override
  String get setBudgetButton => 'Iestatīt budžetu';

  @override
  String get budgetLists => 'Saraksti';

  @override
  String get budgetValueLabel => 'Summa';

  @override
  String get setBudgetTitle => 'Mēneša budžets';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Visi';

  @override
  String get filterPending => 'Gaida';

  @override
  String get filterPurchased => 'Iegādāts';

  @override
  String get sortName => 'Nosaukums';

  @override
  String get sortCategory => 'Kategorija';

  @override
  String get sortDate => 'Datums';

  @override
  String get sortManual => 'Manuāli';

  @override
  String get addItem => 'Pievienot vienumu';

  @override
  String get itemName => 'Vienuma nosaukums';

  @override
  String get quantityShort => 'Daudz.';

  @override
  String get unit => 'Vienība';

  @override
  String get category => 'Kategorija';

  @override
  String get estimatedPrice => 'Aptuvenā cena';

  @override
  String get addItemPrice => 'Aptuvenā cena';

  @override
  String get editItem => 'Rediģēt vienumu';

  @override
  String get quantityFull => 'Daudzums';

  @override
  String get editItemPrice => 'Aptuvenā cena';

  @override
  String get addToPantry => 'Pievienot pieliekamajam';

  @override
  String addToPantryPrompt(String name) {
    return 'Pievienot \"$name\" jūsu pieliekamajam?';
  }

  @override
  String get yes => 'Jā';

  @override
  String get productName => 'Produkta nosaukums';

  @override
  String get idealQty => 'Ideālais daudz.';

  @override
  String get currentQty => 'Pašreizējais daudz.';

  @override
  String get trackStock => 'Sekot krājumam';

  @override
  String get trackStockActive => 'Parādās iepirkumu ieteikumos';

  @override
  String get trackStockInactive => 'Neģenerē iepirkumu ieteikumus';

  @override
  String get createListDialog => 'Izveidot sarakstu';

  @override
  String get renameListDialog => 'Pārsaukt sarakstu';

  @override
  String get listHistory => 'Sarakstu vēsture';

  @override
  String get myLists => 'Mani saraksti';

  @override
  String get viewActive => 'Skatīt aktīvos';

  @override
  String get viewHistory => 'Skatīt vēsturi';

  @override
  String get noArchivedLists => 'Nav arhivētu sarakstu';

  @override
  String get noActiveLists => 'Nav aktīvu sarakstu';

  @override
  String completedOn(String date) {
    return 'Pabeigts $date';
  }

  @override
  String get sharedLabel => 'Kopīgots';

  @override
  String get restore => 'Atjaunot';

  @override
  String get removeSharedTooltip => 'Noņemt';

  @override
  String get deleteListTitle => 'Dzēst sarakstu';

  @override
  String deleteListContent(String name) {
    return 'Vai tiešām vēlaties dzēst \"$name\"? Visi vienumi tiks noņemti.';
  }

  @override
  String get removeSharedListTitle => 'Noņemt kopīgoto sarakstu';

  @override
  String removeSharedListContent(String name) {
    return 'Noņemt \"$name\" no jūsu sarakstiem? Oriģinālais saraksts netiks ietekmēts.';
  }

  @override
  String get createNewList => 'Izveidot jaunu sarakstu';

  @override
  String get aiAssistant => 'AI palīgs';

  @override
  String get aiAssistantDescription =>
      'Saņemiet gudrus ieteikumus, receptes un personalizētus padomus ar mūsu AI palīgu.';

  @override
  String get generalAssistant => 'Vispārējais palīgs';

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
  String get clearHistory => 'Notīrīt vēsturi';

  @override
  String get clearHistoryConfirm => 'Notīrīt visus ziņojumus šajā sesijā?';

  @override
  String get chatHint => 'Ierakstiet savu ziņojumu...';

  @override
  String chatError(String error) {
    return 'Kļūda, ielādējot tērzēšanu: $error';
  }

  @override
  String get listHelp => 'Kā es varu palīdzēt ar jūsu sarakstu?';

  @override
  String get generalHelp => 'Kā es varu palīdzēt ar jūsu iepirkšanos šodien?';

  @override
  String get chatSubtitle =>
      'Jautājiet par vienumu ieteikumiem, receptēm vai taupīšanas padomiem.';

  @override
  String get aiError =>
      'Atvainojiet, radās kļūda, apstrādājot jūsu pieprasījumu. Pārbaudiet savienojumu vai mēģiniet vēlreiz vēlāk.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Pierakstieties, lai atbloķētu\npremium funkcijas';

  @override
  String get signInGoogle => 'Pierakstīties ar Google';

  @override
  String get signInApple => 'Pierakstīties ar Apple';

  @override
  String get continueAsGuest => 'Turpināt kā viesis';

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
    return 'Pierakstīšanās kļūda: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Jauniniet, lai atbloķētu';

  @override
  String get itemRemoved => 'Vienums noņemts';

  @override
  String get undo => 'Atsaukt';

  @override
  String get emptyListTitle => 'Jūsu saraksts ir tukšs';

  @override
  String get emptyListSubtitle => 'Pievienojiet vienumus, lai sāktu';

  @override
  String get noListFoundTitle => 'Nav atrasts neviens saraksts';

  @override
  String get noListFoundSubtitle =>
      'Izveidojiet savu pirmo sarakstu, lai sāktu';

  @override
  String get createFirstList => 'Izveidot pirmo sarakstu';

  @override
  String get listBudgetTitle => 'Saraksta budžets';

  @override
  String get budgetAmountLabel => 'Budžeta summa';

  @override
  String get removeBudget => 'Noņemt';

  @override
  String get prefUnlimitedLists => 'Neierobežoti saraksti';

  @override
  String get prefSharing => 'Kopīgot sarakstus';

  @override
  String get prefFullHistory => 'Pilna vēsture';

  @override
  String get prefExportData => 'Eksportēt datus';

  @override
  String get prefCustomThemes => 'Pielāgotas tēmas';

  @override
  String get prefMonthlyBudget => 'Globālais mēneša budžets';

  @override
  String get prefAIAssistant => 'Personīgais AI palīgs';

  @override
  String get prefUnlimitedPantry => 'Neierobežots pieliekamais';

  @override
  String get prefInteractiveArtifacts => 'Interaktīvi AI artefakti';

  @override
  String get themeGreen => 'Zaļš';

  @override
  String get themeBlue => 'Zils';

  @override
  String get themePurple => 'Violets';

  @override
  String get themeRed => 'Sarkans';

  @override
  String get themeOrange => 'Oranžs';

  @override
  String get themePink => 'Rozā';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Dzintars';

  @override
  String get themeTeal => 'Tirkīzzils';

  @override
  String get themeBrown => 'Brūns';

  @override
  String get catFruits => 'Augļi';

  @override
  String get catCleaning => 'Tīrīšana';

  @override
  String get catBeverages => 'Dzērieni';

  @override
  String get catBakery => 'Maiznīca';

  @override
  String get catOthers => 'Citi';

  @override
  String get unitPack => 'iepakojums';

  @override
  String get shareSubject => 'Iepirkumu saraksts';

  @override
  String get monthlyBudgetTitle => 'Mēneša budžets';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Dzēst sarakstu';

  @override
  String get pantryItemRemoved => 'Vienums noņemts';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit vienumi jāiegādājas',
      one: '$deficit vienums jāiegādājas',
      zero: '0 vienumi jāiegādājas',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Groza kopsumma';

  @override
  String get restockLabel => 'Papildināt';

  @override
  String get advancedFeatures => 'Papildu funkcijas';

  @override
  String get selectAll => 'Izvēlēties visu';

  @override
  String get deselectAll => 'Noņemt izvēli';

  @override
  String get monthlyBudgetAppBar => 'Mēneša budžets';

  @override
  String get budgetEditTitle => 'Mēneša budžets';

  @override
  String get budgetDashboardTitle => 'Panelis';

  @override
  String get selectListForDashboard =>
      'Izvēlieties sarakstu, lai skatītu paneli.';

  @override
  String get spendingAnalysis => 'Izdevumu analīze';

  @override
  String get noItemsToAnalyze => 'Sarakstā nav vienumu, ko analizēt.';

  @override
  String get markItemsToSeeAnalysis =>
      'Atzīmējiet vienumus kā iegādātus, lai redzētu analīzi.';

  @override
  String get totalSpending => 'Kopējie izdevumi';

  @override
  String get spendingByCategory => 'Izdevumi pēc kategorijas';

  @override
  String get achievements => 'Sasniegumi';

  @override
  String get exportPdfExcel => 'Eksportēt PDF/Excel';

  @override
  String get exportPdf => 'Eksportēt kā PDF';

  @override
  String get exportExcel => 'Eksportēt kā Excel';

  @override
  String get organizingAi => 'ORGANIZĒ AR AI...';

  @override
  String get yesLabel => 'Jā';

  @override
  String get noLabel => 'Nē';

  @override
  String get shareListText => 'Mans iepirkumu saraksts';

  @override
  String get emptyListAddItems =>
      'Jūsu saraksts ir tukšs! Vispirms pievienojiet vienumus. ℹ️';

  @override
  String get listOrganizedMagic => 'Saraksts maģiski sakārtots kategorijās! ✨';

  @override
  String get shoppingMode => 'Iepirkšanās režīms';

  @override
  String get smartOrganization => 'Viedā organizācija';

  @override
  String get savings => 'Ietaupījums';

  @override
  String get shoppingModeHeader => 'IEPIRKŠANĀS REŽĪMS';

  @override
  String get shareAsText => 'Sūtīt vienumus kā formatētu tekstu';

  @override
  String get shareRealtime => 'Reāllaika sinhronizācija ar citiem';

  @override
  String get quickRecipe => 'Ātrā recepte';

  @override
  String get quickRecipePrompt =>
      'Iesakiet receptes ar maniem saraksta vienumiem.';

  @override
  String get economyTips => 'Taupīšanas padomi';

  @override
  String get economyTipsPrompt => 'Kā es varu ietaupīt naudu šim pirkumam?';

  @override
  String get organizeAisles => 'Sakārtot pa ejām';

  @override
  String get organizeAislesPrompt => 'Sakārtot pa tirgus ejām.';

  @override
  String get recipeSuggestion => 'Receptes ieteikums';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Atlikuši $remaining kredīti';
  }

  @override
  String get addAllToList => 'Pievienot visu sarakstam';

  @override
  String get organizeByAisles => 'Sakārtot pa ejām';

  @override
  String get voiceTranscriptionTooltip => 'Balss ievade (Bezmaksas)';

  @override
  String get aiVoiceCommandTooltip => 'AI balss komanda (Premium)';

  @override
  String get voiceCommandTitle => 'AI balss komanda';

  @override
  String get voiceCommandContent =>
      'Runājiet dabiski, lai pārvaldītu savu sarakstu!\n\nPiemēri:\n• \'Pievienot maizi, sieru un šķiņķi\'\n• \'Noņemt veļas mazgāšanas līdzekli\'\n• \'Mainīt tēmu uz zilu\'\n\nŠī ir Lista Plus Premium ekskluzīva funkcija.';

  @override
  String get voiceCommandPlanBtn => 'Skatīt plānus';

  @override
  String get itemsAddedSuccess => 'Vienumi veiksmīgi pievienoti sarakstam!';

  @override
  String get viewList => 'Skatīt sarakstu';

  @override
  String get feedbackTitle => 'Nosūtīt atsauksmi';

  @override
  String get feedbackPrompt => 'Ar ko vēlaties dalīties?';

  @override
  String get feedbackTypeBug => 'Ziņot par kļūdu';

  @override
  String get feedbackTypeBugHint => 'Kaut kas nedarbojas';

  @override
  String get feedbackTypeSuggestion => 'Ieteikums';

  @override
  String get feedbackTypeSuggestionHint => 'Ideja, kā uzlabot lietotni';

  @override
  String get feedbackTypeTranslation => 'Tulkojuma problēma';

  @override
  String get feedbackTypeTranslationHint => 'Nepareizs vai neveikls tulkojums';

  @override
  String get feedbackTypeFeature => 'Funkcijas pieprasījums';

  @override
  String get feedbackTypeFeatureHint => 'Funkcija, kuru vēlaties redzēt';

  @override
  String get feedbackTypeOther => 'Cits';

  @override
  String get feedbackTypeOtherHint => 'Cits atsauksmes veids';

  @override
  String get feedbackHint => 'Aprakstiet savu atsauksmi detalizēti...';

  @override
  String get feedbackSend => 'Nosūtīt atsauksmi';

  @override
  String get feedbackSending => 'Sūta...';

  @override
  String get feedbackThankYou => 'Paldies!';

  @override
  String get feedbackThankYouMessage =>
      'Jūsu atsauksme ir saņemta un palīdz mums uzlabot Lista Plus visiem.';

  @override
  String get feedbackBack => 'Atpakaļ';

  @override
  String feedbackError(String error) {
    return 'Sūtīšanas kļūda: $error';
  }

  @override
  String get feedbackRetry => 'Mēģināt vēlreiz';

  @override
  String get feedbackSettingsTitle => 'Nosūtīt atsauksmi';

  @override
  String get feedbackSettingsSubtitle =>
      'Ziņot par kļūdām, ieteikt uzlabojumus vai labot tulkojumus';

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
  String get openMenu => 'Atvērt izvēlni';

  @override
  String get viewRecipe => 'Skatīt recepti';

  @override
  String get recipeCreated => 'Recepte izveidota!';

  @override
  String get editRecipe => 'Rediģēt';

  @override
  String get deleteRecipe => 'Dzēst';

  @override
  String get deleteRecipeConfirm => 'Dzēst šo recepti?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Vai tiešām vēlaties dzēst \"$recipeName\"? Šo darbību nevar atsaukt.';
  }

  @override
  String get ingredients => 'Sastāvdaļas';

  @override
  String get instructions => 'Norādījumi';

  @override
  String get prepTime => 'Gatavošanas laiks';

  @override
  String get recipeSaved => 'Recepte saglabāta!';

  @override
  String get noRecipesSaved => 'Nav saglabātu recepšu';

  @override
  String get noRecipesSavedHint =>
      'Izveidojiet savu pirmo pielāgoto recepti, pieskaroties zemāk esošajai pogai.';

  @override
  String get myRecipes => 'Manas receptes';

  @override
  String get newRecipe => 'Jauna recepte';

  @override
  String get loadingRecipes => 'Ielādē jūsu receptes...';

  @override
  String get errorLoadingRecipes => 'Kļūda, ielādējot receptes';

  @override
  String get addIngredient => 'Pievienot sastāvdaļu';

  @override
  String get saveRecipe => 'Saglabāt';

  @override
  String get recipeName => 'Receptes nosaukums';

  @override
  String get shortDescription => 'Īss apraksts';

  @override
  String get prepTimeMinutes => 'Gatavošanas laiks (minūtes)';

  @override
  String get instructionsHint => 'Ierakstiet vienu soli rindā...';

  @override
  String get addPhoto => 'Pievienot fotoattēlu';

  @override
  String get imageUrlPlaceholder => 'Vai ielīmēt attēla URL';

  @override
  String get tags => 'Birkas';

  @override
  String get recipeTags => 'Receptes birkas';

  @override
  String get suggestedTags => 'Ieteiktie';

  @override
  String get searchRecipes => 'Meklēt receptes...';

  @override
  String get filterByTag => 'Filtrēt pēc birkas';

  @override
  String get allTags => 'Visas';

  @override
  String get recipeDeleted => 'Recepte dzēsta';

  @override
  String get saveChanges => 'Saglabāt izmaiņas';

  @override
  String get editRecipeTitle => 'Rediģēt recepti';

  @override
  String get newRecipeTitle => 'Jauna recepte';

  @override
  String get requiredField => 'Obligāts';

  @override
  String get chooseImageSource => 'Izvēlēties attēla avotu';

  @override
  String get gallery => 'Galerija';

  @override
  String get enterUrl => 'Ievadīt URL';

  @override
  String get recipeImage => 'Receptes attēls';

  @override
  String get removeImage => 'Noņemt attēlu';

  @override
  String get mealPlannerTitle => 'Maltīšu plānotājs';

  @override
  String get mealPlannerViewMonthly => 'Mēneša skats';

  @override
  String get mealPlannerViewWeekly => 'Nedēļas skats';

  @override
  String get mealPlannerNoMeals => 'Nav plānotu maltīšu';

  @override
  String get mealPlannerNoMealsHint =>
      'Pieskarieties dienai, lai pievienotu maltīti';

  @override
  String get mealPlannerLoading => 'Ielādē maltīšu plānu...';

  @override
  String get mealPlannerError => 'Kļūda, ielādējot maltīšu plānu';

  @override
  String get mealPlannerAddMeal => 'Pievienot maltīti';

  @override
  String get mealPlannerEditMeal => 'Rediģēt maltīti';

  @override
  String get mealPlannerDeleteMeal => 'Noņemt maltīti';

  @override
  String get mealPlannerMealDeleted => 'Maltīte noņemta';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porcijas',
      one: '$count porcija',
      zero: '$count porcijas',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porcijas';

  @override
  String get mealPlannerNoteLabel => 'Piezīme (pēc izvēles)';

  @override
  String get mealPlannerSelectRecipe => 'Izvēlieties recepti';

  @override
  String get mealPlannerSearchRecipes => 'Meklēt receptes...';

  @override
  String get mealPlannerNoRecipesFound => 'Receptes nav atrastas';

  @override
  String get mealPlannerNoRecipesHint =>
      'Vispirms izveidojiet receptes cilnē Receptes';

  @override
  String get mealPlannerSave => 'Pievienot plānam';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'Saplanotas $count no $total maltītēm';
  }

  @override
  String get mealPlannerGenerateList => 'Ģenerēt iepirkumu sarakstu';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Pievienot visas sastāvdaļas no plānotajām šīs nedēļas maltītēm iepirkumu sarakstam?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count sastāvdaļa(-as) pievienota jūsu sarakstam!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Nav sastāvdaļu, ko pievienot. Vispirms plānojiet maltītes ar receptēm.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Vispirms izveidojiet iepirkumu sarakstu.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Brokastis';

  @override
  String get mealPlannerMealTypeLunch => 'Pusdienas';

  @override
  String get mealPlannerMealTypeDinner => 'Vakariņas';

  @override
  String get mealPlannerMealTypeSnack => 'Uzkodas';

  @override
  String get mealPlannerDateLabel => 'Datums';

  @override
  String get mealPlannerWeekEmpty => 'Šai nedēļai nekas nav plānots';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Pieskarieties jebkurai dienai, lai sāktu plānot maltītes!';

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

  @override
  String shareReferralText(Object url) {
    return 'I\'m using Lista Plus to organize my shopping! Download via my link and we both get 7 days of Premium free: $url';
  }

  @override
  String get shareReferralSubject => 'Get 7 days of Lista Plus Premium!';
}
