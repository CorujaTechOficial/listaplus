// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Liste de Courses';

  @override
  String get lists => 'Listes';

  @override
  String get pantry => 'Garde-manger';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recettes';

  @override
  String get navLists => 'Listes';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Annuler';

  @override
  String get save => 'Enregistrer';

  @override
  String get create => 'Créer';

  @override
  String get add => 'Ajouter';

  @override
  String get remove => 'Retirer';

  @override
  String get delete => 'Supprimer';

  @override
  String get edit => 'Modifier';

  @override
  String get copy => 'Copier';

  @override
  String get next => 'Suivant';

  @override
  String get retry => 'Réessayer';

  @override
  String get regenerate => 'Régénérer';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get confirm => 'Confirmer';

  @override
  String get close => 'Fermer';

  @override
  String get import => 'Importer';

  @override
  String get rename => 'Renommer';

  @override
  String get upgrade => 'Passer à Premium';

  @override
  String get clear => 'Vider';

  @override
  String error(String message) {
    return 'Erreur : $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Erreur : $message';
  }

  @override
  String get purchaseError =>
      'Erreur lors du traitement de l\'achat. Réessayez.';

  @override
  String get restoreError =>
      'Erreur lors de la restauration des achats. Réessayez.';

  @override
  String get loading => 'Chargement...';

  @override
  String get fieldRequired => 'Champ requis';

  @override
  String get addedFeedback => 'Ajouté !';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Quitter le mode Achats';

  @override
  String get exit => 'Sortie';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sélectionnés',
      one: '$count sélectionné',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimé';

  @override
  String get alreadyPurchased => 'Déjà acheté';

  @override
  String get clearList => 'Vider la liste';

  @override
  String get clearPurchased => 'Vider les achats';

  @override
  String get share => 'Partager';

  @override
  String get shareViaCode => 'Partager via un code';

  @override
  String get importViaCode => 'Importer via un code';

  @override
  String get listAssistant => 'Assistant liste';

  @override
  String get globalAssistant => 'Assistant global';

  @override
  String get becomePremium => 'Devenir Premium';

  @override
  String get manageSubscription => 'Gérer l\'abonnement';

  @override
  String get completePurchase => 'Finaliser l\'achat';

  @override
  String get confirmClearList => 'Supprimer tous les articles ?';

  @override
  String get shareListTitle => 'Partager la liste';

  @override
  String get shareThisCode => 'Partagez ce code :';

  @override
  String get validForLimitedTime => 'Valable pour une durée limitée';

  @override
  String get importListTitle => 'Importer une liste';

  @override
  String get enterCodeHint => 'Entrez le code';

  @override
  String get confirmArchiveTitle => 'Finaliser l\'achat';

  @override
  String get confirmArchiveContent =>
      'Finaliser cet achat et archiver la liste ?';

  @override
  String get complete => 'Terminer';

  @override
  String get listArchived => 'Liste archivée avec succès !';

  @override
  String listAdded(String listName) {
    return '$listName ajoutée !';
  }

  @override
  String get buy => 'Acheter';

  @override
  String get unmark => 'Démarquer';

  @override
  String confirmDeleteItems(int count) {
    return 'Supprimer $count article(s) ?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmer';

  @override
  String confirmContent(int count) {
    return 'Supprimer $count article(s) ?';
  }

  @override
  String get archiveList => 'Archiver la liste';

  @override
  String get pantryAppBar => 'Garde-manger';

  @override
  String get generateShoppingList => 'Générer une liste de courses';

  @override
  String get pantryEmpty => 'Garde-manger vide';

  @override
  String get pantryEmptySubtitle =>
      'Ajoutez les produits que vous souhaitez avoir chez vous';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit article(s) à acheter';
  }

  @override
  String get noItemsToBuy => 'Aucun article à acheter';

  @override
  String get newPantryList => 'Courses du garde-manger';

  @override
  String get newListTitle => 'Nouvelle liste de courses';

  @override
  String itemsWillBeAdded(int count) {
    return '$count article(s) seront ajoutés';
  }

  @override
  String get listNameLabel => 'Nom de la liste';

  @override
  String listCreated(String name, int count) {
    return 'Liste \"$name\" créée avec $count articles';
  }

  @override
  String get noTracking => 'Sans suivi';

  @override
  String get markAsPurchased => 'Marquer comme acheté';

  @override
  String editPantryItem(String name) {
    return 'Modifier $name';
  }

  @override
  String get idealQuantity => 'Quantité idéale';

  @override
  String get currentQuantity => 'Quantité actuelle';

  @override
  String get consumed => 'Consommé';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name réapprovisionné à $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Retirer \"$name\" du garde-manger ?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Modifier $name';
  }

  @override
  String get settingsAppBar => 'Paramètres';

  @override
  String get language => 'Langue';

  @override
  String get languagePortuguese => 'Portugais (Brésil)';

  @override
  String get languageEnglish => 'Anglais';

  @override
  String get languageSystem => 'Par défaut du système';

  @override
  String get chooseLanguage => 'Choisir la langue';

  @override
  String get searchLanguage => 'Rechercher une langue...';

  @override
  String get currency => 'Devise';

  @override
  String get chooseCurrency => 'Sélectionnez la devise';

  @override
  String get searchCurrency => 'Rechercher une devise...';

  @override
  String get appearance => 'Apparence';

  @override
  String get light => 'Clair';

  @override
  String get system => 'Système';

  @override
  String get dark => 'Sombre';

  @override
  String get themeColor => 'Couleur du thème';

  @override
  String get dynamicColors => 'Couleurs dynamiques';

  @override
  String get dynamicColorsSubtitle =>
      'Utiliser des couleurs basées sur votre fond d\'écran';

  @override
  String get dynamicColorsEnabledWarning =>
      'Désactivez les couleurs dynamiques pour que la couleur du thème prenne effet';

  @override
  String get finance => 'Finances';

  @override
  String get monthlyBudgetNav => 'Budget mensuel';

  @override
  String get budgetSubtitle => 'Suivez vos dépenses mensuelles';

  @override
  String get data => 'Données';

  @override
  String get backupNav => 'Sauvegarde';

  @override
  String get backupSubtitle => 'Exporter ou importer vos données';

  @override
  String get about => 'À propos';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Confidentialité';

  @override
  String get termsOfUse => 'Conditions d\'utilisation';

  @override
  String get backupTitle => 'Sauvegarde';

  @override
  String get backupPremiumDescription =>
      'La sauvegarde et l\'exportation sont une fonctionnalité Premium';

  @override
  String get exportData => 'Exporter les données';

  @override
  String get exportDataSubtitle =>
      'Enregistrer toutes les listes au format JSON';

  @override
  String get importData => 'Importer les données';

  @override
  String get importDataSubtitle => 'Restaurer les listes depuis un JSON';

  @override
  String get importJsonTitle => 'Importer JSON';

  @override
  String get importJsonHint => 'Collez le JSON de sauvegarde ici...';

  @override
  String get backupExported => 'Sauvegarde exportée !';

  @override
  String get budgetAppBar => 'Budget mensuel';

  @override
  String get budgetPremiumLocked =>
      'Le budget mensuel global est une fonction Premium';

  @override
  String get budgetUpgradePrompt => 'Passez à Premium pour débloquer';

  @override
  String get noBudgetDefined => 'Aucun budget défini';

  @override
  String totalEstimated(String amount) {
    return 'Total estimé : $amount';
  }

  @override
  String get setBudgetButton => 'Définir le budget';

  @override
  String get budgetLists => 'Listes';

  @override
  String get budgetValueLabel => 'Montant';

  @override
  String get setBudgetTitle => 'Budget mensuel';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tous';

  @override
  String get filterPending => 'En attente';

  @override
  String get filterPurchased => 'Achetés';

  @override
  String get sortName => 'Nom';

  @override
  String get sortCategory => 'Catégorie';

  @override
  String get sortDate => 'Date';

  @override
  String get sortManual => 'Manuel';

  @override
  String get addItem => 'Ajouter un article';

  @override
  String get itemName => 'Nom de l\'article';

  @override
  String get quantityShort => 'Qté';

  @override
  String get unit => 'Unité';

  @override
  String get category => 'Catégorie';

  @override
  String get estimatedPrice => 'Prix estimé';

  @override
  String get addItemPrice => 'Prix estimé';

  @override
  String get editItem => 'Modifier l\'article';

  @override
  String get quantityFull => 'Quantité';

  @override
  String get editItemPrice => 'Prix estimé';

  @override
  String get addToPantry => 'Ajouter au garde-manger';

  @override
  String addToPantryPrompt(String name) {
    return 'Ajouter \"$name\" à votre garde-manger ?';
  }

  @override
  String get yes => 'Oui';

  @override
  String get productName => 'Nom du produit';

  @override
  String get idealQty => 'Qté idéale';

  @override
  String get currentQty => 'Qté actuelle';

  @override
  String get trackStock => 'Suivre le stock';

  @override
  String get trackStockActive => 'Apparaît dans les suggestions d\'achat';

  @override
  String get trackStockInactive => 'Ne génère pas de suggestion d\'achat';

  @override
  String get createListDialog => 'Créer une liste';

  @override
  String get renameListDialog => 'Renommer la liste';

  @override
  String get listHistory => 'Historique des listes';

  @override
  String get myLists => 'Mes listes';

  @override
  String get viewActive => 'Voir actives';

  @override
  String get viewHistory => 'Voir l\'historique';

  @override
  String get noArchivedLists => 'Aucune liste archivée';

  @override
  String get noActiveLists => 'Aucune liste active';

  @override
  String completedOn(String date) {
    return 'Terminée le $date';
  }

  @override
  String get sharedLabel => 'Partagée';

  @override
  String get restore => 'Restaurer';

  @override
  String get removeSharedTooltip => 'Retirer';

  @override
  String get deleteListTitle => 'Supprimer la liste';

  @override
  String deleteListContent(String name) {
    return 'Êtes-vous sûr de vouloir supprimer \"$name\" ? Tous les articles seront retirés.';
  }

  @override
  String get removeSharedListTitle => 'Retirer la liste partagée';

  @override
  String removeSharedListContent(String name) {
    return 'Retirer \"$name\" de vos listes ? La liste originale ne sera pas affectée.';
  }

  @override
  String get createNewList => 'Créer une nouvelle liste';

  @override
  String get aiAssistant => 'Assistant IA';

  @override
  String get aiAssistantDescription =>
      'Obtenez des suggestions intelligentes, des recettes et des conseils personnalisés avec notre assistant IA.';

  @override
  String get generalAssistant => 'Assistant général';

  @override
  String get newChat => 'Nouvelle discussion';

  @override
  String get noHistory => 'Pas d\'historique de discussion';

  @override
  String get deleteSession => 'Supprimer le chat';

  @override
  String get deleteSessionConfirm =>
      'Etes-vous sûr de vouloir supprimer ce chat ? Les messages seront définitivement perdus.';

  @override
  String get clearHistory => 'Effacer l\'historique';

  @override
  String get clearHistoryConfirm =>
      'Effacer tous les messages de cette session ?';

  @override
  String get chatHint => 'Tapez votre message...';

  @override
  String get chatHintBlocked => 'Débloquez l\'IA pour discuter';

  @override
  String chatError(String error) {
    return 'Erreur lors du chargement du chat : $error';
  }

  @override
  String get listHelp => 'Comment puis-je vous aider avec votre liste ?';

  @override
  String get generalHelp =>
      'Comment puis-je vous aider pour vos courses aujourd\'hui ?';

  @override
  String get chatSubtitle =>
      'Demandez des suggestions d\'articles, des recettes ou des astuces d\'économie.';

  @override
  String get aiError =>
      'Désolé, une erreur s\'est produite lors du traitement de votre demande. Vérifiez votre connexion ou réessayez plus tard.';

  @override
  String get aiLimitAlmostReached => 'Presque à court de messages IA';

  @override
  String get unlockAi => 'Débloquez une IA illimitée';

  @override
  String get aiTeaserFallback =>
      'Abonnez-vous à Premium pour débloquer la réponse complète et obtenir des conseils d\'IA illimités pour vos achats...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining AI actions left this month — upgrade for unlimited';
  }

  @override
  String get aiUsageExhausted =>
      'Monthly AI limit reached. Upgrade to Pro for unlimited →';

  @override
  String get kipiListTitle => 'Liste Kipi';

  @override
  String get loginPrompt =>
      'Connectez-vous pour débloquer\nles fonctionnalités Premium';

  @override
  String get signInGoogle => 'Se connecter avec Google';

  @override
  String get signInApple => 'Se connecter avec Apple';

  @override
  String get continueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get onboardingWelcomeTitle => 'Bienvenue sur KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'La façon la plus intelligente d\'organiser vos courses et d\'économiser de l\'argent.';

  @override
  String get onboardingSetupTitle => 'Personnalisez votre expérience';

  @override
  String get onboardingSetupDesc =>
      'Choisissez à quoi vous souhaitez que KipiList apparaisse et fonctionne pour vous.';

  @override
  String get onboardingLoginTitle => 'Enregistrez tout dans le cloud';

  @override
  String get onboardingLoginDesc =>
      'Vos données synchronisées sur tous vos appareils';

  @override
  String get onboardingShareTitle => 'Partagez avec ceux que vous aimez';

  @override
  String get onboardingShareDesc =>
      'Synchronisez les listes avec votre famille et vos amis en temps réel';

  @override
  String get onboardingPremiumTitle => 'Débloquez toutes les fonctionnalités';

  @override
  String get onboardingPremiumSubtitle =>
      'Tirez le meilleur parti de vos listes de courses';

  @override
  String get onboardingAnnualBadge => 'Meilleur rapport qualité-prix';

  @override
  String get onboardingMonthlyLabel => 'Mensuel';

  @override
  String get onboardingAnnualLabel => 'Annuel';

  @override
  String get onboardingViewAllPlans => 'Voir tous les forfaits';

  @override
  String get onboardingSubscribeCta => 'S\'abonner';

  @override
  String get onboardingCancelAnytime =>
      'Annulez à tout moment. Aucun engagement.';

  @override
  String get onboardingContinueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get onboardingRestore => 'Restaurer';

  @override
  String get onboardingRestoreDesc =>
      'Vous avez déjà un abonnement ? Appuyez ici pour le restaurer.';

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
  String get onboardingExit => 'Sortie';

  @override
  String get onboardingPersonalizationTitle => 'Faisons connaissance avec vous';

  @override
  String get onboardingPersonalizationDesc =>
      'Nous l\'utiliserons pour personnaliser vos suggestions et rendre vos achats plus intelligents.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Quel est votre plat préféré ?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'par ex. Pizzas, Sushis, Lasagnes...';

  @override
  String get onboardingPersonalizationCta => 'Continuer';

  @override
  String get onboardingPersonalizationSkip => 'Passer pour l\'instant';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Dites-nous votre plat préféré pour continuer';

  @override
  String get settingsDefaultScreen => 'Écran d\'accueil par défaut';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Choisissez entre une liste de courses ou un chat AI';

  @override
  String get settingsScreenList => 'Liste de courses';

  @override
  String get settingsScreenChat => 'Chat IA';

  @override
  String loginError(String error) {
    return 'Erreur de connexion : $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Erreur lors du chargement des offres. Essayer à nouveau.';

  @override
  String get paywallPurchaseError =>
      'Impossible de finaliser l\'achat. Essayer à nouveau.';

  @override
  String get paywallRestoreError =>
      'Aucun abonnement actif trouvé à restaurer.';

  @override
  String paywallTrialDays(Object days) {
    return '$days JOURS GRATUITS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count SEMAINES GRATUITES',
      one: '$count SEMAINE GRATUITE',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MOIS GRATUIT',
      one: '$count MOIS GRATUIT',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'Essayez KipiList Pro gratuitement pendant 7 jours';

  @override
  String get paywallTrialSubtitle =>
      'Annulez à tout moment. Pas de frais aujourd\'hui.';

  @override
  String get paywallTrialCta => 'Commencer l\'essai gratuit';

  @override
  String get recipeAddToList => 'Ajouter à la liste de courses';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ingrédients ajoutés à $listName';
  }

  @override
  String get noListSelected => 'No list selected. Open a list first.';

  @override
  String get paywallFeaturesTitle => 'Tout ce dont vous avez besoin :';

  @override
  String get paywallFeatureUnlimitedLists => 'Listes illimitées';

  @override
  String get paywallFeatureSmartAI => 'IA intelligente';

  @override
  String get paywallFeatureExpenseControl => 'Contrôle des dépenses';

  @override
  String get paywallFeatureSharing => 'Partage';

  @override
  String get paywallBeforeAfterTitle => 'IA avant et après :';

  @override
  String get paywallLabelCommon => 'Commun';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'riz';

  @override
  String get paywallBeforeItem2 => 'savon';

  @override
  String get paywallBeforeItem3 => 'viande';

  @override
  String get paywallBeforeItem4 => 'pain';

  @override
  String get paywallAfterItem1 => 'Grains';

  @override
  String get paywallAfterItem2 => 'Nettoyage';

  @override
  String get paywallAfterItem3 => 'Viandes';

  @override
  String get paywallAfterItem4 => 'Boulangerie';

  @override
  String get paywallTestimonialsTitle => 'Ce que disent nos utilisateurs :';

  @override
  String get paywallTestimonial1Name => 'Anne S.';

  @override
  String get paywallTestimonial1Text =>
      'L\'IA organise mes courses en quelques secondes. Je gagne 20 minutes par sortie de marché.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Je n\'ai plus jamais oublié un élément de la liste. Le chat IA est sensationnel !';

  @override
  String get paywallSocialProof => '+2 400 familles l\'utilisent';

  @override
  String get paywallCtaUnlock => 'Débloquez PRO';

  @override
  String get paywallBestValue => 'MEILLEURE VALEUR';

  @override
  String get paywallMostPopular => 'LE PLUS POPULAIRE';

  @override
  String get paywallProLabel => 'PRO';

  @override
  String get paywallSafeCheckout => 'Paiement sécurisé';

  @override
  String get paywallSelectPlan => 'Choisissez votre forfait :';

  @override
  String paywallSavePercent(Object percent) {
    return 'ÉCONOMISEZ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Seulement $price/mois';
  }

  @override
  String get paywallPackageAnnual => 'Forfait annuel';

  @override
  String get paywallPackageMonthly => 'Forfait mensuel';

  @override
  String get paywallPackageLifetime => 'Accès à vie';

  @override
  String get paywallCancelAnytime => 'Annulez à tout moment. Aucun engagement.';

  @override
  String paywallTrialInCard(int days) {
    return 'First $days days FREE';
  }

  @override
  String get paywallSecuredByStore => 'Secured by Google Play · Cancel anytime';

  @override
  String get paywallPolicy => 'politique de confidentialité';

  @override
  String get paywallTerms => 'Conditions d\'utilisation';

  @override
  String get paywallRestore => 'Restaurer';

  @override
  String get paywallHeroHeadline => 'Kipi AI toujours à vos côtés';

  @override
  String get paywallHeroSubtitle =>
      'Ajoutez des éléments, organisez des listes et gagnez du temps avec l\'IA dans votre poche';

  @override
  String get paywallBenefit1Desc =>
      'Ajoute, organise et suggère des éléments 24h/24 et 7j/7';

  @override
  String get paywallBenefit2Desc => 'Pas de limite de 3 listes';

  @override
  String get paywallBenefit3Desc => 'Suivi des dépenses et listes de famille';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilité totale';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Commencez gratuitement – $days jours';
  }

  @override
  String get premiumUpgrade => 'Passez à Premium pour débloquer';

  @override
  String get itemRemoved => 'Article retiré';

  @override
  String get undo => 'Annuler';

  @override
  String get emptyListTitle => 'Votre liste est vide';

  @override
  String get emptyListSubtitle => 'Ajoutez des articles pour commencer';

  @override
  String get noListFoundTitle => 'Aucune liste trouvée';

  @override
  String get noListFoundSubtitle => 'Créez votre première liste pour commencer';

  @override
  String get createFirstList => 'Créer une première liste';

  @override
  String get listBudgetTitle => 'Budget de la liste';

  @override
  String get budgetAmountLabel => 'Montant du budget';

  @override
  String get removeBudget => 'Retirer';

  @override
  String get prefUnlimitedLists => 'Listes illimitées';

  @override
  String get prefSharing => 'Partager des listes';

  @override
  String get prefFullHistory => 'Historique complet';

  @override
  String get prefExportData => 'Exporter les données';

  @override
  String get prefCustomThemes => 'Thèmes personnalisés';

  @override
  String get prefMonthlyBudget => 'Budget mensuel global';

  @override
  String get prefAIAssistant => 'Assistant IA personnel';

  @override
  String get prefUnlimitedPantry => 'Garde-manger illimité';

  @override
  String get prefInteractiveArtifacts => 'Artefacts interactifs IA';

  @override
  String get themeGreen => 'Vert';

  @override
  String get themeBlue => 'Bleu';

  @override
  String get themePurple => 'Violet';

  @override
  String get themeRed => 'Rouge';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Rose';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Ambre';

  @override
  String get themeTeal => 'Sarcelle';

  @override
  String get themeBrown => 'Marron';

  @override
  String get catFruits => 'Fruits';

  @override
  String get catCleaning => 'Nettoyage';

  @override
  String get catBeverages => 'Boissons';

  @override
  String get catBakery => 'Boulangerie';

  @override
  String get catOthers => 'Autres';

  @override
  String get unitPack => 'paquet';

  @override
  String get shareSubject => 'Liste de courses';

  @override
  String get monthlyBudgetTitle => 'Budget mensuel';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Supprimer la liste';

  @override
  String get pantryItemRemoved => 'Article retiré';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit articles à acheter',
      one: '$deficit article à acheter',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total du panier';

  @override
  String get restockLabel => 'Réapprovisionner';

  @override
  String get advancedFeatures => 'Fonctionnalités avancées';

  @override
  String get selectAll => 'Tout sélectionner';

  @override
  String get deselectAll => 'Tout désélectionner';

  @override
  String get monthlyBudgetAppBar => 'Budget mensuel';

  @override
  String get budgetEditTitle => 'Budget mensuel';

  @override
  String get budgetDashboardTitle => 'Tableau de bord';

  @override
  String get selectListForDashboard =>
      'Sélectionnez une liste pour voir le tableau de bord.';

  @override
  String get spendingAnalysis => 'Analyse des dépenses';

  @override
  String get noItemsToAnalyze => 'Aucun article dans la liste à analyser.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marquez les articles comme achetés pour voir l\'analyse.';

  @override
  String get totalSpending => 'Total dépensé';

  @override
  String get spendingByCategory => 'Dépenses par catégorie';

  @override
  String get achievements => 'Succès';

  @override
  String get exportPdfExcel => 'Exporter PDF/Excel';

  @override
  String get exportPdf => 'Exporter en PDF';

  @override
  String get exportExcel => 'Exporter en Excel';

  @override
  String get organizingAi => 'ORGANISATION PAR IA...';

  @override
  String get yesLabel => 'Oui';

  @override
  String get noLabel => 'Non';

  @override
  String get shareListText => 'Ma liste de courses';

  @override
  String get emptyListAddItems =>
      'Votre liste est vide ! Ajoutez d\'abord des articles. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Liste organisée comme par magie par catégories ! ✨';

  @override
  String get shoppingMode => 'Mode courses';

  @override
  String get smartOrganization => 'Organisation intelligente';

  @override
  String get savings => 'Économies';

  @override
  String get shoppingModeHeader => 'MODE COURSES';

  @override
  String get shareAsText => 'Envoyer les articles sous forme de texte formaté';

  @override
  String get shareRealtime =>
      'Synchronisation en temps réel avec d\'autres personnes';

  @override
  String get quickRecipe => 'Recette rapide';

  @override
  String get quickRecipePrompt =>
      'Suggérez des recettes avec les articles de ma liste.';

  @override
  String get economyTips => 'Conseils d\'économie';

  @override
  String get economyTipsPrompt => 'Comment puis-je économiser sur cet achat ?';

  @override
  String get organizeAisles => 'Organiser par rayons';

  @override
  String get organizeAislesPrompt => 'Organisez par rayons du supermarché.';

  @override
  String get recipeSuggestion => 'Suggestion de recette';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining crédits restants';
  }

  @override
  String get addAllToList => 'Tout ajouter à la liste';

  @override
  String get organizeByAisles => 'Organiser par rayons';

  @override
  String get voiceTranscriptionTooltip => 'Saisie vocale (Gratuit)';

  @override
  String get aiVoiceCommandTooltip => 'Commande vocale IA (Premium)';

  @override
  String get voiceCommandTitle => 'Commande vocale IA';

  @override
  String get voiceCommandContent =>
      'Parlez naturellement pour gérer votre liste !\n\nExemples :\n• \'Ajoute du pain, du fromage et du jambon\'\n• \'Retire la lessive\'\n• \'Change le thème en bleu\'\n\nIl s\'agit d\'une fonctionnalité exclusive de KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Voir les offres';

  @override
  String get itemsAddedSuccess => 'Articles ajoutés à la liste avec succès !';

  @override
  String get viewList => 'Voir la liste';

  @override
  String get feedbackTitle => 'Envoyer un avis';

  @override
  String get feedbackPrompt => 'Que souhaitez-vous partager ?';

  @override
  String get feedbackTypeBug => 'Signaler un bug';

  @override
  String get feedbackTypeBugHint => 'Quelque chose ne fonctionne pas';

  @override
  String get feedbackTypeSuggestion => 'Suggestion';

  @override
  String get feedbackTypeSuggestionHint => 'Idée pour améliorer l\'application';

  @override
  String get feedbackTypeTranslation => 'Problème de traduction';

  @override
  String get feedbackTypeTranslationHint =>
      'Traduction incorrecte ou maladroite';

  @override
  String get feedbackTypeFeature => 'Demande de fonctionnalité';

  @override
  String get feedbackTypeFeatureHint => 'Fonctionnalité que vous aimeriez voir';

  @override
  String get feedbackTypeOther => 'Autre';

  @override
  String get feedbackTypeOtherHint => 'Autre type d\'avis';

  @override
  String get feedbackHint => 'Décrivez votre avis en détail...';

  @override
  String get feedbackSend => 'Envoyer l\'avis';

  @override
  String get feedbackSending => 'Envoi en cours...';

  @override
  String get feedbackThankYou => 'Merci !';

  @override
  String get feedbackThankYouMessage =>
      'Votre avis a bien été reçu et nous aide à améliorer KipiList pour tout le monde.';

  @override
  String get feedbackBack => 'Retour';

  @override
  String feedbackError(String error) {
    return 'Erreur d\'envoi : $error';
  }

  @override
  String get feedbackRetry => 'Réessayer';

  @override
  String get feedbackSettingsTitle => 'Envoyer un avis';

  @override
  String get feedbackSettingsSubtitle =>
      'Signaler des bugs, suggérer des améliorations ou corriger des traductions';

  @override
  String get aiEnergy => 'Énergie IA';

  @override
  String get searchInConversation => 'Rechercher dans une conversation...';

  @override
  String get noMessagesFound => 'Aucun message trouvé';

  @override
  String get suggestedQuestions => 'Questions suggérées :';

  @override
  String get shoppingAssistant => 'Assistante commerciale';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased sur $total achetés';
  }

  @override
  String get estimatedCost => 'Estimé';

  @override
  String get viewItems => 'Afficher les articles';

  @override
  String get noItemsInList => 'Aucun élément dans la liste';

  @override
  String get longHistoryWarning =>
      'Longue histoire : l\'assistant se concentre sur les derniers messages pour de meilleures performances.';

  @override
  String get listening => 'Écoute...';

  @override
  String get addDirectToList => 'Ajouter directement à la liste';

  @override
  String get unlockFullResponse => 'Débloquez une réponse complète';

  @override
  String get switchList => 'Changer de liste';

  @override
  String get marketMode => 'Mode marché';

  @override
  String get backToChat => 'Retour au chat';

  @override
  String get finishShopping => 'Terminer vos achats';

  @override
  String get welcomeAiAssistant => 'Bienvenue dans AI Assistant';

  @override
  String get createListToStartAi =>
      'Créez une liste de courses pour commencer à utiliser le chat intelligent.';

  @override
  String get howCanIHelp => 'Comment puis-je aider ?';

  @override
  String get chatSubtitleShort =>
      'Renseignez-vous sur les tarifs, les recettes, l\'organisation...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total acheté';
  }

  @override
  String get quickReplies => 'Réponses rapides :';

  @override
  String get voiceProFeature =>
      'Les commandes vocales avancées sont Pro. Activation de la dictée de base...';

  @override
  String get viewPro => 'Voir Pro';

  @override
  String get errorLoadingChat =>
      'Oups ! Une erreur s\'est produite lors du chargement du chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Vérifiez votre connexion ou réessayez plus tard.';

  @override
  String get errorOscillation =>
      'Cela peut être dû à des oscillations du réseau ou à une indisponibilité temporaire. Veuillez réessayer.';

  @override
  String get activeListening => 'Écoute active';

  @override
  String get whatToDoWithItem => 'Que souhaiteriez-vous faire avec cet objet ?';

  @override
  String get viewDetails => 'Afficher les détails';

  @override
  String get openMenu => 'Ouvrir le menu';

  @override
  String get viewRecipe => 'Voir la recette';

  @override
  String get recipeCreated => 'Recette créée !';

  @override
  String get editRecipe => 'Modifier';

  @override
  String get deleteRecipe => 'Supprimer';

  @override
  String get deleteRecipeConfirm => 'Supprimer cette recette ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Êtes-vous sûr de vouloir supprimer \"$recipeName\" ? Cette action est irréversible.';
  }

  @override
  String get ingredients => 'Ingrédients';

  @override
  String get instructions => 'Instructions';

  @override
  String get prepTime => 'Temps de préparation';

  @override
  String get recipeSaved => 'Recette enregistrée !';

  @override
  String get noRecipesSaved => 'Aucune recette enregistrée';

  @override
  String get noRecipesSavedHint =>
      'Créez votre première recette personnalisée en appuyant sur le bouton ci-dessous.';

  @override
  String get myRecipes => 'Mes Recettes';

  @override
  String get newRecipe => 'Nouvelle Recette';

  @override
  String get loadingRecipes => 'Chargement de vos recettes...';

  @override
  String get errorLoadingRecipes => 'Erreur lors du chargement des recettes';

  @override
  String get addIngredient => 'Ajouter un ingrédient';

  @override
  String get saveRecipe => 'Enregistrer';

  @override
  String get recipeName => 'Nom de la recette';

  @override
  String get shortDescription => 'Description courte';

  @override
  String get prepTimeMinutes => 'Temps de préparation (minutes)';

  @override
  String get instructionsHint => 'Tapez une étape par ligne...';

  @override
  String get addPhoto => 'Ajouter une photo';

  @override
  String get imageUrlPlaceholder => 'Ou collez l\'URL d\'une image';

  @override
  String get tags => 'Balises';

  @override
  String get recipeTags => 'Tags de la recette';

  @override
  String get suggestedTags => 'Suggérés';

  @override
  String get searchRecipes => 'Rechercher des recettes...';

  @override
  String get filterByTag => 'Filtrer par tag';

  @override
  String get allTags => 'Tous';

  @override
  String get recipeDeleted => 'Recette supprimée';

  @override
  String get saveChanges => 'Enregistrer les modifications';

  @override
  String get editRecipeTitle => 'Modifier la recette';

  @override
  String get newRecipeTitle => 'Nouvelle Recette';

  @override
  String get requiredField => 'Requis';

  @override
  String get chooseImageSource => 'Choisir la source de l\'image';

  @override
  String get gallery => 'Galerie';

  @override
  String get enterUrl => 'Entrer l\'URL';

  @override
  String get recipeImage => 'Image de la recette';

  @override
  String get removeImage => 'Retirer l\'image';

  @override
  String get mealPlannerTitle => 'Planning des repas';

  @override
  String get mealPlannerViewMonthly => 'Vue mensuelle';

  @override
  String get mealPlannerViewWeekly => 'Vue hebdomadaire';

  @override
  String get mealPlannerNoMeals => 'Aucun repas planifié';

  @override
  String get mealPlannerNoMealsHint =>
      'Appuyez sur un jour pour ajouter un repas';

  @override
  String get mealPlannerLoading => 'Chargement du planning des repas...';

  @override
  String get mealPlannerError =>
      'Erreur lors du chargement du planning des repas';

  @override
  String get mealPlannerAddMeal => 'Ajouter un repas';

  @override
  String get mealPlannerEditMeal => 'Modifier le repas';

  @override
  String get mealPlannerDeleteMeal => 'Retirer le repas';

  @override
  String get mealPlannerMealDeleted => 'Repas retiré';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count portions',
      one: '$count portion',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Portions';

  @override
  String get mealPlannerNoteLabel => 'Note (optionnel)';

  @override
  String get mealPlannerSelectRecipe => 'Sélectionner une recette';

  @override
  String get mealPlannerSearchRecipes => 'Rechercher des recettes...';

  @override
  String get mealPlannerNoRecipesFound => 'Aucune recette trouvée';

  @override
  String get mealPlannerNoRecipesHint =>
      'Créez d\'abord des recettes dans l\'onglet Recettes';

  @override
  String get mealPlannerSave => 'Ajouter au planning';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count sur $total repas planifiés';
  }

  @override
  String get mealPlannerGenerateList => 'Générer une liste de courses';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Ajouter tous les ingrédients des repas prévus cette semaine à votre liste de courses ?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrédient(s) ajouté(s) à votre liste !';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Aucun ingrédient à ajouter. Planifiez d\'abord des repas avec des recettes.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Créez d\'abord une liste de courses.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Petit-déjeuner';

  @override
  String get mealPlannerMealTypeLunch => 'Déjeuner';

  @override
  String get mealPlannerMealTypeDinner => 'Dîner';

  @override
  String get mealPlannerMealTypeSnack => 'Collation';

  @override
  String get mealPlannerDateLabel => 'Date';

  @override
  String get mealPlannerWeekEmpty => 'Rien de planifié pour cette semaine';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Appuyez sur n\'importe quel jour pour commencer à planifier vos repas !';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes minutes';
  }

  @override
  String get inviteToList => 'Inviter à lister';

  @override
  String get shareApp => 'Partager l\'application';

  @override
  String get shareAppDescription => 'Invitez des amis à utiliser KipiList';

  @override
  String shareReferralText(Object url) {
    return 'J\'utilise KipiList pour organiser mes courses ! Téléchargez via mon lien et nous obtenons tous les deux 7 jours de Premium gratuits : $url';
  }

  @override
  String get shareReferralSubject => 'Obtenez 7 jours de KipiList Premium !';

  @override
  String get gestureHint =>
      'Maintenez enfoncé pour sélectionner • Faites glisser pour supprimer';

  @override
  String get catalogTitle => 'Catalogue';

  @override
  String get catalogMyFrequents => 'Mes fréquents';

  @override
  String get catalogSearchGlobal => 'Rechercher n\'importe quel produit...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Rechercher dans $category...';
  }

  @override
  String get catalogSortPopular => 'Le plus populaire';

  @override
  String get catalogSortAZ => 'A à Z';

  @override
  String get catalogFilterNational => 'Nationaux';

  @override
  String get catalogRareSection => 'moins courant dans votre pays';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Ajouter $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Produit introuvable, saisissez le nom';

  @override
  String get catalogBrowse => 'Parcourir le catalogue';

  @override
  String get offlineBanner => 'Vous êtes hors ligne';

  @override
  String get consentTitle => 'Confidentialité et analyses';

  @override
  String get consentBody =>
      'KipiList utilise Firebase Analytics pour améliorer votre expérience. Vos données sont traitées conformément à notre politique de confidentialité.';

  @override
  String get consentAccept => 'Accepter';

  @override
  String get consentDecline => 'Non merci';

  @override
  String get mealPlannerPantryAllAvailable => 'En stock';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count éléments manquants',
      one: '$count élément manquant',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Date d\'expiration';

  @override
  String get notInformed => 'Pas informé';

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
  String get manageCategoriesTitle => 'Gérer les catégories';

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
  String get sortAZ => 'A à Z';

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
  String get backToToday => 'Retour à aujourd\'hui';

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

