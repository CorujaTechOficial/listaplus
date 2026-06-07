// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get appTitle => 'Innkaupalisti';

  @override
  String get lists => 'Listar';

  @override
  String get pantry => 'Búrka';

  @override
  String get navChat => 'Spjall';

  @override
  String get navRecipes => 'Uppskriftir';

  @override
  String get navLists => 'Listar';

  @override
  String get navMealPlanner => 'Matseðill';

  @override
  String get cancel => 'Hætta við';

  @override
  String get save => 'Vista';

  @override
  String get create => 'Búa til';

  @override
  String get add => 'Bæta við';

  @override
  String get remove => 'Fjarlægja';

  @override
  String get delete => 'Eyða';

  @override
  String get edit => 'Breyta';

  @override
  String get copy => 'Afrita';

  @override
  String get next => 'Næst';

  @override
  String get retry => 'Reyna aftur';

  @override
  String get regenerate => 'Endurgera';

  @override
  String get copiedToClipboard => 'Afritað á klippispjald';

  @override
  String get confirm => 'Staðfesta';

  @override
  String get close => 'Loka';

  @override
  String get import => 'Flytja inn';

  @override
  String get rename => 'Endurnefna';

  @override
  String get upgrade => 'Uppfæra';

  @override
  String get clear => 'Hreinsa';

  @override
  String error(String message) {
    return 'Villa: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Villa: $message';
  }

  @override
  String get purchaseError => 'Villa við að vinna úr kaupum. Reyndu aftur.';

  @override
  String get restoreError => 'Villa við að endurheimta kaup. Reyndu aftur.';

  @override
  String get loading => 'Hleð...';

  @override
  String get fieldRequired => 'Skyldureitur';

  @override
  String get addedFeedback => 'Bætt við!';

  @override
  String get profile => 'Prófíll';

  @override
  String get exitShoppingMode => 'Hætta verslunarstillingu';

  @override
  String get exit => 'Hætta';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valin',
      one: '$count valið',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Áætlað';

  @override
  String get alreadyPurchased => 'Þegar keypt';

  @override
  String get clearList => 'Hreinsa lista';

  @override
  String get clearPurchased => 'Hreinsa keypt';

  @override
  String get share => 'Deila';

  @override
  String get shareViaCode => 'Deila með kóða';

  @override
  String get importViaCode => 'Flytja inn með kóða';

  @override
  String get listAssistant => 'Listaaðstoð';

  @override
  String get globalAssistant => 'Alheimsaðstoð';

  @override
  String get becomePremium => 'Verða Premium';

  @override
  String get manageSubscription => 'Stjórna áskrift';

  @override
  String get completePurchase => 'Ljúka kaupum';

  @override
  String get confirmClearList => 'Fjarlægja alla hluti?';

  @override
  String get shareListTitle => 'Deila lista';

  @override
  String get shareThisCode => 'Deildu þessum kóða:';

  @override
  String get validForLimitedTime => 'Gildir í takmarkaðan tíma';

  @override
  String get importListTitle => 'Flytja inn lista';

  @override
  String get enterCodeHint => 'Sláðu inn kóðann';

  @override
  String get confirmArchiveTitle => 'Ljúka kaupum';

  @override
  String get confirmArchiveContent =>
      'Ljúka þessum kaupum og arkívera listann?';

  @override
  String get complete => 'Ljúka';

  @override
  String get listArchived => 'Listi arkíveraður!';

  @override
  String listAdded(String listName) {
    return '$listName bætt við!';
  }

  @override
  String get buy => 'Kaupa';

  @override
  String get unmark => 'Afmerkja';

  @override
  String confirmDeleteItems(int count) {
    return 'Fjarlægja $count hlut(e)?';
  }

  @override
  String get confirmDeleteTitle => 'Staðfesta';

  @override
  String confirmContent(int count) {
    return 'Fjarlægja $count hlut(e)?';
  }

  @override
  String get archiveList => 'Arkívera lista';

  @override
  String get pantryAppBar => 'Búrka';

  @override
  String get generateShoppingList => 'Búa til innkaupalista';

  @override
  String get pantryEmpty => 'Tóm búrka';

  @override
  String get pantryEmptySubtitle => 'Bættu við vörum sem þú vilt hafa heima';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit hlut(ir) þarf að kaupa';
  }

  @override
  String get noItemsToBuy => 'Engir hlutir þarf að kaupa';

  @override
  String get newPantryList => 'Búrkukaup';

  @override
  String get newListTitle => 'Nýr innkaupalisti';

  @override
  String itemsWillBeAdded(int count) {
    return '$count hlut(ir) verða bætt við';
  }

  @override
  String get listNameLabel => 'Nafn lista';

  @override
  String listCreated(String name, int count) {
    return 'Listi \"$name\" búinn til með $count hlutum';
  }

  @override
  String get noTracking => 'Engin rakning';

  @override
  String get markAsPurchased => 'Merkja sem keypt';

  @override
  String editPantryItem(String name) {
    return 'Breyta $name';
  }

  @override
  String get idealQuantity => 'Ákjósanlegt magn';

  @override
  String get currentQuantity => 'Núverandi magn';

  @override
  String get consumed => 'Notað';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name enduruppfyllt: $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Fjarlægja \"$name\" úr búrku?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Breyta $name';
  }

  @override
  String get settingsAppBar => 'Stillingar';

  @override
  String get language => 'Tungumál';

  @override
  String get languagePortuguese => 'Português (Brasilía)';

  @override
  String get languageEnglish => 'ensku';

  @override
  String get languageSystem => 'Sjálfgefið kerfi';

  @override
  String get chooseLanguage => 'Veldu tungumál';

  @override
  String get searchLanguage => 'Leita að tungumáli...';

  @override
  String get currency => 'Gjaldmiðill';

  @override
  String get chooseCurrency => 'Veldu Gjaldmiðill';

  @override
  String get searchCurrency => 'Leita að gjaldmiðli...';

  @override
  String get appearance => 'Útlit';

  @override
  String get light => 'Ljóst';

  @override
  String get system => 'Kerfi';

  @override
  String get dark => 'Dökkt';

  @override
  String get themeColor => 'Þemalitur';

  @override
  String get dynamicColors => 'Breytilegir litir';

  @override
  String get dynamicColorsSubtitle => 'Nota liti byggða á veggfóðrinu þínu';

  @override
  String get dynamicColorsEnabledWarning =>
      'Slökktu á kraftmiklum litum til að þemaliturinn taki gildi';

  @override
  String get finance => 'Fjármál';

  @override
  String get monthlyBudgetNav => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetSubtitle => 'Fylgdu mánaðarlegum útgjöldum þínum';

  @override
  String get data => 'Gögn';

  @override
  String get backupNav => 'Öryggisafrit';

  @override
  String get backupSubtitle => 'Flytja út eða inn gögnin þín';

  @override
  String get about => 'Um';

  @override
  String get version => 'Útgáfa';

  @override
  String get privacy => 'Persónuvernd';

  @override
  String get termsOfUse => 'Notkunarskilmálar';

  @override
  String get backupTitle => 'Öryggisafrit';

  @override
  String get backupPremiumDescription =>
      'Öryggisafrit og útflutningur er premium eiginleiki';

  @override
  String get exportData => 'Flytja út gögn';

  @override
  String get exportDataSubtitle => 'Vista alla lista sem JSON';

  @override
  String get importData => 'Flytja inn gögn';

  @override
  String get importDataSubtitle => 'Endurheimta lista úr JSON';

  @override
  String get importJsonTitle => 'Flytja inn JSON';

  @override
  String get importJsonHint => 'Límdu öryggisafrit JSON hér...';

  @override
  String get backupExported => 'Öryggisafrit flutt út!';

  @override
  String get budgetAppBar => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetPremiumLocked =>
      'Alheims mánaðarleg fjárhagsáætlun er premium';

  @override
  String get budgetUpgradePrompt => 'Uppfærðu til að opna';

  @override
  String get noBudgetDefined => 'Engin fjárhagsáætlun stillt';

  @override
  String totalEstimated(String amount) {
    return 'Áætluð samtals: $amount';
  }

  @override
  String get setBudgetButton => 'Stilla fjárhagsáætlun';

  @override
  String get budgetLists => 'Listar';

  @override
  String get budgetValueLabel => 'Upphæð';

  @override
  String get setBudgetTitle => 'Mánaðarleg fjárhagsáætlun';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Allt';

  @override
  String get filterPending => 'Í bið';

  @override
  String get filterPurchased => 'Keypt';

  @override
  String get sortName => 'Nafn';

  @override
  String get sortCategory => 'Flokkur';

  @override
  String get sortDate => 'Dagsetning';

  @override
  String get sortManual => 'Handvirkt';

  @override
  String get addItem => 'Bæta við hlut';

  @override
  String get itemName => 'Heiti hlutar';

  @override
  String get quantityShort => 'Magn';

  @override
  String get unit => 'Eining';

  @override
  String get category => 'Flokkur';

  @override
  String get estimatedPrice => 'Áætlað verð';

  @override
  String get addItemPrice => 'Áætlað verð';

  @override
  String get editItem => 'Breyta hlut';

  @override
  String get quantityFull => 'Magn';

  @override
  String get editItemPrice => 'Áætlað verð';

  @override
  String get addToPantry => 'Bæta í búrku';

  @override
  String addToPantryPrompt(String name) {
    return 'Bæta \"$name\" við búrku?';
  }

  @override
  String get yes => 'Já';

  @override
  String get productName => 'Heiti vöru';

  @override
  String get idealQty => 'Ákjósanlegt magn';

  @override
  String get currentQty => 'Núverandi magn';

  @override
  String get trackStock => 'Rekja birgðir';

  @override
  String get trackStockActive => 'Birtist í innkaupatillögum';

  @override
  String get trackStockInactive => 'Myndar ekki innkaupatillögu';

  @override
  String get createListDialog => 'Búa til lista';

  @override
  String get renameListDialog => 'Endurnefna lista';

  @override
  String get listHistory => 'Listasaga';

  @override
  String get myLists => 'Listarnir mínir';

  @override
  String get viewActive => 'Skoða virka';

  @override
  String get viewHistory => 'Skoða sögu';

  @override
  String get noArchivedLists => 'Enginn arkíveraður listi';

  @override
  String get noActiveLists => 'Engir virkir listar';

  @override
  String completedOn(String date) {
    return 'Lokið þann $date';
  }

  @override
  String get sharedLabel => 'Deilt';

  @override
  String get restore => 'Endurheimta';

  @override
  String get removeSharedTooltip => 'Fjarlægja';

  @override
  String get deleteListTitle => 'Eyða lista';

  @override
  String deleteListContent(String name) {
    return 'Ertu viss um að þú viljir eyða \"$name\"? Öllum hlutum verður eytt.';
  }

  @override
  String get removeSharedListTitle => 'Fjarlægja deildan lista';

  @override
  String removeSharedListContent(String name) {
    return 'Fjarlægja \"$name\" af listunum þínum? Upprunalegi listinn verður ekki fyrir áhrifum.';
  }

  @override
  String get createNewList => 'Búa til nýjan lista';

  @override
  String get aiAssistant => 'AI aðstoð';

  @override
  String get aiAssistantDescription =>
      'Fáðu snjallar tillögur, uppskriftir og persónulegar ábendingar með AI aðstoðarmanni okkar.';

  @override
  String get generalAssistant => 'Almenn aðstoð';

  @override
  String get newChat => 'Nýtt spjall';

  @override
  String get noHistory => 'Enginn spjallferill';

  @override
  String get deleteSession => 'Eyða spjalli';

  @override
  String get deleteSessionConfirm =>
      'Ertu viss um að þú viljir eyða þessu spjalli? Skilaboðin munu glatast varanlega.';

  @override
  String get clearHistory => 'Hreinsa sögu';

  @override
  String get clearHistoryConfirm =>
      'Hreinsa öll skilaboð í þessum samtalsglugga?';

  @override
  String get chatHint => 'Skrifaðu skilaboð...';

  @override
  String get chatHintBlocked => 'Opnaðu gervigreind til að spjalla';

  @override
  String chatError(String error) {
    return 'Villa við að hlaða spjalli: $error';
  }

  @override
  String get listHelp => 'Hvernig get ég aðstoðað þig með listann?';

  @override
  String get generalHelp => 'Hvernig get ég aðstoðað þig við innkaupin í dag?';

  @override
  String get chatSubtitle =>
      'Spurðu um vörutillögur, uppskriftir eða sparnaðarábendingar.';

  @override
  String get aiError =>
      'Því miður, villa kom upp við að vinna úr beiðninni þinni. Athugaðu tenginguna eða reyndu aftur síðar.';

  @override
  String get aiLimitAlmostReached => 'Næstum upp úr gervigreindarskilaboðum';

  @override
  String get unlockAi => 'Opnaðu ótakmarkaða gervigreind';

  @override
  String get aiTeaserFallback =>
      'Gerast áskrifandi að Premium til að opna allt svarið og fá ótakmarkaða gervigreindarráð til að versla...';

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
  String get loginPrompt => 'Skráðu þig inn til að\nopna premium eiginleika';

  @override
  String get signInGoogle => 'Skráðu þig inn með Google';

  @override
  String get signInApple => 'Skráðu þig inn með Apple';

  @override
  String get continueAsGuest => 'Halda áfram sem gestur';

  @override
  String get onboardingWelcomeTitle => 'Velkomin á KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Snjöllasta leiðin til að skipuleggja innkaupin og spara peninga.';

  @override
  String get onboardingSetupTitle => 'Sérsníddu upplifun þína';

  @override
  String get onboardingSetupDesc =>
      'Veldu hvernig þú vilt að KipiList líti út og virki fyrir þig.';

  @override
  String get onboardingLoginTitle => 'Vistaðu allt í skýinu';

  @override
  String get onboardingLoginDesc =>
      'Gögnin þín samstillt á öllum tækjunum þínum';

  @override
  String get onboardingShareTitle => 'Deildu með þeim sem þú elskar';

  @override
  String get onboardingShareDesc =>
      'Samstilltu lista við fjölskyldu og vini í rauntíma';

  @override
  String get onboardingPremiumTitle => 'Opnaðu alla eiginleika';

  @override
  String get onboardingPremiumSubtitle =>
      'Fáðu sem mest út úr innkaupalistanum þínum';

  @override
  String get onboardingAnnualBadge => 'Best gildi';

  @override
  String get onboardingMonthlyLabel => 'Mánaðarlega';

  @override
  String get onboardingAnnualLabel => 'Árlegt';

  @override
  String get onboardingViewAllPlans => 'Skoða allar áætlanir';

  @override
  String get onboardingSubscribeCta => 'Gerast áskrifandi';

  @override
  String get onboardingCancelAnytime =>
      'Hætta við hvenær sem er. Engin skuldbinding.';

  @override
  String get onboardingContinueAsGuest => 'Haltu áfram sem gestur';

  @override
  String get onboardingRestore => 'Endurheimta';

  @override
  String get onboardingRestoreDesc =>
      'Ertu nú þegar með áskrift? Pikkaðu hér til að endurheimta það.';

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
  String get onboardingExit => 'Hætta';

  @override
  String get onboardingPersonalizationTitle => 'Við skulum kynnast þér';

  @override
  String get onboardingPersonalizationDesc =>
      'Við munum nota þetta til að sérsníða tillögur þínar og gera innkaup betri.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Hver er uppáhaldsmaturinn þinn?';

  @override
  String get onboardingPersonalizationFoodHint =>
      't.d. Pizza, sushi, lasagna...';

  @override
  String get onboardingPersonalizationCta => 'Halda áfram';

  @override
  String get onboardingPersonalizationSkip => 'Slepptu í bili';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Segðu okkur uppáhaldsmatinn þinn til að halda áfram';

  @override
  String get settingsDefaultScreen => 'Sjálfgefinn heimaskjár';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Veldu á milli innkaupalista eða gervigreindarspjalls';

  @override
  String get settingsScreenList => 'Innkaupalisti';

  @override
  String get settingsScreenChat => 'AI spjall';

  @override
  String loginError(String error) {
    return 'Innskráningarvilla: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Villa við að hlaða tilboðum. Reyndu aftur.';

  @override
  String get paywallPurchaseError =>
      'Ekki tókst að ganga frá kaupum. Reyndu aftur.';

  @override
  String get paywallRestoreError =>
      'Engin virk áskrift fannst til að endurheimta.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAGAR ÓKEYPIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count VIKA ÓKEYPIS',
      one: '$count VIKA ÓKEYPIS',
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
  String get paywallTrialTitle => 'Prófaðu KipiList Pro ókeypis í 7 daga';

  @override
  String get paywallTrialSubtitle =>
      'Hætta við hvenær sem er. Ekkert gjald í dag.';

  @override
  String get paywallTrialCta => 'Byrjaðu ókeypis prufuáskrift';

  @override
  String get recipeAddToList => 'Bæta við innkaupalista';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count hráefni bætt við $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Allt sem þú þarft:';

  @override
  String get paywallFeatureUnlimitedLists => 'Ótakmarkaður listi';

  @override
  String get paywallFeatureSmartAI => 'Snjall gervigreind';

  @override
  String get paywallFeatureExpenseControl => 'Kostnaðareftirlit';

  @override
  String get paywallFeatureSharing => 'Samnýting';

  @override
  String get paywallBeforeAfterTitle => 'AI fyrir og eftir:';

  @override
  String get paywallLabelCommon => 'Algengt';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'hrísgrjón';

  @override
  String get paywallBeforeItem2 => 'sápu';

  @override
  String get paywallBeforeItem3 => 'kjöti';

  @override
  String get paywallBeforeItem4 => 'brauð';

  @override
  String get paywallAfterItem1 => 'Korn';

  @override
  String get paywallAfterItem2 => 'Þrif';

  @override
  String get paywallAfterItem3 => 'Kjöt';

  @override
  String get paywallAfterItem4 => 'Bakarí';

  @override
  String get paywallTestimonialsTitle => 'Það sem notendur okkar segja:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI skipuleggur innkaupin mín á nokkrum sekúndum. Ég spara 20 mín í hverja markaðsferð.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Ég gleymdi aldrei aftur listaatriði. AI spjallið er tilkomumikið!';

  @override
  String get paywallSocialProof => '+2.400 fjölskyldur nota það';

  @override
  String get paywallCtaUnlock => 'Opnaðu PRO';

  @override
  String get paywallBestValue => 'BESTU VERÐI';

  @override
  String get paywallMostPopular => 'VINSÆLASTA';

  @override
  String get paywallSafeCheckout => 'Örugg greiðsla';

  @override
  String get paywallSelectPlan => 'Veldu áætlun þína:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SPARA $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Aðeins $price/mánuði';
  }

  @override
  String get paywallPackageAnnual => 'Ársáætlun';

  @override
  String get paywallPackageMonthly => 'Mánaðaráætlun';

  @override
  String get paywallPackageLifetime => 'Aðgangur fyrir lífstíð';

  @override
  String get paywallCancelAnytime =>
      'Hætta við hvenær sem er. Engin skuldbinding.';

  @override
  String get paywallPolicy => 'Persónuverndarstefna';

  @override
  String get paywallTerms => 'Notkunarskilmálar';

  @override
  String get paywallRestore => 'Endurheimta';

  @override
  String get paywallHeroHeadline => 'Kipi AI alltaf þér við hlið';

  @override
  String get paywallHeroSubtitle =>
      'Bættu við hlutum, skipulagðu lista og sparaðu tíma með gervigreind í vasanum';

  @override
  String get paywallBenefit1Desc =>
      'Bætir við, skipuleggur og stingur upp á hlutum allan sólarhringinn';

  @override
  String get paywallBenefit2Desc => 'Engin 3 lista takmörk';

  @override
  String get paywallBenefit3Desc => 'Kostnaðarmælingar og fjölskyldulistar';

  @override
  String get paywallPackageMonthlyDesc => 'Fullur sveigjanleiki';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Byrjaðu ókeypis — $days dagar';
  }

  @override
  String get premiumUpgrade => 'Uppfærðu til að opna';

  @override
  String get itemRemoved => 'Hlut fjarlægður';

  @override
  String get undo => 'Afturkalla';

  @override
  String get emptyListTitle => 'Listinn þinn er tómur';

  @override
  String get emptyListSubtitle => 'Bættu við hlutum til að byrja';

  @override
  String get noListFoundTitle => 'Engir listar fundust';

  @override
  String get noListFoundSubtitle => 'Búðu til þinn fyrsta lista til að byrja';

  @override
  String get createFirstList => 'Búa til fyrsta lista';

  @override
  String get listBudgetTitle => 'Fjárhagsáætlun lista';

  @override
  String get budgetAmountLabel => 'Upphæð fjárhagsáætlunar';

  @override
  String get removeBudget => 'Fjarlægja';

  @override
  String get prefUnlimitedLists => 'Ótakmarkaðir listar';

  @override
  String get prefSharing => 'Deila listum';

  @override
  String get prefFullHistory => 'Full saga';

  @override
  String get prefExportData => 'Flytja út gögn';

  @override
  String get prefCustomThemes => 'Sérsniðin þemu';

  @override
  String get prefMonthlyBudget => 'Alheims mánaðarleg fjárhagsáætlun';

  @override
  String get prefAIAssistant => 'Persónulegur AI aðstoðarmaður';

  @override
  String get prefUnlimitedPantry => 'Ótakmörkuð búrka';

  @override
  String get prefInteractiveArtifacts => 'Gagnvirk AI greinar';

  @override
  String get themeGreen => 'Grænn';

  @override
  String get themeBlue => 'Blár';

  @override
  String get themePurple => 'Fjólublár';

  @override
  String get themeRed => 'Rauður';

  @override
  String get themeOrange => 'Appelsínugulur';

  @override
  String get themePink => 'Bleikur';

  @override
  String get themeIndigo => 'Indígó';

  @override
  String get themeAmber => 'Rauðgulur';

  @override
  String get themeTeal => 'Grænblár';

  @override
  String get themeBrown => 'Brúnn';

  @override
  String get catFruits => 'Ávextir';

  @override
  String get catCleaning => 'Hreinsun';

  @override
  String get catBeverages => 'Drykkir';

  @override
  String get catBakery => 'Bakarí';

  @override
  String get catOthers => 'Annað';

  @override
  String get unitPack => 'pakkning';

  @override
  String get shareSubject => 'Innkaupalisti';

  @override
  String get monthlyBudgetTitle => 'Mánaðarleg fjárhagsáætlun';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Eyða lista';

  @override
  String get pantryItemRemoved => 'Hlut fjarlægður';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit hluti þarf að kaupa',
      one: '$deficit hlut þarf að kaupa',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Karfa samtals';

  @override
  String get restockLabel => 'Enduruppfylla';

  @override
  String get advancedFeatures => 'Ítarlegir eiginleikar';

  @override
  String get selectAll => 'Velja allt';

  @override
  String get deselectAll => 'Afvelja allt';

  @override
  String get monthlyBudgetAppBar => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetEditTitle => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetDashboardTitle => 'Mælaborð';

  @override
  String get selectListForDashboard => 'Veldu lista til að skoða mælaborð.';

  @override
  String get spendingAnalysis => 'Útgjaldagreining';

  @override
  String get noItemsToAnalyze => 'Engir hlutir í listanum til að greina.';

  @override
  String get markItemsToSeeAnalysis =>
      'Merktu hluti sem keypta til að sjá greininguna.';

  @override
  String get totalSpending => 'Heildarútgjöld';

  @override
  String get spendingByCategory => 'Útgjöld eftir flokki';

  @override
  String get achievements => 'Áfangar';

  @override
  String get exportPdfExcel => 'Flytja út PDF/Excel';

  @override
  String get exportPdf => 'Flytja út sem PDF';

  @override
  String get exportExcel => 'Flytja út sem Excel';

  @override
  String get organizingAi => 'RÖÐUN MEÐ AI...';

  @override
  String get yesLabel => 'Já';

  @override
  String get noLabel => 'Nei';

  @override
  String get shareListText => 'Innkaupalistinn minn';

  @override
  String get emptyListAddItems =>
      'Listinn þinn er tómur! Bættu fyrst við hlutum. ℹ️';

  @override
  String get listOrganizedMagic => 'Listi töfrandi raðaður í flokka! ✨';

  @override
  String get shoppingMode => 'Innkaupahamur';

  @override
  String get smartOrganization => 'Snjöll röðun';

  @override
  String get savings => 'Sparnaður';

  @override
  String get shoppingModeHeader => 'INNKAUPHAMUR';

  @override
  String get shareAsText => 'Senda hluti sem sniðinn texta';

  @override
  String get shareRealtime => 'Rauntímasamstilling með öðrum';

  @override
  String get quickRecipe => 'Fljótleg uppskrift';

  @override
  String get quickRecipePrompt =>
      'Leggðu til uppskriftir með hlutum af listanum mínum.';

  @override
  String get economyTips => 'Sparnaðarábendingar';

  @override
  String get economyTipsPrompt =>
      'Hvernig get ég sparað peninga við þessi kaup?';

  @override
  String get organizeAisles => 'Raða eftir göngum';

  @override
  String get organizeAislesPrompt => 'Raða eftir göngum markaðarins.';

  @override
  String get recipeSuggestion => 'Uppskriftartillaga';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining einingar eftir';
  }

  @override
  String get addAllToList => 'Bæta öllu við lista';

  @override
  String get organizeByAisles => 'Raða eftir göngum';

  @override
  String get voiceTranscriptionTooltip => 'Radduppskrift (Ókeypis)';

  @override
  String get aiVoiceCommandTooltip => 'AI raddskipun (Premium)';

  @override
  String get voiceCommandTitle => 'AI raddskipun';

  @override
  String get voiceCommandContent =>
      'Talaðu náttúrulega til að stjórna listanum þínum!\n\nDæmi:\n• \'Bæta við brauði, osti og skinku\'\n• \'Fjarlægja þvottaefni\'\n• \'Breyta þema í blátt\'\n\nÞetta er einkaeiginleiki KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Skoða áætlanir';

  @override
  String get itemsAddedSuccess => 'Hlutum bætt við lista!';

  @override
  String get viewList => 'Skoða lista';

  @override
  String get feedbackTitle => 'Senda ábendingu';

  @override
  String get feedbackPrompt => 'Hvað viltu deila?';

  @override
  String get feedbackTypeBug => 'Tilkynna villu';

  @override
  String get feedbackTypeBugHint => 'Eitthvað virkar ekki';

  @override
  String get feedbackTypeSuggestion => 'Ábending';

  @override
  String get feedbackTypeSuggestionHint => 'Hugmynd að því að bæta forritið';

  @override
  String get feedbackTypeTranslation => 'Þýðingarvilla';

  @override
  String get feedbackTypeTranslationHint => 'Röng þýðing eða óeðlilegt orðalag';

  @override
  String get feedbackTypeFeature => 'Beðni um eiginleika';

  @override
  String get feedbackTypeFeatureHint => 'Eiginleiki sem þú vilt sjá';

  @override
  String get feedbackTypeOther => 'Annað';

  @override
  String get feedbackTypeOtherHint => 'Annars konar ábending';

  @override
  String get feedbackHint => 'Lýstu ábendingunni þinni í smáatriðum...';

  @override
  String get feedbackSend => 'Senda ábendingu';

  @override
  String get feedbackSending => 'Sendi...';

  @override
  String get feedbackThankYou => 'Takk!';

  @override
  String get feedbackThankYouMessage =>
      'Ábendingin þín hefur borist og hjálpar okkur að bæta KipiList fyrir alla.';

  @override
  String get feedbackBack => 'Til baka';

  @override
  String feedbackError(String error) {
    return 'Villa við sendingu: $error';
  }

  @override
  String get feedbackRetry => 'Reyna aftur';

  @override
  String get feedbackSettingsTitle => 'Senda ábendingu';

  @override
  String get feedbackSettingsSubtitle =>
      'Tilkynna villur, stinga upp á endurbótum eða laga þýðingar';

  @override
  String get aiEnergy => 'AI orka';

  @override
  String get searchInConversation => 'Leita í samtali...';

  @override
  String get noMessagesFound => 'Engin skilaboð fundust';

  @override
  String get suggestedQuestions => 'Tillögur að spurningum:';

  @override
  String get shoppingAssistant => 'Innkaupaaðstoðarmaður';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased af $total keypt';
  }

  @override
  String get estimatedCost => 'Áætlað';

  @override
  String get viewItems => 'Skoða hluti';

  @override
  String get noItemsInList => 'Engir hlutir á listanum';

  @override
  String get longHistoryWarning =>
      'Löng saga: Aðstoðarmaðurinn einbeitir sér að nýjustu skilaboðunum fyrir betri frammistöðu.';

  @override
  String get listening => 'Hlustar...';

  @override
  String get addDirectToList => 'Bættu beint á listann';

  @override
  String get unlockFullResponse => 'Opnaðu fullt svar';

  @override
  String get switchList => 'Skipta um lista';

  @override
  String get marketMode => 'Markaðsstilling';

  @override
  String get backToChat => 'Aftur í Spjall';

  @override
  String get finishShopping => 'Ljúktu við að versla';

  @override
  String get welcomeAiAssistant => 'Velkomin í AI Assistant';

  @override
  String get createListToStartAi =>
      'Búðu til innkaupalista til að byrja að nota snjallspjallið.';

  @override
  String get howCanIHelp => 'Hvernig get ég hjálpað?';

  @override
  String get chatSubtitleShort => 'Spyrðu um verð, uppskriftir, skipulag...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total keypt';
  }

  @override
  String get quickReplies => 'Fljótleg svör:';

  @override
  String get voiceProFeature =>
      'Ítarlegar raddskipanir eru Pro. Virkjar grunnuppskrift...';

  @override
  String get viewPro => 'Skoða Pro';

  @override
  String get errorLoadingChat =>
      'Úps! Eitthvað fór úrskeiðis við að hlaða spjallinu.';

  @override
  String get errorLoadingChatSubtitle =>
      'Athugaðu tenginguna þína eða reyndu aftur síðar.';

  @override
  String get errorOscillation =>
      'Þetta getur komið fram vegna netsveiflna eða tímabundins óaðgengis. Vinsamlegast reyndu aftur.';

  @override
  String get activeListening => 'Virk hlustun';

  @override
  String get whatToDoWithItem => 'Hvað myndir þú vilja gera við þennan hlut?';

  @override
  String get viewDetails => 'Skoða upplýsingar';

  @override
  String get openMenu => 'Opna valmynd';

  @override
  String get viewRecipe => 'Skoða uppskrift';

  @override
  String get recipeCreated => 'Uppskrift búin til!';

  @override
  String get editRecipe => 'Breyta';

  @override
  String get deleteRecipe => 'Eyða';

  @override
  String get deleteRecipeConfirm => 'Eyða þessari uppskrift?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Ertu viss um að þú viljir eyða „$recipeName“? Ekki er hægt að afturkalla þessa aðgerð.';
  }

  @override
  String get ingredients => 'Hráefni';

  @override
  String get instructions => 'Leiðbeiningar';

  @override
  String get prepTime => 'Undirbúningstími';

  @override
  String get recipeSaved => 'Uppskrift vistuð!';

  @override
  String get noRecipesSaved => 'Engar uppskriftir vistaðar';

  @override
  String get noRecipesSavedHint =>
      'Búðu til þína fyrstu sérsniðnu uppskrift með því að smella á hnappinn hér að neðan.';

  @override
  String get myRecipes => 'Mínar uppskriftir';

  @override
  String get newRecipe => 'Ný uppskrift';

  @override
  String get loadingRecipes => 'Hleður uppskriftunum þínum...';

  @override
  String get errorLoadingRecipes => 'Villa við að hlaða uppskriftum';

  @override
  String get addIngredient => 'Bæta við hráefni';

  @override
  String get saveRecipe => 'Vista';

  @override
  String get recipeName => 'Heiti uppskriftar';

  @override
  String get shortDescription => 'Stutt lýsing';

  @override
  String get prepTimeMinutes => 'Undirbúningstími (mínútur)';

  @override
  String get instructionsHint => 'Skrifaðu eitt skref á hverja línu...';

  @override
  String get addPhoto => 'Bæta við mynd';

  @override
  String get imageUrlPlaceholder => 'Eða límdu inn vefslóð myndar';

  @override
  String get tags => 'Merki';

  @override
  String get recipeTags => 'Merki uppskriftar';

  @override
  String get suggestedTags => 'Tillögur';

  @override
  String get searchRecipes => 'Leita í uppskriftum...';

  @override
  String get filterByTag => 'Sía eftir merki';

  @override
  String get allTags => 'Allt';

  @override
  String get recipeDeleted => 'Uppskrift eytt';

  @override
  String get saveChanges => 'Vista breytingar';

  @override
  String get editRecipeTitle => 'Breyta uppskrift';

  @override
  String get newRecipeTitle => 'Ný uppskrift';

  @override
  String get requiredField => 'Reitur áskilinn';

  @override
  String get chooseImageSource => 'Veldu mynduppsprettu';

  @override
  String get gallery => 'Galéria';

  @override
  String get enterUrl => 'Sláðu inn vefslóð';

  @override
  String get recipeImage => 'Mynd af uppskrift';

  @override
  String get removeImage => 'Fjarlægja mynd';

  @override
  String get mealPlannerTitle => 'Matseðill';

  @override
  String get mealPlannerViewMonthly => 'Mánaðarlegt yfirlit';

  @override
  String get mealPlannerViewWeekly => 'Vikulegt yfirlit';

  @override
  String get mealPlannerNoMeals => 'Engar máltíðir áætlaðar';

  @override
  String get mealPlannerNoMealsHint => 'Smelltu á dag til að bæta við máltíð';

  @override
  String get mealPlannerLoading => 'Hleður matseðli...';

  @override
  String get mealPlannerError => 'Villa við að hlaða matseðli';

  @override
  String get mealPlannerAddMeal => 'Bæta við máltíð';

  @override
  String get mealPlannerEditMeal => 'Breyta máltíð';

  @override
  String get mealPlannerDeleteMeal => 'Fjarlægja máltíð';

  @override
  String get mealPlannerMealDeleted => 'Máltíð fjarlægð';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count skammtar',
      one: '$count skammtur',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Skammtar';

  @override
  String get mealPlannerNoteLabel => 'Athugasemd (valfrjálst)';

  @override
  String get mealPlannerSelectRecipe => 'Veldu uppskrift';

  @override
  String get mealPlannerSearchRecipes => 'Leita í uppskriftum...';

  @override
  String get mealPlannerNoRecipesFound => 'Engar uppskriftir fundust';

  @override
  String get mealPlannerNoRecipesHint =>
      'Búðu til uppskriftir í Uppskriftir flipanum fyrst';

  @override
  String get mealPlannerSave => 'Bæta við áætlun';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count af $total máltíðum áætlaðar';
  }

  @override
  String get mealPlannerGenerateList => 'Gera innkaupalista';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Bæta öllu hráefni úr fyrirhuguðum máltíðum vikunnar á innkaupalistann þinn?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count hráefni bætt við listann þinn!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Engu hráefni til að bæta við. Skipuleggðu máltíðir með uppskriftum fyrst.';

  @override
  String get mealPlannerGenerateListNoList => 'Búðu til innkaupalista fyrst.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Morgunmatur';

  @override
  String get mealPlannerMealTypeLunch => 'Hádegismatur';

  @override
  String get mealPlannerMealTypeDinner => 'Kvöldmatur';

  @override
  String get mealPlannerMealTypeSnack => 'Millimál';

  @override
  String get mealPlannerDateLabel => 'Dagsetning';

  @override
  String get mealPlannerWeekEmpty => 'Ekkert áætlað fyrir þessa viku';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Smelltu á hvaða dag sem er til að byrja að skipuleggja máltíðirnar þínar!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes mín';
  }

  @override
  String get inviteToList => 'Bjóða á lista';

  @override
  String get shareApp => 'Deildu appi';

  @override
  String get shareAppDescription => 'Bjóddu vinum að nota KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Ég nota KipiList til að skipuleggja innkaupin mín! Sæktu í gegnum tengilinn minn og við fáum bæði 7 daga af Premium ókeypis: $url';
  }

  @override
  String get shareReferralSubject => 'Fáðu 7 daga af KipiList Premium!';

  @override
  String get gestureHint =>
      'Haltu inni til að velja • Strjúktu til að fjarlægja';

  @override
  String get catalogTitle => 'Vörulisti';

  @override
  String get catalogMyFrequents => 'Mín tíðindi';

  @override
  String get catalogSearchGlobal => 'Leitaðu að hvaða vöru sem er...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Leitaðu í $category...';
  }

  @override
  String get catalogSortPopular => 'Vinsælast';

  @override
  String get catalogSortAZ => 'A–Ö';

  @override
  String get catalogFilterNational => 'Landsmenn';

  @override
  String get catalogRareSection => 'sjaldgæfari í þínu landi';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Bæta við $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Varan fannst ekki, sláðu inn nafnið';

  @override
  String get catalogBrowse => 'Skoðaðu vörulista';

  @override
  String get offlineBanner => 'Þú ert ótengdur';

  @override
  String get consentTitle => 'Persónuvernd og greining';

  @override
  String get consentBody =>
      'KipiList notar Firebase Analytics til að bæta upplifun þína. Gögn þín eru unnin í samræmi við persónuverndarstefnu okkar.';

  @override
  String get consentAccept => 'Samþykkja';

  @override
  String get consentDecline => 'Nei, takk';

  @override
  String get mealPlannerPantryAllAvailable => 'Til á lager';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vantar atriði',
      one: '$count vantar atriði',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Gildistími';

  @override
  String get notInformed => 'Ekki upplýst';
}

