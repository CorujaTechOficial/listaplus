// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Inköpslista';

  @override
  String get lists => 'Listor';

  @override
  String get pantry => 'Skafferi';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Spara';

  @override
  String get create => 'Skapa';

  @override
  String get add => 'Lägg till';

  @override
  String get remove => 'Ta bort';

  @override
  String get delete => 'Radera';

  @override
  String get edit => 'Redigera';

  @override
  String get copy => 'Kopiera';

  @override
  String get next => 'Nästa';

  @override
  String get retry => 'Försök igen';

  @override
  String get regenerate => 'Återskapa';

  @override
  String get copiedToClipboard => 'Kopierat till urklipp';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get close => 'Stäng';

  @override
  String get import => 'Importera';

  @override
  String get rename => 'Byt namn';

  @override
  String get upgrade => 'Uppgradera';

  @override
  String get clear => 'Rensa';

  @override
  String error(String message) {
    return 'Fel: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fel: $message';
  }

  @override
  String get purchaseError => 'Fel vid behandling av köp. Försök igen.';

  @override
  String get restoreError => 'Fel vid återställning av köp. Försök igen.';

  @override
  String get loading => 'Laddar...';

  @override
  String get fieldRequired => 'Obligatoriskt fält';

  @override
  String get addedFeedback => 'Tillagd!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valda',
      one: '$count vald',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Beräknat';

  @override
  String get alreadyPurchased => 'Redan köpt';

  @override
  String get clearList => 'Rensa lista';

  @override
  String get clearPurchased => 'Rensa köpta';

  @override
  String get share => 'Dela';

  @override
  String get shareViaCode => 'Dela via kod';

  @override
  String get importViaCode => 'Importera via kod';

  @override
  String get listAssistant => 'Listassistent';

  @override
  String get globalAssistant => 'Global assistent';

  @override
  String get becomePremium => 'Bli Premium';

  @override
  String get manageSubscription => 'Hantera prenumeration';

  @override
  String get completePurchase => 'Slutför köp';

  @override
  String get confirmClearList => 'Ta bort alla varor?';

  @override
  String get shareListTitle => 'Dela Lista';

  @override
  String get shareThisCode => 'Dela denna kod:';

  @override
  String get validForLimitedTime => 'Gäller under begränsad tid';

  @override
  String get importListTitle => 'Importera Lista';

  @override
  String get enterCodeHint => 'Ange koden';

  @override
  String get confirmArchiveTitle => 'Slutför Köp';

  @override
  String get confirmArchiveContent => 'Slutför detta köp och arkivera listan?';

  @override
  String get complete => 'Slutför';

  @override
  String get listArchived => 'Listan arkiverades!';

  @override
  String listAdded(String listName) {
    return '$listName tillagd!';
  }

  @override
  String get buy => 'Köp';

  @override
  String get unmark => 'Avmarkera';

  @override
  String confirmDeleteItems(int count) {
    return 'Ta bort $count vara/varor?';
  }

  @override
  String get confirmDeleteTitle => 'Bekräfta';

  @override
  String confirmContent(int count) {
    return 'Ta bort $count vara/varor?';
  }

  @override
  String get archiveList => 'Arkivera lista';

  @override
  String get pantryAppBar => 'Skafferi';

  @override
  String get generateShoppingList => 'Generera inköpslista';

  @override
  String get pantryEmpty => 'Tomt skafferi';

  @override
  String get pantryEmptySubtitle => 'Lägg till produkter du vill ha hemma';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vara/varor måste köpas';
  }

  @override
  String get noItemsToBuy => 'Inga varor behöver köpas';

  @override
  String get newPantryList => 'Skafferihandling';

  @override
  String get newListTitle => 'Ny Inköpslista';

  @override
  String itemsWillBeAdded(int count) {
    return '$count vara/varor läggs till';
  }

  @override
  String get listNameLabel => 'Listnamn';

  @override
  String listCreated(String name, int count) {
    return 'Listan \"$name\" skapad med $count varor';
  }

  @override
  String get noTracking => 'Ingen spårning';

  @override
  String get markAsPurchased => 'Markera som köpt';

  @override
  String editPantryItem(String name) {
    return 'Redigera $name';
  }

  @override
  String get idealQuantity => 'Idealisk mängd';

  @override
  String get currentQuantity => 'Nuvarande mängd';

  @override
  String get consumed => 'Förbrukad';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name påfylld till $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Ta bort \"$name\" från skafferiet?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Redigera $name';
  }

  @override
  String get settingsAppBar => 'Inställningar';

  @override
  String get language => 'Språk';

  @override
  String get languagePortuguese => 'Português (Brasilien)';

  @override
  String get languageEnglish => 'engelska';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get chooseLanguage => 'Välj Språk';

  @override
  String get searchLanguage => 'Sök språk...';

  @override
  String get currency => 'Valuta';

  @override
  String get chooseCurrency => 'Välj Valuta';

  @override
  String get searchCurrency => 'Sök valuta...';

  @override
  String get appearance => 'Utseende';

  @override
  String get light => 'Ljust';

  @override
  String get system => 'System';

  @override
  String get dark => 'Mörkt';

  @override
  String get themeColor => 'Temafärg';

  @override
  String get dynamicColors => 'Dynamiska färger';

  @override
  String get dynamicColorsSubtitle => 'Använd färger baserat på din tapet';

  @override
  String get dynamicColorsEnabledWarning =>
      'Inaktivera dynamiska färger för att temafärgen ska träda i kraft';

  @override
  String get finance => 'Ekonomi';

  @override
  String get monthlyBudgetNav => 'Månadsbudget';

  @override
  String get budgetSubtitle => 'Följ dina månatliga utgifter';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Säkerhetskopiera';

  @override
  String get backupSubtitle => 'Exportera eller importera din data';

  @override
  String get about => 'Om';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Integritet';

  @override
  String get termsOfUse => 'Användarvillkor';

  @override
  String get backupTitle => 'Säkerhetskopiering';

  @override
  String get backupPremiumDescription =>
      'Säkerhetskopiering och export är en premiumfunktion';

  @override
  String get exportData => 'Exportera data';

  @override
  String get exportDataSubtitle => 'Spara alla listor som JSON';

  @override
  String get importData => 'Importera data';

  @override
  String get importDataSubtitle => 'Återställ listor från en JSON';

  @override
  String get importJsonTitle => 'Importera JSON';

  @override
  String get importJsonHint => 'Klistra in JSON för säkerhetskopian här...';

  @override
  String get backupExported => 'Säkerhetskopia exporterad!';

  @override
  String get budgetAppBar => 'Månadsbudget';

  @override
  String get budgetPremiumLocked => 'Global månadsbudget är premium';

  @override
  String get budgetUpgradePrompt => 'Uppgradera för att låsa upp';

  @override
  String get noBudgetDefined => 'Ingen budget angiven';

  @override
  String totalEstimated(String amount) {
    return 'Totalt beräknat: $amount';
  }

  @override
  String get setBudgetButton => 'Ange budget';

  @override
  String get budgetLists => 'Listor';

  @override
  String get budgetValueLabel => 'Belopp';

  @override
  String get setBudgetTitle => 'Månadsbudget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alla';

  @override
  String get filterPending => 'Väntande';

  @override
  String get filterPurchased => 'Köpta';

  @override
  String get sortName => 'Namn';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Manuell';

  @override
  String get addItem => 'Lägg till Vara';

  @override
  String get itemName => 'Varunamn';

  @override
  String get quantityShort => 'Ant';

  @override
  String get unit => 'Enhet';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Beräknat pris';

  @override
  String get addItemPrice => 'Beräknat pris';

  @override
  String get editItem => 'Redigera Vara';

  @override
  String get quantityFull => 'Kvantitet';

  @override
  String get editItemPrice => 'Beräknat pris';

  @override
  String get addToPantry => 'Lägg till i Skafferi';

  @override
  String addToPantryPrompt(String name) {
    return 'Lägg till \"$name\" i ditt skafferi?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktnamn';

  @override
  String get idealQty => 'Idealisk mängd';

  @override
  String get currentQty => 'Nuvarande mängd';

  @override
  String get trackStock => 'Spåra lager';

  @override
  String get trackStockActive => 'Visas i shoppingförslag';

  @override
  String get trackStockInactive => 'Genererar inget shoppingförslag';

  @override
  String get createListDialog => 'Skapa Lista';

  @override
  String get renameListDialog => 'Byt Namn på Lista';

  @override
  String get listHistory => 'Listhistorik';

  @override
  String get myLists => 'Mina Listor';

  @override
  String get viewActive => 'Visa Aktiva';

  @override
  String get viewHistory => 'Visa Historik';

  @override
  String get noArchivedLists => 'Inga arkiverade listor';

  @override
  String get noActiveLists => 'Inga aktiva listor';

  @override
  String completedOn(String date) {
    return 'Slutförd den $date';
  }

  @override
  String get sharedLabel => 'Delad';

  @override
  String get restore => 'Återställ';

  @override
  String get removeSharedTooltip => 'Ta bort';

  @override
  String get deleteListTitle => 'Radera lista';

  @override
  String deleteListContent(String name) {
    return 'Är du säker på att du vill radera \"$name\"? Alla varor kommer att tas bort.';
  }

  @override
  String get removeSharedListTitle => 'Ta bort delad lista';

  @override
  String removeSharedListContent(String name) {
    return 'Ta bort \"$name\" från dina listor? Originallistan påverkas inte.';
  }

  @override
  String get createNewList => 'Skapa ny lista';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Få smarta förslag, recept och personliga tips med vår AI-assistent.';

  @override
  String get generalAssistant => 'Allmän assistent';

  @override
  String get newChat => 'Ny chatt';

  @override
  String get noHistory => 'Ingen chatthistorik';

  @override
  String get deleteSession => 'Ta bort chatt';

  @override
  String get deleteSessionConfirm =>
      'Är du säker på att du vill ta bort den här chatten? Meddelanden kommer att försvinna permanent.';

  @override
  String get clearHistory => 'Rensa Historik';

  @override
  String get clearHistoryConfirm => 'Rensa alla meddelanden i denna session?';

  @override
  String get chatHint => 'Skriv ditt meddelande...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Fel vid laddning av chatt: $error';
  }

  @override
  String get listHelp => 'Hur kan jag hjälpa dig med din lista?';

  @override
  String get generalHelp => 'Hur kan jag hjälpa dig med din shopping idag?';

  @override
  String get chatSubtitle => 'Be om varuförslag, recept eller spartips.';

  @override
  String get aiError =>
      'Tyvärr, ett fel uppstod vid behandlingen av din förfrågan. Kontrollera din anslutning eller försök igen senare.';

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
  String get loginPrompt => 'Logga in för att låsa upp\npremiumfunktioner';

  @override
  String get signInGoogle => 'Logga in med Google';

  @override
  String get signInApple => 'Logga in med Apple';

  @override
  String get continueAsGuest => 'Fortsätt som gäst';

  @override
  String get onboardingWelcomeTitle => 'Välkommen till KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Det smartaste sättet att organisera din shopping och spara pengar.';

  @override
  String get onboardingSetupTitle => 'Anpassa din upplevelse';

  @override
  String get onboardingSetupDesc =>
      'Välj hur du vill att KipiList ska se ut och fungera för dig.';

  @override
  String get onboardingLoginTitle => 'Spara allt till molnet';

  @override
  String get onboardingLoginDesc =>
      'Din data synkroniseras över alla dina enheter';

  @override
  String get onboardingShareTitle => 'Dela med dem du älskar';

  @override
  String get onboardingShareDesc =>
      'Synkronisera listor med familj och vänner i realtid';

  @override
  String get onboardingPremiumTitle => 'Lås upp alla funktioner';

  @override
  String get onboardingPremiumSubtitle =>
      'Få ut det mesta av dina inköpslistor';

  @override
  String get onboardingAnnualBadge => 'Bästa värde';

  @override
  String get onboardingMonthlyLabel => 'Månatlig';

  @override
  String get onboardingAnnualLabel => 'Årlig';

  @override
  String get onboardingViewAllPlans => 'Se alla planer';

  @override
  String get onboardingSubscribeCta => 'Prenumerera';

  @override
  String get onboardingCancelAnytime => 'Avbryt när som helst. Inget åtagande.';

  @override
  String get onboardingContinueAsGuest => 'Fortsätt som gäst';

  @override
  String get onboardingRestore => 'Återställ inköp';

  @override
  String get onboardingRestoreDesc =>
      'Har du redan ett abonnemang? Tryck här för att återställa den.';

  @override
  String get onboardingExit => 'Utgång';

  @override
  String get onboardingPersonalizationTitle => 'Låt oss lära känna dig';

  @override
  String get onboardingPersonalizationDesc =>
      'Vi kommer att använda detta för att anpassa dina förslag och göra shopping smartare.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Vilken är din favoritmat?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'till exempel Pizza, sushi, lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Fortsätta';

  @override
  String get onboardingPersonalizationSkip => 'Hoppa över nu';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Berätta för oss din favoritmat för att fortsätta';

  @override
  String get settingsDefaultScreen => 'Standard startskärm';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Välj mellan inköpslista eller AI-chatt';

  @override
  String get settingsScreenList => 'Inköpslista';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Inloggningsfel: $error';
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
  String get paywallSocialProof => '+2,400 families use it';

  @override
  String get paywallCtaUnlock => 'Unlock PRO';

  @override
  String get paywallBestValue => 'BEST VALUE';

  @override
  String get paywallMostPopular => 'MOST POPULAR';

  @override
  String get paywallSafeCheckout => 'Secure payment';

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
  String get paywallHeroHeadline => 'Kipi AI always by your side';

  @override
  String get paywallHeroSubtitle =>
      'Add items, organize lists and save time with AI in your pocket';

  @override
  String get paywallBenefit1Desc => 'Adds, organizes and suggests items 24/7';

  @override
  String get paywallBenefit2Desc => 'No 3-list limit';

  @override
  String get paywallBenefit3Desc => 'Expense tracking and family lists';

  @override
  String get paywallPackageMonthlyDesc => 'Full flexibility';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Start free — $days days';
  }

  @override
  String get premiumUpgrade => 'Uppgradera för att låsa upp';

  @override
  String get itemRemoved => 'Varan borttagen';

  @override
  String get undo => 'Ångra';

  @override
  String get emptyListTitle => 'Din lista är tom';

  @override
  String get emptyListSubtitle => 'Lägg till varor för att komma igång';

  @override
  String get noListFoundTitle => 'Inga listor hittades';

  @override
  String get noListFoundSubtitle =>
      'Skapa din första lista för att komma igång';

  @override
  String get createFirstList => 'Skapa Första Listan';

  @override
  String get listBudgetTitle => 'Listbudget';

  @override
  String get budgetAmountLabel => 'Budgetbelopp';

  @override
  String get removeBudget => 'Ta bort';

  @override
  String get prefUnlimitedLists => 'Obegränsat antal listor';

  @override
  String get prefSharing => 'Dela listor';

  @override
  String get prefFullHistory => 'Full historik';

  @override
  String get prefExportData => 'Exportera data';

  @override
  String get prefCustomThemes => 'Anpassade teman';

  @override
  String get prefMonthlyBudget => 'Global månadsbudget';

  @override
  String get prefAIAssistant => 'Personlig AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Obegränsat skafferi';

  @override
  String get prefInteractiveArtifacts => 'Interaktiva AI-artefakter';

  @override
  String get themeGreen => 'Grön';

  @override
  String get themeBlue => 'Blå';

  @override
  String get themePurple => 'Lila';

  @override
  String get themeRed => 'Röd';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Bärnsten';

  @override
  String get themeTeal => 'Kricka';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Frukt';

  @override
  String get catCleaning => 'Städning';

  @override
  String get catBeverages => 'Drycker';

  @override
  String get catBakery => 'Bageri';

  @override
  String get catOthers => 'Övrigt';

  @override
  String get unitPack => 'förpackning';

  @override
  String get shareSubject => 'Inköpslista';

  @override
  String get monthlyBudgetTitle => 'Månadsbudget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Radera lista';

  @override
  String get pantryItemRemoved => 'Varan borttagen';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit varor måste köpas',
      one: '$deficit vara måste köpas',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Varukorg totalt';

  @override
  String get restockLabel => 'Fyll på';

  @override
  String get advancedFeatures => 'Avancerade funktioner';

  @override
  String get selectAll => 'Välj alla';

  @override
  String get deselectAll => 'Avmarkera alla';

  @override
  String get monthlyBudgetAppBar => 'Månadsbudget';

  @override
  String get budgetEditTitle => 'Månadsbudget';

  @override
  String get budgetDashboardTitle => 'Instrumentbräda';

  @override
  String get selectListForDashboard => 'Välj en lista för att visa dashboard.';

  @override
  String get spendingAnalysis => 'Utgiftsanalys';

  @override
  String get noItemsToAnalyze => 'Inga varor i listan att analysera.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markera varor som köpta för att se analysen.';

  @override
  String get totalSpending => 'Totala Utgifter';

  @override
  String get spendingByCategory => 'Utgifter per Kategori';

  @override
  String get achievements => 'Prestationer';

  @override
  String get exportPdfExcel => 'Exportera PDF/Excel';

  @override
  String get exportPdf => 'Exportera som PDF';

  @override
  String get exportExcel => 'Exportera som Excel';

  @override
  String get organizingAi => 'ORGANISERAR MED AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nej';

  @override
  String get shareListText => 'Min Inköpslista';

  @override
  String get emptyListAddItems => 'Din lista är tom! Lägg till varor först. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Listan magiskt organiserad efter kategorier! ✨';

  @override
  String get shoppingMode => 'Shoppingläge';

  @override
  String get smartOrganization => 'Smart organisering';

  @override
  String get savings => 'Besparingar';

  @override
  String get shoppingModeHeader => 'SHOPPINGLÄGE';

  @override
  String get shareAsText => 'Skicka varor som formaterad text';

  @override
  String get shareRealtime => 'Realtidssynkronisering med andra personer';

  @override
  String get quickRecipe => 'Snabbt recept';

  @override
  String get quickRecipePrompt => 'Föreslå recept med varor från min lista.';

  @override
  String get economyTips => 'Spartips';

  @override
  String get economyTipsPrompt => 'Hur kan jag spara pengar på detta köp?';

  @override
  String get organizeAisles => 'Organisera efter gångar';

  @override
  String get organizeAislesPrompt => 'Organisera efter matbutikens gångar.';

  @override
  String get recipeSuggestion => 'Receptförslag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining krediter kvar';
  }

  @override
  String get addAllToList => 'Lägg till alla i listan';

  @override
  String get organizeByAisles => 'Organisera efter gångar';

  @override
  String get voiceTranscriptionTooltip => 'Röstinmatning (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-röstkommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-röstkommando';

  @override
  String get voiceCommandContent =>
      'Tala naturligt för att hantera din lista!\n\nExempel:\n• \'Lägg till bröd, ost och skinka\'\n• \'Ta bort tvättmedel\'\n• \'Byt tema till blått\'\n\nDetta är en exklusiv funktion i KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Visa Planer';

  @override
  String get itemsAddedSuccess => 'Varor har lagts till i listan!';

  @override
  String get viewList => 'Visa lista';

  @override
  String get feedbackTitle => 'Skicka feedback';

  @override
  String get feedbackPrompt => 'Vad vill du dela?';

  @override
  String get feedbackTypeBug => 'Rapportera bugg';

  @override
  String get feedbackTypeBugHint => 'Något fungerar inte';

  @override
  String get feedbackTypeSuggestion => 'Förslag';

  @override
  String get feedbackTypeSuggestionHint => 'Idé för att förbättra appen';

  @override
  String get feedbackTypeTranslation => 'Översättningsproblem';

  @override
  String get feedbackTypeTranslationHint =>
      'Felaktig eller konstig översättning';

  @override
  String get feedbackTypeFeature => 'Funktionsförfrågan';

  @override
  String get feedbackTypeFeatureHint => 'Funktion du skulle vilja se';

  @override
  String get feedbackTypeOther => 'Annat';

  @override
  String get feedbackTypeOtherHint => 'Annan typ av feedback';

  @override
  String get feedbackHint => 'Beskriv din feedback i detalj...';

  @override
  String get feedbackSend => 'Skicka feedback';

  @override
  String get feedbackSending => 'Skickar...';

  @override
  String get feedbackThankYou => 'Tack!';

  @override
  String get feedbackThankYouMessage =>
      'Din feedback har tagits emot och hjälper oss att förbättra KipiList för alla.';

  @override
  String get feedbackBack => 'Tillbaka';

  @override
  String feedbackError(String error) {
    return 'Fel vid sändning: $error';
  }

  @override
  String get feedbackRetry => 'Försök igen';

  @override
  String get feedbackSettingsTitle => 'Skicka feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapportera buggar, föreslå förbättringar eller korrigera översättningar';

  @override
  String get aiEnergy => 'AI energi';

  @override
  String get searchInConversation => 'Sök i konversation...';

  @override
  String get noMessagesFound => 'Inga meddelanden hittades';

  @override
  String get suggestedQuestions => 'Föreslagna frågor:';

  @override
  String get shoppingAssistant => 'Shoppingbiträde';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased av $total köpt';
  }

  @override
  String get estimatedCost => 'Uppskattad';

  @override
  String get viewItems => 'Visa objekt';

  @override
  String get noItemsInList => 'Inga objekt i listan';

  @override
  String get longHistoryWarning =>
      'Lång historia: assistenten fokuserar på de senaste meddelandena för bättre prestanda.';

  @override
  String get listening => 'Lyssnande...';

  @override
  String get addDirectToList => 'Lägg till direkt i listan';

  @override
  String get unlockFullResponse => 'Lås upp fullständigt svar';

  @override
  String get switchList => 'Byt lista';

  @override
  String get marketMode => 'Marknadsläge';

  @override
  String get backToChat => 'Tillbaka till Chatt';

  @override
  String get finishShopping => 'Avsluta shopping';

  @override
  String get welcomeAiAssistant => 'Välkommen till AI Assistant';

  @override
  String get createListToStartAi =>
      'Skapa en inköpslista för att börja använda den smarta chatten.';

  @override
  String get howCanIHelp => 'Hur kan jag hjälpa till?';

  @override
  String get chatSubtitleShort => 'Fråga om priser, recept, organisation...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total köpt';
  }

  @override
  String get quickReplies => 'Snabba svar:';

  @override
  String get voiceProFeature =>
      'Avancerade röstkommandon är Pro. Aktiverar grundläggande diktering...';

  @override
  String get viewPro => 'Visa Pro';

  @override
  String get errorLoadingChat =>
      'hoppsan! Något gick fel när chatten laddades.';

  @override
  String get errorLoadingChatSubtitle =>
      'Kontrollera din anslutning eller försök igen senare.';

  @override
  String get errorOscillation =>
      'Detta kan uppstå på grund av nätverksvängningar eller tillfällig otillgänglighet. Försök igen.';

  @override
  String get activeListening => 'Aktivt lyssnande';

  @override
  String get whatToDoWithItem =>
      'Vad skulle du vilja göra med det här föremålet?';

  @override
  String get viewDetails => 'Visa detaljer';

  @override
  String get openMenu => 'Öppna menyn';

  @override
  String get viewRecipe => 'Se recept';

  @override
  String get recipeCreated => 'Recept skapat!';

  @override
  String get editRecipe => 'Redigera';

  @override
  String get deleteRecipe => 'Radera';

  @override
  String get deleteRecipeConfirm => 'Vill du ta bort det här receptet?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Är du säker på att du vill ta bort \"$recipeName\"? Denna åtgärd kan inte ångras.';
  }

  @override
  String get ingredients => 'Ingredienser';

  @override
  String get instructions => 'Instruktioner';

  @override
  String get prepTime => 'Förberedelsetid';

  @override
  String get recipeSaved => 'Receptet sparat!';

  @override
  String get noRecipesSaved => 'Inga recept sparade';

  @override
  String get noRecipesSavedHint =>
      'Skapa ditt första anpassade recept genom att trycka på knappen nedan.';

  @override
  String get myRecipes => 'Mina recept';

  @override
  String get newRecipe => 'Nytt recept';

  @override
  String get loadingRecipes => 'Laddar dina recept...';

  @override
  String get errorLoadingRecipes => 'Det gick inte att läsa in recept';

  @override
  String get addIngredient => 'Tillsätt ingrediens';

  @override
  String get saveRecipe => 'Spara';

  @override
  String get recipeName => 'Receptets namn';

  @override
  String get shortDescription => 'Kort beskrivning';

  @override
  String get prepTimeMinutes => 'Förberedelsetid (minuter)';

  @override
  String get instructionsHint => 'Skriv ett steg per rad...';

  @override
  String get addPhoto => 'Lägg till foto';

  @override
  String get imageUrlPlaceholder => 'Eller klistra in en bildadress';

  @override
  String get tags => 'Taggar';

  @override
  String get recipeTags => 'Receptetiketter';

  @override
  String get suggestedTags => 'Föreslog';

  @override
  String get searchRecipes => 'Sök recept...';

  @override
  String get filterByTag => 'Filtrera efter tagg';

  @override
  String get allTags => 'Alla';

  @override
  String get recipeDeleted => 'Receptet raderat';

  @override
  String get saveChanges => 'Spara ändringar';

  @override
  String get editRecipeTitle => 'Redigera recept';

  @override
  String get newRecipeTitle => 'Nytt recept';

  @override
  String get requiredField => 'Nödvändig';

  @override
  String get chooseImageSource => 'Välj bildkälla';

  @override
  String get gallery => 'Galleri';

  @override
  String get enterUrl => 'Ange URL';

  @override
  String get recipeImage => 'Receptbild';

  @override
  String get removeImage => 'Ta bort bild';

  @override
  String get mealPlannerTitle => 'Måltidsplanerare';

  @override
  String get mealPlannerViewMonthly => 'Månadsvy';

  @override
  String get mealPlannerViewWeekly => 'Veckovy';

  @override
  String get mealPlannerNoMeals => 'Inga måltider planerade';

  @override
  String get mealPlannerNoMealsHint =>
      'Tryck på en dag för att lägga till en måltid';

  @override
  String get mealPlannerLoading => 'Laddar matplan...';

  @override
  String get mealPlannerError => 'Det gick inte att läsa in måltidsplanen';

  @override
  String get mealPlannerAddMeal => 'Lägg till måltid';

  @override
  String get mealPlannerEditMeal => 'Redigera måltid';

  @override
  String get mealPlannerDeleteMeal => 'Ta bort måltid';

  @override
  String get mealPlannerMealDeleted => 'Måltiden borttagen';

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
  String get mealPlannerServingsLabel => 'Serveringar';

  @override
  String get mealPlannerNoteLabel => 'Obs (valfritt)';

  @override
  String get mealPlannerSelectRecipe => 'Välj ett recept';

  @override
  String get mealPlannerSearchRecipes => 'Sök recept...';

  @override
  String get mealPlannerNoRecipesFound => 'Inga recept hittades';

  @override
  String get mealPlannerNoRecipesHint => 'Skapa recept på fliken Recept först';

  @override
  String get mealPlannerSave => 'Lägg till i planen';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count av $total måltider planerade';
  }

  @override
  String get mealPlannerGenerateList => 'Skapa inköpslista';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Lägg till alla ingredienser från planerade måltider den här veckan till din inköpslista?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediens(er) har lagts till i din lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Inga ingredienser att lägga till. Planera några måltider med recept först.';

  @override
  String get mealPlannerGenerateListNoList => 'Skapa en inköpslista först.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Frukost';

  @override
  String get mealPlannerMealTypeLunch => 'Lunch';

  @override
  String get mealPlannerMealTypeDinner => 'Middag';

  @override
  String get mealPlannerMealTypeSnack => 'Mellanmål';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Inget planerat för den här veckan';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tryck på vilken dag som helst för att börja planera dina måltider!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Bjud in till lista';

  @override
  String get shareApp => 'Dela app';

  @override
  String get shareAppDescription => 'Bjud in vänner att använda KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Jag använder KipiList för att organisera min shopping! Ladda ner via min länk så får vi båda 7 dagars Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Få 7 dagars KipiList Premium!';
}

