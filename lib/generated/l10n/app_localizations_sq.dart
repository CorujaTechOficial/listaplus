// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appTitle => 'Lista e Blerjeve';

  @override
  String get lists => 'Listat';

  @override
  String get pantry => 'Qilar';

  @override
  String get navChat => 'Biseda';

  @override
  String get navRecipes => 'Receta';

  @override
  String get navLists => 'Listat';

  @override
  String get navMealPlanner => 'Menyja';

  @override
  String get cancel => 'Anulo';

  @override
  String get save => 'Ruaj';

  @override
  String get create => 'Krijo';

  @override
  String get add => 'Shto';

  @override
  String get remove => 'Hiq';

  @override
  String get delete => 'Fshi';

  @override
  String get edit => 'Ndrysho';

  @override
  String get copy => 'Kopjo';

  @override
  String get next => 'Tjetra';

  @override
  String get retry => 'Provo përsëri';

  @override
  String get regenerate => 'Rigjenero';

  @override
  String get copiedToClipboard => 'Kopjuar në clipboard';

  @override
  String get confirm => 'Konfirmo';

  @override
  String get close => 'Mbyll';

  @override
  String get import => 'Importo';

  @override
  String get rename => 'Riemërto';

  @override
  String get upgrade => 'Përmirëso';

  @override
  String get clear => 'Pastro';

  @override
  String error(String message) {
    return 'Gabim: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Gabim: $message';
  }

  @override
  String get purchaseError => 'Gabim në përpunimin e blerjes. Provo përsëri.';

  @override
  String get restoreError => 'Gabim në restaurimin e blerjeve. Provo përsëri.';

  @override
  String get loading => 'Duke u ngarkuar...';

  @override
  String get fieldRequired => 'Fushë e detyrueshme';

  @override
  String get addedFeedback => 'U shtua!';

  @override
  String get profile => 'Profili';

  @override
  String get exitShoppingMode => 'Dilni nga modaliteti i blerjeve';

  @override
  String get exit => 'Dilni';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count të zgjedhura',
      one: '$count i zgjedhur',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Vlerësuar';

  @override
  String get alreadyPurchased => 'Tashmë të blera';

  @override
  String get clearList => 'Pastro listën';

  @override
  String get clearPurchased => 'Pastro të blerat';

  @override
  String get share => 'Ndaj';

  @override
  String get shareViaCode => 'Ndaj përmes kodit';

  @override
  String get importViaCode => 'Importo përmes kodit';

  @override
  String get listAssistant => 'Asistent i listës';

  @override
  String get globalAssistant => 'Asistent global';

  @override
  String get becomePremium => 'Bëhu Premium';

  @override
  String get manageSubscription => 'Menaxho abonimin';

  @override
  String get completePurchase => 'Përfundo blerjen';

  @override
  String get confirmClearList => 'Hiq të gjithë artikujt?';

  @override
  String get shareListTitle => 'Ndaj Listën';

  @override
  String get shareThisCode => 'Ndaj këtë kod:';

  @override
  String get validForLimitedTime => 'Vlefshëm për kohë të kufizuar';

  @override
  String get importListTitle => 'Importo Listën';

  @override
  String get enterCodeHint => 'Fut kodin';

  @override
  String get confirmArchiveTitle => 'Përfundo Blerjen';

  @override
  String get confirmArchiveContent => 'Përfundo këtë blerje dhe arkivo listën?';

  @override
  String get complete => 'Përfundo';

  @override
  String get listArchived => 'Lista u arkivua me sukses!';

  @override
  String listAdded(String listName) {
    return '$listName u shtua!';
  }

  @override
  String get buy => 'Bli';

  @override
  String get unmark => 'Çshëno';

  @override
  String confirmDeleteItems(int count) {
    return 'Hiq $count artikuj?';
  }

  @override
  String get confirmDeleteTitle => 'Konfirmo';

  @override
  String confirmContent(int count) {
    return 'Hiq $count artikuj?';
  }

  @override
  String get archiveList => 'Arkivo listën';

  @override
  String get pantryAppBar => 'Qilar';

  @override
  String get generateShoppingList => 'Gjenero listën e blerjeve';

  @override
  String get pantryEmpty => 'Qilar bosh';

  @override
  String get pantryEmptySubtitle =>
      'Shto produktet që dëshiron të mbash në shtëpi';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit artikuj duhet të blihen';
  }

  @override
  String get noItemsToBuy => 'Asnjë artikull nuk ka nevojë të blihet';

  @override
  String get newPantryList => 'Blerje nga Qilar';

  @override
  String get newListTitle => 'Listë e Re Blerjesh';

  @override
  String itemsWillBeAdded(int count) {
    return '$count artikuj do të shtohen';
  }

  @override
  String get listNameLabel => 'Emri i listës';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" u krijua me $count artikuj';
  }

  @override
  String get noTracking => 'Pa gjurmim';

  @override
  String get markAsPurchased => 'Shëno si të blerë';

  @override
  String editPantryItem(String name) {
    return 'Ndrysho $name';
  }

  @override
  String get idealQuantity => 'Sasia ideale';

  @override
  String get currentQuantity => 'Sasia aktuale';

  @override
  String get consumed => 'Konsumuar';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name u rimbush në $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Hiq \"$name\" nga qilari?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Ndrysho $name';
  }

  @override
  String get scanProductTitle => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Vendoseni barkodin në qendër';

  @override
  String get product => 'Product';

  @override
  String get settingsAppBar => 'Cilësimet';

  @override
  String get language => 'Gjuha';

  @override
  String get languagePortuguese => 'portugalisht (Brazil)';

  @override
  String get languageEnglish => 'anglisht';

  @override
  String get languageSystem => 'Parazgjedhja e sistemit';

  @override
  String get chooseLanguage => 'Zgjidhni gjuhën';

  @override
  String get searchLanguage => 'Kërko gjuhën...';

  @override
  String get currency => 'Monedha';

  @override
  String get chooseCurrency => 'Zgjidhni monedhën';

  @override
  String get searchCurrency => 'Kërko monedhën...';

  @override
  String get appearance => 'Pamja';

  @override
  String get light => 'E çelët';

  @override
  String get system => 'Sistemi';

  @override
  String get dark => 'E errët';

  @override
  String get themeColor => 'Ngjyra e temës';

  @override
  String get dynamicColors => 'Ngjyra dinamike';

  @override
  String get dynamicColorsSubtitle => 'Përdorni ngjyrat bazuar në sfondin tuaj';

  @override
  String get dynamicColorsEnabledWarning =>
      'Çaktivizo ngjyrat dinamike që ngjyra e temës të hyjë në fuqi';

  @override
  String get finance => 'Financa';

  @override
  String get monthlyBudgetNav => 'Buxheti mujor';

  @override
  String get budgetSubtitle => 'Gjurmo shpenzimet e tua mujore';

  @override
  String get data => 'Të dhënat';

  @override
  String get backupNav => 'Rezervim';

  @override
  String get backupSubtitle => 'Eksporto ose importo të dhënat e tua';

  @override
  String get about => 'Rreth';

  @override
  String get version => 'Versioni';

  @override
  String get privacy => 'Privatësia';

  @override
  String get termsOfUse => 'Kushtet e përdorimit';

  @override
  String get myAchievements => 'Arritjet e Mia';

  @override
  String get itemsPurchased => 'Artikujt e blerë';

  @override
  String get totalSavings => 'Kursimet totale';

  @override
  String get currentStreak => 'Rrjeti aktual';

  @override
  String streakDays(int count) {
    return '$days ditë';
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
  String get backupTitle => 'Rezervim';

  @override
  String get backupPremiumDescription =>
      'Rezervimi dhe eksportimi janë veçori premium';

  @override
  String get exportData => 'Eksporto të dhënat';

  @override
  String get exportDataSubtitle => 'Ruaj të gjitha listat si JSON';

  @override
  String get importData => 'Importo të dhënat';

  @override
  String get importDataSubtitle => 'Rivendos listat nga një JSON';

  @override
  String get importJsonTitle => 'Importo JSON';

  @override
  String get importJsonHint => 'Ngjit JSON-in e rezervimit këtu...';

  @override
  String get backupExported => 'Rezervimi u eksportua!';

  @override
  String get budgetAppBar => 'Buxheti Mujor';

  @override
  String get budgetPremiumLocked => 'Buxheti global mujor është premium';

  @override
  String get budgetUpgradePrompt => 'Përmirëso për të zhbllokuar';

  @override
  String get noBudgetDefined => 'Asnjë buxhet i caktuar';

  @override
  String totalEstimated(String amount) {
    return 'Totali i vlerësuar: $amount';
  }

  @override
  String get setBudgetButton => 'Cakto buxhetin';

  @override
  String get budgetLists => 'Listat';

  @override
  String get budgetValueLabel => 'Shuma';

  @override
  String get setBudgetTitle => 'Buxheti Mujor';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Të gjitha';

  @override
  String get filterPending => 'Në pritje';

  @override
  String get filterPurchased => 'Të blera';

  @override
  String get sortName => 'Emri';

  @override
  String get sortCategory => 'Kategoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

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
  String get addItem => 'Shto Artikull';

  @override
  String get itemName => 'Emri i artikullit';

  @override
  String get quantityShort => 'Sasia';

  @override
  String get unit => 'Njësia';

  @override
  String get category => 'Kategoria';

  @override
  String get estimatedPrice => 'Çmimi i vlerësuar';

  @override
  String get addItemPrice => 'Çmimi i vlerësuar';

  @override
  String get editItem => 'Ndrysho Artikull';

  @override
  String get quantityFull => 'Sasia';

  @override
  String get editItemPrice => 'Çmimi i vlerësuar';

  @override
  String get addToPantry => 'Shto në Qilar';

  @override
  String addToPantryPrompt(String name) {
    return 'Shto \"$name\" në Qilarin tënd?';
  }

  @override
  String get yes => 'Po';

  @override
  String get productName => 'Emri i produktit';

  @override
  String get idealQty => 'Sasia ideale';

  @override
  String get currentQty => 'Sasia aktuale';

  @override
  String get trackStock => 'Gjurmo stokun';

  @override
  String get trackStockActive => 'Shfaqet në sugjerimet e blerjeve';

  @override
  String get trackStockInactive => 'Nuk gjeneron sugjerim blerjeje';

  @override
  String get createListDialog => 'Krijo Listë';

  @override
  String get renameListDialog => 'Riemërto Listën';

  @override
  String get listHistory => 'Historiku i Listave';

  @override
  String get myLists => 'Listat e Mia';

  @override
  String get viewActive => 'Shiko Aktive';

  @override
  String get viewHistory => 'Shiko Historikun';

  @override
  String get noArchivedLists => 'Asnjë listë e arkivuar';

  @override
  String get noActiveLists => 'Asnjë listë aktive';

  @override
  String completedOn(String date) {
    return 'Përfunduar më $date';
  }

  @override
  String get sharedLabel => 'E ndarë';

  @override
  String get restore => 'Rivendos';

  @override
  String get removeSharedTooltip => 'Hiq';

  @override
  String get deleteListTitle => 'Fshi listën';

  @override
  String deleteListContent(String name) {
    return 'Jeni të sigurt që doni të fshini \"$name\"? Të gjithë artikujt do të hiqen.';
  }

  @override
  String get removeSharedListTitle => 'Hiq listën e ndarë';

  @override
  String removeSharedListContent(String name) {
    return 'Hiq \"$name\" nga listat e tua? Lista origjinale nuk do të ndikohet.';
  }

  @override
  String get createNewList => 'Krijo listë të re';

  @override
  String get aiAssistant => 'Asistent AI';

  @override
  String get aiAssistantDescription =>
      'Merr sugjerime të zgjuara, receta dhe këshilla të personalizuara me asistentin tonë AI.';

  @override
  String get generalAssistant => 'Asistent i Përgjithshëm';

  @override
  String get newChat => 'Bisedë e re';

  @override
  String get noHistory => 'Nuk ka histori bisede';

  @override
  String get deleteSession => 'Fshi Chat';

  @override
  String get deleteSessionConfirm =>
      'Je i sigurt që dëshiron ta fshish këtë bisedë? Mesazhet do të humbasin përgjithmonë.';

  @override
  String get clearHistory => 'Pastro Historikun';

  @override
  String get clearHistoryConfirm => 'Pastro të gjitha mesazhet në këtë sesion?';

  @override
  String get chatHint => 'Shkruaj mesazhin tënd...';

  @override
  String get chatHintBlocked => 'Zhbllokoni AI për të biseduar';

  @override
  String chatError(String error) {
    return 'Gabim në ngarkimin e bisedës: $error';
  }

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

  @override
  String get listHelp => 'Si mund të ndihmoj me listën tënde?';

  @override
  String get generalHelp => 'Si mund të ndihmoj me blerjet e tua sot?';

  @override
  String get chatSubtitle =>
      'Kërko sugjerime për artikuj, receta ose këshilla kursimi.';

  @override
  String get aiError =>
      'Na vjen keq, ndodhi një gabim gjatë përpunimit të kërkesës suaj. Kontrollo lidhjen ose provo përsëri më vonë.';

  @override
  String get aiLimitAlmostReached => 'Pothuajse nuk ka mesazhe të AI';

  @override
  String get unlockAi => 'Zhbllokoni AI të pakufizuar';

  @override
  String get aiTeaserFallback =>
      'Abonohu ​​në Premium për të zhbllokuar përgjigjen e plotë dhe për të marrë këshilla të pakufizuara për AI për blerjet tuaja...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Veprimet e inteligjencës artificiale të mbetura këtë muaj — përmirësimi pa kufi';
  }

  @override
  String get aiUsageExhausted =>
      'U arrit kufiri mujor i AI. Përmirësojeni në Pro për pakufizuar →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Hyr për të zhbllokuar\nveçoritë premium';

  @override
  String get signInGoogle => 'Hyr me Google';

  @override
  String get signInApple => 'Hyr me Apple';

  @override
  String get continueAsGuest => 'Vazhdo si i ftuar';

  @override
  String get onboardingWelcomeTitle => 'Mirësevini në KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Mënyra më e zgjuar për të organizuar blerjet tuaja dhe për të kursyer para.';

  @override
  String get onboardingSetupTitle => 'Personalizoni përvojën tuaj';

  @override
  String get onboardingSetupDesc =>
      'Zgjidhni si dëshironi që KipiList të duket dhe të punojë për ju.';

  @override
  String get onboardingLoginTitle => 'Ruani gjithçka në re';

  @override
  String get onboardingLoginDesc =>
      'Të dhënat tuaja u sinkronizuan në të gjitha pajisjet tuaja';

  @override
  String get onboardingShareTitle => 'Ndani me ata që doni';

  @override
  String get onboardingShareDesc =>
      'Sinkronizoni listat me familjen dhe miqtë në kohë reale';

  @override
  String get onboardingPremiumTitle => 'Zhbllokoni të gjitha veçoritë';

  @override
  String get onboardingPremiumSubtitle =>
      'Përfitoni sa më shumë nga listat tuaja të blerjeve';

  @override
  String get onboardingAnnualBadge => 'Vlera më e mirë';

  @override
  String get onboardingMonthlyLabel => 'Mujore';

  @override
  String get onboardingAnnualLabel => 'Vjetore';

  @override
  String get onboardingViewAllPlans => 'Shikoni të gjitha planet';

  @override
  String get onboardingSubscribeCta => 'Abonohu';

  @override
  String get onboardingCancelAnytime => 'Anulo në çdo kohë. Asnjë angazhim.';

  @override
  String get onboardingContinueAsGuest => 'Vazhdo si mysafir';

  @override
  String get onboardingRestore => 'Rivendos blerjet';

  @override
  String get onboardingRestoreDesc =>
      'Keni tashmë një abonim? Trokit këtu për ta rivendosur.';

  @override
  String get onboardingMaybeLater => 'Ndoshta më vonë';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hej $name, organizoje blerjet në mënyrën e duhur.';
  }

  @override
  String get onboardingSlide1Title => 'Lista e zgjuar e blerjeve';

  @override
  String get onboardingSlide1Body =>
      'Krijoni dhe ndani listat menjëherë. Kipi shton artikuj automatikisht bazuar në zakonet tuaja.';

  @override
  String get onboardingSlide2Title => 'Njihuni me Kipin';

  @override
  String get onboardingSlide2Body =>
      'Pyetni çdo gjë - krijoni lista, gjeni receta, gjurmoni qilarin tuaj, planifikoni javën tuaj.';

  @override
  String get onboardingSlide3Title => 'Planifikimi i qilareve dhe vakteve';

  @override
  String get onboardingSlide3Body =>
      'Ndiqni atë që keni, planifikoni vaktet dhe gjeneroni listat e blerjeve automatikisht.';

  @override
  String get onboardingExit => 'Dilni';

  @override
  String get onboardingPersonalizationTitle => 'Le të njihemi me ju';

  @override
  String get onboardingPersonalizationDesc =>
      'Ne do ta përdorim këtë për të personalizuar sugjerimet tuaja dhe për t\'i bërë blerjet më të zgjuara.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Cili është ushqimi juaj i preferuar?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'p.sh. Pica, Sushi, Lasagna...';

  @override
  String get onboardingPersonalizationCta => 'Vazhdoni';

  @override
  String get onboardingPersonalizationSkip => 'Kalo për momentin';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Na tregoni ushqimin tuaj të preferuar për të vazhduar';

  @override
  String get settingsDefaultScreen => 'Ekrani bazë i parazgjedhur';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Zgjidhni midis listës së blerjeve ose bisedës me AI';

  @override
  String get settingsScreenList => 'Lista e blerjeve';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Gabim në hyrje: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Gabim gjatë ngarkimit të ofertave. Provo sërish.';

  @override
  String get paywallPurchaseError =>
      'Blerja nuk mund të përfundohej. Provo sërish.';

  @override
  String get paywallRestoreError =>
      'Nuk u gjet asnjë abonim aktiv për t\'u rivendosur.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DITË FALAS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count JAVE FALAS',
      one: '$count JAVA FALAS',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MUAJ FALAS',
      one: '$count MONTH FALAS',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Provoni falas!';

  @override
  String get paywallTrialSubtitle => 'Anulo në çdo kohë. Pa pagesë sot.';

  @override
  String get paywallTrialCta => 'Filloni provën falas';

  @override
  String get recipeAddToList => 'Shto në listën e blerjeve';

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
  String get noListSelected =>
      'Nuk është zgjedhur asnjë listë. Hapni një listë fillimisht.';

  @override
  String get paywallFeaturesTitle => 'Gjithçka që ju nevojitet:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organizon listën tuaj automatikisht';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Krijoni sa më shumë lista që ju nevojiten';

  @override
  String get paywallFeatureDescSharing => 'Blini së bashku në kohë reale';

  @override
  String get paywallFeatureDescPantry => 'Ndiqni atë që keni në shtëpi';

  @override
  String get paywallFeatureDescBudget => 'Qëndroni në buxhet çdo muaj';

  @override
  String get paywallFeatureUnlimitedLists => 'Listat e pakufizuara';

  @override
  String get paywallFeatureSmartAI => 'Inteligjenca artificiale e zgjuar';

  @override
  String get paywallFeatureExpenseControl => 'Kontrolli i shpenzimeve';

  @override
  String get paywallFeatureSharing => 'Ndarja';

  @override
  String get paywallBeforeAfterTitle => 'AI para dhe pas:';

  @override
  String get paywallLabelCommon => 'E zakonshme';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'oriz';

  @override
  String get paywallBeforeItem2 => 'sapun';

  @override
  String get paywallBeforeItem3 => 'mish';

  @override
  String get paywallBeforeItem4 => 'bukë';

  @override
  String get paywallAfterItem1 => 'Kokrrat';

  @override
  String get paywallAfterItem2 => 'Pastrimi';

  @override
  String get paywallAfterItem3 => 'Mishrat';

  @override
  String get paywallAfterItem4 => 'Furra buke';

  @override
  String get paywallTestimonialsTitle => 'Çfarë thonë përdoruesit tanë:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI organizon blerjet e mia në sekonda. Unë kursej 20 minuta për udhëtim në treg.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Nuk harrova më kurrë një artikull në listë. Biseda me AI është sensacionale!';

  @override
  String get paywallSocialProof => '+2400 familje e përdorin';

  @override
  String get paywallCtaUnlock => 'Zhbllokoni PRO';

  @override
  String get paywallBestValue => 'VLERA MË E MIRË';

  @override
  String get paywallMostPopular => 'MË E POPULLARA';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Pagesë e sigurt';

  @override
  String get paywallSelectPlan => 'Zgjidhni planin tuaj:';

  @override
  String paywallSavePercent(Object percent) {
    return 'RUAJ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Vetëm $price/muaj';
  }

  @override
  String get paywallPackageAnnual => 'Plani vjetor';

  @override
  String get paywallPackageMonthly => 'Plani mujor';

  @override
  String get paywallPackageLifetime => 'Qasja gjatë gjithë jetës';

  @override
  String get paywallCancelAnytime => 'Anulo në çdo kohë. Asnjë angazhim.';

  @override
  String paywallTrialInCard(int days) {
    return '$days ditët e para FALAS';
  }

  @override
  String get paywallSecuredByStore =>
      'Siguruar nga Google Play · Anulo në çdo kohë';

  @override
  String get paywallPolicy => 'Politika e privatësisë';

  @override
  String get paywallTerms => 'Kushtet e Përdorimit';

  @override
  String get paywallRestore => 'Rivendos';

  @override
  String get paywallHeroHeadline => 'Kipi AI gjithmonë pranë jush';

  @override
  String get paywallHeroSubtitle =>
      'Shtoni artikuj, organizoni listat dhe kurseni kohë me AI në xhepin tuaj';

  @override
  String get paywallBenefit1Desc =>
      'Shton, organizon dhe sugjeron artikuj 24/7';

  @override
  String get paywallBenefit2Desc => 'Nuk ka kufi me 3 lista';

  @override
  String get paywallBenefit3Desc =>
      'Gjurmimi i shpenzimeve dhe listat e familjes';

  @override
  String get paywallPackageMonthlyDesc => 'Fleksibilitet i plotë';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Filloni falas — $days ditë';
  }

  @override
  String get premiumUpgrade => 'Përmirëso për të zhbllokuar';

  @override
  String get itemRemoved => 'Artikulli u hoq';

  @override
  String get undo => 'Çbëj';

  @override
  String get emptyListTitle => 'Lista jote është bosh';

  @override
  String get emptyListSubtitle => 'Shto artikuj për të filluar';

  @override
  String get noListFoundTitle => 'Nuk u gjetën lista';

  @override
  String get noListFoundSubtitle => 'Krijo listën tënde të parë për të filluar';

  @override
  String get createFirstList => 'Krijo Listën e Parë';

  @override
  String get listBudgetTitle => 'Buxheti i Listës';

  @override
  String get budgetAmountLabel => 'Shuma e buxhetit';

  @override
  String get removeBudget => 'Hiq';

  @override
  String get prefUnlimitedLists => 'Lista të pakufizuara';

  @override
  String get prefSharing => 'Ndaj lista';

  @override
  String get prefFullHistory => 'Historik i plotë';

  @override
  String get prefExportData => 'Eksporto të dhënat';

  @override
  String get prefCustomThemes => 'Tema të personalizuara';

  @override
  String get prefMonthlyBudget => 'Buxhet global mujor';

  @override
  String get prefAIAssistant => 'Asistent Personal AI';

  @override
  String get prefUnlimitedPantry => 'Qilar i pakufizuar';

  @override
  String get prefInteractiveArtifacts => 'Artifakte Interaktive AI';

  @override
  String get themeGreen => 'Jeshile';

  @override
  String get themeBlue => 'Blu';

  @override
  String get themePurple => 'Vjollcë';

  @override
  String get themeRed => 'Kuqe';

  @override
  String get themeOrange => 'Portokalli';

  @override
  String get themePink => 'Rozë';

  @override
  String get themeIndigo => 'Lejla';

  @override
  String get themeAmber => 'Qelibar';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Kafe';

  @override
  String get catFruits => 'Frutat';

  @override
  String get catCleaning => 'Pastrimi';

  @override
  String get catBeverages => 'Pijet';

  @override
  String get catBakery => 'Furra';

  @override
  String get catOthers => 'Të tjera';

  @override
  String get unitPack => 'pako';

  @override
  String get shareSubject => 'Lista e Blerjeve';

  @override
  String get monthlyBudgetTitle => 'Buxheti Mujor';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Fshi listën';

  @override
  String get pantryItemRemoved => 'Artikulli u hoq';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit artikuj duhet të blihen',
      one: '$deficit artikull duhet të blihet',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Totali i shportës';

  @override
  String get restockLabel => 'Rimbush';

  @override
  String get advancedFeatures => 'Veçori të avancuara';

  @override
  String get selectAll => 'Zgjidh të gjitha';

  @override
  String get deselectAll => 'Çzgjidh të gjitha';

  @override
  String get monthlyBudgetAppBar => 'Buxheti Mujor';

  @override
  String get budgetEditTitle => 'Buxheti Mujor';

  @override
  String get budgetDashboardTitle => 'Paneli';

  @override
  String get selectListForDashboard => 'Zgjidh një listë për të parë panelin.';

  @override
  String get spendingAnalysis => 'Analiza e Shpenzimeve';

  @override
  String get noItemsToAnalyze => 'Asnjë artikull në listë për të analizuar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Shëno artikujt si të blerë për të parë analizën.';

  @override
  String get totalSpending => 'Totali i Shpenzuar';

  @override
  String get spendingByCategory => 'Shpenzimet sipas Kategorisë';

  @override
  String get achievements => 'Arritjet';

  @override
  String get exportPdfExcel => 'Eksporto PDF/Excel';

  @override
  String get exportPdf => 'Eksporto si PDF';

  @override
  String get exportExcel => 'Eksporto si Excel';

  @override
  String get organizingAi => 'DUKE ORGANIZUAR ME AI...';

  @override
  String get yesLabel => 'Po';

  @override
  String get noLabel => 'Jo';

  @override
  String get shareListText => 'Lista Ime e Blerjeve';

  @override
  String get emptyListAddItems =>
      'Lista jote është bosh! Shto artikuj së pari. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista e organizuar për mrekulli sipas kategorive! ✨';

  @override
  String get shoppingMode => 'Modaliteti i Blerjeve';

  @override
  String get smartOrganization => 'Organizim i Mençur';

  @override
  String get savings => 'Kursimet';

  @override
  String get shoppingModeHeader => 'MODALITETI I BLERJEVE';

  @override
  String get shareAsText => 'Dërgo artikujt si tekst të formatuar';

  @override
  String get shareRealtime => 'Sinkronizim në kohë reale me persona të tjerë';

  @override
  String get quickRecipe => 'Recetë e shpejtë';

  @override
  String get quickRecipePrompt => 'Sugjero receta me artikuj nga lista ime.';

  @override
  String get economyTips => 'Këshilla kursimi';

  @override
  String get economyTipsPrompt => 'Si mund të kursej para në këtë blerje?';

  @override
  String get organizeAisles => 'Organizo sipas korridoreve';

  @override
  String get organizeAislesPrompt =>
      'Organizo sipas korridoreve të supermarketit.';

  @override
  String get recipeSuggestion => 'Sugjerim recete';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining kredite të mbetura';
  }

  @override
  String get addAllToList => 'Shto të gjitha në listë';

  @override
  String get organizeByAisles => 'Organizo sipas korridoreve';

  @override
  String get voiceTranscriptionTooltip => 'Shtypje me zë (Falas)';

  @override
  String get aiVoiceCommandTooltip => 'Komandë Zëri AI (Premium)';

  @override
  String get voiceCommandTitle => 'Komandë Zëri AI';

  @override
  String get voiceCommandContent =>
      'Flit natyrshëm për të menaxhuar listën tënde!\n\nShembuj:\n• \'Shto bukë, djathë dhe proshutë\'\n• \'Hiq detergjentin e rrobave\'\n• \'Ndrysho temën në blu\'\n\nKjo është një veçori ekskluzive e KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Shiko Planet';

  @override
  String get itemsAddedSuccess => 'Artikujt u shtuan me sukses në listë!';

  @override
  String get viewList => 'Shiko listën';

  @override
  String get feedbackTitle => 'Dërgo Feedback';

  @override
  String get feedbackPrompt => 'Çfarë dëshiron të ndash?';

  @override
  String get feedbackTypeBug => 'Raporto Gabim';

  @override
  String get feedbackTypeBugHint => 'Diçka nuk funksionon';

  @override
  String get feedbackTypeSuggestion => 'Sugjerim';

  @override
  String get feedbackTypeSuggestionHint =>
      'Ide për të përmirësuar aplikacionin';

  @override
  String get feedbackTypeTranslation => 'Çështje Përkthimi';

  @override
  String get feedbackTypeTranslationHint => 'Përkthim i pasaktë ose i vështirë';

  @override
  String get feedbackTypeFeature => 'Kërkesë për Veçori';

  @override
  String get feedbackTypeFeatureHint => 'Veçori që dëshiron të shohësh';

  @override
  String get feedbackTypeOther => 'Tjetër';

  @override
  String get feedbackTypeOtherHint => 'Lloj tjetër feedback-u';

  @override
  String get feedbackHint => 'Përshkruaj feedback-un tënd në detaje...';

  @override
  String get feedbackSend => 'Dërgo Feedback';

  @override
  String get feedbackSending => 'Duke dërguar...';

  @override
  String get feedbackThankYou => 'Faleminderit!';

  @override
  String get feedbackThankYouMessage =>
      'Feedback-u yt u mor dhe na ndihmon të përmirësojmë KipiList për të gjithë.';

  @override
  String get feedbackBack => 'Mbrapa';

  @override
  String feedbackError(String error) {
    return 'Gabim në dërgim: $error';
  }

  @override
  String get feedbackRetry => 'Provo përsëri';

  @override
  String get feedbackSettingsTitle => 'Dërgo Feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Raporto gabime, sugjero përmirësime ose rregullo përkthime';

  @override
  String get aiEnergy => 'Energjia e AI';

  @override
  String get searchInConversation => 'Kërko në bisedë...';

  @override
  String get noMessagesFound => 'Nuk u gjet asnjë mesazh';

  @override
  String get suggestedQuestions => 'Pyetje të sugjeruara:';

  @override
  String get shoppingAssistant => 'Asistente e blerjeve';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return 'blerë $purchased nga $total';
  }

  @override
  String get estimatedCost => 'e vlerësuar';

  @override
  String get viewItems => 'Shiko artikujt';

  @override
  String get noItemsInList => 'Nuk ka artikuj në listë';

  @override
  String get longHistoryWarning =>
      'Histori e gjatë: asistenti fokusohet në mesazhet më të fundit për performancë më të mirë.';

  @override
  String get listening => 'Duke dëgjuar...';

  @override
  String get addDirectToList => 'Shto direkt në listë';

  @override
  String get unlockFullResponse => 'Zhbllokoni përgjigjen e plotë';

  @override
  String get switchList => 'Ndërro listën';

  @override
  String get marketMode => 'Mënyra e tregut';

  @override
  String get backToChat => 'Kthehu te Chat';

  @override
  String get finishShopping => 'Përfundo blerjet';

  @override
  String get welcomeAiAssistant => 'Mirë se vini në AI Assistant';

  @override
  String get createListToStartAi =>
      'Krijo një listë blerjesh për të filluar përdorimin e bisedës inteligjente.';

  @override
  String get howCanIHelp => 'Si mund të ndihmoj?';

  @override
  String get chatSubtitleShort => 'Pyetni për çmimet, recetat, organizimin...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total blerë';
  }

  @override
  String get quickReplies => 'Përgjigje të shpejta:';

  @override
  String get voiceProFeature =>
      'Komandat e avancuara zanore janë Pro. Po aktivizon diktimin bazë...';

  @override
  String get viewPro => 'Shiko Pro';

  @override
  String get errorLoadingChat =>
      'Oops! Ndodhi një gabim gjatë ngarkimit të bisedës.';

  @override
  String get errorLoadingChatSubtitle =>
      'Kontrollo lidhjen tënde ose provo sërish më vonë.';

  @override
  String get errorOscillation =>
      'Kjo mund të ndodhë për shkak të lëkundjeve të rrjetit ose mosdisponueshmërisë së përkohshme. Ju lutemi provoni përsëri.';

  @override
  String get activeListening => 'Dëgjim aktiv';

  @override
  String get whatToDoWithItem =>
      'Çfarë do të dëshironit të bënit me këtë artikull?';

  @override
  String get viewDetails => 'Shiko Detajet';

  @override
  String get openMenu => 'Hap menunë';

  @override
  String get viewRecipe => 'Shikoni recetën';

  @override
  String get recipeCreated => 'Receta e krijuar!';

  @override
  String get editRecipe => 'Redakto';

  @override
  String get deleteRecipe => 'Fshije';

  @override
  String get deleteRecipeConfirm => 'Të fshihet kjo recetë?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Jeni i sigurt që dëshironi të fshini \"$recipeName\"? Ky veprim nuk mund të zhbëhet.';
  }

  @override
  String get ingredients => 'Përbërësit';

  @override
  String get instructions => 'Udhëzimet';

  @override
  String get prepTime => 'Koha e pergatitjes';

  @override
  String get recipeSaved => 'Receta u ruajt!';

  @override
  String get noRecipesSaved => 'Asnjë recetë nuk është ruajtur';

  @override
  String get noRecipesSavedHint =>
      'Krijoni recetën tuaj të parë të personalizuar duke shtypur butonin më poshtë.';

  @override
  String get myRecipes => 'Recetat e mia';

  @override
  String get newRecipe => 'Recetë e re';

  @override
  String get loadingRecipes => 'Recetat tuaja po ngarkohen...';

  @override
  String get errorLoadingRecipes => 'Gabim gjatë ngarkimit të recetave';

  @override
  String get addIngredient => 'Shtoni përbërës';

  @override
  String get saveRecipe => 'Ruaj';

  @override
  String get recipeName => 'Emri i recetës';

  @override
  String get shortDescription => 'Përshkrimi i shkurtër';

  @override
  String get prepTimeMinutes => 'Koha e përgatitjes (minuta)';

  @override
  String get instructionsHint => 'Shkruani një hap për rresht...';

  @override
  String get addPhoto => 'Shto foto';

  @override
  String get imageUrlPlaceholder => 'Ose ngjitni një URL të imazhit';

  @override
  String get tags => 'Etiketat';

  @override
  String get recipeTags => 'Etiketat e recetave';

  @override
  String get suggestedTags => 'Sugjeruar';

  @override
  String get searchRecipes => 'Kërkoni receta...';

  @override
  String get filterByTag => 'Filtro sipas etiketës';

  @override
  String get allTags => 'Të gjitha';

  @override
  String get recipeDeleted => 'Receta u fshi';

  @override
  String get saveChanges => 'Ruaj ndryshimet';

  @override
  String get editRecipeTitle => 'Redakto recetën';

  @override
  String get newRecipeTitle => 'Recetë e re';

  @override
  String get requiredField => 'E detyrueshme';

  @override
  String get chooseImageSource => 'Zgjidhni burimin e imazhit';

  @override
  String get gallery => 'Galeria';

  @override
  String get enterUrl => 'Fut URL-në';

  @override
  String get recipeImage => 'Imazhi i recetës';

  @override
  String get removeImage => 'Hiq imazhin';

  @override
  String get mealPlannerTitle => 'Planifikues i vakteve';

  @override
  String get mealPlannerViewMonthly => 'Pamje mujore';

  @override
  String get mealPlannerViewWeekly => 'Pamje javore';

  @override
  String get mealPlannerNoMeals => 'Asnjë vakt i planifikuar';

  @override
  String get mealPlannerNoMealsHint => 'Prekni një ditë për të shtuar një vakt';

  @override
  String get mealPlannerLoading => 'Plani i ushqimit po ngarkohet...';

  @override
  String get mealPlannerError => 'Gabim gjatë ngarkimit të planit të vaktit';

  @override
  String get mealPlannerAddMeal => 'Shtoni vaktin';

  @override
  String get mealPlannerEditMeal => 'Redakto vaktin';

  @override
  String get mealPlannerDeleteMeal => 'Hiqni vaktin';

  @override
  String get mealPlannerMealDeleted => 'Vakti i hequr';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count shërbime',
      one: '$count shërbim',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Shërbimet';

  @override
  String get mealPlannerNoteLabel => 'Shënim (opsionale)';

  @override
  String get mealPlannerSelectRecipe => 'Zgjidhni një recetë';

  @override
  String get mealPlannerSearchRecipes => 'Kërkoni receta...';

  @override
  String get mealPlannerNoRecipesFound => 'Nuk u gjet asnjë recetë';

  @override
  String get mealPlannerNoRecipesHint =>
      'Krijoni receta fillimisht në skedën Receta';

  @override
  String get mealPlannerSave => 'Shtoni në plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count nga $total vaktet e planifikuara';
  }

  @override
  String get mealPlannerGenerateList => 'Gjeneroni listën e blerjeve';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Shtoni të gjithë përbërësit nga vaktet e planifikuara këtë javë në listën tuaj të blerjeve?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count përbërësit u shtuan në listën tuaj!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Nuk ka përbërës për të shtuar. Planifikoni fillimisht disa vakte me receta.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Krijoni së pari një listë blerjesh.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Mëngjesi';

  @override
  String get mealPlannerMealTypeLunch => 'Dreka';

  @override
  String get mealPlannerMealTypeDinner => 'Darka';

  @override
  String get mealPlannerMealTypeSnack => 'Rostiçeri';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty => 'Asgjë e planifikuar për këtë javë';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Prekni çdo ditë për të filluar planifikimin e vakteve tuaja!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Fto në listë';

  @override
  String get shareApp => 'Ndani aplikacionin';

  @override
  String get shareAppDescription => 'Ftoni miqtë të përdorin KipiList';

  @override
  String shareReferralText(String url) {
    return 'Unë jam duke përdorur KipiList për të organizuar blerjet e mia! Shkarkoni përmes lidhjes sime dhe ne të dy marrim 7 ditë Premium falas: $url';
  }

  @override
  String get shareReferralSubject => 'Përfitoni 7 ditë KipiList Premium!';

  @override
  String get gestureHint => 'Mbajeni për të zgjedhur • Rrëshqitni për ta hequr';

  @override
  String get catalogTitle => 'Katalogu';

  @override
  String get catalogMyFrequents => 'Frekuencat e Mia';

  @override
  String get catalogSearchGlobal => 'Kërkoni ndonjë produkt...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Kërko në $category...';
  }

  @override
  String get catalogSortPopular => 'Më popullorja';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Kombëtaret';

  @override
  String get catalogRareSection => 'më pak të zakonshme në vendin tuaj';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Shto $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Produkti nuk u gjet, shkruani emrin';

  @override
  String get catalogBrowse => 'Shfletoni Katalogun';

  @override
  String get offlineBanner => 'Ju jeni jashtë linje';

  @override
  String get consentTitle => 'Privatësia dhe analitika';

  @override
  String get consentBody =>
      'KipiList përdor Firebase Analytics për të përmirësuar përvojën tuaj. Të dhënat tuaja përpunohen sipas politikës sonë të privatësisë.';

  @override
  String get consentAccept => 'Pranoje';

  @override
  String get consentDecline => 'Jo, faleminderit';

  @override
  String get mealPlannerPantryAllAvailable =>
      'Të gjithë përbërësit në dispozicion';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 mungon';
  }

  @override
  String get expirationDate => 'Data e skadencës';

  @override
  String get notInformed => 'Nuk është vendosur';

  @override
  String get skip => 'Kapërce';

  @override
  String get onboardingAiTitle => 'Bisedoni me Kipin';

  @override
  String get onboardingAiGreeting =>
      'Përshëndetje! Unë jam Kipi, asistentja juaj personale e blerjeve! 🛒';

  @override
  String get onboardingAiAskName => 'si e ke emrin?';

  @override
  String get onboardingAiNameHint => 'Shkruani emrin tuaj...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Gëzohem që u njohëm, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Cili është ushqimi juaj i preferuar?';

  @override
  String get onboardingAiFoodHint => 'p.sh. Pica, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Zgjedhje të shkëlqyera! Ja çfarë do të shtoja në listën tuaj:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'A duket mirë kjo? Provoni të shkruani diçka tjetër!';

  @override
  String get onboardingAiReady =>
      'E madhe! Jeni gati për të filluar. Le të konfigurojmë llogarinë tuaj!';

  @override
  String get onboardingAiContinue => 'Vazhdo →';

  @override
  String get connectionError => 'Gabim lidhjeje';

  @override
  String connectionErrorDesc(String error) {
    return 'Nuk mund të lidhej me serverin. Kontrolloni internetin tuaj.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Gabim gjatë ngarkimit të listave';

  @override
  String get noListsFound => 'Nuk u gjet asnjë listë';

  @override
  String get backToToday => 'Kthehu tek sot';

  @override
  String get quickSuggestions => 'Sugjerime të shpejta';

  @override
  String get aiEnergyLow => 'Energji e ulët e AI';

  @override
  String get aiUnlockUnlimited => 'Zhbllokoni AI të pakufizuar';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 sot';
  }

  @override
  String get aiSubscribeUnlimited => 'Abonohu ​​për AI të pakufizuar';

  @override
  String get unlockWithAd => 'Zhblloko me Ad';

  @override
  String get conversationHistoryTitle => 'Historia e bisedave';

  @override
  String get noConversationsFound => 'Nuk u gjet asnjë bisedë';

  @override
  String get errorLoadingHistory => 'Gabim gjatë ngarkimit të historikut';

  @override
  String get deleteConversationTitle => 'Të fshihet biseda?';

  @override
  String get deleteConversationConfirm => 'Ky veprim nuk mund të zhbëhet.';

  @override
  String get deleteConversation => 'Fshije';

  @override
  String get subscription => 'Abonimi';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle =>
      'Zhbllokoni listat e pakufizuara, AI dhe më shumë';

  @override
  String get loadingSubscription => 'Po ngarkohet abonimi...';

  @override
  String get errorLoadingSubscription => 'Gabim gjatë ngarkimit të abonimit';

  @override
  String get profileSection => 'Profili';

  @override
  String get myProfile => 'Profili im';

  @override
  String get profileSubtitle => 'Preferencat personale për asistentin e AI';

  @override
  String get customizeAiAssistant => 'Personalizo asistentin e AI';

  @override
  String get assistantHistory => 'Historia e asistentit';

  @override
  String get assistantHistorySubtitle => 'Shikoni historikun tuaj të bisedave';

  @override
  String get manageCategories => 'Menaxho kategoritë';

  @override
  String get manageCategoriesSubtitle => 'Menaxho kategoritë e artikujve';

  @override
  String get customizeAssistant => 'Personalizoje';

  @override
  String get assistantName => 'Emri i asistentit';

  @override
  String get chooseIcon => 'Zgjidhni ikonën';

  @override
  String get profileSaved => 'Profili u ruajt me sukses!';

  @override
  String get errorSavingProfile => 'Gabim gjatë ruajtjes: null';

  @override
  String get userProfile => 'Profili i përdoruesit';

  @override
  String get profileDescription =>
      'Na tregoni preferencat tuaja personale në mënyrë që ndihmësi i AI të sugjerojë artikuj dhe receta të personalizuara.';

  @override
  String get preferredMarket => 'Tregu i preferuar';

  @override
  String get preferredMarketHint => 'P.sh.: Supermarketi X';

  @override
  String get dietaryRestrictions => 'Kufizimet dietike';

  @override
  String get dietaryRestrictionsHint => 'P.sh.: vegan, vegjetarian, pa gluten';

  @override
  String get marketsToAvoid => 'Tregjet që duhen shmangur';

  @override
  String get marketsToAvoidHint => 'P.sh.: Tregu Y, Tregu Z';

  @override
  String get observations => 'Shënime';

  @override
  String get observationsHint => 'Preferenca të tjera për asistentin';

  @override
  String get saveProfile => 'Ruaj profilin';

  @override
  String get everythingReady => 'Gjithçka gati!';

  @override
  String get youCompletedList => 'Ju e plotësoni listën!';

  @override
  String get selectCheaperAlternative =>
      'Zgjidhni një alternativë produkti më të lirë për të optimizuar koston.';

  @override
  String get suggestedItems => 'Artikujt e sugjeruar';

  @override
  String get swapped => 'E këmbyer';

  @override
  String get swap => 'këmbejnë';

  @override
  String get chooseThemeColor => 'Zgjidhni ngjyrën e temës';

  @override
  String get manageCategoriesTitle => 'Menaxho kategoritë';

  @override
  String get categoryLimitReached =>
      'Kufiri prej 10 kategorish në versionin falas. Përmirësojeni në Pro!';

  @override
  String get deleteCategoryTitle => 'Fshi kategorinë';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Artikujt në kategorinë \"$category\" do të zhvendosen te \"Të tjerët\".\nTë vazhdohet?';
  }

  @override
  String get deleteCategory => 'Fshije';

  @override
  String get newCategoryDialog => 'Kategoria e re';

  @override
  String get editCategoryDialog => 'Redakto kategorinë';

  @override
  String get categoryName => 'Emri i kategorisë';

  @override
  String get categoryNameHint => 'P.sh.: Mishrat';

  @override
  String get categoryColorLabel => 'Ngjyra';

  @override
  String get categoryIconLabel => 'Ikona';

  @override
  String itemAddedSnack(String name) {
    return '$name u shtua';
  }

  @override
  String get kipiQuickBarHint => 'Çfarë ju duhet për të blerë?';

  @override
  String replaceItem(String item) {
    return 'Zëvendëso $item';
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
      'Mos harroni më kurrë një artikull ushqimor';

  @override
  String get onboardingGoalSaveMoney => 'Kurseni para';

  @override
  String get onboardingGoalNeverForget => 'Mos harroni kurrë artikujt';

  @override
  String get onboardingGoalFaster => 'Blini më shpejt';

  @override
  String get onboardingGoalFamily => 'Organizoni blerjet familjare';

  @override
  String get onboardingGoalRecipes => 'Zbuloni recetat';

  @override
  String get onboardingGoalPantry => 'qilar me gjurmët';

  @override
  String get onboardingCommitmentsTitle => 'Çfarë ka rëndësi për ju?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Zgjidhni qëllimet tuaja për të personalizuar KipiList';

  @override
  String get onboardingCommitmentsCta => 'Le të shkojmë!';

  @override
  String get onboardingPersonalizationNameLabel => 'Emri juaj';

  @override
  String get onboardingPersonalizationNameHint => 'Shkruani emrin tuaj';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Për çfarë bëni pazar?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Për kë bëni pazar?';

  @override
  String get onboardingCategoryGrocery => 'Ushqimore';

  @override
  String get onboardingCategoryPharmacy => 'Farmaci';

  @override
  String get onboardingCategoryRecipes => 'Recetat';

  @override
  String get onboardingCategoryHome => 'Shtëpi';

  @override
  String get onboardingCategoryPet => 'kafshë shtëpiake';

  @override
  String get onboardingGroupSolo => 'Vetëm unë';

  @override
  String get onboardingGroupCouple => 'Çifti';

  @override
  String get onboardingGroupFamily => 'Familja';

  @override
  String get onboardingLoadingTitle => 'Duke përgatitur përvojën tuaj...';

  @override
  String get onboardingLoadingStep1 => 'Duke analizuar preferencat tuaja...';

  @override
  String get onboardingLoadingStep2 => 'Po konfiguron asistentin e AI...';

  @override
  String get onboardingLoadingStep3 => 'Pothuajse gati...';

  @override
  String get onboardingLoadingStat1Label => 'Artikujt e kataloguar';

  @override
  String get onboardingLoadingStat2Label => 'Përdoruesit ndihmuan';

  @override
  String get onboardingLoadingStat3Label => 'Minutat e ruajtura';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, kurseni në çdo udhëtim!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, mos harroni kurrë një artikull!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, blini në gjysmën e kohës!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organizoni blerje familjare!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, zbulo receta të reja!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, gjurmoni në mënyrë perfekte qilarin tuaj!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => 'Kurseni në çdo udhëtim!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Mos harroni kurrë një artikull!';

  @override
  String get paywallGoalHeadlineNoNameFaster => 'Blini në gjysmën e kohës!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Organizoni blerjet familjare!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Zbuloni receta të reja!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Ndiqni në mënyrë perfekte qilarin tuaj!';

  @override
  String paywallPricePerDay(String price) {
    return 'Vetëm $price/ditë — më pak se një kafe';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Kalo për momentin';

  @override
  String get paywallTestimonial =>
      'AI organizon blerjet e mia në sekonda. Unë kursej 20 minuta për udhëtim.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Anulo në çdo kohë · Pa pagesë deri në përfundimin e provës';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hej $name! Çfarë $category ju nevojitet?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Çfarë $category ju nevojitet?';
  }

  @override
  String get onboardingAiDemoYes => 'po!';

  @override
  String get onboardingAiDemoReaction => 'E bukur!';

  @override
  String get onboardingAiDemoChange => 'Ndrysho artikullin';

  @override
  String get onboardingAiDemoOffer => 'Provoni të shkruani diçka tjetër!';

  @override
  String get onboardingAiDemoContinue => 'Vazhdoni';

  @override
  String get onboardingAiDemoSlideHeadline => 'Your shopping list, now with AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'See how Kipi builds your full list in seconds';

  @override
  String get onboardingAiDemoSlideCta => 'I want this! →';

  @override
  String get onboardingAiDemoSlideUserMsg => 'I\'m hosting a barbecue 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Ready! Here\'s everything you need:';

  @override
  String get onboardingAiDemoSlideDone => 'Complete list in seconds ✨';

  @override
  String get onboardingPainTitle => 'What frustrates you most?';

  @override
  String get onboardingPainSubtitle => 'Be honest — we\'ll fix each one';

  @override
  String get onboardingPainCta => 'Yes, fix this for me →';

  @override
  String get onboardingPainForget => 'I forget items at the store';

  @override
  String get onboardingPainFamily => 'My family never sees the list';

  @override
  String get onboardingPainOverspend => 'I always go over budget';

  @override
  String get onboardingPainRepeat => 'One trip is never enough';
}
