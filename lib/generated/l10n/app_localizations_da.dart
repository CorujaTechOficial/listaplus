// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Indkøbsliste';

  @override
  String get lists => 'Lister';

  @override
  String get pantry => 'Spisekammer';

  @override
  String get navChat => 'Snak';

  @override
  String get navRecipes => 'Opskrifter';

  @override
  String get navLists => 'Lister';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Annuller';

  @override
  String get save => 'Gem';

  @override
  String get create => 'Opret';

  @override
  String get add => 'Tilføj';

  @override
  String get remove => 'Fjern';

  @override
  String get delete => 'Slet';

  @override
  String get edit => 'Rediger';

  @override
  String get copy => 'Kopiér';

  @override
  String get next => 'Næste';

  @override
  String get retry => 'Prøv igen';

  @override
  String get regenerate => 'Regenerér';

  @override
  String get copiedToClipboard => 'Kopieret til udklipsholder';

  @override
  String get confirm => 'Bekræft';

  @override
  String get close => 'Luk';

  @override
  String get import => 'Importer';

  @override
  String get rename => 'Omdøb';

  @override
  String get upgrade => 'Opgrader';

  @override
  String get clear => 'Ryd';

  @override
  String error(String message) {
    return 'Fejl: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fejl: $message';
  }

  @override
  String get purchaseError => 'Fejl ved behandling af køb. Prøv igen.';

  @override
  String get restoreError => 'Fejl ved gendannelse af køb. Prøv igen.';

  @override
  String get loading => 'Indlæser...';

  @override
  String get fieldRequired => 'Påkrævet felt';

  @override
  String get addedFeedback => 'Tilføjet!';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Afslut indkøbstilstand';

  @override
  String get exit => 'Udgang';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Valgt $count',
      one: 'other $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Anslået';

  @override
  String get alreadyPurchased => 'Allerede købt';

  @override
  String get clearList => 'Ryd liste';

  @override
  String get clearPurchased => 'Ryd købte';

  @override
  String get share => 'Del';

  @override
  String get shareViaCode => 'Del via kode';

  @override
  String get importViaCode => 'Importer via kode';

  @override
  String get listAssistant => 'Assistent til liste';

  @override
  String get globalAssistant => 'Global assistent';

  @override
  String get becomePremium => 'Bliv Premium';

  @override
  String get manageSubscription => 'Administrer abonnement';

  @override
  String get completePurchase => 'Fuldfør køb';

  @override
  String get confirmClearList => 'Fjern alle varer?';

  @override
  String get shareListTitle => 'Del liste';

  @override
  String get shareThisCode => 'Del denne kode:';

  @override
  String get validForLimitedTime => 'Gyldig i begrænset tid';

  @override
  String get importListTitle => 'Importer liste';

  @override
  String get enterCodeHint => 'Indtast koden';

  @override
  String get confirmArchiveTitle => 'Fuldfør køb';

  @override
  String get confirmArchiveContent => 'Fuldfør dette køb og arkivér listen?';

  @override
  String get complete => 'Fuldfør';

  @override
  String get listArchived => 'Listen er arkiveret!';

  @override
  String listAdded(String listName) {
    return '$listName tilføjet!';
  }

  @override
  String get buy => 'Køb';

  @override
  String get unmark => 'Fjern markering';

  @override
  String confirmDeleteItems(int count) {
    return 'Fjern $count vare(r)?';
  }

  @override
  String get confirmDeleteTitle => 'Bekræft';

  @override
  String confirmContent(int count) {
    return 'Fjern $count vare(r)?';
  }

  @override
  String get archiveList => 'Arkivér liste';

  @override
  String get pantryAppBar => 'Spisekammer';

  @override
  String get generateShoppingList => 'Generér indkøbsliste';

  @override
  String get pantryEmpty => 'Tomt spisekammer';

  @override
  String get pantryEmptySubtitle => 'Tilføj produkter, du vil have derhjemme';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vare(r) skal købes';
  }

  @override
  String get noItemsToBuy => 'Ingen varer skal købes';

  @override
  String get newPantryList => 'Indkøb til spisekammer';

  @override
  String get newListTitle => 'Ny indkøbsliste';

  @override
  String itemsWillBeAdded(int count) {
    return '$count vare(r) vil blive tilføjet';
  }

  @override
  String get listNameLabel => 'Navn på liste';

  @override
  String listCreated(String name, int count) {
    return 'Listen \"$name\" oprettet med $count varer';
  }

  @override
  String get noTracking => 'Ingen sporing';

  @override
  String get markAsPurchased => 'Markér som købt';

  @override
  String editPantryItem(String name) {
    return 'Redigér $name';
  }

  @override
  String get idealQuantity => 'Ideel mængde';

  @override
  String get currentQuantity => 'Aktuel mængde';

  @override
  String get consumed => 'Forbrugt';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name genopfyldt til $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Fjern \"$name\" fra spisekammeret?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Redigér $name';
  }

  @override
  String get scanProductTitle => 'Scan produkt';

  @override
  String get positionBarcodeCenter => 'Placer stregkoden i midten';

  @override
  String get product => 'Produkt';

  @override
  String get settingsAppBar => 'Indstillinger';

  @override
  String get language => 'Sprog';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'engelsk';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get chooseLanguage => 'Vælg sprog';

  @override
  String get searchLanguage => 'Søg sprog...';

  @override
  String get currency => 'Valuta';

  @override
  String get chooseCurrency => 'Vælg Valuta';

  @override
  String get searchCurrency => 'Søg i valuta...';

  @override
  String get appearance => 'Udseende';

  @override
  String get light => 'Lys';

  @override
  String get system => 'System';

  @override
  String get dark => 'Mørk';

  @override
  String get themeColor => 'Temafarve';

  @override
  String get dynamicColors => 'Dynamiske farver';

  @override
  String get dynamicColorsSubtitle => 'Brug farver baseret på dit tapet';

  @override
  String get dynamicColorsEnabledWarning =>
      'Deaktiver dynamiske farver, for at temafarven træder i kraft';

  @override
  String get finance => 'Økonomi';

  @override
  String get monthlyBudgetNav => 'Månedligt budget';

  @override
  String get budgetSubtitle => 'Følg dine månedlige udgifter';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Eksportér eller importer dine data';

  @override
  String get about => 'Om';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Privatliv';

  @override
  String get termsOfUse => 'Brugsvilkår';

  @override
  String get myAchievements => 'Mine præstationer';

  @override
  String get itemsPurchased => 'Varer købt';

  @override
  String get totalSavings => 'Samlet besparelse';

  @override
  String get currentStreak => 'Nuværende streak';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dage',
      one: '$count dag',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Ulåste badges';

  @override
  String get badgeBeginner => 'Nybegynder';

  @override
  String get badgeOrganized => 'Organiseret';

  @override
  String get badgeSavingMaster => 'Redningsmester';

  @override
  String get badgeSuperPlanner => 'Super planlægger';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup og eksport er en Premium-funktion';

  @override
  String get exportData => 'Eksportér data';

  @override
  String get exportDataSubtitle => 'Gem alle lister som JSON';

  @override
  String get importData => 'Importer data';

  @override
  String get importDataSubtitle => 'Gendan lister fra en JSON';

  @override
  String get importJsonTitle => 'Importer JSON';

  @override
  String get importJsonHint => 'Indsæt backup-JSON her...';

  @override
  String get backupExported => 'Backup eksporteret!';

  @override
  String get budgetAppBar => 'Månedligt budget';

  @override
  String get budgetPremiumLocked => 'Globalt månedligt budget er Premium';

  @override
  String get budgetUpgradePrompt => 'Opgrader for at låse op';

  @override
  String get noBudgetDefined => 'Intet budget sat';

  @override
  String totalEstimated(String amount) {
    return 'Anslået i alt: $amount';
  }

  @override
  String get setBudgetButton => 'Sæt budget';

  @override
  String get budgetLists => 'Lister';

  @override
  String get budgetValueLabel => 'Beløb';

  @override
  String get setBudgetTitle => 'Månedligt budget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterPending => 'Afventende';

  @override
  String get filterPurchased => 'Købte';

  @override
  String get sortName => 'Navn';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Dato';

  @override
  String get sortManual => 'Manuelt';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased af $total elementer';
  }

  @override
  String progressBudget(String amount) {
    return 'Budget: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'I alt: $amount';
  }

  @override
  String get addItem => 'Tilføj vare';

  @override
  String get itemName => 'Varenavn';

  @override
  String get quantityShort => 'Ant';

  @override
  String get unit => 'Enhed';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Anslået pris';

  @override
  String get addItemPrice => 'Anslået pris';

  @override
  String get editItem => 'Redigér vare';

  @override
  String get quantityFull => 'Mængde';

  @override
  String get editItemPrice => 'Anslået pris';

  @override
  String get addToPantry => 'Tilføj til spisekammer';

  @override
  String addToPantryPrompt(String name) {
    return 'Tilføj \"$name\" til dit spisekammer?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktnavn';

  @override
  String get idealQty => 'Ideel ant';

  @override
  String get currentQty => 'Aktuel ant';

  @override
  String get trackStock => 'Følg lager';

  @override
  String get trackStockActive => 'Vises i indkøbsforslag';

  @override
  String get trackStockInactive => 'Genererer ikke indkøbsforslag';

  @override
  String get createListDialog => 'Opret liste';

  @override
  String get renameListDialog => 'Omdøb liste';

  @override
  String get listHistory => 'Listehistorik';

  @override
  String get myLists => 'Mine lister';

  @override
  String get viewActive => 'Se aktive';

  @override
  String get viewHistory => 'Se historik';

  @override
  String get noArchivedLists => 'Ingen arkiverede lister';

  @override
  String get noActiveLists => 'Ingen aktive lister';

  @override
  String completedOn(String date) {
    return 'Fuldført den $date';
  }

  @override
  String get sharedLabel => 'Delt';

  @override
  String get restore => 'Gendan';

  @override
  String get removeSharedTooltip => 'Fjern';

  @override
  String get deleteListTitle => 'Slet liste';

  @override
  String deleteListContent(String name) {
    return 'Er du sikker på, at du vil slette \"$name\"? Alle varer vil blive fjernet.';
  }

  @override
  String get removeSharedListTitle => 'Fjern delt liste';

  @override
  String removeSharedListContent(String name) {
    return 'Fjern \"$name\" fra dine lister? Den originale liste vil ikke blive påvirket.';
  }

  @override
  String get createNewList => 'Opret ny liste';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Få smarte forslag, opskrifter og personlige tips med vores AI-assistent.';

  @override
  String get generalAssistant => 'Generel assistent';

  @override
  String get newChat => 'Ny chat';

  @override
  String get noHistory => 'Ingen chathistorik';

  @override
  String get deleteSession => 'Slet chat';

  @override
  String get deleteSessionConfirm =>
      'Er du sikker på, at du vil slette denne chat? Beskederne vil blive permanent tabt.';

  @override
  String get clearHistory => 'Ryd historik';

  @override
  String get clearHistoryConfirm => 'Slet alle meddelelser i denne session?';

  @override
  String get chatHint => 'Skriv din besked...';

  @override
  String get chatHintBlocked => 'Lås AI op for at chatte';

  @override
  String chatError(String error) {
    return 'Fejl ved indlæsning af chat: $error';
  }

  @override
  String get aiAssistantTitle => 'AI assistent';

  @override
  String get closeSheet => 'Tæt';

  @override
  String get scanBarcodeTitle => 'Scan stregkode';

  @override
  String get listHelp => 'Hvordan kan jeg hjælpe med din liste?';

  @override
  String get generalHelp => 'Hvordan kan jeg hjælpe med din shopping i dag?';

  @override
  String get chatSubtitle =>
      'Spørg efter vareforslag, opskrifter eller sparetips.';

  @override
  String get aiError =>
      'Beklager, der opstod en fejl ved behandling af din anmodning. Tjek din forbindelse eller prøv igen senere.';

  @override
  String get aiLimitAlmostReached => 'Næsten ude af AI-meddelelser';

  @override
  String get unlockAi => 'Lås op for ubegrænset AI';

  @override
  String get aiTeaserFallback =>
      'Abonner på Premium for at låse op for det fulde svar og få ubegrænsede AI-tip til dine indkøb...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI-handlinger tilbage denne måned - opgrader for ubegrænset';
  }

  @override
  String get aiUsageExhausted =>
      'Månedlig AI-grænse nået. Opgrader til Pro for ubegrænset →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Log ind for at låse op\nfor Premium-funktioner';

  @override
  String get signInGoogle => 'Log ind med Google';

  @override
  String get signInApple => 'Log ind med Apple';

  @override
  String get continueAsGuest => 'Fortsæt som gæst';

  @override
  String get onboardingWelcomeTitle => 'Velkommen til KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Den smarteste måde at organisere din shopping på og spare penge.';

  @override
  String get onboardingSetupTitle => 'Tilpas din oplevelse';

  @override
  String get onboardingSetupDesc =>
      'Vælg, hvordan du vil have KipiList til at se ud og fungere for dig.';

  @override
  String get onboardingLoginTitle => 'Gem alt i skyen';

  @override
  String get onboardingLoginDesc =>
      'Dine data synkroniseres på tværs af alle dine enheder';

  @override
  String get onboardingShareTitle => 'Del med dem, du elsker';

  @override
  String get onboardingShareDesc =>
      'Synkroniser lister med familie og venner i realtid';

  @override
  String get onboardingPremiumTitle => 'Lås op for alle funktioner';

  @override
  String get onboardingPremiumSubtitle =>
      'Få mest muligt ud af dine indkøbslister';

  @override
  String get onboardingAnnualBadge => 'Bedste værdi';

  @override
  String get onboardingMonthlyLabel => 'Månedlig';

  @override
  String get onboardingAnnualLabel => 'Årlig';

  @override
  String get onboardingViewAllPlans => 'Se alle planer';

  @override
  String get onboardingSubscribeCta => 'Abonner';

  @override
  String get onboardingCancelAnytime =>
      'Annuller når som helst. Ingen forpligtelse.';

  @override
  String get onboardingContinueAsGuest => 'Fortsæt som gæst';

  @override
  String get onboardingRestore => 'Gendan';

  @override
  String get onboardingRestoreDesc =>
      'Har du allerede et abonnement? Tryk her for at gendanne den.';

  @override
  String get onboardingMaybeLater => 'Måske senere';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hej $name, organiser din shopping på den rigtige måde.';
  }

  @override
  String get onboardingSlide1Title => 'Smarte indkøbslister';

  @override
  String get onboardingSlide1Body =>
      'Opret og del lister med det samme. Kipi tilføjer automatisk elementer baseret på dine vaner.';

  @override
  String get onboardingSlide2Title => 'Mød Kipi';

  @override
  String get onboardingSlide2Body =>
      'Spørg hvad som helst – lav lister, find opskrifter, spor dit spisekammer, planlæg din uge.';

  @override
  String get onboardingSlide3Title => 'Pantry & Måltidsplanlægning';

  @override
  String get onboardingSlide3Body =>
      'Spor hvad du har, planlæg måltider og generer indkøbslister automatisk.';

  @override
  String get onboardingExit => 'Udgang';

  @override
  String get onboardingPersonalizationTitle => 'Lad os lære dig at kende';

  @override
  String get onboardingPersonalizationDesc =>
      'Vi bruger dette til at tilpasse dine forslag og gøre shopping smartere.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Hvad er din yndlingsmad?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'f.eks. Pizza, sushi, lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Fortsætte';

  @override
  String get onboardingPersonalizationSkip => 'Spring over for nu';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Fortæl os din yndlingsmad for at fortsætte';

  @override
  String get settingsDefaultScreen => 'Standard startskærm';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Vælg mellem indkøbsliste eller AI-chat';

  @override
  String get settingsScreenList => 'Indkøbsliste';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Log-in fejl: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError => 'Fejl ved indlæsning af tilbud. Prøv igen.';

  @override
  String get paywallPurchaseError => 'Kunne ikke gennemføre købet. Prøv igen.';

  @override
  String get paywallRestoreError =>
      'Der blev ikke fundet noget aktivt abonnement at gendanne.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAGE GRATIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count UGE GRATIS',
      one: '$count UGE GRATIS',
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
  String get paywallTrialTitle => 'Prøv gratis!';

  @override
  String get paywallTrialSubtitle =>
      'Annuller når som helst. Ingen afgift i dag.';

  @override
  String get paywallTrialCta => 'Start gratis prøveperiode';

  @override
  String get recipeAddToList => 'Tilføj til indkøbsliste';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 other$listName';
  }

  @override
  String get noListSelected => 'Ingen liste valgt. Åbn en liste først.';

  @override
  String get paywallFeaturesTitle => 'Alt hvad du behøver:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organiserer din liste automatisk';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Opret så mange lister, som du har brug for';

  @override
  String get paywallFeatureDescSharing => 'Shop sammen i realtid';

  @override
  String get paywallFeatureDescPantry => 'Spor hvad du har derhjemme';

  @override
  String get paywallFeatureDescBudget => 'Hold budgettet hver måned';

  @override
  String get paywallFeatureUnlimitedLists => 'Ubegrænsede lister';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Udgiftskontrol';

  @override
  String get paywallFeatureSharing => 'Deling';

  @override
  String get paywallBeforeAfterTitle => 'AI før og efter:';

  @override
  String get paywallLabelCommon => 'Fælles';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ris';

  @override
  String get paywallBeforeItem2 => 'sæbe';

  @override
  String get paywallBeforeItem3 => 'kød';

  @override
  String get paywallBeforeItem4 => 'brød';

  @override
  String get paywallAfterItem1 => 'Korn';

  @override
  String get paywallAfterItem2 => 'Rensning';

  @override
  String get paywallAfterItem3 => 'Kød';

  @override
  String get paywallAfterItem4 => 'Bageri';

  @override
  String get paywallTestimonialsTitle => 'Hvad vores brugere siger:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organiserer mine indkøb på få sekunder. Jeg sparer 20 min pr. markedsrejse.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Jeg har aldrig glemt et listeelement igen. AI-chatten er sensationel!';

  @override
  String get paywallSocialProof => '+2.400 familier bruger det';

  @override
  String get paywallCtaUnlock => 'Lås PRO op';

  @override
  String get paywallBestValue => 'BEDSTE VÆRDI';

  @override
  String get paywallMostPopular => 'MEST POPULÆR';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Sikker betaling';

  @override
  String get paywallSelectPlan => 'Vælg din plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SPAR $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Kun $price/måned';
  }

  @override
  String get paywallPackageAnnual => 'Årsplan';

  @override
  String get paywallPackageMonthly => 'Månedsplan';

  @override
  String get paywallPackageLifetime => 'Livstidsadgang';

  @override
  String get paywallCancelAnytime =>
      'Annuller når som helst. Ingen forpligtelse.';

  @override
  String paywallTrialInCard(int days) {
    return 'De første $days dage GRATIS';
  }

  @override
  String get paywallSecuredByStore =>
      'Sikret af Google Play · Annuller når som helst';

  @override
  String get paywallPolicy => 'Privatlivspolitik';

  @override
  String get paywallTerms => 'Vilkår for brug';

  @override
  String get paywallRestore => 'Gendan';

  @override
  String get paywallHeroHeadline => 'Kipi AI altid ved din side';

  @override
  String get paywallHeroSubtitle =>
      'Tilføj genstande, organiser lister og spar tid med kunstig intelligens i lommen';

  @override
  String get paywallBenefit1Desc =>
      'Tilføjer, organiserer og foreslår elementer 24/7';

  @override
  String get paywallBenefit2Desc => 'Ingen 3-liste grænse';

  @override
  String get paywallBenefit3Desc => 'Udgiftssporing og familielister';

  @override
  String get paywallPackageMonthlyDesc => 'Fuld fleksibilitet';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Start gratis - $days dage';
  }

  @override
  String get premiumUpgrade => 'Opgrader for at låse op';

  @override
  String get itemRemoved => 'Vare fjernet';

  @override
  String get undo => 'Fortryd';

  @override
  String get emptyListTitle => 'Din liste er tom';

  @override
  String get emptyListSubtitle => 'Tilføj varer for at komme i gang';

  @override
  String get noListFoundTitle => 'Ingen lister fundet';

  @override
  String get noListFoundSubtitle =>
      'Opret din første liste for at komme i gang';

  @override
  String get createFirstList => 'Opret første liste';

  @override
  String get listBudgetTitle => 'Listebudget';

  @override
  String get budgetAmountLabel => 'Budgetbeløb';

  @override
  String get removeBudget => 'Fjern';

  @override
  String get prefUnlimitedLists => 'Ubegrænsede lister';

  @override
  String get prefSharing => 'Del lister';

  @override
  String get prefFullHistory => 'Fuld historik';

  @override
  String get prefExportData => 'Eksportér data';

  @override
  String get prefCustomThemes => 'Brugerdefinerede temaer';

  @override
  String get prefMonthlyBudget => 'Globalt månedligt budget';

  @override
  String get prefAIAssistant => 'Personlig AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Ubegrænset spisekammer';

  @override
  String get prefInteractiveArtifacts => 'Interaktive AI-artefakter';

  @override
  String get themeGreen => 'Grøn';

  @override
  String get themeBlue => 'Blå';

  @override
  String get themePurple => 'Lilla';

  @override
  String get themeRed => 'Rød';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Lyserød';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Rav';

  @override
  String get themeTeal => 'Krikand';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Frugt';

  @override
  String get catCleaning => 'Rengøring';

  @override
  String get catBeverages => 'Drikkevarer';

  @override
  String get catBakery => 'Bageri';

  @override
  String get catOthers => 'Andet';

  @override
  String get unitPack => 'pakke';

  @override
  String get shareSubject => 'Indkøbsliste';

  @override
  String get monthlyBudgetTitle => 'Månedligt budget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Slet liste';

  @override
  String get pantryItemRemoved => 'Vare fjernet';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit varer skal købes',
      one: '$deficit vare skal købes',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Kurv i alt';

  @override
  String get restockLabel => 'Genopfyld';

  @override
  String get advancedFeatures => 'Avancerede funktioner';

  @override
  String get selectAll => 'Vælg alle';

  @override
  String get deselectAll => 'Fravælg alle';

  @override
  String get monthlyBudgetAppBar => 'Månedligt budget';

  @override
  String get budgetEditTitle => 'Månedligt budget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Vælg en liste for at se dashboardet.';

  @override
  String get spendingAnalysis => 'Forbrugsanalyse';

  @override
  String get noItemsToAnalyze => 'Ingen varer på listen at analysere.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markér varer som købt for at se analysen.';

  @override
  String get totalSpending => 'Samlet forbrug';

  @override
  String get spendingByCategory => 'Forbrug efter kategori';

  @override
  String get achievements => 'Resultater';

  @override
  String get exportPdfExcel => 'Eksportér PDF/Excel';

  @override
  String get exportPdf => 'Eksportér som PDF';

  @override
  String get exportExcel => 'Eksportér som Excel';

  @override
  String get organizingAi => 'ORGANISERER MED AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nej';

  @override
  String get shareListText => 'Min indkøbsliste';

  @override
  String get emptyListAddItems => 'Din liste er tom! Tilføj først varer. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Listen er magisk organiseret efter kategorier! ✨';

  @override
  String get shoppingMode => 'Indkøbstilstand';

  @override
  String get smartOrganization => 'Smart organisering';

  @override
  String get savings => 'Besparelser';

  @override
  String get shoppingModeHeader => 'INDKØBSTILSTAND';

  @override
  String get shareAsText => 'Send varer som formateret tekst';

  @override
  String get shareRealtime => 'Realtidssynkronisering med andre';

  @override
  String get quickRecipe => 'Hurtig opskrift';

  @override
  String get quickRecipePrompt => 'Foreslå opskrifter med varer fra min liste.';

  @override
  String get economyTips => 'Sparetips';

  @override
  String get economyTipsPrompt => 'Hvordan kan jeg spare penge på dette køb?';

  @override
  String get organizeAisles => 'Organisér efter gange';

  @override
  String get organizeAislesPrompt => 'Organisér efter butiksgange.';

  @override
  String get recipeSuggestion => 'Opskriftforslag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits tilbage';
  }

  @override
  String get addAllToList => 'Tilføj alle til listen';

  @override
  String get organizeByAisles => 'Organisér efter gange';

  @override
  String get voiceTranscriptionTooltip => 'Tale til tekst (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-stemmekommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-stemmekommando';

  @override
  String get voiceCommandContent =>
      'Tal naturligt for at administrere din liste!\n\nEksempler:\n• \'Tilføj brød, ost og skinke\'\n• \'Fjern vaskemiddel\'\n• \'Skift tema til blå\'\n\nDette er en eksklusiv funktion i KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Se planer';

  @override
  String get itemsAddedSuccess => 'Varer blev tilføjet til listen!';

  @override
  String get viewList => 'Se liste';

  @override
  String get feedbackTitle => 'Send feedback';

  @override
  String get feedbackPrompt => 'Hvad vil du gerne dele?';

  @override
  String get feedbackTypeBug => 'Rapporter fejl';

  @override
  String get feedbackTypeBugHint => 'Noget fungerer ikke';

  @override
  String get feedbackTypeSuggestion => 'Forslag';

  @override
  String get feedbackTypeSuggestionHint => 'Idé til at forbedre appen';

  @override
  String get feedbackTypeTranslation => 'Oversættelsesproblem';

  @override
  String get feedbackTypeTranslationHint => 'Forkert eller akavet oversættelse';

  @override
  String get feedbackTypeFeature => 'Funktionsanmodning';

  @override
  String get feedbackTypeFeatureHint => 'Funktion du gerne vil se';

  @override
  String get feedbackTypeOther => 'Andet';

  @override
  String get feedbackTypeOtherHint => 'Anden type feedback';

  @override
  String get feedbackHint => 'Beskriv din feedback i detaljer...';

  @override
  String get feedbackSend => 'Send feedback';

  @override
  String get feedbackSending => 'Sender...';

  @override
  String get feedbackThankYou => 'Tak!';

  @override
  String get feedbackThankYouMessage =>
      'Din feedback er modtaget og hjælper os med at forbedre KipiList for alle.';

  @override
  String get feedbackBack => 'Tilbage';

  @override
  String feedbackError(String error) {
    return 'Fejl ved afsendelse: $error';
  }

  @override
  String get feedbackRetry => 'Prøv igen';

  @override
  String get feedbackSettingsTitle => 'Send feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapporter fejl, foreslå forbedringer eller ret oversættelser';

  @override
  String get aiEnergy => 'AI energi';

  @override
  String get searchInConversation => 'Søg i samtale...';

  @override
  String get noMessagesFound => 'Ingen beskeder fundet';

  @override
  String get suggestedQuestions => 'Foreslåede spørgsmål:';

  @override
  String get shoppingAssistant => 'Indkøbsassistent';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased af $total købt';
  }

  @override
  String get estimatedCost => 'Anslået';

  @override
  String get viewItems => 'Se varer';

  @override
  String get noItemsInList => 'Ingen elementer på listen';

  @override
  String get longHistoryWarning =>
      'Lang historie: Assistenten fokuserer på de seneste beskeder for bedre ydeevne.';

  @override
  String get listening => 'Lytter...';

  @override
  String get addDirectToList => 'Tilføj direkte til listen';

  @override
  String get unlockFullResponse => 'Lås op for fuld respons';

  @override
  String get switchList => 'Skift liste';

  @override
  String get marketMode => 'Markedstilstand';

  @override
  String get backToChat => 'Tilbage til Chat';

  @override
  String get finishShopping => 'Afslut indkøb';

  @override
  String get welcomeAiAssistant => 'Velkommen til AI Assistant';

  @override
  String get createListToStartAi =>
      'Opret en indkøbsliste for at begynde at bruge smartchatten.';

  @override
  String get howCanIHelp => 'Hvordan kan jeg hjælpe?';

  @override
  String get chatSubtitleShort =>
      'Spørg om priser, opskrifter, organisation...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total købt';
  }

  @override
  String get quickReplies => 'Hurtige svar:';

  @override
  String get voiceProFeature =>
      'Avancerede stemmekommandoer er Pro. Aktiverer grundlæggende diktering...';

  @override
  String get viewPro => 'Se Pro';

  @override
  String get errorLoadingChat => 'Ups! Noget gik galt med at indlæse chatten.';

  @override
  String get errorLoadingChatSubtitle =>
      'Tjek din forbindelse, eller prøv igen senere.';

  @override
  String get errorOscillation =>
      'Dette kan forekomme på grund af netværksoscillationer eller midlertidig utilgængelighed. Prøv venligst igen.';

  @override
  String get activeListening => 'Aktiv lytning';

  @override
  String get whatToDoWithItem => 'Hvad vil du gerne med denne vare?';

  @override
  String get viewDetails => 'Se detaljer';

  @override
  String get openMenu => 'Åbn menu';

  @override
  String get viewRecipe => 'Vis opskrift';

  @override
  String get recipeCreated => 'Opskrift oprettet!';

  @override
  String get editRecipe => 'Rediger';

  @override
  String get deleteRecipe => 'Slet';

  @override
  String get deleteRecipeConfirm => 'Slet denne opskrift?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Er du sikker på, at du vil slette \"$recipeName\"? Denne handling kan ikke fortrydes.';
  }

  @override
  String get ingredients => 'Ingredienser';

  @override
  String get instructions => 'Instruktioner';

  @override
  String get prepTime => 'Tilberedningstid';

  @override
  String get recipeSaved => 'Opskrift gemt!';

  @override
  String get noRecipesSaved => 'Ingen opskrifter gemt';

  @override
  String get noRecipesSavedHint =>
      'Opret din første brugerdefinerede opskrift ved at trykke på knappen nedenfor.';

  @override
  String get myRecipes => 'Mine opskrifter';

  @override
  String get newRecipe => 'Ny opskrift';

  @override
  String get loadingRecipes => 'Indlæser dine opskrifter...';

  @override
  String get errorLoadingRecipes => 'Fejl ved indlæsning af opskrifter';

  @override
  String get addIngredient => 'Tilføj ingrediens';

  @override
  String get saveRecipe => 'Gem';

  @override
  String get recipeName => 'Navn på opskrift';

  @override
  String get shortDescription => 'Kort beskrivelse';

  @override
  String get prepTimeMinutes => 'Tilberedningstid (minutter)';

  @override
  String get instructionsHint => 'Skriv ét trin pr. linje...';

  @override
  String get addPhoto => 'Tilføj billede';

  @override
  String get imageUrlPlaceholder => 'Eller indsæt en billed-URL';

  @override
  String get tags => 'Tags';

  @override
  String get recipeTags => 'Tags til opskrift';

  @override
  String get suggestedTags => 'Forslag';

  @override
  String get searchRecipes => 'Søg i opskrifter...';

  @override
  String get filterByTag => 'Filtrer efter tag';

  @override
  String get allTags => 'Alle';

  @override
  String get recipeDeleted => 'Opskrift slettet';

  @override
  String get saveChanges => 'Gem ændringer';

  @override
  String get editRecipeTitle => 'Rediger opskrift';

  @override
  String get newRecipeTitle => 'Ny opskrift';

  @override
  String get requiredField => 'Påkrævet';

  @override
  String get chooseImageSource => 'Vælg billedkilde';

  @override
  String get gallery => 'Galleri';

  @override
  String get enterUrl => 'Indtast URL';

  @override
  String get recipeImage => 'Opskriftsbillede';

  @override
  String get removeImage => 'Fjern billede';

  @override
  String get mealPlannerTitle => 'Madplanlægger';

  @override
  String get mealPlannerViewMonthly => 'Månedsvisning';

  @override
  String get mealPlannerViewWeekly => 'Ugevisning';

  @override
  String get mealPlannerNoMeals => 'Ingen måltider planlagt';

  @override
  String get mealPlannerNoMealsHint =>
      'Tryk på en dag for at tilføje et måltid';

  @override
  String get mealPlannerLoading => 'Indlæser madplan...';

  @override
  String get mealPlannerError => 'Fejl ved indlæsning af madplan';

  @override
  String get mealPlannerAddMeal => 'Tilføj måltid';

  @override
  String get mealPlannerEditMeal => 'Rediger måltid';

  @override
  String get mealPlannerDeleteMeal => 'Fjern måltid';

  @override
  String get mealPlannerMealDeleted => 'Måltid fjernet';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count portioner',
      one: '$count portion',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Portioner';

  @override
  String get mealPlannerNoteLabel => 'Note (valgfrit)';

  @override
  String get mealPlannerSelectRecipe => 'Vælg en opskrift';

  @override
  String get mealPlannerSearchRecipes => 'Søg i opskrifter...';

  @override
  String get mealPlannerNoRecipesFound => 'Ingen opskrifter fundet';

  @override
  String get mealPlannerNoRecipesHint =>
      'Opret opskrifter i fanen Opskrifter først';

  @override
  String get mealPlannerSave => 'Tilføj til plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count af $total måltider planlagt';
  }

  @override
  String get mealPlannerGenerateList => 'Generer indkøbsliste';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Tilføj alle ingredienser fra planlagte måltider i denne uge til din indkøbsliste?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediens(er) tilføjet til din liste!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Ingen ingredienser at tilføje. Planlæg nogle måltider med opskrifter først.';

  @override
  String get mealPlannerGenerateListNoList => 'Opret en indkøbsliste først.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Morgenmad';

  @override
  String get mealPlannerMealTypeLunch => 'Frokost';

  @override
  String get mealPlannerMealTypeDinner => 'Aftensmad';

  @override
  String get mealPlannerMealTypeSnack => 'Mellemmåltid';

  @override
  String get mealPlannerDateLabel => 'Dato';

  @override
  String get mealPlannerWeekEmpty => 'Intet planlagt for denne uge';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tryk på en vilkårlig dag for at begynde at planlægge dine måltider!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Inviter til liste';

  @override
  String get shareApp => 'Del app';

  @override
  String get shareAppDescription => 'Inviter venner til at bruge KipiList';

  @override
  String shareReferralText(String url) {
    return 'Jeg bruger KipiList til at organisere mine indkøb! Download via mit link, og vi får begge 7 dages Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Få 7 dages KipiList Premium!';

  @override
  String get gestureHint => 'Hold nede for at vælge • Stryg for at fjerne';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Mine hyppige';

  @override
  String get catalogSearchGlobal => 'Søg efter ethvert produkt...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Søg i $category...';
  }

  @override
  String get catalogSortPopular => 'Mest populær';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nationale';

  @override
  String get catalogRareSection => 'mindre almindelig i dit land';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Tilføj $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Produktet blev ikke fundet. Indtast navnet';

  @override
  String get catalogBrowse => 'Gennemse kataloget';

  @override
  String get offlineBanner => 'Du er offline';

  @override
  String get consentTitle => 'Privatliv og analyse';

  @override
  String get consentBody =>
      'KipiList bruger Firebase Analytics til at forbedre din oplevelse. Dine data behandles i henhold til vores privatlivspolitik.';

  @override
  String get consentAccept => 'Acceptere';

  @override
  String get consentDecline => 'Nej tak';

  @override
  String get mealPlannerPantryAllAvailable => 'Alle ingredienser til rådighed';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 mangler';
  }

  @override
  String get expirationDate => 'Udløbsdato';

  @override
  String get notInformed => 'Ikke indstillet';

  @override
  String get skip => 'Springe';

  @override
  String get onboardingAiTitle => 'Chat med Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hej! Jeg er Kipi, din personlige indkøbsassistent! 🛒';

  @override
  String get onboardingAiAskName => 'Hvad er dit navn?';

  @override
  String get onboardingAiNameHint => 'Skriv dit navn...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Dejligt at møde dig, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Hvad er din yndlingsmad?';

  @override
  String get onboardingAiFoodHint => 'f.eks. Pizza, sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Gode ​​valg! Her er, hvad jeg ville tilføje til din liste:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Ser det godt ud? Prøv at skrive noget andet!';

  @override
  String get onboardingAiReady =>
      'Stor! Du er klar til at starte. Lad os oprette din konto!';

  @override
  String get onboardingAiContinue => 'Fortsæt →';

  @override
  String get connectionError => 'Forbindelsesfejl';

  @override
  String connectionErrorDesc(String error) {
    return 'Fejl: $error';
  }

  @override
  String get errorLoadingLists => 'Fejl ved indlæsning af lister';

  @override
  String get noListsFound => 'Ingen lister fundet';

  @override
  String get backToToday => 'Tilbage til i dag';

  @override
  String get quickSuggestions => 'Hurtige forslag';

  @override
  String get aiEnergyLow => 'Lav AI-energi';

  @override
  String get aiUnlockUnlimited => 'Lås op for ubegrænset AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 i dag';
  }

  @override
  String get aiSubscribeUnlimited => 'Abonner på ubegrænset AI';

  @override
  String get unlockWithAd => 'Lås op med annonce';

  @override
  String get conversationHistoryTitle => 'Samtale historie';

  @override
  String get noConversationsFound => 'Ingen samtaler fundet';

  @override
  String get errorLoadingHistory => 'Fejl ved indlæsning af historik';

  @override
  String get deleteConversationTitle => 'Slet samtale';

  @override
  String get deleteConversationConfirm => 'Denne handling kan ikke fortrydes.';

  @override
  String get deleteConversation => 'Slet';

  @override
  String get subscription => 'Abonnement';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle => 'Lås Premium op';

  @override
  String get loadingSubscription => 'Indlæser abonnement...';

  @override
  String get errorLoadingSubscription => 'Fejl ved indlæsning af abonnement';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Min profil';

  @override
  String get profileSubtitle => 'Dine profiloplysninger';

  @override
  String get customizeAiAssistant => 'Tilpas AI-assistent';

  @override
  String get assistantHistory => 'Assistent historie';

  @override
  String get assistantHistorySubtitle => 'Se din samtalehistorik';

  @override
  String get manageCategories => 'Administrer kategorier';

  @override
  String get manageCategoriesSubtitle =>
      'Tilføj, rediger eller fjern kategorier';

  @override
  String get customizeAssistant => 'Tilpas';

  @override
  String get assistantName => 'Assistent navn';

  @override
  String get chooseIcon => 'Vælg ikon';

  @override
  String get profileSaved => 'Profil gemt';

  @override
  String get errorSavingProfile => 'Fejl ved lagring af profil';

  @override
  String get userProfile => 'Brugerprofil';

  @override
  String get profileDescription => 'Profilbeskrivelse';

  @override
  String get preferredMarket => 'Foretrukken marked';

  @override
  String get preferredMarketHint => 'Hvor plejer du at handle?';

  @override
  String get dietaryRestrictions => 'Kostrestriktioner';

  @override
  String get dietaryRestrictionsHint => 'Er der nogen diætrestriktioner?';

  @override
  String get marketsToAvoid => 'Markeder at undgå';

  @override
  String get marketsToAvoidHint => 'Markeder du helst ikke handler på';

  @override
  String get observations => 'Observationer';

  @override
  String get observationsHint => 'Nogen yderligere bemærkninger?';

  @override
  String get saveProfile => 'Gem profil';

  @override
  String get everythingReady => 'Alt er klar!';

  @override
  String get youCompletedList => 'Du har fuldført listen!';

  @override
  String get selectCheaperAlternative => 'Vælg et billigere alternativ';

  @override
  String get suggestedItems => 'Foreslåede varer';

  @override
  String get swapped => 'Byttet';

  @override
  String get swap => 'Byt';

  @override
  String get chooseThemeColor => 'Vælg temafarve';

  @override
  String get manageCategoriesTitle => 'Administrer kategorier';

  @override
  String get categoryLimitReached => 'Kategorigrænsen er nået';

  @override
  String get deleteCategoryTitle => 'Slet kategori';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Elementer i \"$category\" vil blive flyttet til \"Andre\".\nFortsætte?';
  }

  @override
  String get deleteCategory => 'Slet';

  @override
  String get newCategoryDialog => 'Ny kategori';

  @override
  String get editCategoryDialog => 'Rediger kategori';

  @override
  String get categoryName => 'Kategorinavn';

  @override
  String get categoryNameHint => 'Indtast kategorinavn';

  @override
  String get categoryColorLabel => 'Farve';

  @override
  String get categoryIconLabel => 'Ikon';

  @override
  String itemAddedSnack(String name) {
    return '$name tilføjet';
  }

  @override
  String get kipiQuickBarHint => 'Hvad skal du købe?';

  @override
  String replaceItem(String item) {
    return 'Erstat $item';
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
  String get onboardingHookHeadline => 'Glem aldrig en købmand igen';

  @override
  String get onboardingGoalSaveMoney => 'Spar penge';

  @override
  String get onboardingGoalNeverForget => 'Glem aldrig varer';

  @override
  String get onboardingGoalFaster => 'Shop hurtigere';

  @override
  String get onboardingGoalFamily => 'Organiser familieindkøb';

  @override
  String get onboardingGoalRecipes => 'Opdag opskrifter';

  @override
  String get onboardingGoalPantry => 'Spor pantry';

  @override
  String get onboardingCommitmentsTitle => 'Hvad betyder noget for dig?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Vælg dine mål for at personliggøre KipiList';

  @override
  String get onboardingCommitmentsCta => 'Lad os gå!';

  @override
  String get onboardingPersonalizationNameLabel => 'Dit navn';

  @override
  String get onboardingPersonalizationNameHint => 'Indtast dit navn';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Hvad handler du for?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Hvem handler du for?';

  @override
  String get onboardingCategoryGrocery => 'Dagligvarer';

  @override
  String get onboardingCategoryPharmacy => 'Apotek';

  @override
  String get onboardingCategoryRecipes => 'Opskrifter';

  @override
  String get onboardingCategoryHome => 'Hjem';

  @override
  String get onboardingCategoryPet => 'Kæledyr';

  @override
  String get onboardingGroupSolo => 'Bare mig';

  @override
  String get onboardingGroupCouple => 'Par';

  @override
  String get onboardingGroupFamily => 'Familie';

  @override
  String get onboardingLoadingTitle => 'Forbereder din oplevelse...';

  @override
  String get onboardingLoadingStep1 => 'Analyserer dine præferencer...';

  @override
  String get onboardingLoadingStep2 => 'Konfigurerer AI-assistent...';

  @override
  String get onboardingLoadingStep3 => 'Næsten klar...';

  @override
  String get onboardingLoadingStat1Label => 'Varer katalogiseret';

  @override
  String get onboardingLoadingStat2Label => 'Brugere hjalp';

  @override
  String get onboardingLoadingStat3Label => 'Minutter gemt';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, spar på hver tur!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, glem aldrig en vare!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, køb på den halve tid!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organiser familieindkøb!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, opdag nye opskrifter!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, spor dit spisekammer perfekt!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Spar på hver tur!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => 'Glem aldrig en vare!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Køb på halvdelen af ​​tiden!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Organiser familieindkøb!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Opdag nye opskrifter!';

  @override
  String get paywallGoalHeadlineNoNamePantry => 'Spor dit spisekammer perfekt!';

  @override
  String paywallPricePerDay(String price) {
    return 'Kun $price/dag - mindre end en kop kaffe';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Spring over for nu';

  @override
  String get paywallTestimonial =>
      'AI organiserer mine indkøb på få sekunder. Jeg sparer 20 min pr. tur.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Annuller når som helst · Gratis, indtil din prøveperiode slutter';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hej $name! Hvad $category har du brug for?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Hvad $category har du brug for?';
  }

  @override
  String get onboardingAiDemoYes => 'Ja!';

  @override
  String get onboardingAiDemoReaction => 'Pæn!';

  @override
  String get onboardingAiDemoChange => 'Skift element';

  @override
  String get onboardingAiDemoOffer => 'Prøv at skrive noget andet!';

  @override
  String get onboardingAiDemoContinue => 'Fortsætte';

  @override
  String get onboardingAiDemoSlideHeadline => 'Din indkøbsliste, nu med AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Se, hvordan Kipi bygger din fulde liste på få sekunder';

  @override
  String get onboardingAiDemoSlideCta => 'Jeg vil have det her! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Jeg er vært for en grillfest 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'Parat! Her er alt hvad du behøver:';

  @override
  String get onboardingAiDemoSlideDone => 'Komplet liste på få sekunder ✨';

  @override
  String get onboardingPainTitle => 'Hvad frustrerer dig mest?';

  @override
  String get onboardingPainSubtitle => 'Vær ærlig - vi ordner hver enkelt';

  @override
  String get onboardingPainCta => 'Ja, fix dette for mig →';

  @override
  String get onboardingPainForget => 'Jeg glemmer varer i butikken';

  @override
  String get onboardingPainFamily => 'Min familie ser aldrig listen';

  @override
  String get onboardingPainOverspend => 'Jeg går altid over budgettet';

  @override
  String get onboardingPainRepeat => 'En tur er aldrig nok';

  @override
  String get aiWelcomeContent =>
      'Hej! 👋 Jeg er **Kipi**, din personlige indkøbs- og opskriftsassistent!\n\nJeg er her for at hjælpe dig:\n🛒 **Organiser** dine indkøb automatisk efter kategorier\n💰 **Spor** dit budget og giv dig pengebesparende tips\n🍲 **Foreslå** lækre opskrifter med det du allerede har\n\nHvordan kan jeg hjælpe dig i dag? Du kan starte med at oprette din første liste!';

  @override
  String get aiWelcomeSuggestCreateList => 'Opret min første liste';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, hjælp mig med at lave min første indkøbsliste';

  @override
  String get aiWelcomeSuggestSave => 'Hvordan sparer man penge?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, hvordan kan du hjælpe mig med at spare penge på dagligvarer?';

  @override
  String get suggestionMilk => 'Mælk';

  @override
  String get suggestionBread => 'Brød';

  @override
  String get suggestionEggs => 'Æg';

  @override
  String get suggestionCoffee => 'Kaffe';

  @override
  String get suggestionRice => 'Ris';

  @override
  String get suggestionFruits => 'Frugter';
}

