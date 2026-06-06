// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Ostoslista';

  @override
  String get lists => 'Listat';

  @override
  String get pantry => 'Ruokakomero';

  @override
  String get cancel => 'Peruuta';

  @override
  String get save => 'Tallenna';

  @override
  String get create => 'Luo';

  @override
  String get add => 'Lisää';

  @override
  String get remove => 'Poista';

  @override
  String get delete => 'Poista';

  @override
  String get edit => 'Muokkaa';

  @override
  String get copy => 'Kopioi';

  @override
  String get next => 'Seuraavaksi';

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get regenerate => 'Luo uudelleen';

  @override
  String get copiedToClipboard => 'Kopioitu leikepöydälle';

  @override
  String get confirm => 'Vahvista';

  @override
  String get close => 'Sulje';

  @override
  String get import => 'Tuo';

  @override
  String get rename => 'Nimeä uudelleen';

  @override
  String get upgrade => 'Päivitä';

  @override
  String get clear => 'Tyhjennä';

  @override
  String error(String message) {
    return 'Virhe: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Virhe: $message';
  }

  @override
  String get purchaseError => 'Virhe ostoksen käsittelyssä. Yritä uudelleen.';

  @override
  String get restoreError => 'Virhe ostosten palauttamisessa. Yritä uudelleen.';

  @override
  String get loading => 'Ladataan...';

  @override
  String get fieldRequired => 'Pakollinen kenttä';

  @override
  String get addedFeedback => 'Lisätty!';

  @override
  String selectedItems(int count) {
    return 'Valittu $count';
  }

  @override
  String get estimated => 'Arvioitu';

  @override
  String get alreadyPurchased => 'Jo ostettu';

  @override
  String get clearList => 'Tyhjennä lista';

  @override
  String get clearPurchased => 'Tyhjennä ostetut';

  @override
  String get share => 'Jaa';

  @override
  String get shareViaCode => 'Jaa koodilla';

  @override
  String get importViaCode => 'Tuo koodilla';

  @override
  String get listAssistant => 'Lista-assistentti';

  @override
  String get globalAssistant => 'Yleinen assistentti';

  @override
  String get becomePremium => 'Hanki Premium';

  @override
  String get manageSubscription => 'Hallinnoi tilausta';

  @override
  String get completePurchase => 'Suorita osto';

  @override
  String get confirmClearList => 'Poistetaanko kaikki kohteet?';

  @override
  String get shareListTitle => 'Jaa lista';

  @override
  String get shareThisCode => 'Jaa tämä koodi:';

  @override
  String get validForLimitedTime => 'Voimassa rajoitetun ajan';

  @override
  String get importListTitle => 'Tuo lista';

  @override
  String get enterCodeHint => 'Syötä koodi';

  @override
  String get confirmArchiveTitle => 'Suorita osto';

  @override
  String get confirmArchiveContent =>
      'Suoritetaanko tämä osto ja arkistoidaan lista?';

  @override
  String get complete => 'Suorita';

  @override
  String get listArchived => 'Lista arkistoitu onnistuneesti!';

  @override
  String listAdded(String listName) {
    return '$listName lisätty!';
  }

  @override
  String get buy => 'Osta';

  @override
  String get unmark => 'Poista merkintä';

  @override
  String confirmDeleteItems(int count) {
    return 'Poistetaanko $count kohde(tta)?';
  }

  @override
  String get confirmDeleteTitle => 'Vahvista';

  @override
  String confirmContent(int count) {
    return 'Poistetaanko $count kohde(tta)?';
  }

  @override
  String get archiveList => 'Arkistoi lista';

  @override
  String get pantryAppBar => 'Ruokakomero';

  @override
  String get generateShoppingList => 'Luo ostoslista';

  @override
  String get pantryEmpty => 'Tyhjä ruokakomero';

  @override
  String get pantryEmptySubtitle =>
      'Lisää tuotteita, joita haluat pitää kotona';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit kohde(tta) on ostettava';
  }

  @override
  String get noItemsToBuy => 'Ei ostettavia kohteita';

  @override
  String get newPantryList => 'Ruokakomero-ostokset';

  @override
  String get newListTitle => 'Uusi ostoslista';

  @override
  String itemsWillBeAdded(int count) {
    return '$count kohde(tta) lisätään';
  }

  @override
  String get listNameLabel => 'Listan nimi';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" luotu $count kohteella';
  }

  @override
  String get noTracking => 'Ei seurantaa';

  @override
  String get markAsPurchased => 'Merkitse ostetuksi';

  @override
  String editPantryItem(String name) {
    return 'Muokkaa $name';
  }

  @override
  String get idealQuantity => 'Ihannemäärä';

  @override
  String get currentQuantity => 'Nykyinen määrä';

  @override
  String get consumed => 'Kulutettu';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name täydennetty määrään $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Poistetaanko \"$name\" ruokakomerosta?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Muokkaa $name';
  }

  @override
  String get settingsAppBar => 'Asetukset';

  @override
  String get language => 'Kieli';

  @override
  String get languagePortuguese => 'portugali (Brasilia)';

  @override
  String get languageEnglish => 'englanti';

  @override
  String get languageSystem => 'Järjestelmän oletus';

  @override
  String get chooseLanguage => 'Valitse kieli';

  @override
  String get searchLanguage => 'Hae kieltä...';

  @override
  String get currency => 'Valuutta';

  @override
  String get chooseCurrency => 'Valitse Valuutta';

  @override
  String get searchCurrency => 'Hae valuutta...';

  @override
  String get appearance => 'Ulkoasu';

  @override
  String get light => 'Vaalea';

  @override
  String get system => 'Järjestelmä';

  @override
  String get dark => 'Tumma';

  @override
  String get themeColor => 'Teeman väri';

  @override
  String get dynamicColors => 'Dynaamiset värit';

  @override
  String get dynamicColorsSubtitle => 'Käytä taustakuvan mukaisia värejä';

  @override
  String get dynamicColorsEnabledWarning =>
      'Poista dynaamiset värit käytöstä, jotta teemaväri tulee voimaan';

  @override
  String get finance => 'Talous';

  @override
  String get monthlyBudgetNav => 'Kuukausibudjetti';

  @override
  String get budgetSubtitle => 'Seuraa kuukausittaisia kulujasi';

  @override
  String get data => 'Tiedot';

  @override
  String get backupNav => 'Varmuuskopio';

  @override
  String get backupSubtitle => 'Vie tai tuo tietosi';

  @override
  String get about => 'Tietoja';

  @override
  String get version => 'Versio';

  @override
  String get privacy => 'Yksityisyys';

  @override
  String get termsOfUse => 'Käyttöehdot';

  @override
  String get backupTitle => 'Varmuuskopio';

  @override
  String get backupPremiumDescription =>
      'Varmuuskopiointi ja vienti on Premium-ominaisuus';

  @override
  String get exportData => 'Vie tiedot';

  @override
  String get exportDataSubtitle => 'Tallenna kaikki listat JSON-muodossa';

  @override
  String get importData => 'Tuo tiedot';

  @override
  String get importDataSubtitle => 'Palauta listat JSON-tiedostosta';

  @override
  String get importJsonTitle => 'Tuo JSON';

  @override
  String get importJsonHint => 'Liitä varmuuskopion JSON tähän...';

  @override
  String get backupExported => 'Varmuuskopio viety!';

  @override
  String get budgetAppBar => 'Kuukausibudjetti';

  @override
  String get budgetPremiumLocked => 'Globaali kuukausibudjetti on Premium';

  @override
  String get budgetUpgradePrompt => 'Päivitä avataksesi';

  @override
  String get noBudgetDefined => 'Budjettia ei asetettu';

  @override
  String totalEstimated(String amount) {
    return 'Arvioitu yhteensä: $amount';
  }

  @override
  String get setBudgetButton => 'Aseta budjetti';

  @override
  String get budgetLists => 'Listat';

  @override
  String get budgetValueLabel => 'Summa';

  @override
  String get setBudgetTitle => 'Kuukausibudjetti';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Kaikki';

  @override
  String get filterPending => 'Odottaa';

  @override
  String get filterPurchased => 'Ostetut';

  @override
  String get sortName => 'Nimi';

  @override
  String get sortCategory => 'Kategoria';

  @override
  String get sortDate => 'Päivämäärä';

  @override
  String get sortManual => 'Manuaalinen';

  @override
  String get addItem => 'Lisää kohde';

  @override
  String get itemName => 'Kohteen nimi';

  @override
  String get quantityShort => 'Määrä';

  @override
  String get unit => 'Yksikkö';

  @override
  String get category => 'Kategoria';

  @override
  String get estimatedPrice => 'Arvioitu hinta';

  @override
  String get addItemPrice => 'Arvioitu hinta';

  @override
  String get editItem => 'Muokkaa kohdetta';

  @override
  String get quantityFull => 'Määrä';

  @override
  String get editItemPrice => 'Arvioitu hinta';

  @override
  String get addToPantry => 'Lisää ruokakomeroon';

  @override
  String addToPantryPrompt(String name) {
    return 'Lisätäänkö \"$name\" ruokakomeroosi?';
  }

  @override
  String get yes => 'Kyllä';

  @override
  String get productName => 'Tuotteen nimi';

  @override
  String get idealQty => 'Ihannemäärä';

  @override
  String get currentQty => 'Nykyinen määrä';

  @override
  String get trackStock => 'Seuraa varastoa';

  @override
  String get trackStockActive => 'Näkyy ostoehdotuksissa';

  @override
  String get trackStockInactive => 'Ei luo ostoehdotusta';

  @override
  String get createListDialog => 'Luo lista';

  @override
  String get renameListDialog => 'Nimeä lista uudelleen';

  @override
  String get listHistory => 'Listahistoria';

  @override
  String get myLists => 'Minun listat';

  @override
  String get viewActive => 'Näytä aktiiviset';

  @override
  String get viewHistory => 'Näytä historia';

  @override
  String get noArchivedLists => 'Ei arkistoituja listoja';

  @override
  String get noActiveLists => 'Ei aktiivisia listoja';

  @override
  String completedOn(String date) {
    return 'Suoritettu $date';
  }

  @override
  String get sharedLabel => 'Jaettu';

  @override
  String get restore => 'Palauta';

  @override
  String get removeSharedTooltip => 'Poista';

  @override
  String get deleteListTitle => 'Poista lista';

  @override
  String deleteListContent(String name) {
    return 'Oletko varma, että haluat poistaa \"$name\"? Kaikki kohteet poistetaan.';
  }

  @override
  String get removeSharedListTitle => 'Poista jaettu lista';

  @override
  String removeSharedListContent(String name) {
    return 'Poistetaanko \"$name\" listoistasi? Alkuperäiseen listaan ei kosketa.';
  }

  @override
  String get createNewList => 'Luo uusi lista';

  @override
  String get aiAssistant => 'AI-assistentti';

  @override
  String get aiAssistantDescription =>
      'Saa älykkäitä ehdotuksia, reseptejä ja henkilökohtaisia vinkkejä AI-assistentiltamme.';

  @override
  String get generalAssistant => 'Yleinen assistentti';

  @override
  String get newChat => 'Uusi Chat';

  @override
  String get noHistory => 'Ei keskusteluhistoriaa';

  @override
  String get deleteSession => 'Poista Chat';

  @override
  String get deleteSessionConfirm =>
      'Haluatko varmasti poistaa tämän keskustelun? Viestit katoavat pysyvästi.';

  @override
  String get clearHistory => 'Tyhjennä historia';

  @override
  String get clearHistoryConfirm =>
      'Poistetaanko kaikki viestit tästä istunnosta?';

  @override
  String get chatHint => 'Kirjoita viestisi...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Virhe ladattaessa chattia: $error';
  }

  @override
  String get listHelp => 'Miten voin auttaa listasi kanssa?';

  @override
  String get generalHelp => 'Miten voin auttaa ostoksissasi tänään?';

  @override
  String get chatSubtitle =>
      'Kysy kohde-ehdotuksia, reseptejä tai säästövinkkejä.';

  @override
  String get aiError =>
      'Anteeksi, pyyntösi käsittelyssä tapahtui virhe. Tarkista yhteys tai yritä myöhemmin uudelleen.';

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
  String get loginPrompt => 'Kirjaudu sisään avataksesi\nPremium-ominaisuudet';

  @override
  String get signInGoogle => 'Kirjaudu Google-tilillä';

  @override
  String get signInApple => 'Kirjaudu Apple-tilillä';

  @override
  String get continueAsGuest => 'Jatka vieraana';

  @override
  String get onboardingWelcomeTitle => 'Tervetuloa KipiList -palveluun';

  @override
  String get onboardingWelcomeDesc =>
      'Älykkäin tapa järjestää ostoksesi ja säästää rahaa.';

  @override
  String get onboardingSetupTitle => 'Mukauta kokemustasi';

  @override
  String get onboardingSetupDesc =>
      'Valitse, miltä haluat KipiListin näyttävän ja toimivan sinulle.';

  @override
  String get onboardingLoginTitle => 'Tallenna kaikki pilveen';

  @override
  String get onboardingLoginDesc =>
      'Tietosi synkronoidaan kaikkien laitteidesi välillä';

  @override
  String get onboardingShareTitle => 'Jaa rakastamiesi kanssa';

  @override
  String get onboardingShareDesc =>
      'Synkronoi luettelot perheen ja ystävien kanssa reaaliajassa';

  @override
  String get onboardingPremiumTitle => 'Avaa kaikki ominaisuudet';

  @override
  String get onboardingPremiumSubtitle => 'Ota kaikki irti ostoslistoistasi';

  @override
  String get onboardingAnnualBadge => 'Paras arvo';

  @override
  String get onboardingMonthlyLabel => 'Kuukausittain';

  @override
  String get onboardingAnnualLabel => 'Vuosittainen';

  @override
  String get onboardingViewAllPlans => 'Katso kaikki suunnitelmat';

  @override
  String get onboardingSubscribeCta => 'Tilaa';

  @override
  String get onboardingCancelAnytime =>
      'Peru milloin tahansa. Ei sitoutumista.';

  @override
  String get onboardingContinueAsGuest => 'Jatka vieraana';

  @override
  String get onboardingRestore => 'Palauttaa';

  @override
  String get onboardingRestoreDesc =>
      'Onko sinulla jo tilaus? Palauta se napauttamalla tätä.';

  @override
  String get onboardingExit => 'Poistu';

  @override
  String get onboardingPersonalizationTitle => 'Tutustutaanpa sinuun';

  @override
  String get onboardingPersonalizationDesc =>
      'Käytämme tätä mukauttaaksemme ehdotuksiasi ja tehdäksemme ostoksista älykkäämpiä.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Mikä on lempiruokasi?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'esim. Pizzaa, Sushia, Lasagnea...';

  @override
  String get onboardingPersonalizationCta => 'Jatkaa';

  @override
  String get onboardingPersonalizationSkip => 'Ohita toistaiseksi';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Kerro meille suosikkiruokasi jatkaaksesi';

  @override
  String get settingsDefaultScreen => 'Oletusaloitusnäyttö';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Valitse ostoslistan tai AI-chatin välillä';

  @override
  String get settingsScreenList => 'Ostoslista';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Kirjautumisvirhe: $error';
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
  String get premiumUpgrade => 'Päivitä avataksesi';

  @override
  String get itemRemoved => 'Kohde poistettu';

  @override
  String get undo => 'Kumoa';

  @override
  String get emptyListTitle => 'Listasi on tyhjä';

  @override
  String get emptyListSubtitle => 'Lisää kohteita aloittaaksesi';

  @override
  String get noListFoundTitle => 'Listoja ei löytynyt';

  @override
  String get noListFoundSubtitle => 'Luo ensimmäinen listasi aloittaaksesi';

  @override
  String get createFirstList => 'Luo ensimmäinen lista';

  @override
  String get listBudgetTitle => 'Listan budjetti';

  @override
  String get budgetAmountLabel => 'Budjetin määrä';

  @override
  String get removeBudget => 'Poista';

  @override
  String get prefUnlimitedLists => 'Rajattomat listat';

  @override
  String get prefSharing => 'Jaa listat';

  @override
  String get prefFullHistory => 'Täysi historia';

  @override
  String get prefExportData => 'Vie tiedot';

  @override
  String get prefCustomThemes => 'Mukautetut teemat';

  @override
  String get prefMonthlyBudget => 'Globaali kuukausibudjetti';

  @override
  String get prefAIAssistant => 'Henkilökohtainen AI-assistentti';

  @override
  String get prefUnlimitedPantry => 'Rajaton ruokakomero';

  @override
  String get prefInteractiveArtifacts => 'Interaktiiviset AI-artefaktit';

  @override
  String get themeGreen => 'Vihreä';

  @override
  String get themeBlue => 'Sininen';

  @override
  String get themePurple => 'Violetti';

  @override
  String get themeRed => 'Punainen';

  @override
  String get themeOrange => 'Oranssi';

  @override
  String get themePink => 'Vaaleanpunainen';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Meripihka';

  @override
  String get themeTeal => 'Tavi';

  @override
  String get themeBrown => 'Ruskea';

  @override
  String get catFruits => 'Hedelmät';

  @override
  String get catCleaning => 'Siivous';

  @override
  String get catBeverages => 'Juomat';

  @override
  String get catBakery => 'Leipomo';

  @override
  String get catOthers => 'Muut';

  @override
  String get unitPack => 'pakkaus';

  @override
  String get shareSubject => 'Ostoslista';

  @override
  String get monthlyBudgetTitle => 'Kuukausibudjetti';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Poista lista';

  @override
  String get pantryItemRemoved => 'Kohde poistettu';

  @override
  String deficitItems(int deficit) {
    return '$deficit kohde(tta) on ostettava';
  }

  @override
  String get cartTotal => 'Ostoskorin yhteensä';

  @override
  String get restockLabel => 'Täydennä';

  @override
  String get advancedFeatures => 'Edistyneet ominaisuudet';

  @override
  String get selectAll => 'Valitse kaikki';

  @override
  String get deselectAll => 'Poista kaikki valinnat';

  @override
  String get monthlyBudgetAppBar => 'Kuukausibudjetti';

  @override
  String get budgetEditTitle => 'Kuukausibudjetti';

  @override
  String get budgetDashboardTitle => 'Hallintapaneeli';

  @override
  String get selectListForDashboard =>
      'Valitse lista nähdäksesi hallintapaneelin.';

  @override
  String get spendingAnalysis => 'Kulutusanalyysi';

  @override
  String get noItemsToAnalyze => 'Listalla ei ole analysoitavia kohteita.';

  @override
  String get markItemsToSeeAnalysis =>
      'Merkitse kohteet ostetuiksi nähdäksesi analyysin.';

  @override
  String get totalSpending => 'Kulutettu yhteensä';

  @override
  String get spendingByCategory => 'Kulut kategorioittain';

  @override
  String get achievements => 'Saavutukset';

  @override
  String get exportPdfExcel => 'Vie PDF/Excel';

  @override
  String get exportPdf => 'Vie PDF-muodossa';

  @override
  String get exportExcel => 'Vie Excel-muodossa';

  @override
  String get organizingAi => 'JÄRJESTETÄÄN AI:LLA...';

  @override
  String get yesLabel => 'Kyllä';

  @override
  String get noLabel => 'Ei';

  @override
  String get shareListText => 'Ostoslistani';

  @override
  String get emptyListAddItems => 'Listasi on tyhjä! Lisää ensin kohteita. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista maagisesti järjestetty kategorioittain! ✨';

  @override
  String get shoppingMode => 'Ostotila';

  @override
  String get smartOrganization => 'Älykäs järjestys';

  @override
  String get savings => 'Säästöt';

  @override
  String get shoppingModeHeader => 'OSTOTILA';

  @override
  String get shareAsText => 'Lähetä kohteet muotoiltuna tekstinä';

  @override
  String get shareRealtime => 'Reaaliaikainen synkronointi muiden kanssa';

  @override
  String get quickRecipe => 'Nopea resepti';

  @override
  String get quickRecipePrompt => 'Ehdota reseptejä listani kohteilla.';

  @override
  String get economyTips => 'Säästövinkit';

  @override
  String get economyTipsPrompt => 'Kuinka voin säästää rahaa tässä ostoksessa?';

  @override
  String get organizeAisles => 'Järjestä käytävittäin';

  @override
  String get organizeAislesPrompt => 'Järjestä kaupan käytävien mukaan.';

  @override
  String get recipeSuggestion => 'Reseptiehdotus';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining krediittiä jäljellä';
  }

  @override
  String get addAllToList => 'Lisää kaikki listalle';

  @override
  String get organizeByAisles => 'Järjestä käytävittäin';

  @override
  String get voiceTranscriptionTooltip => 'Puhekirjoitus (Ilmainen)';

  @override
  String get aiVoiceCommandTooltip => 'AI-äänikomento (Premium)';

  @override
  String get voiceCommandTitle => 'AI-äänikomento';

  @override
  String get voiceCommandContent =>
      'Puhu luonnollisesti hallitaksesi listaasi!\n\nEsimerkkejä:\n• \'Lisää leipää, juustoa ja kinkkua\'\n• \'Poista pyykinpesuaine\'\n• \'Vaihda teema siniseksi\'\n\nTämä on KipiList Premiumin eksklusiivinen ominaisuus.';

  @override
  String get voiceCommandPlanBtn => 'Katso suunnitelmat';

  @override
  String get itemsAddedSuccess => 'Kohteet lisätty onnistuneesti listalle!';

  @override
  String get viewList => 'Katso lista';

  @override
  String get feedbackTitle => 'Lähetä palautetta';

  @override
  String get feedbackPrompt => 'Mitä haluat jakaa?';

  @override
  String get feedbackTypeBug => 'Ilmoita viasta';

  @override
  String get feedbackTypeBugHint => 'Jokin ei toimi';

  @override
  String get feedbackTypeSuggestion => 'Ehdotus';

  @override
  String get feedbackTypeSuggestionHint => 'Idea sovelluksen parantamiseksi';

  @override
  String get feedbackTypeTranslation => 'Käännösongelma';

  @override
  String get feedbackTypeTranslationHint =>
      'Virheellinen tai luonnoton käännös';

  @override
  String get feedbackTypeFeature => 'Ominaisuusehdotus';

  @override
  String get feedbackTypeFeatureHint => 'Ominaisuus, jonka haluaisit nähdä';

  @override
  String get feedbackTypeOther => 'Muu';

  @override
  String get feedbackTypeOtherHint => 'Muu palautetyyppi';

  @override
  String get feedbackHint => 'Kuvaile palautteesi yksityiskohtaisesti...';

  @override
  String get feedbackSend => 'Lähetä palautetta';

  @override
  String get feedbackSending => 'Lähetetään...';

  @override
  String get feedbackThankYou => 'Kiitos!';

  @override
  String get feedbackThankYouMessage =>
      'Palautteesi on vastaanotettu ja se auttaa meitä parantamaan KipiListia kaikille.';

  @override
  String get feedbackBack => 'Takaisin';

  @override
  String feedbackError(String error) {
    return 'Virhe lähetyksessä: $error';
  }

  @override
  String get feedbackRetry => 'Yritä uudelleen';

  @override
  String get feedbackSettingsTitle => 'Lähetä palautetta';

  @override
  String get feedbackSettingsSubtitle =>
      'Ilmoita vioista, ehdota parannuksia tai korjaa käännöksiä';

  @override
  String get aiEnergy => 'AI energia';

  @override
  String get searchInConversation => 'Hae keskustelusta...';

  @override
  String get noMessagesFound => 'Viestejä ei löytynyt';

  @override
  String get suggestedQuestions => 'Ehdotetut kysymykset:';

  @override
  String get shoppingAssistant => 'Ostosavustaja';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased / $total ostettu';
  }

  @override
  String get estimatedCost => 'Arvioitu';

  @override
  String get viewItems => 'Näytä kohteet';

  @override
  String get noItemsInList => 'Ei kohteita luettelossa';

  @override
  String get longHistoryWarning =>
      'Pitkä historia: avustaja keskittyy uusimpiin viesteihin parantaakseen suorituskykyä.';

  @override
  String get listening => 'Kuuntelee...';

  @override
  String get addDirectToList => 'Lisää suoraan luetteloon';

  @override
  String get unlockFullResponse => 'Avaa täysi vastaus';

  @override
  String get switchList => 'Vaihda luetteloa';

  @override
  String get marketMode => 'Markkinatila';

  @override
  String get backToChat => 'Takaisin Chatiin';

  @override
  String get finishShopping => 'Viimeistele ostokset';

  @override
  String get welcomeAiAssistant => 'Tervetuloa AI Assistantiin';

  @override
  String get createListToStartAi =>
      'Luo ostoslista aloittaaksesi älykkään chatin käytön.';

  @override
  String get howCanIHelp => 'Miten voin auttaa?';

  @override
  String get chatSubtitleShort =>
      'Kysy hinnoista, resepteistä, järjestämisestä...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total ostettu';
  }

  @override
  String get quickReplies => 'Pikaiset vastaukset:';

  @override
  String get voiceProFeature =>
      'Kehittyneet äänikomennot ovat Pro. Otetaan perussanelu käyttöön...';

  @override
  String get viewPro => 'Näytä Pro';

  @override
  String get errorLoadingChat =>
      'Oho! Jotain meni pieleen chatin lataamisessa.';

  @override
  String get errorLoadingChatSubtitle =>
      'Tarkista yhteys tai yritä myöhemmin uudelleen.';

  @override
  String get errorOscillation =>
      'Tämä voi johtua verkon heilahteluista tai tilapäisestä epäkäytettävyydestä. Yritä uudelleen.';

  @override
  String get activeListening => 'Aktiivinen kuuntelu';

  @override
  String get whatToDoWithItem => 'Mitä haluaisit tehdä tällä esineellä?';

  @override
  String get viewDetails => 'Näytä tiedot';

  @override
  String get openMenu => 'Avaa valikko';

  @override
  String get viewRecipe => 'Näytä resepti';

  @override
  String get recipeCreated => 'Resepti luotu!';

  @override
  String get editRecipe => 'Muokkaa';

  @override
  String get deleteRecipe => 'Poista';

  @override
  String get deleteRecipeConfirm => 'Poistetaanko tämä resepti?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Haluatko varmasti poistaa reseptin \"$recipeName\"? Tätä toimintoa ei voi peruuttaa.';
  }

  @override
  String get ingredients => 'Ainekset';

  @override
  String get instructions => 'Ohjeet';

  @override
  String get prepTime => 'Valmistusaika';

  @override
  String get recipeSaved => 'Resepti tallennettu!';

  @override
  String get noRecipesSaved => 'Ei tallennettuja reseptejä';

  @override
  String get noRecipesSavedHint =>
      'Luo ensimmäinen mukautettu reseptisi napauttamalla alla olevaa painiketta.';

  @override
  String get myRecipes => 'Omat reseptit';

  @override
  String get newRecipe => 'Uusi resepti';

  @override
  String get loadingRecipes => 'Ladataan reseptejäsi...';

  @override
  String get errorLoadingRecipes => 'Virhe ladattaessa reseptejä';

  @override
  String get addIngredient => 'Lisää ainesosa';

  @override
  String get saveRecipe => 'Tallenna';

  @override
  String get recipeName => 'Reseptin nimi';

  @override
  String get shortDescription => 'Lyhyt kuvaus';

  @override
  String get prepTimeMinutes => 'Valmistusaika (minuuttia)';

  @override
  String get instructionsHint => 'Kirjoita yksi vaihe riville...';

  @override
  String get addPhoto => 'Lisää kuva';

  @override
  String get imageUrlPlaceholder => 'Tai liitä kuvan URL';

  @override
  String get tags => 'Tunnisteet';

  @override
  String get recipeTags => 'Reseptin tunnisteet';

  @override
  String get suggestedTags => 'Ehdotetut';

  @override
  String get searchRecipes => 'Hae reseptejä...';

  @override
  String get filterByTag => 'Suodata tunnisteella';

  @override
  String get allTags => 'Kaikki';

  @override
  String get recipeDeleted => 'Resepti poistettu';

  @override
  String get saveChanges => 'Tallenna muutokset';

  @override
  String get editRecipeTitle => 'Muokkaa reseptiä';

  @override
  String get newRecipeTitle => 'Uusi resepti';

  @override
  String get requiredField => 'Pakollinen';

  @override
  String get chooseImageSource => 'Valitse kuvan lähde';

  @override
  String get gallery => 'Galleria';

  @override
  String get enterUrl => 'Anna URL-osoite';

  @override
  String get recipeImage => 'Reseptin kuva';

  @override
  String get removeImage => 'Poista kuva';

  @override
  String get mealPlannerTitle => 'Ateriasuunnittelija';

  @override
  String get mealPlannerViewMonthly => 'Kuukausinäkymä';

  @override
  String get mealPlannerViewWeekly => 'Viikkonäkymä';

  @override
  String get mealPlannerNoMeals => 'Ei suunniteltuja aterioita';

  @override
  String get mealPlannerNoMealsHint => 'Napauta päivää lisätäksesi aterian';

  @override
  String get mealPlannerLoading => 'Ladataan ateriasuunnitelmaa...';

  @override
  String get mealPlannerError => 'Virhe ladattaessa ateriasuunnitelmaa';

  @override
  String get mealPlannerAddMeal => 'Lisää ateria';

  @override
  String get mealPlannerEditMeal => 'Muokkaa ateriaa';

  @override
  String get mealPlannerDeleteMeal => 'Poista ateria';

  @override
  String get mealPlannerMealDeleted => 'Ateria poistettu';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count annosta',
      one: '$count annos',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Annokset';

  @override
  String get mealPlannerNoteLabel => 'Huomautus (valinnainen)';

  @override
  String get mealPlannerSelectRecipe => 'Valitse resepti';

  @override
  String get mealPlannerSearchRecipes => 'Hae reseptejä...';

  @override
  String get mealPlannerNoRecipesFound => 'Reseptejä ei löytynyt';

  @override
  String get mealPlannerNoRecipesHint =>
      'Luo reseptejä ensin Reseptit-välilehdellä';

  @override
  String get mealPlannerSave => 'Lisää suunnitelmaan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total ateriaa suunniteltu';
  }

  @override
  String get mealPlannerGenerateList => 'Luo ostoslista';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Lisätäänkö kaikki tämän viikon aterioiden ainekset ostoslistallesi?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ainesosaa lisätty listallesi!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Ei lisättäviä aineksia. Suunnittele ensin aterioita resepteillä.';

  @override
  String get mealPlannerGenerateListNoList => 'Luo ensin ostoslista.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Aamiainen';

  @override
  String get mealPlannerMealTypeLunch => 'Lounas';

  @override
  String get mealPlannerMealTypeDinner => 'Illallinen';

  @override
  String get mealPlannerMealTypeSnack => 'Välipala';

  @override
  String get mealPlannerDateLabel => 'Päivämäärä';

  @override
  String get mealPlannerWeekEmpty => 'Ei mitään suunniteltua tälle viikolle';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Napauta mitä tahansa päivää aloittaaksesi aterioiden suunnittelun!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Kutsu listalle';

  @override
  String get shareApp => 'Jaa sovellus';

  @override
  String get shareAppDescription => 'Kutsu ystäviä käyttämään KipiListia';

  @override
  String shareReferralText(Object url) {
    return 'Käytän KipiListia ostosteni järjestämiseen! Lataa linkistäni ja saamme molemmat 7 päivää Premiumia ilmaiseksi: $url';
  }

  @override
  String get shareReferralSubject => 'Hanki 7 päivää KipiList Premiumia!';
}