/// The translations for French, as used in Canada (`fr_CA`).
class AppLocalizationsFrCa extends AppLocalizationsFr {
  AppLocalizationsFrCa() : super('fr_CA');

  @override
  String get appTitle => 'Liste de Courses';

  @override
  String get lists => 'Listes';

  @override
  String get pantry => 'Garde-manger';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recettes';

  @override
  String get navLists => 'Listes';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Annuler';

  @override
  String get save => 'Enregistrer';

  @override
  String get create => 'Créer';

  @override
  String get add => 'Ajouter';

  @override
  String get remove => 'Retirer';

  @override
  String get delete => 'Supprimer';

  @override
  String get edit => 'Modifier';

  @override
  String get copy => 'Copier';

  @override
  String get next => 'Suivant';

  @override
  String get retry => 'Réessayer';

  @override
  String get regenerate => 'Régénérer';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get confirm => 'Confirmer';

  @override
  String get close => 'Fermer';

  @override
  String get import => 'Importer';

  @override
  String get rename => 'Renommer';

  @override
  String get upgrade => 'Passer à Premium';

  @override
  String get clear => 'Vider';

  @override
  String error(String message) {
    return 'Erreur : $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Erreur : $message';
  }

  @override
  String get purchaseError =>
      'Erreur lors du traitement de l\'achat. Réessayez.';