/// The translations for Danish, as used in Denmark (`da_DK`).
class AppLocalizationsDaDk extends AppLocalizationsDa {
  AppLocalizationsDaDk() : super('da_DK');

  @override
  String get appTitle => 'Indkøbsliste';

  @override
  String get lists => 'Lister';

  @override
  String get pantry => 'Spisekammer';

  @override
  String get navChat => 'Snak';

  @override
  String get navRecipes => 'Opskrifter';

  @override
  String get navLists => 'Lister';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Annuller';

  @override
  String get save => 'Gem';

  @override
  String get create => 'Opret';

  @override
  String get add => 'Tilføj';

  @override
  String get remove => 'Fjern';

  @override
  String get delete => 'Slet';

  @override
  String get edit => 'Rediger';

  @override
  String get copy => 'Kopiér';

  @override
  String get next => 'Næste';

  @override
  String get retry => 'Prøv igen';

  @override
  String get regenerate => 'Regenerér';

  @override
  String get copiedToClipboard => 'Kopieret til udklipsholder';

  @override
  String get confirm => 'Bekræft';

  @override
  String get close => 'Luk';

  @override
  String get import => 'Importer';

  @override
  String get rename => 'Omdøb';

  @override
  String get upgrade => 'Opgrader';

  @override
  String get clear => 'Ryd';

