// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Lista de Compras';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Despensa';

  @override
  String get navChat => 'Charlar';

  @override
  String get navRecipes => 'Recetas';

  @override
  String get navLists => 'Listas';

  @override
  String get navMealPlanner => 'Menú';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Guardar';

  @override
  String get create => 'Crear';

  @override
  String get add => 'Añadir';

  @override
  String get remove => 'Eliminar';

  @override
  String get delete => 'Borrar';

  @override
  String get edit => 'Editar';

  @override
  String get copy => 'Copiar';

  @override
  String get next => 'Próximo';

  @override
  String get retry => 'Reintentar';

  @override
  String get regenerate => 'Regenerar';

  @override
  String get copiedToClipboard => 'Copiado al portapapeles';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Cerrar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renombrar';

  @override
  String get upgrade => 'Actualizar';

  @override
  String get clear => 'Limpiar';

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
      'Error al procesar la compra. Inténtalo de nuevo.';

  @override
  String get restoreError => 'Error al restaurar compras. Inténtalo de nuevo.';

  @override
  String get loading => 'Cargando...';

  @override
  String get fieldRequired => 'Campo obligatorio';

  @override
  String get addedFeedback => '¡Añadido!';

  @override
  String get profile => 'Perfil';

  @override
  String get exitShoppingMode => 'Salir del modo de compras';

  @override
  String get exit => 'Salida';

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
  String get alreadyPurchased => 'Ya comprado';

  @override
  String get clearList => 'Limpiar lista';

  @override
  String get clearPurchased => 'Limpiar comprados';

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
  String get becomePremium => 'Hazte Premium';

  @override
  String get manageSubscription => 'Gestionar suscripción';

  @override
  String get completePurchase => 'Completar compra';

  @override
  String get confirmClearList => '¿Eliminar todos los artículos?';

  @override
  String get shareListTitle => 'Compartir lista';

  @override
  String get shareThisCode => 'Comparte este código:';

  @override
  String get validForLimitedTime => 'Válido por tiempo limitado';

  @override
  String get importListTitle => 'Importar lista';

  @override
  String get enterCodeHint => 'Introduce el código';

  @override
  String get confirmArchiveTitle => 'Completar compra';

  @override
  String get confirmArchiveContent =>
      '¿Completar esta compra y archivar la lista?';

  @override
  String get complete => 'Completar';

  @override
  String get listArchived => '¡Lista archivada con éxito!';

  @override
  String listAdded(String listName) {
    return '¡$listName añadida!';
  }

  @override
  String get buy => 'Comprar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return '¿Eliminar $count artículo(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return '¿Eliminar $count artículo(s)?';
  }

  @override
  String get archiveList => 'Archivar lista';

  @override
  String get pantryAppBar => 'Despensa';

  @override
  String get generateShoppingList => 'Generar lista de compras';

  @override
  String get pantryEmpty => 'Despensa vacía';

  @override
  String get pantryEmptySubtitle => 'Añade productos que quieras tener en casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit artículo(s) necesita(n) comprarse';
  }

  @override
  String get noItemsToBuy => 'No hay artículos que comprar';

  @override
  String get newPantryList => 'Compras de despensa';

  @override
  String get newListTitle => 'Nueva lista de compras';

  @override
  String itemsWillBeAdded(int count) {
    return 'Se añadirán $count artículo(s)';
  }

  @override
  String get listNameLabel => 'Nombre de la lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" creada con $count artículos';
  }

  @override
  String get noTracking => 'Sin seguimiento';

  @override
  String get markAsPurchased => 'Marcar como comprado';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Cantidad ideal';

  @override
  String get currentQuantity => 'Cantidad actual';

  @override
  String get consumed => 'Consumido';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastecido a $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return '¿Eliminar \"$name\" de la despensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get scanProductTitle => 'Escanear producto';

  @override
  String get positionBarcodeCenter =>
      'Coloque el código de barras en el centro.';

  @override
  String get product => 'Producto';

  @override
  String get settingsAppBar => 'Ajustes';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'Inglés';

  @override
  String get languageSystem => 'Predeterminado del sistema';

  @override
  String get chooseLanguage => 'Seleccionar idioma';

  @override
  String get searchLanguage => 'Buscar idioma...';

  @override
  String get currency => 'Divisa';

  @override
  String get chooseCurrency => 'Seleccionar moneda';

  @override
  String get searchCurrency => 'Buscar moneda...';

  @override
  String get appearance => 'Apariencia';

  @override
  String get light => 'Claro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Oscuro';

  @override
  String get themeColor => 'Color del tema';

  @override
  String get dynamicColors => 'Colores dinámicos';

  @override
  String get dynamicColorsSubtitle =>
      'Usar colores basados en tu fondo de pantalla';

  @override
  String get dynamicColorsEnabledWarning =>
      'Desactive los colores dinámicos para que el color del tema surta efecto';

  @override
  String get finance => 'Finanzas';

  @override
  String get monthlyBudgetNav => 'Presupuesto mensual';

  @override
  String get budgetSubtitle => 'Controla tu gasto mensual';

  @override
  String get data => 'Datos';

  @override
  String get backupNav => 'Copia de seguridad';

  @override
  String get backupSubtitle => 'Exporta o importa tus datos';

  @override
  String get about => 'Acerca de';

  @override
  String get version => 'Versión';

  @override
  String get privacy => 'Privacidad';

  @override
  String get termsOfUse => 'Términos de uso';

  @override
  String get myAchievements => 'Mis logros';

  @override
  String get itemsPurchased => 'Artículos comprados';

  @override
  String get totalSavings => 'Ahorros totales';

  @override
  String get currentStreak => 'Racha actual';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '$count día',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Insignias desbloqueadas';

  @override
  String get badgeBeginner => 'Principiante';

  @override
  String get badgeOrganized => 'Organizado';

  @override
  String get badgeSavingMaster => 'Maestro salvador';

  @override
  String get badgeSuperPlanner => 'Súper Planificador';

  @override
  String get backupTitle => 'Copia de seguridad';

  @override
  String get backupPremiumDescription =>
      'La copia de seguridad y exportación es una función premium';

  @override
  String get exportData => 'Exportar datos';

  @override
  String get exportDataSubtitle => 'Guardar todas las listas como JSON';

  @override
  String get importData => 'Importar datos';

  @override
  String get importDataSubtitle => 'Restaurar listas desde un JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Pega el JSON de la copia de seguridad aquí...';

  @override
  String get backupExported => '¡Copia de seguridad exportada!';

  @override
  String get budgetAppBar => 'Presupuesto mensual';

  @override
  String get budgetPremiumLocked => 'El presupuesto mensual global es premium';

  @override
  String get budgetUpgradePrompt => 'Actualiza para desbloquear';

  @override
  String get noBudgetDefined => 'Sin presupuesto definido';

  @override
  String totalEstimated(String amount) {
    return 'Total estimado: $amount';
  }

  @override
  String get setBudgetButton => 'Establecer presupuesto';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Importe';

  @override
  String get setBudgetTitle => 'Presupuesto mensual';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterPending => 'Pendientes';

  @override
  String get filterPurchased => 'Comprados';

  @override
  String get sortName => 'Nombre';

  @override
  String get sortCategory => 'Categoría';

  @override
  String get sortDate => 'Fecha';

  @override
  String get sortManual => 'Manual';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased de $total artículos';
  }

  @override
  String progressBudget(String amount) {
    return 'Presupuesto: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Total: $amount';
  }

  @override
  String get addItem => 'Añadir artículo';

  @override
  String get itemName => 'Nombre del artículo';

  @override
  String get quantityShort => 'Cant';

  @override
  String get unit => 'Unidad';

  @override
  String get category => 'Categoría';

  @override
  String get estimatedPrice => 'Precio estimado';

  @override
  String get addItemPrice => 'Precio estimado';

  @override
  String get editItem => 'Editar artículo';

  @override
  String get quantityFull => 'Cantidad';

  @override
  String get editItemPrice => 'Precio estimado';

  @override
  String get addToPantry => 'Añadir a la despensa';

  @override
  String addToPantryPrompt(String name) {
    return '¿Añadir \"$name\" a tu despensa?';
  }

  @override
  String get yes => 'Sí';

  @override
  String get productName => 'Nombre del producto';

  @override
  String get idealQty => 'Cant. ideal';

  @override
  String get currentQty => 'Cant. actual';

  @override
  String get trackStock => 'Controlar stock';

  @override
  String get trackStockActive => 'Aparece en sugerencias de compra';

  @override
  String get trackStockInactive => 'No genera sugerencia de compra';

  @override
  String get createListDialog => 'Crear lista';

  @override
  String get renameListDialog => 'Renombrar lista';

  @override
  String get listHistory => 'Historial de listas';

  @override
  String get myLists => 'Mis listas';

  @override
  String get viewActive => 'Ver activas';

  @override
  String get viewHistory => 'Ver historial';

  @override
  String get noArchivedLists => 'No hay listas archivadas';

  @override
  String get noActiveLists => 'No hay listas activas';

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
  String get deleteListTitle => 'Borrar lista';

  @override
  String deleteListContent(String name) {
    return '¿Estás seguro de que quieres borrar \"$name\"? Se eliminarán todos los artículos.';
  }

  @override
  String get removeSharedListTitle => 'Eliminar lista compartida';

  @override
  String removeSharedListContent(String name) {
    return '¿Eliminar \"$name\" de tus listas? La lista original no se verá afectada.';
  }

  @override
  String get createNewList => 'Crear nueva lista';

  @override
  String get aiAssistant => 'Asistente de IA';

  @override
  String get aiAssistantDescription =>
      'Obtén sugerencias inteligentes, recetas y consejos personalizados con nuestro asistente de IA.';

  @override
  String get generalAssistant => 'Asistente general';

  @override
  String get newChat => 'Nuevo chat';

  @override
  String get noHistory => 'Sin historial de chat';

  @override
  String get deleteSession => 'Eliminar chat';

  @override
  String get deleteSessionConfirm =>
      '¿Estás seguro de que quieres eliminar este chat? Los mensajes se perderán permanentemente.';

  @override
  String get clearHistory => 'Limpiar historial';

  @override
  String get clearHistoryConfirm =>
      '¿Borrar todos los mensajes de esta sesión?';

  @override
  String get chatHint => 'Escribe tu mensaje...';

  @override
  String get chatHintBlocked => 'Desbloquea la IA para chatear';

  @override
  String chatError(String error) {
    return 'Error al cargar el chat: $error';
  }

  @override
  String get aiAssistantTitle => 'Asistente de IA';

  @override
  String get closeSheet => 'Cerca';

  @override
  String get scanBarcodeTitle => 'Escanear código de barras';

  @override
  String get listHelp => '¿Cómo puedo ayudarte con tu lista?';

  @override
  String get generalHelp => '¿Cómo puedo ayudarte con tus compras hoy?';

  @override
  String get chatSubtitle =>
      'Pide sugerencias de artículos, recetas o consejos de ahorro.';

  @override
  String get aiError =>
      'Lo sentimos, se produjo un error al procesar tu solicitud. Comprueba tu conexión o inténtalo de nuevo más tarde.';

  @override
  String get aiLimitAlmostReached => 'Casi sin mensajes de IA';

  @override
  String get unlockAi => 'Desbloquea IA ilimitada';

  @override
  String get aiTeaserFallback =>
      'Suscríbete a Premium para desbloquear la respuesta completa y obtener consejos ilimitados de IA para tus compras...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Acciones de IA restantes este mes: actualice de forma ilimitada';
  }

  @override
  String get aiUsageExhausted =>
      'Se alcanzó el límite mensual de IA. Actualízate a Pro de forma ilimitada →';

  @override
  String get kipiListTitle => 'Lista Kipi';

  @override
  String get loginPrompt => 'Inicia sesión para desbloquear\nfunciones premium';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get onboardingWelcomeTitle => 'Bienvenido a KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'La forma más inteligente de organizar tus compras y ahorrar dinero.';

  @override
  String get onboardingSetupTitle => 'Personaliza tu experiencia';

  @override
  String get onboardingSetupDesc =>
      'Elija cómo desea que KipiList se vea y funcione para usted.';

  @override
  String get onboardingLoginTitle => 'Guarda todo en la nube';

  @override
  String get onboardingLoginDesc =>
      'Tus datos sincronizados en todos tus dispositivos';

  @override
  String get onboardingShareTitle => 'Comparte con tus seres queridos';

  @override
  String get onboardingShareDesc =>
      'Sincroniza listas con familiares y amigos en tiempo real';

  @override
  String get onboardingPremiumTitle => 'Desbloquea todas las funciones';

  @override
  String get onboardingPremiumSubtitle =>
      'Sácale el máximo provecho a tus listas de compras';

  @override
  String get onboardingAnnualBadge => 'Mejor valor';

  @override
  String get onboardingMonthlyLabel => 'Mensual';

  @override
  String get onboardingAnnualLabel => 'Anual';

  @override
  String get onboardingViewAllPlans => 'Ver todos los planes';

  @override
  String get onboardingSubscribeCta => 'Suscribir';

  @override
  String get onboardingCancelAnytime =>
      'Cancele en cualquier momento. Sin compromiso.';

  @override
  String get onboardingContinueAsGuest => 'Continuar como invitado';

  @override
  String get onboardingRestore => 'Restaurar';

  @override
  String get onboardingRestoreDesc =>
      '¿Ya tienes una suscripción? Toque aquí para restaurarlo.';

  @override
  String get onboardingMaybeLater => 'tal vez más tarde';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hola $name, organiza tus compras de la manera correcta.';
  }

  @override
  String get onboardingSlide1Title => 'Listas de compras inteligentes';

  @override
  String get onboardingSlide1Body =>
      'Crea y comparte listas al instante. Kipi agrega elementos automáticamente según tus hábitos.';

  @override
  String get onboardingSlide2Title => 'Conoce a Kipi';

  @override
  String get onboardingSlide2Body =>
      'Pregunte cualquier cosa: cree listas, busque recetas, realice un seguimiento de su despensa, planifique su semana.';

  @override
  String get onboardingSlide3Title => 'Despensa y planificación de comidas';

  @override
  String get onboardingSlide3Body =>
      'Realice un seguimiento de lo que tiene, planifique comidas y genere listas de compras automáticamente.';

  @override
  String get onboardingExit => 'Salida';

  @override
  String get onboardingPersonalizationTitle => 'vamos a conocerte';

  @override
  String get onboardingPersonalizationDesc =>
      'Usaremos esto para personalizar sus sugerencias y hacer que las compras sean más inteligentes.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      '¿Cuál es tu comida favorita?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'p.ej. Pizza, sushi, lasaña...';

  @override
  String get onboardingPersonalizationCta => 'Continuar';

  @override
  String get onboardingPersonalizationSkip => 'Saltar por ahora';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Cuéntanos tu comida favorita para continuar';

  @override
  String get settingsDefaultScreen => 'Pantalla de inicio predeterminada';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Elija entre lista de compras o chat AI';

  @override
  String get settingsScreenList => 'Lista de compras';

  @override
  String get settingsScreenChat => 'Chat de IA';

  @override
  String loginError(String error) {
    return 'Error de inicio de sesión: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Error al cargar ofertas. Intentar otra vez.';

  @override
  String get paywallPurchaseError =>
      'No se pudo completar la compra. Intentar otra vez.';

  @override
  String get paywallRestoreError =>
      'No se encontró ninguna suscripción activa para restaurar.';

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
  String get paywallTrialTitle => '¡Pruébalo gratis!';

  @override
  String get paywallTrialSubtitle =>
      'Cancele en cualquier momento. Sin cargo hoy.';

  @override
  String get paywallTrialCta => 'Iniciar prueba gratuita';

  @override
  String get recipeAddToList => 'Añadir a la lista de compras';

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
      'Ninguna lista seleccionada. Primero abra una lista.';

  @override
  String get paywallFeaturesTitle => 'Todo lo que necesitas:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organiza tu lista automáticamente';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Crea tantas listas como necesites';

  @override
  String get paywallFeatureDescSharing => 'Compren juntos en tiempo real';

  @override
  String get paywallFeatureDescPantry => 'Sigue lo que tienes en casa';

  @override
  String get paywallFeatureDescBudget =>
      'Manténgase dentro del presupuesto todos los meses';

  @override
  String get paywallFeatureUnlimitedLists => 'Listas ilimitadas';

  @override
  String get paywallFeatureSmartAI => 'IA inteligente';

  @override
  String get paywallFeatureExpenseControl => 'Control de gastos';

  @override
  String get paywallFeatureSharing => 'Intercambio';

  @override
  String get paywallBeforeAfterTitle => 'IA antes y después:';

  @override
  String get paywallLabelCommon => 'Común';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'arroz';

  @override
  String get paywallBeforeItem2 => 'jabón';

  @override
  String get paywallBeforeItem3 => 'carne';

  @override
  String get paywallBeforeItem4 => 'pan';

  @override
  String get paywallAfterItem1 => 'Granos';

  @override
  String get paywallAfterItem2 => 'Limpieza';

  @override
  String get paywallAfterItem3 => 'carnes';

  @override
  String get paywallAfterItem4 => 'Panadería';

  @override
  String get paywallTestimonialsTitle => 'Lo que dicen nuestros usuarios:';

  @override
  String get paywallTestimonial1Name => 'Ana S.';

  @override
  String get paywallTestimonial1Text =>
      'La IA organiza mis compras en segundos. Ahorro 20 minutos por visita al mercado.';

  @override
  String get paywallTestimonial2Name => 'carlos m.';

  @override
  String get paywallTestimonial2Text =>
      'Nunca más olvidé un elemento de la lista. ¡El chat de IA es sensacional!';

  @override
  String get paywallSocialProof => '+2.400 familias lo utilizan';

  @override
  String get paywallCtaUnlock => 'Desbloquear PRO';

  @override
  String get paywallBestValue => 'MEJOR VALOR';

  @override
  String get paywallMostPopular => 'MÁS POPULAR';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Pago seguro';

  @override
  String get paywallSelectPlan => 'Elige tu plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'GUARDAR $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Sólo $price/mes';
  }

  @override
  String get paywallPackageAnnual => 'Plan Anual';

  @override
  String get paywallPackageMonthly => 'Plan Mensual';

  @override
  String get paywallPackageLifetime => 'Acceso de por vida';

  @override
  String get paywallCancelAnytime =>
      'Cancele en cualquier momento. Sin compromiso.';

  @override
  String paywallTrialInCard(int days) {
    return 'Primeros $days días GRATIS';
  }

  @override
  String get paywallSecuredByStore =>
      'Asegurado por Google Play · Cancelar en cualquier momento';

  @override
  String get paywallPolicy => 'política de privacidad';

  @override
  String get paywallTerms => 'Condiciones de uso';

  @override
  String get paywallRestore => 'Restaurar';

  @override
  String get paywallHeroHeadline => 'Kipi AI siempre a tu lado';

  @override
  String get paywallHeroSubtitle =>
      'Añade elementos, organiza listas y ahorra tiempo con la IA en tu bolsillo';

  @override
  String get paywallBenefit1Desc =>
      'Agrega, organiza y sugiere elementos 24 horas al día, 7 días a la semana';

  @override
  String get paywallBenefit2Desc => 'Sin límite de 3 listas';

  @override
  String get paywallBenefit3Desc => 'Seguimiento de gastos y listas familiares';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilidad total';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Empieza gratis: $days días';
  }

  @override
  String get premiumUpgrade => 'Actualiza para desbloquear';

  @override
  String get itemRemoved => 'Artículo eliminado';

  @override
  String get undo => 'Deshacer';

  @override
  String get emptyListTitle => 'Tu lista está vacía';

  @override
  String get emptyListSubtitle => 'Añade artículos para empezar';

  @override
  String get noListFoundTitle => 'No se encontraron listas';

  @override
  String get noListFoundSubtitle => 'Crea tu primera lista para empezar';

  @override
  String get createFirstList => 'Crear primera lista';

  @override
  String get listBudgetTitle => 'Presupuesto de la lista';

  @override
  String get budgetAmountLabel => 'Importe del presupuesto';

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
  String get prefMonthlyBudget => 'Presupuesto mensual global';

  @override
  String get prefAIAssistant => 'Asistente de IA personal';

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
  String get themeRed => 'Rojo';

  @override
  String get themeOrange => 'Naranja';

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
  String get catFruits => 'Frutas';

  @override
  String get catCleaning => 'Limpieza';

  @override
  String get catBeverages => 'Bebidas';

  @override
  String get catBakery => 'Panadería';

  @override
  String get catOthers => 'Otros';

  @override
  String get unitPack => 'paquete';

  @override
  String get shareSubject => 'Lista de la compra';

  @override
  String get monthlyBudgetTitle => 'Presupuesto mensual';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Borrar lista';

  @override
  String get pantryItemRemoved => 'Artículo eliminado';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit artículos necesitan comprarse',
      one: '$deficit artículo necesita comprarse',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total del carrito';

  @override
  String get restockLabel => 'Reabastecer';

  @override
  String get advancedFeatures => 'Funciones avanzadas';

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String get deselectAll => 'Deseleccionar todo';

  @override
  String get monthlyBudgetAppBar => 'Presupuesto mensual';

  @override
  String get budgetEditTitle => 'Presupuesto mensual';

  @override
  String get budgetDashboardTitle => 'Panel';

  @override
  String get selectListForDashboard =>
      'Selecciona una lista para ver el panel.';

  @override
  String get spendingAnalysis => 'Análisis de gastos';

  @override
  String get noItemsToAnalyze => 'No hay artículos en la lista para analizar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marca los artículos como comprados para ver el análisis.';

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
  String get yesLabel => 'Sí';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'Mi lista de la compra';

  @override
  String get emptyListAddItems =>
      '¡Tu lista está vacía! Añade artículos primero. ℹ️';

  @override
  String get listOrganizedMagic =>
      '¡Lista organizada mágicamente por categorías! ✨';

  @override
  String get shoppingMode => 'Modo compra';

  @override
  String get smartOrganization => 'Organización inteligente';

  @override
  String get savings => 'Ahorro';

  @override
  String get shoppingModeHeader => 'MODO COMPRA';

  @override
  String get shareAsText => 'Enviar artículos como texto formateado';

  @override
  String get shareRealtime =>
      'Sincronización en tiempo real con otras personas';

  @override
  String get quickRecipe => 'Receta rápida';

  @override
  String get quickRecipePrompt => 'Sugiere recetas con artículos de mi lista.';

  @override
  String get economyTips => 'Consejos de ahorro';

  @override
  String get economyTipsPrompt => '¿Cómo puedo ahorrar dinero en esta compra?';

  @override
  String get organizeAisles => 'Organizar por pasillos';

  @override
  String get organizeAislesPrompt => 'Organiza por pasillos del supermercado.';

  @override
  String get recipeSuggestion => 'Sugerencia de receta';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining créditos restantes';
  }

  @override
  String get addAllToList => 'Añadir todo a la lista';

  @override
  String get organizeByAisles => 'Organizar por pasillos';

  @override
  String get voiceTranscriptionTooltip => 'Escritura por voz (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'Comando de voz con IA (Premium)';

  @override
  String get voiceCommandTitle => 'Comando de voz con IA';

  @override
  String get voiceCommandContent =>
      '¡Habla de forma natural para gestionar tu lista!\n\nEjemplos:\n• \'Añade pan, queso y jamón\'\n• \'Elimina el detergente\'\n• \'Cambia el tema a azul\'\n\nEsta es una función exclusiva de KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Ver planes';

  @override
  String get itemsAddedSuccess => '¡Artículos añadidos a la lista con éxito!';

  @override
  String get viewList => 'Ver lista';

  @override
  String get feedbackTitle => 'Enviar comentarios';

  @override
  String get feedbackPrompt => '¿Qué te gustaría compartir?';

  @override
  String get feedbackTypeBug => 'Reportar error';

  @override
  String get feedbackTypeBugHint => 'Algo no funciona';

  @override
  String get feedbackTypeSuggestion => 'Sugerencia';

  @override
  String get feedbackTypeSuggestionHint => 'Idea para mejorar la app';

  @override
  String get feedbackTypeTranslation => 'Problema de traducción';

  @override
  String get feedbackTypeTranslationHint =>
      'Traducción incorrecta o poco natural';

  @override
  String get feedbackTypeFeature => 'Solicitar funcionalidad';

  @override
  String get feedbackTypeFeatureHint => 'Funcionalidad que te gustaría ver';

  @override
  String get feedbackTypeOther => 'Otro';

  @override
  String get feedbackTypeOtherHint => 'Otro tipo de comentario';

  @override
  String get feedbackHint => 'Describe tus comentarios en detalle...';

  @override
  String get feedbackSend => 'Enviar comentarios';

  @override
  String get feedbackSending => 'Enviando...';

  @override
  String get feedbackThankYou => '¡Gracias!';

  @override
  String get feedbackThankYouMessage =>
      'Hemos recibido tus comentarios y nos ayudan a mejorar KipiList para todos.';

  @override
  String get feedbackBack => 'Volver';

  @override
  String feedbackError(String error) {
    return 'Error al enviar: $error';
  }

  @override
  String get feedbackRetry => 'Intentar de nuevo';

  @override
  String get feedbackSettingsTitle => 'Enviar comentarios';

  @override
  String get feedbackSettingsSubtitle =>
      'Reporta errores, sugiere mejoras o corrige traducciones';

  @override
  String get aiEnergy => 'Energía de IA';

  @override
  String get searchInConversation => 'Buscar en conversación...';

  @override
  String get noMessagesFound => 'No se encontraron mensajes';

  @override
  String get suggestedQuestions => 'Preguntas sugeridas:';

  @override
  String get shoppingAssistant => 'asistente de compras';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased de $total comprado';
  }

  @override
  String get estimatedCost => 'Estimado';

  @override
  String get viewItems => 'Ver artículos';

  @override
  String get noItemsInList => 'No hay elementos en la lista';

  @override
  String get longHistoryWarning =>
      'Larga historia: el asistente se centra en los mensajes más recientes para un mejor rendimiento.';

  @override
  String get listening => 'Escuchando...';

  @override
  String get addDirectToList => 'Añadir directamente a la lista';

  @override
  String get unlockFullResponse => 'Desbloquear respuesta completa';

  @override
  String get switchList => 'Lista de cambios';

  @override
  String get marketMode => 'Modo de mercado';

  @override
  String get backToChat => 'Volver al chat';

  @override
  String get finishShopping => 'Terminar de comprar';

  @override
  String get welcomeAiAssistant => 'Bienvenido al Asistente de IA';

  @override
  String get createListToStartAi =>
      'Crea una lista de compras para comenzar a usar el chat inteligente.';

  @override
  String get howCanIHelp => '¿Cómo puedo ayudar?';

  @override
  String get chatSubtitleShort =>
      'Pregunta por precios, recetas, organización...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total comprado';
  }

  @override
  String get quickReplies => 'Respuestas rápidas:';

  @override
  String get voiceProFeature =>
      'Los comandos de voz avanzados son Pro. Habilitando el dictado básico...';

  @override
  String get viewPro => 'Ver profesional';

  @override
  String get errorLoadingChat => '¡Ups! Algo salió mal al cargar el chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Comprueba tu conexión o vuelve a intentarlo más tarde.';

  @override
  String get errorOscillation =>
      'Esto puede ocurrir debido a oscilaciones de la red o indisponibilidad temporal. Por favor inténtalo de nuevo.';

  @override
  String get activeListening => 'Escucha activa';

  @override
  String get whatToDoWithItem => '¿Qué te gustaría hacer con este artículo?';

  @override
  String get viewDetails => 'Ver detalles';

  @override
  String get openMenu => 'Abrir menú';

  @override
  String get viewRecipe => 'Ver receta';

  @override
  String get recipeCreated => '¡Receta creada!';

  @override
  String get editRecipe => 'Editar';

  @override
  String get deleteRecipe => 'Eliminar';

  @override
  String get deleteRecipeConfirm => '¿Eliminar esta receta?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '¿Estás seguro de que quieres eliminar \"$recipeName\"? Esta acción no se puede deshacer.';
  }

  @override
  String get ingredients => 'Ingredientes';

  @override
  String get instructions => 'Instrucciones';

  @override
  String get prepTime => 'Tiempo de preparación';

  @override
  String get recipeSaved => '¡Receta guardada!';

  @override
  String get noRecipesSaved => 'No hay recetas guardadas';

  @override
  String get noRecipesSavedHint =>
      'Crea tu primera receta personalizada tocando el botón de abajo.';

  @override
  String get myRecipes => 'Mis recetas';

  @override
  String get newRecipe => 'Nueva receta';

  @override
  String get loadingRecipes => 'Cargando tus recetas...';

  @override
  String get errorLoadingRecipes => 'Error al cargar las recetas';

  @override
  String get addIngredient => 'Añadir ingrediente';

  @override
  String get saveRecipe => 'Guardar';

  @override
  String get recipeName => 'Nombre de la receta';

  @override
  String get shortDescription => 'Descripción corta';

  @override
  String get prepTimeMinutes => 'Tiempo de preparación (minutos)';

  @override
  String get instructionsHint => 'Escribe un paso por línea...';

  @override
  String get addPhoto => 'Añadir foto';

  @override
  String get imageUrlPlaceholder => 'O pega una URL de imagen';

  @override
  String get tags => 'Etiquetas';

  @override
  String get recipeTags => 'Etiquetas de la receta';

  @override
  String get suggestedTags => 'Sugeridos';

  @override
  String get searchRecipes => 'Buscar recetas...';

  @override
  String get filterByTag => 'Filtrar por etiqueta';

  @override
  String get allTags => 'Todo';

  @override
  String get recipeDeleted => 'Receta eliminada';

  @override
  String get saveChanges => 'Guardar cambios';

  @override
  String get editRecipeTitle => 'Editar receta';

  @override
  String get newRecipeTitle => 'Nueva receta';

  @override
  String get requiredField => 'Obligatorio';

  @override
  String get chooseImageSource => 'Elegir fuente de imagen';

  @override
  String get gallery => 'Galería';

  @override
  String get enterUrl => 'Introducir URL';

  @override
  String get recipeImage => 'Imagen de la receta';

  @override
  String get removeImage => 'Quitar imagen';

  @override
  String get mealPlannerTitle => 'Planificador de comidas';

  @override
  String get mealPlannerViewMonthly => 'Vista mensual';

  @override
  String get mealPlannerViewWeekly => 'Vista semanal';

  @override
  String get mealPlannerNoMeals => 'No hay comidas planificadas';

  @override
  String get mealPlannerNoMealsHint => 'Toca un día para añadir una comida';

  @override
  String get mealPlannerLoading => 'Cargando plan de comidas...';

  @override
  String get mealPlannerError => 'Error al cargar el plan de comidas';

  @override
  String get mealPlannerAddMeal => 'Añadir comida';

  @override
  String get mealPlannerEditMeal => 'Editar comida';

  @override
  String get mealPlannerDeleteMeal => 'Quitar comida';

  @override
  String get mealPlannerMealDeleted => 'Comida quitada';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count raciones',
      one: '$count ración',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Raciones';

  @override
  String get mealPlannerNoteLabel => 'Nota (opcional)';

  @override
  String get mealPlannerSelectRecipe => 'Seleccionar una receta';

  @override
  String get mealPlannerSearchRecipes => 'Buscar recetas...';

  @override
  String get mealPlannerNoRecipesFound => 'No se encontraron recetas';

  @override
  String get mealPlannerNoRecipesHint =>
      'Crea recetas en la pestaña Recetas primero';

  @override
  String get mealPlannerSave => 'Añadir al plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count de $total comidas planificadas';
  }

  @override
  String get mealPlannerGenerateList => 'Generar lista de compras';

  @override
  String get mealPlannerGenerateListConfirm =>
      '¿Añadir todos los ingredientes de las comidas planificadas para esta semana a tu lista de compras?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '¡$count ingrediente(s) añadido(s) a tu lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'No hay ingredientes para añadir. Planifica algunas comidas con recetas primero.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Crea una lista de compras primero.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Desayuno';

  @override
  String get mealPlannerMealTypeLunch => 'Almuerzo';

  @override
  String get mealPlannerMealTypeDinner => 'Cena';

  @override
  String get mealPlannerMealTypeSnack => 'Merienda';

  @override
  String get mealPlannerDateLabel => 'Fecha';

  @override
  String get mealPlannerWeekEmpty => 'Nada planificado para esta semana';

  @override
  String get mealPlannerWeekEmptyHint =>
      '¡Toca cualquier día para empezar a planificar tus comidas!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes minutos';
  }

  @override
  String get inviteToList => 'Invitar a la lista';

  @override
  String get shareApp => 'Compartir aplicación';

  @override
  String get shareAppDescription => 'Invita a tus amigos a usar KipiList';

  @override
  String shareReferralText(String url) {
    return '¡Estoy usando KipiList para organizar mis compras! Descárguelo a través de mi enlace y ambos obtendremos 7 días de Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => '¡Obtén 7 días de KipiList Premium!';

  @override
  String get gestureHint =>
      'Mantenga presionado para seleccionar • Deslice para eliminar';

  @override
  String get catalogTitle => 'Catalogar';

  @override
  String get catalogMyFrequents => 'mis frecuentes';

  @override
  String get catalogSearchGlobal => 'Busca cualquier producto...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Buscar en $category...';
  }

  @override
  String get catalogSortPopular => 'mas popular';

  @override
  String get catalogSortAZ => 'ARIZONA';

  @override
  String get catalogFilterNational => 'Nacionales';

  @override
  String get catalogRareSection => 'menos común en tu país';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Agregar $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Producto no encontrado, escriba el nombre';

  @override
  String get catalogBrowse => 'Explorar catálogo';

  @override
  String get offlineBanner => 'Estás desconectado';

  @override
  String get consentTitle => 'Privacidad y análisis';

  @override
  String get consentBody =>
      'KipiList utiliza Firebase Analytics para mejorar su experiencia. Sus datos se procesan de acuerdo con nuestra Política de Privacidad.';

  @override
  String get consentAccept => 'Aceptar';

  @override
  String get consentDecline => 'No, gracias';

  @override
  String get mealPlannerPantryAllAvailable =>
      'Todos los ingredientes disponibles';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 falta';
  }

  @override
  String get expirationDate => 'Fecha de expiración';

  @override
  String get notInformed => 'No establecido';

  @override
  String get skip => 'Saltar';

  @override
  String get onboardingAiTitle => 'Chatea con Kipi';

  @override
  String get onboardingAiGreeting =>
      '¡Hola! ¡Soy Kipi, tu asistente personal de compras! 🛒';

  @override
  String get onboardingAiAskName => '¿Cómo te llamas?';

  @override
  String get onboardingAiNameHint => 'Escribe tu nombre...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return '¡Encantado de conocerte, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => '¿Cuál es tu comida favorita?';

  @override
  String get onboardingAiFoodHint => 'p.ej. Pizzas, sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return '¡Grandes opciones! Esto es lo que agregaría a tu lista:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      '¿Esto se ve bien? ¡Intenta escribir algo más!';

  @override
  String get onboardingAiReady =>
      '¡Excelente! Estás listo para empezar. ¡Configuremos su cuenta!';

  @override
  String get onboardingAiContinue => 'Continuar →';

  @override
  String get connectionError => 'Error de conexión';

  @override
  String connectionErrorDesc(String error) {
    return 'Error: $error';
  }

  @override
  String get errorLoadingLists => 'Error al cargar listas';

  @override
  String get noListsFound => 'No se encontraron listas';

  @override
  String get backToToday => 'Volver a hoy';

  @override
  String get quickSuggestions => 'sugerencias rapidas';

  @override
  String get aiEnergyLow => 'Baja energía de IA';

  @override
  String get aiUnlockUnlimited => 'Desbloquea IA ilimitada';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 hoy';
  }

  @override
  String get aiSubscribeUnlimited => 'Suscríbete para obtener IA ilimitada';

  @override
  String get unlockWithAd => 'Desbloquear con anuncio';

  @override
  String get conversationHistoryTitle => 'Historial de conversaciones';

  @override
  String get noConversationsFound => 'No se encontraron conversaciones';

  @override
  String get errorLoadingHistory => 'Error al cargar el historial';

  @override
  String get deleteConversationTitle => 'Eliminar conversación';

  @override
  String get deleteConversationConfirm => 'Esta acción no se puede deshacer.';

  @override
  String get deleteConversation => 'Borrar';

  @override
  String get subscription => 'Suscripción';

  @override
  String get kipiListProActive => 'KipiList Pro Activo';

  @override
  String get unlockPremiumTitle => 'Desbloquear prima';

  @override
  String get loadingSubscription => 'Cargando suscripción...';

  @override
  String get errorLoadingSubscription => 'Error al cargar la suscripción';

  @override
  String get profileSection => 'Perfil';

  @override
  String get myProfile => 'mi perfil';

  @override
  String get profileSubtitle => 'Tu información de perfil';

  @override
  String get customizeAiAssistant => 'Personaliza el asistente de IA';

  @override
  String get assistantHistory => 'Historial del asistente';

  @override
  String get assistantHistorySubtitle => 'Ver tu historial de conversaciones';

  @override
  String get manageCategories => 'Administrar categorías';

  @override
  String get manageCategoriesSubtitle =>
      'Agregar, editar o eliminar categorías';

  @override
  String get customizeAssistant => 'Personalizar';

  @override
  String get assistantName => 'Nombre del asistente';

  @override
  String get chooseIcon => 'Elija el icono';

  @override
  String get profileSaved => 'Perfil guardado';

  @override
  String get errorSavingProfile => 'Error al guardar perfil';

  @override
  String get userProfile => 'Perfil de usuario';

  @override
  String get profileDescription => 'Descripción del perfil';

  @override
  String get preferredMarket => 'Mercado preferido';

  @override
  String get preferredMarketHint => '¿Dónde sueles comprar?';

  @override
  String get dietaryRestrictions => 'Restricciones dietéticas';

  @override
  String get dietaryRestrictionsHint => '¿Alguna restricción dietética?';

  @override
  String get marketsToAvoid => 'Mercados a evitar';

  @override
  String get marketsToAvoidHint => 'Mercados en los que prefiere no comprar';

  @override
  String get observations => 'Observaciones';

  @override
  String get observationsHint => '¿Alguna nota adicional?';

  @override
  String get saveProfile => 'Guardar perfil';

  @override
  String get everythingReady => '¡Todo listo!';

  @override
  String get youCompletedList => '¡Has completado la lista!';

  @override
  String get selectCheaperAlternative =>
      'Seleccione una alternativa más barata';

  @override
  String get suggestedItems => 'Artículos sugeridos';

  @override
  String get swapped => 'Intercambiado';

  @override
  String get swap => 'Intercambio';

  @override
  String get chooseThemeColor => 'Elige el color del tema';

  @override
  String get manageCategoriesTitle => 'Administrar categorías';

  @override
  String get categoryLimitReached => 'Límite de categoría alcanzado';

  @override
  String get deleteCategoryTitle => 'Eliminar categoría';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Los elementos de \"$category\" se moverán a \"Otros\".\n¿Continuar?';
  }

  @override
  String get deleteCategory => 'Borrar';

  @override
  String get newCategoryDialog => 'Nueva categoría';

  @override
  String get editCategoryDialog => 'Editar categoría';

  @override
  String get categoryName => 'Nombre de categoría';

  @override
  String get categoryNameHint => 'Introduzca el nombre de la categoría';

  @override
  String get categoryColorLabel => 'Color';

  @override
  String get categoryIconLabel => 'Icono';

  @override
  String itemAddedSnack(String name) {
    return '$name añadido';
  }

  @override
  String get kipiQuickBarHint => '¿Qué necesitas comprar?';

  @override
  String replaceItem(String item) {
    return 'Reemplazar $item';
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
      'Nunca más olvides un artículo del supermercado';

  @override
  String get onboardingGoalSaveMoney => 'ahorrar dinero';

  @override
  String get onboardingGoalNeverForget => 'Nunca olvides los artículos';

  @override
  String get onboardingGoalFaster => 'Compra más rápido';

  @override
  String get onboardingGoalFamily => 'Organizar compras familiares';

  @override
  String get onboardingGoalRecipes => 'Descubre recetas';

  @override
  String get onboardingGoalPantry => 'Despensa de pista';

  @override
  String get onboardingCommitmentsTitle => '¿Qué te importa?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Elige tus objetivos para personalizar KipiList';

  @override
  String get onboardingCommitmentsCta => '¡Vamos!';

  @override
  String get onboardingPersonalizationNameLabel => 'Su nombre';

  @override
  String get onboardingPersonalizationNameHint => 'Introduce tu nombre';

  @override
  String get onboardingPersonalizationCategoryTitle => '¿Qué compras?';

  @override
  String get onboardingPersonalizationGroupTitle => '¿Para quién compras?';

  @override
  String get onboardingCategoryGrocery => 'Comestibles';

  @override
  String get onboardingCategoryPharmacy => 'Farmacia';

  @override
  String get onboardingCategoryRecipes => 'Recetas';

  @override
  String get onboardingCategoryHome => 'Hogar';

  @override
  String get onboardingCategoryPet => 'Mascota';

  @override
  String get onboardingGroupSolo => 'Sólo yo';

  @override
  String get onboardingGroupCouple => 'Pareja';

  @override
  String get onboardingGroupFamily => 'Familia';

  @override
  String get onboardingLoadingTitle => 'Preparando tu experiencia...';

  @override
  String get onboardingLoadingStep1 => 'Analizando tus preferencias...';

  @override
  String get onboardingLoadingStep2 => 'Configurando el asistente de IA...';

  @override
  String get onboardingLoadingStep3 => 'Casi listo...';

  @override
  String get onboardingLoadingStat1Label => 'Artículos catalogados';

  @override
  String get onboardingLoadingStat2Label => 'Los usuarios ayudaron';

  @override
  String get onboardingLoadingStat3Label => 'Minutos guardados';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, ¡ahorra en cada viaje!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, ¡nunca olvides un artículo!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, ¡compra en la mitad de tiempo!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, ¡organiza compras familiares!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, ¡descubre nuevas recetas!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, ¡sigue tu despensa perfectamente!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => '¡Ahorra en cada viaje!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      '¡Nunca olvides un artículo!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      '¡Compre en la mitad del tiempo!';

  @override
  String get paywallGoalHeadlineNoNameFamily => '¡Organiza compras familiares!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => '¡Descubre nuevas recetas!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      '¡Sigue tu despensa perfectamente!';

  @override
  String paywallPricePerDay(String price) {
    return 'Sólo $price/día: menos que un café';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Saltar por ahora';

  @override
  String get paywallTestimonial =>
      'La IA organiza mis compras en segundos. Me ahorro 20 min por viaje.';

  @override
  String get paywallTestimonialAuthor => 'Ana S.';

  @override
  String get paywallTrialDisclaimer =>
      'Cancela en cualquier momento · Sin cargo hasta que finalice tu prueba';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hola $name! ¿Qué $category necesitas?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return '¿Qué $category necesitas?';
  }

  @override
  String get onboardingAiDemoYes => '¡Sí!';

  @override
  String get onboardingAiDemoReaction => '¡Lindo!';

  @override
  String get onboardingAiDemoChange => 'Cambiar artículo';

  @override
  String get onboardingAiDemoOffer => '¡Intenta escribir algo más!';

  @override
  String get onboardingAiDemoContinue => 'Continuar';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Tu lista de compras, ahora con IA';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Vea cómo Kipi crea su lista completa en segundos';

  @override
  String get onboardingAiDemoSlideCta => '¡Quiero esto! →';

  @override
  String get onboardingAiDemoSlideUserMsg =>
      'Estoy organizando una barbacoa 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      '¡Listo! Aquí tienes todo lo que necesitas:';

  @override
  String get onboardingAiDemoSlideDone => 'Lista completa en segundos ✨';

  @override
  String get onboardingPainTitle => '¿Qué es lo que más te frustra?';

  @override
  String get onboardingPainSubtitle => 'Sea honesto: arreglaremos cada uno';

  @override
  String get onboardingPainCta => 'Sí, arregla esto por mí →';

  @override
  String get onboardingPainForget => 'Olvidé artículos en la tienda.';

  @override
  String get onboardingPainFamily => 'Mi familia nunca ve la lista.';

  @override
  String get onboardingPainOverspend => 'Siempre me paso del presupuesto';

  @override
  String get onboardingPainRepeat => 'Un viaje nunca es suficiente';

  @override
  String get aiWelcomeContent =>
      '¡Hola! 👋 ¡Soy **Kipi**, tu asistente personal de compras y recetas!\n\nEstoy aquí para ayudarte:\n🛒 **Organiza** tus compras por categorías automáticamente\n💰 **Haga un seguimiento** de su presupuesto y brinde consejos para ahorrar dinero\n🍲 **Sugiere** recetas deliciosas con lo que ya tienes\n\n¿Cómo puedo ayudarte hoy? ¡Puedes empezar creando tu primera lista!';

  @override
  String get aiWelcomeSuggestCreateList => 'Crear mi primera lista';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, ayúdame a crear mi primera lista de compras.';

  @override
  String get aiWelcomeSuggestSave => '¿Cómo ahorrar dinero?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, ¿cómo puedes ayudarme a ahorrar dinero en la compra?';

  @override
  String get suggestionMilk => 'Leche';

  @override
  String get suggestionBread => 'Pan';

  @override
  String get suggestionEggs => 'Huevos';

  @override
  String get suggestionCoffee => 'Café';

  @override
  String get suggestionRice => 'Arroz';

  @override
  String get suggestionFruits => 'frutas';
}

