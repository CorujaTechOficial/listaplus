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
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Valgt $count',
      one: 'Valgt $count',
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
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get aiTeaserFallback =>
      'Subscribe to Premium to unlock the full response and get unlimited AI tips for your shopping...';

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
  String shareReferralText(Object url) {
    return 'Jeg bruger KipiList til at organisere mine indkøb! Download via mit link, og vi får begge 7 dages Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Få 7 dages KipiList Premium!';
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
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Valgt $count',
      one: 'Valgt $count',
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
  String shareReferralText(Object url) {
    return 'Jeg bruger KipiList til at organisere mine indkøb! Download via mit link, og vi får begge 7 dages Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Få 7 dages KipiList Premium!';
}