  @override
  String error(String message) {
    return 'Fejl: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fejl: $message';
  }

  @override
  String get purchaseError => 'Fejl ved behandling af køb. Prøv igen.';

  @override
  String get restoreError => 'Fejl ved gendannelse af køb. Prøv igen.';

  @override
  String get loading => 'Indlæser...';

  @override
  String get fieldRequired => 'Påkrævet felt';

  @override
  String get addedFeedback => 'Tilføjet!';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Afslut indkøbstilstand';

  @override
  String get exit => 'Udgang';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Valgt $count',
      one: 'other $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Anslået';

  @override
  String get alreadyPurchased => 'Allerede købt';

  @override
  String get clearList => 'Ryd liste';

  @override
  String get clearPurchased => 'Ryd købte';

  @override
  String get share => 'Del';

  @override
  String get shareViaCode => 'Del via kode';

  @override
  String get importViaCode => 'Importer via kode';

  @override
  String get listAssistant => 'Assistent til liste';

  @override
  String get globalAssistant => 'Global assistent';

  @override
  String get becomePremium => 'Bliv Premium';

  @override
  String get manageSubscription => 'Administrer abonnement';

  @override
  String get completePurchase => 'Fuldfør køb';

  @override
  String get confirmClearList => 'Fjern alle varer?';

