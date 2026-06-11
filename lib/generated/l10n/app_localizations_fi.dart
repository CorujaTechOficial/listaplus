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
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Reseptit';

  @override
  String get navLists => 'Listat';

  @override
  String get navMealPlanner => 'Valikko';

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
  String get profile => 'Profiili';

  @override
  String get exitShoppingMode => 'Poistu ostostilasta';

  @override
  String get exit => 'Poistu';

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
  String get scanProductTitle => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Position the barcode in the center';

  @override
  String get product => 'Product';

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
  String get myAchievements => 'My Achievements';

  @override
  String get itemsPurchased => 'Items Purchased';

  @override
  String get totalSavings => 'Total Savings';

  @override
  String get currentStreak => 'Current Streak';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '$count day',
    );
    return '$_temp0';
  }

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
  String progressItemsOf(int purchased, int total) {
    return '$purchased of $total items';
  }

  @override
  String progressBudget(String amount) {
    return 'Budget: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Total: $amount';
  }

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
  String get chatHintBlocked => 'Avaa AI keskustellaksesi';

  @override
  String chatError(String error) {
    return 'Virhe ladattaessa chattia: $error';
  }

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

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
  String get aiLimitAlmostReached => 'Tekoälyviestit ovat melkein lopussa';

  @override
  String get unlockAi => 'Avaa rajoittamaton AI';

  @override
  String get aiTeaserFallback =>
      'Tilaa Premium, niin saat täyden vastauksen ja rajattomasti tekoälyvinkkejä ostoksille...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI-toimintoja jäljellä tässä kuussa – päivitys rajoittamaton määrä';
  }

  @override
  String get aiUsageExhausted =>
      'Tekoälyn kuukausiraja saavutettu. Päivitä Pro-versioon rajattomasti →';

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
  String get onboardingMaybeLater => 'Ehkä myöhemmin';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hei $name, järjestä ostoksesi oikein.';
  }

  @override
  String get onboardingSlide1Title => 'Älykkäät ostoslistat';

  @override
  String get onboardingSlide1Body =>
      'Luo ja jaa luetteloita välittömästi. Kipi lisää kohteita automaattisesti tottumusten perusteella.';

  @override
  String get onboardingSlide2Title => 'Tapaa Kipi';

  @override
  String get onboardingSlide2Body =>
      'Kysy mitä tahansa – luo listoja, etsi reseptejä, seuraa ruokakomeroasi, suunnittele viikkosi.';

  @override
  String get onboardingSlide3Title => 'Ruokakomero ja ateriasuunnittelu';

  @override
  String get onboardingSlide3Body =>
      'Seuraa mitä sinulla on, suunnittele aterioita ja luo ostoslistoja automaattisesti.';

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
  String get paywallLoadingError =>
      'Virhe ladattaessa tarjouksia. Yritä uudelleen.';

  @override
  String get paywallPurchaseError =>
      'Ostoa ei voitu suorittaa loppuun. Yritä uudelleen.';

  @override
  String get paywallRestoreError =>
      'Palautettavaa aktiivista tilausta ei löytynyt.';

  @override
  String paywallTrialDays(Object days) {
    return '$days PÄIVÄÄ ILMAISEKSI';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count VIIKKOA ILMAISEKSI',
      one: '$count VIIKKO ILMAISEKSI',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count KUUKAUTA ILMAISEKSI',
      one: '$count KUUKAUSI ILMAISEKSI',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Kokeile KipiList Prota ilmaiseksi 7 päivää';

  @override
  String get paywallTrialSubtitle => 'Peru milloin tahansa. Ei maksua tänään.';

  @override
  String get paywallTrialCta => 'Aloita ilmainen kokeilu';

  @override
  String get recipeAddToList => 'Lisää ostoslistalle';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ainesosat lisätty $listName';
  }

  @override
  String get noListSelected => 'Listaa ei ole valittu. Avaa ensin luettelo.';

  @override
  String get paywallFeaturesTitle => 'Kaikki mitä tarvitset:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI järjestää luettelosi automaattisesti';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Luo niin monta luetteloa kuin tarvitset';

  @override
  String get paywallFeatureDescSharing => 'Shoppaile yhdessä reaaliajassa';

  @override
  String get paywallFeatureDescPantry => 'Seuraa, mitä sinulla on kotona';

  @override
  String get paywallFeatureDescBudget => 'Pysy budjetissa joka kuukausi';

  @override
  String get paywallFeatureUnlimitedLists => 'Rajoittamaton luettelo';

  @override
  String get paywallFeatureSmartAI => 'Älykäs AI';

  @override
  String get paywallFeatureExpenseControl => 'Kulujen valvonta';

  @override
  String get paywallFeatureSharing => 'Jakaminen';

  @override
  String get paywallBeforeAfterTitle => 'AI ennen ja jälkeen:';

  @override
  String get paywallLabelCommon => 'Yleistä';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'riisi';

  @override
  String get paywallBeforeItem2 => 'saippua';

  @override
  String get paywallBeforeItem3 => 'liha';

  @override
  String get paywallBeforeItem4 => 'leipää';

  @override
  String get paywallAfterItem1 => 'Jyvät';

  @override
  String get paywallAfterItem2 => 'Puhdistus';

  @override
  String get paywallAfterItem3 => 'Lihat';

  @override
  String get paywallAfterItem4 => 'Leipomo';

  @override
  String get paywallTestimonialsTitle => 'Mitä käyttäjämme sanovat:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'Tekoäly järjestää ostokseni sekunneissa. Säästän 20 minuuttia per torimatka.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'En enää koskaan unohtanut yhtään listakohtaa. AI-chat on sensaatiomainen!';

  @override
  String get paywallSocialProof => '+2 400 perhettä käyttää sitä';

  @override
  String get paywallCtaUnlock => 'Avaa PRO';

  @override
  String get paywallBestValue => 'PARAS ARVO';

  @override
  String get paywallMostPopular => 'SUOSITTUIN';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Turvallinen maksu';

  @override
  String get paywallSelectPlan => 'Valitse suunnitelmasi:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SÄÄSTÄ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Vain $price/kk';
  }

  @override
  String get paywallPackageAnnual => 'Vuosisuunnitelma';

  @override
  String get paywallPackageMonthly => 'Kuukausisuunnitelma';

  @override
  String get paywallPackageLifetime => 'Elinikäinen pääsy';

  @override
  String get paywallCancelAnytime => 'Peru milloin tahansa. Ei sitoutumista.';

  @override
  String paywallTrialInCard(int days) {
    return 'Ensimmäiset $days päivää ILMAISEKSI';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Playn suojaama · Peru milloin tahansa';

  @override
  String get paywallPolicy => 'Tietosuojakäytäntö';

  @override
  String get paywallTerms => 'Käyttöehdot';

  @override
  String get paywallRestore => 'Palauttaa';

  @override
  String get paywallHeroHeadline => 'Kipi AI aina vierelläsi';

  @override
  String get paywallHeroSubtitle =>
      'Lisää kohteita, järjestä luetteloita ja säästä aikaa taskussasi olevan tekoälyn avulla';

  @override
  String get paywallBenefit1Desc =>
      'Lisää, järjestää ja ehdottaa kohteita 24/7';

  @override
  String get paywallBenefit2Desc => 'Ei kolmen listan rajaa';

  @override
  String get paywallBenefit3Desc => 'Kulujen seuranta ja perheluettelot';

  @override
  String get paywallPackageMonthlyDesc => 'Täysi joustavuus';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Aloita ilmaiseksi – $days päivää';
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
  String shareReferralText(String url) {
    return 'Käytän KipiListia ostosteni järjestämiseen! Lataa linkistäni ja saamme molemmat 7 päivää Premiumia ilmaiseksi: $url';
  }

  @override
  String get shareReferralSubject => 'Hanki 7 päivää KipiList Premiumia!';

  @override
  String get gestureHint =>
      'Valitse pitämällä painettuna • Poista pyyhkäisemällä';

  @override
  String get catalogTitle => 'Luettelo';

  @override
  String get catalogMyFrequents => 'Minun Frequents';

  @override
  String get catalogSearchGlobal => 'Hae mitä tahansa tuotetta...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Hae $category...';
  }

  @override
  String get catalogSortPopular => 'Suosituin';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Kansalaiset';

  @override
  String get catalogRareSection => 'harvinaisempaa maassasi';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Lisää $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Tuotetta ei löydy, kirjoita nimi';

  @override
  String get catalogBrowse => 'Selaa katalogia';

  @override
  String get offlineBanner => 'Olet offline-tilassa';

  @override
  String get consentTitle => 'Yksityisyys ja Analytics';

  @override
  String get consentBody =>
      'KipiList käyttää Firebase Analyticsia parantaakseen käyttökokemustasi. Tietojasi käsitellään tietosuojakäytäntömme mukaisesti.';

  @override
  String get consentAccept => 'Hyväksyä';

  @override
  String get consentDecline => 'Ei kiitos';

  @override
  String get mealPlannerPantryAllAvailable => 'Varastossa';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count puuttuvat kohteet',
      one: '$count puuttuu kohde',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Viimeinen voimassaolopäivä';

  @override
  String get notInformed => 'Ei tiedotettu';

  @override
  String get skip => 'Ohita';

  @override
  String get onboardingAiTitle => 'Keskustele Kipin kanssa';

  @override
  String get onboardingAiGreeting =>
      'Hei! Olen Kipi, henkilökohtainen ostosavustajasi! 🛒';

  @override
  String get onboardingAiAskName => 'Mikä sinun nimesi on?';

  @override
  String get onboardingAiNameHint => 'Kirjoita nimesi...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Hauska tavata, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Mikä on lempiruokasi?';

  @override
  String get onboardingAiFoodHint => 'esim. Pizzaa, Sushia...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Hienoja valintoja! Lisäisin listaasi seuraavasti:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Näyttääkö tämä hyvältä? Yritä kirjoittaa jotain muuta!';

  @override
  String get onboardingAiReady =>
      'Hienoa! Olet valmis aloittamaan. Luodaan tilisi!';

  @override
  String get onboardingAiContinue => 'Jatka →';

  @override
  String get connectionError => 'Yhteysvirhe';

  @override
  String connectionErrorDesc(String error) {
    return 'Virhe: $error';
  }

  @override
  String get errorLoadingLists => 'Virhe ladattaessa luetteloita';

  @override
  String get noListsFound => 'Listoja ei löytynyt';

  @override
  String get backToToday => 'Takaisin tähän päivään';

  @override
  String get quickSuggestions => 'Pikaisia ​​ehdotuksia';

  @override
  String get aiEnergyLow => 'Alhainen AI-energia';

  @override
  String get aiUnlockUnlimited => 'Avaa rajoittamaton AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 tänään';
  }

  @override
  String get aiSubscribeUnlimited => 'Tilaa rajoittamaton AI';

  @override
  String get unlockWithAd => 'Avaa lukitus mainoksella';

  @override
  String get conversationHistoryTitle => 'Keskusteluhistoria';

  @override
  String get noConversationsFound => 'Keskusteluja ei löytynyt';

  @override
  String get errorLoadingHistory => 'Virhe historian lataamisessa';

  @override
  String get deleteConversationTitle => 'Poista keskustelu';

  @override
  String get deleteConversationConfirm => 'Tätä toimintoa ei voi kumota.';

  @override
  String get deleteConversation => 'Poistaa';

  @override
  String get subscription => 'Tilaus';

  @override
  String get kipiListProActive => 'KipiList Pro aktiivinen';

  @override
  String get unlockPremiumTitle => 'Avaa Premium';

  @override
  String get loadingSubscription => 'Ladataan tilausta...';

  @override
  String get errorLoadingSubscription => 'Virhe ladattaessa tilausta';

  @override
  String get profileSection => 'Profiili';

  @override
  String get myProfile => 'Oma profiili';

  @override
  String get profileSubtitle => 'Profiilitietosi';

  @override
  String get customizeAiAssistant => 'Mukauta AI-avustaja';

  @override
  String get assistantHistory => 'Assistentin historia';

  @override
  String get assistantHistorySubtitle => 'Tarkastele keskusteluhistoriaasi';

  @override
  String get manageCategories => 'Hallinnoi luokkia';

  @override
  String get manageCategoriesSubtitle => 'Lisää, muokkaa tai poista luokkia';

  @override
  String get customizeAssistant => 'Mukauta';

  @override
  String get assistantName => 'Avustajan nimi';

  @override
  String get chooseIcon => 'Valitse kuvake';

  @override
  String get profileSaved => 'Profiili tallennettu';

  @override
  String get errorSavingProfile => 'Virhe tallennettaessa profiilia';

  @override
  String get userProfile => 'Käyttäjäprofiili';

  @override
  String get profileDescription => 'Profiilin kuvaus';

  @override
  String get preferredMarket => 'Suositut markkinat';

  @override
  String get preferredMarketHint => 'Missä yleensä shoppailet?';

  @override
  String get dietaryRestrictions => 'Ruokavaliorajoitukset';

  @override
  String get dietaryRestrictionsHint => 'Onko ruokavaliorajoituksia?';

  @override
  String get marketsToAvoid => 'Vältettävät markkinat';

  @override
  String get marketsToAvoidHint => 'Markkinat, joilla et halua tehdä ostoksia';

  @override
  String get observations => 'Havainnot';

  @override
  String get observationsHint => 'Onko lisähuomautuksia?';

  @override
  String get saveProfile => 'Tallenna profiili';

  @override
  String get everythingReady => 'Kaikki valmiina!';

  @override
  String get youCompletedList => 'Täytit listan!';

  @override
  String get selectCheaperAlternative => 'Valitse halvempi vaihtoehto';

  @override
  String get suggestedItems => 'Ehdotetut kohteet';

  @override
  String get swapped => 'Vaihdettu';

  @override
  String get swap => 'Vaihtaa';

  @override
  String get chooseThemeColor => 'Valitse teeman väri';

  @override
  String get manageCategoriesTitle => 'Hallitse luokkia';

  @override
  String get categoryLimitReached => 'Luokkaraja saavutettu';

  @override
  String get deleteCategoryTitle => 'Poista kategoria';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Kohteet kansiossa \"$category\" siirretään kohtaan Muut.\nJatkaa?';
  }

  @override
  String get deleteCategory => 'Poistaa';

  @override
  String get newCategoryDialog => 'Uusi kategoria';

  @override
  String get editCategoryDialog => 'Muokkaa luokkaa';

  @override
  String get categoryName => 'Luokan nimi';

  @override
  String get categoryNameHint => 'Anna luokan nimi';

  @override
  String get categoryColorLabel => 'Väri';

  @override
  String get categoryIconLabel => 'Kuvake';

  @override
  String itemAddedSnack(String name) {
    return '$name lisätty';
  }

  @override
  String get kipiQuickBarHint => 'Mitä sinun täytyy ostaa?';

  @override
  String replaceItem(String item) {
    return 'Korvaa $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit - $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Älä koskaan unohda päivittäistavaroita uudelleen';

  @override
  String get onboardingGoalSaveMoney => 'Säästä rahaa';

  @override
  String get onboardingGoalNeverForget => 'Älä koskaan unohda esineitä';

  @override
  String get onboardingGoalFaster => 'Osta nopeammin';

  @override
  String get onboardingGoalFamily => 'Järjestä perheen ostokset';

  @override
  String get onboardingGoalRecipes => 'Tutustu resepteihin';

  @override
  String get onboardingGoalPantry => 'Rata ruokakomero';

  @override
  String get onboardingCommitmentsTitle => 'Mikä on sinulle tärkeää?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Valitse tavoitteesi muokataksesi KipiListiä';

  @override
  String get onboardingCommitmentsCta => 'Mennään!';

  @override
  String get onboardingPersonalizationNameLabel => 'Sinun nimesi';

  @override
  String get onboardingPersonalizationNameHint => 'Kirjoita nimesi';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Mitä ostat?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Kenelle teet ostoksia?';

  @override
  String get onboardingCategoryGrocery => 'Elintarvikkeita';

  @override
  String get onboardingCategoryPharmacy => 'Apteekki';

  @override
  String get onboardingCategoryRecipes => 'Reseptit';

  @override
  String get onboardingCategoryHome => 'Kotiin';

  @override
  String get onboardingCategoryPet => 'Lemmikki';

  @override
  String get onboardingGroupSolo => 'vain minä';

  @override
  String get onboardingGroupCouple => 'Pari';

  @override
  String get onboardingGroupFamily => 'Perhe';

  @override
  String get onboardingLoadingTitle => 'Kokemustasi valmistellaan...';

  @override
  String get onboardingLoadingStep1 => 'Analysoidaan mieltymyksiäsi...';

  @override
  String get onboardingLoadingStep2 => 'Asetetaan tekoälyavustajaa...';

  @override
  String get onboardingLoadingStep3 => 'Melkein valmis...';

  @override
  String get onboardingLoadingStat1Label => 'Luetteloidut tuotteet';

  @override
  String get onboardingLoadingStat2Label => 'Käyttäjät auttoivat';

  @override
  String get onboardingLoadingStat3Label => 'Minuutit tallennettu';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, säästä jokaisella matkalla!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, älä koskaan unohda yhtään tuotetta!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, osta puolet nopeammin!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, järjestä perheen ostokset!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, löydä uusia reseptejä!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, seuraa ruokakomeroasi täydellisesti!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Säästä jokaisella matkalla!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Älä koskaan unohda esinettä!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Shoppaile puolessa ajassa!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Järjestä perheen ostokset!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Tutustu uusiin resepteihin!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Seuraa ruokakomeroasi täydellisesti!';

  @override
  String paywallPricePerDay(String price) {
    return 'Vain $price/päivä – vähemmän kuin kahvi';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Ohita toistaiseksi';

  @override
  String get paywallTestimonial =>
      'Tekoäly järjestää ostokseni sekunneissa. Säästän 20 minuuttia per matka.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Peruuta milloin tahansa · Ei veloitusta ennen kokeilujakson päättymistä';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hei $name! Mitä $category tarvitset?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Mitä $category tarvitset?';
  }

  @override
  String get onboardingAiDemoYes => 'Kyllä!';

  @override
  String get onboardingAiDemoReaction => 'Mukava!';

  @override
  String get onboardingAiDemoChange => 'Vaihda kohde';

  @override
  String get onboardingAiDemoOffer => 'Yritä kirjoittaa jotain muuta!';

  @override
  String get onboardingAiDemoContinue => 'Jatkaa';

  @override
  String get onboardingAiDemoSlideHeadline => 'Ostoslistasi nyt tekoälyllä';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Katso, kuinka Kipi rakentaa koko luettelosi sekunneissa';

  @override
  String get onboardingAiDemoSlideCta => 'Haluan tämän! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Järjestän grillausta 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Valmis! Tässä on kaikki mitä tarvitset:';

  @override
  String get onboardingAiDemoSlideDone => 'Täydellinen lista sekunneissa ✨';

  @override
  String get onboardingPainTitle => 'Mikä turhauttaa sinua eniten?';

  @override
  String get onboardingPainSubtitle => 'Ole rehellinen – korjaamme jokaisen';

  @override
  String get onboardingPainCta => 'Kyllä, korjaa tämä minulle →';

  @override
  String get onboardingPainForget => 'Unohdan tavarat kauppaan';

  @override
  String get onboardingPainFamily => 'Perheeni ei koskaan näe luetteloa';

  @override
  String get onboardingPainOverspend => 'Ylitän aina budjetin';

  @override
  String get onboardingPainRepeat => 'Yksi matka ei koskaan riitä';
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
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Reseptit';

  @override
  String get navLists => 'Listat';

  @override
  String get navMealPlanner => 'Valikko';

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
  String get profile => 'Profiili';

  @override
  String get exitShoppingMode => 'Poistu ostostilasta';

  @override
  String get exit => 'Poistu';

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
  String get chatHintBlocked => 'Avaa AI keskustellaksesi';

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
  String get aiLimitAlmostReached => 'Tekoälyviestit ovat melkein lopussa';

  @override
  String get unlockAi => 'Avaa rajoittamaton AI';

  @override
  String get aiTeaserFallback =>
      'Tilaa Premium, niin saat täyden vastauksen ja rajattomasti tekoälyvinkkejä ostoksille...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI-toimintoja jäljellä tässä kuussa – päivitys rajoittamaton määrä';
  }

  @override
  String get aiUsageExhausted =>
      'Tekoälyn kuukausiraja saavutettu. Päivitä Pro-versioon rajattomasti →';

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
  String get onboardingMaybeLater => 'Ehkä myöhemmin';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hei $name, järjestä ostoksesi oikein.';
  }

  @override
  String get onboardingSlide1Title => 'Älykkäät ostoslistat';

  @override
  String get onboardingSlide1Body =>
      'Luo ja jaa luetteloita välittömästi. Kipi lisää kohteita automaattisesti tottumusten perusteella.';

  @override
  String get onboardingSlide2Title => 'Tapaa Kipi';

  @override
  String get onboardingSlide2Body =>
      'Kysy mitä tahansa – luo listoja, etsi reseptejä, seuraa ruokakomeroasi, suunnittele viikkosi.';

  @override
  String get onboardingSlide3Title => 'Ruokakomero ja ateriasuunnittelu';

  @override
  String get onboardingSlide3Body =>
      'Seuraa mitä sinulla on, suunnittele aterioita ja luo ostoslistoja automaattisesti.';

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
  String get paywallLoadingError =>
      'Virhe ladattaessa tarjouksia. Yritä uudelleen.';

  @override
  String get paywallPurchaseError =>
      'Ostoa ei voitu suorittaa loppuun. Yritä uudelleen.';

  @override
  String get paywallRestoreError =>
      'Palautettavaa aktiivista tilausta ei löytynyt.';

  @override
  String paywallTrialDays(Object days) {
    return '$days PÄIVÄÄ ILMAISEKSI';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count VIIKKOA ILMAISEKSI',
      one: '$count VIIKKO ILMAISEKSI',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count KUUKAUTA ILMAISEKSI',
      one: '$count KUUKAUSI ILMAISEKSI',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Kokeile KipiList Prota ilmaiseksi 7 päivää';

  @override
  String get paywallTrialSubtitle => 'Peru milloin tahansa. Ei maksua tänään.';

  @override
  String get paywallTrialCta => 'Aloita ilmainen kokeilu';

  @override
  String get recipeAddToList => 'Lisää ostoslistalle';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ainesosat lisätty $listName';
  }

  @override
  String get noListSelected => 'Listaa ei ole valittu. Avaa ensin luettelo.';

  @override
  String get paywallFeaturesTitle => 'Kaikki mitä tarvitset:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI järjestää luettelosi automaattisesti';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Luo niin monta luetteloa kuin tarvitset';

  @override
  String get paywallFeatureDescSharing => 'Shoppaile yhdessä reaaliajassa';

  @override
  String get paywallFeatureDescPantry => 'Seuraa, mitä sinulla on kotona';

  @override
  String get paywallFeatureDescBudget => 'Pysy budjetissa joka kuukausi';

  @override
  String get paywallFeatureUnlimitedLists => 'Rajoittamaton luettelo';

  @override
  String get paywallFeatureSmartAI => 'Älykäs AI';

  @override
  String get paywallFeatureExpenseControl => 'Kulujen valvonta';

  @override
  String get paywallFeatureSharing => 'Jakaminen';

  @override
  String get paywallBeforeAfterTitle => 'AI ennen ja jälkeen:';

  @override
  String get paywallLabelCommon => 'Yleistä';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'riisi';

  @override
  String get paywallBeforeItem2 => 'saippua';

  @override
  String get paywallBeforeItem3 => 'liha';

  @override
  String get paywallBeforeItem4 => 'leipää';

  @override
  String get paywallAfterItem1 => 'Jyvät';

  @override
  String get paywallAfterItem2 => 'Puhdistus';

  @override
  String get paywallAfterItem3 => 'Lihat';

  @override
  String get paywallAfterItem4 => 'Leipomo';

  @override
  String get paywallTestimonialsTitle => 'Mitä käyttäjämme sanovat:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'Tekoäly järjestää ostokseni sekunneissa. Säästän 20 minuuttia per torimatka.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'En enää koskaan unohtanut yhtään listakohtaa. AI-chat on sensaatiomainen!';

  @override
  String get paywallSocialProof => '+2 400 perhettä käyttää sitä';

  @override
  String get paywallCtaUnlock => 'Avaa PRO';

  @override
  String get paywallBestValue => 'PARAS ARVO';

  @override
  String get paywallMostPopular => 'SUOSITTUIN';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Turvallinen maksu';

  @override
  String get paywallSelectPlan => 'Valitse suunnitelmasi:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SÄÄSTÄ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Vain $price/kk';
  }

  @override
  String get paywallPackageAnnual => 'Vuosisuunnitelma';

  @override
  String get paywallPackageMonthly => 'Kuukausisuunnitelma';

  @override
  String get paywallPackageLifetime => 'Elinikäinen pääsy';

  @override
  String get paywallCancelAnytime => 'Peru milloin tahansa. Ei sitoutumista.';

  @override
  String paywallTrialInCard(int days) {
    return 'Ensimmäiset $days päivää ILMAISEKSI';
  }

  @override
  String get paywallSecuredByStore =>
      'Google Playn suojaama · Peru milloin tahansa';

  @override
  String get paywallPolicy => 'Tietosuojakäytäntö';

  @override
  String get paywallTerms => 'Käyttöehdot';

  @override
  String get paywallRestore => 'Palauttaa';

  @override
  String get paywallHeroHeadline => 'Kipi AI aina vierelläsi';

  @override
  String get paywallHeroSubtitle =>
      'Lisää kohteita, järjestä luetteloita ja säästä aikaa taskussasi olevan tekoälyn avulla';

  @override
  String get paywallBenefit1Desc =>
      'Lisää, järjestää ja ehdottaa kohteita 24/7';

  @override
  String get paywallBenefit2Desc => 'Ei kolmen listan rajaa';

  @override
  String get paywallBenefit3Desc => 'Kulujen seuranta ja perheluettelot';

  @override
  String get paywallPackageMonthlyDesc => 'Täysi joustavuus';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Aloita ilmaiseksi – $days päivää';
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
  String shareReferralText(String url) {
    return 'Käytän KipiListia ostosteni järjestämiseen! Lataa linkistäni ja saamme molemmat 7 päivää Premiumia ilmaiseksi: $url';
  }

  @override
  String get shareReferralSubject => 'Hanki 7 päivää KipiList Premiumia!';

  @override
  String get gestureHint =>
      'Valitse pitämällä painettuna • Poista pyyhkäisemällä';

  @override
  String get catalogTitle => 'Luettelo';

  @override
  String get catalogMyFrequents => 'Minun Frequents';

  @override
  String get catalogSearchGlobal => 'Hae mitä tahansa tuotetta...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Hae $category...';
  }

  @override
  String get catalogSortPopular => 'Suosituin';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Kansalaiset';

  @override
  String get catalogRareSection => 'harvinaisempaa maassasi';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Lisää $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Tuotetta ei löydy, kirjoita nimi';

  @override
  String get catalogBrowse => 'Selaa katalogia';

  @override
  String get offlineBanner => 'Olet offline-tilassa';

  @override
  String get consentTitle => 'Yksityisyys ja Analytics';

  @override
  String get consentBody =>
      'KipiList käyttää Firebase Analyticsia parantaakseen käyttökokemustasi. Tietojasi käsitellään tietosuojakäytäntömme mukaisesti.';

  @override
  String get consentAccept => 'Hyväksyä';

  @override
  String get consentDecline => 'Ei kiitos';

  @override
  String get mealPlannerPantryAllAvailable => 'Varastossa';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count puuttuvat kohteet',
      one: '$count puuttuu kohde',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Viimeinen voimassaolopäivä';

  @override
  String get notInformed => 'Ei tiedotettu';

  @override
  String get skip => 'Ohita';

  @override
  String get onboardingAiTitle => 'Keskustele Kipin kanssa';

  @override
  String get onboardingAiGreeting =>
      'Hei! Olen Kipi, henkilökohtainen ostosavustajasi! 🛒';

  @override
  String get onboardingAiAskName => 'Mikä sinun nimesi on?';

  @override
  String get onboardingAiNameHint => 'Kirjoita nimesi...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Hauska tavata, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Mikä on lempiruokasi?';

  @override
  String get onboardingAiFoodHint => 'esim. Pizzaa, Sushia...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Hienoja valintoja! Lisäisin listaasi seuraavasti:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Näyttääkö tämä hyvältä? Yritä kirjoittaa jotain muuta!';

  @override
  String get onboardingAiReady =>
      'Hienoa! Olet valmis aloittamaan. Luodaan tilisi!';

  @override
  String get onboardingAiContinue => 'Jatka →';

  @override
  String get connectionError => 'Yhteysvirhe';

  @override
  String connectionErrorDesc(String error) {
    return 'Virhe: $error';
  }

  @override
  String get errorLoadingLists => 'Virhe ladattaessa luetteloita';

  @override
  String get noListsFound => 'Listoja ei löytynyt';

  @override
  String get backToToday => 'Takaisin tähän päivään';

  @override
  String get quickSuggestions => 'Pikaisia ​​ehdotuksia';

  @override
  String get aiEnergyLow => 'Alhainen AI-energia';

  @override
  String get aiUnlockUnlimited => 'Avaa rajoittamaton AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 tänään';
  }

  @override
  String get aiSubscribeUnlimited => 'Tilaa rajoittamaton AI';

  @override
  String get unlockWithAd => 'Avaa lukitus mainoksella';

  @override
  String get conversationHistoryTitle => 'Keskusteluhistoria';

  @override
  String get noConversationsFound => 'Keskusteluja ei löytynyt';

  @override
  String get errorLoadingHistory => 'Virhe historian lataamisessa';

  @override
  String get deleteConversationTitle => 'Poista keskustelu';

  @override
  String get deleteConversationConfirm => 'Tätä toimintoa ei voi kumota.';

  @override
  String get deleteConversation => 'Poistaa';

  @override
  String get subscription => 'Tilaus';

  @override
  String get kipiListProActive => 'KipiList Pro aktiivinen';

  @override
  String get unlockPremiumTitle => 'Avaa Premium';

  @override
  String get loadingSubscription => 'Ladataan tilausta...';

  @override
  String get errorLoadingSubscription => 'Virhe ladattaessa tilausta';

  @override
  String get profileSection => 'Profiili';

  @override
  String get myProfile => 'Oma profiili';

  @override
  String get profileSubtitle => 'Profiilitietosi';

  @override
  String get customizeAiAssistant => 'Mukauta AI-avustaja';

  @override
  String get assistantHistory => 'Assistentin historia';

  @override
  String get assistantHistorySubtitle => 'Tarkastele keskusteluhistoriaasi';

  @override
  String get manageCategories => 'Hallinnoi luokkia';

  @override
  String get manageCategoriesSubtitle => 'Lisää, muokkaa tai poista luokkia';

  @override
  String get customizeAssistant => 'Mukauta';

  @override
  String get assistantName => 'Avustajan nimi';

  @override
  String get chooseIcon => 'Valitse kuvake';

  @override
  String get profileSaved => 'Profiili tallennettu';

  @override
  String get errorSavingProfile => 'Virhe tallennettaessa profiilia';

  @override
  String get userProfile => 'Käyttäjäprofiili';

  @override
  String get profileDescription => 'Profiilin kuvaus';

  @override
  String get preferredMarket => 'Suositut markkinat';

  @override
  String get preferredMarketHint => 'Missä yleensä shoppailet?';

  @override
  String get dietaryRestrictions => 'Ruokavaliorajoitukset';

  @override
  String get dietaryRestrictionsHint => 'Onko ruokavaliorajoituksia?';

  @override
  String get marketsToAvoid => 'Vältettävät markkinat';

  @override
  String get marketsToAvoidHint => 'Markkinat, joilla et halua tehdä ostoksia';

  @override
  String get observations => 'Havainnot';

  @override
  String get observationsHint => 'Onko lisähuomautuksia?';

  @override
  String get saveProfile => 'Tallenna profiili';

  @override
  String get everythingReady => 'Kaikki valmiina!';

  @override
  String get youCompletedList => 'Täytit listan!';

  @override
  String get selectCheaperAlternative => 'Valitse halvempi vaihtoehto';

  @override
  String get suggestedItems => 'Ehdotetut kohteet';

  @override
  String get swapped => 'Vaihdettu';

  @override
  String get swap => 'Vaihtaa';

  @override
  String get chooseThemeColor => 'Valitse teeman väri';

  @override
  String get manageCategoriesTitle => 'Hallitse luokkia';

  @override
  String get categoryLimitReached => 'Luokkaraja saavutettu';

  @override
  String get deleteCategoryTitle => 'Poista kategoria';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Kohteet kansiossa \"$category\" siirretään kohtaan Muut.\nJatkaa?';
  }

  @override
  String get deleteCategory => 'Poistaa';

  @override
  String get newCategoryDialog => 'Uusi kategoria';

  @override
  String get editCategoryDialog => 'Muokkaa luokkaa';

  @override
  String get categoryName => 'Luokan nimi';

  @override
  String get categoryNameHint => 'Anna luokan nimi';

  @override
  String get categoryColorLabel => 'Väri';

  @override
  String get categoryIconLabel => 'Kuvake';

  @override
  String itemAddedSnack(String name) {
    return '$name lisätty';
  }

  @override
  String get kipiQuickBarHint => 'Mitä sinun täytyy ostaa?';

  @override
  String replaceItem(String item) {
    return 'Korvaa $item';
  }

  @override
  String quantityWithUnit(String qty, String unit) {
    return '$qty $unit';
  }

  @override
  String quantityUnitWithPrice(String qty, String unit, String price) {
    return '$qty $unit - $price';
  }

  @override
  String get onboardingHookHeadline =>
      'Älä koskaan unohda päivittäistavaroita uudelleen';

  @override
  String get onboardingGoalSaveMoney => 'Säästä rahaa';

  @override
  String get onboardingGoalNeverForget => 'Älä koskaan unohda esineitä';

  @override
  String get onboardingGoalFaster => 'Osta nopeammin';

  @override
  String get onboardingGoalFamily => 'Järjestä perheen ostokset';

  @override
  String get onboardingGoalRecipes => 'Tutustu resepteihin';

  @override
  String get onboardingGoalPantry => 'Rata ruokakomero';

  @override
  String get onboardingCommitmentsTitle => 'Mikä on sinulle tärkeää?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Valitse tavoitteesi muokataksesi KipiListiä';

  @override
  String get onboardingCommitmentsCta => 'Mennään!';

  @override
  String get onboardingPersonalizationNameLabel => 'Sinun nimesi';

  @override
  String get onboardingPersonalizationNameHint => 'Kirjoita nimesi';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Mitä ostat?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Kenelle teet ostoksia?';

  @override
  String get onboardingCategoryGrocery => 'Elintarvikkeita';

  @override
  String get onboardingCategoryPharmacy => 'Apteekki';

  @override
  String get onboardingCategoryRecipes => 'Reseptit';

  @override
  String get onboardingCategoryHome => 'Kotiin';

  @override
  String get onboardingCategoryPet => 'Lemmikki';

  @override
  String get onboardingGroupSolo => 'vain minä';

  @override
  String get onboardingGroupCouple => 'Pari';

  @override
  String get onboardingGroupFamily => 'Perhe';

  @override
  String get onboardingLoadingTitle => 'Kokemustasi valmistellaan...';

  @override
  String get onboardingLoadingStep1 => 'Analysoidaan mieltymyksiäsi...';

  @override
  String get onboardingLoadingStep2 => 'Asetetaan tekoälyavustajaa...';

  @override
  String get onboardingLoadingStep3 => 'Melkein valmis...';

  @override
  String get onboardingLoadingStat1Label => 'Luetteloidut tuotteet';

  @override
  String get onboardingLoadingStat2Label => 'Käyttäjät auttoivat';

  @override
  String get onboardingLoadingStat3Label => 'Minuutit tallennettu';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, säästä jokaisella matkalla!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, älä koskaan unohda yhtään tuotetta!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, osta puolet nopeammin!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, järjestä perheen ostokset!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, löydä uusia reseptejä!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, seuraa ruokakomeroasi täydellisesti!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Säästä jokaisella matkalla!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Älä koskaan unohda esinettä!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Shoppaile puolessa ajassa!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Järjestä perheen ostokset!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Tutustu uusiin resepteihin!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Seuraa ruokakomeroasi täydellisesti!';

  @override
  String paywallPricePerDay(String price) {
    return 'Vain $price/päivä – vähemmän kuin kahvi';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Ohita toistaiseksi';

  @override
  String get paywallTestimonial =>
      'Tekoäly järjestää ostokseni sekunneissa. Säästän 20 minuuttia per matka.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Peruuta milloin tahansa · Ei veloitusta ennen kokeilujakson päättymistä';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hei $name! Mitä $category tarvitset?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Mitä $category tarvitset?';
  }

  @override
  String get onboardingAiDemoYes => 'Kyllä!';

  @override
  String get onboardingAiDemoReaction => 'Mukava!';

  @override
  String get onboardingAiDemoChange => 'Vaihda kohde';

  @override
  String get onboardingAiDemoOffer => 'Yritä kirjoittaa jotain muuta!';

  @override
  String get onboardingAiDemoContinue => 'Jatkaa';

  @override
  String get onboardingAiDemoSlideHeadline => 'Ostoslistasi nyt tekoälyllä';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Katso, kuinka Kipi rakentaa koko luettelosi sekunneissa';

  @override
  String get onboardingAiDemoSlideCta => 'Haluan tämän! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Järjestän grillausta 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Valmis! Tässä on kaikki mitä tarvitset:';

  @override
  String get onboardingAiDemoSlideDone => 'Täydellinen lista sekunneissa ✨';

  @override
  String get onboardingPainTitle => 'Mikä turhauttaa sinua eniten?';

  @override
  String get onboardingPainSubtitle => 'Ole rehellinen – korjaamme jokaisen';

  @override
  String get onboardingPainCta => 'Kyllä, korjaa tämä minulle →';

  @override
  String get onboardingPainForget => 'Unohdan tavarat kauppaan';

  @override
  String get onboardingPainFamily => 'Perheeni ei koskaan näe luetteloa';

  @override
  String get onboardingPainOverspend => 'Ylitän aina budjetin';

  @override
  String get onboardingPainRepeat => 'Yksi matka ei koskaan riitä';
}