  @override
  String get restoreError =>
      'Erreur lors de la restauration des achats. Réessayez.';

  @override
  String get loading => 'Chargement...';

  @override
  String get fieldRequired => 'Champ requis';

  @override
  String get addedFeedback => 'Ajouté !';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Quitter le mode Achats';

  @override
  String get exit => 'Sortie';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sélectionnés',
      one: '$count sélectionné',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimé';

  @override
  String get alreadyPurchased => 'Déjà acheté';

  @override
  String get clearList => 'Vider la liste';

  @override
  String get clearPurchased => 'Vider les achats';

  @override
  String get share => 'Partager';

  @override
  String get shareViaCode => 'Partager via un code';

  @override
  String get importViaCode => 'Importer via un code';

  @override
  String get listAssistant => 'Assistant liste';

  @override
  String get globalAssistant => 'Assistant global';

  @override
  String get becomePremium => 'Devenir Premium';

  @override
  String get manageSubscription => 'Gérer l\'abonnement';

  @override
  String get completePurchase => 'Finaliser l\'achat';

  @override
  String get confirmClearList => 'Supprimer tous les articles ?';

  @override
  String get shareListTitle => 'Partager la liste';

  @override
  String get shareThisCode => 'Partagez ce code :';

  @override
  String get validForLimitedTime => 'Valable pour une durée limitée';

  @override
  String get importListTitle => 'Importer une liste';

  @override
  String get enterCodeHint => 'Entrez le code';

  @override
  String get confirmArchiveTitle => 'Finaliser l\'achat';

  @override
  String get confirmArchiveContent =>
      'Finaliser cet achat et archiver la liste ?';

  @override
  String get complete => 'Terminer';

  @override
  String get listArchived => 'Liste archivée avec succès !';

  @override
  String listAdded(String listName) {
    return '$listName ajoutée !';
  }

  @override
  String get buy => 'Acheter';

  @override
  String get unmark => 'Démarquer';

  @override
  String confirmDeleteItems(int count) {
    return 'Supprimer $count article(s) ?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmer';

  @override
  String confirmContent(int count) {
    return 'Supprimer $count article(s) ?';
  }

  @override
  String get archiveList => 'Archiver la liste';

  @override
  String get pantryAppBar => 'Garde-manger';

  @override
  String get generateShoppingList => 'Générer une liste de courses';

  @override
  String get pantryEmpty => 'Garde-manger vide';

  @override
  String get pantryEmptySubtitle =>
      'Ajoutez les produits que vous souhaitez avoir chez vous';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit article(s) à acheter';
  }

  @override
  String get noItemsToBuy => 'Aucun article à acheter';

  @override
  String get newPantryList => 'Courses du garde-manger';

  @override
  String get newListTitle => 'Nouvelle liste de courses';

  @override
  String itemsWillBeAdded(int count) {
    return '$count article(s) seront ajoutés';
  }

  @override
  String get listNameLabel => 'Nom de la liste';

  @override
  String listCreated(String name, int count) {
    return 'Liste \"$name\" créée avec $count articles';
  }

  @override
  String get noTracking => 'Sans suivi';

  @override
  String get markAsPurchased => 'Marquer comme acheté';

  @override
  String editPantryItem(String name) {
    return 'Modifier $name';
  }

  @override
  String get idealQuantity => 'Quantité idéale';

  @override
  String get currentQuantity => 'Quantité actuelle';

