// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Boodschappenlijst';

  @override
  String get lists => 'Lijsten';

  @override
  String get pantry => 'Voorraadkast';

  @override
  String get cancel => 'Annuleren';

  @override
  String get save => 'Opslaan';

  @override
  String get create => 'Maken';

  @override
  String get add => 'Toevoegen';

  @override
  String get remove => 'Verwijderen';

  @override
  String get delete => 'Wissen';

  @override
  String get edit => 'Bewerken';

  @override
  String get copy => 'Kopiëren';

  @override
  String get next => 'Volgende';

  @override
  String get retry => 'Opnieuw';

  @override
  String get regenerate => 'Opnieuw genereren';

  @override
  String get copiedToClipboard => 'Gekopieerd naar klembord';

  @override
  String get confirm => 'Bevestigen';

  @override
  String get close => 'Sluiten';

  @override
  String get import => 'Importeren';

  @override
  String get rename => 'Hernoemen';

  @override
  String get upgrade => 'Upgraden';

  @override
  String get clear => 'Leegmaken';

  @override
  String error(String message) {
    return 'Fout: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fout: $message';
  }

  @override
  String get purchaseError => 'Fout bij verwerken aankoop. Probeer opnieuw.';

  @override
  String get restoreError => 'Fout bij herstellen aankopen. Probeer opnieuw.';

  @override
  String get loading => 'Laden...';

  @override
  String get fieldRequired => 'Vereist veld';

  @override
  String get addedFeedback => 'Toegevoegd!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count geselecteerd',
      one: '$count geselecteerd',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Geschat';

  @override
  String get alreadyPurchased => 'Al gekocht';

  @override
  String get clearList => 'Lijst leegmaken';

  @override
  String get clearPurchased => 'Gekochte verwijderen';

  @override
  String get share => 'Delen';

  @override
  String get shareViaCode => 'Delen via code';

  @override
  String get importViaCode => 'Importeren via code';

  @override
  String get listAssistant => 'Lijstassistent';

  @override
  String get globalAssistant => 'Globale assistent';

  @override
  String get becomePremium => 'Word Premium';

  @override
  String get manageSubscription => 'Abonnement beheren';

  @override
  String get completePurchase => 'Aankoop voltooien';

  @override
  String get confirmClearList => 'Alle items verwijderen?';

  @override
  String get shareListTitle => 'Lijst delen';

  @override
  String get shareThisCode => 'Deel deze code:';

  @override
  String get validForLimitedTime => 'Beperkt geldig';

  @override
  String get importListTitle => 'Lijst importeren';

  @override
  String get enterCodeHint => 'Voer de code in';

  @override
  String get confirmArchiveTitle => 'Aankoop voltooien';

  @override
  String get confirmArchiveContent =>
      'Deze aankoop voltooien en de lijst archiveren?';

  @override
  String get complete => 'Voltooien';

  @override
  String get listArchived => 'Lijst succesvol gearchiveerd!';

  @override
  String listAdded(String listName) {
    return '$listName toegevoegd!';
  }

  @override
  String get buy => 'Kopen';

  @override
  String get unmark => 'Markering verwijderen';

  @override
  String confirmDeleteItems(int count) {
    return '$count item(s) verwijderen?';
  }

  @override
  String get confirmDeleteTitle => 'Bevestigen';

  @override
  String confirmContent(int count) {
    return '$count item(s) verwijderen?';
  }

  @override
  String get archiveList => 'Lijst archiveren';

  @override
  String get pantryAppBar => 'Voorraadkast';

  @override
  String get generateShoppingList => 'Boodschappenlijst genereren';

  @override
  String get pantryEmpty => 'Lege voorraadkast';

  @override
  String get pantryEmptySubtitle =>
      'Voeg producten toe die je thuis wilt houden';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(s) moeten gekocht worden';
  }

  @override
  String get noItemsToBuy => 'Geen items om te kopen';

  @override
  String get newPantryList => 'Voorraad boodschappen';

  @override
  String get newListTitle => 'Nieuwe boodschappenlijst';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(s) worden toegevoegd';
  }

  @override
  String get listNameLabel => 'Lijstnaam';

  @override
  String listCreated(String name, int count) {
    return 'Lijst \"$name\" gemaakt met $count items';
  }

  @override
  String get noTracking => 'Geen tracking';

  @override
  String get markAsPurchased => 'Markeren als gekocht';

  @override
  String editPantryItem(String name) {
    return '$name bewerken';
  }

  @override
  String get idealQuantity => 'Ideale hoeveelheid';

  @override
  String get currentQuantity => 'Huidige hoeveelheid';

  @override
  String get consumed => 'Verbruikt';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name aangevuld naar $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" verwijderen uit voorraadkast?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name bewerken';
  }

  @override
  String get settingsAppBar => 'Instellingen';

  @override
  String get language => 'Taal';

  @override
  String get languagePortuguese => 'Portugees (Brazilië)';

  @override
  String get languageEnglish => 'Engels';

  @override
  String get languageSystem => 'Systeemstandaard';

  @override
  String get chooseLanguage => 'Selecteer taal';

  @override
  String get searchLanguage => 'Taal zoeken...';

  @override
  String get currency => 'Munteenheid';

  @override
  String get chooseCurrency => 'Selecteer Valuta';

  @override
  String get searchCurrency => 'Valuta zoeken...';

  @override
  String get appearance => 'Weergave';

  @override
  String get light => 'Licht';

  @override
  String get system => 'Systeem';

  @override
  String get dark => 'Donker';

  @override
  String get themeColor => 'Themakleur';

  @override
  String get dynamicColors => 'Dynamische kleuren';

  @override
  String get dynamicColorsSubtitle =>
      'Gebruik kleuren op basis van je achtergrond';

  @override
  String get dynamicColorsEnabledWarning =>
      'Schakel dynamische kleuren uit zodat de themakleur van kracht wordt';

  @override
  String get finance => 'Financiën';

  @override
  String get monthlyBudgetNav => 'Maandelijks budget';

  @override
  String get budgetSubtitle => 'Volg je maandelijkse uitgaven';

  @override
  String get data => 'Gegevens';

  @override
  String get backupNav => 'Back-up';

  @override
  String get backupSubtitle => 'Exporteer of importeer je gegevens';

  @override
  String get about => 'Over';

  @override
  String get version => 'Versie';

  @override
  String get privacy => 'Privacy';

  @override
  String get termsOfUse => 'Gebruiksvoorwaarden';

  @override
  String get backupTitle => 'Back-up';

  @override
  String get backupPremiumDescription =>
      'Back-up en export is een Premium-functie';

  @override
  String get exportData => 'Gegevens exporteren';

  @override
  String get exportDataSubtitle => 'Alle lijsten opslaan als JSON';

  @override
  String get importData => 'Gegevens importeren';

  @override
  String get importDataSubtitle => 'Lijsten herstellen vanuit JSON';

  @override
  String get importJsonTitle => 'JSON importeren';

  @override
  String get importJsonHint => 'Plak hier de back-up JSON...';

  @override
  String get backupExported => 'Back-up geëxporteerd!';

  @override
  String get budgetAppBar => 'Maandelijks budget';

  @override
  String get budgetPremiumLocked => 'Globaal maandelijks budget is Premium';

  @override
  String get budgetUpgradePrompt => 'Upgrade om te ontgrendelen';

  @override
  String get noBudgetDefined => 'Geen budget ingesteld';

  @override
  String totalEstimated(String amount) {
    return 'Totaal geschat: $amount';
  }

  @override
  String get setBudgetButton => 'Budget instellen';

  @override
  String get budgetLists => 'Lijsten';

  @override
  String get budgetValueLabel => 'Bedrag';

  @override
  String get setBudgetTitle => 'Maandelijks budget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterPending => 'Openstaand';

  @override
  String get filterPurchased => 'Gekocht';

  @override
  String get sortName => 'Naam';

  @override
  String get sortCategory => 'Categorie';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Handmatig';

  @override
  String get addItem => 'Item toevoegen';

  @override
  String get itemName => 'Itemnaam';

  @override
  String get quantityShort => 'Aant';

  @override
  String get unit => 'Eenheid';

  @override
  String get category => 'Categorie';

  @override
  String get estimatedPrice => 'Geschatte prijs';

  @override
  String get addItemPrice => 'Geschatte prijs';

  @override
  String get editItem => 'Item bewerken';

  @override
  String get quantityFull => 'Hoeveelheid';

  @override
  String get editItemPrice => 'Geschatte prijs';

  @override
  String get addToPantry => 'Toevoegen aan voorraadkast';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" toevoegen aan je voorraadkast?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Productnaam';

  @override
  String get idealQty => 'Ideale aant';

  @override
  String get currentQty => 'Huidige aant';

  @override
  String get trackStock => 'Voorraad bijhouden';

  @override
  String get trackStockActive => 'Verschijnt in winkel suggesties';

  @override
  String get trackStockInactive => 'Genereert geen winkel suggestie';

  @override
  String get createListDialog => 'Lijst maken';

  @override
  String get renameListDialog => 'Lijst hernoemen';

  @override
  String get listHistory => 'Lijstgeschiedenis';

  @override
  String get myLists => 'Mijn lijsten';

  @override
  String get viewActive => 'Actieve bekijken';

  @override
  String get viewHistory => 'Geschiedenis bekijken';

  @override
  String get noArchivedLists => 'Geen gearchiveerde lijsten';

  @override
  String get noActiveLists => 'Geen actieve lijsten';

  @override
  String completedOn(String date) {
    return 'Voltooid op $date';
  }

  @override
  String get sharedLabel => 'Gedeeld';

  @override
  String get restore => 'Herstellen';

  @override
  String get removeSharedTooltip => 'Verwijderen';

  @override
  String get deleteListTitle => 'Lijst verwijderen';

  @override
  String deleteListContent(String name) {
    return 'Weet je zeker dat je \"$name\" wilt verwijderen? Alle items worden verwijderd.';
  }

  @override
  String get removeSharedListTitle => 'Gedeelde lijst verwijderen';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" verwijderen uit je lijsten? De originele lijst blijft behouden.';
  }

  @override
  String get createNewList => 'Nieuwe lijst maken';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Krijg slimme suggesties, recepten en persoonlijke tips met onze AI-assistent.';

  @override
  String get generalAssistant => 'Algemene assistent';

  @override
  String get newChat => 'Nieuwe chat';

  @override
  String get noHistory => 'Geen chatgeschiedenis';

  @override
  String get deleteSession => 'Chat verwijderen';

  @override
  String get deleteSessionConfirm =>
      'Weet je zeker dat je deze chat wilt verwijderen? De berichten gaan definitief verloren.';

  @override
  String get clearHistory => 'Geschiedenis wissen';

  @override
  String get clearHistoryConfirm => 'Alle berichten in deze sessie wissen?';

  @override
  String get chatHint => 'Typ je bericht...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Fout bij laden chat: $error';
  }

  @override
  String get listHelp => 'Hoe kan ik helpen met je lijst?';

  @override
  String get generalHelp => 'Hoe kan ik vandaag helpen met je boodschappen?';

  @override
  String get chatSubtitle =>
      'Vraag om productsuggesties, recepten of bespaartips.';

  @override
  String get aiError =>
      'Sorry, er is een fout opgetreden bij het verwerken van je verzoek. Controleer je verbinding of probeer het later opnieuw.';

  @override
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Log in om Premium-functies\nte ontgrendelen';

  @override
  String get signInGoogle => 'Inloggen met Google';

  @override
  String get signInApple => 'Inloggen met Apple';

  @override
  String get continueAsGuest => 'Doorgaan als gast';

  @override
  String get onboardingWelcomeTitle => 'Welkom bij KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'De slimste manier om uw boodschappen te organiseren en geld te besparen.';

  @override
  String get onboardingSetupTitle => 'Personaliseer uw ervaring';

  @override
  String get onboardingSetupDesc =>
      'Kies hoe u wilt dat KipiList er voor u uitziet en voor u werkt.';

  @override
  String get onboardingLoginTitle => 'Bewaar alles in de cloud';

  @override
  String get onboardingLoginDesc =>
      'Uw gegevens worden op al uw apparaten gesynchroniseerd';

  @override
  String get onboardingShareTitle => 'Deel met degenen van wie je houdt';

  @override
  String get onboardingShareDesc =>
      'Synchroniseer lijsten met familie en vrienden in realtime';

  @override
  String get onboardingPremiumTitle => 'Ontgrendel alle functies';

  @override
  String get onboardingPremiumSubtitle =>
      'Haal het meeste uit uw boodschappenlijstjes';

  @override
  String get onboardingAnnualBadge => 'Beste waarde';

  @override
  String get onboardingMonthlyLabel => 'Maandelijks';

  @override
  String get onboardingAnnualLabel => 'Jaarlijks';

  @override
  String get onboardingViewAllPlans => 'Bekijk alle abonnementen';

  @override
  String get onboardingSubscribeCta => 'Abonneren';

  @override
  String get onboardingCancelAnytime =>
      'Annuleer op elk gewenst moment. Geen verplichting.';

  @override
  String get onboardingContinueAsGuest => 'Ga verder als gast';

  @override
  String get onboardingRestore => 'Herstellen';

  @override
  String get onboardingRestoreDesc =>
      'Heeft u al een abonnement? Tik hier om het te herstellen.';

  @override
  String get onboardingExit => 'Uitgang';

  @override
  String get onboardingPersonalizationTitle => 'Laten we je leren kennen';

  @override
  String get onboardingPersonalizationDesc =>
      'We gebruiken dit om uw suggesties te personaliseren en winkelen slimmer te maken.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Wat is je favoriete eten?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'bijv. Pizza, Sushi, Lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Doorgaan';

  @override
  String get onboardingPersonalizationSkip => 'Overslaan voor nu';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Vertel ons uw favoriete eten om door te gaan';

  @override
  String get settingsDefaultScreen => 'Standaard startscherm';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Kies tussen boodschappenlijstje of AI-chat';

  @override
  String get settingsScreenList => 'Boodschappenlijstje';

  @override
  String get settingsScreenChat => 'AI-chat';

  @override
  String loginError(String error) {
    return 'Inlogfout: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError => 'Error loading offers. Try again.';

  @override
  String get paywallPurchaseError => 'Could not complete purchase. Try again.';

  @override
  String get paywallRestoreError => 'No active subscription found to restore.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAYS FREE';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count WEEKS FREE',
      one: '$count WEEK FREE',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MONTHS FREE',
      one: '$count MONTH FREE',
    );
    return '$_temp0';
  }

  @override
  String get paywallFeaturesTitle => 'Everything you need:';

  @override
  String get paywallFeatureUnlimitedLists => 'Unlimited Lists';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Expense Control';

  @override
  String get paywallFeatureSharing => 'Sharing';

  @override
  String get paywallBeforeAfterTitle => 'AI Before and After:';

  @override
  String get paywallLabelCommon => 'Common';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'rice';

  @override
  String get paywallBeforeItem2 => 'soap';

  @override
  String get paywallBeforeItem3 => 'meat';

  @override
  String get paywallBeforeItem4 => 'bread';

  @override
  String get paywallAfterItem1 => 'Grains';

  @override
  String get paywallAfterItem2 => 'Cleaning';

  @override
  String get paywallAfterItem3 => 'Meats';

  @override
  String get paywallAfterItem4 => 'Bakery';

  @override
  String get paywallTestimonialsTitle => 'What our users say:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organizes my shopping in seconds. I save 20 min per market trip.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'I never forgot a list item again. The AI chat is sensational!';

  @override
  String get paywallSocialProof =>
      'Join thousands of smart shoppers saving time and money';

  @override
  String get paywallCtaUnlock => 'Unlock KipiList PRO';

  @override
  String get paywallCtaTrial => 'Start My Free Trial';

  @override
  String get paywallBestValue => 'BEST VALUE';

  @override
  String get paywallMostPopular => 'MOST POPULAR';

  @override
  String get paywallSafeCheckout => 'Secure payment via App Store/Play Store';

  @override
  String get paywallSelectPlan => 'Choose your plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SAVE $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Only $price/month';
  }

  @override
  String get paywallPackageAnnual => 'Annual Plan';

  @override
  String get paywallPackageMonthly => 'Monthly Plan';

  @override
  String get paywallPackageLifetime => 'Lifetime Access';

  @override
  String get paywallCancelAnytime => 'Cancel anytime. No commitment.';

  @override
  String get paywallPolicy => 'Privacy Policy';

  @override
  String get paywallTerms => 'Terms of Use';

  @override
  String get paywallRestore => 'Restore';

  @override
  String get premiumUpgrade => 'Upgrade om te ontgrendelen';

  @override
  String get itemRemoved => 'Item verwijderd';

  @override
  String get undo => 'Ongedaan maken';

  @override
  String get emptyListTitle => 'Je lijst is leeg';

  @override
  String get emptyListSubtitle => 'Voeg items toe om te beginnen';

  @override
  String get noListFoundTitle => 'Geen lijsten gevonden';

  @override
  String get noListFoundSubtitle => 'Maak je eerste lijst om te beginnen';

  @override
  String get createFirstList => 'Eerste lijst maken';

  @override
  String get listBudgetTitle => 'Lijstbudget';

  @override
  String get budgetAmountLabel => 'Budgetbedrag';

  @override
  String get removeBudget => 'Verwijderen';

  @override
  String get prefUnlimitedLists => 'Ongelimiteerde lijsten';

  @override
  String get prefSharing => 'Lijsten delen';

  @override
  String get prefFullHistory => 'Volledige geschiedenis';

  @override
  String get prefExportData => 'Gegevens exporteren';

  @override
  String get prefCustomThemes => 'Aangepaste thema\'s';

  @override
  String get prefMonthlyBudget => 'Globaal maandelijks budget';

  @override
  String get prefAIAssistant => 'Persoonlijke AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Ongelimiteerde voorraadkast';

  @override
  String get prefInteractiveArtifacts => 'Interactieve AI-artefacten';

  @override
  String get themeGreen => 'Groen';

  @override
  String get themeBlue => 'Blauw';

  @override
  String get themePurple => 'Paars';

  @override
  String get themeRed => 'Rood';

  @override
  String get themeOrange => 'Oranje';

  @override
  String get themePink => 'Roze';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Groenblauw';

  @override
  String get themeBrown => 'Bruin';

  @override
  String get catFruits => 'Fruit';

  @override
  String get catCleaning => 'Schoonmaak';

  @override
  String get catBeverages => 'Dranken';

  @override
  String get catBakery => 'Bakkerij';

  @override
  String get catOthers => 'Overig';

  @override
  String get unitPack => 'pak';

  @override
  String get shareSubject => 'Boodschappenlijst';

  @override
  String get monthlyBudgetTitle => 'Maandelijks budget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Lijst verwijderen';

  @override
  String get pantryItemRemoved => 'Item verwijderd';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit items moeten worden gekocht',
      one: '$deficit item moet worden gekocht',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Winkelwagentotaal';

  @override
  String get restockLabel => 'Aanvullen';

  @override
  String get advancedFeatures => 'Geavanceerde functies';

  @override
  String get selectAll => 'Alles selecteren';

  @override
  String get deselectAll => 'Alles deselecteren';

  @override
  String get monthlyBudgetAppBar => 'Maandelijks budget';

  @override
  String get budgetEditTitle => 'Maandelijks budget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard =>
      'Selecteer een lijst om het dashboard te bekijken.';

  @override
  String get spendingAnalysis => 'Uitgavenanalyse';

  @override
  String get noItemsToAnalyze => 'Geen items in de lijst om te analyseren.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markeer items als gekocht om de analyse te zien.';

  @override
  String get totalSpending => 'Totaal uitgegeven';

  @override
  String get spendingByCategory => 'Uitgaven per categorie';

  @override
  String get achievements => 'Prestaties';

  @override
  String get exportPdfExcel => 'Exporteer PDF/Excel';

  @override
  String get exportPdf => 'Exporteren als PDF';

  @override
  String get exportExcel => 'Exporteren als Excel';

  @override
  String get organizingAi => 'ORGANISEREN MET AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nee';

  @override
  String get shareListText => 'Mijn boodschappenlijst';

  @override
  String get emptyListAddItems => 'Je lijst is leeg! Voeg eerst items toe. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lijst als bij toverslag georganiseerd op categorie! ✨';

  @override
  String get shoppingMode => 'Winkelmodus';

  @override
  String get smartOrganization => 'Slimme organisatie';

  @override
  String get savings => 'Besparingen';

  @override
  String get shoppingModeHeader => 'WINKELMODUS';

  @override
  String get shareAsText => 'Items verzenden als opgemaakte tekst';

  @override
  String get shareRealtime => 'Real-time synchronisatie met anderen';

  @override
  String get quickRecipe => 'Snel recept';

  @override
  String get quickRecipePrompt =>
      'Stel recepten voor met items uit mijn lijst.';

  @override
  String get economyTips => 'Bespaartips';

  @override
  String get economyTipsPrompt => 'Hoe kan ik geld besparen op deze aankoop?';

  @override
  String get organizeAisles => 'Ordenen op gang';

  @override
  String get organizeAislesPrompt => 'Ordenen op supermarktgang.';

  @override
  String get recipeSuggestion => 'Receptsuggestie';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits over';
  }

  @override
  String get addAllToList => 'Alles aan lijst toevoegen';

  @override
  String get organizeByAisles => 'Ordenen op gang';

  @override
  String get voiceTranscriptionTooltip => 'Spraaktypen (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-stemcommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-stemcommando';

  @override
  String get voiceCommandContent =>
      'Spreek natuurlijk om je lijst te beheren!\n\nVoorbeelden:\n• \'Voeg brood, kaas en ham toe\'\n• \'Verwijder wasmiddel\'\n• \'Verander thema naar blauw\'\n\nDit is een exclusieve functie van KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Bekijk abonnementen';

  @override
  String get itemsAddedSuccess => 'Items succesvol toegevoegd aan lijst!';

  @override
  String get viewList => 'Lijst bekijken';

  @override
  String get feedbackTitle => 'Feedback verzenden';

  @override
  String get feedbackPrompt => 'Wat wil je delen?';

  @override
  String get feedbackTypeBug => 'Bug melden';

  @override
  String get feedbackTypeBugHint => 'Er werkt iets niet';

  @override
  String get feedbackTypeSuggestion => 'Suggestie';

  @override
  String get feedbackTypeSuggestionHint => 'Idee om de app te verbeteren';

  @override
  String get feedbackTypeTranslation => 'Vertalingsprobleem';

  @override
  String get feedbackTypeTranslationHint =>
      'Onjuiste of onnatuurlijke vertaling';

  @override
  String get feedbackTypeFeature => 'Functieverzoek';

  @override
  String get feedbackTypeFeatureHint => 'Functie die je graag zou zien';

  @override
  String get feedbackTypeOther => 'Overig';

  @override
  String get feedbackTypeOtherHint => 'Ander type feedback';

  @override
  String get feedbackHint => 'Beschrijf je feedback in detail...';

  @override
  String get feedbackSend => 'Feedback verzenden';

  @override
  String get feedbackSending => 'Bezig met verzenden...';

  @override
  String get feedbackThankYou => 'Bedankt!';

  @override
  String get feedbackThankYouMessage =>
      'Je feedback is ontvangen en helpt ons KipiList voor iedereen te verbeteren.';

  @override
  String get feedbackBack => 'Terug';

  @override
  String feedbackError(String error) {
    return 'Fout bij verzenden: $error';
  }

  @override
  String get feedbackRetry => 'Opnieuw proberen';

  @override
  String get feedbackSettingsTitle => 'Feedback verzenden';

  @override
  String get feedbackSettingsSubtitle =>
      'Meld bugs, stel verbeteringen voor of corrigeer vertalingen';

  @override
  String get aiEnergy => 'AI-energie';

  @override
  String get searchInConversation => 'Zoeken in gesprek...';

  @override
  String get noMessagesFound => 'Geen berichten gevonden';

  @override
  String get suggestedQuestions => 'Voorgestelde vragen:';

  @override
  String get shoppingAssistant => 'Winkelassistent';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased van $total gekocht';
  }

  @override
  String get estimatedCost => 'Geschat';

  @override
  String get viewItems => 'Bekijk artikelen';

  @override
  String get noItemsInList => 'Geen items in de lijst';

  @override
  String get longHistoryWarning =>
      'Lange geschiedenis: de assistent concentreert zich op de nieuwste berichten voor betere prestaties.';

  @override
  String get listening => 'Luisteren...';

  @override
  String get addDirectToList => 'Voeg direct toe aan de lijst';

  @override
  String get unlockFullResponse => 'Ontgrendel volledige respons';

  @override
  String get switchList => 'Lijst wisselen';

  @override
  String get marketMode => 'Marktmodus';

  @override
  String get backToChat => 'Terug naar Chatten';

  @override
  String get finishShopping => 'Voltooi het winkelen';

  @override
  String get welcomeAiAssistant => 'Welkom bij AI-assistent';

  @override
  String get createListToStartAi =>
      'Maak een boodschappenlijstje om de slimme chat te gaan gebruiken.';

  @override
  String get howCanIHelp => 'Hoe kan ik helpen?';

  @override
  String get chatSubtitleShort =>
      'Vraag naar prijzen, recepten, organisatie...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total gekocht';
  }

  @override
  String get quickReplies => 'Snelle antwoorden:';

  @override
  String get voiceProFeature =>
      'Geavanceerde spraakopdrachten zijn Pro. Basisdicteren inschakelen...';

  @override
  String get viewPro => 'Bekijk Pro';

  @override
  String get errorLoadingChat =>
      'Oeps! Er is iets misgegaan bij het laden van de chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Controleer uw verbinding of probeer het later opnieuw.';

  @override
  String get errorOscillation =>
      'Dit kan gebeuren als gevolg van netwerkoscillaties of tijdelijke onbeschikbaarheid. Probeer het opnieuw.';

  @override
  String get activeListening => 'Actief luisteren';

  @override
  String get whatToDoWithItem => 'Wat zou je met dit artikel willen doen?';

  @override
  String get viewDetails => 'Details bekijken';

  @override
  String get openMenu => 'Menu openen';

  @override
  String get viewRecipe => 'Recept bekijken';

  @override
  String get recipeCreated => 'Recept aangemaakt!';

  @override
  String get editRecipe => 'Bewerken';

  @override
  String get deleteRecipe => 'Verwijderen';

  @override
  String get deleteRecipeConfirm => 'Dit recept verwijderen?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Weet je zeker dat je \"$recipeName\" wilt verwijderen? Deze actie kan niet ongedaan worden gemaakt.';
  }

  @override
  String get ingredients => 'Ingrediënten';

  @override
  String get instructions => 'Instructies';

  @override
  String get prepTime => 'Bereidingstijd';

  @override
  String get recipeSaved => 'Recept opgeslagen!';

  @override
  String get noRecipesSaved => 'Geen recepten opgeslagen';

  @override
  String get noRecipesSavedHint =>
      'Maak je eerste aangepaste recept door op de onderstaande knop te tikken.';

  @override
  String get myRecipes => 'Mijn recepten';

  @override
  String get newRecipe => 'Nieuw recept';

  @override
  String get loadingRecipes => 'Je recepten worden geladen...';

  @override
  String get errorLoadingRecipes => 'Fout bij laden van recepten';

  @override
  String get addIngredient => 'Ingrediënt toevoegen';

  @override
  String get saveRecipe => 'Opslaan';

  @override
  String get recipeName => 'Naam van recept';

  @override
  String get shortDescription => 'Korte beschrijving';

  @override
  String get prepTimeMinutes => 'Bereidingstijd (minuten)';

  @override
  String get instructionsHint => 'Typ één stap per regel...';

  @override
  String get addPhoto => 'Foto toevoegen';

  @override
  String get imageUrlPlaceholder => 'Of plak een URL van een afbeelding';

  @override
  String get tags => 'Labels';

  @override
  String get recipeTags => 'Recepttags';

  @override
  String get suggestedTags => 'Gesuggereerd';

  @override
  String get searchRecipes => 'Recepten zoeken...';

  @override
  String get filterByTag => 'Filter op tag';

  @override
  String get allTags => 'Alle';

  @override
  String get recipeDeleted => 'Recept verwijderd';

  @override
  String get saveChanges => 'Wijzigingen opslaan';

  @override
  String get editRecipeTitle => 'Recept bewerken';

  @override
  String get newRecipeTitle => 'Nieuw recept';

  @override
  String get requiredField => 'Verplicht';

  @override
  String get chooseImageSource => 'Kies bron van afbeelding';

  @override
  String get gallery => 'Galerij';

  @override
  String get enterUrl => 'Voer URL in';

  @override
  String get recipeImage => 'Afbeelding van recept';

  @override
  String get removeImage => 'Afbeelding verwijderen';

  @override
  String get mealPlannerTitle => 'Maaltijdplanner';

  @override
  String get mealPlannerViewMonthly => 'Maandweergave';

  @override
  String get mealPlannerViewWeekly => 'Weekweergave';

  @override
  String get mealPlannerNoMeals => 'Geen maaltijden gepland';

  @override
  String get mealPlannerNoMealsHint =>
      'Tik op een dag om een maaltijd toe te voegen';

  @override
  String get mealPlannerLoading => 'Maaltijdplanning laden...';

  @override
  String get mealPlannerError => 'Fout bij laden van maaltijdplanning';

  @override
  String get mealPlannerAddMeal => 'Maaltijd toevoegen';

  @override
  String get mealPlannerEditMeal => 'Maaltijd bewerken';

  @override
  String get mealPlannerDeleteMeal => 'Maaltijd verwijderen';

  @override
  String get mealPlannerMealDeleted => 'Maaltijd verwijderd';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porties',
      one: '$count portie',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porties';

  @override
  String get mealPlannerNoteLabel => 'Opmerking (optioneel)';

  @override
  String get mealPlannerSelectRecipe => 'Selecteer een recept';

  @override
  String get mealPlannerSearchRecipes => 'Recepten zoeken...';

  @override
  String get mealPlannerNoRecipesFound => 'Geen recepten gevonden';

  @override
  String get mealPlannerNoRecipesHint =>
      'Maak eerst recepten aan in het tabblad Recepten';

  @override
  String get mealPlannerSave => 'Toevoegen aan planning';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count van $total maaltijden gepland';
  }

  @override
  String get mealPlannerGenerateList => 'Boodschappenlijst genereren';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Alle ingrediënten van geplande maaltijden voor deze week toevoegen aan je boodschappenlijst?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediënt(en) toegevoegd aan je lijst!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Geen ingrediënten om toe te voegen. Plan eerst maaltijden met recepten.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Maak eerst een boodschappenlijst aan.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Ontbijt';

  @override
  String get mealPlannerMealTypeLunch => 'Lunch';

  @override
  String get mealPlannerMealTypeDinner => 'Diner';

  @override
  String get mealPlannerMealTypeSnack => 'Tussendoortje';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Niets gepland voor deze week';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tik op een willekeurige dag om je maaltijden te plannen!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Uitnodigen voor lijst';

  @override
  String get shareApp => 'Deel app';

  @override
  String get shareAppDescription =>
      'Nodig vrienden uit om KipiList te gebruiken';

  @override
  String shareReferralText(Object url) {
    return 'Ik gebruik KipiList om mijn boodschappen te organiseren! Download via mijn link en we krijgen allebei 7 dagen Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Ontvang 7 dagen KipiList Premium!';
}

