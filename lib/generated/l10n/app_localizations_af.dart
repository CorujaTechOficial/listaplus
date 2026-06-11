// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get appTitle => 'Klyslys';

  @override
  String get lists => 'Lyste';

  @override
  String get pantry => 'Spens';

  @override
  String get navChat => 'Gesels';

  @override
  String get navRecipes => 'Resepte';

  @override
  String get navLists => 'Lyste';

  @override
  String get navMealPlanner => 'Spyskaart';

  @override
  String get cancel => 'Kanselleer';

  @override
  String get save => 'Stoor';

  @override
  String get create => 'Skep';

  @override
  String get add => 'Voeg by';

  @override
  String get remove => 'Verwyder';

  @override
  String get delete => 'Verwyder';

  @override
  String get edit => 'Wysig';

  @override
  String get copy => 'Kopieer';

  @override
  String get next => 'Volgende';

  @override
  String get retry => 'Probeer weer';

  @override
  String get regenerate => 'Her genereer';

  @override
  String get copiedToClipboard => 'Gekopieer na knipbord';

  @override
  String get confirm => 'Bevestig';

  @override
  String get close => 'Maak toe';

  @override
  String get import => 'Voer in';

  @override
  String get rename => 'Hernoem';

  @override
  String get upgrade => 'Gradeer op';

  @override
  String get clear => 'Maak skoon';

  @override
  String error(String message) {
    return 'Fout: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Fout: $message';
  }

  @override
  String get purchaseError => 'Fout met verwerking van aankoop. Probeer weer.';

  @override
  String get restoreError => 'Fout met herstel van aankope. Probeer weer.';

  @override
  String get loading => 'Laai tans...';

  @override
  String get fieldRequired => 'Vereiste veld';

  @override
  String get addedFeedback => 'Bygevoeg!';

  @override
  String get profile => 'Profiel';

  @override
  String get exitShoppingMode => 'Verlaat inkopiemodus';

  @override
  String get exit => 'Verlaat';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gekies',
      one: '$count gekies',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Geraam';

  @override
  String get alreadyPurchased => 'Reeds gekoop';

  @override
  String get clearList => 'Maak lys skoon';

  @override
  String get clearPurchased => 'Maak gekoopte skoon';

  @override
  String get share => 'Deel';

  @override
  String get shareViaCode => 'Deel via kode';

  @override
  String get importViaCode => 'Voer in via kode';

  @override
  String get listAssistant => 'Lysassistent';

  @override
  String get globalAssistant => 'Globale assistent';

  @override
  String get becomePremium => 'Word Premium';

  @override
  String get manageSubscription => 'Bestuur intekening';

  @override
  String get completePurchase => 'Voltooi aankoop';

  @override
  String get confirmClearList => 'Verwyder alle items?';

  @override
  String get shareListTitle => 'Deel Lys';

  @override
  String get shareThisCode => 'Deel hierdie kode:';

  @override
  String get validForLimitedTime => 'Geldig vir beperkte tyd';

  @override
  String get importListTitle => 'Voer Lys In';

  @override
  String get enterCodeHint => 'Voer die kode in';

  @override
  String get confirmArchiveTitle => 'Voltooi Aankoop';

  @override
  String get confirmArchiveContent =>
      'Voltooi hierdie aankoop en argiveer die lys?';

  @override
  String get complete => 'Voltooi';

  @override
  String get listArchived => 'Lys suksesvol geargiveer!';

  @override
  String listAdded(String listName) {
    return '$listName bygevoeg!';
  }

  @override
  String get buy => 'Koop';

  @override
  String get unmark => 'Ontmerk';

  @override
  String confirmDeleteItems(int count) {
    return 'Verwyder $count item(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Bevestig';

  @override
  String confirmContent(int count) {
    return 'Verwyder $count item(s)?';
  }

  @override
  String get archiveList => 'Argiveer lys';

  @override
  String get pantryAppBar => 'Spens';

  @override
  String get generateShoppingList => 'Genereer klyslys';

  @override
  String get pantryEmpty => 'Spens is leeg';

  @override
  String get pantryEmptySubtitle => 'Voeg produkte by wat jy tuis wil hou';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(s) moet gekoop word';
  }

  @override
  String get noItemsToBuy => 'Geen items om te koop nie';

  @override
  String get newPantryList => 'Spens Inkopies';

  @override
  String get newListTitle => 'Nuwe Klyslys';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(s) sal bygevoeg word';
  }

  @override
  String get listNameLabel => 'Lysnaam';

  @override
  String listCreated(String name, int count) {
    return 'Lys \"$name\" geskep met $count items';
  }

  @override
  String get noTracking => 'Geen dop';

  @override
  String get markAsPurchased => 'Merk as gekoop';

  @override
  String editPantryItem(String name) {
    return 'Wysig $name';
  }

  @override
  String get idealQuantity => 'Ideale hoeveelheid';

  @override
  String get currentQuantity => 'Huidige hoeveelheid';

  @override
  String get consumed => 'Verbruik';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name hervul na $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Verwyder \"$name\" uit spens?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Wysig $name';
  }

  @override
  String get scanProductTitle => 'Skandeer produk';

  @override
  String get positionBarcodeCenter => 'Plaas die strepieskode in die middel';

  @override
  String get product => 'Produk';

  @override
  String get settingsAppBar => 'Instellings';

  @override
  String get language => 'Taal';

  @override
  String get languagePortuguese => 'Português (Brasilië)';

  @override
  String get languageEnglish => 'Engels';

  @override
  String get languageSystem => 'Stelselverstek';

  @override
  String get chooseLanguage => 'Kies taal';

  @override
  String get searchLanguage => 'Soek taal...';

  @override
  String get currency => 'Geldeenheid';

  @override
  String get chooseCurrency => 'Kies Geldeenheid';

  @override
  String get searchCurrency => 'Soek geldeenheid...';

  @override
  String get appearance => 'Voorkoms';

  @override
  String get light => 'Lig';

  @override
  String get system => 'Stelsel';

  @override
  String get dark => 'Donker';

  @override
  String get themeColor => 'Temakleur';

  @override
  String get dynamicColors => 'Dinamiese kleure';

  @override
  String get dynamicColorsSubtitle =>
      'Gebruik kleure gebaseer op jou muurpapier';

  @override
  String get dynamicColorsEnabledWarning =>
      'Deaktiveer dinamiese kleure sodat die temakleur in werking tree';

  @override
  String get finance => 'Finansies';

  @override
  String get monthlyBudgetNav => 'Maandelikse begroting';

  @override
  String get budgetSubtitle => 'Volg jou maandelikse besteding';

  @override
  String get data => 'Data';

  @override
  String get backupNav => 'Rugsteun';

  @override
  String get backupSubtitle => 'Voer uit of voer jou data in';

  @override
  String get about => 'Oor';

  @override
  String get version => 'Weergawe';

  @override
  String get privacy => 'Privaatheid';

  @override
  String get termsOfUse => 'Gebruiksvoorwaardes';

  @override
  String get myAchievements => 'My prestasies';

  @override
  String get itemsPurchased => 'Items gekoop';

  @override
  String get totalSavings => 'Totale Spaar';

  @override
  String get currentStreak => 'Huidige streep';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dae',
      one: '$count dag',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Ontsluit Kentekens';

  @override
  String get badgeBeginner => 'Beginner';

  @override
  String get badgeOrganized => 'Georganiseer';

  @override
  String get badgeSavingMaster => 'Redende Meester';

  @override
  String get badgeSuperPlanner => 'Super beplanner';

  @override
  String get backupTitle => 'Rugsteun';

  @override
  String get backupPremiumDescription =>
      'Rugsteun en uitvoer is \'n premium kenmerk';

  @override
  String get exportData => 'Voer data uit';

  @override
  String get exportDataSubtitle => 'Stoor alle lyste as JSON';

  @override
  String get importData => 'Voer data in';

  @override
  String get importDataSubtitle => 'Herstel lyste van \'n JSON';

  @override
  String get importJsonTitle => 'Voer JSON in';

  @override
  String get importJsonHint => 'Plak die rugsteun-JSON hier...';

  @override
  String get backupExported => 'Rugsteun uitgevoer!';

  @override
  String get budgetAppBar => 'Maandelikse Begroting';

  @override
  String get budgetPremiumLocked => 'Globale maandelikse begroting is premium';

  @override
  String get budgetUpgradePrompt => 'Gradeer op om te ontsluit';

  @override
  String get noBudgetDefined => 'Geen begroting gestel';

  @override
  String totalEstimated(String amount) {
    return 'Totaal geraam: $amount';
  }

  @override
  String get setBudgetButton => 'Stel begroting';

  @override
  String get budgetLists => 'Lyste';

  @override
  String get budgetValueLabel => 'Bedrag';

  @override
  String get setBudgetTitle => 'Maandelikse Begroting';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterPending => 'Hangend';

  @override
  String get filterPurchased => 'Gekoop';

  @override
  String get sortName => 'Naam';

  @override
  String get sortCategory => 'Kategorie';

  @override
  String get sortDate => 'Datum';

  @override
  String get sortManual => 'Handmatig';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased van $total items';
  }

  @override
  String progressBudget(String amount) {
    return 'Begroting: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Totaal: $amount';
  }

  @override
  String get addItem => 'Voeg Item By';

  @override
  String get itemName => 'Itemnaam';

  @override
  String get quantityShort => 'Hoev';

  @override
  String get unit => 'Eenheid';

  @override
  String get category => 'Kategorie';

  @override
  String get estimatedPrice => 'Geraamde prys';

  @override
  String get addItemPrice => 'Geraamde prys';

  @override
  String get editItem => 'Wysig Item';

  @override
  String get quantityFull => 'Hoeveelheid';

  @override
  String get editItemPrice => 'Geraamde prys';

  @override
  String get addToPantry => 'Voeg by Spens';

  @override
  String addToPantryPrompt(String name) {
    return 'Voeg \"$name\" by jou Spens?';
  }

  @override
  String get yes => 'Ja';

  @override
  String get productName => 'Produknaam';

  @override
  String get idealQty => 'Ideale hoev';

  @override
  String get currentQty => 'Huidige hoev';

  @override
  String get trackStock => 'Hou voorraad dop';

  @override
  String get trackStockActive => 'Verskyn in inkopie-voorstelle';

  @override
  String get trackStockInactive => 'Genereer geen inkopie-voorstel nie';

  @override
  String get createListDialog => 'Skep Lys';

  @override
  String get renameListDialog => 'Hernoem Lys';

  @override
  String get listHistory => 'Lysgeskiedenis';

  @override
  String get myLists => 'My Lyste';

  @override
  String get viewActive => 'Bekyk Aktiewe';

  @override
  String get viewHistory => 'Bekyk Geskiedenis';

  @override
  String get noArchivedLists => 'Geen geargiveerde lyste';

  @override
  String get noActiveLists => 'Geen aktiewe lyste';

  @override
  String completedOn(String date) {
    return 'Voltooi op $date';
  }

  @override
  String get sharedLabel => 'Gedeel';

  @override
  String get restore => 'Herstel';

  @override
  String get removeSharedTooltip => 'Verwyder';

  @override
  String get deleteListTitle => 'Verwyder lys';

  @override
  String deleteListContent(String name) {
    return 'Is jy seker jy wil \"$name\" verwyder? Alle items sal verwyder word.';
  }

  @override
  String get removeSharedListTitle => 'Verwyder gedeelde lys';

  @override
  String removeSharedListContent(String name) {
    return 'Verwyder \"$name\" van jou lyste? Die oorspronklike lys sal nie geraak word nie.';
  }

  @override
  String get createNewList => 'Skep nuwe lys';

  @override
  String get aiAssistant => 'AI Assistent';

  @override
  String get aiAssistantDescription =>
      'Kry slim voorstelle, resepte en persoonlike wenke met ons AI-assistent.';

  @override
  String get generalAssistant => 'Algemene Assistent';

  @override
  String get newChat => 'Nuwe Chat';

  @override
  String get noHistory => 'Geen kletsgeskiedenis nie';

  @override
  String get deleteSession => 'Vee Chat uit';

  @override
  String get deleteSessionConfirm =>
      'Is jy seker jy wil hierdie klets uitvee? Die boodskappe sal permanent verlore gaan.';

  @override
  String get clearHistory => 'Maak Geskiedenis Skoon';

  @override
  String get clearHistoryConfirm =>
      'Maak alle boodskappe in hierdie sessie skoon?';

  @override
  String get chatHint => 'Tik jou boodskap...';

  @override
  String get chatHintBlocked => 'Ontsluit AI om te gesels';

  @override
  String chatError(String error) {
    return 'Fout met laai van geselsie: $error';
  }

  @override
  String get aiAssistantTitle => 'KI assistent';

  @override
  String get closeSheet => 'Maak toe';

  @override
  String get scanBarcodeTitle => 'Skandeer strepieskode';

  @override
  String get listHelp => 'Hoe kan ek met jou lys help?';

  @override
  String get generalHelp => 'Hoe kan ek met jou inkopies vandag help?';

  @override
  String get chatSubtitle =>
      'Vra vir itemvoorstelle, resepte of besparingwenke.';

  @override
  String get aiError =>
      'Jammer, \'n fout het voorgekom met die verwerking van jou versoek. Gaan jou verbinding na of probeer later weer.';

  @override
  String get aiLimitAlmostReached => 'Amper uit KI-boodskappe';

  @override
  String get unlockAi => 'Ontsluit onbeperkte AI';

  @override
  String get aiTeaserFallback =>
      'Teken in op Premium om die volle reaksie te ontsluit en kry onbeperkte KI-wenke vir jou inkopies...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining KI-aksies oor hierdie maand — gradeer op vir onbeperk';
  }

  @override
  String get aiUsageExhausted =>
      'Maandelikse KI-limiet bereik. Gradeer op na Pro vir onbeperk →';

  @override
  String get kipiListTitle => 'KipiLys';

  @override
  String get loginPrompt => 'Meld aan om\npremium-kenmerke te ontsluit';

  @override
  String get signInGoogle => 'Teken in met Google';

  @override
  String get signInApple => 'Teken in met Apple';

  @override
  String get continueAsGuest => 'Gaan voort as gas';

  @override
  String get onboardingWelcomeTitle => 'Welkom by KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Die slimste manier om jou inkopies te organiseer en geld te spaar.';

  @override
  String get onboardingSetupTitle => 'Pas jou ervaring aan';

  @override
  String get onboardingSetupDesc =>
      'Kies hoe jy wil hê KipiList moet lyk en vir jou werk.';

  @override
  String get onboardingLoginTitle => 'Stoor alles in die wolk';

  @override
  String get onboardingLoginDesc =>
      'Jou data is oor al jou toestelle gesinkroniseer';

  @override
  String get onboardingShareTitle => 'Deel met diegene vir wie jy lief is';

  @override
  String get onboardingShareDesc =>
      'Sinkroniseer lyste intyds met familie en vriende';

  @override
  String get onboardingPremiumTitle => 'Ontsluit alle kenmerke';

  @override
  String get onboardingPremiumSubtitle =>
      'Haal die meeste uit jou inkopielyste';

  @override
  String get onboardingAnnualBadge => 'Beste waarde';

  @override
  String get onboardingMonthlyLabel => 'Maandeliks';

  @override
  String get onboardingAnnualLabel => 'Jaarliks';

  @override
  String get onboardingViewAllPlans => 'Bekyk alle planne';

  @override
  String get onboardingSubscribeCta => 'Teken in';

  @override
  String get onboardingCancelAnytime =>
      'Kanselleer enige tyd. Geen verbintenis nie.';

  @override
  String get onboardingContinueAsGuest => 'Gaan voort as gas';

  @override
  String get onboardingRestore => 'Herstel';

  @override
  String get onboardingRestoreDesc =>
      'Het jy reeds \'n intekening? Tik hier om dit te herstel.';

  @override
  String get onboardingMaybeLater => 'Miskien later';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Haai $name, organiseer jou inkopies op die regte manier.';
  }

  @override
  String get onboardingSlide1Title => 'Slim inkopielyste';

  @override
  String get onboardingSlide1Body =>
      'Skep en deel lyste onmiddellik. Kipi voeg items outomaties by op grond van jou gewoontes.';

  @override
  String get onboardingSlide2Title => 'Ontmoet Kipi';

  @override
  String get onboardingSlide2Body =>
      'Vra enigiets – skep lyste, vind resepte, hou jou spens dop, beplan jou week.';

  @override
  String get onboardingSlide3Title => 'Spens & Maaltydbeplanning';

  @override
  String get onboardingSlide3Body =>
      'Volg wat jy het, beplan maaltye en genereer outomaties inkopielyste.';

  @override
  String get onboardingExit => 'Verlaat';

  @override
  String get onboardingPersonalizationTitle => 'Kom ons leer jou ken';

  @override
  String get onboardingPersonalizationDesc =>
      'Ons sal dit gebruik om jou voorstelle te verpersoonlik en inkopies slimmer te maak.';

  @override
  String get onboardingPersonalizationFoodLabel => 'Wat is jou gunsteling kos?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'bv. Pizza, Sushi, Lasagne...';

  @override
  String get onboardingPersonalizationCta => 'Gaan voort';

  @override
  String get onboardingPersonalizationSkip => 'Slaan vir eers oor';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Vertel ons jou gunsteling kos om voort te gaan';

  @override
  String get settingsDefaultScreen => 'Verstek tuisskerm';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Kies tussen inkopielys of KI-klets';

  @override
  String get settingsScreenList => 'Inkopielys';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Aantekenfout: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Kon nie aanbiedings laai nie. Probeer weer.';

  @override
  String get paywallPurchaseError =>
      'Kon nie aankoop voltooi nie. Probeer weer.';

  @override
  String get paywallRestoreError =>
      'Geen aktiewe intekening gevind om terug te stel nie.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAE GRATIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count WEKE GRATIS',
      one: '$count WEEK GRATIS',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MAANDE GRATIS',
      one: '$count MAAND GRATIS',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Probeer gratis!';

  @override
  String get paywallTrialSubtitle =>
      'Kanselleer enige tyd. Geen koste vandag nie.';

  @override
  String get paywallTrialCta => 'Begin gratis proeflopie';

  @override
  String get recipeAddToList => 'Voeg by inkopielys';

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
  String get noListSelected => 'Geen lys gekies nie. Maak eers \'n lys oop.';

  @override
  String get paywallFeaturesTitle => 'Alles wat jy nodig het:';

  @override
  String get paywallFeatureDescAssistant => 'KI organiseer jou lys outomaties';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Skep soveel lyste as wat jy nodig het';

  @override
  String get paywallFeatureDescSharing => 'Koop intyds saam';

  @override
  String get paywallFeatureDescPantry => 'Volg wat jy by die huis het';

  @override
  String get paywallFeatureDescBudget => 'Bly elke maand op begroting';

  @override
  String get paywallFeatureUnlimitedLists => 'Onbeperkte lyste';

  @override
  String get paywallFeatureSmartAI => 'Slim KI';

  @override
  String get paywallFeatureExpenseControl => 'Onkostebeheer';

  @override
  String get paywallFeatureSharing => 'Deel';

  @override
  String get paywallBeforeAfterTitle => 'KI voor en na:';

  @override
  String get paywallLabelCommon => 'Algemeen';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'rys';

  @override
  String get paywallBeforeItem2 => 'seep';

  @override
  String get paywallBeforeItem3 => 'vleis';

  @override
  String get paywallBeforeItem4 => 'brood';

  @override
  String get paywallAfterItem1 => 'Korrels';

  @override
  String get paywallAfterItem2 => 'Skoonmaak';

  @override
  String get paywallAfterItem3 => 'Vleis';

  @override
  String get paywallAfterItem4 => 'Bakkery';

  @override
  String get paywallTestimonialsTitle => 'Wat ons gebruikers sê:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'KI organiseer my inkopies binne sekondes. Ek spaar 20 min per markreis.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Ek het nooit weer \'n lysitem vergeet nie. Die KI-klets is sensasioneel!';

  @override
  String get paywallSocialProof => '+2 400 gesinne gebruik dit';

  @override
  String get paywallCtaUnlock => 'Ontsluit PRO';

  @override
  String get paywallBestValue => 'BESTE WAARDE';

  @override
  String get paywallMostPopular => 'MEES GEWILDE';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Veilige betaling';

  @override
  String get paywallSelectPlan => 'Kies jou plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SPAAR $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Slegs $price/maand';
  }

  @override
  String get paywallPackageAnnual => 'Jaarlikse Plan';

  @override
  String get paywallPackageMonthly => 'Maandelikse Plan';

  @override
  String get paywallPackageLifetime => 'Lewenslange toegang';

  @override
  String get paywallCancelAnytime =>
      'Kanselleer enige tyd. Geen verbintenis nie.';

  @override
  String paywallTrialInCard(int days) {
    return 'Eerste $days dae GRATIS';
  }

  @override
  String get paywallSecuredByStore =>
      'Beveilig deur Google Play · Kanselleer enige tyd';

  @override
  String get paywallPolicy => 'Privaatheidsbeleid';

  @override
  String get paywallTerms => 'Gebruiksvoorwaardes';

  @override
  String get paywallRestore => 'Herstel';

  @override
  String get paywallHeroHeadline => 'Kipi AI altyd aan jou sy';

  @override
  String get paywallHeroSubtitle =>
      'Voeg items by, organiseer lyste en bespaar tyd met KI in jou sak';

  @override
  String get paywallBenefit1Desc =>
      'Voeg items 24/7 by, organiseer en stel items voor';

  @override
  String get paywallBenefit2Desc => 'Geen 3-lys limiet nie';

  @override
  String get paywallBenefit3Desc => 'Uitgawe dop en familie lyste';

  @override
  String get paywallPackageMonthlyDesc => 'Volle buigsaamheid';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Begin gratis - $days dae';
  }

  @override
  String get premiumUpgrade => 'Gradeer op om te ontsluit';

  @override
  String get itemRemoved => 'Item verwyder';

  @override
  String get undo => 'Ontdoen';

  @override
  String get emptyListTitle => 'Jou lys is leeg';

  @override
  String get emptyListSubtitle => 'Voeg items by om te begin';

  @override
  String get noListFoundTitle => 'Geen lyste gevind';

  @override
  String get noListFoundSubtitle => 'Skep jou eerste lys om te begin';

  @override
  String get createFirstList => 'Skep Eerste Lys';

  @override
  String get listBudgetTitle => 'Lysbegroting';

  @override
  String get budgetAmountLabel => 'Begrotingsbedrag';

  @override
  String get removeBudget => 'Verwyder';

  @override
  String get prefUnlimitedLists => 'Onbeperkte lyste';

  @override
  String get prefSharing => 'Deel lyste';

  @override
  String get prefFullHistory => 'Volle geskiedenis';

  @override
  String get prefExportData => 'Voer data uit';

  @override
  String get prefCustomThemes => 'Pasgemaakte temas';

  @override
  String get prefMonthlyBudget => 'Globale maandelikse begroting';

  @override
  String get prefAIAssistant => 'Persoonlike AI Assistent';

  @override
  String get prefUnlimitedPantry => 'Onbeperkte spens';

  @override
  String get prefInteractiveArtifacts => 'Interaktiewe AI-Artifakte';

  @override
  String get themeGreen => 'Groen';

  @override
  String get themeBlue => 'Blou';

  @override
  String get themePurple => 'Pers';

  @override
  String get themeRed => 'Rooi';

  @override
  String get themeOrange => 'Oranje';

  @override
  String get themePink => 'Pienk';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Amber';

  @override
  String get themeTeal => 'Groenblou';

  @override
  String get themeBrown => 'Bruin';

  @override
  String get catFruits => 'Vrugte';

  @override
  String get catCleaning => 'Skoonmaak';

  @override
  String get catBeverages => 'Drankies';

  @override
  String get catBakery => 'Bakkery';

  @override
  String get catOthers => 'Ander';

  @override
  String get unitPack => 'pak';

  @override
  String get shareSubject => 'Klyslys';

  @override
  String get monthlyBudgetTitle => 'Maandelikse Begroting';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Verwyder lys';

  @override
  String get pantryItemRemoved => 'Item verwyder';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit items moet gekoop word',
      one: '$deficit item moet gekoop word',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Mandjietotaal';

  @override
  String get restockLabel => 'Hervul';

  @override
  String get advancedFeatures => 'Gevorderde kenmerke';

  @override
  String get selectAll => 'Kies alles';

  @override
  String get deselectAll => 'Ontkies alles';

  @override
  String get monthlyBudgetAppBar => 'Maandelikse Begroting';

  @override
  String get budgetEditTitle => 'Maandelikse Begroting';

  @override
  String get budgetDashboardTitle => 'Dashboard';

  @override
  String get selectListForDashboard =>
      'Kies \'n lys om die dashboard te bekyk.';

  @override
  String get spendingAnalysis => 'Bestedingsanalise';

  @override
  String get noItemsToAnalyze => 'Geen items in die lys om te ontleed nie.';

  @override
  String get markItemsToSeeAnalysis =>
      'Merk items as gekoop om die analise te sien.';

  @override
  String get totalSpending => 'Totale Besteding';

  @override
  String get spendingByCategory => 'Besteding per Kategorie';

  @override
  String get achievements => 'Prestasies';

  @override
  String get exportPdfExcel => 'Voer uit PDF/Excel';

  @override
  String get exportPdf => 'Voer uit as PDF';

  @override
  String get exportExcel => 'Voer uit as Excel';

  @override
  String get organizingAi => 'ORGANISEER MET KI...';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nee';

  @override
  String get shareListText => 'My Klyslys';

  @override
  String get emptyListAddItems => 'Jou lys is leeg! Voeg eers items by. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lys magies georganiseer volgens kategorieë! ✨';

  @override
  String get shoppingMode => 'Inkopiemodus';

  @override
  String get smartOrganization => 'Slim Organisasie';

  @override
  String get savings => 'Besparings';

  @override
  String get shoppingModeHeader => 'INKOPIEMODUS';

  @override
  String get shareAsText => 'Stuur items as geformateerde teks';

  @override
  String get shareRealtime => 'Reële tyd-sinkronisasie met other mense';

  @override
  String get quickRecipe => 'Vinnige resep';

  @override
  String get quickRecipePrompt => 'Stel resepte voor met items van my lys.';

  @override
  String get economyTips => 'Besparingwenke';

  @override
  String get economyTipsPrompt => 'Hoe kan ek geld spaar op hierdie aankoop?';

  @override
  String get organizeAisles => 'Organiseer volgens gange';

  @override
  String get organizeAislesPrompt => 'Organiseer volgens winkelgange.';

  @override
  String get recipeSuggestion => 'Resepvoorstel';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining krediete oor';
  }

  @override
  String get addAllToList => 'Voeg alles by lys';

  @override
  String get organizeByAisles => 'Organiseer volgens gange';

  @override
  String get voiceTranscriptionTooltip => 'Stemtik (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'KI-stemopdrag (Premium)';

  @override
  String get voiceCommandTitle => 'KI-stemopdrag';

  @override
  String get voiceCommandContent =>
      'Praat natuurlik om jou lys te bestuur!\n\nVoorbeelde:\n• \'Voeg brood, kaas en ham by\'\n• \'Verwyder waspoeier\'\n• \'Verother tema na blou\'\n\nDit is \'n eksklusiewe kenmerk van KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Bekyk Planne';

  @override
  String get itemsAddedSuccess => 'Items suksesvol by lys gevoeg!';

  @override
  String get viewList => 'Bekyk lys';

  @override
  String get feedbackTitle => 'Stuur Terugvoer';

  @override
  String get feedbackPrompt => 'Wat wil jy graag deel?';

  @override
  String get feedbackTypeBug => 'Rapporteer Fout';

  @override
  String get feedbackTypeBugHint => 'Iets werk nie';

  @override
  String get feedbackTypeSuggestion => 'Voorstel';

  @override
  String get feedbackTypeSuggestionHint => 'Idee om die program te verbeter';

  @override
  String get feedbackTypeTranslation => 'Vertalingskwessie';

  @override
  String get feedbackTypeTranslationHint =>
      'Verkeerde of ongemaklike vertaling';

  @override
  String get feedbackTypeFeature => 'Funksieversoek';

  @override
  String get feedbackTypeFeatureHint => 'Funksie wat jy graag wil sien';

  @override
  String get feedbackTypeOther => 'Ander';

  @override
  String get feedbackTypeOtherHint => 'Ander tipe terugvoer';

  @override
  String get feedbackHint => 'Beskryf jou terugvoer in detail...';

  @override
  String get feedbackSend => 'Stuur Terugvoer';

  @override
  String get feedbackSending => 'Stuur tans...';

  @override
  String get feedbackThankYou => 'Dankie!';

  @override
  String get feedbackThankYouMessage =>
      'Jou terugvoer is ontvang en help ons om KipiList vir almal te verbeter.';

  @override
  String get feedbackBack => 'Terug';

  @override
  String feedbackError(String error) {
    return 'Fout met stuur: $error';
  }

  @override
  String get feedbackRetry => 'Probeer weer';

  @override
  String get feedbackSettingsTitle => 'Stuur Terugvoer';

  @override
  String get feedbackSettingsSubtitle =>
      'Rapporteer foute, stel verbeterings voor, of maak vertalings reg';

  @override
  String get aiEnergy => 'AI Energie';

  @override
  String get searchInConversation => 'Soek in gesprek...';

  @override
  String get noMessagesFound => 'Geen boodskappe gevind nie';

  @override
  String get suggestedQuestions => 'Voorgestelde vrae:';

  @override
  String get shoppingAssistant => 'Inkopie-assistent';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased van $total gekoop';
  }

  @override
  String get estimatedCost => 'Geskatte';

  @override
  String get viewItems => 'Bekyk items';

  @override
  String get noItemsInList => 'Geen items in die lys nie';

  @override
  String get longHistoryWarning =>
      'Lang geskiedenis: die assistent fokus op die nuutste boodskappe vir beter prestasie.';

  @override
  String get listening => 'Luister tans...';

  @override
  String get addDirectToList => 'Voeg direk by lys';

  @override
  String get unlockFullResponse => 'Ontsluit volle reaksie';

  @override
  String get switchList => 'Verother lys';

  @override
  String get marketMode => 'Markmodus';

  @override
  String get backToChat => 'Terug na Chat';

  @override
  String get finishShopping => 'Voltooi inkopies';

  @override
  String get welcomeAiAssistant => 'Welkom by AI Assistant';

  @override
  String get createListToStartAi =>
      'Skep \'n inkopielys om die slimklets te begin gebruik.';

  @override
  String get howCanIHelp => 'Hoe kan ek help?';

  @override
  String get chatSubtitleShort => 'Vra oor pryse, resepte, organisasie...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total gekoop';
  }

  @override
  String get quickReplies => 'Vinnige antwoorde:';

  @override
  String get voiceProFeature =>
      'Gevorderde stemopdragte is Pro. Aktiveer tans basiese diktee …';

  @override
  String get viewPro => 'Bekyk Pro';

  @override
  String get errorLoadingChat =>
      'Oeps! Iets het verkeerd geloop om die klets te laai.';

  @override
  String get errorLoadingChatSubtitle =>
      'Gaan jou verbinding na of probeer later weer.';

  @override
  String get errorOscillation =>
      'Dit kan voorkom as gevolg van netwerkossillasies of tydelike onbeskikbaarheid. Probeer asseblief weer.';

  @override
  String get activeListening => 'Aktiewe luister';

  @override
  String get whatToDoWithItem => 'Wat wil jy graag met hierdie item doen?';

  @override
  String get viewDetails => 'Bekyk besonderhede';

  @override
  String get openMenu => 'Maak spyskaart oop';

  @override
  String get viewRecipe => 'Bekyk resep';

  @override
  String get recipeCreated => 'Resep geskep!';

  @override
  String get editRecipe => 'Wysig';

  @override
  String get deleteRecipe => 'Verwyder';

  @override
  String get deleteRecipeConfirm => 'Verwyder hierdie resep?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Is jy seker jy wil \"$recipeName\" verwyder? Hierdie aksie kan nie ongedaan gemaak word nie.';
  }

  @override
  String get ingredients => 'Bestanddele';

  @override
  String get instructions => 'Instruksies';

  @override
  String get prepTime => 'Voorbereidingstyd';

  @override
  String get recipeSaved => 'Resep gestoor!';

  @override
  String get noRecipesSaved => 'Geen resepte gestoor nie';

  @override
  String get noRecipesSavedHint =>
      'Skep jou eerste pasgemaakte resep deur op die knoppie hieronder te tik.';

  @override
  String get myRecipes => 'My resepte';

  @override
  String get newRecipe => 'Nuwe resep';

  @override
  String get loadingRecipes => 'Laai tans jou resepte...';

  @override
  String get errorLoadingRecipes => 'Fout met laai van resepte';

  @override
  String get addIngredient => 'Voeg bestanddeel by';

  @override
  String get saveRecipe => 'Stoor';

  @override
  String get recipeName => 'Resepnaam';

  @override
  String get shortDescription => 'Kort beskrywing';

  @override
  String get prepTimeMinutes => 'Voorbereidingstyd (minute)';

  @override
  String get instructionsHint => 'Tik een stap per reël...';

  @override
  String get addPhoto => 'Voeg foto by';

  @override
  String get imageUrlPlaceholder => 'Of plak \'n beeld-URL';

  @override
  String get tags => 'Etikette';

  @override
  String get recipeTags => 'Resep-etikette';

  @override
  String get suggestedTags => 'Voorgestel';

  @override
  String get searchRecipes => 'Soek resepte...';

  @override
  String get filterByTag => 'Filtreer volgens etiket';

  @override
  String get allTags => 'Alle';

  @override
  String get recipeDeleted => 'Resep verwyder';

  @override
  String get saveChanges => 'Stoor verotheringe';

  @override
  String get editRecipeTitle => 'Wysig resep';

  @override
  String get newRecipeTitle => 'Nuwe resep';

  @override
  String get requiredField => 'Vereis';

  @override
  String get chooseImageSource => 'Kies beeldbron';

  @override
  String get gallery => 'Galery';

  @override
  String get enterUrl => 'Voer URL in';

  @override
  String get recipeImage => 'Resepbeeld';

  @override
  String get removeImage => 'Verwyder beeld';

  @override
  String get mealPlannerTitle => 'Maaltydbeplanner';

  @override
  String get mealPlannerViewMonthly => 'Maandelikse aansig';

  @override
  String get mealPlannerViewWeekly => 'Weeklikse aansig';

  @override
  String get mealPlannerNoMeals => 'Geen maaltye beplan nie';

  @override
  String get mealPlannerNoMealsHint =>
      'Tik op \'n dag om \'n maaltyd by te voeg';

  @override
  String get mealPlannerLoading => 'Laai tans maaltydplan...';

  @override
  String get mealPlannerError => 'Fout met laai van maaltydplan';

  @override
  String get mealPlannerAddMeal => 'Voeg maaltyd by';

  @override
  String get mealPlannerEditMeal => 'Wysig maaltyd';

  @override
  String get mealPlannerDeleteMeal => 'Verwyder maaltyd';

  @override
  String get mealPlannerMealDeleted => 'Maaltyd verwyder';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porsies',
      one: '$count porsie',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porsies';

  @override
  String get mealPlannerNoteLabel => 'Nota (opsioneel)';

  @override
  String get mealPlannerSelectRecipe => 'Kies \'n resep';

  @override
  String get mealPlannerSearchRecipes => 'Soek resepte...';

  @override
  String get mealPlannerNoRecipesFound => 'Geen resepte gevind nie';

  @override
  String get mealPlannerNoRecipesHint =>
      'Skep eers resepte in die Resepte-oortjie';

  @override
  String get mealPlannerSave => 'Voeg by plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count van $total maaltye beplan';
  }

  @override
  String get mealPlannerGenerateList => 'Genereer inkopielys';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Voeg alle bestanddele van beplande maaltye hierdie week by jou inkopielys?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count bestanddeel(e) by jou lys gevoeg!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Geen bestanddele om by te voeg nie. Beplan eers \'n paar maaltye met resepte.';

  @override
  String get mealPlannerGenerateListNoList => 'Skep eers \'n inkopielys.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Ontbyt';

  @override
  String get mealPlannerMealTypeLunch => 'Middagete';

  @override
  String get mealPlannerMealTypeDinner => 'Aandete';

  @override
  String get mealPlannerMealTypeSnack => 'Peuselhappie';

  @override
  String get mealPlannerDateLabel => 'Datum';

  @override
  String get mealPlannerWeekEmpty => 'Niks beplan vir hierdie week nie';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tik op enige dag om jou maaltye te begin beplan!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Nooi na lys';

  @override
  String get shareApp => 'Deel app';

  @override
  String get shareAppDescription => 'Nooi vriende om KipiList te gebruik';

  @override
  String shareReferralText(String url) {
    return 'Ek gebruik KipiList om my inkopies te organiseer! Laai af via my skakel en ons kry albei 7 dae se Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Kry 7 dae se KipiList Premium!';

  @override
  String get gestureHint => 'Hou om te kies • Swiep om te verwyder';

  @override
  String get catalogTitle => 'Katalogus';

  @override
  String get catalogMyFrequents => 'My gereelde';

  @override
  String get catalogSearchGlobal => 'Soek enige produk...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Soek in $category...';
  }

  @override
  String get catalogSortPopular => 'Gewildste';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Onderdane';

  @override
  String get catalogRareSection => 'minder algemeen in jou land';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Voeg $count $_temp0 by →';
  }

  @override
  String get catalogProductNotFound => 'Produk nie gevind nie, tik die naam in';

  @override
  String get catalogBrowse => 'Blaai deur Katalogus';

  @override
  String get offlineBanner => 'Jy is vanlyn';

  @override
  String get consentTitle => 'Privaatheid en analise';

  @override
  String get consentBody =>
      'KipiList gebruik Firebase Analytics om jou ervaring te verbeter. Jou data word volgens ons Privaatheidsbeleid verwerk.';

  @override
  String get consentAccept => 'Aanvaar';

  @override
  String get consentDecline => 'Nee, dankie';

  @override
  String get mealPlannerPantryAllAvailable => 'Alle bestanddele beskikbaar';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 ontbreek';
  }

  @override
  String get expirationDate => 'Vervaldatum';

  @override
  String get notInformed => 'Nie gestel nie';

  @override
  String get skip => 'Slaan oor';

  @override
  String get onboardingAiTitle => 'Gesels met Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hallo! Ek is Kipi, jou persoonlike inkopie-assistent! 🛒';

  @override
  String get onboardingAiAskName => 'Wat is jou naam?';

  @override
  String get onboardingAiNameHint => 'Tik jou naam...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Lekker om jou te ontmoet, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Wat is jou gunsteling kos?';

  @override
  String get onboardingAiFoodHint => 'bv. Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Groot keuses! Hier is wat ek by jou lys sal voeg:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm => 'Lyk dit goed? Probeer iets others tik!';

  @override
  String get onboardingAiReady =>
      'Puik! Jy is gereed om te begin. Kom ons stel jou rekening op!';

  @override
  String get onboardingAiContinue => 'Gaan voort →';

  @override
  String get connectionError => 'Verbindingsfout';

  @override
  String connectionErrorDesc(String error) {
    return 'Fout: $error';
  }

  @override
  String get errorLoadingLists => 'Kon nie lyste laai nie';

  @override
  String get noListsFound => 'Geen lyste gevind nie';

  @override
  String get backToToday => 'Terug na vandag';

  @override
  String get quickSuggestions => 'Vinnige voorstelle';

  @override
  String get aiEnergyLow => 'Lae KI-energie';

  @override
  String get aiUnlockUnlimited => 'Ontsluit onbeperkte AI';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 vandag';
  }

  @override
  String get aiSubscribeUnlimited => 'Teken in vir onbeperkte KI';

  @override
  String get unlockWithAd => 'Ontsluit met advertensie';

  @override
  String get conversationHistoryTitle => 'Gesprek geskiedenis';

  @override
  String get noConversationsFound => 'Geen gesprekke gevind nie';

  @override
  String get errorLoadingHistory => 'Kon nie geskiedenis laai nie';

  @override
  String get deleteConversationTitle => 'Vee gesprek uit';

  @override
  String get deleteConversationConfirm =>
      'Hierdie handeling kan nie ontdoen word nie.';

  @override
  String get deleteConversation => 'Vee uit';

  @override
  String get subscription => 'Intekening';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle => 'Ontsluit Premium';

  @override
  String get loadingSubscription => 'Laai tans intekening …';

  @override
  String get errorLoadingSubscription => 'Kon nie intekening laai nie';

  @override
  String get profileSection => 'Profiel';

  @override
  String get myProfile => 'My profiel';

  @override
  String get profileSubtitle => 'Jou profielinligting';

  @override
  String get customizeAiAssistant => 'Pas AI-assistent aan';

  @override
  String get assistantHistory => 'Assistent-geskiedenis';

  @override
  String get assistantHistorySubtitle => 'Bekyk jou gesprekgeskiedenis';

  @override
  String get manageCategories => 'Bestuur kategorieë';

  @override
  String get manageCategoriesSubtitle =>
      'Voeg kategorieë by, wysig of verwyder';

  @override
  String get customizeAssistant => 'Pasmaak';

  @override
  String get assistantName => 'Assistent-naam';

  @override
  String get chooseIcon => 'Kies ikoon';

  @override
  String get profileSaved => 'Profiel gestoor';

  @override
  String get errorSavingProfile => 'Kon nie profiel stoor nie';

  @override
  String get userProfile => 'Gebruikersprofiel';

  @override
  String get profileDescription => 'Profielbeskrywing';

  @override
  String get preferredMarket => 'Voorkeur mark';

  @override
  String get preferredMarketHint => 'Waar koop jy gewoonlik inkopies?';

  @override
  String get dietaryRestrictions => 'Dieetbeperkings';

  @override
  String get dietaryRestrictionsHint => 'Enige dieetbeperkings?';

  @override
  String get marketsToAvoid => 'Markte om te vermy';

  @override
  String get marketsToAvoidHint =>
      'Markte by wie jy verkies om nie inkopies te doen nie';

  @override
  String get observations => 'Waarnemings';

  @override
  String get observationsHint => 'Enige bykomende notas?';

  @override
  String get saveProfile => 'Stoor profiel';

  @override
  String get everythingReady => 'Alles gereed!';

  @override
  String get youCompletedList => 'Jy het die lys voltooi!';

  @override
  String get selectCheaperAlternative => 'Kies goedkoper alternatief';

  @override
  String get suggestedItems => 'Voorgestelde items';

  @override
  String get swapped => 'Omgeruil';

  @override
  String get swap => 'Ruil';

  @override
  String get chooseThemeColor => 'Kies tema kleur';

  @override
  String get manageCategoriesTitle => 'Bestuur kategorieë';

  @override
  String get categoryLimitReached => 'Kategorielimiet bereik';

  @override
  String get deleteCategoryTitle => 'Vee kategorie uit';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Items in \"$category\" sal na \"Ander\" geskuif word.\nGaan voort?';
  }

  @override
  String get deleteCategory => 'Vee uit';

  @override
  String get newCategoryDialog => 'Nuwe kategorie';

  @override
  String get editCategoryDialog => 'Wysig kategorie';

  @override
  String get categoryName => 'Kategorie naam';

  @override
  String get categoryNameHint => 'Voer kategorienaam in';

  @override
  String get categoryColorLabel => 'Kleur';

  @override
  String get categoryIconLabel => 'Ikoon';

  @override
  String itemAddedSnack(String name) {
    return '$name bygevoeg';
  }

  @override
  String get kipiQuickBarHint => 'Wat moet jy koop?';

  @override
  String replaceItem(String item) {
    return 'Vervang $item';
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
      'Moet nooit weer \'n kruideniersware item vergeet nie';

  @override
  String get onboardingGoalSaveMoney => 'Spaar geld';

  @override
  String get onboardingGoalNeverForget => 'Moet nooit items vergeet nie';

  @override
  String get onboardingGoalFaster => 'Koop vinniger';

  @override
  String get onboardingGoalFamily => 'Organiseer gesinsinkopies';

  @override
  String get onboardingGoalRecipes => 'Ontdek resepte';

  @override
  String get onboardingGoalPantry => 'Spoor spens';

  @override
  String get onboardingCommitmentsTitle => 'Wat maak vir jou saak?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Kies jou doelwitte om KipiList te verpersoonlik';

  @override
  String get onboardingCommitmentsCta => 'Kom ons gaan!';

  @override
  String get onboardingPersonalizationNameLabel => 'Jou naam';

  @override
  String get onboardingPersonalizationNameHint => 'Voer jou naam in';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Waarvoor koop jy?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Vir wie doen jy inkopies?';

  @override
  String get onboardingCategoryGrocery => 'Kruideniersware';

  @override
  String get onboardingCategoryPharmacy => 'Apteek';

  @override
  String get onboardingCategoryRecipes => 'Resepte';

  @override
  String get onboardingCategoryHome => 'Tuis';

  @override
  String get onboardingCategoryPet => 'Troeteldier';

  @override
  String get onboardingGroupSolo => 'Net ek';

  @override
  String get onboardingGroupCouple => 'Paartjie';

  @override
  String get onboardingGroupFamily => 'Familie';

  @override
  String get onboardingLoadingTitle => 'Berei tans jou ervaring voor...';

  @override
  String get onboardingLoadingStep1 => 'Ontleed tans jou voorkeure...';

  @override
  String get onboardingLoadingStep2 => 'Stel tans KI-assistent op...';

  @override
  String get onboardingLoadingStep3 => 'Amper gereed...';

  @override
  String get onboardingLoadingStat1Label => 'Items gekatalogiseer';

  @override
  String get onboardingLoadingStat2Label => 'Gebruikers het gehelp';

  @override
  String get onboardingLoadingStat3Label => 'Minute gestoor';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, bespaar op elke reis!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, moet nooit \'n item vergeet nie!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, koop in die helfte van die tyd!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organiseer gesinsinkopies!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, ontdek nuwe resepte!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, hou jou spens perfek dop!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Bespaar op elke reis!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Moet nooit \'n item vergeet nie!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'Koop in die helfte van die tyd!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Organiseer gesinsinkopies!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Ontdek nuwe resepte!';

  @override
  String get paywallGoalHeadlineNoNamePantry => 'Volg jou spens perfek!';

  @override
  String paywallPricePerDay(String price) {
    return 'Slegs $price/dag — minder as \'n koffie';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Slaan vir eers oor';

  @override
  String get paywallTestimonial =>
      'KI organiseer my inkopies binne sekondes. Ek spaar 20 min per reis.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Kanselleer enige tyd · Geen koste totdat jou proeftydperk eindig nie';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Haai $name! Watter $category het jy nodig?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Watter $category het jy nodig?';
  }

  @override
  String get onboardingAiDemoYes => 'Ja!';

  @override
  String get onboardingAiDemoReaction => 'Lekker!';

  @override
  String get onboardingAiDemoChange => 'Verother item';

  @override
  String get onboardingAiDemoOffer => 'Probeer iets others tik!';

  @override
  String get onboardingAiDemoContinue => 'Gaan voort';

  @override
  String get onboardingAiDemoSlideHeadline => 'Jou inkopielys, nou met KI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Kyk hoe Kipi jou volledige lys binne sekondes bou';

  @override
  String get onboardingAiDemoSlideCta => 'Ek wil dit hê! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'Ek bied \'n braai aan 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Klaar! Hier is alles wat jy nodig het:';

  @override
  String get onboardingAiDemoSlideDone => 'Voltooi lys in sekondes ✨';

  @override
  String get onboardingPainTitle => 'Wat frustreer jou die meeste?';

  @override
  String get onboardingPainSubtitle => 'Wees eerlik – ons sal elkeen regmaak';

  @override
  String get onboardingPainCta => 'Ja, maak dit vir my reg →';

  @override
  String get onboardingPainForget => 'Ek vergeet items by die winkel';

  @override
  String get onboardingPainFamily => 'My familie sien nooit die lys nie';

  @override
  String get onboardingPainOverspend => 'Ek gaan altyd oor begroting';

  @override
  String get onboardingPainRepeat => 'Een reis is nooit genoeg nie';

  @override
  String get aiWelcomeContent =>
      'Hallo! 👋 Ek is **Kipi**, jou persoonlike inkopie- en resepassistent!\n\nEk is hier om jou te help:\n🛒 **Organiseer** jou inkopies outomaties volgens kategorieë\n💰 ** Volg** jou begroting en gee jou wenke om geld te bespaar\n🍲 **Stel voor** heerlike resepte met wat jy reeds het\n\nHoe kan ek jou vandag help? Jy kan begin deur jou eerste lys te skep!';

  @override
  String get aiWelcomeSuggestCreateList => 'Skep my eerste lys';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, help my om my eerste inkopielys te skep';

  @override
  String get aiWelcomeSuggestSave => 'Hoe om geld te spaar?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, hoe kan jy my help om geld op kruideniersware te spaar?';

  @override
  String get suggestionMilk => 'Melk';

  @override
  String get suggestionBread => 'Brood';

  @override
  String get suggestionEggs => 'Eiers';

  @override
  String get suggestionCoffee => 'Koffie';

  @override
  String get suggestionRice => 'Rys';

  @override
  String get suggestionFruits => 'Vrugte';
}