/// The translations for Spanish Castilian, as used in Latin America and the Caribbean (`es_419`).
class AppLocalizationsEs419 extends AppLocalizationsEs {
  AppLocalizationsEs419() : super('es_419');

  @override
  String get appTitle => 'Lista de Compras';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Despensa';

  @override
  String get navChat => 'Charlar';

  @override
  String get navRecipes => 'Recetas';

  @override
  String get navLists => 'Listas';

  @override
  String get navMealPlanner => 'Menú';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Guardar';

  @override
  String get create => 'Crear';

  @override
  String get add => 'Añadir';

  @override
  String get remove => 'Eliminar';

  @override
  String get delete => 'Borrar';

  @override
  String get edit => 'Editar';

  @override
  String get copy => 'Copiar';

  @override
  String get next => 'Próximo';

  @override
  String get retry => 'Reintentar';

  @override
  String get regenerate => 'Regenerar';

  @override
  String get copiedToClipboard => 'Copiado al portapapeles';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Cerrar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renombrar';

  @override
  String get upgrade => 'Actualizar';

  @override
  String get clear => 'Limpiar';

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
      'Error al procesar la compra. Inténtalo de nuevo.';

  @override
  String get restoreError => 'Error al restaurar compras. Inténtalo de nuevo.';

  @override
  String get loading => 'Cargando...';