/// The translations for Dutch Flemish, as used in Netherlands (`nl_NL`).
class AppLocalizationsNlNl extends AppLocalizationsNl {
  AppLocalizationsNlNl() : super('nl_NL');

  @override
  String get appTitle => 'Boodschappenlijst';

  @override
  String get lists => 'Lijsten';

  @override
  String get pantry => 'Voorraadkast';

  @override
  String get cancel => 'Annuleren';

  @override
  String get save => 'Opslaan';

  @override
  String get create => 'Maken';

  @override
  String get add => 'Toevoegen';

  @override
  String get remove => 'Verwijderen';

  @override
  String get delete => 'Wissen';

  @override
  String get edit => 'Bewerken';

  @override
  String get copy => 'Kopiëren';

  @override
  String get next => 'Volgende';

  @override
  String get retry => 'Opnieuw';

  @override
  String get regenerate => 'Opnieuw genereren';

  @override
  String get copiedToClipboard => 'Gekopieerd naar klembord';

  @override
  String get confirm => 'Bevestigen';

  @override
  String get close => 'Sluiten';

  @override
  String get import => 'Importeren';

  @override
  String get rename => 'Hernoemen';

  @override
  String get upgrade => 'Upgraden';

  @override
  String get clear => 'Leegmaken';

  @override
  String error(String message) {
    return 'Fout: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fout: $message';
  }

