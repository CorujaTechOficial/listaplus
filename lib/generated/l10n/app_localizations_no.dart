// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get appTitle => 'Handleliste';

  @override
  String get lists => 'Lister';

  @override
  String get pantry => 'Spiskammer';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Oppskrifter';

  @override
  String get navLists => 'Lister';

  @override
  String get navMealPlanner => 'Meny';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Lagre';

  @override
  String get create => 'Opprett';

  @override
  String get add => 'Legg til';

  @override
  String get remove => 'Fjern';

  @override
  String get delete => 'Slett';

  @override
  String get edit => 'Rediger';

  @override
  String get copy => 'Kopier';

  @override
  String get next => 'Neste';

  @override
  String get retry => 'Prøv igjen';

  @override
  String get regenerate => 'Regenerer';

  @override
  String get copiedToClipboard => 'Kopiert til utklippstavle';

  @override
  String get confirm => 'Bekreft';

  @override
  String get close => 'Lukk';

  @override
  String get import => 'Importer';

  @override
  String get rename => 'Gi nytt navn';

  @override
  String get upgrade => 'Oppgrader';

  @override
  String get clear => 'Tøm';

  @override
  String error(String message) {
    return 'Feil: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Feil: $message';
  }

  @override
  String get purchaseError => 'Feil ved behandling av kjøp. Prøv igjen.';

  @override
  String get restoreError => 'Feil ved gjenoppretting av kjøp. Prøv igjen.';

  @override
  String get loading => 'Laster...';

  @override
  String get fieldRequired => 'Påkrevd felt';

  @override
  String get addedFeedback => 'Lagt til!';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Avslutt Shopping-modus';

  @override
  String get exit => 'Gå';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valgte',
      one: '$count valgt',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimert';

  @override
  String get alreadyPurchased => 'Allerede kjøpt';

  @override
  String get clearList => 'Tøm liste';

  @override
  String get clearPurchased => 'Fjern kjøpte';

  @override
  String get share => 'Del';

  @override
  String get shareViaCode => 'Del via kode';

  @override
  String get importViaCode => 'Importer via kode';

  @override
  String get listAssistant => 'Listeassistent';

  @override
  String get globalAssistant => 'Global assistent';

  @override
  String get becomePremium => 'Bli Premium';

  @override
  String get manageSubscription => 'Administrer abonnement';

  @override
  String get completePurchase => 'Fullfør kjøp';

  @override
  String get confirmClearList => 'Fjerne alle varer?';

  @override
  String get shareListTitle => 'Del liste';

  @override
  String get shareThisCode => 'Del denne koden:';

  @override
  String get validForLimitedTime => 'Gyldig i begrenset tid';

  @override
  String get importListTitle => 'Importer liste';

  @override
  String get enterCodeHint => 'Skriv inn koden';

  @override
  String get confirmArchiveTitle => 'Fullfør kjøp';

  @override
  String get confirmArchiveContent => 'Fullfør dette kjøpet og arkiver listen?';

  @override
  String get complete => 'Fullfør';

  @override
  String get listArchived => 'Listen ble arkivert!';

  @override
  String listAdded(String listName) {
    return '$listName lagt til!';
  }

  @override
  String get buy => 'Kjøp';

  @override
  String get unmark => 'Fjern markering';

  @override
  String confirmDeleteItems(int count) {
    return 'Fjerne $count vare(r)?';
  }

  @override
  String get confirmDeleteTitle => 'Bekreft';

  @override
  String confirmContent(int count) {
    return 'Fjerne $count vare(r)?';
  }

  @override
  String get archiveList => 'Arkiver liste';

  @override
  String get pantryAppBar => 'Spiskammer';

  @override
  String get generateShoppingList => 'Generer handleliste';

  @override
  String get pantryEmpty => 'Tomt spiskammer';

  @override
  String get pantryEmptySubtitle => 'Legg til produkter du ønsker å ha hjemme';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vare(r) må kjøpes';
  }

  @override
  String get noItemsToBuy => 'Ingen varer må kjøpes';

  @override
  String get newPantryList => 'Spiskammerhandling';

  @override
  String get newListTitle => 'Ny handleliste';

  @override
  String itemsWillBeAdded(int count) {
    return '$count vare(r) vil bli lagt til';
  }

  @override
  String get listNameLabel => 'Listenavn';

  @override
  String listCreated(String name, int count) {
    return 'Listen \"$name\" opprettet med $count varer';
  }

  @override
  String get noTracking => 'Ingen sporing';

  @override
  String get markAsPurchased => 'Marker som kjøpt';

  @override
  String editPantryItem(String name) {
    return 'Rediger $name';
  }

  @override
  String get idealQuantity => 'Ideell mengde';

  @override
  String get currentQuantity => 'Nåværende mengde';

  @override
  String get consumed => 'Forbrukt';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name fylt opp til $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Fjerne \"$name\" fra spiskammeret?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Rediger $name';
  }

  @override
  String get settingsAppBar => 'Innstillinger';

  @override
  String get language => 'Språk';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'engelsk';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get chooseLanguage => 'Velg Språk';

  @override
  String get searchLanguage => 'Søk etter språk...';

  @override
  String get currency => 'Valuta';

  @override
  String get chooseCurrency => 'Velg Valuta';

  @override
  String get searchCurrency => 'Søk etter valuta...';

  @override
  String get appearance => 'Utseende';

  @override
  String get light => 'Lys';

  @override
  String get system => 'System';

  @override
  String get dark => 'Mørk';

  @override
  String get themeColor => 'Temafarge';

  @override
  String get dynamicColors => 'Dynamiske farger';

  @override
  String get dynamicColorsSubtitle => 'Bruk farger basert på bakgrunnen din';

  @override
  String get dynamicColorsEnabledWarning =>
      'Deaktiver dynamiske farger for at temafargen skal tre i kraft';

  @override
  String get finance => 'Økonomi';

  @override
  String get monthlyBudgetNav => 'Månedlig budsjett';

  @override
  String get budgetSubtitle => 'Spor dine månedlige utgifter';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Sikkerhetskopi';

  @override
  String get backupSubtitle => 'Eksporter eller importer dine data';

  @override
  String get about => 'Om';

  @override
  String get version => 'Versjon';

  @override
  String get privacy => 'Personvern';

  @override
  String get termsOfUse => 'Vilkår for bruk';

  @override
  String get backupTitle => 'Sikkerhetskopi';

  @override
  String get backupPremiumDescription =>
      'Sikkerhetskopi og eksport er en premiumfunksjon';

  @override
  String get exportData => 'Eksporter data';

  @override
  String get exportDataSubtitle => 'Lagre alle lister som JSON';

  @override
  String get importData => 'Importer data';

  @override
  String get importDataSubtitle => 'Gjenopprett lister fra en JSON';

  @override
  String get importJsonTitle => 'Importer JSON';

  @override
  String get importJsonHint => 'Lim inn sikkerhetskopi-JSON her...';

  @override
  String get backupExported => 'Sikkerhetskopi eksportert!';

  @override
  String get budgetAppBar => 'Månedlig budsjett';

  @override
  String get budgetPremiumLocked => 'Globalt månedlig budsjett er premium';

  @override
  String get budgetUpgradePrompt => 'Oppgrader for å låse opp';

  @override
  String get noBudgetDefined => 'Ingen budsjett satt';

  @override
  String totalEstimated(String amount) {
    return 'Total estimert: $amount';
  }

  @override
  String get setBudgetButton => 'Sett budsjett';

  @override
  String get budgetLists => 'Lister';

  @override
  String get budgetValueLabel => 'Beløp';

  @override
  String get setBudgetTitle => 'Månedlig budsjett';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterPending => 'Ventende';

  @override
  String get filterPurchased => 'Kjøpt';

  @override
  String get sortName => 'Navn';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Dato';

  @override
  String get sortManual => 'Manuell';

  @override
  String get addItem => 'Legg til vare';

  @override
  String get itemName => 'Varenavn';

  @override
  String get quantityShort => 'Ant.';

  @override
  String get unit => 'Enhet';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Estimert pris';

  @override
  String get addItemPrice => 'Estimert pris';

  @override
  String get editItem => 'Rediger vare';

  @override
  String get quantityFull => 'Antall';

  @override
  String get editItemPrice => 'Estimert pris';

  @override
  String get addToPantry => 'Legg til i spiskammer';

  @override
  String addToPantryPrompt(String name) {
    return 'Legg til \"$name\" i spiskammeret?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktnavn';

  @override
  String get idealQty => 'Ideell ant.';

  @override
  String get currentQty => 'Nåværende ant.';

  @override
  String get trackStock => 'Spor lager';

  @override
  String get trackStockActive => 'Vises i handleforslag';

  @override
  String get trackStockInactive => 'Genererer ikke handleforslag';

  @override
  String get createListDialog => 'Opprett liste';

  @override
  String get renameListDialog => 'Gi listen nytt navn';

  @override
  String get listHistory => 'Listehistorikk';

  @override
  String get myLists => 'Mine lister';

  @override
  String get viewActive => 'Se aktive';

  @override
  String get viewHistory => 'Se historikk';

  @override
  String get noArchivedLists => 'Ingen arkiverte lister';

  @override
  String get noActiveLists => 'Ingen aktive lister';

  @override
  String completedOn(String date) {
    return 'Fullført $date';
  }

  @override
  String get sharedLabel => 'Delt';

  @override
  String get restore => 'Gjenopprett';

  @override
  String get removeSharedTooltip => 'Fjern';

  @override
  String get deleteListTitle => 'Slett liste';

  @override
  String deleteListContent(String name) {
    return 'Er du sikker på at du vil slette \"$name\"? Alle varer vil bli fjernet.';
  }

  @override
  String get removeSharedListTitle => 'Fjern delt liste';

  @override
  String removeSharedListContent(String name) {
    return 'Fjerne \"$name\" fra dine lister? Den opprinnelige listen vil ikke bli påvirket.';
  }

  @override
  String get createNewList => 'Opprett ny liste';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Få smarte forslag, oppskrifter og personlige tips med vår AI-assistent.';

  @override
  String get generalAssistant => 'Generell assistent';

  @override
  String get newChat => 'Ny chat';

  @override
  String get noHistory => 'Ingen chattehistorikk';

  @override
  String get deleteSession => 'Slett Chat';

  @override
  String get deleteSessionConfirm =>
      'Er du sikker på at du vil slette denne chatten? Meldingene vil gå tapt permanent.';

  @override
  String get clearHistory => 'Tøm historikk';

  @override
  String get clearHistoryConfirm => 'Slette alle meldinger i denne økten?';

  @override
  String get chatHint => 'Skriv meldingen din...';

  @override
  String get chatHintBlocked => 'Lås opp AI for å chatte';

  @override
  String chatError(String error) {
    return 'Feil ved lasting av chat: $error';
  }

  @override
  String get listHelp => 'Hvordan kan jeg hjelpe med listen din?';

  @override
  String get generalHelp => 'Hvordan kan jeg hjelpe deg med handlingen i dag?';

  @override
  String get chatSubtitle =>
      'Spør etter vareforslag, oppskrifter eller sparingstips.';

  @override
  String get aiError =>
      'Beklager, det oppstod en feil under behandlingen. Sjekk tilkoblingen din eller prøv igjen senere.';

  @override
  String get aiLimitAlmostReached => 'Nesten tom for AI-meldinger';

  @override
  String get unlockAi => 'Lås opp ubegrenset AI';

  @override
  String get aiTeaserFallback =>
      'Abonner på Premium for å låse opp hele svaret og få ubegrensede AI-tips for shopping...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Logg inn for å låse opp\npremiumfunksjoner';

  @override
  String get signInGoogle => 'Logg inn med Google';

  @override
  String get signInApple => 'Logg inn med Apple';

  @override
  String get continueAsGuest => 'Fortsett som gjest';

  @override
  String get onboardingWelcomeTitle => 'Velkommen til KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Den smarteste måten å organisere shoppingen på og spare penger.';

  @override
  String get onboardingSetupTitle => 'Tilpass opplevelsen din';

  @override
  String get onboardingSetupDesc =>
      'Velg hvordan du vil at KipiList skal se ut og fungere for deg.';

  @override
  String get onboardingLoginTitle => 'Lagre alt til skyen';

  @override
  String get onboardingLoginDesc =>
      'Dataene dine synkroniseres på tvers av alle enhetene dine';

  @override
  String get onboardingShareTitle => 'Del med de du er glad i';

  @override
  String get onboardingShareDesc =>
      'Synkroniser lister med familie og venner i sanntid';

  @override
  String get onboardingPremiumTitle => 'Lås opp alle funksjoner';

  @override
  String get onboardingPremiumSubtitle =>
      'Få mest mulig ut av handlelistene dine';

  @override
  String get onboardingAnnualBadge => 'Best verdi';

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
      'Avbryt når som helst. Ingen forpliktelse.';

  @override
  String get onboardingContinueAsGuest => 'Fortsett som gjest';

  @override
  String get onboardingRestore => 'Restaurere';

  @override
  String get onboardingRestoreDesc =>
      'Har du allerede et abonnement? Trykk her for å gjenopprette den.';

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
  String get onboardingExit => 'Gå';

  @override
  String get onboardingPersonalizationTitle => 'La oss bli kjent med deg';

  @override
  String get onboardingPersonalizationDesc =>
      'Vi bruker dette til å tilpasse forslagene dine og gjøre shopping smartere.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Hva er favorittmaten din?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'f.eks. Pizza, sushi, lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Fortsette';

  @override
  String get onboardingPersonalizationSkip => 'Hopp over for nå';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Fortell oss din favorittmat for å fortsette';

  @override
  String get settingsDefaultScreen => 'Standard startskjerm';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Velg mellom handleliste eller AI-chat';

  @override
  String get settingsScreenList => 'Handleliste';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Innloggingsfeil: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError => 'Feil ved lasting av tilbud. Prøv igjen.';

  @override
  String get paywallPurchaseError => 'Kunne ikke fullføre kjøpet. Prøv igjen.';

  @override
  String get paywallRestoreError =>
      'Finner ikke noe aktivt abonnement å gjenopprette.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAGER GRATIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count UKER GRATIS',
      one: '$count UKE GRATIS',
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
  String get paywallTrialTitle => 'Prøv KipiList Pro gratis i 7 dager';

  @override
  String get paywallTrialSubtitle =>
      'Avbryt når som helst. Ingen kostnad i dag.';

  @override
  String get paywallTrialCta => 'Start gratis prøveversjon';

  @override
  String get recipeAddToList => 'Legg til handleliste';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ingredienser lagt til $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Alt du trenger:';

  @override
  String get paywallFeatureUnlimitedLists => 'Ubegrensede lister';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Utgiftskontroll';

  @override
  String get paywallFeatureSharing => 'Deling';

  @override
  String get paywallBeforeAfterTitle => 'AI før og etter:';

  @override
  String get paywallLabelCommon => 'Vanlig';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ris';

  @override
  String get paywallBeforeItem2 => 'såpe';

  @override
  String get paywallBeforeItem3 => 'kjøtt';

  @override
  String get paywallBeforeItem4 => 'brød';

  @override
  String get paywallAfterItem1 => 'Korn';

  @override
  String get paywallAfterItem2 => 'Rengjøring';

  @override
  String get paywallAfterItem3 => 'Kjøtt';

  @override
  String get paywallAfterItem4 => 'Bakeri';

  @override
  String get paywallTestimonialsTitle => 'Hva brukerne våre sier:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organiserer shoppingen min på sekunder. Jeg sparer 20 min per markedsreise.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Jeg glemte aldri et listeelement igjen. AI-chatten er oppsiktsvekkende!';

  @override
  String get paywallSocialProof => '+2400 familier bruker det';

  @override
  String get paywallCtaUnlock => 'Lås opp PRO';

  @override
  String get paywallBestValue => 'BESTE VERDI';

  @override
  String get paywallMostPopular => 'MEST POPULÆR';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Sikker betaling';

  @override
  String get paywallSelectPlan => 'Velg din plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SPAR $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Bare $price/måned';
  }

  @override
  String get paywallPackageAnnual => 'Årsplan';

  @override
  String get paywallPackageMonthly => 'Månedsplan';

  @override
  String get paywallPackageLifetime => 'Livstidstilgang';

  @override
  String get paywallCancelAnytime =>
      'Avbryt når som helst. Ingen forpliktelse.';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'Personvernerklæring';

  @override
  String get paywallTerms => 'Vilkår for bruk';

  @override
  String get paywallRestore => 'Restaurere';

  @override
  String get paywallHeroHeadline => 'Kipi AI alltid ved din side';

  @override
  String get paywallHeroSubtitle =>
      'Legg til elementer, organiser lister og spar tid med AI i lommen';

  @override
  String get paywallBenefit1Desc =>
      'Legger til, organiserer og foreslår elementer 24/7';

  @override
  String get paywallBenefit2Desc => 'Ingen 3-listegrense';

  @override
  String get paywallBenefit3Desc => 'Utgiftssporing og familielister';

  @override
  String get paywallPackageMonthlyDesc => 'Full fleksibilitet';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Start gratis – $days dager';
  }

  @override
  String get premiumUpgrade => 'Oppgrader for å låse opp';

  @override
  String get itemRemoved => 'Vare fjernet';

  @override
  String get undo => 'Angre';

  @override
  String get emptyListTitle => 'Listen din er tom';

  @override
  String get emptyListSubtitle => 'Legg til varer for å komme i gang';

  @override
  String get noListFoundTitle => 'Ingen lister funnet';

  @override
  String get noListFoundSubtitle =>
      'Opprett din første liste for å komme i gang';

  @override
  String get createFirstList => 'Opprett første liste';

  @override
  String get listBudgetTitle => 'Listebudsjett';

  @override
  String get budgetAmountLabel => 'Budsjettbeløp';

  @override
  String get removeBudget => 'Fjern';

  @override
  String get prefUnlimitedLists => 'Ubegrensede lister';

  @override
  String get prefSharing => 'Del lister';

  @override
  String get prefFullHistory => 'Full historikk';

  @override
  String get prefExportData => 'Eksporter data';

  @override
  String get prefCustomThemes => 'Egendefinerte temaer';

  @override
  String get prefMonthlyBudget => 'Globalt månedlig budsjett';

  @override
  String get prefAIAssistant => 'Personlig AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Ubegrenset spiskammer';

  @override
  String get prefInteractiveArtifacts => 'Interaktive AI-artefakter';

  @override
  String get themeGreen => 'Grønn';

  @override
  String get themeBlue => 'Blå';

  @override
  String get themePurple => 'Lilla';

  @override
  String get themeRed => 'Rød';

  @override
  String get themeOrange => 'Oransje';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Rav';

  @override
  String get themeTeal => 'Blågrønn';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Frukt';

  @override
  String get catCleaning => 'Rengjøring';

  @override
  String get catBeverages => 'Drikkevarer';

  @override
  String get catBakery => 'Bakevarer';

  @override
  String get catOthers => 'Andre';

  @override
  String get unitPack => 'pakke';

  @override
  String get shareSubject => 'Handleliste';

  @override
  String get monthlyBudgetTitle => 'Månedlig budsjett';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Slett liste';

  @override
  String get pantryItemRemoved => 'Vare fjernet';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit varer må kjøpes',
      one: '$deficit vare må kjøpes',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Handlevogn total';

  @override
  String get restockLabel => 'Fyll opp';

  @override
  String get advancedFeatures => 'Avanserte funksjoner';

  @override
  String get selectAll => 'Velg alle';

  @override
  String get deselectAll => 'Velg bort alle';

  @override
  String get monthlyBudgetAppBar => 'Månedlig budsjett';

  @override
  String get budgetEditTitle => 'Månedlig budsjett';

  @override
  String get budgetDashboardTitle => 'Dashbord';

  @override
  String get selectListForDashboard => 'Velg en liste for å se dashbordet.';

  @override
  String get spendingAnalysis => 'Forbruksanalyse';

  @override
  String get noItemsToAnalyze => 'Ingen varer i listen å analysere.';

  @override
  String get markItemsToSeeAnalysis =>
      'Merk varer som kjøpt for å se analysen.';

  @override
  String get totalSpending => 'Totalt forbruk';

  @override
  String get spendingByCategory => 'Forbruk etter kategori';

  @override
  String get achievements => 'Prestasjoner';

  @override
  String get exportPdfExcel => 'Eksporter PDF/Excel';

  @override
  String get exportPdf => 'Eksporter som PDF';

  @override
  String get exportExcel => 'Eksporter som Excel';

  @override
  String get organizingAi => 'ORGANISERER MED AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nei';

  @override
  String get shareListText => 'Min handleliste';

  @override
  String get emptyListAddItems => 'Listen din er tom! Legg til varer først. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Listen magisk organisert etter kategorier! ✨';

  @override
  String get shoppingMode => 'Handlemåte';

  @override
  String get smartOrganization => 'Smart organisering';

  @override
  String get savings => 'Besparing';

  @override
  String get shoppingModeHeader => 'HANDLEMÅTE';

  @override
  String get shareAsText => 'Send varer som formatert tekst';

  @override
  String get shareRealtime => 'Sanntidssynkronisering med andre';

  @override
  String get quickRecipe => 'Rask oppskrift';

  @override
  String get quickRecipePrompt =>
      'Foreslå oppskrifter med varer fra listen min.';

  @override
  String get economyTips => 'Sparingstips';

  @override
  String get economyTipsPrompt =>
      'Hvordan kan jeg spare penger på dette kjøpet?';

  @override
  String get organizeAisles => 'Organiser etter ganger';

  @override
  String get organizeAislesPrompt => 'Organiser etter butikkganger.';

  @override
  String get recipeSuggestion => 'Oppskriftsforslag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kreditter igjen';
  }

  @override
  String get addAllToList => 'Legg alle til listen';

  @override
  String get organizeByAisles => 'Organiser etter ganger';

  @override
  String get voiceTranscriptionTooltip => 'Stemmeskriving (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-stemmekommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-stemmekommando';

  @override
  String get voiceCommandContent =>
      'Snakk naturlig for å administrere listen din!\n\nEksempler:\n• \'Legg til brød, ost, og skinke\'\n• \'Fjern vaskemiddel\'\n• \'Endre tema til blått\'\n\nDette er en eksklusiv funksjon i KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Se planer';

  @override
  String get itemsAddedSuccess => 'Varer ble lagt til i listen!';

  @override
  String get viewList => 'Se liste';

  @override
  String get feedbackTitle => 'Send tilbakemelding';

  @override
  String get feedbackPrompt => 'Hva vil du dele?';

  @override
  String get feedbackTypeBug => 'Rapporter feil';

  @override
  String get feedbackTypeBugHint => 'Noe fungerer ikke';

  @override
  String get feedbackTypeSuggestion => 'Forslag';

  @override
  String get feedbackTypeSuggestionHint => 'Idé til å forbedre appen';

  @override
  String get feedbackTypeTranslation => 'Oversettelsesproblem';

  @override
  String get feedbackTypeTranslationHint => 'Feil eller dårlig oversettelse';

  @override
  String get feedbackTypeFeature => 'Funksjonsforespørsel';

  @override
  String get feedbackTypeFeatureHint => 'Funksjon du ønsker å se';

  @override
  String get feedbackTypeOther => 'Annet';

  @override
  String get feedbackTypeOtherHint => 'Annen type tilbakemelding';

  @override
  String get feedbackHint => 'Beskriv tilbakemeldingen din i detalj...';

  @override
  String get feedbackSend => 'Send tilbakemelding';

  @override
  String get feedbackSending => 'Sender...';

  @override
  String get feedbackThankYou => 'Takk!';

  @override
  String get feedbackThankYouMessage =>
      'Tilbakemeldingen din er mottatt og hjelper oss å forbedre KipiList for alle.';

  @override
  String get feedbackBack => 'Tilbake';

  @override
  String feedbackError(String error) {
    return 'Feil ved sending: $error';
  }

  @override
  String get feedbackRetry => 'Prøv igjen';

  @override
  String get feedbackSettingsTitle => 'Send tilbakemelding';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapporter feil, foreslå forbedringer eller fiks oversettelser';

  @override
  String get aiEnergy => 'AI energi';

  @override
  String get searchInConversation => 'Søk i samtale...';

  @override
  String get noMessagesFound => 'Ingen meldinger funnet';

  @override
  String get suggestedQuestions => 'Foreslåtte spørsmål:';

  @override
  String get shoppingAssistant => 'Handleassistent';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased av $total kjøpt';
  }

  @override
  String get estimatedCost => 'Estimert';

  @override
  String get viewItems => 'Vis elementer';

  @override
  String get noItemsInList => 'Ingen elementer i listen';

  @override
  String get longHistoryWarning =>
      'Lang historie: assistenten fokuserer på de siste meldingene for bedre ytelse.';

  @override
  String get listening => 'Lytter...';

  @override
  String get addDirectToList => 'Legg direkte til listen';

  @override
  String get unlockFullResponse => 'Lås opp full respons';

  @override
  String get switchList => 'Bytt liste';

  @override
  String get marketMode => 'Markedsmodus';

  @override
  String get backToChat => 'Tilbake til Chat';

  @override
  String get finishShopping => 'Fullfør shopping';

  @override
  String get welcomeAiAssistant => 'Velkommen til AI Assistant';

  @override
  String get createListToStartAi =>
      'Lag en handleliste for å begynne å bruke smartchatten.';

  @override
  String get howCanIHelp => 'Hvordan kan jeg hjelpe?';

  @override
  String get chatSubtitleShort =>
      'Spør om priser, oppskrifter, organisering...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total kjøpt';
  }

  @override
  String get quickReplies => 'Raske svar:';

  @override
  String get voiceProFeature =>
      'Avanserte talekommandoer er Pro. Aktiverer grunnleggende diktering ...';

  @override
  String get viewPro => 'Vis Pro';

  @override
  String get errorLoadingChat => 'Oops! Noe gikk galt med å laste chatten.';

  @override
  String get errorLoadingChatSubtitle =>
      'Sjekk tilkoblingen eller prøv igjen senere.';

  @override
  String get errorOscillation =>
      'Dette kan oppstå på grunn av nettverkssvingninger eller midlertidig utilgjengelighet. Vennligst prøv igjen.';

  @override
  String get activeListening => 'Aktiv lytting';

  @override
  String get whatToDoWithItem => 'Hva vil du gjøre med denne varen?';

  @override
  String get viewDetails => 'Se detaljer';

  @override
  String get openMenu => 'Åpne menyen';

  @override
  String get viewRecipe => 'Se oppskrift';

  @override
  String get recipeCreated => 'Oppskrift laget!';

  @override
  String get editRecipe => 'Redigere';

  @override
  String get deleteRecipe => 'Slett';

  @override
  String get deleteRecipeConfirm => 'Vil du slette denne oppskriften?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Er du sikker på at du vil slette \"$recipeName\"? Denne handlingen kan ikke angres.';
  }

  @override
  String get ingredients => 'Ingredienser';

  @override
  String get instructions => 'Instruksjoner';

  @override
  String get prepTime => 'Forberedelsestid';

  @override
  String get recipeSaved => 'Oppskriften er lagret!';

  @override
  String get noRecipesSaved => 'Ingen oppskrifter lagret';

  @override
  String get noRecipesSavedHint =>
      'Lag din første egendefinerte oppskrift ved å trykke på knappen nedenfor.';

  @override
  String get myRecipes => 'Mine oppskrifter';

  @override
  String get newRecipe => 'Ny oppskrift';

  @override
  String get loadingRecipes => 'Laster inn oppskriftene dine...';

  @override
  String get errorLoadingRecipes => 'Feil ved innlasting av oppskrifter';

  @override
  String get addIngredient => 'Tilsett ingrediens';

  @override
  String get saveRecipe => 'Spare';

  @override
  String get recipeName => 'Navn på oppskriften';

  @override
  String get shortDescription => 'Kort beskrivelse';

  @override
  String get prepTimeMinutes => 'Forberedelsestid (minutter)';

  @override
  String get instructionsHint => 'Skriv ett trinn per linje...';

  @override
  String get addPhoto => 'Legg til bilde';

  @override
  String get imageUrlPlaceholder => 'Eller lim inn en bilde-URL';

  @override
  String get tags => 'Tagger';

  @override
  String get recipeTags => 'Oppskriftsetiketter';

  @override
  String get suggestedTags => 'Foreslått';

  @override
  String get searchRecipes => 'Søk etter oppskrifter...';

  @override
  String get filterByTag => 'Filtrer etter tag';

  @override
  String get allTags => 'Alle';

  @override
  String get recipeDeleted => 'Oppskriften er slettet';

  @override
  String get saveChanges => 'Lagre endringer';

  @override
  String get editRecipeTitle => 'Rediger oppskrift';

  @override
  String get newRecipeTitle => 'Ny oppskrift';

  @override
  String get requiredField => 'Obligatorisk';

  @override
  String get chooseImageSource => 'Velg bildekilde';

  @override
  String get gallery => 'Galleri';

  @override
  String get enterUrl => 'Skriv inn URL';

  @override
  String get recipeImage => 'Oppskriftsbilde';

  @override
  String get removeImage => 'Fjern bildet';

  @override
  String get mealPlannerTitle => 'Måltidsplanlegger';

  @override
  String get mealPlannerViewMonthly => 'Månedlig visning';

  @override
  String get mealPlannerViewWeekly => 'Ukentlig visning';

  @override
  String get mealPlannerNoMeals => 'Ingen måltider planlagt';

  @override
  String get mealPlannerNoMealsHint =>
      'Trykk på en dag for å legge til et måltid';

  @override
  String get mealPlannerLoading => 'Laster inn måltidsplan...';

  @override
  String get mealPlannerError => 'Feil ved innlasting av måltidsplan';

  @override
  String get mealPlannerAddMeal => 'Legg til måltid';

  @override
  String get mealPlannerEditMeal => 'Rediger måltid';

  @override
  String get mealPlannerDeleteMeal => 'Fjern måltidet';

  @override
  String get mealPlannerMealDeleted => 'Måltid fjernet';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porsjoner',
      one: '$count porsjoner',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porsjoner';

  @override
  String get mealPlannerNoteLabel => 'Merknad (valgfritt)';

  @override
  String get mealPlannerSelectRecipe => 'Velg en oppskrift';

  @override
  String get mealPlannerSearchRecipes => 'Søk etter oppskrifter...';

  @override
  String get mealPlannerNoRecipesFound => 'Ingen oppskrifter funnet';

  @override
  String get mealPlannerNoRecipesHint =>
      'Lag oppskrifter i Oppskrifter-fanen først';

  @override
  String get mealPlannerSave => 'Legg til i planen';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count av $total måltider planlagt';
  }

  @override
  String get mealPlannerGenerateList => 'Generer handleliste';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Legg til alle ingrediensene fra planlagte måltider denne uken på handlelisten din?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediens(er) lagt til i listen din!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Ingen ingredienser å legge til. Planlegg noen måltider med oppskrifter først.';

  @override
  String get mealPlannerGenerateListNoList => 'Lag en handleliste først.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Frokost';

  @override
  String get mealPlannerMealTypeLunch => 'Lunsj';

  @override
  String get mealPlannerMealTypeDinner => 'Middag';

  @override
  String get mealPlannerMealTypeSnack => 'Matbit';

  @override
  String get mealPlannerDateLabel => 'Dato';

  @override
  String get mealPlannerWeekEmpty => 'Ingenting planlagt denne uken';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Trykk på hvilken som helst dag for å begynne å planlegge måltidene dine!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Inviter til liste';

  @override
  String get shareApp => 'Del app';

  @override
  String get shareAppDescription => 'Inviter venner til å bruke KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Jeg bruker KipiList for å organisere handlen min! Last ned via linken min, så får vi begge 7 dager Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Få 7 dager med KipiList Premium!';

  @override
  String get gestureHint => 'Hold inne for å velge • Sveip for å fjerne';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Mine hyppige';

  @override
  String get catalogSearchGlobal => 'Søk etter et hvilket som helst produkt...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Søk i $category...';
  }

  @override
  String get catalogSortPopular => 'Mest populær';

  @override
  String get catalogSortAZ => 'A–Å';

  @override
  String get catalogFilterNational => 'Nationals';

  @override
  String get catalogRareSection => 'mindre vanlig i ditt land';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Legg til $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Produktet ble ikke funnet, skriv inn navnet';

  @override
  String get catalogBrowse => 'Bla gjennom katalogen';

  @override
  String get offlineBanner => 'Du er frakoblet';

  @override
  String get consentTitle => 'Personvern og analyse';

  @override
  String get consentBody =>
      'KipiList bruker Firebase Analytics for å forbedre opplevelsen din. Dine data behandles i henhold til våre retningslinjer for personvern.';

  @override
  String get consentAccept => 'Akseptere';

  @override
  String get consentDecline => 'Nei takk';

  @override
  String get mealPlannerPantryAllAvailable => 'På lager';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mangler elementer',
      one: '$count mangler element',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Utløpsdato';

  @override
  String get notInformed => 'Ikke informert';

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
  String get manageCategoriesTitle => 'Administrer kategorier';

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
  String get sortAZ => 'A–Å';

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
  String get backToToday => 'Tilbake til i dag';

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