  @override
  String get fieldRequired => 'Campo obligatorio';

  @override
  String get addedFeedback => '¡Añadido!';

  @override
  String get profile => 'Perfil';

  @override
  String get exitShoppingMode => 'Salir del modo de compras';

  @override
  String get exit => 'Salida';

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
  String get alreadyPurchased => 'Ya comprado';

  @override
  String get clearList => 'Limpiar lista';

  @override
  String get clearPurchased => 'Limpiar comprados';

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
  String get becomePremium => 'Hazte Premium';

  @override
  String get manageSubscription => 'Gestionar suscripción';

  @override
  String get completePurchase => 'Completar compra';

  @override
  String get confirmClearList => '¿Eliminar todos los artículos?';

  @override
  String get shareListTitle => 'Compartir lista';

  @override
  String get shareThisCode => 'Comparte este código:';

  @override
  String get validForLimitedTime => 'Válido por tiempo limitado';

  @override
  String get importListTitle => 'Importar lista';

  @override
  String get enterCodeHint => 'Introduce el código';

  @override
  String get confirmArchiveTitle => 'Completar compra';

  @override
  String get confirmArchiveContent =>
      '¿Completar esta compra y archivar la lista?';

  @override
  String get complete => 'Completar';

  @override
  String get listArchived => '¡Lista archivada con éxito!';

  @override
  String listAdded(String listName) {
    return '¡$listName añadida!';
  }

  @override
  String get buy => 'Comprar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return '¿Eliminar $count artículo(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return '¿Eliminar $count artículo(s)?';
  }

  @override
  String get archiveList => 'Archivar lista';

  @override
  String get pantryAppBar => 'Despensa';

  @override
  String get generateShoppingList => 'Generar lista de compras';

  @override
  String get pantryEmpty => 'Despensa vacía';