/// The translations for Icelandic, as used in Iceland (`is_IS`).
class AppLocalizationsIsIs extends AppLocalizationsIs {
  AppLocalizationsIsIs() : super('is_IS');

  @override
  String get appTitle => 'Innkaupalisti';

  @override
  String get lists => 'Listar';

  @override
  String get pantry => 'Búrka';

  @override
  String get navChat => 'Spjall';

  @override
  String get navRecipes => 'Uppskriftir';

  @override
  String get navLists => 'Listar';

  @override
  String get navMealPlanner => 'Matseðill';

  @override
  String get cancel => 'Hætta við';

  @override
  String get save => 'Vista';

  @override
  String get create => 'Búa til';

  @override
  String get add => 'Bæta við';

  @override
  String get remove => 'Fjarlægja';

  @override
  String get delete => 'Eyða';

  @override
  String get edit => 'Breyta';

  @override
  String get copy => 'Afrita';

  @override
  String get next => 'Næst';

  @override
  String get retry => 'Reyna aftur';

  @override
  String get regenerate => 'Endurgera';

  @override
  String get copiedToClipboard => 'Afritað á klippispjald';

  @override
  String get confirm => 'Staðfesta';

  @override
  String get close => 'Loka';

  @override
  String get import => 'Flytja inn';