  @override
  String get consumed => 'Consommé';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name réapprovisionné à $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Retirer \"$name\" du garde-manger ?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Modifier $name';
  }

  @override
  String get settingsAppBar => 'Paramètres';

  @override
  String get language => 'Langue';

  @override
  String get languagePortuguese => 'Portugais (Brésil)';

  @override
  String get languageEnglish => 'Anglais';

  @override
  String get languageSystem => 'Par défaut du système';

  @override
  String get chooseLanguage => 'Choisir la langue';

  @override
  String get searchLanguage => 'Rechercher une langue...';

  @override
  String get currency => 'Devise';

  @override
  String get chooseCurrency => 'Sélectionnez la devise';

  @override
  String get searchCurrency => 'Rechercher une devise...';

  @override
  String get appearance => 'Apparence';

  @override
  String get light => 'Clair';

  @override
  String get system => 'Système';

  @override
  String get dark => 'Sombre';

  @override
  String get themeColor => 'Couleur du thème';

  @override
  String get dynamicColors => 'Couleurs dynamiques';

  @override
  String get dynamicColorsSubtitle =>
      'Utiliser des couleurs basées sur votre fond d\'écran';

  @override
  String get dynamicColorsEnabledWarning =>
      'Désactivez les couleurs dynamiques pour que la couleur du thème prenne effet';

  @override
  String get finance => 'Finances';

  @override
  String get monthlyBudgetNav => 'Budget mensuel';

  @override
  String get budgetSubtitle => 'Suivez vos dépenses mensuelles';

  @override
  String get data => 'Données';

  @override
  String get backupNav => 'Sauvegarde';

  @override
  String get backupSubtitle => 'Exporter ou importer vos données';

  @override
  String get about => 'À propos';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Confidentialité';

  @override
  String get termsOfUse => 'Conditions d\'utilisation';

  @override
  String get backupTitle => 'Sauvegarde';

  @override
  String get backupPremiumDescription =>
      'La sauvegarde et l\'exportation sont une fonctionnalité Premium';

  @override
  String get exportData => 'Exporter les données';

  @override
  String get exportDataSubtitle =>
      'Enregistrer toutes les listes au format JSON';

  @override
  String get importData => 'Importer les données';

  @override
  String get importDataSubtitle => 'Restaurer les listes depuis un JSON';

  @override
  String get importJsonTitle => 'Importer JSON';

  @override
  String get importJsonHint => 'Collez le JSON de sauvegarde ici...';

  @override
  String get backupExported => 'Sauvegarde exportée !';

  @override
  String get budgetAppBar => 'Budget mensuel';

  @override
  String get budgetPremiumLocked =>
      'Le budget mensuel global est une fonction Premium';

  @override
  String get budgetUpgradePrompt => 'Passez à Premium pour débloquer';

  @override
  String get noBudgetDefined => 'Aucun budget défini';

  @override
  String totalEstimated(String amount) {
    return 'Total estimé : $amount';
  }

  @override
  String get setBudgetButton => 'Définir le budget';

  @override
  String get budgetLists => 'Listes';

  @override
  String get budgetValueLabel => 'Montant';

  @override
  String get setBudgetTitle => 'Budget mensuel';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tous';

  @override
  String get filterPending => 'En attente';

  @override
  String get filterPurchased => 'Achetés';

  @override
  String get sortName => 'Nom';

  @override
  String get sortCategory => 'Catégorie';

  @override
  String get sortDate => 'Date';

  @override
  String get sortManual => 'Manuel';

  @override
  String get addItem => 'Ajouter un article';

  @override
  String get itemName => 'Nom de l\'article';

  @override
  String get quantityShort => 'Qté';

  @override
  String get unit => 'Unité';

  @override
  String get category => 'Catégorie';

  @override
  String get estimatedPrice => 'Prix estimé';

  @override
  String get addItemPrice => 'Prix estimé';

  @override
  String get editItem => 'Modifier l\'article';

  @override
  String get quantityFull => 'Quantité';

  @override
  String get editItemPrice => 'Prix estimé';

  @override
  String get addToPantry => 'Ajouter au garde-manger';

  @override
  String addToPantryPrompt(String name) {
    return 'Ajouter \"$name\" à votre garde-manger ?';
  }

  @override
  String get yes => 'Oui';

  @override
  String get productName => 'Nom du produit';

  @override
  String get idealQty => 'Qté idéale';

  @override
  String get currentQty => 'Qté actuelle';

  @override
  String get trackStock => 'Suivre le stock';

  @override
  String get trackStockActive => 'Apparaît dans les suggestions d\'achat';

  @override
  String get trackStockInactive => 'Ne génère pas de suggestion d\'achat';

  @override
  String get createListDialog => 'Créer une liste';

  @override
  String get renameListDialog => 'Renommer la liste';

  @override
  String get listHistory => 'Historique des listes';

  @override
  String get myLists => 'Mes listes';

  @override
  String get viewActive => 'Voir actives';

  @override
  String get viewHistory => 'Voir l\'historique';

  @override
  String get noArchivedLists => 'Aucune liste archivée';

  @override
  String get noActiveLists => 'Aucune liste active';

  @override
  String completedOn(String date) {
    return 'Terminée le $date';
  }

  @override
  String get sharedLabel => 'Partagée';

  @override
  String get restore => 'Restaurer';

  @override
  String get removeSharedTooltip => 'Retirer';

  @override
  String get deleteListTitle => 'Supprimer la liste';

  @override
  String deleteListContent(String name) {
    return 'Êtes-vous sûr de vouloir supprimer \"$name\" ? Tous les articles seront retirés.';
  }

  @override
  String get removeSharedListTitle => 'Retirer la liste partagée';

  @override
  String removeSharedListContent(String name) {
    return 'Retirer \"$name\" de vos listes ? La liste originale ne sera pas affectée.';
  }

  @override
  String get createNewList => 'Créer une nouvelle liste';

  @override
  String get aiAssistant => 'Assistant IA';

  @override
  String get aiAssistantDescription =>
      'Obtenez des suggestions intelligentes, des recettes et des conseils personnalisés avec notre assistant IA.';

  @override
  String get generalAssistant => 'Assistant général';

  @override
  String get newChat => 'Nouvelle discussion';

  @override
  String get noHistory => 'Pas d\'historique de discussion';

  @override
  String get deleteSession => 'Supprimer le chat';

  @override
  String get deleteSessionConfirm =>
      'Etes-vous sûr de vouloir supprimer ce chat ? Les messages seront définitivement perdus.';

  @override
  String get clearHistory => 'Effacer l\'historique';

  @override
  String get clearHistoryConfirm =>
      'Effacer tous les messages de cette session ?';

  @override
  String get chatHint => 'Tapez votre message...';

  @override
  String get chatHintBlocked => 'Débloquez l\'IA pour discuter';

  @override
  String chatError(String error) {
    return 'Erreur lors du chargement du chat : $error';
  }

  @override
  String get listHelp => 'Comment puis-je vous aider avec votre liste ?';

  @override
  String get generalHelp =>
      'Comment puis-je vous aider pour vos courses aujourd\'hui ?';

  @override
  String get chatSubtitle =>
      'Demandez des suggestions d\'articles, des recettes ou des astuces d\'économie.';

  @override
  String get aiError =>
      'Désolé, une erreur s\'est produite lors du traitement de votre demande. Vérifiez votre connexion ou réessayez plus tard.';

  @override
  String get aiLimitAlmostReached => 'Presque à court de messages IA';

  @override
  String get unlockAi => 'Débloquez une IA illimitée';

  @override
  String get aiTeaserFallback =>
      'Abonnez-vous à Premium pour débloquer la réponse complète et obtenir des conseils d\'IA illimités pour vos achats...';

  @override
  String get kipiListTitle => 'Liste Kipi';

  @override
  String get loginPrompt =>
      'Connectez-vous pour débloquer les fonctionnalités Premium';

  @override
  String get signInGoogle => 'Se connecter avec Google';

  @override
  String get signInApple => 'Se connecter avec Apple';

  @override
  String get continueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get onboardingWelcomeTitle => 'Bienvenue sur KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'La façon la plus intelligente d\'organiser vos courses et d\'économiser de l\'argent.';

  @override
  String get onboardingSetupTitle => 'Personnalisez votre expérience';

  @override
  String get onboardingSetupDesc =>
      'Choisissez à quoi vous souhaitez que KipiList apparaisse et fonctionne pour vous.';

  @override
  String get onboardingLoginTitle => 'Enregistrez tout dans le cloud';

  @override
  String get onboardingLoginDesc =>
      'Vos données synchronisées sur tous vos appareils';

  @override
  String get onboardingShareTitle => 'Partagez avec ceux que vous aimez';

  @override
  String get onboardingShareDesc =>
      'Synchronisez les listes avec votre famille et vos amis en temps réel';

  @override
  String get onboardingPremiumTitle => 'Débloquez toutes les fonctionnalités';

  @override
  String get onboardingPremiumSubtitle =>
      'Tirez le meilleur parti de vos listes de courses';

  @override
  String get onboardingAnnualBadge => 'Meilleur rapport qualité-prix';

  @override
  String get onboardingMonthlyLabel => 'Mensuel';

  @override
  String get onboardingAnnualLabel => 'Annuel';

  @override
  String get onboardingViewAllPlans => 'Voir tous les forfaits';

  @override
  String get onboardingSubscribeCta => 'S\'abonner';

  @override
  String get onboardingCancelAnytime =>
      'Annulez à tout moment. Aucun engagement.';

  @override
  String get onboardingContinueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get onboardingRestore => 'Restaurer';

  @override
  String get onboardingRestoreDesc =>
      'Vous avez déjà un abonnement ? Appuyez ici pour le restaurer.';

  @override
  String get onboardingExit => 'Sortie';

  @override
  String get onboardingPersonalizationTitle => 'Faisons connaissance avec vous';

  @override
  String get onboardingPersonalizationDesc =>
      'Nous l\'utiliserons pour personnaliser vos suggestions et rendre vos achats plus intelligents.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Quel est votre plat préféré ?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'par ex. Pizzas, Sushis, Lasagnes...';

  @override
  String get onboardingPersonalizationCta => 'Continuer';

  @override
  String get onboardingPersonalizationSkip => 'Passer pour l\'instant';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Dites-nous votre plat préféré pour continuer';

  @override
  String get settingsDefaultScreen => 'Écran d\'accueil par défaut';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Choisissez entre une liste de courses ou un chat AI';

  @override
  String get settingsScreenList => 'Liste de courses';

  @override
  String get settingsScreenChat => 'Chat IA';

  @override
  String loginError(String error) {
    return 'Erreur de connexion : $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Erreur lors du chargement des offres. Essayer à nouveau.';

  @override
  String get paywallPurchaseError =>
      'Impossible de finaliser l\'achat. Essayer à nouveau.';

  @override
  String get paywallRestoreError =>
      'Aucun abonnement actif trouvé à restaurer.';

  @override
  String paywallTrialDays(Object days) {
    return '$days JOURS GRATUITS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count SEMAINES GRATUITES',
      one: '$count SEMAINE GRATUITE',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MOIS GRATUIT',
      one: '$count MOIS GRATUIT',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'Essayez KipiList Pro gratuitement pendant 7 jours';

  @override
  String get paywallTrialSubtitle =>
      'Annulez à tout moment. Pas de frais aujourd\'hui.';

  @override
  String get paywallTrialCta => 'Commencer l\'essai gratuit';

  @override
  String get recipeAddToList => 'Ajouter à la liste de courses';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ingrédients ajoutés à $listName';
  }

  @override
  String get paywallFeaturesTitle => 'Tout ce dont vous avez besoin :';

  @override
  String get paywallFeatureUnlimitedLists => 'Listes illimitées';

  @override
  String get paywallFeatureSmartAI => 'IA intelligente';

  @override
  String get paywallFeatureExpenseControl => 'Contrôle des dépenses';

  @override
  String get paywallFeatureSharing => 'Partage';

  @override
  String get paywallBeforeAfterTitle => 'IA avant et après :';

  @override
  String get paywallLabelCommon => 'Commun';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'riz';

  @override
  String get paywallBeforeItem2 => 'savon';

  @override
  String get paywallBeforeItem3 => 'viande';

  @override
  String get paywallBeforeItem4 => 'pain';

  @override
  String get paywallAfterItem1 => 'Grains';

  @override
  String get paywallAfterItem2 => 'Nettoyage';

  @override
  String get paywallAfterItem3 => 'Viandes';

  @override
  String get paywallAfterItem4 => 'Boulangerie';

  @override
  String get paywallTestimonialsTitle => 'Ce que disent nos utilisateurs :';

  @override
  String get paywallTestimonial1Name => 'Anne S.';

  @override
  String get paywallTestimonial1Text =>
      'L\'IA organise mes courses en quelques secondes. Je gagne 20 minutes par sortie de marché.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Je n\'ai plus jamais oublié un élément de la liste. Le chat IA est sensationnel !';

  @override
  String get paywallSocialProof => '+2 400 familles l\'utilisent';

  @override
  String get paywallCtaUnlock => 'Débloquez PRO';

  @override
  String get paywallBestValue => 'MEILLEURE VALEUR';

  @override
  String get paywallMostPopular => 'LE PLUS POPULAIRE';

  @override
  String get paywallSafeCheckout => 'Paiement sécurisé';

  @override
  String get paywallSelectPlan => 'Choisissez votre forfait :';

  @override
  String paywallSavePercent(Object percent) {
    return 'ÉCONOMISEZ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Seulement $price/mois';
  }

  @override
  String get paywallPackageAnnual => 'Forfait annuel';

  @override
  String get paywallPackageMonthly => 'Forfait mensuel';

  @override
  String get paywallPackageLifetime => 'Accès à vie';

  @override
  String get paywallCancelAnytime => 'Annulez à tout moment. Aucun engagement.';

  @override
  String get paywallPolicy => 'politique de confidentialité';

  @override
  String get paywallTerms => 'Conditions d\'utilisation';

  @override
  String get paywallRestore => 'Restaurer';

  @override
  String get paywallHeroHeadline => 'Kipi AI toujours à vos côtés';

  @override
  String get paywallHeroSubtitle =>
      'Ajoutez des éléments, organisez des listes et gagnez du temps avec l\'IA dans votre poche';

  @override
  String get paywallBenefit1Desc =>
      'Ajoute, organise et suggère des éléments 24h/24 et 7j/7';

  @override
  String get paywallBenefit2Desc => 'Pas de limite de 3 listes';

  @override
  String get paywallBenefit3Desc => 'Suivi des dépenses et listes de famille';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilité totale';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Commencez gratuitement – $days jours';
  }

  @override
  String get premiumUpgrade => 'Passez à Premium pour débloquer';

  @override
  String get itemRemoved => 'Article retiré';

  @override
  String get undo => 'Annuler';

  @override
  String get emptyListTitle => 'Votre liste est vide';

  @override
  String get emptyListSubtitle => 'Ajoutez des articles pour commencer';

  @override
  String get noListFoundTitle => 'Aucune liste trouvée';

  @override
  String get noListFoundSubtitle => 'Créez votre première liste pour commencer';

  @override
  String get createFirstList => 'Créer une première liste';

  @override
  String get listBudgetTitle => 'Budget de la liste';

  @override
  String get budgetAmountLabel => 'Montant du budget';

  @override
  String get removeBudget => 'Retirer';

  @override
  String get prefUnlimitedLists => 'Listes illimitées';

  @override
  String get prefSharing => 'Partager des listes';

  @override
  String get prefFullHistory => 'Historique complet';

  @override
  String get prefExportData => 'Exporter les données';

  @override
  String get prefCustomThemes => 'Thèmes personnalisés';

  @override
  String get prefMonthlyBudget => 'Budget mensuel global';

  @override
  String get prefAIAssistant => 'Assistant IA personnel';

  @override
  String get prefUnlimitedPantry => 'Garde-manger illimité';

  @override
  String get prefInteractiveArtifacts => 'Artefacts interactifs IA';

  @override
  String get themeGreen => 'Vert';

  @override
  String get themeBlue => 'Bleu';

  @override
  String get themePurple => 'Violet';

  @override
  String get themeRed => 'Rouge';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Rose';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Ambre';

  @override
  String get themeTeal => 'Sarcelle';

  @override
  String get themeBrown => 'Marron';

  @override
  String get catFruits => 'Fruits';

  @override
  String get catCleaning => 'Nettoyage';

  @override
  String get catBeverages => 'Boissons';

  @override
  String get catBakery => 'Boulangerie';

  @override
  String get catOthers => 'Autres';

  @override
  String get unitPack => 'paquet';

  @override
  String get shareSubject => 'Liste de courses';

  @override
  String get monthlyBudgetTitle => 'Budget mensuel';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Supprimer la liste';

  @override
  String get pantryItemRemoved => 'Article retiré';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit articles à acheter',
      one: '$deficit article à acheter',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total du panier';

  @override
  String get restockLabel => 'Réapprovisionner';

  @override
  String get advancedFeatures => 'Fonctionnalités avancées';

  @override
  String get selectAll => 'Tout sélectionner';

  @override
  String get deselectAll => 'Tout désélectionner';

  @override
  String get monthlyBudgetAppBar => 'Budget mensuel';

  @override
  String get budgetEditTitle => 'Budget mensuel';

  @override
  String get budgetDashboardTitle => 'Tableau de bord';

  @override
  String get selectListForDashboard =>
      'Sélectionnez une liste pour voir le tableau de bord.';

  @override
  String get spendingAnalysis => 'Analyse des dépenses';

  @override
  String get noItemsToAnalyze => 'Aucun article dans la liste à analyser.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marquez les articles comme achetés pour voir l\'analyse.';

  @override
  String get totalSpending => 'Total dépensé';

  @override
  String get spendingByCategory => 'Dépenses par catégorie';

  @override
  String get achievements => 'Succès';

  @override
  String get exportPdfExcel => 'Exporter PDF/Excel';

  @override
  String get exportPdf => 'Exporter en PDF';

  @override
  String get exportExcel => 'Exporter en Excel';

  @override
  String get organizingAi => 'ORGANISATION PAR IA...';

  @override
  String get yesLabel => 'Oui';

  @override
  String get noLabel => 'Non';

  @override
  String get shareListText => 'Ma liste de courses';

  @override
  String get emptyListAddItems =>
      'Votre liste est vide ! Ajoutez d\'abord des articles. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Liste organisée comme par magie par catégories ! ✨';

  @override
  String get shoppingMode => 'Mode courses';

  @override
  String get smartOrganization => 'Organisation intelligente';

  @override
  String get savings => 'Économies';

  @override
  String get shoppingModeHeader => 'MODE COURSES';

  @override
  String get shareAsText => 'Envoyer les articles sous forme de texte formaté';

  @override
  String get shareRealtime =>
      'Synchronisation en temps réel avec d\'autres personnes';

  @override
  String get quickRecipe => 'Recette rapide';

  @override
  String get quickRecipePrompt =>
      'Suggérez des recettes avec les articles de ma liste.';

  @override
  String get economyTips => 'Conseils d\'économie';

  @override
  String get economyTipsPrompt => 'Comment puis-je économiser sur cet achat ?';

  @override
  String get organizeAisles => 'Organiser par rayons';

  @override
  String get organizeAislesPrompt => 'Organisez par rayons du supermarché.';

  @override
  String get recipeSuggestion => 'Suggestion de recette';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining crédits restants';
  }

  @override
  String get addAllToList => 'Tout ajouter à la liste';

  @override
  String get organizeByAisles => 'Organiser par rayons';

  @override
  String get voiceTranscriptionTooltip => 'Saisie vocale (Gratuit)';

  @override
  String get aiVoiceCommandTooltip => 'Commande vocale IA (Premium)';

  @override
  String get voiceCommandTitle => 'Commande vocale IA';

  @override
  String get voiceCommandContent =>
      'Parlez naturellement pour gérer votre liste !\n\nExemples :\n• \'Ajoute du pain, du fromage et du jambon\'\n• \'Retire la lessive\'\n• \'Change le thème en bleu\'\n\nIl s\'agit d\'une fonctionnalité exclusive de KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Voir les offres';

  @override
  String get itemsAddedSuccess => 'Articles ajoutés à la liste avec succès !';

  @override
  String get viewList => 'Voir la liste';

  @override
  String get feedbackTitle => 'Envoyer un commentaire';

  @override
  String get feedbackPrompt => 'Que souhaitez-vous partager ?';

  @override
  String get feedbackTypeBug => 'Signaler un bogue';

  @override
  String get feedbackTypeBugHint => 'Quelque chose ne fonctionne pas';

  @override
  String get feedbackTypeSuggestion => 'Suggestion';

  @override
  String get feedbackTypeSuggestionHint => 'Idée pour améliorer l\'application';

  @override
  String get feedbackTypeTranslation => 'Erreur de traduction';

  @override
  String get feedbackTypeTranslationHint =>
      'Traduction incorrecte ou maladroite';

  @override
  String get feedbackTypeFeature => 'Demande de fonctionnalité';

  @override
  String get feedbackTypeFeatureHint => 'Fonctionnalité que vous aimeriez voir';

  @override
  String get feedbackTypeOther => 'Autre';

  @override
  String get feedbackTypeOtherHint => 'Autre type de commentaire';

  @override
  String get feedbackHint => 'Décrivez votre commentaire en détail...';

  @override
  String get feedbackSend => 'Envoyer le commentaire';

  @override
  String get feedbackSending => 'Envoi en cours...';

  @override
  String get feedbackThankYou => 'Merci !';

  @override
  String get feedbackThankYouMessage =>
      'Votre commentaire a été reçu et nous aide à améliorer KipiList pour tous.';

  @override
  String get feedbackBack => 'Retour';

  @override
  String feedbackError(String error) {
    return 'Erreur d\'envoi : $error';
  }

  @override
  String get feedbackRetry => 'Réessayer';

  @override
  String get feedbackSettingsTitle => 'Envoyer un commentaire';

  @override
  String get feedbackSettingsSubtitle =>
      'Signaler des bogues, suggérer des améliorations ou corriger des traductions';

  @override
  String get aiEnergy => 'Énergie IA';

  @override
  String get searchInConversation => 'Rechercher dans une conversation...';

  @override
  String get noMessagesFound => 'Aucun message trouvé';

  @override
  String get suggestedQuestions => 'Questions suggérées :';

  @override
  String get shoppingAssistant => 'Assistante commerciale';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased sur $total achetés';
  }

  @override
  String get estimatedCost => 'Estimé';

  @override
  String get viewItems => 'Afficher les articles';

  @override
  String get noItemsInList => 'Aucun élément dans la liste';

  @override
  String get longHistoryWarning =>
      'Longue histoire : l\'assistant se concentre sur les derniers messages pour de meilleures performances.';

  @override
  String get listening => 'Écoute...';

  @override
  String get addDirectToList => 'Ajouter directement à la liste';

  @override
  String get unlockFullResponse => 'Débloquez une réponse complète';

  @override
  String get switchList => 'Changer de liste';

  @override
  String get marketMode => 'Mode marché';

  @override
  String get backToChat => 'Retour au chat';

  @override
  String get finishShopping => 'Terminer vos achats';

  @override
  String get welcomeAiAssistant => 'Bienvenue dans AI Assistant';

  @override
  String get createListToStartAi =>
      'Créez une liste de courses pour commencer à utiliser le chat intelligent.';

  @override
  String get howCanIHelp => 'Comment puis-je aider ?';

  @override
  String get chatSubtitleShort =>
      'Renseignez-vous sur les tarifs, les recettes, l\'organisation...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total acheté';
  }

  @override
  String get quickReplies => 'Réponses rapides :';

  @override
  String get voiceProFeature =>
      'Les commandes vocales avancées sont Pro. Activation de la dictée de base...';

  @override
  String get viewPro => 'Voir Pro';

  @override
  String get errorLoadingChat =>
      'Oups ! Une erreur s\'est produite lors du chargement du chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Vérifiez votre connexion ou réessayez plus tard.';

  @override
  String get errorOscillation =>
      'Cela peut être dû à des oscillations du réseau ou à une indisponibilité temporaire. Veuillez réessayer.';

  @override
  String get activeListening => 'Écoute active';

  @override
  String get whatToDoWithItem => 'Que souhaiteriez-vous faire avec cet objet ?';

  @override
  String get viewDetails => 'Afficher les détails';

  @override
  String get openMenu => 'Ouvrir le menu';

  @override
  String get viewRecipe => 'Voir la recette';

  @override
  String get recipeCreated => 'Recette créée !';

  @override
  String get editRecipe => 'Modifier';

  @override
  String get deleteRecipe => 'Supprimer';

  @override
  String get deleteRecipeConfirm => 'Supprimer cette recette ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Êtes-vous sûr de vouloir supprimer \"$recipeName\" ? Cette action est irréversible.';
  }

  @override
  String get ingredients => 'Ingrédients';

  @override
  String get instructions => 'Instructions';

  @override
  String get prepTime => 'Temps de préparation';

  @override
  String get recipeSaved => 'Recette enregistrée !';

  @override
  String get noRecipesSaved => 'Aucune recette enregistrée';

  @override
  String get noRecipesSavedHint =>
      'Créez votre première recette personnalisée en appuyant sur le bouton ci-dessous.';

  @override
  String get myRecipes => 'Mes Recettes';

  @override
  String get newRecipe => 'Nouvelle Recette';

  @override
  String get loadingRecipes => 'Chargement de vos recettes...';

  @override
  String get errorLoadingRecipes => 'Erreur lors du chargement des recettes';

  @override
  String get addIngredient => 'Ajouter un ingrédient';

  @override
  String get saveRecipe => 'Enregistrer';

  @override
  String get recipeName => 'Nom de la recette';

  @override
  String get shortDescription => 'Description courte';

  @override
  String get prepTimeMinutes => 'Temps de préparation (minutes)';

  @override
  String get instructionsHint => 'Tapez une étape par ligne...';

  @override
  String get addPhoto => 'Ajouter une photo';

  @override
  String get imageUrlPlaceholder => 'Ou collez l\'URL d\'une image';

  @override
  String get tags => 'Balises';

  @override
  String get recipeTags => 'Tags de la recette';

  @override
  String get suggestedTags => 'Suggérés';

  @override
  String get searchRecipes => 'Rechercher des recettes...';

  @override
  String get filterByTag => 'Filtrer par tag';

  @override
  String get allTags => 'Tous';

  @override
  String get recipeDeleted => 'Recette supprimée';

  @override
  String get saveChanges => 'Enregistrer les modifications';

  @override
  String get editRecipeTitle => 'Modifier la recette';

  @override
  String get newRecipeTitle => 'Nouvelle Recette';

  @override
  String get requiredField => 'Requis';

  @override
  String get chooseImageSource => 'Choisir la source de l\'image';

  @override
  String get gallery => 'Galerie';

  @override
  String get enterUrl => 'Entrer l\'URL';

  @override
  String get recipeImage => 'Image de la recette';

  @override
  String get removeImage => 'Retirer l\'image';

  @override
  String get mealPlannerTitle => 'Planning des repas';

  @override
  String get mealPlannerViewMonthly => 'Vue mensuelle';

  @override
  String get mealPlannerViewWeekly => 'Vue hebdomadaire';

  @override
  String get mealPlannerNoMeals => 'Aucun repas planifié';

  @override
  String get mealPlannerNoMealsHint =>
      'Appuyez sur un jour pour ajouter un repas';

  @override
  String get mealPlannerLoading => 'Chargement du planning des repas...';

  @override
  String get mealPlannerError =>
      'Erreur lors du chargement du planning des repas';

  @override
  String get mealPlannerAddMeal => 'Ajouter un repas';

  @override
  String get mealPlannerEditMeal => 'Modifier le repas';

  @override
  String get mealPlannerDeleteMeal => 'Retirer le repas';

  @override
  String get mealPlannerMealDeleted => 'Repas retiré';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count portions',
      one: '$count portion',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Portions';

  @override
  String get mealPlannerNoteLabel => 'Note (optionnel)';

  @override
  String get mealPlannerSelectRecipe => 'Sélectionner une recette';

  @override
  String get mealPlannerSearchRecipes => 'Rechercher des recettes...';

  @override
  String get mealPlannerNoRecipesFound => 'Aucune recette trouvée';

  @override
  String get mealPlannerNoRecipesHint =>
      'Créez d\'abord des recettes dans l\'onglet Recettes';

  @override
  String get mealPlannerSave => 'Ajouter au planning';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count sur $total repas planifiés';
  }

  @override
  String get mealPlannerGenerateList => 'Générer une liste de courses';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Ajouter tous les ingrédients des repas prévus cette semaine à votre liste de courses ?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrédient(s) ajouté(s) à votre liste !';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Aucun ingrédient à ajouter. Planifiez d\'abord des repas avec des recettes.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Créez d\'abord une liste de courses.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Petit-déjeuner';

  @override
  String get mealPlannerMealTypeLunch => 'Déjeuner';

  @override
  String get mealPlannerMealTypeDinner => 'Dîner';

  @override
  String get mealPlannerMealTypeSnack => 'Collation';

  @override
  String get mealPlannerDateLabel => 'Date';

  @override
  String get mealPlannerWeekEmpty => 'Rien de planifié pour cette semaine';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Appuyez sur n\'importe quel jour pour commencer à planifier vos repas !';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Inviter à lister';

  @override
  String get shareApp => 'Partager l\'application';

  @override
  String get shareAppDescription => 'Invitez des amis à utiliser KipiList';

  @override
  String shareReferralText(Object url) {
    return 'J\'utilise KipiList pour organiser mes courses ! Téléchargez via mon lien et nous obtenons tous les deux 7 jours de Premium gratuits : $url';
  }

  @override
  String get shareReferralSubject => 'Obtenez 7 jours de KipiList Premium !';

  @override
  String get gestureHint =>
      'Maintenez enfoncé pour sélectionner • Faites glisser pour supprimer';

  @override
  String get catalogTitle => 'Catalogue';

  @override
  String get catalogMyFrequents => 'Mes fréquents';

  @override
  String get catalogSearchGlobal => 'Rechercher n\'importe quel produit...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Rechercher dans $category...';
  }

  @override
  String get catalogSortPopular => 'Le plus populaire';

  @override
  String get catalogSortAZ => 'A à Z';

  @override
  String get catalogFilterNational => 'Nationaux';

  @override
  String get catalogRareSection => 'moins courant dans votre pays';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Ajouter $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Produit introuvable, saisissez le nom';

  @override
  String get catalogBrowse => 'Parcourir le catalogue';

  @override
  String get offlineBanner => 'Vous êtes hors ligne';

  @override
  String get consentTitle => 'Confidentialité et analyses';

  @override
  String get consentBody =>
      'KipiList utilise Firebase Analytics pour améliorer votre expérience. Vos données sont traitées conformément à notre politique de confidentialité.';

  @override
  String get consentAccept => 'Accepter';

  @override
  String get consentDecline => 'Non merci';

  @override
  String get mealPlannerPantryAllAvailable => 'En stock';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count éléments manquants',
      one: '$count élément manquant',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Date d\'expiration';

  @override
  String get notInformed => 'Pas informé';

  @override
  String get manageCategoriesTitle => 'Gérer les catégories';

  @override
  String get sortAZ => 'A à Z';

  @override
  String get backToToday => 'Retour à aujourd\'hui';
}