/// The translations for Norwegian, as used in Norway (`no_NO`).
class AppLocalizationsNoNo extends AppLocalizationsNo {
  AppLocalizationsNoNo() : super('no_NO');

  @override
  String get appTitle => 'Handleliste';

  @override
  String get lists => 'Lister';

  @override
  String get pantry => 'Spiskammer';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Oppskrifter';

  @override
  String get navLists => 'Lister';

  @override
  String get navMealPlanner => 'Meny';

  @override
  String get cancel => 'Avbryt';

  @override
  String get save => 'Lagre';

  @override
  String get create => 'Opprett';

  @override
  String get add => 'Legg til';

  @override
  String get remove => 'Fjern';

  @override
  String get delete => 'Slett';

  @override
  String get edit => 'Rediger';

  @override
  String get copy => 'Kopier';

  @override
  String get next => 'Neste';

  @override
  String get retry => 'Prøv igjen';

  @override
  String get regenerate => 'Regenerer';

  @override
  String get copiedToClipboard => 'Kopiert til utklippstavle';

  @override
  String get confirm => 'Bekreft';

  @override
  String get close => 'Lukk';

  @override
  String get import => 'Importer';

  @override
  String get rename => 'Gi nytt navn';

  @override
  String get upgrade => 'Oppgrader';