  @override
  String get rename => 'Endurnefna';

  @override
  String get upgrade => 'Uppfæra';

  @override
  String get clear => 'Hreinsa';

  @override
  String error(String message) {
    return 'Villa: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Villa: $message';
  }

  @override
  String get purchaseError => 'Villa við að vinna úr kaupum. Reyndu aftur.';

  @override
  String get restoreError => 'Villa við að endurheimta kaup. Reyndu aftur.';

  @override
  String get loading => 'Hleð...';

  @override
  String get fieldRequired => 'Skyldureitur';

  @override
  String get addedFeedback => 'Bætt við!';

  @override
  String get profile => 'Prófíll';

  @override
  String get exitShoppingMode => 'Hætta verslunarstillingu';

  @override
  String get exit => 'Hætta';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count valin',
      one: '$count valið',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Áætlað';

  @override
  String get alreadyPurchased => 'Þegar keypt';

  @override
  String get clearList => 'Hreinsa lista';

  @override
  String get clearPurchased => 'Hreinsa keypt';

  @override
  String get share => 'Deila';

  @override
  String get shareViaCode => 'Deila með kóða';

  @override
  String get importViaCode => 'Flytja inn með kóða';

  @override
  String get listAssistant => 'Listaaðstoð';

  @override
  String get globalAssistant => 'Alheimsaðstoð';