/// The translations for French, as used in France (`fr_FR`).
class AppLocalizationsFrFr extends AppLocalizationsFr {
  AppLocalizationsFrFr() : super('fr_FR');

  @override
  String get appTitle => 'Liste de Courses';

  @override
  String get lists => 'Listes';

  @override
  String get pantry => 'Garde-manger';

  @override
  String get navChat => 'Chat';

  @override
  String get navRecipes => 'Recettes';

  @override
  String get navLists => 'Listes';

  @override
  String get navMealPlanner => 'Menu';

  @override
  String get cancel => 'Annuler';

  @override
  String get save => 'Enregistrer';

  @override
  String get create => 'Créer';

  @override
  String get add => 'Ajouter';

  @override
  String get remove => 'Retirer';

  @override
  String get delete => 'Supprimer';

  @override
  String get edit => 'Modifier';

  @override
  String get copy => 'Copier';

  @override
  String get next => 'Suivant';

  @override
  String get retry => 'Réessayer';

  @override
  String get regenerate => 'Régénérer';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get confirm => 'Confirmer';

  @override
  String get close => 'Fermer';

  @override
  String get import => 'Importer';

  @override
  String get rename => 'Renommer';

  @override
  String get upgrade => 'Passer à Premium';

  @override
  String get clear => 'Vider';