  @override
  String get pantryEmptySubtitle => 'Añade productos que quieras tener en casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit artículo(s) necesita(n) comprarse';
  }

  @override
  String get noItemsToBuy => 'No hay artículos que comprar';

  @override
  String get newPantryList => 'Compras de despensa';

  @override
  String get newListTitle => 'Nueva lista de compras';

  @override
  String itemsWillBeAdded(int count) {
    return 'Se añadirán $count artículo(s)';
  }

  @override
  String get listNameLabel => 'Nombre de la lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" creada con $count artículos';
  }

  @override
  String get noTracking => 'Sin seguimiento';

  @override
  String get markAsPurchased => 'Marcar como comprado';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Cantidad ideal';

  @override
  String get currentQuantity => 'Cantidad actual';

  @override
  String get consumed => 'Consumido';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastecido a $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return '¿Eliminar \"$name\" de la despensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get scanProductTitle => 'Escanear producto';

  @override
  String get positionBarcodeCenter =>
      'Coloque el código de barras en el centro.';

  @override
  String get product => 'Producto';

  @override
  String get settingsAppBar => 'Ajustes';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'Inglés';

  @override
  String get languageSystem => 'Predeterminado del sistema';

  @override
  String get chooseLanguage => 'Seleccionar idioma';

  @override
  String get searchLanguage => 'Buscar idioma...';

  @override
  String get currency => 'Divisa';

  @override
  String get chooseCurrency => 'Seleccionar moneda';

  @override
  String get searchCurrency => 'Buscar moneda...';

  @override
  String get appearance => 'Apariencia';

  @override
  String get light => 'Claro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Oscuro';

  @override
  String get themeColor => 'Color del tema';

  @override
  String get dynamicColors => 'Colores dinámicos';

  @override
  String get dynamicColorsSubtitle =>
      'Usa colores basados en tu fondo de pantalla';

  @override
  String get dynamicColorsEnabledWarning =>
      'Desactive los colores dinámicos para que el color del tema surta efecto';

  @override
  String get finance => 'Finanzas';

  @override
  String get monthlyBudgetNav => 'Presupuesto mensual';

  @override
  String get budgetSubtitle => 'Controla tu gasto mensual';

  @override
  String get data => 'Datos';

  @override
  String get backupNav => 'Copia de seguridad';

  @override
  String get backupSubtitle => 'Exporta o importa tus datos';

  @override
  String get about => 'Acerca de';

  @override
  String get version => 'Versión';

  @override
  String get privacy => 'Privacidad';

  @override
  String get termsOfUse => 'Términos de uso';

  @override
  String get myAchievements => 'Mis logros';

  @override
  String get itemsPurchased => 'Artículos comprados';

  @override
  String get totalSavings => 'Ahorros totales';

  @override
  String get currentStreak => 'Racha actual';

  @override
  String streakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '$count día',
    );
    return '$_temp0';
  }

  @override
  String get unlockedBadges => 'Insignias desbloqueadas';

  @override
  String get badgeBeginner => 'Principiante';

  @override
  String get badgeOrganized => 'Organizado';

  @override
  String get badgeSavingMaster => 'Maestro salvador';

  @override
  String get badgeSuperPlanner => 'Súper Planificador';

  @override
  String get backupTitle => 'Copia de seguridad';

  @override
  String get backupPremiumDescription =>
      'La copia de seguridad y exportación es una función premium';

  @override
  String get exportData => 'Exportar datos';

  @override
  String get exportDataSubtitle => 'Guardar todas las listas como JSON';

  @override
  String get importData => 'Importar datos';

  @override
  String get importDataSubtitle => 'Restaurar listas desde un JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Pega el JSON de la copia de seguridad aquí...';

  @override
  String get backupExported => '¡Copia de seguridad exportada!';

  @override
  String get budgetAppBar => 'Presupuesto mensual';

  @override
  String get budgetPremiumLocked => 'El presupuesto mensual global es premium';

  @override
  String get budgetUpgradePrompt => 'Actualiza para desbloquear';

  @override
  String get noBudgetDefined => 'Sin presupuesto definido';

  @override
  String totalEstimated(String amount) {
    return 'Total estimado: $amount';
  }

  @override
  String get setBudgetButton => 'Establecer presupuesto';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Importe';

  @override
  String get setBudgetTitle => 'Presupuesto mensual';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterPending => 'Pendientes';

  @override
  String get filterPurchased => 'Comprados';

  @override
  String get sortName => 'Nombre';

  @override
  String get sortCategory => 'Categoría';

  @override
  String get sortDate => 'Fecha';

  @override
  String get sortManual => 'Manual';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased de $total artículos';
  }

  @override
  String progressBudget(String amount) {
    return 'Presupuesto: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Total: $amount';
  }

  @override
  String get addItem => 'Añadir artículo';

  @override
  String get itemName => 'Nombre del artículo';

  @override
  String get quantityShort => 'Cant';

  @override
  String get unit => 'Unidad';

  @override
  String get category => 'Categoría';

  @override
  String get estimatedPrice => 'Precio estimado';

  @override
  String get addItemPrice => 'Precio estimado';

  @override
  String get editItem => 'Editar artículo';

  @override
  String get quantityFull => 'Cantidad';

  @override
  String get editItemPrice => 'Precio estimado';

  @override
  String get addToPantry => 'Añadir a la despensa';

  @override
  String addToPantryPrompt(String name) {
    return '¿Añadir \"$name\" a tu despensa?';
  }

  @override
  String get yes => 'Sí';

  @override
  String get productName => 'Nombre del producto';

  @override
  String get idealQty => 'Cant. ideal';

  @override
  String get currentQty => 'Cant. actual';

  @override
  String get trackStock => 'Controlar stock';

  @override
  String get trackStockActive => 'Aparece en sugerencias de compra';

  @override
  String get trackStockInactive => 'No genera sugerencia de compra';

  @override
  String get createListDialog => 'Crear lista';

  @override
  String get renameListDialog => 'Renombrar lista';

  @override
  String get listHistory => 'Historial de listas';

  @override
  String get myLists => 'Mis listas';

  @override
  String get viewActive => 'Ver activas';

  @override
  String get viewHistory => 'Ver historial';

  @override
  String get noArchivedLists => 'No hay listas archivadas';

  @override
  String get noActiveLists => 'No hay listas activas';

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
  String get deleteListTitle => 'Borrar lista';

  @override
  String deleteListContent(String name) {
    return '¿Estás seguro de que quieres borrar \"$name\"? Se eliminarán todos los artículos.';
  }

  @override
  String get removeSharedListTitle => 'Eliminar lista compartida';

  @override
  String removeSharedListContent(String name) {
    return '¿Eliminar \"$name\" de tus listas? La lista original no se verá afectada.';
  }

  @override
  String get createNewList => 'Crear nueva lista';

  @override
  String get aiAssistant => 'Asistente de IA';

  @override
  String get aiAssistantDescription =>
      'Obtén sugerencias inteligentes, recetas y consejos personalizados con nuestro asistente de IA.';

  @override
  String get generalAssistant => 'Asistente general';

  @override
  String get newChat => 'Nuevo chat';

  @override
  String get noHistory => 'Sin historial de chat';

  @override
  String get deleteSession => 'Eliminar chat';

  @override
  String get deleteSessionConfirm =>
      '¿Estás seguro de que quieres eliminar este chat? Los mensajes se perderán permanentemente.';

  @override
  String get clearHistory => 'Limpiar historial';

  @override
  String get clearHistoryConfirm =>
      '¿Borrar todos los mensajes de esta sesión?';

  @override
  String get chatHint => 'Escribe tu mensaje...';

  @override
  String get chatHintBlocked => 'Desbloquea la IA para chatear';

  @override
  String chatError(String error) {
    return 'Error al cargar el chat: $error';
  }

  @override
  String get aiAssistantTitle => 'Asistente de IA';

  @override
  String get closeSheet => 'Cerca';

  @override
  String get scanBarcodeTitle => 'Escanear código de barras';

  @override
  String get listHelp => '¿Cómo puedo ayudarte con tu lista?';

  @override
  String get generalHelp => '¿Cómo puedo ayudarte con tus compras hoy?';

  @override
  String get chatSubtitle =>
      'Pide sugerencias de artículos, recetas o consejos de ahorro.';

  @override
  String get aiError =>
      'Lo sentimos, se produjo un error al procesar tu solicitud. Comprueba tu conexión o inténtalo de nuevo más tarde.';

  @override
  String get aiLimitAlmostReached => 'Casi sin mensajes de IA';

  @override
  String get unlockAi => 'Desbloquea IA ilimitada';

  @override
  String get aiTeaserFallback =>
      'Suscríbete a Premium para desbloquear la respuesta completa y obtener consejos ilimitados de IA para tus compras...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Acciones de IA restantes este mes: actualice de forma ilimitada';
  }

  @override
  String get aiUsageExhausted =>
      'Se alcanzó el límite mensual de IA. Actualízate a Pro de forma ilimitada →';

  @override
  String get kipiListTitle => 'Lista Kipi';

  @override
  String get loginPrompt => 'Inicia sesión para desbloquear funciones premium';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get onboardingWelcomeTitle => 'Bienvenido a KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'La forma más inteligente de organizar tus compras y ahorrar dinero.';

  @override
  String get onboardingSetupTitle => 'Personaliza tu experiencia';

  @override
  String get onboardingSetupDesc =>
      'Elija cómo desea que KipiList se vea y funcione para usted.';

  @override
  String get onboardingLoginTitle => 'Guarda todo en la nube';

  @override
  String get onboardingLoginDesc =>
      'Tus datos sincronizados en todos tus dispositivos';

  @override
  String get onboardingShareTitle => 'Comparte con tus seres queridos';

  @override
  String get onboardingShareDesc =>
      'Sincroniza listas con familiares y amigos en tiempo real';

  @override
  String get onboardingPremiumTitle => 'Desbloquea todas las funciones';

  @override
  String get onboardingPremiumSubtitle =>
      'Sácale el máximo provecho a tus listas de compras';

  @override
  String get onboardingAnnualBadge => 'Mejor valor';

  @override
  String get onboardingMonthlyLabel => 'Mensual';

  @override
  String get onboardingAnnualLabel => 'Anual';

  @override
  String get onboardingViewAllPlans => 'Ver todos los planes';

  @override
  String get onboardingSubscribeCta => 'Suscribir';

  @override
  String get onboardingCancelAnytime =>
      'Cancele en cualquier momento. Sin compromiso.';

  @override
  String get onboardingContinueAsGuest => 'Continuar como invitado';

  @override
  String get onboardingRestore => 'Restaurar';

  @override
  String get onboardingRestoreDesc =>
      '¿Ya tienes una suscripción? Toque aquí para restaurarlo.';

  @override
  String get onboardingMaybeLater => 'tal vez más tarde';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hola $name, organiza tus compras de la manera correcta.';
  }

  @override
  String get onboardingSlide1Title => 'Listas de compras inteligentes';

  @override
  String get onboardingSlide1Body =>
      'Crea y comparte listas al instante. Kipi agrega elementos automáticamente según tus hábitos.';

  @override
  String get onboardingSlide2Title => 'Conoce a Kipi';

  @override
  String get onboardingSlide2Body =>
      'Pregunte cualquier cosa: cree listas, busque recetas, realice un seguimiento de su despensa, planifique su semana.';

  @override
  String get onboardingSlide3Title => 'Despensa y planificación de comidas';

  @override
  String get onboardingSlide3Body =>
      'Realice un seguimiento de lo que tiene, planifique comidas y genere listas de compras automáticamente.';

  @override
  String get onboardingExit => 'Salida';

  @override
  String get onboardingPersonalizationTitle => 'vamos a conocerte';

  @override
  String get onboardingPersonalizationDesc =>
      'Usaremos esto para personalizar sus sugerencias y hacer que las compras sean más inteligentes.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      '¿Cuál es tu comida favorita?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'p.ej. Pizza, sushi, lasaña...';

  @override
  String get onboardingPersonalizationCta => 'Continuar';

  @override
  String get onboardingPersonalizationSkip => 'Saltar por ahora';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Cuéntanos tu comida favorita para continuar';

  @override
  String get settingsDefaultScreen => 'Pantalla de inicio predeterminada';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Elija entre lista de compras o chat AI';

  @override
  String get settingsScreenList => 'Lista de compras';

  @override
  String get settingsScreenChat => 'Chat de IA';

  @override
  String loginError(String error) {
    return 'Error de inicio de sesión: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Error al cargar ofertas. Intentar otra vez.';

  @override
  String get paywallPurchaseError =>
      'No se pudo completar la compra. Intentar otra vez.';

  @override
  String get paywallRestoreError =>
      'No se encontró ninguna suscripción activa para restaurar.';

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
  String get paywallTrialTitle => '¡Pruébalo gratis!';

  @override
  String get paywallTrialSubtitle =>
      'Cancele en cualquier momento. Sin cargo hoy.';

  @override
  String get paywallTrialCta => 'Iniciar prueba gratuita';

  @override
  String get recipeAddToList => 'Añadir a la lista de compras';

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
      'Ninguna lista seleccionada. Primero abra una lista.';

  @override
  String get paywallFeaturesTitle => 'Todo lo que necesitas:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organiza tu lista automáticamente';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Crea tantas listas como necesites';

  @override
  String get paywallFeatureDescSharing => 'Compren juntos en tiempo real';

  @override
  String get paywallFeatureDescPantry => 'Sigue lo que tienes en casa';

  @override
  String get paywallFeatureDescBudget =>
      'Manténgase dentro del presupuesto todos los meses';

  @override
  String get paywallFeatureUnlimitedLists => 'Listas ilimitadas';

  @override
  String get paywallFeatureSmartAI => 'IA inteligente';

  @override
  String get paywallFeatureExpenseControl => 'Control de gastos';

  @override
  String get paywallFeatureSharing => 'Intercambio';

  @override
  String get paywallBeforeAfterTitle => 'IA antes y después:';

  @override
  String get paywallLabelCommon => 'Común';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'arroz';

  @override
  String get paywallBeforeItem2 => 'jabón';

  @override
  String get paywallBeforeItem3 => 'carne';

  @override
  String get paywallBeforeItem4 => 'pan';

  @override
  String get paywallAfterItem1 => 'Granos';

  @override
  String get paywallAfterItem2 => 'Limpieza';

  @override
  String get paywallAfterItem3 => 'carnes';

  @override
  String get paywallAfterItem4 => 'Panadería';

  @override
  String get paywallTestimonialsTitle => 'Lo que dicen nuestros usuarios:';

  @override
  String get paywallTestimonial1Name => 'Ana S.';

  @override
  String get paywallTestimonial1Text =>
      'La IA organiza mis compras en segundos. Ahorro 20 minutos por visita al mercado.';

  @override
  String get paywallTestimonial2Name => 'carlos m.';

  @override
  String get paywallTestimonial2Text =>
      'Nunca más olvidé un elemento de la lista. ¡El chat de IA es sensacional!';

  @override
  String get paywallSocialProof => '+2.400 familias lo utilizan';

  @override
  String get paywallCtaUnlock => 'Desbloquear PRO';

  @override
  String get paywallBestValue => 'MEJOR VALOR';

  @override
  String get paywallMostPopular => 'MÁS POPULAR';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Pago seguro';

  @override
  String get paywallSelectPlan => 'Elige tu plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'GUARDAR $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Sólo $price/mes';
  }

  @override
  String get paywallPackageAnnual => 'Plan Anual';

  @override
  String get paywallPackageMonthly => 'Plan Mensual';

  @override
  String get paywallPackageLifetime => 'Acceso de por vida';

  @override
  String get paywallCancelAnytime =>
      'Cancele en cualquier momento. Sin compromiso.';

  @override
  String paywallTrialInCard(int days) {
    return 'Primeros $days días GRATIS';
  }

  @override
  String get paywallSecuredByStore =>
      'Asegurado por Google Play · Cancelar en cualquier momento';

  @override
  String get paywallPolicy => 'política de privacidad';

  @override
  String get paywallTerms => 'Condiciones de uso';

  @override
  String get paywallRestore => 'Restaurar';

  @override
  String get paywallHeroHeadline => 'Kipi AI siempre a tu lado';

  @override
  String get paywallHeroSubtitle =>
      'Añade elementos, organiza listas y ahorra tiempo con la IA en tu bolsillo';

  @override
  String get paywallBenefit1Desc =>
      'Agrega, organiza y sugiere elementos 24 horas al día, 7 días a la semana';

  @override
  String get paywallBenefit2Desc => 'Sin límite de 3 listas';

  @override
  String get paywallBenefit3Desc => 'Seguimiento de gastos y listas familiares';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilidad total';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Empieza gratis: $days días';
  }

  @override
  String get premiumUpgrade => 'Actualiza para desbloquear';

  @override
  String get itemRemoved => 'Artículo eliminado';

  @override
  String get undo => 'Deshacer';

  @override
  String get emptyListTitle => 'Tu lista está vacía';

  @override
  String get emptyListSubtitle => 'Añade artículos para empezar';

  @override
  String get noListFoundTitle => 'No se encontraron listas';

  @override
  String get noListFoundSubtitle => 'Crea tu primera lista para empezar';

  @override
  String get createFirstList => 'Crear primera lista';

  @override
  String get listBudgetTitle => 'Presupuesto de la lista';

  @override
  String get budgetAmountLabel => 'Importe del presupuesto';

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
  String get prefMonthlyBudget => 'Presupuesto mensual global';

  @override
  String get prefAIAssistant => 'Asistente de IA personal';

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
  String get themeRed => 'Rojo';

  @override
  String get themeOrange => 'Naranja';

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
  String get catFruits => 'Frutas';

  @override
  String get catCleaning => 'Limpieza';

  @override
  String get catBeverages => 'Bebidas';

  @override
  String get catBakery => 'Panadería';

  @override
  String get catOthers => 'Otros';

  @override
  String get unitPack => 'paquete';

  @override
  String get shareSubject => 'Lista de la compra';

  @override
  String get monthlyBudgetTitle => 'Presupuesto mensual';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Borrar lista';

  @override
  String get pantryItemRemoved => 'Artículo eliminado';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit artículos necesitan comprarse',
      one: '$deficit artículo necesita comprarse',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total del carrito';

  @override
  String get restockLabel => 'Reabastecer';

  @override
  String get advancedFeatures => 'Funciones avanzadas';

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String get deselectAll => 'Deseleccionar todo';

  @override
  String get monthlyBudgetAppBar => 'Presupuesto mensual';

  @override
  String get budgetEditTitle => 'Presupuesto mensual';

  @override
  String get budgetDashboardTitle => 'Panel';

  @override
  String get selectListForDashboard =>
      'Selecciona una lista para ver el panel.';

  @override
  String get spendingAnalysis => 'Análisis de gastos';

  @override
  String get noItemsToAnalyze => 'No hay artículos en la lista para analizar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marca los artículos como comprados para ver el análisis.';

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
  String get yesLabel => 'Sí';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'Mi lista de la compra';

  @override
  String get emptyListAddItems =>
      '¡Tu lista está vacía! Añade artículos primero. ℹ️';

  @override
  String get listOrganizedMagic =>
      '¡Lista organizada mágicamente por categorías! ✨';

  @override
  String get shoppingMode => 'Modo compra';

  @override
  String get smartOrganization => 'Organización inteligente';

  @override
  String get savings => 'Ahorro';

  @override
  String get shoppingModeHeader => 'MODO COMPRA';

  @override
  String get shareAsText => 'Enviar artículos como texto formateado';

  @override
  String get shareRealtime =>
      'Sincronización en tiempo real con otras personas';

  @override
  String get quickRecipe => 'Receta rápida';

  @override
  String get quickRecipePrompt => 'Sugiere recetas con artículos de mi lista.';

  @override
  String get economyTips => 'Consejos de ahorro';

  @override
  String get economyTipsPrompt => '¿Cómo puedo ahorrar dinero en esta compra?';

  @override
  String get organizeAisles => 'Organizar por pasillos';

  @override
  String get organizeAislesPrompt => 'Organiza por pasillos del supermercado.';

  @override
  String get recipeSuggestion => 'Sugerencia de receta';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining créditos restantes';
  }

  @override
  String get addAllToList => 'Añadir todo a la lista';

  @override
  String get organizeByAisles => 'Organizar por pasillos';

  @override
  String get voiceTranscriptionTooltip => 'Escritura por voz (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'Comando de voz con IA (Premium)';

  @override
  String get voiceCommandTitle => 'Comando de voz con IA';

  @override
  String get voiceCommandContent =>
      '¡Habla de forma natural para gestionar tu lista!\n\nEjemplos:\n• \'Añade pan, queso y jamón\'\n• \'Elimina el detergente\'\n• \'Cambia el tema a azul\'\n\nEsta es una función exclusiva de KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Ver planes';

  @override
  String get itemsAddedSuccess => '¡Artículos añadidos a la lista con éxito!';

  @override
  String get viewList => 'Ver lista';

  @override
  String get feedbackTitle => 'Enviar comentarios';

  @override
  String get feedbackPrompt => '¿Qué te gustaría compartir?';

  @override
  String get feedbackTypeBug => 'Reportar error';

  @override
  String get feedbackTypeBugHint => 'Algo no funciona';

  @override
  String get feedbackTypeSuggestion => 'Sugerencia';

  @override
  String get feedbackTypeSuggestionHint => 'Idea para mejorar la aplicación';

  @override
  String get feedbackTypeTranslation => 'Problema de traducción';

  @override
  String get feedbackTypeTranslationHint =>
      'Traducción incorrecta o poco natural';

  @override
  String get feedbackTypeFeature => 'Solicitud de función';

  @override
  String get feedbackTypeFeatureHint => 'Función que te gustaría ver';

  @override
  String get feedbackTypeOther => 'Otro';

  @override
  String get feedbackTypeOtherHint => 'Otro tipo de comentario';

  @override
  String get feedbackHint => 'Describe tus comentarios en detalle...';

  @override
  String get feedbackSend => 'Enviar comentarios';

  @override
  String get feedbackSending => 'Enviando...';

  @override
  String get feedbackThankYou => '¡Gracias!';

  @override
  String get feedbackThankYouMessage =>
      'Hemos recibido tus comentarios y nos ayudan a mejorar KipiList para todos.';

  @override
  String get feedbackBack => 'Volver';

  @override
  String feedbackError(String error) {
    return 'Error al enviar: $error';
  }

  @override
  String get feedbackRetry => 'Intentar de nuevo';

  @override
  String get feedbackSettingsTitle => 'Enviar comentarios';

  @override
  String get feedbackSettingsSubtitle =>
      'Reporta errores, sugiere mejoras o corrige traducciones';

  @override
  String get aiEnergy => 'Energía de IA';

  @override
  String get searchInConversation => 'Buscar en conversación...';

  @override
  String get noMessagesFound => 'No se encontraron mensajes';

  @override
  String get suggestedQuestions => 'Preguntas sugeridas:';

  @override
  String get shoppingAssistant => 'asistente de compras';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased de $total comprado';
  }

  @override
  String get estimatedCost => 'Estimado';

  @override
  String get viewItems => 'Ver artículos';

  @override
  String get noItemsInList => 'No hay elementos en la lista';

  @override
  String get longHistoryWarning =>
      'Larga historia: el asistente se centra en los mensajes más recientes para un mejor rendimiento.';

  @override
  String get listening => 'Escuchando...';

  @override
  String get addDirectToList => 'Añadir directamente a la lista';

  @override
  String get unlockFullResponse => 'Desbloquear respuesta completa';

  @override
  String get switchList => 'Lista de cambios';

  @override
  String get marketMode => 'Modo de mercado';

  @override
  String get backToChat => 'Volver al chat';

  @override
  String get finishShopping => 'Terminar de comprar';

  @override
  String get welcomeAiAssistant => 'Bienvenido al Asistente de IA';

  @override
  String get createListToStartAi =>
      'Crea una lista de compras para comenzar a usar el chat inteligente.';

  @override
  String get howCanIHelp => '¿Cómo puedo ayudar?';

  @override
  String get chatSubtitleShort =>
      'Pregunta por precios, recetas, organización...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total comprado';
  }

  @override
  String get quickReplies => 'Respuestas rápidas:';

  @override
  String get voiceProFeature =>
      'Los comandos de voz avanzados son Pro. Habilitando el dictado básico...';

  @override
  String get viewPro => 'Ver profesional';

  @override
  String get errorLoadingChat => '¡Ups! Algo salió mal al cargar el chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Comprueba tu conexión o vuelve a intentarlo más tarde.';

  @override
  String get errorOscillation =>
      'Esto puede ocurrir debido a oscilaciones de la red o indisponibilidad temporal. Por favor inténtalo de nuevo.';

  @override
  String get activeListening => 'Escucha activa';

  @override
  String get whatToDoWithItem => '¿Qué te gustaría hacer con este artículo?';

  @override
  String get viewDetails => 'Ver detalles';

  @override
  String get openMenu => 'Abrir menú';

  @override
  String get viewRecipe => 'Ver receta';

  @override
  String get recipeCreated => '¡Receta creada!';

  @override
  String get editRecipe => 'Editar';

  @override
  String get deleteRecipe => 'Borrar';

  @override
  String get deleteRecipeConfirm => '¿Borrar esta receta?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '¿Estás seguro de que quieres borrar \"$recipeName\"? Esta acción no se puede deshacer.';
  }

  @override
  String get ingredients => 'Ingredientes';

  @override
  String get instructions => 'Instrucciones';

  @override
  String get prepTime => 'Tiempo de prep.';

  @override
  String get recipeSaved => '¡Receta guardada!';

  @override
  String get noRecipesSaved => 'No hay recetas guardadas';

  @override
  String get noRecipesSavedHint =>
      'Crea tu primera receta personalizada tocando el botón de abajo.';

  @override
  String get myRecipes => 'Mis recetas';

  @override
  String get newRecipe => 'Nueva receta';

  @override
  String get loadingRecipes => 'Cargando tus recetas...';

  @override
  String get errorLoadingRecipes => 'Error al cargar las recetas';

  @override
  String get addIngredient => 'Añadir ingrediente';

  @override
  String get saveRecipe => 'Guardar';

  @override
  String get recipeName => 'Nombre de la receta';

  @override
  String get shortDescription => 'Descripción corta';

  @override
  String get prepTimeMinutes => 'Tiempo de prep. (minutos)';

  @override
  String get instructionsHint => 'Escribe un paso por línea...';

  @override
  String get addPhoto => 'Añadir foto';

  @override
  String get imageUrlPlaceholder => 'O pega una URL de imagen';

  @override
  String get tags => 'Etiquetas';

  @override
  String get recipeTags => 'Etiquetas de la receta';

  @override
  String get suggestedTags => 'Sugeridas';

  @override
  String get searchRecipes => 'Buscar recetas...';

  @override
  String get filterByTag => 'Filtrar por etiqueta';

  @override
  String get allTags => 'Todos';

  @override
  String get recipeDeleted => 'Receta eliminada';

  @override
  String get saveChanges => 'Guardar cambios';

  @override
  String get editRecipeTitle => 'Editar receta';

  @override
  String get newRecipeTitle => 'Nueva receta';

  @override
  String get requiredField => 'Obligatorio';

  @override
  String get chooseImageSource => 'Elegir origen de la imagen';

  @override
  String get gallery => 'Galería';

  @override
  String get enterUrl => 'Introducir URL';

  @override
  String get recipeImage => 'Imagen de la receta';

  @override
  String get removeImage => 'Eliminar imagen';

  @override
  String get mealPlannerTitle => 'Planificador de comidas';

  @override
  String get mealPlannerViewMonthly => 'Vista mensual';

  @override
  String get mealPlannerViewWeekly => 'Vista semanal';

  @override
  String get mealPlannerNoMeals => 'No hay comidas planeadas';

  @override
  String get mealPlannerNoMealsHint => 'Toca un día para añadir una comida';

  @override
  String get mealPlannerLoading => 'Cargando plan de comidas...';

  @override
  String get mealPlannerError => 'Error al cargar el plan de comidas';

  @override
  String get mealPlannerAddMeal => 'Añadir comida';

  @override
  String get mealPlannerEditMeal => 'Editar comida';

  @override
  String get mealPlannerDeleteMeal => 'Eliminar comida';

  @override
  String get mealPlannerMealDeleted => 'Comida eliminada';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count raciones',
      one: '$count ración',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Raciones';

  @override
  String get mealPlannerNoteLabel => 'Nota (opcional)';

  @override
  String get mealPlannerSelectRecipe => 'Seleccionar una receta';

  @override
  String get mealPlannerSearchRecipes => 'Buscar recetas...';

  @override
  String get mealPlannerNoRecipesFound => 'No se encontraron recetas';

  @override
  String get mealPlannerNoRecipesHint =>
      'Crea recetas en la pestaña Recetas primero';

  @override
  String get mealPlannerSave => 'Añadir al plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count de $total comidas planeadas';
  }

  @override
  String get mealPlannerGenerateList => 'Generar lista de compras';

  @override
  String get mealPlannerGenerateListConfirm =>
      '¿Añadir todos los ingredientes de las comidas planeadas esta semana a tu lista de compras?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '¡$count ingrediente(s) añadido(s) a tu lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'No hay ingredientes que añadir. Planea algunas comidas con recetas primero.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Crea una lista de compras primero.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Desayuno';

  @override
  String get mealPlannerMealTypeLunch => 'Almuerzo';

  @override
  String get mealPlannerMealTypeDinner => 'Cena';

  @override
  String get mealPlannerMealTypeSnack => 'Merienda';

  @override
  String get mealPlannerDateLabel => 'Fecha';

  @override
  String get mealPlannerWeekEmpty => 'Nada planeado para esta semana';

  @override
  String get mealPlannerWeekEmptyHint =>
      '¡Toca cualquier día para empezar a planear tus comidas!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Invitar a la lista';

  @override
  String get shareApp => 'Compartir aplicación';

  @override
  String get shareAppDescription => 'Invita a tus amigos a usar KipiList';

  @override
  String shareReferralText(String url) {
    return '¡Estoy usando KipiList para organizar mis compras! Descárguelo a través de mi enlace y ambos obtendremos 7 días de Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => '¡Obtén 7 días de KipiList Premium!';

  @override
  String get gestureHint =>
      'Mantenga presionado para seleccionar • Deslice para eliminar';

  @override
  String get catalogTitle => 'Catalogar';

  @override
  String get catalogMyFrequents => 'mis frecuentes';

  @override
  String get catalogSearchGlobal => 'Busca cualquier producto...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Buscar en $category...';
  }

  @override
  String get catalogSortPopular => 'mas popular';

  @override
  String get catalogSortAZ => 'ARIZONA';

  @override
  String get catalogFilterNational => 'Nacionales';

  @override
  String get catalogRareSection => 'menos común en tu país';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Agregar $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Producto no encontrado, escriba el nombre';

  @override
  String get catalogBrowse => 'Explorar catálogo';

  @override
  String get offlineBanner => 'Estás desconectado';

  @override
  String get consentTitle => 'Privacidad y análisis';

  @override
  String get consentBody =>
      'KipiList utiliza Firebase Analytics para mejorar su experiencia. Sus datos se procesan de acuerdo con nuestra Política de Privacidad.';

  @override
  String get consentAccept => 'Aceptar';

  @override
  String get consentDecline => 'No, gracias';

  @override
  String get mealPlannerPantryAllAvailable =>
      'Todos los ingredientes disponibles';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 falta';
  }

  @override
  String get expirationDate => 'Fecha de expiración';

  @override
  String get notInformed => 'No establecido';

  @override
  String get skip => 'Saltar';

  @override
  String get onboardingAiTitle => 'Chatea con Kipi';

  @override
  String get onboardingAiGreeting =>
      '¡Hola! ¡Soy Kipi, tu asistente personal de compras! 🛒';

  @override
  String get onboardingAiAskName => '¿Cómo te llamas?';

  @override
  String get onboardingAiNameHint => 'Escribe tu nombre...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return '¡Encantado de conocerte, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => '¿Cuál es tu comida favorita?';

  @override
  String get onboardingAiFoodHint => 'p.ej. Pizzas, sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return '¡Grandes opciones! Esto es lo que agregaría a tu lista:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      '¿Esto se ve bien? ¡Intenta escribir algo más!';

  @override
  String get onboardingAiReady =>
      '¡Excelente! Estás listo para empezar. ¡Configuremos su cuenta!';

  @override
  String get onboardingAiContinue => 'Continuar →';

  @override
  String get connectionError => 'Error de conexión';

  @override
  String connectionErrorDesc(String error) {
    return 'Error: $error';
  }

  @override
  String get errorLoadingLists => 'Error al cargar listas';

  @override
  String get noListsFound => 'No se encontraron listas';

  @override
  String get backToToday => 'Volver a hoy';

  @override
  String get quickSuggestions => 'sugerencias rapidas';

  @override
  String get aiEnergyLow => 'Baja energía de IA';

  @override
  String get aiUnlockUnlimited => 'Desbloquea IA ilimitada';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 hoy';
  }

  @override
  String get aiSubscribeUnlimited => 'Suscríbete para obtener IA ilimitada';

  @override
  String get unlockWithAd => 'Desbloquear con anuncio';

  @override
  String get conversationHistoryTitle => 'Historial de conversaciones';

  @override
  String get noConversationsFound => 'No se encontraron conversaciones';

  @override
  String get errorLoadingHistory => 'Error al cargar el historial';

  @override
  String get deleteConversationTitle => 'Eliminar conversación';

  @override
  String get deleteConversationConfirm => 'Esta acción no se puede deshacer.';

  @override
  String get deleteConversation => 'Borrar';

  @override
  String get subscription => 'Suscripción';

  @override
  String get kipiListProActive => 'KipiList Pro Activo';

  @override
  String get unlockPremiumTitle => 'Desbloquear prima';

  @override
  String get loadingSubscription => 'Cargando suscripción...';

  @override
  String get errorLoadingSubscription => 'Error al cargar la suscripción';

  @override
  String get profileSection => 'Perfil';

  @override
  String get myProfile => 'mi perfil';

  @override
  String get profileSubtitle => 'Tu información de perfil';

  @override
  String get customizeAiAssistant => 'Personaliza el asistente de IA';

  @override
  String get assistantHistory => 'Historial del asistente';

  @override
  String get assistantHistorySubtitle => 'Ver tu historial de conversaciones';

  @override
  String get manageCategories => 'Administrar categorías';

  @override
  String get manageCategoriesSubtitle =>
      'Agregar, editar o eliminar categorías';

  @override
  String get customizeAssistant => 'Personalizar';

  @override
  String get assistantName => 'Nombre del asistente';

  @override
  String get chooseIcon => 'Elija el icono';

  @override
  String get profileSaved => 'Perfil guardado';

  @override
  String get errorSavingProfile => 'Error al guardar perfil';

  @override
  String get userProfile => 'Perfil de usuario';

  @override
  String get profileDescription => 'Descripción del perfil';

  @override
  String get preferredMarket => 'Mercado preferido';

  @override
  String get preferredMarketHint => '¿Dónde sueles comprar?';

  @override
  String get dietaryRestrictions => 'Restricciones dietéticas';

  @override
  String get dietaryRestrictionsHint => '¿Alguna restricción dietética?';

  @override
  String get marketsToAvoid => 'Mercados a evitar';

  @override
  String get marketsToAvoidHint => 'Mercados en los que prefiere no comprar';

  @override
  String get observations => 'Observaciones';

  @override
  String get observationsHint => '¿Alguna nota adicional?';

  @override
  String get saveProfile => 'Guardar perfil';

  @override
  String get everythingReady => '¡Todo listo!';

  @override
  String get youCompletedList => '¡Has completado la lista!';

  @override
  String get selectCheaperAlternative =>
      'Seleccione una alternativa más barata';

  @override
  String get suggestedItems => 'Artículos sugeridos';

  @override
  String get swapped => 'Intercambiado';

  @override
  String get swap => 'Intercambio';

  @override
  String get chooseThemeColor => 'Elige el color del tema';

  @override
  String get manageCategoriesTitle => 'Administrar categorías';

  @override
  String get categoryLimitReached => 'Límite de categoría alcanzado';

  @override
  String get deleteCategoryTitle => 'Eliminar categoría';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Los elementos de \"$category\" se moverán a \"Otros\".\n¿Continuar?';
  }

  @override
  String get deleteCategory => 'Borrar';

  @override
  String get newCategoryDialog => 'Nueva categoría';

  @override
  String get editCategoryDialog => 'Editar categoría';

  @override
  String get categoryName => 'Nombre de categoría';

  @override
  String get categoryNameHint => 'Introduzca el nombre de la categoría';

  @override
  String get categoryColorLabel => 'Color';

  @override
  String get categoryIconLabel => 'Icono';

  @override
  String itemAddedSnack(String name) {
    return '$name añadido';
  }

  @override
  String get kipiQuickBarHint => '¿Qué necesitas comprar?';

  @override
  String replaceItem(String item) {
    return 'Reemplazar $item';
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
      'Nunca más olvides un artículo del supermercado';

  @override
  String get onboardingGoalSaveMoney => 'ahorrar dinero';

  @override
  String get onboardingGoalNeverForget => 'Nunca olvides los artículos';

  @override
  String get onboardingGoalFaster => 'Compra más rápido';

  @override
  String get onboardingGoalFamily => 'Organizar compras familiares';

  @override
  String get onboardingGoalRecipes => 'Descubre recetas';

  @override
  String get onboardingGoalPantry => 'Despensa de pista';

  @override
  String get onboardingCommitmentsTitle => '¿Qué te importa?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Elige tus objetivos para personalizar KipiList';

  @override
  String get onboardingCommitmentsCta => '¡Vamos!';

  @override
  String get onboardingPersonalizationNameLabel => 'Su nombre';

  @override
  String get onboardingPersonalizationNameHint => 'Introduce tu nombre';

  @override
  String get onboardingPersonalizationCategoryTitle => '¿Qué compras?';

  @override
  String get onboardingPersonalizationGroupTitle => '¿Para quién compras?';

  @override
  String get onboardingCategoryGrocery => 'Comestibles';

  @override
  String get onboardingCategoryPharmacy => 'Farmacia';

  @override
  String get onboardingCategoryRecipes => 'Recetas';

  @override
  String get onboardingCategoryHome => 'Hogar';

  @override
  String get onboardingCategoryPet => 'Mascota';

  @override
  String get onboardingGroupSolo => 'Sólo yo';

  @override
  String get onboardingGroupCouple => 'Pareja';

  @override
  String get onboardingGroupFamily => 'Familia';

  @override
  String get onboardingLoadingTitle => 'Preparando tu experiencia...';

  @override
  String get onboardingLoadingStep1 => 'Analizando tus preferencias...';

  @override
  String get onboardingLoadingStep2 => 'Configurando el asistente de IA...';

  @override
  String get onboardingLoadingStep3 => 'Casi listo...';

  @override
  String get onboardingLoadingStat1Label => 'Artículos catalogados';

  @override
  String get onboardingLoadingStat2Label => 'Los usuarios ayudaron';

  @override
  String get onboardingLoadingStat3Label => 'Minutos guardados';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, ¡ahorra en cada viaje!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, ¡nunca olvides un artículo!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, ¡compra en la mitad de tiempo!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, ¡organiza compras familiares!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, ¡descubre nuevas recetas!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, ¡sigue tu despensa perfectamente!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => '¡Ahorra en cada viaje!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      '¡Nunca olvides un artículo!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      '¡Compre en la mitad del tiempo!';

  @override
  String get paywallGoalHeadlineNoNameFamily => '¡Organiza compras familiares!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => '¡Descubre nuevas recetas!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      '¡Sigue tu despensa perfectamente!';

  @override
  String paywallPricePerDay(String price) {
    return 'Sólo $price/día: menos que un café';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Saltar por ahora';

  @override
  String get paywallTestimonial =>
      'La IA organiza mis compras en segundos. Me ahorro 20 min por viaje.';

  @override
  String get paywallTestimonialAuthor => 'Ana S.';

  @override
  String get paywallTrialDisclaimer =>
      'Cancela en cualquier momento · Sin cargo hasta que finalice tu prueba';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hola $name! ¿Qué $category necesitas?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return '¿Qué $category necesitas?';
  }

  @override
  String get onboardingAiDemoYes => '¡Sí!';

  @override
  String get onboardingAiDemoReaction => '¡Lindo!';

  @override
  String get onboardingAiDemoChange => 'Cambiar artículo';

  @override
  String get onboardingAiDemoOffer => '¡Intenta escribir algo más!';

  @override
  String get onboardingAiDemoContinue => 'Continuar';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Tu lista de compras, ahora con IA';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Vea cómo Kipi crea su lista completa en segundos';

  @override
  String get onboardingAiDemoSlideCta => '¡Quiero esto! →';

  @override
  String get onboardingAiDemoSlideUserMsg =>
      'Estoy organizando una barbacoa 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      '¡Listo! Aquí tienes todo lo que necesitas:';

  @override
  String get onboardingAiDemoSlideDone => 'Lista completa en segundos ✨';

  @override
  String get onboardingPainTitle => '¿Qué es lo que más te frustra?';

  @override
  String get onboardingPainSubtitle => 'Sea honesto: arreglaremos cada uno';

  @override
  String get onboardingPainCta => 'Sí, arregla esto por mí →';

  @override
  String get onboardingPainForget => 'Olvidé artículos en la tienda.';

  @override
  String get onboardingPainFamily => 'Mi familia nunca ve la lista.';

  @override
  String get onboardingPainOverspend => 'Siempre me paso del presupuesto';

  @override
  String get onboardingPainRepeat => 'Un viaje nunca es suficiente';

  @override
  String get aiWelcomeContent =>
      '¡Hola! 👋 ¡Soy **Kipi**, tu asistente personal de compras y recetas!\n\nEstoy aquí para ayudarte:\n🛒 **Organiza** tus compras por categorías automáticamente\n💰 **Haga un seguimiento** de su presupuesto y brinde consejos para ahorrar dinero\n🍲 **Sugiere** recetas deliciosas con lo que ya tienes\n\n¿Cómo puedo ayudarte hoy? ¡Puedes empezar creando tu primera lista!';

  @override
  String get aiWelcomeSuggestCreateList => 'Crear mi primera lista';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, ayúdame a crear mi primera lista de compras.';

  @override
  String get aiWelcomeSuggestSave => '¿Cómo ahorrar dinero?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, ¿cómo puedes ayudarme a ahorrar dinero en la compra?';

  @override
  String get suggestionMilk => 'Leche';

  @override
  String get suggestionBread => 'Pan';

  @override
  String get suggestionEggs => 'Huevos';

  @override
  String get suggestionCoffee => 'Café';

  @override
  String get suggestionRice => 'Arroz';

  @override
  String get suggestionFruits => 'frutas';
}

/// The translations for Spanish Castilian, as used in Spain (`es_ES`).
class AppLocalizationsEsEs extends AppLocalizationsEs {
  AppLocalizationsEsEs() : super('es_ES');

  @override
  String get appTitle => 'Lista de Compras';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Despensa';

  @override
  String get navChat => 'Charlar';

  @override
  String get navRecipes => 'Recetas';

  @override
  String get navLists => 'Listas';

  @override
  String get navMealPlanner => 'Menú';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Guardar';

  @override
  String get create => 'Crear';

  @override
  String get add => 'Añadir';

  @override
  String get remove => 'Eliminar';

  @override
  String get delete => 'Borrar';

  @override
  String get edit => 'Editar';