  @override
  String get clear => 'Tøm';

  @override
  String error(String message) {
    return 'Feil: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Feil: $message';
  }

  @override
  String get purchaseError => 'Feil ved behandling av kjøp. Prøv igjen.';

  @override
  String get restoreError => 'Feil ved gjenoppretting av kjøp. Prøv igjen.';

  @override
  String get loading => 'Laster...';

  @override
  String get fieldRequired => 'Påkrevd felt';

  @override
  String get addedFeedback => 'Lagt til!';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Avslutt Shopping-modus';

  @override
  String get exit => 'Gå';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valgte',
      one: '$count valgt',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimert';

  @override
  String get alreadyPurchased => 'Allerede kjøpt';

  @override
  String get clearList => 'Tøm liste';

  @override
  String get clearPurchased => 'Fjern kjøpte';

  @override
  String get share => 'Del';

  @override
  String get shareViaCode => 'Del via kode';

  @override
  String get importViaCode => 'Importer via kode';

  @override
  String get listAssistant => 'Listeassistent';

  @override
  String get globalAssistant => 'Global assistent';

  @override
  String get becomePremium => 'Bli Premium';

  @override
  String get manageSubscription => 'Administrer abonnement';

  @override
  String get completePurchase => 'Fullfør kjøp';

  @override
  String get confirmClearList => 'Fjerne alle varer?';