  @override
  String get becomePremium => 'Verða Premium';

  @override
  String get manageSubscription => 'Stjórna áskrift';

  @override
  String get completePurchase => 'Ljúka kaupum';

  @override
  String get confirmClearList => 'Fjarlægja alla hluti?';

  @override
  String get shareListTitle => 'Deila lista';

  @override
  String get shareThisCode => 'Deildu þessum kóða:';

  @override
  String get validForLimitedTime => 'Gildir í takmarkaðan tíma';

  @override
  String get importListTitle => 'Flytja inn lista';

  @override
  String get enterCodeHint => 'Sláðu inn kóðann';

  @override
  String get confirmArchiveTitle => 'Ljúka kaupum';

  @override
  String get confirmArchiveContent =>
      'Ljúka þessum kaupum og arkívera listann?';

  @override
  String get complete => 'Ljúka';

  @override
  String get listArchived => 'Listi arkíveraður!';

  @override
  String listAdded(String listName) {
    return '$listName bætt við!';
  }

  @override
  String get buy => 'Kaupa';

  @override
  String get unmark => 'Afmerkja';

  @override
  String confirmDeleteItems(int count) {
    return 'Fjarlægja $count hlut(e)?';
  }

  @override
  String get confirmDeleteTitle => 'Staðfesta';