  @override
  String get purchaseError => 'Fout bij verwerken aankoop. Probeer opnieuw.';

  @override
  String get restoreError => 'Fout bij herstellen aankopen. Probeer opnieuw.';

  @override
  String get loading => 'Laden...';

  @override
  String get fieldRequired => 'Vereist veld';

  @override
  String get addedFeedback => 'Toegevoegd!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count geselecteerd',
      one: '$count geselecteerd',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Geschat';

  @override
  String get alreadyPurchased => 'Al gekocht';

  @override
  String get clearList => 'Lijst leegmaken';

  @override
  String get clearPurchased => 'Gekochte verwijderen';

  @override
  String get share => 'Delen';

  @override
  String get shareViaCode => 'Delen via code';

  @override
  String get importViaCode => 'Importeren via code';

  @override
  String get listAssistant => 'Lijstassistent';

  @override
  String get globalAssistant => 'Globale assistent';

  @override
  String get becomePremium => 'Word Premium';

  @override
  String get manageSubscription => 'Abonnement beheren';

  @override
  String get completePurchase => 'Aankoop voltooien';

  @override
  String get confirmClearList => 'Alle items verwijderen?';

  @override
  String get shareListTitle => 'Lijst delen';

  @override
  String get shareThisCode => 'Deel deze code:';

