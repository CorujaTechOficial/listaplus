// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '购物清单';

  @override
  String get lists => '清单';

  @override
  String get pantry => '储藏室';

  @override
  String get cancel => '取消';

  @override
  String get save => '保存';

  @override
  String get create => '创建';

  @override
  String get add => '添加';

  @override
  String get remove => '移除';

  @override
  String get delete => '删除';

  @override
  String get edit => '编辑';

  @override
  String get copy => '复制';

  @override
  String get retry => '重试';

  @override
  String get regenerate => '重新生成';

  @override
  String get copiedToClipboard => '已复制到剪贴板';

  @override
  String get confirm => '确认';

  @override
  String get close => '关闭';

  @override
  String get import => '导入';

  @override
  String get rename => '重命名';

  @override
  String get upgrade => '升级';

  @override
  String get clear => '清除';

  @override
  String error(String message) {
    return '错误：$message';
  }

  @override
  String errorGeneric(String message) {
    return '错误：$message';
  }

  @override
  String get purchaseError => '处理购买时出错。请重试。';

  @override
  String get restoreError => '恢复购买时出错。请重试。';

  @override
  String get loading => '加载中...';

  @override
  String get fieldRequired => '必填字段';

  @override
  String get addedFeedback => '已添加！';

  @override
  String selectedItems(int count) {
    return '已选 $count 项';
  }

  @override
  String get estimated => '预估';

  @override
  String get alreadyPurchased => '已购买';

  @override
  String get clearList => '清空清单';

  @override
  String get clearPurchased => '清空已购';

  @override
  String get share => '分享';

  @override
  String get shareViaCode => '通过代码分享';

  @override
  String get importViaCode => '通过代码导入';

  @override
  String get listAssistant => '清单助手';

  @override
  String get globalAssistant => '全局助手';

  @override
  String get becomePremium => '升级至高级版';

  @override
  String get manageSubscription => '管理订阅';

  @override
  String get completePurchase => '完成购买';

  @override
  String get confirmClearList => '移除所有项目？';

  @override
  String get shareListTitle => '分享清单';

  @override
  String get shareThisCode => '分享此代码：';

  @override
  String get validForLimitedTime => '限时有效';

  @override
  String get importListTitle => '导入清单';

  @override
  String get enterCodeHint => '输入代码';

  @override
  String get confirmArchiveTitle => '完成购买';

  @override
  String get confirmArchiveContent => '完成此购买并归档清单？';

  @override
  String get complete => '完成';

  @override
  String get listArchived => '清单归档成功！';

  @override
  String listAdded(String listName) {
    return '已添加 $listName！';
  }

  @override
  String get buy => '购买';

  @override
  String get unmark => '取消标记';

  @override
  String confirmDeleteItems(int count) {
    return '移除 $count 个项目？';
  }

  @override
  String get confirmDeleteTitle => '确认';

  @override
  String confirmContent(int count) {
    return '移除 $count 个项目？';
  }

  @override
  String get archiveList => '归档清单';

  @override
  String get pantryAppBar => '储藏室';

  @override
  String get generateShoppingList => '生成购物清单';

  @override
  String get pantryEmpty => '储藏室为空';

  @override
  String get pantryEmptySubtitle => '添加您想在家中存放的商品';

  @override
  String itemsNeedPurchase(int deficit) {
    return '有 $deficit 个项目需要购买';
  }

  @override
  String get noItemsToBuy => '没有需要购买的项目';

  @override
  String get newPantryList => '储藏室购物';

  @override
  String get newListTitle => '新购物清单';

  @override
  String itemsWillBeAdded(int count) {
    return '将添加 $count 个项目';
  }

  @override
  String get listNameLabel => '清单名称';

  @override
  String listCreated(String name, int count) {
    return '清单\"$name\"已创建，共 $count 个项目';
  }

  @override
  String get noTracking => '不追踪';

  @override
  String get markAsPurchased => '标记为已购买';

  @override
  String editPantryItem(String name) {
    return '编辑 $name';
  }

  @override
  String get idealQuantity => '理想数量';

  @override
  String get currentQuantity => '当前数量';

  @override
  String get consumed => '已消耗';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name 已补货至 $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return '从储藏室中移除\"$name\"？';
  }

  @override
  String pantryEditTitle(String name) {
    return '编辑 $name';
  }

  @override
  String get settingsAppBar => '设置';

  @override
  String get language => '语言';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => '系统默认';

  @override
  String get appearance => '外观';

  @override
  String get light => '浅色';

  @override
  String get system => '系统';

  @override
  String get dark => '深色';

  @override
  String get themeColor => '主题色';

  @override
  String get finance => '财务';

  @override
  String get monthlyBudgetNav => '月度预算';

  @override
  String get budgetSubtitle => '追踪您的月度支出';

  @override
  String get data => '数据';

  @override
  String get backupNav => '备份';

  @override
  String get backupSubtitle => '导出或导入您的数据';

  @override
  String get about => '关于';

  @override
  String get version => '版本';

  @override
  String get privacy => '隐私';

  @override
  String get termsOfUse => '使用条款';

  @override
  String get backupTitle => '备份';

  @override
  String get backupPremiumDescription => '备份和导出是高级功能';

  @override
  String get exportData => '导出数据';

  @override
  String get exportDataSubtitle => '将所有清单保存为 JSON';

  @override
  String get importData => '导入数据';

  @override
  String get importDataSubtitle => '从 JSON 恢复清单';

  @override
  String get importJsonTitle => '导入 JSON';

  @override
  String get importJsonHint => '在此粘贴备份 JSON...';

  @override
  String get backupExported => '备份已导出！';

  @override
  String get budgetAppBar => '月度预算';

  @override
  String get budgetPremiumLocked => '全局月度预算为高级功能';

  @override
  String get budgetUpgradePrompt => '升级以解锁';

  @override
  String get noBudgetDefined => '未设置预算';

  @override
  String totalEstimated(String amount) {
    return '预估总计：$amount';
  }

  @override
  String get setBudgetButton => '设置预算';

  @override
  String get budgetLists => '清单';

  @override
  String get budgetValueLabel => '金额';

  @override
  String get setBudgetTitle => '月度预算';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => '全部';

  @override
  String get filterPending => '待办';

  @override
  String get filterPurchased => '已购';

  @override
  String get sortName => '名称';

  @override
  String get sortCategory => '类别';

  @override
  String get sortDate => '日期';

  @override
  String get sortManual => '手动';

  @override
  String get addItem => '添加项目';

  @override
  String get itemName => '项目名称';

  @override
  String get quantityShort => '数量';

  @override
  String get unit => '单位';

  @override
  String get category => '类别';

  @override
  String get estimatedPrice => '预估价格';

  @override
  String get addItemPrice => '预估价格';

  @override
  String get editItem => '编辑项目';

  @override
  String get quantityFull => '数量';

  @override
  String get editItemPrice => '预估价格';

  @override
  String get addToPantry => '添加到储藏室';

  @override
  String addToPantryPrompt(String name) {
    return '将\"$name\"添加到您的储藏室？';
  }

  @override
  String get yes => '是';

  @override
  String get productName => '产品名称';

  @override
  String get idealQty => '理想数量';

  @override
  String get currentQty => '当前数量';

  @override
  String get trackStock => '追踪库存';

  @override
  String get trackStockActive => '出现在购物建议中';

  @override
  String get trackStockInactive => '不生成购物建议';

  @override
  String get createListDialog => '创建清单';

  @override
  String get renameListDialog => '重命名清单';

  @override
  String get listHistory => '清单历史';

  @override
  String get myLists => '我的清单';

  @override
  String get viewActive => '查看活跃';

  @override
  String get viewHistory => '查看历史';

  @override
  String get noArchivedLists => '没有归档的清单';

  @override
  String get noActiveLists => '没有活跃的清单';

  @override
  String completedOn(String date) {
    return '完成于 $date';
  }

  @override
  String get sharedLabel => '已分享';

  @override
  String get restore => '恢复';

  @override
  String get removeSharedTooltip => '移除';

  @override
  String get deleteListTitle => '删除清单';

  @override
  String deleteListContent(String name) {
    return '确定要删除\"$name\"吗？所有项目将被移除。';
  }

  @override
  String get removeSharedListTitle => '移除共享清单';

  @override
  String removeSharedListContent(String name) {
    return '从您的清单中移除\"$name\"？原始清单不受影响。';
  }

  @override
  String get createNewList => '创建新清单';

  @override
  String get aiAssistant => 'AI 助手';

  @override
  String get aiAssistantDescription => '通过我们的 AI 助手获取智能建议、食谱和个性化提示。';

  @override
  String get generalAssistant => '通用助手';

  @override
  String get clearHistory => '清除历史';

  @override
  String get clearHistoryConfirm => '清除此会话中的所有消息？';

  @override
  String get chatHint => '输入您的消息...';

  @override
  String chatError(String error) {
    return '加载聊天时出错：$error';
  }

  @override
  String get listHelp => '如何帮助您处理清单？';

  @override
  String get generalHelp => '今天如何帮助您购物？';

  @override
  String get chatSubtitle => '请求项目建议、食谱或省钱技巧。';

  @override
  String get aiError => '抱歉，处理您的请求时出错。请检查您的连接或稍后重试。';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => '登录以解锁\n高级功能';

  @override
  String get signInGoogle => '使用 Google 登录';

  @override
  String get signInApple => '使用 Apple 登录';

  @override
  String get continueAsGuest => '以访客身份继续';

  @override
  String loginError(String error) {
    return '登录错误：$error';
  }

  @override
  String get paywallTitle => 'Lista Plus 高级版';

  @override
  String get premiumUpgrade => '升级以解锁';

  @override
  String get itemRemoved => '项目已移除';

  @override
  String get undo => '撤销';

  @override
  String get emptyListTitle => '您的清单为空';

  @override
  String get emptyListSubtitle => '添加项目以开始';

  @override
  String get noListFoundTitle => '未找到清单';

  @override
  String get noListFoundSubtitle => '创建您的第一个清单以开始';

  @override
  String get createFirstList => '创建第一个清单';

  @override
  String get listBudgetTitle => '清单预算';

  @override
  String get budgetAmountLabel => '预算金额';

  @override
  String get removeBudget => '移除';

  @override
  String get prefUnlimitedLists => '无限清单';

  @override
  String get prefSharing => '共享清单';

  @override
  String get prefFullHistory => '完整历史';

  @override
  String get prefExportData => '导出数据';

  @override
  String get prefCustomThemes => '自定义主题';

  @override
  String get prefMonthlyBudget => '全局月度预算';

  @override
  String get prefAIAssistant => '个人 AI 助手';

  @override
  String get prefUnlimitedPantry => '无限储藏室';

  @override
  String get prefInteractiveArtifacts => '交互式 AI 作品';

  @override
  String get themeGreen => '绿色';

  @override
  String get themeBlue => '蓝色';

  @override
  String get themePurple => '紫色';

  @override
  String get themeRed => '红色';

  @override
  String get themeOrange => '橙色';

  @override
  String get themePink => '粉色';

  @override
  String get themeIndigo => '靛蓝';

  @override
  String get themeAmber => '琥珀色';

  @override
  String get themeTeal => '青色';

  @override
  String get themeBrown => '棕色';

  @override
  String get catFruits => '水果';

  @override
  String get catCleaning => '清洁';

  @override
  String get catBeverages => '饮料';

  @override
  String get catBakery => '烘焙';

  @override
  String get catOthers => '其他';

  @override
  String get unitPack => '包';

  @override
  String get shareSubject => '购物清单';

  @override
  String get monthlyBudgetTitle => '月度预算';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => '删除清单';

  @override
  String get pantryItemRemoved => '项目已移除';

  @override
  String deficitItems(int deficit) {
    return '有 $deficit 个项目需要购买';
  }

  @override
  String get cartTotal => '购物车总计';

  @override
  String get restockLabel => '补货';

  @override
  String get advancedFeatures => '高级功能';

  @override
  String get selectAll => '全选';

  @override
  String get deselectAll => '取消全选';

  @override
  String get monthlyBudgetAppBar => '月度预算';

  @override
  String get budgetEditTitle => '月度预算';

  @override
  String get budgetDashboardTitle => '仪表板';

  @override
  String get selectListForDashboard => '选择一个清单以查看仪表板。';

  @override
  String get spendingAnalysis => '支出分析';

  @override
  String get noItemsToAnalyze => '清单中没有可分析的项目。';

  @override
  String get markItemsToSeeAnalysis => '将项目标记为已购买以查看分析。';

  @override
  String get totalSpending => '总支出';

  @override
  String get spendingByCategory => '按类别支出';

  @override
  String get achievements => '成就';

  @override
  String get exportPdfExcel => '导出 PDF/Excel';

  @override
  String get exportPdf => '导出为 PDF';

  @override
  String get exportExcel => '导出为 Excel';

  @override
  String get organizingAi => '正在使用 AI 整理...';

  @override
  String get yesLabel => '是';

  @override
  String get noLabel => '否';

  @override
  String get shareListText => '我的购物清单';

  @override
  String get emptyListAddItems => '您的清单为空！请先添加项目。ℹ️';

  @override
  String get listOrganizedMagic => '清单已神奇地按类别整理！✨';

  @override
  String get shoppingMode => '购物模式';

  @override
  String get smartOrganization => '智能整理';

  @override
  String get savings => '节省';

  @override
  String get shoppingModeHeader => '购物模式';

  @override
  String get shareAsText => '以格式化文本发送项目';

  @override
  String get shareRealtime => '与他人实时同步';

  @override
  String get quickRecipe => '快速食谱';

  @override
  String get quickRecipePrompt => '使用我清单中的项目推荐食谱。';

  @override
  String get economyTips => '省钱技巧';

  @override
  String get economyTipsPrompt => '如何在此次购买中省钱？';

  @override
  String get organizeAisles => '按通道整理';

  @override
  String get organizeAislesPrompt => '按超市通道整理。';

  @override
  String get recipeSuggestion => '食谱推荐';

  @override
  String aiCreditsRemaining(int remaining) {
    return '剩余 $remaining 个积分';
  }

  @override
  String get addAllToList => '全部添加到清单';

  @override
  String get organizeByAisles => '按通道整理';

  @override
  String get voiceTranscriptionTooltip => '语音输入（免费）';

  @override
  String get aiVoiceCommandTooltip => 'AI 语音命令（高级版）';

  @override
  String get voiceCommandTitle => 'AI 语音命令';

  @override
  String get voiceCommandContent =>
      '自然说话以管理您的清单！\n\n示例：\n• \'添加面包、奶酪和火腿\'\n• \'移除洗衣液\'\n• \'将主题更改为蓝色\'\n\n这是 Lista Plus Premium 的专属功能。';

  @override
  String get voiceCommandPlanBtn => '查看方案';

  @override
  String get itemsAddedSuccess => '项目已成功添加到清单！';

  @override
  String get viewList => '查看清单';

  @override
  String get feedbackTitle => '发送反馈';

  @override
  String get feedbackPrompt => '你想分享什么？';

  @override
  String get feedbackTypeBug => '报告错误';

  @override
  String get feedbackTypeBugHint => '某些功能无法正常使用';

  @override
  String get feedbackTypeSuggestion => '建议';

  @override
  String get feedbackTypeSuggestionHint => '改进应用的想法';

  @override
  String get feedbackTypeTranslation => '翻译问题';

  @override
  String get feedbackTypeTranslationHint => '翻译不正确或不自然';

  @override
  String get feedbackTypeFeature => '功能请求';

  @override
  String get feedbackTypeFeatureHint => '你希望看到的功能';

  @override
  String get feedbackTypeOther => '其他';

  @override
  String get feedbackTypeOtherHint => '其他类型的反馈';

  @override
  String get feedbackHint => '详细描述你的反馈...';

  @override
  String get feedbackSend => '发送反馈';

  @override
  String get feedbackSending => '发送中...';

  @override
  String get feedbackThankYou => '谢谢！';

  @override
  String get feedbackThankYouMessage => '你的反馈已收到，帮助我们为所有人改进 Lista Plus。';

  @override
  String get feedbackBack => '返回';

  @override
  String feedbackError(String error) {
    return '发送错误：$error';
  }

  @override
  String get feedbackRetry => '重试';

  @override
  String get feedbackSettingsTitle => '发送反馈';

  @override
  String get feedbackSettingsSubtitle => '报告错误、提出改进建议或修正翻译';

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
  String get openMenu => 'Open menu';

  @override
  String get viewRecipe => 'View Recipe';

  @override
  String get recipeCreated => 'Recipe created!';

  @override
  String get editRecipe => 'Edit';

  @override
  String get deleteRecipe => 'Delete';

  @override
  String get deleteRecipeConfirm => 'Delete this recipe?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Are you sure you want to delete \"$recipeName\"? This action cannot be undone.';
  }

  @override
  String get ingredients => 'Ingredients';

  @override
  String get instructions => 'Instructions';

  @override
  String get prepTime => 'Prep time';

  @override
  String get recipeSaved => 'Recipe saved!';

  @override
  String get noRecipesSaved => 'No recipes saved';

  @override
  String get noRecipesSavedHint =>
      'Create your first custom recipe by tapping the button below.';

  @override
  String get myRecipes => 'My Recipes';

  @override
  String get newRecipe => 'New Recipe';

  @override
  String get loadingRecipes => 'Loading your recipes...';

  @override
  String get errorLoadingRecipes => 'Error loading recipes';

  @override
  String get addIngredient => 'Add ingredient';

  @override
  String get saveRecipe => 'Save';

  @override
  String get recipeName => 'Recipe name';

  @override
  String get shortDescription => 'Short description';

  @override
  String get prepTimeMinutes => 'Prep time (minutes)';

  @override
  String get instructionsHint => 'Type one step per line...';

  @override
  String get addPhoto => 'Add photo';

  @override
  String get imageUrlPlaceholder => 'Or paste an image URL';

  @override
  String get tags => 'Tags';

  @override
  String get recipeTags => 'Recipe tags';

  @override
  String get suggestedTags => 'Suggested';

  @override
  String get searchRecipes => 'Search recipes...';

  @override
  String get filterByTag => 'Filter by tag';

  @override
  String get allTags => 'All';

  @override
  String get recipeDeleted => 'Recipe deleted';

  @override
  String get saveChanges => 'Save changes';

  @override
  String get editRecipeTitle => 'Edit Recipe';

  @override
  String get newRecipeTitle => 'New Recipe';

  @override
  String get requiredField => 'Required';

  @override
  String get chooseImageSource => 'Choose image source';

  @override
  String get gallery => 'Gallery';

  @override
  String get enterUrl => 'Enter URL';

  @override
  String get recipeImage => 'Recipe image';

  @override
  String get removeImage => 'Remove image';
}

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get appTitle => '购物清单';

  @override
  String get lists => '清单';

  @override
  String get pantry => '储藏室';

  @override
  String get cancel => '取消';

  @override
  String get save => '保存';

  @override
  String get create => '创建';

  @override
  String get add => '添加';

  @override
  String get remove => '移除';

  @override
  String get delete => '删除';

  @override
  String get edit => '编辑';

  @override
  String get copy => '复制';

  @override
  String get retry => '重试';

  @override
  String get regenerate => '重新生成';

  @override
  String get copiedToClipboard => '已复制到剪贴板';

  @override
  String get confirm => '确认';

  @override
  String get close => '关闭';

  @override
  String get import => '导入';

  @override
  String get rename => '重命名';

  @override
  String get upgrade => '升级';

  @override
  String get clear => '清除';

  @override
  String error(String message) {
    return '错误：$message';
  }

  @override
  String errorGeneric(String message) {
    return '错误：$message';
  }

  @override
  String get purchaseError => '处理购买时出错。请重试。';

  @override
  String get restoreError => '恢复购买时出错。请重试。';

  @override
  String get loading => '加载中...';

  @override
  String get fieldRequired => '必填字段';

  @override
  String get addedFeedback => '已添加！';

  @override
  String selectedItems(int count) {
    return '已选 $count 项';
  }

  @override
  String get estimated => '预估';

  @override
  String get alreadyPurchased => '已购买';

  @override
  String get clearList => '清空清单';

  @override
  String get clearPurchased => '清空已购';

  @override
  String get share => '分享';

  @override
  String get shareViaCode => '通过代码分享';

  @override
  String get importViaCode => '通过代码导入';

  @override
  String get listAssistant => '清单助手';

  @override
  String get globalAssistant => '全局助手';

  @override
  String get becomePremium => '升级至高级版';

  @override
  String get manageSubscription => '管理订阅';

  @override
  String get completePurchase => '完成购买';

  @override
  String get confirmClearList => '移除所有项目？';

  @override
  String get shareListTitle => '分享清单';

  @override
  String get shareThisCode => '分享此代码：';

  @override
  String get validForLimitedTime => '限时有效';

  @override
  String get importListTitle => '导入清单';

  @override
  String get enterCodeHint => '输入代码';

  @override
  String get confirmArchiveTitle => '完成购买';

  @override
  String get confirmArchiveContent => '完成此购买并归档清单？';

  @override
  String get complete => '完成';

  @override
  String get listArchived => '清单归档成功！';

  @override
  String listAdded(String listName) {
    return '已添加 $listName！';
  }

  @override
  String get buy => '购买';

  @override
  String get unmark => '取消标记';

  @override
  String confirmDeleteItems(int count) {
    return '移除 $count 个项目？';
  }

  @override
  String get confirmDeleteTitle => '确认';

  @override
  String confirmContent(int count) {
    return '移除 $count 个项目？';
  }

  @override
  String get archiveList => '归档清单';

  @override
  String get pantryAppBar => '储藏室';

  @override
  String get generateShoppingList => '生成购物清单';

  @override
  String get pantryEmpty => '储藏室为空';

  @override
  String get pantryEmptySubtitle => '添加您想在家中存放的商品';

  @override
  String itemsNeedPurchase(int deficit) {
    return '有 $deficit 个项目需要购买';
  }

  @override
  String get noItemsToBuy => '没有需要购买的项目';

  @override
  String get newPantryList => '储藏室购物';

  @override
  String get newListTitle => '新购物清单';

  @override
  String itemsWillBeAdded(int count) {
    return '将添加 $count 个项目';
  }

  @override
  String get listNameLabel => '清单名称';

  @override
  String listCreated(String name, int count) {
    return '清单\"$name\"已创建，共 $count 个项目';
  }

  @override
  String get noTracking => '不追踪';

  @override
  String get markAsPurchased => '标记为已购买';

  @override
  String editPantryItem(String name) {
    return '编辑 $name';
  }

  @override
  String get idealQuantity => '理想数量';

  @override
  String get currentQuantity => '当前数量';

  @override
  String get consumed => '已消耗';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name 已补货至 $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return '从储藏室中移除\"$name\"？';
  }

  @override
  String pantryEditTitle(String name) {
    return '编辑 $name';
  }

  @override
  String get settingsAppBar => '设置';

  @override
  String get language => '语言';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => '系统默认';

  @override
  String get appearance => '外观';

  @override
  String get light => '浅色';

  @override
  String get system => '系统';

  @override
  String get dark => '深色';

  @override
  String get themeColor => '主题色';

  @override
  String get finance => '财务';

  @override
  String get monthlyBudgetNav => '月度预算';

  @override
  String get budgetSubtitle => '追踪您的月度支出';

  @override
  String get data => '数据';

  @override
  String get backupNav => '备份';

  @override
  String get backupSubtitle => '导出或导入您的数据';

  @override
  String get about => '关于';

  @override
  String get version => '版本';

  @override
  String get privacy => '隐私';

  @override
  String get termsOfUse => '使用条款';

  @override
  String get backupTitle => '备份';

  @override
  String get backupPremiumDescription => '备份和导出是高级功能';

  @override
  String get exportData => '导出数据';

  @override
  String get exportDataSubtitle => '将所有清单保存为 JSON';

  @override
  String get importData => '导入数据';

  @override
  String get importDataSubtitle => '从 JSON 恢复清单';

  @override
  String get importJsonTitle => '导入 JSON';

  @override
  String get importJsonHint => '在此粘贴备份 JSON...';

  @override
  String get backupExported => '备份已导出！';

  @override
  String get budgetAppBar => '月度预算';

  @override
  String get budgetPremiumLocked => '全局月度预算为高级功能';

  @override
  String get budgetUpgradePrompt => '升级以解锁';

  @override
  String get noBudgetDefined => '未设置预算';

  @override
  String totalEstimated(String amount) {
    return '预估总计：$amount';
  }

  @override
  String get setBudgetButton => '设置预算';

  @override
  String get budgetLists => '清单';

  @override
  String get budgetValueLabel => '金额';

  @override
  String get setBudgetTitle => '月度预算';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => '全部';

  @override
  String get filterPending => '待办';

  @override
  String get filterPurchased => '已购';

  @override
  String get sortName => '名称';

  @override
  String get sortCategory => '类别';

  @override
  String get sortDate => '日期';

  @override
  String get sortManual => '手动';

  @override
  String get addItem => '添加项目';

  @override
  String get itemName => '项目名称';

  @override
  String get quantityShort => '数量';

  @override
  String get unit => '单位';

  @override
  String get category => '类别';

  @override
  String get estimatedPrice => '预估价格';

  @override
  String get addItemPrice => '预估价格';

  @override
  String get editItem => '编辑项目';

  @override
  String get quantityFull => '数量';

  @override
  String get editItemPrice => '预估价格';

  @override
  String get addToPantry => '添加到储藏室';

  @override
  String addToPantryPrompt(String name) {
    return '将\"$name\"添加到您的储藏室？';
  }

  @override
  String get yes => '是';

  @override
  String get productName => '产品名称';

  @override
  String get idealQty => '理想数量';

  @override
  String get currentQty => '当前数量';

  @override
  String get trackStock => '追踪库存';

  @override
  String get trackStockActive => '出现在购物建议中';

  @override
  String get trackStockInactive => '不生成购物建议';

  @override
  String get createListDialog => '创建清单';

  @override
  String get renameListDialog => '重命名清单';

  @override
  String get listHistory => '清单历史';

  @override
  String get myLists => '我的清单';

  @override
  String get viewActive => '查看活跃';

  @override
  String get viewHistory => '查看历史';

  @override
  String get noArchivedLists => '没有归档的清单';

  @override
  String get noActiveLists => '没有活跃的清单';

  @override
  String completedOn(String date) {
    return '完成于 $date';
  }

  @override
  String get sharedLabel => '已分享';

  @override
  String get restore => '恢复';

  @override
  String get removeSharedTooltip => '移除';

  @override
  String get deleteListTitle => '删除清单';

  @override
  String deleteListContent(String name) {
    return '确定要删除\"$name\"吗？所有项目将被移除。';
  }

  @override
  String get removeSharedListTitle => '移除共享清单';

  @override
  String removeSharedListContent(String name) {
    return '从您的清单中移除\"$name\"？原始清单不受影响。';
  }

  @override
  String get createNewList => '创建新清单';

  @override
  String get aiAssistant => 'AI 助手';

  @override
  String get aiAssistantDescription => '通过我们的 AI 助手获取智能建议、食谱和个性化提示。';

  @override
  String get generalAssistant => '通用助手';

  @override
  String get clearHistory => '清除历史';

  @override
  String get clearHistoryConfirm => '清除此会话中的所有消息？';

  @override
  String get chatHint => '输入您的消息...';

  @override
  String chatError(String error) {
    return '加载聊天时出错：$error';
  }

  @override
  String get listHelp => '如何帮助您处理清单？';

  @override
  String get generalHelp => '今天如何帮助您购物？';

  @override
  String get chatSubtitle => '请求项目建议、食谱或省钱技巧。';

  @override
  String get aiError => '抱歉，处理您的请求时出错。请检查您的连接或稍后重试。';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => '登录以解锁\n高级功能';

  @override
  String get signInGoogle => '使用 Google 登录';

  @override
  String get signInApple => '使用 Apple 登录';

  @override
  String get continueAsGuest => '以访客身份继续';

  @override
  String loginError(String error) {
    return '登录错误：$error';
  }

  @override
  String get paywallTitle => 'Lista Plus 高级版';

  @override
  String get premiumUpgrade => '升级以解锁';

  @override
  String get itemRemoved => '项目已移除';

  @override
  String get undo => '撤销';

  @override
  String get emptyListTitle => '您的清单为空';

  @override
  String get emptyListSubtitle => '添加项目以开始';

  @override
  String get noListFoundTitle => '未找到清单';

  @override
  String get noListFoundSubtitle => '创建您的第一个清单以开始';

  @override
  String get createFirstList => '创建第一个清单';

  @override
  String get listBudgetTitle => '清单预算';

  @override
  String get budgetAmountLabel => '预算金额';

  @override
  String get removeBudget => '移除';

  @override
  String get prefUnlimitedLists => '无限清单';

  @override
  String get prefSharing => '共享清单';

  @override
  String get prefFullHistory => '完整历史';

  @override
  String get prefExportData => '导出数据';

  @override
  String get prefCustomThemes => '自定义主题';

  @override
  String get prefMonthlyBudget => '全局月度预算';

  @override
  String get prefAIAssistant => '个人 AI 助手';

  @override
  String get prefUnlimitedPantry => '无限储藏室';

  @override
  String get prefInteractiveArtifacts => '交互式 AI 作品';

  @override
  String get themeGreen => '绿色';

  @override
  String get themeBlue => '蓝色';

  @override
  String get themePurple => '紫色';

  @override
  String get themeRed => '红色';

  @override
  String get themeOrange => '橙色';

  @override
  String get themePink => '粉色';

  @override
  String get themeIndigo => '靛蓝';

  @override
  String get themeAmber => '琥珀色';

  @override
  String get themeTeal => '青色';

  @override
  String get themeBrown => '棕色';

  @override
  String get catFruits => '水果';

  @override
  String get catCleaning => '清洁';

  @override
  String get catBeverages => '饮料';

  @override
  String get catBakery => '烘焙';

  @override
  String get catOthers => '其他';

  @override
  String get unitPack => '包';

  @override
  String get shareSubject => '购物清单';

  @override
  String get monthlyBudgetTitle => '月度预算';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => '删除清单';

  @override
  String get pantryItemRemoved => '项目已移除';

  @override
  String deficitItems(int deficit) {
    return '有 $deficit 个项目需要购买';
  }

  @override
  String get cartTotal => '购物车总计';

  @override
  String get restockLabel => '补货';

  @override
  String get advancedFeatures => '高级功能';

  @override
  String get selectAll => '全选';

  @override
  String get deselectAll => '取消全选';

  @override
  String get monthlyBudgetAppBar => '月度预算';

  @override
  String get budgetEditTitle => '月度预算';

  @override
  String get budgetDashboardTitle => '仪表板';

  @override
  String get selectListForDashboard => '选择一个清单以查看仪表板。';

  @override
  String get spendingAnalysis => '支出分析';

  @override
  String get noItemsToAnalyze => '清单中没有可分析的项目。';

  @override
  String get markItemsToSeeAnalysis => '将项目标记为已购买以查看分析。';

  @override
  String get totalSpending => '总支出';

  @override
  String get spendingByCategory => '按类别支出';

  @override
  String get achievements => '成就';

  @override
  String get exportPdfExcel => '导出 PDF/Excel';

  @override
  String get exportPdf => '导出为 PDF';

  @override
  String get exportExcel => '导出为 Excel';

  @override
  String get organizingAi => '正在使用 AI 整理...';

  @override
  String get yesLabel => '是';

  @override
  String get noLabel => '否';

  @override
  String get shareListText => '我的购物清单';

  @override
  String get emptyListAddItems => '您的清单为空！请先添加项目。ℹ️';

  @override
  String get listOrganizedMagic => '清单已神奇地按类别整理！✨';

  @override
  String get shoppingMode => '购物模式';

  @override
  String get smartOrganization => '智能整理';

  @override
  String get savings => '节省';

  @override
  String get shoppingModeHeader => '购物模式';

  @override
  String get shareAsText => '以格式化文本发送项目';

  @override
  String get shareRealtime => '与他人实时同步';

  @override
  String get quickRecipe => '快速食谱';

  @override
  String get quickRecipePrompt => '使用我清单中的项目推荐食谱。';

  @override
  String get economyTips => '省钱技巧';

  @override
  String get economyTipsPrompt => '如何在此次购买中省钱？';

  @override
  String get organizeAisles => '按通道整理';

  @override
  String get organizeAislesPrompt => '按超市通道整理。';

  @override
  String get recipeSuggestion => '食谱推荐';

  @override
  String aiCreditsRemaining(int remaining) {
    return '剩余 $remaining 个积分';
  }

  @override
  String get addAllToList => '全部添加到清单';

  @override
  String get organizeByAisles => '按通道整理';

  @override
  String get voiceTranscriptionTooltip => '语音输入（免费）';

  @override
  String get aiVoiceCommandTooltip => 'AI 语音命令（高级版）';

  @override
  String get voiceCommandTitle => 'AI 语音命令';

  @override
  String get voiceCommandContent =>
      '自然说话以管理您的清单！\n\n示例：\n• \'添加面包、奶酪和火腿\'\n• \'移除洗衣液\'\n• \'将主题更改为蓝色\'\n\n这是 Lista Plus Premium 的专属功能。';

  @override
  String get voiceCommandPlanBtn => '查看方案';

  @override
  String get itemsAddedSuccess => '项目已成功添加到清单！';

  @override
  String get viewList => '查看清单';

  @override
  String get feedbackTitle => '发送反馈';

  @override
  String get feedbackPrompt => '你想分享什么？';

  @override
  String get feedbackTypeBug => '报告错误';

  @override
  String get feedbackTypeBugHint => '某些功能无法正常使用';

  @override
  String get feedbackTypeSuggestion => '建议';

  @override
  String get feedbackTypeSuggestionHint => '改进应用的想法';

  @override
  String get feedbackTypeTranslation => '翻译问题';

  @override
  String get feedbackTypeTranslationHint => '翻译不正确或不自然';

  @override
  String get feedbackTypeFeature => '功能请求';

  @override
  String get feedbackTypeFeatureHint => '你希望看到的功能';

  @override
  String get feedbackTypeOther => '其他';

  @override
  String get feedbackTypeOtherHint => '其他类型的反馈';

  @override
  String get feedbackHint => '详细描述你的反馈...';

  @override
  String get feedbackSend => '发送反馈';

  @override
  String get feedbackSending => '发送中...';

  @override
  String get feedbackThankYou => '谢谢！';

  @override
  String get feedbackThankYouMessage => '你的反馈已收到，帮助我们为所有人改进 Lista Plus。';

  @override
  String get feedbackBack => '返回';

  @override
  String feedbackError(String error) {
    return '发送错误：$error';
  }

  @override
  String get feedbackRetry => '重试';

  @override
  String get feedbackSettingsTitle => '发送反馈';

  @override
  String get feedbackSettingsSubtitle => '报告错误、提出改进建议或修正翻译';

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
}

