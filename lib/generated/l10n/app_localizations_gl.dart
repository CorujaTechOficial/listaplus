// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get appTitle => 'Lista da Compra';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Despensa';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Receitas';

  @override
  String get navLists => 'Listas';

  @override
  String get navMealPlanner => 'Menú';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Gardar';

  @override
  String get create => 'Crear';

  @override
  String get add => 'Engadir';

  @override
  String get remove => 'Eliminar';

  @override
  String get delete => 'Borrar';

  @override
  String get edit => 'Editar';

  @override
  String get copy => 'Copiar';

  @override
  String get next => 'A continuación';

  @override
  String get retry => 'Reintentar';

  @override
  String get regenerate => 'Rexerar';

  @override
  String get copiedToClipboard => 'Copiado ao portapapeis';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Pechar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renomear';

  @override
  String get upgrade => 'Mellorar';

  @override
  String get clear => 'Limpar';

  @override
  String error(String message) {
    return 'Erro: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Erro: $message';
  }

  @override
  String get purchaseError => 'Erro ao procesar a compra. Téntao de novo.';

  @override
  String get restoreError => 'Erro ao restaurar as compras. Téntao de novo.';

  @override
  String get loading => 'Cargando...';

  @override
  String get fieldRequired => 'Campo obrigatorio';

  @override
  String get addedFeedback => 'Engadido!';

  @override
  String get profile => 'Perfil';

  @override
  String get exitShoppingMode => 'Saír do modo de compra';

  @override
  String get exit => 'Saír';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seleccionados',
      one: '$count seleccionado',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimado';

  @override
  String get alreadyPurchased => 'Xa mercados';

  @override
  String get clearList => 'Limpar lista';

  @override
  String get clearPurchased => 'Limpar mercados';

  @override
  String get share => 'Compartir';

  @override
  String get shareViaCode => 'Compartir mediante código';

  @override
  String get importViaCode => 'Importar mediante código';

  @override
  String get listAssistant => 'Asistente de lista';

  @override
  String get globalAssistant => 'Asistente global';

  @override
  String get becomePremium => 'Faite Premium';

  @override
  String get manageSubscription => 'Xestionar subscrición';

  @override
  String get completePurchase => 'Completar compra';

  @override
  String get confirmClearList => 'Eliminar todos os elementos?';

  @override
  String get shareListTitle => 'Compartir Lista';

  @override
  String get shareThisCode => 'Comparte este código:';

  @override
  String get validForLimitedTime => 'Válido por tempo limitado';

  @override
  String get importListTitle => 'Importar Lista';

  @override
  String get enterCodeHint => 'Introduce o código';

  @override
  String get confirmArchiveTitle => 'Completar Compra';

  @override
  String get confirmArchiveContent =>
      'Completar esta compra e arquivar a lista?';

  @override
  String get complete => 'Completar';

  @override
  String get listArchived => 'Lista arquivada correctamente!';

  @override
  String listAdded(String listName) {
    return '$listName engadida!';
  }

  @override
  String get buy => 'Mercar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return 'Eliminar $count elemento(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return 'Eliminar $count elemento(s)?';
  }

  @override
  String get archiveList => 'Arquivar lista';

  @override
  String get pantryAppBar => 'Despensa';

  @override
  String get generateShoppingList => 'Xerar lista da compra';

  @override
  String get pantryEmpty => 'Despensa baleira';

  @override
  String get pantryEmptySubtitle => 'Engade os produtos que queres ter na casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit elemento(s) precisan mercarse';
  }

  @override
  String get noItemsToBuy => 'Non hai elementos que mercar';

  @override
  String get newPantryList => 'Compra da Despensa';

  @override
  String get newListTitle => 'Nova Lista da Compra';

  @override
  String itemsWillBeAdded(int count) {
    return '$count elemento(s) engadiranse';
  }

  @override
  String get listNameLabel => 'Nome da lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" creada con $count elementos';
  }

  @override
  String get noTracking => 'Sen seguimento';

  @override
  String get markAsPurchased => 'Marcar como mercada';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Cantidade ideal';

  @override
  String get currentQuantity => 'Cantidade actual';

  @override
  String get consumed => 'Consumido';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastecido a $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Eliminar \"$name\" da despensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get settingsAppBar => 'Configuración';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'inglés';

  @override
  String get languageSystem => 'Predeterminado do sistema';

  @override
  String get chooseLanguage => 'Seleccionar idioma';

  @override
  String get searchLanguage => 'Buscar idioma...';

  @override
  String get currency => 'Moeda';

  @override
  String get chooseCurrency => 'Seleccione Moeda';

  @override
  String get searchCurrency => 'Busca moeda...';

  @override
  String get appearance => 'Aparencia';

  @override
  String get light => 'Claro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Escuro';

  @override
  String get themeColor => 'Cor do tema';

  @override
  String get dynamicColors => 'Cores dinámicas';

  @override
  String get dynamicColorsSubtitle =>
      'Usa cores baseadas no teu fondo de pantalla';

  @override
  String get dynamicColorsEnabledWarning =>
      'Desactiva as cores dinámicas para que a cor do tema teña efecto';

  @override
  String get finance => 'Finanzas';

  @override
  String get monthlyBudgetNav => 'Orzamento mensual';

  @override
  String get budgetSubtitle => 'Sigue os teus gastos mensuais';

  @override
  String get data => 'Datos';

  @override
  String get backupNav => 'Copia de seguranza';

  @override
  String get backupSubtitle => 'Exporta ou importa os teus datos';

  @override
  String get about => 'Acerca de';

  @override
  String get version => 'Versión';

  @override
  String get privacy => 'Privacidade';

  @override
  String get termsOfUse => 'Termos de uso';

  @override
  String get backupTitle => 'Copia de seguranza';

  @override
  String get backupPremiumDescription =>
      'A copia de seguranza e exportación é unha función premium';

  @override
  String get exportData => 'Exportar datos';

  @override
  String get exportDataSubtitle => 'Gardar todas as listas como JSON';

  @override
  String get importData => 'Importar datos';

  @override
  String get importDataSubtitle => 'Restaurar listas desde un JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Pega aquí o JSON da copia de seguranza...';

  @override
  String get backupExported => 'Copia de seguranza exportada!';

  @override
  String get budgetAppBar => 'Orzamento Mensual';

  @override
  String get budgetPremiumLocked => 'O orzamento mensual global é premium';

  @override
  String get budgetUpgradePrompt => 'Mellora para desbloquear';

  @override
  String get noBudgetDefined => 'Non se definiu orzamento';

  @override
  String totalEstimated(String amount) {
    return 'Total estimado: $amount';
  }

  @override
  String get setBudgetButton => 'Establecer orzamento';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Importe';

  @override
  String get setBudgetTitle => 'Orzamento Mensual';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterPending => 'Pendentes';

  @override
  String get filterPurchased => 'Mercados';

  @override
  String get sortName => 'Nome';

  @override
  String get sortCategory => 'Categoría';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Engadir Elemento';

  @override
  String get itemName => 'Nome do elemento';

  @override
  String get quantityShort => 'Cant';

  @override
  String get unit => 'Unidade';

  @override
  String get category => 'Categoría';

  @override
  String get estimatedPrice => 'Prezo estimado';

  @override
  String get addItemPrice => 'Prezo estimado';

  @override
  String get editItem => 'Editar Elemento';

  @override
  String get quantityFull => 'Cantidade';

  @override
  String get editItemPrice => 'Prezo estimado';

  @override
  String get addToPantry => 'Engadir á Despensa';

  @override
  String addToPantryPrompt(String name) {
    return 'Engadir \"$name\" á túa Despensa?';
  }

  @override
  String get yes => 'Si';

  @override
  String get productName => 'Nome do produto';

  @override
  String get idealQty => 'Cant ideal';

  @override
  String get currentQty => 'Cant actual';

  @override
  String get trackStock => 'Seguir stock';

  @override
  String get trackStockActive => 'Aparece nos suxestións de compra';

  @override
  String get trackStockInactive => 'Non xera suxestión de compra';

  @override
  String get createListDialog => 'Crear Lista';

  @override
  String get renameListDialog => 'Renomear Lista';

  @override
  String get listHistory => 'Historial de Listas';

  @override
  String get myLists => 'As Miñas Listas';

  @override
  String get viewActive => 'Ver Activas';

  @override
  String get viewHistory => 'Ver Historial';

  @override
  String get noArchivedLists => 'Non hai listas arquivadas';

  @override
  String get noActiveLists => 'Non hai listas activas';

  @override
  String completedOn(String date) {
    return 'Completada o $date';
  }

  @override
  String get sharedLabel => 'Compartida';

  @override
  String get restore => 'Restaurar';

  @override
  String get removeSharedTooltip => 'Eliminar';

  @override
  String get deleteListTitle => 'Borrar lista';

  @override
  String deleteListContent(String name) {
    return 'Seguro que queres borrar \"$name\"? Todos os elementos serán eliminados.';
  }

  @override
  String get removeSharedListTitle => 'Eliminar lista compartida';

  @override
  String removeSharedListContent(String name) {
    return 'Eliminar \"$name\" das túas listas? A lista orixinal non se verá afectada.';
  }

  @override
  String get createNewList => 'Crear nova lista';

  @override
  String get aiAssistant => 'Asistente de IA';

  @override
  String get aiAssistantDescription =>
      'Obtén suxestións intelixentes, receitas e consellos personalizados co noso asistente de IA.';

  @override
  String get generalAssistant => 'Asistente Xeral';

  @override
  String get newChat => 'Chat novo';

  @override
  String get noHistory => 'Non hai historial de chat';

  @override
  String get deleteSession => 'Eliminar chat';

  @override
  String get deleteSessionConfirm =>
      'Estás seguro de que queres eliminar este chat? As mensaxes perderanse permanentemente.';

  @override
  String get clearHistory => 'Limpar Historial';

  @override
  String get clearHistoryConfirm => 'Limpar todas as mensaxes desta sesión?';

  @override
  String get chatHint => 'Escribe a túa mensaxe...';

  @override
  String get chatHintBlocked => 'Desbloquea a IA para chatear';

  @override
  String chatError(String error) {
    return 'Erro ao cargar o chat: $error';
  }

  @override
  String get listHelp => 'Como podo axudar coa túa lista?';

  @override
  String get generalHelp => 'Como podo axudar coas túas compras hoxe?';

  @override
  String get chatSubtitle =>
      'Pide suxestións de artigos, receitas ou consellos para aforrar.';

  @override
  String get aiError =>
      'Sentímolo, produciuse un erro ao procesar a túa solicitude. Comproba a túa conexión ou téntao de novo máis tarde.';

  @override
  String get aiLimitAlmostReached => 'Case sen mensaxes de IA';

  @override
  String get unlockAi => 'Desbloquear IA ilimitada';

  @override
  String get aiTeaserFallback =>
      'Subscríbete a Premium para desbloquear a resposta completa e obter consellos de IA ilimitados para as túas compras...';

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
  String get loginPrompt =>
      'Inicia sesión para desbloquear\nas funcións premium';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get continueAsGuest => 'Continuar como convidado';

  @override
  String get onboardingWelcomeTitle => 'Benvido a KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'A forma máis intelixente de organizar as túas compras e aforrar cartos.';

  @override
  String get onboardingSetupTitle => 'Personaliza a túa experiencia';

  @override
  String get onboardingSetupDesc =>
      'Escolle como queres que KipiList se vexa e funcione para ti.';

  @override
  String get onboardingLoginTitle => 'Garda todo na nube';

  @override
  String get onboardingLoginDesc =>
      'Os teus datos sincronizados en todos os teus dispositivos';

  @override
  String get onboardingShareTitle => 'Comparte coas persoas que queres';

  @override
  String get onboardingShareDesc =>
      'Sincroniza listas con familiares e amigos en tempo real';

  @override
  String get onboardingPremiumTitle => 'Desbloquear todas as funcións';

  @override
  String get onboardingPremiumSubtitle =>
      'Saca o máximo proveito das túas listas de compras';

  @override
  String get onboardingAnnualBadge => 'Mellor valor';

  @override
  String get onboardingMonthlyLabel => 'Mensuais';

  @override
  String get onboardingAnnualLabel => 'Anual';

  @override
  String get onboardingViewAllPlans => 'Ver todos os plans';

  @override
  String get onboardingSubscribeCta => 'Subscríbete';

  @override
  String get onboardingCancelAnytime =>
      'Cancela en calquera momento. Sen compromiso.';

  @override
  String get onboardingContinueAsGuest => 'Continúa como convidado';

  @override
  String get onboardingRestore => 'Restaurar';

  @override
  String get onboardingRestoreDesc =>
      'Xa tes unha subscrición? Toca aquí para restauralo.';

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
  String get onboardingExit => 'Saír';

  @override
  String get onboardingPersonalizationTitle => 'Imos coñecerte';

  @override
  String get onboardingPersonalizationDesc =>
      'Usarémolo para personalizar as túas suxestións e facer a compra máis intelixente.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Cal é a túa comida favorita?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'p.ex. Pizza, sushi, lasaña...';

  @override
  String get onboardingPersonalizationCta => 'Continuar';

  @override
  String get onboardingPersonalizationSkip => 'Saltar por agora';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Cóntanos a túa comida favorita para continuar';

  @override
  String get settingsDefaultScreen => 'Pantalla de inicio predeterminada';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Escolle entre a lista da compra ou o chat AI';

  @override
  String get settingsScreenList => 'Lista da compra';

  @override
  String get settingsScreenChat => 'Chat AI';

  @override
  String loginError(String error) {
    return 'Erro de inicio de sesión: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Produciuse un erro ao cargar as ofertas. Téntao de novo.';

  @override
  String get paywallPurchaseError =>
      'Non se puido completar a compra. Téntao de novo.';

  @override
  String get paywallRestoreError =>
      'Non se atopou ningunha subscrición activa para restaurala.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DÍAS GRATIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count SEMANAS GRATIS',
      one: '$count SEMANA GRATIS',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MESES GRATIS',
      one: '$count MES GRATIS',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Proba KipiList Pro gratis durante 7 días';

  @override
  String get paywallTrialSubtitle =>
      'Cancela en calquera momento. Hoxe sen cargo.';

  @override
  String get paywallTrialCta => 'Comeza a proba gratuíta';

  @override
  String get recipeAddToList => 'Engadir á lista da compra';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ingredientes engadidos a $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Todo o que necesitas:';

  @override
  String get paywallFeatureUnlimitedLists => 'Listas ilimitadas';

  @override
  String get paywallFeatureSmartAI => 'AI intelixente';

  @override
  String get paywallFeatureExpenseControl => 'Control de Gastos';

  @override
  String get paywallFeatureSharing => 'Compartindo';

  @override
  String get paywallBeforeAfterTitle => 'AI antes e despois:';

  @override
  String get paywallLabelCommon => 'Común';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'arroz';

  @override
  String get paywallBeforeItem2 => 'xabón';

  @override
  String get paywallBeforeItem3 => 'carne';

  @override
  String get paywallBeforeItem4 => 'pan';

  @override
  String get paywallAfterItem1 => 'Grans';

  @override
  String get paywallAfterItem2 => 'Limpeza';

  @override
  String get paywallAfterItem3 => 'Carnes';

  @override
  String get paywallAfterItem4 => 'Panadaría';

  @override
  String get paywallTestimonialsTitle => 'O que din os nosos usuarios:';

  @override
  String get paywallTestimonial1Name => 'Ana S.';

  @override
  String get paywallTestimonial1Text =>
      'A IA organiza as miñas compras en segundos. Aforro 20 minutos por viaxe ao mercado.';

  @override
  String get paywallTestimonial2Name => 'Carlos M.';

  @override
  String get paywallTestimonial2Text =>
      'Nunca esquecín un elemento da lista de novo. O chat AI é sensacional!';

  @override
  String get paywallSocialProof => 'Úsano máis de 2.400 familias';

  @override
  String get paywallCtaUnlock => 'Desbloquear PRO';

  @override
  String get paywallBestValue => 'MELLOR VALOR';

  @override
  String get paywallMostPopular => 'MÁIS POPULAR';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Pago seguro';

  @override
  String get paywallSelectPlan => 'Escolle o teu plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'AHORRA $percent %';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Só $price/mes';
  }

  @override
  String get paywallPackageAnnual => 'Plan anual';

  @override
  String get paywallPackageMonthly => 'Plan Mensual';

  @override
  String get paywallPackageLifetime => 'Acceso de por vida';

  @override
  String get paywallCancelAnytime =>
      'Cancela en calquera momento. Sen compromiso.';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'Política de privacidade';

  @override
  String get paywallTerms => 'Condicións de uso';

  @override
  String get paywallRestore => 'Restaurar';

  @override
  String get paywallHeroHeadline => 'Kipi AI sempre ao teu lado';

  @override
  String get paywallHeroSubtitle =>
      'Engade elementos, organiza listas e aforra tempo coa IA no peto';

  @override
  String get paywallBenefit1Desc => 'Engade, organiza e suxire elementos 24/7';

  @override
  String get paywallBenefit2Desc => 'Sen límite de 3 listas';

  @override
  String get paywallBenefit3Desc => 'Seguimento de gastos e listas familiares';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilidade total';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Comeza gratis — $days días';
  }

  @override
  String get premiumUpgrade => 'Mellora para desbloquear';

  @override
  String get itemRemoved => 'Elemento eliminado';

  @override
  String get undo => 'Desfacer';

  @override
  String get emptyListTitle => 'A túa lista está baleira';

  @override
  String get emptyListSubtitle => 'Engade elementos para comezar';

  @override
  String get noListFoundTitle => 'Non se atoparon listas';

  @override
  String get noListFoundSubtitle => 'Crea a túa primeira lista para comezar';

  @override
  String get createFirstList => 'Crear Primeira Lista';

  @override
  String get listBudgetTitle => 'Orzamento da Lista';

  @override
  String get budgetAmountLabel => 'Importe do orzamento';

  @override
  String get removeBudget => 'Eliminar';

  @override
  String get prefUnlimitedLists => 'Listas ilimitadas';

  @override
  String get prefSharing => 'Compartir listas';

  @override
  String get prefFullHistory => 'Historial completo';

  @override
  String get prefExportData => 'Exportar datos';

  @override
  String get prefCustomThemes => 'Temas personalizados';

  @override
  String get prefMonthlyBudget => 'Orzamento mensual global';

  @override
  String get prefAIAssistant => 'Asistente de IA Persoal';

  @override
  String get prefUnlimitedPantry => 'Despensa ilimitada';

  @override
  String get prefInteractiveArtifacts => 'Artefactos Interactivos de IA';

  @override
  String get themeGreen => 'Verde';

  @override
  String get themeBlue => 'Azul';

  @override
  String get themePurple => 'Púrpura';

  @override
  String get themeRed => 'Vermello';

  @override
  String get themeOrange => 'Laranxa';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Índigo';

  @override
  String get themeAmber => 'Ámbar';

  @override
  String get themeTeal => 'Cerceta';

  @override
  String get themeBrown => 'Marrón';

  @override
  String get catFruits => 'Froitas';

  @override
  String get catCleaning => 'Limpeza';

  @override
  String get catBeverages => 'Bebidas';

  @override
  String get catBakery => 'Panadaría';

  @override
  String get catOthers => 'Outros';

  @override
  String get unitPack => 'paquete';

  @override
  String get shareSubject => 'Lista da Compra';

  @override
  String get monthlyBudgetTitle => 'Orzamento Mensual';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Borrar lista';

  @override
  String get pantryItemRemoved => 'Elemento eliminado';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit elementos precisan ser mercadas',
      one: '$deficit elemento precisa ser mercada',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total do carro';

  @override
  String get restockLabel => 'Reabastecer';

  @override
  String get advancedFeatures => 'Funcións avanzadas';

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String get deselectAll => 'Deseleccionar todo';

  @override
  String get monthlyBudgetAppBar => 'Orzamento Mensual';

  @override
  String get budgetEditTitle => 'Orzamento Mensual';

  @override
  String get budgetDashboardTitle => 'Panel';

  @override
  String get selectListForDashboard =>
      'Selecciona unha lista para ver o panel.';

  @override
  String get spendingAnalysis => 'Análise de Gastos';

  @override
  String get noItemsToAnalyze => 'Non hai elementos na lista para analizar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marca os elementos como mercados para ver a análise.';

  @override
  String get totalSpending => 'Gasto Total';

  @override
  String get spendingByCategory => 'Gastos por Categoría';

  @override
  String get achievements => 'Logros';

  @override
  String get exportPdfExcel => 'Exportar PDF/Excel';

  @override
  String get exportPdf => 'Exportar como PDF';

  @override
  String get exportExcel => 'Exportar como Excel';

  @override
  String get organizingAi => 'ORGANIZANDO CON IA...';

  @override
  String get yesLabel => 'Si';

  @override
  String get noLabel => 'Non';

  @override
  String get shareListText => 'A Miña Lista da Compra';

  @override
  String get emptyListAddItems =>
      'A túa lista está baleira! Engade elementos primeiro. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista organizada maxicamente por categorías! ✨';

  @override
  String get shoppingMode => 'Modo de Compra';

  @override
  String get smartOrganization => 'Organización Intelixente';

  @override
  String get savings => 'Aforros';

  @override
  String get shoppingModeHeader => 'MODO DE COMPRA';

  @override
  String get shareAsText => 'Enviar elementos como texto formatado';

  @override
  String get shareRealtime => 'Sincronización en tempo real con outras persoas';

  @override
  String get quickRecipe => 'Receita rápida';

  @override
  String get quickRecipePrompt =>
      'Suxire receitas con elementos da miña lista.';

  @override
  String get economyTips => 'Consellos de aforro';

  @override
  String get economyTipsPrompt => 'Como podo aforrar cartos nesta compra?';

  @override
  String get organizeAisles => 'Organizar por corredores';

  @override
  String get organizeAislesPrompt => 'Organizar por corredores do mercado.';

  @override
  String get recipeSuggestion => 'Suxestión de receita';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining créditos restantes';
  }

  @override
  String get addAllToList => 'Engadir todo á lista';

  @override
  String get organizeByAisles => 'Organizar por corredores';

  @override
  String get voiceTranscriptionTooltip => 'Escritura por voz (Gratuíta)';

  @override
  String get aiVoiceCommandTooltip => 'Comando de Voz con IA (Premium)';

  @override
  String get voiceCommandTitle => 'Comando de Voz con IA';

  @override
  String get voiceCommandContent =>
      'Fala naturalmente para xestionar a túa lista!\n\nExemplos:\n• \'Engadir pan, queixo e xamón\'\n• \'Eliminar deterxente\'\n• \'Cambiar o tema a azul\'\n\nEsta é unha función exclusiva de KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Ver Plans';

  @override
  String get itemsAddedSuccess => 'Elementos engadidos correctamente á lista!';

  @override
  String get viewList => 'Ver lista';

  @override
  String get feedbackTitle => 'Enviar Comentarios';

  @override
  String get feedbackPrompt => 'Que che gustaría compartir?';

  @override
  String get feedbackTypeBug => 'Reportar Erro';

  @override
  String get feedbackTypeBugHint => 'Algo non funciona';

  @override
  String get feedbackTypeSuggestion => 'Suxestión';

  @override
  String get feedbackTypeSuggestionHint => 'Idea para mellorar a app';

  @override
  String get feedbackTypeTranslation => 'Problema de Tradución';

  @override
  String get feedbackTypeTranslationHint =>
      'Tradución incorrecta ou pouco natural';

  @override
  String get feedbackTypeFeature => 'Solicitude de Funcionalidade';

  @override
  String get feedbackTypeFeatureHint => 'Funcionalidade que che gustaría ver';

  @override
  String get feedbackTypeOther => 'Outro';

  @override
  String get feedbackTypeOtherHint => 'Outro tipo de comentario';

  @override
  String get feedbackHint => 'Describe os teus comentarios en detalle...';

  @override
  String get feedbackSend => 'Enviar Comentarios';

  @override
  String get feedbackSending => 'Enviando...';

  @override
  String get feedbackThankYou => 'Grazas!';

  @override
  String get feedbackThankYouMessage =>
      'Recibíronse os teus comentarios e axúdannos a mellorar KipiList para todos.';

  @override
  String get feedbackBack => 'Volver';

  @override
  String feedbackError(String error) {
    return 'Erro ao enviar: $error';
  }

  @override
  String get feedbackRetry => 'Tentar de novo';

  @override
  String get feedbackSettingsTitle => 'Enviar Comentarios';

  @override
  String get feedbackSettingsSubtitle =>
      'Reportar erros, suxerir melloras ou corrixir traducións';

  @override
  String get aiEnergy => 'Enerxía AI';

  @override
  String get searchInConversation => 'Busca na conversa...';

  @override
  String get noMessagesFound => 'Non se atopou ningunha mensaxe';

  @override
  String get suggestedQuestions => 'Preguntas suxeridas:';

  @override
  String get shoppingAssistant => 'Auxiliar de compras';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased de $total comprados';
  }

  @override
  String get estimatedCost => 'Estimado';

  @override
  String get viewItems => 'Ver elementos';

  @override
  String get noItemsInList => 'Non hai elementos na lista';

  @override
  String get longHistoryWarning =>
      'Longa historia: o asistente céntrase nas mensaxes máis recentes para mellorar o rendemento.';

  @override
  String get listening => 'Escoitando...';

  @override
  String get addDirectToList => 'Engadir directamente á lista';

  @override
  String get unlockFullResponse => 'Desbloquear a resposta completa';

  @override
  String get switchList => 'Lista de cambios';

  @override
  String get marketMode => 'Modo mercado';

  @override
  String get backToChat => 'Volver ao chat';

  @override
  String get finishShopping => 'Rematar de compras';

  @override
  String get welcomeAiAssistant => 'Benvido a AI Assistant';

  @override
  String get createListToStartAi =>
      'Crea unha lista da compra para comezar a usar o chat intelixente.';

  @override
  String get howCanIHelp => 'Como podo axudar?';

  @override
  String get chatSubtitleShort =>
      'Pregunta por prezos, receitas, organización...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total mercou';
  }

  @override
  String get quickReplies => 'Respostas rápidas:';

  @override
  String get voiceProFeature =>
      'Os comandos de voz avanzados son Pro. Activando o ditado básico...';

  @override
  String get viewPro => 'Ver Pro';

  @override
  String get errorLoadingChat => 'Vaia! Produciuse un erro ao cargar o chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Comproba a túa conexión ou téntao de novo máis tarde.';

  @override
  String get errorOscillation =>
      'Isto pode ocorrer debido a oscilacións da rede ou a indisponibilidade temporal. Téntao de novo.';

  @override
  String get activeListening => 'Escoita activa';

  @override
  String get whatToDoWithItem => 'Que che gustaría facer con este artigo?';

  @override
  String get viewDetails => 'Ver detalles';

  @override
  String get openMenu => 'Abrir menú';

  @override
  String get viewRecipe => 'Ver receita';

  @override
  String get recipeCreated => 'Receita creada!';

  @override
  String get editRecipe => 'Editar';

  @override
  String get deleteRecipe => 'Borrar';

  @override
  String get deleteRecipeConfirm => 'Borrar esta receita?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Seguro que queres borrar \"$recipeName\"? Esta acción non se pode desfacer.';
  }

  @override
  String get ingredients => 'Ingredientes';

  @override
  String get instructions => 'Instrucións';

  @override
  String get prepTime => 'Tempo de prep.';

  @override
  String get recipeSaved => 'Receita gardada!';

  @override
  String get noRecipesSaved => 'Non hai receitas gardadas';

  @override
  String get noRecipesSavedHint =>
      'Crea a túa primeira receita personalizada tocando o botón de abaixo.';

  @override
  String get myRecipes => 'As miñas receitas';

  @override
  String get newRecipe => 'Nova receita';

  @override
  String get loadingRecipes => 'Cargando as túas receitas...';

  @override
  String get errorLoadingRecipes => 'Erro ao cargar as receitas';

  @override
  String get addIngredient => 'Engadir ingrediente';

  @override
  String get saveRecipe => 'Gardar';

  @override
  String get recipeName => 'Nome da receita';

  @override
  String get shortDescription => 'Descrición curta';

  @override
  String get prepTimeMinutes => 'Tempo de prep. (minutos)';

  @override
  String get instructionsHint => 'Escribe un paso por liña...';

  @override
  String get addPhoto => 'Engadir foto';

  @override
  String get imageUrlPlaceholder => 'Ou pega un URL de imaxe';

  @override
  String get tags => 'Etiquetas';

  @override
  String get recipeTags => 'Etiquetas da receita';

  @override
  String get suggestedTags => 'Suxeridas';

  @override
  String get searchRecipes => 'Buscar receitas...';

  @override
  String get filterByTag => 'Filtrer por etiqueta';

  @override
  String get allTags => 'Todos';

  @override
  String get recipeDeleted => 'Receita borrada';

  @override
  String get saveChanges => 'Gardar cambios';

  @override
  String get editRecipeTitle => 'Editar receita';

  @override
  String get newRecipeTitle => 'Nova receita';

  @override
  String get requiredField => 'Obrigatorio';

  @override
  String get chooseImageSource => 'Escoller a fonte da imaxe';

  @override
  String get gallery => 'Galería';

  @override
  String get enterUrl => 'Introducir URL';

  @override
  String get recipeImage => 'Imaxe da receita';

  @override
  String get removeImage => 'Retirar imaxe';

  @override
  String get mealPlannerTitle => 'Planificador de comidas';

  @override
  String get mealPlannerViewMonthly => 'Vista mensual';

  @override
  String get mealPlannerViewWeekly => 'Vista semanal';

  @override
  String get mealPlannerNoMeals => 'Non hai comidas planificadas';

  @override
  String get mealPlannerNoMealsHint => 'Toca un día para engadir unha comida';

  @override
  String get mealPlannerLoading => 'Cargando o plan de comidas...';

  @override
  String get mealPlannerError => 'Erro ao cargar o plan de comidas';

  @override
  String get mealPlannerAddMeal => 'Engadir comida';

  @override
  String get mealPlannerEditMeal => 'Editar comida';

  @override
  String get mealPlannerDeleteMeal => 'Retirar comida';

  @override
  String get mealPlannerMealDeleted => 'Comida retirada';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count racións',
      one: '$count ración',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Racións';

  @override
  String get mealPlannerNoteLabel => 'Nota (opcional)';

  @override
  String get mealPlannerSelectRecipe => 'Seleccionar unha receita';

  @override
  String get mealPlannerSearchRecipes => 'Buscar receitas...';

  @override
  String get mealPlannerNoRecipesFound => 'Non se atoparon receitas';

  @override
  String get mealPlannerNoRecipesHint =>
      'Crea primeiro receitas na pestana Receitas';

  @override
  String get mealPlannerSave => 'Engadir ao plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count de $total comidas planificadas';
  }

  @override
  String get mealPlannerGenerateList => 'Xerar lista da compra';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Engadir todos os ingredientes das comidas planificadas esta semana á túa lista da compra?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'Engadíronse $count ingrediente(s) á túa lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Non hai ingredientes que engadir. Planifica primeiro algunhas comidas con receitas.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Crea primeiro unha lista da compra.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Almorzo';

  @override
  String get mealPlannerMealTypeLunch => 'Xantar';

  @override
  String get mealPlannerMealTypeDinner => 'Cea';

  @override
  String get mealPlannerMealTypeSnack => 'Merenda';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty => 'Nada planificado para esta semana';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Toca calquera día para comezar a planificar as túas comidas!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Invitar á lista';

  @override
  String get shareApp => 'Compartir aplicación';

  @override
  String get shareAppDescription => 'Invita amigos a usar KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Estou usando KipiList para organizar as miñas compras! Descarga a través da miña ligazón e os dous recibimos 7 días de Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Obtén 7 días de KipiList Premium!';

  @override
  String get gestureHint =>
      'Mantén premido para seleccionar • Pasa o dedo para eliminalo';

  @override
  String get catalogTitle => 'Catálogo';

  @override
  String get catalogMyFrequents => 'Os meus frecuentes';

  @override
  String get catalogSearchGlobal => 'Busca calquera produto...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Busca en $category...';
  }

  @override
  String get catalogSortPopular => 'O máis popular';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nacionais';

  @override
  String get catalogRareSection => 'menos común no teu país';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Engadir $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Non se atopou o produto, escriba o nome';

  @override
  String get catalogBrowse => 'Explorar catálogo';

  @override
  String get offlineBanner => 'Estás sen conexión';

  @override
  String get consentTitle => 'Privacidade e análise';

  @override
  String get consentBody =>
      'KipiList usa Firebase Analytics para mellorar a túa experiencia. Os teus datos son procesados ​​segundo a nosa Política de Privacidade.';

  @override
  String get consentAccept => 'Aceptar';

  @override
  String get consentDecline => 'Non, grazas';

  @override
  String get mealPlannerPantryAllAvailable => 'En stock';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementos que faltan',
      one: '$count elemento que falta',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Data de caducidade';

  @override
  String get notInformed => 'Non informado';

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
  String get manageCategoriesTitle => 'Xestionar categorías';

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
  String get sortAZ => 'A–Z';

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
  String get backToToday => 'Volta a hoxe';

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

