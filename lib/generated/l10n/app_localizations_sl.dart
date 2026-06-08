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
  String get navChat => 'Chat';

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
  String get profile => 'Profile';

  @override
  String get exitShoppingMode => 'Exit Shopping Mode';

  @override
  String get exit => 'Exit';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izbranih $count',
      few: 'Izbrani $count',
      two: 'Izbrana $count',
      one: 'Izbran $count',
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
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

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
  String get paywallTrialTitle => 'Try for free!';

  @override
  String get paywallTrialSubtitle => 'Cancel anytime. No charge today.';

  @override
  String get paywallTrialCta => 'Start Free Trial';

  @override
  String get recipeAddToList => 'Add to shopping list';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 added to $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Vse, kar potrebujete:';

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
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

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
  String shareReferralText(Object url) {
    return 'Za organizacijo nakupov uporabljam KipiList! Prenesite prek moje povezave in oba prejmeta 7 dni brezplačne Premium: $url';
  }

  @override
  String get shareReferralSubject => 'Zagotovite si 7 dni KipiList Premium!';

  @override
  String get gestureHint => 'Hold to select • Swipe to remove';

  @override
  String get catalogTitle => 'Catalog';

  @override
  String get catalogMyFrequents => 'My Frequents';

  @override
  String get catalogSearchGlobal => 'Search any product...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Search in $category...';
  }

  @override
  String get catalogSortPopular => 'Most popular';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nationals';

  @override
  String get catalogRareSection => 'less common in your country';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Add $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Product not found, type the name';

  @override
  String get catalogBrowse => 'Browse Catalog';

  @override
  String get offlineBanner => 'You are offline';

  @override
  String get consentTitle => 'Privacy & Analytics';

  @override
  String get consentBody =>
      'KipiList uses Firebase Analytics to improve your experience. Your data is processed according to our Privacy Policy.';

  @override
  String get consentAccept => 'Accept';

  @override
  String get consentDecline => 'No, thanks';

  @override
  String get mealPlannerPantryAllAvailable => 'All ingredients available';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 missing';
  }

  @override
  String get expirationDate => 'Expiration date';

  @override
  String get notInformed => 'Not set';

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
  String get manageCategoriesTitle => 'Manage Categories';

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
  String get backToToday => 'Back to today';

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
