// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'Pirkinių sąrašas';

  @override
  String get lists => 'Sąrašai';

  @override
  String get pantry => 'Sandėliukas';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Receptai';

  @override
  String get navLists => 'Sąrašai';

  @override
  String get navMealPlanner => 'Meniu';

  @override
  String get cancel => 'Atšaukti';

  @override
  String get save => 'Išsaugoti';

  @override
  String get create => 'Sukurti';

  @override
  String get add => 'Pridėti';

  @override
  String get remove => 'Pašalinti';

  @override
  String get delete => 'Ištrinti';

  @override
  String get edit => 'Redaguoti';

  @override
  String get copy => 'Kopijuoti';

  @override
  String get next => 'Kitas';

  @override
  String get retry => 'Bandyti dar kartą';

  @override
  String get regenerate => 'Atkurti';

  @override
  String get copiedToClipboard => 'Nukopijuota į iškarpinę';

  @override
  String get confirm => 'Patvirtinti';

  @override
  String get close => 'Uždaryti';

  @override
  String get import => 'Importuoti';

  @override
  String get rename => 'Pervadinti';

  @override
  String get upgrade => 'Atnaujinti';

  @override
  String get clear => 'Išvalyti';

  @override
  String error(String message) {
    return 'Klaida: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Klaida: $message';
  }

  @override
  String get purchaseError => 'Klaida apdorojant pirkimą. Bandykite dar kartą.';

  @override
  String get restoreError => 'Klaida atkuriant pirkimus. Bandykite dar kartą.';

  @override
  String get loading => 'Įkeliama...';

  @override
  String get fieldRequired => 'Privalomas laukas';

  @override
  String get addedFeedback => 'Pridėta!';

  @override
  String get profile => 'Profilis';

  @override
  String get exitShoppingMode => 'Išeikite iš apsipirkimo režimo';

  @override
  String get exit => 'Išeiti';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pasirinkta',
      few: '$count pasirinkti',
      one: '$count pasirinktas',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Numatoma';

  @override
  String get alreadyPurchased => 'Jau nupirkta';

  @override
  String get clearList => 'Išvalyti sąrašą';

  @override
  String get clearPurchased => 'Išvalyti nupirktus';

  @override
  String get share => 'Dalintis';

  @override
  String get shareViaCode => 'Dalintis per kodą';

  @override
  String get importViaCode => 'Importuoti per kodą';

  @override
  String get listAssistant => 'Sąrašo asistentas';

  @override
  String get globalAssistant => 'Globalus asistentas';

  @override
  String get becomePremium => 'Tapkite Premium';

  @override
  String get manageSubscription => 'Valdyti prenumeratą';

  @override
  String get completePurchase => 'Užbaigti pirkimą';

  @override
  String get confirmClearList => 'Pašalinti visas prekes?';

  @override
  String get shareListTitle => 'Dalintis sąrašu';

  @override
  String get shareThisCode => 'Pasidalinkite šiuo kodu:';

  @override
  String get validForLimitedTime => 'Galioja ribotą laiką';

  @override
  String get importListTitle => 'Importuoti sąrašą';

  @override
  String get enterCodeHint => 'Įveskite kodą';

  @override
  String get confirmArchiveTitle => 'Užbaigti pirkimą';

  @override
  String get confirmArchiveContent =>
      'Užbaigti šį pirkimą ir archyvuoti sąrašą?';

  @override
  String get complete => 'Užbaigti';

  @override
  String get listArchived => 'Sąrašas sėkmingai archyvuotas!';

  @override
  String listAdded(String listName) {
    return '$listName pridėta!';
  }

  @override
  String get buy => 'Pirkti';

  @override
  String get unmark => 'Panaikinti žymėjimą';

  @override
  String confirmDeleteItems(int count) {
    return 'Pašalinti $count prekę(-es)?';
  }

  @override
  String get confirmDeleteTitle => 'Patvirtinti';

  @override
  String confirmContent(int count) {
    return 'Pašalinti $count prekę(-es)?';
  }

  @override
  String get archiveList => 'Archyvuoti sąrašą';

  @override
  String get pantryAppBar => 'Sandėliukas';

  @override
  String get generateShoppingList => 'Sukurti pirkinių sąrašą';

  @override
  String get pantryEmpty => 'Tuščias sandėliukas';

  @override
  String get pantryEmptySubtitle =>
      'Pridėkite produktų, kuriuos norite laikyti namuose';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit prekę(-es) reikia nusipirkti';
  }

  @override
  String get noItemsToBuy => 'Nereikia nieko pirkti';

  @override
  String get newPantryList => 'Sandėliuko pirkiniai';

  @override
  String get newListTitle => 'Naujas pirkinių sąrašas';

  @override
  String itemsWillBeAdded(int count) {
    return '$count prekė(-ės) bus pridėta';
  }

  @override
  String get listNameLabel => 'Sąrašo pavadinimas';

  @override
  String listCreated(String name, int count) {
    return 'Sąrašas \"$name\" sukurtas su $count prekėmis';
  }

  @override
  String get noTracking => 'Be sekimo';

  @override
  String get markAsPurchased => 'Pažymėti kaip nupirkta';

  @override
  String editPantryItem(String name) {
    return 'Redaguoti $name';
  }

  @override
  String get idealQuantity => 'Idealus kiekis';

  @override
  String get currentQuantity => 'Dabartinis kiekis';

  @override
  String get consumed => 'Suvartota';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name papildytas iki $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Pašalinti \"$name\" iš sandėliuko?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Redaguoti $name';
  }

  @override
  String get settingsAppBar => 'Nustatymai';

  @override
  String get language => 'Kalba';

  @override
  String get languagePortuguese => 'portugalų k. (Brazilija)';

  @override
  String get languageEnglish => 'anglų kalba';

  @override
  String get languageSystem => 'Sistemos numatytoji';

  @override
  String get chooseLanguage => 'Pasirinkite kalbą';

  @override
  String get searchLanguage => 'Ieškoti kalbos...';

  @override
  String get currency => 'Valiuta';

  @override
  String get chooseCurrency => 'Pasirinkite Valiuta';

  @override
  String get searchCurrency => 'Ieškoti valiutos...';

  @override
  String get appearance => 'Išvaizda';

  @override
  String get light => 'Šviesi';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Tamsi';

  @override
  String get themeColor => 'Temos spalva';

  @override
  String get dynamicColors => 'Dinaminės spalvos';

  @override
  String get dynamicColorsSubtitle => 'Naudoti spalvas pagal jūsų ekrano foną';

  @override
  String get dynamicColorsEnabledWarning =>
      'Išjunkite dinamines spalvas, kad temos spalva įsigaliotų';

  @override
  String get finance => 'Finansai';

  @override
  String get monthlyBudgetNav => 'Mėnesio biudžetas';

  @override
  String get budgetSubtitle => 'Stebėkite savo mėnesio išlaidas';

  @override
  String get data => 'Duomenys';

  @override
  String get backupNav => 'Atsarginė kopija';

  @override
  String get backupSubtitle => 'Eksportuokite arba importuokite savo duomenis';

  @override
  String get about => 'Apie';

  @override
  String get version => 'Versija';

  @override
  String get privacy => 'Privatumas';

  @override
  String get termsOfUse => 'Naudojimo sąlygos';

  @override
  String get backupTitle => 'Atsarginė kopija';

  @override
  String get backupPremiumDescription =>
      'Atsarginė kopija ir eksportavimas yra premium funkcija';

  @override
  String get exportData => 'Eksportuoti duomenis';

  @override
  String get exportDataSubtitle => 'Išsaugoti visus sąrašus kaip JSON';

  @override
  String get importData => 'Importuoti duomenis';

  @override
  String get importDataSubtitle => 'Atkurti sąrašus iš JSON';

  @override
  String get importJsonTitle => 'Importuoti JSON';

  @override
  String get importJsonHint => 'Įklijuokite atsarginę JSON kopiją čia...';

  @override
  String get backupExported => 'Atsarginė kopija eksportuota!';

  @override
  String get budgetAppBar => 'Mėnesio biudžetas';

  @override
  String get budgetPremiumLocked => 'Globalus mėnesio biudžetas yra premium';

  @override
  String get budgetUpgradePrompt => 'Atnaujinkite, kad atrakintumėte';

  @override
  String get noBudgetDefined => 'Nenustatytas biudžetas';

  @override
  String totalEstimated(String amount) {
    return 'Numatoma suma: $amount';
  }

  @override
  String get setBudgetButton => 'Nustatyti biudžetą';

  @override
  String get budgetLists => 'Sąrašai';

  @override
  String get budgetValueLabel => 'Suma';

  @override
  String get setBudgetTitle => 'Mėnesio biudžetas';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Visi';

  @override
  String get filterPending => 'Laukiantys';

  @override
  String get filterPurchased => 'Nupirkta';

  @override
  String get sortName => 'Pavadinimas';

  @override
  String get sortCategory => 'Kategorija';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Rankinis';

  @override
  String get addItem => 'Pridėti prekę';

  @override
  String get itemName => 'Prekės pavadinimas';

  @override
  String get quantityShort => 'Kiekis';

  @override
  String get unit => 'Vienetas';

  @override
  String get category => 'Kategorija';

  @override
  String get estimatedPrice => 'Numatoma kaina';

  @override
  String get addItemPrice => 'Numatoma kaina';

  @override
  String get editItem => 'Redaguoti prekę';

  @override
  String get quantityFull => 'Kiekis';

  @override
  String get editItemPrice => 'Numatoma kaina';

  @override
  String get addToPantry => 'Pridėti į sandėliuką';

  @override
  String addToPantryPrompt(String name) {
    return 'Pridėti \"$name\" į jūsų sandėliuką?';
  }

  @override
  String get yes => 'Taip';

  @override
  String get productName => 'Produkto pavadinimas';

  @override
  String get idealQty => 'Idealus kiekis';

  @override
  String get currentQty => 'Dabartinis kiekis';

  @override
  String get trackStock => 'Sekti atsargas';

  @override
  String get trackStockActive => 'Rodoma pirkimo pasiūlymuose';

  @override
  String get trackStockInactive => 'Negeneruoja pirkimo pasiūlymų';

  @override
  String get createListDialog => 'Sukurti sąrašą';

  @override
  String get renameListDialog => 'Pervadinti sąrašą';

  @override
  String get listHistory => 'Sąrašų istorija';

  @override
  String get myLists => 'Mano sąrašai';

  @override
  String get viewActive => 'Žiūrėti aktyvius';

  @override
  String get viewHistory => 'Žiūrėti istoriją';

  @override
  String get noArchivedLists => 'Nėra archyvuotų sąrašų';

  @override
  String get noActiveLists => 'Nėra aktyvių sąrašų';

  @override
  String completedOn(String date) {
    return 'Užbaigta $date';
  }

  @override
  String get sharedLabel => 'Bendrinamas';

  @override
  String get restore => 'Atkurti';

  @override
  String get removeSharedTooltip => 'Pašalinti';

  @override
  String get deleteListTitle => 'Ištrinti sąrašą';

  @override
  String deleteListContent(String name) {
    return 'Ar tikrai norite ištrinti \"$name\"? Visos prekės bus pašalintos.';
  }

  @override
  String get removeSharedListTitle => 'Pašalinti bendrinamą sąrašą';

  @override
  String removeSharedListContent(String name) {
    return 'Pašalinti \"$name\" iš jūsų sąrašų? Originalus sąrašas nebus paveiktas.';
  }

  @override
  String get createNewList => 'Sukurti naują sąrašą';

  @override
  String get aiAssistant => 'AI asistentas';

  @override
  String get aiAssistantDescription =>
      'Gaukite protingų pasiūlymų, receptų ir asmeninių patarimų iš mūsų AI asistento.';

  @override
  String get generalAssistant => 'Bendrasis asistentas';

  @override
  String get newChat => 'Naujas pokalbis';

  @override
  String get noHistory => 'Nėra pokalbių istorijos';

  @override
  String get deleteSession => 'Ištrinti pokalbį';

  @override
  String get deleteSessionConfirm =>
      'Ar tikrai norite ištrinti šį pokalbį? Pranešimai bus visam laikui prarasti.';

  @override
  String get clearHistory => 'Išvalyti istoriją';

  @override
  String get clearHistoryConfirm => 'Išvalyti visus šios sesijos pranešimus?';

  @override
  String get chatHint => 'Įrašykite savo žinutę...';

  @override
  String get chatHintBlocked => 'Atrakinkite AI, kad galėtumėte kalbėtis';

  @override
  String chatError(String error) {
    return 'Klaida įkeliant pokalbį: $error';
  }

  @override
  String get listHelp => 'Kaip galiu padėti su jūsų sąrašu?';

  @override
  String get generalHelp => 'Kaip galiu padėti jums apsipirkti šiandien?';

  @override
  String get chatSubtitle =>
      'Klauskite prekių pasiūlymų, receptų ar taupymo patarimų.';

  @override
  String get aiError =>
      'Atsiprašome, įvyko klaida apdorojant jūsų užklausą. Patikrinkite ryšį arba bandykite dar kartą vėliau.';

  @override
  String get aiLimitAlmostReached => 'Beveik baigėsi AI pranešimai';

  @override
  String get unlockAi => 'Atrakinkite neribotą AI';

  @override
  String get aiTeaserFallback =>
      'Prenumeruokite „Premium“, kad atrakintumėte visą atsakymą ir gautumėte neribotus AI patarimus, kaip apsipirkti...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt =>
      'Prisijunkite, kad atrakintumėte\npremium funkcijas';

  @override
  String get signInGoogle => 'Prisijungti su Google';

  @override
  String get signInApple => 'Prisijungti su Apple';

  @override
  String get continueAsGuest => 'Tęsti kaip svečias';

  @override
  String get onboardingWelcomeTitle => 'Sveiki atvykę į „KipiList“.';

  @override
  String get onboardingWelcomeDesc =>
      'Protingiausias būdas organizuoti apsipirkimą ir sutaupyti pinigų.';

  @override
  String get onboardingSetupTitle => 'Suasmeninkite savo patirtį';

  @override
  String get onboardingSetupDesc =>
      'Pasirinkite, kaip norite, kad „KipiList“ atrodytų ir veiktų jums.';

  @override
  String get onboardingLoginTitle => 'Išsaugokite viską debesyje';

  @override
  String get onboardingLoginDesc =>
      'Jūsų duomenys sinchronizuojami visuose įrenginiuose';

  @override
  String get onboardingShareTitle => 'Pasidalinkite su tais, kuriuos mylite';

  @override
  String get onboardingShareDesc =>
      'Sinchronizuokite sąrašus su šeima ir draugais realiuoju laiku';

  @override
  String get onboardingPremiumTitle => 'Atrakinkite visas funkcijas';

  @override
  String get onboardingPremiumSubtitle =>
      'Išnaudokite visas savo pirkinių sąrašų galimybes';

  @override
  String get onboardingAnnualBadge => 'Geriausia vertė';

  @override
  String get onboardingMonthlyLabel => 'Kas mėnesį';

  @override
  String get onboardingAnnualLabel => 'Metinis';

  @override
  String get onboardingViewAllPlans => 'Peržiūrėkite visus planus';

  @override
  String get onboardingSubscribeCta => 'Prenumeruoti';

  @override
  String get onboardingCancelAnytime =>
      'Atšaukti bet kada. Jokio įsipareigojimo.';

  @override
  String get onboardingContinueAsGuest => 'Tęsti kaip svečias';

  @override
  String get onboardingRestore => 'Atkurti';

  @override
  String get onboardingRestoreDesc =>
      'Jau turite prenumeratą? Bakstelėkite čia, kad jį atkurtumėte.';

  @override
  String get onboardingExit => 'Išeiti';

  @override
  String get onboardingPersonalizationTitle => 'Susipažinkime';

  @override
  String get onboardingPersonalizationDesc =>
      'Tai naudosime siekdami suasmeninti jūsų pasiūlymus ir padaryti apsipirkimą išmanesniu.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Koks tavo mėgstamiausias maistas?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'pvz. Pica, Sušiai, Lazanija...';

  @override
  String get onboardingPersonalizationCta => 'Tęsti';

  @override
  String get onboardingPersonalizationSkip => 'Kol kas praleiskite';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Jei norite tęsti, pasakykite mums savo mėgstamą maistą';

  @override
  String get settingsDefaultScreen => 'Numatytasis pradinis ekranas';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Pasirinkite pirkinių sąrašą arba AI pokalbį';

  @override
  String get settingsScreenList => 'Pirkinių sąrašas';

  @override
  String get settingsScreenChat => 'AI pokalbis';

  @override
  String loginError(String error) {
    return 'Prisijungimo klaida: $error';
  }

  @override
  String get paywallTitle => '„KipiList Premium“.';

  @override
  String get paywallLoadingError =>
      'Įkeliant pasiūlymus įvyko klaida. Bandykite dar kartą.';

  @override
  String get paywallPurchaseError =>
      'Nepavyko užbaigti pirkimo. Bandykite dar kartą.';

  @override
  String get paywallRestoreError =>
      'Nerasta aktyvios prenumeratos, kurią būtų galima atkurti.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DIENOS NEMOKAMAI';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count SAVAITĖS NEMOKAMA',
      one: '$count NEMOKAMA SAVAITĖ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MĖNESIO NEMOKAMAI',
      one: '$count MĖNESIO NEMOKAMAI',
    );
    return '$_temp0';
  }

  @override
  String get paywallFeaturesTitle => 'Viskas ko reikia:';

  @override
  String get paywallFeatureUnlimitedLists => 'Neriboti sąrašai';

  @override
  String get paywallFeatureSmartAI => 'Išmanusis AI';

  @override
  String get paywallFeatureExpenseControl => 'Išlaidų kontrolė';

  @override
  String get paywallFeatureSharing => 'Dalijimasis';

  @override
  String get paywallBeforeAfterTitle => 'AI prieš ir po:';

  @override
  String get paywallLabelCommon => 'Dažnas';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'ryžių';

  @override
  String get paywallBeforeItem2 => 'muilas';

  @override
  String get paywallBeforeItem3 => 'mėsa';

  @override
  String get paywallBeforeItem4 => 'duona';

  @override
  String get paywallAfterItem1 => 'Grūdai';

  @override
  String get paywallAfterItem2 => 'Valymas';

  @override
  String get paywallAfterItem3 => 'Mėsos';

  @override
  String get paywallAfterItem4 => 'Kepyklėlė';

  @override
  String get paywallTestimonialsTitle => 'Ką sako mūsų vartotojai:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI sutvarko mano apsipirkimą per kelias sekundes. Sutaupau 20 min vienai kelionei į turgų.';

  @override
  String get paywallTestimonial2Name => 'Charlesas M.';

  @override
  String get paywallTestimonial2Text =>
      'Niekada daugiau nepamiršau sąrašo elemento. AI pokalbis yra sensacingas!';

  @override
  String get paywallSocialProof => 'Ja naudojasi +2 400 šeimų';

  @override
  String get paywallCtaUnlock => 'Atrakinkite PRO';

  @override
  String get paywallBestValue => 'GERIAUSIA VERTĖ';

  @override
  String get paywallMostPopular => 'POPULIARIAUSI';

  @override
  String get paywallSafeCheckout => 'Saugus mokėjimas';

  @override
  String get paywallSelectPlan => 'Pasirinkite savo planą:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SUTAUPYTI $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Tik $price/mėn';
  }

  @override
  String get paywallPackageAnnual => 'Metinis planas';

  @override
  String get paywallPackageMonthly => 'Mėnesio planas';

  @override
  String get paywallPackageLifetime => 'Prieiga visą gyvenimą';

  @override
  String get paywallCancelAnytime => 'Atšaukti bet kada. Jokio įsipareigojimo.';

  @override
  String get paywallPolicy => 'Privatumo politika';

  @override
  String get paywallTerms => 'Naudojimo sąlygos';

  @override
  String get paywallRestore => 'Atkurti';

  @override
  String get paywallHeroHeadline => 'Kipi AI visada šalia jūsų';

  @override
  String get paywallHeroSubtitle =>
      'Pridėkite elementus, tvarkykite sąrašus ir sutaupykite laiko naudodami AI kišenėje';

  @override
  String get paywallBenefit1Desc =>
      'Prideda, tvarko ir siūlo elementus 24 valandas per parą, 7 dienas per savaitę';

  @override
  String get paywallBenefit2Desc => 'Nėra 3 sąrašų apribojimo';

  @override
  String get paywallBenefit3Desc => 'Išlaidų stebėjimas ir šeimų sąrašai';

  @override
  String get paywallPackageMonthlyDesc => 'Visiškas lankstumas';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Pradėkite nemokamai – $days dienų';
  }

  @override
  String get premiumUpgrade => 'Atnaujinkite, kad atrakintumėte';

  @override
  String get itemRemoved => 'Prekė pašalinta';

  @override
  String get undo => 'Atšaukti';

  @override
  String get emptyListTitle => 'Jūsų sąrašas tuščias';

  @override
  String get emptyListSubtitle => 'Pridėkite prekių, kad pradėtumėte';

  @override
  String get noListFoundTitle => 'Nerasta jokių sąrašų';

  @override
  String get noListFoundSubtitle =>
      'Sukurkite savo pirmąjį sąrašą, kad pradėtumėte';

  @override
  String get createFirstList => 'Sukurti pirmąjį sąrašą';

  @override
  String get listBudgetTitle => 'Sąrašo biudžetas';

  @override
  String get budgetAmountLabel => 'Biudžeto suma';

  @override
  String get removeBudget => 'Pašalinti';

  @override
  String get prefUnlimitedLists => 'Neriboti sąrašai';

  @override
  String get prefSharing => 'Dalintis sąrašais';

  @override
  String get prefFullHistory => 'Pilna istorija';

  @override
  String get prefExportData => 'Eksportuoti duomenis';

  @override
  String get prefCustomThemes => 'Individualios temos';

  @override
  String get prefMonthlyBudget => 'Globalus mėnesio biudžetas';

  @override
  String get prefAIAssistant => 'Asmeninis AI asistentas';

  @override
  String get prefUnlimitedPantry => 'Neribotas sandėliukas';

  @override
  String get prefInteractiveArtifacts => 'Interaktyvūs AI artefaktai';

  @override
  String get themeGreen => 'Žalia';

  @override
  String get themeBlue => 'Mėlyna';

  @override
  String get themePurple => 'Violetinė';

  @override
  String get themeRed => 'Raudona';

  @override
  String get themeOrange => 'Oranžinė';

  @override
  String get themePink => 'Rožinė';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Gintarinė';

  @override
  String get themeTeal => 'Žalsvai mėlyna';

  @override
  String get themeBrown => 'Ruda';

  @override
  String get catFruits => 'Vaisiai';

  @override
  String get catCleaning => 'Valymas';

  @override
  String get catBeverages => 'Gėrimai';

  @override
  String get catBakery => 'Kepiniai';

  @override
  String get catOthers => 'Kita';

  @override
  String get unitPack => 'pakuotė';

  @override
  String get shareSubject => 'Pirkinių sąrašas';

  @override
  String get monthlyBudgetTitle => 'Mėnesio biudžetas';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Ištrinti sąrašą';

  @override
  String get pantryItemRemoved => 'Prekė pašalinta';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: 'reikia nusipirkti $deficit prekių',
      few: 'reikia nusipirkti $deficit prekes',
      one: 'reikia nusipirkti $deficit prekę',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Krepšelio suma';

  @override
  String get restockLabel => 'Papildyti';

  @override
  String get advancedFeatures => 'Išplėstinės funkcijos';

  @override
  String get selectAll => 'Pasirinkti viską';

  @override
  String get deselectAll => 'Panaikinti visus pasirinkimus';

  @override
  String get monthlyBudgetAppBar => 'Mėnesio biudžetas';

  @override
  String get budgetEditTitle => 'Mėnesio biudžetas';

  @override
  String get budgetDashboardTitle => 'Prietaisų skydelis';

  @override
  String get selectListForDashboard =>
      'Pasirinkite sąrašą, kad peržiūrėtumėte skydelį.';

  @override
  String get spendingAnalysis => 'Išlaidų analizė';

  @override
  String get noItemsToAnalyze =>
      'Sąraše nėra prekių, kurias būtų galima analizuoti.';

  @override
  String get markItemsToSeeAnalysis =>
      'Pažymėkite prekes kaip nupirktas, kad pamatytumėte analizę.';

  @override
  String get totalSpending => 'Visos išlaidos';

  @override
  String get spendingByCategory => 'Išlaidos pagal kategoriją';

  @override
  String get achievements => 'Pasiekimai';

  @override
  String get exportPdfExcel => 'Eksportuoti PDF/Excel';

  @override
  String get exportPdf => 'Eksportuoti kaip PDF';

  @override
  String get exportExcel => 'Eksportuoti kaip Excel';

  @override
  String get organizingAi => 'ORGANIZUOJAMA SU AI...';

  @override
  String get yesLabel => 'Taip';

  @override
  String get noLabel => 'Ne';

  @override
  String get shareListText => 'Mano pirkinių sąrašas';

  @override
  String get emptyListAddItems =>
      'Jūsų sąrašas tuščias! Pirmiausia pridėkite prekių. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Sąrašas stebuklingai suskirstytas į kategorijas! ✨';

  @override
  String get shoppingMode => 'Pirkimo režimas';

  @override
  String get smartOrganization => 'Protingas organizavimas';

  @override
  String get savings => 'Sutaupymas';

  @override
  String get shoppingModeHeader => 'PIRKIMO REŽIMAS';

  @override
  String get shareAsText => 'Siųsti prekes kaip suformatuotą tekstą';

  @override
  String get shareRealtime => 'Realaus laiko sinchronizavimas su kitais';

  @override
  String get quickRecipe => 'Greitas receptas';

  @override
  String get quickRecipePrompt =>
      'Pasiūlykite receptų su mano sąrašo prekėmis.';

  @override
  String get economyTips => 'Taupymo patarimai';

  @override
  String get economyTipsPrompt => 'Kaip galiu sutaupyti pinigų šiam pirkiniui?';

  @override
  String get organizeAisles => 'Rūšiuoti pagal skyrius';

  @override
  String get organizeAislesPrompt => 'Rūšiuoti pagal prekybos centro skyrius.';

  @override
  String get recipeSuggestion => 'Recepto pasiūlymas';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Liko $remaining kreditų';
  }

  @override
  String get addAllToList => 'Pridėti viską į sąrašą';

  @override
  String get organizeByAisles => 'Rūšiuoti pagal skyrius';

  @override
  String get voiceTranscriptionTooltip => 'Balso įvedimas (Nemokamai)';

  @override
  String get aiVoiceCommandTooltip => 'AI balso komanda (Premium)';

  @override
  String get voiceCommandTitle => 'AI balso komanda';

  @override
  String get voiceCommandContent =>
      'Kalbėkite natūraliai, kad valdytumėte savo sąrašą!\n\nPavyzdžiai:\n• \'Pridėti duonos, sūrio ir kumpio\'\n• \'Pašalinti skalbiklio\'\n• \'Pakeisti temą į mėlyną\'\n\nTai yra išskirtinė KipiList Premium funkcija.';

  @override
  String get voiceCommandPlanBtn => 'Peržiūrėti planus';

  @override
  String get itemsAddedSuccess => 'Prekės sėkmingai pridėtos į sąrašą!';

  @override
  String get viewList => 'Peržiūrėti sąrašą';

  @override
  String get feedbackTitle => 'Siųsti atsiliepimą';

  @override
  String get feedbackPrompt => 'Kuo norėtumėte pasidalinti?';

  @override
  String get feedbackTypeBug => 'Pranešti apie klaidą';

  @override
  String get feedbackTypeBugHint => 'Kažkas neveikia';

  @override
  String get feedbackTypeSuggestion => 'Pasiūlymas';

  @override
  String get feedbackTypeSuggestionHint => 'Idėja, kaip pagerinti programėlę';

  @override
  String get feedbackTypeTranslation => 'Vertimo problema';

  @override
  String get feedbackTypeTranslationHint => 'Netikslus ar nepatogus vertimas';

  @override
  String get feedbackTypeFeature => 'Funkcijos prašymas';

  @override
  String get feedbackTypeFeatureHint => 'Funkcija, kurią norėtumėte matyti';

  @override
  String get feedbackTypeOther => 'Kita';

  @override
  String get feedbackTypeOtherHint => 'Kitas atsiliepimo tipas';

  @override
  String get feedbackHint => 'Išsamiai aprašykite savo atsiliepimą...';

  @override
  String get feedbackSend => 'Siųsti atsiliepimą';

  @override
  String get feedbackSending => 'Siunčiama...';

  @override
  String get feedbackThankYou => 'Ačiū!';

  @override
  String get feedbackThankYouMessage =>
      'Jūsų atsiliepimas gautas ir padeda mums tobulinti KipiList visiems.';

  @override
  String get feedbackBack => 'Atgal';

  @override
  String feedbackError(String error) {
    return 'Siuntimo klaida: $error';
  }

  @override
  String get feedbackRetry => 'Bandyti dar kartą';

  @override
  String get feedbackSettingsTitle => 'Siųsti atsiliepimą';

  @override
  String get feedbackSettingsSubtitle =>
      'Pranešti apie klaidas, siūlyti patobulinimus ar taisyti vertimus';

  @override
  String get aiEnergy => 'AI energija';

  @override
  String get searchInConversation => 'Ieškoti pokalbyje...';

  @override
  String get noMessagesFound => 'Nerasta jokių pranešimų';

  @override
  String get suggestedQuestions => 'Siūlomi klausimai:';

  @override
  String get shoppingAssistant => 'Pirkinių padėjėja';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'Įsigyta $purchased iš $total';
  }

  @override
  String get estimatedCost => 'Apskaičiuota';

  @override
  String get viewItems => 'Peržiūrėti elementus';

  @override
  String get noItemsInList => 'Sąraše nėra elementų';

  @override
  String get longHistoryWarning =>
      'Ilga istorija: padėjėjas sutelkia dėmesį į naujausius pranešimus, kad pagerintų našumą.';

  @override
  String get listening => 'Klausau...';

  @override
  String get addDirectToList => 'Pridėti tiesiai į sąrašą';

  @override
  String get unlockFullResponse => 'Atrakinkite visą atsakymą';

  @override
  String get switchList => 'Perjungti sąrašą';

  @override
  String get marketMode => 'Rinkos režimas';

  @override
  String get backToChat => 'Grįžti į pokalbį';

  @override
  String get finishShopping => 'Baigti apsipirkti';

  @override
  String get welcomeAiAssistant => 'Sveiki atvykę į AI asistentą';

  @override
  String get createListToStartAi =>
      'Norėdami pradėti naudotis išmaniuoju pokalbiu, sukurkite pirkinių sąrašą.';

  @override
  String get howCanIHelp => 'Kaip galiu padėti?';

  @override
  String get chatSubtitleShort =>
      'Dėl kainų, receptų, organizavimo teirautis...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total įsigytas';
  }

  @override
  String get quickReplies => 'Greiti atsakymai:';

  @override
  String get voiceProFeature =>
      'Išplėstinės balso komandos yra Pro. Įgalinamas pagrindinis diktantas...';

  @override
  String get viewPro => 'Žiūrėti Pro';

  @override
  String get errorLoadingChat => 'Oi! Įkeliant pokalbį įvyko klaida.';

  @override
  String get errorLoadingChatSubtitle =>
      'Patikrinkite ryšį arba bandykite dar kartą vėliau.';

  @override
  String get errorOscillation =>
      'Taip gali nutikti dėl tinklo svyravimų arba laikino nepasiekiamumo. Bandykite dar kartą.';

  @override
  String get activeListening => 'Aktyvus klausymas';

  @override
  String get whatToDoWithItem => 'Ką norėtumėte daryti su šiuo elementu?';

  @override
  String get viewDetails => 'Peržiūrėti išsamią informaciją';

  @override
  String get openMenu => 'Atidaryti meniu';

  @override
  String get viewRecipe => 'Žiūrėti receptą';

  @override
  String get recipeCreated => 'Receptas sukurtas!';

  @override
  String get editRecipe => 'Redaguoti';

  @override
  String get deleteRecipe => 'Ištrinti';

  @override
  String get deleteRecipeConfirm => 'Ištrinti šį receptą?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Ar tikrai norite ištrinti „$recipeName“? Šio veiksmo atšaukti negalima.';
  }

  @override
  String get ingredients => 'Ingredientai';

  @override
  String get instructions => 'Instrukcijos';

  @override
  String get prepTime => 'Gaminimo laikas';

  @override
  String get recipeSaved => 'Receptas išsaugotas!';

  @override
  String get noRecipesSaved => 'Nėra išsaugotų receptų';

  @override
  String get noRecipesSavedHint =>
      'Sukurkite savo pirmąjį individualų receptą bakstelėdami žemiau esantį mygtuką.';

  @override
  String get myRecipes => 'Mano receptai';

  @override
  String get newRecipe => 'Naujas receptas';

  @override
  String get loadingRecipes => 'Įkeliami jūsų receptai...';

  @override
  String get errorLoadingRecipes => 'Klaida įkeliant receptus';

  @override
  String get addIngredient => 'Pridėti ingredientą';

  @override
  String get saveRecipe => 'Išsaugoti';

  @override
  String get recipeName => 'Recepto pavadinimas';

  @override
  String get shortDescription => 'Trumpas aprašymas';

  @override
  String get prepTimeMinutes => 'Gaminimo laikas (minutėmis)';

  @override
  String get instructionsHint => 'Įveskite po vieną žingsnį eilutėje...';

  @override
  String get addPhoto => 'Pridėti nuotrauką';

  @override
  String get imageUrlPlaceholder => 'Arba įklijuokite nuotraukos URL';

  @override
  String get tags => 'Žymos';

  @override
  String get recipeTags => 'Recepto žymos';

  @override
  String get suggestedTags => 'Siūloma';

  @override
  String get searchRecipes => 'Ieškoti receptų...';

  @override
  String get filterByTag => 'Filtruoti pagal žymą';

  @override
  String get allTags => 'Visi';

  @override
  String get recipeDeleted => 'Receptas ištrintas';

  @override
  String get saveChanges => 'Išsaugoti pakeitimus';

  @override
  String get editRecipeTitle => 'Redaguoti receptą';

  @override
  String get newRecipeTitle => 'Naujas receptas';

  @override
  String get requiredField => 'Privaloma';

  @override
  String get chooseImageSource => 'Pasirinkite nuotraukos šaltinį';

  @override
  String get gallery => 'Galerija';

  @override
  String get enterUrl => 'Įveskite URL';

  @override
  String get recipeImage => 'Recepto nuotrauka';

  @override
  String get removeImage => 'Pašalinti nuotrauką';

  @override
  String get mealPlannerTitle => 'Valgių planuotojas';

  @override
  String get mealPlannerViewMonthly => 'Mėnesio vaizdas';

  @override
  String get mealPlannerViewWeekly => 'Savaitės vaizdas';

  @override
  String get mealPlannerNoMeals => 'Nėra suplanuotų valgių';

  @override
  String get mealPlannerNoMealsHint =>
      'Bakstelėkite dieną, kad pridėtumėte valgį';

  @override
  String get mealPlannerLoading => 'Įkeliamas valgio planas...';

  @override
  String get mealPlannerError => 'Klaida įkeliant valgio planą';

  @override
  String get mealPlannerAddMeal => 'Pridėti valgį';

  @override
  String get mealPlannerEditMeal => 'Redaguoti valgį';

  @override
  String get mealPlannerDeleteMeal => 'Pašalinti valgį';

  @override
  String get mealPlannerMealDeleted => 'Valgis pašalintas';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porcijų',
      few: '$count porcijos',
      one: '$count porcija',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porcijos';

  @override
  String get mealPlannerNoteLabel => 'Pastaba (neprivaloma)';

  @override
  String get mealPlannerSelectRecipe => 'Pasirinkite receptą';

  @override
  String get mealPlannerSearchRecipes => 'Ieškoti receptų...';

  @override
  String get mealPlannerNoRecipesFound => 'Receptų nerasta';

  @override
  String get mealPlannerNoRecipesHint =>
      'Pirmiausia sukurkite receptus receptų skirtuke';

  @override
  String get mealPlannerSave => 'Pridėti į planą';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return 'Suplanuota $count iš $total valgių';
  }

  @override
  String get mealPlannerGenerateList => 'Sukurti pirkinių sąrašą';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Pridėti visus ingredientus iš suplanuotų šios savaitės valgių į pirkinių sąrašą?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingredientas(-ai) pridėtas į jūsų sąrašą!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Nėra ingredientų, kuriuos būtų galima pridėti. Pirmiausia suplanuokite valgius su receptais.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Pirmiausia sukurkite pirkinių sąrašą.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Pusryčiai';

  @override
  String get mealPlannerMealTypeLunch => 'Pietūs';

  @override
  String get mealPlannerMealTypeDinner => 'Vakarienė';

  @override
  String get mealPlannerMealTypeSnack => 'Užkandis';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty => 'Šiai savaitei nieko nesuplanuota';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Bakstelėkite bet kurią dieną, kad pradėtumėte planuoti valgius!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Pakviesti į sąrašą';

  @override
  String get shareApp => 'Bendrinkite programą';

  @override
  String get shareAppDescription => 'Pakvieskite draugus naudotis „KipiList“.';

  @override
  String shareReferralText(Object url) {
    return 'Naudoju „KipiList“ pirkinių organizavimui! Atsisiųskite naudodami mano nuorodą ir mes abu gausime 7 dienas „Premium“ nemokamai: $url';
  }

  @override
  String get shareReferralSubject => 'Gaukite „KipiList Premium“ 7 dienas!';

  @override
  String get gestureHint =>
      'Palaikykite, kad pasirinktumėte • Braukite, kad pašalintumėte';

  @override
  String get catalogTitle => 'Katalogas';

  @override
  String get catalogMyFrequents => 'Mano dažniai';

  @override
  String get catalogSearchGlobal => 'Ieškokite bet kurio produkto...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Ieškoti $category...';
  }

  @override
  String get catalogSortPopular => 'Populiariausias';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nacionaliniai';

  @override
  String get catalogRareSection => 'mažiau paplitusi jūsų šalyje';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Pridėti $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Prekė nerasta, įveskite pavadinimą';

  @override
  String get catalogBrowse => 'Naršyti katalogą';
}