  @override
  String get copy => 'Copiar';

  @override
  String get next => 'Próximo';

  @override
  String get retry => 'Reintentar';

  @override
  String get regenerate => 'Regenerar';

  @override
  String get copiedToClipboard => 'Copiado al portapapeles';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Cerrar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renombrar';

  @override
  String get upgrade => 'Actualizar';

  @override
  String get clear => 'Limpiar';

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
      'Error al procesar la compra. Inténtalo de nuevo.';

  @override
  String get restoreError => 'Error al restaurar compras. Inténtalo de nuevo.';

  @override
  String get loading => 'Cargando...';

  @override
  String get fieldRequired => 'Campo obligatorio';

  @override
  String get addedFeedback => '¡Añadido!';

  @override
  String get profile => 'Perfil';

  @override
  String get exitShoppingMode => 'Salir del modo de compras';

  @override
  String get exit => 'Salida';

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
  String get alreadyPurchased => 'Ya comprado';

  @override
  String get clearList => 'Limpiar lista';

  @override
  String get clearPurchased => 'Limpiar comprados';

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
  String get becomePremium => 'Hazte Premium';

  @override
  String get manageSubscription => 'Gestionar suscripción';

  @override
  String get completePurchase => 'Completar compra';

  @override
  String get confirmClearList => '¿Eliminar todos los artículos?';

  @override
  String get shareListTitle => 'Compartir lista';

  @override
  String get shareThisCode => 'Comparte este código:';

  @override
  String get validForLimitedTime => 'Válido por tiempo limitado';

  @override
  String get importListTitle => 'Importar lista';

  @override
  String get enterCodeHint => 'Introduce el código';

  @override
  String get confirmArchiveTitle => 'Completar compra';

  @override
  String get confirmArchiveContent =>
      '¿Completar esta compra y archivar la lista?';

  @override
  String get complete => 'Completar';

  @override
  String get listArchived => '¡Lista archivada con éxito!';

  @override
  String listAdded(String listName) {
    return '¡$listName añadida!';
  }

  @override
  String get buy => 'Comprar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return '¿Eliminar $count artículo(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return '¿Eliminar $count artículo(s)?';
  }

  @override
  String get archiveList => 'Archivar lista';

  @override
  String get pantryAppBar => 'Despensa';

  @override
  String get generateShoppingList => 'Generar lista de compras';

  @override
  String get pantryEmpty => 'Despensa vacía';

