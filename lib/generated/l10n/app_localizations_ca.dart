// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'Llista de la Compra';

  @override
  String get lists => 'Llistes';

  @override
  String get pantry => 'Rebost';

  @override
  String get navChat => 'Xatejar';

  @override
  String get navRecipes => 'Receptes';

  @override
  String get navLists => 'Llistes';

  @override
  String get navMealPlanner => 'Menú';

  @override
  String get cancel => 'Cancel·lar';

  @override
  String get save => 'Guardar';

  @override
  String get create => 'Crear';

  @override
  String get add => 'Afegir';

  @override
  String get remove => 'Eliminar';

  @override
  String get delete => 'Suprimir';

  @override
  String get edit => 'Editar';

  @override
  String get copy => 'Copiar';

  @override
  String get next => 'A continuació';

  @override
  String get retry => 'Reintentar';

  @override
  String get regenerate => 'Regenerar';

  @override
  String get copiedToClipboard => 'Copiat al porta-retalls';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Tancar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renombrar';

  @override
  String get upgrade => 'Millorar';

  @override
  String get clear => 'Netejar';

  @override
  String error(String message) {
    return 'Error: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Error: $message';
  }

  @override
  String get purchaseError =>
      'Error en processar la compra. Torna-ho a provar.';

  @override
  String get restoreError =>
      'Error en restaurar les compres. Torna-ho a provar.';

  @override
  String get loading => 'Carregant...';

  @override
  String get fieldRequired => 'Camp obligatori';

  @override
  String get addedFeedback => 'Afegit!';

  @override
  String get profile => 'Perfil';

  @override
  String get exitShoppingMode => 'Sortiu del mode de compra';

  @override
  String get exit => 'Sortida';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seleccionats',
      one: '$count seleccionat',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimat';

  @override
  String get alreadyPurchased => 'Ja comprat';

  @override
  String get clearList => 'Netejar llista';

  @override
  String get clearPurchased => 'Netejar comprats';

  @override
  String get share => 'Compartir';

  @override
  String get shareViaCode => 'Compartir via codi';

  @override
  String get importViaCode => 'Importar via codi';

  @override
  String get listAssistant => 'Assistent de llista';

  @override
  String get globalAssistant => 'Assistent global';

  @override
  String get becomePremium => 'Fes-te Premium';

  @override
  String get manageSubscription => 'Gestionar subscripció';

  @override
  String get completePurchase => 'Completar compra';

  @override
  String get confirmClearList => 'Eliminar tots els articles?';

  @override
  String get shareListTitle => 'Compartir llista';

  @override
  String get shareThisCode => 'Comparteix aquest codi:';

  @override
  String get validForLimitedTime => 'Vàlid per temps limitat';

  @override
  String get importListTitle => 'Importar llista';

  @override
  String get enterCodeHint => 'Introdueix el codi';

  @override
  String get confirmArchiveTitle => 'Completar compra';

  @override
  String get confirmArchiveContent =>
      'Completar aquesta compra i arxivar la llista?';

  @override
  String get complete => 'Completar';

  @override
  String get listArchived => 'Llista arxivada correctament!';

  @override
  String listAdded(String listName) {
    return '$listName afegida!';
  }

  @override
  String get buy => 'Comprar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return 'Eliminar $count article(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return 'Eliminar $count article(s)?';
  }

  @override
  String get archiveList => 'Arxivar llista';

  @override
  String get pantryAppBar => 'Rebost';

  @override
  String get generateShoppingList => 'Generar llista de compra';

  @override
  String get pantryEmpty => 'Rebost buit';

  @override
  String get pantryEmptySubtitle =>
      'Afegeix productes que vulguis tenir a casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit article(s) necessiten comprar-se';
  }

  @override
  String get noItemsToBuy => 'No cal comprar cap article';

  @override
  String get newPantryList => 'Compra de rebost';

  @override
  String get newListTitle => 'Nova llista de compra';

  @override
  String itemsWillBeAdded(int count) {
    return '$count article(s) s\'afegiran';
  }

  @override
  String get listNameLabel => 'Nom de la llista';

  @override
  String listCreated(String name, int count) {
    return 'Llista \"$name\" creada amb $count articles';
  }

  @override
  String get noTracking => 'Sense seguiment';

  @override
  String get markAsPurchased => 'Marcar com a comprat';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Quantitat ideal';

  @override
  String get currentQuantity => 'Quantitat actual';

  @override
  String get consumed => 'Consumit';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastit a $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Eliminar \"$name\" del rebost?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get settingsAppBar => 'Configuració';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Portuguès (Brasil)';

  @override
  String get languageEnglish => 'Anglès';

  @override
  String get languageSystem => 'Per defecte del sistema';

  @override
  String get chooseLanguage => 'Selecciona l\'idioma';

  @override
  String get searchLanguage => 'Cercar idioma...';

  @override
  String get currency => 'Moneda';

  @override
  String get chooseCurrency => 'Seleccioneu Moneda';

  @override
  String get searchCurrency => 'Cerca moneda...';

  @override
  String get appearance => 'Aparença';

  @override
  String get light => 'Clar';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Fosc';

  @override
  String get themeColor => 'Color del tema';

  @override
  String get dynamicColors => 'Colors dinàmics';

  @override
  String get dynamicColorsSubtitle =>
      'Utilitza colors basats en el teu fons de pantalla';

  @override
  String get dynamicColorsEnabledWarning =>
      'Desactiveu els colors dinàmics perquè el color del tema tingui efecte';

  @override
  String get finance => 'Finances';

  @override
  String get monthlyBudgetNav => 'Pressupost mensual';

  @override
  String get budgetSubtitle => 'Controla les teves despeses mensuals';

  @override
  String get data => 'Dades';

  @override
  String get backupNav => 'Còpia de seguretat';

  @override
  String get backupSubtitle => 'Exporta o importa les teves dades';

  @override
  String get about => 'Quant a';

  @override
  String get version => 'Versió';

  @override
  String get privacy => 'Privacitat';

  @override
  String get termsOfUse => 'Termes d\'ús';

  @override
  String get backupTitle => 'Còpia de seguretat';

  @override
  String get backupPremiumDescription =>
      'La còpia de seguretat i l\'exportació són una funció Premium';

  @override
  String get exportData => 'Exportar dades';

  @override
  String get exportDataSubtitle => 'Guardar totes les llistes com a JSON';

  @override
  String get importData => 'Importar dades';

  @override
  String get importDataSubtitle => 'Restaurar llistes des d\'un JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Enganxa el JSON de còpia de seguretat aquí...';

  @override
  String get backupExported => 'Còpia de seguretat exportada!';

  @override
  String get budgetAppBar => 'Pressupost mensual';

  @override
  String get budgetPremiumLocked => 'El pressupost mensual global és Premium';

  @override
  String get budgetUpgradePrompt => 'Millora per desbloquejar';

  @override
  String get noBudgetDefined => 'Cap pressupost definit';

  @override
  String totalEstimated(String amount) {
    return 'Total estimat: $amount';
  }

  @override
  String get setBudgetButton => 'Definir pressupost';

  @override
  String get budgetLists => 'Llistes';

  @override
  String get budgetValueLabel => 'Import';

  @override
  String get setBudgetTitle => 'Pressupost mensual';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tots';

  @override
  String get filterPending => 'Pendents';

  @override
  String get filterPurchased => 'Comprats';

  @override
  String get sortName => 'Nom';

  @override
  String get sortCategory => 'Categoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Afegir article';

  @override
  String get itemName => 'Nom de l\'article';

  @override
  String get quantityShort => 'Quant';

  @override
  String get unit => 'Unitat';

  @override
  String get category => 'Categoria';

  @override
  String get estimatedPrice => 'Preu estimat';

  @override
  String get addItemPrice => 'Preu estimat';

  @override
  String get editItem => 'Editar article';

  @override
  String get quantityFull => 'Quantitat';

  @override
  String get editItemPrice => 'Preu estimat';

  @override
  String get addToPantry => 'Afegir al rebost';

  @override
  String addToPantryPrompt(String name) {
    return 'Afegir \"$name\" al teu rebost?';
  }

  @override
  String get yes => 'Sí';

  @override
  String get productName => 'Nom del producte';

  @override
  String get idealQty => 'Quant ideal';

  @override
  String get currentQty => 'Quant actual';

  @override
  String get trackStock => 'Seguir estoc';

  @override
  String get trackStockActive => 'Apareix en suggeriments de compra';

  @override
  String get trackStockInactive => 'No genera suggeriment de compra';

  @override
  String get createListDialog => 'Crear llista';

  @override
  String get renameListDialog => 'Renombrar llista';

  @override
  String get listHistory => 'Historial de llistes';

  @override
  String get myLists => 'Les meves llistes';

  @override
  String get viewActive => 'Veure actives';

  @override
  String get viewHistory => 'Veure historial';

  @override
  String get noArchivedLists => 'No hi ha llistes arxivades';

  @override
  String get noActiveLists => 'No hi ha llistes actives';

  @override
  String completedOn(String date) {
    return 'Completada el $date';
  }

  @override
  String get sharedLabel => 'Compartida';

  @override
  String get restore => 'Restaurar';

  @override
  String get removeSharedTooltip => 'Eliminar';

  @override
  String get deleteListTitle => 'Suprimir llista';

  @override
  String deleteListContent(String name) {
    return 'Estàs segur que vols suprimir \"$name\"? Tots els articles s\'eliminaran.';
  }

  @override
  String get removeSharedListTitle => 'Eliminar llista compartida';

  @override
  String removeSharedListContent(String name) {
    return 'Eliminar \"$name\" de les teves llistes? La llista original no es veurà afectada.';
  }

  @override
  String get createNewList => 'Crear nova llista';

  @override
  String get aiAssistant => 'Assistent d\'IA';

  @override
  String get aiAssistantDescription =>
      'Obtén suggeriments intel·ligents, receptes i consells personalitzats amb el nostre assistent d\'IA.';

  @override
  String get generalAssistant => 'Assistent general';

  @override
  String get newChat => 'Xat nou';

  @override
  String get noHistory => 'No hi ha historial de xat';

  @override
  String get deleteSession => 'Suprimeix el xat';

  @override
  String get deleteSessionConfirm =>
      'Confirmes que vols suprimir aquest xat? Els missatges es perdran permanentment.';

  @override
  String get clearHistory => 'Netejar historial';

  @override
  String get clearHistoryConfirm =>
      'Netejar tots els missatges d\'aquesta sessió?';

  @override
  String get chatHint => 'Escriu el teu missatge...';

  @override
  String get chatHintBlocked => 'Desbloqueja la IA per xatejar';

  @override
  String chatError(String error) {
    return 'Error en carregar el xat: $error';
  }

  @override
  String get listHelp => 'Com puc ajudar-te amb la teva llista?';

  @override
  String get generalHelp => 'Com puc ajudar-te amb les teves compres avui?';

  @override
  String get chatSubtitle =>
      'Demana suggeriments d\'articles, receptes o consells d\'estalvi.';

  @override
  String get aiError =>
      'Ho sentim, s\'ha produït un error en processar la teva sol·licitud. Comprova la teva connexió o torna-ho a provar més tard.';

  @override
  String get aiLimitAlmostReached => 'Quasi sense missatges d\'IA';

  @override
  String get unlockAi => 'Desbloqueja IA il·limitada';

  @override
  String get aiTeaserFallback =>
      'Subscriviu-vos a Premium per desbloquejar la resposta completa i obtenir consells d\'IA il·limitats per a les vostres compres...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Accions d\'IA que queden aquest mes: actualitzeu-les il·limitades';
  }

  @override
  String get aiUsageExhausted =>
      'S\'ha assolit el límit mensual d\'IA. Actualitza a Pro per un nombre il·limitat →';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Inicia sessió per desbloquejar\nfuncions Premium';

  @override
  String get signInGoogle => 'Iniciar sessió amb Google';

  @override
  String get signInApple => 'Iniciar sessió amb Apple';

  @override
  String get continueAsGuest => 'Continuar com a convidat';

  @override
  String get onboardingWelcomeTitle => 'Benvingut a KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'La manera més intel·ligent d\'organitzar les teves compres i estalviar diners.';

  @override
  String get onboardingSetupTitle => 'Personalitza la teva experiència';

  @override
  String get onboardingSetupDesc =>
      'Tria com vols que KipiList es vegi i funcioni per a tu.';

  @override
  String get onboardingLoginTitle => 'Guarda-ho tot al núvol';

  @override
  String get onboardingLoginDesc =>
      'Les teves dades s\'han sincronitzat a tots els teus dispositius';

  @override
  String get onboardingShareTitle => 'Comparteix amb les persones que estimes';

  @override
  String get onboardingShareDesc =>
      'Sincronitza llistes amb familiars i amics en temps real';

  @override
  String get onboardingPremiumTitle => 'Desbloqueja totes les funcions';

  @override
  String get onboardingPremiumSubtitle =>
      'Aprofiteu al màxim les vostres llistes de compra';

  @override
  String get onboardingAnnualBadge => 'Millor relació qualitat-preu';

  @override
  String get onboardingMonthlyLabel => 'Mensualment';

  @override
  String get onboardingAnnualLabel => 'Anual';

  @override
  String get onboardingViewAllPlans => 'Veure tots els plans';

  @override
  String get onboardingSubscribeCta => 'Subscriu-te';

  @override
  String get onboardingCancelAnytime =>
      'Cancel·la en qualsevol moment. Sense compromís.';

  @override
  String get onboardingContinueAsGuest => 'Continua com a convidat';

  @override
  String get onboardingRestore => 'Restaurar';

  @override
  String get onboardingRestoreDesc =>
      'Ja tens una subscripció? Toqueu aquí per restaurar-lo.';

  @override
  String get onboardingMaybeLater => 'Potser més tard';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hola $name, organitza les teves compres de la manera correcta.';
  }

  @override
  String get onboardingSlide1Title => 'Llistes de compres intel·ligents';

  @override
  String get onboardingSlide1Body =>
      'Creeu i compartiu llistes a l\'instant. Kipi afegeix elements automàticament en funció dels vostres hàbits.';

  @override
  String get onboardingSlide2Title => 'Coneix Kipi';

  @override
  String get onboardingSlide2Body =>
      'Pregunteu qualsevol cosa: creeu llistes, trobeu receptes, feu un seguiment del vostre rebost, planifiqueu la vostra setmana.';

  @override
  String get onboardingSlide3Title => 'Planificació de rebost i àpats';

  @override
  String get onboardingSlide3Body =>
      'Feu un seguiment del que teniu, planifiqueu els àpats i genereu llistes de la compra automàticament.';

  @override
  String get onboardingExit => 'Sortida';

  @override
  String get onboardingPersonalizationTitle => 'Anem a conèixer-te';

  @override
  String get onboardingPersonalizationDesc =>
      'Ho farem servir per personalitzar els vostres suggeriments i fer que les compres siguin més intel·ligents.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Quin és el teu menjar preferit?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'p. ex. Pizza, sushi, lasanya...';

  @override
  String get onboardingPersonalizationCta => 'Continua';

  @override
  String get onboardingPersonalizationSkip => 'Omet per ara';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Explica\'ns el teu menjar preferit per continuar';

  @override
  String get settingsDefaultScreen => 'Pantalla d\'inici predeterminada';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Trieu entre llista de la compra o xat AI';

  @override
  String get settingsScreenList => 'Llista de la compra';

  @override
  String get settingsScreenChat => 'Xat amb IA';

  @override
  String loginError(String error) {
    return 'Error d\'inici de sessió: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'S\'ha produït un error en carregar les ofertes. Torna-ho a provar.';

  @override
  String get paywallPurchaseError =>
      'No s\'ha pogut completar la compra. Torna-ho a provar.';

  @override
  String get paywallRestoreError =>
      'No s\'ha trobat cap subscripció activa per restaurar.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DIES GRATIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count SETMANES GRATIS',
      one: '$count SETMANA GRATIS',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MES GRATIS',
      one: '$count MES GRATIS',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Prova gratis!';

  @override
  String get paywallTrialSubtitle =>
      'Cancel·la en qualsevol moment. Avui sense càrrec.';

  @override
  String get paywallTrialCta => 'Inicieu la prova gratuïta';

  @override
  String get recipeAddToList => 'Afegeix a la llista de la compra';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 afegit a $listName';
  }

  @override
  String get noListSelected =>
      'No s\'ha seleccionat cap llista. Obriu una llista primer.';

  @override
  String get paywallFeaturesTitle => 'Tot el que necessites:';

  @override
  String get paywallFeatureUnlimitedLists => 'Llistes il·limitades';

  @override
  String get paywallFeatureSmartAI => 'Intel·ligència intel·ligent';

  @override
  String get paywallFeatureExpenseControl => 'Control de despeses';

  @override
  String get paywallFeatureSharing => 'Compartint';

  @override
  String get paywallBeforeAfterTitle => 'AI abans i després:';

  @override
  String get paywallLabelCommon => 'Comú';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'arròs';

  @override
  String get paywallBeforeItem2 => 'sabó';

  @override
  String get paywallBeforeItem3 => 'carn';

  @override
  String get paywallBeforeItem4 => 'pa';

  @override
  String get paywallAfterItem1 => 'Grans';

  @override
  String get paywallAfterItem2 => 'Neteja';

  @override
  String get paywallAfterItem3 => 'Carns';

  @override
  String get paywallAfterItem4 => 'Fleca';

  @override
  String get paywallTestimonialsTitle => 'Què diuen els nostres usuaris:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'L\'IA organitza les meves compres en qüestió de segons. M\'estalvio 20 minuts per viatge al mercat.';

  @override
  String get paywallTestimonial2Name => 'Carles M.';

  @override
  String get paywallTestimonial2Text =>
      'No he tornat a oblidar cap element de la llista. El xat amb IA és sensacional!';

  @override
  String get paywallSocialProof => '+2.400 famílies l\'utilitzen';

  @override
  String get paywallCtaUnlock => 'Desbloqueja PRO';

  @override
  String get paywallBestValue => 'MILLOR VALOR';

  @override
  String get paywallMostPopular => 'MÉS POPULARS';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Pagament segur';

  @override
  String get paywallSelectPlan => 'Tria el teu pla:';

  @override
  String paywallSavePercent(Object percent) {
    return 'Estalvia un $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Només $price/mes';
  }

  @override
  String get paywallPackageAnnual => 'Pla anual';

  @override
  String get paywallPackageMonthly => 'Pla mensual';

  @override
  String get paywallPackageLifetime => 'Accés de per vida';

  @override
  String get paywallCancelAnytime =>
      'Cancel·la en qualsevol moment. Sense compromís.';

  @override
  String paywallTrialInCard(int days) {
    return 'Primers $days dies GRATIS';
  }

  @override
  String get paywallSecuredByStore =>
      'Protegit per Google Play · Cancel·la en qualsevol moment';

  @override
  String get paywallPolicy => 'Política de privadesa';

  @override
  String get paywallTerms => 'Condicions d\'ús';

  @override
  String get paywallRestore => 'Restaurar';

  @override
  String get paywallHeroHeadline => 'Kipi AI sempre al teu costat';

  @override
  String get paywallHeroSubtitle =>
      'Afegiu articles, organitzeu llistes i estalvieu temps amb la IA a la butxaca';

  @override
  String get paywallBenefit1Desc =>
      'Afegeix, organitza i suggereix elements les 24 hores del dia';

  @override
  String get paywallBenefit2Desc => 'Sense límit de 3 llistes';

  @override
  String get paywallBenefit3Desc => 'Seguiment de despeses i llistes familiars';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilitat total';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Comença gratis — $days dies';
  }

  @override
  String get premiumUpgrade => 'Millora per desbloquejar';

  @override
  String get itemRemoved => 'Article eliminat';

  @override
  String get undo => 'Desfer';

  @override
  String get emptyListTitle => 'La teva llista està buida';

  @override
  String get emptyListSubtitle => 'Afegeix articles per començar';

  @override
  String get noListFoundTitle => 'No s\'han trobat llistes';

  @override
  String get noListFoundSubtitle => 'Crea la teva primera llista per començar';

  @override
  String get createFirstList => 'Crear primera llista';

  @override
  String get listBudgetTitle => 'Pressupost de la llista';

  @override
  String get budgetAmountLabel => 'Import del pressupost';

  @override
  String get removeBudget => 'Eliminar';

  @override
  String get prefUnlimitedLists => 'Llistes il·limitades';

  @override
  String get prefSharing => 'Compartir llistes';

  @override
  String get prefFullHistory => 'Historial complet';

  @override
  String get prefExportData => 'Exportar dades';

  @override
  String get prefCustomThemes => 'Temes personalitzats';

  @override
  String get prefMonthlyBudget => 'Pressupost mensual global';

  @override
  String get prefAIAssistant => 'Assistent d\'IA personal';

  @override
  String get prefUnlimitedPantry => 'Rebost il·limitat';

  @override
  String get prefInteractiveArtifacts => 'Artefactes interactius d\'IA';

  @override
  String get themeGreen => 'Verd';

  @override
  String get themeBlue => 'Blau';

  @override
  String get themePurple => 'Porpra';

  @override
  String get themeRed => 'Vermell';

  @override
  String get themeOrange => 'Taronja';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Índigo';

  @override
  String get themeAmber => 'Ambre';

  @override
  String get themeTeal => 'Xarxet';

  @override
  String get themeBrown => 'Marró';

  @override
  String get catFruits => 'Fruites';

  @override
  String get catCleaning => 'Neteja';

  @override
  String get catBeverages => 'Begudes';

  @override
  String get catBakery => 'Fleca';

  @override
  String get catOthers => 'Altres';

  @override
  String get unitPack => 'paquet';

  @override
  String get shareSubject => 'Llista de la compra';

  @override
  String get monthlyBudgetTitle => 'Pressupost mensual';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Suprimir llista';

  @override
  String get pantryItemRemoved => 'Article eliminat';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit articles necessiten comprar-se',
      one: '$deficit article necessita comprar-se',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total del carretó';

  @override
  String get restockLabel => 'Reabastir';

  @override
  String get advancedFeatures => 'Funcions avançades';

  @override
  String get selectAll => 'Seleccionar tot';

  @override
  String get deselectAll => 'Desseleccionar tot';

  @override
  String get monthlyBudgetAppBar => 'Pressupost mensual';

  @override
  String get budgetEditTitle => 'Pressupost mensual';

  @override
  String get budgetDashboardTitle => 'Tauler';

  @override
  String get selectListForDashboard =>
      'Selecciona una llista per veure el tauler.';

  @override
  String get spendingAnalysis => 'Anàlisi de despeses';

  @override
  String get noItemsToAnalyze => 'No hi ha articles a la llista per analitzar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marca els articles com a comprats per veure l\'anàlisi.';

  @override
  String get totalSpending => 'Despesa total';

  @override
  String get spendingByCategory => 'Despeses per categoria';

  @override
  String get achievements => 'Assoliments';

  @override
  String get exportPdfExcel => 'Exportar PDF/Excel';

  @override
  String get exportPdf => 'Exportar com a PDF';

  @override
  String get exportExcel => 'Exportar com a Excel';

  @override
  String get organizingAi => 'ORGANITZANT AMB IA...';

  @override
  String get yesLabel => 'Sí';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'La meva llista de la compra';

  @override
  String get emptyListAddItems =>
      'La teva llista és buida! Afegeix articles primer. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Llista organitzada màgicament per categories! ✨';

  @override
  String get shoppingMode => 'Mode compra';

  @override
  String get smartOrganization => 'Organització intel·ligent';

  @override
  String get savings => 'Estalvis';

  @override
  String get shoppingModeHeader => 'MODE COMPRA';

  @override
  String get shareAsText => 'Enviar articles com a text formatat';

  @override
  String get shareRealtime =>
      'Sincronització en temps real amb altres persones';

  @override
  String get quickRecipe => 'Recepta ràpida';

  @override
  String get quickRecipePrompt =>
      'Suggereix receptes amb articles de la meva llista.';

  @override
  String get economyTips => 'Consells d\'estalvi';

  @override
  String get economyTipsPrompt => 'Com puc estalviar diners en aquesta compra?';

  @override
  String get organizeAisles => 'Organitzar per passadissos';

  @override
  String get organizeAislesPrompt => 'Organitza per passadissos del mercat.';

  @override
  String get recipeSuggestion => 'Suggeriment de recepta';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining crèdits restants';
  }

  @override
  String get addAllToList => 'Afegir tot a la llista';

  @override
  String get organizeByAisles => 'Organitzar per passadissos';

  @override
  String get voiceTranscriptionTooltip => 'Escriptura per veu (Gratuït)';

  @override
  String get aiVoiceCommandTooltip => 'Comandament de veu IA (Premium)';

  @override
  String get voiceCommandTitle => 'Comandament de veu IA';

  @override
  String get voiceCommandContent =>
      'Parla de manera natural per gestionar la teva llista!\n\nExemples:\n• \'Afegeix pa, formatge i pernil\'\n• \'Elimina el detergent\'\n• \'Canvia el tema a blau\'\n\nAquesta és una funció exclusiva de KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Veure plans';

  @override
  String get itemsAddedSuccess => 'Articles afegits correctament a la llista!';

  @override
  String get viewList => 'Veure llista';

  @override
  String get feedbackTitle => 'Enviar comentaris';

  @override
  String get feedbackPrompt => 'Què voleu compartir?';

  @override
  String get feedbackTypeBug => 'Informar d\'un error';

  @override
  String get feedbackTypeBugHint => 'Alguna cosa no funciona';

  @override
  String get feedbackTypeSuggestion => 'Suggeriment';

  @override
  String get feedbackTypeSuggestionHint => 'Idea per millorar l\'aplicació';

  @override
  String get feedbackTypeTranslation => 'Problema de traducció';

  @override
  String get feedbackTypeTranslationHint =>
      'Traducció incorrecta o poc natural';

  @override
  String get feedbackTypeFeature => 'Sol·licitud de funció';

  @override
  String get feedbackTypeFeatureHint => 'Funció que us agradaria veure';

  @override
  String get feedbackTypeOther => 'Altres';

  @override
  String get feedbackTypeOtherHint => 'Altres tipus de comentaris';

  @override
  String get feedbackHint => 'Descriviu els vostres comentaris en detall...';

  @override
  String get feedbackSend => 'Enviar comentaris';

  @override
  String get feedbackSending => 'Enviant...';

  @override
  String get feedbackThankYou => 'Gràcies!';

  @override
  String get feedbackThankYouMessage =>
      'Els vostres comentaris s\'han rebut i ens ajuden a millorar KipiList per a tothom.';

  @override
  String get feedbackBack => 'Enrere';

  @override
  String feedbackError(String error) {
    return 'Error en enviar: $error';
  }

  @override
  String get feedbackRetry => 'Torna-ho a provar';

  @override
  String get feedbackSettingsTitle => 'Enviar comentaris';

  @override
  String get feedbackSettingsSubtitle =>
      'Informeu d\'errors, suggeriu millores o corregiu traduccions';

  @override
  String get aiEnergy => 'Energia IA';

  @override
  String get searchInConversation => 'Cerca a la conversa...';

  @override
  String get noMessagesFound => 'No s\'han trobat missatges';

  @override
  String get suggestedQuestions => 'Preguntes suggerides:';

  @override
  String get shoppingAssistant => 'Auxiliar de compres';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased de $total comprat';
  }

  @override
  String get estimatedCost => 'Estimat';

  @override
  String get viewItems => 'Veure elements';

  @override
  String get noItemsInList => 'No hi ha elements a la llista';

  @override
  String get longHistoryWarning =>
      'Llarga història: l\'assistent se centra en els missatges més recents per obtenir un millor rendiment.';

  @override
  String get listening => 'Escoltant...';

  @override
  String get addDirectToList => 'Afegeix directament a la llista';

  @override
  String get unlockFullResponse => 'Desbloqueja la resposta completa';

  @override
  String get switchList => 'Canvia llista';

  @override
  String get marketMode => 'Mode de mercat';

  @override
  String get backToChat => 'Torna al xat';

  @override
  String get finishShopping => 'Acaba de compres';

  @override
  String get welcomeAiAssistant => 'Benvingut a AI Assistant';

  @override
  String get createListToStartAi =>
      'Creeu una llista de la compra per començar a utilitzar el xat intel·ligent.';

  @override
  String get howCanIHelp => 'Com puc ajudar?';

  @override
  String get chatSubtitleShort =>
      'Pregunta per preus, receptes, organització...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total comprat';
  }

  @override
  String get quickReplies => 'Respostes ràpides:';

  @override
  String get voiceProFeature =>
      'Les ordres de veu avançades són Pro. S\'està habilitant el dictat bàsic...';

  @override
  String get viewPro => 'Veure Pro';

  @override
  String get errorLoadingChat =>
      'Vaja! S\'ha produït un error en carregar el xat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Comprova la teva connexió o torna-ho a provar més tard.';

  @override
  String get errorOscillation =>
      'Això es pot produir a causa d\'oscil·lacions de la xarxa o d\'una indisponibilitat temporal. Si us plau, torna-ho a provar.';

  @override
  String get activeListening => 'Escolta activa';

  @override
  String get whatToDoWithItem => 'Què t\'agradaria fer amb aquest article?';

  @override
  String get viewDetails => 'Veure detalls';

  @override
  String get openMenu => 'Obrir el menú';

  @override
  String get viewRecipe => 'Veure recepta';

  @override
  String get recipeCreated => 'Recepta creada!';

  @override
  String get editRecipe => 'Editar';

  @override
  String get deleteRecipe => 'Eliminar';

  @override
  String get deleteRecipeConfirm => 'Eliminar aquesta recepta?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Estàs segur que vols eliminar \"$recipeName\"? Aquesta acció no es pot desfer.';
  }

  @override
  String get ingredients => 'Ingredients';

  @override
  String get instructions => 'Instruccions';

  @override
  String get prepTime => 'Temps de preparació';

  @override
  String get recipeSaved => 'Recepta guardada!';

  @override
  String get noRecipesSaved => 'No hi ha receptes guardades';

  @override
  String get noRecipesSavedHint =>
      'Crea la teva primera recepta personalitzada tocant el botó de sota.';

  @override
  String get myRecipes => 'Les meves receptes';

  @override
  String get newRecipe => 'Nova recepta';

  @override
  String get loadingRecipes => 'Carregant les teves receptes...';

  @override
  String get errorLoadingRecipes => 'Error en carregar les receptes';

  @override
  String get addIngredient => 'Afegir ingredient';

  @override
  String get saveRecipe => 'Guardar';

  @override
  String get recipeName => 'Nom de la recepta';

  @override
  String get shortDescription => 'Descripció curta';

  @override
  String get prepTimeMinutes => 'Temps de preparació (minuts)';

  @override
  String get instructionsHint => 'Escriu un pas per línia...';

  @override
  String get addPhoto => 'Afegir foto';

  @override
  String get imageUrlPlaceholder => 'O enganxa l\'URL d\'una imatge';

  @override
  String get tags => 'Etiquetes';

  @override
  String get recipeTags => 'Etiquetes de la recepta';

  @override
  String get suggestedTags => 'Suggerits';

  @override
  String get searchRecipes => 'Cercar receptes...';

  @override
  String get filterByTag => 'Filtrar per tiquet';

  @override
  String get allTags => 'Tots';

  @override
  String get recipeDeleted => 'Recepta eliminada';

  @override
  String get saveChanges => 'Guardar els canvis';

  @override
  String get editRecipeTitle => 'Editar recepta';

  @override
  String get newRecipeTitle => 'Nova recepta';

  @override
  String get requiredField => 'Obligatori';

  @override
  String get chooseImageSource => 'Tria la font de la imatge';

  @override
  String get gallery => 'Galeria';

  @override
  String get enterUrl => 'Introdueix l\'URL';

  @override
  String get recipeImage => 'Imatge de la recepta';

  @override
  String get removeImage => 'Eliminar imatge';

  @override
  String get mealPlannerTitle => 'Planificador d\'àpats';

  @override
  String get mealPlannerViewMonthly => 'Vista mensual';

  @override
  String get mealPlannerViewWeekly => 'Vista setmanal';

  @override
  String get mealPlannerNoMeals => 'No hi ha àpats planificats';

  @override
  String get mealPlannerNoMealsHint => 'Toca un dia per afegir un àpat';

  @override
  String get mealPlannerLoading => 'Carregant el pla d\'àpats...';

  @override
  String get mealPlannerError => 'Error en carregar el pla d\'àpats';

  @override
  String get mealPlannerAddMeal => 'Afegir àpat';

  @override
  String get mealPlannerEditMeal => 'Editar àpat';

  @override
  String get mealPlannerDeleteMeal => 'Eliminar àpat';

  @override
  String get mealPlannerMealDeleted => 'Àpat eliminat';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count racions',
      one: '$count ració',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Racions';

  @override
  String get mealPlannerNoteLabel => 'Nota (opcional)';

  @override
  String get mealPlannerSelectRecipe => 'Selecciona una recepta';

  @override
  String get mealPlannerSearchRecipes => 'Cercar receptes...';

  @override
  String get mealPlannerNoRecipesFound => 'No s\'han trobat receptes';

  @override
  String get mealPlannerNoRecipesHint =>
      'Crea receptes a la pestanya de Receptes primer';

  @override
  String get mealPlannerSave => 'Afegir al pla';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count de $total àpats planificats';
  }

  @override
  String get mealPlannerGenerateList => 'Generar llista de compra';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Vols afegir tots els ingredients dels àpats planificats per a aquesta setmana a la teva llista de compra?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'S\'han afegit $count ingredient(s) a la teva llista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'No hi ha ingredients per afegir. Planifica primer alguns àpats amb receptes.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Crea primer una llista de compra.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Esmorzar';

  @override
  String get mealPlannerMealTypeLunch => 'Dinar';

  @override
  String get mealPlannerMealTypeDinner => 'Sopar';

  @override
  String get mealPlannerMealTypeSnack => 'berenar';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty =>
      'No hi ha res planificat per a aquesta setmana';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Toca qualsevol dia per començar a planificar els teus àpats!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Convida a la llista';

  @override
  String get shareApp => 'Comparteix l\'aplicació';

  @override
  String get shareAppDescription => 'Convida amics a utilitzar KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Estic utilitzant KipiList per organitzar les meves compres! Baixeu-vos a través del meu enllaç i tots dos tindrem 7 dies de Premium gratuïts: $url';
  }

  @override
  String get shareReferralSubject => 'Aconsegueix 7 dies de KipiList Premium!';

  @override
  String get gestureHint =>
      'Manteniu premut per seleccionar • Feu lliscar el dit per eliminar-lo';

  @override
  String get catalogTitle => 'Catàleg';

  @override
  String get catalogMyFrequents => 'Els meus freqüents';

  @override
  String get catalogSearchGlobal => 'Cerca qualsevol producte...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Cerca a $category...';
  }

  @override
  String get catalogSortPopular => 'El més popular';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nacionals';

  @override
  String get catalogRareSection => 'menys comú al teu país';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Afegeix $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'No s\'ha trobat el producte, escriviu el nom';

  @override
  String get catalogBrowse => 'Navega pel catàleg';

  @override
  String get offlineBanner => 'Estàs fora de línia';

  @override
  String get consentTitle => 'Privadesa i anàlisi';

  @override
  String get consentBody =>
      'KipiList utilitza Firebase Analytics per millorar la vostra experiència. Les teves dades es tracten segons la nostra Política de Privacitat.';

  @override
  String get consentAccept => 'Acceptar';

  @override
  String get consentDecline => 'No, gràcies';

  @override
  String get mealPlannerPantryAllAvailable =>
      'Tots els ingredients disponibles';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return 'Falta $count $_temp0';
  }

  @override
  String get expirationDate => 'Data de caducitat';

  @override
  String get notInformed => 'No configurat';

  @override
  String get skip => 'Saltar';

  @override
  String get onboardingAiTitle => 'Xateja amb Kipi';

  @override
  String get onboardingAiGreeting =>
      'Hola! Sóc Kipi, el teu assistent personal de compres! 🛒';

  @override
  String get onboardingAiAskName => 'Com et dius?';

  @override
  String get onboardingAiNameHint => 'Escriu el teu nom...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Encantat de conèixer-te, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Quin és el teu menjar preferit?';

  @override
  String get onboardingAiFoodHint => 'p. ex. Pizza, sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Grans opcions! Això és el que afegiria a la vostra llista:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Té bona pinta això? Prova d\'escriure una altra cosa!';

  @override
  String get onboardingAiReady =>
      'Genial! Estàs preparat per començar. Configurem el teu compte!';

  @override
  String get onboardingAiContinue => 'Continuar →';

  @override
  String get errorRenderScreen =>
      'Vaja! S\'ha produït un error en renderitzar aquesta pantalla.';

  @override
  String get connectionError => 'Error de connexió';

  @override
  String connectionErrorDesc(Object error) {
    return 'No s\'ha pogut connectar al servidor. Comproveu el vostre internet.\n($error)';
  }

  @override
  String get errorLoadingLists =>
      'S\'ha produït un error en carregar les llistes';

  @override
  String get noListsFound => 'No s\'han trobat llistes';

  @override
  String get unlockPremiumTitle =>
      'Desbloqueja llistes il·limitades, IA i molt més';

  @override
  String get loadingSubscription => 'S\'està carregant la subscripció...';

  @override
  String get errorLoadingSubscription =>
      'S\'ha produït un error en carregar la subscripció';

  @override
  String get profileSection => 'Perfil';

  @override
  String get myProfile => 'El meu perfil';

  @override
  String get profileSubtitle =>
      'Preferències personals per a l\'assistent d\'IA';

  @override
  String get manageCategories => 'Gestiona les categories';

  @override
  String get manageCategoriesSubtitle => 'Gestionar categories d\'articles';

  @override
  String get profileSaved => 'El perfil s\'ha desat correctament!';

  @override
  String errorSavingProfile(Object error) {
    return 'Error en desar: $error';
  }

  @override
  String get userProfile => 'Perfil d\'usuari';

  @override
  String get saveProfile => 'Desa el perfil';

  @override
  String get profileDescription =>
      'Expliqueu-nos les vostres preferències personals perquè l\'assistent d\'IA pugui suggerir articles i receptes personalitzades.';

  @override
  String get preferredMarket => 'Mercat Preferent';

  @override
  String get preferredMarketHint => 'Ex.: Supermercat X';

  @override
  String get dietaryRestrictions => 'Restriccions dietètiques';

  @override
  String get dietaryRestrictionsHint =>
      'Per exemple: vegà, vegetarià, sense gluten';

  @override
  String get marketsToAvoid => 'Mercats per evitar';

  @override
  String get marketsToAvoidHint => 'Per exemple: mercat Y, mercat Z';

  @override
  String get observations => 'Notes';

  @override
  String get observationsHint => 'Altres preferències per a l\'assistent';

  @override
  String get manageCategoriesTitle => 'Gestiona les categories';

  @override
  String get categoryLimitReached =>
      'Límit de 10 categories a la versió gratuïta. Actualitza a Pro!';

  @override
  String get noCategories => 'Sense categories.';

  @override
  String get deleteCategoryTitle => 'Suprimeix la categoria';

  @override
  String deleteCategoryConfirm(Object category) {
    return 'Els elements de la categoria \"$category\" es mouran a \"Altres\".\nContinuar?';
  }

  @override
  String get deleteCategory => 'Suprimeix';

  @override
  String get myAchievements => 'Els meus assoliments';

  @override
  String get itemsPurchased => 'Articles comprats';

  @override
  String get totalSavings => 'Estalvi total';

  @override
  String get currentStreak => 'Ratxa actual';

  @override
  String streakDays(Object days) {
    return '$days dies';
  }

  @override
  String get chooseThemeColor => 'Trieu el color del tema';

  @override
  String get errorLoadingHistory =>
      'S\'ha produït un error en carregar l\'historial';

  @override
  String get deleteConversationTitle => 'Vols suprimir la conversa?';

  @override
  String get deleteConversationConfirm => 'Aquesta acció no es pot desfer.';

  @override
  String get deleteConversation => 'Suprimeix';

  @override
  String get unlockWithAd => 'Desbloqueja amb l\'anunci';

  @override
  String get aiPremiumDescription =>
      'Aquesta interfície interactiva utilitza intel·ligència artificial avançada i és exclusiva per als membres Pro o mitjançant un anunci ràpid.';

  @override
  String get sortAZ => 'A-Z';

  @override
  String get categoryNameHint => 'Ex.: Carns';

  @override
  String get color => 'Color:';

  @override
  String get icon => 'Icona:';

  @override
  String get scanBarcode => 'Escaneja el codi de barres';

  @override
  String get scanProduct => 'Escaneja el producte';

  @override
  String get positionBarcodeCenter => 'Col·loca el codi de barres al centre';

  @override
  String replaceItem(Object name) {
    return 'Substitueix $name';
  }

  @override
  String get selectCheaperAlternative =>
      'Seleccioneu una alternativa de producte més barata per optimitzar els costos.';

  @override
  String get swap => 'Canviar';

  @override
  String itemAdded(Object name) {
    return '$name afegit';
  }

  @override
  String errorLoadingProducts(Object error) {
    return 'Error en carregar els productes: $error';
  }

  @override
  String get mealType => 'Tipus de menjar';

  @override
  String get requestTimeout => 'Ho sentim, la sol·licitud s\'ha esgotat.';

  @override
  String get connectionError2 =>
      'Ho sentim, s\'ha produït un error de connexió.';

  @override
  String get addingItems => 'S\'estan afegint elements a la llista...';

  @override
  String get removingItems => 'S\'estan eliminant elements...';

  @override
  String get updatingItem => 'S\'està actualitzant l\'element...';

  @override
  String get checkingItem => 'S\'està comprovant l\'element...';

  @override
  String get uncheckingItem => 'S\'està desmarcant l\'element...';

  @override
  String get clearingCheckedItems =>
      'S\'estan esborrant els elements marcats...';

  @override
  String get reorganizingList => 'S\'està reorganitzant la llista...';

  @override
  String get creatingNewList => 'S\'està creant una llista nova...';

  @override
  String get removingList => 'S\'està eliminant la llista...';

  @override
  String get renamingList => 'S\'està canviant el nom de la llista...';

  @override
  String get queryingYourLists => 'Consultant les teves llistes...';

  @override
  String get settingBudget => 'S\'està configurant el pressupost...';

  @override
  String get checkingPantry => 'Revisant el teu rebost...';

  @override
  String get addingToPantry => 'S\'està afegint al rebost...';

  @override
  String get removingFromPantry => 'S\'està retirant del rebost...';

  @override
  String get updatingPantry => 'S\'està actualitzant el rebost...';

  @override
  String get savingRecipe => 'S\'està desant la recepta...';

  @override
  String get searchingRecipes => 'S\'estan buscant receptes...';

  @override
  String get removingRecipe => 'S\'està eliminant la recepta...';

  @override
  String get addingIngredientsToList => 'Afegeix ingredients a la llista...';

  @override
  String get organizingMenu => 'Organitzant el teu menú...';

  @override
  String get loadingMenu => 'S\'està carregant el teu menú...';

  @override
  String get updatingMenu => 'S\'està actualitzant el menú...';

  @override
  String get searchingCategories => 'S\'estan cercant categories...';

  @override
  String get categorizingItems => 'S\'està categoritzant articles...';

  @override
  String get generatingShareLink => 'S\'està generant l\'enllaç compartit...';

  @override
  String get searchingSharedList => 'S\'està cercant la llista compartida...';

  @override
  String get loadingProfile => 'S\'està carregant el teu perfil...';

  @override
  String get savingPreferences => 'S\'estan desant les teves preferències...';

  @override
  String get checkingSettings => 'S\'està comprovant la configuració...';

  @override
  String get generatingContent => 'Generant contingut personalitzat...';

  @override
  String get searchingProducts => 'S\'estan buscant productes...';

  @override
  String get estimatingPrices => 'Estimant preus...';

  @override
  String get processing => 'S\'està processant...';

  @override
  String get shoppingList => 'Llista de la compra';

  @override
  String get purchasedSuffix => '[Comprat]';

  @override
  String get listUnarchived => 'La llista s\'ha desarxivat correctament.';

  @override
  String get toolDeleteList => 'Suprimeix la llista';

  @override
  String get toolAddItems => 'Afegeix elements';

  @override
  String get toolRemoveItems => 'Elimina elements';

  @override
  String get toolAddToPantry => 'Afegir al rebost';

  @override
  String get toolRemoveFromPantry => 'Retirar del rebost';

  @override
  String get toolShareList => 'Llista per compartir';

  @override
  String get toolSaveRecipe => 'Guarda la recepta';

  @override
  String get toolDeleteRecipe => 'Esborra la recepta';

  @override
  String get toolRemoveMeal => 'Traieu el menjar';

  @override
  String get toolSavePreference => 'Desa la preferència';

  @override
  String get toolRemovePreference => 'Elimina la preferència';

  @override
  String currentTheme(Object mode) {
    return 'Tema actual: $mode';
  }

  @override
  String themeChanged(Object mode) {
    return 'El tema ha canviat a $mode.';
  }

  @override
  String get addToList => 'Afegeix a la llista';

  @override
  String errorAddingItem(Object error) {
    return 'S\'ha produït un error en afegir l\'element: $error';
  }

  @override
  String errorAddingBatch(Object error) {
    return 'Error en afegir elements al lot: $error';
  }

  @override
  String errorTogglingItem(Object error) {
    return 'Error en canviar l\'estat de l\'element: $error';
  }

  @override
  String errorRemovingItem(Object error) {
    return 'S\'ha produït un error en eliminar l\'element: $error';
  }

  @override
  String errorUpdatingItem(Object error) {
    return 'Error en actualitzar l\'element: $error';
  }

  @override
  String errorUpdatingItems(Object error) {
    return 'Error en actualitzar els elements: $error';
  }

  @override
  String errorRestoringItem(Object error) {
    return 'S\'ha produït un error en restaurar l\'element: $error';
  }

  @override
  String errorIncreasingQty(Object error) {
    return 'Error en augmentar la quantitat: $error';
  }

  @override
  String errorDecreasingQty(Object error) {
    return 'Error en disminuir la quantitat: $error';
  }

  @override
  String errorClearingList(Object error) {
    return 'Error en esborrar la llista: $error';
  }

  @override
  String errorClearingPurchased(Object error) {
    return 'S\'ha produït un error en esborrar els articles comprats: $error';
  }

  @override
  String errorRemovingItems(Object error) {
    return 'S\'ha produït un error en eliminar elements: $error';
  }

  @override
  String errorTogglingItems(Object error) {
    return 'S\'ha produït un error en alternar els elements: $error';
  }

  @override
  String errorReordering(Object error) {
    return 'S\'ha produït un error en reordenar l\'element: $error';
  }

  @override
  String get errorCreatingList => 'S\'ha produït un error en crear la llista';

  @override
  String errorServerConnection(Object error) {
    return 'Error en connectar-se al servidor: $error';
  }

  @override
  String errorUpdatingList(Object error) {
    return 'Error en actualitzar la llista: $error';
  }

  @override
  String errorDeletingList(Object error) {
    return 'Error en suprimir la llista: $error';
  }

  @override
  String errorRemovingSharedList(Object error) {
    return 'S\'ha produït un error en eliminar la llista compartida: $error';
  }

  @override
  String errorSettingCurrentList(Object error) {
    return 'Error en establir la llista actual: $error';
  }

  @override
  String errorArchivingList(Object error) {
    return 'Error en arxivar la llista: $error';
  }

  @override
  String errorUnarchivingList(Object error) {
    return 'Error en desarxivar la llista: $error';
  }

  @override
  String get errorUserNotAuthenticated => 'Usuari no autenticat.';

  @override
  String get errorGeneratingCode =>
      'Error en generar el codi únic. Torna-ho a provar.';

  @override
  String pantryLimitReached(Object count) {
    return 'Límit de $count articles al rebost al pla gratuït. Actualitza per afegir-ne més.';
  }

  @override
  String errorImportingList(Object name, Object error) {
    return 'Error en importar la llista \"$name\": $error';
  }

  @override
  String errorExecutingTool(Object tool, Object error) {
    return 'Error en executar $tool: $error';
  }

  @override
  String get errorProcessingRequest =>
      'Ho sentim, s\'ha produït un error en processar la teva sol·licitud. Comprova la teva connexió o torna-ho a provar més tard.';

  @override
  String get couldNotProcess =>
      'No s\'ha pogut processar després de diversos intents.';

  @override
  String get errorResumingProcessing =>
      'S\'ha produït un error en reprendre el processament.';

  @override
  String get errorResumingLoop => '[ResumeLoop] Error en reprendre el bucle';

  @override
  String get othersCategory => 'Altres';

  @override
  String get monthJanuary => 'gener';

  @override
  String get monthFebruary => 'febrer';

  @override
  String get monthMarch => 'març';

  @override
  String get monthApril => 'Abril';

  @override
  String get monthMay => 'maig';

  @override
  String get monthJune => 'juny';

  @override
  String get monthJuly => 'juliol';

  @override
  String get monthAugust => 'Agost';

  @override
  String get monthSeptember => 'setembre';

  @override
  String get monthOctober => 'Octubre';

  @override
  String get monthNovember => 'novembre';

  @override
  String get monthDecember => 'desembre';

  @override
  String get dayMon => 'Dl';

  @override
  String get dayTue => 'Dt';

  @override
  String get dayWed => 'Dc';

  @override
  String get dayThu => 'Dj';

  @override
  String get dayFri => 'dv';

  @override
  String get daySat => 'ds';

  @override
  String get daySun => 'Sol';

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