  @override
  String get shareListTitle => 'Del liste';

  @override
  String get shareThisCode => 'Del denne kode:';

  @override
  String get validForLimitedTime => 'Gyldig i begrænset tid';

  @override
  String get importListTitle => 'Importer liste';

  @override
  String get enterCodeHint => 'Indtast koden';

  @override
  String get confirmArchiveTitle => 'Fuldfør køb';

  @override
  String get confirmArchiveContent => 'Fuldfør dette køb og arkivér listen?';

  @override
  String get complete => 'Fuldfør';

  @override
  String get listArchived => 'Listen er arkiveret!';

  @override
  String listAdded(String listName) {
    return '$listName tilføjet!';
  }

  @override
  String get buy => 'Køb';

  @override
  String get unmark => 'Fjern markering';

  @override
  String confirmDeleteItems(int count) {
    return 'Fjern $count vare(r)?';
  }

  @override
  String get confirmDeleteTitle => 'Bekræft';

  @override
  String confirmContent(int count) {
    return 'Fjern $count vare(r)?';
  }

  @override
  String get archiveList => 'Arkivér liste';

  @override
  String get pantryAppBar => 'Spisekammer';

  @override
  String get generateShoppingList => 'Generér indkøbsliste';

  @override
  String get pantryEmpty => 'Tomt spisekammer';

