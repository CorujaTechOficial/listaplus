// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Lista de Compras';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Dispensa';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Salvar';

  @override
  String get create => 'Criar';

  @override
  String get add => 'Adicionar';

  @override
  String get remove => 'Remover';

  @override
  String get delete => 'Excluir';

  @override
  String get edit => 'Editar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Fechar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renomear';

  @override
  String get upgrade => 'Fazer upgrade';

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
  String get purchaseError => 'Erro ao processar compra. Tente novamente.';

  @override
  String get restoreError => 'Erro ao restaurar compras. Tente novamente.';

  @override
  String get loading => 'Carregando...';

  @override
  String get fieldRequired => 'Campo obrigatório';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count selecionados',
      one: '$count selecionado',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimado';

  @override
  String get alreadyPurchased => 'Já comprado';

  @override
  String get clearList => 'Limpar lista';

  @override
  String get clearPurchased => 'Limpar comprados';

  @override
  String get share => 'Compartilhar';

  @override
  String get shareViaCode => 'Compartilhar via código';

  @override
  String get importViaCode => 'Importar via código';

  @override
  String get listAssistant => 'Assistente desta lista';

  @override
  String get globalAssistant => 'Assistente geral';

  @override
  String get becomePremium => 'Tornar-se Premium';

  @override
  String get manageSubscription => 'Gerenciar assinatura';

  @override
  String get completePurchase => 'Concluir Compra';

  @override
  String get confirmClearList => 'Remover todos os itens?';

  @override
  String get shareListTitle => 'Compartilhar Lista';

  @override
  String get shareThisCode => 'Compartilhe este código:';

  @override
  String get validForLimitedTime => 'Válido por tempo limitado';

  @override
  String get importListTitle => 'Importar Lista';

  @override
  String get enterCodeHint => 'Digite o código';

  @override
  String get confirmArchiveTitle => 'Concluir Compra';

  @override
  String get confirmArchiveContent => 'Deseja concluir esta compra e arquivar a lista?';

  @override
  String get complete => 'Concluir';

  @override
  String get listArchived => 'Lista arquivada com sucesso!';

  @override
  String listAdded(String listName) {
    return '$listName adicionada!';
  }

  @override
  String get buy => 'Comprar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return 'Remover $count item(ns)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return 'Remover $count item(ns)?';
  }

  @override
  String get archiveList => 'Concluir Compra';

  @override
  String get pantryAppBar => 'Dispensa';

  @override
  String get generateShoppingList => 'Gerar lista de compras';

  @override
  String get pantryEmpty => 'Dispensa vazia';

  @override
  String get pantryEmptySubtitle => 'Adicione produtos que você quer manter em casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(ns) precisam ser comprados';
  }

  @override
  String get noItemsToBuy => 'Nenhum item precisa ser comprado';

  @override
  String get newPantryList => 'Compras da Dispensa';

  @override
  String get newListTitle => 'Nova Lista de Compras';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(ns) serão adicionados';
  }

  @override
  String get listNameLabel => 'Nome da lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" criada com $count itens';
  }

  @override
  String get noTracking => 'Sem rastreamento';

  @override
  String get markAsPurchased => 'Marcar como comprado';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Quantidade ideal';

  @override
  String get currentQuantity => 'Quantidade atual';

  @override
  String get consumed => 'Consumi';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastecido para $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Remover \"$name\" da dispensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get settingsAppBar => 'Configurações';

  @override
  String get appearance => 'Aparência';

  @override
  String get light => 'Claro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Escuro';

  @override
  String get themeColor => 'Cor do tema';

  @override
  String get finance => 'Financeiro';

  @override
  String get monthlyBudgetNav => 'Orçamento mensal';

  @override
  String get budgetSubtitle => 'Acompanhe seus gastos do mês';

  @override
  String get data => 'Dados';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Exportar ou importar seus dados';

  @override
  String get about => 'Sobre';

  @override
  String get version => 'Versão';

  @override
  String get privacy => 'Privacidade';

  @override
  String get termsOfUse => 'Termos de uso';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription => 'Backup e exportação é premium';

  @override
  String get exportData => 'Exportar dados';

  @override
  String get exportDataSubtitle => 'Salvar todas as listas como JSON';

  @override
  String get importData => 'Importar dados';

  @override
  String get importDataSubtitle => 'Restaurar listas de um JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Cole o JSON do backup aqui...';

  @override
  String get backupExported => 'Backup exportado!';

  @override
  String get budgetAppBar => 'Orçamento Mensal';

  @override
  String get budgetPremiumLocked => 'Orçamento mensal global é premium';

  @override
  String get budgetUpgradePrompt => 'Faça upgrade para desbloquear';

  @override
  String get noBudgetDefined => 'Nenhum orçamento definido';

  @override
  String totalEstimated(String amount) {
    return 'Total estimado: $amount';
  }

  @override
  String get setBudgetButton => 'Definir orçamento';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Valor (R\$)';

  @override
  String get setBudgetTitle => 'Orçamento Mensal';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterPending => 'Pendentes';

  @override
  String get filterPurchased => 'Comprados';

  @override
  String get sortName => 'Nome';

  @override
  String get sortCategory => 'Categoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Adicionar Item';

  @override
  String get itemName => 'Nome do item';

  @override
  String get quantityShort => 'Qtd';

  @override
  String get unit => 'Unidade';

  @override
  String get category => 'Categoria';

  @override
  String get estimatedPrice => 'Preço estimado (R\$)';

  @override
  String get addItemPrice => 'Preço estimado';

  @override
  String get editItem => 'Editar Item';

  @override
  String get quantityFull => 'Quantidade';

  @override
  String get editItemPrice => 'Preço estimado';

  @override
  String get addToPantry => 'Adicionar à Dispensa';

  @override
  String get productName => 'Nome do produto';

  @override
  String get idealQty => 'Qtd ideal';

  @override
  String get currentQty => 'Qtd atual';

  @override
  String get trackStock => 'Rastrear estoque';

  @override
  String get trackStockActive => 'Aparece na sugestão de compras';

  @override
  String get trackStockInactive => 'Não gera sugestão de compra';

  @override
  String get createListDialog => 'Criar Lista';

  @override
  String get renameListDialog => 'Renomear Lista';

  @override
  String get listHistory => 'Histórico de Listas';

  @override
  String get myLists => 'Minhas Listas';

  @override
  String get viewActive => 'Ver Ativas';

  @override
  String get viewHistory => 'Ver Histórico';

  @override
  String get noArchivedLists => 'Nenhuma lista arquivada';

  @override
  String get noActiveLists => 'Nenhuma lista ativa';

  @override
  String completedOn(String date) {
    return 'Concluída em $date';
  }

  @override
  String get sharedLabel => 'Compartilhada';

  @override
  String get restore => 'Restaurar';

  @override
  String get removeSharedTooltip => 'Remover';

  @override
  String get deleteListTitle => 'Excluir lista';

  @override
  String deleteListContent(String name) {
    return 'Tem certeza que deseja excluir \"$name\"? Todos os itens serão removidos.';
  }

  @override
  String get removeSharedListTitle => 'Remover lista compartilhada';

  @override
  String removeSharedListContent(String name) {
    return 'Remover \"$name\" da sua lista de listas? A lista original não será afetada.';
  }

  @override
  String get createNewList => 'Criar nova lista';

  @override
  String get aiAssistant => 'Assistente de IA';

  @override
  String get aiAssistantDescription => 'Obtenha sugestões inteligentes, receitas e dicas personalizadas com nosso assistente de IA.';

  @override
  String get generalAssistant => 'Assistente Geral';

  @override
  String get clearHistory => 'Limpar Histórico';

  @override
  String get clearHistoryConfirm => 'Deseja apagar todas as mensagens desta sessão?';

  @override
  String get chatHint => 'Digite sua mensagem...';

  @override
  String chatError(String error) {
    return 'Erro ao carregar chat: $error';
  }

  @override
  String get listHelp => 'Como posso ajudar com sua lista?';

  @override
  String get generalHelp => 'Como posso ajudar com suas compras hoje?';

  @override
  String get chatSubtitle => 'Peça sugestões de itens, receitas or dicas de economia.';

  @override
  String get aiError => 'Desculpe, ocorreu um erro ao processar sua solicitação. Verifique sua conexão ou tente novamente mais tarde.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Faça login para desbloquear\nrecursos premium';

  @override
  String get signInGoogle => 'Entrar com Google';

  @override
  String get signInApple => 'Entrar com Apple';

  @override
  String get continueAsGuest => 'Continuar como visitante';

  @override
  String loginError(String error) {
    return 'Erro ao fazer login: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Faça upgrade para desbloquear';

  @override
  String get earnPremium => 'Ganhe Premium grátis!';

  @override
  String get watchAdDescription => 'Assista um vídeo e ganhe 24h de Premium';

  @override
  String get watch => 'Assistir';

  @override
  String get adsUnavailable => 'Anúncios indisponíveis no momento.';

  @override
  String get adLoadError => 'Erro ao carregar anúncio. Tente novamente.';

  @override
  String get adDisplayError => 'Erro ao exibir anúncio.';

  @override
  String get premium24h => '+24h de Premium!';

  @override
  String get itemRemoved => 'Item removido';

  @override
  String get undo => 'Desfazer';

  @override
  String get emptyListTitle => 'Sua lista está vazia';

  @override
  String get emptyListSubtitle => 'Adicione itens para começar';

  @override
  String get noListFoundTitle => 'Nenhuma lista encontrada';

  @override
  String get noListFoundSubtitle => 'Crie sua primeira lista para começar';

  @override
  String get createFirstList => 'Criar Primeira Lista';

  @override
  String get listBudgetTitle => 'Orçamento da Lista';

  @override
  String get budgetAmountLabel => 'Valor do orçamento';

  @override
  String get removeBudget => 'Remover';

  @override
  String get prefUnlimitedLists => 'Listas ilimitadas';

  @override
  String get prefSharing => 'Compartilhar listas';

  @override
  String get prefFullHistory => 'Histórico completo';

  @override
  String get prefExportData => 'Exportar dados';

  @override
  String get prefCustomThemes => 'Temas personalizados';

  @override
  String get prefMonthlyBudget => 'Orçamento mensal global';

  @override
  String get prefAIAssistant => 'Assistente de IA Personalizado';

  @override
  String get prefUnlimitedPantry => 'Dispensa ilimitada';

  @override
  String get themeGreen => 'Verde';

  @override
  String get themeBlue => 'Azul';

  @override
  String get themePurple => 'Roxo';

  @override
  String get themeRed => 'Vermelho';

  @override
  String get themeOrange => 'Laranja';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Índigo';

  @override
  String get themeAmber => 'Âmbar';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Marrom';

  @override
  String get catFruits => 'Frutas';

  @override
  String get catCleaning => 'Limpeza';

  @override
  String get catBeverages => 'Bebidas';

  @override
  String get catBakery => 'Padaria';

  @override
  String get catOthers => 'Outros';

  @override
  String get unitPack => 'pacote';

  @override
  String get shareSubject => 'Lista de Compras';

  @override
  String get monthlyBudgetTitle => 'Orçamento Mensal';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Excluir lista';

  @override
  String get pantryItemRemoved => 'Item removido';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit itens precisam ser comprados',
      one: '$deficit item precisa ser comprado',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total do carrinho';

  @override
  String get restockLabel => 'Reabastecer';

  @override
  String get adFree => 'Sem anúncios';

  @override
  String get advancedFeatures => 'Recursos avançados';

  @override
  String get selectAll => 'Selecionar tudo';

  @override
  String get deselectAll => 'Desselecionar tudo';

  @override
  String get monthlyBudgetAppBar => 'Orçamento Mensal';

  @override
  String get budgetEditTitle => 'Orçamento Mensal';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr(): super('pt_BR');

  @override
  String get appTitle => 'Lista de Compras';

  @override
  String get lists => 'Listas';

  @override
  String get pantry => 'Dispensa';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Salvar';

  @override
  String get create => 'Criar';

  @override
  String get add => 'Adicionar';

  @override
  String get remove => 'Remover';

  @override
  String get delete => 'Excluir';

  @override
  String get edit => 'Editar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get close => 'Fechar';

  @override
  String get import => 'Importar';

  @override
  String get rename => 'Renomear';

  @override
  String get upgrade => 'Fazer upgrade';

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
  String get purchaseError => 'Erro ao processar compra. Tente novamente.';

  @override
  String get restoreError => 'Erro ao restaurar compras. Tente novamente.';

  @override
  String get loading => 'Carregando...';

  @override
  String get fieldRequired => 'Campo obrigatório';

  @override
  String selectedItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count selecionados',
      one: '$count selecionado',
    );
    return '$_temp0';
  }

  @override
  String get estimated => 'Estimado';

  @override
  String get alreadyPurchased => 'Já comprado';

  @override
  String get clearList => 'Limpar lista';

  @override
  String get clearPurchased => 'Limpar comprados';

  @override
  String get share => 'Compartilhar';

  @override
  String get shareViaCode => 'Compartilhar via código';

  @override
  String get importViaCode => 'Importar via código';

  @override
  String get listAssistant => 'Assistente desta lista';

  @override
  String get globalAssistant => 'Assistente geral';

  @override
  String get becomePremium => 'Tornar-se Premium';

  @override
  String get manageSubscription => 'Gerenciar assinatura';

  @override
  String get completePurchase => 'Concluir Compra';

  @override
  String get confirmClearList => 'Remover todos os itens?';

  @override
  String get shareListTitle => 'Compartilhar Lista';

  @override
  String get shareThisCode => 'Compartilhe este código:';

  @override
  String get validForLimitedTime => 'Válido por tempo limitado';

  @override
  String get importListTitle => 'Importar Lista';

  @override
  String get enterCodeHint => 'Digite o código';

  @override
  String get confirmArchiveTitle => 'Concluir Compra';

  @override
  String get confirmArchiveContent => 'Deseja concluir esta compra e arquivar a lista?';

  @override
  String get complete => 'Concluir';

  @override
  String get listArchived => 'Lista arquivada com sucesso!';

  @override
  String listAdded(String listName) {
    return '$listName adicionada!';
  }

  @override
  String get buy => 'Comprar';

  @override
  String get unmark => 'Desmarcar';

  @override
  String confirmDeleteItems(int count) {
    return 'Remover $count item(ns)?';
  }

  @override
  String get confirmDeleteTitle => 'Confirmar';

  @override
  String confirmContent(int count) {
    return 'Remover $count item(ns)?';
  }

  @override
  String get archiveList => 'Concluir Compra';

  @override
  String get pantryAppBar => 'Dispensa';

  @override
  String get generateShoppingList => 'Gerar lista de compras';

  @override
  String get pantryEmpty => 'Dispensa vazia';

  @override
  String get pantryEmptySubtitle => 'Adicione produtos que você quer manter em casa';

  @override
  String itemsNeedPurchase(int deficit) {
    return '$deficit item(ns) precisam ser comprados';
  }

  @override
  String get noItemsToBuy => 'Nenhum item precisa ser comprado';

  @override
  String get newPantryList => 'Compras da Dispensa';

  @override
  String get newListTitle => 'Nova Lista de Compras';

  @override
  String itemsWillBeAdded(int count) {
    return '$count item(ns) serão adicionados';
  }

  @override
  String get listNameLabel => 'Nome da lista';

  @override
  String listCreated(String name, int count) {
    return 'Lista \"$name\" criada com $count itens';
  }

  @override
  String get noTracking => 'Sem rastreamento';

  @override
  String get markAsPurchased => 'Marcar como comprado';

  @override
  String editPantryItem(String name) {
    return 'Editar $name';
  }

  @override
  String get idealQuantity => 'Quantidade ideal';

  @override
  String get currentQuantity => 'Quantidade atual';

  @override
  String get consumed => 'Consumi';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name reabastecido para $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Remover \"$name\" da dispensa?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Editar $name';
  }

  @override
  String get settingsAppBar => 'Configurações';

  @override
  String get appearance => 'Aparência';

  @override
  String get light => 'Claro';

  @override
  String get system => 'Sistema';

  @override
  String get dark => 'Escuro';

  @override
  String get themeColor => 'Cor do tema';

  @override
  String get finance => 'Financeiro';

  @override
  String get monthlyBudgetNav => 'Orçamento mensal';

  @override
  String get budgetSubtitle => 'Acompanhe seus gastos do mês';

  @override
  String get data => 'Dados';

  @override
  String get backupNav => 'Backup';

  @override
  String get backupSubtitle => 'Exportar ou importar seus dados';

  @override
  String get about => 'Sobre';

  @override
  String get version => 'Versão';

  @override
  String get privacy => 'Privacidade';

  @override
  String get termsOfUse => 'Termos de uso';

  @override
  String get backupTitle => 'Backup';

  @override
  String get backupPremiumDescription => 'Backup e exportação é premium';

  @override
  String get exportData => 'Exportar dados';

  @override
  String get exportDataSubtitle => 'Salvar todas as listas como JSON';

  @override
  String get importData => 'Importar dados';

  @override
  String get importDataSubtitle => 'Restaurar listas de um JSON';

  @override
  String get importJsonTitle => 'Importar JSON';

  @override
  String get importJsonHint => 'Cole o JSON do backup aqui...';

  @override
  String get backupExported => 'Backup exportado!';

  @override
  String get budgetAppBar => 'Orçamento Mensal';

  @override
  String get budgetPremiumLocked => 'Orçamento mensal global é premium';

  @override
  String get budgetUpgradePrompt => 'Faça upgrade para desbloquear';

  @override
  String get noBudgetDefined => 'Nenhum orçamento definido';

  @override
  String totalEstimated(String amount) {
    return 'Total estimado: $amount';
  }

  @override
  String get setBudgetButton => 'Definir orçamento';

  @override
  String get budgetLists => 'Listas';

  @override
  String get budgetValueLabel => 'Valor (R\$)';

  @override
  String get setBudgetTitle => 'Orçamento Mensal';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterPending => 'Pendentes';

  @override
  String get filterPurchased => 'Comprados';

  @override
  String get sortName => 'Nome';

  @override
  String get sortCategory => 'Categoria';

  @override
  String get sortDate => 'Data';

  @override
  String get sortManual => 'Manual';

  @override
  String get addItem => 'Adicionar Item';

  @override
  String get itemName => 'Nome do item';

  @override
  String get quantityShort => 'Qtd';

  @override
  String get unit => 'Unidade';

  @override
  String get category => 'Categoria';

  @override
  String get estimatedPrice => 'Preço estimado (R\$)';

  @override
  String get addItemPrice => 'Preço estimado';

  @override
  String get editItem => 'Editar Item';

  @override
  String get quantityFull => 'Quantidade';

  @override
  String get editItemPrice => 'Preço estimado';

  @override
  String get addToPantry => 'Adicionar à Dispensa';

  @override
  String get productName => 'Nome do produto';

  @override
  String get idealQty => 'Qtd ideal';

  @override
  String get currentQty => 'Qtd atual';

  @override
  String get trackStock => 'Rastrear estoque';

  @override
  String get trackStockActive => 'Aparece na sugestão de compras';

  @override
  String get trackStockInactive => 'Não gera sugestão de compra';

  @override
  String get createListDialog => 'Criar Lista';

  @override
  String get renameListDialog => 'Renomear Lista';

  @override
  String get listHistory => 'Histórico de Listas';

  @override
  String get myLists => 'Minhas Listas';

  @override
  String get viewActive => 'Ver Ativas';

  @override
  String get viewHistory => 'Ver Histórico';

  @override
  String get noArchivedLists => 'Nenhuma lista arquivada';

  @override
  String get noActiveLists => 'Nenhuma lista ativa';

  @override
  String completedOn(String date) {
    return 'Concluída em $date';
  }

  @override
  String get sharedLabel => 'Compartilhada';

  @override
  String get restore => 'Restaurar';

  @override
  String get removeSharedTooltip => 'Remover';

  @override
  String get deleteListTitle => 'Excluir lista';

  @override
  String deleteListContent(String name) {
    return 'Tem certeza que deseja excluir \"$name\"? Todos os itens serão removidos.';
  }

  @override
  String get removeSharedListTitle => 'Remover lista compartilhada';

  @override
  String removeSharedListContent(String name) {
    return 'Remover \"$name\" da sua lista de listas? A lista original não será afetada.';
  }

  @override
  String get createNewList => 'Criar nova lista';

  @override
  String get aiAssistant => 'Assistente de IA';

  @override
  String get aiAssistantDescription => 'Obtenha sugestões inteligentes, receitas e dicas personalizadas com nosso assistente de IA.';

  @override
  String get generalAssistant => 'Assistente Geral';

  @override
  String get clearHistory => 'Limpar Histórico';

  @override
  String get clearHistoryConfirm => 'Deseja apagar todas as mensagens desta sessão?';

  @override
  String get chatHint => 'Digite sua mensagem...';

  @override
  String chatError(String error) {
    return 'Erro ao carregar chat: $error';
  }

  @override
  String get listHelp => 'Como posso ajudar com sua lista?';

  @override
  String get generalHelp => 'Como posso ajudar com suas compras hoje?';

  @override
  String get chatSubtitle => 'Peça sugestões de itens, receitas or dicas de economia.';

  @override
  String get aiError => 'Desculpe, ocorreu um erro ao processar sua solicitação. Verifique sua conexão ou tente novamente mais tarde.';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Faça login para desbloquear\nrecursos premium';

  @override
  String get signInGoogle => 'Entrar com Google';

  @override
  String get signInApple => 'Entrar com Apple';

  @override
  String get continueAsGuest => 'Continuar como visitante';

  @override
  String loginError(String error) {
    return 'Erro ao fazer login: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'Faça upgrade para desbloquear';

  @override
  String get earnPremium => 'Ganhe Premium grátis!';

  @override
  String get watchAdDescription => 'Assista um vídeo e ganhe 24h de Premium';

  @override
  String get watch => 'Assistir';

  @override
  String get adsUnavailable => 'Anúncios indisponíveis no momento.';

  @override
  String get adLoadError => 'Erro ao carregar anúncio. Tente novamente.';

  @override
  String get adDisplayError => 'Erro ao exibir anúncio.';

  @override
  String get premium24h => '+24h de Premium!';

  @override
  String get itemRemoved => 'Item removido';

  @override
  String get undo => 'Desfazer';

  @override
  String get emptyListTitle => 'Sua lista está vazia';

  @override
  String get emptyListSubtitle => 'Adicione itens para começar';

  @override
  String get noListFoundTitle => 'Nenhuma lista encontrada';

  @override
  String get noListFoundSubtitle => 'Crie sua primeira lista para começar';

  @override
  String get createFirstList => 'Criar Primeira Lista';

  @override
  String get listBudgetTitle => 'Orçamento da Lista';

  @override
  String get budgetAmountLabel => 'Valor do orçamento';

  @override
  String get removeBudget => 'Remover';

  @override
  String get prefUnlimitedLists => 'Listas ilimitadas';

  @override
  String get prefSharing => 'Compartilhar listas';

  @override
  String get prefFullHistory => 'Histórico completo';

  @override
  String get prefExportData => 'Exportar dados';

  @override
  String get prefCustomThemes => 'Temas personalizados';

  @override
  String get prefMonthlyBudget => 'Orçamento mensal global';

  @override
  String get prefAIAssistant => 'Assistente de IA Personalizado';

  @override
  String get prefUnlimitedPantry => 'Dispensa ilimitada';

  @override
  String get themeGreen => 'Verde';

  @override
  String get themeBlue => 'Azul';

  @override
  String get themePurple => 'Roxo';

  @override
  String get themeRed => 'Vermelho';

  @override
  String get themeOrange => 'Laranja';

  @override
  String get themePink => 'Rosa';

  @override
  String get themeIndigo => 'Índigo';

  @override
  String get themeAmber => 'Âmbar';

  @override
  String get themeTeal => 'Teal';

  @override
  String get themeBrown => 'Marrom';

  @override
  String get catFruits => 'Frutas';

  @override
  String get catCleaning => 'Limpeza';

  @override
  String get catBeverages => 'Bebidas';

  @override
  String get catBakery => 'Padaria';

  @override
  String get catOthers => 'Outros';

  @override
  String get unitPack => 'pacote';

  @override
  String get shareSubject => 'Lista de Compras';

  @override
  String get monthlyBudgetTitle => 'Orçamento Mensal';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Excluir lista';

  @override
  String get pantryItemRemoved => 'Item removido';

  @override
  String deficitItems(int deficit) {
    String _temp0 = intl.Intl.pluralLogic(
      deficit,
      locale: localeName,
      other: '$deficit itens precisam ser comprados',
      one: '$deficit item precisa ser comprado',
    );
    return '$_temp0';
  }

  @override
  String get cartTotal => 'Total do carrinho';

  @override
  String get restockLabel => 'Reabastecer';

  @override
  String get adFree => 'Sem anúncios';

  @override
  String get advancedFeatures => 'Recursos avançados';

  @override
  String get selectAll => 'Selecionar tudo';

  @override
  String get deselectAll => 'Desselecionar tudo';

  @override
  String get monthlyBudgetAppBar => 'Orçamento Mensal';

  @override
  String get budgetEditTitle => 'Orçamento Mensal';
}
