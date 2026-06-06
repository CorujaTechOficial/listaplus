// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Danh sách mua sắm';

  @override
  String get lists => 'Danh sách';

  @override
  String get pantry => 'Phòng đựng thức ăn';

  @override
  String get cancel => 'Hủy';

  @override
  String get save => 'Lưu';

  @override
  String get create => 'Tạo';

  @override
  String get add => 'Thêm';

  @override
  String get remove => 'Xóa';

  @override
  String get delete => 'Xóa';

  @override
  String get edit => 'Sửa';

  @override
  String get copy => 'Sao chép';

  @override
  String get next => 'Kế tiếp';

  @override
  String get retry => 'Thử lại';

  @override
  String get regenerate => 'Tạo lại';

  @override
  String get copiedToClipboard => 'Đã sao chép vào clipboard';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get close => 'Đóng';

  @override
  String get import => 'Nhập';

  @override
  String get rename => 'Đổi tên';

  @override
  String get upgrade => 'Nâng cấp';

  @override
  String get clear => 'Xóa';

  @override
  String error(String message) {
    return 'Lỗi: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'Lỗi: $message';
  }

  @override
  String get purchaseError => 'Lỗi khi xử lý giao dịch. Vui lòng thử lại.';

  @override
  String get restoreError => 'Lỗi khi khôi phục giao dịch. Vui lòng thử lại.';

  @override
  String get loading => 'Đang tải...';

  @override
  String get fieldRequired => 'Trường bắt buộc';

  @override
  String get addedFeedback => 'Đã thêm!';

  @override
  String selectedItems(int count) {
    return 'Đã chọn $count';
  }

  @override
  String get estimated => 'Ước tính';

  @override
  String get alreadyPurchased => 'Đã mua';

  @override
  String get clearList => 'Xóa danh sách';

  @override
  String get clearPurchased => 'Xóa đã mua';

  @override
  String get share => 'Chia sẻ';

  @override
  String get shareViaCode => 'Chia sẻ qua mã';

  @override
  String get importViaCode => 'Nhập qua mã';

  @override
  String get listAssistant => 'Trợ lý danh sách';

  @override
  String get globalAssistant => 'Trợ lý chung';

  @override
  String get becomePremium => 'Trở thành Premium';

  @override
  String get manageSubscription => 'Quản lý đăng ký';

  @override
  String get completePurchase => 'Hoàn tất mua hàng';

  @override
  String get confirmClearList => 'Xóa tất cả mục?';

  @override
  String get shareListTitle => 'Chia sẻ danh sách';

  @override
  String get shareThisCode => 'Chia sẻ mã này:';

  @override
  String get validForLimitedTime => 'Có hiệu lực trong thời gian giới hạn';

  @override
  String get importListTitle => 'Nhập danh sách';

  @override
  String get enterCodeHint => 'Nhập mã';

  @override
  String get confirmArchiveTitle => 'Hoàn tất mua hàng';

  @override
  String get confirmArchiveContent =>
      'Hoàn tất giao dịch này và lưu trữ danh sách?';

  @override
  String get complete => 'Hoàn tất';

  @override
  String get listArchived => 'Đã lưu trữ danh sách thành công!';

  @override
  String listAdded(String listName) {
    return 'Đã thêm $listName!';
  }

  @override
  String get buy => 'Mua';

  @override
  String get unmark => 'Bỏ đánh dấu';

  @override
  String confirmDeleteItems(int count) {
    return 'Xóa $count mục?';
  }

  @override
  String get confirmDeleteTitle => 'Xác nhận';

  @override
  String confirmContent(int count) {
    return 'Xóa $count mục?';
  }

  @override
  String get archiveList => 'Lưu trữ danh sách';

  @override
  String get pantryAppBar => 'Phòng đựng thức ăn';

  @override
  String get generateShoppingList => 'Tạo danh sách mua sắm';

  @override
  String get pantryEmpty => 'Phòng đựng thức ăn trống';

  @override
  String get pantryEmptySubtitle => 'Thêm sản phẩm bạn muốn có ở nhà';

  @override
  String itemsNeedPurchase(int deficit) {
    return 'Cần mua $deficit mục';
  }

  @override
  String get noItemsToBuy => 'Không có mục nào cần mua';

  @override
  String get newPantryList => 'Mua sắm từ phòng đựng thức ăn';

  @override
  String get newListTitle => 'Danh sách mua sắm mới';

  @override
  String itemsWillBeAdded(int count) {
    return 'Sẽ thêm $count mục';
  }

  @override
  String get listNameLabel => 'Tên danh sách';

  @override
  String listCreated(String name, int count) {
    return 'Danh sách \"$name\" đã được tạo với $count mục';
  }

  @override
  String get noTracking => 'Không theo dõi';

  @override
  String get markAsPurchased => 'Đánh dấu đã mua';

  @override
  String editPantryItem(String name) {
    return 'Sửa $name';
  }

  @override
  String get idealQuantity => 'Số lượng lý tưởng';

  @override
  String get currentQuantity => 'Số lượng hiện tại';

  @override
  String get consumed => 'Đã tiêu thụ';

  @override
  String restocked(String name, int quantity, String unit) {
    return 'Đã bổ sung $name lên $quantity $unit';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'Xóa \"$name\" khỏi phòng đựng thức ăn?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'Sửa $name';
  }

  @override
  String get settingsAppBar => 'Cài đặt';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get languagePortuguese => 'Người Bồ Đào Nha (Brasil)';

  @override
  String get languageEnglish => 'Tiếng Anh';

  @override
  String get languageSystem => 'Mặc định hệ thống';

  @override
  String get chooseLanguage => 'Chọn ngôn ngữ';

  @override
  String get searchLanguage => 'Tìm kiếm ngôn ngữ...';

  @override
  String get currency => 'Tiền tệ';

  @override
  String get chooseCurrency => 'Chọn tiền tệ';

  @override
  String get searchCurrency => 'Tìm kiếm tiền tệ...';

  @override
  String get appearance => 'Giao diện';

  @override
  String get light => 'Sáng';

  @override
  String get system => 'Hệ thống';

  @override
  String get dark => 'Tối';

  @override
  String get themeColor => 'Màu chủ đề';

  @override
  String get dynamicColors => 'Màu sắc năng động';

  @override
  String get dynamicColorsSubtitle =>
      'Sử dụng màu sắc dựa trên hình nền của bạn';

  @override
  String get dynamicColorsEnabledWarning =>
      'Tắt màu động để màu chủ đề có hiệu lực';

  @override
  String get finance => 'Tài chính';

  @override
  String get monthlyBudgetNav => 'Ngân sách hàng tháng';

  @override
  String get budgetSubtitle => 'Theo dõi chi tiêu hàng tháng của bạn';

  @override
  String get data => 'Dữ liệu';

  @override
  String get backupNav => 'Sao lưu';

  @override
  String get backupSubtitle => 'Xuất hoặc nhập dữ liệu của bạn';

  @override
  String get about => 'Giới thiệu';

  @override
  String get version => 'Phiên bản';

  @override
  String get privacy => 'Quyền riêng tư';

  @override
  String get termsOfUse => 'Điều khoản sử dụng';

  @override
  String get backupTitle => 'Sao lưu';

  @override
  String get backupPremiumDescription =>
      'Sao lưu và xuất dữ liệu là tính năng cao cấp';

  @override
  String get exportData => 'Xuất dữ liệu';

  @override
  String get exportDataSubtitle => 'Lưu tất cả danh sách dưới dạng JSON';

  @override
  String get importData => 'Nhập dữ liệu';

  @override
  String get importDataSubtitle => 'Khôi phục danh sách từ JSON';

  @override
  String get importJsonTitle => 'Nhập JSON';

  @override
  String get importJsonHint => 'Dán JSON sao lưu vào đây...';

  @override
  String get backupExported => 'Đã xuất bản sao lưu!';

  @override
  String get budgetAppBar => 'Ngân sách hàng tháng';

  @override
  String get budgetPremiumLocked =>
      'Ngân sách hàng tháng tổng thể là tính năng cao cấp';

  @override
  String get budgetUpgradePrompt => 'Nâng cấp để mở khóa';

  @override
  String get noBudgetDefined => 'Chưa đặt ngân sách';

  @override
  String totalEstimated(String amount) {
    return 'Tổng ước tính: $amount';
  }

  @override
  String get setBudgetButton => 'Đặt ngân sách';

  @override
  String get budgetLists => 'Danh sách';

  @override
  String get budgetValueLabel => 'Số tiền';

  @override
  String get setBudgetTitle => 'Ngân sách hàng tháng';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'Tất cả';

  @override
  String get filterPending => 'Đang chờ';

  @override
  String get filterPurchased => 'Đã mua';

  @override
  String get sortName => 'Tên';

  @override
  String get sortCategory => 'Danh mục';

  @override
  String get sortDate => 'Ngày';

  @override
  String get sortManual => 'Thủ công';

  @override
  String get addItem => 'Thêm mục';

  @override
  String get itemName => 'Tên mục';

  @override
  String get quantityShort => 'SL';

  @override
  String get unit => 'Đơn vị';

  @override
  String get category => 'Danh mục';

  @override
  String get estimatedPrice => 'Giá ước tính';

  @override
  String get addItemPrice => 'Giá ước tính';

  @override
  String get editItem => 'Sửa mục';

  @override
  String get quantityFull => 'Số lượng';

  @override
  String get editItemPrice => 'Giá ước tính';

  @override
  String get addToPantry => 'Thêm vào phòng đựng thức ăn';

  @override
  String addToPantryPrompt(String name) {
    return 'Thêm \"$name\" vào phòng đựng thức ăn?';
  }

  @override
  String get yes => 'Có';

  @override
  String get productName => 'Tên sản phẩm';

  @override
  String get idealQty => 'SL lý tưởng';

  @override
  String get currentQty => 'SL hiện tại';

  @override
  String get trackStock => 'Theo dõi tồn kho';

  @override
  String get trackStockActive => 'Xuất hiện trong gợi ý mua sắm';

  @override
  String get trackStockInactive => 'Không tạo gợi ý mua sắm';

  @override
  String get createListDialog => 'Tạo danh sách';

  @override
  String get renameListDialog => 'Đổi tên danh sách';

  @override
  String get listHistory => 'Lịch sử danh sách';

  @override
  String get myLists => 'Danh sách của tôi';

  @override
  String get viewActive => 'Xem đang hoạt động';

  @override
  String get viewHistory => 'Xem lịch sử';

  @override
  String get noArchivedLists => 'Không có danh sách đã lưu trữ';

  @override
  String get noActiveLists => 'Không có danh sách đang hoạt động';

  @override
  String completedOn(String date) {
    return 'Hoàn thành vào $date';
  }

  @override
  String get sharedLabel => 'Đã chia sẻ';

  @override
  String get restore => 'Khôi phục';

  @override
  String get removeSharedTooltip => 'Xóa';

  @override
  String get deleteListTitle => 'Xóa danh sách';

  @override
  String deleteListContent(String name) {
    return 'Bạn có chắc chắn muốn xóa \"$name\"? Tất cả mục sẽ bị xóa.';
  }

  @override
  String get removeSharedListTitle => 'Xóa danh sách đã chia sẻ';

  @override
  String removeSharedListContent(String name) {
    return 'Xóa \"$name\" khỏi danh sách của bạn? Danh sách gốc sẽ không bị ảnh hưởng.';
  }

  @override
  String get createNewList => 'Tạo danh sách mới';

  @override
  String get aiAssistant => 'Trợ lý AI';

  @override
  String get aiAssistantDescription =>
      'Nhận đề xuất thông minh, công thức nấu ăn và mẹo cá nhân hóa với trợ lý AI của chúng tôi.';

  @override
  String get generalAssistant => 'Trợ lý chung';

  @override
  String get newChat => 'Trò chuyện mới';

  @override
  String get noHistory => 'Không có lịch sử trò chuyện';

  @override
  String get deleteSession => 'Xóa cuộc trò chuyện';

  @override
  String get deleteSessionConfirm =>
      'Bạn có chắc chắn muốn xóa cuộc trò chuyện này không? Các tin nhắn sẽ bị mất vĩnh viễn.';

  @override
  String get clearHistory => 'Xóa lịch sử';

  @override
  String get clearHistoryConfirm => 'Xóa tất cả tin nhắn trong phiên này?';

  @override
  String get chatHint => 'Nhập tin nhắn của bạn...';

  @override
  String get chatHintBlocked => 'Unlock AI to chat';

  @override
  String chatError(String error) {
    return 'Lỗi khi tải trò chuyện: $error';
  }

  @override
  String get listHelp => 'Tôi có thể giúp gì với danh sách của bạn?';

  @override
  String get generalHelp =>
      'Hôm nay tôi có thể giúp gì cho việc mua sắm của bạn?';

  @override
  String get chatSubtitle =>
      'Yêu cầu đề xuất mục, công thức nấu ăn hoặc mẹo tiết kiệm.';

  @override
  String get aiError =>
      'Xin lỗi, đã xảy ra lỗi khi xử lý yêu cầu của bạn. Kiểm tra kết nối hoặc thử lại sau.';

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
  String get loginPrompt => 'Đăng nhập để mở khóa\ntính năng cao cấp';

  @override
  String get signInGoogle => 'Đăng nhập bằng Google';

  @override
  String get signInApple => 'Đăng nhập bằng Apple';

  @override
  String get continueAsGuest => 'Tiếp tục với tư cách khách';

  @override
  String get onboardingWelcomeTitle => 'Chào mừng đến với KipiList';

  @override
  String get onboardingWelcomeDesc =>
      'Cách thông minh nhất để tổ chức mua sắm của bạn và tiết kiệm tiền.';

  @override
  String get onboardingSetupTitle => 'Cá nhân hóa trải nghiệm của bạn';

  @override
  String get onboardingSetupDesc =>
      'Chọn cách bạn muốn KipiList trông và hoạt động cho bạn.';

  @override
  String get onboardingLoginTitle => 'Lưu mọi thứ vào đám mây';

  @override
  String get onboardingLoginDesc =>
      'Dữ liệu của bạn được đồng bộ hóa trên tất cả các thiết bị của bạn';

  @override
  String get onboardingShareTitle => 'Chia sẻ với những người bạn yêu thương';

  @override
  String get onboardingShareDesc =>
      'Đồng bộ danh sách với gia đình và bạn bè trong thời gian thực';

  @override
  String get onboardingPremiumTitle => 'Mở khóa tất cả các tính năng';

  @override
  String get onboardingPremiumSubtitle =>
      'Tận dụng tối đa danh sách mua sắm của bạn';

  @override
  String get onboardingAnnualBadge => 'Giá trị tốt nhất';

  @override
  String get onboardingMonthlyLabel => 'hàng tháng';

  @override
  String get onboardingAnnualLabel => 'Hàng năm';

  @override
  String get onboardingViewAllPlans => 'Xem tất cả các kế hoạch';

  @override
  String get onboardingSubscribeCta => 'Đặt mua';

  @override
  String get onboardingCancelAnytime =>
      'Hủy bỏ bất cứ lúc nào. Không có cam kết.';

  @override
  String get onboardingContinueAsGuest => 'Tiếp tục làm khách';

  @override
  String get onboardingRestore => 'Khôi phục';

  @override
  String get onboardingRestoreDesc =>
      'Đã có đăng ký? Nhấn vào đây để khôi phục nó.';

  @override
  String get onboardingExit => 'Ra';

  @override
  String get onboardingPersonalizationTitle => 'Hãy làm quen với bạn';

  @override
  String get onboardingPersonalizationDesc =>
      'Chúng tôi sẽ sử dụng điều này để cá nhân hóa các đề xuất của bạn và giúp việc mua sắm trở nên thông minh hơn.';

  @override
  String get onboardingPersonalizationFoodLabel =>
      'Món ăn yêu thích của bạn là gì?';

  @override
  String get onboardingPersonalizationFoodHint =>
      'ví dụ. Pizza, Sushi, Lasagna...';

  @override
  String get onboardingPersonalizationCta => 'Tiếp tục';

  @override
  String get onboardingPersonalizationSkip => 'Bỏ qua bây giờ';

  @override
  String get onboardingPersonalizationFoodRequired =>
      'Hãy cho chúng tôi biết món ăn yêu thích của bạn để tiếp tục';

  @override
  String get settingsDefaultScreen => 'Màn hình chính mặc định';

  @override
  String get settingsDefaultScreenSubtitle =>
      'Chọn giữa danh sách mua sắm hoặc trò chuyện AI';

  @override
  String get settingsScreenList => 'Danh sách mua sắm';

  @override
  String get settingsScreenChat => 'Trò chuyện AI';

  @override
  String loginError(String error) {
    return 'Lỗi đăng nhập: $error';
  }

  @override
  String get paywallTitle => 'KipiList cao cấp';

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
  String get premiumUpgrade => 'Nâng cấp để mở khóa';

  @override
  String get itemRemoved => 'Đã xóa mục';

  @override
  String get undo => 'Hoàn tác';

  @override
  String get emptyListTitle => 'Danh sách của bạn trống';

  @override
  String get emptyListSubtitle => 'Thêm mục để bắt đầu';

  @override
  String get noListFoundTitle => 'Không tìm thấy danh sách';

  @override
  String get noListFoundSubtitle => 'Tạo danh sách đầu tiên của bạn để bắt đầu';

  @override
  String get createFirstList => 'Tạo danh sách đầu tiên';

  @override
  String get listBudgetTitle => 'Ngân sách danh sách';

  @override
  String get budgetAmountLabel => 'Số tiền ngân sách';

  @override
  String get removeBudget => 'Xóa';

  @override
  String get prefUnlimitedLists => 'Danh sách không giới hạn';

  @override
  String get prefSharing => 'Chia sẻ danh sách';

  @override
  String get prefFullHistory => 'Lịch sử đầy đủ';

  @override
  String get prefExportData => 'Xuất dữ liệu';

  @override
  String get prefCustomThemes => 'Chủ đề tùy chỉnh';

  @override
  String get prefMonthlyBudget => 'Ngân sách hàng tháng tổng thể';

  @override
  String get prefAIAssistant => 'Trợ lý AI cá nhân';

  @override
  String get prefUnlimitedPantry => 'Phòng đựng thức ăn không giới hạn';

  @override
  String get prefInteractiveArtifacts => 'Tạo phẩm AI tương tác';

  @override
  String get themeGreen => 'Xanh lá';

  @override
  String get themeBlue => 'Xanh dương';

  @override
  String get themePurple => 'Tím';

  @override
  String get themeRed => 'Đỏ';

  @override
  String get themeOrange => 'Cam';

  @override
  String get themePink => 'Hồng';

  @override
  String get themeIndigo => 'Chàm';

  @override
  String get themeAmber => 'Hổ phách';

  @override
  String get themeTeal => 'Xanh mòng két';

  @override
  String get themeBrown => 'Nâu';

  @override
  String get catFruits => 'Trái cây';

  @override
  String get catCleaning => 'Vệ sinh';

  @override
  String get catBeverages => 'Đồ uống';

  @override
  String get catBakery => 'Bánh mì';

  @override
  String get catOthers => 'Khác';

  @override
  String get unitPack => 'gói';

  @override
  String get shareSubject => 'Danh sách mua sắm';

  @override
  String get monthlyBudgetTitle => 'Ngân sách hàng tháng';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'Xóa danh sách';

  @override
  String get pantryItemRemoved => 'Đã xóa mục';

  @override
  String deficitItems(int deficit) {
    return 'Cần mua $deficit mục';
  }

  @override
  String get cartTotal => 'Tổng giỏ hàng';

  @override
  String get restockLabel => 'Bổ sung';

  @override
  String get advancedFeatures => 'Tính năng nâng cao';

  @override
  String get selectAll => 'Chọn tất cả';

  @override
  String get deselectAll => 'Bỏ chọn tất cả';

  @override
  String get monthlyBudgetAppBar => 'Ngân sách hàng tháng';

  @override
  String get budgetEditTitle => 'Ngân sách hàng tháng';

  @override
  String get budgetDashboardTitle => 'Bảng điều khiển';

  @override
  String get selectListForDashboard =>
      'Chọn một danh sách để xem bảng điều khiển.';

  @override
  String get spendingAnalysis => 'Phân tích chi tiêu';

  @override
  String get noItemsToAnalyze =>
      'Không có mục nào trong danh sách để phân tích.';

  @override
  String get markItemsToSeeAnalysis => 'Đánh dấu mục đã mua để xem phân tích.';

  @override
  String get totalSpending => 'Tổng chi tiêu';

  @override
  String get spendingByCategory => 'Chi tiêu theo danh mục';

  @override
  String get achievements => 'Thành tích';

  @override
  String get exportPdfExcel => 'Xuất PDF/Excel';

  @override
  String get exportPdf => 'Xuất dưới dạng PDF';

  @override
  String get exportExcel => 'Xuất dưới dạng Excel';

  @override
  String get organizingAi => 'ĐANG SẮP XẾP VỚI AI...';

  @override
  String get yesLabel => 'Có';

  @override
  String get noLabel => 'Không';

  @override
  String get shareListText => 'Danh sách mua sắm của tôi';

  @override
  String get emptyListAddItems =>
      'Danh sách của bạn trống! Vui lòng thêm mục trước. ℹ️';

  @override
  String get listOrganizedMagic =>
      'Danh sách đã được sắp xếp kỳ diệu theo danh mục! ✨';

  @override
  String get shoppingMode => 'Chế độ mua sắm';

  @override
  String get smartOrganization => 'Sắp xếp thông minh';

  @override
  String get savings => 'Tiết kiệm';

  @override
  String get shoppingModeHeader => 'CHẾ ĐỘ MUA SẮM';

  @override
  String get shareAsText => 'Gửi mục dưới dạng văn bản đã định dạng';

  @override
  String get shareRealtime => 'Đồng bộ thời gian thực với người khác';

  @override
  String get quickRecipe => 'Công thức nhanh';

  @override
  String get quickRecipePrompt =>
      'Đề xuất công thức nấu ăn với các mục từ danh sách của tôi.';

  @override
  String get economyTips => 'Mẹo tiết kiệm';

  @override
  String get economyTipsPrompt =>
      'Làm thế nào tôi có thể tiết kiệm tiền cho lần mua này?';

  @override
  String get organizeAisles => 'Sắp xếp theo lối đi';

  @override
  String get organizeAislesPrompt => 'Sắp xếp theo lối đi trong siêu thị.';

  @override
  String get recipeSuggestion => 'Gợi ý công thức';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'Còn $remaining tín dụng';
  }

  @override
  String get addAllToList => 'Thêm tất cả vào danh sách';

  @override
  String get organizeByAisles => 'Sắp xếp theo lối đi';

  @override
  String get voiceTranscriptionTooltip => 'Nhập liệu bằng giọng nói (Miễn phí)';

  @override
  String get aiVoiceCommandTooltip => 'Lệnh thoại AI (Cao cấp)';

  @override
  String get voiceCommandTitle => 'Lệnh thoại AI';

  @override
  String get voiceCommandContent =>
      'Nói tự nhiên để quản lý danh sách của bạn!\n\nVí dụ:\n• \'Thêm bánh mì, phô mai và giăm bông\'\n• \'Xóa bột giặt\'\n• \'Đổi chủ đề thành xanh dương\'\n\nĐây là tính năng độc quyền của KipiList Premium.';

  @override
  String get voiceCommandPlanBtn => 'Xem gói';

  @override
  String get itemsAddedSuccess => 'Đã thêm mục vào danh sách thành công!';

  @override
  String get viewList => 'Xem danh sách';

  @override
  String get feedbackTitle => 'Gửi phản hồi';

  @override
  String get feedbackPrompt => 'Bạn muốn chia sẻ điều gì?';

  @override
  String get feedbackTypeBug => 'Báo lỗi';

  @override
  String get feedbackTypeBugHint => 'Có điều gì đó không hoạt động';

  @override
  String get feedbackTypeSuggestion => 'Góp ý';

  @override
  String get feedbackTypeSuggestionHint => 'Ý tưởng cải thiện ứng dụng';

  @override
  String get feedbackTypeTranslation => 'Vấn đề bản dịch';

  @override
  String get feedbackTypeTranslationHint =>
      'Bản dịch không chính xác hoặc gượng ép';

  @override
  String get feedbackTypeFeature => 'Yêu cầu tính năng';

  @override
  String get feedbackTypeFeatureHint => 'Tính năng bạn muốn thấy';

  @override
  String get feedbackTypeOther => 'Khác';

  @override
  String get feedbackTypeOtherHint => 'Loại phản hồi khác';

  @override
  String get feedbackHint => 'Mô tả chi tiết phản hồi của bạn...';

  @override
  String get feedbackSend => 'Gửi phản hồi';

  @override
  String get feedbackSending => 'Đang gửi...';

  @override
  String get feedbackThankYou => 'Cảm ơn bạn!';

  @override
  String get feedbackThankYouMessage =>
      'Phản hồi của bạn đã được nhận và giúp chúng tôi cải thiện KipiList cho mọi người.';

  @override
  String get feedbackBack => 'Quay lại';

  @override
  String feedbackError(String error) {
    return 'Lỗi gửi: $error';
  }

  @override
  String get feedbackRetry => 'Thử lại';

  @override
  String get feedbackSettingsTitle => 'Gửi phản hồi';

  @override
  String get feedbackSettingsSubtitle =>
      'Báo lỗi, đề xuất cải tiến hoặc sửa bản dịch';

  @override
  String get aiEnergy => 'Năng lượng AI';

  @override
  String get searchInConversation => 'Tìm kiếm trong cuộc trò chuyện...';

  @override
  String get noMessagesFound => 'Không tìm thấy tin nhắn nào';

  @override
  String get suggestedQuestions => 'Các câu hỏi gợi ý:';

  @override
  String get shoppingAssistant => 'Trợ lý mua sắm';

  @override
  String itemsPurchasedCount(int purchased, int total) {
    return '$purchased trong tổng số $total đã mua';
  }

  @override
  String get estimatedCost => 'Ước lượng';

  @override
  String get viewItems => 'Xem các mục';

  @override
  String get noItemsInList => 'Không có mục nào trong danh sách';

  @override
  String get longHistoryWarning =>
      'Lịch sử lâu dài: trợ lý tập trung vào các tin nhắn mới nhất để có hiệu suất tốt hơn.';

  @override
  String get listening => 'Đang nghe...';

  @override
  String get addDirectToList => 'Thêm trực tiếp vào danh sách';

  @override
  String get unlockFullResponse => 'Mở khóa phản hồi đầy đủ';

  @override
  String get switchList => 'Chuyển đổi danh sách';

  @override
  String get marketMode => 'Chế độ thị trường';

  @override
  String get backToChat => 'Quay lại Trò chuyện';

  @override
  String get finishShopping => 'Kết thúc mua sắm';

  @override
  String get welcomeAiAssistant => 'Chào mừng bạn đến với Trợ lý AI';

  @override
  String get createListToStartAi =>
      'Tạo danh sách mua sắm để bắt đầu sử dụng tính năng trò chuyện thông minh.';

  @override
  String get howCanIHelp => 'Tôi có thể giúp gì?';

  @override
  String get chatSubtitleShort =>
      'Hỏi về giá cả, công thức nấu ăn, cách tổ chức...';

  @override
  String itemsPurchasedShort(int purchased, int total) {
    return '$purchased/$total đã mua';
  }

  @override
  String get quickReplies => 'Trả lời nhanh:';

  @override
  String get voiceProFeature =>
      'Lệnh thoại nâng cao là Pro. Đang bật tính năng đọc chính tả cơ bản...';

  @override
  String get viewPro => 'Xem chuyên nghiệp';

  @override
  String get errorLoadingChat => 'Ối! Đã xảy ra lỗi khi tải cuộc trò chuyện.';

  @override
  String get errorLoadingChatSubtitle =>
      'Hãy kiểm tra kết nối của bạn hoặc thử lại sau.';

  @override
  String get errorOscillation =>
      'Điều này có thể xảy ra do dao động mạng hoặc tạm thời không có sẵn. Vui lòng thử lại.';

  @override
  String get activeListening => 'Lắng nghe tích cực';

  @override
  String get whatToDoWithItem => 'Bạn muốn làm gì với mặt hàng này?';

  @override
  String get viewDetails => 'Xem chi tiết';

  @override
  String get openMenu => 'Mở trình đơn';

  @override
  String get viewRecipe => 'Xem công thức';

  @override
  String get recipeCreated => 'Công thức đã được tạo!';

  @override
  String get editRecipe => 'Biên tập';

  @override
  String get deleteRecipe => 'Xóa bỏ';

  @override
  String get deleteRecipeConfirm => 'Xóa công thức này?';

  @override
  String deleteRecipeConfirmMsg(String recipeName) {
    return 'Bạn có chắc chắn muốn xóa \"$recipeName\" không? Không thể hoàn tác hành động này.';
  }

  @override
  String get ingredients => 'Thành phần';

  @override
  String get instructions => 'Hướng dẫn';

  @override
  String get prepTime => 'thời gian chuẩn bị';

  @override
  String get recipeSaved => 'Đã lưu công thức!';

  @override
  String get noRecipesSaved => 'Không có công thức nấu ăn nào được lưu';

  @override
  String get noRecipesSavedHint =>
      'Tạo công thức tùy chỉnh đầu tiên của bạn bằng cách nhấn vào nút bên dưới.';

  @override
  String get myRecipes => 'Bí quyết của tôi';

  @override
  String get newRecipe => 'Công thức mới';

  @override
  String get loadingRecipes => 'Đang tải công thức nấu ăn của bạn...';

  @override
  String get errorLoadingRecipes => 'Lỗi tải công thức nấu ăn';

  @override
  String get addIngredient => 'Thêm thành phần';

  @override
  String get saveRecipe => 'Cứu';

  @override
  String get recipeName => 'Tên công thức';

  @override
  String get shortDescription => 'Mô tả ngắn';

  @override
  String get prepTimeMinutes => 'Thời gian chuẩn bị (phút)';

  @override
  String get instructionsHint => 'Nhập một bước trên mỗi dòng...';

  @override
  String get addPhoto => 'Thêm ảnh';

  @override
  String get imageUrlPlaceholder => 'Hoặc dán URL hình ảnh';

  @override
  String get tags => 'Thẻ';

  @override
  String get recipeTags => 'Thẻ công thức';

  @override
  String get suggestedTags => 'được đề xuất';

  @override
  String get searchRecipes => 'Tìm kiếm công thức nấu ăn...';

  @override
  String get filterByTag => 'Lọc theo thẻ';

  @override
  String get allTags => 'Tất cả';

  @override
  String get recipeDeleted => 'Đã xóa công thức';

  @override
  String get saveChanges => 'Lưu thay đổi';

  @override
  String get editRecipeTitle => 'Chỉnh sửa công thức';

  @override
  String get newRecipeTitle => 'Công thức mới';

  @override
  String get requiredField => 'Yêu cầu';

  @override
  String get chooseImageSource => 'Chọn nguồn hình ảnh';

  @override
  String get gallery => 'Phòng trưng bày';

  @override
  String get enterUrl => 'Nhập URL';

  @override
  String get recipeImage => 'Hình ảnh công thức';

  @override
  String get removeImage => 'Xóa hình ảnh';

  @override
  String get mealPlannerTitle => 'Kế hoạch bữa ăn';

  @override
  String get mealPlannerViewMonthly => 'Lượt xem hàng tháng';

  @override
  String get mealPlannerViewWeekly => 'Xem hàng tuần';

  @override
  String get mealPlannerNoMeals => 'Không có kế hoạch bữa ăn';

  @override
  String get mealPlannerNoMealsHint => 'Nhấn vào một ngày để thêm bữa ăn';

  @override
  String get mealPlannerLoading => 'Đang tải kế hoạch bữa ăn...';

  @override
  String get mealPlannerError => 'Lỗi tải kế hoạch bữa ăn';

  @override
  String get mealPlannerAddMeal => 'Thêm bữa ăn';

  @override
  String get mealPlannerEditMeal => 'Chỉnh sửa bữa ăn';

  @override
  String get mealPlannerDeleteMeal => 'Bỏ bữa ăn';

  @override
  String get mealPlannerMealDeleted => 'Đã bỏ bữa ăn';

  @override
  String mealPlannerServings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count khẩu phần',
      one: '$count khẩu phần',
    );
    return '$_temp0';
  }

  @override
  String get mealPlannerServingsLabel => 'Khẩu phần';

  @override
  String get mealPlannerNoteLabel => 'Lưu ý (tùy chọn)';

  @override
  String get mealPlannerSelectRecipe => 'Chọn một công thức';

  @override
  String get mealPlannerSearchRecipes => 'Tìm kiếm công thức nấu ăn...';

  @override
  String get mealPlannerNoRecipesFound => 'Không tìm thấy công thức nấu ăn nào';

  @override
  String get mealPlannerNoRecipesHint =>
      'Tạo công thức nấu ăn trong tab Công thức nấu ăn trước tiên';

  @override
  String get mealPlannerSave => 'Thêm vào kế hoạch';

  @override
  String mealPlannerWeekProgress(int count, int total) {
    return '$count trong số $total bữa ăn được lên kế hoạch';
  }

  @override
  String get mealPlannerGenerateList => 'Tạo danh sách mua sắm';

  @override
  String get mealPlannerGenerateListConfirm =>
      'Thêm tất cả nguyên liệu từ các bữa ăn đã lên kế hoạch trong tuần này vào danh sách mua sắm của bạn?';

  @override
  String mealPlannerGenerateListSuccess(int count) {
    return '$count thành phần đã được thêm vào danh sách của bạn!';
  }

  @override
  String get mealPlannerGenerateListEmpty =>
      'Không có thành phần để thêm vào. Lên kế hoạch cho một số bữa ăn với công thức nấu ăn trước tiên.';

  @override
  String get mealPlannerGenerateListNoList =>
      'Tạo một danh sách mua sắm đầu tiên.';

  @override
  String get mealPlannerMealTypeBreakfast => 'Bữa sáng';

  @override
  String get mealPlannerMealTypeLunch => 'Bữa trưa';

  @override
  String get mealPlannerMealTypeDinner => 'Bữa tối';

  @override
  String get mealPlannerMealTypeSnack => 'Đồ ăn vặt';

  @override
  String get mealPlannerDateLabel => 'Ngày';

  @override
  String get mealPlannerWeekEmpty => 'Không có kế hoạch gì cho tuần này';

  @override
  String get mealPlannerWeekEmptyHint =>
      'Nhấn vào bất kỳ ngày nào để bắt đầu lên kế hoạch cho bữa ăn của bạn!';

  @override
  String mealPlannerPrepTime(int minutes) {
    return '$minutes phút';
  }

  @override
  String get inviteToList => 'Mời liệt kê';

  @override
  String get shareApp => 'Chia sẻ ứng dụng';

  @override
  String get shareAppDescription => 'Mời bạn bè sử dụng KipiList';

  @override
  String shareReferralText(Object url) {
    return 'Tôi đang sử dụng KipiList để sắp xếp việc mua sắm của mình! Tải xuống qua liên kết của tôi và cả hai chúng ta đều nhận được 7 ngày dùng Premium miễn phí: $url';
  }

  @override
  String get shareReferralSubject => 'Nhận 7 ngày sử dụng KipiList Premium!';
}
