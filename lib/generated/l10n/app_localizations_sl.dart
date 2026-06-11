// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appTitle => 'Nakupovalni seznam';

  @override
  String get lists => 'Seznami';

  @override
  String get pantry => 'Shramba';

  @override
  String get navChat => 'Klepetajte';

  @override
  String get navRecipes => 'Recepti';

  @override
  String get navLists => 'Seznami';

  @override
  String get navMealPlanner => 'Jedilnik';

  @override
  String get cancel => 'Prekliči';

  @override
  String get save => 'Shrani';

  @override
  String get create => 'Ustvari';

  @override
  String get add => 'Dodaj';

  @override
  String get remove => 'Odstrani';

  @override
  String get delete => 'Izbriši';

  @override
  String get edit => 'Uredi';

  @override
  String get copy => 'Kopiraj';

  @override
  String get next => 'Naprej';

  @override
  String get retry => 'Poskusi znova';

  @override
  String get regenerate => 'Znova ustvari';

  @override
  String get copiedToClipboard => 'Kopirano v odložišče';

  @override
  String get confirm => 'Potrdi';

  @override
  String get close => 'Zapri';

  @override
  String get import => 'Uvozi';

  @override
  String get rename => 'Preimenuj';

  @override
  String get upgrade => 'Nadgradi';

  @override
  String get clear => 'Počisti';

  @override
  String error(String message) {
    return 'Napaka: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Napaka: $message';
  }

  @override
  String get purchaseError => 'Napaka pri obdelavi nakupa. Poskusite znova.';

  @override
  String get restoreError => 'Napaka pri obnovi nakupov. Poskusite znova.';

  @override
  String get loading => 'Nalaganje...';

  @override
  String get fieldRequired => 'Obvezno polje';

  @override
  String get addedFeedback => 'Dodano!';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Zapustite nakupovalni način';

  @override
  String get exit => 'Izhod';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izbranih $count',
      few: 'Izbrani $count',
      two: 'Izbrana $count',
      one: 'other $count',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Ocenjeno';

  @override
  String get alreadyPurchased => 'Že kupljeno';

  @override
  String get clearList => 'Počisti seznam';

  @override
  String get clearPurchased => 'Počisti kupljeno';

  @override
  String get share => 'Deli';

  @override
  String get shareViaCode => 'Deli prek kode';

  @override
  String get importViaCode => 'Uvozi prek kode';

  @override
  String get listAssistant => 'Pomočnik seznama';

  @override
  String get globalAssistant => 'Globalni pomočnik';

  @override
  String get becomePremium => 'Postani Premium';

  @override
  String get manageSubscription => 'Upravljaj naročnino';

  @override
  String get completePurchase => 'Zaključi nakup';

  @override
  String get confirmClearList => 'Odstranim vse predmete?';

  @override
  String get shareListTitle => 'Deli seznam';

  @override
  String get shareThisCode => 'Delite to kodo:';

  @override
  String get validForLimitedTime => 'Velja omejen čas';

  @override
  String get importListTitle => 'Uvozi seznam';

  @override
  String get enterCodeHint => 'Vnesite kodo';

  @override
  String get confirmArchiveTitle => 'Zaključi nakup';

  @override
  String get confirmArchiveContent => 'Zaključim ta nakup in arhiviram seznam?';

  @override
  String get complete => 'Zaključi';

  @override
  String get listArchived => 'Seznam uspešno arhiviran!';

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
    return 'Odstranim $count predmet(e/ov)?';
  }

  @override
  String get confirmDeleteTitle => 'Potrdi';

  @override
  String confirmContent(int count) {
    return 'Odstranim $count predmet(e/ov)?';
  }

  @override
  String get archiveList => 'Arhiviraj seznam';

  @override
  String get pantryAppBar => 'Shramba';

  @override
  String get generateShoppingList => 'Ustvari nakupovalni seznam';

  @override
  String get pantryEmpty => 'Prazna shramba';

  @override
  String get pantryEmptySubtitle => 'Dodajte izdelke, ki jih želite imeti doma';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit predmet(e/ov) je treba kupiti';
  }

  @override
  String get noItemsToBuy => 'Ni predmetov za nakup';

  @override
  String get newPantryList => 'Nakup iz shrambe';

  @override
  String get newListTitle => 'Nov nakupovalni seznam';

  @override
  String itemsWillBeAdded(int count) {
    return '$count predmet(e/ov) bo dodanih';
  }

  @override
  String get listNameLabel => 'Ime seznama';

  @override
  String listCreated(String name, int count) {
    return 'Seznam \"$name\" ustvarjen s $count predmeti';
  }

  @override
  String get noTracking => 'Brez sledenja';

  @override
  String get markAsPurchased => 'Označi kot kupljeno';

  @override
  String editPantryItem(String name) {
    return 'Uredi $name';
  }

  @override
  String get idealQuantity => 'Idealna količina';

  @override
  String get currentQuantity => 'Trenutna količina';

  @override
  String get consumed => 'Porabljeno';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name dopolnjen na $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Odstranim \"$name\" iz shrambe?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Uredi $name';
  }

  @override
  String get scanProductTitle => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Črtno kodo postavite na sredino';

  @override
  String get product => 'Izdelek';

  @override
  String get settingsAppBar => 'Nastavitve';

  @override
  String get language => 'Jezik';

  @override
  String get languagePortuguese => 'português (Brazilija)';

  @override
  String get languageEnglish => 'angleščina';

  @override
  String get languageSystem => 'Privzeto sistem';

  @override
  String get chooseLanguage => 'Izberite Jezik';

  @override
  String get searchLanguage => 'Jezik iskanja ...';

  @override
  String get currency => 'Valuta';

  @override
  String get chooseCurrency => 'Izberite Valuta';

  @override
  String get searchCurrency => 'Iskanje valute ...';

  @override
  String get appearance => 'Videz';

  @override
  String get light => 'Svetlo';

  @override
  String get system => 'Sistem';

  @override
  String get dark => 'Temno';

  @override
  String get themeColor => 'Barva teme';

  @override
  String get dynamicColors => 'Dinamične barve';

  @override
  String get dynamicColorsSubtitle => 'Uporabite barve glede na ozadje';

  @override
  String get dynamicColorsEnabledWarning =>
      'Onemogočite dinamične barve, da bo barva teme začela veljati';

  @override
  String get finance => 'Finance';

  @override
  String get monthlyBudgetNav => 'Mesečni proračun';

  @override
  String get budgetSubtitle => 'Spremljajte svoje mesečne stroške';

  @override
  String get data => 'Podatki';

  @override
  String get backupNav => 'Varnostna kopija';

  @override
  String get backupSubtitle => 'Izvozi ali uvozi svoje podatke';

  @override
  String get about => 'O aplikaciji';

  @override
  String get version => 'Različica';

  @override
  String get privacy => 'Zasebnost';

  @override
  String get termsOfUse => 'Pogoji uporabe';

  @override
  String get myAchievements => 'Moji dosežki';

  @override
  String get itemsPurchased => 'Kupljeni predmeti';

  @override
  String get totalSavings => 'Skupni prihranki';

  @override
  String get currentStreak => 'Trenutni niz';

  @override
  String streakDays(int count) {
    return '$days dni';
  }

  @override
  String get unlockedBadges => 'Odklenjene značke';

  @override
  String get badgeBeginner => 'Začetnik';

  @override
  String get badgeOrganized => 'Organizirano';

  @override
  String get badgeSavingMaster => 'Saving Master';

  @override
  String get badgeSuperPlanner => 'Super planer';

  @override
  String get backupTitle => 'Varnostna kopija';

  @override
  String get backupPremiumDescription =>
      'Varnostno kopiranje in izvoz sta premium funkciji';

  @override
  String get exportData => 'Izvozi podatke';

  @override
  String get exportDataSubtitle => 'Shrani vse sezname kot JSON';

  @override
  String get importData => 'Uvozi podatke';

  @override
  String get importDataSubtitle => 'Obnovi sezname iz JSON';

  @override
  String get importJsonTitle => 'Uvozi JSON';

  @override
  String get importJsonHint => 'Prilepite JSON varnostne kopije sem...';

  @override
  String get backupExported => 'Varnostna kopija izvožena!';

  @override
  String get budgetAppBar => 'Mesečni proračun';

  @override
  String get budgetPremiumLocked => 'Globalni mesečni proračun je premium';

  @override
  String get budgetUpgradePrompt => 'Nadgradite za odklep';

  @override
  String get noBudgetDefined => 'Proračun ni nastavljen';

  @override
  String totalEstimated(String amount) {
    return 'Skupaj ocenjeno: $amount';
  }

  @override
  String get setBudgetButton => 'Nastavi proračun';

  @override
  String get budgetLists => 'Seznami';

  @override
  String get budgetValueLabel => 'Znesek';

  @override
  String get setBudgetTitle => 'Mesečni proračun';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Vse';

  @override
  String get filterPending => 'Nerešeno';

  @override
  String get filterPurchased => 'Kupljeno';

  @override
  String get sortName => 'Ime';

  @override
  String get sortCategory => 'Kategorija';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Ročno';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased od $total elementov';
  }

  @override
  String progressBudget(String amount) {
    return 'Proračun: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Skupaj: $amount';
  }

  @override
  String get addItem => 'Dodaj predmet';

  @override
  String get itemName => 'Ime predmeta';

  @override
  String get quantityShort => 'Kol.';

  @override
  String get unit => 'Enota';

  @override
  String get category => 'Kategorija';

  @override
  String get estimatedPrice => 'Ocenjena cena';

  @override
  String get addItemPrice => 'Ocenjena cena';

  @override
  String get editItem => 'Uredi predmet';

  @override
  String get quantityFull => 'Količina';

  @override
  String get editItemPrice => 'Ocenjena cena';

  @override
  String get addToPantry => 'Dodaj v shrambo';

  @override
  String addToPantryPrompt(String name) {
    return 'Dodam \"$name\" v vašo shrambo?';
  }

  @override
  String get yes => 'Da';

  @override
  String get productName => 'Ime izdelka';

  @override
  String get idealQty => 'Idealna kol.';

  @override
  String get currentQty => 'Trenutna kol.';

  @override
  String get trackStock => 'Spremljaj zalogo';

  @override
  String get trackStockActive => 'Prikaže se v nakupovalnih predlogih';

  @override
  String get trackStockInactive => 'Ne ustvarja nakupovalnega predloga';

  @override
  String get createListDialog => 'Ustvari seznam';

  @override
  String get renameListDialog => 'Preimenuj seznam';

  @override
  String get listHistory => 'Zgodovina seznamov';

  @override
  String get myLists => 'Moji seznami';

  @override
  String get viewActive => 'Pokaži aktivne';

  @override
  String get viewHistory => 'Pokaži zgodovino';

  @override
  String get noArchivedLists => 'Ni arhiviranih seznamov';

  @override
  String get noActiveLists => 'Ni aktivnih seznamov';

  @override
  String completedOn(String date) {
    return 'Zaključeno $date';
  }

  @override
  String get sharedLabel => 'Skupni';

  @override
  String get restore => 'Obnovi';

  @override
  String get removeSharedTooltip => 'Odstrani';

  @override
  String get deleteListTitle => 'Izbriši seznam';

  @override
  String deleteListContent(String name) {
    return 'Ali ste prepričani, da želite izbrisati \"$name\"? Vsi predmeti bodo odstranjeni.';
  }

  @override
  String get removeSharedListTitle => 'Odstrani skupni seznam';

  @override
  String removeSharedListContent(String name) {
    return 'Odstranim \"$name\" iz vaših seznamov? Prvotni seznam ne bo prizadet.';
  }

  @override
  String get createNewList => 'Ustvari nov seznam';

  @override
  String get aiAssistant => 'AI pomočnik';

  @override
  String get aiAssistantDescription =>
      'Pridobite pametne predloge, recepte in personalizirane nasvete z našim AI pomočnikom.';

  @override
  String get generalAssistant => 'Splošni pomočnik';

  @override
  String get newChat => 'Nov klepet';

  @override
  String get noHistory => 'Ni zgodovine klepeta';

  @override
  String get deleteSession => 'Izbriši klepet';

  @override
  String get deleteSessionConfirm =>
      'Ali ste prepričani, da želite izbrisati ta klepet? Sporočila bodo trajno izgubljena.';

  @override
  String get clearHistory => 'Počisti zgodovino';

  @override
  String get clearHistoryConfirm => 'Izbrišem vsa sporočila v tej seji?';

  @override
  String get chatHint => 'Vpišite svoje sporočilo...';

  @override
  String get chatHintBlocked => 'Odklenite AI za klepet';

  @override
  String chatError(String error) {
    return 'Napaka pri nalaganju klepeta: $error';
  }

  @override
  String get aiAssistantTitle => 'Pomočnik AI';

  @override
  String get closeSheet => 'Zapri';

  @override
  String get scanBarcodeTitle => 'Skeniraj črtno kodo';

  @override
  String get listHelp => 'Kako lahko pomagam z vašim seznamom?';

  @override
  String get generalHelp => 'Kako vam lahko danes pomagam pri nakupovanju?';

  @override
  String get chatSubtitle =>
      'Vprašajte za predloge predmetov, recepte ali nasvete za varčevanje.';

  @override
  String get aiError =>
      'Oprostite, prišlo je do napake pri obdelavi vaše zahteve. Preverite povezavo ali poskusite znova pozneje.';

  @override
  String get aiLimitAlmostReached => 'Skoraj zmanjkalo sporočil AI';

  @override
  String get unlockAi => 'Odkleni neomejen AI';

  @override
  String get aiTeaserFallback =>
      'Naročite se na Premium, da odklenete celoten odgovor in prejmete neomejene nasvete AI za nakupovanje ...';

  @override
  String aiUsageWarning(int remaining) {
    return 'Ta mesec še $remaining dejanj umetne inteligence — neomejeno nadgradite';
  }

  @override
  String get aiUsageExhausted =>
      'Mesečna omejitev AI je dosežena. Nadgradite na Pro za neomejeno →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Prijavite se za odklep\npremium funkcij';

  @override
  String get signInGoogle => 'Prijava z Google';

  @override
  String get signInApple => 'Prijava z Apple';

  @override
  String get continueAsGuest => 'Nadaljuj kot gost';

  @override
  String get onboardingWelcomeTitle => 'Dobrodošli na KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Najpametnejši način za organiziranje nakupovanja in prihranek denarja.';

  @override
  String get onboardingSetupTitle => 'Prilagodite svojo izkušnjo';

  @override
  String get onboardingSetupDesc =>
      'Izberite, kako želite, da KipiList izgleda in deluje za vas.';

  @override
  String get onboardingLoginTitle => 'Shranite vse v oblak';

  @override
  String get onboardingLoginDesc =>
      'Vaši podatki so sinhronizirani v vseh vaših napravah';

  @override
  String get onboardingShareTitle => 'Delite s tistimi, ki jih imate radi';

  @override
  String get onboardingShareDesc =>
      'Sinhronizirajte sezname z družino in prijatelji v realnem času';

  @override
  String get onboardingPremiumTitle => 'Odkleni vse funkcije';

  @override
  String get onboardingPremiumSubtitle =>
      'Kar najbolje izkoristite svoje nakupovalne sezname';

  @override
  String get onboardingAnnualBadge => 'Najboljša vrednost';

  @override
  String get onboardingMonthlyLabel => 'Mesečno';

  @override
  String get onboardingAnnualLabel => 'Letna';

  @override
  String get onboardingViewAllPlans => 'Oglejte si vse načrte';

  @override
  String get onboardingSubscribeCta => 'Naročite se';

  @override
  String get onboardingCancelAnytime => 'Prekliči kadar koli. Brez obveznosti.';

  @override
  String get onboardingContinueAsGuest => 'Nadaljujte kot gost';

  @override
  String get onboardingRestore => 'Obnovi nakupe';

  @override
  String get onboardingRestoreDesc =>
      'Že imate naročnino? Tapnite tukaj, da ga obnovite.';

  @override
  String get onboardingMaybeLater => 'Mogoče kasneje';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hej $name, organiziraj nakupovanje na pravi način.';
  }

  @override
  String get onboardingSlide1Title => 'Pametni nakupovalni seznami';

  @override
  String get onboardingSlide1Body =>
      'Takoj ustvarite in delite sezname. Kipi samodejno doda predmete glede na vaše navade.';

  @override
  String get onboardingSlide2Title => 'Spoznaj Kipi';

  @override
  String get onboardingSlide2Body =>
      'Vprašajte kar koli – ustvarite sezname, poiščite recepte, spremljajte svojo shrambo, načrtujte teden.';

  @override
  String get onboardingSlide3Title => 'Shramba in načrtovanje obrokov';

  @override
  String get onboardingSlide3Body =>
      'Spremljajte, kaj imate, načrtujte obroke in samodejno ustvarite nakupovalne sezname.';

  @override
  String get onboardingExit => 'Izhod';

  @override
  String get onboardingPersonalizationTitle => 'Spoznajmo te';

  @override
  String get onboardingPersonalizationDesc =>
      'To bomo uporabili za prilagajanje vaših predlogov in naredili nakupovanje pametnejše.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Katera je vaša najljubša hrana?';

  @override
  String get onboardingPersonalizationFoodHint => 'npr. Pica, suši, lazanja...';

  @override
  String get onboardingPersonalizationCta => 'Nadaljuj';

  @override
  String get onboardingPersonalizationSkip => 'Preskoči za zdaj';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Za nadaljevanje nam povejte svojo najljubšo hrano';

  @override
  String get settingsDefaultScreen => 'Privzeti začetni zaslon';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Izbirajte med nakupovalnim seznamom ali klepetom z umetno inteligenco';

  @override
  String get settingsScreenList => 'Nakupovalni seznam';

  @override
  String get settingsScreenChat => 'AI Klepet';

  @override
  String loginError(String error) {
    return 'Napaka pri prijavi: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Napaka pri nalaganju ponudb. poskusi ponovno';

  @override
  String get paywallPurchaseError =>
      'Nakupa ni bilo mogoče dokončati. poskusi ponovno';

  @override
  String get paywallRestoreError => 'Ni aktivne naročnine za obnovitev.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DNI BREZPLAČNO';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count TEDEN BREZPLAČNO',
      one: '$count TEDEN BREZPLAČNO',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MESEC BREZPLAČNO',
      one: '$count MESEC BREZPLAČNO',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Preizkusite brezplačno!';

  @override
  String get paywallTrialSubtitle => 'Prekliči kadar koli. Brez plačila danes.';

  @override
  String get paywallTrialCta => 'Začni brezplačni preizkus';

  @override
  String get recipeAddToList => 'Dodaj na nakupovalni seznam';

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
  String get noListSelected => 'Ni izbranega seznama. Najprej odprite seznam.';

  @override
  String get paywallFeaturesTitle => 'Vse, kar potrebujete:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI samodejno organizira vaš seznam';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Ustvarite toliko seznamov, kot jih potrebujete';

  @override
  String get paywallFeatureDescSharing => 'Nakupujte skupaj v realnem času';

  @override
  String get paywallFeatureDescPantry => 'Spremljajte, kaj imate doma';

  @override
  String get paywallFeatureDescBudget => 'Ostanite v proračunu vsak mesec';

  @override
  String get paywallFeatureUnlimitedLists => 'Neomejeni seznami';

  @override
  String get paywallFeatureSmartAI => 'Pametna umetna inteligenca';

  @override
  String get paywallFeatureExpenseControl => 'Nadzor nad stroški';

  @override
  String get paywallFeatureSharing => 'Skupna raba';

  @override
  String get paywallBeforeAfterTitle => 'AI pred in potem:';

  @override
  String get paywallLabelCommon => 'pogosta';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'riž';

  @override
  String get paywallBeforeItem2 => 'milo';

  @override
  String get paywallBeforeItem3 => 'meso';

  @override
  String get paywallBeforeItem4 => 'kruh';

  @override
  String get paywallAfterItem1 => 'Zrna';

  @override
  String get paywallAfterItem2 => 'Čiščenje';

  @override
  String get paywallAfterItem3 => 'meso';

  @override
  String get paywallAfterItem4 => 'Pekarna';

  @override
  String get paywallTestimonialsTitle => 'Kaj pravijo naši uporabniki:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organizira moje nakupovanje v nekaj sekundah. Prihranim 20 minut na tržnico.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Nikoli več nisem pozabil elementa seznama. Klepet AI je senzacionalen!';

  @override
  String get paywallSocialProof => 'Uporablja ga +2400 družin';

  @override
  String get paywallCtaUnlock => 'Odkleni PRO';

  @override
  String get paywallBestValue => 'NAJBOLJŠA VREDNOST';

  @override
  String get paywallMostPopular => 'NAJBOLJ PRILJUBLJENO';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Varno plačilo';

  @override
  String get paywallSelectPlan => 'Izberite svoj načrt:';

  @override
  String paywallSavePercent(Object percent) {
    return 'PRIHRANITE $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Samo $price/mesec';
  }

  @override
  String get paywallPackageAnnual => 'Letni načrt';

  @override
  String get paywallPackageMonthly => 'Mesečni načrt';

  @override
  String get paywallPackageLifetime => 'Doživljenjski dostop';

  @override
  String get paywallCancelAnytime => 'Prekliči kadar koli. Brez obveznosti.';

  @override
  String paywallTrialInCard(int days) {
    return 'Prvih $days dni BREZPLAČNO';
  }

  @override
  String get paywallSecuredByStore =>
      'Zavaruje Google Play · Prekličite kadar koli';

  @override
  String get paywallPolicy => 'Politika zasebnosti';

  @override
  String get paywallTerms => 'Pogoji uporabe';

  @override
  String get paywallRestore => 'Obnovi';

  @override
  String get paywallHeroHeadline => 'Kipi AI vedno ob tebi';

  @override
  String get paywallHeroSubtitle =>
      'Dodajte predmete, organizirajte sezname in prihranite čas z AI v žepu';

  @override
  String get paywallBenefit1Desc =>
      'Dodaja, organizira in predlaga predmete 24/7';

  @override
  String get paywallBenefit2Desc => 'Brez omejitve 3 seznamov';

  @override
  String get paywallBenefit3Desc => 'Sledenje stroškom in družinski seznami';

  @override
  String get paywallPackageMonthlyDesc => 'Popolna prilagodljivost';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Začnite brezplačno — $days dni';
  }

  @override
  String get premiumUpgrade => 'Nadgradite za odklep';

  @override
  String get itemRemoved => 'Predmet odstranjen';

  @override
  String get undo => 'Razveljavi';

  @override
  String get emptyListTitle => 'Vaš seznam je prazen';

  @override
  String get emptyListSubtitle => 'Dodajte predmete za začetek';

  @override
  String get noListFoundTitle => 'Ni najdenih seznamov';

  @override
  String get noListFoundSubtitle => 'Ustvarite svoj prvi seznam za začetek';

  @override
  String get createFirstList => 'Ustvari prvi seznam';

  @override
  String get listBudgetTitle => 'Proračun seznama';

  @override
  String get budgetAmountLabel => 'Znesek proračuna';

  @override
  String get removeBudget => 'Odstrani';

  @override
  String get prefUnlimitedLists => 'Neomejeni seznami';

  @override
  String get prefSharing => 'Deli sezname';

  @override
  String get prefFullHistory => 'Popolna zgodovina';

  @override
  String get prefExportData => 'Izvozi podatke';

  @override
  String get prefCustomThemes => 'Poljubne teme';

  @override
  String get prefMonthlyBudget => 'Globalni mesečni proračun';

  @override
  String get prefAIAssistant => 'Osebni AI pomočnik';

  @override
  String get prefUnlimitedPantry => 'Neomejena shramba';

  @override
  String get prefInteractiveArtifacts => 'Interaktivni AI artefakti';

  @override
  String get themeGreen => 'Zelena';

  @override
  String get themeBlue => 'Modra';

  @override
  String get themePurple => 'Vijolična';

  @override
  String get themeRed => 'Rdeča';

  @override
  String get themeOrange => 'Oranžna';

  @override
  String get themePink => 'Roza';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Jantarna';

  @override
  String get themeTeal => 'Zelenkasto modra';

  @override
  String get themeBrown => 'Rjava';

  @override
  String get catFruits => 'Sadje';

  @override
  String get catCleaning => 'Čiščenje';

  @override
  String get catBeverages => 'Pijače';

  @override
  String get catBakery => 'Pekarna';

  @override
  String get catOthers => 'Drugo';

  @override
  String get unitPack => 'paket';

  @override
  String get shareSubject => 'Nakupovalni seznam';

  @override
  String get monthlyBudgetTitle => 'Mesečni proračun';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Izbriši seznam';

  @override
  String get pantryItemRemoved => 'Predmet odstranjen';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit predmetov je treba kupiti',
      few: '$deficit predmete je treba kupiti',
      two: '$deficit predmeta je treba kupiti',
      one: '$deficit predmet je treba kupiti',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Skupaj voziček';

  @override
  String get restockLabel => 'Dopolni';

  @override
  String get advancedFeatures => 'Napredne funkcije';

  @override
  String get selectAll => 'Izberi vse';

  @override
  String get deselectAll => 'Odznači vse';

  @override
  String get monthlyBudgetAppBar => 'Mesečni proračun';

  @override
  String get budgetEditTitle => 'Mesečni proračun';

  @override
  String get budgetDashboardTitle => 'Nadzorna plošča';

  @override
  String get selectListForDashboard =>
      'Izberite seznam za ogled nadzorne plošče.';

  @override
  String get spendingAnalysis => 'Analiza porabe';

  @override
  String get noItemsToAnalyze => 'Ni predmetov v seznamu za analizo.';

  @override
  String get markItemsToSeeAnalysis =>
      'Označite predmete kot kupljene za ogled analize.';

  @override
  String get totalSpending => 'Skupaj porabljeno';

  @override
  String get spendingByCategory => 'Poraba po kategorijah';

  @override
  String get achievements => 'Dosežki';

  @override
  String get exportPdfExcel => 'Izvozi PDF/Excel';

  @override
  String get exportPdf => 'Izvozi kot PDF';

  @override
  String get exportExcel => 'Izvozi kot Excel';

  @override
  String get organizingAi => 'ORGANIZIRANJE Z AI...';

  @override
  String get yesLabel => 'Da';

  @override
  String get noLabel => 'Ne';

  @override
  String get shareListText => 'Moj nakupovalni seznam';

  @override
  String get emptyListAddItems =>
      'Vaš seznam je prazen! Najprej dodajte predmete. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Seznam čarobno organiziran po kategorijah! ✨';

  @override
  String get shoppingMode => 'Način nakupovanja';

  @override
  String get smartOrganization => 'Pametna organizacija';

  @override
  String get savings => 'Prihranki';

  @override
  String get shoppingModeHeader => 'NAČIN NAKUPOVANJA';

  @override
  String get shareAsText => 'Pošlji predmete kot oblikovano besedilo';

  @override
  String get shareRealtime => 'Sinhronizacija v realnem času z drugimi';

  @override
  String get quickRecipe => 'Hitri recept';

  @override
  String get quickRecipePrompt =>
      'Predlagaj recepte s predmeti iz mojega seznama.';

  @override
  String get economyTips => 'Nasveti za varčevanje';

  @override
  String get economyTipsPrompt => 'Kako lahko prihranim pri tem nakupu?';

  @override
  String get organizeAisles => 'Organiziraj po oddelkih';

  @override
  String get organizeAislesPrompt => 'Organiziraj po trgovskih oddelkih.';

  @override
  String get recipeSuggestion => 'Predlog recepta';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Preostalo $remaining kreditov';
  }

  @override
  String get addAllToList => 'Dodaj vse na seznam';

  @override
  String get organizeByAisles => 'Organiziraj po oddelkih';

  @override
  String get voiceTranscriptionTooltip => 'Govorno tipkanje (Brezplačno)';

  @override
  String get aiVoiceCommandTooltip => 'AI glasovni ukaz (Premium)';

  @override
  String get voiceCommandTitle => 'AI glasovni ukaz';

  @override
  String get voiceCommandContent =>
      'Govorite naravno za upravljanje svojega seznama!\n\nPrimeri:\n• \'Dodaj kruh, sir in šunko\'\n• \'Odstrani pralni prašek\'\n• \'Spremeni temo v modro\'\n\nTo je ekskluzivna funkcija KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Pokaži načrte';

  @override
  String get itemsAddedSuccess => 'Predmeti uspešno dodani na seznam!';

  @override
  String get viewList => 'Pokaži seznam';

  @override
  String get feedbackTitle => 'Pošlji povratne informacije';

  @override
  String get feedbackPrompt => 'Kaj želite deliti?';

  @override
  String get feedbackTypeBug => 'Prijavi napako';

  @override
  String get feedbackTypeBugHint => 'Nekaj ne deluje';

  @override
  String get feedbackTypeSuggestion => 'Predlog';

  @override
  String get feedbackTypeSuggestionHint => 'Ideja za izboljšanje aplikacije';

  @override
  String get feedbackTypeTranslation => 'Težava s prevodom';

  @override
  String get feedbackTypeTranslationHint => 'Napačen ali nenaraven prevod';

  @override
  String get feedbackTypeFeature => 'Zahteva za funkcijo';

  @override
  String get feedbackTypeFeatureHint => 'Funkcija, ki bi jo želeli videti';

  @override
  String get feedbackTypeOther => 'Drugo';

  @override
  String get feedbackTypeOtherHint => 'Druga vrsta povratnih informacij';

  @override
  String get feedbackHint => 'Podrobno opišite svoje povratne informacije...';

  @override
  String get feedbackSend => 'Pošlji povratne informacije';

  @override
  String get feedbackSending => 'Pošiljanje...';

  @override
  String get feedbackThankYou => 'Hvala!';

  @override
  String get feedbackThankYouMessage =>
      'Vaše povratne informacije so bile prejete in nam pomagajo izboljšati KipiList za vse.';

  @override
  String get feedbackBack => 'Nazaj';

  @override
  String feedbackError(String error) {
    return 'Napaka pri pošiljanju: $error';
  }

  @override
  String get feedbackRetry => 'Poskusi znova';

  @override
  String get feedbackSettingsTitle => 'Pošlji povratne informacije';

  @override
  String get feedbackSettingsSubtitle =>
      'Prijavite napake, predlagajte izboljšave ali popravite prevode';

  @override
  String get aiEnergy => 'AI energija';

  @override
  String get searchInConversation => 'Išči v pogovoru ...';

  @override
  String get noMessagesFound => 'Ni sporočil';

  @override
  String get suggestedQuestions => 'Predlagana vprašanja:';

  @override
  String get shoppingAssistant => 'Nakupovalni pomočnik';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased od $total kupljeno';
  }

  @override
  String get estimatedCost => 'Ocenjeno';

  @override
  String get viewItems => 'Ogled predmetov';

  @override
  String get noItemsInList => 'Na seznamu ni elementov';

  @override
  String get longHistoryWarning =>
      'Dolga zgodovina: pomočnik se osredotoča na najnovejša sporočila za boljše delovanje.';

  @override
  String get listening => 'Poslušanje ...';

  @override
  String get addDirectToList => 'Dodaj neposredno na seznam';

  @override
  String get unlockFullResponse => 'Odkleni polni odgovor';

  @override
  String get switchList => 'Preklopi seznam';

  @override
  String get marketMode => 'Tržni način';

  @override
  String get backToChat => 'Nazaj na Klepet';

  @override
  String get finishShopping => 'Dokončaj nakupovanje';

  @override
  String get welcomeAiAssistant => 'Dobrodošli v AI Assistant';

  @override
  String get createListToStartAi =>
      'Ustvarite nakupovalni seznam, da začnete uporabljati pametni klepet.';

  @override
  String get howCanIHelp => 'Kako lahko pomagam?';

  @override
  String get chatSubtitleShort =>
      'Povprašajte o cenah, receptih, organizaciji...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total kupljeno';
  }

  @override
  String get quickReplies => 'Hitri odgovori:';

  @override
  String get voiceProFeature =>
      'Napredni glasovni ukazi so Pro. Omogočanje osnovnega nareka ...';

  @override
  String get viewPro => 'Ogled Pro';

  @override
  String get errorLoadingChat =>
      'Ups! Pri nalaganju klepeta je šlo nekaj narobe.';

  @override
  String get errorLoadingChatSubtitle =>
      'Preverite povezavo ali poskusite znova pozneje.';

  @override
  String get errorOscillation =>
      'Do tega lahko pride zaradi nihanj omrežja ali začasne nedosegljivosti. prosim poskusite ponovno';

  @override
  String get activeListening => 'Aktivno poslušanje';

  @override
  String get whatToDoWithItem => 'Kaj bi radi naredili s tem predmetom?';

  @override
  String get viewDetails => 'Poglej podrobnosti';

  @override
  String get openMenu => 'Odpri meni';

  @override
  String get viewRecipe => 'Oglejte si recept';

  @override
  String get recipeCreated => 'Recept ustvarjen!';

  @override
  String get editRecipe => 'Uredi';

  @override
  String get deleteRecipe => 'Izbriši';

  @override
  String get deleteRecipeConfirm => 'Želite izbrisati ta recept?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Ali ste prepričani, da želite izbrisati »$recipeName«? Tega dejanja ni mogoče razveljaviti.';
  }

  @override
  String get ingredients => 'Sestavine';

  @override
  String get instructions => 'Navodila';

  @override
  String get prepTime => 'Čas priprave';

  @override
  String get recipeSaved => 'Recept shranjen!';

  @override
  String get noRecipesSaved => 'Ni shranjenih receptov';

  @override
  String get noRecipesSavedHint =>
      'Ustvarite svoj prvi recept po meri tako, da tapnete spodnji gumb.';

  @override
  String get myRecipes => 'Moji recepti';

  @override
  String get newRecipe => 'Nov recept';

  @override
  String get loadingRecipes => 'Nalaganje vaših receptov ...';

  @override
  String get errorLoadingRecipes => 'Napaka pri nalaganju receptov';

  @override
  String get addIngredient => 'Dodajte sestavino';

  @override
  String get saveRecipe => 'Shrani';

  @override
  String get recipeName => 'Ime recepta';

  @override
  String get shortDescription => 'Kratek opis';

  @override
  String get prepTimeMinutes => 'Čas priprave (minute)';

  @override
  String get instructionsHint => 'Vnesite en korak na vrstico ...';

  @override
  String get addPhoto => 'Dodajte fotografijo';

  @override
  String get imageUrlPlaceholder => 'Ali prilepite URL slike';

  @override
  String get tags => 'Oznake';

  @override
  String get recipeTags => 'Oznake receptov';

  @override
  String get suggestedTags => 'Predlagano';

  @override
  String get searchRecipes => 'Iskanje receptov ...';

  @override
  String get filterByTag => 'Filtriraj po oznaki';

  @override
  String get allTags => 'Vse';

  @override
  String get recipeDeleted => 'Recept izbrisan';

  @override
  String get saveChanges => 'Shranite spremembe';

  @override
  String get editRecipeTitle => 'Uredi recept';

  @override
  String get newRecipeTitle => 'Nov recept';

  @override
  String get requiredField => 'Obvezno';

  @override
  String get chooseImageSource => 'Izberite vir slike';

  @override
  String get gallery => 'Galerija';

  @override
  String get enterUrl => 'Vnesite URL';

  @override
  String get recipeImage => 'Slika recepta';

  @override
  String get removeImage => 'Odstrani sliko';

  @override
  String get mealPlannerTitle => 'Načrtovalnik obrokov';

  @override
  String get mealPlannerViewMonthly => 'Mesečni pogled';

  @override
  String get mealPlannerViewWeekly => 'Tedenski pogled';

  @override
  String get mealPlannerNoMeals => 'Brez načrtovanih obrokov';

  @override
  String get mealPlannerNoMealsHint => 'Dotaknite se dneva, da dodate obrok';

  @override
  String get mealPlannerLoading => 'Nalaganje načrta obrokov ...';

  @override
  String get mealPlannerError => 'Napaka pri nalaganju načrta obrokov';

  @override
  String get mealPlannerAddMeal => 'Dodaj obrok';

  @override
  String get mealPlannerEditMeal => 'Uredi obrok';

  @override
  String get mealPlannerDeleteMeal => 'Odstranite obrok';

  @override
  String get mealPlannerMealDeleted => 'Obrok odstranjen';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porcij',
      few: '$count porcije',
      two: '$count porciji',
      one: '$count porcija',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porcije';

  @override
  String get mealPlannerNoteLabel => 'Opomba (neobvezno)';

  @override
  String get mealPlannerSelectRecipe => 'Izberite recept';

  @override
  String get mealPlannerSearchRecipes => 'Iskanje receptov ...';

  @override
  String get mealPlannerNoRecipesFound => 'Ni receptov';

  @override
  String get mealPlannerNoRecipesHint =>
      'Najprej ustvarite recepte v zavihku Recepti';

  @override
  String get mealPlannerSave => 'Dodaj v načrt';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count od $total načrtovanih obrokov';
  }

  @override
  String get mealPlannerGenerateList => 'Ustvari nakupovalni seznam';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Želite dodati vse sestavine načrtovanih obrokov ta teden na svoj nakupovalni seznam?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count sestavin dodanih na vaš seznam!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Ni sestavin za dodajanje. Najprej načrtujte nekaj obrokov z recepti.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Najprej ustvarite nakupovalni seznam.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Zajtrk';

  @override
  String get mealPlannerMealTypeLunch => 'kosilo';

  @override
  String get mealPlannerMealTypeDinner => 'Večerja';

  @override
  String get mealPlannerMealTypeSnack => 'Prigrizek';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Nič načrtovanega za ta teden';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Dotaknite se katerega koli dne, da začnete načrtovati svoje obroke!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Povabite na seznam';

  @override
  String get shareApp => 'Delite aplikacijo';

  @override
  String get shareAppDescription => 'Povabite prijatelje k ​​uporabi KipiList';

  @override
  String shareReferralText(String url) {
    return 'Za organizacijo nakupov uporabljam KipiList! Prenesite prek moje povezave in oba prejmeta 7 dni brezplačne Premium: $url';
  }

  @override
  String get shareReferralSubject => 'Zagotovite si 7 dni KipiList Premium!';

  @override
  String get gestureHint => 'Držite za izbiro • Povlecite za odstranitev';

  @override
  String get catalogTitle => 'Katalog';

  @override
  String get catalogMyFrequents => 'Moji pogosti';

  @override
  String get catalogSearchGlobal => 'Poiščite kateri koli izdelek ...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Išči v $category ...';
  }

  @override
  String get catalogSortPopular => 'Najbolj priljubljena';

  @override
  String get catalogSortAZ => 'A–Ž';

  @override
  String get catalogFilterNational => 'Državljani';

  @override
  String get catalogRareSection => 'manj pogosto v vaši državi';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Dodaj $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Izdelek ni bil najden, vnesite ime';

  @override
  String get catalogBrowse => 'Prelistajte katalog';

  @override
  String get offlineBanner => 'Nisi povezan';

  @override
  String get consentTitle => 'Zasebnost in analitika';

  @override
  String get consentBody =>
      'KipiList uporablja Firebase Analytics za izboljšanje vaše izkušnje. Vaše podatke obdelujemo v skladu z našim pravilnikom o zasebnosti.';

  @override
  String get consentAccept => 'Sprejmi';

  @override
  String get consentDecline => 'Ne, hvala';

  @override
  String get mealPlannerPantryAllAvailable => 'Vse sestavine na voljo';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 manjka';
  }

  @override
  String get expirationDate => 'Rok uporabe';

  @override
  String get notInformed => 'Ni nastavljeno';

  @override
  String get skip => 'Preskoči';

  @override
  String get onboardingAiTitle => 'Klepetajte s Kipijem';

  @override
  String get onboardingAiGreeting =>
      'zdravo Sem Kipi, vaš osebni nakupovalni pomočnik! 🛒';

  @override
  String get onboardingAiAskName => 'kako ti je ime';

  @override
  String get onboardingAiNameHint => 'Vnesite svoje ime ...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Lepo te je spoznati, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Katera je vaša najljubša hrana?';

  @override
  String get onboardingAiFoodHint => 'npr. pica, suši...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Odlične izbire! Tole bi dodal na vaš seznam:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Je to videti dobro? Poskusite vnesti kaj drugega!';

  @override
  String get onboardingAiReady =>
      'odlično! Pripravljeni ste na začetek. Nastavimo vaš račun!';

  @override
  String get onboardingAiContinue => 'Nadaljuj →';

  @override
  String get connectionError => 'Napaka povezave';

  @override
  String connectionErrorDesc(String error) {
    return 'Ni bilo mogoče vzpostaviti povezave s strežnikom. Preverite svoj internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Napaka pri nalaganju seznamov';

  @override
  String get noListsFound => 'Ni seznamov';

  @override
  String get backToToday => 'Nazaj na danes';

  @override
  String get quickSuggestions => 'Hitri predlogi';

  @override
  String get aiEnergyLow => 'Nizka energija AI';

  @override
  String get aiUnlockUnlimited => 'Odkleni neomejen AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 danes';
  }

  @override
  String get aiSubscribeUnlimited => 'Naročite se na neomejen AI';

  @override
  String get unlockWithAd => 'Odkleni z oglasom';

  @override
  String get conversationHistoryTitle => 'Zgodovina pogovorov';

  @override
  String get noConversationsFound => 'Ni pogovorov';

  @override
  String get errorLoadingHistory => 'Napaka pri nalaganju zgodovine';

  @override
  String get deleteConversationTitle => 'Želite izbrisati pogovor?';

  @override
  String get deleteConversationConfirm =>
      'Tega dejanja ni mogoče razveljaviti.';

  @override
  String get deleteConversation => 'Izbriši';

  @override
  String get subscription => 'Naročnina';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle => 'Odklenite neomejene sezname, AI in drugo';

  @override
  String get loadingSubscription => 'Nalaganje naročnine ...';

  @override
  String get errorLoadingSubscription => 'Napaka pri nalaganju naročnine';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Moj profil';

  @override
  String get profileSubtitle => 'Osebne nastavitve za pomočnika AI';

  @override
  String get customizeAiAssistant => 'Prilagodite pomočnika AI';

  @override
  String get assistantHistory => 'Zgodovina pomočnika';

  @override
  String get assistantHistorySubtitle => 'Oglejte si zgodovino pogovorov';

  @override
  String get manageCategories => 'Upravljanje kategorij';

  @override
  String get manageCategoriesSubtitle => 'Upravljajte kategorije predmetov';

  @override
  String get customizeAssistant => 'Prilagodite';

  @override
  String get assistantName => 'Ime pomočnika';

  @override
  String get chooseIcon => 'Izberite ikono';

  @override
  String get profileSaved => 'Profil uspešno shranjen!';

  @override
  String get errorSavingProfile => 'Napaka pri shranjevanju: null';

  @override
  String get userProfile => 'Uporabniški profil';

  @override
  String get profileDescription =>
      'Povejte nam svoje osebne nastavitve, da bo lahko pomočnik AI predlagal prilagojene predmete in recepte.';

  @override
  String get preferredMarket => 'Prednostni trg';

  @override
  String get preferredMarketHint => 'Npr.: Supermarket X';

  @override
  String get dietaryRestrictions => 'Prehranske omejitve';

  @override
  String get dietaryRestrictionsHint =>
      'Npr.: vegansko, vegetarijansko, brezglutensko';

  @override
  String get marketsToAvoid => 'Trgi, ki se jim je treba izogibati';

  @override
  String get marketsToAvoidHint => 'Npr.: trg Y, trg Z';

  @override
  String get observations => 'Opombe';

  @override
  String get observationsHint => 'Druge nastavitve za pomočnika';

  @override
  String get saveProfile => 'Shrani profil';

  @override
  String get everythingReady => 'Vse pripravljeno!';

  @override
  String get youCompletedList => 'Dopolnili ste seznam!';

  @override
  String get selectCheaperAlternative =>
      'Izberite cenejšo alternativo izdelka, da optimizirate stroške.';

  @override
  String get suggestedItems => 'Predlagani artikli';

  @override
  String get swapped => 'Zamenjal';

  @override
  String get swap => 'Zamenjaj';

  @override
  String get chooseThemeColor => 'Izberite barvo teme';

  @override
  String get manageCategoriesTitle => 'Upravljanje kategorij';

  @override
  String get categoryLimitReached =>
      'Omejitev 10 kategorij v brezplačni različici. Nadgradite na Pro!';

  @override
  String get deleteCategoryTitle => 'Izbriši kategorijo';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Predmeti v kategoriji »$category« bodo premaknjeni v »Drugo«.\nNadaljevanje?';
  }

  @override
  String get deleteCategory => 'Izbriši';

  @override
  String get newCategoryDialog => 'Nova kategorija';

  @override
  String get editCategoryDialog => 'Uredi kategorijo';

  @override
  String get categoryName => 'Ime kategorije';

  @override
  String get categoryNameHint => 'Npr.: Meso';

  @override
  String get categoryColorLabel => 'barva';

  @override
  String get categoryIconLabel => 'Ikona';

  @override
  String itemAddedSnack(String name) {
    return '$name dodan';
  }

  @override
  String get kipiQuickBarHint => 'Kaj morate kupiti?';

  @override
  String replaceItem(String item) {
    return 'Zamenjaj $item';
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
      'Nikoli več ne pozabite na izdelek iz trgovine';

  @override
  String get onboardingGoalSaveMoney => 'Prihranite denar';

  @override
  String get onboardingGoalNeverForget => 'Nikoli ne pozabite na predmete';

  @override
  String get onboardingGoalFaster => 'Nakupujte hitreje';

  @override
  String get onboardingGoalFamily => 'Organizirajte družinsko nakupovanje';

  @override
  String get onboardingGoalRecipes => 'Odkrijte recepte';

  @override
  String get onboardingGoalPantry => 'Tračna shramba';

  @override
  String get onboardingCommitmentsTitle => 'Kaj ti je pomembno?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Izberite svoje cilje, da prilagodite KipiList';

  @override
  String get onboardingCommitmentsCta => 'Gremo!';

  @override
  String get onboardingPersonalizationNameLabel => 'Vaše ime';

  @override
  String get onboardingPersonalizationNameHint => 'Vnesite svoje ime';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Kaj nakupujete?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Za koga nakupuješ?';

  @override
  String get onboardingCategoryGrocery => 'Živila';

  @override
  String get onboardingCategoryPharmacy => 'Farmacija';

  @override
  String get onboardingCategoryRecipes => 'Recepti';

  @override
  String get onboardingCategoryHome => 'domov';

  @override
  String get onboardingCategoryPet => 'ljubljenček';

  @override
  String get onboardingGroupSolo => 'Samo jaz';

  @override
  String get onboardingGroupCouple => 'Par';

  @override
  String get onboardingGroupFamily => 'družina';

  @override
  String get onboardingLoadingTitle => 'Priprava vaše izkušnje ...';

  @override
  String get onboardingLoadingStep1 => 'Analiziranje vaših preferenc ...';

  @override
  String get onboardingLoadingStep2 => 'Nastavitev pomočnika AI ...';

  @override
  String get onboardingLoadingStep3 => 'Skoraj pripravljeno...';

  @override
  String get onboardingLoadingStat1Label => 'Predmeti katalogizirani';

  @override
  String get onboardingLoadingStat2Label => 'Uporabniki so pomagali';

  @override
  String get onboardingLoadingStat3Label => 'Prihranjene minute';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, prihranite na vsakem potovanju!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, nikoli ne pozabi predmeta!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, nakupujte v polovičnem času!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organizirajte družinske nakupe!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, odkrijte nove recepte!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, odlično sledi svoji shrambi!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Prihranite na vsakem potovanju!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Nikoli ne pozabite na predmet!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Nakupujte v pol krajšem času!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'Organizirajte družinsko nakupovanje!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Odkrijte nove recepte!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Popolnoma sledite svoji shrambi!';

  @override
  String paywallPricePerDay(String price) {
    return 'Samo $price/dan — manj kot kava';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Preskoči za zdaj';

  @override
  String get paywallTestimonial =>
      'AI organizira moje nakupovanje v nekaj sekundah. Prihranim 20 minut na potovanje.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Prekličite kadar koli · Brez stroškov do konca preizkusnega obdobja';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Živjo $name! Kaj $category potrebujete?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Kaj $category potrebujete?';
  }

  @override
  String get onboardingAiDemoYes => 'ja!';

  @override
  String get onboardingAiDemoReaction => 'lepo!';

  @override
  String get onboardingAiDemoChange => 'Spremeni element';

  @override
  String get onboardingAiDemoOffer => 'Poskusite vnesti kaj drugega!';

  @override
  String get onboardingAiDemoContinue => 'Nadaljuj';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Vaš nakupovalni seznam zdaj z AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Oglejte si, kako Kipi v nekaj sekundah sestavi vaš celoten seznam';

  @override
  String get onboardingAiDemoSlideCta => 'hočem to! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Gostim žar 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'pripravljena! Tukaj je vse, kar potrebujete:';

  @override
  String get onboardingAiDemoSlideDone => 'Celoten seznam v nekaj sekundah ✨';

  @override
  String get onboardingPainTitle => 'Kaj te najbolj frustrira?';

  @override
  String get onboardingPainSubtitle =>
      'Bodite pošteni – vsakega bomo popravili';

  @override
  String get onboardingPainCta => 'Da, popravi mi to →';

  @override
  String get onboardingPainForget => 'Pozabljam predmete v trgovini';

  @override
  String get onboardingPainFamily => 'Moja družina nikoli ne vidi seznama';

  @override
  String get onboardingPainOverspend => 'Vedno presežem proračun';

  @override
  String get onboardingPainRepeat => 'Eno potovanje ni nikoli dovolj';

  @override
  String get aiWelcomeContent =>
      'pozdravljena 👋 Sem **Kipi**, tvoj osebni pomočnik pri nakupovanju in receptih!\n\nTukaj sem, da vam pomagam:\n🛒 **Samodejno organizirajte** nakupovanje po kategorijah\n💰 **Spremljajte** svoj proračun in vam dajte nasvete za prihranek denarja\n🍲 **Predlagajte** okusne recepte s tem, kar že imate\n\nKako ti lahko danes pomagam? Začnete lahko tako, da ustvarite svoj prvi seznam!';

  @override
  String get aiWelcomeSuggestCreateList => 'Ustvari moj prvi seznam';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, pomagaj mi ustvariti moj prvi nakupovalni seznam';

  @override
  String get aiWelcomeSuggestSave => 'Kako prihraniti denar?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, kako mi lahko pomagaš prihraniti pri nakupu živil?';

  @override
  String get suggestionMilk => 'Mleko';

  @override
  String get suggestionBread => 'Kruh';

  @override
  String get suggestionEggs => 'jajca';

  @override
  String get suggestionCoffee => 'kava';

  @override
  String get suggestionRice => 'riž';

  @override
  String get suggestionFruits => 'sadje';
}