/// The translations for Chinese, as used in Hong Kong (`zh_HK`).
class AppLocalizationsZhHk extends AppLocalizationsZh {
  AppLocalizationsZhHk() : super('zh_HK');

  @override
  String get appTitle => '购物清单';

  @override
  String get lists => '清单';

  @override
  String get pantry => '储藏室';

  @override
  String get cancel => '取消';

  @override
  String get save => '保存';

  @override
  String get create => '创建';

  @override
  String get add => '添加';

  @override
  String get remove => '移除';

  @override
  String get delete => '删除';

  @override
  String get edit => '编辑';

  @override
  String get copy => '复制';

  @override
  String get retry => '重试';

  @override
  String get regenerate => '重新生成';

  @override
  String get copiedToClipboard => '已复制到剪贴板';

  @override
  String get confirm => '确认';

  @override
  String get close => '关闭';

  @override
  String get import => '导入';

  @override
  String get rename => '重命名';

  @override
  String get upgrade => '升级';

  @override
  String get clear => '清除';

  @override
  String error(String message) {
    return '错误：$message';
  }

  @override
  String errorGeneric(String message) {
    return '错误：$message';
  }

  @override
  String get purchaseError => '处理购买时出错。请重试。';

  @override
  String get restoreError => '恢复购买时出错。请重试。';