  @override
  String get pantryEmptySubtitle => 'Añade productos que quieras tener en casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit artículo(s) necesita(n) comprarse';
  }

  @override
  String get noItemsToBuy => 'No hay artículos que comprar';

  @override
  String get newPantryList => 'Compras de despensa';

  @override
  String get newListTitle => 'Nueva lista de compras';

  @override
  String itemsWillBeAdded(int count) {
    return 'Se añadirán $count artículo(s)';
  }

  @override
  String get listNameLabel => 'Nombre de la lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" creada con $count artículos';
  }

  @override
  String get noTracking => 'Sin seguimiento';

  @override
  String get markAsPurchased => 'Marcar como comprado';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Cantidad ideal';

  @override
  String get currentQuantity => 'Cantidad actual';

  @override
  String get consumed => 'Consumido';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastecido a $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return '¿Eliminar \"$name\" de la despensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get scanProductTitle => 'Escanear producto';

  @override
  String get positionBarcodeCenter =>
      'Coloque el código de barras en el centro.';

  @override
  String get product => 'Producto';

  @override
  String get settingsAppBar => 'Ajustes';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'Inglés';

  @override
  String get languageSystem => 'Predeterminado del sistema';

  @override
  String get chooseLanguage => 'Seleccionar idioma';

  @override
  String get searchLanguage => 'Buscar idioma...';

  @override
  String get currency => 'Divisa';

  @override
  String get chooseCurrency => 'Seleccionar moneda';

  @override
  String get searchCurrency => 'Buscar moneda...';

  @override
  String get appearance => 'Apariencia';

  @override
  String get light => 'Claro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Oscuro';

  @override
  String get themeColor => 'Color del tema';

  @override
  String get dynamicColors => 'Colores dinámicos';

  @override
  String get dynamicColorsSubtitle =>
      'Usa colores basados en tu fondo de pantalla';

  @override
  String get dynamicColorsEnabledWarning =>
      'Desactive los colores dinámicos para que el color del tema surta efecto';

  @override
  String get finance => 'Finanzas';

  @override
  String get monthlyBudgetNav => 'Presupuesto mensual';

  @override
  String get budgetSubtitle => 'Controla tu gasto mensual';

  @override
  String get data => 'Datos';

  @override
  String get backupNav => 'Copia de seguridad';

  @override
  String get backupSubtitle => 'Exporta o importa tus datos';

  @override
  String get about => 'Acerca de';

  @override
  String get version => 'Versión';

  @override
  String get privacy => 'Privacidad';

  @override
  String get termsOfUse => 'Términos de uso';

  @override
  String get myAchievements => 'Mis logros';

  @override
  String get itemsPurchased => 'Artículos comprados';

  @override
  String get totalSavings => 'Ahorros totales';

  @override
  String get currentStreak => 'Racha actual';

  @override
  String streakDays(int count) {
    return '$days días';
  }

  @override
  String get unlockedBadges => 'Insignias desbloqueadas';

  @override
  String get badgeBeginner => 'Principiante';

  @override
  String get badgeOrganized => 'Organizado';

  @override
  String get badgeSavingMaster => 'Maestro salvador';

  @override
  String get badgeSuperPlanner => 'Súper Planificador';

  @override
  String get backupTitle => 'Copia de seguridad';

  @override
  String get backupPremiumDescription =>
      'La copia de seguridad y exportación es una función premium';

  @override
  String get exportData => 'Exportar datos';

  @override
  String get exportDataSubtitle => 'Guardar todas las listas como JSON';

  @override
  String get importData => 'Importar datos';

  @override
  String get importDataSubtitle => 'Restaurar listas desde un JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Pega el JSON de la copia de seguridad aquí...';

  @override
  String get backupExported => '¡Copia de seguridad exportada!';

  @override
  String get budgetAppBar => 'Presupuesto mensual';

  @override
  String get budgetPremiumLocked => 'El presupuesto mensual global es premium';

  @override
  String get budgetUpgradePrompt => 'Actualiza para desbloquear';

  @override
  String get noBudgetDefined => 'Sin presupuesto definido';

  @override
  String totalEstimated(String amount) {
    return 'Total estimado: $amount';
  }

  @override
  String get setBudgetButton => 'Establecer presupuesto';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Importe';

  @override
  String get setBudgetTitle => 'Presupuesto mensual';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterPending => 'Pendientes';

  @override
  String get filterPurchased => 'Comprados';

  @override
  String get sortName => 'Nombre';

  @override
  String get sortCategory => 'Categoría';

  @override
  String get sortDate => 'Fecha';

  @override
  String get sortManual => 'Manual';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased de $total artículos';
  }

  @override
  String progressBudget(String amount) {
    return 'Presupuesto: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Total: $amount';
  }

  @override
  String get addItem => 'Añadir artículo';

  @override
  String get itemName => 'Nombre del artículo';

  @override
  String get quantityShort => 'Cant';

  @override
  String get unit => 'Unidad';

  @override
  String get category => 'Categoría';

  @override
  String get estimatedPrice => 'Precio estimado';

  @override
  String get addItemPrice => 'Precio estimado';

  @override
  String get editItem => 'Editar artículo';

  @override
  String get quantityFull => 'Cantidad';

  @override
  String get editItemPrice => 'Precio estimado';

  @override
  String get addToPantry => 'Añadir a la despensa';

  @override
  String addToPantryPrompt(String name) {
    return '¿Añadir \"$name\" a tu despensa?';
  }

  @override
  String get yes => 'Sí';

  @override
  String get productName => 'Nombre del producto';

  @override
  String get idealQty => 'Cant. ideal';

  @override
  String get currentQty => 'Cant. actual';

  @override
  String get trackStock => 'Controlar stock';

  @override
  String get trackStockActive => 'Aparece en sugerencias de compra';

  @override
  String get trackStockInactive => 'No genera sugerencia de compra';

  @override
  String get createListDialog => 'Crear lista';

  @override
  String get renameListDialog => 'Renombrar lista';

  @override
  String get listHistory => 'Historial de listas';

  @override
  String get myLists => 'Mis listas';

  @override
  String get viewActive => 'Ver activas';

  @override
  String get viewHistory => 'Ver historial';

  @override
  String get noArchivedLists => 'No hay listas archivadas';

  @override
  String get noActiveLists => 'No hay listas activas';

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
  String get deleteListTitle => 'Borrar lista';

  @override
  String deleteListContent(String name) {
    return '¿Estás seguro de que quieres borrar \"$name\"? Se eliminarán todos los artículos.';
  }

  @override
  String get removeSharedListTitle => 'Eliminar lista compartida';

  @override
  String removeSharedListContent(String name) {
    return '¿Eliminar \"$name\" de tus listas? La lista original no se verá afectada.';
  }

  @override
  String get createNewList => 'Crear nueva lista';

  @override
  String get aiAssistant => 'Asistente de IA';

  @override
  String get aiAssistantDescription =>
      'Obtén sugerencias inteligentes, recetas y consejos personalizados con nuestro asistente de IA.';

  @override
  String get generalAssistant => 'Asistente general';

  @override
  String get newChat => 'Nuevo chat';

  @override
  String get noHistory => 'Sin historial de chat';

  @override
  String get deleteSession => 'Eliminar chat';

  @override
  String get deleteSessionConfirm =>
      '¿Estás seguro de que quieres eliminar este chat? Los mensajes se perderán permanentemente.';

  @override
  String get clearHistory => 'Limpiar historial';

  @override
  String get clearHistoryConfirm =>
      '¿Borrar todos los mensajes de esta sesión?';

  @override
  String get chatHint => 'Escribe tu mensaje...';

  @override
  String get chatHintBlocked => 'Desbloquea la IA para chatear';

  @override
  String chatError(String error) {
    return 'Error al cargar el chat: $error';
  }

  @override
  String get aiAssistantTitle => 'Asistente de IA';

  @override
  String get closeSheet => 'Cerca';

  @override
  String get scanBarcodeTitle => 'Escanear código de barras';

  @override
  String get listHelp => '¿Cómo puedo ayudarte con tu lista?';

  @override
  String get generalHelp => '¿Cómo puedo ayudarte con tus compras hoy?';

  @override
  String get chatSubtitle =>
      'Pide sugerencias de artículos, recetas o consejos de ahorro.';

  @override
  String get aiError =>
      'Lo sentimos, se produjo un error al procesar tu solicitud. Comprueba tu conexión o inténtalo de nuevo más tarde.';

  @override
  String get aiLimitAlmostReached => 'Casi sin mensajes de IA';

  @override
  String get unlockAi => 'Desbloquea IA ilimitada';

  @override
  String get aiTeaserFallback =>
      'Suscríbete a Premium para desbloquear la respuesta completa y obtener consejos ilimitados de IA para tus compras...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Acciones de IA restantes este mes: actualice de forma ilimitada';
  }

  @override
  String get aiUsageExhausted =>
      'Se alcanzó el límite mensual de IA. Actualízate a Pro de forma ilimitada →';

  @override
  String get kipiListTitle => 'Lista Kipi';

  @override
  String get loginPrompt => 'Inicia sesión para desbloquear funciones premium';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get onboardingWelcomeTitle => 'Bienvenido a KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'La forma más inteligente de organizar tus compras y ahorrar dinero.';

  @override
  String get onboardingSetupTitle => 'Personaliza tu experiencia';

  @override
  String get onboardingSetupDesc =>
      'Elija cómo desea que KipiList se vea y funcione para usted.';

  @override
  String get onboardingLoginTitle => 'Guarda todo en la nube';

  @override
  String get onboardingLoginDesc =>
      'Tus datos sincronizados en todos tus dispositivos';

  @override
  String get onboardingShareTitle => 'Comparte con tus seres queridos';

  @override
  String get onboardingShareDesc =>
      'Sincroniza listas con familiares y amigos en tiempo real';

  @override
  String get onboardingPremiumTitle => 'Desbloquea todas las funciones';

  @override
  String get onboardingPremiumSubtitle =>
      'Sácale el máximo provecho a tus listas de compras';

  @override
  String get onboardingAnnualBadge => 'Mejor valor';

  @override
  String get onboardingMonthlyLabel => 'Mensual';

  @override
  String get onboardingAnnualLabel => 'Anual';

  @override
  String get onboardingViewAllPlans => 'Ver todos los planes';

  @override
  String get onboardingSubscribeCta => 'Suscribir';

  @override
  String get onboardingCancelAnytime =>
      'Cancele en cualquier momento. Sin compromiso.';

  @override
  String get onboardingContinueAsGuest => 'Continuar como invitado';

  @override
  String get onboardingRestore => 'Restaurar';

  @override
  String get onboardingRestoreDesc =>
      '¿Ya tienes una suscripción? Toque aquí para restaurarlo.';

  @override
  String get onboardingMaybeLater => 'tal vez más tarde';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hola $name, organiza tus compras de la manera correcta.';
  }

  @override
  String get onboardingSlide1Title => 'Listas de compras inteligentes';

  @override
  String get onboardingSlide1Body =>
      'Crea y comparte listas al instante. Kipi agrega elementos automáticamente según tus hábitos.';

  @override
  String get onboardingSlide2Title => 'Conoce a Kipi';

  @override
  String get onboardingSlide2Body =>
      'Pregunte cualquier cosa: cree listas, busque recetas, realice un seguimiento de su despensa, planifique su semana.';

  @override
  String get onboardingSlide3Title => 'Despensa y planificación de comidas';

  @override
  String get onboardingSlide3Body =>
      'Realice un seguimiento de lo que tiene, planifique comidas y genere listas de compras automáticamente.';

  @override
  String get onboardingExit => 'Salida';

  @override
  String get onboardingPersonalizationTitle => 'vamos a conocerte';

  @override
  String get onboardingPersonalizationDesc =>
      'Usaremos esto para personalizar sus sugerencias y hacer que las compras sean más inteligentes.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      '¿Cuál es tu comida favorita?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'p.ej. Pizza, sushi, lasaña...';

  @override
  String get onboardingPersonalizationCta => 'Continuar';

  @override
  String get onboardingPersonalizationSkip => 'Saltar por ahora';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Cuéntanos tu comida favorita para continuar';

  @override
  String get settingsDefaultScreen => 'Pantalla de inicio predeterminada';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Elija entre lista de compras o chat AI';

  @override
  String get settingsScreenList => 'Lista de compras';

  @override
  String get settingsScreenChat => 'Chat de IA';

  @override
  String loginError(String error) {
    return 'Error de inicio de sesión: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Error al cargar ofertas. Intentar otra vez.';

  @override
  String get paywallPurchaseError =>
      'No se pudo completar la compra. Intentar otra vez.';

  @override
  String get paywallRestoreError =>
      'No se encontró ninguna suscripción activa para restaurar.';

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
  String get paywallTrialTitle => '¡Pruébalo gratis!';

  @override
  String get paywallTrialSubtitle =>
      'Cancele en cualquier momento. Sin cargo hoy.';

  @override
  String get paywallTrialCta => 'Iniciar prueba gratuita';

  @override
  String get recipeAddToList => 'Añadir a la lista de compras';

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
      'Ninguna lista seleccionada. Primero abra una lista.';

  @override
  String get paywallFeaturesTitle => 'Todo lo que necesitas:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organiza tu lista automáticamente';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Crea tantas listas como necesites';

  @override
  String get paywallFeatureDescSharing => 'Compren juntos en tiempo real';

  @override
  String get paywallFeatureDescPantry => 'Sigue lo que tienes en casa';

  @override
  String get paywallFeatureDescBudget =>
      'Manténgase dentro del presupuesto todos los meses';

  @override
  String get paywallFeatureUnlimitedLists => 'Listas ilimitadas';

  @override
  String get paywallFeatureSmartAI => 'IA inteligente';

  @override
  String get paywallFeatureExpenseControl => 'Control de gastos';

  @override
  String get paywallFeatureSharing => 'Intercambio';

  @override
  String get paywallBeforeAfterTitle => 'IA antes y después:';

  @override
  String get paywallLabelCommon => 'Común';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'arroz';

  @override
  String get paywallBeforeItem2 => 'jabón';

  @override
  String get paywallBeforeItem3 => 'carne';

  @override
  String get paywallBeforeItem4 => 'pan';

  @override
  String get paywallAfterItem1 => 'Granos';

  @override
  String get paywallAfterItem2 => 'Limpieza';

  @override
  String get paywallAfterItem3 => 'carnes';

  @override
  String get paywallAfterItem4 => 'Panadería';

  @override
  String get paywallTestimonialsTitle => 'Lo que dicen nuestros usuarios:';

  @override
  String get paywallTestimonial1Name => 'Ana S.';

  @override
  String get paywallTestimonial1Text =>
      'La IA organiza mis compras en segundos. Ahorro 20 minutos por visita al mercado.';

  @override
  String get paywallTestimonial2Name => 'carlos m.';

  @override
  String get paywallTestimonial2Text =>
      'Nunca más olvidé un elemento de la lista. ¡El chat de IA es sensacional!';

  @override
  String get paywallSocialProof => '+2.400 familias lo utilizan';

  @override
  String get paywallCtaUnlock => 'Desbloquear PRO';

  @override
  String get paywallBestValue => 'MEJOR VALOR';

  @override
  String get paywallMostPopular => 'MÁS POPULAR';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Pago seguro';

  @override
  String get paywallSelectPlan => 'Elige tu plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'GUARDAR $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Sólo $price/mes';
  }

  @override
  String get paywallPackageAnnual => 'Plan Anual';

  @override
  String get paywallPackageMonthly => 'Plan Mensual';

  @override
  String get paywallPackageLifetime => 'Acceso de por vida';

  @override
  String get paywallCancelAnytime =>
      'Cancele en cualquier momento. Sin compromiso.';

  @override
  String paywallTrialInCard(int days) {
    return 'Primeros $days días GRATIS';
  }

  @override
  String get paywallSecuredByStore =>
      'Asegurado por Google Play · Cancelar en cualquier momento';

  @override
  String get paywallPolicy => 'política de privacidad';

  @override
  String get paywallTerms => 'Condiciones de uso';

  @override
  String get paywallRestore => 'Restaurar';

  @override
  String get paywallHeroHeadline => 'Kipi AI siempre a tu lado';

  @override
  String get paywallHeroSubtitle =>
      'Añade elementos, organiza listas y ahorra tiempo con la IA en tu bolsillo';

  @override
  String get paywallBenefit1Desc =>
      'Agrega, organiza y sugiere elementos 24 horas al día, 7 días a la semana';

  @override
  String get paywallBenefit2Desc => 'Sin límite de 3 listas';

  @override
  String get paywallBenefit3Desc => 'Seguimiento de gastos y listas familiares';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilidad total';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Empieza gratis: $days días';
  }

  @override
  String get premiumUpgrade => 'Actualiza para desbloquear';

  @override
  String get itemRemoved => 'Artículo eliminado';

  @override
  String get undo => 'Deshacer';

  @override
  String get emptyListTitle => 'Tu lista está vacía';

  @override
  String get emptyListSubtitle => 'Añade artículos para empezar';

  @override
  String get noListFoundTitle => 'No se encontraron listas';

  @override
  String get noListFoundSubtitle => 'Crea tu primera lista para empezar';

  @override
  String get createFirstList => 'Crear primera lista';

  @override
  String get listBudgetTitle => 'Presupuesto de la lista';

  @override
  String get budgetAmountLabel => 'Importe del presupuesto';

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
  String get prefMonthlyBudget => 'Presupuesto mensual global';

  @override
  String get prefAIAssistant => 'Asistente de IA personal';

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
  String get themeRed => 'Rojo';

  @override
  String get themeOrange => 'Naranja';

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
  String get catFruits => 'Frutas';

  @override
  String get catCleaning => 'Limpieza';

  @override
  String get catBeverages => 'Bebidas';

  @override
  String get catBakery => 'Panadería';

  @override
  String get catOthers => 'Otros';

  @override
  String get unitPack => 'paquete';

  @override
  String get shareSubject => 'Lista de la compra';

  @override
  String get monthlyBudgetTitle => 'Presupuesto mensual';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Borrar lista';

  @override
  String get pantryItemRemoved => 'Artículo eliminado';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit artículos necesitan comprarse',
      one: '$deficit artículo necesita comprarse',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total del carrito';

  @override
  String get restockLabel => 'Reabastecer';

  @override
  String get advancedFeatures => 'Funciones avanzadas';

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String get deselectAll => 'Deseleccionar todo';

  @override
  String get monthlyBudgetAppBar => 'Presupuesto mensual';

  @override
  String get budgetEditTitle => 'Presupuesto mensual';

  @override
  String get budgetDashboardTitle => 'Panel';

  @override
  String get selectListForDashboard =>
      'Selecciona una lista para ver el panel.';

  @override
  String get spendingAnalysis => 'Análisis de gastos';

  @override
  String get noItemsToAnalyze => 'No hay artículos en la lista para analizar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marca los artículos como comprados para ver el análisis.';

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
  String get yesLabel => 'Sí';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'Mi lista de la compra';

  @override
  String get emptyListAddItems =>
      '¡Tu lista está vacía! Añade artículos primero. ℹ️';

  @override
  String get listOrganizedMagic =>
      '¡Lista organizada mágicamente por categorías! ✨';

  @override
  String get shoppingMode => 'Modo compra';

  @override
  String get smartOrganization => 'Organización inteligente';

  @override
  String get savings => 'Ahorro';

  @override
  String get shoppingModeHeader => 'MODO COMPRA';

  @override
  String get shareAsText => 'Enviar artículos como texto formateado';

  @override
  String get shareRealtime =>
      'Sincronización en tiempo real con otras personas';

  @override
  String get quickRecipe => 'Receta rápida';

  @override
  String get quickRecipePrompt => 'Sugiere recetas con artículos de mi lista.';

  @override
  String get economyTips => 'Consejos de ahorro';

  @override
  String get economyTipsPrompt => '¿Cómo puedo ahorrar dinero en esta compra?';

  @override
  String get organizeAisles => 'Organizar por pasillos';

  @override
  String get organizeAislesPrompt => 'Organiza por pasillos del supermercado.';

  @override
  String get recipeSuggestion => 'Sugerencia de receta';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining créditos restantes';
  }

  @override
  String get addAllToList => 'Añadir todo a la lista';

  @override
  String get organizeByAisles => 'Organizar por pasillos';

  @override
  String get voiceTranscriptionTooltip => 'Escritura por voz (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'Comando de voz con IA (Premium)';

  @override
  String get voiceCommandTitle => 'Comando de voz con IA';

  @override
  String get voiceCommandContent =>
      '¡Habla de forma natural para gestionar tu lista!\n\nEjemplos:\n• \'Añade pan, queso y jamón\'\n• \'Elimina el detergente\'\n• \'Cambia el tema a azul\'\n\nEsta es una función exclusiva de KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Ver planes';

  @override
  String get itemsAddedSuccess => '¡Artículos añadidos a la lista con éxito!';

  @override
  String get viewList => 'Ver lista';

  @override
  String get feedbackTitle => 'Enviar comentarios';

  @override
  String get feedbackPrompt => '¿Qué te gustaría compartir?';

  @override
  String get feedbackTypeBug => 'Reportar error';

  @override
  String get feedbackTypeBugHint => 'Algo no funciona';

  @override
  String get feedbackTypeSuggestion => 'Sugerencia';

  @override
  String get feedbackTypeSuggestionHint => 'Idea para mejorar la aplicación';

  @override
  String get feedbackTypeTranslation => 'Problema de traducción';

  @override
  String get feedbackTypeTranslationHint =>
      'Traducción incorrecta o poco natural';

  @override
  String get feedbackTypeFeature => 'Solicitud de función';

  @override
  String get feedbackTypeFeatureHint => 'Función que te gustaría ver';

  @override
  String get feedbackTypeOther => 'Otro';

  @override
  String get feedbackTypeOtherHint => 'Otro tipo de comentario';

  @override
  String get feedbackHint => 'Describe tus comentarios en detalle...';

  @override
  String get feedbackSend => 'Enviar comentarios';

  @override
  String get feedbackSending => 'Enviando...';

  @override
  String get feedbackThankYou => '¡Gracias!';

  @override
  String get feedbackThankYouMessage =>
      'Hemos recibido tus comentarios y nos ayudan a mejorar KipiList para todos.';

  @override
  String get feedbackBack => 'Volver';

  @override
  String feedbackError(String error) {
    return 'Error al enviar: $error';
  }

  @override
  String get feedbackRetry => 'Intentar de nuevo';

  @override
  String get feedbackSettingsTitle => 'Enviar comentarios';

  @override
  String get feedbackSettingsSubtitle =>
      'Reporta errores, sugiere mejoras o corrige traducciones';

  @override
  String get aiEnergy => 'Energía de IA';

  @override
  String get searchInConversation => 'Buscar en conversación...';

  @override
  String get noMessagesFound => 'No se encontraron mensajes';

  @override
  String get suggestedQuestions => 'Preguntas sugeridas:';

  @override
  String get shoppingAssistant => 'asistente de compras';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased de $total comprado';
  }

  @override
  String get estimatedCost => 'Estimado';

  @override
  String get viewItems => 'Ver artículos';

  @override
  String get noItemsInList => 'No hay elementos en la lista';

  @override
  String get longHistoryWarning =>
      'Larga historia: el asistente se centra en los mensajes más recientes para un mejor rendimiento.';

  @override
  String get listening => 'Escuchando...';

  @override
  String get addDirectToList => 'Añadir directamente a la lista';

  @override
  String get unlockFullResponse => 'Desbloquear respuesta completa';

  @override
  String get switchList => 'Lista de cambios';

  @override
  String get marketMode => 'Modo de mercado';

  @override
  String get backToChat => 'Volver al chat';

  @override
  String get finishShopping => 'Terminar de comprar';

  @override
  String get welcomeAiAssistant => 'Bienvenido al Asistente de IA';

  @override
  String get createListToStartAi =>
      'Crea una lista de compras para comenzar a usar el chat inteligente.';

  @override
  String get howCanIHelp => '¿Cómo puedo ayudar?';

  @override
  String get chatSubtitleShort =>
      'Pregunta por precios, recetas, organización...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total comprado';
  }

  @override
  String get quickReplies => 'Respuestas rápidas:';

  @override
  String get voiceProFeature =>
      'Los comandos de voz avanzados son Pro. Habilitando el dictado básico...';

  @override
  String get viewPro => 'Ver profesional';

  @override
  String get errorLoadingChat => '¡Ups! Algo salió mal al cargar el chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Comprueba tu conexión o vuelve a intentarlo más tarde.';

  @override
  String get errorOscillation =>
      'Esto puede ocurrir debido a oscilaciones de la red o indisponibilidad temporal. Por favor inténtalo de nuevo.';

  @override
  String get activeListening => 'Escucha activa';

  @override
  String get whatToDoWithItem => '¿Qué te gustaría hacer con este artículo?';

  @override
  String get viewDetails => 'Ver detalles';

  @override
  String get openMenu => 'Abrir menú';

  @override
  String get viewRecipe => 'Ver receta';

  @override
  String get recipeCreated => '¡Receta creada!';

  @override
  String get editRecipe => 'Editar';

  @override
  String get deleteRecipe => 'Borrar';

  @override
  String get deleteRecipeConfirm => '¿Borrar esta receta?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '¿Estás seguro de que quieres borrar \"$recipeName\"? Esta acción no se puede deshacer.';
  }

  @override
  String get ingredients => 'Ingredientes';

  @override
  String get instructions => 'Instrucciones';

  @override
  String get prepTime => 'Tiempo de prep.';

  @override
  String get recipeSaved => '¡Receta guardada!';

  @override
  String get noRecipesSaved => 'No hay recetas guardadas';

  @override
  String get noRecipesSavedHint =>
      'Crea tu primera receta personalizada tocando el botón de abajo.';

  @override
  String get myRecipes => 'Mis recetas';

  @override
  String get newRecipe => 'Nueva receta';

  @override
  String get loadingRecipes => 'Cargando tus recetas...';

  @override
  String get errorLoadingRecipes => 'Error al cargar las recetas';

  @override
  String get addIngredient => 'Añadir ingrediente';

  @override
  String get saveRecipe => 'Guardar';

  @override
  String get recipeName => 'Nombre de la receta';

  @override
  String get shortDescription => 'Descripción corta';

  @override
  String get prepTimeMinutes => 'Tiempo de prep. (minutos)';

  @override
  String get instructionsHint => 'Escribe un paso por línea...';

  @override
  String get addPhoto => 'Añadir foto';

  @override
  String get imageUrlPlaceholder => 'O pega una URL de imagen';

  @override
  String get tags => 'Etiquetas';

  @override
  String get recipeTags => 'Etiquetas de la receta';

  @override
  String get suggestedTags => 'Sugeridas';

  @override
  String get searchRecipes => 'Buscar recetas...';

  @override
  String get filterByTag => 'Filtrar por etiqueta';

  @override
  String get allTags => 'Todos';

  @override
  String get recipeDeleted => 'Receta eliminada';

  @override
  String get saveChanges => 'Guardar cambios';

  @override
  String get editRecipeTitle => 'Editar receta';

  @override
  String get newRecipeTitle => 'Nueva receta';

  @override
  String get requiredField => 'Obligatorio';

  @override
  String get chooseImageSource => 'Elegir origen de la imagen';

  @override
  String get gallery => 'Galería';

  @override
  String get enterUrl => 'Introducir URL';

  @override
  String get recipeImage => 'Imagen de la receta';

  @override
  String get removeImage => 'Eliminar imagen';

  @override
  String get mealPlannerTitle => 'Planificador de comidas';

  @override
  String get mealPlannerViewMonthly => 'Vista mensual';

  @override
  String get mealPlannerViewWeekly => 'Vista semanal';

  @override
  String get mealPlannerNoMeals => 'No hay comidas planeadas';

  @override
  String get mealPlannerNoMealsHint => 'Toca un día para añadir una comida';

  @override
  String get mealPlannerLoading => 'Cargando plan de comidas...';

  @override
  String get mealPlannerError => 'Error al cargar el plan de comidas';

  @override
  String get mealPlannerAddMeal => 'Añadir comida';

  @override
  String get mealPlannerEditMeal => 'Editar comida';

  @override
  String get mealPlannerDeleteMeal => 'Eliminar comida';

  @override
  String get mealPlannerMealDeleted => 'Comida eliminada';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count raciones',
      one: '$count ración',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Raciones';

  @override
  String get mealPlannerNoteLabel => 'Nota (opcional)';

  @override
  String get mealPlannerSelectRecipe => 'Seleccionar una receta';

  @override
  String get mealPlannerSearchRecipes => 'Buscar recetas...';

  @override
  String get mealPlannerNoRecipesFound => 'No se encontraron recetas';

  @override
  String get mealPlannerNoRecipesHint =>
      'Crea recetas en la pestaña Recetas primero';

  @override
  String get mealPlannerSave => 'Añadir al plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count de $total comidas planeadas';
  }

  @override
  String get mealPlannerGenerateList => 'Generar lista de compras';

  @override
  String get mealPlannerGenerateListConfirm =>
      '¿Añadir todos los ingredientes de las comidas planeadas esta semana a tu lista de compras?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '¡$count ingrediente(s) añadido(s) a tu lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'No hay ingredientes que añadir. Planea algunas comidas con recetas primero.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Crea una lista de compras primero.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Desayuno';

  @override
  String get mealPlannerMealTypeLunch => 'Almuerzo';

  @override
  String get mealPlannerMealTypeDinner => 'Cena';

  @override
  String get mealPlannerMealTypeSnack => 'Merienda';

  @override
  String get mealPlannerDateLabel => 'Fecha';

  @override
  String get mealPlannerWeekEmpty => 'Nada planeado para esta semana';

  @override
  String get mealPlannerWeekEmptyHint =>
      '¡Toca cualquier día para empezar a planear tus comidas!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Invitar a la lista';

  @override
  String get shareApp => 'Compartir aplicación';

  @override
  String get shareAppDescription => 'Invita a tus amigos a usar KipiList';

  @override
  String shareReferralText(String url) {
    return '¡Estoy usando KipiList para organizar mis compras! Descárguelo a través de mi enlace y ambos obtendremos 7 días de Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => '¡Obtén 7 días de KipiList Premium!';

  @override
  String get gestureHint =>
      'Mantenga presionado para seleccionar • Deslice para eliminar';

  @override
  String get catalogTitle => 'Catalogar';

  @override
  String get catalogMyFrequents => 'mis frecuentes';

  @override
  String get catalogSearchGlobal => 'Busca cualquier producto...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Buscar en $category...';
  }

  @override
  String get catalogSortPopular => 'mas popular';

  @override
  String get catalogSortAZ => 'ARIZONA';

  @override
  String get catalogFilterNational => 'Nacionales';

  @override
  String get catalogRareSection => 'menos común en tu país';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Agregar $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Producto no encontrado, escriba el nombre';

  @override
  String get catalogBrowse => 'Explorar catálogo';

  @override
  String get offlineBanner => 'Estás desconectado';

  @override
  String get consentTitle => 'Privacidad y análisis';

  @override
  String get consentBody =>
      'KipiList utiliza Firebase Analytics para mejorar su experiencia. Sus datos se procesan de acuerdo con nuestra Política de Privacidad.';

  @override
  String get consentAccept => 'Aceptar';

  @override
  String get consentDecline => 'No, gracias';

  @override
  String get mealPlannerPantryAllAvailable =>
      'Todos los ingredientes disponibles';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 falta';
  }

  @override
  String get expirationDate => 'Fecha de expiración';

  @override
  String get notInformed => 'No establecido';

  @override
  String get skip => 'Saltar';

  @override
  String get onboardingAiTitle => 'Chatea con Kipi';

  @override
  String get onboardingAiGreeting =>
      '¡Hola! ¡Soy Kipi, tu asistente personal de compras! 🛒';

  @override
  String get onboardingAiAskName => '¿Cómo te llamas?';

  @override
  String get onboardingAiNameHint => 'Escribe tu nombre...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return '¡Encantado de conocerte, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => '¿Cuál es tu comida favorita?';

  @override
  String get onboardingAiFoodHint => 'p.ej. Pizzas, sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return '¡Grandes opciones! Esto es lo que agregaría a tu lista:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      '¿Esto se ve bien? ¡Intenta escribir algo más!';

  @override
  String get onboardingAiReady =>
      '¡Excelente! Estás listo para empezar. ¡Configuremos su cuenta!';

  @override
  String get onboardingAiContinue => 'Continuar →';

  @override
  String get connectionError => 'Error de conexión';

  @override
  String connectionErrorDesc(String error) {
    return 'No se pudo conectar al servidor. Revisa tu internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Error al cargar listas';

  @override
  String get noListsFound => 'No se encontraron listas';

  @override
  String get backToToday => 'Volver a hoy';

  @override
  String get quickSuggestions => 'sugerencias rapidas';

  @override
  String get aiEnergyLow => 'Baja energía de IA';

  @override
  String get aiUnlockUnlimited => 'Desbloquea IA ilimitada';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 hoy';
  }

  @override
  String get aiSubscribeUnlimited => 'Suscríbete para obtener IA ilimitada';

  @override
  String get unlockWithAd => 'Desbloquear con anuncio';

  @override
  String get conversationHistoryTitle => 'Historial de conversaciones';

  @override
  String get noConversationsFound => 'No se encontraron conversaciones';

  @override
  String get errorLoadingHistory => 'Error al cargar el historial';

  @override
  String get deleteConversationTitle => '¿Eliminar conversación?';

  @override
  String get deleteConversationConfirm => 'Esta acción no se puede deshacer.';

  @override
  String get deleteConversation => 'Borrar';

  @override
  String get subscription => 'Suscripción';

  @override
  String get kipiListProActive => 'KipiList Pro Activo';

  @override
  String get unlockPremiumTitle => 'Desbloquea listas ilimitadas, IA y más';

  @override
  String get loadingSubscription => 'Cargando suscripción...';

  @override
  String get errorLoadingSubscription => 'Error al cargar la suscripción';

  @override
  String get profileSection => 'Perfil';

  @override
  String get myProfile => 'Mi perfil';

  @override
  String get profileSubtitle =>
      'Preferencias personales para el asistente de IA';

  @override
  String get customizeAiAssistant => 'Personaliza el asistente de IA';

  @override
  String get assistantHistory => 'Historial del asistente';

  @override
  String get assistantHistorySubtitle => 'Ver tu historial de conversaciones';

  @override
  String get manageCategories => 'Administrar categorías';

  @override
  String get manageCategoriesSubtitle => 'Administrar categorías de artículos';

  @override
  String get customizeAssistant => 'Personalizar';

  @override
  String get assistantName => 'Nombre del asistente';

  @override
  String get chooseIcon => 'Elija el icono';

  @override
  String get profileSaved => '¡Perfil guardado exitosamente!';

  @override
  String get errorSavingProfile => 'Error al guardar: null';

  @override
  String get userProfile => 'Perfil de usuario';

  @override
  String get profileDescription =>
      'Cuéntenos sus preferencias personales para que el asistente de IA pueda sugerir recetas y artículos personalizados.';

  @override
  String get preferredMarket => 'Mercado Preferido';

  @override
  String get preferredMarketHint => 'Por ejemplo: Supermercado X';

  @override
  String get dietaryRestrictions => 'Restricciones dietéticas';

  @override
  String get dietaryRestrictionsHint => 'Ej.: vegano, vegetariano, sin gluten';

  @override
  String get marketsToAvoid => 'Mercados a evitar';

  @override
  String get marketsToAvoidHint => 'Por ejemplo: Mercado Y, Mercado Z';

  @override
  String get observations => 'Notas';

  @override
  String get observationsHint => 'Otras preferencias para el asistente';

  @override
  String get saveProfile => 'Guardar perfil';

  @override
  String get everythingReady => '¡Todo listo!';

  @override
  String get youCompletedList => '¡Has completado la lista!';

  @override
  String get selectCheaperAlternative =>
      'Seleccione una alternativa de producto más económica para optimizar el costo.';

  @override
  String get suggestedItems => 'Artículos sugeridos';

  @override
  String get swapped => 'Intercambiado';

  @override
  String get swap => 'Intercambio';

  @override
  String get chooseThemeColor => 'Elija el color del tema';

  @override
  String get manageCategoriesTitle => 'Administrar categorías';

  @override
  String get categoryLimitReached =>
      'Límite de 10 categorías en la versión gratuita. ¡Actualízate a Pro!';

  @override
  String get deleteCategoryTitle => 'Eliminar categoría';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Los elementos de la categoría \"$category\" se moverán a \"Otros\".\n¿Continuar?';
  }

  @override
  String get deleteCategory => 'Borrar';

  @override
  String get newCategoryDialog => 'Nueva categoría';

  @override
  String get editCategoryDialog => 'Editar categoría';

  @override
  String get categoryName => 'Nombre de categoría';

  @override
  String get categoryNameHint => 'Ej.: Carnes';

  @override
  String get categoryColorLabel => 'Color';

  @override
  String get categoryIconLabel => 'Icono';

  @override
  String itemAddedSnack(String name) {
    return '$name añadido';
  }

  @override
  String get kipiQuickBarHint => '¿Qué necesitas comprar?';

  @override
  String replaceItem(String item) {
    return 'Reemplazar $item';
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
      'Nunca más olvides un artículo del supermercado';

  @override
  String get onboardingGoalSaveMoney => 'ahorrar dinero';

  @override
  String get onboardingGoalNeverForget => 'Nunca olvides los artículos';

  @override
  String get onboardingGoalFaster => 'Compra más rápido';

  @override
  String get onboardingGoalFamily => 'Organizar compras familiares';

  @override
  String get onboardingGoalRecipes => 'Descubre recetas';

  @override
  String get onboardingGoalPantry => 'Despensa de pista';

  @override
  String get onboardingCommitmentsTitle => '¿Qué te importa?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Elige tus objetivos para personalizar KipiList';

  @override
  String get onboardingCommitmentsCta => '¡Vamos!';

  @override
  String get onboardingPersonalizationNameLabel => 'Su nombre';

  @override
  String get onboardingPersonalizationNameHint => 'Introduce tu nombre';

  @override
  String get onboardingPersonalizationCategoryTitle => '¿Qué compras?';

  @override
  String get onboardingPersonalizationGroupTitle => '¿Para quién compras?';

  @override
  String get onboardingCategoryGrocery => 'Comestibles';

  @override
  String get onboardingCategoryPharmacy => 'Farmacia';

  @override
  String get onboardingCategoryRecipes => 'Recetas';

  @override
  String get onboardingCategoryHome => 'Hogar';

  @override
  String get onboardingCategoryPet => 'Mascota';

  @override
  String get onboardingGroupSolo => 'Sólo yo';

  @override
  String get onboardingGroupCouple => 'Pareja';

  @override
  String get onboardingGroupFamily => 'Familia';

  @override
  String get onboardingLoadingTitle => 'Preparando tu experiencia...';

  @override
  String get onboardingLoadingStep1 => 'Analizando tus preferencias...';

  @override
  String get onboardingLoadingStep2 => 'Configurando el asistente de IA...';

  @override
  String get onboardingLoadingStep3 => 'Casi listo...';

  @override
  String get onboardingLoadingStat1Label => 'Artículos catalogados';

  @override
  String get onboardingLoadingStat2Label => 'Los usuarios ayudaron';

  @override
  String get onboardingLoadingStat3Label => 'Minutos guardados';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, ¡ahorra en cada viaje!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, ¡nunca olvides un artículo!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, ¡compra en la mitad de tiempo!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, ¡organiza compras familiares!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, ¡descubre nuevas recetas!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, ¡sigue tu despensa perfectamente!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => '¡Ahorra en cada viaje!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      '¡Nunca olvides un artículo!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      '¡Compre en la mitad del tiempo!';

  @override
  String get paywallGoalHeadlineNoNameFamily => '¡Organiza compras familiares!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => '¡Descubre nuevas recetas!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      '¡Sigue tu despensa perfectamente!';

  @override
  String paywallPricePerDay(String price) {
    return 'Sólo $price/día: menos que un café';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Saltar por ahora';

  @override
  String get paywallTestimonial =>
      'La IA organiza mis compras en segundos. Me ahorro 20 min por viaje.';

  @override
  String get paywallTestimonialAuthor => 'Ana S.';

  @override
  String get paywallTrialDisclaimer =>
      'Cancela en cualquier momento · Sin cargo hasta que finalice tu prueba';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hola $name! ¿Qué $category necesitas?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return '¿Qué $category necesitas?';
  }

  @override
  String get onboardingAiDemoYes => '¡Sí!';

  @override
  String get onboardingAiDemoReaction => '¡Lindo!';

  @override
  String get onboardingAiDemoChange => 'Cambiar artículo';

  @override
  String get onboardingAiDemoOffer => '¡Intenta escribir algo más!';

  @override
  String get onboardingAiDemoContinue => 'Continuar';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Tu lista de compras, ahora con IA';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Vea cómo Kipi crea su lista completa en segundos';

  @override
  String get onboardingAiDemoSlideCta => '¡Quiero esto! →';

  @override
  String get onboardingAiDemoSlideUserMsg =>
      'Estoy organizando una barbacoa 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      '¡Listo! Aquí tienes todo lo que necesitas:';

  @override
  String get onboardingAiDemoSlideDone => 'Lista completa en segundos ✨';

  @override
  String get onboardingPainTitle => '¿Qué es lo que más te frustra?';

  @override
  String get onboardingPainSubtitle => 'Sea honesto: arreglaremos cada uno';

  @override
  String get onboardingPainCta => 'Sí, arregla esto por mí →';

  @override
  String get onboardingPainForget => 'Olvidé artículos en la tienda.';

  @override
  String get onboardingPainFamily => 'Mi familia nunca ve la lista.';

  @override
  String get onboardingPainOverspend => 'Siempre me paso del presupuesto';

  @override
  String get onboardingPainRepeat => 'Un viaje nunca es suficiente';

  @override
  String get aiWelcomeContent =>
      '¡Hola! 👋 ¡Soy **Kipi**, tu asistente personal de compras y recetas!\n\nEstoy aquí para ayudarte:\n🛒 **Organiza** tus compras por categorías automáticamente\n💰 **Haga un seguimiento** de su presupuesto y brinde consejos para ahorrar dinero\n🍲 **Sugiere** recetas deliciosas con lo que ya tienes\n\n¿Cómo puedo ayudarte hoy? ¡Puedes empezar creando tu primera lista!';

  @override
  String get aiWelcomeSuggestCreateList => 'Crear mi primera lista';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, ayúdame a crear mi primera lista de compras.';

  @override
  String get aiWelcomeSuggestSave => '¿Cómo ahorrar dinero?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, ¿cómo puedes ayudarme a ahorrar dinero en la compra?';

  @override
  String get suggestionMilk => 'Leche';

  @override
  String get suggestionBread => 'Pan';

  @override
  String get suggestionEggs => 'Huevos';

  @override
  String get suggestionCoffee => 'Café';

  @override
  String get suggestionRice => 'Arroz';

  @override
  String get suggestionFruits => 'frutas';
}

/// The translations for Spanish Castilian, as used in the United States (`es_US`).
class AppLocalizationsEsUs extends AppLocalizationsEs {
  AppLocalizationsEsUs() : super('es_US');

  @override
  String get appTitle => 'Lista de Compras';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Despensa';

  @override
  String get navChat => 'Charlar';

  @override
  String get navRecipes => 'Recetas';

  @override
  String get navLists => 'Listas';

  @override
  String get navMealPlanner => 'Menú';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Guardar';

  @override
  String get create => 'Crear';

  @override
  String get add => 'Añadir';

  @override
  String get remove => 'Eliminar';

  @override
  String get delete => 'Borrar';

  @override
  String get edit => 'Editar';