/// The translations for Galician, as used in Spain (`gl_ES`).
class AppLocalizationsGlEs extends AppLocalizationsGl {
  AppLocalizationsGlEs() : super('gl_ES');

  @override
  String get appTitle => 'Lista da Compra';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Despensa';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Receitas';

  @override
  String get navLists => 'Listas';

  @override
  String get navMealPlanner => 'Menú';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Gardar';

  @override
  String get create => 'Crear';

  @override
  String get add => 'Engadir';

  @override
  String get remove => 'Eliminar';

  @override
  String get delete => 'Borrar';

  @override
  String get edit => 'Editar';

  @override
  String get copy => 'Copiar';

  @override
  String get next => 'A continuación';

  @override
  String get retry => 'Reintentar';

  @override
  String get regenerate => 'Rexenerar';

  @override
  String get copiedToClipboard => 'Copiado ao portapapeis';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Pechar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renomear';

  @override
  String get upgrade => 'Mellorar';

  @override
  String get clear => 'Limpar';

  @override
  String error(String message) {
    return 'Erro: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Erro: $message';
  }

  @override
  String get purchaseError => 'Erro ao procesar a compra. Inténtao de novo.';

  @override
  String get restoreError => 'Erro ao restaurar compras. Inténtao de novo.';

  @override
  String get loading => 'Cargando...';