  @override
  String confirmContent(int count) {
    return 'Fjarlægja $count hlut(e)?';
  }

  @override
  String get archiveList => 'Arkívera lista';

  @override
  String get pantryAppBar => 'Búrka';

  @override
  String get generateShoppingList => 'Búa til innkaupalista';

  @override
  String get pantryEmpty => 'Tóm búrka';

  @override
  String get pantryEmptySubtitle => 'Bættu við vörum sem þú vilt hafa heima';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit hlut(ir) þarf að kaupa';
  }

  @override
  String get noItemsToBuy => 'Engir hlutir þarf að kaupa';

  @override
  String get newPantryList => 'Búrkukaup';

  @override
  String get newListTitle => 'Nýr innkaupalisti';

  @override
  String itemsWillBeAdded(int count) {
    return '$count hlut(ir) verða bætt við';
  }

  @override
  String get listNameLabel => 'Nafn lista';

  @override
  String listCreated(String name, int count) {
    return 'Listi \"$name\" búinn til með $count hlutum';
  }

  @override
  String get noTracking => 'Engin rakning';

  @override
  String get markAsPurchased => 'Merkja sem keypt';

  @override
  String editPantryItem(String name) {
    return 'Breyta $name';
  }

  @override
  String get idealQuantity => 'Ákjósanlegt magn';

  @override
  String get currentQuantity => 'Núverandi magn';

  @override
  String get consumed => 'Notað';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name enduruppfyllt: $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Fjarlægja \"$name\" úr búrku?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Breyta $name';
  }

  @override
  String get settingsAppBar => 'Stillingar';

  @override
  String get language => 'Tungumál';

  @override
  String get languagePortuguese => 'Português (Brasilía)';

  @override
  String get languageEnglish => 'ensku';

  @override
  String get languageSystem => 'Sjálfgefið kerfi';

  @override
  String get chooseLanguage => 'Veldu tungumál';

  @override
  String get searchLanguage => 'Leita að tungumáli...';

  @override
  String get currency => 'Gjaldmiðill';

  @override
  String get chooseCurrency => 'Veldu Gjaldmiðill';

  @override
  String get searchCurrency => 'Leita að gjaldmiðli...';

  @override
  String get appearance => 'Útlit';

  @override
  String get light => 'Ljóst';

  @override
  String get system => 'Kerfi';

  @override
  String get dark => 'Dökkt';

  @override
  String get themeColor => 'Þemalitur';

  @override
  String get dynamicColors => 'Breytilegir litir';

  @override
  String get dynamicColorsSubtitle => 'Nota liti byggða á veggfóðrinu þínu';

  @override
  String get dynamicColorsEnabledWarning =>
      'Slökktu á kraftmiklum litum til að þemaliturinn taki gildi';

  @override
  String get finance => 'Fjármál';

  @override
  String get monthlyBudgetNav => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetSubtitle => 'Fylgdu mánaðarlegum útgjöldum þínum';

  @override
  String get data => 'Gögn';

  @override
  String get backupNav => 'Öryggisafrit';

  @override
  String get backupSubtitle => 'Flytja út eða inn gögnin þín';

  @override
  String get about => 'Um';

  @override
  String get version => 'Útgáfa';

  @override
  String get privacy => 'Persónuvernd';

  @override
  String get termsOfUse => 'Notkunarskilmálar';

  @override
  String get backupTitle => 'Öryggisafrit';

  @override
  String get backupPremiumDescription =>
      'Öryggisafrit og útflutningur er premium eiginleiki';

  @override
  String get exportData => 'Flytja út gögn';

  @override
  String get exportDataSubtitle => 'Vista alla lista sem JSON';

  @override
  String get importData => 'Flytja inn gögn';

  @override
  String get importDataSubtitle => 'Endurheimta lista úr JSON';

  @override
  String get importJsonTitle => 'Flytja inn JSON';

  @override
  String get importJsonHint => 'Límdu öryggisafrit JSON hér...';

  @override
  String get backupExported => 'Öryggisafrit flutt út!';

  @override
  String get budgetAppBar => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetPremiumLocked =>
      'Alheims mánaðarleg fjárhagsáætlun er premium';

  @override
  String get budgetUpgradePrompt => 'Uppfærðu til að opna';

  @override
  String get noBudgetDefined => 'Engin fjárhagsáætlun stillt';

  @override
  String totalEstimated(String amount) {
    return 'Áætluð samtals: $amount';
  }

  @override
  String get setBudgetButton => 'Stilla fjárhagsáætlun';

  @override
  String get budgetLists => 'Listar';

  @override
  String get budgetValueLabel => 'Upphæð';

  @override
  String get setBudgetTitle => 'Mánaðarleg fjárhagsáætlun';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Allt';

  @override
  String get filterPending => 'Í bið';

  @override
  String get filterPurchased => 'Keypt';

  @override
  String get sortName => 'Nafn';

  @override
  String get sortCategory => 'Flokkur';

  @override
  String get sortDate => 'Dagsetning';

  @override
  String get sortManual => 'Handvirkt';

  @override
  String get addItem => 'Bæta við hlut';

  @override
  String get itemName => 'Heiti hlutar';

  @override
  String get quantityShort => 'Magn';

  @override
  String get unit => 'Eining';

  @override
  String get category => 'Flokkur';

  @override
  String get estimatedPrice => 'Áætlað verð';

  @override
  String get addItemPrice => 'Áætlað verð';

  @override
  String get editItem => 'Breyta hlut';

  @override
  String get quantityFull => 'Magn';

  @override
  String get editItemPrice => 'Áætlað verð';

  @override
  String get addToPantry => 'Bæta í búrku';

  @override
  String addToPantryPrompt(String name) {
    return 'Bæta \"$name\" við búrku?';
  }

  @override
  String get yes => 'Já';

  @override
  String get productName => 'Heiti vöru';

  @override
  String get idealQty => 'Ákjósanlegt magn';

  @override
  String get currentQty => 'Núverandi magn';

  @override
  String get trackStock => 'Rekja birgðir';

  @override
  String get trackStockActive => 'Birtist í innkaupatillögum';

  @override
  String get trackStockInactive => 'Myndar ekki innkaupatillögu';

  @override
  String get createListDialog => 'Búa til lista';

  @override
  String get renameListDialog => 'Endurnefna lista';

  @override
  String get listHistory => 'Listasaga';

  @override
  String get myLists => 'Listarnir mínir';

  @override
  String get viewActive => 'Skoða virka';

  @override
  String get viewHistory => 'Skoða sögu';

  @override
  String get noArchivedLists => 'Enginn arkíveraður listi';

  @override
  String get noActiveLists => 'Engir virkir listar';

  @override
  String completedOn(String date) {
    return 'Lokið þann $date';
  }

  @override
  String get sharedLabel => 'Deilt';

  @override
  String get restore => 'Endurheimta';

  @override
  String get removeSharedTooltip => 'Fjarlægja';

  @override
  String get deleteListTitle => 'Eyða lista';

  @override
  String deleteListContent(String name) {
    return 'Ertu viss um að þú viljir eyða \"$name\"? Öllum hlutum verður eytt.';
  }

  @override
  String get removeSharedListTitle => 'Fjarlægja deildan lista';

  @override
  String removeSharedListContent(String name) {
    return 'Fjarlægja \"$name\" af listunum þínum? Upprunalegi listinn verður ekki fyrir áhrifum.';
  }

  @override
  String get createNewList => 'Búa til nýjan lista';

  @override
  String get aiAssistant => 'AI aðstoð';

  @override
  String get aiAssistantDescription =>
      'Fáðu snjallar tillögur, uppskriftir og persónulegar ábendingar með AI aðstoðarmanni okkar.';

  @override
  String get generalAssistant => 'Almenn aðstoð';

  @override
  String get newChat => 'Nýtt spjall';

  @override
  String get noHistory => 'Enginn spjallferill';

  @override
  String get deleteSession => 'Eyða spjalli';

  @override
  String get deleteSessionConfirm =>
      'Ertu viss um að þú viljir eyða þessu spjalli? Skilaboðin munu glatast varanlega.';

  @override
  String get clearHistory => 'Hreinsa sögu';

  @override
  String get clearHistoryConfirm =>
      'Hreinsa öll skilaboð í þessum samtalsglugga?';

  @override
  String get chatHint => 'Skrifaðu skilaboð...';

  @override
  String get chatHintBlocked => 'Opnaðu gervigreind til að spjalla';

  @override
  String chatError(String error) {
    return 'Villa við að hlaða spjalli: $error';
  }

  @override
  String get listHelp => 'Hvernig get ég aðstoðað þig með listann?';

  @override
  String get generalHelp => 'Hvernig get ég aðstoðað þig við innkaupin í dag?';

  @override
  String get chatSubtitle =>
      'Spurðu um vörutillögur, uppskriftir eða sparnaðarábendingar.';

  @override
  String get aiError =>
      'Því miður, villa kom upp við að vinna úr beiðninni þinni. Athugaðu tenginguna eða reyndu aftur síðar.';

  @override
  String get aiLimitAlmostReached => 'Næstum upp úr gervigreindarskilaboðum';

  @override
  String get unlockAi => 'Opnaðu ótakmarkaða gervigreind';

  @override
  String get aiTeaserFallback =>
      'Gerast áskrifandi að Premium til að opna allt svarið og fá ótakmarkaða gervigreindarráð til að versla...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Skráðu þig inn til að\nopna premium eiginleika';

  @override
  String get signInGoogle => 'Skráðu þig inn með Google';

  @override
  String get signInApple => 'Skráðu þig inn með Apple';

  @override
  String get continueAsGuest => 'Halda áfram sem gestur';

  @override
  String get onboardingWelcomeTitle => 'Velkomin á KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Snjöllasta leiðin til að skipuleggja innkaupin og spara peninga.';

  @override
  String get onboardingSetupTitle => 'Sérsníddu upplifun þína';

  @override
  String get onboardingSetupDesc =>
      'Veldu hvernig þú vilt að KipiList líti út og virki fyrir þig.';

  @override
  String get onboardingLoginTitle => 'Vistaðu allt í skýinu';

  @override
  String get onboardingLoginDesc =>
      'Gögnin þín samstillt á öllum tækjunum þínum';

  @override
  String get onboardingShareTitle => 'Deildu með þeim sem þú elskar';

  @override
  String get onboardingShareDesc =>
      'Samstilltu lista við fjölskyldu og vini í rauntíma';

  @override
  String get onboardingPremiumTitle => 'Opnaðu alla eiginleika';

  @override
  String get onboardingPremiumSubtitle =>
      'Fáðu sem mest út úr innkaupalistanum þínum';

  @override
  String get onboardingAnnualBadge => 'Best gildi';

  @override
  String get onboardingMonthlyLabel => 'Mánaðarlega';

  @override
  String get onboardingAnnualLabel => 'Árlegt';

  @override
  String get onboardingViewAllPlans => 'Skoða allar áætlanir';

  @override
  String get onboardingSubscribeCta => 'Gerast áskrifandi';

  @override
  String get onboardingCancelAnytime =>
      'Hætta við hvenær sem er. Engin skuldbinding.';

  @override
  String get onboardingContinueAsGuest => 'Haltu áfram sem gestur';

  @override
  String get onboardingRestore => 'Endurheimta';

  @override
  String get onboardingRestoreDesc =>
      'Ertu nú þegar með áskrift? Pikkaðu hér til að endurheimta það.';

  @override
  String get onboardingExit => 'Hætta';

  @override
  String get onboardingPersonalizationTitle => 'Við skulum kynnast þér';

  @override
  String get onboardingPersonalizationDesc =>
      'Við munum nota þetta til að sérsníða tillögur þínar og gera innkaup betri.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Hver er uppáhaldsmaturinn þinn?';

  @override
  String get onboardingPersonalizationFoodHint =>
      't.d. Pizza, sushi, lasagna...';

  @override
  String get onboardingPersonalizationCta => 'Halda áfram';

  @override
  String get onboardingPersonalizationSkip => 'Slepptu í bili';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Segðu okkur uppáhaldsmatinn þinn til að halda áfram';

  @override
  String get settingsDefaultScreen => 'Sjálfgefinn heimaskjár';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Veldu á milli innkaupalista eða gervigreindarspjalls';

  @override
  String get settingsScreenList => 'Innkaupalisti';

  @override
  String get settingsScreenChat => 'AI spjall';

  @override
  String loginError(String error) {
    return 'Innskráningarvilla: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Villa við að hlaða tilboðum. Reyndu aftur.';

  @override
  String get paywallPurchaseError =>
      'Ekki tókst að ganga frá kaupum. Reyndu aftur.';

  @override
  String get paywallRestoreError =>
      'Engin virk áskrift fannst til að endurheimta.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DAGAR ÓKEYPIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count VIKA ÓKEYPIS',
      one: '$count VIKA ÓKEYPIS',
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
  String get paywallTrialTitle => 'Prófaðu KipiList Pro ókeypis í 7 daga';

  @override
  String get paywallTrialSubtitle =>
      'Hætta við hvenær sem er. Ekkert gjald í dag.';

  @override
  String get paywallTrialCta => 'Byrjaðu ókeypis prufuáskrift';

  @override
  String get recipeAddToList => 'Bæta við innkaupalista';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count hráefni bætt við $listName';
  }

  @override
  String get paywallFeaturesTitle => 'Allt sem þú þarft:';

  @override
  String get paywallFeatureUnlimitedLists => 'Ótakmarkaður listi';

  @override
  String get paywallFeatureSmartAI => 'Snjall gervigreind';

  @override
  String get paywallFeatureExpenseControl => 'Kostnaðareftirlit';

  @override
  String get paywallFeatureSharing => 'Samnýting';

  @override
  String get paywallBeforeAfterTitle => 'AI fyrir og eftir:';

  @override
  String get paywallLabelCommon => 'Algengt';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'hrísgrjón';

  @override
  String get paywallBeforeItem2 => 'sápu';

  @override
  String get paywallBeforeItem3 => 'kjöti';

  @override
  String get paywallBeforeItem4 => 'brauð';

  @override
  String get paywallAfterItem1 => 'Korn';

  @override
  String get paywallAfterItem2 => 'Þrif';

  @override
  String get paywallAfterItem3 => 'Kjöt';

  @override
  String get paywallAfterItem4 => 'Bakarí';

  @override
  String get paywallTestimonialsTitle => 'Það sem notendur okkar segja:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI skipuleggur innkaupin mín á nokkrum sekúndum. Ég spara 20 mín í hverja markaðsferð.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Ég gleymdi aldrei aftur listaatriði. AI spjallið er tilkomumikið!';

  @override
  String get paywallSocialProof => '+2.400 fjölskyldur nota það';

  @override
  String get paywallCtaUnlock => 'Opnaðu PRO';

  @override
  String get paywallBestValue => 'BESTU VERÐI';

  @override
  String get paywallMostPopular => 'VINSÆLASTA';

  @override
  String get paywallSafeCheckout => 'Örugg greiðsla';

  @override
  String get paywallSelectPlan => 'Veldu áætlun þína:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SPARA $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Aðeins $price/mánuði';
  }

  @override
  String get paywallPackageAnnual => 'Ársáætlun';

  @override
  String get paywallPackageMonthly => 'Mánaðaráætlun';

  @override
  String get paywallPackageLifetime => 'Aðgangur fyrir lífstíð';

  @override
  String get paywallCancelAnytime =>
      'Hætta við hvenær sem er. Engin skuldbinding.';

  @override
  String get paywallPolicy => 'Persónuverndarstefna';

  @override
  String get paywallTerms => 'Notkunarskilmálar';

  @override
  String get paywallRestore => 'Endurheimta';

  @override
  String get paywallHeroHeadline => 'Kipi AI alltaf þér við hlið';

  @override
  String get paywallHeroSubtitle =>
      'Bættu við hlutum, skipulagðu lista og sparaðu tíma með gervigreind í vasanum';

  @override
  String get paywallBenefit1Desc =>
      'Bætir við, skipuleggur og stingur upp á hlutum allan sólarhringinn';

  @override
  String get paywallBenefit2Desc => 'Engin 3 lista takmörk';

  @override
  String get paywallBenefit3Desc => 'Kostnaðarmælingar og fjölskyldulistar';

  @override
  String get paywallPackageMonthlyDesc => 'Fullur sveigjanleiki';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Byrjaðu ókeypis — $days dagar';
  }

  @override
  String get premiumUpgrade => 'Uppfærðu til að opna';

  @override
  String get itemRemoved => 'Hlut fjarlægður';

  @override
  String get undo => 'Afturkalla';

  @override
  String get emptyListTitle => 'Listinn þinn er tómur';

  @override
  String get emptyListSubtitle => 'Bættu við hlutum til að byrja';

  @override
  String get noListFoundTitle => 'Engir listar fundust';

  @override
  String get noListFoundSubtitle => 'Búðu til þinn fyrsta lista til að byrja';

  @override
  String get createFirstList => 'Búa til fyrsta lista';

  @override
  String get listBudgetTitle => 'Fjárhagsáætlun lista';

  @override
  String get budgetAmountLabel => 'Upphæð fjárhagsáætlunar';

  @override
  String get removeBudget => 'Fjarlægja';

  @override
  String get prefUnlimitedLists => 'Ótakmarkaðir listar';

  @override
  String get prefSharing => 'Deila listum';

  @override
  String get prefFullHistory => 'Full saga';

  @override
  String get prefExportData => 'Flytja út gögn';

  @override
  String get prefCustomThemes => 'Sérsniðin þemu';

  @override
  String get prefMonthlyBudget => 'Alheims mánaðarleg fjárhagsáætlun';

  @override
  String get prefAIAssistant => 'Persónulegur AI aðstoðarmaður';

  @override
  String get prefUnlimitedPantry => 'Ótakmörkuð búrka';

  @override
  String get prefInteractiveArtifacts => 'Gagnvirk AI greinar';

  @override
  String get themeGreen => 'Grænn';

  @override
  String get themeBlue => 'Blár';

  @override
  String get themePurple => 'Fjólublár';

  @override
  String get themeRed => 'Rauður';

  @override
  String get themeOrange => 'Appelsínugulur';

  @override
  String get themePink => 'Bleikur';

  @override
  String get themeIndigo => 'Indígó';

  @override
  String get themeAmber => 'Rauðgulur';

  @override
  String get themeTeal => 'Grænblár';

  @override
  String get themeBrown => 'Brúnn';

  @override
  String get catFruits => 'Ávextir';

  @override
  String get catCleaning => 'Hreinsun';

  @override
  String get catBeverages => 'Drykkir';

  @override
  String get catBakery => 'Bakarí';

  @override
  String get catOthers => 'Annað';

  @override
  String get unitPack => 'pakkning';

  @override
  String get shareSubject => 'Innkaupalisti';

  @override
  String get monthlyBudgetTitle => 'Mánaðarleg fjárhagsáætlun';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Eyða lista';

  @override
  String get pantryItemRemoved => 'Hlut fjarlægður';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit hluti þarf að kaupa',
      one: '$deficit hlut þarf að kaupa',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Karfa samtals';

  @override
  String get restockLabel => 'Enduruppfylla';

  @override
  String get advancedFeatures => 'Ítarlegir eiginleikar';

  @override
  String get selectAll => 'Velja allt';

  @override
  String get deselectAll => 'Afvelja allt';

  @override
  String get monthlyBudgetAppBar => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetEditTitle => 'Mánaðarleg fjárhagsáætlun';

  @override
  String get budgetDashboardTitle => 'Mælaborð';

  @override
  String get selectListForDashboard => 'Veldu lista til að skoða mælaborð.';

  @override
  String get spendingAnalysis => 'Útgjaldagreining';

  @override
  String get noItemsToAnalyze => 'Engir hlutir í listanum til að greina.';

  @override
  String get markItemsToSeeAnalysis =>
      'Merktu hluti sem keypta til að sjá greininguna.';

  @override
  String get totalSpending => 'Heildarútgjöld';

  @override
  String get spendingByCategory => 'Útgjöld eftir flokki';

  @override
  String get achievements => 'Áfangar';

  @override
  String get exportPdfExcel => 'Flytja út PDF/Excel';

  @override
  String get exportPdf => 'Flytja út sem PDF';

  @override
  String get exportExcel => 'Flytja út sem Excel';

  @override
  String get organizingAi => 'RÖÐUN MEÐ AI...';

  @override
  String get yesLabel => 'Já';

  @override
  String get noLabel => 'Nei';

  @override
  String get shareListText => 'Innkaupalistinn minn';

  @override
  String get emptyListAddItems =>
      'Listinn þinn er tómur! Bættu fyrst við hlutum. ℹ️';

  @override
  String get listOrganizedMagic => 'Listi töfrandi raðaður í flokka! ✨';

  @override
  String get shoppingMode => 'Innkaupahamur';

  @override
  String get smartOrganization => 'Snjöll röðun';

  @override
  String get savings => 'Sparnaður';

  @override
  String get shoppingModeHeader => 'INNKAUPHAMUR';

  @override
  String get shareAsText => 'Senda hluti sem sniðinn texta';

  @override
  String get shareRealtime => 'Rauntímasamstilling með öðrum';

  @override
  String get quickRecipe => 'Fljótleg uppskrift';

  @override
  String get quickRecipePrompt =>
      'Leggðu til uppskriftir með hlutum af listanum mínum.';

  @override
  String get economyTips => 'Sparnaðarábendingar';

  @override
  String get economyTipsPrompt =>
      'Hvernig get ég sparað peninga við þessi kaup?';

  @override
  String get organizeAisles => 'Raða eftir göngum';

  @override
  String get organizeAislesPrompt => 'Raða eftir göngum markaðarins.';

  @override
  String get recipeSuggestion => 'Uppskriftartillaga';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining einingar eftir';
  }

  @override
  String get addAllToList => 'Bæta öllu við lista';

  @override
  String get organizeByAisles => 'Raða eftir göngum';

  @override
  String get voiceTranscriptionTooltip => 'Radduppskrift (Ókeypis)';

  @override
  String get aiVoiceCommandTooltip => 'AI raddskipun (Premium)';

  @override
  String get voiceCommandTitle => 'AI raddskipun';

  @override
  String get voiceCommandContent =>
      'Talaðu náttúrulega til að stjórna listanum þínum!\n\nDæmi:\n• \'Bæta við brauði, osti og skinku\'\n• \'Fjarlægja þvottaefni\'\n• \'Breyta þema í blátt\'\n\nÞetta er einkaeiginleiki KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Skoða áætlanir';

  @override
  String get itemsAddedSuccess => 'Hlutum bætt við lista!';

  @override
  String get viewList => 'Skoða lista';

  @override
  String get feedbackTitle => 'Senda ábendingu';

  @override
  String get feedbackPrompt => 'Hvað viltu deila?';

  @override
  String get feedbackTypeBug => 'Tilkynna villu';

  @override
  String get feedbackTypeBugHint => 'Eitthvað virkar ekki';

  @override
  String get feedbackTypeSuggestion => 'Ábending';

  @override
  String get feedbackTypeSuggestionHint => 'Hugmynd til að bæta forritið';

  @override
  String get feedbackTypeTranslation => 'Þýðingarvilla';

  @override
  String get feedbackTypeTranslationHint => 'Rang eða óeðlileg þýðing';

  @override
  String get feedbackTypeFeature => 'Beðni um eiginleika';

  @override
  String get feedbackTypeFeatureHint => 'Eiginleiki sem þú vilt sjá';

  @override
  String get feedbackTypeOther => 'Annað';

  @override
  String get feedbackTypeOtherHint => 'Önnur tegund ábendingar';

  @override
  String get feedbackHint => 'Lýstu ábendingunni þinni í smáatriðum...';

  @override
  String get feedbackSend => 'Senda ábendingu';

  @override
  String get feedbackSending => 'Sendi...';

  @override
  String get feedbackThankYou => 'Takk!';

  @override
  String get feedbackThankYouMessage =>
      'Ábendingin þín hefur borist og hjálpar okkur að bæta KipiList fyrir alla.';

  @override
  String get feedbackBack => 'Til baka';

  @override
  String feedbackError(String error) {
    return 'Villa við sendingu: $error';
  }

  @override
  String get feedbackRetry => 'Reyna aftur';

  @override
  String get feedbackSettingsTitle => 'Senda ábendingu';

  @override
  String get feedbackSettingsSubtitle =>
      'Tilkynna villur, stinga upp á endurbótum eða laga þýðingar';

  @override
  String get aiEnergy => 'AI orka';

  @override
  String get searchInConversation => 'Leita í samtali...';

  @override
  String get noMessagesFound => 'Engin skilaboð fundust';

  @override
  String get suggestedQuestions => 'Tillögur að spurningum:';

  @override
  String get shoppingAssistant => 'Innkaupaaðstoðarmaður';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased af $total keypt';
  }

  @override
  String get estimatedCost => 'Áætlað';

  @override
  String get viewItems => 'Skoða hluti';

  @override
  String get noItemsInList => 'Engir hlutir á listanum';

  @override
  String get longHistoryWarning =>
      'Löng saga: Aðstoðarmaðurinn einbeitir sér að nýjustu skilaboðunum fyrir betri frammistöðu.';

  @override
  String get listening => 'Hlustar...';

  @override
  String get addDirectToList => 'Bættu beint á listann';

  @override
  String get unlockFullResponse => 'Opnaðu fullt svar';

  @override
  String get switchList => 'Skipta um lista';

  @override
  String get marketMode => 'Markaðsstilling';

  @override
  String get backToChat => 'Aftur í Spjall';

  @override
  String get finishShopping => 'Ljúktu við að versla';

  @override
  String get welcomeAiAssistant => 'Velkomin í AI Assistant';

  @override
  String get createListToStartAi =>
      'Búðu til innkaupalista til að byrja að nota snjallspjallið.';

  @override
  String get howCanIHelp => 'Hvernig get ég hjálpað?';

  @override
  String get chatSubtitleShort => 'Spyrðu um verð, uppskriftir, skipulag...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total keypt';
  }

  @override
  String get quickReplies => 'Fljótleg svör:';

  @override
  String get voiceProFeature =>
      'Ítarlegar raddskipanir eru Pro. Virkjar grunnuppskrift...';

  @override
  String get viewPro => 'Skoða Pro';

  @override
  String get errorLoadingChat =>
      'Úps! Eitthvað fór úrskeiðis við að hlaða spjallinu.';

  @override
  String get errorLoadingChatSubtitle =>
      'Athugaðu tenginguna þína eða reyndu aftur síðar.';

  @override
  String get errorOscillation =>
      'Þetta getur komið fram vegna netsveiflna eða tímabundins óaðgengis. Vinsamlegast reyndu aftur.';

  @override
  String get activeListening => 'Virk hlustun';

  @override
  String get whatToDoWithItem => 'Hvað myndir þú vilja gera við þennan hlut?';

  @override
  String get viewDetails => 'Skoða upplýsingar';

  @override
  String get openMenu => 'Opna valmynd';

  @override
  String get viewRecipe => 'Skoða uppskrift';

  @override
  String get recipeCreated => 'Uppskrift búin til!';

  @override
  String get editRecipe => 'Breyta';

  @override
  String get deleteRecipe => 'Eyða';

  @override
  String get deleteRecipeConfirm => 'Eyða þessari uppskrift?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Ertu viss um að þú viljir eyða „$recipeName“? Ekki er hægt að afturkalla þessa aðgerð.';
  }

  @override
  String get ingredients => 'Hráefni';

  @override
  String get instructions => 'Leiðbeiningar';

  @override
  String get prepTime => 'Undirbúningstími';

  @override
  String get recipeSaved => 'Uppskrift vistuð!';

  @override
  String get noRecipesSaved => 'Engar uppskriftir vistaðar';

  @override
  String get noRecipesSavedHint =>
      'Búðu til þína fyrstu sérsniðnu uppskrift með því að smella á hnappinn hér að neðan.';

  @override
  String get myRecipes => 'Mínar uppskriftir';

  @override
  String get newRecipe => 'Ný uppskrift';

  @override
  String get loadingRecipes => 'Hleður uppskriftunum þínum...';

  @override
  String get errorLoadingRecipes => 'Villa við að hlaða uppskriftum';

  @override
  String get addIngredient => 'Bæta við hráefni';

  @override
  String get saveRecipe => 'Vista';

  @override
  String get recipeName => 'Heiti uppskriftar';

  @override
  String get shortDescription => 'Stutt lýsing';

  @override
  String get prepTimeMinutes => 'Undirbúningstími (mínútur)';

  @override
  String get instructionsHint => 'Skrifaðu eitt skref á hverja línu...';

  @override
  String get addPhoto => 'Bæta við mynd';

  @override
  String get imageUrlPlaceholder => 'Eða límdu inn vefslóð myndar';

  @override
  String get tags => 'Merki';

  @override
  String get recipeTags => 'Merki uppskriftar';

  @override
  String get suggestedTags => 'Tillögur';

  @override
  String get searchRecipes => 'Leita í uppskriftum...';

  @override
  String get filterByTag => 'Sía eftir merki';

  @override
  String get allTags => 'Allt';

  @override
  String get recipeDeleted => 'Uppskrift eytt';

  @override
  String get saveChanges => 'Vista breytingar';

  @override
  String get editRecipeTitle => 'Breyta uppskrift';

  @override
  String get newRecipeTitle => 'Ný uppskrift';

  @override
  String get requiredField => 'Reitur áskilinn';

  @override
  String get chooseImageSource => 'Veldu mynduppsprettu';

  @override
  String get gallery => 'Galéria';

  @override
  String get enterUrl => 'Sláðu inn vefslóð';

  @override
  String get recipeImage => 'Mynd af uppskrift';

  @override
  String get removeImage => 'Fjarlægja mynd';

  @override
  String get mealPlannerTitle => 'Matseðill';

  @override
  String get mealPlannerViewMonthly => 'Mánaðarlegt yfirlit';

  @override
  String get mealPlannerViewWeekly => 'Vikulegt yfirlit';

  @override
  String get mealPlannerNoMeals => 'Engar máltíðir áætlaðar';

  @override
  String get mealPlannerNoMealsHint => 'Smelltu á dag til að bæta við máltíð';

  @override
  String get mealPlannerLoading => 'Hleður matseðli...';

  @override
  String get mealPlannerError => 'Villa við að hlaða matseðli';

  @override
  String get mealPlannerAddMeal => 'Bæta við máltíð';

  @override
  String get mealPlannerEditMeal => 'Breyta máltíð';

  @override
  String get mealPlannerDeleteMeal => 'Fjarlægja máltíð';

  @override
  String get mealPlannerMealDeleted => 'Máltíð fjarlægð';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count skammtar',
      one: '$count skammtur',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Skammtar';

  @override
  String get mealPlannerNoteLabel => 'Athugasemd (valfrjálst)';

  @override
  String get mealPlannerSelectRecipe => 'Veldu uppskrift';

  @override
  String get mealPlannerSearchRecipes => 'Leita í uppskriftum...';

  @override
  String get mealPlannerNoRecipesFound => 'Engar uppskriftir fundust';

  @override
  String get mealPlannerNoRecipesHint =>
      'Búðu til uppskriftir í Uppskriftir flipanum fyrst';

  @override
  String get mealPlannerSave => 'Bæta við áætlun';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count af $total máltíðum áætlaðar';
  }

  @override
  String get mealPlannerGenerateList => 'Gera innkaupalista';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Bæta öllu hráefni úr fyrirhuguðum máltíðum vikunnar á innkaupalistann þinn?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count hráefni bætt við listann þinn!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Engu hráefni til að bæta við. Skipuleggðu máltíðir með uppskriftum fyrst.';

  @override
  String get mealPlannerGenerateListNoList => 'Búðu til innkaupalista fyrst.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Morgunmatur';

  @override
  String get mealPlannerMealTypeLunch => 'Hádegismatur';

  @override
  String get mealPlannerMealTypeDinner => 'Kvöldmatur';

  @override
  String get mealPlannerMealTypeSnack => 'Millimál';

  @override
  String get mealPlannerDateLabel => 'Dagsetning';

  @override
  String get mealPlannerWeekEmpty => 'Ekkert áætlað fyrir þessa viku';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Smelltu á hvaða dag sem er til að byrja að skipuleggja máltíðirnar þínar!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes mín';
  }

  @override
  String get inviteToList => 'Bjóða á lista';

  @override
  String get shareApp => 'Deildu appi';

  @override
  String get shareAppDescription => 'Bjóddu vinum að nota KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Ég nota KipiList til að skipuleggja innkaupin mín! Sæktu í gegnum tengilinn minn og við fáum bæði 7 daga af Premium ókeypis: $url';
  }

  @override
  String get shareReferralSubject => 'Fáðu 7 daga af KipiList Premium!';

  @override
  String get gestureHint =>
      'Haltu inni til að velja • Strjúktu til að fjarlægja';

  @override
  String get catalogTitle => 'Vörulisti';

  @override
  String get catalogMyFrequents => 'Mín tíðindi';

  @override
  String get catalogSearchGlobal => 'Leitaðu að hvaða vöru sem er...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Leitaðu í $category...';
  }

  @override
  String get catalogSortPopular => 'Vinsælast';

  @override
  String get catalogSortAZ => 'A–Ö';

  @override
  String get catalogFilterNational => 'Landsmenn';

  @override
  String get catalogRareSection => 'sjaldgæfari í þínu landi';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Bæta við $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Varan fannst ekki, sláðu inn nafnið';

  @override
  String get catalogBrowse => 'Skoðaðu vörulista';

  @override
  String get offlineBanner => 'Þú ert ótengdur';

  @override
  String get consentTitle => 'Persónuvernd og greining';

  @override
  String get consentBody =>
      'KipiList notar Firebase Analytics til að bæta upplifun þína. Gögn þín eru unnin í samræmi við persónuverndarstefnu okkar.';

  @override
  String get consentAccept => 'Samþykkja';

  @override
  String get consentDecline => 'Nei, takk';

  @override
  String get mealPlannerPantryAllAvailable => 'Til á lager';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vantar atriði',
      one: '$count vantar atriði',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Gildistími';

  @override
  String get notInformed => 'Ekki upplýst';
}