/// The translations for Finnish, as used in Finland (`fi_FI`).
class AppLocalizationsFiFi extends AppLocalizationsFi {
  AppLocalizationsFiFi() : super('fi_FI');

  @override
  String get appTitle => 'Ostoslista';

  @override
  String get lists => 'Listat';

  @override
  String get pantry => 'Ruokakomero';

  @override
  String get cancel => 'Peruuta';

  @override
  String get save => 'Tallenna';

  @override
  String get create => 'Luo';

  @override
  String get add => 'Lisää';

  @override
  String get remove => 'Poista';

  @override
  String get delete => 'Poista';

  @override
  String get edit => 'Muokkaa';

  @override
  String get copy => 'Kopioi';

  @override
  String get next => 'Seuraavaksi';

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get regenerate => 'Luo uudelleen';

  @override
  String get copiedToClipboard => 'Kopioitu leikepöydälle';

  @override
  String get confirm => 'Vahvista';

  @override
  String get close => 'Sulje';

  @override
  String get import => 'Tuo';

  @override
  String get rename => 'Nimeä uudelleen';

  @override
  String get upgrade => 'Päivitä';

  @override
  String get clear => 'Tyhjennä';

  @override
  String error(String message) {
    return 'Virhe: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Virhe: $message';
  }

  @override
  String get purchaseError => 'Virhe ostoksen käsittelyssä. Yritä uudelleen.';