  @override
  String get copy => 'Copiar';

  @override
  String get next => 'Próximo';

  @override
  String get retry => 'Reintentar';

  @override
  String get regenerate => 'Regenerar';

  @override
  String get copiedToClipboard => 'Copiado al portapapeles';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Cerrar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renombrar';

  @override
  String get upgrade => 'Actualizar';

  @override
  String get clear => 'Limpiar';

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
      'Error al procesar la compra. Inténtalo de nuevo.';

  @override
  String get restoreError => 'Error al restaurar compras. Inténtalo de nuevo.';

  @override
  String get loading => 'Cargando...';

  @override
  String get fieldRequired => 'Campo obligatorio';

  @override
  String get addedFeedback => '¡Añadido!';

  @override
  String get profile => 'Perfil';

  @override
  String get exitShoppingMode => 'Salir del modo de compras';

  @override
  String get exit => 'Salida';

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
  String get alreadyPurchased => 'Ya comprado';

  @override
  String get clearList => 'Limpiar lista';

  @override
  String get clearPurchased => 'Limpiar comprados';

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
  String get becomePremium => 'Hazte Premium';

  @override
  String get manageSubscription => 'Gestionar suscripción';

  @override
  String get completePurchase => 'Completar compra';

  @override
  String get confirmClearList => '¿Eliminar todos los artículos?';

  @override
  String get shareListTitle => 'Compartir lista';

  @override
  String get shareThisCode => 'Comparte este código:';

  @override
  String get validForLimitedTime => 'Válido por tiempo limitado';

  @override
  String get importListTitle => 'Importar lista';

  @override
  String get enterCodeHint => 'Introduce el código';

  @override
  String get confirmArchiveTitle => 'Completar compra';

  @override
  String get confirmArchiveContent =>
      '¿Completar esta compra y archivar la lista?';

  @override
  String get complete => 'Completar';

  @override
  String get listArchived => '¡Lista archivada con éxito!';

  @override
  String listAdded(String listName) {
    return '¡$listName añadida!';
  }