/// The translations for Swedish, as used in Sweden (`sv_SE`).
class AppLocalizationsSvSe extends AppLocalizationsSv {
  AppLocalizationsSvSe() : super('sv_SE');

  @override
  String get appTitle => 'Inköpslista';

  @override
  String get lists => 'Listor';

  @override
  String get pantry => 'Skafferi';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Spara';

  @override
  String get create => 'Skapa';

  @override
  String get add => 'Lägg till';

  @override
  String get remove => 'Ta bort';

  @override
  String get delete => 'Radera';

  @override
  String get edit => 'Redigera';

  @override
  String get copy => 'Kopiera';

  @override
  String get next => 'Nästa';

  @override
  String get retry => 'Försök igen';

  @override
  String get regenerate => 'Återskapa';

  @override
  String get copiedToClipboard => 'Kopierat till urklipp';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get close => 'Stäng';

  @override
  String get import => 'Importera';

  @override
  String get rename => 'Byt namn';

  @override
  String get upgrade => 'Uppgradera';

  @override
  String get clear => 'Rensa';

  @override
  String error(String message) {
    return 'Fel: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fel: $message';
  }

  @override
  String get purchaseError => 'Fel vid behandling av köp. Försök igen.';

  @override
  String get restoreError => 'Fel vid återställning av köp. Försök igen.';