  @override
  String error(String message) {
    return 'Erreur : $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Erreur : $message';
  }

  @override
  String get purchaseError =>
      'Erreur lors du traitement de l\'achat. Réessayez.';

  @override
  String get restoreError =>
      'Erreur lors de la restauration des achats. Réessayez.';

  @override
  String get loading => 'Chargement...';

  @override
  String get fieldRequired => 'Champ requis';

  @override
  String get addedFeedback => 'Ajouté !';

  @override
  String get profile => 'Profil';

  @override
  String get exitShoppingMode => 'Quitter le mode Achats';

  @override
  String get exit => 'Sortie';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sélectionnés',
      one: '$count sélectionné',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimé';

  @override
  String get alreadyPurchased => 'Déjà acheté';

  @override
  String get clearList => 'Vider la liste';

  @override
  String get clearPurchased => 'Vider les achats';

  @override
  String get share => 'Partager';

  @override
  String get shareViaCode => 'Partager via un code';

  @override
  String get importViaCode => 'Importer via un code';

  @override
  String get listAssistant => 'Assistant liste';

  @override
  String get globalAssistant => 'Assistant global';

  @override
  String get becomePremium => 'Devenir Premium';

  @override
  String get manageSubscription => 'Gérer l\'abonnement';

  @override
  String get completePurchase => 'Finaliser l\'achat';

  @override
  String get confirmClearList => 'Supprimer tous les articles ?';

  @override
  String get shareListTitle => 'Partager la liste';

  @override
  String get shareThisCode => 'Partagez ce code :';

  @override
  String get validForLimitedTime => 'Valable pour une durée limitée';

  @override
  String get importListTitle => 'Importer une liste';

  @override
  String get enterCodeHint => 'Entrez le code';

  @override
  String get confirmArchiveTitle => 'Finaliser l\'achat';

  @override
  String get confirmArchiveContent =>
      'Finaliser cet achat et archiver la liste ?';

  @override
  String get complete => 'Terminer';

  @override
  String get listArchived => 'Liste archivée avec succès !';

  @override
  String listAdded(String listName) {
    return '$listName ajoutée !';
  }

  @override
  String get buy => 'Acheter';

  @override
  String get unmark => 'Démarquer';

  @override
  String confirmDeleteItems(int count) {
    return 'Supprimer $count article(s) ?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmer';

  @override
  String confirmContent(int count) {
    return 'Supprimer $count article(s) ?';
  }

  @override
  String get archiveList => 'Archiver la liste';

  @override
  String get pantryAppBar => 'Garde-manger';

  @override
  String get generateShoppingList => 'Générer une liste de courses';

  @override
  String get pantryEmpty => 'Garde-manger vide';

  @override
  String get pantryEmptySubtitle =>
      'Ajoutez les produits que vous souhaitez avoir chez vous';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit article(s) à acheter';
  }

  @override
  String get noItemsToBuy => 'Aucun article à acheter';

  @override
  String get newPantryList => 'Courses du garde-manger';

  @override
  String get newListTitle => 'Nouvelle liste de courses';

  @override
  String itemsWillBeAdded(int count) {
    return '$count article(s) seront ajoutés';
  }

  @override
  String get listNameLabel => 'Nom de la liste';

  @override
  String listCreated(String name, int count) {
    return 'Liste \"$name\" créée avec $count articles';
  }

  @override
  String get noTracking => 'Sans suivi';

  @override
  String get markAsPurchased => 'Marquer comme acheté';

  @override
  String editPantryItem(String name) {
    return 'Modifier $name';
  }

  @override
  String get idealQuantity => 'Quantité idéale';

  @override
  String get currentQuantity => 'Quantité actuelle';