  @override
  String get fieldRequired => 'Campo obrigatorio';

  @override
  String get addedFeedback => 'Engadido!';

  @override
  String get profile => 'Perfil';

  @override
  String get exitShoppingMode => 'Saír do modo de compra';

  @override
  String get exit => 'Saír';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count seleccionados',
      one: '$count seleccionado',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimado';

  @override
  String get alreadyPurchased => 'Xa mercada';

  @override
  String get clearList => 'Limpar lista';

  @override
  String get clearPurchased => 'Limpar mercadas';

  @override
  String get share => 'Compartir';

  @override
  String get shareViaCode => 'Compartir mediante código';

  @override
  String get importViaCode => 'Importar mediante código';

  @override
  String get listAssistant => 'Asistente de lista';

  @override
  String get globalAssistant => 'Asistente global';

  @override
  String get becomePremium => 'Fai Premium';

  @override
  String get manageSubscription => 'Xestionar subscrición';

  @override
  String get completePurchase => 'Completar compra';

  @override
  String get confirmClearList => 'Eliminar todos os artigos?';

  @override
  String get shareListTitle => 'Compartir lista';

  @override
  String get shareThisCode => 'Comparte este código:';

  @override
  String get validForLimitedTime => 'Válido por tempo limitado';

  @override
  String get importListTitle => 'Importar lista';