  @override
  String get restoreError => 'Virhe ostosten palauttamisessa. Yritä uudelleen.';

  @override
  String get loading => 'Ladataan...';

  @override
  String get fieldRequired => 'Pakollinen kenttä';

  @override
  String get addedFeedback => 'Lisätty!';

  @override
  String selectedItems(int count) {
    return 'Valittu $count';
  }

  @override
  String get estimated => 'Arvioitu';

  @override
  String get alreadyPurchased => 'Jo ostettu';

  @override
  String get clearList => 'Tyhjennä lista';

  @override
  String get clearPurchased => 'Tyhjennä ostetut';

  @override
  String get share => 'Jaa';

  @override
  String get shareViaCode => 'Jaa koodilla';

  @override
  String get importViaCode => 'Tuo koodilla';

  @override
  String get listAssistant => 'Lista-assistentti';

  @override
  String get globalAssistant => 'Yleinen assistentti';

  @override
  String get becomePremium => 'Hanki Premium';

  @override
  String get manageSubscription => 'Hallinnoi tilausta';

  @override
  String get completePurchase => 'Suorita osto';

  @override
  String get confirmClearList => 'Poistetaanko kaikki kohteet?';

  @override
  String get shareListTitle => 'Jaa lista';

  @override
  String get shareThisCode => 'Jaa tämä koodi:';