  @override
  String get pantryEmptySubtitle => 'Tilføj produkter, du vil have derhjemme';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vare(r) skal købes';
  }

  @override
  String get noItemsToBuy => 'Ingen varer skal købes';

  @override
  String get newPantryList => 'Indkøb til spisekammer';

  @override
  String get newListTitle => 'Ny indkøbsliste';

  @override
  String itemsWillBeAdded(int count) {
    return '$count vare(r) vil blive tilføjet';
  }

  @override
  String get listNameLabel => 'Navn på liste';

  @override
  String listCreated(String name, int count) {
    return 'Listen \"$name\" oprettet med $count varer';
  }

  @override
  String get noTracking => 'Ingen sporing';

  @override
  String get markAsPurchased => 'Markér som købt';

  @override
  String editPantryItem(String name) {
    return 'Redigér $name';
  }

  @override
  String get idealQuantity => 'Ideel mængde';

  @override
  String get currentQuantity => 'Aktuel mængde';

  @override
  String get consumed => 'Forbrugt';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name genopfyldt til $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Fjern \"$name\" fra spisekammeret?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Redigér $name';
  }

  @override
  String get scanProductTitle => 'Scan produkt';

  @override
  String get positionBarcodeCenter => 'Placer stregkoden i midten';

  @override
  String get product => 'Produkt';

  @override
  String get settingsAppBar => 'Indstillinger';

  @override
  String get language => 'Sprog';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'engelsk';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get chooseLanguage => 'Vælg sprog';

  @override
  String get searchLanguage => 'Søg sprog...';

  @override
  String get currency => 'Valuta';

  @override
  String get chooseCurrency => 'Vælg Valuta';

  @override
  String get searchCurrency => 'Søg i valuta...';

  @override
  String get appearance => 'Udseende';

  @override
  String get light => 'Lys';

  @override
  String get system => 'System';

  @override
  String get dark => 'Mørk';

  @override
  String get themeColor => 'Temafarve';

  @override
  String get dynamicColors => 'Dynamiske farver';

  @override
  String get dynamicColorsSubtitle => 'Brug farver baseret på dit tapet';

  @override
  String get dynamicColorsEnabledWarning =>
      'Deaktiver dynamiske farver, for at temafarven træder i kraft';

  @override
  String get finance => 'Økonomi';

  @override
  String get monthlyBudgetNav => 'Månedligt budget';

  @override
  String get budgetSubtitle => 'Følg dine månedlige udgifter';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Eksportér eller importer dine data';

  @override
  String get about => 'Om';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Privatliv';

  @override
  String get termsOfUse => 'Brugsvilkår';

  @override
  String get myAchievements => 'Mine præstationer';

  @override
  String get itemsPurchased => 'Varer købt';

  @override
  String get totalSavings => 'Samlet besparelse';

  @override
  String get currentStreak => 'Nuværende streak';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dage',
      one: '$count dag',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Ulåste badges';

  @override
  String get badgeBeginner => 'Nybegynder';

  @override
  String get badgeOrganized => 'Organiseret';

  @override
  String get badgeSavingMaster => 'Redningsmester';

  @override
  String get badgeSuperPlanner => 'Super planlægger';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup og eksport er en Premium-funktion';

  @override
  String get exportData => 'Eksportér data';

  @override
  String get exportDataSubtitle => 'Gem alle lister som JSON';

  @override
  String get importData => 'Importer data';

  @override
  String get importDataSubtitle => 'Gendan lister fra en JSON';

  @override
  String get importJsonTitle => 'Importer JSON';

  @override
  String get importJsonHint => 'Indsæt backup-JSON her...';

  @override
  String get backupExported => 'Backup eksporteret!';

  @override
  String get budgetAppBar => 'Månedligt budget';

  @override
  String get budgetPremiumLocked => 'Globalt månedligt budget er Premium';

  @override
  String get budgetUpgradePrompt => 'Opgrader for at låse op';

  @override
  String get noBudgetDefined => 'Intet budget sat';

  @override
  String totalEstimated(String amount) {
    return 'Anslået i alt: $amount';
  }

  @override
  String get setBudgetButton => 'Sæt budget';

  @override
  String get budgetLists => 'Lister';

  @override
  String get budgetValueLabel => 'Beløb';

  @override
  String get setBudgetTitle => 'Månedligt budget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterPending => 'Afventende';

  @override
  String get filterPurchased => 'Købte';

  @override
  String get sortName => 'Navn';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Dato';

  @override
  String get sortManual => 'Manuelt';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased af $total elementer';
  }

  @override
  String progressBudget(String amount) {
    return 'Budget: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'I alt: $amount';
  }

  @override
  String get addItem => 'Tilføj vare';

  @override
  String get itemName => 'Varenavn';

  @override
  String get quantityShort => 'Ant';

  @override
  String get unit => 'Enhed';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Anslået pris';

  @override
  String get addItemPrice => 'Anslået pris';

  @override
  String get editItem => 'Redigér vare';

  @override
  String get quantityFull => 'Mængde';

  @override
  String get editItemPrice => 'Anslået pris';

  @override
  String get addToPantry => 'Tilføj til spisekammer';

  @override
  String addToPantryPrompt(String name) {
    return 'Tilføj \"$name\" til dit spisekammer?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktnavn';

  @override
  String get idealQty => 'Ideel ant';

  @override
  String get currentQty => 'Aktuel ant';

  @override
  String get trackStock => 'Følg lager';

  @override
  String get trackStockActive => 'Vises i indkøbsforslag';

  @override
  String get trackStockInactive => 'Genererer ikke indkøbsforslag';

  @override
  String get createListDialog => 'Opret liste';

  @override
  String get renameListDialog => 'Omdøb liste';

  @override
  String get listHistory => 'Listehistorik';

  @override
  String get myLists => 'Mine lister';

  @override
  String get viewActive => 'Se aktive';

  @override
  String get viewHistory => 'Se historik';

  @override
  String get noArchivedLists => 'Ingen arkiverede lister';

  @override
  String get noActiveLists => 'Ingen aktive lister';

  @override
  String completedOn(String date) {
    return 'Fuldført den $date';
  }

  @override
  String get sharedLabel => 'Delt';

  @override
  String get restore => 'Gendan';

  @override
  String get removeSharedTooltip => 'Fjern';

  @override
  String get deleteListTitle => 'Slet liste';

  @override
  String deleteListContent(String name) {
    return 'Er du sikker på, at du vil slette \"$name\"? Alle varer vil blive fjernet.';
  }

  @override
  String get removeSharedListTitle => 'Fjern delt liste';

  @override
  String removeSharedListContent(String name) {
    return 'Fjern \"$name\" fra dine lister? Den originale liste vil ikke blive påvirket.';
  }

  @override
  String get createNewList => 'Opret ny liste';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Få smarte forslag, opskrifter og personlige tips med vores AI-assistent.';

  @override
  String get generalAssistant => 'Generel assistent';

  @override
  String get newChat => 'Ny chat';

  @override
  String get noHistory => 'Ingen chathistorik';

  @override
  String get deleteSession => 'Slet chat';

  @override
  String get deleteSessionConfirm =>
      'Er du sikker på, at du vil slette denne chat? Beskederne vil blive permanent tabt.';

  @override
  String get clearHistory => 'Ryd historik';

  @override
  String get clearHistoryConfirm => 'Slet alle meddelelser i denne session?';

  @override
  String get chatHint => 'Skriv din besked...';

  @override
  String get chatHintBlocked => 'Lås AI op for at chatte';

  @override
  String chatError(String error) {
    return 'Fejl ved indlæsning af chat: $error';
  }

  @override
  String get aiAssistantTitle => 'AI assistent';

  @override
  String get closeSheet => 'Tæt';

  @override
  String get scanBarcodeTitle => 'Scan stregkode';

  @override
  String get listHelp => 'Hvordan kan jeg hjælpe med din liste?';

  @override
  String get generalHelp => 'Hvordan kan jeg hjælpe med din shopping i dag?';

  @override
  String get chatSubtitle =>
      'Spørg efter vareforslag, opskrifter eller sparetips.';

  @override
  String get aiError =>
      'Beklager, der opstod en fejl ved behandling af din anmodning. Tjek din forbindelse eller prøv igen senere.';

  @override
  String get aiLimitAlmostReached => 'Næsten ude af AI-meddelelser';

  @override
  String get unlockAi => 'Lås op for ubegrænset AI';

  @override
  String get aiTeaserFallback =>
      'Abonner på Premium for at låse op for det fulde svar og få ubegrænsede AI-tip til dine indkøb...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI-handlinger tilbage denne måned - opgrader for ubegrænset';
  }

  @override
  String get aiUsageExhausted =>
      'Månedlig AI-grænse nået. Opgrader til Pro for ubegrænset →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Log ind for at låse op for Premium-funktioner';

  @override
  String get signInGoogle => 'Log ind med Google';

  @override
  String get signInApple => 'Log ind med Apple';

  @override
  String get continueAsGuest => 'Fortsæt som gæst';

  @override
  String get onboardingWelcomeTitle => 'Velkommen til KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Den smarteste måde at organisere din shopping på og spare penge.';

  @override
  String get onboardingSetupTitle => 'Tilpas din oplevelse';

  @override
  String get onboardingSetupDesc =>
      'Vælg, hvordan du vil have KipiList til at se ud og fungere for dig.';

  @override
  String get onboardingLoginTitle => 'Gem alt i skyen';

  @override
  String get onboardingLoginDesc =>
      'Dine data synkroniseres på tværs af alle dine enheder';

  @override
  String get onboardingShareTitle => 'Del med dem, du elsker';

  @override
  String get onboardingShareDesc =>
      'Synkroniser lister med familie og venner i realtid';

  @override
  String get onboardingPremiumTitle => 'Lås op for alle funktioner';

  @override
  String get onboardingPremiumSubtitle =>
      'Få mest muligt ud af dine indkøbslister';

  @override
  String get onboardingAnnualBadge => 'Bedste værdi';

  @override
  String get onboardingMonthlyLabel => 'Månedlig';

  @override
  String get onboardingAnnualLabel => 'Årlig';

  @override
  String get onboardingViewAllPlans => 'Se alle planer';

  @override
  String get onboardingSubscribeCta => 'Abonner';

  @override
  String get onboardingCancelAnytime =>
      'Annuller når som helst. Ingen forpligtelse.';

  @override
  String get onboardingContinueAsGuest => 'Fortsæt som gæst';

  @override
  String get onboardingRestore => 'Gendan';

  @override
  String get onboardingRestoreDesc =>
      'Har du allerede et abonnement? Tryk her for at gendanne den.';

  @override
  String get onboardingMaybeLater => 'Måske senere';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hej $name, organiser din shopping på den rigtige måde.';
  }

  @override
  String get onboardingSlide1Title => 'Smarte indkøbslister';

  @override
  String get onboardingSlide1Body =>
      'Opret og del lister med det samme. Kipi tilføjer automatisk elementer baseret på dine vaner.';

  @override
  String get onboardingSlide2Title => 'Mød Kipi';

  @override
  String get onboardingSlide2Body =>
      'Spørg hvad som helst – lav lister, find opskrifter, spor dit spisekammer, planlæg din uge.';

  @override
  String get onboardingSlide3Title => 'Pantry & Måltidsplanlægning';

  @override
  String get onboardingSlide3Body =>
      'Spor hvad du har, planlæg måltider og generer indkøbslister automatisk.';

  @override
  String get onboardingExit => 'Udgang';

  @override
  String get onboardingPersonalizationTitle => 'Lad os lære dig at kende';

  @override
  String get onboardingPersonalizationDesc =>
      'Vi bruger dette til at tilpasse dine forslag og gøre shopping smartere.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Hvad er din yndlingsmad?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'f.eks. Pizza, sushi, lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Fortsætte';

  @override
  String get onboardingPersonalizationSkip => 'Spring over for nu';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Fortæl os din yndlingsmad for at fortsætte';

  @override
  String get settingsDefaultScreen => 'Standard startskærm';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Vælg mellem indkøbsliste eller AI-chat';

  @override
  String get settingsScreenList => 'Indkøbsliste';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Log-in fejl: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError => 'Fejl ved indlæsning af tilbud. Prøv igen.';

  @override
  String get paywallPurchaseError => 'Kunne ikke gennemføre købet. Prøv igen.';

  @override
  String get paywallRestoreError =>
      'Der blev ikke fundet noget aktivt abonnement at gendanne.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAGE GRATIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count UGE GRATIS',
      one: '$count UGE GRATIS',
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
  String get paywallTrialTitle => 'Prøv gratis!';

  @override
  String get paywallTrialSubtitle =>
      'Annuller når som helst. Ingen afgift i dag.';

  @override
  String get paywallTrialCta => 'Start gratis prøveperiode';

  @override
  String get recipeAddToList => 'Tilføj til indkøbsliste';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 other$listName';
  }

  @override
  String get noListSelected => 'Ingen liste valgt. Åbn en liste først.';

  @override
  String get paywallFeaturesTitle => 'Alt hvad du behøver:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organiserer din liste automatisk';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Opret så mange lister, som du har brug for';

  @override
  String get paywallFeatureDescSharing => 'Shop sammen i realtid';

  @override
  String get paywallFeatureDescPantry => 'Spor hvad du har derhjemme';

  @override
  String get paywallFeatureDescBudget => 'Hold budgettet hver måned';

  @override
  String get paywallFeatureUnlimitedLists => 'Ubegrænsede lister';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Udgiftskontrol';

  @override
  String get paywallFeatureSharing => 'Deling';

  @override
  String get paywallBeforeAfterTitle => 'AI før og efter:';

  @override
  String get paywallLabelCommon => 'Fælles';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ris';

  @override
  String get paywallBeforeItem2 => 'sæbe';

  @override
  String get paywallBeforeItem3 => 'kød';

  @override
  String get paywallBeforeItem4 => 'brød';

  @override
  String get paywallAfterItem1 => 'Korn';

  @override
  String get paywallAfterItem2 => 'Rensning';

  @override
  String get paywallAfterItem3 => 'Kød';

  @override
  String get paywallAfterItem4 => 'Bageri';

  @override
  String get paywallTestimonialsTitle => 'Hvad vores brugere siger:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organiserer mine indkøb på få sekunder. Jeg sparer 20 min pr. markedsrejse.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Jeg har aldrig glemt et listeelement igen. AI-chatten er sensationel!';

  @override
  String get paywallSocialProof => '+2.400 familier bruger det';

  @override
  String get paywallCtaUnlock => 'Lås PRO op';

  @override
  String get paywallBestValue => 'BEDSTE VÆRDI';

  @override
  String get paywallMostPopular => 'MEST POPULÆR';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Sikker betaling';

  @override
  String get paywallSelectPlan => 'Vælg din plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SPAR $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Kun $price/måned';
  }

  @override
  String get paywallPackageAnnual => 'Årsplan';

  @override
  String get paywallPackageMonthly => 'Månedsplan';

  @override
  String get paywallPackageLifetime => 'Livstidsadgang';

  @override
  String get paywallCancelAnytime =>
      'Annuller når som helst. Ingen forpligtelse.';

  @override
  String paywallTrialInCard(int days) {
    return 'De første $days dage GRATIS';
  }

  @override
  String get paywallSecuredByStore =>
      'Sikret af Google Play · Annuller når som helst';

  @override
  String get paywallPolicy => 'Privatlivspolitik';

  @override
  String get paywallTerms => 'Vilkår for brug';

  @override
  String get paywallRestore => 'Gendan';

  @override
  String get paywallHeroHeadline => 'Kipi AI altid ved din side';

  @override
  String get paywallHeroSubtitle =>
      'Tilføj genstande, organiser lister og spar tid med kunstig intelligens i lommen';

  @override
  String get paywallBenefit1Desc =>
      'Tilføjer, organiserer og foreslår elementer 24/7';

  @override
  String get paywallBenefit2Desc => 'Ingen 3-liste grænse';

  @override
  String get paywallBenefit3Desc => 'Udgiftssporing og familielister';

  @override
  String get paywallPackageMonthlyDesc => 'Fuld fleksibilitet';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Start gratis - $days dage';
  }

  @override
  String get premiumUpgrade => 'Opgrader for at låse op';

  @override
  String get itemRemoved => 'Vare fjernet';

  @override
  String get undo => 'Fortryd';

  @override
  String get emptyListTitle => 'Din liste er tom';

  @override
  String get emptyListSubtitle => 'Tilføj varer for at komme i gang';

  @override
  String get noListFoundTitle => 'Ingen lister fundet';

  @override
  String get noListFoundSubtitle =>
      'Opret din første liste for at komme i gang';

  @override
  String get createFirstList => 'Opret første liste';

  @override
  String get listBudgetTitle => 'Listebudget';

  @override
  String get budgetAmountLabel => 'Budgetbeløb';

  @override
  String get removeBudget => 'Fjern';

  @override
  String get prefUnlimitedLists => 'Ubegrænsede lister';

  @override
  String get prefSharing => 'Del lister';

  @override
  String get prefFullHistory => 'Fuld historik';

  @override
  String get prefExportData => 'Eksportér data';

  @override
  String get prefCustomThemes => 'Brugerdefinerede temaer';

  @override
  String get prefMonthlyBudget => 'Globalt månedligt budget';

  @override
  String get prefAIAssistant => 'Personlig AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Ubegrænset spisekammer';

  @override
  String get prefInteractiveArtifacts => 'Interaktive AI-artefakter';

  @override
  String get themeGreen => 'Grøn';

  @override
  String get themeBlue => 'Blå';

  @override
  String get themePurple => 'Lilla';

  @override
  String get themeRed => 'Rød';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Lyserød';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Rav';

  @override
  String get themeTeal => 'Krikand';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Frugt';

  @override
  String get catCleaning => 'Rengøring';

  @override
  String get catBeverages => 'Drikkevarer';

  @override
  String get catBakery => 'Bageri';

  @override
  String get catOthers => 'Andet';

  @override
  String get unitPack => 'pakke';

  @override
  String get shareSubject => 'Indkøbsliste';

  @override
  String get monthlyBudgetTitle => 'Månedligt budget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Slet liste';

  @override
  String get pantryItemRemoved => 'Vare fjernet';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit varer skal købes',
      one: '$deficit vare skal købes',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Kurv i alt';

  @override
  String get restockLabel => 'Genopfyld';

  @override
  String get advancedFeatures => 'Avancerede funktioner';

  @override
  String get selectAll => 'Vælg alle';

  @override
  String get deselectAll => 'Fravælg alle';

  @override
  String get monthlyBudgetAppBar => 'Månedligt budget';

  @override
  String get budgetEditTitle => 'Månedligt budget';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard => 'Vælg en liste for at se dashboardet.';

  @override
  String get spendingAnalysis => 'Forbrugsanalyse';

  @override
  String get noItemsToAnalyze => 'Ingen varer på listen at analysere.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markér varer som købt for at se analysen.';

  @override
  String get totalSpending => 'Samlet forbrug';

  @override
  String get spendingByCategory => 'Forbrug efter kategori';

  @override
  String get achievements => 'Resultater';

  @override
  String get exportPdfExcel => 'Eksportér PDF/Excel';

  @override
  String get exportPdf => 'Eksportér som PDF';

  @override
  String get exportExcel => 'Eksportér som Excel';

  @override
  String get organizingAi => 'ORGANISERER MED AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nej';

  @override
  String get shareListText => 'Min indkøbsliste';

  @override
  String get emptyListAddItems => 'Din liste er tom! Tilføj først varer. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Listen er magisk organiseret efter kategorier! ✨';

  @override
  String get shoppingMode => 'Indkøbstilstand';

  @override
  String get smartOrganization => 'Smart organisering';

  @override
  String get savings => 'Besparelser';

  @override
  String get shoppingModeHeader => 'INDKØBSTILSTAND';

  @override
  String get shareAsText => 'Send varer som formateret tekst';

  @override
  String get shareRealtime => 'Realtidssynkronisering med andre';

  @override
  String get quickRecipe => 'Hurtig opskrift';

  @override
  String get quickRecipePrompt => 'Foreslå opskrifter med varer fra min liste.';

  @override
  String get economyTips => 'Sparetips';

  @override
  String get economyTipsPrompt => 'Hvordan kan jeg spare penge på dette køb?';

  @override
  String get organizeAisles => 'Organisér efter gange';

  @override
  String get organizeAislesPrompt => 'Organisér efter butiksgange.';

  @override
  String get recipeSuggestion => 'Opskriftforslag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credits tilbage';
  }

  @override
  String get addAllToList => 'Tilføj alle til listen';

  @override
  String get organizeByAisles => 'Organisér efter gange';

  @override
  String get voiceTranscriptionTooltip => 'Tale til tekst (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-stemmekommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-stemmekommando';

  @override
  String get voiceCommandContent =>
      'Tal naturligt for at administrere din liste!\n\nEksempler:\n• \'Tilføj brød, ost og skinke\'\n• \'Fjern vaskemiddel\'\n• \'Skift tema til blå\'\n\nDette er en eksklusiv funktion i KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Se planer';

  @override
  String get itemsAddedSuccess => 'Varer blev tilføjet til listen!';

  @override
  String get viewList => 'Se liste';

  @override
  String get feedbackTitle => 'Send feedback';

  @override
  String get feedbackPrompt => 'Hvad vil du gerne dele?';

  @override
  String get feedbackTypeBug => 'Rapporter fejl';

  @override
  String get feedbackTypeBugHint => 'Noget fungerer ikke';

  @override
  String get feedbackTypeSuggestion => 'Forslag';

  @override
  String get feedbackTypeSuggestionHint => 'Idé til at forbedre appen';

  @override
  String get feedbackTypeTranslation => 'Oversættelsesproblem';

  @override
  String get feedbackTypeTranslationHint => 'Forkert eller akavet oversættelse';

  @override
  String get feedbackTypeFeature => 'Funktionsanmodning';

  @override
  String get feedbackTypeFeatureHint => 'Funktion du gerne vil se';

  @override
  String get feedbackTypeOther => 'Andet';

  @override
  String get feedbackTypeOtherHint => 'Anden type feedback';

  @override
  String get feedbackHint => 'Beskriv din feedback i detaljer...';

  @override
  String get feedbackSend => 'Send feedback';

  @override
  String get feedbackSending => 'Sender...';

  @override
  String get feedbackThankYou => 'Tak!';

  @override
  String get feedbackThankYouMessage =>
      'Din feedback er modtaget og hjælper os med at forbedre KipiList for alle.';

  @override
  String get feedbackBack => 'Tilbage';

  @override
  String feedbackError(String error) {
    return 'Fejl ved afsendelse: $error';
  }

  @override
  String get feedbackRetry => 'Prøv igen';

  @override
  String get feedbackSettingsTitle => 'Send feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapporter fejl, foreslå forbedringer eller ret oversættelser';

  @override
  String get aiEnergy => 'AI energi';

  @override
  String get searchInConversation => 'Søg i samtale...';

  @override
  String get noMessagesFound => 'Ingen beskeder fundet';

  @override
  String get suggestedQuestions => 'Foreslåede spørgsmål:';

  @override
  String get shoppingAssistant => 'Indkøbsassistent';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased af $total købt';
  }

  @override
  String get estimatedCost => 'Anslået';

  @override
  String get viewItems => 'Se varer';

  @override
  String get noItemsInList => 'Ingen elementer på listen';

  @override
  String get longHistoryWarning =>
      'Lang historie: Assistenten fokuserer på de seneste beskeder for bedre ydeevne.';

  @override
  String get listening => 'Lytter...';

  @override
  String get addDirectToList => 'Tilføj direkte til listen';

  @override
  String get unlockFullResponse => 'Lås op for fuld respons';

  @override
  String get switchList => 'Skift liste';

  @override
  String get marketMode => 'Markedstilstand';

  @override
  String get backToChat => 'Tilbage til Chat';

  @override
  String get finishShopping => 'Afslut indkøb';

  @override
  String get welcomeAiAssistant => 'Velkommen til AI Assistant';

  @override
  String get createListToStartAi =>
      'Opret en indkøbsliste for at begynde at bruge smartchatten.';

  @override
  String get howCanIHelp => 'Hvordan kan jeg hjælpe?';

  @override
  String get chatSubtitleShort =>
      'Spørg om priser, opskrifter, organisation...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total købt';
  }

  @override
  String get quickReplies => 'Hurtige svar:';

  @override
  String get voiceProFeature =>
      'Avancerede stemmekommandoer er Pro. Aktiverer grundlæggende diktering...';

  @override
  String get viewPro => 'Se Pro';

  @override
  String get errorLoadingChat => 'Ups! Noget gik galt med at indlæse chatten.';

  @override
  String get errorLoadingChatSubtitle =>
      'Tjek din forbindelse, eller prøv igen senere.';

  @override
  String get errorOscillation =>
      'Dette kan forekomme på grund af netværksoscillationer eller midlertidig utilgængelighed. Prøv venligst igen.';

  @override
  String get activeListening => 'Aktiv lytning';

  @override
  String get whatToDoWithItem => 'Hvad vil du gerne med denne vare?';

  @override
  String get viewDetails => 'Se detaljer';

  @override
  String get openMenu => 'Åbn menu';

  @override
  String get viewRecipe => 'Vis opskrift';

  @override
  String get recipeCreated => 'Opskrift oprettet!';

  @override
  String get editRecipe => 'Rediger';

  @override
  String get deleteRecipe => 'Slet';

  @override
  String get deleteRecipeConfirm => 'Slet denne opskrift?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Er du sikker på, at du vil slette \"$recipeName\"? Denne handling kan ikke fortrydes.';
  }

  @override
  String get ingredients => 'Ingredienser';

  @override
  String get instructions => 'Instruktioner';

  @override
  String get prepTime => 'Forberedelsestid';

  @override
  String get recipeSaved => 'Opskrift gemt!';

  @override
  String get noRecipesSaved => 'Ingen opskrifter gemt';

  @override
  String get noRecipesSavedHint =>
      'Opret din første tilpassede opskrift ved at trykke på knappen nedenfor.';

  @override
  String get myRecipes => 'Mine opskrifter';

  @override
  String get newRecipe => 'Ny opskrift';

  @override
  String get loadingRecipes => 'Indlæser dine opskrifter...';

  @override
  String get errorLoadingRecipes => 'Fejl ved indlæsning af opskrifter';

  @override
  String get addIngredient => 'Tilføj ingrediens';

  @override
  String get saveRecipe => 'Gem';

  @override
  String get recipeName => 'Navn på opskrift';

  @override
  String get shortDescription => 'Kort beskrivelse';

  @override
  String get prepTimeMinutes => 'Forberedelsestid (minutter)';

  @override
  String get instructionsHint => 'Skriv et trin pr. linje...';

  @override
  String get addPhoto => 'Tilføj foto';

  @override
  String get imageUrlPlaceholder => 'Indsæt billed-URL';

  @override
  String get tags => 'Mærker';

  @override
  String get recipeTags => 'Opskriftsmærker';

  @override
  String get suggestedTags => 'Foreslåede';

  @override
  String get searchRecipes => 'Søg i opskrifter...';

  @override
  String get filterByTag => 'Filtrer efter mærke';

  @override
  String get allTags => 'Alle';

  @override
  String get recipeDeleted => 'Opskrift slettet';

  @override
  String get saveChanges => 'Gem ændringer';

  @override
  String get editRecipeTitle => 'Rediger opskrift';

  @override
  String get newRecipeTitle => 'Ny opskrift';

  @override
  String get requiredField => 'Påkrævet';

  @override
  String get chooseImageSource => 'Vælg billedkilde';

  @override
  String get gallery => 'Galleri';

  @override
  String get enterUrl => 'Indtast URL';

  @override
  String get recipeImage => 'Opskriftsbillede';

  @override
  String get removeImage => 'Fjern billede';

  @override
  String get mealPlannerTitle => 'Madplan';

  @override
  String get mealPlannerViewMonthly => 'Månedsvisning';

  @override
  String get mealPlannerViewWeekly => 'Ugevisning';

  @override
  String get mealPlannerNoMeals => 'Ingen planlagte måltider';

  @override
  String get mealPlannerNoMealsHint =>
      'Tryk på en dag for at tilføje et måltid';

  @override
  String get mealPlannerLoading => 'Indlæser madplan...';

  @override
  String get mealPlannerError => 'Fejl ved indlæsning af madplan';

  @override
  String get mealPlannerAddMeal => 'Tilføj måltid';

  @override
  String get mealPlannerEditMeal => 'Rediger måltid';

  @override
  String get mealPlannerDeleteMeal => 'Fjern måltid';

  @override
  String get mealPlannerMealDeleted => 'Måltid fjernet';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count portioner',
      one: '$count portion',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Portioner';

  @override
  String get mealPlannerNoteLabel => 'Note (valgfrit)';

  @override
  String get mealPlannerSelectRecipe => 'Vælg en opskrift';

  @override
  String get mealPlannerSearchRecipes => 'Søg i opskrifter...';

  @override
  String get mealPlannerNoRecipesFound => 'Ingen opskrifter fundet';

  @override
  String get mealPlannerNoRecipesHint =>
      'Opret opskrifter i fanen Opskrifter først';

  @override
  String get mealPlannerSave => 'Tilføj til plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count af $total måltider planlagt';
  }

  @override
  String get mealPlannerGenerateList => 'Generer indkøbsliste';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Tilføj alle ingredienser fra planlagte måltider i denne uge til din indkøbsliste?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediens(er) føjet til din liste!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Ingen ingredienser at tilføje. Planlæg nogle måltider med opskrifter først.';

  @override
  String get mealPlannerGenerateListNoList => 'Opret en indkøbsliste først.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Morgenmad';

  @override
  String get mealPlannerMealTypeLunch => 'Frokost';

  @override
  String get mealPlannerMealTypeDinner => 'Aftensmad';

  @override
  String get mealPlannerMealTypeSnack => 'Mellemmåltid';

  @override
  String get mealPlannerDateLabel => 'Dato';

  @override
  String get mealPlannerWeekEmpty => 'Intet planlagt for denne uge';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tryk på en dag for at begynde at planlægge dine måltider!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Inviter til liste';

  @override
  String get shareApp => 'Del app';

  @override
  String get shareAppDescription => 'Inviter venner til at bruge KipiList';

  @override
  String shareReferralText(String url) {
    return 'Jeg bruger KipiList til at organisere mine indkøb! Download via mit link, og vi får begge 7 dages Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Få 7 dages KipiList Premium!';

  @override
  String get gestureHint => 'Hold nede for at vælge • Stryg for at fjerne';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Mine hyppige';

  @override
  String get catalogSearchGlobal => 'Søg efter ethvert produkt...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Søg i $category...';
  }

  @override
  String get catalogSortPopular => 'Mest populær';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nationale';

  @override
  String get catalogRareSection => 'mindre almindelig i dit land';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Tilføj $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Produktet blev ikke fundet. Indtast navnet';

  @override
  String get catalogBrowse => 'Gennemse kataloget';

  @override
  String get offlineBanner => 'Du er offline';

  @override
  String get consentTitle => 'Privatliv og analyse';

  @override
  String get consentBody =>
      'KipiList bruger Firebase Analytics til at forbedre din oplevelse. Dine data behandles i henhold til vores privatlivspolitik.';

  @override
  String get consentAccept => 'Acceptere';

  @override
  String get consentDecline => 'Nej tak';

  @override
  String get mealPlannerPantryAllAvailable => 'Alle ingredienser til rådighed';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 mangler';
  }

  @override
  String get expirationDate => 'Udløbsdato';

  @override
  String get notInformed => 'Ikke indstillet';

  @override
  String get skip => 'Springe';

  @override
  String get onboardingAiTitle => 'Chat med Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hej! Jeg er Kipi, din personlige indkøbsassistent! 🛒';

  @override
  String get onboardingAiAskName => 'Hvad er dit navn?';

  @override
  String get onboardingAiNameHint => 'Skriv dit navn...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Dejligt at møde dig, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Hvad er din yndlingsmad?';

  @override
  String get onboardingAiFoodHint => 'f.eks. Pizza, sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Gode ​​valg! Her er, hvad jeg ville tilføje til din liste:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Ser det godt ud? Prøv at skrive noget andet!';

  @override
  String get onboardingAiReady =>
      'Stor! Du er klar til at starte. Lad os oprette din konto!';

  @override
  String get onboardingAiContinue => 'Fortsæt →';

  @override
  String get connectionError => 'Forbindelsesfejl';

  @override
  String connectionErrorDesc(String error) {
    return 'Fejl: $error';
  }

  @override
  String get errorLoadingLists => 'Fejl ved indlæsning af lister';

  @override
  String get noListsFound => 'Ingen lister fundet';

  @override
  String get backToToday => 'Tilbage til i dag';

  @override
  String get quickSuggestions => 'Hurtige forslag';

  @override
  String get aiEnergyLow => 'Lav AI-energi';

  @override
  String get aiUnlockUnlimited => 'Lås op for ubegrænset AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 i dag';
  }

  @override
  String get aiSubscribeUnlimited => 'Abonner på ubegrænset AI';

  @override
  String get unlockWithAd => 'Lås op med annonce';

  @override
  String get conversationHistoryTitle => 'Samtale historie';

  @override
  String get noConversationsFound => 'Ingen samtaler fundet';

  @override
  String get errorLoadingHistory => 'Fejl ved indlæsning af historik';

  @override
  String get deleteConversationTitle => 'Slet samtale';

  @override
  String get deleteConversationConfirm => 'Denne handling kan ikke fortrydes.';

  @override
  String get deleteConversation => 'Slet';

  @override
  String get subscription => 'Abonnement';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle => 'Lås Premium op';

  @override
  String get loadingSubscription => 'Indlæser abonnement...';

  @override
  String get errorLoadingSubscription => 'Fejl ved indlæsning af abonnement';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Min profil';

  @override
  String get profileSubtitle => 'Dine profiloplysninger';

  @override
  String get customizeAiAssistant => 'Tilpas AI-assistent';

  @override
  String get assistantHistory => 'Assistent historie';

  @override
  String get assistantHistorySubtitle => 'Se din samtalehistorik';

  @override
  String get manageCategories => 'Administrer kategorier';

  @override
  String get manageCategoriesSubtitle =>
      'Tilføj, rediger eller fjern kategorier';

  @override
  String get customizeAssistant => 'Tilpas';

  @override
  String get assistantName => 'Assistent navn';

  @override
  String get chooseIcon => 'Vælg ikon';

  @override
  String get profileSaved => 'Profil gemt';

  @override
  String get errorSavingProfile => 'Fejl ved lagring af profil';

  @override
  String get userProfile => 'Brugerprofil';

  @override
  String get profileDescription => 'Profilbeskrivelse';

  @override
  String get preferredMarket => 'Foretrukken marked';

  @override
  String get preferredMarketHint => 'Hvor plejer du at handle?';

  @override
  String get dietaryRestrictions => 'Kostrestriktioner';

  @override
  String get dietaryRestrictionsHint => 'Er der nogen diætrestriktioner?';

  @override
  String get marketsToAvoid => 'Markeder at undgå';

  @override
  String get marketsToAvoidHint => 'Markeder du helst ikke handler på';

  @override
  String get observations => 'Observationer';

  @override
  String get observationsHint => 'Nogen yderligere bemærkninger?';

  @override
  String get saveProfile => 'Gem profil';

  @override
  String get everythingReady => 'Alt er klar!';

  @override
  String get youCompletedList => 'Du har fuldført listen!';

  @override
  String get selectCheaperAlternative => 'Vælg et billigere alternativ';

  @override
  String get suggestedItems => 'Foreslåede varer';

  @override
  String get swapped => 'Byttet';

  @override
  String get swap => 'Byt';

  @override
  String get chooseThemeColor => 'Vælg temafarve';

  @override
  String get manageCategoriesTitle => 'Administrer kategorier';

  @override
  String get categoryLimitReached => 'Kategorigrænsen er nået';

  @override
  String get deleteCategoryTitle => 'Slet kategori';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Elementer i \"$category\" vil blive flyttet til \"Andre\".\nFortsætte?';
  }

  @override
  String get deleteCategory => 'Slet';

  @override
  String get newCategoryDialog => 'Ny kategori';

  @override
  String get editCategoryDialog => 'Rediger kategori';

  @override
  String get categoryName => 'Kategorinavn';

  @override
  String get categoryNameHint => 'Indtast kategorinavn';

  @override
  String get categoryColorLabel => 'Farve';

  @override
  String get categoryIconLabel => 'Ikon';

  @override
  String itemAddedSnack(String name) {
    return '$name tilføjet';
  }

  @override
  String get kipiQuickBarHint => 'Hvad skal du købe?';

  @override
  String replaceItem(String item) {
    return 'Erstat $item';
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
  String get onboardingHookHeadline => 'Glem aldrig en købmand igen';

  @override
  String get onboardingGoalSaveMoney => 'Spar penge';

  @override
  String get onboardingGoalNeverForget => 'Glem aldrig varer';

  @override
  String get onboardingGoalFaster => 'Shop hurtigere';

  @override
  String get onboardingGoalFamily => 'Organiser familieindkøb';

  @override
  String get onboardingGoalRecipes => 'Opdag opskrifter';

  @override
  String get onboardingGoalPantry => 'Spor pantry';

  @override
  String get onboardingCommitmentsTitle => 'Hvad betyder noget for dig?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Vælg dine mål for at personliggøre KipiList';

  @override
  String get onboardingCommitmentsCta => 'Lad os gå!';

  @override
  String get onboardingPersonalizationNameLabel => 'Dit navn';

  @override
  String get onboardingPersonalizationNameHint => 'Indtast dit navn';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Hvad handler du for?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Hvem handler du for?';

  @override
  String get onboardingCategoryGrocery => 'Dagligvarer';

  @override
  String get onboardingCategoryPharmacy => 'Apotek';

  @override
  String get onboardingCategoryRecipes => 'Opskrifter';

  @override
  String get onboardingCategoryHome => 'Hjem';

  @override
  String get onboardingCategoryPet => 'Kæledyr';

  @override
  String get onboardingGroupSolo => 'Bare mig';

  @override
  String get onboardingGroupCouple => 'Par';

  @override
  String get onboardingGroupFamily => 'Familie';

  @override
  String get onboardingLoadingTitle => 'Forbereder din oplevelse...';

  @override
  String get onboardingLoadingStep1 => 'Analyserer dine præferencer...';

  @override
  String get onboardingLoadingStep2 => 'Konfigurerer AI-assistent...';

  @override
  String get onboardingLoadingStep3 => 'Næsten klar...';

  @override
  String get onboardingLoadingStat1Label => 'Varer katalogiseret';

  @override
  String get onboardingLoadingStat2Label => 'Brugere hjalp';

  @override
  String get onboardingLoadingStat3Label => 'Minutter gemt';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, spar på hver tur!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, glem aldrig en vare!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, køb på den halve tid!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organiser familieindkøb!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, opdag nye opskrifter!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, spor dit spisekammer perfekt!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Spar på hver tur!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget => 'Glem aldrig en vare!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Køb på halvdelen af ​​tiden!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Organiser familieindkøb!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Opdag nye opskrifter!';

  @override
  String get paywallGoalHeadlineNoNamePantry => 'Spor dit spisekammer perfekt!';

  @override
  String paywallPricePerDay(String price) {
    return 'Kun $price/dag - mindre end en kop kaffe';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Spring over for nu';

  @override
  String get paywallTestimonial =>
      'AI organiserer mine indkøb på få sekunder. Jeg sparer 20 min pr. tur.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Annuller når som helst · Gratis, indtil din prøveperiode slutter';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hej $name! Hvad $category har du brug for?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Hvad $category har du brug for?';
  }

  @override
  String get onboardingAiDemoYes => 'Ja!';

  @override
  String get onboardingAiDemoReaction => 'Pæn!';

  @override
  String get onboardingAiDemoChange => 'Skift element';

  @override
  String get onboardingAiDemoOffer => 'Prøv at skrive noget andet!';

  @override
  String get onboardingAiDemoContinue => 'Fortsætte';

  @override
  String get onboardingAiDemoSlideHeadline => 'Din indkøbsliste, nu med AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Se, hvordan Kipi bygger din fulde liste på få sekunder';

  @override
  String get onboardingAiDemoSlideCta => 'Jeg vil have det her! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Jeg er vært for en grillfest 🔥';

  @override
  String get onboardingAiDemoSlideReady => 'Parat! Her er alt hvad du behøver:';

  @override
  String get onboardingAiDemoSlideDone => 'Komplet liste på få sekunder ✨';

  @override
  String get onboardingPainTitle => 'Hvad frustrerer dig mest?';

  @override
  String get onboardingPainSubtitle => 'Vær ærlig - vi ordner hver enkelt';

  @override
  String get onboardingPainCta => 'Ja, fix dette for mig →';

  @override
  String get onboardingPainForget => 'Jeg glemmer varer i butikken';

  @override
  String get onboardingPainFamily => 'Min familie ser aldrig listen';

  @override
  String get onboardingPainOverspend => 'Jeg går altid over budgettet';

  @override
  String get onboardingPainRepeat => 'En tur er aldrig nok';

  @override
  String get aiWelcomeContent =>
      'Hej! 👋 Jeg er **Kipi**, din personlige indkøbs- og opskriftsassistent!\n\nJeg er her for at hjælpe dig:\n🛒 **Organiser** dine indkøb automatisk efter kategorier\n💰 **Spor** dit budget og giv dig pengebesparende tips\n🍲 **Foreslå** lækre opskrifter med det du allerede har\n\nHvordan kan jeg hjælpe dig i dag? Du kan starte med at oprette din første liste!';

  @override
  String get aiWelcomeSuggestCreateList => 'Opret min første liste';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, hjælp mig med at lave min første indkøbsliste';

  @override
  String get aiWelcomeSuggestSave => 'Hvordan sparer man penge?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, hvordan kan du hjælpe mig med at spare penge på dagligvarer?';

  @override
  String get suggestionMilk => 'Mælk';

  @override
  String get suggestionBread => 'Brød';

  @override
  String get suggestionEggs => 'Æg';

  @override
  String get suggestionCoffee => 'Kaffe';

  @override
  String get suggestionRice => 'Ris';

  @override
  String get suggestionFruits => 'Frugter';
}