  @override
  String get enterCodeHint => 'Introduce o código';

  @override
  String get confirmArchiveTitle => 'Completar compra';

  @override
  String get confirmArchiveContent =>
      'Completar esta compra e arquivar a lista?';

  @override
  String get complete => 'Completar';

  @override
  String get listArchived => 'Lista arquivada correctamente!';

  @override
  String listAdded(String listName) {
    return '$listName engadida!';
  }

  @override
  String get buy => 'Mercar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return 'Eliminar $count artigo(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return 'Eliminar $count artigo(s)?';
  }

  @override
  String get archiveList => 'Arquivar lista';

  @override
  String get pantryAppBar => 'Despensa';

  @override
  String get generateShoppingList => 'Xerar lista da compra';

  @override
  String get pantryEmpty => 'Despensa baleira';

  @override
  String get pantryEmptySubtitle => 'Engade produtos que queiras ter na casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit artigo(s) necesita(n) mercarse';
  }

  @override
  String get noItemsToBuy => 'Non hai artigos que mercar';

  @override
  String get newPantryList => 'Compra de despensa';

  @override
  String get newListTitle => 'Nova lista da compra';

  @override
  String itemsWillBeAdded(int count) {
    return 'Engadiranse $count artigo(s)';
  }

  @override
  String get listNameLabel => 'Nome da lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" creada con $count artigos';
  }

  @override
  String get noTracking => 'Sen seguimento';

  @override
  String get markAsPurchased => 'Marcar como mercada';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Cantidade ideal';

  @override
  String get currentQuantity => 'Cantidade actual';

  @override
  String get consumed => 'Consumido';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastecido a $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Eliminar \"$name\" da despensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get settingsAppBar => 'Axustes';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'inglés';

  @override
  String get languageSystem => 'Predeterminado do sistema';

  @override
  String get chooseLanguage => 'Seleccionar idioma';

  @override
  String get searchLanguage => 'Buscar idioma...';

  @override
  String get currency => 'Moeda';

  @override
  String get chooseCurrency => 'Seleccione Moeda';

  @override
  String get searchCurrency => 'Busca moeda...';

  @override
  String get appearance => 'Apariencia';

  @override
  String get light => 'Claro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Escuro';

  @override
  String get themeColor => 'Cor do tema';

  @override
  String get dynamicColors => 'Cores dinámicas';

  @override
  String get dynamicColorsSubtitle =>
      'Usa cores baseadas no teu fondo de pantalla';

  @override
  String get dynamicColorsEnabledWarning =>
      'Desactiva as cores dinámicas para que a cor do tema teña efecto';

  @override
  String get finance => 'Finanzas';

  @override
  String get monthlyBudgetNav => 'Orzamento mensual';

  @override
  String get budgetSubtitle => 'Controla o teu gasto mensual';

  @override
  String get data => 'Datos';

  @override
  String get backupNav => 'Copia de seguridade';

  @override
  String get backupSubtitle => 'Exporta ou importa os teus datos';

  @override
  String get about => 'Acerca de';

  @override
  String get version => 'Versión';

  @override
  String get privacy => 'Privacidade';

  @override
  String get termsOfUse => 'Termos de uso';

  @override
  String get backupTitle => 'Copia de seguridade';

  @override
  String get backupPremiumDescription =>
      'A copia de seguridade e exportación é unha función premium';

  @override
  String get exportData => 'Exportar datos';

  @override
  String get exportDataSubtitle => 'Gardar todas as listas como JSON';

  @override
  String get importData => 'Importar datos';

  @override
  String get importDataSubtitle => 'Restaurar listas desde un JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Pega o JSON da copia de seguridade aquí...';

  @override
  String get backupExported => 'Copia de seguridade exportada!';

  @override
  String get budgetAppBar => 'Orzamento mensual';

  @override
  String get budgetPremiumLocked => 'O orzamento mensual global é premium';

  @override
  String get budgetUpgradePrompt => 'Mellora para desbloquear';

  @override
  String get noBudgetDefined => 'Sen orzamento definido';

  @override
  String totalEstimated(String amount) {
    return 'Total estimado: $amount';
  }

  @override
  String get setBudgetButton => 'Establecer orzamento';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Importe';

  @override
  String get setBudgetTitle => 'Orzamento mensual';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterPending => 'Pendentes';

  @override
  String get filterPurchased => 'Mercadas';

  @override
  String get sortName => 'Nome';

  @override
  String get sortCategory => 'Categoría';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Engadir artigo';

  @override
  String get itemName => 'Nome do artigo';

  @override
  String get quantityShort => 'Cant';

  @override
  String get unit => 'Unidade';

  @override
  String get category => 'Categoría';

  @override
  String get estimatedPrice => 'Prezo estimado';

  @override
  String get addItemPrice => 'Prezo estimado';

  @override
  String get editItem => 'Editar artigo';

  @override
  String get quantityFull => 'Cantidade';

  @override
  String get editItemPrice => 'Prezo estimado';

  @override
  String get addToPantry => 'Engadir á despensa';

  @override
  String addToPantryPrompt(String name) {
    return 'Engadir \"$name\" á túa despensa?';
  }

  @override
  String get yes => 'Si';

  @override
  String get productName => 'Nome do produto';

  @override
  String get idealQty => 'Cant. ideal';

  @override
  String get currentQty => 'Cant. actual';

  @override
  String get trackStock => 'Controlar stock';

  @override
  String get trackStockActive => 'Aparece en suxestións de compra';

  @override
  String get trackStockInactive => 'Non xera suxestión de compra';

  @override
  String get createListDialog => 'Crear lista';

  @override
  String get renameListDialog => 'Renomear lista';

  @override
  String get listHistory => 'Historial de listas';

  @override
  String get myLists => 'As miñas listas';

  @override
  String get viewActive => 'Ver activas';

  @override
  String get viewHistory => 'Ver historial';

  @override
  String get noArchivedLists => 'Non hai listas arquivadas';

  @override
  String get noActiveLists => 'Non hai listas activas';

  @override
  String completedOn(String date) {
    return 'Completada o $date';
  }

  @override
  String get sharedLabel => 'Compartida';

  @override
  String get restore => 'Restaurar';

  @override
  String get removeSharedTooltip => 'Eliminar';

  @override
  String get deleteListTitle => 'Borrar lista';

  @override
  String deleteListContent(String name) {
    return 'Estás seguro de que queres borrar \"$name\"? Eliminaranse todos os artigos.';
  }

  @override
  String get removeSharedListTitle => 'Eliminar lista compartida';

  @override
  String removeSharedListContent(String name) {
    return 'Eliminar \"$name\" das túas listas? A lista orixinal non se verá afectada.';
  }

  @override
  String get createNewList => 'Crear nova lista';

  @override
  String get aiAssistant => 'Asistente de IA';

  @override
  String get aiAssistantDescription =>
      'Obtén suxestións intelixentes, receitas e consellos personalizados co noso asistente de IA.';

  @override
  String get generalAssistant => 'Asistente xeral';

  @override
  String get newChat => 'Chat novo';

  @override
  String get noHistory => 'Non hai historial de chat';

  @override
  String get deleteSession => 'Eliminar chat';

  @override
  String get deleteSessionConfirm =>
      'Estás seguro de que queres eliminar este chat? As mensaxes perderanse permanentemente.';

  @override
  String get clearHistory => 'Limpar historial';

  @override
  String get clearHistoryConfirm => 'Borrar todas as mensaxes desta sesión?';

  @override
  String get chatHint => 'Escribe a túa mensaxe...';

  @override
  String get chatHintBlocked => 'Desbloquea a IA para chatear';

  @override
  String chatError(String error) {
    return 'Erro ao cargar o chat: $error';
  }

  @override
  String get listHelp => 'Como podo axudar coa túa lista?';

  @override
  String get generalHelp => 'Como podo axudar coas túas compras hoxe?';

  @override
  String get chatSubtitle =>
      'Pide suxestións de artigos, receitas ou consellos de aforro.';

  @override
  String get aiError =>
      'Sentímolo, produciuse un erro ao procesar a túa solicitude. Comproba a túa conexión ou inténtao de novo máis tarde.';

  @override
  String get aiLimitAlmostReached => 'Case sen mensaxes de IA';

  @override
  String get unlockAi => 'Desbloquear IA ilimitada';

  @override
  String get aiTeaserFallback =>
      'Subscríbete a Premium para desbloquear a resposta completa e obter consellos de IA ilimitados para as túas compras...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => 'Inicia sesión para desbloquear funcións premium';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get continueAsGuest => 'Continuar como convidado';

  @override
  String get onboardingWelcomeTitle => 'Benvido a KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'A forma máis intelixente de organizar as túas compras e aforrar cartos.';

  @override
  String get onboardingSetupTitle => 'Personaliza a túa experiencia';

  @override
  String get onboardingSetupDesc =>
      'Escolle como queres que KipiList se vexa e funcione para ti.';

  @override
  String get onboardingLoginTitle => 'Garda todo na nube';

  @override
  String get onboardingLoginDesc =>
      'Os teus datos sincronizados en todos os teus dispositivos';

  @override
  String get onboardingShareTitle => 'Comparte coas persoas que queres';

  @override
  String get onboardingShareDesc =>
      'Sincroniza listas con familiares e amigos en tempo real';

  @override
  String get onboardingPremiumTitle => 'Desbloquear todas as funcións';

  @override
  String get onboardingPremiumSubtitle =>
      'Saca o máximo proveito das túas listas de compras';

  @override
  String get onboardingAnnualBadge => 'Mellor valor';

  @override
  String get onboardingMonthlyLabel => 'Mensuais';

  @override
  String get onboardingAnnualLabel => 'Anual';

  @override
  String get onboardingViewAllPlans => 'Ver todos os plans';

  @override
  String get onboardingSubscribeCta => 'Subscríbete';

  @override
  String get onboardingCancelAnytime =>
      'Cancela en calquera momento. Sen compromiso.';

  @override
  String get onboardingContinueAsGuest => 'Continúa como convidado';

  @override
  String get onboardingRestore => 'Restaurar';

  @override
  String get onboardingRestoreDesc =>
      'Xa tes unha subscrición? Toca aquí para restauralo.';

  @override
  String get onboardingExit => 'Saír';

  @override
  String get onboardingPersonalizationTitle => 'Imos coñecerte';

  @override
  String get onboardingPersonalizationDesc =>
      'Usarémolo para personalizar as túas suxestións e facer a compra máis intelixente.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Cal é a túa comida favorita?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'p.ex. Pizza, sushi, lasaña...';

  @override
  String get onboardingPersonalizationCta => 'Continuar';

  @override
  String get onboardingPersonalizationSkip => 'Saltar por agora';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Cóntanos a túa comida favorita para continuar';

  @override
  String get settingsDefaultScreen => 'Pantalla de inicio predeterminada';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Escolle entre a lista da compra ou o chat AI';

  @override
  String get settingsScreenList => 'Lista da compra';

  @override
  String get settingsScreenChat => 'Chat AI';

  @override
  String loginError(String error) {
    return 'Erro de inicio de sesión: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Produciuse un erro ao cargar as ofertas. Téntao de novo.';

  @override
  String get paywallPurchaseError =>
      'Non se puido completar a compra. Téntao de novo.';

  @override
  String get paywallRestoreError =>
      'Non se atopou ningunha subscrición activa para restaurala.';

  @override
  String paywallTrialDays(Object days) {
    return '$days DÍAS GRATIS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count SEMANAS GRATIS',
      one: '$count SEMANA GRATIS',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MESES GRATIS',
      one: '$count MES GRATIS',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Proba KipiList Pro gratis durante 7 días';

  @override
  String get paywallTrialSubtitle =>
      'Cancela en calquera momento. Hoxe sen cargo.';

  @override
  String get paywallTrialCta => 'Comeza a proba gratuíta';

  @override
  String get recipeAddToList => 'Engadir á lista da compra';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ingredientes engadidos a $listName';
  }

  @override
  String get paywallFeaturesTitle => 'Todo o que necesitas:';

  @override
  String get paywallFeatureUnlimitedLists => 'Listas ilimitadas';

  @override
  String get paywallFeatureSmartAI => 'AI intelixente';

  @override
  String get paywallFeatureExpenseControl => 'Control de Gastos';

  @override
  String get paywallFeatureSharing => 'Compartindo';

  @override
  String get paywallBeforeAfterTitle => 'AI antes e despois:';

  @override
  String get paywallLabelCommon => 'Común';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'arroz';

  @override
  String get paywallBeforeItem2 => 'xabón';

  @override
  String get paywallBeforeItem3 => 'carne';

  @override
  String get paywallBeforeItem4 => 'pan';

  @override
  String get paywallAfterItem1 => 'Grans';

  @override
  String get paywallAfterItem2 => 'Limpeza';

  @override
  String get paywallAfterItem3 => 'Carnes';

  @override
  String get paywallAfterItem4 => 'Panadaría';

  @override
  String get paywallTestimonialsTitle => 'O que din os nosos usuarios:';

  @override
  String get paywallTestimonial1Name => 'Ana S.';

  @override
  String get paywallTestimonial1Text =>
      'A IA organiza as miñas compras en segundos. Aforro 20 minutos por viaxe ao mercado.';

  @override
  String get paywallTestimonial2Name => 'Carlos M.';

  @override
  String get paywallTestimonial2Text =>
      'Nunca esquecín un elemento da lista de novo. O chat AI é sensacional!';

  @override
  String get paywallSocialProof => 'Úsano máis de 2.400 familias';

  @override
  String get paywallCtaUnlock => 'Desbloquear PRO';

  @override
  String get paywallBestValue => 'MELLOR VALOR';

  @override
  String get paywallMostPopular => 'MÁIS POPULAR';

  @override
  String get paywallSafeCheckout => 'Pago seguro';

  @override
  String get paywallSelectPlan => 'Escolle o teu plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'AHORRA $percent %';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Só $price/mes';
  }

  @override
  String get paywallPackageAnnual => 'Plan anual';

  @override
  String get paywallPackageMonthly => 'Plan Mensual';

  @override
  String get paywallPackageLifetime => 'Acceso de por vida';

  @override
  String get paywallCancelAnytime =>
      'Cancela en calquera momento. Sen compromiso.';

  @override
  String get paywallPolicy => 'Política de privacidade';

  @override
  String get paywallTerms => 'Condicións de uso';

  @override
  String get paywallRestore => 'Restaurar';

  @override
  String get paywallHeroHeadline => 'Kipi AI sempre ao teu lado';

  @override
  String get paywallHeroSubtitle =>
      'Engade elementos, organiza listas e aforra tempo coa IA no peto';

  @override
  String get paywallBenefit1Desc => 'Engade, organiza e suxire elementos 24/7';

  @override
  String get paywallBenefit2Desc => 'Sen límite de 3 listas';

  @override
  String get paywallBenefit3Desc => 'Seguimento de gastos e listas familiares';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilidade total';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Comeza gratis — $days días';
  }

  @override
  String get premiumUpgrade => 'Mellora para desbloquear';

  @override
  String get itemRemoved => 'Artigo eliminado';

  @override
  String get undo => 'Desfacer';

  @override
  String get emptyListTitle => 'A túa lista está baleira';

  @override
  String get emptyListSubtitle => 'Engade artigos para comezar';

  @override
  String get noListFoundTitle => 'Non se atoparon listas';

  @override
  String get noListFoundSubtitle => 'Crea a túa primeira lista para comezar';

  @override
  String get createFirstList => 'Crear primeira lista';

  @override
  String get listBudgetTitle => 'Orzamento da lista';

  @override
  String get budgetAmountLabel => 'Importe do orzamento';

  @override
  String get removeBudget => 'Eliminar';

  @override
  String get prefUnlimitedLists => 'Listas ilimitadas';

  @override
  String get prefSharing => 'Compartir listas';

  @override
  String get prefFullHistory => 'Historial completo';

  @override
  String get prefExportData => 'Exportar datos';

  @override
  String get prefCustomThemes => 'Temas personalizados';

  @override
  String get prefMonthlyBudget => 'Orzamento mensual global';

  @override
  String get prefAIAssistant => 'Asistente de IA persoal';

  @override
  String get prefUnlimitedPantry => 'Despensa ilimitada';

  @override
  String get prefInteractiveArtifacts => 'Artefactos interactivos de IA';

  @override
  String get themeGreen => 'Verde';

  @override
  String get themeBlue => 'Azul';

  @override
  String get themePurple => 'Púrpura';

  @override
  String get themeRed => 'Vermello';

  @override
  String get themeOrange => 'Laranxa';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Índigo';

  @override
  String get themeAmber => 'Ámbar';

  @override
  String get themeTeal => 'Verde azulado';

  @override
  String get themeBrown => 'Marrón';

  @override
  String get catFruits => 'Froitas';

  @override
  String get catCleaning => 'Limpieza';

  @override
  String get catBeverages => 'Bebidas';

  @override
  String get catBakery => 'Panadaría';

  @override
  String get catOthers => 'Outros';

  @override
  String get unitPack => 'paquete';

  @override
  String get shareSubject => 'Lista da compra';

  @override
  String get monthlyBudgetTitle => 'Orzamento mensual';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Borrar lista';

  @override
  String get pantryItemRemoved => 'Artigo eliminado';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit artigos necesitan mercarse',
      one: '$deficit artigo necesita mercarse',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total do carro';

  @override
  String get restockLabel => 'Reabastecer';

  @override
  String get advancedFeatures => 'Funcións avanzadas';

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String get deselectAll => 'Deseleccionar todo';

  @override
  String get monthlyBudgetAppBar => 'Orzamento mensual';

  @override
  String get budgetEditTitle => 'Orzamento mensual';

  @override
  String get budgetDashboardTitle => 'Panel';

  @override
  String get selectListForDashboard =>
      'Selecciona unha lista para ver o panel.';

  @override
  String get spendingAnalysis => 'Análise de gastos';

  @override
  String get noItemsToAnalyze => 'Non hai artigos na lista para analizar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marca os artigos como comprados para ver a análise.';

  @override
  String get totalSpending => 'Gasto total';

  @override
  String get spendingByCategory => 'Gastos por categoría';

  @override
  String get achievements => 'Logros';

  @override
  String get exportPdfExcel => 'Exportar PDF/Excel';

  @override
  String get exportPdf => 'Exportar como PDF';

  @override
  String get exportExcel => 'Exportar como Excel';

  @override
  String get organizingAi => 'ORGANIZANDO CON IA...';

  @override
  String get yesLabel => 'Si';

  @override
  String get noLabel => 'Non';

  @override
  String get shareListText => 'A miña lista da compra';

  @override
  String get emptyListAddItems =>
      'A túa lista está baleira! Engade artigos primeiro. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Lista organizada maxicamente por categorías! ✨';

  @override
  String get shoppingMode => 'Modo compra';

  @override
  String get smartOrganization => 'Organización intelixente';

  @override
  String get savings => 'Aforro';

  @override
  String get shoppingModeHeader => 'MODO COMPRA';

  @override
  String get shareAsText => 'Enviar artigos como texto formatado';

  @override
  String get shareRealtime => 'Sincronización en tempo real con outras persoas';

  @override
  String get quickRecipe => 'Receita rápida';

  @override
  String get quickRecipePrompt => 'Suxire receitas con artigos da miña lista.';

  @override
  String get economyTips => 'Consellos de aforro';

  @override
  String get economyTipsPrompt => 'Como podo aforrar cartos nesta compra?';

  @override
  String get organizeAisles => 'Organizar por corredores';

  @override
  String get organizeAislesPrompt => 'Organiza por corredores do supermercado.';

  @override
  String get recipeSuggestion => 'Suxestión de receita';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining créditos restantes';
  }

  @override
  String get addAllToList => 'Engadir todo á lista';

  @override
  String get organizeByAisles => 'Organizar por corredores';

  @override
  String get voiceTranscriptionTooltip => 'Escrita por voz (Gratuíto)';

  @override
  String get aiVoiceCommandTooltip => 'Comando de voz con IA (Premium)';

  @override
  String get voiceCommandTitle => 'Comando de voz con IA';

  @override
  String get voiceCommandContent =>
      'Fala de forma natural para xestionar a túa lista!\n\nExemplos:\n• \'Engade pan, queixo e xamón\'\n• \'Elimina o deterxente\'\n• \'Cambia o tema a azul\'\n\nEsta é unha función exclusiva de KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Ver plans';

  @override
  String get itemsAddedSuccess => 'Artigos engadidos á lista correctamente!';

  @override
  String get viewList => 'Ver lista';

  @override
  String get feedbackTitle => 'Enviar comentario';

  @override
  String get feedbackPrompt => 'Que queres compartir?';

  @override
  String get feedbackTypeBug => 'Informar dun erro';

  @override
  String get feedbackTypeBugHint => 'Algo non funciona';

  @override
  String get feedbackTypeSuggestion => 'Suxestión';

  @override
  String get feedbackTypeSuggestionHint => 'Idea para mellorar a app';

  @override
  String get feedbackTypeTranslation => 'Problema de tradución';

  @override
  String get feedbackTypeTranslationHint => 'Tradución incorrecta ou estraña';

  @override
  String get feedbackTypeFeature => 'Solicitude de funcionalidade';

  @override
  String get feedbackTypeFeatureHint => 'Funcionalidade que che gustaría ver';

  @override
  String get feedbackTypeOther => 'Outro';

  @override
  String get feedbackTypeOtherHint => 'Outro tipo de comentario';

  @override
  String get feedbackHint => 'Describe o teu comentario en detalle...';

  @override
  String get feedbackSend => 'Enviar comentario';

  @override
  String get feedbackSending => 'Enviando...';

  @override
  String get feedbackThankYou => 'Grazas!';

  @override
  String get feedbackThankYouMessage =>
      'Recibíuse o teu comentario e axúdanos a mellorar KipiList para todos.';

  @override
  String get feedbackBack => 'Volver';

  @override
  String feedbackError(String error) {
    return 'Erro ao enviar: $error';
  }

  @override
  String get feedbackRetry => 'Intentar de novo';

  @override
  String get feedbackSettingsTitle => 'Enviar comentario';

  @override
  String get feedbackSettingsSubtitle =>
      'Informa de erros, suxire melloras ou arranxa traducións';

  @override
  String get aiEnergy => 'Enerxía AI';

  @override
  String get searchInConversation => 'Busca na conversa...';

  @override
  String get noMessagesFound => 'Non se atopou ningunha mensaxe';

  @override
  String get suggestedQuestions => 'Preguntas suxeridas:';

  @override
  String get shoppingAssistant => 'Auxiliar de compras';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased de $total comprados';
  }

  @override
  String get estimatedCost => 'Estimado';

  @override
  String get viewItems => 'Ver elementos';

  @override
  String get noItemsInList => 'Non hai elementos na lista';

  @override
  String get longHistoryWarning =>
      'Longa historia: o asistente céntrase nas mensaxes máis recentes para mellorar o rendemento.';

  @override
  String get listening => 'Escoitando...';

  @override
  String get addDirectToList => 'Engadir directamente á lista';

  @override
  String get unlockFullResponse => 'Desbloquear a resposta completa';

  @override
  String get switchList => 'Lista de cambios';

  @override
  String get marketMode => 'Modo mercado';

  @override
  String get backToChat => 'Volver ao chat';

  @override
  String get finishShopping => 'Rematar de compras';

  @override
  String get welcomeAiAssistant => 'Benvido a AI Assistant';

  @override
  String get createListToStartAi =>
      'Crea unha lista da compra para comezar a usar o chat intelixente.';

  @override
  String get howCanIHelp => 'Como podo axudar?';

  @override
  String get chatSubtitleShort =>
      'Pregunta por prezos, receitas, organización...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total mercou';
  }

  @override
  String get quickReplies => 'Respostas rápidas:';

  @override
  String get voiceProFeature =>
      'Os comandos de voz avanzados son Pro. Activando o ditado básico...';

  @override
  String get viewPro => 'Ver Pro';

  @override
  String get errorLoadingChat => 'Vaia! Produciuse un erro ao cargar o chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Comproba a túa conexión ou téntao de novo máis tarde.';

  @override
  String get errorOscillation =>
      'Isto pode ocorrer debido a oscilacións da rede ou a indisponibilidade temporal. Téntao de novo.';

  @override
  String get activeListening => 'Escoita activa';

  @override
  String get whatToDoWithItem => 'Que che gustaría facer con este artigo?';

  @override
  String get viewDetails => 'Ver detalles';

  @override
  String get openMenu => 'Abrir menú';

  @override
  String get viewRecipe => 'Ver receita';

  @override
  String get recipeCreated => 'Receita creada!';

  @override
  String get editRecipe => 'Editar';

  @override
  String get deleteRecipe => 'Borrar';

  @override
  String get deleteRecipeConfirm => 'Borrar esta receita?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Seguro que queres borrar \"$recipeName\"? Esta acción non se pode desfacer.';
  }

  @override
  String get ingredients => 'Ingredientes';

  @override
  String get instructions => 'Instrucións';

  @override
  String get prepTime => 'Tempo de prep.';

  @override
  String get recipeSaved => 'Receita gardada!';

  @override
  String get noRecipesSaved => 'Non hai receitas gardadas';

  @override
  String get noRecipesSavedHint =>
      'Crea a túa primeira receita personalizada tocando o botón de abaixo.';

  @override
  String get myRecipes => 'As miñas receitas';

  @override
  String get newRecipe => 'Nova receita';

  @override
  String get loadingRecipes => 'Cargando as túas receitas...';

  @override
  String get errorLoadingRecipes => 'Erro ao cargar as receitas';

  @override
  String get addIngredient => 'Engadir ingrediente';

  @override
  String get saveRecipe => 'Gardar';

  @override
  String get recipeName => 'Nome da receita';

  @override
  String get shortDescription => 'Descrición curta';

  @override
  String get prepTimeMinutes => 'Tempo de prep. (minutos)';

  @override
  String get instructionsHint => 'Escribe un paso por liña...';

  @override
  String get addPhoto => 'Engadir foto';

  @override
  String get imageUrlPlaceholder => 'Ou pega un URL de imaxe';

  @override
  String get tags => 'Etiquetas';

  @override
  String get recipeTags => 'Etiquetas da receita';

  @override
  String get suggestedTags => 'Suxeridas';

  @override
  String get searchRecipes => 'Buscar receitas...';

  @override
  String get filterByTag => 'Filtrar por etiqueta';

  @override
  String get allTags => 'Todos';

  @override
  String get recipeDeleted => 'Receita borrada';

  @override
  String get saveChanges => 'Gardar cambios';

  @override
  String get editRecipeTitle => 'Editar receita';

  @override
  String get newRecipeTitle => 'Nova receita';

  @override
  String get requiredField => 'Obrigatorio';

  @override
  String get chooseImageSource => 'Escoller a fonte da imaxe';

  @override
  String get gallery => 'Galería';

  @override
  String get enterUrl => 'Introducir URL';

  @override
  String get recipeImage => 'Imaxe da receita';

  @override
  String get removeImage => 'Retirar imaxe';

  @override
  String get mealPlannerTitle => 'Planificador de comidas';

  @override
  String get mealPlannerViewMonthly => 'Vista mensual';

  @override
  String get mealPlannerViewWeekly => 'Vista semanal';

  @override
  String get mealPlannerNoMeals => 'Non hai comidas planificadas';

  @override
  String get mealPlannerNoMealsHint => 'Toca un día para engadir unha comida';

  @override
  String get mealPlannerLoading => 'Cargando o plan de comidas...';

  @override
  String get mealPlannerError => 'Erro ao cargar o plan de comidas';

  @override
  String get mealPlannerAddMeal => 'Engadir comida';

  @override
  String get mealPlannerEditMeal => 'Editar comida';

  @override
  String get mealPlannerDeleteMeal => 'Retirar comida';

  @override
  String get mealPlannerMealDeleted => 'Comida retirada';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count racións',
      one: '$count ración',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Racións';

  @override
  String get mealPlannerNoteLabel => 'Nota (opcional)';

  @override
  String get mealPlannerSelectRecipe => 'Seleccionar unha receita';

  @override
  String get mealPlannerSearchRecipes => 'Buscar receitas...';

  @override
  String get mealPlannerNoRecipesFound => 'Non se atoparon receitas';

  @override
  String get mealPlannerNoRecipesHint =>
      'Crea primeiro receitas na pestana Receitas';

  @override
  String get mealPlannerSave => 'Engadir ao plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count de $total comidas planificadas';
  }

  @override
  String get mealPlannerGenerateList => 'Xerar lista da compra';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Engadir todos os ingredientes das comidas planificadas esta semana á túa lista da compra?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return 'Engadíronse $count ingrediente(s) á túa lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Non hai ingredientes que engadir. Planifica primeiro algunhas comidas con receitas.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Crea primeiro unha lista da compra.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Almorzo';

  @override
  String get mealPlannerMealTypeLunch => 'Xantar';

  @override
  String get mealPlannerMealTypeDinner => 'Cea';

  @override
  String get mealPlannerMealTypeSnack => 'Merenda';

  @override
  String get mealPlannerDateLabel => 'Data';

  @override
  String get mealPlannerWeekEmpty => 'Nada planificado para esta semana';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Toca calquera día para comezar a planificar as túas comidas!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Invitar á lista';

  @override
  String get shareApp => 'Compartir aplicación';

  @override
  String get shareAppDescription => 'Invita amigos a usar KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Estou usando KipiList para organizar as miñas compras! Descarga a través da miña ligazón e os dous recibimos 7 días de Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => 'Obtén 7 días de KipiList Premium!';

  @override
  String get gestureHint =>
      'Mantén premido para seleccionar • Pasa o dedo para eliminalo';

  @override
  String get catalogTitle => 'Catálogo';

  @override
  String get catalogMyFrequents => 'Os meus frecuentes';

  @override
  String get catalogSearchGlobal => 'Busca calquera produto...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Busca en $category...';
  }

  @override
  String get catalogSortPopular => 'O máis popular';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Nacionais';

  @override
  String get catalogRareSection => 'menos común no teu país';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Engadir $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Non se atopou o produto, escriba o nome';

  @override
  String get catalogBrowse => 'Explorar catálogo';

  @override
  String get offlineBanner => 'Estás sen conexión';

  @override
  String get consentTitle => 'Privacidade e análise';

  @override
  String get consentBody =>
      'KipiList usa Firebase Analytics para mellorar a túa experiencia. Os teus datos son procesados ​​segundo a nosa Política de Privacidade.';

  @override
  String get consentAccept => 'Aceptar';

  @override
  String get consentDecline => 'Non, grazas';

  @override
  String get mealPlannerPantryAllAvailable => 'En stock';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementos que faltan',
      one: '$count elemento que falta',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Data de caducidade';

  @override
  String get notInformed => 'Non informado';

  @override
  String get manageCategoriesTitle => 'Xestionar categorías';

  @override
  String get sortAZ => 'A–Z';

  @override
  String get backToToday => 'Volta a hoxe';
}
