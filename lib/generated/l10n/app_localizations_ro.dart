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
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Rețete';

  @override
  String get navLists => 'Liste';

  @override
  String get navMealPlanner => 'Meniu';

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
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Ieșiți din modul Cumpărături';

  @override
  String get exit => 'Ieșire';

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
  String get scanProductTitle => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Poziționați codul de bare în centru';

  @override
  String get product => 'Product';

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
  String get myAchievements => 'Realizările mele';

  @override
  String get itemsPurchased => 'Articole Achizitionate';

  @override
  String get totalSavings => 'Economii totale';

  @override
  String get currentStreak => 'Serie curentă';

  @override
  String streakDays(int count) {
    return '$days zile';
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
  String get chatHintBlocked => 'Deblochează AI pentru a conversa';

  @override
  String chatError(String error) {
    return 'Eroare la încărcarea chatului: $error';
  }

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

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
  String get aiLimitAlmostReached => 'Aproape fără mesaje AI';

  @override
  String get unlockAi => 'Deblocați AI nelimitat';

  @override
  String get aiTeaserFallback =>
      'Abonați-vă la Premium pentru a debloca răspunsul complet și pentru a primi sfaturi AI nelimitate pentru cumpărături...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Acțiuni AI rămase luna aceasta — upgrade pentru nelimitat';
  }

  @override
  String get aiUsageExhausted =>
      'Limita lunară AI a fost atinsă. Upgrade la Pro pentru nelimitat →';

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
  String get onboardingMaybeLater => 'Poate mai târziu';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Bună $name, organizează-ți cumpărăturile în mod corect.';
  }

  @override
  String get onboardingSlide1Title => 'Liste inteligente de cumpărături';

  @override
  String get onboardingSlide1Body =>
      'Creați și partajați liste instantaneu. Kipi adaugă automat elemente în funcție de obiceiurile tale.';

  @override
  String get onboardingSlide2Title => 'Faceți cunoștință cu Kipi';

  @override
  String get onboardingSlide2Body =>
      'Întrebați orice - creați liste, găsiți rețete, urmăriți-vă cămară, planificați-vă săptămâna.';

  @override
  String get onboardingSlide3Title => 'Cămară și planificare a mesei';

  @override
  String get onboardingSlide3Body =>
      'Urmăriți ceea ce aveți, planificați mesele și generați automat liste de cumpărături.';

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
  String get paywallLoadingError =>
      'Eroare la încărcarea ofertelor. Încearcă din nou.';

  @override
  String get paywallPurchaseError =>
      'Nu s-a putut finaliza achiziția. Încearcă din nou.';

  @override
  String get paywallRestoreError =>
      'Nu s-a găsit niciun abonament activ de restabilit.';

  @override
  String paywallTrialDays(Object days) {
    return '$days ZILE GRATUITE';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count SĂPTĂMÂNI GRATUITE',
      one: '$count SĂPTĂMÂNĂ GRATUIT',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MONTH FREE',
      one: '$count MONTH FREE',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Încercați gratuit!';

  @override
  String get paywallTrialSubtitle => 'Anulați oricând. Fără taxă astăzi.';

  @override
  String get paywallTrialCta => 'Începeți proba gratuită';

  @override
  String get recipeAddToList => 'Adăugați la lista de cumpărături';

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
      'Nicio listă selectată. Deschideți mai întâi o listă.';

  @override
  String get paywallFeaturesTitle => 'Tot ce ai nevoie:';

  @override
  String get paywallFeatureDescAssistant => 'AI vă organizează automat lista';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Creați câte liste aveți nevoie';

  @override
  String get paywallFeatureDescSharing => 'Cumpărați împreună în timp real';

  @override
  String get paywallFeatureDescPantry => 'Urmăriți ceea ce aveți acasă';

  @override
  String get paywallFeatureDescBudget => 'Rămâneți la buget în fiecare lună';

  @override
  String get paywallFeatureUnlimitedLists => 'Liste nelimitate';

  @override
  String get paywallFeatureSmartAI => 'AI inteligent';

  @override
  String get paywallFeatureExpenseControl => 'Controlul cheltuielilor';

  @override
  String get paywallFeatureSharing => 'Partajarea';

  @override
  String get paywallBeforeAfterTitle => 'AI înainte și după:';

  @override
  String get paywallLabelCommon => 'Comun';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'orez';

  @override
  String get paywallBeforeItem2 => 'săpun';

  @override
  String get paywallBeforeItem3 => 'carne';

  @override
  String get paywallBeforeItem4 => 'pâine';

  @override
  String get paywallAfterItem1 => 'Cereale';

  @override
  String get paywallAfterItem2 => 'Curatenie';

  @override
  String get paywallAfterItem3 => 'Carne';

  @override
  String get paywallAfterItem4 => 'Brutărie';

  @override
  String get paywallTestimonialsTitle => 'Ce spun utilizatorii noștri:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI îmi organizează cumpărăturile în câteva secunde. Economisesc 20 de minute pe călătorie pe piață.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Nu am uitat niciodată un articol din listă. Chatul AI este senzațional!';

  @override
  String get paywallSocialProof => '+2.400 de familii îl folosesc';

  @override
  String get paywallCtaUnlock => 'Deblocați PRO';

  @override
  String get paywallBestValue => 'CEL MAI BUN VALOARE';

  @override
  String get paywallMostPopular => 'CEL MAI POPULAR';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Plata sigura';

  @override
  String get paywallSelectPlan => 'Alege-ți planul:';

  @override
  String paywallSavePercent(Object percent) {
    return 'SALVAȚI $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Doar $price/lună';
  }

  @override
  String get paywallPackageAnnual => 'Planul anual';

  @override
  String get paywallPackageMonthly => 'Plan lunar';

  @override
  String get paywallPackageLifetime => 'Acces pe viață';

  @override
  String get paywallCancelAnytime => 'Anulați oricând. Nici un angajament.';

  @override
  String paywallTrialInCard(int days) {
    return 'Primele $days zile GRATUIT';
  }

  @override
  String get paywallSecuredByStore =>
      'Securizat de Google Play · Anulați oricând';

  @override
  String get paywallPolicy => 'Politica de confidențialitate';

  @override
  String get paywallTerms => 'Termeni de utilizare';

  @override
  String get paywallRestore => 'Restabili';

  @override
  String get paywallHeroHeadline => 'Kipi AI mereu alături de tine';

  @override
  String get paywallHeroSubtitle =>
      'Adaugă articole, organizează liste și economisește timp cu AI în buzunar';

  @override
  String get paywallBenefit1Desc =>
      'Adaugă, organizează și sugerează articole 24/7';

  @override
  String get paywallBenefit2Desc => 'Fără limită de 3 liste';

  @override
  String get paywallBenefit3Desc =>
      'Urmărirea cheltuielilor și listele de familie';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilitate deplină';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Începe gratuit — $days zile';
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
  String shareReferralText(String url) {
    return 'Folosesc KipiList pentru a-mi organiza cumpărăturile! Descărcați prin linkul meu și primim amândoi 7 zile de Premium gratuit: $url';
  }

  @override
  String get shareReferralSubject => 'Obțineți 7 zile de KipiList Premium!';

  @override
  String get gestureHint =>
      'Țineți apăsat pentru a selecta • Glisați pentru a elimina';

  @override
  String get catalogTitle => 'Catalog';

  @override
  String get catalogMyFrequents => 'Frecvenții Mei';

  @override
  String get catalogSearchGlobal => 'Cauta orice produs...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Căutați în $category...';
  }

  @override
  String get catalogSortPopular => 'Cel mai popular';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Naţionalii';

  @override
  String get catalogRareSection => 'mai puțin frecvente în țara ta';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Adăugați $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Produsul nu a fost găsit, introduceți numele';

  @override
  String get catalogBrowse => 'Răsfoiți catalogul';

  @override
  String get offlineBanner => 'Ești offline';

  @override
  String get consentTitle => 'Confidențialitate și analiză';

  @override
  String get consentBody =>
      'KipiList utilizează Firebase Analytics pentru a vă îmbunătăți experiența. Datele dumneavoastră sunt prelucrate conform Politicii noastre de confidențialitate.';

  @override
  String get consentAccept => 'Accepta';

  @override
  String get consentDecline => 'Nu, mulțumesc';

  @override
  String get mealPlannerPantryAllAvailable => 'Toate ingredientele disponibile';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 lipsește';
  }

  @override
  String get expirationDate => 'Data expirării';

  @override
  String get notInformed => 'Nu setat';

  @override
  String get skip => 'Sari peste';

  @override
  String get onboardingAiTitle => 'Discutați cu Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hi! Sunt Kipi, asistentul tău personal de cumpărături! 🛒';

  @override
  String get onboardingAiAskName => 'Care e numele tău?';

  @override
  String get onboardingAiNameHint => 'Tastați-vă numele...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Mă bucur să te cunosc, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Care este mâncarea ta preferată?';

  @override
  String get onboardingAiFoodHint => 'de ex. Pizza, sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Alegeri grozave! Iată ce aș adăuga la lista ta:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Arată bine asta? Încearcă să tastezi altceva!';

  @override
  String get onboardingAiReady =>
      'Mare! Ești gata să începi. Haideți să vă configuram contul!';

  @override
  String get onboardingAiContinue => 'Continuare →';

  @override
  String get connectionError => 'Eroare de conectare';

  @override
  String connectionErrorDesc(String error) {
    return 'Nu s-a putut conecta la server. Verificați-vă internetul.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Eroare la încărcarea listelor';

  @override
  String get noListsFound => 'Nu s-au găsit liste';

  @override
  String get backToToday => 'Înapoi la ziua de azi';

  @override
  String get quickSuggestions => 'Sugestii rapide';

  @override
  String get aiEnergyLow => 'Energie AI scăzută';

  @override
  String get aiUnlockUnlimited => 'Deblocați AI nelimitat';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 astăzi';
  }

  @override
  String get aiSubscribeUnlimited => 'Abonați-vă pentru AI nelimitat';

  @override
  String get unlockWithAd => 'Deblocați cu Ad';

  @override
  String get conversationHistoryTitle => 'Istoricul conversațiilor';

  @override
  String get noConversationsFound => 'Nu s-au găsit conversații';

  @override
  String get errorLoadingHistory => 'Eroare la încărcarea istoricului';

  @override
  String get deleteConversationTitle => 'Ștergeți conversația?';

  @override
  String get deleteConversationConfirm =>
      'Această acțiune nu poate fi anulată.';

  @override
  String get deleteConversation => 'Şterge';

  @override
  String get subscription => 'Abonament';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle =>
      'Deblocați liste nelimitate, AI și multe altele';

  @override
  String get loadingSubscription => 'Se încarcă abonamentul...';

  @override
  String get errorLoadingSubscription => 'Eroare la încărcarea abonamentului';

  @override
  String get profileSection => 'Profil';

  @override
  String get myProfile => 'Profilul meu';

  @override
  String get profileSubtitle => 'Preferințe personale pentru asistentul AI';

  @override
  String get customizeAiAssistant => 'Personalizați asistentul AI';

  @override
  String get assistantHistory => 'Istoricul asistentului';

  @override
  String get assistantHistorySubtitle =>
      'Vizualizați istoricul conversațiilor dvs';

  @override
  String get manageCategories => 'Gestionați categoriile';

  @override
  String get manageCategoriesSubtitle => 'Gestionați categoriile de articole';

  @override
  String get customizeAssistant => 'Personalizați';

  @override
  String get assistantName => 'Numele asistentului';

  @override
  String get chooseIcon => 'Alege pictograma';

  @override
  String get profileSaved => 'Profil salvat cu succes!';

  @override
  String get errorSavingProfile => 'Eroare la salvare: null';

  @override
  String get userProfile => 'Profil de utilizator';

  @override
  String get profileDescription =>
      'Spune-ne preferințele tale personale, astfel încât asistentul AI să poată sugera articole și rețete personalizate.';

  @override
  String get preferredMarket => 'Piața preferată';

  @override
  String get preferredMarketHint => 'De exemplu: Supermarket X';

  @override
  String get dietaryRestrictions => 'Restricții alimentare';

  @override
  String get dietaryRestrictionsHint =>
      'De exemplu: vegan, vegetarian, fără gluten';

  @override
  String get marketsToAvoid => 'Piețe de evitat';

  @override
  String get marketsToAvoidHint => 'De exemplu: Piața Y, Piața Z';

  @override
  String get observations => 'Note';

  @override
  String get observationsHint => 'Alte preferințe pentru asistent';

  @override
  String get saveProfile => 'Salvați profilul';

  @override
  String get everythingReady => 'Totul gata!';

  @override
  String get youCompletedList => 'Ai completat lista!';

  @override
  String get selectCheaperAlternative =>
      'Selectați o alternativă de produs mai ieftină pentru a optimiza costurile.';

  @override
  String get suggestedItems => 'Articole sugerate';

  @override
  String get swapped => 'Schimbat';

  @override
  String get swap => 'Schimbați';

  @override
  String get chooseThemeColor => 'Alegeți culoarea temei';

  @override
  String get manageCategoriesTitle => 'Gestionați categoriile';

  @override
  String get categoryLimitReached =>
      'Limită de 10 categorii în versiunea gratuită. Upgrade la Pro!';

  @override
  String get deleteCategoryTitle => 'Ștergeți categoria';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Articolele din categoria „$category” vor fi mutate în „Altele”.\nContinua?';
  }

  @override
  String get deleteCategory => 'Şterge';

  @override
  String get newCategoryDialog => 'Noua categorie';

  @override
  String get editCategoryDialog => 'Editați categoria';

  @override
  String get categoryName => 'Numele categoriei';

  @override
  String get categoryNameHint => 'De exemplu: carne';

  @override
  String get categoryColorLabel => 'Culoare';

  @override
  String get categoryIconLabel => 'Pictogramă';

  @override
  String itemAddedSnack(String name) {
    return '$name adăugat';
  }

  @override
  String get kipiQuickBarHint => 'Ce trebuie să cumperi?';

  @override
  String replaceItem(String item) {
    return 'Înlocuiește $item';
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
      'Nu uita niciodată un produs alimentar din nou';

  @override
  String get onboardingGoalSaveMoney => 'Economisiți bani';

  @override
  String get onboardingGoalNeverForget => 'Nu uita niciodată obiectele';

  @override
  String get onboardingGoalFaster => 'Cumpărați mai repede';

  @override
  String get onboardingGoalFamily => 'Organizați cumpărăturile în familie';

  @override
  String get onboardingGoalRecipes => 'Descoperiți rețete';

  @override
  String get onboardingGoalPantry => 'Cămara de urmărire';

  @override
  String get onboardingCommitmentsTitle => 'Ce contează pentru tine?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Alegeți-vă obiectivele pentru a personaliza KipiList';

  @override
  String get onboardingCommitmentsCta => 'Să mergem!';

  @override
  String get onboardingPersonalizationNameLabel => 'Numele dumneavoastră';

  @override
  String get onboardingPersonalizationNameHint => 'Introduceți numele dvs';

  @override
  String get onboardingPersonalizationCategoryTitle =>
      'Pentru ce faci cumpărături?';

  @override
  String get onboardingPersonalizationGroupTitle =>
      'Pentru cine faci cumpărături?';

  @override
  String get onboardingCategoryGrocery => 'Băcănii';

  @override
  String get onboardingCategoryPharmacy => 'Farmacie';

  @override
  String get onboardingCategoryRecipes => 'Rețete';

  @override
  String get onboardingCategoryHome => 'Acasă';

  @override
  String get onboardingCategoryPet => 'Animal de companie';

  @override
  String get onboardingGroupSolo => 'Doar eu';

  @override
  String get onboardingGroupCouple => 'Cuplu';

  @override
  String get onboardingGroupFamily => 'Familial';

  @override
  String get onboardingLoadingTitle => 'Îți pregătesc experiența...';

  @override
  String get onboardingLoadingStep1 => 'Vă analizăm preferințele...';

  @override
  String get onboardingLoadingStep2 => 'Se configurează asistentul AI...';

  @override
  String get onboardingLoadingStep3 => 'Aproape gata...';

  @override
  String get onboardingLoadingStat1Label => 'Articole catalogate';

  @override
  String get onboardingLoadingStat2Label => 'Utilizatorii au ajutat';

  @override
  String get onboardingLoadingStat3Label => 'Minute salvate';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, economisiți la fiecare călătorie!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, nu uita niciodată un articol!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, cumpără în jumătate din timp!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, organizează cumpărăturile în familie!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, descoperă rețete noi!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, urmărește-ți perfect cămara!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Economisiți la fiecare călătorie!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Nu uita niciodată un articol!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'Cumpărați în jumătate din timp!';

  @override
  String get paywallGoalHeadlineNoNameFamily =>
      'Organizați cumpărăturile în familie!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => 'Descoperă rețete noi!';

  @override
  String get paywallGoalHeadlineNoNamePantry => 'Urmăriți-vă cămara perfect!';

  @override
  String paywallPricePerDay(String price) {
    return 'Doar $price/zi — mai puțin de o cafea';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Sari peste moment';

  @override
  String get paywallTestimonial =>
      'AI îmi organizează cumpărăturile în câteva secunde. Economisesc 20 de minute pe călătorie.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Anulați oricând · Nicio taxă până la încheierea perioadei de încercare';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Bună $name! De ce $category ai nevoie?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'De ce $category ai nevoie?';
  }

  @override
  String get onboardingAiDemoYes => 'Da!';

  @override
  String get onboardingAiDemoReaction => 'Frumos!';

  @override
  String get onboardingAiDemoChange => 'Schimbați elementul';

  @override
  String get onboardingAiDemoOffer => 'Încearcă să tastezi altceva!';

  @override
  String get onboardingAiDemoContinue => 'Continua';

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
