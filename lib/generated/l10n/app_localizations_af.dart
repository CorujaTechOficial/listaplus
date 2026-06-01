// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get appTitle => 'Klyslys';

  @override
  String get lists => 'Lyste';

  @override
  String get pantry => 'Spens';

  @override
  String get cancel => 'Kanselleer';

  @override
  String get save => 'Stoor';

  @override
  String get create => 'Skep';

  @override
  String get add => 'Voeg by';

  @override
  String get remove => 'Verwyder';

  @override
  String get delete => 'Verwyder';

  @override
  String get edit => 'Wysig';

  @override
  String get copy => 'Kopieer';

  @override
  String get next => 'Volgende';

  @override
  String get retry => 'Probeer weer';

  @override
  String get regenerate => 'Her genereer';

  @override
  String get copiedToClipboard => 'Gekopieer na knipbord';

  @override
  String get confirm => 'Bevestig';

  @override
  String get close => 'Maak toe';

  @override
  String get import => 'Voer in';

  @override
  String get rename => 'Hernoem';

  @override
  String get upgrade => 'Gradeer op';

  @override
  String get clear => 'Maak skoon';

  @override
  String error(String message) {
    return 'Fout: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fout: $message';
  }

  @override
  String get purchaseError => 'Fout met verwerking van aankoop. Probeer weer.';

  @override
  String get restoreError => 'Fout met herstel van aankope. Probeer weer.';

  @override
  String get loading => 'Laai tans...';

  @override
  String get fieldRequired => 'Vereiste veld';

  @override
  String get addedFeedback => 'Bygevoeg!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gekies',
      one: '$count gekies',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Geraam';

  @override
  String get alreadyPurchased => 'Reeds gekoop';

  @override
  String get clearList => 'Maak lys skoon';

  @override
  String get clearPurchased => 'Maak gekoopte skoon';

  @override
  String get share => 'Deel';

  @override
  String get shareViaCode => 'Deel via kode';

  @override
  String get importViaCode => 'Voer in via kode';

  @override
  String get listAssistant => 'Lysassistent';

  @override
  String get globalAssistant => 'Globale assistent';

  @override
  String get becomePremium => 'Word Premium';

  @override
  String get manageSubscription => 'Bestuur intekening';

  @override
  String get completePurchase => 'Voltooi aankoop';

  @override
  String get confirmClearList => 'Verwyder alle items?';

  @override
  String get shareListTitle => 'Deel Lys';

  @override
  String get shareThisCode => 'Deel hierdie kode:';

  @override
  String get validForLimitedTime => 'Geldig vir beperkte tyd';

  @override
  String get importListTitle => 'Voer Lys In';

  @override
  String get enterCodeHint => 'Voer die kode in';

  @override
  String get confirmArchiveTitle => 'Voltooi Aankoop';

  @override
  String get confirmArchiveContent =>
      'Voltooi hierdie aankoop en argiveer die lys?';

  @override
  String get complete => 'Voltooi';

  @override
  String get listArchived => 'Lys suksesvol geargiveer!';

  @override
  String listAdded(String listName) {
    return '$listName bygevoeg!';
  }

  @override
  String get buy => 'Koop';

  @override
  String get unmark => 'Ontmerk';

  @override
  String confirmDeleteItems(int count) {
    return 'Verwyder $count item(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Bevestig';

  @override
  String confirmContent(int count) {
    return 'Verwyder $count item(s)?';
  }

  @override
  String get archiveList => 'Argiveer lys';

  @override
  String get pantryAppBar => 'Spens';

  @override
  String get generateShoppingList => 'Genereer klyslys';

  @override
  String get pantryEmpty => 'Spens is leeg';

  @override
  String get pantryEmptySubtitle => 'Voeg produkte by wat jy tuis wil hou';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(s) moet gekoop word';
  }

  @override
  String get noItemsToBuy => 'Geen items om te koop nie';

  @override
  String get newPantryList => 'Spens Inkopies';

  @override
  String get newListTitle => 'Nuwe Klyslys';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(s) sal bygevoeg word';
  }

  @override
  String get listNameLabel => 'Lysnaam';

  @override
  String listCreated(String name, int count) {
    return 'Lys \"$name\" geskep met $count items';
  }

  @override
  String get noTracking => 'Geen dop';

  @override
  String get markAsPurchased => 'Merk as gekoop';

  @override
  String editPantryItem(String name) {
    return 'Wysig $name';
  }

  @override
  String get idealQuantity => 'Ideale hoeveelheid';

  @override
  String get currentQuantity => 'Huidige hoeveelheid';

  @override
  String get consumed => 'Verbruik';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name hervul na $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Verwyder \"$name\" uit spens?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Wysig $name';
  }

  @override
  String get settingsAppBar => 'Instellings';

  @override
  String get language => 'Taal';

  @override
  String get languagePortuguese => 'Português (Brasilië)';

  @override
  String get languageEnglish => 'Engels';

  @override
  String get languageSystem => 'Stelselverstek';

  @override
  String get chooseLanguage => 'Kies taal';

  @override
  String get searchLanguage => 'Soek taal...';

  @override
  String get currency => 'Geldeenheid';

  @override
  String get chooseCurrency => 'Kies Geldeenheid';

  @override
  String get searchCurrency => 'Soek geldeenheid...';

  @override
  String get appearance => 'Voorkoms';

  @override
  String get light => 'Lig';

  @override
  String get system => 'Stelsel';

  @override
  String get dark => 'Donker';

  @override
  String get themeColor => 'Temakleur';

  @override
  String get dynamicColors => 'Dinamiese kleure';

  @override
  String get dynamicColorsSubtitle =>
      'Gebruik kleure gebaseer op jou muurpapier';

  @override
  String get dynamicColorsEnabledWarning =>
      'Deaktiveer dinamiese kleure sodat die temakleur in werking tree';

  @override
  String get finance => 'Finansies';

  @override
  String get monthlyBudgetNav => 'Maandelikse begroting';

  @override
  String get budgetSubtitle => 'Volg jou maandelikse besteding';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Rugsteun';

  @override
  String get backupSubtitle => 'Voer uit of voer jou data in';

  @override
  String get about => 'Oor';

  @override
  String get version => 'Weergawe';

  @override
  String get privacy => 'Privaatheid';

  @override
  String get termsOfUse => 'Gebruiksvoorwaardes';

  @override
  String get backupTitle => 'Rugsteun';

  @override
  String get backupPremiumDescription =>
      'Rugsteun en uitvoer is \'n premium kenmerk';

  @override
  String get exportData => 'Voer data uit';

  @override
  String get exportDataSubtitle => 'Stoor alle lyste as JSON';

  @override
  String get importData => 'Voer data in';

  @override
  String get importDataSubtitle => 'Herstel lyste van \'n JSON';

  @override
  String get importJsonTitle => 'Voer JSON in';

  @override
  String get importJsonHint => 'Plak die rugsteun-JSON hier...';

  @override
  String get backupExported => 'Rugsteun uitgevoer!';

  @override
  String get budgetAppBar => 'Maandelikse Begroting';

  @override
  String get budgetPremiumLocked => 'Globale maandelikse begroting is premium';

  @override
  String get budgetUpgradePrompt => 'Gradeer op om te ontsluit';

  @override
  String get noBudgetDefined => 'Geen begroting gestel';

  @override
  String totalEstimated(String amount) {
    return 'Totaal geraam: $amount';
  }

  @override
  String get setBudgetButton => 'Stel begroting';

  @override
  String get budgetLists => 'Lyste';

  @override
  String get budgetValueLabel => 'Bedrag';

  @override
  String get setBudgetTitle => 'Maandelikse Begroting';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterPending => 'Hangend';

  @override
  String get filterPurchased => 'Gekoop';

  @override
  String get sortName => 'Naam';

  @override
  String get sortCategory => 'Kategorie';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Handmatig';

  @override
  String get addItem => 'Voeg Item By';

  @override
  String get itemName => 'Itemnaam';

  @override
  String get quantityShort => 'Hoev';

  @override
  String get unit => 'Eenheid';

  @override
  String get category => 'Kategorie';

  @override
  String get estimatedPrice => 'Geraamde prys';

  @override
  String get addItemPrice => 'Geraamde prys';

  @override
  String get editItem => 'Wysig Item';

  @override
  String get quantityFull => 'Hoeveelheid';

  @override
  String get editItemPrice => 'Geraamde prys';

  @override
  String get addToPantry => 'Voeg by Spens';

  @override
  String addToPantryPrompt(String name) {
    return 'Voeg \"$name\" by jou Spens?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produknaam';

  @override
  String get idealQty => 'Ideale hoev';

  @override
  String get currentQty => 'Huidige hoev';

  @override
  String get trackStock => 'Hou voorraad dop';

  @override
  String get trackStockActive => 'Verskyn in inkopie-voorstelle';

  @override
  String get trackStockInactive => 'Genereer geen inkopie-voorstel nie';

  @override
  String get createListDialog => 'Skep Lys';

  @override
  String get renameListDialog => 'Hernoem Lys';

  @override
  String get listHistory => 'Lysgeskiedenis';

  @override
  String get myLists => 'My Lyste';

  @override
  String get viewActive => 'Bekyk Aktiewe';

  @override
  String get viewHistory => 'Bekyk Geskiedenis';

  @override
  String get noArchivedLists => 'Geen geargiveerde lyste';

  @override
  String get noActiveLists => 'Geen aktiewe lyste';

  @override
  String completedOn(String date) {
    return 'Voltooi op $date';
  }

  @override
  String get sharedLabel => 'Gedeel';

  @override
  String get restore => 'Herstel';

  @override
  String get removeSharedTooltip => 'Verwyder';

  @override
  String get deleteListTitle => 'Verwyder lys';

  @override
  String deleteListContent(String name) {
    return 'Is jy seker jy wil \"$name\" verwyder? Alle items sal verwyder word.';
  }

  @override
  String get removeSharedListTitle => 'Verwyder gedeelde lys';

  @override
  String removeSharedListContent(String name) {
    return 'Verwyder \"$name\" van jou lyste? Die oorspronklike lys sal nie geraak word nie.';
  }

  @override
  String get createNewList => 'Skep nuwe lys';

  @override
  String get aiAssistant => 'AI Assistent';

  @override
  String get aiAssistantDescription =>
      'Kry slim voorstelle, resepte en persoonlike wenke met ons AI-assistent.';

  @override
  String get generalAssistant => 'Algemene Assistent';

  @override
  String get newChat => 'Nuwe Chat';

  @override
  String get noHistory => 'Geen kletsgeskiedenis nie';

  @override
  String get deleteSession => 'Vee Chat uit';

  @override
  String get deleteSessionConfirm =>
      'Is jy seker jy wil hierdie klets uitvee? Die boodskappe sal permanent verlore gaan.';

  @override
  String get clearHistory => 'Maak Geskiedenis Skoon';

  @override
  String get clearHistoryConfirm =>
      'Maak alle boodskappe in hierdie sessie skoon?';

  @override
  String get chatHint => 'Tik jou boodskap...';

  @override
  String chatError(String error) {
    return 'Fout met laai van geselsie: $error';
  }

  @override
  String get listHelp => 'Hoe kan ek met jou lys help?';

  @override
  String get generalHelp => 'Hoe kan ek met jou inkopies vandag help?';

  @override
  String get chatSubtitle =>
      'Vra vir itemvoorstelle, resepte of besparingwenke.';

  @override
  String get aiError =>
      'Jammer, \'n fout het voorgekom met die verwerking van jou versoek. Gaan jou verbinding na of probeer later weer.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Meld aan om\npremium-kenmerke te ontsluit';

  @override
  String get signInGoogle => 'Teken in met Google';

  @override
  String get signInApple => 'Teken in met Apple';

  @override
  String get continueAsGuest => 'Gaan voort as gas';

  @override
  String get onboardingWelcomeTitle => 'Welkom by Lista Plus';

  @override
  String get onboardingWelcomeDesc =>
      'Die slimste manier om jou inkopies te organiseer en geld te spaar.';

  @override
  String get onboardingSetupTitle => 'Pas jou ervaring aan';

  @override
  String get onboardingSetupDesc =>
      'Kies hoe jy wil hê Lista Plus moet lyk en vir jou werk.';

  @override
  String get onboardingLoginTitle => 'Stoor alles in die wolk';

  @override
  String get onboardingLoginDesc =>
      'Jou data is oor al jou toestelle gesinkroniseer';

  @override
  String get onboardingShareTitle => 'Deel met diegene vir wie jy lief is';

  @override
  String get onboardingShareDesc =>
      'Sinkroniseer lyste intyds met familie en vriende';

  @override
  String get onboardingPremiumTitle => 'Ontsluit alle kenmerke';

  @override
  String get onboardingPremiumSubtitle =>
      'Haal die meeste uit jou inkopielyste';

  @override
  String get onboardingAnnualBadge => 'Beste waarde';

  @override
  String get onboardingMonthlyLabel => 'Maandeliks';

  @override
  String get onboardingAnnualLabel => 'Jaarliks';

  @override
  String get onboardingViewAllPlans => 'Bekyk alle planne';

  @override
  String get onboardingSubscribeCta => 'Teken in';

  @override
  String get onboardingCancelAnytime =>
      'Kanselleer enige tyd. Geen verbintenis nie.';

  @override
  String get onboardingContinueAsGuest => 'Gaan voort as gas';

  @override
  String get onboardingRestore => 'Herstel';

  @override
  String get onboardingRestoreDesc =>
      'Het jy reeds \'n intekening? Tik hier om dit te herstel.';

  @override
  String get onboardingExit => 'Verlaat';

  @override
  String get onboardingPersonalizationTitle => 'Kom ons leer jou ken';

  @override
  String get onboardingPersonalizationDesc =>
      'Ons sal dit gebruik om jou voorstelle te verpersoonlik en inkopies slimmer te maak.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Wat is jou gunsteling kos?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'bv. Pizza, Sushi, Lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Gaan voort';

  @override
  String get onboardingPersonalizationSkip => 'Slaan vir eers oor';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Vertel ons jou gunsteling kos om voort te gaan';

  @override
  String get settingsDefaultScreen => 'Verstek tuisskerm';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Kies tussen inkopielys of KI-klets';

  @override
  String get settingsScreenList => 'Inkopielys';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Aantekenfout: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Gradeer op om te ontsluit';

  @override
  String get itemRemoved => 'Item verwyder';

  @override
  String get undo => 'Ontdoen';

  @override
  String get emptyListTitle => 'Jou lys is leeg';

  @override
  String get emptyListSubtitle => 'Voeg items by om te begin';

  @override
  String get noListFoundTitle => 'Geen lyste gevind';

  @override
  String get noListFoundSubtitle => 'Skep jou eerste lys om te begin';

  @override
  String get createFirstList => 'Skep Eerste Lys';

  @override
  String get listBudgetTitle => 'Lysbegroting';

  @override
  String get budgetAmountLabel => 'Begrotingsbedrag';

  @override
  String get removeBudget => 'Verwyder';

  @override
  String get prefUnlimitedLists => 'Onbeperkte lyste';

  @override
  String get prefSharing => 'Deel lyste';

  @override
  String get prefFullHistory => 'Volle geskiedenis';

  @override
  String get prefExportData => 'Voer data uit';

  @override
  String get prefCustomThemes => 'Pasgemaakte temas';

  @override
  String get prefMonthlyBudget => 'Globale maandelikse begroting';

  @override
  String get prefAIAssistant => 'Persoonlike AI Assistent';

  @override
  String get prefUnlimitedPantry => 'Onbeperkte spens';

  @override
  String get prefInteractiveArtifacts => 'Interaktiewe AI-Artifakte';

  @override
  String get themeGreen => 'Groen';

  @override
  String get themeBlue => 'Blou';

  @override
  String get themePurple => 'Pers';

  @override
  String get themeRed => 'Rooi';

  @override
  String get themeOrange => 'Oranje';

  @override
  String get themePink => 'Pienk';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Groenblou';

  @override
  String get themeBrown => 'Bruin';

  @override
  String get catFruits => 'Vrugte';

  @override
  String get catCleaning => 'Skoonmaak';

  @override
  String get catBeverages => 'Drankies';

  @override
  String get catBakery => 'Bakkery';

  @override
  String get catOthers => 'Ander';

  @override
  String get unitPack => 'pak';

  @override
  String get shareSubject => 'Klyslys';

  @override
  String get monthlyBudgetTitle => 'Maandelikse Begroting';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Verwyder lys';

  @override
  String get pantryItemRemoved => 'Item verwyder';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit items moet gekoop word',
      one: '$deficit item moet gekoop word',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Mandjietotaal';

  @override
  String get restockLabel => 'Hervul';

  @override
  String get advancedFeatures => 'Gevorderde kenmerke';

  @override
  String get selectAll => 'Kies alles';

  @override
  String get deselectAll => 'Ontkies alles';

  @override
  String get monthlyBudgetAppBar => 'Maandelikse Begroting';

  @override
  String get budgetEditTitle => 'Maandelikse Begroting';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard =>
      'Kies \'n lys om die dashboard te bekyk.';

  @override
  String get spendingAnalysis => 'Bestedingsanalise';

  @override
  String get noItemsToAnalyze => 'Geen items in die lys om te ontleed nie.';

  @override
  String get markItemsToSeeAnalysis =>
      'Merk items as gekoop om die analise te sien.';

  @override
  String get totalSpending => 'Totale Besteding';

  @override
  String get spendingByCategory => 'Besteding per Kategorie';

  @override
  String get achievements => 'Prestasies';

  @override
  String get exportPdfExcel => 'Voer uit PDF/Excel';

  @override
  String get exportPdf => 'Voer uit as PDF';

  @override
  String get exportExcel => 'Voer uit as Excel';

  @override
  String get organizingAi => 'ORGANISEER MET KI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nee';

  @override
  String get shareListText => 'My Klyslys';

  @override
  String get emptyListAddItems => 'Jou lys is leeg! Voeg eers items by. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lys magies georganiseer volgens kategorieë! ✨';

  @override
  String get shoppingMode => 'Inkopiemodus';

  @override
  String get smartOrganization => 'Slim Organisasie';

  @override
  String get savings => 'Besparings';

  @override
  String get shoppingModeHeader => 'INKOPIEMODUS';

  @override
  String get shareAsText => 'Stuur items as geformateerde teks';

  @override
  String get shareRealtime => 'Reële tyd-sinkronisasie met ander mense';

  @override
  String get quickRecipe => 'Vinnige resep';

  @override
  String get quickRecipePrompt => 'Stel resepte voor met items van my lys.';

  @override
  String get economyTips => 'Besparingwenke';

  @override
  String get economyTipsPrompt => 'Hoe kan ek geld spaar op hierdie aankoop?';

  @override
  String get organizeAisles => 'Organiseer volgens gange';

  @override
  String get organizeAislesPrompt => 'Organiseer volgens winkelgange.';

  @override
  String get recipeSuggestion => 'Resepvoorstel';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining krediete oor';
  }

  @override
  String get addAllToList => 'Voeg alles by lys';

  @override
  String get organizeByAisles => 'Organiseer volgens gange';

  @override
  String get voiceTranscriptionTooltip => 'Stemtik (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'KI-stemopdrag (Premium)';

  @override
  String get voiceCommandTitle => 'KI-stemopdrag';

  @override
  String get voiceCommandContent =>
      'Praat natuurlik om jou lys te bestuur!\n\nVoorbeelde:\n• \'Voeg brood, kaas en ham by\'\n• \'Verwyder waspoeier\'\n• \'Verander tema na blou\'\n\nDit is \'n eksklusiewe kenmerk van Lista Plus Premium.';

  @override
  String get voiceCommandPlanBtn => 'Bekyk Planne';

  @override
  String get itemsAddedSuccess => 'Items suksesvol by lys gevoeg!';

  @override
  String get viewList => 'Bekyk lys';

  @override
  String get feedbackTitle => 'Stuur Terugvoer';

  @override
  String get feedbackPrompt => 'Wat wil jy graag deel?';

  @override
  String get feedbackTypeBug => 'Rapporteer Fout';

  @override
  String get feedbackTypeBugHint => 'Iets werk nie';

  @override
  String get feedbackTypeSuggestion => 'Voorstel';

  @override
  String get feedbackTypeSuggestionHint => 'Idee om die program te verbeter';

  @override
  String get feedbackTypeTranslation => 'Vertalingskwessie';

  @override
  String get feedbackTypeTranslationHint =>
      'Verkeerde of ongemaklike vertaling';

  @override
  String get feedbackTypeFeature => 'Funksieversoek';

  @override
  String get feedbackTypeFeatureHint => 'Funksie wat jy graag wil sien';

  @override
  String get feedbackTypeOther => 'Ander';

  @override
  String get feedbackTypeOtherHint => 'Ander tipe terugvoer';

  @override
  String get feedbackHint => 'Beskryf jou terugvoer in detail...';

  @override
  String get feedbackSend => 'Stuur Terugvoer';

  @override
  String get feedbackSending => 'Stuur tans...';

  @override
  String get feedbackThankYou => 'Dankie!';

  @override
  String get feedbackThankYouMessage =>
      'Jou terugvoer is ontvang en help ons om Lista Plus vir almal te verbeter.';

  @override
  String get feedbackBack => 'Terug';

  @override
  String feedbackError(String error) {
    return 'Fout met stuur: $error';
  }

  @override
  String get feedbackRetry => 'Probeer weer';

  @override
  String get feedbackSettingsTitle => 'Stuur Terugvoer';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapporteer foute, stel verbeterings voor, of maak vertalings reg';

  @override
  String get aiEnergy => 'AI Energie';

  @override
  String get searchInConversation => 'Soek in gesprek...';

  @override
  String get noMessagesFound => 'Geen boodskappe gevind nie';

  @override
  String get suggestedQuestions => 'Voorgestelde vrae:';

  @override
  String get shoppingAssistant => 'Inkopie-assistent';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased van $total gekoop';
  }

  @override
  String get estimatedCost => 'Geskatte';

  @override
  String get viewItems => 'Bekyk items';

  @override
  String get noItemsInList => 'Geen items in die lys nie';

  @override
  String get longHistoryWarning =>
      'Lang geskiedenis: die assistent fokus op die nuutste boodskappe vir beter prestasie.';

  @override
  String get listening => 'Luister tans...';

  @override
  String get addDirectToList => 'Voeg direk by lys';

  @override
  String get unlockFullResponse => 'Ontsluit volle reaksie';

  @override
  String get switchList => 'Verander lys';

  @override
  String get marketMode => 'Markmodus';

  @override
  String get backToChat => 'Terug na Chat';

  @override
  String get finishShopping => 'Voltooi inkopies';

  @override
  String get welcomeAiAssistant => 'Welkom by AI Assistant';

  @override
  String get createListToStartAi =>
      'Skep \'n inkopielys om die slimklets te begin gebruik.';

  @override
  String get howCanIHelp => 'Hoe kan ek help?';

  @override
  String get chatSubtitleShort => 'Vra oor pryse, resepte, organisasie...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total gekoop';
  }

  @override
  String get quickReplies => 'Vinnige antwoorde:';

  @override
  String get voiceProFeature =>
      'Gevorderde stemopdragte is Pro. Aktiveer tans basiese diktee …';

  @override
  String get viewPro => 'Bekyk Pro';

  @override
  String get errorLoadingChat =>
      'Oeps! Iets het verkeerd geloop om die klets te laai.';

  @override
  String get errorLoadingChatSubtitle =>
      'Gaan jou verbinding na of probeer later weer.';

  @override
  String get errorOscillation =>
      'Dit kan voorkom as gevolg van netwerkossillasies of tydelike onbeskikbaarheid. Probeer asseblief weer.';

  @override
  String get activeListening => 'Aktiewe luister';

  @override
  String get whatToDoWithItem => 'Wat wil jy graag met hierdie item doen?';

  @override
  String get viewDetails => 'Bekyk besonderhede';

  @override
  String get openMenu => 'Maak spyskaart oop';

  @override
  String get viewRecipe => 'Bekyk resep';

  @override
  String get recipeCreated => 'Resep geskep!';

  @override
  String get editRecipe => 'Wysig';

  @override
  String get deleteRecipe => 'Verwyder';

  @override
  String get deleteRecipeConfirm => 'Verwyder hierdie resep?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Is jy seker jy wil \"$recipeName\" verwyder? Hierdie aksie kan nie ongedaan gemaak word nie.';
  }

  @override
  String get ingredients => 'Bestanddele';

  @override
  String get instructions => 'Instruksies';

  @override
  String get prepTime => 'Voorbereidingstyd';

  @override
  String get recipeSaved => 'Resep gestoor!';

  @override
  String get noRecipesSaved => 'Geen resepte gestoor nie';

  @override
  String get noRecipesSavedHint =>
      'Skep jou eerste pasgemaakte resep deur op die knoppie hieronder te tik.';

  @override
  String get myRecipes => 'My resepte';

  @override
  String get newRecipe => 'Nuwe resep';

  @override
  String get loadingRecipes => 'Laai tans jou resepte...';

  @override
  String get errorLoadingRecipes => 'Fout met laai van resepte';

  @override
  String get addIngredient => 'Voeg bestanddeel by';

  @override
  String get saveRecipe => 'Stoor';

  @override
  String get recipeName => 'Resepnaam';

  @override
  String get shortDescription => 'Kort beskrywing';

  @override
  String get prepTimeMinutes => 'Voorbereidingstyd (minute)';

  @override
  String get instructionsHint => 'Tik een stap per reël...';

  @override
  String get addPhoto => 'Voeg foto by';

  @override
  String get imageUrlPlaceholder => 'Of plak \'n beeld-URL';

  @override
  String get tags => 'Etikette';

  @override
  String get recipeTags => 'Resep-etikette';

  @override
  String get suggestedTags => 'Voorgestel';

  @override
  String get searchRecipes => 'Soek resepte...';

  @override
  String get filterByTag => 'Filtreer volgens etiket';

  @override
  String get allTags => 'Alle';

  @override
  String get recipeDeleted => 'Resep verwyder';

  @override
  String get saveChanges => 'Stoor veranderinge';

  @override
  String get editRecipeTitle => 'Wysig resep';

  @override
  String get newRecipeTitle => 'Nuwe resep';

  @override
  String get requiredField => 'Vereis';

  @override
  String get chooseImageSource => 'Kies beeldbron';

  @override
  String get gallery => 'Galery';

  @override
  String get enterUrl => 'Voer URL in';

  @override
  String get recipeImage => 'Resepbeeld';

  @override
  String get removeImage => 'Verwyder beeld';

  @override
  String get mealPlannerTitle => 'Maaltydbeplanner';

  @override
  String get mealPlannerViewMonthly => 'Maandelikse aansig';

  @override
  String get mealPlannerViewWeekly => 'Weeklikse aansig';

  @override
  String get mealPlannerNoMeals => 'Geen maaltye beplan nie';

  @override
  String get mealPlannerNoMealsHint =>
      'Tik op \'n dag om \'n maaltyd by te voeg';

  @override
  String get mealPlannerLoading => 'Laai tans maaltydplan...';

  @override
  String get mealPlannerError => 'Fout met laai van maaltydplan';

  @override
  String get mealPlannerAddMeal => 'Voeg maaltyd by';

  @override
  String get mealPlannerEditMeal => 'Wysig maaltyd';

  @override
  String get mealPlannerDeleteMeal => 'Verwyder maaltyd';

  @override
  String get mealPlannerMealDeleted => 'Maaltyd verwyder';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porsies',
      one: '$count porsie',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porsies';

  @override
  String get mealPlannerNoteLabel => 'Nota (opsioneel)';

  @override
  String get mealPlannerSelectRecipe => 'Kies \'n resep';

  @override
  String get mealPlannerSearchRecipes => 'Soek resepte...';

  @override
  String get mealPlannerNoRecipesFound => 'Geen resepte gevind nie';

  @override
  String get mealPlannerNoRecipesHint =>
      'Skep eers resepte in die Resepte-oortjie';

  @override
  String get mealPlannerSave => 'Voeg by plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count van $total maaltye beplan';
  }

  @override
  String get mealPlannerGenerateList => 'Genereer inkopielys';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Voeg alle bestanddele van beplande maaltye hierdie week by jou inkopielys?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count bestanddeel(e) by jou lys gevoeg!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Geen bestanddele om by te voeg nie. Beplan eers \'n paar maaltye met resepte.';

  @override
  String get mealPlannerGenerateListNoList => 'Skep eers \'n inkopielys.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Ontbyt';

  @override
  String get mealPlannerMealTypeLunch => 'Middagete';

  @override
  String get mealPlannerMealTypeDinner => 'Aandete';

  @override
  String get mealPlannerMealTypeSnack => 'Peuselhappie';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Niks beplan vir hierdie week nie';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tik op enige dag om jou maaltye te begin beplan!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Nooi na lys';

  @override
  String get shareApp => 'Deel app';

  @override
  String get shareAppDescription => 'Nooi vriende om Lista Plus te gebruik';

  @override
  String shareReferralText(Object url) {
    return 'Ek gebruik Lista Plus om my inkopies te organiseer! Laai af via my skakel en ons kry albei 7 dae se Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Kry 7 dae se Lista Plus Premium!';
}