  @override
  String get consumed => 'Consommé';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name réapprovisionné à $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Retirer \"$name\" du garde-manger ?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Modifier $name';
  }

  @override
  String get settingsAppBar => 'Paramètres';

  @override
  String get language => 'Langue';

  @override
  String get languagePortuguese => 'Portugais (Brésil)';

  @override
  String get languageEnglish => 'Anglais';

  @override
  String get languageSystem => 'Par défaut du système';

  @override
  String get chooseLanguage => 'Choisir la langue';

  @override
  String get searchLanguage => 'Rechercher une langue...';

  @override
  String get currency => 'Devise';

  @override
  String get chooseCurrency => 'Sélectionnez la devise';

  @override
  String get searchCurrency => 'Rechercher une devise...';

  @override
  String get appearance => 'Apparence';

  @override
  String get light => 'Clair';

  @override
  String get system => 'Système';

  @override
  String get dark => 'Sombre';

  @override
  String get themeColor => 'Couleur du thème';

  @override
  String get dynamicColors => 'Couleurs dynamiques';

  @override
  String get dynamicColorsSubtitle =>
      'Utiliser des couleurs basées sur votre fond d\'écran';

  @override
  String get dynamicColorsEnabledWarning =>
      'Désactivez les couleurs dynamiques pour que la couleur du thème prenne effet';

  @override
  String get finance => 'Finances';

  @override
  String get monthlyBudgetNav => 'Budget mensuel';

  @override
  String get budgetSubtitle => 'Suivez vos dépenses mensuelles';

  @override
  String get data => 'Données';

  @override
  String get backupNav => 'Sauvegarde';

  @override
  String get backupSubtitle => 'Exporter ou importer vos données';

  @override
  String get about => 'À propos';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Confidentialité';

  @override
  String get termsOfUse => 'Conditions d\'utilisation';

  @override
  String get backupTitle => 'Sauvegarde';

  @override
  String get backupPremiumDescription =>
      'La sauvegarde et l\'exportation sont une fonctionnalité Premium';

  @override
  String get exportData => 'Exporter les données';

  @override
  String get exportDataSubtitle =>
      'Enregistrer toutes les listes au format JSON';

  @override
  String get importData => 'Importer les données';

  @override
  String get importDataSubtitle => 'Restaurer les listes depuis un JSON';

  @override
  String get importJsonTitle => 'Importer JSON';

  @override
  String get importJsonHint => 'Collez le JSON de sauvegarde ici...';

  @override
  String get backupExported => 'Sauvegarde exportée !';

  @override
  String get budgetAppBar => 'Budget mensuel';

  @override
  String get budgetPremiumLocked =>
      'Le budget mensuel global est une fonction Premium';

  @override
  String get budgetUpgradePrompt => 'Passez à Premium pour débloquer';

  @override
  String get noBudgetDefined => 'Aucun budget défini';

  @override
  String totalEstimated(String amount) {
    return 'Total estimé : $amount';
  }

  @override
  String get setBudgetButton => 'Définir le budget';

  @override
  String get budgetLists => 'Listes';

  @override
  String get budgetValueLabel => 'Montant';

  @override
  String get setBudgetTitle => 'Budget mensuel';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tous';

  @override
  String get filterPending => 'En attente';

  @override
  String get filterPurchased => 'Achetés';

  @override
  String get sortName => 'Nom';

  @override
  String get sortCategory => 'Catégorie';

  @override
  String get sortDate => 'Date';

  @override
  String get sortManual => 'Manuel';

  @override
  String get addItem => 'Ajouter un article';

  @override
  String get itemName => 'Nom de l\'article';

  @override
  String get quantityShort => 'Qté';

  @override
  String get unit => 'Unité';

  @override
  String get category => 'Catégorie';

  @override
  String get estimatedPrice => 'Prix estimé';

  @override
  String get addItemPrice => 'Prix estimé';

  @override
  String get editItem => 'Modifier l\'article';

  @override
  String get quantityFull => 'Quantité';

  @override
  String get editItemPrice => 'Prix estimé';

  @override
  String get addToPantry => 'Ajouter au garde-manger';

  @override
  String addToPantryPrompt(String name) {
    return 'Ajouter \"$name\" à votre garde-manger ?';
  }

  @override
  String get yes => 'Oui';

  @override
  String get productName => 'Nom du produit';

  @override
  String get idealQty => 'Qté idéale';

  @override
  String get currentQty => 'Qté actuelle';

  @override
  String get trackStock => 'Suivre le stock';

  @override
  String get trackStockActive => 'Apparaît dans les suggestions d\'achat';

  @override
  String get trackStockInactive => 'Ne génère pas de suggestion d\'achat';

  @override
  String get createListDialog => 'Créer une liste';

  @override
  String get renameListDialog => 'Renommer la liste';

  @override
  String get listHistory => 'Historique des listes';

  @override
  String get myLists => 'Mes listes';

  @override
  String get viewActive => 'Voir actives';

  @override
  String get viewHistory => 'Voir l\'historique';

  @override
  String get noArchivedLists => 'Aucune liste archivée';

  @override
  String get noActiveLists => 'Aucune liste active';

  @override
  String completedOn(String date) {
    return 'Terminée le $date';
  }

  @override
  String get sharedLabel => 'Partagée';

  @override
  String get restore => 'Restaurer';

  @override
  String get removeSharedTooltip => 'Retirer';

  @override
  String get deleteListTitle => 'Supprimer la liste';

  @override
  String deleteListContent(String name) {
    return 'Êtes-vous sûr de vouloir supprimer \"$name\" ? Tous les articles seront retirés.';
  }

  @override
  String get removeSharedListTitle => 'Retirer la liste partagée';

  @override
  String removeSharedListContent(String name) {
    return 'Retirer \"$name\" de vos listes ? La liste originale ne sera pas affectée.';
  }

  @override
  String get createNewList => 'Créer une nouvelle liste';

  @override
  String get aiAssistant => 'Assistant IA';

  @override
  String get aiAssistantDescription =>
      'Obtenez des suggestions intelligentes, des recettes et des conseils personnalisés avec notre assistant IA.';

  @override
  String get generalAssistant => 'Assistant général';

  @override
  String get newChat => 'Nouvelle discussion';

  @override
  String get noHistory => 'Pas d\'historique de discussion';

  @override
  String get deleteSession => 'Supprimer le chat';

  @override
  String get deleteSessionConfirm =>
      'Etes-vous sûr de vouloir supprimer ce chat ? Les messages seront définitivement perdus.';

  @override
  String get clearHistory => 'Effacer l\'historique';

  @override
  String get clearHistoryConfirm =>
      'Effacer tous les messages de cette session ?';

  @override
  String get chatHint => 'Tapez votre message...';

  @override
  String get chatHintBlocked => 'Débloquez l\'IA pour discuter';

  @override
  String chatError(String error) {
    return 'Erreur lors du chargement du chat : $error';
  }

  @override
  String get listHelp => 'Comment puis-je vous aider avec votre liste ?';

  @override
  String get generalHelp =>
      'Comment puis-je vous aider pour vos courses aujourd\'hui ?';

  @override
  String get chatSubtitle =>
      'Demandez des suggestions d\'articles, des recettes ou des astuces d\'économie.';

  @override
  String get aiError =>
      'Désolé, une erreur s\'est produite lors du traitement de votre demande. Vérifiez votre connexion ou réessayez plus tard.';

  @override
  String get aiLimitAlmostReached => 'Presque à court de messages IA';

  @override
  String get unlockAi => 'Débloquez une IA illimitée';

  @override
  String get aiTeaserFallback =>
      'Abonnez-vous à Premium pour débloquer la réponse complète et obtenir des conseils d\'IA illimités pour vos achats...';

  @override
  String get kipiListTitle => 'Liste Kipi';

  @override
  String get loginPrompt =>
      'Connectez-vous pour débloquer les fonctionnalités Premium';

  @override
  String get signInGoogle => 'Se connecter avec Google';

  @override
  String get signInApple => 'Se connecter avec Apple';

  @override
  String get continueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get onboardingWelcomeTitle => 'Bienvenue sur KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'La façon la plus intelligente d\'organiser vos courses et d\'économiser de l\'argent.';

  @override
  String get onboardingSetupTitle => 'Personnalisez votre expérience';

  @override
  String get onboardingSetupDesc =>
      'Choisissez à quoi vous souhaitez que KipiList apparaisse et fonctionne pour vous.';

  @override
  String get onboardingLoginTitle => 'Enregistrez tout dans le cloud';

  @override
  String get onboardingLoginDesc =>
      'Vos données synchronisées sur tous vos appareils';

  @override
  String get onboardingShareTitle => 'Partagez avec ceux que vous aimez';

  @override
  String get onboardingShareDesc =>
      'Synchronisez les listes avec votre famille et vos amis en temps réel';

  @override
  String get onboardingPremiumTitle => 'Débloquez toutes les fonctionnalités';

  @override
  String get onboardingPremiumSubtitle =>
      'Tirez le meilleur parti de vos listes de courses';

  @override
  String get onboardingAnnualBadge => 'Meilleur rapport qualité-prix';

  @override
  String get onboardingMonthlyLabel => 'Mensuel';

  @override
  String get onboardingAnnualLabel => 'Annuel';

  @override
  String get onboardingViewAllPlans => 'Voir tous les forfaits';

  @override
  String get onboardingSubscribeCta => 'S\'abonner';

  @override
  String get onboardingCancelAnytime =>
      'Annulez à tout moment. Aucun engagement.';

  @override
  String get onboardingContinueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get onboardingRestore => 'Restaurer';

  @override
  String get onboardingRestoreDesc =>
      'Vous avez déjà un abonnement ? Appuyez ici pour le restaurer.';

  @override
  String get onboardingExit => 'Sortie';

  @override
  String get onboardingPersonalizationTitle => 'Faisons connaissance avec vous';

  @override
  String get onboardingPersonalizationDesc =>
      'Nous l\'utiliserons pour personnaliser vos suggestions et rendre vos achats plus intelligents.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Quel est votre plat préféré ?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'par ex. Pizzas, Sushis, Lasagnes...';

  @override
  String get onboardingPersonalizationCta => 'Continuer';

  @override
  String get onboardingPersonalizationSkip => 'Passer pour l\'instant';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Dites-nous votre plat préféré pour continuer';

  @override
  String get settingsDefaultScreen => 'Écran d\'accueil par défaut';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Choisissez entre une liste de courses ou un chat AI';

  @override
  String get settingsScreenList => 'Liste de courses';

  @override
  String get settingsScreenChat => 'Chat IA';

  @override
  String loginError(String error) {
    return 'Erreur de connexion : $error';
  }

  @override
  String get paywallTitle => 'KipiList Premium';

  @override
  String get paywallLoadingError =>
      'Erreur lors du chargement des offres. Essayer à nouveau.';

  @override
  String get paywallPurchaseError =>
      'Impossible de finaliser l\'achat. Essayer à nouveau.';

  @override
  String get paywallRestoreError =>
      'Aucun abonnement actif trouvé à restaurer.';

  @override
  String paywallTrialDays(Object days) {
    return '$days JOURS GRATUITS';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count SEMAINES GRATUITES',
      one: '$count SEMAINE GRATUITE',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count MOIS GRATUIT',
      one: '$count MOIS GRATUIT',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle =>
      'Essayez KipiList Pro gratuitement pendant 7 jours';

  @override
  String get paywallTrialSubtitle =>
      'Annulez à tout moment. Pas de frais aujourd\'hui.';

  @override
  String get paywallTrialCta => 'Commencer l\'essai gratuit';

  @override
  String get recipeAddToList => 'Ajouter à la liste de courses';

  @override
  String recipeAddedConfirmation(int count, String listName) {
    return '$count ingrédients ajoutés à $listName';
  }

  @override
  String get paywallFeaturesTitle => 'Tout ce dont vous avez besoin :';

  @override
  String get paywallFeatureUnlimitedLists => 'Listes illimitées';

  @override
  String get paywallFeatureSmartAI => 'IA intelligente';

  @override
  String get paywallFeatureExpenseControl => 'Contrôle des dépenses';

  @override
  String get paywallFeatureSharing => 'Partage';

  @override
  String get paywallBeforeAfterTitle => 'IA avant et après :';

  @override
  String get paywallLabelCommon => 'Commun';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'riz';

  @override
  String get paywallBeforeItem2 => 'savon';

  @override
  String get paywallBeforeItem3 => 'viande';

  @override
  String get paywallBeforeItem4 => 'pain';

  @override
  String get paywallAfterItem1 => 'Grains';

  @override
  String get paywallAfterItem2 => 'Nettoyage';

  @override
  String get paywallAfterItem3 => 'Viandes';

  @override
  String get paywallAfterItem4 => 'Boulangerie';

  @override
  String get paywallTestimonialsTitle => 'Ce que disent nos utilisateurs :';

  @override
  String get paywallTestimonial1Name => 'Anne S.';

  @override
  String get paywallTestimonial1Text =>
      'L\'IA organise mes courses en quelques secondes. Je gagne 20 minutes par sortie de marché.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Je n\'ai plus jamais oublié un élément de la liste. Le chat IA est sensationnel !';

  @override
  String get paywallSocialProof => '+2 400 familles l\'utilisent';

  @override
  String get paywallCtaUnlock => 'Débloquez PRO';

  @override
  String get paywallBestValue => 'MEILLEURE VALEUR';

  @override
  String get paywallMostPopular => 'LE PLUS POPULAIRE';

  @override
  String get paywallSafeCheckout => 'Paiement sécurisé';

  @override
  String get paywallSelectPlan => 'Choisissez votre forfait :';

  @override
  String paywallSavePercent(Object percent) {
    return 'ÉCONOMISEZ $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Seulement $price/mois';
  }

  @override
  String get paywallPackageAnnual => 'Forfait annuel';

  @override
  String get paywallPackageMonthly => 'Forfait mensuel';

  @override
  String get paywallPackageLifetime => 'Accès à vie';

  @override
  String get paywallCancelAnytime => 'Annulez à tout moment. Aucun engagement.';

  @override
  String get paywallPolicy => 'politique de confidentialité';

  @override
  String get paywallTerms => 'Conditions d\'utilisation';

  @override
  String get paywallRestore => 'Restaurer';

  @override
  String get paywallHeroHeadline => 'Kipi AI toujours à vos côtés';

  @override
  String get paywallHeroSubtitle =>
      'Ajoutez des éléments, organisez des listes et gagnez du temps avec l\'IA dans votre poche';

  @override
  String get paywallBenefit1Desc =>
      'Ajoute, organise et suggère des éléments 24h/24 et 7j/7';

  @override
  String get paywallBenefit2Desc => 'Pas de limite de 3 listes';

  @override
  String get paywallBenefit3Desc => 'Suivi des dépenses et listes de famille';

  @override
  String get paywallPackageMonthlyDesc => 'Flexibilité totale';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Commencez gratuitement – $days jours';
  }

  @override
  String get premiumUpgrade => 'Passez à Premium pour débloquer';

  @override
  String get itemRemoved => 'Article retiré';

  @override
  String get undo => 'Annuler';

  @override
  String get emptyListTitle => 'Votre liste est vide';

  @override
  String get emptyListSubtitle => 'Ajoutez des articles pour commencer';

  @override
  String get noListFoundTitle => 'Aucune liste trouvée';

  @override
  String get noListFoundSubtitle => 'Créez votre première liste pour commencer';

  @override
  String get createFirstList => 'Créer une première liste';

  @override
  String get listBudgetTitle => 'Budget de la liste';

  @override
  String get budgetAmountLabel => 'Montant du budget';

  @override
  String get removeBudget => 'Retirer';

  @override
  String get prefUnlimitedLists => 'Listes illimitées';

  @override
  String get prefSharing => 'Partager des listes';

  @override
  String get prefFullHistory => 'Historique complet';

  @override
  String get prefExportData => 'Exporter les données';

  @override
  String get prefCustomThemes => 'Thèmes personnalisés';

  @override
  String get prefMonthlyBudget => 'Budget mensuel global';

  @override
  String get prefAIAssistant => 'Assistant IA personnel';

  @override
  String get prefUnlimitedPantry => 'Garde-manger illimité';

  @override
  String get prefInteractiveArtifacts => 'Artefacts interactifs IA';

  @override
  String get themeGreen => 'Vert';

  @override
  String get themeBlue => 'Bleu';

  @override
  String get themePurple => 'Violet';

  @override
  String get themeRed => 'Rouge';

  @override
  String get themeOrange => 'Orange';

  @override
  String get themePink => 'Rose';

  @override
  String get themeIndigo => 'Indigo';

  @override
  String get themeAmber => 'Ambre';

  @override
  String get themeTeal => 'Sarcelle';

  @override
  String get themeBrown => 'Marron';

  @override
  String get catFruits => 'Fruits';

  @override
  String get catCleaning => 'Nettoyage';

  @override
  String get catBeverages => 'Boissons';

  @override
  String get catBakery => 'Boulangerie';

  @override
  String get catOthers => 'Autres';

  @override
  String get unitPack => 'paquet';

  @override
  String get shareSubject => 'Liste de courses';

  @override
  String get monthlyBudgetTitle => 'Budget mensuel';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Supprimer la liste';

  @override
  String get pantryItemRemoved => 'Article retiré';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit articles à acheter',
      one: '$deficit article à acheter',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total du panier';

  @override
  String get restockLabel => 'Réapprovisionner';

  @override
  String get advancedFeatures => 'Fonctionnalités avancées';

  @override
  String get selectAll => 'Tout sélectionner';

  @override
  String get deselectAll => 'Tout désélectionner';

  @override
  String get monthlyBudgetAppBar => 'Budget mensuel';

  @override
  String get budgetEditTitle => 'Budget mensuel';

  @override
  String get budgetDashboardTitle => 'Tableau de bord';

  @override
  String get selectListForDashboard =>
      'Sélectionnez une liste pour voir le tableau de bord.';

  @override
  String get spendingAnalysis => 'Analyse des dépenses';

  @override
  String get noItemsToAnalyze => 'Aucun article dans la liste à analyser.';

  @override
  String get markItemsToSeeAnalysis =>
      'Marquez les articles comme achetés pour voir l\'analyse.';

  @override
  String get totalSpending => 'Total dépensé';

  @override
  String get spendingByCategory => 'Dépenses par catégorie';

  @override
  String get achievements => 'Succès';

  @override
  String get exportPdfExcel => 'Exporter PDF/Excel';

  @override
  String get exportPdf => 'Exporter en PDF';

  @override
  String get exportExcel => 'Exporter en Excel';

  @override
  String get organizingAi => 'ORGANISATION PAR IA...';

  @override
  String get yesLabel => 'Oui';

  @override
  String get noLabel => 'Non';

  @override
  String get shareListText => 'Ma liste de courses';

  @override
  String get emptyListAddItems =>
      'Votre liste est vide ! Ajoutez d\'abord des articles. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Liste organisée comme par magie par catégories ! ✨';

  @override
  String get shoppingMode => 'Mode courses';

  @override
  String get smartOrganization => 'Organisation intelligente';

  @override
  String get savings => 'Économies';

  @override
  String get shoppingModeHeader => 'MODE COURSES';

  @override
  String get shareAsText => 'Envoyer les articles sous forme de texte formaté';

  @override
  String get shareRealtime =>
      'Synchronisation en temps réel avec d\'autres personnes';

  @override
  String get quickRecipe => 'Recette rapide';

  @override
  String get quickRecipePrompt =>
      'Suggérez des recettes avec les articles de ma liste.';

  @override
  String get economyTips => 'Conseils d\'économie';

  @override
  String get economyTipsPrompt => 'Comment puis-je économiser sur cet achat ?';

  @override
  String get organizeAisles => 'Organiser par rayons';

  @override
  String get organizeAislesPrompt => 'Organisez par rayons du supermarché.';

  @override
  String get recipeSuggestion => 'Suggestion de recette';

  @override
  String aiCreditsRemaining(int remaining) {
    return '$remaining crédits restants';
  }

  @override
  String get addAllToList => 'Tout ajouter à la liste';

  @override
  String get organizeByAisles => 'Organiser par rayons';

  @override
  String get voiceTranscriptionTooltip => 'Saisie vocale (Gratuit)';

  @override
  String get aiVoiceCommandTooltip => 'Commande vocale IA (Premium)';

  @override
  String get voiceCommandTitle => 'Commande vocale IA';

  @override
  String get voiceCommandContent =>
      'Parlez naturellement pour gérer votre liste !\n\nExemples :\n• \'Ajoute du pain, du fromage et du jambon\'\n• \'Retire la lessive\'\n• \'Change le thème en bleu\'\n\nIl s\'agit d\'une fonctionnalité exclusive de KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Voir les offres';

  @override
  String get itemsAddedSuccess => 'Articles ajoutés à la liste avec succès !';

  @override
  String get viewList => 'Voir la liste';

  @override
  String get feedbackTitle => 'Envoyer un commentaire';

  @override
  String get feedbackPrompt => 'Que souhaitez-vous partager ?';

  @override
  String get feedbackTypeBug => 'Signaler un bogue';

  @override
  String get feedbackTypeBugHint => 'Quelque chose ne fonctionne pas';

  @override
  String get feedbackTypeSuggestion => 'Suggestion';

  @override
  String get feedbackTypeSuggestionHint => 'Idée pour améliorer l\'application';

  @override
  String get feedbackTypeTranslation => 'Erreur de traduction';

  @override
  String get feedbackTypeTranslationHint =>
      'Traduction incorrecte ou maladroite';

  @override
  String get feedbackTypeFeature => 'Demande de fonctionnalité';

  @override
  String get feedbackTypeFeatureHint => 'Fonctionnalité que vous aimeriez voir';

  @override
  String get feedbackTypeOther => 'Autre';

  @override
  String get feedbackTypeOtherHint => 'Autre type de commentaire';

  @override
  String get feedbackHint => 'Décrivez votre commentaire en détail...';

  @override
  String get feedbackSend => 'Envoyer le commentaire';

  @override
  String get feedbackSending => 'Envoi en cours...';

  @override
  String get feedbackThankYou => 'Merci !';

  @override
  String get feedbackThankYouMessage =>
      'Votre commentaire a été reçu et nous aide à améliorer KipiList pour tous.';

  @override
  String get feedbackBack => 'Retour';

  @override
  String feedbackError(String error) {
    return 'Erreur d\'envoi : $error';
  }

  @override
  String get feedbackRetry => 'Réessayer';

  @override
  String get feedbackSettingsTitle => 'Envoyer un commentaire';

  @override
  String get feedbackSettingsSubtitle =>
      'Signaler des bogues, suggérer des améliorations ou corriger des traductions';

  @override
  String get aiEnergy => 'Énergie IA';

  @override
  String get searchInConversation => 'Rechercher dans une conversation...';

  @override
  String get noMessagesFound => 'Aucun message trouvé';

  @override
  String get suggestedQuestions => 'Questions suggérées :';

  @override
  String get shoppingAssistant => 'Assistante commerciale';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased sur $total achetés';
  }

  @override
  String get estimatedCost => 'Estimé';

  @override
  String get viewItems => 'Afficher les articles';

  @override
  String get noItemsInList => 'Aucun élément dans la liste';

  @override
  String get longHistoryWarning =>
      'Longue histoire : l\'assistant se concentre sur les derniers messages pour de meilleures performances.';

  @override
  String get listening => 'Écoute...';

  @override
  String get addDirectToList => 'Ajouter directement à la liste';

  @override
  String get unlockFullResponse => 'Débloquez une réponse complète';

  @override
  String get switchList => 'Changer de liste';

  @override
  String get marketMode => 'Mode marché';

  @override
  String get backToChat => 'Retour au chat';

  @override
  String get finishShopping => 'Terminer vos achats';

  @override
  String get welcomeAiAssistant => 'Bienvenue dans AI Assistant';

  @override
  String get createListToStartAi =>
      'Créez une liste de courses pour commencer à utiliser le chat intelligent.';

  @override
  String get howCanIHelp => 'Comment puis-je aider ?';

  @override
  String get chatSubtitleShort =>
      'Renseignez-vous sur les tarifs, les recettes, l\'organisation...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total acheté';
  }

  @override
  String get quickReplies => 'Réponses rapides :';

  @override
  String get voiceProFeature =>
      'Les commandes vocales avancées sont Pro. Activation de la dictée de base...';

  @override
  String get viewPro => 'Voir Pro';

  @override
  String get errorLoadingChat =>
      'Oups ! Une erreur s\'est produite lors du chargement du chat.';

  @override
  String get errorLoadingChatSubtitle =>
      'Vérifiez votre connexion ou réessayez plus tard.';

  @override
  String get errorOscillation =>
      'Cela peut être dû à des oscillations du réseau ou à une indisponibilité temporaire. Veuillez réessayer.';

  @override
  String get activeListening => 'Écoute active';

  @override
  String get whatToDoWithItem => 'Que souhaiteriez-vous faire avec cet objet ?';

  @override
  String get viewDetails => 'Afficher les détails';

  @override
  String get openMenu => 'Ouvrir le menu';

  @override
  String get viewRecipe => 'Voir la recette';

  @override
  String get recipeCreated => 'Recette créée !';

  @override
  String get editRecipe => 'Modifier';

  @override
  String get deleteRecipe => 'Supprimer';

  @override
  String get deleteRecipeConfirm => 'Supprimer cette recette ?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Êtes-vous sûr de vouloir supprimer \"$recipeName\" ? Cette action est irréversible.';
  }

  @override
  String get ingredients => 'Ingrédients';

  @override
  String get instructions => 'Instructions';

  @override
  String get prepTime => 'Temps de préparation';

  @override
  String get recipeSaved => 'Recette enregistrée !';

  @override
  String get noRecipesSaved => 'Aucune recette enregistrée';

  @override
  String get noRecipesSavedHint =>
      'Créez votre première recette personnalisée en appuyant sur le bouton ci-dessous.';

  @override
  String get myRecipes => 'Mes Recettes';

  @override
  String get newRecipe => 'Nouvelle Recette';

  @override
  String get loadingRecipes => 'Chargement de vos recettes...';

  @override
  String get errorLoadingRecipes => 'Erreur lors du chargement des recettes';

  @override
  String get addIngredient => 'Ajouter un ingrédient';

  @override
  String get saveRecipe => 'Enregistrer';

  @override
  String get recipeName => 'Nom de la recette';

  @override
  String get shortDescription => 'Description courte';

  @override
  String get prepTimeMinutes => 'Temps de préparation (minutes)';

  @override
  String get instructionsHint => 'Tapez une étape par ligne...';

  @override
  String get addPhoto => 'Ajouter une photo';

  @override
  String get imageUrlPlaceholder => 'Ou collez l\'URL d\'une image';

  @override
  String get tags => 'Balises';

  @override
  String get recipeTags => 'Tags de la recette';

  @override
  String get suggestedTags => 'Suggérés';

  @override
  String get searchRecipes => 'Rechercher des recettes...';

  @override
  String get filterByTag => 'Filtrer par tag';

  @override
  String get allTags => 'Tous';

  @override
  String get recipeDeleted => 'Recette supprimée';

  @override
  String get saveChanges => 'Enregistrer les modifications';

  @override
  String get editRecipeTitle => 'Modifier la recette';

  @override
  String get newRecipeTitle => 'Nouvelle Recette';

  @override
  String get requiredField => 'Requis';

  @override
  String get chooseImageSource => 'Choisir la source de l\'image';

  @override
  String get gallery => 'Galerie';

  @override
  String get enterUrl => 'Entrer l\'URL';

  @override
  String get recipeImage => 'Image de la recette';

  @override
  String get removeImage => 'Retirer l\'image';

  @override
  String get mealPlannerTitle => 'Planning des repas';

  @override
  String get mealPlannerViewMonthly => 'Vue mensuelle';

  @override
  String get mealPlannerViewWeekly => 'Vue hebdomadaire';

  @override
  String get mealPlannerNoMeals => 'Aucun repas planifié';

  @override
  String get mealPlannerNoMealsHint =>
      'Appuyez sur un jour pour ajouter un repas';

  @override
  String get mealPlannerLoading => 'Chargement du planning des repas...';

  @override
  String get mealPlannerError =>
      'Erreur lors du chargement du planning des repas';

  @override
  String get mealPlannerAddMeal => 'Ajouter un repas';

  @override
  String get mealPlannerEditMeal => 'Modifier le repas';

  @override
  String get mealPlannerDeleteMeal => 'Retirer le repas';

  @override
  String get mealPlannerMealDeleted => 'Repas retiré';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count portions',
      one: '$count portion',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Portions';

  @override
  String get mealPlannerNoteLabel => 'Note (optionnel)';

  @override
  String get mealPlannerSelectRecipe => 'Sélectionner une recette';

  @override
  String get mealPlannerSearchRecipes => 'Rechercher des recettes...';

  @override
  String get mealPlannerNoRecipesFound => 'Aucune recette trouvée';

  @override
  String get mealPlannerNoRecipesHint =>
      'Créez d\'abord des recettes dans l\'onglet Recettes';

  @override
  String get mealPlannerSave => 'Ajouter au planning';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count sur $total repas planifiés';
  }

  @override
  String get mealPlannerGenerateList => 'Générer une liste de courses';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Ajouter tous les ingrédients des repas prévus cette semaine à votre liste de courses ?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingrédient(s) ajouté(s) à votre liste !';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Aucun ingrédient à ajouter. Planifiez d\'abord des repas avec des recettes.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Créez d\'abord une liste de courses.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Petit-déjeuner';

  @override
  String get mealPlannerMealTypeLunch => 'Déjeuner';

  @override
  String get mealPlannerMealTypeDinner => 'Dîner';

  @override
  String get mealPlannerMealTypeSnack => 'Collation';

  @override
  String get mealPlannerDateLabel => 'Date';

  @override
  String get mealPlannerWeekEmpty => 'Rien de planifié pour cette semaine';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Appuyez sur n\'importe quel jour pour commencer à planifier vos repas !';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Inviter à lister';

  @override
  String get shareApp => 'Partager l\'application';

  @override
  String get shareAppDescription => 'Invitez des amis à utiliser KipiList';

  @override
  String shareReferralText(Object url) {
    return 'J\'utilise KipiList pour organiser mes courses ! Téléchargez via mon lien et nous obtenons tous les deux 7 jours de Premium gratuits : $url';
  }

  @override
  String get shareReferralSubject => 'Obtenez 7 jours de KipiList Premium !';

  @override
  String get gestureHint =>
      'Maintenez enfoncé pour sélectionner • Faites glisser pour supprimer';

  @override
  String get catalogTitle => 'Catalogue';

  @override
  String get catalogMyFrequents => 'Mes fréquents';

  @override
  String get catalogSearchGlobal => 'Rechercher n\'importe quel produit...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Rechercher dans $category...';
  }

  @override
  String get catalogSortPopular => 'Le plus populaire';

  @override
  String get catalogSortAZ => 'A à Z';

  @override
  String get catalogFilterNational => 'Nationaux';

  @override
  String get catalogRareSection => 'moins courant dans votre pays';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Ajouter $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Produit introuvable, saisissez le nom';

  @override
  String get catalogBrowse => 'Parcourir le catalogue';

  @override
  String get offlineBanner => 'Vous êtes hors ligne';

  @override
  String get consentTitle => 'Confidentialité et analyses';

  @override
  String get consentBody =>
      'KipiList utilise Firebase Analytics pour améliorer votre expérience. Vos données sont traitées conformément à notre politique de confidentialité.';

  @override
  String get consentAccept => 'Accepter';

  @override
  String get consentDecline => 'Non merci';

  @override
  String get mealPlannerPantryAllAvailable => 'En stock';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count éléments manquants',
      one: '$count élément manquant',
    );
    return '$_temp0';
  }

  @override
  String get expirationDate => 'Date d\'expiration';

  @override
  String get notInformed => 'Pas informé';

  @override
  String get manageCategoriesTitle => 'Gérer les catégories';

  @override
  String get sortAZ => 'A à Z';

  @override
  String get backToToday => 'Retour à aujourd\'hui';
}