  @override
  String get loading => 'Laddar...';

  @override
  String get fieldRequired => 'Obligatoriskt fält';

  @override
  String get addedFeedback => 'Tillagd!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valda',
      one: '$count vald',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Beräknat';

  @override
  String get alreadyPurchased => 'Redan köpt';

  @override
  String get clearList => 'Rensa lista';

  @override
  String get clearPurchased => 'Rensa köpta';

  @override
  String get share => 'Dela';

  @override
  String get shareViaCode => 'Dela via kod';

  @override
  String get importViaCode => 'Importera via kod';

  @override
  String get listAssistant => 'Listassistent';

  @override
  String get globalAssistant => 'Global assistent';

  @override
  String get becomePremium => 'Bli Premium';

  @override
  String get manageSubscription => 'Hantera prenumeration';

  @override
  String get completePurchase => 'Slutför köp';

  @override
  String get confirmClearList => 'Ta bort alla varor?';

  @override
  String get shareListTitle => 'Dela Lista';

  @override
  String get shareThisCode => 'Dela denna kod:';

  @override
  String get validForLimitedTime => 'Gäller under begränsad tid';

  @override
  String get importListTitle => 'Importera Lista';

  @override
  String get enterCodeHint => 'Ange koden';

  @override
  String get confirmArchiveTitle => 'Slutför Köp';