  @override
  String get loading => '加载中...';

  @override
  String get fieldRequired => '必填字段';

  @override
  String get addedFeedback => '已添加！';

  @override
  String selectedItems(int count) {
    return '已选 $count 项';
  }

  @override
  String get estimated => '预估';

  @override
  String get alreadyPurchased => '已购买';

  @override
  String get clearList => '清空清单';

  @override
  String get clearPurchased => '清空已购';

  @override
  String get share => '分享';

  @override
  String get shareViaCode => '通过代码分享';

  @override
  String get importViaCode => '通过代码导入';

  @override
  String get listAssistant => '清单助手';

  @override
  String get globalAssistant => '全局助手';

  @override
  String get becomePremium => '升级至高级版';

  @override
  String get manageSubscription => '管理订阅';

  @override
  String get completePurchase => '完成购买';

  @override
  String get confirmClearList => '移除所有项目？';

  @override
  String get shareListTitle => '分享清单';

  @override
  String get shareThisCode => '分享此代码：';

  @override
  String get validForLimitedTime => '限时有效';

  @override
  String get importListTitle => '导入清单';

  @override
  String get enterCodeHint => '输入代码';

  @override
  String get confirmArchiveTitle => '完成购买';

  @override
  String get confirmArchiveContent => '完成此购买并归档清单？';

