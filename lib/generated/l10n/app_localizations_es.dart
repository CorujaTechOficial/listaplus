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
  String get settingsAppBar => 'Ajustes';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Predeterminado del sistema';

  @override
  String get chooseLanguage => 'Seleccionar idioma';

  @override
  String get searchLanguage => 'Buscar idioma...';

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
  String get clearHistory => 'Limpiar historial';

  @override
  String get clearHistoryConfirm =>
      '¿Borrar todos los mensajes de esta sesión?';

  @override
  String get chatHint => 'Escribe tu mensaje...';

  @override
  String chatError(String error) {
    return 'Error al cargar el chat: $error';
  }

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Inicia sesión para desbloquear\nfunciones premium';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String loginError(String error) {
    return 'Error de inicio de sesión: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      '¡Habla de forma natural para gestionar tu lista!\n\nEjemplos:\n• \'Añade pan, queso y jamón\'\n• \'Elimina el detergente\'\n• \'Cambia el tema a azul\'\n\nEsta es una función exclusiva de Lista Plus Premium.';

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
      'Hemos recibido tus comentarios y nos ayudan a mejorar Lista Plus para todos.';

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
  String get aiEnergy => 'AI Energy';

  @override
  String get searchInConversation => 'Search in conversation...';

  @override
  String get noMessagesFound => 'No messages found';

  @override
  String get suggestedQuestions => 'Suggested questions:';

  @override
  String get shoppingAssistant => 'Shopping assistant';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased of $total purchased';
  }

  @override
  String get estimatedCost => 'Estimated';

  @override
  String get viewItems => 'View items';

  @override
  String get noItemsInList => 'No items in the list';

  @override
  String get longHistoryWarning =>
      'Long history: the assistant focuses on the latest messages for better performance.';

  @override
  String get listening => 'Listening...';

  @override
  String get addDirectToList => 'Add directly to list';

  @override
  String get unlockFullResponse => 'Unlock Full Response';

  @override
  String get switchList => 'Switch list';

  @override
  String get marketMode => 'Market Mode';

  @override
  String get backToChat => 'Back to Chat';

  @override
  String get finishShopping => 'Finish Shopping';

  @override
  String get welcomeAiAssistant => 'Welcome to AI Assistant';

  @override
  String get createListToStartAi =>
      'Create a shopping list to start using the smart chat.';

  @override
  String get howCanIHelp => 'How can I help?';

  @override
  String get chatSubtitleShort => 'Ask about prices, recipes, organization...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total purchased';
  }

  @override
  String get quickReplies => 'Quick replies:';

  @override
  String get voiceProFeature =>
      'Advanced voice commands are Pro. Enabling basic dictation...';

  @override
  String get viewPro => 'View Pro';

  @override
  String get errorLoadingChat => 'Oops! Something went wrong loading the chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Check your connection or try again later.';

  @override
  String get errorOscillation =>
      'This may occur due to network oscillations or temporary unavailability. Please try again.';

  @override
  String get activeListening => 'Active Listening';

  @override
  String get whatToDoWithItem => 'What would you like to do with this item?';

  @override
  String get viewDetails => 'View Details';

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
    return '$minutes min';
  }
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
  String get settingsAppBar => 'Ajustes';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Predeterminado del sistema';

  @override
  String get chooseLanguage => 'Seleccionar idioma';

  @override
  String get searchLanguage => 'Buscar idioma...';

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
  String get clearHistory => 'Limpiar historial';

  @override
  String get clearHistoryConfirm =>
      '¿Borrar todos los mensajes de esta sesión?';

  @override
  String get chatHint => 'Escribe tu mensaje...';

  @override
  String chatError(String error) {
    return 'Error al cargar el chat: $error';
  }

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Inicia sesión para desbloquear funciones premium';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String loginError(String error) {
    return 'Error de inicio de sesión: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      '¡Habla de forma natural para gestionar tu lista!\n\nEjemplos:\n• \'Añade pan, queso y jamón\'\n• \'Elimina el detergente\'\n• \'Cambia el tema a azul\'\n\nEsta es una función exclusiva de Lista Plus Premium.';

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
      'Hemos recibido tus comentarios y nos ayudan a mejorar Lista Plus para todos.';

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
  String get aiEnergy => 'AI Energy';

  @override
  String get searchInConversation => 'Search in conversation...';

  @override
  String get noMessagesFound => 'No messages found';

  @override
  String get suggestedQuestions => 'Suggested questions:';

  @override
  String get shoppingAssistant => 'Shopping assistant';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased of $total purchased';
  }

  @override
  String get estimatedCost => 'Estimated';

  @override
  String get viewItems => 'View items';

  @override
  String get noItemsInList => 'No items in the list';

  @override
  String get longHistoryWarning =>
      'Long history: the assistant focuses on the latest messages for better performance.';

  @override
  String get listening => 'Listening...';

  @override
  String get addDirectToList => 'Add directly to list';

  @override
  String get unlockFullResponse => 'Unlock Full Response';

  @override
  String get switchList => 'Switch list';

  @override
  String get marketMode => 'Market Mode';

  @override
  String get backToChat => 'Back to Chat';

  @override
  String get finishShopping => 'Finish Shopping';

  @override
  String get welcomeAiAssistant => 'Welcome to AI Assistant';

  @override
  String get createListToStartAi =>
      'Create a shopping list to start using the smart chat.';

  @override
  String get howCanIHelp => 'How can I help?';

  @override
  String get chatSubtitleShort => 'Ask about prices, recipes, organization...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total purchased';
  }

  @override
  String get quickReplies => 'Quick replies:';

  @override
  String get voiceProFeature =>
      'Advanced voice commands are Pro. Enabling basic dictation...';

  @override
  String get viewPro => 'View Pro';

  @override
  String get errorLoadingChat => 'Oops! Something went wrong loading the chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Check your connection or try again later.';

  @override
  String get errorOscillation =>
      'This may occur due to network oscillations or temporary unavailability. Please try again.';

  @override
  String get activeListening => 'Active Listening';

  @override
  String get whatToDoWithItem => 'What would you like to do with this item?';

  @override
  String get viewDetails => 'View Details';

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
  String get settingsAppBar => 'Ajustes';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Predeterminado del sistema';

  @override
  String get chooseLanguage => 'Seleccionar idioma';

  @override
  String get searchLanguage => 'Buscar idioma...';

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
  String get clearHistory => 'Limpiar historial';

  @override
  String get clearHistoryConfirm =>
      '¿Borrar todos los mensajes de esta sesión?';

  @override
  String get chatHint => 'Escribe tu mensaje...';

  @override
  String chatError(String error) {
    return 'Error al cargar el chat: $error';
  }

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Inicia sesión para desbloquear funciones premium';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String loginError(String error) {
    return 'Error de inicio de sesión: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      '¡Habla de forma natural para gestionar tu lista!\n\nEjemplos:\n• \'Añade pan, queso y jamón\'\n• \'Elimina el detergente\'\n• \'Cambia el tema a azul\'\n\nEsta es una función exclusiva de Lista Plus Premium.';

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
      'Hemos recibido tus comentarios y nos ayudan a mejorar Lista Plus para todos.';

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
  String get aiEnergy => 'AI Energy';

  @override
  String get searchInConversation => 'Search in conversation...';

  @override
  String get noMessagesFound => 'No messages found';

  @override
  String get suggestedQuestions => 'Suggested questions:';

  @override
  String get shoppingAssistant => 'Shopping assistant';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased of $total purchased';
  }

  @override
  String get estimatedCost => 'Estimated';

  @override
  String get viewItems => 'View items';

  @override
  String get noItemsInList => 'No items in the list';

  @override
  String get longHistoryWarning =>
      'Long history: the assistant focuses on the latest messages for better performance.';

  @override
  String get listening => 'Listening...';

  @override
  String get addDirectToList => 'Add directly to list';

  @override
  String get unlockFullResponse => 'Unlock Full Response';

  @override
  String get switchList => 'Switch list';

  @override
  String get marketMode => 'Market Mode';

  @override
  String get backToChat => 'Back to Chat';

  @override
  String get finishShopping => 'Finish Shopping';

  @override
  String get welcomeAiAssistant => 'Welcome to AI Assistant';

  @override
  String get createListToStartAi =>
      'Create a shopping list to start using the smart chat.';

  @override
  String get howCanIHelp => 'How can I help?';

  @override
  String get chatSubtitleShort => 'Ask about prices, recipes, organization...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total purchased';
  }

  @override
  String get quickReplies => 'Quick replies:';

  @override
  String get voiceProFeature =>
      'Advanced voice commands are Pro. Enabling basic dictation...';

  @override
  String get viewPro => 'View Pro';

  @override
  String get errorLoadingChat => 'Oops! Something went wrong loading the chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Check your connection or try again later.';

  @override
  String get errorOscillation =>
      'This may occur due to network oscillations or temporary unavailability. Please try again.';

  @override
  String get activeListening => 'Active Listening';

  @override
  String get whatToDoWithItem => 'What would you like to do with this item?';

  @override
  String get viewDetails => 'View Details';

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
  String get settingsAppBar => 'Ajustes';

  @override
  String get language => 'Idioma';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Predeterminado del sistema';

  @override
  String get chooseLanguage => 'Seleccionar idioma';

  @override
  String get searchLanguage => 'Buscar idioma...';

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
  String get clearHistory => 'Limpiar historial';

  @override
  String get clearHistoryConfirm =>
      '¿Borrar todos los mensajes de esta sesión?';

  @override
  String get chatHint => 'Escribe tu mensaje...';

  @override
  String chatError(String error) {
    return 'Error al cargar el chat: $error';
  }

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Inicia sesión para desbloquear funciones premium';

  @override
  String get signInGoogle => 'Iniciar sesión con Google';

  @override
  String get signInApple => 'Iniciar sesión con Apple';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String loginError(String error) {
    return 'Error de inicio de sesión: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      '¡Habla de forma natural para gestionar tu lista!\n\nEjemplos:\n• \'Añade pan, queso y jamón\'\n• \'Elimina el detergente\'\n• \'Cambia el tema a azul\'\n\nEsta es una función exclusiva de Lista Plus Premium.';

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
      'Hemos recibido tus comentarios y nos ayudan a mejorar Lista Plus para todos.';

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
  String get aiEnergy => 'AI Energy';

  @override
  String get searchInConversation => 'Search in conversation...';

  @override
  String get noMessagesFound => 'No messages found';

  @override
  String get suggestedQuestions => 'Suggested questions:';

  @override
  String get shoppingAssistant => 'Shopping assistant';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased of $total purchased';
  }

  @override
  String get estimatedCost => 'Estimated';

  @override
  String get viewItems => 'View items';

  @override
  String get noItemsInList => 'No items in the list';

  @override
  String get longHistoryWarning =>
      'Long history: the assistant focuses on the latest messages for better performance.';

  @override
  String get listening => 'Listening...';

  @override
  String get addDirectToList => 'Add directly to list';

  @override
  String get unlockFullResponse => 'Unlock Full Response';

  @override
  String get switchList => 'Switch list';

  @override
  String get marketMode => 'Market Mode';

  @override
  String get backToChat => 'Back to Chat';

  @override
  String get finishShopping => 'Finish Shopping';

  @override
  String get welcomeAiAssistant => 'Welcome to AI Assistant';

  @override
  String get createListToStartAi =>
      'Create a shopping list to start using the smart chat.';

  @override
  String get howCanIHelp => 'How can I help?';

  @override
  String get chatSubtitleShort => 'Ask about prices, recipes, organization...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total purchased';
  }

  @override
  String get quickReplies => 'Quick replies:';

  @override
  String get voiceProFeature =>
      'Advanced voice commands are Pro. Enabling basic dictation...';

  @override
  String get viewPro => 'View Pro';

  @override
  String get errorLoadingChat => 'Oops! Something went wrong loading the chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Check your connection or try again later.';

  @override
  String get errorOscillation =>
      'This may occur due to network oscillations or temporary unavailability. Please try again.';

  @override
  String get activeListening => 'Active Listening';

  @override
  String get whatToDoWithItem => 'What would you like to do with this item?';

  @override
  String get viewDetails => 'View Details';

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
}