  @override
  String get shareListTitle => 'Del liste';

  @override
  String get shareThisCode => 'Del denne koden:';

  @override
  String get validForLimitedTime => 'Gyldig i begrenset tid';

  @override
  String get importListTitle => 'Importer liste';

  @override
  String get enterCodeHint => 'Skriv inn koden';

  @override
  String get confirmArchiveTitle => 'Fullfør kjøp';

  @override
  String get confirmArchiveContent => 'Fullfør dette kjøpet og arkiver listen?';

  @override
  String get complete => 'Fullfør';

  @override
  String get listArchived => 'Listen ble arkivert!';

  @override
  String listAdded(String listName) {
    return '$listName lagt til!';
  }

  @override
  String get buy => 'Kjøp';

  @override
  String get unmark => 'Fjern markering';

  @override
  String confirmDeleteItems(int count) {
    return 'Fjerne $count vare(r)?';
  }

  @override
  String get confirmDeleteTitle => 'Bekreft';

  @override
  String confirmContent(int count) {
    return 'Fjerne $count vare(r)?';
  }

  @override
  String get archiveList => 'Arkiver liste';

  @override
  String get pantryAppBar => 'Spiskammer';

  @override
  String get generateShoppingList => 'Generer handleliste';

  @override
  String get pantryEmpty => 'Tomt spiskammer';

