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
  String get next => '下一个';

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
  String get languagePortuguese => '葡萄牙语（巴西）';

  @override
  String get languageEnglish => '英语';

  @override
  String get languageSystem => '系统默认';

  @override
  String get chooseLanguage => '选择语言';

  @override
  String get searchLanguage => '搜索语言...';

  @override
  String get currency => '货币';

  @override
  String get chooseCurrency => '选择货币';

  @override
  String get searchCurrency => '搜索货币...';

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
  String get dynamicColors => '动态色彩';

  @override
  String get dynamicColorsSubtitle => '使用基于您的壁纸的颜色';

  @override
  String get dynamicColorsEnabledWarning => '禁用动态颜色以使主题颜色生效';

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
  String get newChat => '新聊天';

  @override
  String get noHistory => '没有聊天记录';

  @override
  String get deleteSession => '删除聊天记录';

  @override
  String get deleteSessionConfirm => '您确定要删除此聊天记录吗？这些消息将永久丢失。';

  @override
  String get clearHistory => '清除历史';

  @override
  String get clearHistoryConfirm => '清除此会话中的所有消息？';

  @override
  String get chatHint => '输入您的消息...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

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
  String get aiLimitAlmostReached => 'Almost out of AI messages';

  @override
  String get unlockAi => 'Unlock unlimited AI';

  @override
  String get aiTeaserFallback =>
      'Subscribe to Premium to unlock the full response and get unlimited AI tips for your shopping...';

  @override
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => '登录以解锁\n高级功能';

  @override
  String get signInGoogle => '使用 Google 登录';

  @override
  String get signInApple => '使用 Apple 登录';

  @override
  String get continueAsGuest => '以访客身份继续';

  @override
  String get onboardingWelcomeTitle => '欢迎来到KipiList';

  @override
  String get onboardingWelcomeDesc => '组织购物并省钱的最明智方式。';

  @override
  String get onboardingSetupTitle => '个性化您的体验';

  @override
  String get onboardingSetupDesc => '选择您希望 KipiList 的外观和工作方式。';

  @override
  String get onboardingLoginTitle => '将所有内容保存到云端';

  @override
  String get onboardingLoginDesc => '您的数据已在所有设备上同步';

  @override
  String get onboardingShareTitle => '与你爱的人分享';

  @override
  String get onboardingShareDesc => '与家人和朋友实时同步列表';

  @override
  String get onboardingPremiumTitle => '解锁所有功能';

  @override
  String get onboardingPremiumSubtitle => '充分利用您的购物清单';

  @override
  String get onboardingAnnualBadge => '最超值';

  @override
  String get onboardingMonthlyLabel => '每月';

  @override
  String get onboardingAnnualLabel => '年度的';

  @override
  String get onboardingViewAllPlans => '查看所有计划';

  @override
  String get onboardingSubscribeCta => '订阅';

  @override
  String get onboardingCancelAnytime => '随时取消。没有承诺。';

  @override
  String get onboardingContinueAsGuest => '继续以访客身份';

  @override
  String get onboardingRestore => '恢复';

  @override
  String get onboardingRestoreDesc => '已经订阅了？点击此处将其恢复。';

  @override
  String get onboardingExit => '出口';

  @override
  String get onboardingPersonalizationTitle => '让我们来认识一下你';

  @override
  String get onboardingPersonalizationDesc => '我们将用它来个性化您的建议并使购物变得更明智。';

  @override
  String get onboardingPersonalizationFoodLabel => '你最喜欢的食物是什么？';

  @override
  String get onboardingPersonalizationFoodHint => '例如披萨、寿司、烤宽面条……';

  @override
  String get onboardingPersonalizationCta => '继续';

  @override
  String get onboardingPersonalizationSkip => '暂时跳过';

  @override
  String get onboardingPersonalizationFoodRequired => '告诉我们您最喜欢的食物以继续';

  @override
  String get settingsDefaultScreen => '默认主屏幕';

  @override
  String get settingsDefaultScreenSubtitle => '选择购物清单或人工智能聊天';

  @override
  String get settingsScreenList => '购物清单';

  @override
  String get settingsScreenChat => '人工智能聊天';

  @override
  String loginError(String error) {
    return '登录错误：$error';
  }

  @override
  String get paywallTitle => 'KipiList 高级版';

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
  String get paywallCtaTrial => 'Start My Free Trial';

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
      '自然说话以管理您的清单！\n\n示例：\n• \'添加面包、奶酪和火腿\'\n• \'移除洗衣液\'\n• \'将主题更改为蓝色\'\n\n这是 KipiList Premium 的专属功能。';

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
  String get feedbackThankYouMessage => '你的反馈已收到，帮助我们为所有人改进 KipiList。';

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
  String get aiEnergy => '人工智能能源';

  @override
  String get searchInConversation => '在对话中搜索...';

  @override
  String get noMessagesFound => '没有找到消息';

  @override
  String get suggestedQuestions => '建议问题：';

  @override
  String get shoppingAssistant => '导购员';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '已购买 $total 中的 $purchased';
  }

  @override
  String get estimatedCost => '估计的';

  @override
  String get viewItems => '查看商品';

  @override
  String get noItemsInList => '列表中没有项目';

  @override
  String get longHistoryWarning => '历史悠久：助手专注于最新消息以获得更好的性能。';

  @override
  String get listening => '听...';

  @override
  String get addDirectToList => '直接添加到列表';

  @override
  String get unlockFullResponse => '解锁完整响应';

  @override
  String get switchList => '切换列表';

  @override
  String get marketMode => '市场模式';

  @override
  String get backToChat => '返回聊天';

  @override
  String get finishShopping => '完成购物';

  @override
  String get welcomeAiAssistant => '欢迎使用人工智能助手';

  @override
  String get createListToStartAi => '创建购物清单以开始使用智能聊天。';

  @override
  String get howCanIHelp => '我能提供什么帮助吗？';

  @override
  String get chatSubtitleShort => '询问价格、食谱、组织……';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total 已购买';
  }

  @override
  String get quickReplies => '快速回复：';

  @override
  String get voiceProFeature => '高级语音命令是 Pro。启用基本听写...';

  @override
  String get viewPro => '查看专业版';

  @override
  String get errorLoadingChat => '哎呀！加载聊天时出了点问题。';

  @override
  String get errorLoadingChatSubtitle => '检查您的连接或稍后重试。';

  @override
  String get errorOscillation => '这可能是由于网络振荡或暂时不可用而导致的。请再试一次。';

  @override
  String get activeListening => '积极倾听';

  @override
  String get whatToDoWithItem => '您想用这个物品做什么？';

  @override
  String get viewDetails => '查看详情';

  @override
  String get openMenu => '打开菜单';

  @override
  String get viewRecipe => '查看食谱';

  @override
  String get recipeCreated => '食谱已创建！';

  @override
  String get editRecipe => '编辑';

  @override
  String get deleteRecipe => '删除';

  @override
  String get deleteRecipeConfirm => '删除这个食谱？';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '您确定要删除“$recipeName”吗？此操作无法撤消。';
  }

  @override
  String get ingredients => '原料';

  @override
  String get instructions => '指示';

  @override
  String get prepTime => '准备时间';

  @override
  String get recipeSaved => '食谱已保存！';

  @override
  String get noRecipesSaved => '没有保存食谱';

  @override
  String get noRecipesSavedHint => '点击下面的按钮创建您的第一个自定义食谱。';

  @override
  String get myRecipes => '我的食谱';

  @override
  String get newRecipe => '新食谱';

  @override
  String get loadingRecipes => '正在加载您的食谱...';

  @override
  String get errorLoadingRecipes => '加载食谱时出错';

  @override
  String get addIngredient => '添加成分';

  @override
  String get saveRecipe => '节省';

  @override
  String get recipeName => '食谱名称';

  @override
  String get shortDescription => '简短描述';

  @override
  String get prepTimeMinutes => '准备时间（分钟）';

  @override
  String get instructionsHint => '每行键入一个步骤...';

  @override
  String get addPhoto => '添加照片';

  @override
  String get imageUrlPlaceholder => '或者粘贴图片网址';

  @override
  String get tags => '标签';

  @override
  String get recipeTags => '食谱标签';

  @override
  String get suggestedTags => '建议';

  @override
  String get searchRecipes => '搜索食谱...';

  @override
  String get filterByTag => '按标签过滤';

  @override
  String get allTags => '全部';

  @override
  String get recipeDeleted => '食谱已删除';

  @override
  String get saveChanges => '保存更改';

  @override
  String get editRecipeTitle => '编辑食谱';

  @override
  String get newRecipeTitle => '新食谱';

  @override
  String get requiredField => '必需的';

  @override
  String get chooseImageSource => '选择图像源';

  @override
  String get gallery => '画廊';

  @override
  String get enterUrl => '输入网址';

  @override
  String get recipeImage => '食谱图片';

  @override
  String get removeImage => '删除图像';

  @override
  String get mealPlannerTitle => '膳食计划';

  @override
  String get mealPlannerViewMonthly => '月视图';

  @override
  String get mealPlannerViewWeekly => '每周视图';

  @override
  String get mealPlannerNoMeals => '没有计划膳食';

  @override
  String get mealPlannerNoMealsHint => '点击一天即可添加餐食';

  @override
  String get mealPlannerLoading => '正在加载膳食计划...';

  @override
  String get mealPlannerError => '加载膳食计划时出错';

  @override
  String get mealPlannerAddMeal => '添加餐食';

  @override
  String get mealPlannerEditMeal => '编辑膳食';

  @override
  String get mealPlannerDeleteMeal => '去除膳食';

  @override
  String get mealPlannerMealDeleted => '餐食已移除';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 份',
      one: '$count 份',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => '份量';

  @override
  String get mealPlannerNoteLabel => '注意（可选）';

  @override
  String get mealPlannerSelectRecipe => '选择一个食谱';

  @override
  String get mealPlannerSearchRecipes => '搜索食谱...';

  @override
  String get mealPlannerNoRecipesFound => '没有找到食谱';

  @override
  String get mealPlannerNoRecipesHint => '首先在“菜谱”选项卡中创建菜谱';

  @override
  String get mealPlannerSave => '添加到计划';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '计划 $count 餐，共 $total 餐';
  }

  @override
  String get mealPlannerGenerateList => '生成购物清单';

  @override
  String get mealPlannerGenerateListConfirm => '将本周计划膳食中的所有食材添加到您的购物清单中？';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count 成分已添加到您的列表中！';
  }

  @override
  String get mealPlannerGenerateListEmpty => '无需添加任何成分。首先根据食谱计划一些膳食。';

  @override
  String get mealPlannerGenerateListNoList => '首先创建一个购物清单。';

  @override
  String get mealPlannerMealTypeBreakfast => '早餐';

  @override
  String get mealPlannerMealTypeLunch => '午餐';

  @override
  String get mealPlannerMealTypeDinner => '晚餐';

  @override
  String get mealPlannerMealTypeSnack => '小吃';

  @override
  String get mealPlannerDateLabel => '日期';

  @override
  String get mealPlannerWeekEmpty => '这周没有什么计划';

  @override
  String get mealPlannerWeekEmptyHint => '点击任意一天即可开始计划您的膳食！';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes 分钟';
  }

  @override
  String get inviteToList => '邀请列出';

  @override
  String get shareApp => '分享应用程序';

  @override
  String get shareAppDescription => '邀请朋友使用KipiList';

  @override
  String shareReferralText(Object url) {
    return '我正在使用 KipiList 来组织我的购物！通过我的链接下载，我们都可以免费获得 7 天的高级版：$url';
  }

  @override
  String get shareReferralSubject => '获取 7 天 KipiList Premium！';
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
  String get next => '下一个';

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
  String get languagePortuguese => '葡萄牙语（巴西）';

  @override
  String get languageEnglish => '英语';

  @override
  String get languageSystem => '系统默认';

  @override
  String get chooseLanguage => '选择语言';

  @override
  String get searchLanguage => '搜索语言...';

  @override
  String get currency => '货币';

  @override
  String get chooseCurrency => '选择货币';

  @override
  String get searchCurrency => '搜索货币...';

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
  String get dynamicColors => '动态色彩';

  @override
  String get dynamicColorsSubtitle => '使用基于您的壁纸的颜色';

  @override
  String get dynamicColorsEnabledWarning => '禁用动态颜色以使主题颜色生效';

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
  String get newChat => '新聊天';

  @override
  String get noHistory => '没有聊天记录';

  @override
  String get deleteSession => '删除聊天记录';

  @override
  String get deleteSessionConfirm => '您确定要删除此聊天记录吗？这些消息将永久丢失。';

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
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => '登录以解锁\n高级功能';

  @override
  String get signInGoogle => '使用 Google 登录';

  @override
  String get signInApple => '使用 Apple 登录';

  @override
  String get continueAsGuest => '以访客身份继续';

  @override
  String get onboardingWelcomeTitle => '欢迎来到KipiList';

  @override
  String get onboardingWelcomeDesc => '组织购物并省钱的最明智方式。';

  @override
  String get onboardingSetupTitle => '个性化您的体验';

  @override
  String get onboardingSetupDesc => '选择您希望 KipiList 的外观和工作方式。';

  @override
  String get onboardingLoginTitle => '将所有内容保存到云端';

  @override
  String get onboardingLoginDesc => '您的数据已在所有设备上同步';

  @override
  String get onboardingShareTitle => '与你爱的人分享';

  @override
  String get onboardingShareDesc => '与家人和朋友实时同步列表';

  @override
  String get onboardingPremiumTitle => '解锁所有功能';

  @override
  String get onboardingPremiumSubtitle => '充分利用您的购物清单';

  @override
  String get onboardingAnnualBadge => '最超值';

  @override
  String get onboardingMonthlyLabel => '每月';

  @override
  String get onboardingAnnualLabel => '年度的';

  @override
  String get onboardingViewAllPlans => '查看所有计划';

  @override
  String get onboardingSubscribeCta => '订阅';

  @override
  String get onboardingCancelAnytime => '随时取消。没有承诺。';

  @override
  String get onboardingContinueAsGuest => '继续以访客身份';

  @override
  String get onboardingRestore => '恢复购买';

  @override
  String get onboardingRestoreDesc => '已经订阅了？点击此处将其恢复。';

  @override
  String get onboardingExit => '出口';

  @override
  String get onboardingPersonalizationTitle => '让我们来认识一下你';

  @override
  String get onboardingPersonalizationDesc => '我们将用它来个性化您的建议并使购物变得更明智。';

  @override
  String get onboardingPersonalizationFoodLabel => '你最喜欢的食物是什么？';

  @override
  String get onboardingPersonalizationFoodHint => '例如披萨、寿司、烤宽面条……';

  @override
  String get onboardingPersonalizationCta => '继续';

  @override
  String get onboardingPersonalizationSkip => '暂时跳过';

  @override
  String get onboardingPersonalizationFoodRequired => '告诉我们您最喜欢的食物以继续';

  @override
  String get settingsDefaultScreen => '默认主屏幕';

  @override
  String get settingsDefaultScreenSubtitle => '选择购物清单或人工智能聊天';

  @override
  String get settingsScreenList => '购物清单';

  @override
  String get settingsScreenChat => '人工智能聊天';

  @override
  String loginError(String error) {
    return '登录错误：$error';
  }

  @override
  String get paywallTitle => 'KipiList 高级版';

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
      '自然说话以管理您的清单！\n\n示例：\n• \'添加面包、奶酪和火腿\'\n• \'移除洗衣液\'\n• \'将主题更改为蓝色\'\n\n这是 KipiList Premium 的专属功能。';

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
  String get feedbackThankYouMessage => '你的反馈已收到，帮助我们为所有人改进 KipiList。';

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
  String get aiEnergy => '人工智能能源';

  @override
  String get searchInConversation => '在对话中搜索...';

  @override
  String get noMessagesFound => '没有找到消息';

  @override
  String get suggestedQuestions => '建议问题：';

  @override
  String get shoppingAssistant => '导购员';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '已购买 $total 中的 $purchased';
  }

  @override
  String get estimatedCost => '估计的';

  @override
  String get viewItems => '查看商品';

  @override
  String get noItemsInList => '列表中没有项目';

  @override
  String get longHistoryWarning => '历史悠久：助手专注于最新消息以获得更好的性能。';

  @override
  String get listening => '听...';

  @override
  String get addDirectToList => '直接添加到列表';

  @override
  String get unlockFullResponse => '解锁完整响应';

  @override
  String get switchList => '切换列表';

  @override
  String get marketMode => '市场模式';

  @override
  String get backToChat => '返回聊天';

  @override
  String get finishShopping => '完成购物';

  @override
  String get welcomeAiAssistant => '欢迎使用人工智能助手';

  @override
  String get createListToStartAi => '创建购物清单以开始使用智能聊天。';

  @override
  String get howCanIHelp => '我能提供什么帮助吗？';

  @override
  String get chatSubtitleShort => '询问价格、食谱、组织……';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total 已购买';
  }

  @override
  String get quickReplies => '快速回复：';

  @override
  String get voiceProFeature => '高级语音命令是 Pro。启用基本听写...';

  @override
  String get viewPro => '查看专业版';

  @override
  String get errorLoadingChat => '哎呀！加载聊天时出了点问题。';

  @override
  String get errorLoadingChatSubtitle => '检查您的连接或稍后重试。';

  @override
  String get errorOscillation => '这可能是由于网络振荡或暂时不可用而导致的。请再试一次。';

  @override
  String get activeListening => '积极倾听';

  @override
  String get whatToDoWithItem => '您想用这个物品做什么？';

  @override
  String get viewDetails => '查看详情';

  @override
  String get openMenu => '打开菜单';

  @override
  String get viewRecipe => '查看食谱';

  @override
  String get recipeCreated => '食谱已创建！';

  @override
  String get editRecipe => '编辑';

  @override
  String get deleteRecipe => '删除';

  @override
  String get deleteRecipeConfirm => '删除这个食谱？';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '您确定要删除“$recipeName”吗？此操作无法撤消。';
  }

  @override
  String get ingredients => '原料';

  @override
  String get instructions => '指示';

  @override
  String get prepTime => '准备时间';

  @override
  String get recipeSaved => '食谱已保存！';

  @override
  String get noRecipesSaved => '没有保存食谱';

  @override
  String get noRecipesSavedHint => '点击下面的按钮创建您的第一个自定义食谱。';

  @override
  String get myRecipes => '我的食谱';

  @override
  String get newRecipe => '新食谱';

  @override
  String get loadingRecipes => '正在加载您的食谱...';

  @override
  String get errorLoadingRecipes => '加载食谱时出错';

  @override
  String get addIngredient => '添加成分';

  @override
  String get saveRecipe => '节省';

  @override
  String get recipeName => '食谱名称';

  @override
  String get shortDescription => '简短描述';

  @override
  String get prepTimeMinutes => '准备时间（分钟）';

  @override
  String get instructionsHint => '每行键入一个步骤...';

  @override
  String get addPhoto => '添加照片';

  @override
  String get imageUrlPlaceholder => '或者粘贴图片网址';

  @override
  String get tags => '标签';

  @override
  String get recipeTags => '食谱标签';

  @override
  String get suggestedTags => '建议';

  @override
  String get searchRecipes => '搜索食谱...';

  @override
  String get filterByTag => '按标签过滤';

  @override
  String get allTags => '全部';

  @override
  String get recipeDeleted => '食谱已删除';

  @override
  String get saveChanges => '保存更改';

  @override
  String get editRecipeTitle => '编辑食谱';

  @override
  String get newRecipeTitle => '新食谱';

  @override
  String get requiredField => '必需的';

  @override
  String get chooseImageSource => '选择图像源';

  @override
  String get gallery => '画廊';

  @override
  String get enterUrl => '输入网址';

  @override
  String get recipeImage => '食谱图片';

  @override
  String get removeImage => '删除图像';

  @override
  String get mealPlannerTitle => '膳食计划';

  @override
  String get mealPlannerViewMonthly => '月视图';

  @override
  String get mealPlannerViewWeekly => '每周视图';

  @override
  String get mealPlannerNoMeals => '没有计划膳食';

  @override
  String get mealPlannerNoMealsHint => '点击一天即可添加餐食';

  @override
  String get mealPlannerLoading => '正在加载膳食计划...';

  @override
  String get mealPlannerError => '加载膳食计划时出错';

  @override
  String get mealPlannerAddMeal => '添加餐食';

  @override
  String get mealPlannerEditMeal => '编辑膳食';

  @override
  String get mealPlannerDeleteMeal => '去除膳食';

  @override
  String get mealPlannerMealDeleted => '餐食已移除';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 份',
      one: '$count 份',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => '份量';

  @override
  String get mealPlannerNoteLabel => '注意（可选）';

  @override
  String get mealPlannerSelectRecipe => '选择一个食谱';

  @override
  String get mealPlannerSearchRecipes => '搜索食谱...';

  @override
  String get mealPlannerNoRecipesFound => '没有找到食谱';

  @override
  String get mealPlannerNoRecipesHint => '首先在“菜谱”选项卡中创建菜谱';

  @override
  String get mealPlannerSave => '添加到计划';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '计划 $count 餐，共 $total 餐';
  }

  @override
  String get mealPlannerGenerateList => '生成购物清单';

  @override
  String get mealPlannerGenerateListConfirm => '将本周计划膳食中的所有食材添加到您的购物清单中？';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count 成分已添加到您的列表中！';
  }

  @override
  String get mealPlannerGenerateListEmpty => '无需添加任何成分。首先根据食谱计划一些膳食。';

  @override
  String get mealPlannerGenerateListNoList => '首先创建一个购物清单。';

  @override
  String get mealPlannerMealTypeBreakfast => '早餐';

  @override
  String get mealPlannerMealTypeLunch => '午餐';

  @override
  String get mealPlannerMealTypeDinner => '晚餐';

  @override
  String get mealPlannerMealTypeSnack => '小吃';

  @override
  String get mealPlannerDateLabel => '日期';

  @override
  String get mealPlannerWeekEmpty => '这周没有什么计划';

  @override
  String get mealPlannerWeekEmptyHint => '点击任意一天即可开始计划您的膳食！';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes 分钟';
  }

  @override
  String get inviteToList => '邀请列出';

  @override
  String get shareApp => '分享应用程序';

  @override
  String get shareAppDescription => '邀请朋友使用KipiList';

  @override
  String shareReferralText(Object url) {
    return '我正在使用 KipiList 来组织我的购物！通过我的链接下载，我们都可以免费获得 7 天的高级版：$url';
  }

  @override
  String get shareReferralSubject => '获取 7 天 KipiList Premium！';
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
  String get next => 'Next';

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
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get currency => 'Currency';

  @override
  String get chooseCurrency => 'Select Currency';

  @override
  String get searchCurrency => 'Search currency...';

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
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get dynamicColorsEnabledWarning =>
      'Disable dynamic colors for the theme color to take effect';

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
  String get newChat => 'New Chat';

  @override
  String get noHistory => 'No chat history';

  @override
  String get deleteSession => 'Delete Chat';

  @override
  String get deleteSessionConfirm =>
      'Are you sure you want to delete this chat? The messages will be permanently lost.';

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
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => '登录以解锁\n高级功能';

  @override
  String get signInGoogle => '使用 Google 登录';

  @override
  String get signInApple => '使用 Apple 登录';

  @override
  String get continueAsGuest => '以访客身份继续';

  @override
  String get onboardingWelcomeTitle => 'Welcome to KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'The smartest way to organize your shopping and save money.';

  @override
  String get onboardingSetupTitle => 'Personalize your experience';

  @override
  String get onboardingSetupDesc =>
      'Choose how you want KipiList to look and work for you.';

  @override
  String get onboardingLoginTitle => 'Save everything to the cloud';

  @override
  String get onboardingLoginDesc => 'Your data synced across all your devices';

  @override
  String get onboardingShareTitle => 'Share with the ones you love';

  @override
  String get onboardingShareDesc =>
      'Sync lists with family and friends in real time';

  @override
  String get onboardingPremiumTitle => 'Unlock all features';

  @override
  String get onboardingPremiumSubtitle =>
      'Get the most out of your shopping lists';

  @override
  String get onboardingAnnualBadge => 'Best Value';

  @override
  String get onboardingMonthlyLabel => 'Monthly';

  @override
  String get onboardingAnnualLabel => 'Annual';

  @override
  String get onboardingViewAllPlans => 'View all plans';

  @override
  String get onboardingSubscribeCta => 'Subscribe';

  @override
  String get onboardingCancelAnytime => 'Cancel anytime. No commitment.';

  @override
  String get onboardingContinueAsGuest => 'Continue as guest';

  @override
  String get onboardingRestore => 'Restore Purchases';

  @override
  String get onboardingRestoreDesc =>
      'Already have a subscription? Tap here to restore it.';

  @override
  String get onboardingExit => 'Exit';

  @override
  String get onboardingPersonalizationTitle => 'Let\'s get to know you';

  @override
  String get onboardingPersonalizationDesc =>
      'We\'ll use this to personalize your suggestions and make shopping smarter.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'What\'s your favorite food?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'e.g. Pizza, Sushi, Lasagna...';

  @override
  String get onboardingPersonalizationCta => 'Continue';

  @override
  String get onboardingPersonalizationSkip => 'Skip for now';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Tell us your favorite food to continue';

  @override
  String get settingsDefaultScreen => 'Default home screen';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Choose between shopping list or AI chat';

  @override
  String get settingsScreenList => 'Shopping List';

  @override
  String get settingsScreenChat => 'AI Chat';

  @override
  String loginError(String error) {
    return '登录错误：$error';
  }

  @override
  String get paywallTitle => 'KipiList 高级版';

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
      '自然说话以管理您的清单！\n\n示例：\n• \'添加面包、奶酪和火腿\'\n• \'移除洗衣液\'\n• \'将主题更改为蓝色\'\n\n这是 KipiList Premium 的专属功能。';

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
  String get feedbackThankYouMessage => '您的意見已收到，幫助我們為所有人改進 KipiList。';

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

  @override
  String get mealPlannerTitle => 'Meal Planner';

  @override
  String get mealPlannerViewMonthly => 'Monthly view';

  @override
  String get mealPlannerViewWeekly => 'Weekly view';

  @override
  String get mealPlannerNoMeals => 'No meals planned';

  @override
  String get mealPlannerNoMealsHint => 'Tap a day to add a meal';

  @override
  String get mealPlannerLoading => 'Loading meal plan...';

  @override
  String get mealPlannerError => 'Error loading meal plan';

  @override
  String get mealPlannerAddMeal => 'Add Meal';

  @override
  String get mealPlannerEditMeal => 'Edit Meal';

  @override
  String get mealPlannerDeleteMeal => 'Remove meal';

  @override
  String get mealPlannerMealDeleted => 'Meal removed';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count servings',
      one: '$count serving',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Servings';

  @override
  String get mealPlannerNoteLabel => 'Note (optional)';

  @override
  String get mealPlannerSelectRecipe => 'Select a recipe';

  @override
  String get mealPlannerSearchRecipes => 'Search recipes...';

  @override
  String get mealPlannerNoRecipesFound => 'No recipes found';

  @override
  String get mealPlannerNoRecipesHint =>
      'Create recipes in the Recipes tab first';

  @override
  String get mealPlannerSave => 'Add to plan';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count of $total meals planned';
  }

  @override
  String get mealPlannerGenerateList => 'Generate shopping list';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Add all ingredients from planned meals this week to your shopping list?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count ingredient(s) added to your list!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'No ingredients to add. Plan some meals with recipes first.';

  @override
  String get mealPlannerGenerateListNoList => 'Create a shopping list first.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Breakfast';

  @override
  String get mealPlannerMealTypeLunch => 'Lunch';

  @override
  String get mealPlannerMealTypeDinner => 'Dinner';

  @override
  String get mealPlannerMealTypeSnack => 'Snack';

  @override
  String get mealPlannerDateLabel => 'Date';

  @override
  String get mealPlannerWeekEmpty => 'Nothing planned for this week';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Tap any day to start planning your meals!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes min';
  }

  @override
  String get inviteToList => 'Invite to list';

  @override
  String get shareApp => 'Share app';

  @override
  String get shareAppDescription => 'Invite friends to use KipiList';

  @override
  String shareReferralText(Object url) {
    return 'I\'m using KipiList to organize my shopping! Download via my link and we both get 7 days of Premium free: $url';
  }

  @override
  String get shareReferralSubject => 'Get 7 days of KipiList Premium!';
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
  String get next => '下一個';

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
  String get languagePortuguese => '葡萄牙語（巴西）';

  @override
  String get languageEnglish => '英語';

  @override
  String get languageSystem => '系统默认';

  @override
  String get chooseLanguage => '選擇語言';

  @override
  String get searchLanguage => '搜尋語言...';

  @override
  String get currency => '貨幣';

  @override
  String get chooseCurrency => '選擇貨幣';

  @override
  String get searchCurrency => '搜尋貨幣...';

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
  String get dynamicColors => '動態色彩';

  @override
  String get dynamicColorsSubtitle => '使用基於您的壁紙的顏色';

  @override
  String get dynamicColorsEnabledWarning => '停用動態顏色以使主題顏色生效';

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
  String get newChat => '新聊天';

  @override
  String get noHistory => '沒有聊天記錄';

  @override
  String get deleteSession => '刪除聊天記錄';

  @override
  String get deleteSessionConfirm => '您確定要刪除此聊天記錄嗎？這些訊息將永久遺失。';

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
  String get kipiListTitle => 'KipiList';

  @override
  String get loginPrompt => '登录以解锁\n高级功能';

  @override
  String get signInGoogle => '使用 Google 登录';

  @override
  String get signInApple => '使用 Apple 登录';

  @override
  String get continueAsGuest => '以访客身份继续';

  @override
  String get onboardingWelcomeTitle => '歡迎來到KipiList';

  @override
  String get onboardingWelcomeDesc => '組織購物並省錢的最明智方法。';

  @override
  String get onboardingSetupTitle => '個人化您的體驗';

  @override
  String get onboardingSetupDesc => '選擇您希望 KipiList 的外觀和工作方式。';

  @override
  String get onboardingLoginTitle => '將所有內容儲存到雲端';

  @override
  String get onboardingLoginDesc => '您的資料已在所有裝置上同步';

  @override
  String get onboardingShareTitle => '與你愛的人分享';

  @override
  String get onboardingShareDesc => '與家人和朋友即時同步列表';

  @override
  String get onboardingPremiumTitle => '解鎖所有功能';

  @override
  String get onboardingPremiumSubtitle => '充分利用您的購物清單';

  @override
  String get onboardingAnnualBadge => '最超值';

  @override
  String get onboardingMonthlyLabel => '每月';

  @override
  String get onboardingAnnualLabel => '年度的';

  @override
  String get onboardingViewAllPlans => '查看所有計劃';

  @override
  String get onboardingSubscribeCta => '訂閱';

  @override
  String get onboardingCancelAnytime => '隨時取消。沒有承諾。';

  @override
  String get onboardingContinueAsGuest => '繼續以訪客身份';

  @override
  String get onboardingRestore => '恢復購買';

  @override
  String get onboardingRestoreDesc => '已經訂閱了？點擊此處將其恢復。';

  @override
  String get onboardingExit => '出口';

  @override
  String get onboardingPersonalizationTitle => '讓我們來認識你';

  @override
  String get onboardingPersonalizationDesc => '我們將用它來個性化您的建議並使購物更明智。';

  @override
  String get onboardingPersonalizationFoodLabel => '你最喜歡的食物是什麼？';

  @override
  String get onboardingPersonalizationFoodHint => '例如披薩、壽司、烤寬麵條…';

  @override
  String get onboardingPersonalizationCta => '繼續';

  @override
  String get onboardingPersonalizationSkip => '暫時跳過';

  @override
  String get onboardingPersonalizationFoodRequired => '告訴我們您最喜歡的食物以繼續';

  @override
  String get settingsDefaultScreen => '預設主螢幕';

  @override
  String get settingsDefaultScreenSubtitle => '選擇購物清單或人工智慧聊天';

  @override
  String get settingsScreenList => '購物清單';

  @override
  String get settingsScreenChat => '人工智慧聊天';

  @override
  String loginError(String error) {
    return '登录错误：$error';
  }

  @override
  String get paywallTitle => 'KipiList 高级版';

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
      '自然说话以管理您的清单！\n\n示例：\n• \'添加面包、奶酪和火腿\'\n• \'移除洗衣液\'\n• \'将主题更改为蓝色\'\n\n这是 KipiList Premium 的专属功能。';

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
  String get feedbackThankYouMessage => '您的反馈已收到，这有助于我们为所有人改进 KipiList。';

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
  String get aiEnergy => '人工智慧能源';

  @override
  String get searchInConversation => '在對話中搜尋...';

  @override
  String get noMessagesFound => '沒有找到訊息';

  @override
  String get suggestedQuestions => '建議問題：';

  @override
  String get shoppingAssistant => '導購員';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '已購買 $total 中的 $purchased';
  }

  @override
  String get estimatedCost => '估計的';

  @override
  String get viewItems => '查看商品';

  @override
  String get noItemsInList => '清單中沒有項目';

  @override
  String get longHistoryWarning => '歷史悠久：助手專注於最新消息以獲得更好的性能。';

  @override
  String get listening => '聽...';

  @override
  String get addDirectToList => '直接添加到列表';

  @override
  String get unlockFullResponse => '解鎖完整回應';

  @override
  String get switchList => '切換列表';

  @override
  String get marketMode => '市場模式';

  @override
  String get backToChat => '返回聊天';

  @override
  String get finishShopping => '完成購物';

  @override
  String get welcomeAiAssistant => '歡迎使用人工智慧助手';

  @override
  String get createListToStartAi => '建立購物清單以開始使用智慧聊天。';

  @override
  String get howCanIHelp => '我能提供什麼幫助嗎？';

  @override
  String get chatSubtitleShort => '詢問價格、食譜、組織…';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total 已購買';
  }

  @override
  String get quickReplies => '快速回覆：';

  @override
  String get voiceProFeature => '高級語音命令是 Pro。啟用基本聽寫...';

  @override
  String get viewPro => '查看專業版';

  @override
  String get errorLoadingChat => '哎呀！載入聊天時出了點問題。';

  @override
  String get errorLoadingChatSubtitle => '檢查您的連線或稍後重試。';

  @override
  String get errorOscillation => '這可能是由於網路振盪或暫時無法使用而導致的。請再試一次。';

  @override
  String get activeListening => '積極傾聽';

  @override
  String get whatToDoWithItem => '您想用這個物品做什麼？';

  @override
  String get viewDetails => '看詳情';

  @override
  String get openMenu => '開啟選單';

  @override
  String get viewRecipe => '查看食譜';

  @override
  String get recipeCreated => '食譜已建立！';

  @override
  String get editRecipe => '編輯';

  @override
  String get deleteRecipe => '刪除';

  @override
  String get deleteRecipeConfirm => '刪除這個食譜？';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return '您確定要刪除「$recipeName」嗎？此操作無法撤銷。';
  }

  @override
  String get ingredients => '原料';

  @override
  String get instructions => '指示';

  @override
  String get prepTime => '準備時間';

  @override
  String get recipeSaved => '食譜已儲存！';

  @override
  String get noRecipesSaved => '沒有保存食譜';

  @override
  String get noRecipesSavedHint => '點擊下面的按鈕以建立您的第一個自訂食譜。';

  @override
  String get myRecipes => '我的食譜';

  @override
  String get newRecipe => '新食譜';

  @override
  String get loadingRecipes => '正在加載您的食譜...';

  @override
  String get errorLoadingRecipes => '加載食譜時出錯';

  @override
  String get addIngredient => '加入成分';

  @override
  String get saveRecipe => '節省';

  @override
  String get recipeName => '食譜名稱';

  @override
  String get shortDescription => '簡短描述';

  @override
  String get prepTimeMinutes => '準備時間（分鐘）';

  @override
  String get instructionsHint => '每行鍵入一個步驟...';

  @override
  String get addPhoto => '添加照片';

  @override
  String get imageUrlPlaceholder => '或貼上圖片網址';

  @override
  String get tags => '標籤';

  @override
  String get recipeTags => '食譜標籤';

  @override
  String get suggestedTags => '建議';

  @override
  String get searchRecipes => '搜尋食譜...';

  @override
  String get filterByTag => '按標籤過濾';

  @override
  String get allTags => '全部';

  @override
  String get recipeDeleted => '食譜已刪除';

  @override
  String get saveChanges => '儲存變更';

  @override
  String get editRecipeTitle => '編輯食譜';

  @override
  String get newRecipeTitle => '新食譜';

  @override
  String get requiredField => '必需的';

  @override
  String get chooseImageSource => '選擇影像來源';

  @override
  String get gallery => '畫廊';

  @override
  String get enterUrl => '輸入網址';

  @override
  String get recipeImage => '食譜圖片';

  @override
  String get removeImage => '刪除影像';

  @override
  String get mealPlannerTitle => '膳食計劃';

  @override
  String get mealPlannerViewMonthly => '月視圖';

  @override
  String get mealPlannerViewWeekly => '每週視圖';

  @override
  String get mealPlannerNoMeals => '沒有計劃膳食';

  @override
  String get mealPlannerNoMealsHint => '點擊一天即可加入餐食';

  @override
  String get mealPlannerLoading => '正在加載膳食計劃...';

  @override
  String get mealPlannerError => '加載膳食計劃時出錯';

  @override
  String get mealPlannerAddMeal => '添加餐點';

  @override
  String get mealPlannerEditMeal => '編輯膳食';

  @override
  String get mealPlannerDeleteMeal => '去除膳食';

  @override
  String get mealPlannerMealDeleted => '餐點已移除';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 份',
      one: '$count 份',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => '份量';

  @override
  String get mealPlannerNoteLabel => '注意（可選）';

  @override
  String get mealPlannerSelectRecipe => '選擇一個食譜';

  @override
  String get mealPlannerSearchRecipes => '搜尋食譜...';

  @override
  String get mealPlannerNoRecipesFound => '沒有找到食譜';

  @override
  String get mealPlannerNoRecipesHint => '首先在「食譜」標籤中建立食譜';

  @override
  String get mealPlannerSave => '添加到計劃';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '計劃 $count 餐，共 $total 餐';
  }

  @override
  String get mealPlannerGenerateList => '產生購物清單';

  @override
  String get mealPlannerGenerateListConfirm => '將本週規劃膳食中的所有食材加入您的購物清單中？';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count 成分已加入您的清單！';
  }

  @override
  String get mealPlannerGenerateListEmpty => '無需添加任何成分。首先根據食譜規劃一些膳食。';

  @override
  String get mealPlannerGenerateListNoList => '首先建立一個購物清單。';

  @override
  String get mealPlannerMealTypeBreakfast => '早餐';

  @override
  String get mealPlannerMealTypeLunch => '午餐';

  @override
  String get mealPlannerMealTypeDinner => '晚餐';

  @override
  String get mealPlannerMealTypeSnack => '小吃';

  @override
  String get mealPlannerDateLabel => '日期';

  @override
  String get mealPlannerWeekEmpty => '這週沒有什麼計劃';

  @override
  String get mealPlannerWeekEmptyHint => '點擊任何一天即可開始規劃您的膳食！';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes 分鐘';
  }

  @override
  String get inviteToList => '邀請列出';

  @override
  String get shareApp => '分享應用程式';

  @override
  String get shareAppDescription => '邀請朋友使用KipiList';

  @override
  String shareReferralText(Object url) {
    return '我正在使用 KipiList 來組織我的購物！透過我的連結下載，我們都可以免費獲得 7 天的高級版：$url';
  }

  @override
  String get shareReferralSubject => '取得 7 天 KipiList Premium！';
}
