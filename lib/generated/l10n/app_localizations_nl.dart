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
  String get navChat => 'Chatten';

  @override
  String get navRecipes => 'Recepten';

  @override
  String get navLists => 'Lijsten';

  @override
  String get navMealPlanner => 'Menu';

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
  String get profile => 'Profiel';

  @override
  String get exitShoppingMode => 'Verlaat de winkelmodus';

  @override
  String get exit => 'Uitgang';

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
  String get scanProductTitle => 'Product scannen';

  @override
  String get positionBarcodeCenter => 'Plaats de streepjescode in het midden';

  @override
  String get product => 'Product';

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
  String get myAchievements => 'Mijn prestaties';

  @override
  String get itemsPurchased => 'Gekochte artikelen';

  @override
  String get totalSavings => 'Totale besparingen';

  @override
  String get currentStreak => 'Huidige reeks';

  @override
  String streakDays(int count) {
    return '$days dagen';
  }

  @override
  String get unlockedBadges => 'Ontgrendelde badges';

  @override
  String get badgeBeginner => 'Beginner';

  @override
  String get badgeOrganized => 'Georganiseerd';

  @override
  String get badgeSavingMaster => 'Meester redden';

  @override
  String get badgeSuperPlanner => 'Superplanner';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased van $total artikelen';
  }

  @override
  String progressBudget(String amount) {
    return 'Budget: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Totaal: $amount';
  }

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
  String get chatHintBlocked => 'Ontgrendel AI om te chatten';

  @override
  String chatError(String error) {
    return 'Fout bij laden chat: $error';
  }

  @override
  String get aiAssistantTitle => 'AI-assistent';

  @override
  String get closeSheet => 'Dichtbij';

  @override
  String get scanBarcodeTitle => 'Streepjescode scannen';

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
  String get aiLimitAlmostReached => 'Bijna geen AI-berichten meer';

  @override
  String get unlockAi => 'Ontgrendel onbeperkte AI';

  @override
  String get aiTeaserFallback =>
      'Abonneer u op Premium om het volledige antwoord te ontgrendelen en onbeperkte AI-tips te krijgen voor uw boodschappen...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI-acties over deze maand: upgrade voor onbeperkt';
  }

  @override
  String get aiUsageExhausted =>
      'Maandelijkse AI-limiet bereikt. Upgrade naar Pro voor onbeperkt →';

  @override
  String get kipiListTitle => 'KipiLijst';

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
  String get onboardingMaybeLater => 'Misschien later';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hé $name, organiseer je boodschappen op de juiste manier.';
  }

  @override
  String get onboardingSlide1Title => 'Slimme boodschappenlijstjes';

  @override
  String get onboardingSlide1Body =>
      'Maak en deel direct lijsten. Kipi voegt automatisch items toe op basis van jouw gewoonten.';

  @override
  String get onboardingSlide2Title => 'Maak kennis met Kipi';

  @override
  String get onboardingSlide2Body =>
      'Vraag alles: maak lijsten, vind recepten, houd uw voorraadkast bij, plan uw week.';

  @override
  String get onboardingSlide3Title => 'Pantry- en maaltijdplanning';

  @override
  String get onboardingSlide3Body =>
      'Houd bij wat u heeft, plan maaltijden en genereer automatisch boodschappenlijstjes.';

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
  String get paywallLoadingError =>
      'Fout bij het laden van aanbiedingen. Probeer het opnieuw.';

  @override
  String get paywallPurchaseError =>
      'Kan aankoop niet voltooien. Probeer het opnieuw.';

  @override
  String get paywallRestoreError =>
      'Geen actief abonnement gevonden om te herstellen.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAGEN GRATIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count WEKEN GRATIS',
      one: '$count WEEK GRATIS',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MAANDEN GRATIS',
      one: '$count MAAND GRATIS',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Probeer KipiList Pro 7 dagen gratis';

  @override
  String get paywallTrialSubtitle =>
      'Annuleer op elk gewenst moment. Vandaag geen kosten.';

  @override
  String get paywallTrialCta => 'Gratis proefperiode starten';

  @override
  String get recipeAddToList => 'Toevoegen aan boodschappenlijstje';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ingrediënten toegevoegd aan $listName';
  }

  @override
  String get noListSelected => 'Geen lijst geselecteerd. Open eerst een lijst.';

  @override
  String get paywallFeaturesTitle => 'Alles wat je nodig hebt:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organiseert uw lijst automatisch';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Maak zoveel lijsten als je nodig hebt';

  @override
  String get paywallFeatureDescSharing => 'Winkel samen in realtime';

  @override
  String get paywallFeatureDescPantry => 'Houd bij wat je in huis hebt';

  @override
  String get paywallFeatureDescBudget => 'Blijf elke maand binnen het budget';

  @override
  String get paywallFeatureUnlimitedLists => 'Onbeperkte lijsten';

  @override
  String get paywallFeatureSmartAI => 'Slimme AI';

  @override
  String get paywallFeatureExpenseControl => 'Kostenbeheersing';

  @override
  String get paywallFeatureSharing => 'Delen';

  @override
  String get paywallBeforeAfterTitle => 'AI voor en na:';

  @override
  String get paywallLabelCommon => 'Gewoon';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'rijst';

  @override
  String get paywallBeforeItem2 => 'zeep';

  @override
  String get paywallBeforeItem3 => 'vlees';

  @override
  String get paywallBeforeItem4 => 'brood';

  @override
  String get paywallAfterItem1 => 'Granen';

  @override
  String get paywallAfterItem2 => 'Schoonmaak';

  @override
  String get paywallAfterItem3 => 'Vlees';

  @override
  String get paywallAfterItem4 => 'Bakkerij';

  @override
  String get paywallTestimonialsTitle => 'Wat onze gebruikers zeggen:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organiseert mijn boodschappen binnen enkele seconden. Ik bespaar 20 minuten per marktreis.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Ik ben nooit meer een lijstitem vergeten. De AI-chat is sensationeel!';

  @override
  String get paywallSocialProof => '+2.400 gezinnen maken er gebruik van';

  @override
  String get paywallCtaUnlock => 'Ontgrendel PRO';

  @override
  String get paywallBestValue => 'BESTE WAARDE';

  @override
  String get paywallMostPopular => 'MEEST POPULAIR';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Veilige betaling';

  @override
  String get paywallSelectPlan => 'Kies uw abonnement:';

  @override
  String paywallSavePercent(Object percent) {
    return 'BESPAAR $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Slechts $price/maand';
  }

  @override
  String get paywallPackageAnnual => 'Jaarplan';

  @override
  String get paywallPackageMonthly => 'Maandplan';

  @override
  String get paywallPackageLifetime => 'Levenslange toegang';

  @override
  String get paywallCancelAnytime =>
      'Annuleer op elk gewenst moment. Geen verplichting.';

  @override
  String paywallTrialInCard(int days) {
    return 'Eerste $days dagen GRATIS';
  }

  @override
  String get paywallSecuredByStore =>
      'Beveiligd door Google Play · Annuleer op elk gewenst moment';

  @override
  String get paywallPolicy => 'Privacybeleid';

  @override
  String get paywallTerms => 'Gebruiksvoorwaarden';

  @override
  String get paywallRestore => 'Herstellen';

  @override
  String get paywallHeroHeadline => 'Kipi AI staat altijd aan uw zijde';

  @override
  String get paywallHeroSubtitle =>
      'Voeg items toe, organiseer lijsten en bespaar tijd met AI op zak';

  @override
  String get paywallBenefit1Desc =>
      'Voegt 24/7 items toe, ordent ze en stelt ze voor';

  @override
  String get paywallBenefit2Desc => 'Geen limiet van 3 lijsten';

  @override
  String get paywallBenefit3Desc => 'Onkosten bijhouden en familielijsten';

  @override
  String get paywallPackageMonthlyDesc => 'Volledige flexibiliteit';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Begin gratis — $days dagen';
  }

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
  String shareReferralText(String url) {
    return 'Ik gebruik KipiList om mijn boodschappen te organiseren! Download via mijn link en we krijgen allebei 7 dagen Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Ontvang 7 dagen KipiList Premium!';

  @override
  String get gestureHint =>
      'Houd ingedrukt om te selecteren • Veeg om te verwijderen';

  @override
  String get catalogTitle => 'Catalogus';

  @override
  String get catalogMyFrequents => 'Mijn frequente bezoekers';

  @override
  String get catalogSearchGlobal => 'Zoek een product...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Zoeken in $category...';
  }

  @override
  String get catalogSortPopular => 'Meest populair';

  @override
  String get catalogSortAZ => 'A-Z';

  @override
  String get catalogFilterNational => 'Onderdanen';

  @override
  String get catalogRareSection => 'minder gebruikelijk in uw land';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Voeg $count $_temp0 toe →';
  }

  @override
  String get catalogProductNotFound => 'Product niet gevonden, typ de naam';

  @override
  String get catalogBrowse => 'Catalogus doorbladeren';

  @override
  String get offlineBanner => 'Je bent offline';

  @override
  String get consentTitle => 'Privacy en analyse';

  @override
  String get consentBody =>
      'KipiList gebruikt Firebase Analytics om uw ervaring te verbeteren. Uw gegevens worden verwerkt volgens ons privacybeleid.';

  @override
  String get consentAccept => 'Accepteren';

  @override
  String get consentDecline => 'Nee, bedankt';

  @override
  String get mealPlannerPantryAllAvailable => 'Op voorraad';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ontbrekende items',
      one: '$count ontbrekend item',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Vervaldatum';

  @override
  String get notInformed => 'Niet op de hoogte';

  @override
  String get skip => 'Overslaan';

  @override
  String get onboardingAiTitle => 'Chat met Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hoi! Ik ben Kipi, jouw persoonlijke winkelassistent! 🛒';

  @override
  String get onboardingAiAskName => 'Wat is je naam?';

  @override
  String get onboardingAiNameHint => 'Typ uw naam...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Leuk je te ontmoeten, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Wat is je favoriete eten?';

  @override
  String get onboardingAiFoodHint => 'bijv. Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Geweldige keuzes! Dit is wat ik aan je lijst zou toevoegen:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Ziet dit er goed uit? Probeer iets anders te typen!';

  @override
  String get onboardingAiReady =>
      'Geweldig! Je bent klaar om te beginnen. Laten we uw account instellen!';

  @override
  String get onboardingAiContinue => 'Ga verder →';

  @override
  String get connectionError => 'Verbindingsfout';

  @override
  String connectionErrorDesc(String error) {
    return 'Kan geen verbinding maken met de server. Controleer uw internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Fout bij het laden van lijsten';

  @override
  String get noListsFound => 'Geen lijsten gevonden';

  @override
  String get backToToday => 'Terug naar vandaag';

  @override
  String get quickSuggestions => 'Snelle suggesties';

  @override
  String get aiEnergyLow => 'Lage AI-energie';

  @override
  String get aiUnlockUnlimited => 'Ontgrendel onbeperkte AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 vandaag';
  }

  @override
  String get aiSubscribeUnlimited => 'Abonneer u op onbeperkte AI';

  @override
  String get unlockWithAd => 'Ontgrendel met advertentie';

  @override
  String get conversationHistoryTitle => 'Gespreksgeschiedenis';

  @override
  String get noConversationsFound => 'Geen gesprekken gevonden';

  @override
  String get errorLoadingHistory => 'Fout bij laden van geschiedenis';

  @override
  String get deleteConversationTitle => 'Gesprek verwijderen?';

  @override
  String get deleteConversationConfirm =>
      'Deze actie kan niet ongedaan worden gemaakt.';

  @override
  String get deleteConversation => 'Verwijderen';

  @override
  String get subscription => 'Abonnement';

  @override
  String get kipiListProActive => 'KipiList Pro Actief';

  @override
  String get unlockPremiumTitle => 'Ontgrendel onbeperkte lijsten, AI en meer';

  @override
  String get loadingSubscription => 'Abonnement laden...';

  @override
  String get errorLoadingSubscription => 'Fout bij laden abonnement';

  @override
  String get profileSection => 'Profiel';

  @override
  String get myProfile => 'Mijn profiel';

  @override
  String get profileSubtitle => 'Persoonlijke voorkeuren voor de AI-assistent';

  @override
  String get customizeAiAssistant => 'Pas de AI-assistent aan';

  @override
  String get assistantHistory => 'Assistent geschiedenis';

  @override
  String get assistantHistorySubtitle => 'Bekijk uw gespreksgeschiedenis';

  @override
  String get manageCategories => 'Beheer categorieën';

  @override
  String get manageCategoriesSubtitle => 'Beheer artikelcategorieën';

  @override
  String get customizeAssistant => 'Pas aan';

  @override
  String get assistantName => 'Naam van de assistent';

  @override
  String get chooseIcon => 'Kies icoon';

  @override
  String get profileSaved => 'Profiel succesvol opgeslagen!';

  @override
  String get errorSavingProfile => 'Fout bij opslaan: null';

  @override
  String get userProfile => 'Gebruikersprofiel';

  @override
  String get profileDescription =>
      'Vertel ons uw persoonlijke voorkeuren, zodat de AI-assistent gepersonaliseerde items en recepten kan voorstellen.';

  @override
  String get preferredMarket => 'Voorkeursmarkt';

  @override
  String get preferredMarketHint => 'Bijvoorbeeld: supermarkt X';

  @override
  String get dietaryRestrictions => 'Dieetbeperkingen';

  @override
  String get dietaryRestrictionsHint =>
      'Bijvoorbeeld: veganistisch, vegetarisch, glutenvrij';

  @override
  String get marketsToAvoid => 'Markten om te vermijden';

  @override
  String get marketsToAvoidHint => 'Bijv.: Markt Y, Markt Z';

  @override
  String get observations => 'Opmerkingen';

  @override
  String get observationsHint => 'Andere voorkeuren voor de assistent';

  @override
  String get saveProfile => 'Profiel opslaan';

  @override
  String get everythingReady => 'Alles klaar!';

  @override
  String get youCompletedList => 'Je hebt de lijst voltooid!';

  @override
  String get selectCheaperAlternative =>
      'Selecteer een goedkoper productalternatief om de kosten te optimaliseren.';

  @override
  String get suggestedItems => 'Voorgestelde artikelen';

  @override
  String get swapped => 'Verwisseld';

  @override
  String get swap => 'Ruil';

  @override
  String get chooseThemeColor => 'Kies Themakleur';

  @override
  String get manageCategoriesTitle => 'Beheer categorieën';

  @override
  String get categoryLimitReached =>
      'Limiet van 10 categorieën in de gratis versie. Upgrade naar Pro!';

  @override
  String get deleteCategoryTitle => 'Categorie verwijderen';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Items in de categorie \"$category\" worden verplaatst naar \"Overige\".\nDoorgaan?';
  }

  @override
  String get deleteCategory => 'Verwijderen';

  @override
  String get newCategoryDialog => 'Nieuwe categorie';

  @override
  String get editCategoryDialog => 'Categorie bewerken';

  @override
  String get categoryName => 'Categorienaam';

  @override
  String get categoryNameHint => 'Bijvoorbeeld: vlees';

  @override
  String get categoryColorLabel => 'Kleur';

  @override
  String get categoryIconLabel => 'Icon';

  @override
  String itemAddedSnack(String name) {
    return '$name toegevoegd';
  }

  @override
  String get kipiQuickBarHint => 'Wat moet je kopen?';

  @override
  String replaceItem(String item) {
    return 'Vervang $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit — $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Vergeet nooit meer een boodschappenartikel';

  @override
  String get onboardingGoalSaveMoney => 'Bespaar geld';

  @override
  String get onboardingGoalNeverForget => 'Vergeet nooit voorwerpen';

  @override
  String get onboardingGoalFaster => 'Winkel sneller';

  @override
  String get onboardingGoalFamily => 'Organiseer gezinsinkopen';

  @override
  String get onboardingGoalRecipes => 'Ontdek recepten';

  @override
  String get onboardingGoalPantry => 'Volg voorraadkast';

  @override
  String get onboardingCommitmentsTitle => 'Wat is voor jou belangrijk?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Kies uw doelen om KipiList te personaliseren';

  @override
  String get onboardingCommitmentsCta => 'Laten we gaan!';

  @override
  String get onboardingPersonalizationNameLabel => 'Jouw naam';

  @override
  String get onboardingPersonalizationNameHint => 'Voer uw naam in';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Waar winkel je voor?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Voor wie winkel jij?';

  @override
  String get onboardingCategoryGrocery => 'Boodschappen';

  @override
  String get onboardingCategoryPharmacy => 'Apotheek';

  @override
  String get onboardingCategoryRecipes => 'Recepten';

  @override
  String get onboardingCategoryHome => 'Thuis';

  @override
  String get onboardingCategoryPet => 'Huisdier';

  @override
  String get onboardingGroupSolo => 'Alleen ik';

  @override
  String get onboardingGroupCouple => 'Stel';

  @override
  String get onboardingGroupFamily => 'Familie';

  @override
  String get onboardingLoadingTitle => 'Je ervaring voorbereiden...';

  @override
  String get onboardingLoadingStep1 => 'Uw voorkeuren analyseren...';

  @override
  String get onboardingLoadingStep2 => 'AI-assistent instellen...';

  @override
  String get onboardingLoadingStep3 => 'Bijna klaar...';

  @override
  String get onboardingLoadingStat1Label => 'Artikelen gecatalogiseerd';

  @override
  String get onboardingLoadingStat2Label => 'Gebruikers hielpen';

  @override
  String get onboardingLoadingStat3Label => 'Minuten bespaard';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, bespaar op elke reis!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, vergeet nooit meer een item!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, winkel in de helft van de tijd!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organiseer gezinsinkopen!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, ontdek nieuwe recepten!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, volg je voorraadkast perfect!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Bespaar op elke reis!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Vergeet nooit meer een item!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'Winkel in de helft van de tijd!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Organiseer gezinsinkopen!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Ontdek nieuwe recepten!';

  @override
  String get paywallGoalHeadlineNoNamePantry => 'Volg uw voorraadkast perfect!';

  @override
  String paywallPricePerDay(String price) {
    return 'Slechts $price/dag – minder dan een kopje koffie';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Overslaan voor nu';

  @override
  String get paywallTestimonial =>
      'AI organiseert mijn boodschappen binnen enkele seconden. Ik bespaar 20 minuten per rit.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Op elk gewenst moment opzeggen · Geen kosten totdat uw proefperiode afloopt';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hé $name! Welke $category heb je nodig?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Welke $category heb je nodig?';
  }

  @override
  String get onboardingAiDemoYes => 'Ja!';

  @override
  String get onboardingAiDemoReaction => 'Leuk!';

  @override
  String get onboardingAiDemoChange => 'Artikel wijzigen';

  @override
  String get onboardingAiDemoOffer => 'Probeer iets anders te typen!';

  @override
  String get onboardingAiDemoContinue => 'Doorgaan';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Uw boodschappenlijstje, nu met AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Bekijk hoe Kipi binnen enkele seconden uw volledige lijst samenstelt';

  @override
  String get onboardingAiDemoSlideCta => 'Ik wil dit! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Ik organiseer een barbecue 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Klaar! Hier is alles wat je nodig hebt:';

  @override
  String get onboardingAiDemoSlideDone => 'Volledige lijst in seconden ✨';

  @override
  String get onboardingPainTitle => 'Wat frustreert je het meest?';

  @override
  String get onboardingPainSubtitle =>
      'Wees eerlijk: we zullen ze allemaal repareren';

  @override
  String get onboardingPainCta => 'Ja, repareer dit voor mij →';

  @override
  String get onboardingPainForget => 'Ik vergeet artikelen in de winkel';

  @override
  String get onboardingPainFamily => 'Mijn familie ziet de lijst nooit';

  @override
  String get onboardingPainOverspend => 'Ik ga altijd over het budget heen';

  @override
  String get onboardingPainRepeat => 'Eén reis is nooit genoeg';

  @override
  String get aiWelcomeContent =>
      'Hallo! 👋 Ik ben **Kipi**, jouw persoonlijke winkel- en receptenassistent!\n\nIk ben hier om je te helpen:\n🛒 **Organiseer** uw boodschappen automatisch op categorieën\n💰 **Volg** uw budget en geef u geldbesparende tips\n🍲 **Stel** heerlijke recepten voor met wat je al hebt\n\nHoe kan ik je vandaag helpen? U kunt beginnen met het maken van uw eerste lijst!';

  @override
  String get aiWelcomeSuggestCreateList => 'Maak mijn eerste lijst';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, help me mijn eerste boodschappenlijstje te maken';

  @override
  String get aiWelcomeSuggestSave => 'Hoe geld besparen?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, hoe kun je mij helpen geld te besparen op de boodschappen?';

  @override
  String get suggestionMilk => 'Melk';

  @override
  String get suggestionBread => 'Brood';

  @override
  String get suggestionEggs => 'Eieren';

  @override
  String get suggestionCoffee => 'Koffie';

  @override
  String get suggestionRice => 'Rijst';

  @override
  String get suggestionFruits => 'Vruchten';
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
  String get navChat => 'Chatten';

  @override
  String get navRecipes => 'Recepten';

  @override
  String get navLists => 'Lijsten';

  @override
  String get navMealPlanner => 'Menu';

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
  String get profile => 'Profiel';

  @override
  String get exitShoppingMode => 'Verlaat de winkelmodus';

  @override
  String get exit => 'Uitgang';

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
  String get scanProductTitle => 'Product scannen';

  @override
  String get positionBarcodeCenter => 'Plaats de streepjescode in het midden';

  @override
  String get product => 'Product';

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
  String get myAchievements => 'Mijn prestaties';

  @override
  String get itemsPurchased => 'Gekochte artikelen';

  @override
  String get totalSavings => 'Totale besparingen';

  @override
  String get currentStreak => 'Huidige reeks';

  @override
  String streakDays(int count) {
    return '$days dagen';
  }

  @override
  String get unlockedBadges => 'Ontgrendelde badges';

  @override
  String get badgeBeginner => 'Beginner';

  @override
  String get badgeOrganized => 'Georganiseerd';

  @override
  String get badgeSavingMaster => 'Meester redden';

  @override
  String get badgeSuperPlanner => 'Superplanner';

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased van $total artikelen';
  }

  @override
  String progressBudget(String amount) {
    return 'Budget: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Totaal: $amount';
  }

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
  String get chatHintBlocked => 'Ontgrendel AI om te chatten';

  @override
  String chatError(String error) {
    return 'Fout bij laden chat: $error';
  }

  @override
  String get aiAssistantTitle => 'AI-assistent';

  @override
  String get closeSheet => 'Dichtbij';

  @override
  String get scanBarcodeTitle => 'Streepjescode scannen';

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
  String get aiLimitAlmostReached => 'Bijna geen AI-berichten meer';

  @override
  String get unlockAi => 'Ontgrendel onbeperkte AI';

  @override
  String get aiTeaserFallback =>
      'Abonneer u op Premium om het volledige antwoord te ontgrendelen en onbeperkte AI-tips te krijgen voor uw boodschappen...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI-acties over deze maand: upgrade voor onbeperkt';
  }

  @override
  String get aiUsageExhausted =>
      'Maandelijkse AI-limiet bereikt. Upgrade naar Pro voor onbeperkt →';

  @override
  String get kipiListTitle => 'KipiLijst';

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
  String get onboardingMaybeLater => 'Misschien later';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hé $name, organiseer je boodschappen op de juiste manier.';
  }

  @override
  String get onboardingSlide1Title => 'Slimme boodschappenlijstjes';

  @override
  String get onboardingSlide1Body =>
      'Maak en deel direct lijsten. Kipi voegt automatisch items toe op basis van jouw gewoonten.';

  @override
  String get onboardingSlide2Title => 'Maak kennis met Kipi';

  @override
  String get onboardingSlide2Body =>
      'Vraag alles: maak lijsten, vind recepten, houd uw voorraadkast bij, plan uw week.';

  @override
  String get onboardingSlide3Title => 'Pantry- en maaltijdplanning';

  @override
  String get onboardingSlide3Body =>
      'Houd bij wat u heeft, plan maaltijden en genereer automatisch boodschappenlijstjes.';

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
  String get paywallLoadingError =>
      'Fout bij het laden van aanbiedingen. Probeer het opnieuw.';

  @override
  String get paywallPurchaseError =>
      'Kan aankoop niet voltooien. Probeer het opnieuw.';

  @override
  String get paywallRestoreError =>
      'Geen actief abonnement gevonden om te herstellen.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAGEN GRATIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count WEKEN GRATIS',
      one: '$count WEEK GRATIS',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MAANDEN GRATIS',
      one: '$count MAAND GRATIS',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Probeer KipiList Pro 7 dagen gratis';

  @override
  String get paywallTrialSubtitle =>
      'Annuleer op elk gewenst moment. Vandaag geen kosten.';

  @override
  String get paywallTrialCta => 'Gratis proefperiode starten';

  @override
  String get recipeAddToList => 'Toevoegen aan boodschappenlijstje';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ingrediënten toegevoegd aan $listName';
  }

  @override
  String get noListSelected => 'Geen lijst geselecteerd. Open eerst een lijst.';

  @override
  String get paywallFeaturesTitle => 'Alles wat je nodig hebt:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organiseert uw lijst automatisch';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Maak zoveel lijsten als je nodig hebt';

  @override
  String get paywallFeatureDescSharing => 'Winkel samen in realtime';

  @override
  String get paywallFeatureDescPantry => 'Houd bij wat je in huis hebt';

  @override
  String get paywallFeatureDescBudget => 'Blijf elke maand binnen het budget';

  @override
  String get paywallFeatureUnlimitedLists => 'Onbeperkte lijsten';

  @override
  String get paywallFeatureSmartAI => 'Slimme AI';

  @override
  String get paywallFeatureExpenseControl => 'Kostenbeheersing';

  @override
  String get paywallFeatureSharing => 'Delen';

  @override
  String get paywallBeforeAfterTitle => 'AI voor en na:';

  @override
  String get paywallLabelCommon => 'Gewoon';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'rijst';

  @override
  String get paywallBeforeItem2 => 'zeep';

  @override
  String get paywallBeforeItem3 => 'vlees';

  @override
  String get paywallBeforeItem4 => 'brood';

  @override
  String get paywallAfterItem1 => 'Granen';

  @override
  String get paywallAfterItem2 => 'Schoonmaak';

  @override
  String get paywallAfterItem3 => 'Vlees';

  @override
  String get paywallAfterItem4 => 'Bakkerij';

  @override
  String get paywallTestimonialsTitle => 'Wat onze gebruikers zeggen:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organiseert mijn boodschappen binnen enkele seconden. Ik bespaar 20 minuten per marktreis.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Ik ben nooit meer een lijstitem vergeten. De AI-chat is sensationeel!';

  @override
  String get paywallSocialProof => '+2.400 gezinnen maken er gebruik van';

  @override
  String get paywallCtaUnlock => 'Ontgrendel PRO';

  @override
  String get paywallBestValue => 'BESTE WAARDE';

  @override
  String get paywallMostPopular => 'MEEST POPULAIR';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Veilige betaling';

  @override
  String get paywallSelectPlan => 'Kies uw abonnement:';

  @override
  String paywallSavePercent(Object percent) {
    return 'BESPAAR $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Slechts $price/maand';
  }

  @override
  String get paywallPackageAnnual => 'Jaarplan';

  @override
  String get paywallPackageMonthly => 'Maandplan';

  @override
  String get paywallPackageLifetime => 'Levenslange toegang';

  @override
  String get paywallCancelAnytime =>
      'Annuleer op elk gewenst moment. Geen verplichting.';

  @override
  String paywallTrialInCard(int days) {
    return 'Eerste $days dagen GRATIS';
  }

  @override
  String get paywallSecuredByStore =>
      'Beveiligd door Google Play · Annuleer op elk gewenst moment';

  @override
  String get paywallPolicy => 'Privacybeleid';

  @override
  String get paywallTerms => 'Gebruiksvoorwaarden';

  @override
  String get paywallRestore => 'Herstellen';

  @override
  String get paywallHeroHeadline => 'Kipi AI staat altijd aan uw zijde';

  @override
  String get paywallHeroSubtitle =>
      'Voeg items toe, organiseer lijsten en bespaar tijd met AI op zak';

  @override
  String get paywallBenefit1Desc =>
      'Voegt 24/7 items toe, ordent ze en stelt ze voor';

  @override
  String get paywallBenefit2Desc => 'Geen limiet van 3 lijsten';

  @override
  String get paywallBenefit3Desc => 'Onkosten bijhouden en familielijsten';

  @override
  String get paywallPackageMonthlyDesc => 'Volledige flexibiliteit';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Begin gratis — $days dagen';
  }

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
  String shareReferralText(String url) {
    return 'Ik gebruik KipiList om mijn boodschappen te organiseren! Download via mijn link en we krijgen allebei 7 dagen Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Ontvang 7 dagen KipiList Premium!';

  @override
  String get gestureHint =>
      'Houd ingedrukt om te selecteren • Veeg om te verwijderen';

  @override
  String get catalogTitle => 'Catalogus';

  @override
  String get catalogMyFrequents => 'Mijn frequente bezoekers';

  @override
  String get catalogSearchGlobal => 'Zoek een product...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Zoeken in $category...';
  }

  @override
  String get catalogSortPopular => 'Meest populair';

  @override
  String get catalogSortAZ => 'A-Z';

  @override
  String get catalogFilterNational => 'Onderdanen';

  @override
  String get catalogRareSection => 'minder gebruikelijk in uw land';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Voeg $count $_temp0 toe →';
  }

  @override
  String get catalogProductNotFound => 'Product niet gevonden, typ de naam';

  @override
  String get catalogBrowse => 'Catalogus doorbladeren';

  @override
  String get offlineBanner => 'Je bent offline';

  @override
  String get consentTitle => 'Privacy en analyse';

  @override
  String get consentBody =>
      'KipiList gebruikt Firebase Analytics om uw ervaring te verbeteren. Uw gegevens worden verwerkt volgens ons privacybeleid.';

  @override
  String get consentAccept => 'Accepteren';

  @override
  String get consentDecline => 'Nee, bedankt';

  @override
  String get mealPlannerPantryAllAvailable => 'Op voorraad';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ontbrekende items',
      one: '$count ontbrekend item',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Vervaldatum';

  @override
  String get notInformed => 'Niet op de hoogte';

  @override
  String get skip => 'Overslaan';

  @override
  String get onboardingAiTitle => 'Chat met Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hoi! Ik ben Kipi, jouw persoonlijke winkelassistent! 🛒';

  @override
  String get onboardingAiAskName => 'Wat is je naam?';

  @override
  String get onboardingAiNameHint => 'Typ uw naam...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Leuk je te ontmoeten, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Wat is je favoriete eten?';

  @override
  String get onboardingAiFoodHint => 'bijv. Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Geweldige keuzes! Dit is wat ik aan je lijst zou toevoegen:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Ziet dit er goed uit? Probeer iets anders te typen!';

  @override
  String get onboardingAiReady =>
      'Geweldig! Je bent klaar om te beginnen. Laten we uw account instellen!';

  @override
  String get onboardingAiContinue => 'Ga verder →';

  @override
  String get connectionError => 'Verbindingsfout';

  @override
  String connectionErrorDesc(String error) {
    return 'Kan geen verbinding maken met de server. Controleer uw internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Fout bij het laden van lijsten';

  @override
  String get noListsFound => 'Geen lijsten gevonden';

  @override
  String get backToToday => 'Terug naar vandaag';

  @override
  String get quickSuggestions => 'Snelle suggesties';

  @override
  String get aiEnergyLow => 'Lage AI-energie';

  @override
  String get aiUnlockUnlimited => 'Ontgrendel onbeperkte AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 vandaag';
  }

  @override
  String get aiSubscribeUnlimited => 'Abonneer u op onbeperkte AI';

  @override
  String get unlockWithAd => 'Ontgrendel met advertentie';

  @override
  String get conversationHistoryTitle => 'Gespreksgeschiedenis';

  @override
  String get noConversationsFound => 'Geen gesprekken gevonden';

  @override
  String get errorLoadingHistory => 'Fout bij laden van geschiedenis';

  @override
  String get deleteConversationTitle => 'Gesprek verwijderen?';

  @override
  String get deleteConversationConfirm =>
      'Deze actie kan niet ongedaan worden gemaakt.';

  @override
  String get deleteConversation => 'Verwijderen';

  @override
  String get subscription => 'Abonnement';

  @override
  String get kipiListProActive => 'KipiList Pro Actief';

  @override
  String get unlockPremiumTitle => 'Ontgrendel onbeperkte lijsten, AI en meer';

  @override
  String get loadingSubscription => 'Abonnement laden...';

  @override
  String get errorLoadingSubscription => 'Fout bij laden abonnement';

  @override
  String get profileSection => 'Profiel';

  @override
  String get myProfile => 'Mijn profiel';

  @override
  String get profileSubtitle => 'Persoonlijke voorkeuren voor de AI-assistent';

  @override
  String get customizeAiAssistant => 'Pas de AI-assistent aan';

  @override
  String get assistantHistory => 'Assistent geschiedenis';

  @override
  String get assistantHistorySubtitle => 'Bekijk uw gespreksgeschiedenis';

  @override
  String get manageCategories => 'Beheer categorieën';

  @override
  String get manageCategoriesSubtitle => 'Beheer artikelcategorieën';

  @override
  String get customizeAssistant => 'Pas aan';

  @override
  String get assistantName => 'Naam van de assistent';

  @override
  String get chooseIcon => 'Kies icoon';

  @override
  String get profileSaved => 'Profiel succesvol opgeslagen!';

  @override
  String get errorSavingProfile => 'Fout bij opslaan: null';

  @override
  String get userProfile => 'Gebruikersprofiel';

  @override
  String get profileDescription =>
      'Vertel ons uw persoonlijke voorkeuren, zodat de AI-assistent gepersonaliseerde items en recepten kan voorstellen.';

  @override
  String get preferredMarket => 'Voorkeursmarkt';

  @override
  String get preferredMarketHint => 'Bijvoorbeeld: supermarkt X';

  @override
  String get dietaryRestrictions => 'Dieetbeperkingen';

  @override
  String get dietaryRestrictionsHint =>
      'Bijvoorbeeld: veganistisch, vegetarisch, glutenvrij';

  @override
  String get marketsToAvoid => 'Markten om te vermijden';

  @override
  String get marketsToAvoidHint => 'Bijv.: Markt Y, Markt Z';

  @override
  String get observations => 'Opmerkingen';

  @override
  String get observationsHint => 'Andere voorkeuren voor de assistent';

  @override
  String get saveProfile => 'Profiel opslaan';

  @override
  String get everythingReady => 'Alles klaar!';

  @override
  String get youCompletedList => 'Je hebt de lijst voltooid!';

  @override
  String get selectCheaperAlternative =>
      'Selecteer een goedkoper productalternatief om de kosten te optimaliseren.';

  @override
  String get suggestedItems => 'Voorgestelde artikelen';

  @override
  String get swapped => 'Verwisseld';

  @override
  String get swap => 'Ruil';

  @override
  String get chooseThemeColor => 'Kies Themakleur';

  @override
  String get manageCategoriesTitle => 'Beheer categorieën';

  @override
  String get categoryLimitReached =>
      'Limiet van 10 categorieën in de gratis versie. Upgrade naar Pro!';

  @override
  String get deleteCategoryTitle => 'Categorie verwijderen';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Items in de categorie \"$category\" worden verplaatst naar \"Overige\".\nDoorgaan?';
  }

  @override
  String get deleteCategory => 'Verwijderen';

  @override
  String get newCategoryDialog => 'Nieuwe categorie';

  @override
  String get editCategoryDialog => 'Categorie bewerken';

  @override
  String get categoryName => 'Categorienaam';

  @override
  String get categoryNameHint => 'Bijvoorbeeld: vlees';

  @override
  String get categoryColorLabel => 'Kleur';

  @override
  String get categoryIconLabel => 'Icon';

  @override
  String itemAddedSnack(String name) {
    return '$name toegevoegd';
  }

  @override
  String get kipiQuickBarHint => 'Wat moet je kopen?';

  @override
  String replaceItem(String item) {
    return 'Vervang $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit — $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Vergeet nooit meer een boodschappenartikel';

  @override
  String get onboardingGoalSaveMoney => 'Bespaar geld';

  @override
  String get onboardingGoalNeverForget => 'Vergeet nooit voorwerpen';

  @override
  String get onboardingGoalFaster => 'Winkel sneller';

  @override
  String get onboardingGoalFamily => 'Organiseer gezinsinkopen';

  @override
  String get onboardingGoalRecipes => 'Ontdek recepten';

  @override
  String get onboardingGoalPantry => 'Volg voorraadkast';

  @override
  String get onboardingCommitmentsTitle => 'Wat is voor jou belangrijk?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Kies uw doelen om KipiList te personaliseren';

  @override
  String get onboardingCommitmentsCta => 'Laten we gaan!';

  @override
  String get onboardingPersonalizationNameLabel => 'Jouw naam';

  @override
  String get onboardingPersonalizationNameHint => 'Voer uw naam in';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Waar winkel je voor?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Voor wie winkel jij?';

  @override
  String get onboardingCategoryGrocery => 'Boodschappen';

  @override
  String get onboardingCategoryPharmacy => 'Apotheek';

  @override
  String get onboardingCategoryRecipes => 'Recepten';

  @override
  String get onboardingCategoryHome => 'Thuis';

  @override
  String get onboardingCategoryPet => 'Huisdier';

  @override
  String get onboardingGroupSolo => 'Alleen ik';

  @override
  String get onboardingGroupCouple => 'Stel';

  @override
  String get onboardingGroupFamily => 'Familie';

  @override
  String get onboardingLoadingTitle => 'Je ervaring voorbereiden...';

  @override
  String get onboardingLoadingStep1 => 'Uw voorkeuren analyseren...';

  @override
  String get onboardingLoadingStep2 => 'AI-assistent instellen...';

  @override
  String get onboardingLoadingStep3 => 'Bijna klaar...';

  @override
  String get onboardingLoadingStat1Label => 'Artikelen gecatalogiseerd';

  @override
  String get onboardingLoadingStat2Label => 'Gebruikers hielpen';

  @override
  String get onboardingLoadingStat3Label => 'Minuten bespaard';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, bespaar op elke reis!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, vergeet nooit meer een item!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, winkel in de helft van de tijd!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organiseer gezinsinkopen!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, ontdek nieuwe recepten!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, volg je voorraadkast perfect!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Bespaar op elke reis!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Vergeet nooit meer een item!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'Winkel in de helft van de tijd!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Organiseer gezinsinkopen!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Ontdek nieuwe recepten!';

  @override
  String get paywallGoalHeadlineNoNamePantry => 'Volg uw voorraadkast perfect!';

  @override
  String paywallPricePerDay(String price) {
    return 'Slechts $price/dag – minder dan een kopje koffie';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Overslaan voor nu';

  @override
  String get paywallTestimonial =>
      'AI organiseert mijn boodschappen binnen enkele seconden. Ik bespaar 20 minuten per rit.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Op elk gewenst moment opzeggen · Geen kosten totdat uw proefperiode afloopt';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hé $name! Welke $category heb je nodig?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Welke $category heb je nodig?';
  }

  @override
  String get onboardingAiDemoYes => 'Ja!';

  @override
  String get onboardingAiDemoReaction => 'Leuk!';

  @override
  String get onboardingAiDemoChange => 'Artikel wijzigen';

  @override
  String get onboardingAiDemoOffer => 'Probeer iets anders te typen!';

  @override
  String get onboardingAiDemoContinue => 'Doorgaan';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Uw boodschappenlijstje, nu met AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Bekijk hoe Kipi binnen enkele seconden uw volledige lijst samenstelt';

  @override
  String get onboardingAiDemoSlideCta => 'Ik wil dit! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Ik organiseer een barbecue 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Klaar! Hier is alles wat je nodig hebt:';

  @override
  String get onboardingAiDemoSlideDone => 'Volledige lijst in seconden ✨';

  @override
  String get onboardingPainTitle => 'Wat frustreert je het meest?';

  @override
  String get onboardingPainSubtitle =>
      'Wees eerlijk: we zullen ze allemaal repareren';

  @override
  String get onboardingPainCta => 'Ja, repareer dit voor mij →';

  @override
  String get onboardingPainForget => 'Ik vergeet artikelen in de winkel';

  @override
  String get onboardingPainFamily => 'Mijn familie ziet de lijst nooit';

  @override
  String get onboardingPainOverspend => 'Ik ga altijd over het budget heen';

  @override
  String get onboardingPainRepeat => 'Eén reis is nooit genoeg';

  @override
  String get aiWelcomeContent =>
      'Hallo! 👋 Ik ben **Kipi**, jouw persoonlijke winkel- en receptenassistent!\n\nIk ben hier om je te helpen:\n🛒 **Organiseer** uw boodschappen automatisch op categorieën\n💰 **Volg** uw budget en geef u geldbesparende tips\n🍲 **Stel** heerlijke recepten voor met wat je al hebt\n\nHoe kan ik je vandaag helpen? U kunt beginnen met het maken van uw eerste lijst!';

  @override
  String get aiWelcomeSuggestCreateList => 'Maak mijn eerste lijst';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, help me mijn eerste boodschappenlijstje te maken';

  @override
  String get aiWelcomeSuggestSave => 'Hoe geld besparen?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, hoe kun je mij helpen geld te besparen op de boodschappen?';

  @override
  String get suggestionMilk => 'Melk';

  @override
  String get suggestionBread => 'Brood';

  @override
  String get suggestionEggs => 'Eieren';

  @override
  String get suggestionCoffee => 'Koffie';

  @override
  String get suggestionRice => 'Rijst';

  @override
  String get suggestionFruits => 'Vruchten';
}