  @override
  String get pantryEmptySubtitle => 'Legg til produkter du ønsker å ha hjemme';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit vare(r) må kjøpes';
  }

  @override
  String get noItemsToBuy => 'Ingen varer må kjøpes';

  @override
  String get newPantryList => 'Spiskammerhandling';

  @override
  String get newListTitle => 'Ny handleliste';

  @override
  String itemsWillBeAdded(int count) {
    return '$count vare(r) vil bli lagt til';
  }

  @override
  String get listNameLabel => 'Listenavn';

  @override
  String listCreated(String name, int count) {
    return 'Listen \"$name\" opprettet med $count varer';
  }

  @override
  String get noTracking => 'Ingen sporing';

  @override
  String get markAsPurchased => 'Marker som kjøpt';

  @override
  String editPantryItem(String name) {
    return 'Rediger $name';
  }

  @override
  String get idealQuantity => 'Ideell mengde';

  @override
  String get currentQuantity => 'Nåværende mengde';

  @override
  String get consumed => 'Forbrukt';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name fylt opp til $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Fjerne \"$name\" fra spiskammeret?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Rediger $name';
  }

  @override
  String get settingsAppBar => 'Innstillinger';

  @override
  String get language => 'Språk';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'engelsk';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get chooseLanguage => 'Velg Språk';

  @override
  String get searchLanguage => 'Søk etter språk...';

  @override
  String get currency => 'Valuta';

  @override
  String get chooseCurrency => 'Velg Valuta';

  @override
  String get searchCurrency => 'Søk etter valuta...';

  @override
  String get appearance => 'Utseende';

  @override
  String get light => 'Lys';

  @override
  String get system => 'System';

  @override
  String get dark => 'Mørk';

  @override
  String get themeColor => 'Temafarge';

  @override
  String get dynamicColors => 'Dynamiske farger';

  @override
  String get dynamicColorsSubtitle => 'Bruk farger basert på bakgrunnen din';

  @override
  String get dynamicColorsEnabledWarning =>
      'Deaktiver dynamiske farger for at temafargen skal tre i kraft';

  @override
  String get finance => 'Økonomi';

  @override
  String get monthlyBudgetNav => 'Månedlig budsjett';

  @override
  String get budgetSubtitle => 'Spor dine månedlige utgifter';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Sikkerhetskopi';

  @override
  String get backupSubtitle => 'Eksporter eller importer dine data';

  @override
  String get about => 'Om';

  @override
  String get version => 'Versjon';

  @override
  String get privacy => 'Personvern';

  @override
  String get termsOfUse => 'Vilkår for bruk';

  @override
  String get backupTitle => 'Sikkerhetskopi';

  @override
  String get backupPremiumDescription =>
      'Sikkerhetskopi og eksport er en premiumfunksjon';

  @override
  String get exportData => 'Eksporter data';

  @override
  String get exportDataSubtitle => 'Lagre alle lister som JSON';

  @override
  String get importData => 'Importer data';

  @override
  String get importDataSubtitle => 'Gjenopprett lister fra en JSON';

  @override
  String get importJsonTitle => 'Importer JSON';

  @override
  String get importJsonHint => 'Lim inn sikkerhetskopi-JSON her...';

  @override
  String get backupExported => 'Sikkerhetskopi eksportert!';

  @override
  String get budgetAppBar => 'Månedlig budsjett';

  @override
  String get budgetPremiumLocked => 'Globalt månedlig budsjett er premium';

  @override
  String get budgetUpgradePrompt => 'Oppgrader for å låse opp';

  @override
  String get noBudgetDefined => 'Ingen budsjett satt';

  @override
  String totalEstimated(String amount) {
    return 'Total estimert: $amount';
  }

  @override
  String get setBudgetButton => 'Sett budsjett';

  @override
  String get budgetLists => 'Lister';

  @override
  String get budgetValueLabel => 'Beløp';

  @override
  String get setBudgetTitle => 'Månedlig budsjett';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterPending => 'Ventende';

  @override
  String get filterPurchased => 'Kjøpt';

  @override
  String get sortName => 'Navn';

  @override
  String get sortCategory => 'Kategori';

  @override
  String get sortDate => 'Dato';

  @override
  String get sortManual => 'Manuell';

  @override
  String get addItem => 'Legg til vare';

  @override
  String get itemName => 'Varenavn';

  @override
  String get quantityShort => 'Ant.';

  @override
  String get unit => 'Enhet';

  @override
  String get category => 'Kategori';

  @override
  String get estimatedPrice => 'Estimert pris';

  @override
  String get addItemPrice => 'Estimert pris';

  @override
  String get editItem => 'Rediger vare';

  @override
  String get quantityFull => 'Antall';

  @override
  String get editItemPrice => 'Estimert pris';

  @override
  String get addToPantry => 'Legg til i spiskammer';

  @override
  String addToPantryPrompt(String name) {
    return 'Legg til \"$name\" i spiskammeret?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produktnavn';

  @override
  String get idealQty => 'Ideell ant.';

  @override
  String get currentQty => 'Nåværende ant.';

  @override
  String get trackStock => 'Spor lager';

  @override
  String get trackStockActive => 'Vises i handleforslag';

  @override
  String get trackStockInactive => 'Genererer ikke handleforslag';

  @override
  String get createListDialog => 'Opprett liste';

  @override
  String get renameListDialog => 'Gi listen nytt navn';

  @override
  String get listHistory => 'Listehistorikk';

  @override
  String get myLists => 'Mine lister';

  @override
  String get viewActive => 'Se aktive';

  @override
  String get viewHistory => 'Se historikk';

  @override
  String get noArchivedLists => 'Ingen arkiverte lister';

  @override
  String get noActiveLists => 'Ingen aktive lister';

  @override
  String completedOn(String date) {
    return 'Fullført $date';
  }

  @override
  String get sharedLabel => 'Delt';

  @override
  String get restore => 'Gjenopprett';

  @override
  String get removeSharedTooltip => 'Fjern';

  @override
  String get deleteListTitle => 'Slett liste';

  @override
  String deleteListContent(String name) {
    return 'Er du sikker på at du vil slette \"$name\"? Alle varer vil bli fjernet.';
  }

  @override
  String get removeSharedListTitle => 'Fjern delt liste';

  @override
  String removeSharedListContent(String name) {
    return 'Fjerne \"$name\" fra dine lister? Den opprinnelige listen vil ikke bli påvirket.';
  }

  @override
  String get createNewList => 'Opprett ny liste';

  @override
  String get aiAssistant => 'AI-assistent';

  @override
  String get aiAssistantDescription =>
      'Få smarte forslag, oppskrifter og personlige tips med vår AI-assistent.';

  @override
  String get generalAssistant => 'Generell assistent';

  @override
  String get newChat => 'Ny chat';

  @override
  String get noHistory => 'Ingen chattehistorikk';

  @override
  String get deleteSession => 'Slett Chat';

  @override
  String get deleteSessionConfirm =>
      'Er du sikker på at du vil slette denne chatten? Meldingene vil gå tapt permanent.';

  @override
  String get clearHistory => 'Tøm historikk';

  @override
  String get clearHistoryConfirm => 'Slette alle meldinger i denne økten?';

  @override
  String get chatHint => 'Skriv meldingen din...';

  @override
  String get chatHintBlocked => 'Lås opp AI for å chatte';

  @override
  String chatError(String error) {
    return 'Feil ved lasting av chat: $error';
  }

  @override
  String get listHelp => 'Hvordan kan jeg hjelpe med listen din?';

  @override
  String get generalHelp => 'Hvordan kan jeg hjelpe deg med handlingen i dag?';

  @override
  String get chatSubtitle =>
      'Spør etter vareforslag, oppskrifter eller sparingstips.';

  @override
  String get aiError =>
      'Beklager, det oppstod en feil under behandlingen. Sjekk tilkoblingen din eller prøv igjen senere.';

  @override
  String get aiLimitAlmostReached => 'Nesten tom for AI-meldinger';

  @override
  String get unlockAi => 'Lås opp ubegrenset AI';

  @override
  String get aiTeaserFallback =>
      'Abonner på Premium for å låse opp hele svaret og få ubegrensede AI-tips for shopping...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Logg inn for å låse opp\npremiumfunksjoner';

  @override
  String get signInGoogle => 'Logg inn med Google';

  @override
  String get signInApple => 'Logg inn med Apple';

  @override
  String get continueAsGuest => 'Fortsett som gjest';

  @override
  String get onboardingWelcomeTitle => 'Velkommen til KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Den smarteste måten å organisere shoppingen på og spare penger.';

  @override
  String get onboardingSetupTitle => 'Tilpass opplevelsen din';

  @override
  String get onboardingSetupDesc =>
      'Velg hvordan du vil at KipiList skal se ut og fungere for deg.';

  @override
  String get onboardingLoginTitle => 'Lagre alt til skyen';

  @override
  String get onboardingLoginDesc =>
      'Dataene dine synkroniseres på tvers av alle enhetene dine';

  @override
  String get onboardingShareTitle => 'Del med de du er glad i';

  @override
  String get onboardingShareDesc =>
      'Synkroniser lister med familie og venner i sanntid';

  @override
  String get onboardingPremiumTitle => 'Lås opp alle funksjoner';

  @override
  String get onboardingPremiumSubtitle =>
      'Få mest mulig ut av handlelistene dine';

  @override
  String get onboardingAnnualBadge => 'Best verdi';

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
      'Avbryt når som helst. Ingen forpliktelse.';

  @override
  String get onboardingContinueAsGuest => 'Fortsett som gjest';

  @override
  String get onboardingRestore => 'Restaurere';

  @override
  String get onboardingRestoreDesc =>
      'Har du allerede et abonnement? Trykk her for å gjenopprette den.';

  @override
  String get onboardingExit => 'Gå';

  @override
  String get onboardingPersonalizationTitle => 'La oss bli kjent med deg';

  @override
  String get onboardingPersonalizationDesc =>
      'Vi bruker dette til å tilpasse forslagene dine og gjøre shopping smartere.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Hva er favorittmaten din?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'f.eks. Pizza, sushi, lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Fortsette';

  @override
  String get onboardingPersonalizationSkip => 'Hopp over for nå';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Fortell oss din favorittmat for å fortsette';

  @override
  String get settingsDefaultScreen => 'Standard startskjerm';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Velg mellom handleliste eller AI-chat';

  @override
  String get settingsScreenList => 'Handleliste';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Innloggingsfeil: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError => 'Feil ved lasting av tilbud. Prøv igjen.';

  @override
  String get paywallPurchaseError => 'Kunne ikke fullføre kjøpet. Prøv igjen.';

  @override
  String get paywallRestoreError =>
      'Finner ikke noe aktivt abonnement å gjenopprette.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAGER GRATIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count UKER GRATIS',
      one: '$count UKE GRATIS',
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
  String get paywallTrialTitle => 'Prøv KipiList Pro gratis i 7 dager';

  @override
  String get paywallTrialSubtitle =>
      'Avbryt når som helst. Ingen kostnad i dag.';

  @override
  String get paywallTrialCta => 'Start gratis prøveversjon';

  @override
  String get recipeAddToList => 'Legg til handleliste';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ingredienser lagt til $listName';
  }

  @override
  String get paywallFeaturesTitle => 'Alt du trenger:';

  @override
  String get paywallFeatureUnlimitedLists => 'Ubegrensede lister';

  @override
  String get paywallFeatureSmartAI => 'Smart AI';

  @override
  String get paywallFeatureExpenseControl => 'Utgiftskontroll';

  @override
  String get paywallFeatureSharing => 'Deling';

  @override
  String get paywallBeforeAfterTitle => 'AI før og etter:';

  @override
  String get paywallLabelCommon => 'Vanlig';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ris';

  @override
  String get paywallBeforeItem2 => 'såpe';

  @override
  String get paywallBeforeItem3 => 'kjøtt';

  @override
  String get paywallBeforeItem4 => 'brød';

  @override
  String get paywallAfterItem1 => 'Korn';

  @override
  String get paywallAfterItem2 => 'Rengjøring';

  @override
  String get paywallAfterItem3 => 'Kjøtt';

  @override
  String get paywallAfterItem4 => 'Bakeri';

  @override
  String get paywallTestimonialsTitle => 'Hva brukerne våre sier:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organiserer shoppingen min på sekunder. Jeg sparer 20 min per markedsreise.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Jeg glemte aldri et listeelement igjen. AI-chatten er oppsiktsvekkende!';

  @override
  String get paywallSocialProof => '+2400 familier bruker det';

  @override
  String get paywallCtaUnlock => 'Lås opp PRO';

  @override
  String get paywallBestValue => 'BESTE VERDI';

  @override
  String get paywallMostPopular => 'MEST POPULÆR';

  @override
  String get paywallSafeCheckout => 'Sikker betaling';

  @override
  String get paywallSelectPlan => 'Velg din plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SPAR $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Bare $price/måned';
  }

  @override
  String get paywallPackageAnnual => 'Årsplan';

  @override
  String get paywallPackageMonthly => 'Månedsplan';

  @override
  String get paywallPackageLifetime => 'Livstidstilgang';

  @override
  String get paywallCancelAnytime =>
      'Avbryt når som helst. Ingen forpliktelse.';

  @override
  String get paywallPolicy => 'Personvernerklæring';

  @override
  String get paywallTerms => 'Vilkår for bruk';

  @override
  String get paywallRestore => 'Restaurere';

  @override
  String get paywallHeroHeadline => 'Kipi AI alltid ved din side';

  @override
  String get paywallHeroSubtitle =>
      'Legg til elementer, organiser lister og spar tid med AI i lommen';

  @override
  String get paywallBenefit1Desc =>
      'Legger til, organiserer og foreslår elementer 24/7';

  @override
  String get paywallBenefit2Desc => 'Ingen 3-listegrense';

  @override
  String get paywallBenefit3Desc => 'Utgiftssporing og familielister';

  @override
  String get paywallPackageMonthlyDesc => 'Full fleksibilitet';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Start gratis – $days dager';
  }

  @override
  String get premiumUpgrade => 'Oppgrader for å låse opp';

  @override
  String get itemRemoved => 'Vare fjernet';

  @override
  String get undo => 'Angre';

  @override
  String get emptyListTitle => 'Listen din er tom';

  @override
  String get emptyListSubtitle => 'Legg til varer for å komme i gang';

  @override
  String get noListFoundTitle => 'Ingen lister funnet';

  @override
  String get noListFoundSubtitle =>
      'Opprett din første liste for å komme i gang';

  @override
  String get createFirstList => 'Opprett første liste';

  @override
  String get listBudgetTitle => 'Listebudsjett';

  @override
  String get budgetAmountLabel => 'Budsjettbeløp';

  @override
  String get removeBudget => 'Fjern';

  @override
  String get prefUnlimitedLists => 'Ubegrensede lister';

  @override
  String get prefSharing => 'Del lister';

  @override
  String get prefFullHistory => 'Full historikk';

  @override
  String get prefExportData => 'Eksporter data';

  @override
  String get prefCustomThemes => 'Egendefinerte temaer';

  @override
  String get prefMonthlyBudget => 'Globalt månedlig budsjett';

  @override
  String get prefAIAssistant => 'Personlig AI-assistent';

  @override
  String get prefUnlimitedPantry => 'Ubegrenset spiskammer';

  @override
  String get prefInteractiveArtifacts => 'Interaktive AI-artefakter';

  @override
  String get themeGreen => 'Grønn';

  @override
  String get themeBlue => 'Blå';

  @override
  String get themePurple => 'Lilla';

  @override
  String get themeRed => 'Rød';

  @override
  String get themeOrange => 'Oransje';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Rav';

  @override
  String get themeTeal => 'Blågrønn';

  @override
  String get themeBrown => 'Brun';

  @override
  String get catFruits => 'Frukt';

  @override
  String get catCleaning => 'Rengjøring';

  @override
  String get catBeverages => 'Drikkevarer';

  @override
  String get catBakery => 'Bakevarer';

  @override
  String get catOthers => 'Andre';

  @override
  String get unitPack => 'pakke';

  @override
  String get shareSubject => 'Handleliste';

  @override
  String get monthlyBudgetTitle => 'Månedlig budsjett';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Slett liste';

  @override
  String get pantryItemRemoved => 'Vare fjernet';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit varer må kjøpes',
      one: '$deficit vare må kjøpes',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Handlevogn total';

  @override
  String get restockLabel => 'Fyll opp';

  @override
  String get advancedFeatures => 'Avanserte funksjoner';

  @override
  String get selectAll => 'Velg alle';

  @override
  String get deselectAll => 'Velg bort alle';

  @override
  String get monthlyBudgetAppBar => 'Månedlig budsjett';

  @override
  String get budgetEditTitle => 'Månedlig budsjett';

  @override
  String get budgetDashboardTitle => 'Dashbord';

  @override
  String get selectListForDashboard => 'Velg en liste for å se dashbordet.';

  @override
  String get spendingAnalysis => 'Forbruksanalyse';

  @override
  String get noItemsToAnalyze => 'Ingen varer i listen å analysere.';

  @override
  String get markItemsToSeeAnalysis =>
      'Merk varer som kjøpt for å se analysen.';

  @override
  String get totalSpending => 'Totalt forbruk';

  @override
  String get spendingByCategory => 'Forbruk etter kategori';

  @override
  String get achievements => 'Prestasjoner';

  @override
  String get exportPdfExcel => 'Eksporter PDF/Excel';

  @override
  String get exportPdf => 'Eksporter som PDF';

  @override
  String get exportExcel => 'Eksporter som Excel';

  @override
  String get organizingAi => 'ORGANISERER MED AI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nei';

  @override
  String get shareListText => 'Min handleliste';

  @override
  String get emptyListAddItems => 'Listen din er tom! Legg til varer først. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Listen magisk organisert etter kategorier! ✨';

  @override
  String get shoppingMode => 'Handlemåte';

  @override
  String get smartOrganization => 'Smart organisering';

  @override
  String get savings => 'Besparing';

  @override
  String get shoppingModeHeader => 'HANDLEMÅTE';

  @override
  String get shareAsText => 'Send varer som formatert tekst';

  @override
  String get shareRealtime => 'Sanntidssynkronisering med andre';

  @override
  String get quickRecipe => 'Rask oppskrift';

  @override
  String get quickRecipePrompt =>
      'Foreslå oppskrifter med varer fra listen min.';

  @override
  String get economyTips => 'Sparingstips';

  @override
  String get economyTipsPrompt =>
      'Hvordan kan jeg spare penger på dette kjøpet?';

  @override
  String get organizeAisles => 'Organiser etter ganger';

  @override
  String get organizeAislesPrompt => 'Organiser etter butikkganger.';

  @override
  String get recipeSuggestion => 'Oppskriftsforslag';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kreditter igjen';
  }

  @override
  String get addAllToList => 'Legg alle til listen';

  @override
  String get organizeByAisles => 'Organiser etter ganger';

  @override
  String get voiceTranscriptionTooltip => 'Stemmeskriving (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'AI-stemmekommando (Premium)';

  @override
  String get voiceCommandTitle => 'AI-stemmekommando';

  @override
  String get voiceCommandContent =>
      'Snakk naturlig for å administrere listen din!\n\nEksempler:\n• \'Legg til brød, ost, og skinke\'\n• \'Fjern vaskemiddel\'\n• \'Endre tema til blått\'\n\nDette er en eksklusiv funksjon i KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Se planer';

  @override
  String get itemsAddedSuccess => 'Varer ble lagt til i listen!';

  @override
  String get viewList => 'Se liste';

  @override
  String get feedbackTitle => 'Send tilbakemelding';

  @override
  String get feedbackPrompt => 'Hva ønsker du å dele?';

  @override
  String get feedbackTypeBug => 'Rapporter feil';

  @override
  String get feedbackTypeBugHint => 'Noe fungerer ikke';

  @override
  String get feedbackTypeSuggestion => 'Forslag';

  @override
  String get feedbackTypeSuggestionHint => 'Ide for å forbedre appen';

  @override
  String get feedbackTypeTranslation => 'Oversettelsesproblem';

  @override
  String get feedbackTypeTranslationHint => 'Feil eller dårlig oversettelse';

  @override
  String get feedbackTypeFeature => 'Funksjonsforespørsel';

  @override
  String get feedbackTypeFeatureHint => 'Funksjon du ønsker å se';

  @override
  String get feedbackTypeOther => 'Annet';

  @override
  String get feedbackTypeOtherHint => 'Annen type tilbakemelding';

  @override
  String get feedbackHint => 'Beskriv tilbakemeldingen din i detalj...';

  @override
  String get feedbackSend => 'Send tilbakemelding';

  @override
  String get feedbackSending => 'Sender...';

  @override
  String get feedbackThankYou => 'Takk!';

  @override
  String get feedbackThankYouMessage =>
      'Din tilbakemelding er mottatt og hjelper oss med å forbedre KipiList for alle.';

  @override
  String get feedbackBack => 'Tilbake';

  @override
  String feedbackError(String error) {
    return 'Feil ved sending: $error';
  }

  @override
  String get feedbackRetry => 'Prøv igjen';

  @override
  String get feedbackSettingsTitle => 'Send tilbakemelding';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapporter feil, foreslå forbedringer, eller fiks oversettelser';

  @override
  String get aiEnergy => 'AI energi';

  @override
  String get searchInConversation => 'Søk i samtale...';

  @override
  String get noMessagesFound => 'Ingen meldinger funnet';

  @override
  String get suggestedQuestions => 'Foreslåtte spørsmål:';

  @override
  String get shoppingAssistant => 'Handleassistent';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased av $total kjøpt';
  }

  @override
  String get estimatedCost => 'Estimert';

  @override
  String get viewItems => 'Vis elementer';

  @override
  String get noItemsInList => 'Ingen elementer i listen';

  @override
  String get longHistoryWarning =>
      'Lang historie: assistenten fokuserer på de siste meldingene for bedre ytelse.';

  @override
  String get listening => 'Lytter...';

  @override
  String get addDirectToList => 'Legg direkte til listen';

  @override
  String get unlockFullResponse => 'Lås opp full respons';

  @override
  String get switchList => 'Bytt liste';

  @override
  String get marketMode => 'Markedsmodus';

  @override
  String get backToChat => 'Tilbake til Chat';

  @override
  String get finishShopping => 'Fullfør shopping';

  @override
  String get welcomeAiAssistant => 'Velkommen til AI Assistant';

  @override
  String get createListToStartAi =>
      'Lag en handleliste for å begynne å bruke smartchatten.';

  @override
  String get howCanIHelp => 'Hvordan kan jeg hjelpe?';

  @override
  String get chatSubtitleShort =>
      'Spør om priser, oppskrifter, organisering...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total kjøpt';
  }

  @override
  String get quickReplies => 'Raske svar:';

  @override
  String get voiceProFeature =>
      'Avanserte talekommandoer er Pro. Aktiverer grunnleggende diktering ...';

  @override
  String get viewPro => 'Vis Pro';

  @override
  String get errorLoadingChat => 'Oops! Noe gikk galt med å laste chatten.';

  @override
  String get errorLoadingChatSubtitle =>
      'Sjekk tilkoblingen eller prøv igjen senere.';

  @override
  String get errorOscillation =>
      'Dette kan oppstå på grunn av nettverkssvingninger eller midlertidig utilgjengelighet. Vennligst prøv igjen.';

  @override
  String get activeListening => 'Aktiv lytting';

  @override
  String get whatToDoWithItem => 'Hva vil du gjøre med denne varen?';

  @override
  String get viewDetails => 'Se detaljer';

  @override
  String get openMenu => 'Åpne menyen';

  @override
  String get viewRecipe => 'Se oppskrift';

  @override
  String get recipeCreated => 'Oppskrift laget!';

  @override
  String get editRecipe => 'Redigere';

  @override
  String get deleteRecipe => 'Slett';

  @override
  String get deleteRecipeConfirm => 'Vil du slette denne oppskriften?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Er du sikker på at du vil slette \"$recipeName\"? Denne handlingen kan ikke angres.';
  }

  @override
  String get ingredients => 'Ingredienser';

  @override
  String get instructions => 'Instruksjoner';

  @override
  String get prepTime => 'Forberedelsestid';

  @override
  String get recipeSaved => 'Oppskriften er lagret!';

  @override
  String get noRecipesSaved => 'Ingen oppskrifter lagret';

  @override
  String get noRecipesSavedHint =>
      'Lag din første egendefinerte oppskrift ved å trykke på knappen nedenfor.';

  @override
  String get myRecipes => 'Mine oppskrifter';

  @override
  String get newRecipe => 'Ny oppskrift';

  @override
  String get loadingRecipes => 'Laster oppskriftene dine ...';

  @override
  String get errorLoadingRecipes => 'Feil ved innlasting av oppskrifter';

  @override
  String get addIngredient => 'Tilsett ingrediens';

  @override
  String get saveRecipe => 'Spare';

  @override
  String get recipeName => 'Navn på oppskriften';

  @override
  String get shortDescription => 'Kort beskrivelse';

  @override
  String get prepTimeMinutes => 'Forberedelsestid (minutter)';

  @override
  String get instructionsHint => 'Skriv ett trinn per linje...';

  @override
  String get addPhoto => 'Legg til bilde';

  @override
  String get imageUrlPlaceholder => 'Eller lim inn en bilde-URL';

  @override
  String get tags => 'Tagger';

  @override
  String get recipeTags => 'Oppskriftsetiketter';

  @override
  String get suggestedTags => 'Foreslått';

  @override
  String get searchRecipes => 'Søk etter oppskrifter...';

  @override
  String get filterByTag => 'Filtrer etter tag';

  @override
  String get allTags => 'Alle';

  @override
  String get recipeDeleted => 'Oppskriften er slettet';

  @override
  String get saveChanges => 'Lagre endringer';

  @override
  String get editRecipeTitle => 'Rediger oppskrift';

  @override
  String get newRecipeTitle => 'Ny oppskrift';

  @override
  String get requiredField => 'Obligatorisk';

  @override
  String get chooseImageSource => 'Velg bildekilde';

  @override
  String get gallery => 'Galleri';

  @override
  String get enterUrl => 'Skriv inn URL';

  @override
  String get recipeImage => 'Oppskriftsbilde';

  @override
  String get removeImage => 'Fjern bildet';

  @override
  String get mealPlannerTitle => 'Måltidsplanlegger';

  @override
  String get mealPlannerViewMonthly => 'Månedlig visning';

  @override
  String get mealPlannerViewWeekly => 'Ukentlig visning';

  @override
  String get mealPlannerNoMeals => 'Ingen måltider planlagt';

  @override
  String get mealPlannerNoMealsHint =>
      'Trykk på en dag for å legge til et måltid';

  @override
  String get mealPlannerLoading => 'Laster inn måltidsplan...';

  @override
  String get mealPlannerError => 'Feil ved innlasting av måltidsplan';

  @override
  String get mealPlannerAddMeal => 'Legg til måltid';

  @override
  String get mealPlannerEditMeal => 'Rediger måltid';

  @override
  String get mealPlannerDeleteMeal => 'Fjern måltidet';

  @override
  String get mealPlannerMealDeleted => 'Måltid fjernet';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porsjoner',
      one: '$count porsjoner',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porsjoner';

  @override
  String get mealPlannerNoteLabel => 'Merknad (valgfritt)';

  @override
  String get mealPlannerSelectRecipe => 'Velg en oppskrift';

  @override
  String get mealPlannerSearchRecipes => 'Søk etter oppskrifter...';

  @override
  String get mealPlannerNoRecipesFound => 'Ingen oppskrifter funnet';

  @override
  String get mealPlannerNoRecipesHint =>
      'Lag oppskrifter i Oppskrifter-fanen først';

  @override
  String get mealPlannerSave => 'Legg til i planen';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count av $total måltider planlagt';
  }

  @override
  String get mealPlannerGenerateList => 'Generer handleliste';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Legg til alle ingrediensene fra planlagte måltider denne uken på handlelisten din?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrediens(er) lagt til i listen din!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Ingen ingredienser å legge til. Planlegg noen måltider med oppskrifter først.';

  @override
  String get mealPlannerGenerateListNoList => 'Lag en handleliste først.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Frokost';

  @override
  String get mealPlannerMealTypeLunch => 'Lunsj';

  @override
  String get mealPlannerMealTypeDinner => 'Middag';

  @override
  String get mealPlannerMealTypeSnack => 'Matbit';

  @override
  String get mealPlannerDateLabel => 'Dato';

  @override
  String get mealPlannerWeekEmpty => 'Ingenting planlagt denne uken';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Trykk på hvilken som helst dag for å begynne å planlegge måltidene dine!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Inviter til liste';

  @override
  String get shareApp => 'Del app';

  @override
  String get shareAppDescription => 'Inviter venner til å bruke KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Jeg bruker KipiList for å organisere handlen min! Last ned via linken min, så får vi begge 7 dager Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Få 7 dager med KipiList Premium!';

  @override
  String get gestureHint => 'Hold inne for å velge • Sveip for å fjerne';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Mine hyppige';

  @override
  String get catalogSearchGlobal => 'Søk etter et hvilket som helst produkt...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Søk i $category...';
  }

  @override
  String get catalogSortPopular => 'Mest populær';

  @override
  String get catalogSortAZ => 'A–Å';

  @override
  String get catalogFilterNational => 'Nationals';

  @override
  String get catalogRareSection => 'mindre vanlig i ditt land';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Legg til $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Produktet ble ikke funnet, skriv inn navnet';

  @override
  String get catalogBrowse => 'Bla gjennom katalogen';

  @override
  String get offlineBanner => 'Du er frakoblet';

  @override
  String get consentTitle => 'Personvern og analyse';

  @override
  String get consentBody =>
      'KipiList bruker Firebase Analytics for å forbedre opplevelsen din. Dine data behandles i henhold til våre retningslinjer for personvern.';

  @override
  String get consentAccept => 'Akseptere';

  @override
  String get consentDecline => 'Nei takk';

  @override
  String get mealPlannerPantryAllAvailable => 'På lager';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mangler elementer',
      one: '$count mangler element',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Utløpsdato';

  @override
  String get notInformed => 'Ikke informert';

  @override
  String get manageCategoriesTitle => 'Administrer kategorier';

  @override
  String get sortAZ => 'A–Å';

  @override
  String get backToToday => 'Tilbake til i dag';
}