  @override
  String get validForLimitedTime => 'Voimassa rajoitetun ajan';

  @override
  String get importListTitle => 'Tuo lista';

  @override
  String get enterCodeHint => 'Syötä koodi';

  @override
  String get confirmArchiveTitle => 'Suorita osto';

  @override
  String get confirmArchiveContent =>
      'Suoritetaanko tämä osto ja arkistoidaan lista?';

  @override
  String get complete => 'Suorita';

  @override
  String get listArchived => 'Lista arkistoitu onnistuneesti!';

  @override
  String listAdded(String listName) {
    return '$listName lisätty!';
  }

  @override
  String get buy => 'Osta';

  @override
  String get unmark => 'Poista merkintä';

  @override
  String confirmDeleteItems(int count) {
    return 'Poistetaanko $count kohde(tta)?';
  }

  @override
  String get confirmDeleteTitle => 'Vahvista';

  @override
  String confirmContent(int count) {
    return 'Poistetaanko $count kohde(tta)?';
  }

  @override
  String get archiveList => 'Arkistoi lista';

  @override
  String get pantryAppBar => 'Ruokakomero';

  @override
  String get generateShoppingList => 'Luo ostoslista';

  @override
  String get pantryEmpty => 'Tyhjä ruokakomero';

  @override
  String get pantryEmptySubtitle =>
      'Lisää tuotteita, joita haluat pitää kotona';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit kohde(tta) on ostettava';
  }

  @override
  String get noItemsToBuy => 'Ei ostettavia kohteita';

  @override
  String get newPantryList => 'Ruokakomero-ostokset';

  @override
  String get newListTitle => 'Uusi ostoslista';

  @override
  String itemsWillBeAdded(int count) {
    return '$count kohde(tta) lisätään';
  }

  @override
  String get listNameLabel => 'Listan nimi';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" luotu $count kohteella';
  }

  @override
  String get noTracking => 'Ei seurantaa';

  @override
  String get markAsPurchased => 'Merkitse ostetuksi';

  @override
  String editPantryItem(String name) {
    return 'Muokkaa $name';
  }

  @override
  String get idealQuantity => 'Ihannemäärä';

  @override
  String get currentQuantity => 'Nykyinen määrä';

  @override
  String get consumed => 'Kulutettu';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name täydennetty määrään $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Poistetaanko \"$name\" ruokakomerosta?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Muokkaa $name';
  }

  @override
  String get settingsAppBar => 'Asetukset';

  @override
  String get language => 'Kieli';

  @override
  String get languagePortuguese => 'portugali (Brasilia)';

  @override
  String get languageEnglish => 'englanti';

  @override
  String get languageSystem => 'Järjestelmän oletus';

  @override
  String get chooseLanguage => 'Valitse kieli';

  @override
  String get searchLanguage => 'Hae kieltä...';

  @override
  String get currency => 'Valuutta';

  @override
  String get chooseCurrency => 'Valitse Valuutta';

  @override
  String get searchCurrency => 'Hae valuutta...';

  @override
  String get appearance => 'Ulkoasu';

  @override
  String get light => 'Vaalea';

  @override
  String get system => 'Järjestelmä';

  @override
  String get dark => 'Tumma';

  @override
  String get themeColor => 'Teeman väri';

  @override
  String get dynamicColors => 'Dynaamiset värit';

  @override
  String get dynamicColorsSubtitle => 'Käytä taustakuvan mukaisia värejä';

  @override
  String get dynamicColorsEnabledWarning =>
      'Poista dynaamiset värit käytöstä, jotta teemaväri tulee voimaan';

  @override
  String get finance => 'Talous';

  @override
  String get monthlyBudgetNav => 'Kuukausibudjetti';

  @override
  String get budgetSubtitle => 'Seuraa kuukausittaisia kulujasi';

  @override
  String get data => 'Tiedot';

  @override
  String get backupNav => 'Varmuuskopio';

  @override
  String get backupSubtitle => 'Vie tai tuo tietosi';

  @override
  String get about => 'Tietoja';

  @override
  String get version => 'Versio';

  @override
  String get privacy => 'Yksityisyys';

  @override
  String get termsOfUse => 'Käyttöehdot';

  @override
  String get backupTitle => 'Varmuuskopio';

  @override
  String get backupPremiumDescription =>
      'Varmuuskopiointi ja vienti on Premium-ominaisuus';

  @override
  String get exportData => 'Vie tiedot';

  @override
  String get exportDataSubtitle => 'Tallenna kaikki listat JSON-muodossa';

  @override
  String get importData => 'Tuo tiedot';

  @override
  String get importDataSubtitle => 'Palauta listat JSON-tiedostosta';

  @override
  String get importJsonTitle => 'Tuo JSON';

  @override
  String get importJsonHint => 'Liitä varmuuskopion JSON tähän...';

  @override
  String get backupExported => 'Varmuuskopio viety!';

  @override
  String get budgetAppBar => 'Kuukausibudjetti';

  @override
  String get budgetPremiumLocked => 'Globaali kuukausibudjetti on Premium';

  @override
  String get budgetUpgradePrompt => 'Päivitä avataksesi';

  @override
  String get noBudgetDefined => 'Budjettia ei asetettu';

  @override
  String totalEstimated(String amount) {
    return 'Arvioitu yhteensä: $amount';
  }

  @override
  String get setBudgetButton => 'Aseta budjetti';

  @override
  String get budgetLists => 'Listat';

  @override
  String get budgetValueLabel => 'Summa';

  @override
  String get setBudgetTitle => 'Kuukausibudjetti';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Kaikki';

  @override
  String get filterPending => 'Odottaa';

  @override
  String get filterPurchased => 'Ostetut';

  @override
  String get sortName => 'Nimi';

  @override
  String get sortCategory => 'Kategoria';

  @override
  String get sortDate => 'Päivämäärä';

  @override
  String get sortManual => 'Manuaalinen';

  @override
  String get addItem => 'Lisää kohde';

  @override
  String get itemName => 'Kohteen nimi';

  @override
  String get quantityShort => 'Määrä';

  @override
  String get unit => 'Yksikkö';

  @override
  String get category => 'Kategoria';

  @override
  String get estimatedPrice => 'Arvioitu hinta';

  @override
  String get addItemPrice => 'Arvioitu hinta';

  @override
  String get editItem => 'Muokkaa kohdetta';

  @override
  String get quantityFull => 'Määrä';

  @override
  String get editItemPrice => 'Arvioitu hinta';

  @override
  String get addToPantry => 'Lisää ruokakomeroon';

  @override
  String addToPantryPrompt(String name) {
    return 'Lisätäänkö \"$name\" ruokakomeroosi?';
  }

  @override
  String get yes => 'Kyllä';

  @override
  String get productName => 'Tuotteen nimi';

  @override
  String get idealQty => 'Ihannemäärä';

  @override
  String get currentQty => 'Nykyinen määrä';

  @override
  String get trackStock => 'Seuraa varastoa';

  @override
  String get trackStockActive => 'Näkyy ostoehdotuksissa';

  @override
  String get trackStockInactive => 'Ei luo ostoehdotusta';

  @override
  String get createListDialog => 'Luo lista';

  @override
  String get renameListDialog => 'Nimeä lista uudelleen';

  @override
  String get listHistory => 'Listahistoria';

  @override
  String get myLists => 'Minun listat';

  @override
  String get viewActive => 'Näytä aktiiviset';

  @override
  String get viewHistory => 'Näytä historia';

  @override
  String get noArchivedLists => 'Ei arkistoituja listoja';

  @override
  String get noActiveLists => 'Ei aktiivisia listoja';

  @override
  String completedOn(String date) {
    return 'Suoritettu $date';
  }

  @override
  String get sharedLabel => 'Jaettu';

  @override
  String get restore => 'Palauta';

  @override
  String get removeSharedTooltip => 'Poista';

  @override
  String get deleteListTitle => 'Poista lista';

  @override
  String deleteListContent(String name) {
    return 'Oletko varma, että haluat poistaa \"$name\"? Kaikki kohteet poistetaan.';
  }

  @override
  String get removeSharedListTitle => 'Poista jaettu lista';

  @override
  String removeSharedListContent(String name) {
    return 'Poistetaanko \"$name\" listoistasi? Alkuperäiseen listaan ei kosketa.';
  }

  @override
  String get createNewList => 'Luo uusi lista';

  @override
  String get aiAssistant => 'AI-assistentti';

  @override
  String get aiAssistantDescription =>
      'Saa älykkäitä ehdotuksia, reseptejä ja henkilökohtaisia vinkkejä AI-assistentiltamme.';

  @override
  String get generalAssistant => 'Yleinen assistentti';

  @override
  String get newChat => 'Uusi Chat';

  @override
  String get noHistory => 'Ei keskusteluhistoriaa';

  @override
  String get deleteSession => 'Poista Chat';

  @override
  String get deleteSessionConfirm =>
      'Haluatko varmasti poistaa tämän keskustelun? Viestit katoavat pysyvästi.';

  @override
  String get clearHistory => 'Tyhjennä historia';

  @override
  String get clearHistoryConfirm =>
      'Poistetaanko kaikki viestit tästä istunnosta?';

  @override
  String get chatHint => 'Kirjoita viestisi...';

  @override
  String chatError(String error) {
    return 'Virhe ladattaessa chattia: $error';
  }

  @override
  String get listHelp => 'Miten voin auttaa listasi kanssa?';

  @override
  String get generalHelp => 'Miten voin auttaa ostoksissasi tänään?';

  @override
  String get chatSubtitle =>
      'Kysy kohde-ehdotuksia, reseptejä tai säästövinkkejä.';

  @override
  String get aiError =>
      'Anteeksi, pyyntösi käsittelyssä tapahtui virhe. Tarkista yhteys tai yritä myöhemmin uudelleen.';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Kirjaudu sisään avataksesi Premium-ominaisuudet';

  @override
  String get signInGoogle => 'Kirjaudu Google-tilillä';

  @override
  String get signInApple => 'Kirjaudu Apple-tilillä';

  @override
  String get continueAsGuest => 'Jatka vieraana';

  @override
  String get onboardingWelcomeTitle => 'Tervetuloa KipiList -palveluun';

  @override
  String get onboardingWelcomeDesc =>
      'Älykkäin tapa järjestää ostoksesi ja säästää rahaa.';

  @override
  String get onboardingSetupTitle => 'Mukauta kokemustasi';

  @override
  String get onboardingSetupDesc =>
      'Valitse, miltä haluat KipiListin näyttävän ja toimivan sinulle.';

  @override
  String get onboardingLoginTitle => 'Tallenna kaikki pilveen';

  @override
  String get onboardingLoginDesc =>
      'Tietosi synkronoidaan kaikkien laitteidesi välillä';

  @override
  String get onboardingShareTitle => 'Jaa rakastamiesi kanssa';

  @override
  String get onboardingShareDesc =>
      'Synkronoi luettelot perheen ja ystävien kanssa reaaliajassa';

  @override
  String get onboardingPremiumTitle => 'Avaa kaikki ominaisuudet';

  @override
  String get onboardingPremiumSubtitle => 'Ota kaikki irti ostoslistoistasi';

  @override
  String get onboardingAnnualBadge => 'Paras arvo';

  @override
  String get onboardingMonthlyLabel => 'Kuukausittain';

  @override
  String get onboardingAnnualLabel => 'Vuosittainen';

  @override
  String get onboardingViewAllPlans => 'Katso kaikki suunnitelmat';

  @override
  String get onboardingSubscribeCta => 'Tilaa';

  @override
  String get onboardingCancelAnytime =>
      'Peru milloin tahansa. Ei sitoutumista.';

  @override
  String get onboardingContinueAsGuest => 'Jatka vieraana';

  @override
  String get onboardingRestore => 'Palauttaa';

  @override
  String get onboardingRestoreDesc =>
      'Onko sinulla jo tilaus? Palauta se napauttamalla tätä.';

  @override
  String get onboardingExit => 'Poistu';

  @override
  String get onboardingPersonalizationTitle => 'Tutustutaanpa sinuun';

  @override
  String get onboardingPersonalizationDesc =>
      'Käytämme tätä mukauttaaksemme ehdotuksiasi ja tehdäksemme ostoksista älykkäämpiä.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Mikä on lempiruokasi?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'esim. Pizzaa, Sushia, Lasagnea...';

  @override
  String get onboardingPersonalizationCta => 'Jatkaa';

  @override
  String get onboardingPersonalizationSkip => 'Ohita toistaiseksi';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Kerro meille suosikkiruokasi jatkaaksesi';

  @override
  String get settingsDefaultScreen => 'Oletusaloitusnäyttö';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Valitse ostoslistan tai AI-chatin välillä';

  @override
  String get settingsScreenList => 'Ostoslista';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Kirjautumisvirhe: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get premiumUpgrade => 'Päivitä avataksesi';

  @override
  String get itemRemoved => 'Kohde poistettu';

  @override
  String get undo => 'Kumoa';

  @override
  String get emptyListTitle => 'Listasi on tyhjä';

  @override
  String get emptyListSubtitle => 'Lisää kohteita aloittaaksesi';

  @override
  String get noListFoundTitle => 'Listoja ei löytynyt';

  @override
  String get noListFoundSubtitle => 'Luo ensimmäinen listasi aloittaaksesi';

  @override
  String get createFirstList => 'Luo ensimmäinen lista';

  @override
  String get listBudgetTitle => 'Listan budjetti';

  @override
  String get budgetAmountLabel => 'Budjetin määrä';

  @override
  String get removeBudget => 'Poista';

  @override
  String get prefUnlimitedLists => 'Rajattomat listat';

  @override
  String get prefSharing => 'Jaa listat';

  @override
  String get prefFullHistory => 'Täysi historia';

  @override
  String get prefExportData => 'Vie tiedot';

  @override
  String get prefCustomThemes => 'Mukautetut teemat';

  @override
  String get prefMonthlyBudget => 'Globaali kuukausibudjetti';

  @override
  String get prefAIAssistant => 'Henkilökohtainen AI-assistentti';

  @override
  String get prefUnlimitedPantry => 'Rajaton ruokakomero';

  @override
  String get prefInteractiveArtifacts => 'Interaktiiviset AI-artefaktit';

  @override
  String get themeGreen => 'Vihreä';

  @override
  String get themeBlue => 'Sininen';

  @override
  String get themePurple => 'Violetti';

  @override
  String get themeRed => 'Punainen';

  @override
  String get themeOrange => 'Oranssi';

  @override
  String get themePink => 'Vaaleanpunainen';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Meripihka';

  @override
  String get themeTeal => 'Tavi';

  @override
  String get themeBrown => 'Ruskea';

  @override
  String get catFruits => 'Hedelmät';

  @override
  String get catCleaning => 'Siivous';

  @override
  String get catBeverages => 'Juomat';

  @override
  String get catBakery => 'Leipomo';

  @override
  String get catOthers => 'Muut';

  @override
  String get unitPack => 'pakkaus';

  @override
  String get shareSubject => 'Ostoslista';

  @override
  String get monthlyBudgetTitle => 'Kuukausibudjetti';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Poista lista';

  @override
  String get pantryItemRemoved => 'Kohde poistettu';

  @override
  String deficitItems(int deficit) {
    return '$deficit kohde(tta) on ostettava';
  }

  @override
  String get cartTotal => 'Ostoskorin yhteensä';

  @override
  String get restockLabel => 'Täydennä';

  @override
  String get advancedFeatures => 'Edistyneet ominaisuudet';

  @override
  String get selectAll => 'Valitse kaikki';

  @override
  String get deselectAll => 'Poista kaikki valinnat';

  @override
  String get monthlyBudgetAppBar => 'Kuukausibudjetti';

  @override
  String get budgetEditTitle => 'Kuukausibudjetti';

  @override
  String get budgetDashboardTitle => 'Hallintapaneeli';

  @override
  String get selectListForDashboard =>
      'Valitse lista nähdäksesi hallintapaneelin.';

  @override
  String get spendingAnalysis => 'Kulutusanalyysi';

  @override
  String get noItemsToAnalyze => 'Listalla ei ole analysoitavia kohteita.';

  @override
  String get markItemsToSeeAnalysis =>
      'Merkitse kohteet ostetuiksi nähdäksesi analyysin.';

  @override
  String get totalSpending => 'Kulutettu yhteensä';

  @override
  String get spendingByCategory => 'Kulut kategorioittain';

  @override
  String get achievements => 'Saavutukset';

  @override
  String get exportPdfExcel => 'Vie PDF/Excel';

  @override
  String get exportPdf => 'Vie PDF-muodossa';

  @override
  String get exportExcel => 'Vie Excel-muodossa';

  @override
  String get organizingAi => 'JÄRJESTETÄÄN AI:LLA...';

  @override
  String get yesLabel => 'Kyllä';

  @override
  String get noLabel => 'Ei';

  @override
  String get shareListText => 'Ostoslistani';

  @override
  String get emptyListAddItems => 'Listasi on tyhjä! Lisää ensin kohteita. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista maagisesti järjestetty kategorioittain! ✨';

  @override
  String get shoppingMode => 'Ostotila';

  @override
  String get smartOrganization => 'Älykäs järjestys';

  @override
  String get savings => 'Säästöt';

  @override
  String get shoppingModeHeader => 'OSTOTILA';

  @override
  String get shareAsText => 'Lähetä kohteet muotoiltuna tekstinä';

  @override
  String get shareRealtime => 'Reaaliaikainen synkronointi muiden kanssa';

  @override
  String get quickRecipe => 'Nopea resepti';

  @override
  String get quickRecipePrompt => 'Ehdota reseptejä listani kohteilla.';

  @override
  String get economyTips => 'Säästövinkit';

  @override
  String get economyTipsPrompt => 'Kuinka voin säästää rahaa tässä ostoksessa?';

  @override
  String get organizeAisles => 'Järjestä käytävittäin';

  @override
  String get organizeAislesPrompt => 'Järjestä kaupan käytävien mukaan.';

  @override
  String get recipeSuggestion => 'Reseptiehdotus';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining krediittiä jäljellä';
  }

  @override
  String get addAllToList => 'Lisää kaikki listalle';

  @override
  String get organizeByAisles => 'Järjestä käytävittäin';

  @override
  String get voiceTranscriptionTooltip => 'Puhekirjoitus (Ilmainen)';

  @override
  String get aiVoiceCommandTooltip => 'AI-äänikomento (Premium)';

  @override
  String get voiceCommandTitle => 'AI-äänikomento';

  @override
  String get voiceCommandContent =>
      'Puhu luonnollisesti hallitaksesi listaasi!\n\nEsimerkkejä:\n• \'Lisää leipää, juustoa ja kinkkua\'\n• \'Poista pyykinpesuaine\'\n• \'Vaihda teema siniseksi\'\n\nTämä on KipiList Premiumin eksklusiivinen ominaisuus.';

  @override
  String get voiceCommandPlanBtn => 'Katso suunnitelmat';

  @override
  String get itemsAddedSuccess => 'Kohteet lisätty onnistuneesti listalle!';

  @override
  String get viewList => 'Katso lista';

  @override
  String get feedbackTitle => 'Lähetä palautetta';

  @override
  String get feedbackPrompt => 'Mitä haluaisit jakaa?';

  @override
  String get feedbackTypeBug => 'Ilmoita viasta';

  @override
  String get feedbackTypeBugHint => 'Jokin ei toimi';

  @override
  String get feedbackTypeSuggestion => 'Ehdotus';

  @override
  String get feedbackTypeSuggestionHint => 'Idea sovelluksen parantamiseksi';

  @override
  String get feedbackTypeTranslation => 'Käännösvirhe';

  @override
  String get feedbackTypeTranslationHint => 'Virheellinen tai kömpelö käännös';

  @override
  String get feedbackTypeFeature => 'Ominaisuuspyyntö';

  @override
  String get feedbackTypeFeatureHint => 'Ominaisuus, jonka haluaisit nähdä';

  @override
  String get feedbackTypeOther => 'Muu';

  @override
  String get feedbackTypeOtherHint => 'Muun tyyppinen palaute';

  @override
  String get feedbackHint => 'Kuvaile palautettasi yksityiskohtaisesti...';

  @override
  String get feedbackSend => 'Lähetä palaute';

  @override
  String get feedbackSending => 'Lähetetään...';

  @override
  String get feedbackThankYou => 'Kiitos!';

  @override
  String get feedbackThankYouMessage =>
      'Palaute on vastaanotettu ja auttaa meitä parantamaan KipiListia kaikille.';

  @override
  String get feedbackBack => 'Takaisin';

  @override
  String feedbackError(String error) {
    return 'Virhe lähetyksessä: $error';
  }

  @override
  String get feedbackRetry => 'Yritä uudelleen';

  @override
  String get feedbackSettingsTitle => 'Lähetä palautetta';

  @override
  String get feedbackSettingsSubtitle =>
      'Ilmoita vioista, ehdota parannuksia tai korjaa käännöksiä';

  @override
  String get aiEnergy => 'AI energia';

  @override
  String get searchInConversation => 'Hae keskustelusta...';

  @override
  String get noMessagesFound => 'Viestejä ei löytynyt';

  @override
  String get suggestedQuestions => 'Ehdotetut kysymykset:';

  @override
  String get shoppingAssistant => 'Ostosavustaja';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased / $total ostettu';
  }

  @override
  String get estimatedCost => 'Arvioitu';

  @override
  String get viewItems => 'Näytä kohteet';

  @override
  String get noItemsInList => 'Ei kohteita luettelossa';

  @override
  String get longHistoryWarning =>
      'Pitkä historia: avustaja keskittyy uusimpiin viesteihin parantaakseen suorituskykyä.';

  @override
  String get listening => 'Kuuntelee...';

  @override
  String get addDirectToList => 'Lisää suoraan luetteloon';

  @override
  String get unlockFullResponse => 'Avaa täysi vastaus';

  @override
  String get switchList => 'Vaihda luetteloa';

  @override
  String get marketMode => 'Markkinatila';

  @override
  String get backToChat => 'Takaisin Chatiin';

  @override
  String get finishShopping => 'Viimeistele ostokset';

  @override
  String get welcomeAiAssistant => 'Tervetuloa AI Assistantiin';

  @override
  String get createListToStartAi =>
      'Luo ostoslista aloittaaksesi älykkään chatin käytön.';

  @override
  String get howCanIHelp => 'Miten voin auttaa?';

  @override
  String get chatSubtitleShort =>
      'Kysy hinnoista, resepteistä, järjestämisestä...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total ostettu';
  }

  @override
  String get quickReplies => 'Pikaiset vastaukset:';

  @override
  String get voiceProFeature =>
      'Kehittyneet äänikomennot ovat Pro. Otetaan perussanelu käyttöön...';

  @override
  String get viewPro => 'Näytä Pro';

  @override
  String get errorLoadingChat =>
      'Oho! Jotain meni pieleen chatin lataamisessa.';

  @override
  String get errorLoadingChatSubtitle =>
      'Tarkista yhteys tai yritä myöhemmin uudelleen.';

  @override
  String get errorOscillation =>
      'Tämä voi johtua verkon heilahteluista tai tilapäisestä epäkäytettävyydestä. Yritä uudelleen.';

  @override
  String get activeListening => 'Aktiivinen kuuntelu';

  @override
  String get whatToDoWithItem => 'Mitä haluaisit tehdä tällä esineellä?';

  @override
  String get viewDetails => 'Näytä tiedot';

  @override
  String get openMenu => 'Avaa valikko';

  @override
  String get viewRecipe => 'Näytä resepti';

  @override
  String get recipeCreated => 'Resepti luotu!';

  @override
  String get editRecipe => 'Muokkaa';

  @override
  String get deleteRecipe => 'Poista';

  @override
  String get deleteRecipeConfirm => 'Poistetaanko tämä resepti?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Haluatko varmasti poistaa reseptin \"$recipeName\"? Tätä toimintoa ei voi peruuttaa.';
  }

  @override
  String get ingredients => 'Ainekset';

  @override
  String get instructions => 'Ohjeet';

  @override
  String get prepTime => 'Valmistusaika';

  @override
  String get recipeSaved => 'Resepti tallennettu!';

  @override
  String get noRecipesSaved => 'Ei tallennettuja reseptejä';

  @override
  String get noRecipesSavedHint =>
      'Luo ensimmäinen mukautettu reseptisi napauttamalla alla olevaa painiketta.';

  @override
  String get myRecipes => 'Omat reseptit';

  @override
  String get newRecipe => 'Uusi resepti';

  @override
  String get loadingRecipes => 'Ladataan reseptejäsi...';

  @override
  String get errorLoadingRecipes => 'Virhe ladattaessa reseptejä';

  @override
  String get addIngredient => 'Lisää ainesosa';

  @override
  String get saveRecipe => 'Tallenna';

  @override
  String get recipeName => 'Reseptin nimi';

  @override
  String get shortDescription => 'Lyhyt kuvaus';

  @override
  String get prepTimeMinutes => 'Valmistusaika (minuuttia)';

  @override
  String get instructionsHint => 'Kirjoita yksi vaihe riville...';

  @override
  String get addPhoto => 'Lisää kuva';

  @override
  String get imageUrlPlaceholder => 'Tai liitä kuvan URL';

  @override
  String get tags => 'Tunnisteet';

  @override
  String get recipeTags => 'Reseptin tunnisteet';

  @override
  String get suggestedTags => 'Ehdotetut';

  @override
  String get searchRecipes => 'Hae reseptejä...';

  @override
  String get filterByTag => 'Suodata tunnisteella';

  @override
  String get allTags => 'Kaikki';

  @override
  String get recipeDeleted => 'Resepti poistettu';

  @override
  String get saveChanges => 'Tallenna muutokset';

  @override
  String get editRecipeTitle => 'Muokkaa reseptiä';

  @override
  String get newRecipeTitle => 'Uusi resepti';

  @override
  String get requiredField => 'Pakollinen';

  @override
  String get chooseImageSource => 'Valitse kuvan lähde';

  @override
  String get gallery => 'Galleria';

  @override
  String get enterUrl => 'Anna URL-osoite';

  @override
  String get recipeImage => 'Reseptin kuva';

  @override
  String get removeImage => 'Poista kuva';

  @override
  String get mealPlannerTitle => 'Ateriasuunnittelija';

  @override
  String get mealPlannerViewMonthly => 'Kuukausinäkymä';

  @override
  String get mealPlannerViewWeekly => 'Viikkonäkymä';

  @override
  String get mealPlannerNoMeals => 'Ei suunniteltuja aterioita';

  @override
  String get mealPlannerNoMealsHint => 'Napauta päivää lisätäksesi aterian';

  @override
  String get mealPlannerLoading => 'Ladataan ateriasuunnitelmaa...';

  @override
  String get mealPlannerError => 'Virhe ladattaessa ateriasuunnitelmaa';

  @override
  String get mealPlannerAddMeal => 'Lisää ateria';

  @override
  String get mealPlannerEditMeal => 'Muokkaa ateriaa';

  @override
  String get mealPlannerDeleteMeal => 'Poista ateria';

  @override
  String get mealPlannerMealDeleted => 'Ateria poistettu';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count annosta',
      one: '$count annos',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Annokset';

  @override
  String get mealPlannerNoteLabel => 'Huomautus (valinnainen)';

  @override
  String get mealPlannerSelectRecipe => 'Valitse resepti';

  @override
  String get mealPlannerSearchRecipes => 'Hae reseptejä...';

  @override
  String get mealPlannerNoRecipesFound => 'Reseptejä ei löytynyt';

  @override
  String get mealPlannerNoRecipesHint =>
      'Luo reseptejä ensin Reseptit-välilehdellä';

  @override
  String get mealPlannerSave => 'Lisää suunnitelmaan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total ateriaa suunniteltu';
  }

  @override
  String get mealPlannerGenerateList => 'Luo ostoslista';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Lisätäänkö kaikki tämän viikon aterioiden ainekset ostoslistallesi?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ainesosaa lisätty listallesi!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Ei lisättäviä aineksia. Suunnittele ensin aterioita resepteillä.';

  @override
  String get mealPlannerGenerateListNoList => 'Luo ensin ostoslista.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Aamiainen';

  @override
  String get mealPlannerMealTypeLunch => 'Lounas';

  @override
  String get mealPlannerMealTypeDinner => 'Illallinen';

  @override
  String get mealPlannerMealTypeSnack => 'Välipala';

  @override
  String get mealPlannerDateLabel => 'Päivämäärä';

  @override
  String get mealPlannerWeekEmpty => 'Ei mitään suunniteltua tälle viikolle';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Napauta mitä tahansa päivää aloittaaksesi aterioiden suunnittelun!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Kutsu listalle';

  @override
  String get shareApp => 'Jaa sovellus';

  @override
  String get shareAppDescription => 'Kutsu ystäviä käyttämään KipiListia';

  @override
  String shareReferralText(Object url) {
    return 'Käytän KipiListia ostosteni järjestämiseen! Lataa linkistäni ja saamme molemmat 7 päivää Premiumia ilmaiseksi: $url';
  }

  @override
  String get shareReferralSubject => 'Hanki 7 päivää KipiList Premiumia!';
}