  @override
  String get buy => 'Comprar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return '¿Eliminar $count artículo(s)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return '¿Eliminar $count artículo(s)?';
  }

  @override
  String get archiveList => 'Archivar lista';

  @override
  String get pantryAppBar => 'Despensa';

  @override
  String get generateShoppingList => 'Generar lista de compras';

  @override
  String get pantryEmpty => 'Despensa vacía';

  @override
  String get pantryEmptySubtitle => 'Añade productos que quieras tener en casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit artículo(s) necesita(n) comprarse';
  }

  @override
  String get noItemsToBuy => 'No hay artículos que comprar';

  @override
  String get newPantryList => 'Compras de despensa';

  @override
  String get newListTitle => 'Nueva lista de compras';

  @override
  String itemsWillBeAdded(int count) {
    return 'Se añadirán $count artículo(s)';
  }

  @override
  String get listNameLabel => 'Nombre de la lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" creada con $count artículos';
  }

  @override
  String get noTracking => 'Sin seguimiento';

  @override
  String get markAsPurchased => 'Marcar como comprado';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Cantidad ideal';

  @override
  String get currentQuantity => 'Cantidad actual';

  @override
  String get consumed => 'Consumido';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastecido a $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return '¿Eliminar \"$name\" de la despensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get scanProductTitle => 'Escanear producto';

  @override
  String get positionBarcodeCenter =>
      'Coloque el código de barras en el centro.';

  @override
  String get product => 'Producto';

  @override
  String get settingsAppBar => 'Ajustes';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'Inglés';

  @override
  String get languageSystem => 'Predeterminado del sistema';

  @override
  String get chooseLanguage => 'Seleccionar idioma';

  @override
  String get searchLanguage => 'Buscar idioma...';

  @override
  String get currency => 'Divisa';

  @override
  String get chooseCurrency => 'Seleccionar moneda';

  @override
  String get searchCurrency => 'Buscar moneda...';

  @override
  String get appearance => 'Apariencia';

  @override
  String get light => 'Claro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Oscuro';

  @override
  String get themeColor => 'Color del tema';

  @override
  String get dynamicColors => 'Colores dinámicos';

  @override
  String get dynamicColorsSubtitle =>
      'Usa colores basados en tu fondo de pantalla';

  @override
  String get dynamicColorsEnabledWarning =>
      'Desactive los colores dinámicos para que el color del tema surta efecto';

  @override
  String get finance => 'Finanzas';

  @override
  String get monthlyBudgetNav => 'Presupuesto mensual';

  @override
  String get budgetSubtitle => 'Controla tu gasto mensual';

  @override
  String get data => 'Datos';

  @override
  String get backupNav => 'Copia de seguridad';

  @override
  String get backupSubtitle => 'Exporta o importa tus datos';

  @override
  String get about => 'Acerca de';

  @override
  String get version => 'Versión';

  @override
  String get privacy => 'Privacidad';

  @override
  String get termsOfUse => 'Términos de uso';

  @override
  String get myAchievements => 'Mis logros';

  @override
  String get itemsPurchased => 'Artículos comprados';

  @override
  String get totalSavings => 'Ahorros totales';

  @override
  String get currentStreak => 'Racha actual';

  @override
  String streakDays(int count) {
    return '$days días';
  }

  @override
  String get unlockedBadges => 'Insignias desbloqueadas';

  @override
  String get badgeBeginner => 'Principiante';

  @override
  String get badgeOrganized => 'Organizado';

  @override
  String get badgeSavingMaster => 'Maestro salvador';

  @override
  String get badgeSuperPlanner => 'Súper Planificador';

  @override
  String get backupTitle => 'Copia de seguridad';

  @override
  String get backupPremiumDescription =>
      'La copia de seguridad y exportación es una función premium';

  @override
  String get exportData => 'Exportar datos';

  @override
  String get exportDataSubtitle => 'Guardar todas las listas como JSON';

  @override
  String get importData => 'Importar datos';

  @override
  String get importDataSubtitle => 'Restaurar listas desde un JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Pega el JSON de la copia de seguridad aquí...';

  @override
  String get backupExported => '¡Copia de seguridad exportada!';

  @override
  String get budgetAppBar => 'Presupuesto mensual';

  @override
  String get budgetPremiumLocked => 'El presupuesto mensual global es premium';

  @override
  String get budgetUpgradePrompt => 'Actualiza para desbloquear';

  @override
  String get noBudgetDefined => 'Sin presupuesto definido';

  @override
  String totalEstimated(String amount) {
    return 'Total estimado: $amount';
  }

  @override
  String get setBudgetButton => 'Establecer presupuesto';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Importe';

  @override
  String get setBudgetTitle => 'Presupuesto mensual';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterPending => 'Pendientes';

  @override
  String get filterPurchased => 'Comprados';

  @override
  String get sortName => 'Nombre';

  @override
  String get sortCategory => 'Categoría';

  @override
  String get sortDate => 'Fecha';

  @override
  String get sortManual => 'Manual';

  @override
  String progressItemsOf(int purchased, int total) {
    return '$purchased de $total artículos';
  }

  @override
  String progressBudget(String amount) {
    return 'Presupuesto: $amount';
  }

  @override
  String progressTotal(String amount) {
    return 'Total: $amount';
  }

  @override
  String get addItem => 'Añadir artículo';

  @override
  String get itemName => 'Nombre del artículo';

  @override
  String get quantityShort => 'Cant';

  @override
  String get unit => 'Unidad';

  @override
  String get category => 'Categoría';

  @override
  String get estimatedPrice => 'Precio estimado';

  @override
  String get addItemPrice => 'Precio estimado';

  @override
  String get editItem => 'Editar artículo';

  @override
  String get quantityFull => 'Cantidad';

  @override
  String get editItemPrice => 'Precio estimado';

  @override
  String get addToPantry => 'Añadir a la despensa';

  @override
  String addToPantryPrompt(String name) {
    return '¿Añadir \"$name\" a tu despensa?';
  }

  @override
  String get yes => 'Sí';

  @override
  String get productName => 'Nombre del producto';

  @override
  String get idealQty => 'Cant. ideal';

  @override
  String get currentQty => 'Cant. actual';

  @override
  String get trackStock => 'Controlar stock';

  @override
  String get trackStockActive => 'Aparece en sugerencias de compra';

  @override
  String get trackStockInactive => 'No genera sugerencia de compra';

  @override
  String get createListDialog => 'Crear lista';

  @override
  String get renameListDialog => 'Renombrar lista';

  @override
  String get listHistory => 'Historial de listas';

  @override
  String get myLists => 'Mis listas';

  @override
  String get viewActive => 'Ver activas';

  @override
  String get viewHistory => 'Ver historial';

  @override
  String get noArchivedLists => 'No hay listas archivadas';

  @override
  String get noActiveLists => 'No hay listas activas';

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
  String get deleteListTitle => 'Borrar lista';

  @override
  String deleteListContent(String name) {
    return '¿Estás seguro de que quieres borrar \"$name\"? Se eliminarán todos los artículos.';
  }

  @override
  String get removeSharedListTitle => 'Eliminar lista compartida';

  @override
  String removeSharedListContent(String name) {
    return '¿Eliminar \"$name\" de tus listas? La lista original no se verá afectada.';
  }

  @override
  String get createNewList => 'Crear nueva lista';

  @override
  String get aiAssistant => 'Asistente de IA';

  @override
  String get aiAssistantDescription =>
      'Obtén sugerencias inteligentes, recetas y consejos personalizados con nuestro asistente de IA.';

  @override
  String get generalAssistant => 'Asistente general';

  @override
  String get newChat => 'Nuevo chat';

  @override
  String get noHistory => 'Sin historial de chat';

  @override
  String get deleteSession => 'Eliminar chat';

  @override
  String get deleteSessionConfirm =>
      '¿Estás seguro de que quieres eliminar este chat? Los mensajes se perderán permanentemente.';

  @override
  String get clearHistory => 'Limpiar historial';

  @override
  String get clearHistoryConfirm =>
      '¿Borrar todos los mensajes de esta sesión?';

  @override
  String get chatHint => 'Escribe tu mensaje...';

  @override
  String get chatHintBlocked => 'Desbloquea la IA para chatear';

  @override
  String chatError(String error) {
    return 'Error al cargar el chat: $error';
  }

  @override
  String get aiAssistantTitle => 'Asistente de IA';

  @override
  String get closeSheet => 'Cerca';

  @override
  String get scanBarcodeTitle => 'Escanear código de barras';

  @override
  String get listHelp => '¿Cómo puedo ayudarte con tu lista?';

  @override
  String get generalHelp => '¿Cómo puedo ayudarte con tus compras hoy?';

  @override
  String get chatSubtitle =>
      'Pide sugerencias de artículos, recetas o consejos de ahorro.';

  @override
  String get aiError =>
      'Lo sentimos, se produjo un error al procesar tu solicitud. Comprueba tu conexión o inténtalo de nuevo más tarde.';

  @override
  String get aiLimitAlmostReached => 'Casi sin mensajes de IA';

  @override
  String get unlockAi => 'Desbloquea IA ilimitada';

  @override
  String get aiTeaserFallback =>
      'Suscríbete a Premium para desbloquear la respuesta completa y obtener consejos ilimitados de IA para tus compras...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Acciones de IA restantes este mes: actualice de forma ilimitada';
  }

  @override
  String get aiUsageExhausted =>
      'Se alcanzó el límite mensual de IA. Actualízate a Pro de forma ilimitada →';

  @override
  String get kipiListTitle => 'Lista Kipi';

  @override
  String get loginPrompt => 'Inicia sesión para desbloquear funciones premium';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get onboardingWelcomeTitle => 'Bienvenido a KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'La forma más inteligente de organizar tus compras y ahorrar dinero.';

  @override
  String get onboardingSetupTitle => 'Personaliza tu experiencia';

  @override
  String get onboardingSetupDesc =>
      'Elija cómo desea que KipiList se vea y funcione para usted.';

  @override
  String get onboardingLoginTitle => 'Guarda todo en la nube';

  @override
  String get onboardingLoginDesc =>
      'Tus datos sincronizados en todos tus dispositivos';

  @override
  String get onboardingShareTitle => 'Comparte con tus seres queridos';

  @override
  String get onboardingShareDesc =>
      'Sincroniza listas con familiares y amigos en tiempo real';

  @override
  String get onboardingPremiumTitle => 'Desbloquea todas las funciones';

  @override
  String get onboardingPremiumSubtitle =>
      'Sácale el máximo provecho a tus listas de compras';

  @override
  String get onboardingAnnualBadge => 'Mejor valor';

  @override
  String get onboardingMonthlyLabel => 'Mensual';

  @override
  String get onboardingAnnualLabel => 'Anual';

  @override
  String get onboardingViewAllPlans => 'Ver todos los planes';

  @override
  String get onboardingSubscribeCta => 'Suscribir';

  @override
  String get onboardingCancelAnytime =>
      'Cancele en cualquier momento. Sin compromiso.';

  @override
  String get onboardingContinueAsGuest => 'Continuar como invitado';

  @override
  String get onboardingRestore => 'Restaurar';

  @override
  String get onboardingRestoreDesc =>
      '¿Ya tienes una suscripción? Toque aquí para restaurarlo.';

  @override
  String get onboardingMaybeLater => 'tal vez más tarde';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Hola $name, organiza tus compras de la manera correcta.';
  }

  @override
  String get onboardingSlide1Title => 'Listas de compras inteligentes';

  @override
  String get onboardingSlide1Body =>
      'Crea y comparte listas al instante. Kipi agrega elementos automáticamente según tus hábitos.';

  @override
  String get onboardingSlide2Title => 'Conoce a Kipi';

  @override
  String get onboardingSlide2Body =>
      'Pregunte cualquier cosa: cree listas, busque recetas, realice un seguimiento de su despensa, planifique su semana.';

  @override
  String get onboardingSlide3Title => 'Despensa y planificación de comidas';

  @override
  String get onboardingSlide3Body =>
      'Realice un seguimiento de lo que tiene, planifique comidas y genere listas de compras automáticamente.';

  @override
  String get onboardingExit => 'Salida';

  @override
  String get onboardingPersonalizationTitle => 'vamos a conocerte';

  @override
  String get onboardingPersonalizationDesc =>
      'Usaremos esto para personalizar sus sugerencias y hacer que las compras sean más inteligentes.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      '¿Cuál es tu comida favorita?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'p.ej. Pizza, sushi, lasaña...';

  @override
  String get onboardingPersonalizationCta => 'Continuar';

  @override
  String get onboardingPersonalizationSkip => 'Saltar por ahora';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Cuéntanos tu comida favorita para continuar';

  @override
  String get settingsDefaultScreen => 'Pantalla de inicio predeterminada';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Elija entre lista de compras o chat AI';

  @override
  String get settingsScreenList => 'Lista de compras';

  @override
  String get settingsScreenChat => 'Chat de IA';

  @override
  String loginError(String error) {
    return 'Error de inicio de sesión: $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Error al cargar ofertas. Intentar otra vez.';

  @override
  String get paywallPurchaseError =>
      'No se pudo completar la compra. Intentar otra vez.';

  @override
  String get paywallRestoreError =>
      'No se encontró ninguna suscripción activa para restaurar.';

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
  String get paywallTrialTitle => '¡Pruébalo gratis!';

  @override
  String get paywallTrialSubtitle =>
      'Cancele en cualquier momento. Sin cargo hoy.';

  @override
  String get paywallTrialCta => 'Iniciar prueba gratuita';

  @override
  String get recipeAddToList => 'Añadir a la lista de compras';

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
      'Ninguna lista seleccionada. Primero abra una lista.';

  @override
  String get paywallFeaturesTitle => 'Todo lo que necesitas:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI organiza tu lista automáticamente';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Crea tantas listas como necesites';

  @override
  String get paywallFeatureDescSharing => 'Compren juntos en tiempo real';

  @override
  String get paywallFeatureDescPantry => 'Sigue lo que tienes en casa';

  @override
  String get paywallFeatureDescBudget =>
      'Manténgase dentro del presupuesto todos los meses';

  @override
  String get paywallFeatureUnlimitedLists => 'Listas ilimitadas';

  @override
  String get paywallFeatureSmartAI => 'IA inteligente';

  @override
  String get paywallFeatureExpenseControl => 'Control de gastos';

  @override
  String get paywallFeatureSharing => 'Intercambio';

  @override
  String get paywallBeforeAfterTitle => 'IA antes y después:';

  @override
  String get paywallLabelCommon => 'Común';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'arroz';

  @override
  String get paywallBeforeItem2 => 'jabón';

  @override
  String get paywallBeforeItem3 => 'carne';

  @override
  String get paywallBeforeItem4 => 'pan';

  @override
  String get paywallAfterItem1 => 'Granos';

  @override
  String get paywallAfterItem2 => 'Limpieza';

  @override
  String get paywallAfterItem3 => 'carnes';

  @override
  String get paywallAfterItem4 => 'Panadería';

  @override
  String get paywallTestimonialsTitle => 'Lo que dicen nuestros usuarios:';

  @override
  String get paywallTestimonial1Name => 'Ana S.';

  @override
  String get paywallTestimonial1Text =>
      'La IA organiza mis compras en segundos. Ahorro 20 minutos por visita al mercado.';

  @override
  String get paywallTestimonial2Name => 'carlos m.';

  @override
  String get paywallTestimonial2Text =>
      'Nunca más olvidé un elemento de la lista. ¡El chat de IA es sensacional!';

  @override
  String get paywallSocialProof => '+2.400 familias lo utilizan';

  @override
  String get paywallCtaUnlock => 'Desbloquear PRO';

  @override
  String get paywallBestValue => 'MEJOR VALOR';

  @override
  String get paywallMostPopular => 'MÁS POPULAR';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Pago seguro';

  @override
  String get paywallSelectPlan => 'Elige tu plan:';

  @override
  String paywallSavePercent(Object percent) {
    return 'GUARDAR $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Sólo $price/mes';
  }

  @override
  String get paywallPackageAnnual => 'Plan Anual';

  @override
  String get paywallPackageMonthly => 'Plan Mensual';

  @override
  String get paywallPackageLifetime => 'Acceso de por vida';

  @override
  String get paywallCancelAnytime =>
      'Cancele en cualquier momento. Sin compromiso.';

  @override
  String paywallTrialInCard(int days) {
    return 'Primeros $days días GRATIS';
  }

  @override
  String get paywallSecuredByStore =>
      'Asegurado por Google Play · Cancelar en cualquier momento';

  @override
  String get paywallPolicy => 'política de privacidad';

  @override
  String get paywallTerms => 'Condiciones de uso';

  @override
  String get paywallRestore => 'Restaurar';

  @override
  String get paywallHeroHeadline => 'Kipi AI siempre a tu lado';

  @override
  String get paywallHeroSubtitle =>
      'Añade elementos, organiza listas y ahorra tiempo con la IA en tu bolsillo';

  @override
  String get paywallBenefit1Desc =>
      'Agrega, organiza y sugiere elementos 24 horas al día, 7 días a la semana';

  @override
  String get paywallBenefit2Desc => 'Sin límite de 3 listas';

  @override
  String get paywallBenefit3Desc => 'Seguimiento de gastos y listas familiares';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilidad total';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Empieza gratis: $days días';
  }

  @override
  String get premiumUpgrade => 'Actualiza para desbloquear';

  @override
  String get itemRemoved => 'Artículo eliminado';

  @override
  String get undo => 'Deshacer';

  @override
  String get emptyListTitle => 'Tu lista está vacía';

  @override
  String get emptyListSubtitle => 'Añade artículos para empezar';

  @override
  String get noListFoundTitle => 'No se encontraron listas';

  @override
  String get noListFoundSubtitle => 'Crea tu primera lista para empezar';

  @override
  String get createFirstList => 'Crear primera lista';

  @override
  String get listBudgetTitle => 'Presupuesto de la lista';

  @override
  String get budgetAmountLabel => 'Importe del presupuesto';

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
  String get prefMonthlyBudget => 'Presupuesto mensual global';

  @override
  String get prefAIAssistant => 'Asistente de IA personal';

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
  String get themeRed => 'Rojo';

  @override
  String get themeOrange => 'Naranja';

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
  String get catFruits => 'Frutas';

  @override
  String get catCleaning => 'Limpieza';

  @override
  String get catBeverages => 'Bebidas';

  @override
  String get catBakery => 'Panadería';

  @override
  String get catOthers => 'Otros';

  @override
  String get unitPack => 'paquete';

  @override
  String get shareSubject => 'Lista de la compra';

  @override
  String get monthlyBudgetTitle => 'Presupuesto mensual';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Borrar lista';

  @override
  String get pantryItemRemoved => 'Artículo eliminado';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit artículos necesitan comprarse',
      one: '$deficit artículo necesita comprarse',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total del carrito';

  @override
  String get restockLabel => 'Reabastecer';

  @override
  String get advancedFeatures => 'Funciones avanzadas';

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String get deselectAll => 'Deseleccionar todo';

  @override
  String get monthlyBudgetAppBar => 'Presupuesto mensual';

  @override
  String get budgetEditTitle => 'Presupuesto mensual';

  @override
  String get budgetDashboardTitle => 'Panel';

  @override
  String get selectListForDashboard =>
      'Selecciona una lista para ver el panel.';

  @override
  String get spendingAnalysis => 'Análisis de gastos';

  @override
  String get noItemsToAnalyze => 'No hay artículos en la lista para analizar.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marca los artículos como comprados para ver el análisis.';

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
  String get yesLabel => 'Sí';

  @override
  String get noLabel => 'No';

  @override
  String get shareListText => 'Mi lista de la compra';

  @override
  String get emptyListAddItems =>
      '¡Tu lista está vacía! Añade artículos primero. ℹ️';

  @override
  String get listOrganizedMagic =>
      '¡Lista organizada mágicamente por categorías! ✨';

  @override
  String get shoppingMode => 'Modo compra';

  @override
  String get smartOrganization => 'Organización inteligente';

  @override
  String get savings => 'Ahorro';

  @override
  String get shoppingModeHeader => 'MODO COMPRA';

  @override
  String get shareAsText => 'Enviar artículos como texto formateado';

  @override
  String get shareRealtime =>
      'Sincronización en tiempo real con otras personas';

  @override
  String get quickRecipe => 'Receta rápida';

  @override
  String get quickRecipePrompt => 'Sugiere recetas con artículos de mi lista.';

  @override
  String get economyTips => 'Consejos de ahorro';

  @override
  String get economyTipsPrompt => '¿Cómo puedo ahorrar dinero en esta compra?';

  @override
  String get organizeAisles => 'Organizar por pasillos';

  @override
  String get organizeAislesPrompt => 'Organiza por pasillos del supermercado.';

  @override
  String get recipeSuggestion => 'Sugerencia de receta';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining créditos restantes';
  }

  @override
  String get addAllToList => 'Añadir todo a la lista';

  @override
  String get organizeByAisles => 'Organizar por pasillos';

  @override
  String get voiceTranscriptionTooltip => 'Escritura por voz (Gratis)';

  @override
  String get aiVoiceCommandTooltip => 'Comando de voz con IA (Premium)';

  @override
  String get voiceCommandTitle => 'Comando de voz con IA';

  @override
  String get voiceCommandContent =>
      '¡Habla de forma natural para gestionar tu lista!\n\nEjemplos:\n• \'Añade pan, queso y jamón\'\n• \'Elimina el detergente\'\n• \'Cambia el tema a azul\'\n\nEsta es una función exclusiva de KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Ver planes';

  @override
  String get itemsAddedSuccess => '¡Artículos añadidos a la lista con éxito!';

  @override
  String get viewList => 'Ver lista';

  @override
  String get feedbackTitle => 'Enviar comentarios';

  @override
  String get feedbackPrompt => '¿Qué te gustaría compartir?';

  @override
  String get feedbackTypeBug => 'Reportar error';

  @override
  String get feedbackTypeBugHint => 'Algo no funciona';

  @override
  String get feedbackTypeSuggestion => 'Sugerencia';

  @override
  String get feedbackTypeSuggestionHint => 'Idea para mejorar la aplicación';

  @override
  String get feedbackTypeTranslation => 'Problema de traducción';

  @override
  String get feedbackTypeTranslationHint =>
      'Traducción incorrecta o poco natural';

  @override
  String get feedbackTypeFeature => 'Solicitud de función';

  @override
  String get feedbackTypeFeatureHint => 'Función que te gustaría ver';

  @override
  String get feedbackTypeOther => 'Otro';

  @override
  String get feedbackTypeOtherHint => 'Otro tipo de comentario';

  @override
  String get feedbackHint => 'Describe tus comentarios en detalle...';

  @override
  String get feedbackSend => 'Enviar comentarios';

  @override
  String get feedbackSending => 'Enviando...';

  @override
  String get feedbackThankYou => '¡Gracias!';

  @override
  String get feedbackThankYouMessage =>
      'Hemos recibido tus comentarios y nos ayudan a mejorar KipiList para todos.';

  @override
  String get feedbackBack => 'Volver';

  @override
  String feedbackError(String error) {
    return 'Error al enviar: $error';
  }

  @override
  String get feedbackRetry => 'Intentar de nuevo';

  @override
  String get feedbackSettingsTitle => 'Enviar comentarios';

  @override
  String get feedbackSettingsSubtitle =>
      'Reporta errores, sugiere mejoras o corrige traducciones';

  @override
  String get aiEnergy => 'Energía de IA';

  @override
  String get searchInConversation => 'Buscar en conversación...';

  @override
  String get noMessagesFound => 'No se encontraron mensajes';

  @override
  String get suggestedQuestions => 'Preguntas sugeridas:';

  @override
  String get shoppingAssistant => 'asistente de compras';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased de $total comprado';
  }

  @override
  String get estimatedCost => 'Estimado';

  @override
  String get viewItems => 'Ver artículos';

  @override
  String get noItemsInList => 'No hay elementos en la lista';

  @override
  String get longHistoryWarning =>
      'Larga historia: el asistente se centra en los mensajes más recientes para un mejor rendimiento.';

  @override
  String get listening => 'Escuchando...';

  @override
  String get addDirectToList => 'Añadir directamente a la lista';

  @override
  String get unlockFullResponse => 'Desbloquear respuesta completa';

  @override
  String get switchList => 'Lista de cambios';

  @override
  String get marketMode => 'Modo de mercado';

  @override
  String get backToChat => 'Volver al chat';

  @override
  String get finishShopping => 'Terminar de comprar';

  @override
  String get welcomeAiAssistant => 'Bienvenido al Asistente de IA';

  @override
  String get createListToStartAi =>
      'Crea una lista de compras para comenzar a usar el chat inteligente.';

  @override
  String get howCanIHelp => '¿Cómo puedo ayudar?';

  @override
  String get chatSubtitleShort =>
      'Pregunta por precios, recetas, organización...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total comprado';
  }

  @override
  String get quickReplies => 'Respuestas rápidas:';

  @override
  String get voiceProFeature =>
      'Los comandos de voz avanzados son Pro. Habilitando el dictado básico...';

  @override
  String get viewPro => 'Ver profesional';

  @override
  String get errorLoadingChat => '¡Ups! Algo salió mal al cargar el chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Comprueba tu conexión o vuelve a intentarlo más tarde.';

  @override
  String get errorOscillation =>
      'Esto puede ocurrir debido a oscilaciones de la red o indisponibilidad temporal. Por favor inténtalo de nuevo.';

  @override
  String get activeListening => 'Escucha activa';

  @override
  String get whatToDoWithItem => '¿Qué te gustaría hacer con este artículo?';

  @override
  String get viewDetails => 'Ver detalles';

  @override
  String get openMenu => 'Abrir menú';

  @override
  String get viewRecipe => 'Ver receta';

  @override
  String get recipeCreated => '¡Receta creada!';

  @override
  String get editRecipe => 'Editar';

  @override
  String get deleteRecipe => 'Borrar';

  @override
  String get deleteRecipeConfirm => '¿Borrar esta receta?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '¿Estás seguro de que quieres borrar \"$recipeName\"? Esta acción no se puede deshacer.';
  }

  @override
  String get ingredients => 'Ingredientes';

  @override
  String get instructions => 'Instrucciones';

  @override
  String get prepTime => 'Tiempo de prep.';

  @override
  String get recipeSaved => '¡Receta guardada!';

  @override
  String get noRecipesSaved => 'No hay recetas guardadas';

  @override
  String get noRecipesSavedHint =>
      'Crea tu primera receta personalizada tocando el botón de abajo.';

  @override
  String get myRecipes => 'Mis recetas';

  @override
  String get newRecipe => 'Nueva receta';

  @override
  String get loadingRecipes => 'Cargando tus recetas...';

  @override
  String get errorLoadingRecipes => 'Error al cargar las recetas';

  @override
  String get addIngredient => 'Añadir ingrediente';

  @override
  String get saveRecipe => 'Guardar';

  @override
  String get recipeName => 'Nombre de la receta';

  @override
  String get shortDescription => 'Descripción corta';

  @override
  String get prepTimeMinutes => 'Tiempo de prep. (minutos)';

  @override
  String get instructionsHint => 'Escribe un paso por línea...';

  @override
  String get addPhoto => 'Añadir foto';

  @override
  String get imageUrlPlaceholder => 'O pega una URL de imagen';

  @override
  String get tags => 'Etiquetas';

  @override
  String get recipeTags => 'Etiquetas de la receta';

  @override
  String get suggestedTags => 'Sugeridas';

  @override
  String get searchRecipes => 'Buscar recetas...';

  @override
  String get filterByTag => 'Filtrar por etiqueta';

  @override
  String get allTags => 'Todos';

  @override
  String get recipeDeleted => 'Receta eliminada';

  @override
  String get saveChanges => 'Guardar cambios';

  @override
  String get editRecipeTitle => 'Editar receta';

  @override
  String get newRecipeTitle => 'Nueva receta';

  @override
  String get requiredField => 'Obligatorio';

  @override
  String get chooseImageSource => 'Elegir origen de la imagen';

  @override
  String get gallery => 'Galería';

  @override
  String get enterUrl => 'Introducir URL';

  @override
  String get recipeImage => 'Imagen de la receta';

  @override
  String get removeImage => 'Eliminar imagen';

  @override
  String get mealPlannerTitle => 'Planificador de comidas';

  @override
  String get mealPlannerViewMonthly => 'Vista mensual';

  @override
  String get mealPlannerViewWeekly => 'Vista semanal';

  @override
  String get mealPlannerNoMeals => 'No hay comidas planeadas';

  @override
  String get mealPlannerNoMealsHint => 'Toca un día para añadir una comida';

  @override
  String get mealPlannerLoading => 'Cargando plan de comidas...';

  @override
  String get mealPlannerError => 'Error al cargar el plan de comidas';

  @override
  String get mealPlannerAddMeal => 'Añadir comida';

  @override
  String get mealPlannerEditMeal => 'Editar comida';

  @override
  String get mealPlannerDeleteMeal => 'Eliminar comida';

  @override
  String get mealPlannerMealDeleted => 'Comida eliminada';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count raciones',
      one: '$count ración',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Raciones';

  @override
  String get mealPlannerNoteLabel => 'Nota (opcional)';

  @override
  String get mealPlannerSelectRecipe => 'Seleccionar una receta';

  @override
  String get mealPlannerSearchRecipes => 'Buscar recetas...';

  @override
  String get mealPlannerNoRecipesFound => 'No se encontraron recetas';

  @override
  String get mealPlannerNoRecipesHint =>
      'Crea recetas en la pestaña Recetas primero';

  @override
  String get mealPlannerSave => 'Añadir al plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count de $total comidas planeadas';
  }

  @override
  String get mealPlannerGenerateList => 'Generar lista de compras';

  @override
  String get mealPlannerGenerateListConfirm =>
      '¿Añadir todos los ingredientes de las comidas planeadas esta semana a tu lista de compras?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '¡$count ingrediente(s) añadido(s) a tu lista!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'No hay ingredientes que añadir. Planea algunas comidas con recetas primero.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Crea una lista de compras primero.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Desayuno';

  @override
  String get mealPlannerMealTypeLunch => 'Almuerzo';

  @override
  String get mealPlannerMealTypeDinner => 'Cena';

  @override
  String get mealPlannerMealTypeSnack => 'Merienda';

  @override
  String get mealPlannerDateLabel => 'Fecha';

  @override
  String get mealPlannerWeekEmpty => 'Nada planeado para esta semana';

  @override
  String get mealPlannerWeekEmptyHint =>
      '¡Toca cualquier día para empezar a planear tus comidas!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Invitar a la lista';

  @override
  String get shareApp => 'Compartir aplicación';

  @override
  String get shareAppDescription => 'Invita a tus amigos a usar KipiList';

  @override
  String shareReferralText(String url) {
    return '¡Estoy usando KipiList para organizar mis compras! Descárguelo a través de mi enlace y ambos obtendremos 7 días de Premium gratis: $url';
  }

  @override
  String get shareReferralSubject => '¡Obtén 7 días de KipiList Premium!';

  @override
  String get gestureHint =>
      'Mantenga presionado para seleccionar • Deslice para eliminar';

  @override
  String get catalogTitle => 'Catalogar';

  @override
  String get catalogMyFrequents => 'mis frecuentes';

  @override
  String get catalogSearchGlobal => 'Busca cualquier producto...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Buscar en $category...';
  }

  @override
  String get catalogSortPopular => 'mas popular';

  @override
  String get catalogSortAZ => 'ARIZONA';

  @override
  String get catalogFilterNational => 'Nacionales';

  @override
  String get catalogRareSection => 'menos común en tu país';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Agregar $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound =>
      'Producto no encontrado, escriba el nombre';

  @override
  String get catalogBrowse => 'Explorar catálogo';

  @override
  String get offlineBanner => 'Estás desconectado';

  @override
  String get consentTitle => 'Privacidad y análisis';

  @override
  String get consentBody =>
      'KipiList utiliza Firebase Analytics para mejorar su experiencia. Sus datos se procesan de acuerdo con nuestra Política de Privacidad.';

  @override
  String get consentAccept => 'Aceptar';

  @override
  String get consentDecline => 'No, gracias';

  @override
  String get mealPlannerPantryAllAvailable =>
      'Todos los ingredientes disponibles';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 falta';
  }

  @override
  String get expirationDate => 'Fecha de expiración';

  @override
  String get notInformed => 'No establecido';

  @override
  String get skip => 'Saltar';

  @override
  String get onboardingAiTitle => 'Chatea con Kipi';

  @override
  String get onboardingAiGreeting =>
      '¡Hola! ¡Soy Kipi, tu asistente personal de compras! 🛒';

  @override
  String get onboardingAiAskName => '¿Cómo te llamas?';

  @override
  String get onboardingAiNameHint => 'Escribe tu nombre...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return '¡Encantado de conocerte, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => '¿Cuál es tu comida favorita?';

  @override
  String get onboardingAiFoodHint => 'p.ej. Pizzas, sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return '¡Grandes opciones! Esto es lo que agregaría a tu lista:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      '¿Esto se ve bien? ¡Intenta escribir algo más!';

  @override
  String get onboardingAiReady =>
      '¡Excelente! Estás listo para empezar. ¡Configuremos su cuenta!';

  @override
  String get onboardingAiContinue => 'Continuar →';

  @override
  String get connectionError => 'Error de conexión';

  @override
  String connectionErrorDesc(String error) {
    return 'No se pudo conectar al servidor. Revisa tu internet.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Error al cargar listas';

  @override
  String get noListsFound => 'No se encontraron listas';

  @override
  String get backToToday => 'Volver a hoy';

  @override
  String get quickSuggestions => 'sugerencias rapidas';

  @override
  String get aiEnergyLow => 'Baja energía de IA';

  @override
  String get aiUnlockUnlimited => 'Desbloquea IA ilimitada';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 hoy';
  }

  @override
  String get aiSubscribeUnlimited => 'Suscríbete para obtener IA ilimitada';

  @override
  String get unlockWithAd => 'Desbloquear con anuncio';

  @override
  String get conversationHistoryTitle => 'Historial de conversaciones';

  @override
  String get noConversationsFound => 'No se encontraron conversaciones';

  @override
  String get errorLoadingHistory => 'Error al cargar el historial';

  @override
  String get deleteConversationTitle => '¿Eliminar conversación?';

  @override
  String get deleteConversationConfirm => 'Esta acción no se puede deshacer.';

  @override
  String get deleteConversation => 'Borrar';

  @override
  String get subscription => 'Suscripción';

  @override
  String get kipiListProActive => 'KipiList Pro Activo';

  @override
  String get unlockPremiumTitle => 'Desbloquea listas ilimitadas, IA y más';

  @override
  String get loadingSubscription => 'Cargando suscripción...';

  @override
  String get errorLoadingSubscription => 'Error al cargar la suscripción';

  @override
  String get profileSection => 'Perfil';

  @override
  String get myProfile => 'Mi perfil';

  @override
  String get profileSubtitle =>
      'Preferencias personales para el asistente de IA';

  @override
  String get customizeAiAssistant => 'Personaliza el asistente de IA';

  @override
  String get assistantHistory => 'Historial del asistente';

  @override
  String get assistantHistorySubtitle => 'Ver tu historial de conversaciones';

  @override
  String get manageCategories => 'Administrar categorías';

  @override
  String get manageCategoriesSubtitle => 'Administrar categorías de artículos';

  @override
  String get customizeAssistant => 'Personalizar';

  @override
  String get assistantName => 'Nombre del asistente';

  @override
  String get chooseIcon => 'Elija el icono';

  @override
  String get profileSaved => '¡Perfil guardado exitosamente!';

  @override
  String get errorSavingProfile => 'Error al guardar: null';

  @override
  String get userProfile => 'Perfil de usuario';

  @override
  String get profileDescription =>
      'Cuéntenos sus preferencias personales para que el asistente de IA pueda sugerir recetas y artículos personalizados.';

  @override
  String get preferredMarket => 'Mercado Preferido';

  @override
  String get preferredMarketHint => 'Por ejemplo: Supermercado X';

  @override
  String get dietaryRestrictions => 'Restricciones dietéticas';

  @override
  String get dietaryRestrictionsHint => 'Ej.: vegano, vegetariano, sin gluten';

  @override
  String get marketsToAvoid => 'Mercados a evitar';

  @override
  String get marketsToAvoidHint => 'Por ejemplo: Mercado Y, Mercado Z';

  @override
  String get observations => 'Notas';

  @override
  String get observationsHint => 'Otras preferencias para el asistente';

  @override
  String get saveProfile => 'Guardar perfil';

  @override
  String get everythingReady => '¡Todo listo!';

  @override
  String get youCompletedList => '¡Has completado la lista!';

  @override
  String get selectCheaperAlternative =>
      'Seleccione una alternativa de producto más económica para optimizar el costo.';

  @override
  String get suggestedItems => 'Artículos sugeridos';

  @override
  String get swapped => 'Intercambiado';

  @override
  String get swap => 'Intercambio';

  @override
  String get chooseThemeColor => 'Elija el color del tema';

  @override
  String get manageCategoriesTitle => 'Administrar categorías';

  @override
  String get categoryLimitReached =>
      'Límite de 10 categorías en la versión gratuita. ¡Actualízate a Pro!';

  @override
  String get deleteCategoryTitle => 'Eliminar categoría';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Los elementos de la categoría \"$category\" se moverán a \"Otros\".\n¿Continuar?';
  }

  @override
  String get deleteCategory => 'Borrar';

  @override
  String get newCategoryDialog => 'Nueva categoría';

  @override
  String get editCategoryDialog => 'Editar categoría';

  @override
  String get categoryName => 'Nombre de categoría';

  @override
  String get categoryNameHint => 'Ej.: Carnes';

  @override
  String get categoryColorLabel => 'Color';

  @override
  String get categoryIconLabel => 'Icono';

  @override
  String itemAddedSnack(String name) {
    return '$name añadido';
  }

  @override
  String get kipiQuickBarHint => '¿Qué necesitas comprar?';

  @override
  String replaceItem(String item) {
    return 'Reemplazar $item';
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
      'Nunca más olvides un artículo del supermercado';

  @override
  String get onboardingGoalSaveMoney => 'ahorrar dinero';

  @override
  String get onboardingGoalNeverForget => 'Nunca olvides los artículos';

  @override
  String get onboardingGoalFaster => 'Compra más rápido';

  @override
  String get onboardingGoalFamily => 'Organizar compras familiares';

  @override
  String get onboardingGoalRecipes => 'Descubre recetas';

  @override
  String get onboardingGoalPantry => 'Despensa de pista';

  @override
  String get onboardingCommitmentsTitle => '¿Qué te importa?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Elige tus objetivos para personalizar KipiList';

  @override
  String get onboardingCommitmentsCta => '¡Vamos!';

  @override
  String get onboardingPersonalizationNameLabel => 'Su nombre';

  @override
  String get onboardingPersonalizationNameHint => 'Introduce tu nombre';

  @override
  String get onboardingPersonalizationCategoryTitle => '¿Qué compras?';

  @override
  String get onboardingPersonalizationGroupTitle => '¿Para quién compras?';

  @override
  String get onboardingCategoryGrocery => 'Comestibles';

  @override
  String get onboardingCategoryPharmacy => 'Farmacia';

  @override
  String get onboardingCategoryRecipes => 'Recetas';

  @override
  String get onboardingCategoryHome => 'Hogar';

  @override
  String get onboardingCategoryPet => 'Mascota';

  @override
  String get onboardingGroupSolo => 'Sólo yo';

  @override
  String get onboardingGroupCouple => 'Pareja';

  @override
  String get onboardingGroupFamily => 'Familia';

  @override
  String get onboardingLoadingTitle => 'Preparando tu experiencia...';

  @override
  String get onboardingLoadingStep1 => 'Analizando tus preferencias...';

  @override
  String get onboardingLoadingStep2 => 'Configurando el asistente de IA...';

  @override
  String get onboardingLoadingStep3 => 'Casi listo...';

  @override
  String get onboardingLoadingStat1Label => 'Artículos catalogados';

  @override
  String get onboardingLoadingStat2Label => 'Los usuarios ayudaron';

  @override
  String get onboardingLoadingStat3Label => 'Minutos guardados';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, ¡ahorra en cada viaje!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, ¡nunca olvides un artículo!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, ¡compra en la mitad de tiempo!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, ¡organiza compras familiares!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, ¡descubre nuevas recetas!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, ¡sigue tu despensa perfectamente!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney => '¡Ahorra en cada viaje!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      '¡Nunca olvides un artículo!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      '¡Compre en la mitad del tiempo!';

  @override
  String get paywallGoalHeadlineNoNameFamily => '¡Organiza compras familiares!';

  @override
  String get paywallGoalHeadlineNoNameRecipes => '¡Descubre nuevas recetas!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      '¡Sigue tu despensa perfectamente!';

  @override
  String paywallPricePerDay(String price) {
    return 'Sólo $price/día: menos que un café';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Saltar por ahora';

  @override
  String get paywallTestimonial =>
      'La IA organiza mis compras en segundos. Me ahorro 20 min por viaje.';

  @override
  String get paywallTestimonialAuthor => 'Ana S.';

  @override
  String get paywallTrialDisclaimer =>
      'Cancela en cualquier momento · Sin cargo hasta que finalice tu prueba';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Hola $name! ¿Qué $category necesitas?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return '¿Qué $category necesitas?';
  }

  @override
  String get onboardingAiDemoYes => '¡Sí!';

  @override
  String get onboardingAiDemoReaction => '¡Lindo!';

  @override
  String get onboardingAiDemoChange => 'Cambiar artículo';

  @override
  String get onboardingAiDemoOffer => '¡Intenta escribir algo más!';

  @override
  String get onboardingAiDemoContinue => 'Continuar';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Tu lista de compras, ahora con IA';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Vea cómo Kipi crea su lista completa en segundos';

  @override
  String get onboardingAiDemoSlideCta => '¡Quiero esto! →';

  @override
  String get onboardingAiDemoSlideUserMsg =>
      'Estoy organizando una barbacoa 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      '¡Listo! Aquí tienes todo lo que necesitas:';

  @override
  String get onboardingAiDemoSlideDone => 'Lista completa en segundos ✨';

  @override
  String get onboardingPainTitle => '¿Qué es lo que más te frustra?';

  @override
  String get onboardingPainSubtitle => 'Sea honesto: arreglaremos cada uno';

  @override
  String get onboardingPainCta => 'Sí, arregla esto por mí →';

  @override
  String get onboardingPainForget => 'Olvidé artículos en la tienda.';

  @override
  String get onboardingPainFamily => 'Mi familia nunca ve la lista.';

  @override
  String get onboardingPainOverspend => 'Siempre me paso del presupuesto';

  @override
  String get onboardingPainRepeat => 'Un viaje nunca es suficiente';

  @override
  String get aiWelcomeContent =>
      '¡Hola! 👋 ¡Soy **Kipi**, tu asistente personal de compras y recetas!\n\nEstoy aquí para ayudarte:\n🛒 **Organiza** tus compras por categorías automáticamente\n💰 **Haga un seguimiento** de su presupuesto y brinde consejos para ahorrar dinero\n🍲 **Sugiere** recetas deliciosas con lo que ya tienes\n\n¿Cómo puedo ayudarte hoy? ¡Puedes empezar creando tu primera lista!';

  @override
  String get aiWelcomeSuggestCreateList => 'Crear mi primera lista';

  @override
  String get aiWelcomeSuggestCreateListPrompt =>
      'Kipi, ayúdame a crear mi primera lista de compras.';

  @override
  String get aiWelcomeSuggestSave => '¿Cómo ahorrar dinero?';

  @override
  String get aiWelcomeSuggestSavePrompt =>
      'Kipi, ¿cómo puedes ayudarme a ahorrar dinero en la compra?';

  @override
  String get suggestionMilk => 'Leche';

  @override
  String get suggestionBread => 'Pan';

  @override
  String get suggestionEggs => 'Huevos';

  @override
  String get suggestionCoffee => 'Café';

  @override
  String get suggestionRice => 'Arroz';

  @override
  String get suggestionFruits => 'frutas';
}
