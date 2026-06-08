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
  String get chatHintBlocked => 'Ontgrendel AI om te chatten';

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
  String get aiLimitAlmostReached => 'Bijna geen AI-berichten meer';

  @override
  String get unlockAi => 'Ontgrendel onbeperkte AI';

  @override
  String get aiTeaserFallback =>
      'Abonneer u op Premium om het volledige antwoord te ontgrendelen en onbeperkte AI-tips te krijgen voor uw boodschappen...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

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
  String get onboardingMaybeLater => 'Maybe later';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hey $name, organize your shopping the right way.';
  }

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
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Alles wat je nodig hebt:';

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
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

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
  String shareReferralText(Object url) {
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
  String get skip => 'Skip';

  @override
  String get onboardingAiTitle => 'Chat with Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hi! I\'m Kipi, your personal shopping assistant! 🛒';

  @override
  String get onboardingAiAskName => 'What\'s your name?';

  @override
  String get onboardingAiNameHint => 'Type your name...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Nice to meet you, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'What\'s your favorite food?';

  @override
  String get onboardingAiFoodHint => 'e.g. Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Great choices! Here\'s what I\'d add to your list:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Does this look good? Try typing something else!';

  @override
  String get onboardingAiReady =>
      'Great! You\'re ready to start. Let\'s set up your account!';

  @override
  String get onboardingAiContinue => 'Continue →';

  @override
  String get errorRenderScreen =>
      'Oops! Something went wrong rendering this screen.';

  @override
  String get connectionError => 'Connection Error';

  @override
  String connectionErrorDesc(Object error) {
    return 'Could not connect to the server. Check your internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Error loading lists';

  @override
  String get noListsFound => 'No lists found';

  @override
  String get unlockPremiumTitle => 'Unlock unlimited lists, AI and more';

  @override
  String get loadingSubscription => 'Loading subscription...';

  @override
  String get errorLoadingSubscription => 'Error loading subscription';

  @override
  String get profileSection => 'Profile';

  @override
  String get myProfile => 'My Profile';

  @override
  String get profileSubtitle => 'Personal preferences for the AI assistant';

  @override
  String get manageCategories => 'Manage Categories';

  @override
  String get manageCategoriesSubtitle => 'Manage item categories';

  @override
  String get profileSaved => 'Profile saved successfully!';

  @override
  String errorSavingProfile(Object error) {
    return 'Error saving: $error';
  }

  @override
  String get userProfile => 'User Profile';

  @override
  String get saveProfile => 'Save Profile';

  @override
  String get profileDescription =>
      'Tell us your personal preferences so the AI assistant can suggest personalized items and recipes.';

  @override
  String get preferredMarket => 'Preferred Market';

  @override
  String get preferredMarketHint => 'E.g.: Supermarket X';

  @override
  String get dietaryRestrictions => 'Dietary Restrictions';

  @override
  String get dietaryRestrictionsHint => 'E.g.: vegan, vegetarian, gluten-free';

  @override
  String get marketsToAvoid => 'Markets to Avoid';

  @override
  String get marketsToAvoidHint => 'E.g.: Market Y, Market Z';

  @override
  String get observations => 'Notes';

  @override
  String get observationsHint => 'Other preferences for the assistant';

  @override
  String get manageCategoriesTitle => 'Beheer categorieën';

  @override
  String get categoryLimitReached =>
      'Limit of 10 categories on the free version. Upgrade to Pro!';

  @override
  String get noCategories => 'No categories.';

  @override
  String get deleteCategoryTitle => 'Delete Category';

  @override
  String deleteCategoryConfirm(Object category) {
    return 'Items in category \"$category\" will be moved to \"Others\".\nContinue?';
  }

  @override
  String get deleteCategory => 'Delete';

  @override
  String get myAchievements => 'My Achievements';

  @override
  String get itemsPurchased => 'Items Purchased';

  @override
  String get totalSavings => 'Total Savings';

  @override
  String get currentStreak => 'Current Streak';

  @override
  String streakDays(Object days) {
    return '$days days';
  }

  @override
  String get chooseThemeColor => 'Choose Theme Color';

  @override
  String get errorLoadingHistory => 'Error loading history';

  @override
  String get deleteConversationTitle => 'Delete Conversation?';

  @override
  String get deleteConversationConfirm => 'This action cannot be undone.';

  @override
  String get deleteConversation => 'Delete';

  @override
  String get unlockWithAd => 'Unlock with Ad';

  @override
  String get aiPremiumDescription =>
      'This interactive interface uses advanced artificial intelligence and is exclusive to Pro members or via a quick ad.';

  @override
  String get sortAZ => 'A-Z';

  @override
  String get categoryNameHint => 'E.g.: Meats';

  @override
  String get color => 'Color:';

  @override
  String get icon => 'Icon:';

  @override
  String get scanBarcode => 'Scan Barcode';

  @override
  String get scanProduct => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Position the barcode in the center';

  @override
  String replaceItem(Object name) {
    return 'Replace $name';
  }

  @override
  String get selectCheaperAlternative =>
      'Select a cheaper product alternative to optimize cost.';

  @override
  String get swap => 'Swap';

  @override
  String itemAdded(Object name) {
    return '$name added';
  }

  @override
  String errorLoadingProducts(Object error) {
    return 'Error loading products: $error';
  }

  @override
  String get mealType => 'Meal type';

  @override
  String get requestTimeout => 'Sorry, the request timed out.';

  @override
  String get connectionError2 => 'Sorry, a connection error occurred.';

  @override
  String get addingItems => 'Adding items to list...';

  @override
  String get removingItems => 'Removing items...';

  @override
  String get updatingItem => 'Updating item...';

  @override
  String get checkingItem => 'Checking item...';

  @override
  String get uncheckingItem => 'Unchecking item...';

  @override
  String get clearingCheckedItems => 'Clearing checked items...';

  @override
  String get reorganizingList => 'Reorganizing list...';

  @override
  String get creatingNewList => 'Creating new list...';

  @override
  String get removingList => 'Removing list...';

  @override
  String get renamingList => 'Renaming list...';

  @override
  String get queryingYourLists => 'Querying your lists...';

  @override
  String get settingBudget => 'Setting budget...';

  @override
  String get checkingPantry => 'Checking your pantry...';

  @override
  String get addingToPantry => 'Adding to pantry...';

  @override
  String get removingFromPantry => 'Removing from pantry...';

  @override
  String get updatingPantry => 'Updating pantry...';

  @override
  String get savingRecipe => 'Saving recipe...';

  @override
  String get searchingRecipes => 'Searching recipes...';

  @override
  String get removingRecipe => 'Removing recipe...';

  @override
  String get addingIngredientsToList => 'Adding ingredients to list...';

  @override
  String get organizingMenu => 'Organizing your menu...';

  @override
  String get loadingMenu => 'Loading your menu...';

  @override
  String get updatingMenu => 'Updating menu...';

  @override
  String get searchingCategories => 'Searching categories...';

  @override
  String get categorizingItems => 'Categorizing items...';

  @override
  String get generatingShareLink => 'Generating share link...';

  @override
  String get searchingSharedList => 'Searching shared list...';

  @override
  String get loadingProfile => 'Loading your profile...';

  @override
  String get savingPreferences => 'Saving your preferences...';

  @override
  String get checkingSettings => 'Checking your settings...';

  @override
  String get generatingContent => 'Generating personalized content...';

  @override
  String get searchingProducts => 'Searching products...';

  @override
  String get estimatingPrices => 'Estimating prices...';

  @override
  String get processing => 'Processing...';

  @override
  String get shoppingList => 'Shopping List';

  @override
  String get purchasedSuffix => ' [Purchased]';

  @override
  String get listUnarchived => 'List unarchived successfully.';

  @override
  String get toolDeleteList => 'Delete list';

  @override
  String get toolAddItems => 'Add items';

  @override
  String get toolRemoveItems => 'Remove items';

  @override
  String get toolAddToPantry => 'Add to pantry';

  @override
  String get toolRemoveFromPantry => 'Remove from pantry';

  @override
  String get toolShareList => 'Share list';

  @override
  String get toolSaveRecipe => 'Save recipe';

  @override
  String get toolDeleteRecipe => 'Delete recipe';

  @override
  String get toolRemoveMeal => 'Remove meal';

  @override
  String get toolSavePreference => 'Save preference';

  @override
  String get toolRemovePreference => 'Remove preference';

  @override
  String currentTheme(Object mode) {
    return 'Current theme: $mode';
  }

  @override
  String themeChanged(Object mode) {
    return 'Theme changed to $mode.';
  }

  @override
  String get addToList => 'Add to List';

  @override
  String errorAddingItem(Object error) {
    return 'Error adding item: $error';
  }

  @override
  String errorAddingBatch(Object error) {
    return 'Error adding items in batch: $error';
  }

  @override
  String errorTogglingItem(Object error) {
    return 'Error toggling item status: $error';
  }

  @override
  String errorRemovingItem(Object error) {
    return 'Error removing item: $error';
  }

  @override
  String errorUpdatingItem(Object error) {
    return 'Error updating item: $error';
  }

  @override
  String errorUpdatingItems(Object error) {
    return 'Error updating items: $error';
  }

  @override
  String errorRestoringItem(Object error) {
    return 'Error restoring item: $error';
  }

  @override
  String errorIncreasingQty(Object error) {
    return 'Error increasing quantity: $error';
  }

  @override
  String errorDecreasingQty(Object error) {
    return 'Error decreasing quantity: $error';
  }

  @override
  String errorClearingList(Object error) {
    return 'Error clearing list: $error';
  }

  @override
  String errorClearingPurchased(Object error) {
    return 'Error clearing purchased items: $error';
  }

  @override
  String errorRemovingItems(Object error) {
    return 'Error removing items: $error';
  }

  @override
  String errorTogglingItems(Object error) {
    return 'Error toggling items: $error';
  }

  @override
  String errorReordering(Object error) {
    return 'Error reordering item: $error';
  }

  @override
  String get errorCreatingList => 'Error creating list';

  @override
  String errorServerConnection(Object error) {
    return 'Error connecting to server: $error';
  }

  @override
  String errorUpdatingList(Object error) {
    return 'Error updating list: $error';
  }

  @override
  String errorDeletingList(Object error) {
    return 'Error deleting list: $error';
  }

  @override
  String errorRemovingSharedList(Object error) {
    return 'Error removing shared list: $error';
  }

  @override
  String errorSettingCurrentList(Object error) {
    return 'Error setting current list: $error';
  }

  @override
  String errorArchivingList(Object error) {
    return 'Error archiving list: $error';
  }

  @override
  String errorUnarchivingList(Object error) {
    return 'Error unarchiving list: $error';
  }

  @override
  String get errorUserNotAuthenticated => 'User not authenticated.';

  @override
  String get errorGeneratingCode => 'Error generating unique code. Try again.';

  @override
  String pantryLimitReached(Object count) {
    return 'Limit of $count items in pantry on the free plan. Upgrade to add more.';
  }

  @override
  String errorImportingList(Object name, Object error) {
    return 'Error importing list \"$name\": $error';
  }

  @override
  String errorExecutingTool(Object tool, Object error) {
    return 'Error executing $tool: $error';
  }

  @override
  String get errorProcessingRequest =>
      'Sorry, an error occurred while processing your request. Check your connection or try again later.';

  @override
  String get couldNotProcess => 'Could not process after multiple attempts.';

  @override
  String get errorResumingProcessing => 'Error resuming processing.';

  @override
  String get errorResumingLoop => '[ResumeLoop] Error resuming loop';

  @override
  String get othersCategory => 'Others';

  @override
  String get monthJanuary => 'January';

  @override
  String get monthFebruary => 'February';

  @override
  String get monthMarch => 'March';

  @override
  String get monthApril => 'April';

  @override
  String get monthMay => 'May';

  @override
  String get monthJune => 'June';

  @override
  String get monthJuly => 'July';

  @override
  String get monthAugust => 'August';

  @override
  String get monthSeptember => 'September';

  @override
  String get monthOctober => 'October';

  @override
  String get monthNovember => 'November';

  @override
  String get monthDecember => 'December';

  @override
  String get dayMon => 'Mon';

  @override
  String get dayTue => 'Tue';

  @override
  String get dayWed => 'Wed';

  @override
  String get dayThu => 'Thu';

  @override
  String get dayFri => 'Fri';

  @override
  String get daySat => 'Sat';

  @override
  String get daySun => 'Sun';

  @override
  String get subscription => 'Subscription';

  @override
  String get kipiListProActive => 'KipiList Pro active';

  @override
  String get customizeAiAssistant => 'Customize AI Assistant';

  @override
  String get assistantHistory => 'Assistant History';

  @override
  String get assistantHistorySubtitle => 'View and search past conversations';

  @override
  String get customizeAssistant => 'Customize Assistant';

  @override
  String get assistantName => 'Assistant Name';

  @override
  String get chooseIcon => 'Choose an Icon:';

  @override
  String get backToToday => 'Terug naar vandaag';

  @override
  String get conversationHistoryTitle => 'Conversation History';

  @override
  String get noConversationsFound => 'No conversations found';

  @override
  String get newConversationDefaultTitle => 'New Conversation';

  @override
  String get unlockedBadges => 'Unlocked Badges';

  @override
  String get badgeBeginner => 'Beginner';

  @override
  String get badgeOrganized => 'Organized';

  @override
  String get badgeSavingMaster => 'Saving Master';

  @override
  String get badgeSuperPlanner => 'Super Planner';

  @override
  String get aiEnergyLow => 'You\'re almost out of energy!';

  @override
  String get aiUnlockUnlimited => 'Unlock unlimited AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    return 'Only $remaining free messages left today. Subscribe to Premium and stop worrying about limits.';
  }

  @override
  String get aiSubscribeUnlimited =>
      'Subscribe to Premium and use the AI chat as much as you want. No counting, no limits.';

  @override
  String get suggestedItems => 'Suggested Items';

  @override
  String get swapped => 'Swapped';

  @override
  String get newCategoryDialog => 'New Category';

  @override
  String get editCategoryDialog => 'Edit Category';

  @override
  String get categoryName => 'Name';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

  @override
  String get scanProductTitle => 'Scan Product';

  @override
  String get categoryColorLabel => 'Color:';

  @override
  String get categoryIconLabel => 'Icon:';

  @override
  String get product => 'Product';

  @override
  String get everythingReady => 'Everything ready!';

  @override
  String get youCompletedList => 'You completed your list.';

  @override
  String get allSet => 'All set!';

  @override
  String itemsCount(int purchased, int total) {
    return '$purchased of $total items';
  }

  @override
  String budgetLabel(String amount) {
    return 'Budget: $amount';
  }

  @override
  String totalLabel(String amount) {
    return 'Total: $amount';
  }

  @override
  String get quickSuggestions => 'Quick suggestions';

  @override
  String get saved => 'Saved';

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get editAssistantName => 'Edit Assistant Name';

  @override
  String get selectAssistantIcon => 'Select Assistant Icon';

  @override
  String itemAddedSnack(String name) {
    return '$name added';
  }

  @override
  String quantityWithUnit(String quantity, String unit) {
    return '$quantity $unit';
  }

  @override
  String quantityUnitWithPrice(String quantity, String unit, String price) {
    return '$quantity $unit • $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Your shopping list with artificial intelligence';

  @override
  String get onboardingLoginHeadline => 'Sign in in 1 second';

  @override
  String get onboardingLoginSubtitle =>
      'Your lists are saved and synced automatically';

  @override
  String get onboardingPersonalizationNameLabel => 'What can I call you?';

  @override
  String get onboardingPersonalizationNameHint => 'Your name (optional)';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'What do you organize most often?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Do you shop alone or with others?';

  @override
  String get onboardingCategoryGrocery => '🛒 Grocery';

  @override
  String get onboardingCategoryPharmacy => '💊 Pharmacy';

  @override
  String get onboardingCategoryRecipes => '🍽️ Recipes';

  @override
  String get onboardingCategoryHome => '🏠 Home';

  @override
  String get onboardingCategoryPet => '🐾 Pet';

  @override
  String get onboardingGroupSolo => '👤 Just me';

  @override
  String get onboardingGroupCouple => '👥 With someone';

  @override
  String get onboardingGroupFamily => '👨‍👩‍👧 Family';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hi $name! I see you organize $category 😊';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Hi! I see you organize $category 😊';
  }

  @override
  String get onboardingAiDemoOffer => 'Want me to build a list right now?';

  @override
  String get onboardingAiDemoYes => '✅ Yes, build it for me!';

  @override
  String get onboardingAiDemoChange => '🔄 Different category';

  @override
  String onboardingAiDemoReaction(int count) {
    return 'Done! I created $count items for you 🎉';
  }

  @override
  String get onboardingAiDemoContinue => 'Amazing! I want more →';

  @override
  String get onboardingCommitmentsTitle => 'What do you want to achieve?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Choose everything that applies to you';

  @override
  String get onboardingGoalSaveMoney => '💰 Spend less at the store';

  @override
  String get onboardingGoalNeverForget => '✅ Never forget an item';

  @override
  String get onboardingGoalFaster => '⚡ Shop faster';

  @override
  String get onboardingGoalFamily => '👨‍👩‍👧 Organize with family';

  @override
  String get onboardingGoalRecipes => '🍽️ Plan weekly recipes';

  @override
  String get onboardingGoalPantry => '📦 Track pantry stock';

  @override
  String get onboardingLoadingTitle => 'Building your plan...';

  @override
  String get onboardingLoadingStep1 => 'Analyzing your preferences...';

  @override
  String get onboardingLoadingStep2 => 'Setting up your personalized list...';

  @override
  String get onboardingLoadingStep3 => 'Your plan is ready! 🎉';

  @override
  String get onboardingLoadingStat1Label => 'Average rating';

  @override
  String get onboardingLoadingStat2Label => 'Lists created this week';

  @override
  String get onboardingLoadingStat3Label => 'Recommend the app';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, you\'re 7 days away from spending less on shopping';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, you\'re 7 days away from never forgetting an item again';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, you\'re 7 days away from shopping in half the time';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, you\'re 7 days away from organizing the whole family\'s shopping';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, you\'re 7 days away from planning your recipes automatically';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, you\'re 7 days away from full control of your pantry';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'You\'re 7 days away from spending less on shopping';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'You\'re 7 days away from never forgetting an item again';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'You\'re 7 days away from shopping in half the time';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'You\'re 7 days away from organizing the whole family\'s shopping';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'You\'re 7 days away from planning your recipes automatically';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'You\'re 7 days away from full control of your pantry';

  @override
  String get paywallTestimonial =>
      '\"I saved R\$180 in the first month by better organizing my shopping\"';

  @override
  String get paywallTestimonialAuthor => 'Ana R., São Paulo';

  @override
  String paywallTrialDisclaimer(int days) {
    return 'Cancel anytime · Charged after $days days';
  }

  @override
  String get paywallSkipNow => 'Not now';
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
  String get chatHintBlocked => 'Ontgrendel AI om te chatten';

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
  String get aiLimitAlmostReached => 'Bijna geen AI-berichten meer';

  @override
  String get unlockAi => 'Ontgrendel onbeperkte AI';

  @override
  String get aiTeaserFallback =>
      'Abonneer u op Premium om het volledige antwoord te ontgrendelen en onbeperkte AI-tips te krijgen voor uw boodschappen...';

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
  String get paywallFeaturesTitle => 'Alles wat je nodig hebt:';

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
  String shareReferralText(Object url) {
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
  String get manageCategoriesTitle => 'Beheer categorieën';

  @override
  String get sortAZ => 'A-Z';

  @override
  String get backToToday => 'Terug naar vandaag';
}