  @override
  String get confirmArchiveContent => 'Slutför detta köp och arkivera listan?';

  @override
  String get complete => 'Slutför';

  @override
  String get listArchived => 'Listan arkiverades!';

  @override
  String listAdded(String listName) {
    return '$listName tillagd!';
  }

  @override
  String get buy => 'Köp';

  @override
  String get unmark => 'Avmarkera';

  @override
  String confirmDeleteItems(int count) {
    return 'Ta bort $count vara/varor?';
  }

  @override
  String get confirmDeleteTitle => 'Bekräfta';

  @override
  String confirmContent(int count) {
    return 'Ta bort $count vara/varor?';
  }

  @override
  String get archiveList => 'Arkivera lista';

  @override
  String get pantryAppBar => 'Skafferi';

  @override
  String get generateShoppingList => 'Generera inköpslista';

  @override
  String get pantryEmpty => 'Tomt skafferi';

  @override
  String get pantryEmptySubtitle => 'Lägg till produkter du vill ha hemma';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vara/varor måste köpas';
  }

  @override
  String get noItemsToBuy => 'Inga varor behöver köpas';

  @override
  String get newPantryList => 'Skafferihandling';

  @override
  String get newListTitle => 'Ny Inköpslista';

  @override
  String itemsWillBeAdded(int count) {
    return '$count vara/varor läggs till';
  }

  @override
  String get listNameLabel => 'Listnamn';

  @override
  String listCreated(String name, int count) {
    return 'Listan \"$name\" skapad med $count varor';
  }

  @override
  String get noTracking => 'Ingen spårning';

  @override
  String get markAsPurchased => 'Markera som köpt';

  @override
  String editPantryItem(String name) {
    return 'Redigera $name';
  }

  @override
  String get idealQuantity => 'Idealisk mängd';

  @override
  String get currentQuantity => 'Nuvarande mängd';

  @override
  String get consumed => 'Förbrukad';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name påfylld till $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Ta bort \"$name\" från skafferiet?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Redigera $name';
  }

  @override
  String get settingsAppBar => 'Inställningar';

  @override
  String get language => 'Språk';

  @override
  String get languagePortuguese => 'Português (Brasilien)';

  @override
  String get languageEnglish => 'engelska';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get chooseLanguage => 'Välj Språk';

  @override
  String get searchLanguage => 'Sök språk...';

  @override
  String get currency => 'Valuta';

  @override
  String get chooseCurrency => 'Välj Valuta';

  @override
  String get searchCurrency => 'Sök valuta...';

  @override
  String get appearance => 'Utseende';

  @override
  String get light => 'Ljust';

  @override
  String get system => 'System';

  @override
  String get dark => 'Mörkt';

  @override
  String get themeColor => 'Temafärg';

  @override
  String get dynamicColors => 'Dynamiska färger';

  @override
  String get dynamicColorsSubtitle => 'Använd färger baserat på din tapet';

  @override
  String get dynamicColorsEnabledWarning =>
      'Inaktivera dynamiska färger för att temafärgen ska träda i kraft';

  @override
  String get finance => 'Ekonomi';

  @override
  String get monthlyBudgetNav => 'Månadsbudget';

  @override
  String get budgetSubtitle => 'Följ dina månatliga utgifter';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Säkerhetskopiera';

  @override
  String get backupSubtitle => 'Exportera eller importera din data';

  @override
  String get about => 'Om';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Integritet';

  @override
  String get termsOfUse => 'Användarvillkor';

  @override
  String get backupTitle => 'Säkerhetskopiering';

  @override
  String get backupPremiumDescription =>
      'Säkerhetskopiering och export är en premiumfunktion';

  @override
  String get exportData => 'Exportera data';

  @override
  String get exportDataSubtitle => 'Spara alla listor som JSON';

  @override
  String get importData => 'Importera data';

  @override
  String get importDataSubtitle => 'Återställ listor från en JSON';

  @override
  String get importJsonTitle => 'Importera JSON';

  @override
  String get importJsonHint => 'Klistra in JSON för säkerhetskopian här...';

  @override
  String get backupExported => 'Säkerhetskopia exporterad!';

  @override
  String get budgetAppBar => 'Månadsbudget';

  @override
  String get budgetPremiumLocked => 'Global månadsbudget är premium';

  @override
  String get budgetUpgradePrompt => 'Uppgradera för att låsa upp';

  @override
  String get noBudgetDefined => 'Ingen budget angiven';

  @override
  String totalEstimated(String amount) {
    return 'Totalt beräknat: $amount';
  }

  @override
  String get setBudgetButton => 'Ange budget';

  @override
  String get budgetLists => 'Listor';

  @override
  String get budgetValueLabel => 'Belopp';

  @override
  String get setBudgetTitle => 'Månadsbudget';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alla';

  @override
  String get filterPending => 'Väntande';

  @override
  String get filterPurchased => 'Köpta';

  @override
  String get sortName => 'Namn';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Manuell';

  @override
  String get addItem => 'Lägg till Vara';

  @override
  String get itemName => 'Varunamn';

  @override
  String get quantityShort => 'Ant';

  @override
  String get unit => 'Enhet';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Beräknat pris';

  @override
  String get addItemPrice => 'Beräknat pris';

  @override
  String get editItem => 'Redigera Vara';

  @override
  String get quantityFull => 'Kvantitet';

  @override
  String get editItemPrice => 'Beräknat pris';

  @override
  String get addToPantry => 'Lägg till i Skafferi';

  @override
  String addToPantryPrompt(String name) {
    return 'Lägg till \"$name\" i ditt skafferi?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktnamn';

  @override
  String get idealQty => 'Idealisk mängd';

  @override
  String get currentQty => 'Nuvarande mängd';

  @override
  String get trackStock => 'Spåra lager';

  @override
  String get trackStockActive => 'Visas i shoppingförslag';

  @override
  String get trackStockInactive => 'Genererar inget shoppingförslag';

  @override
  String get createListDialog => 'Skapa Lista';

  @override
  String get renameListDialog => 'Byt Namn på Lista';

  @override
  String get listHistory => 'Listhistorik';

  @override
  String get myLists => 'Mina Listor';

  @override
  String get viewActive => 'Visa Aktiva';

  @override
  String get viewHistory => 'Visa Historik';

  @override
  String get noArchivedLists => 'Inga arkiverade listor';

  @override
  String get noActiveLists => 'Inga aktiva listor';

  @override
  String completedOn(String date) {
    return 'Slutförd den $date';
  }

  @override
  String get sharedLabel => 'Delad';

  @override
  String get restore => 'Återställ';

  @override
  String get removeSharedTooltip => 'Ta bort';

  @override
  String get deleteListTitle => 'Radera lista';

  @override
  String deleteListContent(String name) {
    return 'Är du säker på att du vill radera \"$name\"? Alla varor kommer att tas bort.';
  }

  @override
  String get removeSharedListTitle => 'Ta bort delad lista';

  @override
  String removeSharedListContent(String name) {
    return 'Ta bort \"$name\" från dina listor? Originallistan påverkas inte.';
  }

  @override
  String get createNewList => 'Skapa ny lista';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Få smarta förslag, recept och personliga tips med vår AI-assistent.';

  @override
  String get generalAssistant => 'Allmän assistent';

  @override
  String get newChat => 'Ny chatt';

  @override
  String get noHistory => 'Ingen chatthistorik';

  @override
  String get deleteSession => 'Ta bort chatt';

  @override
  String get deleteSessionConfirm =>
      'Är du säker på att du vill ta bort den här chatten? Meddelanden kommer att försvinna permanent.';

  @override
  String get clearHistory => 'Rensa Historik';

  @override
  String get clearHistoryConfirm => 'Rensa alla meddelanden i denna session?';

  @override
  String get chatHint => 'Skriv ditt meddelande...';

  @override
  String chatError(String error) {
    return 'Fel vid laddning av chatt: $error';
  }

  @override
  String get listHelp => 'Hur kan jag hjälpa dig med din lista?';

  @override
  String get generalHelp => 'Hur kan jag hjälpa dig med din shopping idag?';

  @override
  String get chatSubtitle => 'Be om varuförslag, recept eller spartips.';

  @override
  String get aiError =>
      'Tyvärr, ett fel uppstod vid behandlingen av din förfrågan. Kontrollera din anslutning eller försök igen senare.';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Logga in för att låsa upp\npremiumfunktioner';

  @override
  String get signInGoogle => 'Logga in med Google';

  @override
  String get signInApple => 'Logga in med Apple';

  @override
  String get continueAsGuest => 'Fortsätt som gäst';

  @override
  String get onboardingWelcomeTitle => 'Välkommen till KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Det smartaste sättet att organisera din shopping och spara pengar.';

  @override
  String get onboardingSetupTitle => 'Anpassa din upplevelse';

  @override
  String get onboardingSetupDesc =>
      'Välj hur du vill att KipiList ska se ut och fungera för dig.';

  @override
  String get onboardingLoginTitle => 'Spara allt till molnet';

  @override
  String get onboardingLoginDesc =>
      'Din data synkroniseras över alla dina enheter';

  @override
  String get onboardingShareTitle => 'Dela med dem du älskar';

  @override
  String get onboardingShareDesc =>
      'Synkronisera listor med familj och vänner i realtid';

  @override
  String get onboardingPremiumTitle => 'Lås upp alla funktioner';

  @override
  String get onboardingPremiumSubtitle =>
      'Få ut det mesta av dina inköpslistor';

  @override
  String get onboardingAnnualBadge => 'Bästa värde';

  @override
  String get onboardingMonthlyLabel => 'Månatlig';

  @override
  String get onboardingAnnualLabel => 'Årlig';

  @override
  String get onboardingViewAllPlans => 'Se alla planer';

  @override
  String get onboardingSubscribeCta => 'Prenumerera';

  @override
  String get onboardingCancelAnytime => 'Avbryt när som helst. Inget åtagande.';

  @override
  String get onboardingContinueAsGuest => 'Fortsätt som gäst';

  @override
  String get onboardingRestore => 'Återställ inköp';

  @override
  String get onboardingRestoreDesc =>
      'Har du redan ett abonnemang? Tryck här för att återställa den.';

  @override
  String get onboardingExit => 'Utgång';

  @override
  String get onboardingPersonalizationTitle => 'Låt oss lära känna dig';

  @override
  String get onboardingPersonalizationDesc =>
      'Vi kommer att använda detta för att anpassa dina förslag och göra shopping smartare.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Vilken är din favoritmat?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'till exempel Pizza, sushi, lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Fortsätta';

  @override
  String get onboardingPersonalizationSkip => 'Hoppa över nu';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Berätta för oss din favoritmat för att fortsätta';

  @override
  String get settingsDefaultScreen => 'Standard startskärm';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Välj mellan inköpslista eller AI-chatt';

  @override
  String get settingsScreenList => 'Inköpslista';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Inloggningsfel: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get premiumUpgrade => 'Uppgradera för att låsa upp';

  @override
  String get itemRemoved => 'Varan borttagen';

  @override
  String get undo => 'Ångra';

  @override
  String get emptyListTitle => 'Din lista är tom';

  @override
  String get emptyListSubtitle => 'Lägg till varor för att komma igång';

  @override
  String get noListFoundTitle => 'Inga listor hittades';

  @override
  String get noListFoundSubtitle =>
      'Skapa din första lista för att komma igång';

  @override
  String get createFirstList => 'Skapa Första Listan';

  @override
  String get listBudgetTitle => 'Listbudget';

  @override
  String get budgetAmountLabel => 'Budgetbelopp';

  @override
  String get removeBudget => 'Ta bort';

  @override
  String get prefUnlimitedLists => 'Obegränsat antal listor';

  @override
  String get prefSharing => 'Dela listor';

  @override
  String get prefFullHistory => 'Full historik';

  @override
  String get prefExportData => 'Exportera data';

  @override
  String get prefCustomThemes => 'Anpassade teman';

  @override
  String get prefMonthlyBudget => 'Global månadsbudget';

  @override
  String get prefAIAssistant => 'Personlig AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Obegränsat skafferi';

  @override
  String get prefInteractiveArtifacts => 'Interaktiva AI-artefakter';

  @override
  String get themeGreen => 'Grön';

  @override
  String get themeBlue => 'Blå';

  @override
  String get themePurple => 'Lila';

  @override
  String get themeRed => 'Röd';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Bärnsten';

  @override
  String get themeTeal => 'Kricka';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Frukt';

  @override
  String get catCleaning => 'Städning';

  @override
  String get catBeverages => 'Drycker';

  @override
  String get catBakery => 'Bageri';

  @override
  String get catOthers => 'Övrigt';

  @override
  String get unitPack => 'förpackning';

  @override
  String get shareSubject => 'Inköpslista';

  @override
  String get monthlyBudgetTitle => 'Månadsbudget';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Radera lista';

  @override
  String get pantryItemRemoved => 'Varan borttagen';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit varor måste köpas',
      one: '$deficit vara måste köpas',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Varukorg totalt';

  @override
  String get restockLabel => 'Fyll på';

  @override
  String get advancedFeatures => 'Avancerade funktioner';

  @override
  String get selectAll => 'Välj alla';

  @override
  String get deselectAll => 'Avmarkera alla';

  @override
  String get monthlyBudgetAppBar => 'Månadsbudget';

  @override
  String get budgetEditTitle => 'Månadsbudget';

  @override
  String get budgetDashboardTitle => 'Instrumentbräda';

  @override
  String get selectListForDashboard => 'Välj en lista för att visa dashboard.';

  @override
  String get spendingAnalysis => 'Utgiftsanalys';

  @override
  String get noItemsToAnalyze => 'Inga varor i listan att analysera.';

  @override
  String get markItemsToSeeAnalysis =>
      'Markera varor som köpta för att se analysen.';

  @override
  String get totalSpending => 'Totala Utgifter';

  @override
  String get spendingByCategory => 'Utgifter per Kategori';

  @override
  String get achievements => 'Prestationer';

  @override
  String get exportPdfExcel => 'Exportera PDF/Excel';

  @override
  String get exportPdf => 'Exportera som PDF';

  @override
  String get exportExcel => 'Exportera som Excel';

  @override
  String get organizingAi => 'ORGANISERAR MED AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nej';

  @override
  String get shareListText => 'Min Inköpslista';

  @override
  String get emptyListAddItems => 'Din lista är tom! Lägg till varor först. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Listan magiskt organiserad efter kategorier! ✨';

  @override
  String get shoppingMode => 'Shoppingläge';

  @override
  String get smartOrganization => 'Smart organisering';

  @override
  String get savings => 'Besparingar';

  @override
  String get shoppingModeHeader => 'SHOPPINGLÄGE';

  @override
  String get shareAsText => 'Skicka varor som formaterad text';

  @override
  String get shareRealtime => 'Realtidssynkronisering med andra personer';

  @override
  String get quickRecipe => 'Snabbt recept';

  @override
  String get quickRecipePrompt => 'Föreslå recept med varor från min lista.';

  @override
  String get economyTips => 'Spartips';

  @override
  String get economyTipsPrompt => 'Hur kan jag spara pengar på detta köp?';

  @override
  String get organizeAisles => 'Organisera efter gångar';

  @override
  String get organizeAislesPrompt => 'Organisera efter matbutikens gångar.';

  @override
  String get recipeSuggestion => 'Receptförslag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining krediter kvar';
  }

  @override
  String get addAllToList => 'Lägg till alla i listan';

  @override
  String get organizeByAisles => 'Organisera efter gångar';

  @override
  String get voiceTranscriptionTooltip => 'Röstinmatning (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-röstkommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-röstkommando';

  @override
  String get voiceCommandContent =>
      'Tala naturligt för att hantera din lista!\n\nExempel:\n• \'Lägg till bröd, ost och skinka\'\n• \'Ta bort tvättmedel\'\n• \'Byt tema till blått\'\n\nDetta är en exklusiv funktion i KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Visa Planer';

  @override
  String get itemsAddedSuccess => 'Varor har lagts till i listan!';

  @override
  String get viewList => 'Visa lista';

  @override
  String get feedbackTitle => 'Skicka feedback';

  @override
  String get feedbackPrompt => 'Vad vill du dela?';

  @override
  String get feedbackTypeBug => 'Rapportera fel';

  @override
  String get feedbackTypeBugHint => 'Något fungerar inte';

  @override
  String get feedbackTypeSuggestion => 'Förslag';

  @override
  String get feedbackTypeSuggestionHint => 'Idé för att förbättra appen';

  @override
  String get feedbackTypeTranslation => 'Översättningsproblem';

  @override
  String get feedbackTypeTranslationHint =>
      'Felaktig eller konstig översättning';

  @override
  String get feedbackTypeFeature => 'Funktionsbegäran';

  @override
  String get feedbackTypeFeatureHint => 'Funktion du skulle vilja se';

  @override
  String get feedbackTypeOther => 'Annat';

  @override
  String get feedbackTypeOtherHint => 'Annan typ av feedback';

  @override
  String get feedbackHint => 'Beskriv din feedback i detalj...';

  @override
  String get feedbackSend => 'Skicka feedback';

  @override
  String get feedbackSending => 'Skickar...';

  @override
  String get feedbackThankYou => 'Tack!';

  @override
  String get feedbackThankYouMessage =>
      'Din feedback har tagits emot och hjälper oss att förbättra KipiList för alla.';

  @override
  String get feedbackBack => 'Tillbaka';

  @override
  String feedbackError(String error) {
    return 'Fel vid skickning: $error';
  }

  @override
  String get feedbackRetry => 'Försök igen';

  @override
  String get feedbackSettingsTitle => 'Skicka feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapportera fel, föreslå förbättringar eller fixa översättningar';

  @override
  String get aiEnergy => 'AI energi';

  @override
  String get searchInConversation => 'Sök i konversation...';

  @override
  String get noMessagesFound => 'Inga meddelanden hittades';

  @override
  String get suggestedQuestions => 'Föreslagna frågor:';

  @override
  String get shoppingAssistant => 'Shoppingbiträde';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased av $total köpt';
  }

  @override
  String get estimatedCost => 'Uppskattad';

  @override
  String get viewItems => 'Visa objekt';

  @override
  String get noItemsInList => 'Inga objekt i listan';

  @override
  String get longHistoryWarning =>
      'Lång historia: assistenten fokuserar på de senaste meddelandena för bättre prestanda.';

  @override
  String get listening => 'Lyssnande...';

  @override
  String get addDirectToList => 'Lägg till direkt i listan';

  @override
  String get unlockFullResponse => 'Lås upp fullständigt svar';

  @override
  String get switchList => 'Byt lista';

  @override
  String get marketMode => 'Marknadsläge';

  @override
  String get backToChat => 'Tillbaka till Chatt';

  @override
  String get finishShopping => 'Avsluta shopping';

  @override
  String get welcomeAiAssistant => 'Välkommen till AI Assistant';

  @override
  String get createListToStartAi =>
      'Skapa en inköpslista för att börja använda den smarta chatten.';

  @override
  String get howCanIHelp => 'Hur kan jag hjälpa till?';

  @override
  String get chatSubtitleShort => 'Fråga om priser, recept, organisation...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total köpt';
  }

  @override
  String get quickReplies => 'Snabba svar:';

  @override
  String get voiceProFeature =>
      'Avancerade röstkommandon är Pro. Aktiverar grundläggande diktering...';

  @override
  String get viewPro => 'Visa Pro';

  @override
  String get errorLoadingChat =>
      'hoppsan! Något gick fel när chatten laddades.';

  @override
  String get errorLoadingChatSubtitle =>
      'Kontrollera din anslutning eller försök igen senare.';

  @override
  String get errorOscillation =>
      'Detta kan uppstå på grund av nätverksvängningar eller tillfällig otillgänglighet. Försök igen.';

  @override
  String get activeListening => 'Aktivt lyssnande';

  @override
  String get whatToDoWithItem =>
      'Vad skulle du vilja göra med det här föremålet?';

  @override
  String get viewDetails => 'Visa detaljer';

  @override
  String get openMenu => 'Öppna menyn';

  @override
  String get viewRecipe => 'Se recept';

  @override
  String get recipeCreated => 'Recept skapat!';

  @override
  String get editRecipe => 'Redigera';

  @override
  String get deleteRecipe => 'Radera';

  @override
  String get deleteRecipeConfirm => 'Vill du ta bort det här receptet?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Är du säker på att du vill ta bort \"$recipeName\"? Denna åtgärd kan inte ångras.';
  }

  @override
  String get ingredients => 'Ingredienser';

  @override
  String get instructions => 'Instruktioner';

  @override
  String get prepTime => 'Förberedelsetid';

  @override
  String get recipeSaved => 'Receptet sparat!';

  @override
  String get noRecipesSaved => 'Inga recept sparade';

  @override
  String get noRecipesSavedHint =>
      'Skapa ditt första anpassade recept genom att trycka på knappen nedan.';

  @override
  String get myRecipes => 'Mina recept';

  @override
  String get newRecipe => 'Nytt recept';

  @override
  String get loadingRecipes => 'Laddar dina recept...';

  @override
  String get errorLoadingRecipes => 'Det gick inte att läsa in recept';

  @override
  String get addIngredient => 'Tillsätt ingrediens';

  @override
  String get saveRecipe => 'Spara';

  @override
  String get recipeName => 'Receptets namn';

  @override
  String get shortDescription => 'Kort beskrivning';

  @override
  String get prepTimeMinutes => 'Förberedelsetid (minuter)';

  @override
  String get instructionsHint => 'Skriv ett steg per rad...';

  @override
  String get addPhoto => 'Lägg till foto';

  @override
  String get imageUrlPlaceholder => 'Eller klistra in en bildadress';

  @override
  String get tags => 'Taggar';

  @override
  String get recipeTags => 'Receptetiketter';

  @override
  String get suggestedTags => 'Föreslog';

  @override
  String get searchRecipes => 'Sök recept...';

  @override
  String get filterByTag => 'Filtrera efter tagg';

  @override
  String get allTags => 'Alla';

  @override
  String get recipeDeleted => 'Receptet raderat';

  @override
  String get saveChanges => 'Spara ändringar';

  @override
  String get editRecipeTitle => 'Redigera recept';

  @override
  String get newRecipeTitle => 'Nytt recept';

  @override
  String get requiredField => 'Nödvändig';

  @override
  String get chooseImageSource => 'Välj bildkälla';

  @override
  String get gallery => 'Galleri';

  @override
  String get enterUrl => 'Ange URL';

  @override
  String get recipeImage => 'Receptbild';

  @override
  String get removeImage => 'Ta bort bild';

  @override
  String get mealPlannerTitle => 'Måltidsplanerare';

  @override
  String get mealPlannerViewMonthly => 'Månadsvy';

  @override
  String get mealPlannerViewWeekly => 'Veckovy';

  @override
  String get mealPlannerNoMeals => 'Inga måltider planerade';

  @override
  String get mealPlannerNoMealsHint =>
      'Tryck på en dag för att lägga till en måltid';

  @override
  String get mealPlannerLoading => 'Laddar matplan...';

  @override
  String get mealPlannerError => 'Det gick inte att läsa in måltidsplanen';

  @override
  String get mealPlannerAddMeal => 'Lägg till måltid';

  @override
  String get mealPlannerEditMeal => 'Redigera måltid';

  @override
  String get mealPlannerDeleteMeal => 'Ta bort måltid';

  @override
  String get mealPlannerMealDeleted => 'Måltiden borttagen';

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
  String get mealPlannerServingsLabel => 'Serveringar';

  @override
  String get mealPlannerNoteLabel => 'Obs (valfritt)';

  @override
  String get mealPlannerSelectRecipe => 'Välj ett recept';

  @override
  String get mealPlannerSearchRecipes => 'Sök recept...';

  @override
  String get mealPlannerNoRecipesFound => 'Inga recept hittades';

  @override
  String get mealPlannerNoRecipesHint => 'Skapa recept på fliken Recept först';

  @override
  String get mealPlannerSave => 'Lägg till i planen';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count av $total måltider planerade';
  }

  @override
  String get mealPlannerGenerateList => 'Skapa inköpslista';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Lägg till alla ingredienser från planerade måltider den här veckan till din inköpslista?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediens(er) har lagts till i din lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Inga ingredienser att lägga till. Planera några måltider med recept först.';

  @override
  String get mealPlannerGenerateListNoList => 'Skapa en inköpslista först.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Frukost';

  @override
  String get mealPlannerMealTypeLunch => 'Lunch';

  @override
  String get mealPlannerMealTypeDinner => 'Middag';

  @override
  String get mealPlannerMealTypeSnack => 'Mellanmål';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Inget planerat för den här veckan';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tryck på vilken dag som helst för att börja planera dina måltider!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Bjud in till lista';

  @override
  String get shareApp => 'Dela app';

  @override
  String get shareAppDescription => 'Bjud in vänner att använda KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Jag använder KipiList för att organisera min shopping! Ladda ner via min länk så får vi båda 7 dagars Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Få 7 dagars KipiList Premium!';
}