  @override
  String get complete => '完成';

  @override
  String get listArchived => '清单归档成功！';

  @override
  String listAdded(String listName) {
    return '已添加 $listName！';
  }

  @override
  String get buy => '购买';

  @override
  String get unmark => '取消标记';

  @override
  String confirmDeleteItems(int count) {
    return '移除 $count 个项目？';
  }

  @override
  String get confirmDeleteTitle => '确认';

  @override
  String confirmContent(int count) {
    return '移除 $count 个项目？';
  }

  @override
  String get archiveList => '归档清单';

  @override
  String get pantryAppBar => '储藏室';

  @override
  String get generateShoppingList => '生成购物清单';

  @override
  String get pantryEmpty => '储藏室为空';

  @override
  String get pantryEmptySubtitle => '添加您想在家中存放的商品';

  @override
  String itemsNeedPurchase(int deficit) {
    return '有 $deficit 个项目需要购买';
  }

  @override
  String get noItemsToBuy => '没有需要购买的项目';

  @override
  String get newPantryList => '储藏室购物';

  @override
  String get newListTitle => '新购物清单';

  @override
  String itemsWillBeAdded(int count) {
    return '将添加 $count 个项目';
  }

  @override
  String get listNameLabel => '清单名称';

  @override
  String listCreated(String name, int count) {
    return '清单\"$name\"已创建，共 $count 个项目';
  }