  @override
  String get validForLimitedTime => 'Beperkt geldig';

  @override
  String get importListTitle => 'Lijst importeren';

  @override
  String get enterCodeHint => 'Voer de code in';

  @override
  String get confirmArchiveTitle => 'Aankoop voltooien';

  @override
  String get confirmArchiveContent =>
      'Deze aankoop voltooien en de lijst archiveren?';

  @override
  String get complete => 'Voltooien';

  @override
  String get listArchived => 'Lijst succesvol gearchiveerd!';

  @override
  String listAdded(String listName) {
    return '$listName toegevoegd!';
  }

  @override
  String get buy => 'Kopen';

  @override
  String get unmark => 'Markering verwijderen';

  @override
  String confirmDeleteItems(int count) {
    return '$count item(s) verwijderen?';
  }

  @override
  String get confirmDeleteTitle => 'Bevestigen';

  @override
  String confirmContent(int count) {
    return '$count item(s) verwijderen?';
  }

  @override
  String get archiveList => 'Lijst archiveren';

  @override
  String get pantryAppBar => 'Voorraadkast';

  @override
  String get generateShoppingList => 'Boodschappenlijst genereren';

  @override
  String get pantryEmpty => 'Lege voorraadkast';

  @override
  String get pantryEmptySubtitle =>
      'Voeg producten toe die je thuis wilt houden';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(s) moeten gekocht worden';
  }

  @override
  String get noItemsToBuy => 'Geen items om te kopen';

  @override
  String get newPantryList => 'Voorraad boodschappen';

  @override
  String get newListTitle => 'Nieuwe boodschappenlijst';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(s) worden toegevoegd';
  }

  @override
  String get listNameLabel => 'Lijstnaam';

  @override
  String listCreated(String name, int count) {
    return 'Lijst \"$name\" gemaakt met $count items';
  }

  @override
  String get noTracking => 'Geen tracking';

  @override
  String get markAsPurchased => 'Markeren als gekocht';

  @override
  String editPantryItem(String name) {
    return '$name bewerken';
  }

  @override
  String get idealQuantity => 'Ideale hoeveelheid';

  @override
  String get currentQuantity => 'Huidige hoeveelheid';

  @override
  String get consumed => 'Verbruikt';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name aangevuld naar $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return '\"$name\" verwijderen uit voorraadkast?';
  }

  @override
  String pantryEditTitle(String name) {
    return '$name bewerken';
  }

  @override
  String get settingsAppBar => 'Instellingen';

  @override
  String get language => 'Taal';

  @override
  String get languagePortuguese => 'Portugees (Brazilië)';

  @override
  String get languageEnglish => 'Engels';

  @override
  String get languageSystem => 'Systeemstandaard';

  @override
  String get chooseLanguage => 'Selecteer taal';

  @override
  String get searchLanguage => 'Taal zoeken...';

  @override
  String get currency => 'Munteenheid';

  @override
  String get chooseCurrency => 'Selecteer Valuta';

  @override
  String get searchCurrency => 'Valuta zoeken...';

  @override
  String get appearance => 'Weergave';

  @override
  String get light => 'Licht';

  @override
  String get system => 'Systeem';

  @override
  String get dark => 'Donker';

  @override
  String get themeColor => 'Themakleur';

  @override
  String get dynamicColors => 'Dynamische kleuren';

  @override
  String get dynamicColorsSubtitle =>
      'Gebruik kleuren op basis van je achtergrond';

  @override
  String get dynamicColorsEnabledWarning =>
      'Schakel dynamische kleuren uit zodat de themakleur van kracht wordt';

  @override
  String get finance => 'Financiën';

  @override
  String get monthlyBudgetNav => 'Maandelijks budget';

  @override
  String get budgetSubtitle => 'Volg je maandelijkse uitgaven';

  @override
  String get data => 'Gegevens';

  @override
  String get backupNav => 'Back-up';

  @override
  String get backupSubtitle => 'Exporteer of importeer je gegevens';

  @override
  String get about => 'Over';

  @override
  String get version => 'Versie';

  @override
  String get privacy => 'Privacy';

  @override
  String get termsOfUse => 'Gebruiksvoorwaarden';

  @override
  String get backupTitle => 'Back-up';

  @override
  String get backupPremiumDescription =>
      'Back-up en export is een Premium-functie';

  @override
  String get exportData => 'Gegevens exporteren';

  @override
  String get exportDataSubtitle => 'Alle lijsten opslaan als JSON';

  @override
  String get importData => 'Gegevens importeren';

  @override
  String get importDataSubtitle => 'Lijsten herstellen vanuit JSON';

  @override
  String get importJsonTitle => 'JSON importeren';

  @override
  String get importJsonHint => 'Plak hier de back-up JSON...';

  @override
  String get backupExported => 'Back-up geëxporteerd!';

  @override
  String get budgetAppBar => 'Maandelijks budget';

  @override
  String get budgetPremiumLocked => 'Globaal maandelijks budget is Premium';

  @override
  String get budgetUpgradePrompt => 'Upgrade om te ontgrendelen';

  @override
  String get noBudgetDefined => 'Geen budget ingesteld';

  @override
  String totalEstimated(String amount) {
    return 'Totaal geschat: $amount';
  }

  @override
  String get setBudgetButton => 'Budget instellen';

  @override
  String get budgetLists => 'Lijsten';

  @override
  String get budgetValueLabel => 'Bedrag';

  @override
  String get setBudgetTitle => 'Maandelijks budget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterPending => 'Openstaand';

  @override
  String get filterPurchased => 'Gekocht';

  @override
  String get sortName => 'Naam';

  @override
  String get sortCategory => 'Categorie';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Handmatig';

  @override
  String get addItem => 'Item toevoegen';

  @override
  String get itemName => 'Itemnaam';

  @override
  String get quantityShort => 'Aant';

  @override
  String get unit => 'Eenheid';

  @override
  String get category => 'Categorie';

  @override
  String get estimatedPrice => 'Geschatte prijs';

  @override
  String get addItemPrice => 'Geschatte prijs';

  @override
  String get editItem => 'Item bewerken';

  @override
  String get quantityFull => 'Hoeveelheid';

  @override
  String get editItemPrice => 'Geschatte prijs';

  @override
  String get addToPantry => 'Toevoegen aan voorraadkast';

  @override
  String addToPantryPrompt(String name) {
    return '\"$name\" toevoegen aan je voorraadkast?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Productnaam';

  @override
  String get idealQty => 'Ideale aant';

  @override
  String get currentQty => 'Huidige aant';

  @override
  String get trackStock => 'Voorraad bijhouden';

  @override
  String get trackStockActive => 'Verschijnt in winkel suggesties';

  @override
  String get trackStockInactive => 'Genereert geen winkel suggestie';

  @override
  String get createListDialog => 'Lijst maken';

  @override
  String get renameListDialog => 'Lijst hernoemen';

  @override
  String get listHistory => 'Lijstgeschiedenis';

  @override
  String get myLists => 'Mijn lijsten';

  @override
  String get viewActive => 'Actieve bekijken';

  @override
  String get viewHistory => 'Geschiedenis bekijken';

  @override
  String get noArchivedLists => 'Geen gearchiveerde lijsten';

  @override
  String get noActiveLists => 'Geen actieve lijsten';

  @override
  String completedOn(String date) {
    return 'Voltooid op $date';
  }

  @override
  String get sharedLabel => 'Gedeeld';

  @override
  String get restore => 'Herstellen';

  @override
  String get removeSharedTooltip => 'Verwijderen';

  @override
  String get deleteListTitle => 'Lijst verwijderen';

  @override
  String deleteListContent(String name) {
    return 'Weet je zeker dat je \"$name\" wilt verwijderen? Alle items worden verwijderd.';
  }

  @override
  String get removeSharedListTitle => 'Gedeelde lijst verwijderen';

  @override
  String removeSharedListContent(String name) {
    return '\"$name\" verwijderen uit je lijsten? De originele lijst blijft behouden.';
  }

  @override
  String get createNewList => 'Nieuwe lijst maken';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Krijg slimme suggesties, recepten en persoonlijke tips met onze AI-assistent.';

  @override
  String get generalAssistant => 'Algemene assistent';

  @override
  String get newChat => 'Nieuwe chat';

  @override
  String get noHistory => 'Geen chatgeschiedenis';

  @override
  String get deleteSession => 'Chat verwijderen';

  @override
  String get deleteSessionConfirm =>
      'Weet je zeker dat je deze chat wilt verwijderen? De berichten gaan definitief verloren.';

  @override
  String get clearHistory => 'Geschiedenis wissen';

  @override
  String get clearHistoryConfirm => 'Alle berichten in deze sessie wissen?';

  @override
  String get chatHint => 'Typ je bericht...';

  @override
  String chatError(String error) {
    return 'Fout bij laden chat: $error';
  }

  @override
  String get listHelp => 'Hoe kan ik helpen met je lijst?';

  @override
  String get generalHelp => 'Hoe kan ik vandaag helpen met je boodschappen?';

  @override
  String get chatSubtitle =>
      'Vraag om productsuggesties, recepten of bespaartips.';

  @override
  String get aiError =>
      'Sorry, er is een fout opgetreden bij het verwerken van je verzoek. Controleer je verbinding of probeer het later opnieuw.';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Log in om Premium-functies\nte ontgrendelen';

  @override
  String get signInGoogle => 'Inloggen met Google';

  @override
  String get signInApple => 'Inloggen met Apple';

  @override
  String get continueAsGuest => 'Doorgaan als gast';

  @override
  String get onboardingWelcomeTitle => 'Welkom bij KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'De slimste manier om uw boodschappen te organiseren en geld te besparen.';

  @override
  String get onboardingSetupTitle => 'Personaliseer uw ervaring';

  @override
  String get onboardingSetupDesc =>
      'Kies hoe u wilt dat KipiList er voor u uitziet en voor u werkt.';

  @override
  String get onboardingLoginTitle => 'Bewaar alles in de cloud';

  @override
  String get onboardingLoginDesc =>
      'Uw gegevens worden op al uw apparaten gesynchroniseerd';

  @override
  String get onboardingShareTitle => 'Deel met degenen van wie je houdt';

  @override
  String get onboardingShareDesc =>
      'Synchroniseer lijsten met familie en vrienden in realtime';

  @override
  String get onboardingPremiumTitle => 'Ontgrendel alle functies';

  @override
  String get onboardingPremiumSubtitle =>
      'Haal het meeste uit uw boodschappenlijstjes';

  @override
  String get onboardingAnnualBadge => 'Beste waarde';

  @override
  String get onboardingMonthlyLabel => 'Maandelijks';

  @override
  String get onboardingAnnualLabel => 'Jaarlijks';

  @override
  String get onboardingViewAllPlans => 'Bekijk alle abonnementen';

  @override
  String get onboardingSubscribeCta => 'Abonneren';

  @override
  String get onboardingCancelAnytime =>
      'Annuleer op elk gewenst moment. Geen verplichting.';

  @override
  String get onboardingContinueAsGuest => 'Ga verder als gast';

  @override
  String get onboardingRestore => 'Herstellen';

  @override
  String get onboardingRestoreDesc =>
      'Heeft u al een abonnement? Tik hier om het te herstellen.';

  @override
  String get onboardingExit => 'Uitgang';

  @override
  String get onboardingPersonalizationTitle => 'Laten we je leren kennen';

  @override
  String get onboardingPersonalizationDesc =>
      'We gebruiken dit om uw suggesties te personaliseren en winkelen slimmer te maken.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Wat is je favoriete eten?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'bijv. Pizza, Sushi, Lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Doorgaan';

  @override
  String get onboardingPersonalizationSkip => 'Overslaan voor nu';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Vertel ons uw favoriete eten om door te gaan';

  @override
  String get settingsDefaultScreen => 'Standaard startscherm';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Kies tussen boodschappenlijstje of AI-chat';

  @override
  String get settingsScreenList => 'Boodschappenlijstje';

  @override
  String get settingsScreenChat => 'AI-chat';

  @override
  String loginError(String error) {
    return 'Inlogfout: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get premiumUpgrade => 'Upgrade om te ontgrendelen';

  @override
  String get itemRemoved => 'Item verwijderd';

  @override
  String get undo => 'Ongedaan maken';

  @override
  String get emptyListTitle => 'Je lijst is leeg';

  @override
  String get emptyListSubtitle => 'Voeg items toe om te beginnen';

  @override
  String get noListFoundTitle => 'Geen lijsten gevonden';

  @override
  String get noListFoundSubtitle => 'Maak je eerste lijst om te beginnen';

  @override
  String get createFirstList => 'Eerste lijst maken';

  @override
  String get listBudgetTitle => 'Lijstbudget';

  @override
  String get budgetAmountLabel => 'Budgetbedrag';

  @override
  String get removeBudget => 'Verwijderen';

  @override
  String get prefUnlimitedLists => 'Ongelimiteerde lijsten';

  @override
  String get prefSharing => 'Lijsten delen';

  @override
  String get prefFullHistory => 'Volledige geschiedenis';

  @override
  String get prefExportData => 'Gegevens exporteren';

  @override
  String get prefCustomThemes => 'Aangepaste thema\'s';

  @override
  String get prefMonthlyBudget => 'Globaal maandelijks budget';

  @override
  String get prefAIAssistant => 'Persoonlijke AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Ongelimiteerde voorraadkast';

  @override
  String get prefInteractiveArtifacts => 'Interactieve AI-artefacten';

  @override
  String get themeGreen => 'Groen';

  @override
  String get themeBlue => 'Blauw';

  @override
  String get themePurple => 'Paars';

  @override
  String get themeRed => 'Rood';

  @override
  String get themeOrange => 'Oranje';

  @override
  String get themePink => 'Roze';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Groenblauw';

  @override
  String get themeBrown => 'Bruin';

  @override
  String get catFruits => 'Fruit';

  @override
  String get catCleaning => 'Schoonmaak';

  @override
  String get catBeverages => 'Dranken';

  @override
  String get catBakery => 'Bakkerij';

  @override
  String get catOthers => 'Overig';

  @override
  String get unitPack => 'pak';

  @override
  String get shareSubject => 'Boodschappenlijst';

  @override
  String get monthlyBudgetTitle => 'Maandelijks budget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Lijst verwijderen';

  @override
  String get pantryItemRemoved => 'Item verwijderd';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit items moeten worden gekocht',
      one: '$deficit item moet worden gekocht',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Winkelwagentotaal';

  @override
  String get restockLabel => 'Aanvullen';

  @override
  String get advancedFeatures => 'Geavanceerde functies';

  @override
  String get selectAll => 'Alles selecteren';

  @override
  String get deselectAll => 'Alles deselecteren';

  @override
  String get monthlyBudgetAppBar => 'Maandelijks budget';

  @override
  String get budgetEditTitle => 'Maandelijks budget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard =>
      'Selecteer een lijst om het dashboard te bekijken.';

  @override
  String get spendingAnalysis => 'Uitgavenanalyse';

  @override
  String get noItemsToAnalyze => 'Geen items in de lijst om te analyseren.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markeer items als gekocht om de analyse te zien.';

  @override
  String get totalSpending => 'Totaal uitgegeven';

  @override
  String get spendingByCategory => 'Uitgaven per categorie';

  @override
  String get achievements => 'Prestaties';

  @override
  String get exportPdfExcel => 'Exporteer PDF/Excel';

  @override
  String get exportPdf => 'Exporteren als PDF';

  @override
  String get exportExcel => 'Exporteren als Excel';

  @override
  String get organizingAi => 'ORGANISEREN MET AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nee';

  @override
  String get shareListText => 'Mijn boodschappenlijst';

  @override
  String get emptyListAddItems => 'Je lijst is leeg! Voeg eerst items toe. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lijst als bij toverslag georganiseerd op categorie! ✨';

  @override
  String get shoppingMode => 'Winkelmodus';

  @override
  String get smartOrganization => 'Slimme organisatie';

  @override
  String get savings => 'Besparingen';

  @override
  String get shoppingModeHeader => 'WINKELMODUS';

  @override
  String get shareAsText => 'Items verzenden als opgemaakte tekst';

  @override
  String get shareRealtime => 'Real-time synchronisatie met anderen';

  @override
  String get quickRecipe => 'Snel recept';

  @override
  String get quickRecipePrompt =>
      'Stel recepten voor met items uit mijn lijst.';

  @override
  String get economyTips => 'Bespaartips';

  @override
  String get economyTipsPrompt => 'Hoe kan ik geld besparen op deze aankoop?';

  @override
  String get organizeAisles => 'Ordenen op gang';

  @override
  String get organizeAislesPrompt => 'Ordenen op supermarktgang.';

  @override
  String get recipeSuggestion => 'Receptsuggestie';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits over';
  }

  @override
  String get addAllToList => 'Alles aan lijst toevoegen';

  @override
  String get organizeByAisles => 'Ordenen op gang';

  @override
  String get voiceTranscriptionTooltip => 'Spraaktypen (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-stemcommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-stemcommando';

  @override
  String get voiceCommandContent =>
      'Spreek natuurlijk om je lijst te beheren!\n\nVoorbeelden:\n• \'Voeg brood, kaas en ham toe\'\n• \'Verwijder wasmiddel\'\n• \'Verander thema naar blauw\'\n\nDit is een exclusieve functie van KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Bekijk abonnementen';

  @override
  String get itemsAddedSuccess => 'Items succesvol toegevoegd aan lijst!';

  @override
  String get viewList => 'Lijst bekijken';

  @override
  String get feedbackTitle => 'Feedback sturen';

  @override
  String get feedbackPrompt => 'Wat wil je delen?';

  @override
  String get feedbackTypeBug => 'Meld een bug';

  @override
  String get feedbackTypeBugHint => 'Er werkt iets niet';

  @override
  String get feedbackTypeSuggestion => 'Suggestie';

  @override
  String get feedbackTypeSuggestionHint => 'Idee om de app te verbeteren';

  @override
  String get feedbackTypeTranslation => 'Vertalingsprobleem';

  @override
  String get feedbackTypeTranslationHint =>
      'Onjuiste of onnatuurlijke vertaling';

  @override
  String get feedbackTypeFeature => 'Functieverzoek';

  @override
  String get feedbackTypeFeatureHint => 'Functie die je graag zou zien';

  @override
  String get feedbackTypeOther => 'Anders';

  @override
  String get feedbackTypeOtherHint => 'Ander type feedback';

  @override
  String get feedbackHint => 'Beschrijf je feedback in detail...';

  @override
  String get feedbackSend => 'Feedback sturen';

  @override
  String get feedbackSending => 'Bezig met verzenden...';

  @override
  String get feedbackThankYou => 'Bedankt!';

  @override
  String get feedbackThankYouMessage =>
      'Je feedback is ontvangen en helpt ons KipiList voor iedereen te verbeteren.';

  @override
  String get feedbackBack => 'Terug';

  @override
  String feedbackError(String error) {
    return 'Fout bij verzenden: $error';
  }

  @override
  String get feedbackRetry => 'Opnieuw proberen';

  @override
  String get feedbackSettingsTitle => 'Feedback sturen';

  @override
  String get feedbackSettingsSubtitle =>
      'Meld bugs, suggereer verbeteringen of corrigeer vertalingen';

  @override
  String get aiEnergy => 'AI-energie';

  @override
  String get searchInConversation => 'Zoeken in gesprek...';

  @override
  String get noMessagesFound => 'Geen berichten gevonden';

  @override
  String get suggestedQuestions => 'Voorgestelde vragen:';

  @override
  String get shoppingAssistant => 'Winkelassistent';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased van $total gekocht';
  }

  @override
  String get estimatedCost => 'Geschat';

  @override
  String get viewItems => 'Bekijk artikelen';

  @override
  String get noItemsInList => 'Geen items in de lijst';

  @override
  String get longHistoryWarning =>
      'Lange geschiedenis: de assistent concentreert zich op de nieuwste berichten voor betere prestaties.';

  @override
  String get listening => 'Luisteren...';

  @override
  String get addDirectToList => 'Voeg direct toe aan de lijst';

  @override
  String get unlockFullResponse => 'Ontgrendel volledige respons';

  @override
  String get switchList => 'Lijst wisselen';

  @override
  String get marketMode => 'Marktmodus';

  @override
  String get backToChat => 'Terug naar Chatten';

  @override
  String get finishShopping => 'Voltooi het winkelen';

  @override
  String get welcomeAiAssistant => 'Welkom bij AI-assistent';

  @override
  String get createListToStartAi =>
      'Maak een boodschappenlijstje om de slimme chat te gaan gebruiken.';

  @override
  String get howCanIHelp => 'Hoe kan ik helpen?';

  @override
  String get chatSubtitleShort =>
      'Vraag naar prijzen, recepten, organisatie...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total gekocht';
  }

  @override
  String get quickReplies => 'Snelle antwoorden:';

  @override
  String get voiceProFeature =>
      'Geavanceerde spraakopdrachten zijn Pro. Basisdicteren inschakelen...';

  @override
  String get viewPro => 'Bekijk Pro';

  @override
  String get errorLoadingChat =>
      'Oeps! Er is iets misgegaan bij het laden van de chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Controleer uw verbinding of probeer het later opnieuw.';

  @override
  String get errorOscillation =>
      'Dit kan gebeuren als gevolg van netwerkoscillaties of tijdelijke onbeschikbaarheid. Probeer het opnieuw.';

  @override
  String get activeListening => 'Actief luisteren';

  @override
  String get whatToDoWithItem => 'Wat zou je met dit artikel willen doen?';

  @override
  String get viewDetails => 'Details bekijken';

  @override
  String get openMenu => 'Menu openen';

  @override
  String get viewRecipe => 'Recept bekijken';

  @override
  String get recipeCreated => 'Recept aangemaakt!';

  @override
  String get editRecipe => 'Bewerken';

  @override
  String get deleteRecipe => 'Verwijderen';

  @override
  String get deleteRecipeConfirm => 'Dit recept verwijderen?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Weet je zeker dat je \"$recipeName\" wilt verwijderen? Deze actie kan niet ongedaan worden gemaakt.';
  }

  @override
  String get ingredients => 'Ingrediënten';

  @override
  String get instructions => 'Instructies';

  @override
  String get prepTime => 'Bereidingstijd';

  @override
  String get recipeSaved => 'Recept opgeslagen!';

  @override
  String get noRecipesSaved => 'Geen recepten opgeslagen';

  @override
  String get noRecipesSavedHint =>
      'Maak je eerste aangepaste recept door op de onderstaande knop te tikken.';

  @override
  String get myRecipes => 'Mijn recepten';

  @override
  String get newRecipe => 'Nieuw recept';

  @override
  String get loadingRecipes => 'Je recepten worden geladen...';

  @override
  String get errorLoadingRecipes => 'Fout bij laden van recepten';

  @override
  String get addIngredient => 'Ingrediënt toevoegen';

  @override
  String get saveRecipe => 'Opslaan';

  @override
  String get recipeName => 'Naam van recept';

  @override
  String get shortDescription => 'Korte beschrijving';

  @override
  String get prepTimeMinutes => 'Bereidingstijd (minuten)';

  @override
  String get instructionsHint => 'Typ één stap per regel...';

  @override
  String get addPhoto => 'Foto toevoegen';

  @override
  String get imageUrlPlaceholder => 'Of plak een URL van een afbeelding';

  @override
  String get tags => 'Labels';

  @override
  String get recipeTags => 'Recepttags';

  @override
  String get suggestedTags => 'Gesuggereerd';

  @override
  String get searchRecipes => 'Recepten zoeken...';

  @override
  String get filterByTag => 'Filter op tag';

  @override
  String get allTags => 'Alle';

  @override
  String get recipeDeleted => 'Recept verwijderd';

  @override
  String get saveChanges => 'Wijzigingen opslaan';

  @override
  String get editRecipeTitle => 'Recept bewerken';

  @override
  String get newRecipeTitle => 'Nieuw recept';

  @override
  String get requiredField => 'Verplicht';

  @override
  String get chooseImageSource => 'Kies bron van afbeelding';

  @override
  String get gallery => 'Galerij';

  @override
  String get enterUrl => 'Voer URL in';

  @override
  String get recipeImage => 'Afbeelding van recept';

  @override
  String get removeImage => 'Afbeelding verwijderen';

  @override
  String get mealPlannerTitle => 'Maaltijdplanner';

  @override
  String get mealPlannerViewMonthly => 'Maandweergave';

  @override
  String get mealPlannerViewWeekly => 'Weekweergave';

  @override
  String get mealPlannerNoMeals => 'Geen maaltijden gepland';

  @override
  String get mealPlannerNoMealsHint =>
      'Tik op een dag om een maaltijd toe te voegen';

  @override
  String get mealPlannerLoading => 'Maaltijdplanning laden...';

  @override
  String get mealPlannerError => 'Fout bij laden van maaltijdplanning';

  @override
  String get mealPlannerAddMeal => 'Maaltijd toevoegen';

  @override
  String get mealPlannerEditMeal => 'Maaltijd bewerken';

  @override
  String get mealPlannerDeleteMeal => 'Maaltijd verwijderen';

  @override
  String get mealPlannerMealDeleted => 'Maaltijd verwijderd';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porties',
      one: '$count portie',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porties';

  @override
  String get mealPlannerNoteLabel => 'Opmerking (optioneel)';

  @override
  String get mealPlannerSelectRecipe => 'Selecteer een recept';

  @override
  String get mealPlannerSearchRecipes => 'Recepten zoeken...';

  @override
  String get mealPlannerNoRecipesFound => 'Geen recepten gevonden';

  @override
  String get mealPlannerNoRecipesHint =>
      'Maak eerst recepten aan in het tabblad Recepten';

  @override
  String get mealPlannerSave => 'Toevoegen aan planning';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count van $total maaltijden gepland';
  }

  @override
  String get mealPlannerGenerateList => 'Boodschappenlijst genereren';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Alle ingrediënten van geplande maaltijden voor deze week toevoegen aan je boodschappenlijst?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediënt(en) toegevoegd aan je lijst!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Geen ingrediënten om toe te voegen. Plan eerst maaltijden met recepten.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Maak eerst een boodschappenlijst aan.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Ontbijt';

  @override
  String get mealPlannerMealTypeLunch => 'Lunch';

  @override
  String get mealPlannerMealTypeDinner => 'Diner';

  @override
  String get mealPlannerMealTypeSnack => 'Tussendoortje';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Niets gepland voor deze week';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tik op een willekeurige dag om je maaltijden te plannen!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Uitnodigen voor lijst';

  @override
  String get shareApp => 'Deel app';

  @override
  String get shareAppDescription =>
      'Nodig vrienden uit om KipiList te gebruiken';

  @override
  String shareReferralText(Object url) {
    return 'Ik gebruik KipiList om mijn boodschappen te organiseren! Download via mijn link en we krijgen allebei 7 dagen Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Ontvang 7 dagen KipiList Premium!';
}
