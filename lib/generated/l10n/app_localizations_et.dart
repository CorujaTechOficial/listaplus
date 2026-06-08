// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appTitle => 'Ostunimekiri';

  @override
  String get lists => 'Nimekirjad';

  @override
  String get pantry => 'Sahver';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Retseptid';

  @override
  String get navLists => 'Nimekirjad';

  @override
  String get navMealPlanner => 'Menüü';

  @override
  String get cancel => 'Tühista';

  @override
  String get save => 'Salvesta';

  @override
  String get create => 'Loo';

  @override
  String get add => 'Lisa';

  @override
  String get remove => 'Eemalda';

  @override
  String get delete => 'Kustuta';

  @override
  String get edit => 'Muuda';

  @override
  String get copy => 'Kopeeri';

  @override
  String get next => 'Edasi';

  @override
  String get retry => 'Proovi uuesti';

  @override
  String get regenerate => 'Loo uuesti';

  @override
  String get copiedToClipboard => 'Lõikelauale kopeeritud';

  @override
  String get confirm => 'Kinnita';

  @override
  String get close => 'Sulge';

  @override
  String get import => 'Impordi';

  @override
  String get rename => 'Nimeta ümber';

  @override
  String get upgrade => 'Täienda';

  @override
  String get clear => 'Tühjenda';

  @override
  String error(String message) {
    return 'Viga: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Viga: $message';
  }

  @override
  String get purchaseError => 'Viga ostu töötlemisel. Proovi uuesti.';

  @override
  String get restoreError => 'Viga ostude taastamisel. Proovi uuesti.';

  @override
  String get loading => 'Laadimine...';

  @override
  String get fieldRequired => 'Kohustuslik väli';

  @override
  String get addedFeedback => 'Lisatud!';

  @override
  String get profile => 'Profiil';

  @override
  String get exitShoppingMode => 'Väljuge osturežiimist';

  @override
  String get exit => 'Välju';

  @override
  String selectedItems(int count) {
    return 'Valitud $count';
  }

  @override
  String get estimated => 'Hinnanguline';

  @override
  String get alreadyPurchased => 'Juba ostetud';

  @override
  String get clearList => 'Tühjenda nimekiri';

  @override
  String get clearPurchased => 'Eemalda ostetud';

  @override
  String get share => 'Jaga';

  @override
  String get shareViaCode => 'Jaga koodiga';

  @override
  String get importViaCode => 'Impordi koodiga';

  @override
  String get listAssistant => 'Nimekirja abiline';

  @override
  String get globalAssistant => 'Üldine abiline';

  @override
  String get becomePremium => 'Hangi Premium';

  @override
  String get manageSubscription => 'Halda tellimust';

  @override
  String get completePurchase => 'Lõpeta ost';

  @override
  String get confirmClearList => 'Eemaldada kõik üksused?';

  @override
  String get shareListTitle => 'Jaga nimekirja';

  @override
  String get shareThisCode => 'Jaga seda koodi:';

  @override
  String get validForLimitedTime => 'Kehtib piiratud aja';

  @override
  String get importListTitle => 'Impordi nimekiri';

  @override
  String get enterCodeHint => 'Sisesta kood';

  @override
  String get confirmArchiveTitle => 'Lõpeta ost';

  @override
  String get confirmArchiveContent =>
      'Lõpetada see ost ja arhiveerida nimekiri?';

  @override
  String get complete => 'Lõpeta';

  @override
  String get listArchived => 'Nimekiri edukalt arhiveeritud!';

  @override
  String listAdded(String listName) {
    return '$listName lisatud!';
  }

  @override
  String get buy => 'Osta';

  @override
  String get unmark => 'Eemalda märge';

  @override
  String confirmDeleteItems(int count) {
    return 'Eemalda $count üksust?';
  }

  @override
  String get confirmDeleteTitle => 'Kinnita';

  @override
  String confirmContent(int count) {
    return 'Eemalda $count üksust?';
  }

  @override
  String get archiveList => 'Arhiveeri nimekiri';

  @override
  String get pantryAppBar => 'Sahver';

  @override
  String get generateShoppingList => 'Loo ostunimekiri';

  @override
  String get pantryEmpty => 'Tühi sahver';

  @override
  String get pantryEmptySubtitle => 'Lisa tooted, mida soovid kodus hoida';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit üksus(t) vajab ostmist';
  }

  @override
  String get noItemsToBuy => 'Pole vaja osta ühtegi üksust';

  @override
  String get newPantryList => 'Sahvrioste';

  @override
  String get newListTitle => 'Uus ostunimekiri';

  @override
  String itemsWillBeAdded(int count) {
    return 'Lisatakse $count üksus(t)';
  }

  @override
  String get listNameLabel => 'Nimekirja nimi';

  @override
  String listCreated(String name, int count) {
    return 'Nimekiri \"$name\" loodud $count üksusega';
  }

  @override
  String get noTracking => 'Jälgimiseta';

  @override
  String get markAsPurchased => 'Märgi ostetuks';

  @override
  String editPantryItem(String name) {
    return 'Muuda $name';
  }

  @override
  String get idealQuantity => 'Ideaalne kogus';

  @override
  String get currentQuantity => 'Praegune kogus';

  @override
  String get consumed => 'Tarbitud';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name täiendatud $quantity $unit-ni';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Eemaldada \"$name\" sahvrist?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Muuda $name';
  }

  @override
  String get settingsAppBar => 'Seaded';

  @override
  String get language => 'Keel';

  @override
  String get languagePortuguese => 'portugali keel (Brasiilia)';

  @override
  String get languageEnglish => 'inglise keel';

  @override
  String get languageSystem => 'Süsteemi vaikeväärtus';

  @override
  String get chooseLanguage => 'Vali keel';

  @override
  String get searchLanguage => 'Otsi keelt...';

  @override
  String get currency => 'Valuuta';

  @override
  String get chooseCurrency => 'Valige Valuuta';

  @override
  String get searchCurrency => 'Otsi valuutat...';

  @override
  String get appearance => 'Välimus';

  @override
  String get light => 'Heled';

  @override
  String get system => 'Süsteem';

  @override
  String get dark => 'Tume';

  @override
  String get themeColor => 'Teema värv';

  @override
  String get dynamicColors => 'Dünaamilised värvid';

  @override
  String get dynamicColorsSubtitle => 'Kasuta taustapildil põhinevaid värve';

  @override
  String get dynamicColorsEnabledWarning =>
      'Keelake dünaamilised värvid, et teema värv jõustuks';

  @override
  String get finance => 'Rahandus';

  @override
  String get monthlyBudgetNav => 'Kuueelarve';

  @override
  String get budgetSubtitle => 'Jälgi oma igakuiseid kulutusi';

  @override
  String get data => 'Andmed';

  @override
  String get backupNav => 'Varukoopia';

  @override
  String get backupSubtitle => 'Ekspordi või impordi oma andmed';

  @override
  String get about => 'Teave';

  @override
  String get version => 'Versioon';

  @override
  String get privacy => 'Privaatsus';

  @override
  String get termsOfUse => 'Kasutustingimused';

  @override
  String get backupTitle => 'Varukoopia';

  @override
  String get backupPremiumDescription =>
      'Varundamine ja eksport on Premium funktsioon';

  @override
  String get exportData => 'Ekspordi andmed';

  @override
  String get exportDataSubtitle => 'Salvesta kõik nimekirjad JSON-ina';

  @override
  String get importData => 'Impordi andmed';

  @override
  String get importDataSubtitle => 'Taasta nimekirjad JSON-failist';

  @override
  String get importJsonTitle => 'Impordi JSON';

  @override
  String get importJsonHint => 'Kleebi varukoopia JSON siia...';

  @override
  String get backupExported => 'Varukoopia eksporditud!';

  @override
  String get budgetAppBar => 'Kuueelarve';

  @override
  String get budgetPremiumLocked => 'Globaalne kuueelarve on Premium';

  @override
  String get budgetUpgradePrompt => 'Täienda, et avada';

  @override
  String get noBudgetDefined => 'Eelarvet pole määratud';

  @override
  String totalEstimated(String amount) {
    return 'Hinnanguline kogusumma: $amount';
  }

  @override
  String get setBudgetButton => 'Määra eelarve';

  @override
  String get budgetLists => 'Nimekirjad';

  @override
  String get budgetValueLabel => 'Summa';

  @override
  String get setBudgetTitle => 'Kuueelarve';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Kõik';

  @override
  String get filterPending => 'Ootel';

  @override
  String get filterPurchased => 'Ostetud';

  @override
  String get sortName => 'Nimi';

  @override
  String get sortCategory => 'Kategooria';

  @override
  String get sortDate => 'Kuupäev';

  @override
  String get sortManual => 'Käsitsi';

  @override
  String get addItem => 'Lisa üksus';

  @override
  String get itemName => 'Üksuse nimi';

  @override
  String get quantityShort => 'Kogus';

  @override
  String get unit => 'Ühik';

  @override
  String get category => 'Kategooria';

  @override
  String get estimatedPrice => 'Hinnanguline hind';

  @override
  String get addItemPrice => 'Hinnanguline hind';

  @override
  String get editItem => 'Muuda üksust';

  @override
  String get quantityFull => 'Kogus';

  @override
  String get editItemPrice => 'Hinnanguline hind';

  @override
  String get addToPantry => 'Lisa sahvrisse';

  @override
  String addToPantryPrompt(String name) {
    return 'Kas lisada \"$name\" sinu sahvrisse?';
  }

  @override
  String get yes => 'Jah';

  @override
  String get productName => 'Toote nimi';

  @override
  String get idealQty => 'Ideaalne kogus';

  @override
  String get currentQty => 'Praegune kogus';

  @override
  String get trackStock => 'Jälgi varu';

  @override
  String get trackStockActive => 'Kuvatakse ostusoovitustes';

  @override
  String get trackStockInactive => 'Ei genereeri ostusoovitust';

  @override
  String get createListDialog => 'Loo nimekiri';

  @override
  String get renameListDialog => 'Nimeta nimekiri ümber';

  @override
  String get listHistory => 'Nimekirjade ajalugu';

  @override
  String get myLists => 'Minu nimekirjad';

  @override
  String get viewActive => 'Vaata aktiivseid';

  @override
  String get viewHistory => 'Vaata ajalugu';

  @override
  String get noArchivedLists => 'Arhiveeritud nimekirju pole';

  @override
  String get noActiveLists => 'Aktiivseid nimekirju pole';

  @override
  String completedOn(String date) {
    return 'Lõpetatud $date';
  }

  @override
  String get sharedLabel => 'Jagatud';

  @override
  String get restore => 'Taasta';

  @override
  String get removeSharedTooltip => 'Eemalda';

  @override
  String get deleteListTitle => 'Kustuta nimekiri';

  @override
  String deleteListContent(String name) {
    return 'Oled sa kindel, et soovid kustutada \"$name\"? Kõik üksused eemaldatakse.';
  }

  @override
  String get removeSharedListTitle => 'Eemalda jagatud nimekiri';

  @override
  String removeSharedListContent(String name) {
    return 'Eemaldada \"$name\" sinu nimekirjadest? Algset nimekirja see ei mõjuta.';
  }

  @override
  String get createNewList => 'Loo uus nimekiri';

  @override
  String get aiAssistant => 'AI abiline';

  @override
  String get aiAssistantDescription =>
      'Hangi nutikaid soovitusi, retsepte ja isikupärastatud näpunäiteid meie AI abilisega.';

  @override
  String get generalAssistant => 'Üldine abiline';

  @override
  String get newChat => 'Uus vestlus';

  @override
  String get noHistory => 'Vestlusajalugu pole';

  @override
  String get deleteSession => 'Kustuta vestlus';

  @override
  String get deleteSessionConfirm =>
      'Kas olete kindel, et soovite selle vestluse kustutada? Sõnumid lähevad jäädavalt kaotsi.';

  @override
  String get clearHistory => 'Tühjenda ajalugu';

  @override
  String get clearHistoryConfirm =>
      'Kas kustutada kõik sõnumid selles sessioonis?';

  @override
  String get chatHint => 'Kirjuta oma sõnum...';

  @override
  String get chatHintBlocked => 'Avage vestluseks tehisintellekt';

  @override
  String chatError(String error) {
    return 'Viga vestluse laadimisel: $error';
  }

  @override
  String get listHelp => 'Kuidas saan aidata sinu nimekirjaga?';

  @override
  String get generalHelp => 'Kuidas saan täna aidata sinu ostlemisel?';

  @override
  String get chatSubtitle =>
      'Küsi üksuste soovitusi, retsepte või säästunõuandeid.';

  @override
  String get aiError =>
      'Vabandust, sinu päringu töötlemisel tekkis viga. Kontrolli ühendust või proovi hiljem uuesti.';

  @override
  String get aiLimitAlmostReached => 'AI sõnumid on peaaegu otsas';

  @override
  String get unlockAi => 'Avage piiramatu AI';

  @override
  String get aiTeaserFallback =>
      'Tellige Premium, et avada täielik vastus ja saada piiramatul hulgal tehisintellekti näpunäiteid oma ostude tegemiseks...';

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
  String get loginPrompt => 'Logi sisse, et avada\nPremium funktsioonid';

  @override
  String get signInGoogle => 'Logi sisse Google\'iga';

  @override
  String get signInApple => 'Logi sisse Apple\'iga';

  @override
  String get continueAsGuest => 'Jätka külalisena';

  @override
  String get onboardingWelcomeTitle => 'Tere tulemast KipiListi';

  @override
  String get onboardingWelcomeDesc =>
      'Kõige nutikam viis ostlemise korraldamiseks ja raha säästmiseks.';

  @override
  String get onboardingSetupTitle => 'Isikupärastage oma kogemust';

  @override
  String get onboardingSetupDesc =>
      'Valige, kuidas soovite, et KipiList näeks välja ja teie heaks töötaks.';

  @override
  String get onboardingLoginTitle => 'Salvestage kõik pilve';

  @override
  String get onboardingLoginDesc =>
      'Teie andmed sünkrooniti kõigis teie seadmetes';

  @override
  String get onboardingShareTitle => 'Jagage nendega, keda armastate';

  @override
  String get onboardingShareDesc =>
      'Sünkroonige loendid pere ja sõpradega reaalajas';

  @override
  String get onboardingPremiumTitle => 'Avage kõik funktsioonid';

  @override
  String get onboardingPremiumSubtitle =>
      'Võtke oma ostunimekirjadest maksimum';

  @override
  String get onboardingAnnualBadge => 'Parim väärtus';

  @override
  String get onboardingMonthlyLabel => 'Igakuine';

  @override
  String get onboardingAnnualLabel => 'Aastane';

  @override
  String get onboardingViewAllPlans => 'Vaadake kõiki plaane';

  @override
  String get onboardingSubscribeCta => 'Telli';

  @override
  String get onboardingCancelAnytime =>
      'Tühistage igal ajal. Ei mingit kohustust.';

  @override
  String get onboardingContinueAsGuest => 'Jätka külalisena';

  @override
  String get onboardingRestore => 'Taasta';

  @override
  String get onboardingRestoreDesc =>
      'Kas teil on juba tellimus? Selle taastamiseks puudutage siin.';

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
  String get onboardingExit => 'Välju';

  @override
  String get onboardingPersonalizationTitle => 'Saame sinuga tuttavaks';

  @override
  String get onboardingPersonalizationDesc =>
      'Kasutame seda teie soovituste isikupärastamiseks ja ostlemise nutikamaks muutmiseks.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Mis on sinu lemmiktoit?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'nt. Pitsa, sushi, lasanje...';

  @override
  String get onboardingPersonalizationCta => 'Jätka';

  @override
  String get onboardingPersonalizationSkip => 'Jäta praegu vahele';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Jätkamiseks öelge meile oma lemmiktoit';

  @override
  String get settingsDefaultScreen => 'Vaikimisi avakuva';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Valige ostunimekirja või AI-vestluse vahel';

  @override
  String get settingsScreenList => 'Ostunimekiri';

  @override
  String get settingsScreenChat => 'AI vestlus';

  @override
  String loginError(String error) {
    return 'Sisselogimise viga: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Viga pakkumiste laadimisel. Proovi uuesti.';

  @override
  String get paywallPurchaseError =>
      'Ostmist ei saanud lõpule viia. Proovi uuesti.';

  @override
  String get paywallRestoreError =>
      'Taastatavat aktiivset tellimust ei leitud.';

  @override
  String paywallTrialDays(Object days) {
    return '$days PÄEVA TASUTA';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count NÄDALAT TASUTA',
      one: '$count NÄDAL TASUTA',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count KUUD TASUTA',
      one: '$count KUUD TASUTA',
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
  String get paywallFeaturesTitle => 'Kõik, mida vajate:';

  @override
  String get paywallFeatureUnlimitedLists => 'Piiramatu arv loendeid';

  @override
  String get paywallFeatureSmartAI => 'Nutikas AI';

  @override
  String get paywallFeatureExpenseControl => 'Kulude kontroll';

  @override
  String get paywallFeatureSharing => 'Jagamine';

  @override
  String get paywallBeforeAfterTitle => 'AI enne ja pärast:';

  @override
  String get paywallLabelCommon => 'Levinud';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'riis';

  @override
  String get paywallBeforeItem2 => 'seep';

  @override
  String get paywallBeforeItem3 => 'liha';

  @override
  String get paywallBeforeItem4 => 'leiba';

  @override
  String get paywallAfterItem1 => 'Terad';

  @override
  String get paywallAfterItem2 => 'Puhastamine';

  @override
  String get paywallAfterItem3 => 'Lihad';

  @override
  String get paywallAfterItem4 => 'Pagariäri';

  @override
  String get paywallTestimonialsTitle => 'Mida meie kasutajad ütlevad:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI korraldab mu ostlemise sekunditega. Säästan 20 min turureisi pealt.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Ma ei unustanud enam kunagi ühtegi loendi elementi. AI-vestlus on sensatsiooniline!';

  @override
  String get paywallSocialProof => 'Seda kasutab +2400 perekonda';

  @override
  String get paywallCtaUnlock => 'Avage PRO';

  @override
  String get paywallBestValue => 'PARIM VÄÄRTUS';

  @override
  String get paywallMostPopular => 'KÕIGE POPULAARSEM';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Turvaline makse';

  @override
  String get paywallSelectPlan => 'Valige oma plaan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SÄÄSTA $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Ainult $price kuus';
  }

  @override
  String get paywallPackageAnnual => 'Aastaplaan';

  @override
  String get paywallPackageMonthly => 'Kuuplaan';

  @override
  String get paywallPackageLifetime => 'Eluaegne juurdepääs';

  @override
  String get paywallCancelAnytime =>
      'Tühistage igal ajal. Ei mingit kohustust.';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'Privaatsuspoliitika';

  @override
  String get paywallTerms => 'Kasutustingimused';

  @override
  String get paywallRestore => 'Taasta';

  @override
  String get paywallHeroHeadline => 'Kipi AI alati teie kõrval';

  @override
  String get paywallHeroSubtitle =>
      'Lisage üksusi, korraldage loendeid ja säästke aega taskus oleva tehisintellektiga';

  @override
  String get paywallBenefit1Desc =>
      'Lisab, korraldab ja soovitab üksusi ööpäevaringselt';

  @override
  String get paywallBenefit2Desc => 'Kolme loendi piirang puudub';

  @override
  String get paywallBenefit3Desc => 'Kulude jälgimine ja perenimekirjad';

  @override
  String get paywallPackageMonthlyDesc => 'Täielik paindlikkus';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Alustage tasuta – $days päeva';
  }

  @override
  String get premiumUpgrade => 'Täienda, et avada';

  @override
  String get itemRemoved => 'Üksus eemaldatud';

  @override
  String get undo => 'Võta tagasi';

  @override
  String get emptyListTitle => 'Sinu nimekiri on tühi';

  @override
  String get emptyListSubtitle => 'Alustamiseks lisa üksusi';

  @override
  String get noListFoundTitle => 'Nimekirju ei leitud';

  @override
  String get noListFoundSubtitle => 'Alustamiseks loe oma esimene nimekiri';

  @override
  String get createFirstList => 'Loo esimene nimekiri';

  @override
  String get listBudgetTitle => 'Nimekirja eelarve';

  @override
  String get budgetAmountLabel => 'Eelarve summa';

  @override
  String get removeBudget => 'Eemalda';

  @override
  String get prefUnlimitedLists => 'Piiramatud nimekirjad';

  @override
  String get prefSharing => 'Jaga nimekirju';

  @override
  String get prefFullHistory => 'Täielik ajalugu';

  @override
  String get prefExportData => 'Ekspordi andmed';

  @override
  String get prefCustomThemes => 'Kohandatud teemad';

  @override
  String get prefMonthlyBudget => 'Globaalne kuueelarve';

  @override
  String get prefAIAssistant => 'Isiklik AI abiline';

  @override
  String get prefUnlimitedPantry => 'Piiramatu sahver';

  @override
  String get prefInteractiveArtifacts => 'Interaktiivsed AI artefaktid';

  @override
  String get themeGreen => 'Roheline';

  @override
  String get themeBlue => 'Sinine';

  @override
  String get themePurple => 'Lilla';

  @override
  String get themeRed => 'Punane';

  @override
  String get themeOrange => 'Oranž';

  @override
  String get themePink => 'Roosa';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Merevaik';

  @override
  String get themeTeal => 'Sinakasroheline';

  @override
  String get themeBrown => 'Pruun';

  @override
  String get catFruits => 'Puuviljad';

  @override
  String get catCleaning => 'Puhastus';

  @override
  String get catBeverages => 'Joogid';

  @override
  String get catBakery => 'Pagaritooted';

  @override
  String get catOthers => 'Muud';

  @override
  String get unitPack => 'pakk';

  @override
  String get shareSubject => 'Ostunimekiri';

  @override
  String get monthlyBudgetTitle => 'Kuueelarve';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Kustuta nimekiri';

  @override
  String get pantryItemRemoved => 'Üksus eemaldatud';

  @override
  String deficitItems(int deficit) {
    return '$deficit üksus(t) vajab ostmist';
  }

  @override
  String get cartTotal => 'Ostukorvi summa';

  @override
  String get restockLabel => 'Täienda';

  @override
  String get advancedFeatures => 'Täiustatud funktsioonid';

  @override
  String get selectAll => 'Vali kõik';

  @override
  String get deselectAll => 'Tühista kõik';

  @override
  String get monthlyBudgetAppBar => 'Kuueelarve';

  @override
  String get budgetEditTitle => 'Kuueelarve';

  @override
  String get budgetDashboardTitle => 'Töölaud';

  @override
  String get selectListForDashboard => 'Töölaua vaatamiseks vali nimekiri.';

  @override
  String get spendingAnalysis => 'Kulude analüüs';

  @override
  String get noItemsToAnalyze => 'Nimekirjas pole analüüsitavaid üksusi.';

  @override
  String get markItemsToSeeAnalysis =>
      'Märgi üksused ostetuks, et näha analüüsi.';

  @override
  String get totalSpending => 'Kulutatud kokku';

  @override
  String get spendingByCategory => 'Kulud kategooriate kaupa';

  @override
  String get achievements => 'Saavutused';

  @override
  String get exportPdfExcel => 'Ekspordi PDF/Excel';

  @override
  String get exportPdf => 'Ekspordi PDF-ina';

  @override
  String get exportExcel => 'Ekspordi Excel-ina';

  @override
  String get organizingAi => 'KORRALDAN AI-ga...';

  @override
  String get yesLabel => 'Jah';

  @override
  String get noLabel => 'Ei';

  @override
  String get shareListText => 'Minu ostunimekiri';

  @override
  String get emptyListAddItems =>
      'Sinu nimekiri on tühi! Lisa esmalt üksusi. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Nimekiri maagiliselt kategooriate kaupa korrastatud! ✨';

  @override
  String get shoppingMode => 'Osturežiim';

  @override
  String get smartOrganization => 'Nutikas korraldus';

  @override
  String get savings => 'Sääst';

  @override
  String get shoppingModeHeader => 'OSTUREŽIIM';

  @override
  String get shareAsText => 'Saada üksused vormindatud tekstina';

  @override
  String get shareRealtime => 'Reaalajas sünkroonimine teiste inimestega';

  @override
  String get quickRecipe => 'Kiire retsept';

  @override
  String get quickRecipePrompt => 'Soovita retsepte minu nimekirja üksustega.';

  @override
  String get economyTips => 'Säästunõuanded';

  @override
  String get economyTipsPrompt =>
      'Kuidas saan selle ostu pealt raha kokku hoida?';

  @override
  String get organizeAisles => 'Korralda vahekäikude kaupa';

  @override
  String get organizeAislesPrompt => 'Korralda poe vahekäikude kaupa.';

  @override
  String get recipeSuggestion => 'Retsepti soovitus';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Jäänud $remaining krediiti';
  }

  @override
  String get addAllToList => 'Lisa kõik nimekirja';

  @override
  String get organizeByAisles => 'Korralda vahekäikude kaupa';

  @override
  String get voiceTranscriptionTooltip => 'Häältrükkimine (Tasuta)';

  @override
  String get aiVoiceCommandTooltip => 'AI häälejuhtimine (Premium)';

  @override
  String get voiceCommandTitle => 'AI häälejuhtimine';

  @override
  String get voiceCommandContent =>
      'Räägi loomulikult, et oma nimekirja hallata!\n\nNäited:\n• \'Lisa leib, juust ja sink\'\n• \'Eemalda pesupulber\'\n• \'Muuda teema siniseks\'\n\nSee on KipiList Premium eksklusiivne funktsioon.';

  @override
  String get voiceCommandPlanBtn => 'Vaata plaane';

  @override
  String get itemsAddedSuccess => 'Üksused edukalt nimekirja lisatud!';

  @override
  String get viewList => 'Vaata nimekirja';

  @override
  String get feedbackTitle => 'Saada tagasiside';

  @override
  String get feedbackPrompt => 'Mida soovite jagada?';

  @override
  String get feedbackTypeBug => 'Teata veast';

  @override
  String get feedbackTypeBugHint => 'Miski ei tööta';

  @override
  String get feedbackTypeSuggestion => 'Ettepanek';

  @override
  String get feedbackTypeSuggestionHint => 'Idee rakenduse parandamiseks';

  @override
  String get feedbackTypeTranslation => 'Tõlkeprobleem';

  @override
  String get feedbackTypeTranslationHint => 'Vale või kohmakas tõlge';

  @override
  String get feedbackTypeFeature => 'Funktsiooni soovitus';

  @override
  String get feedbackTypeFeatureHint => 'Funktsioon, mida sooviksite näha';

  @override
  String get feedbackTypeOther => 'Muu';

  @override
  String get feedbackTypeOtherHint => 'Muud tüüpi tagasiside';

  @override
  String get feedbackHint => 'Kirjeldage oma tagasisidet üksikasjalikult...';

  @override
  String get feedbackSend => 'Saada tagasiside';

  @override
  String get feedbackSending => 'Saatmine...';

  @override
  String get feedbackThankYou => 'Täname!';

  @override
  String get feedbackThankYouMessage =>
      'Teie tagasiside on kätte saadud ja aitab meil KipiList kõigi jaoks paremaks muuta.';

  @override
  String get feedbackBack => 'Tagasi';

  @override
  String feedbackError(String error) {
    return 'Viga saatmisel: $error';
  }

  @override
  String get feedbackRetry => 'Proovi uuesti';

  @override
  String get feedbackSettingsTitle => 'Saada tagasiside';

  @override
  String get feedbackSettingsSubtitle =>
      'Teatage vigadest, soovitage parendusi või parandage tõlkeid';

  @override
  String get aiEnergy => 'AI energia';

  @override
  String get searchInConversation => 'Otsi vestlusest...';

  @override
  String get noMessagesFound => 'Sõnumeid ei leitud';

  @override
  String get suggestedQuestions => 'Soovitatud küsimused:';

  @override
  String get shoppingAssistant => 'Ostuabiline';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased $total-st ostetud';
  }

  @override
  String get estimatedCost => 'Hinnanguline';

  @override
  String get viewItems => 'Kuva üksused';

  @override
  String get noItemsInList => 'Loendis pole üksusi';

  @override
  String get longHistoryWarning =>
      'Pikk ajalugu: assistent keskendub parema jõudluse tagamiseks uusimatele sõnumitele.';

  @override
  String get listening => 'Kuulan...';

  @override
  String get addDirectToList => 'Lisa otse loendisse';

  @override
  String get unlockFullResponse => 'Avage täielik vastus';

  @override
  String get switchList => 'Vaheta loendit';

  @override
  String get marketMode => 'Tururežiim';

  @override
  String get backToChat => 'Tagasi vestlusesse';

  @override
  String get finishShopping => 'Lõpeta ostlemine';

  @override
  String get welcomeAiAssistant => 'Tere tulemast AI assistendisse';

  @override
  String get createListToStartAi =>
      'Nutivestluse kasutamise alustamiseks koostage ostunimekiri.';

  @override
  String get howCanIHelp => 'Kuidas ma saan aidata?';

  @override
  String get chatSubtitleShort =>
      'Küsi hindade, retseptide, korralduse kohta...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total ostetud';
  }

  @override
  String get quickReplies => 'Kiired vastused:';

  @override
  String get voiceProFeature =>
      'Täpsemad häälkäsklused on Pro. Tavalise dikteerimise lubamine...';

  @override
  String get viewPro => 'Vaata Pro';

  @override
  String get errorLoadingChat =>
      'Oih! Midagi läks vestluse laadimisel valesti.';

  @override
  String get errorLoadingChatSubtitle =>
      'Kontrollige ühendust või proovige hiljem uuesti.';

  @override
  String get errorOscillation =>
      'See võib juhtuda võrgu võnkumiste või ajutise kättesaamatuse tõttu. Palun proovi uuesti.';

  @override
  String get activeListening => 'Aktiivne kuulamine';

  @override
  String get whatToDoWithItem => 'Mida soovite selle üksusega teha?';

  @override
  String get viewDetails => 'Kuva üksikasjad';

  @override
  String get openMenu => 'Ava menüü';

  @override
  String get viewRecipe => 'Vaata retsepti';

  @override
  String get recipeCreated => 'Retsept loodud!';

  @override
  String get editRecipe => 'Muuda';

  @override
  String get deleteRecipe => 'Kustuta';

  @override
  String get deleteRecipeConfirm => 'Kustutada see retsept?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Kas olete kindel, et soovite kustutada retsepti \"$recipeName\"? Seda toimingut ei saa tühistada.';
  }

  @override
  String get ingredients => 'Koostisosad';

  @override
  String get instructions => 'Juhised';

  @override
  String get prepTime => 'Ettevalmistusaeg';

  @override
  String get recipeSaved => 'Retsept salvestatud!';

  @override
  String get noRecipesSaved => 'Salvestatud retsepte pole';

  @override
  String get noRecipesSavedHint =>
      'Loo oma esimene kohandatud retsept, puudutades allolevat nuppu.';

  @override
  String get myRecipes => 'Minu retseptid';

  @override
  String get newRecipe => 'Uus retsept';

  @override
  String get loadingRecipes => 'Retseptide laadimine...';

  @override
  String get errorLoadingRecipes => 'Viga retseptide laadimisel';

  @override
  String get addIngredient => 'Lisa koostisosa';

  @override
  String get saveRecipe => 'Salvesta';

  @override
  String get recipeName => 'Retsepti nimi';

  @override
  String get shortDescription => 'Lühikirjeldus';

  @override
  String get prepTimeMinutes => 'Ettevalmistusaeg (minutites)';

  @override
  String get instructionsHint => 'Kirjuta üks samm reale...';

  @override
  String get addPhoto => 'Lisa foto';

  @override
  String get imageUrlPlaceholder => 'Või kleebi pildi URL';

  @override
  String get tags => 'Sildid';

  @override
  String get recipeTags => 'Retsepti sildid';

  @override
  String get suggestedTags => 'Soovitatud';

  @override
  String get searchRecipes => 'Otsi retsepte...';

  @override
  String get filterByTag => 'Filtreeri sildi järgi';

  @override
  String get allTags => 'Kõik';

  @override
  String get recipeDeleted => 'Retsept kustutatud';

  @override
  String get saveChanges => 'Salvesta muudatused';

  @override
  String get editRecipeTitle => 'Muuda retsepti';

  @override
  String get newRecipeTitle => 'Uus retsept';

  @override
  String get requiredField => 'Kohustuslik';

  @override
  String get chooseImageSource => 'Vali pildi allikas';

  @override
  String get gallery => 'Galerii';

  @override
  String get enterUrl => 'Sisesta URL';

  @override
  String get recipeImage => 'Retsepti pilt';

  @override
  String get removeImage => 'Eemalda pilt';

  @override
  String get mealPlannerTitle => 'Toidukorra planeerija';

  @override
  String get mealPlannerViewMonthly => 'Kuunäade';

  @override
  String get mealPlannerViewWeekly => 'Nädalanäade';

  @override
  String get mealPlannerNoMeals => 'Toidukordi pole planeeritud';

  @override
  String get mealPlannerNoMealsHint => 'Toidukorra lisamiseks puuduta päeva';

  @override
  String get mealPlannerLoading => 'Toidukava laadimine...';

  @override
  String get mealPlannerError => 'Viga toidukava laadimisel';

  @override
  String get mealPlannerAddMeal => 'Lisa toidukord';

  @override
  String get mealPlannerEditMeal => 'Muuda toidukorda';

  @override
  String get mealPlannerDeleteMeal => 'Eemalda toidukord';

  @override
  String get mealPlannerMealDeleted => 'Toidukord eemaldatud';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count portsjonit',
      one: '$count portsjon',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Portsjonid';

  @override
  String get mealPlannerNoteLabel => 'Märkus (valikuline)';

  @override
  String get mealPlannerSelectRecipe => 'Vali retsept';

  @override
  String get mealPlannerSearchRecipes => 'Otsi retsepte...';

  @override
  String get mealPlannerNoRecipesFound => 'Retsepte ei leitud';

  @override
  String get mealPlannerNoRecipesHint =>
      'Loo esmalt retseptid vahekaardil Retseptid';

  @override
  String get mealPlannerSave => 'Lisa kavasse';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count / $total toidukorda planeeritud';
  }

  @override
  String get mealPlannerGenerateList => 'Loo ostunimekiri';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Kas lisada kaikki selle nädala toidukordade koostisosad ostunimekirja?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count koostisosa lisatud nimekirja!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Koostisosi pole lisada. Planeeri esmalt mõned toidukorrad retseptidega.';

  @override
  String get mealPlannerGenerateListNoList => 'Loo esmalt ostunimekiri.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Hommikusöök';

  @override
  String get mealPlannerMealTypeLunch => 'Lõunasöök';

  @override
  String get mealPlannerMealTypeDinner => 'Õhtusöök';

  @override
  String get mealPlannerMealTypeSnack => 'Oode';

  @override
  String get mealPlannerDateLabel => 'Kuupäev';

  @override
  String get mealPlannerWeekEmpty => 'Selleks nädalaks pole midagi planeeritud';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Toidukordade planeerimiseks puuduta suvalist päeva!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Kutsu nimekirja';

  @override
  String get shareApp => 'Jaga rakendust';

  @override
  String get shareAppDescription => 'Kutsu sõpru KipiListi kasutama';

  @override
  String shareReferralText(Object url) {
    return 'Kasutan ostude korraldamiseks KipiListi! Laadige alla minu lingi kaudu ja me mõlemad saame 7 päeva tasuta Premiumi: $url';
  }

  @override
  String get shareReferralSubject => 'Saate 7 päeva KipiList Premiumi!';

  @override
  String get gestureHint => 'Valimiseks hoidke all • Eemaldamiseks pühkige';

  @override
  String get catalogTitle => 'Kataloog';

  @override
  String get catalogMyFrequents => 'Minu Sagedused';

  @override
  String get catalogSearchGlobal => 'Otsige mis tahes toodet...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Otsi $category...';
  }

  @override
  String get catalogSortPopular => 'Kõige populaarsem';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Rahvuslased';

  @override
  String get catalogRareSection => 'teie riigis vähem levinud';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Lisa $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Toodet ei leitud, sisestage nimi';

  @override
  String get catalogBrowse => 'Sirvi kataloogi';

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
