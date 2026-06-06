// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'Listă de cumpărături';

  @override
  String get lists => 'Liste';

  @override
  String get pantry => 'Cămară';

  @override
  String get cancel => 'Anulează';

  @override
  String get save => 'Salvează';

  @override
  String get create => 'Creează';

  @override
  String get add => 'Adaugă';

  @override
  String get remove => 'Elimină';

  @override
  String get delete => 'Șterge';

  @override
  String get edit => 'Editează';

  @override
  String get copy => 'Copiază';

  @override
  String get next => 'Următorul';

  @override
  String get retry => 'Reîncearcă';

  @override
  String get regenerate => 'Regenerează';

  @override
  String get copiedToClipboard => 'Copiat în clipboard';

  @override
  String get confirm => 'Confirmă';

  @override
  String get close => 'Închide';

  @override
  String get import => 'Importă';

  @override
  String get rename => 'Redenumește';

  @override
  String get upgrade => 'Fă upgrade';

  @override
  String get clear => 'Curăță';

  @override
  String error(String message) {
    return 'Eroare: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Eroare: $message';
  }

  @override
  String get purchaseError =>
      'Eroare la procesarea achiziției. Încearcă din nou.';

  @override
  String get restoreError =>
      'Eroare la restaurarea achizițiilor. Încearcă din nou.';

  @override
  String get loading => 'Se încarcă...';

  @override
  String get fieldRequired => 'Câmp obligatoriu';

  @override
  String get addedFeedback => 'Adăugat!';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count selectate',
      few: '$count selectate',
      one: '$count selectat',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimat';

  @override
  String get alreadyPurchased => 'Deja achiziționat';

  @override
  String get clearList => 'Curăță lista';

  @override
  String get clearPurchased => 'Elimină cumpăratele';

  @override
  String get share => 'Partajează';

  @override
  String get shareViaCode => 'Partajează prin cod';

  @override
  String get importViaCode => 'Importă prin cod';

  @override
  String get listAssistant => 'Asistent listă';

  @override
  String get globalAssistant => 'Asistent global';

  @override
  String get becomePremium => 'Devino Premium';

  @override
  String get manageSubscription => 'Gestionează abonamentul';

  @override
  String get completePurchase => 'Finalizează achiziția';

  @override
  String get confirmClearList => 'Elimin toate articolele?';

  @override
  String get shareListTitle => 'Partajează lista';

  @override
  String get shareThisCode => 'Partajează acest cod:';

  @override
  String get validForLimitedTime => 'Valabil pentru timp limitat';

  @override
  String get importListTitle => 'Importă lista';

  @override
  String get enterCodeHint => 'Introdu codul';

  @override
  String get confirmArchiveTitle => 'Finalizează achiziția';

  @override
  String get confirmArchiveContent =>
      'Finalizez această achiziție și arhivez lista?';

  @override
  String get complete => 'Finalizează';

  @override
  String get listArchived => 'Lista arhivată cu succes!';

  @override
  String listAdded(String listName) {
    return '$listName adăugată!';
  }

  @override
  String get buy => 'Cumpără';

  @override
  String get unmark => 'Elimină marcarea';

  @override
  String confirmDeleteItems(int count) {
    return 'Elimin $count articol(oare)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmă';

  @override
  String confirmContent(int count) {
    return 'Elimin $count articol(oare)?';
  }

  @override
  String get archiveList => 'Arhivează lista';

  @override
  String get pantryAppBar => 'Cămară';

  @override
  String get generateShoppingList => 'Generează lista de cumpărături';

  @override
  String get pantryEmpty => 'Cămara goală';

  @override
  String get pantryEmptySubtitle =>
      'Adaugă produse pe care vrei să le ai acasă';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit articol(oare) trebuie cumpărat(e)';
  }

  @override
  String get noItemsToBuy => 'Niciun articol de cumpărat';

  @override
  String get newPantryList => 'Cumpărături din cămară';

  @override
  String get newListTitle => 'Listă nouă de cumpărături';

  @override
  String itemsWillBeAdded(int count) {
    return '$count articol(oare) vor fi adăugate';
  }

  @override
  String get listNameLabel => 'Numele listei';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" creată cu $count articole';
  }

  @override
  String get noTracking => 'Fără urmărire';

  @override
  String get markAsPurchased => 'Marchează ca achiziționat';

  @override
  String editPantryItem(String name) {
    return 'Editează $name';
  }

  @override
  String get idealQuantity => 'Cantitate ideală';

  @override
  String get currentQuantity => 'Cantitate curentă';

  @override
  String get consumed => 'Consumat';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reaprovizionat la $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Elimin \"$name\" din cămară?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editează $name';
  }

  @override
  String get settingsAppBar => 'Setări';

  @override
  String get language => 'Limbă';

  @override
  String get languagePortuguese => 'Português (Brazilia)';

  @override
  String get languageEnglish => 'engleză';

  @override
  String get languageSystem => 'Implicit sistem';

  @override
  String get chooseLanguage => 'Selectați Limbă';

  @override
  String get searchLanguage => 'Căutați limba...';

  @override
  String get currency => 'Valută';

  @override
  String get chooseCurrency => 'Selectați Moneda';

  @override
  String get searchCurrency => 'Caută moneda...';

  @override
  String get appearance => 'Aspect';

  @override
  String get light => 'Luminos';

  @override
  String get system => 'Sistem';

  @override
  String get dark => 'Întunecat';

  @override
  String get themeColor => 'Culoare temă';

  @override
  String get dynamicColors => 'Culori dinamice';

  @override
  String get dynamicColorsSubtitle => 'Utilizați culori pe baza tapetului dvs';

  @override
  String get dynamicColorsEnabledWarning =>
      'Dezactivați culorile dinamice pentru ca culoarea temei să aibă efect';

  @override
  String get finance => 'Finanțe';

  @override
  String get monthlyBudgetNav => 'Buget lunar';

  @override
  String get budgetSubtitle => 'Urmărește-ți cheltuielile lunare';

  @override
  String get data => 'Date';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Exportă sau importă datele tale';

  @override
  String get about => 'Despre';

  @override
  String get version => 'Versiune';

  @override
  String get privacy => 'Confidențialitate';

  @override
  String get termsOfUse => 'Termeni de utilizare';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription =>
      'Backup-ul și exportul sunt o funcție premium';

  @override
  String get exportData => 'Exportă datele';

  @override
  String get exportDataSubtitle => 'Salvează toate listele ca JSON';

  @override
  String get importData => 'Importă datele';

  @override
  String get importDataSubtitle => 'Restaurează liste dintr-un JSON';

  @override
  String get importJsonTitle => 'Importă JSON';

  @override
  String get importJsonHint => 'Lipește JSON-ul de backup aici...';

  @override
  String get backupExported => 'Backup exportat!';

  @override
  String get budgetAppBar => 'Buget lunar';

  @override
  String get budgetPremiumLocked => 'Bugetul lunar global este premium';

  @override
  String get budgetUpgradePrompt => 'Fă upgrade pentru a debloca';

  @override
  String get noBudgetDefined => 'Niciun buget stabilit';

  @override
  String totalEstimated(String amount) {
    return 'Total estimat: $amount';
  }

  @override
  String get setBudgetButton => 'Setează buget';

  @override
  String get budgetLists => 'Liste';

  @override
  String get budgetValueLabel => 'Sumă';

  @override
  String get setBudgetTitle => 'Buget lunar';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Toate';

  @override
  String get filterPending => 'În așteptare';

  @override
  String get filterPurchased => 'Achiziționate';

  @override
  String get sortName => 'Nume';

  @override
  String get sortCategory => 'Categorie';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Adaugă articol';

  @override
  String get itemName => 'Nume articol';

  @override
  String get quantityShort => 'Cant.';

  @override
  String get unit => 'Unitate';

  @override
  String get category => 'Categorie';

  @override
  String get estimatedPrice => 'Preț estimat';

  @override
  String get addItemPrice => 'Preț estimat';

  @override
  String get editItem => 'Editează articol';

  @override
  String get quantityFull => 'Cantitate';

  @override
  String get editItemPrice => 'Preț estimat';

  @override
  String get addToPantry => 'Adaugă în cămară';

  @override
  String addToPantryPrompt(String name) {
    return 'Adaug \"$name\" în cămara ta?';
  }

  @override
  String get yes => 'Da';

  @override
  String get productName => 'Nume produs';

  @override
  String get idealQty => 'Cant. ideală';

  @override
  String get currentQty => 'Cant. curentă';

  @override
  String get trackStock => 'Urmărește stocul';

  @override
  String get trackStockActive => 'Apare în sugestiile de cumpărături';

  @override
  String get trackStockInactive => 'Nu generează sugestii de cumpărături';

  @override
  String get createListDialog => 'Creează listă';

  @override
  String get renameListDialog => 'Redenumește lista';

  @override
  String get listHistory => 'Istoric liste';

  @override
  String get myLists => 'Listele mele';

  @override
  String get viewActive => 'Vezi active';

  @override
  String get viewHistory => 'Vezi istoric';

  @override
  String get noArchivedLists => 'Nicio listă arhivată';

  @override
  String get noActiveLists => 'Nicio listă activă';

  @override
  String completedOn(String date) {
    return 'Finalizată pe $date';
  }

  @override
  String get sharedLabel => 'Partajată';

  @override
  String get restore => 'Restaurează';

  @override
  String get removeSharedTooltip => 'Elimină';

  @override
  String get deleteListTitle => 'Șterge lista';

  @override
  String deleteListContent(String name) {
    return 'Ești sigur că vrei să ștergi \"$name\"? Toate articolele vor fi eliminate.';
  }

  @override
  String get removeSharedListTitle => 'Elimină lista partajată';

  @override
  String removeSharedListContent(String name) {
    return 'Elimin \"$name\" din listele tale? Lista originală nu va fi afectată.';
  }

  @override
  String get createNewList => 'Creează o listă nouă';

  @override
  String get aiAssistant => 'Asistent AI';

  @override
  String get aiAssistantDescription =>
      'Primește sugestii inteligente, rețete și sfaturi personalizate cu asistentul nostru AI.';

  @override
  String get generalAssistant => 'Asistent general';

  @override
  String get newChat => 'Chat nou';

  @override
  String get noHistory => 'Fără istoric de chat';

  @override
  String get deleteSession => 'Șterge chat';

  @override
  String get deleteSessionConfirm =>
      'Sigur vrei să ștergi acest chat? Mesajele se vor pierde definitiv.';

  @override
  String get clearHistory => 'Curăță istoricul';

  @override
  String get clearHistoryConfirm => 'Șterg toate mesajele din această sesiune?';

  @override
  String get chatHint => 'Scrie mesajul tău...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Eroare la încărcarea chatului: $error';
  }

  @override
  String get listHelp => 'Cum pot ajuta cu lista ta?';

  @override
  String get generalHelp => 'Cum te pot ajuta cu cumpărăturile tale astăzi?';

  @override
  String get chatSubtitle =>
      'Cere sugestii de articole, rețete sau sfaturi de economisire.';

  @override
  String get aiError =>
      'Ne pare rău, a apărut o eroare la procesarea cererii tale. Verifică conexiunea sau încearcă din nou mai târziu.';

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
  String get loginPrompt =>
      'Autentifică-te pentru\na debloca funcțiile premium';

  @override
  String get signInGoogle => 'Conectează-te cu Google';

  @override
  String get signInApple => 'Conectează-te cu Apple';

  @override
  String get continueAsGuest => 'Continuă ca invitat';

  @override
  String get onboardingWelcomeTitle => 'Bun venit la KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Cel mai inteligent mod de a-ți organiza cumpărăturile și de a economisi bani.';

  @override
  String get onboardingSetupTitle => 'Personalizați-vă experiența';

  @override
  String get onboardingSetupDesc =>
      'Alegeți cum doriți să arate și să funcționeze KipiList pentru dvs.';

  @override
  String get onboardingLoginTitle => 'Salvați totul în cloud';

  @override
  String get onboardingLoginDesc =>
      'Datele dvs. sunt sincronizate pe toate dispozitivele dvs';

  @override
  String get onboardingShareTitle => 'Împărtășește cu cei pe care îi iubești';

  @override
  String get onboardingShareDesc =>
      'Sincronizați listele cu familia și prietenii în timp real';

  @override
  String get onboardingPremiumTitle => 'Deblocați toate funcțiile';

  @override
  String get onboardingPremiumSubtitle =>
      'Profitați la maximum de listele dvs. de cumpărături';

  @override
  String get onboardingAnnualBadge => 'Cea mai bună valoare';

  @override
  String get onboardingMonthlyLabel => 'Lunar';

  @override
  String get onboardingAnnualLabel => 'Anual';

  @override
  String get onboardingViewAllPlans => 'Vezi toate planurile';

  @override
  String get onboardingSubscribeCta => 'Abonați-vă';

  @override
  String get onboardingCancelAnytime => 'Anulați oricând. Nici un angajament.';

  @override
  String get onboardingContinueAsGuest => 'Continuați ca invitat';

  @override
  String get onboardingRestore => 'Restabili';

  @override
  String get onboardingRestoreDesc =>
      'Aveți deja un abonament? Atingeți aici pentru a o restabili.';

  @override
  String get onboardingExit => 'Ieșire';

  @override
  String get onboardingPersonalizationTitle => 'Hai să te cunoaștem';

  @override
  String get onboardingPersonalizationDesc =>
      'Vom folosi acest lucru pentru a vă personaliza sugestiile și pentru a face cumpărăturile mai inteligente.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Care este mâncarea ta preferată?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'de ex. Pizza, sushi, lasagna...';

  @override
  String get onboardingPersonalizationCta => 'Continua';

  @override
  String get onboardingPersonalizationSkip => 'Sari peste moment';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Spune-ne mâncarea ta preferată pentru a continua';

  @override
  String get settingsDefaultScreen => 'Ecran de start implicit';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Alegeți între lista de cumpărături sau chat AI';

  @override
  String get settingsScreenList => 'Lista de cumpărături';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return 'Eroare de autentificare: $error';
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
  String get premiumUpgrade => 'Fă upgrade pentru a debloca';

  @override
  String get itemRemoved => 'Articol eliminat';

  @override
  String get undo => 'Anulează';

  @override
  String get emptyListTitle => 'Lista ta este goală';

  @override
  String get emptyListSubtitle => 'Adaugă articole pentru a începe';

  @override
  String get noListFoundTitle => 'Nicio listă găsită';

  @override
  String get noListFoundSubtitle => 'Creează prima ta listă pentru a începe';

  @override
  String get createFirstList => 'Creează prima listă';

  @override
  String get listBudgetTitle => 'Buget listă';

  @override
  String get budgetAmountLabel => 'Sumă buget';

  @override
  String get removeBudget => 'Elimină';

  @override
  String get prefUnlimitedLists => 'Liste nelimitate';

  @override
  String get prefSharing => 'Partajează liste';

  @override
  String get prefFullHistory => 'Istoric complet';

  @override
  String get prefExportData => 'Exportă date';

  @override
  String get prefCustomThemes => 'Teme personalizate';

  @override
  String get prefMonthlyBudget => 'Buget lunar global';

  @override
  String get prefAIAssistant => 'Asistent AI personal';

  @override
  String get prefUnlimitedPantry => 'Cămară nelimitată';

  @override
  String get prefInteractiveArtifacts => 'Artefacte AI interactive';

  @override
  String get themeGreen => 'Verde';

  @override
  String get themeBlue => 'Albastru';

  @override
  String get themePurple => 'Mov';

  @override
  String get themeRed => 'Roșu';

  @override
  String get themeOrange => 'Portocaliu';

  @override
  String get themePink => 'Roz';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Chihlimbar';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Maro';

  @override
  String get catFruits => 'Fructe';

  @override
  String get catCleaning => 'Curățenie';

  @override
  String get catBeverages => 'Băuturi';

  @override
  String get catBakery => 'Panificație';

  @override
  String get catOthers => 'Altele';

  @override
  String get unitPack => 'pachet';

  @override
  String get shareSubject => 'Listă de cumpărături';

  @override
  String get monthlyBudgetTitle => 'Buget lunar';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Șterge lista';

  @override
  String get pantryItemRemoved => 'Articol eliminat';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit de articole trebuie cumpărate',
      few: '$deficit articole trebuie cumpărate',
      one: '$deficit articol trebuie cumpărat',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total coș';

  @override
  String get restockLabel => 'Reaprovizionează';

  @override
  String get advancedFeatures => 'Funcții avansate';

  @override
  String get selectAll => 'Selectează tot';

  @override
  String get deselectAll => 'Deselectează tot';

  @override
  String get monthlyBudgetAppBar => 'Buget lunar';

  @override
  String get budgetEditTitle => 'Buget lunar';

  @override
  String get budgetDashboardTitle => 'Tablou de bord';

  @override
  String get selectListForDashboard =>
      'Selectează o listă pentru a vedea tabloul de bord.';

  @override
  String get spendingAnalysis => 'Analiză cheltuieli';

  @override
  String get noItemsToAnalyze => 'Niciun articol în listă de analizat.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marchează articolele ca achiziționate pentru a vedea analiza.';

  @override
  String get totalSpending => 'Total cheltuit';

  @override
  String get spendingByCategory => 'Cheltuieli pe categorii';

  @override
  String get achievements => 'Realizări';

  @override
  String get exportPdfExcel => 'Exportă PDF/Excel';

  @override
  String get exportPdf => 'Exportă ca PDF';

  @override
  String get exportExcel => 'Exportă ca Excel';

  @override
  String get organizingAi => 'SE ORGANIZEAZĂ CU AI...';

  @override
  String get yesLabel => 'Da';

  @override
  String get noLabel => 'Nu';

  @override
  String get shareListText => 'Lista mea de cumpărături';

  @override
  String get emptyListAddItems =>
      'Lista ta este goală! Adaugă articole mai întâi. ℹ️';

  @override
  String get listOrganizedMagic => 'Listă organizată magic pe categorii! ✨';

  @override
  String get shoppingMode => 'Mod cumpărături';

  @override
  String get smartOrganization => 'Organizare inteligentă';

  @override
  String get savings => 'Economii';

  @override
  String get shoppingModeHeader => 'MOD CUMPĂRĂTURI';

  @override
  String get shareAsText => 'Trimite articolele ca text formatat';

  @override
  String get shareRealtime => 'Sincronizare în timp real cu alte persoane';

  @override
  String get quickRecipe => 'Rețetă rapidă';

  @override
  String get quickRecipePrompt => 'Sugerează rețete cu articole din lista mea.';

  @override
  String get economyTips => 'Sfaturi de economisire';

  @override
  String get economyTipsPrompt =>
      'Cum pot economisi bani la această achiziție?';

  @override
  String get organizeAisles => 'Organizează pe culoare';

  @override
  String get organizeAislesPrompt => 'Organizează pe culoarele magazinului.';

  @override
  String get recipeSuggestion => 'Sugestie de rețetă';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining credite rămase';
  }

  @override
  String get addAllToList => 'Adaugă tot în listă';

  @override
  String get organizeByAisles => 'Organizează pe culoare';

  @override
  String get voiceTranscriptionTooltip => 'Tastare vocală (Gratuit)';

  @override
  String get aiVoiceCommandTooltip => 'Comandă vocală AI (Premium)';

  @override
  String get voiceCommandTitle => 'Comandă vocală AI';

  @override
  String get voiceCommandContent =>
      'Vorbește natural pentru a-ți gestiona lista!\n\nExemple:\n• \'Adaugă pâine, brânză și șuncă\'\n• \'Elimină detergentul de rufe\'\n• \'Schimbă tema în albastru\'\n\nAceasta este o funcție exclusivă a KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Vezi planuri';

  @override
  String get itemsAddedSuccess => 'Articole adăugate cu succes în listă!';

  @override
  String get viewList => 'Vezi lista';

  @override
  String get feedbackTitle => 'Trimite feedback';

  @override
  String get feedbackPrompt => 'Ce doriți să împărtășiți?';

  @override
  String get feedbackTypeBug => 'Raportează o eroare';

  @override
  String get feedbackTypeBugHint => 'Ceva nu funcționează';

  @override
  String get feedbackTypeSuggestion => 'Sugestie';

  @override
  String get feedbackTypeSuggestionHint =>
      'Idee pentru îmbunătățirea aplicației';

  @override
  String get feedbackTypeTranslation => 'Problemă de traducere';

  @override
  String get feedbackTypeTranslationHint =>
      'Traducere incorectă sau nefirească';

  @override
  String get feedbackTypeFeature => 'Solicitare funcționalitate';

  @override
  String get feedbackTypeFeatureHint =>
      'Funcționalitate pe care ați dori să o vedeți';

  @override
  String get feedbackTypeOther => 'Altul';

  @override
  String get feedbackTypeOtherHint => 'Alt tip de feedback';

  @override
  String get feedbackHint => 'Descrieți feedback-ul în detaliu...';

  @override
  String get feedbackSend => 'Trimite feedback';

  @override
  String get feedbackSending => 'Se trimite...';

  @override
  String get feedbackThankYou => 'Mulțumim!';

  @override
  String get feedbackThankYouMessage =>
      'Feedback-ul dumneavoastră a fost primit și ne ajută să îmbunătățim KipiList pentru toată lumea.';

  @override
  String get feedbackBack => 'Înapoi';

  @override
  String feedbackError(String error) {
    return 'Eroare la trimitere: $error';
  }

  @override
  String get feedbackRetry => 'Încearcă din nou';

  @override
  String get feedbackSettingsTitle => 'Trimite feedback';

  @override
  String get feedbackSettingsSubtitle =>
      'Raportează erori, sugerează îmbunătățiri sau corectează traduceri';

  @override
  String get aiEnergy => 'Energie AI';

  @override
  String get searchInConversation => 'Căutați în conversație...';

  @override
  String get noMessagesFound => 'Nu s-au găsit mesaje';

  @override
  String get suggestedQuestions => 'Întrebări sugerate:';

  @override
  String get shoppingAssistant => 'Asistent de cumpărături';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased din $total achiziționate';
  }

  @override
  String get estimatedCost => 'Estimată';

  @override
  String get viewItems => 'Vizualizați articole';

  @override
  String get noItemsInList => 'Nu există articole în listă';

  @override
  String get longHistoryWarning =>
      'Istoric lung: asistentul se concentrează pe cele mai recente mesaje pentru o performanță mai bună.';

  @override
  String get listening => 'Ascultare...';

  @override
  String get addDirectToList => 'Adăugați direct la listă';

  @override
  String get unlockFullResponse => 'Deblocați răspunsul complet';

  @override
  String get switchList => 'Lista de comutare';

  @override
  String get marketMode => 'Modul Piață';

  @override
  String get backToChat => 'Înapoi la chat';

  @override
  String get finishShopping => 'Terminați cumpărăturile';

  @override
  String get welcomeAiAssistant => 'Bun venit la AI Assistant';

  @override
  String get createListToStartAi =>
      'Creați o listă de cumpărături pentru a începe să utilizați chatul inteligent.';

  @override
  String get howCanIHelp => 'Cum pot ajuta?';

  @override
  String get chatSubtitleShort =>
      'Întrebați despre prețuri, rețete, organizare...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total achiziționat';
  }

  @override
  String get quickReplies => 'Răspunsuri rapide:';

  @override
  String get voiceProFeature =>
      'Comenzile vocale avansate sunt Pro. Se activează dictarea de bază...';

  @override
  String get viewPro => 'Vizualizați Pro';

  @override
  String get errorLoadingChat =>
      'Hopa! A apărut o eroare la încărcarea chatului.';

  @override
  String get errorLoadingChatSubtitle =>
      'Verificați conexiunea sau încercați din nou mai târziu.';

  @override
  String get errorOscillation =>
      'Acest lucru poate apărea din cauza oscilațiilor rețelei sau a indisponibilității temporare. Vă rugăm să încercați din nou.';

  @override
  String get activeListening => 'Ascultarea activă';

  @override
  String get whatToDoWithItem => 'Ce ai vrea să faci cu acest articol?';

  @override
  String get viewDetails => 'Vezi detalii';

  @override
  String get openMenu => 'Deschide meniul';

  @override
  String get viewRecipe => 'Vezi Rețeta';

  @override
  String get recipeCreated => 'Reteta creata!';

  @override
  String get editRecipe => 'Edita';

  @override
  String get deleteRecipe => 'Şterge';

  @override
  String get deleteRecipeConfirm => 'Ștergeți această rețetă?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Sigur doriți să ștergeți „$recipeName”? Această acțiune nu poate fi anulată.';
  }

  @override
  String get ingredients => 'Ingrediente';

  @override
  String get instructions => 'Instrucţiuni';

  @override
  String get prepTime => 'Timp de pregătire';

  @override
  String get recipeSaved => 'Reteta salvata!';

  @override
  String get noRecipesSaved => 'Nu au fost salvate rețete';

  @override
  String get noRecipesSavedHint =>
      'Creați prima rețetă personalizată atingând butonul de mai jos.';

  @override
  String get myRecipes => 'Rețetele mele';

  @override
  String get newRecipe => 'Rețetă nouă';

  @override
  String get loadingRecipes => 'Se încarcă rețetele...';

  @override
  String get errorLoadingRecipes => 'Eroare la încărcarea rețetelor';

  @override
  String get addIngredient => 'Adăugați ingredient';

  @override
  String get saveRecipe => 'Salva';

  @override
  String get recipeName => 'Numele rețetei';

  @override
  String get shortDescription => 'Scurtă descriere';

  @override
  String get prepTimeMinutes => 'Timp de pregătire (minute)';

  @override
  String get instructionsHint => 'Introduceți un pas pe linie...';

  @override
  String get addPhoto => 'Adăugați o fotografie';

  @override
  String get imageUrlPlaceholder => 'Sau inserați adresa URL a unei imagini';

  @override
  String get tags => 'Etichete';

  @override
  String get recipeTags => 'Etichete de rețetă';

  @override
  String get suggestedTags => 'Sugerat';

  @override
  String get searchRecipes => 'Cauta retete...';

  @override
  String get filterByTag => 'Filtrați după etichetă';

  @override
  String get allTags => 'Toate';

  @override
  String get recipeDeleted => 'Rețeta a fost ștearsă';

  @override
  String get saveChanges => 'Salvați modificările';

  @override
  String get editRecipeTitle => 'Editați rețeta';

  @override
  String get newRecipeTitle => 'Rețetă nouă';

  @override
  String get requiredField => 'Necesar';

  @override
  String get chooseImageSource => 'Alegeți sursa imaginii';

  @override
  String get gallery => 'Galerie';

  @override
  String get enterUrl => 'Introduceți adresa URL';

  @override
  String get recipeImage => 'Imaginea retetei';

  @override
  String get removeImage => 'Eliminați imaginea';

  @override
  String get mealPlannerTitle => 'Planificator de mese';

  @override
  String get mealPlannerViewMonthly => 'Vedere lunară';

  @override
  String get mealPlannerViewWeekly => 'Vedere săptămânală';

  @override
  String get mealPlannerNoMeals => 'Nicio masă planificată';

  @override
  String get mealPlannerNoMealsHint => 'Atingeți o zi pentru a adăuga o masă';

  @override
  String get mealPlannerLoading => 'Se încarcă planul de masă...';

  @override
  String get mealPlannerError => 'Eroare la încărcarea planului de masă';

  @override
  String get mealPlannerAddMeal => 'Adăugați masa';

  @override
  String get mealPlannerEditMeal => 'Editați masa';

  @override
  String get mealPlannerDeleteMeal => 'Scoateți masa';

  @override
  String get mealPlannerMealDeleted => 'Mâncarea eliminată';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count porții',
      one: '$count porții',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Porții';

  @override
  String get mealPlannerNoteLabel => 'Notă (opțional)';

  @override
  String get mealPlannerSelectRecipe => 'Selectați o rețetă';

  @override
  String get mealPlannerSearchRecipes => 'Cauta retete...';

  @override
  String get mealPlannerNoRecipesFound => 'Nu au fost găsite rețete';

  @override
  String get mealPlannerNoRecipesHint =>
      'Creați mai întâi rețete în fila Rețete';

  @override
  String get mealPlannerSave => 'Adăugați la plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count din $total mese planificate';
  }

  @override
  String get mealPlannerGenerateList => 'Generați lista de cumpărături';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Adăugați toate ingredientele din mesele planificate săptămâna aceasta la lista de cumpărături?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingredient(e) adăugat(e) la lista dvs.!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Fără ingrediente de adăugat. Planificați mai întâi câteva mese cu rețete.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Creați mai întâi o listă de cumpărături.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Mic dejun';

  @override
  String get mealPlannerMealTypeLunch => 'Prânz';

  @override
  String get mealPlannerMealTypeDinner => 'Cină';

  @override
  String get mealPlannerMealTypeSnack => 'Gustare';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty =>
      'Nimic planificat pentru această săptămână';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Atingeți orice zi pentru a începe să vă planificați mesele!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Invitați pe listă';

  @override
  String get shareApp => 'Partajați aplicația';

  @override
  String get shareAppDescription => 'Invitați prietenii să folosească KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Folosesc KipiList pentru a-mi organiza cumpărăturile! Descărcați prin linkul meu și primim amândoi 7 zile de Premium gratuit: $url';
  }

  @override
  String get shareReferralSubject => 'Obțineți 7 zile de KipiList Premium!';
}