  @override
  String get noTracking => '不追踪';

  @override
  String get markAsPurchased => '标记为已购买';

  @override
  String editPantryItem(String name) {
    return '编辑 $name';
  }

  @override
  String get idealQuantity => '理想数量';

  @override
  String get currentQuantity => '当前数量';

  @override
  String get consumed => '已消耗';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name 已补货至 $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return '从储藏室中移除\"$name\"？';
  }

  @override
  String pantryEditTitle(String name) {
    return '编辑 $name';
  }

  @override
  String get settingsAppBar => '设置';

  @override
  String get language => '语言';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => '系统默认';

  @override
  String get appearance => '外观';

  @override
  String get light => '浅色';

  @override
  String get system => '系统';

  @override
  String get dark => '深色';

  @override
  String get themeColor => '主题色';

  @override
  String get finance => '财务';

  @override
  String get monthlyBudgetNav => '月度预算';

  @override
  String get budgetSubtitle => '追踪您的月度支出';

  @override
  String get data => '数据';

  @override
  String get backupNav => '备份';

  @override
  String get backupSubtitle => '导出或导入您的数据';

  @override
  String get about => '关于';

  @override
  String get version => '版本';

  @override
  String get privacy => '隐私';

  @override
  String get termsOfUse => '使用条款';

  @override
  String get backupTitle => '备份';

  @override
  String get backupPremiumDescription => '备份和导出是高级功能';

  @override
  String get exportData => '导出数据';

  @override
  String get exportDataSubtitle => '将所有清单保存为 JSON';

  @override
  String get importData => '导入数据';

  @override
  String get importDataSubtitle => '从 JSON 恢复清单';

  @override
  String get importJsonTitle => '导入 JSON';

  @override
  String get importJsonHint => '在此粘贴备份 JSON...';

  @override
  String get backupExported => '备份已导出！';

  @override
  String get budgetAppBar => '月度预算';

  @override
  String get budgetPremiumLocked => '全局月度预算为高级功能';

  @override
  String get budgetUpgradePrompt => '升级以解锁';

  @override
  String get noBudgetDefined => '未设置预算';

  @override
  String totalEstimated(String amount) {
    return '预估总计：$amount';
  }

  @override
  String get setBudgetButton => '设置预算';

  @override
  String get budgetLists => '清单';

  @override
  String get budgetValueLabel => '金额';

  @override
  String get setBudgetTitle => '月度预算';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => '全部';

  @override
  String get filterPending => '待办';

  @override
  String get filterPurchased => '已购';

  @override
  String get sortName => '名称';

  @override
  String get sortCategory => '类别';

  @override
  String get sortDate => '日期';

  @override
  String get sortManual => '手动';

  @override
  String get addItem => '添加项目';

  @override
  String get itemName => '项目名称';

  @override
  String get quantityShort => '数量';

  @override
  String get unit => '单位';

  @override
  String get category => '类别';

  @override
  String get estimatedPrice => '预估价格';

  @override
  String get addItemPrice => '预估价格';

  @override
  String get editItem => '编辑项目';

  @override
  String get quantityFull => '数量';

  @override
  String get editItemPrice => '预估价格';

  @override
  String get addToPantry => '添加到储藏室';

  @override
  String addToPantryPrompt(String name) {
    return '将\"$name\"添加到您的储藏室？';
  }

  @override
  String get yes => '是';

  @override
  String get productName => '产品名称';

  @override
  String get idealQty => '理想数量';

  @override
  String get currentQty => '当前数量';

  @override
  String get trackStock => '追踪库存';

  @override
  String get trackStockActive => '出现在购物建议中';

  @override
  String get trackStockInactive => '不生成购物建议';

  @override
  String get createListDialog => '创建清单';

  @override
  String get renameListDialog => '重命名清单';

  @override
  String get listHistory => '清单历史';

  @override
  String get myLists => '我的清单';

  @override
  String get viewActive => '查看活跃';

  @override
  String get viewHistory => '查看历史';

  @override
  String get noArchivedLists => '没有归档的清单';

  @override
  String get noActiveLists => '没有活跃的清单';

  @override
  String completedOn(String date) {
    return '完成于 $date';
  }

  @override
  String get sharedLabel => '已分享';

  @override
  String get restore => '恢复';

  @override
  String get removeSharedTooltip => '移除';

  @override
  String get deleteListTitle => '删除清单';

  @override
  String deleteListContent(String name) {
    return '确定要删除\"$name\"吗？所有项目将被移除。';
  }

  @override
  String get removeSharedListTitle => '移除共享清单';

  @override
  String removeSharedListContent(String name) {
    return '从您的清单中移除\"$name\"？原始清单不受影响。';
  }

  @override
  String get createNewList => '创建新清单';

  @override
  String get aiAssistant => 'AI 助手';

  @override
  String get aiAssistantDescription => '通过我们的 AI 助手获取智能建议、食谱和个性化提示。';

  @override
  String get generalAssistant => '通用助手';

  @override
  String get clearHistory => '清除历史';

  @override
  String get clearHistoryConfirm => '清除此会话中的所有消息？';

  @override
  String get chatHint => '输入您的消息...';

  @override
  String chatError(String error) {
    return '加载聊天时出错：$error';
  }

  @override
  String get listHelp => '如何帮助您处理清单？';

  @override
  String get generalHelp => '今天如何帮助您购物？';

  @override
  String get chatSubtitle => '请求项目建议、食谱或省钱技巧。';

  @override
  String get aiError => '抱歉，处理您的请求时出错。请检查您的连接或稍后重试。';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => '登录以解锁\n高级功能';

  @override
  String get signInGoogle => '使用 Google 登录';

  @override
  String get signInApple => '使用 Apple 登录';

  @override
  String get continueAsGuest => '以访客身份继续';

  @override
  String loginError(String error) {
    return '登录错误：$error';
  }

  @override
  String get paywallTitle => 'Lista Plus 高级版';

  @override
  String get premiumUpgrade => '升级以解锁';

  @override
  String get itemRemoved => '项目已移除';

  @override
  String get undo => '撤销';

  @override
  String get emptyListTitle => '您的清单为空';

  @override
  String get emptyListSubtitle => '添加项目以开始';

  @override
  String get noListFoundTitle => '未找到清单';

  @override
  String get noListFoundSubtitle => '创建您的第一个清单以开始';

  @override
  String get createFirstList => '创建第一个清单';

  @override
  String get listBudgetTitle => '清单预算';

  @override
  String get budgetAmountLabel => '预算金额';

  @override
  String get removeBudget => '移除';

  @override
  String get prefUnlimitedLists => '无限清单';

  @override
  String get prefSharing => '共享清单';

  @override
  String get prefFullHistory => '完整历史';

  @override
  String get prefExportData => '导出数据';

  @override
  String get prefCustomThemes => '自定义主题';

  @override
  String get prefMonthlyBudget => '全局月度预算';

  @override
  String get prefAIAssistant => '个人 AI 助手';

  @override
  String get prefUnlimitedPantry => '无限储藏室';

  @override
  String get prefInteractiveArtifacts => '交互式 AI 作品';

  @override
  String get themeGreen => '绿色';

  @override
  String get themeBlue => '蓝色';

  @override
  String get themePurple => '紫色';

  @override
  String get themeRed => '红色';

  @override
  String get themeOrange => '橙色';

  @override
  String get themePink => '粉色';

  @override
  String get themeIndigo => '靛蓝';

  @override
  String get themeAmber => '琥珀色';

  @override
  String get themeTeal => '青色';

  @override
  String get themeBrown => '棕色';

  @override
  String get catFruits => '水果';

  @override
  String get catCleaning => '清洁';

  @override
  String get catBeverages => '饮料';

  @override
  String get catBakery => '烘焙';

  @override
  String get catOthers => '其他';

  @override
  String get unitPack => '包';

  @override
  String get shareSubject => '购物清单';

  @override
  String get monthlyBudgetTitle => '月度预算';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => '删除清单';

  @override
  String get pantryItemRemoved => '项目已移除';

  @override
  String deficitItems(int deficit) {
    return '有 $deficit 个项目需要购买';
  }

  @override
  String get cartTotal => '购物车总计';

  @override
  String get restockLabel => '补货';

  @override
  String get advancedFeatures => '高级功能';

  @override
  String get selectAll => '全选';

  @override
  String get deselectAll => '取消全选';

  @override
  String get monthlyBudgetAppBar => '月度预算';

  @override
  String get budgetEditTitle => '月度预算';

  @override
  String get budgetDashboardTitle => '仪表板';

  @override
  String get selectListForDashboard => '选择一个清单以查看仪表板。';

  @override
  String get spendingAnalysis => '支出分析';

  @override
  String get noItemsToAnalyze => '清单中没有可分析的项目。';

  @override
  String get markItemsToSeeAnalysis => '将项目标记为已购买以查看分析。';

  @override
  String get totalSpending => '总支出';

  @override
  String get spendingByCategory => '按类别支出';

  @override
  String get achievements => '成就';

  @override
  String get exportPdfExcel => '导出 PDF/Excel';

  @override
  String get exportPdf => '导出为 PDF';

  @override
  String get exportExcel => '导出为 Excel';

  @override
  String get organizingAi => '正在使用 AI 整理...';

  @override
  String get yesLabel => '是';

  @override
  String get noLabel => '否';

  @override
  String get shareListText => '我的购物清单';

  @override
  String get emptyListAddItems => '您的清单为空！请先添加项目。ℹ️';

  @override
  String get listOrganizedMagic => '清单已神奇地按类别整理！✨';

  @override
  String get shoppingMode => '购物模式';

  @override
  String get smartOrganization => '智能整理';

  @override
  String get savings => '节省';

  @override
  String get shoppingModeHeader => '购物模式';

  @override
  String get shareAsText => '以格式化文本发送项目';

  @override
  String get shareRealtime => '与他人实时同步';

  @override
  String get quickRecipe => '快速食谱';

  @override
  String get quickRecipePrompt => '使用我清单中的项目推荐食谱。';

  @override
  String get economyTips => '省钱技巧';

  @override
  String get economyTipsPrompt => '如何在此次购买中省钱？';

  @override
  String get organizeAisles => '按通道整理';

  @override
  String get organizeAislesPrompt => '按超市通道整理。';

  @override
  String get recipeSuggestion => '食谱推荐';

  @override
  String aiCreditsRemaining(int remaining) {
    return '剩余 $remaining 个积分';
  }

  @override
  String get addAllToList => '全部添加到清单';

  @override
  String get organizeByAisles => '按通道整理';

  @override
  String get voiceTranscriptionTooltip => '语音输入（免费）';

  @override
  String get aiVoiceCommandTooltip => 'AI 语音命令（高级版）';

  @override
  String get voiceCommandTitle => 'AI 语音命令';

  @override
  String get voiceCommandContent =>
      '自然说话以管理您的清单！\n\n示例：\n• \'添加面包、奶酪和火腿\'\n• \'移除洗衣液\'\n• \'将主题更改为蓝色\'\n\n这是 Lista Plus Premium 的专属功能。';

  @override
  String get voiceCommandPlanBtn => '查看方案';

  @override
  String get itemsAddedSuccess => '项目已成功添加到清单！';

  @override
  String get viewList => '查看清单';

  @override
  String get feedbackTitle => '發送意見';

  @override
  String get feedbackPrompt => '您想分享甚麼？';

  @override
  String get feedbackTypeBug => '報告錯誤';

  @override
  String get feedbackTypeBugHint => '某些功能無法正常運作';

  @override
  String get feedbackTypeSuggestion => '建議';

  @override
  String get feedbackTypeSuggestionHint => '改善應用程式的想法';

  @override
  String get feedbackTypeTranslation => '翻譯問題';

  @override
  String get feedbackTypeTranslationHint => '不正確或生硬的翻譯';

  @override
  String get feedbackTypeFeature => '功能請求';

  @override
  String get feedbackTypeFeatureHint => '您希望看到的功能';

  @override
  String get feedbackTypeOther => '其他';

  @override
  String get feedbackTypeOtherHint => '其他類型的意見';

  @override
  String get feedbackHint => '詳細描述您的意見...';

  @override
  String get feedbackSend => '發送意見';

  @override
  String get feedbackSending => '發送中...';

  @override
  String get feedbackThankYou => '謝謝！';

  @override
  String get feedbackThankYouMessage => '您的意見已收到，幫助我們為所有人改進 Lista Plus。';

  @override
  String get feedbackBack => '返回';

  @override
  String feedbackError(String error) {
    return '發送錯誤：$error';
  }

  @override
  String get feedbackRetry => '重試';

  @override
  String get feedbackSettingsTitle => '發送意見';

  @override
  String get feedbackSettingsSubtitle => '報告錯誤、提出改善建議或修正翻譯';

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
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appTitle => '购物清单';

  @override
  String get lists => '清单';

  @override
  String get pantry => '储藏室';

  @override
  String get cancel => '取消';

  @override
  String get save => '保存';

  @override
  String get create => '创建';

  @override
  String get add => '添加';

  @override
  String get remove => '移除';

  @override
  String get delete => '删除';

  @override
  String get edit => '编辑';

  @override
  String get copy => '复制';

  @override
  String get retry => '重试';

  @override
  String get regenerate => '重新生成';

  @override
  String get copiedToClipboard => '已复制到剪贴板';

  @override
  String get confirm => '确认';

  @override
  String get close => '关闭';

  @override
  String get import => '导入';

  @override
  String get rename => '重命名';

  @override
  String get upgrade => '升级';

  @override
  String get clear => '清除';

  @override
  String error(String message) {
    return '错误：$message';
  }

  @override
  String errorGeneric(String message) {
    return '错误：$message';
  }

  @override
  String get purchaseError => '处理购买时出错。请重试。';

  @override
  String get restoreError => '恢复购买时出错。请重试。';

  @override
  String get loading => '加载中...';

  @override
  String get fieldRequired => '必填字段';

  @override
  String get addedFeedback => '已添加！';

  @override
  String selectedItems(int count) {
    return '已选 $count 项';
  }

  @override
  String get estimated => '预估';

  @override
  String get alreadyPurchased => '已购买';

  @override
  String get clearList => '清空清单';

  @override
  String get clearPurchased => '清空已购';

  @override
  String get share => '分享';

  @override
  String get shareViaCode => '通过代码分享';

  @override
  String get importViaCode => '通过代码导入';

  @override
  String get listAssistant => '清单助手';

  @override
  String get globalAssistant => '全局助手';

  @override
  String get becomePremium => '升级至高级版';

  @override
  String get manageSubscription => '管理订阅';

  @override
  String get completePurchase => '完成购买';

  @override
  String get confirmClearList => '移除所有项目？';

  @override
  String get shareListTitle => '分享清单';

  @override
  String get shareThisCode => '分享此代码：';

  @override
  String get validForLimitedTime => '限时有效';

  @override
  String get importListTitle => '导入清单';

  @override
  String get enterCodeHint => '输入代码';

  @override
  String get confirmArchiveTitle => '完成购买';

  @override
  String get confirmArchiveContent => '完成此购买并归档清单？';

  @override
  String get complete => '完成';

  @override
  String get listArchived => '清单归档成功！';

  @override
  String listAdded(String listName) {
    return '已添加 $listName！';
  }

  @override
  String get buy => '购买';

  @override
  String get unmark => '取消标记';

  @override
  String confirmDeleteItems(int count) {
    return '移除 $count 个项目？';
  }

  @override
  String get confirmDeleteTitle => '确认';

  @override
  String confirmContent(int count) {
    return '移除 $count 个项目？';
  }

  @override
  String get archiveList => '归档清单';

  @override
  String get pantryAppBar => '储藏室';

  @override
  String get generateShoppingList => '生成购物清单';

  @override
  String get pantryEmpty => '储藏室为空';

  @override
  String get pantryEmptySubtitle => '添加您想在家中存放的商品';

  @override
  String itemsNeedPurchase(int deficit) {
    return '有 $deficit 个项目需要购买';
  }

  @override
  String get noItemsToBuy => '没有需要购买的项目';

  @override
  String get newPantryList => '储藏室购物';

  @override
  String get newListTitle => '新购物清单';

  @override
  String itemsWillBeAdded(int count) {
    return '将添加 $count 个项目';
  }

  @override
  String get listNameLabel => '清单名称';

  @override
  String listCreated(String name, int count) {
    return '清单\"$name\"已创建，共 $count 个项目';
  }

  @override
  String get noTracking => '不追踪';

  @override
  String get markAsPurchased => '标记为已购买';

  @override
  String editPantryItem(String name) {
    return '编辑 $name';
  }

  @override
  String get idealQuantity => '理想数量';

  @override
  String get currentQuantity => '当前数量';

  @override
  String get consumed => '已消耗';

  @override
  String restocked(String name, int quantity, String unit) {
    return '$name 已补货至 $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return '从储藏室中移除\"$name\"？';
  }

  @override
  String pantryEditTitle(String name) {
    return '编辑 $name';
  }

  @override
  String get settingsAppBar => '设置';

  @override
  String get language => '语言';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => '系统默认';

  @override
  String get appearance => '外观';

  @override
  String get light => '浅色';

  @override
  String get system => '系统';

  @override
  String get dark => '深色';

  @override
  String get themeColor => '主题色';

  @override
  String get finance => '财务';

  @override
  String get monthlyBudgetNav => '月度预算';

  @override
  String get budgetSubtitle => '追踪您的月度支出';

  @override
  String get data => '数据';

  @override
  String get backupNav => '备份';

  @override
  String get backupSubtitle => '导出或导入您的数据';

  @override
  String get about => '关于';

  @override
  String get version => '版本';

  @override
  String get privacy => '隐私';

  @override
  String get termsOfUse => '使用条款';

  @override
  String get backupTitle => '备份';

  @override
  String get backupPremiumDescription => '备份和导出是高级功能';

  @override
  String get exportData => '导出数据';

  @override
  String get exportDataSubtitle => '将所有清单保存为 JSON';

  @override
  String get importData => '导入数据';

  @override
  String get importDataSubtitle => '从 JSON 恢复清单';

  @override
  String get importJsonTitle => '导入 JSON';

  @override
  String get importJsonHint => '在此粘贴备份 JSON...';

  @override
  String get backupExported => '备份已导出！';

  @override
  String get budgetAppBar => '月度预算';

  @override
  String get budgetPremiumLocked => '全局月度预算为高级功能';

  @override
  String get budgetUpgradePrompt => '升级以解锁';

  @override
  String get noBudgetDefined => '未设置预算';

  @override
  String totalEstimated(String amount) {
    return '预估总计：$amount';
  }

  @override
  String get setBudgetButton => '设置预算';

  @override
  String get budgetLists => '清单';

  @override
  String get budgetValueLabel => '金额';

  @override
  String get setBudgetTitle => '月度预算';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => '全部';

  @override
  String get filterPending => '待办';

  @override
  String get filterPurchased => '已购';

  @override
  String get sortName => '名称';

  @override
  String get sortCategory => '类别';

  @override
  String get sortDate => '日期';

  @override
  String get sortManual => '手动';

  @override
  String get addItem => '添加项目';

  @override
  String get itemName => '项目名称';

  @override
  String get quantityShort => '数量';

  @override
  String get unit => '单位';

  @override
  String get category => '类别';

  @override
  String get estimatedPrice => '预估价格';

  @override
  String get addItemPrice => '预估价格';

  @override
  String get editItem => '编辑项目';

  @override
  String get quantityFull => '数量';

  @override
  String get editItemPrice => '预估价格';

  @override
  String get addToPantry => '添加到储藏室';

  @override
  String addToPantryPrompt(String name) {
    return '将\"$name\"添加到您的储藏室？';
  }

  @override
  String get yes => '是';

  @override
  String get productName => '产品名称';

  @override
  String get idealQty => '理想数量';

  @override
  String get currentQty => '当前数量';

  @override
  String get trackStock => '追踪库存';

  @override
  String get trackStockActive => '出现在购物建议中';

  @override
  String get trackStockInactive => '不生成购物建议';

  @override
  String get createListDialog => '创建清单';

  @override
  String get renameListDialog => '重命名清单';

  @override
  String get listHistory => '清单历史';

  @override
  String get myLists => '我的清单';

  @override
  String get viewActive => '查看活跃';

  @override
  String get viewHistory => '查看历史';

  @override
  String get noArchivedLists => '没有归档的清单';

  @override
  String get noActiveLists => '没有活跃的清单';

  @override
  String completedOn(String date) {
    return '完成于 $date';
  }

  @override
  String get sharedLabel => '已分享';

  @override
  String get restore => '恢复';

  @override
  String get removeSharedTooltip => '移除';

  @override
  String get deleteListTitle => '删除清单';

  @override
  String deleteListContent(String name) {
    return '确定要删除\"$name\"吗？所有项目将被移除。';
  }

  @override
  String get removeSharedListTitle => '移除共享清单';

  @override
  String removeSharedListContent(String name) {
    return '从您的清单中移除\"$name\"？原始清单不受影响。';
  }

  @override
  String get createNewList => '创建新清单';

  @override
  String get aiAssistant => 'AI 助手';

  @override
  String get aiAssistantDescription => '通过我们的 AI 助手获取智能建议、食谱和个性化提示。';

  @override
  String get generalAssistant => '通用助手';

  @override
  String get clearHistory => '清除历史';

  @override
  String get clearHistoryConfirm => '清除此会话中的所有消息？';

  @override
  String get chatHint => '输入您的消息...';

  @override
  String chatError(String error) {
    return '加载聊天时出错：$error';
  }

  @override
  String get listHelp => '如何帮助您处理清单？';

  @override
  String get generalHelp => '今天如何帮助您购物？';

  @override
  String get chatSubtitle => '请求项目建议、食谱或省钱技巧。';

  @override
  String get aiError => '抱歉，处理您的请求时出错。请检查您的连接或稍后重试。';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => '登录以解锁\n高级功能';

  @override
  String get signInGoogle => '使用 Google 登录';

  @override
  String get signInApple => '使用 Apple 登录';

  @override
  String get continueAsGuest => '以访客身份继续';

  @override
  String loginError(String error) {
    return '登录错误：$error';
  }

  @override
  String get paywallTitle => 'Lista Plus 高级版';

  @override
  String get premiumUpgrade => '升级以解锁';

  @override
  String get itemRemoved => '项目已移除';

  @override
  String get undo => '撤销';

  @override
  String get emptyListTitle => '您的清单为空';

  @override
  String get emptyListSubtitle => '添加项目以开始';

  @override
  String get noListFoundTitle => '未找到清单';

  @override
  String get noListFoundSubtitle => '创建您的第一个清单以开始';

  @override
  String get createFirstList => '创建第一个清单';

  @override
  String get listBudgetTitle => '清单预算';

  @override
  String get budgetAmountLabel => '预算金额';

  @override
  String get removeBudget => '移除';

  @override
  String get prefUnlimitedLists => '无限清单';

  @override
  String get prefSharing => '共享清单';

  @override
  String get prefFullHistory => '完整历史';

  @override
  String get prefExportData => '导出数据';

  @override
  String get prefCustomThemes => '自定义主题';

  @override
  String get prefMonthlyBudget => '全局月度预算';

  @override
  String get prefAIAssistant => '个人 AI 助手';

  @override
  String get prefUnlimitedPantry => '无限储藏室';

  @override
  String get prefInteractiveArtifacts => '交互式 AI 作品';

  @override
  String get themeGreen => '绿色';

  @override
  String get themeBlue => '蓝色';

  @override
  String get themePurple => '紫色';

  @override
  String get themeRed => '红色';

  @override
  String get themeOrange => '橙色';

  @override
  String get themePink => '粉色';

  @override
  String get themeIndigo => '靛蓝';

  @override
  String get themeAmber => '琥珀色';

  @override
  String get themeTeal => '青色';

  @override
  String get themeBrown => '棕色';

  @override
  String get catFruits => '水果';

  @override
  String get catCleaning => '清洁';

  @override
  String get catBeverages => '饮料';

  @override
  String get catBakery => '烘焙';

  @override
  String get catOthers => '其他';

  @override
  String get unitPack => '包';

  @override
  String get shareSubject => '购物清单';

  @override
  String get monthlyBudgetTitle => '月度预算';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => '删除清单';

  @override
  String get pantryItemRemoved => '项目已移除';

  @override
  String deficitItems(int deficit) {
    return '有 $deficit 个项目需要购买';
  }

  @override
  String get cartTotal => '购物车总计';

  @override
  String get restockLabel => '补货';

  @override
  String get advancedFeatures => '高级功能';

  @override
  String get selectAll => '全选';

  @override
  String get deselectAll => '取消全选';

  @override
  String get monthlyBudgetAppBar => '月度预算';

  @override
  String get budgetEditTitle => '月度预算';

  @override
  String get budgetDashboardTitle => '仪表板';

  @override
  String get selectListForDashboard => '选择一个清单以查看仪表板。';

  @override
  String get spendingAnalysis => '支出分析';

  @override
  String get noItemsToAnalyze => '清单中没有可分析的项目。';

  @override
  String get markItemsToSeeAnalysis => '将项目标记为已购买以查看分析。';

  @override
  String get totalSpending => '总支出';

  @override
  String get spendingByCategory => '按类别支出';

  @override
  String get achievements => '成就';

  @override
  String get exportPdfExcel => '导出 PDF/Excel';

  @override
  String get exportPdf => '导出为 PDF';

  @override
  String get exportExcel => '导出为 Excel';

  @override
  String get organizingAi => '正在使用 AI 整理...';

  @override
  String get yesLabel => '是';

  @override
  String get noLabel => '否';

  @override
  String get shareListText => '我的购物清单';

  @override
  String get emptyListAddItems => '您的清单为空！请先添加项目。ℹ️';

  @override
  String get listOrganizedMagic => '清单已神奇地按类别整理！✨';

  @override
  String get shoppingMode => '购物模式';

  @override
  String get smartOrganization => '智能整理';

  @override
  String get savings => '节省';

  @override
  String get shoppingModeHeader => '购物模式';

  @override
  String get shareAsText => '以格式化文本发送项目';

  @override
  String get shareRealtime => '与他人实时同步';

  @override
  String get quickRecipe => '快速食谱';

  @override
  String get quickRecipePrompt => '使用我清单中的项目推荐食谱。';

  @override
  String get economyTips => '省钱技巧';

  @override
  String get economyTipsPrompt => '如何在此次购买中省钱？';

  @override
  String get organizeAisles => '按通道整理';

  @override
  String get organizeAislesPrompt => '按超市通道整理。';

  @override
  String get recipeSuggestion => '食谱推荐';

  @override
  String aiCreditsRemaining(int remaining) {
    return '剩余 $remaining 个积分';
  }

  @override
  String get addAllToList => '全部添加到清单';

  @override
  String get organizeByAisles => '按通道整理';

  @override
  String get voiceTranscriptionTooltip => '语音输入（免费）';

  @override
  String get aiVoiceCommandTooltip => 'AI 语音命令（高级版）';

  @override
  String get voiceCommandTitle => 'AI 语音命令';

  @override
  String get voiceCommandContent =>
      '自然说话以管理您的清单！\n\n示例：\n• \'添加面包、奶酪和火腿\'\n• \'移除洗衣液\'\n• \'将主题更改为蓝色\'\n\n这是 Lista Plus Premium 的专属功能。';

  @override
  String get voiceCommandPlanBtn => '查看方案';

  @override
  String get itemsAddedSuccess => '项目已成功添加到清单！';

  @override
  String get viewList => '查看清单';

  @override
  String get feedbackTitle => '发送反馈';

  @override
  String get feedbackPrompt => '您想分享什么？';

  @override
  String get feedbackTypeBug => '报告错误';

  @override
  String get feedbackTypeBugHint => '某些功能无法正常使用';

  @override
  String get feedbackTypeSuggestion => '建议';

  @override
  String get feedbackTypeSuggestionHint => '改进应用的创意';

  @override
  String get feedbackTypeTranslation => '翻译问题';

  @override
  String get feedbackTypeTranslationHint => '不正确或生硬的翻译';

  @override
  String get feedbackTypeFeature => '功能请求';

  @override
  String get feedbackTypeFeatureHint => '您希望看到的功能';

  @override
  String get feedbackTypeOther => '其他';

  @override
  String get feedbackTypeOtherHint => '其他类型的反馈';

  @override
  String get feedbackHint => '详细描述您的反馈...';

  @override
  String get feedbackSend => '发送反馈';

  @override
  String get feedbackSending => '发送中...';

  @override
  String get feedbackThankYou => '谢谢！';

  @override
  String get feedbackThankYouMessage => '您的反馈已收到，这有助于我们为所有人改进 Lista Plus。';

  @override
  String get feedbackBack => '返回';

  @override
  String feedbackError(String error) {
    return '发送错误：$error';
  }

  @override
  String get feedbackRetry => '重试';

  @override
  String get feedbackSettingsTitle => '发送反馈';

  @override
  String get feedbackSettingsSubtitle => '报告错误、提出改进建议或修正翻译';

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
}
