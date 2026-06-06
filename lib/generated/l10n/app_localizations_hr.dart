// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Popis za kupovinu';

  @override
  String get lists => 'Popisi';

  @override
  String get pantry => 'Ostava';

  @override
  String get cancel => 'Odustani';

  @override
  String get save => 'Spremi';

  @override
  String get create => 'Stvori';

  @override
  String get add => 'Dodaj';

  @override
  String get remove => 'Ukloni';

  @override
  String get delete => 'Izbriši';

  @override
  String get edit => 'Uredi';

  @override
  String get copy => 'Kopiraj';

  @override
  String get next => 'Sljedeći';

  @override
  String get retry => 'Pokušaj ponovno';

  @override
  String get regenerate => 'Regeneriraj';

  @override
  String get copiedToClipboard => 'Kopirano u međuspremnik';

  @override
  String get confirm => 'Potvrdi';

  @override
  String get close => 'Zatvori';

  @override
  String get import => 'Uvezi';

  @override
  String get rename => 'Preimenuj';

  @override
  String get upgrade => 'Nadogradi';

  @override
  String get clear => 'Očisti';

  @override
  String error(String message) {
    return 'Greška: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Greška: $message';
  }

  @override
  String get purchaseError => 'Greška u obradi kupnje. Pokušaj ponovno.';

  @override
  String get restoreError => 'Greška u obnavljanju kupnji. Pokušaj ponovno.';

  @override
  String get loading => 'Učitavanje...';

  @override
  String get fieldRequired => 'Obavezno polje';

  @override
  String get addedFeedback => 'Dodano!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Odabrano $count',
      few: 'Odabrano $count',
      one: 'Odabrano $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Procijenjeno';

  @override
  String get alreadyPurchased => 'Već kupljeno';

  @override
  String get clearList => 'Očisti popis';

  @override
  String get clearPurchased => 'Očisti kupljeno';

  @override
  String get share => 'Podijeli';

  @override
  String get shareViaCode => 'Podijeli putem koda';

  @override
  String get importViaCode => 'Uvezi putem koda';

  @override
  String get listAssistant => 'Pomoćnik za popis';

  @override
  String get globalAssistant => 'Globalni pomoćnik';

  @override
  String get becomePremium => 'Postani Premium';

  @override
  String get manageSubscription => 'Upravljanje pretplatom';

  @override
  String get completePurchase => 'Dovrši kupnju';

  @override
  String get confirmClearList => 'Ukloniti sve stavke?';

  @override
  String get shareListTitle => 'Podijeli popis';

  @override
  String get shareThisCode => 'Podijeli ovaj kod:';

  @override
  String get validForLimitedTime => 'Vrijedi ograničeno vrijeme';

  @override
  String get importListTitle => 'Uvezi popis';

  @override
  String get enterCodeHint => 'Unesi kod';

  @override
  String get confirmArchiveTitle => 'Dovrši kupnju';

  @override
  String get confirmArchiveContent => 'Dovršiti ovu kupnju i arhivirati popis?';

  @override
  String get complete => 'Dovrši';

  @override
  String get listArchived => 'Popis uspješno arhiviran!';

  @override
  String listAdded(String listName) {
    return '$listName dodan!';
  }

  @override
  String get buy => 'Kupi';

  @override
  String get unmark => 'Odznači';

  @override
  String confirmDeleteItems(int count) {
    return 'Ukloniti $count stavku(i)?';
  }

  @override
  String get confirmDeleteTitle => 'Potvrdi';

  @override
  String confirmContent(int count) {
    return 'Ukloniti $count stavku(i)?';
  }

  @override
  String get archiveList => 'Arhiviraj popis';

  @override
  String get pantryAppBar => 'Ostava';

  @override
  String get generateShoppingList => 'Generiraj popis za kupnju';

  @override
  String get pantryEmpty => 'Prazna ostava';

  @override
  String get pantryEmptySubtitle => 'Dodaj proizvode koje želiš imati kod kuće';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit stavku(i) treba kupiti';
  }

  @override
  String get noItemsToBuy => 'Nema stavki za kupnju';

  @override
  String get newPantryList => 'Kupnja za ostavu';

  @override
  String get newListTitle => 'Novi popis za kupnju';

  @override
  String itemsWillBeAdded(int count) {
    return '$count stavku(i) će biti dodano';
  }

  @override
  String get listNameLabel => 'Naziv popisa';

  @override
  String listCreated(String name, int count) {
    return 'Popis \"$name\" stvoren s $count stavki';
  }

  @override
  String get noTracking => 'Bez praćenja';

  @override
  String get markAsPurchased => 'Označi kao kupljeno';

  @override
  String editPantryItem(String name) {
    return 'Uredi $name';
  }

  @override
  String get idealQuantity => 'Idealna količina';

  @override
  String get currentQuantity => 'Trenutna količina';

  @override
  String get consumed => 'Potrošeno';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name nadopunjeno na $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Ukloniti \"$name\" iz ostave?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Uredi $name';
  }

  @override
  String get settingsAppBar => 'Postavke';

  @override
  String get language => 'Jezik';

  @override
  String get languagePortuguese => 'português (Brazil)';

  @override
  String get languageEnglish => 'engleski';

  @override
  String get languageSystem => 'Zadano sustava';

  @override
  String get chooseLanguage => 'Odaberi jezik';

  @override
  String get searchLanguage => 'Pretraži jezik...';

  @override
  String get currency => 'Valuta';

  @override
  String get chooseCurrency => 'Odaberite Valutu';

  @override
  String get searchCurrency => 'Traži valutu...';

  @override
  String get appearance => 'Izgled';

  @override
  String get light => 'Svijetlo';

  @override
  String get system => 'Sustav';

  @override
  String get dark => 'Tamno';

  @override
  String get themeColor => 'Boja teme';

  @override
  String get dynamicColors => 'Dinamične boje';

  @override
  String get dynamicColorsSubtitle => 'Koristi boje na temelju pozadine';

  @override
  String get dynamicColorsEnabledWarning =>
      'Onemogućite dinamičke boje da bi boja teme stupila na snagu';

  @override
  String get finance => 'Financije';

  @override
  String get monthlyBudgetNav => 'Mjesečni proračun';

  @override
  String get budgetSubtitle => 'Prati svoju mjesečnu potrošnju';

  @override
  String get data => 'Podaci';

  @override
  String get backupNav => 'Sigurnosna kopija';

  @override
  String get backupSubtitle => 'Izvezi ili uvezi svoje podatke';

  @override
  String get about => 'O nama';

  @override
  String get version => 'Verzija';

  @override
  String get privacy => 'Privatnost';

  @override
  String get termsOfUse => 'Uvjeti korištenja';

  @override
  String get backupTitle => 'Sigurnosna kopija';

  @override
  String get backupPremiumDescription =>
      'Sigurnosna kopija i izvoz su Premium značajka';

  @override
  String get exportData => 'Izvezi podatke';

  @override
  String get exportDataSubtitle => 'Spremi sve popise kao JSON';

  @override
  String get importData => 'Uvezi podatke';

  @override
  String get importDataSubtitle => 'Vrati popise iz JSON-a';

  @override
  String get importJsonTitle => 'Uvezi JSON';

  @override
  String get importJsonHint => 'Zalijepi JSON sigurnosne kopije ovdje...';

  @override
  String get backupExported => 'Sigurnosna kopija izvezena!';

  @override
  String get budgetAppBar => 'Mjesečni proračun';

  @override
  String get budgetPremiumLocked => 'Globalni mjesečni proračun je Premium';

  @override
  String get budgetUpgradePrompt => 'Nadogradi za otključavanje';

  @override
  String get noBudgetDefined => 'Nije postavljen proračun';

  @override
  String totalEstimated(String amount) {
    return 'Ukupno procijenjeno: $amount';
  }

  @override
  String get setBudgetButton => 'Postavi proračun';

  @override
  String get budgetLists => 'Popisi';

  @override
  String get budgetValueLabel => 'Iznos';

  @override
  String get setBudgetTitle => 'Mjesečni proračun';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Sve';

  @override
  String get filterPending => 'Na čekanju';

  @override
  String get filterPurchased => 'Kupljeno';

  @override
  String get sortName => 'Naziv';

  @override
  String get sortCategory => 'Kategorija';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Ručno';

  @override
  String get addItem => 'Dodaj stavku';

  @override
  String get itemName => 'Naziv stavke';

  @override
  String get quantityShort => 'Kol';

  @override
  String get unit => 'Jedinica';

  @override
  String get category => 'Kategorija';

  @override
  String get estimatedPrice => 'Procijenjena cijena';

  @override
  String get addItemPrice => 'Procijenjena cijena';

  @override
  String get editItem => 'Uredi stavku';

  @override
  String get quantityFull => 'Količina';

  @override
  String get editItemPrice => 'Procijenjena cijena';

  @override
  String get addToPantry => 'Dodaj u ostavu';

  @override
  String addToPantryPrompt(String name) {
    return 'Dodati \"$name\" u tvoju ostavu?';
  }

  @override
  String get yes => 'Da';

  @override
  String get productName => 'Naziv proizvoda';

  @override
  String get idealQty => 'Idealna kol';

  @override
  String get currentQty => 'Trenutna kol';

  @override
  String get trackStock => 'Prati zalihe';

  @override
  String get trackStockActive => 'Pojavljuje se u prijedlozima za kupnju';

  @override
  String get trackStockInactive => 'Ne generira prijedlog za kupnju';

  @override
  String get createListDialog => 'Stvori popis';

  @override
  String get renameListDialog => 'Preimenuj popis';

  @override
  String get listHistory => 'Povijest popisa';

  @override
  String get myLists => 'Moji popisi';

  @override
  String get viewActive => 'Pregledaj aktivne';

  @override
  String get viewHistory => 'Pregledaj povijest';

  @override
  String get noArchivedLists => 'Nema arhiviranih popisa';

  @override
  String get noActiveLists => 'Nema aktivnih popisa';

  @override
  String completedOn(String date) {
    return 'Dovršeno $date';
  }

  @override
  String get sharedLabel => 'Podijeljeno';

  @override
  String get restore => 'Vrati';

  @override
  String get removeSharedTooltip => 'Ukloni';

  @override
  String get deleteListTitle => 'Izbriši popis';

  @override
  String deleteListContent(String name) {
    return 'Jesi li siguran da želiš izbrisati \"$name\"? Sve stavke će biti uklonjene.';
  }

  @override
  String get removeSharedListTitle => 'Ukloni podijeljeni popis';

  @override
  String removeSharedListContent(String name) {
    return 'Ukloniti \"$name\" s tvojih popisa? Originalni popis neće biti pogođen.';
  }

  @override
  String get createNewList => 'Stvori novi popis';

  @override
  String get aiAssistant => 'AI pomoćnik';

  @override
  String get aiAssistantDescription =>
      'Dobij pametne prijedloge, recepte i personalizirane savjete s našim AI pomoćnikom.';

  @override
  String get generalAssistant => 'Opći pomoćnik';

  @override
  String get newChat => 'Novi razgovor';

  @override
  String get noHistory => 'Nema povijesti razgovora';

  @override
  String get deleteSession => 'Izbriši chat';

  @override
  String get deleteSessionConfirm =>
      'Jeste li sigurni da želite izbrisati ovaj chat? Poruke će biti trajno izgubljene.';

  @override
  String get clearHistory => 'Očisti povijest';

  @override
  String get clearHistoryConfirm => 'Izbrisati sve poruke u ovoj sesiji?';

  @override
  String get chatHint => 'Upiši svoju poruku...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Greška u učitavanju chata: $error';
  }

  @override
  String get listHelp => 'Kako mogu pomoći s tvojim popisom?';

  @override
  String get generalHelp => 'Kako mogu pomoći s tvojom današnjom kupovinom?';

  @override
  String get chatSubtitle =>
      'Zatraži prijedloge stavki, recepte ili savjete za uštedu.';

  @override
  String get aiError =>
      'Oprosti, došlo je do greške u obradi tvog zahtjeva. Provjeri svoju vezu ili pokušaj ponovno kasnije.';

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
  String get loginPrompt => 'Prijavi se za otključavanje\nPremium značajki';

  @override
  String get signInGoogle => 'Prijava s Googleom';

  @override
  String get signInApple => 'Prijava s Appleom';

  @override
  String get continueAsGuest => 'Nastavi kao gost';

  @override
  String get onboardingWelcomeTitle => 'Dobrodošli na KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Najpametniji način da organizirate kupovinu i uštedite novac.';

  @override
  String get onboardingSetupTitle => 'Personalizirajte svoje iskustvo';

  @override
  String get onboardingSetupDesc =>
      'Odaberite kako želite da KipiList izgleda i radi za vas.';

  @override
  String get onboardingLoginTitle => 'Sve spremite u oblak';

  @override
  String get onboardingLoginDesc =>
      'Vaši podaci sinkronizirani na svim vašim uređajima';

  @override
  String get onboardingShareTitle => 'Podijelite s onima koje volite';

  @override
  String get onboardingShareDesc =>
      'Sinkronizirajte popise s obitelji i prijateljima u stvarnom vremenu';

  @override
  String get onboardingPremiumTitle => 'Otključajte sve značajke';

  @override
  String get onboardingPremiumSubtitle =>
      'Izvucite maksimum iz svojih popisa za kupnju';

  @override
  String get onboardingAnnualBadge => 'Najbolja vrijednost';

  @override
  String get onboardingMonthlyLabel => 'Mjesečno';

  @override
  String get onboardingAnnualLabel => 'Godišnji';

  @override
  String get onboardingViewAllPlans => 'Pogledajte sve planove';

  @override
  String get onboardingSubscribeCta => 'Pretplatite se';

  @override
  String get onboardingCancelAnytime => 'Otkaži bilo kada. Bez obveze.';

  @override
  String get onboardingContinueAsGuest => 'Nastavite kao gost';

  @override
  String get onboardingRestore => 'Vratiti';

  @override
  String get onboardingRestoreDesc =>
      'Već imate pretplatu? Dodirnite ovdje da ga vratite.';

  @override
  String get onboardingExit => 'Izlaz';

  @override
  String get onboardingPersonalizationTitle => 'Hajde da te upoznamo';

  @override
  String get onboardingPersonalizationDesc =>
      'Koristit ćemo to da personaliziramo vaše prijedloge i kupnju učinimo pametnijom.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Koja ti je omiljena hrana?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'npr. Pizza, Sushi, Lazanje...';

  @override
  String get onboardingPersonalizationCta => 'Nastaviti';

  @override
  String get onboardingPersonalizationSkip => 'Preskoči za sada';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Recite nam svoju omiljenu hranu za nastavak';

  @override
  String get settingsDefaultScreen => 'Zadani početni zaslon';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Odaberite između popisa za kupovinu ili AI chata';

  @override
  String get settingsScreenList => 'Popis za kupovinu';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Greška pri prijavi: $error';
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
  String get paywallCtaTrial => 'Start My Free Trial';

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
  String get premiumUpgrade => 'Nadogradi za otključavanje';

  @override
  String get itemRemoved => 'Stavka uklonjena';

  @override
  String get undo => 'Poništi';

  @override
  String get emptyListTitle => 'Tvoj popis je prazan';

  @override
  String get emptyListSubtitle => 'Dodaj stavke za početak';

  @override
  String get noListFoundTitle => 'Nema pronađenih popisa';

  @override
  String get noListFoundSubtitle => 'Stvori svoj prvi popis za početak';

  @override
  String get createFirstList => 'Stvori prvi popis';

  @override
  String get listBudgetTitle => 'Proračun popisa';

  @override
  String get budgetAmountLabel => 'Iznos proračuna';

  @override
  String get removeBudget => 'Ukloni';

  @override
  String get prefUnlimitedLists => 'Neograničeni popisi';

  @override
  String get prefSharing => 'Dijeljenje popisa';

  @override
  String get prefFullHistory => 'Puna povijest';

  @override
  String get prefExportData => 'Izvoz podataka';

  @override
  String get prefCustomThemes => 'Prilagođene teme';

  @override
  String get prefMonthlyBudget => 'Globalni mjesečni proračun';

  @override
  String get prefAIAssistant => 'Osobni AI pomoćnik';

  @override
  String get prefUnlimitedPantry => 'Neograničena ostava';

  @override
  String get prefInteractiveArtifacts => 'Interaktivni AI artefakti';

  @override
  String get themeGreen => 'Zelena';

  @override
  String get themeBlue => 'Plava';

  @override
  String get themePurple => 'Ljubičasta';

  @override
  String get themeRed => 'Crvena';

  @override
  String get themeOrange => 'Narančasta';

  @override
  String get themePink => 'Ružičasta';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Jantar';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Smeđa';

  @override
  String get catFruits => 'Voće';

  @override
  String get catCleaning => 'Čišćenje';

  @override
  String get catBeverages => 'Pića';

  @override
  String get catBakery => 'Pekara';

  @override
  String get catOthers => 'Ostalo';

  @override
  String get unitPack => 'paket';

  @override
  String get shareSubject => 'Popis za kupovinu';

  @override
  String get monthlyBudgetTitle => 'Mjesečni proračun';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Izbriši popis';

  @override
  String get pantryItemRemoved => 'Stavka uklonjena';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit stavki treba kupiti',
      few: '$deficit stavke treba kupiti',
      one: '$deficit stavku treba kupiti',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Ukupno košarica';

  @override
  String get restockLabel => 'Nadopuni';

  @override
  String get advancedFeatures => 'Napredne značajke';

  @override
  String get selectAll => 'Odaberi sve';

  @override
  String get deselectAll => 'Poništi odabir';

  @override
  String get monthlyBudgetAppBar => 'Mjesečni proračun';

  @override
  String get budgetEditTitle => 'Mjesečni proračun';

  @override
  String get budgetDashboardTitle => 'Nadzorna ploča';

  @override
  String get selectListForDashboard =>
      'Odaberi popis za prikaz nadzorne ploče.';

  @override
  String get spendingAnalysis => 'Analiza potrošnje';

  @override
  String get noItemsToAnalyze => 'Nema stavki u popisu za analizu.';

  @override
  String get markItemsToSeeAnalysis =>
      'Označi stavke kao kupljene za prikaz analize.';

  @override
  String get totalSpending => 'Ukupno potrošeno';

  @override
  String get spendingByCategory => 'Potrošnja po kategoriji';

  @override
  String get achievements => 'Postignuća';

  @override
  String get exportPdfExcel => 'Izvezi PDF/Excel';

  @override
  String get exportPdf => 'Izvezi kao PDF';

  @override
  String get exportExcel => 'Izvezi kao Excel';

  @override
  String get organizingAi => 'ORGANIZIRANJE S AI...';

  @override
  String get yesLabel => 'Da';

  @override
  String get noLabel => 'Ne';

  @override
  String get shareListText => 'Moj popis za kupovinu';

  @override
  String get emptyListAddItems => 'Tvoj popis je prazan! Prvo dodaj stavke. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Popis čarobno organiziran po kategorijama! ✨';

  @override
  String get shoppingMode => 'Način kupnje';

  @override
  String get smartOrganization => 'Pametna organizacija';

  @override
  String get savings => 'Ušteda';

  @override
  String get shoppingModeHeader => 'NAČIN KUPNJE';

  @override
  String get shareAsText => 'Pošalji stavke kao formatirani tekst';

  @override
  String get shareRealtime =>
      'Sinkronizacija u stvarnom vremenu s drugim osobama';

  @override
  String get quickRecipe => 'Brzi recept';

  @override
  String get quickRecipePrompt => 'Predloži recepte sa stavkama s mog popisa.';

  @override
  String get economyTips => 'Savjeti za uštedu';

  @override
  String get economyTipsPrompt => 'Kako mogu uštedjeti na ovoj kupnji?';

  @override
  String get organizeAisles => 'Organiziraj po prolazima';

  @override
  String get organizeAislesPrompt => 'Organiziraj po prolazima trgovine.';

  @override
  String get recipeSuggestion => 'Prijedlog recepta';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Preostalo $remaining kredita';
  }

  @override
  String get addAllToList => 'Dodaj sve na popis';

  @override
  String get organizeByAisles => 'Organiziraj po prolazima';

  @override
  String get voiceTranscriptionTooltip => 'Glasovno tipkanje (Besplatno)';

  @override
  String get aiVoiceCommandTooltip => 'AI glasovna naredba (Premium)';

  @override
  String get voiceCommandTitle => 'AI glasovna naredba';

  @override
  String get voiceCommandContent =>
      'Govori prirodno za upravljanje svojim popisom!\n\nPrimjeri:\n• \'Dodaj kruh, sir i šunku\'\n• \'Ukloni deterdžent za rublje\'\n• \'Promijeni temu u plavu\'\n\nOvo je ekskluzivna značajka KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Pogledaj planove';

  @override
  String get itemsAddedSuccess => 'Stavke uspješno dodane na popis!';

  @override
  String get viewList => 'Pogledaj popis';

  @override
  String get feedbackTitle => 'Pošalji povratne informacije';

  @override
  String get feedbackPrompt => 'Što želite podijeliti?';

  @override
  String get feedbackTypeBug => 'Prijavi grešku';

  @override
  String get feedbackTypeBugHint => 'Nešto ne radi';

  @override
  String get feedbackTypeSuggestion => 'Prijedlog';

  @override
  String get feedbackTypeSuggestionHint => 'Ideja za poboljšanje aplikacije';

  @override
  String get feedbackTypeTranslation => 'Problem s prijevodom';

  @override
  String get feedbackTypeTranslationHint => 'Netočan ili nespretan prijevod';

  @override
  String get feedbackTypeFeature => 'Zahtjev za značajku';

  @override
  String get feedbackTypeFeatureHint => 'Značajka koju želite vidjeti';

  @override
  String get feedbackTypeOther => 'Ostalo';

  @override
  String get feedbackTypeOtherHint => 'Druga vrsta povratnih informacija';

  @override
  String get feedbackHint => 'Opišite svoje povratne informacije detaljno...';

  @override
  String get feedbackSend => 'Pošalji povratne informacije';

  @override
  String get feedbackSending => 'Slanje...';

  @override
  String get feedbackThankYou => 'Hvala vam!';

  @override
  String get feedbackThankYouMessage =>
      'Vaše povratne informacije su primljene i pomažu nam poboljšati KipiList za sve.';

  @override
  String get feedbackBack => 'Natrag';

  @override
  String feedbackError(String error) {
    return 'Greška pri slanju: $error';
  }

  @override
  String get feedbackRetry => 'Pokušaj ponovno';

  @override
  String get feedbackSettingsTitle => 'Pošalji povratne informacije';

  @override
  String get feedbackSettingsSubtitle =>
      'Prijavite greške, predložite poboljšanja ili ispravite prijevode';

  @override
  String get aiEnergy => 'AI energija';

  @override
  String get searchInConversation => 'Traži u razgovoru...';

  @override
  String get noMessagesFound => 'Nema pronađenih poruka';

  @override
  String get suggestedQuestions => 'Predložena pitanja:';

  @override
  String get shoppingAssistant => 'Pomoćnik u kupovini';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'Kupljeno $purchased od $total';
  }

  @override
  String get estimatedCost => 'Procijenjeno';

  @override
  String get viewItems => 'Prikaz stavki';

  @override
  String get noItemsInList => 'Nema stavki na popisu';

  @override
  String get longHistoryWarning =>
      'Duga povijest: pomoćnik se fokusira na najnovije poruke za bolju izvedbu.';

  @override
  String get listening => 'Slušanje...';

  @override
  String get addDirectToList => 'Dodaj izravno na popis';

  @override
  String get unlockFullResponse => 'Otključaj puni odgovor';

  @override
  String get switchList => 'Promijeni popis';

  @override
  String get marketMode => 'Tržišni način rada';

  @override
  String get backToChat => 'Natrag na Chat';

  @override
  String get finishShopping => 'Završite kupovinu';

  @override
  String get welcomeAiAssistant => 'Dobro došli u AI Assistant';

  @override
  String get createListToStartAi =>
      'Napravite popis za kupovinu kako biste počeli koristiti pametni chat.';

  @override
  String get howCanIHelp => 'Kako mogu pomoći?';

  @override
  String get chatSubtitleShort => 'Pitajte za cijene, recepte, organizaciju...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total kupljeno';
  }

  @override
  String get quickReplies => 'Brzi odgovori:';

  @override
  String get voiceProFeature =>
      'Napredne glasovne naredbe su Pro. Omogućavanje osnovnog diktiranja...';

  @override
  String get viewPro => 'Pogledajte Pro';

  @override
  String get errorLoadingChat =>
      'Ups! Nešto nije u redu prilikom učitavanja chata.';

  @override
  String get errorLoadingChatSubtitle =>
      'Provjerite vezu ili pokušajte ponovno kasnije.';

  @override
  String get errorOscillation =>
      'To se može dogoditi zbog oscilacija mreže ili privremene nedostupnosti. Molimo pokušajte ponovo.';

  @override
  String get activeListening => 'Aktivno slušanje';

  @override
  String get whatToDoWithItem => 'Što želite učiniti s ovom stavkom?';

  @override
  String get viewDetails => 'Prikaži pojedinosti';

  @override
  String get openMenu => 'Otvori izbornik';

  @override
  String get viewRecipe => 'Vidi recept';

  @override
  String get recipeCreated => 'Recept stvoren!';

  @override
  String get editRecipe => 'Uredi';

  @override
  String get deleteRecipe => 'Izbriši';

  @override
  String get deleteRecipeConfirm => 'Izbrisati ovaj recept?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Jeste li sigurni da želite izbrisati \"$recipeName\"? Ova se radnja ne može poništiti.';
  }

  @override
  String get ingredients => 'Sastojci';

  @override
  String get instructions => 'Upute';

  @override
  String get prepTime => 'Vrijeme prip.';

  @override
  String get recipeSaved => 'Recept spremljen!';

  @override
  String get noRecipesSaved => 'Nema spremljenih recepata';

  @override
  String get noRecipesSavedHint =>
      'Stvorite svoj prvi prilagođeni recept dodirom na gumb ispod.';

  @override
  String get myRecipes => 'Moji recepti';

  @override
  String get newRecipe => 'Novi recept';

  @override
  String get loadingRecipes => 'Učitavanje vaših recepata...';

  @override
  String get errorLoadingRecipes => 'Greška pri učitavanju recepata';

  @override
  String get addIngredient => 'Dodaj sastojak';

  @override
  String get saveRecipe => 'Spremi';

  @override
  String get recipeName => 'Naziv recepta';

  @override
  String get shortDescription => 'Kratki opis';

  @override
  String get prepTimeMinutes => 'Vrijeme pripreme (minute)';

  @override
  String get instructionsHint => 'Upiši jedan korak po retku...';

  @override
  String get addPhoto => 'Dodaj fotografiju';

  @override
  String get imageUrlPlaceholder => 'Ili zalijepi URL slike';

  @override
  String get tags => 'Oznake';

  @override
  String get recipeTags => 'Oznake recepta';

  @override
  String get suggestedTags => 'Predloženo';

  @override
  String get searchRecipes => 'Pretraži recepte...';

  @override
  String get filterByTag => 'Filtriraj po oznaci';

  @override
  String get allTags => 'Sve';

  @override
  String get recipeDeleted => 'Recept izbrisan';

  @override
  String get saveChanges => 'Spremi promjene';

  @override
  String get editRecipeTitle => 'Uredi recept';

  @override
  String get newRecipeTitle => 'Novi recept';

  @override
  String get requiredField => 'Obavezno';

  @override
  String get chooseImageSource => 'Odaberi izvor slike';

  @override
  String get gallery => 'Galerija';

  @override
  String get enterUrl => 'Unesi URL';

  @override
  String get recipeImage => 'Slika recepta';

  @override
  String get removeImage => 'Ukloni sliku';

  @override
  String get mealPlannerTitle => 'Planer obroka';

  @override
  String get mealPlannerViewMonthly => 'Mjesečni prikaz';

  @override
  String get mealPlannerViewWeekly => 'Tjedni prikaz';

  @override
  String get mealPlannerNoMeals => 'Nema planiranih obroka';

  @override
  String get mealPlannerNoMealsHint => 'Dodirni dan za dodavanje obroka';

  @override
  String get mealPlannerLoading => 'Učitavanje plana obroka...';

  @override
  String get mealPlannerError => 'Greška pri učitavanju plana obroka';

  @override
  String get mealPlannerAddMeal => 'Dodaj obrok';

  @override
  String get mealPlannerEditMeal => 'Uredi obrok';

  @override
  String get mealPlannerDeleteMeal => 'Ukloni obrok';

  @override
  String get mealPlannerMealDeleted => 'Obrok uklonjen';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porcija',
      few: '$count porcije',
      one: '$count porcija',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porcije';

  @override
  String get mealPlannerNoteLabel => 'Bilješka (opcionalno)';

  @override
  String get mealPlannerSelectRecipe => 'Odaberi recept';

  @override
  String get mealPlannerSearchRecipes => 'Pretraži recepte...';

  @override
  String get mealPlannerNoRecipesFound => 'Recepti nisu pronađeni';

  @override
  String get mealPlannerNoRecipesHint =>
      'Prvo stvorite recepte u kartici Recepti';

  @override
  String get mealPlannerSave => 'Dodaj u plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count od $total planiranih obroka';
  }

  @override
  String get mealPlannerGenerateList => 'Generiraj popis za kupnju';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Dodati sve sastojke iz planiranih obroka za ovaj tjedan na popis za kupnju?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count sastojak(a) dodano na vaš popis!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Nema sastojaka za dodavanje. Prvo isplanirajte obroke s receptima.';

  @override
  String get mealPlannerGenerateListNoList => 'Prvo stvorite popis za kupnju.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Doručak';

  @override
  String get mealPlannerMealTypeLunch => 'Ručak';

  @override
  String get mealPlannerMealTypeDinner => 'Večera';

  @override
  String get mealPlannerMealTypeSnack => 'Međuobrok';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Ništa nije planirano za ovaj tjedan';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Dodirni bilo koji dan za početak planiranja obroka!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Pozovite na popis';

  @override
  String get shareApp => 'Dijeli aplikaciju';

  @override
  String get shareAppDescription => 'Pozovite prijatelje da koriste KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Za organizaciju kupovine koristim KipiList! Preuzmite putem moje veze i oboje ćemo dobiti 7 dana Premiuma besplatno: $url';
  }

  @override
  String get shareReferralSubject => 'Dobijte 7 dana KipiList Premiuma!';
}
