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
  String get navChat => 'Trò chuyện';

  @override
  String get navRecipes => 'Công thức';

  @override
  String get navLists => 'Danh sách';

  @override
  String get navMealPlanner => 'Thực đơn';

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
  String get profile => 'Hồ sơ';

  @override
  String get exitShoppingMode => 'Thoát chế độ mua sắm';

  @override
  String get exit => 'Ra';

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
  String get scanProductTitle => 'Scan Product';

  @override
  String get positionBarcodeCenter => 'Đặt mã vạch ở giữa';

  @override
  String get product => 'Product';

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
  String get myAchievements => 'Thành tích của tôi';

  @override
  String get itemsPurchased => 'Các mặt hàng đã mua';

  @override
  String get totalSavings => 'Tổng số tiền tiết kiệm';

  @override
  String get currentStreak => 'Chuỗi hiện tại';

  @override
  String streakDays(int count) {
    return '$days ngày';
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
  String get chatHintBlocked => 'Mở khóa AI để trò chuyện';

  @override
  String chatError(String error) {
    return 'Lỗi khi tải trò chuyện: $error';
  }

  @override
  String get aiAssistantTitle => 'AI Assistant';

  @override
  String get closeSheet => 'Close';

  @override
  String get scanBarcodeTitle => 'Scan Barcode';

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
  String get aiLimitAlmostReached => 'Gần hết tin nhắn AI';

  @override
  String get unlockAi => 'Mở khóa AI không giới hạn';

  @override
  String get aiTeaserFallback =>
      'Đăng ký Premium để nhận được phản hồi đầy đủ và nhận các mẹo AI không giới hạn cho hoạt động mua sắm của bạn...';

  @override
  String aiUsageWarning(int remaining) {
    return '$remaining Hành động AI còn lại trong tháng này — nâng cấp không giới hạn';
  }

  @override
  String get aiUsageExhausted =>
      'Đã đạt đến giới hạn AI hàng tháng. Nâng cấp lên Pro không giới hạn →';

  @override
  String get kipiListTitle => 'KipiDanh sách';

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
  String get onboardingMaybeLater => 'Có lẽ sau này';

  @override
  String paywallHeroSubtitlePersonalized(String name) {
    return 'Này $name, hãy sắp xếp việc mua sắm của bạn đúng cách nhé.';
  }

  @override
  String get onboardingSlide1Title => 'Danh sách mua sắm thông minh';

  @override
  String get onboardingSlide1Body =>
      'Tạo và chia sẻ danh sách ngay lập tức. Kipi tự động thêm vật phẩm dựa trên thói quen của bạn.';

  @override
  String get onboardingSlide2Title => 'Gặp gỡ Kipi';

  @override
  String get onboardingSlide2Body =>
      'Hỏi bất cứ điều gì - tạo danh sách, tìm công thức nấu ăn, theo dõi tủ đựng thức ăn của bạn, lên kế hoạch cho tuần của bạn.';

  @override
  String get onboardingSlide3Title => 'Kế hoạch phòng đựng thức ăn & bữa ăn';

  @override
  String get onboardingSlide3Body =>
      'Theo dõi những gì bạn có, lên kế hoạch cho bữa ăn và tự động tạo danh sách mua sắm.';

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
  String get paywallLoadingError => 'Lỗi tải phiếu mua hàng. Hãy thử lại.';

  @override
  String get paywallPurchaseError =>
      'Không thể hoàn tất việc mua hàng. Hãy thử lại.';

  @override
  String get paywallRestoreError =>
      'Không tìm thấy đăng ký hoạt động nào để khôi phục.';

  @override
  String paywallTrialDays(Object days) {
    return '$days NGÀY MIỄN PHÍ';
  }

  @override
  String paywallTrialWeeks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count TUẦN MIỄN PHÍ',
      one: '$count TUẦN MIỄN PHÍ',
    );
    return '$_temp0';
  }

  @override
  String paywallTrialMonths(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count THÁNG MIỄN PHÍ',
      one: '$count THÁNG MIỄN PHÍ',
    );
    return '$_temp0';
  }

  @override
  String get paywallTrialTitle => 'Hãy thử miễn phí!';

  @override
  String get paywallTrialSubtitle =>
      'Hủy bỏ bất cứ lúc nào. Hôm nay không tính phí.';

  @override
  String get paywallTrialCta => 'Bắt đầu dùng thử miễn phí';

  @override
  String get recipeAddToList => 'Thêm vào danh sách mua sắm';

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
      'Không có danh sách nào được chọn. Mở một danh sách đầu tiên.';

  @override
  String get paywallFeaturesTitle => 'Mọi thứ bạn cần:';

  @override
  String get paywallFeatureDescAssistant =>
      'AI tự động sắp xếp danh sách của bạn';

  @override
  String get paywallFeatureDescUnlimitedLists =>
      'Tạo nhiều danh sách như bạn cần';

  @override
  String get paywallFeatureDescSharing =>
      'Mua sắm cùng nhau trong thời gian thực';

  @override
  String get paywallFeatureDescPantry => 'Theo dõi những gì bạn có ở nhà';

  @override
  String get paywallFeatureDescBudget => 'Duy trì ngân sách hàng tháng';

  @override
  String get paywallFeatureUnlimitedLists => 'Danh sách không giới hạn';

  @override
  String get paywallFeatureSmartAI => 'AI thông minh';

  @override
  String get paywallFeatureExpenseControl => 'Kiểm soát chi phí';

  @override
  String get paywallFeatureSharing => 'Chia sẻ';

  @override
  String get paywallBeforeAfterTitle => 'AI trước và sau:';

  @override
  String get paywallLabelCommon => 'Chung';

  @override
  String get paywallLabelPro => 'KipiList PRO';

  @override
  String get paywallBeforeItem1 => 'cơm';

  @override
  String get paywallBeforeItem2 => 'xà phòng';

  @override
  String get paywallBeforeItem3 => 'thịt';

  @override
  String get paywallBeforeItem4 => 'bánh mỳ';

  @override
  String get paywallAfterItem1 => 'Ngũ cốc';

  @override
  String get paywallAfterItem2 => 'Vệ sinh';

  @override
  String get paywallAfterItem3 => 'Thịt';

  @override
  String get paywallAfterItem4 => 'tiệm bánh';

  @override
  String get paywallTestimonialsTitle => 'Người dùng của chúng tôi nói gì:';

  @override
  String get paywallTestimonial1Name => 'Ann S.';

  @override
  String get paywallTestimonial1Text =>
      'AI tổ chức việc mua sắm của tôi trong vài giây. Tôi tiết kiệm được 20 phút cho mỗi chuyến đi chợ.';

  @override
  String get paywallTestimonial2Name => 'Charles M.';

  @override
  String get paywallTestimonial2Text =>
      'Tôi không bao giờ quên một mục danh sách nữa. Trò chuyện AI thật giật gân!';

  @override
  String get paywallSocialProof => '+2.400 gia đình sử dụng';

  @override
  String get paywallCtaUnlock => 'Mở khóa CHUYÊN NGHIỆP';

  @override
  String get paywallBestValue => 'GIÁ TRỊ TỐT NHẤT';

  @override
  String get paywallMostPopular => 'PHỔ BIẾN NHẤT';

  @override
  String get paywallProLabel => 'CHUYÊN NGHIỆP';

  @override
  String get paywallSafeCheckout => 'Thanh toán an toàn';

  @override
  String get paywallSelectPlan => 'Chọn kế hoạch của bạn:';

  @override
  String paywallSavePercent(Object percent) {
    return 'TIẾT KIỆM $percent%';
  }

  @override
  String paywallPricePerMonth(Object price) {
    return 'Chỉ $price/tháng';
  }

  @override
  String get paywallPackageAnnual => 'Gói hàng năm';

  @override
  String get paywallPackageMonthly => 'Gói hàng tháng';

  @override
  String get paywallPackageLifetime => 'Truy cập trọn đời';

  @override
  String get paywallCancelAnytime => 'Hủy bỏ bất cứ lúc nào. Không có cam kết.';

  @override
  String paywallTrialInCard(int days) {
    return '$days ngày đầu tiên MIỄN PHÍ';
  }

  @override
  String get paywallSecuredByStore =>
      'Được bảo mật bởi Google Play · Hủy bất cứ lúc nào';

  @override
  String get paywallPolicy => 'Chính sách bảo mật';

  @override
  String get paywallTerms => 'Điều khoản sử dụng';

  @override
  String get paywallRestore => 'Khôi phục';

  @override
  String get paywallHeroHeadline => 'Kipi AI luôn bên cạnh bạn';

  @override
  String get paywallHeroSubtitle =>
      'Thêm mục, sắp xếp danh sách và tiết kiệm thời gian với AI trong túi của bạn';

  @override
  String get paywallBenefit1Desc => 'Thêm, sắp xếp và đề xuất các mục 24/7';

  @override
  String get paywallBenefit2Desc => 'Không giới hạn 3 danh sách';

  @override
  String get paywallBenefit3Desc => 'Theo dõi chi phí và danh sách gia đình';

  @override
  String get paywallPackageMonthlyDesc => 'Hoàn toàn linh hoạt';

  @override
  String paywallCtaTrialDays(int days) {
    return 'Bắt đầu miễn phí — $days ngày';
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
  String shareReferralText(String url) {
    return 'Tôi đang sử dụng KipiList để sắp xếp việc mua sắm của mình! Tải xuống qua liên kết của tôi và cả hai chúng ta đều nhận được 7 ngày dùng Premium miễn phí: $url';
  }

  @override
  String get shareReferralSubject => 'Nhận 7 ngày sử dụng KipiList Premium!';

  @override
  String get gestureHint => 'Giữ để chọn • Vuốt để xóa';

  @override
  String get catalogTitle => 'Danh mục';

  @override
  String get catalogMyFrequents => 'Người thường xuyên của tôi';

  @override
  String get catalogSearchGlobal => 'Tìm kiếm bất kỳ sản phẩm...';

  @override
  String catalogSearchInCategory(String category) {
    return 'Tìm kiếm trong $category...';
  }

  @override
  String get catalogSortPopular => 'Phổ biến nhất';

  @override
  String get catalogSortAZ => 'A–Z';

  @override
  String get catalogFilterNational => 'Quốc tịch';

  @override
  String get catalogRareSection => 'ít phổ biến hơn ở nước bạn';

  @override
  String catalogAddItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'items',
      one: 'item',
    );
    return 'Thêm $count $_temp0 →';
  }

  @override
  String get catalogProductNotFound => 'Không tìm thấy sản phẩm, gõ tên';

  @override
  String get catalogBrowse => 'Duyệt danh mục';

  @override
  String get offlineBanner => 'Bạn đang ngoại tuyến';

  @override
  String get consentTitle => 'Quyền riêng tư & Phân tích';

  @override
  String get consentBody =>
      'KipiList sử dụng Firebase Analytics để cải thiện trải nghiệm của bạn. Dữ liệu của bạn được xử lý theo Chính sách quyền riêng tư của chúng tôi.';

  @override
  String get consentAccept => 'Chấp nhận';

  @override
  String get consentDecline => 'Không, cảm ơn';

  @override
  String get mealPlannerPantryAllAvailable => 'Tất cả các thành phần có sẵn';

  @override
  String mealPlannerPantryMissing(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ingredients',
      one: 'ingredient',
    );
    return '$count $_temp0 bị thiếu';
  }

  @override
  String get expirationDate => 'Ngày hết hạn';

  @override
  String get notInformed => 'Chưa đặt';

  @override
  String get skip => 'Nhảy';

  @override
  String get onboardingAiTitle => 'Trò chuyện với Kipi';

  @override
  String get onboardingAiGreeting =>
      'CHÀO! Tôi là Kipi, trợ lý mua sắm cá nhân của bạn! 🛒';

  @override
  String get onboardingAiAskName => 'Bạn tên là gì?';

  @override
  String get onboardingAiNameHint => 'Nhập tên của bạn...';

  @override
  String onboardingAiNiceToMeet(String name) {
    return 'Rất vui được gặp bạn, $name! 🎉';
  }

  @override
  String get onboardingAiAskFood => 'Món ăn yêu thích của bạn là gì?';

  @override
  String get onboardingAiFoodHint => 'ví dụ. Pizza, Sushi...';

  @override
  String onboardingAiIngredients(String ingredients) {
    return 'Những lựa chọn tuyệt vời! Đây là những gì tôi muốn thêm vào danh sách của bạn:\n\n$ingredients\n\n---';
  }

  @override
  String get onboardingAiAskConfirm =>
      'Điều này có vẻ tốt? Hãy thử gõ cái gì khác!';

  @override
  String get onboardingAiReady =>
      'Tuyệt vời! Bạn đã sẵn sàng để bắt đầu. Hãy thiết lập tài khoản của bạn!';

  @override
  String get onboardingAiContinue => 'Tiếp tục →';

  @override
  String get connectionError => 'Lỗi kết nối';

  @override
  String connectionErrorDesc(String error) {
    return 'Không thể kết nối với máy chủ. Kiểm tra internet của bạn.\n($error)';
  }

  @override
  String get errorLoadingLists => 'Lỗi tải danh sách';

  @override
  String get noListsFound => 'Không tìm thấy danh sách nào';

  @override
  String get backToToday => 'Trở lại hôm nay';

  @override
  String get quickSuggestions => 'Gợi ý nhanh';

  @override
  String get aiEnergyLow => 'Năng lượng AI thấp';

  @override
  String get aiUnlockUnlimited => 'Mở khóa AI không giới hạn';

  @override
  String aiRemainingFreeToday(int remaining) {
    String _temp0 = intl.Intl.pluralLogic(
      remaining,
      locale: localeName,
      other: 'free messages',
      one: 'free message',
    );
    return '$remaining $_temp0 hôm nay';
  }

  @override
  String get aiSubscribeUnlimited => 'Đăng ký AI không giới hạn';

  @override
  String get unlockWithAd => 'Mở khóa bằng quảng cáo';

  @override
  String get conversationHistoryTitle => 'Lịch sử cuộc trò chuyện';

  @override
  String get noConversationsFound => 'Không tìm thấy cuộc trò chuyện nào';

  @override
  String get errorLoadingHistory => 'Lỗi tải lịch sử';

  @override
  String get deleteConversationTitle => 'Xóa cuộc trò chuyện?';

  @override
  String get deleteConversationConfirm => 'Không thể hoàn tác hành động này.';

  @override
  String get deleteConversation => 'Xóa bỏ';

  @override
  String get subscription => 'Đăng ký';

  @override
  String get kipiListProActive => 'KipiList Pro Active';

  @override
  String get unlockPremiumTitle =>
      'Mở khóa danh sách không giới hạn, AI và hơn thế nữa';

  @override
  String get loadingSubscription => 'Đang tải đăng ký...';

  @override
  String get errorLoadingSubscription => 'Lỗi tải đăng ký';

  @override
  String get profileSection => 'Hồ sơ';

  @override
  String get myProfile => 'Hồ sơ của tôi';

  @override
  String get profileSubtitle => 'Sở thích cá nhân dành cho trợ lý AI';

  @override
  String get customizeAiAssistant => 'Tùy chỉnh trợ lý AI';

  @override
  String get assistantHistory => 'Lịch sử trợ lý';

  @override
  String get assistantHistorySubtitle => 'Xem lịch sử cuộc trò chuyện của bạn';

  @override
  String get manageCategories => 'Quản lý danh mục';

  @override
  String get manageCategoriesSubtitle => 'Quản lý danh mục mặt hàng';

  @override
  String get customizeAssistant => 'Tùy chỉnh';

  @override
  String get assistantName => 'Tên trợ lý';

  @override
  String get chooseIcon => 'Chọn biểu tượng';

  @override
  String get profileSaved => 'Hồ sơ đã được lưu thành công!';

  @override
  String get errorSavingProfile => 'Lỗi lưu: null';

  @override
  String get userProfile => 'Hồ sơ người dùng';

  @override
  String get profileDescription =>
      'Hãy cho chúng tôi biết sở thích cá nhân của bạn để trợ lý AI có thể đề xuất các món và công thức nấu ăn được cá nhân hóa.';

  @override
  String get preferredMarket => 'Thị trường ưa thích';

  @override
  String get preferredMarketHint => 'Ví dụ: Siêu thị X';

  @override
  String get dietaryRestrictions => 'Hạn chế về chế độ ăn uống';

  @override
  String get dietaryRestrictionsHint =>
      'Ví dụ: thuần chay, ăn chay, không chứa gluten';

  @override
  String get marketsToAvoid => 'Thị trường cần tránh';

  @override
  String get marketsToAvoidHint => 'Ví dụ: Thị trường Y, Thị trường Z';

  @override
  String get observations => 'Ghi chú';

  @override
  String get observationsHint => 'Các ưu tiên khác dành cho trợ lý';

  @override
  String get saveProfile => 'Lưu hồ sơ';

  @override
  String get everythingReady => 'Mọi thứ đã sẵn sàng!';

  @override
  String get youCompletedList => 'Bạn đã hoàn thành danh sách!';

  @override
  String get selectCheaperAlternative =>
      'Chọn sản phẩm thay thế rẻ hơn để tối ưu hóa chi phí.';

  @override
  String get suggestedItems => 'Các mục được đề xuất';

  @override
  String get swapped => 'Đã hoán đổi';

  @override
  String get swap => 'Tráo đổi';

  @override
  String get chooseThemeColor => 'Chọn màu chủ đề';

  @override
  String get manageCategoriesTitle => 'Quản lý danh mục';

  @override
  String get categoryLimitReached =>
      'Giới hạn 10 danh mục trên phiên bản miễn phí. Nâng cấp lên Pro!';

  @override
  String get deleteCategoryTitle => 'Xóa danh mục';

  @override
  String deleteCategoryConfirm(String category) {
    return 'Các mục trong danh mục \"$category\" sẽ được chuyển sang \"Khác\".\nTiếp tục?';
  }

  @override
  String get deleteCategory => 'Xóa bỏ';

  @override
  String get newCategoryDialog => 'Danh mục mới';

  @override
  String get editCategoryDialog => 'Chỉnh sửa danh mục';

  @override
  String get categoryName => 'Tên danh mục';

  @override
  String get categoryNameHint => 'Ví dụ: Thịt';

  @override
  String get categoryColorLabel => 'Màu sắc';

  @override
  String get categoryIconLabel => 'Biểu tượng';

  @override
  String itemAddedSnack(String name) {
    return '$name đã thêm';
  }

  @override
  String get kipiQuickBarHint => 'Bạn cần mua gì?';

  @override
  String replaceItem(String item) {
    return 'Thay thế $item';
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
      'Không bao giờ quên một món hàng tạp hóa nữa';

  @override
  String get onboardingGoalSaveMoney => 'Tiết kiệm tiền';

  @override
  String get onboardingGoalNeverForget => 'Không bao giờ quên đồ vật';

  @override
  String get onboardingGoalFaster => 'Mua sắm nhanh hơn';

  @override
  String get onboardingGoalFamily => 'Tổ chức mua sắm gia đình';

  @override
  String get onboardingGoalRecipes => 'Khám phá công thức nấu ăn';

  @override
  String get onboardingGoalPantry => 'Theo dõi phòng đựng thức ăn';

  @override
  String get onboardingCommitmentsTitle => 'Điều gì quan trọng với bạn?';

  @override
  String get onboardingCommitmentsSubtitle =>
      'Chọn mục tiêu của bạn để cá nhân hóa KipiList';

  @override
  String get onboardingCommitmentsCta => 'Đi thôi!';

  @override
  String get onboardingPersonalizationNameLabel => 'Tên của bạn';

  @override
  String get onboardingPersonalizationNameHint => 'Nhập tên của bạn';

  @override
  String get onboardingPersonalizationCategoryTitle => 'Bạn mua sắm để làm gì?';

  @override
  String get onboardingPersonalizationGroupTitle => 'Bạn mua sắm cho ai?';

  @override
  String get onboardingCategoryGrocery => 'Cửa hàng tạp hóa';

  @override
  String get onboardingCategoryPharmacy => 'Hiệu thuốc';

  @override
  String get onboardingCategoryRecipes => 'Công thức nấu ăn';

  @override
  String get onboardingCategoryHome => 'Trang chủ';

  @override
  String get onboardingCategoryPet => 'Thú cưng';

  @override
  String get onboardingGroupSolo => 'Chỉ có tôi';

  @override
  String get onboardingGroupCouple => 'Cặp đôi';

  @override
  String get onboardingGroupFamily => 'Gia đình';

  @override
  String get onboardingLoadingTitle => 'Chuẩn bị trải nghiệm...';

  @override
  String get onboardingLoadingStep1 => 'Đang phân tích sở thích của bạn...';

  @override
  String get onboardingLoadingStep2 => 'Đang thiết lập trợ lý AI...';

  @override
  String get onboardingLoadingStep3 => 'Gần như đã sẵn sàng...';

  @override
  String get onboardingLoadingStat1Label => 'Các mặt hàng được phân loại';

  @override
  String get onboardingLoadingStat2Label => 'Người dùng đã trợ giúp';

  @override
  String get onboardingLoadingStat3Label => 'Đã lưu số phút';

  @override
  String paywallGoalHeadlineSaveMoney(String name) {
    return '$name, tiết kiệm cho mỗi chuyến đi!';
  }

  @override
  String paywallGoalHeadlineNeverForget(String name) {
    return '$name, đừng bao giờ quên một món đồ nào!';
  }

  @override
  String paywallGoalHeadlineFaster(String name) {
    return '$name, mua sắm chỉ trong một nửa thời gian!';
  }

  @override
  String paywallGoalHeadlineFamily(String name) {
    return '$name, tổ chức mua sắm cho gia đình nhé!';
  }

  @override
  String paywallGoalHeadlineRecipes(String name) {
    return '$name, khám phá công thức nấu ăn mới!';
  }

  @override
  String paywallGoalHeadlinePantry(String name) {
    return '$name, hãy theo dõi tủ đựng thức ăn của bạn một cách hoàn hảo!';
  }

  @override
  String get paywallGoalHeadlineNoNameSaveMoney =>
      'Tiết kiệm trên mỗi chuyến đi!';

  @override
  String get paywallGoalHeadlineNoNameNeverForget =>
      'Không bao giờ quên một món đồ!';

  @override
  String get paywallGoalHeadlineNoNameFaster =>
      'Mua sắm trong một nửa thời gian!';

  @override
  String get paywallGoalHeadlineNoNameFamily => 'Tổ chức mua sắm gia đình!';

  @override
  String get paywallGoalHeadlineNoNameRecipes =>
      'Khám phá công thức nấu ăn mới!';

  @override
  String get paywallGoalHeadlineNoNamePantry =>
      'Theo dõi phòng đựng thức ăn của bạn một cách hoàn hảo!';

  @override
  String paywallPricePerDay(String price) {
    return 'Chỉ $price/ngày — ít hơn một ly cà phê';
  }

  @override
  String paywallStrikethroughPrice(String price) {
    return '$price';
  }

  @override
  String get paywallSkipNow => 'Bỏ qua bây giờ';

  @override
  String get paywallTestimonial =>
      'AI tổ chức việc mua sắm của tôi trong vài giây. Tôi tiết kiệm được 20 phút mỗi chuyến.';

  @override
  String get paywallTestimonialAuthor => 'Ann S.';

  @override
  String get paywallTrialDisclaimer =>
      'Hủy bất cứ lúc nào · Không tính phí cho đến khi thời gian dùng thử của bạn kết thúc';

  @override
  String onboardingAiDemoGreeting(String name, String category) {
    return 'Này $name! Bạn cần $category gì?';
  }

  @override
  String onboardingAiDemoGreetingNoName(String category) {
    return 'Bạn cần $category gì?';
  }

  @override
  String get onboardingAiDemoYes => 'Đúng!';

  @override
  String get onboardingAiDemoReaction => 'Đẹp!';

  @override
  String get onboardingAiDemoChange => 'Thay đổi mục';

  @override
  String get onboardingAiDemoOffer => 'Hãy thử gõ cái gì khác!';

  @override
  String get onboardingAiDemoContinue => 'Tiếp tục';

  @override
  String get onboardingAiDemoSlideHeadline =>
      'Danh sách mua sắm của bạn giờ đã có AI';

  @override
  String get onboardingAiDemoSlideSubtitle =>
      'Xem cách Kipi xây dựng danh sách đầy đủ của bạn trong vài giây';

  @override
  String get onboardingAiDemoSlideCta => 'Tôi muốn cái này! →';

  @override
  String get onboardingAiDemoSlideUserMsg =>
      'Tôi đang tổ chức một bữa tiệc nướng 🔥';

  @override
  String get onboardingAiDemoSlideReady =>
      'Sẵn sàng! Đây là tất cả mọi thứ bạn cần:';

  @override
  String get onboardingAiDemoSlideDone =>
      'Hoàn thành danh sách trong vài giây ✨';

  @override
  String get onboardingPainTitle => 'Điều gì làm bạn thất vọng nhất?';

  @override
  String get onboardingPainSubtitle =>
      'Hãy trung thực - chúng tôi sẽ khắc phục từng vấn đề';

  @override
  String get onboardingPainCta => 'Có, sửa lỗi này cho tôi →';

  @override
  String get onboardingPainForget => 'Tôi quên đồ ở cửa hàng';

  @override
  String get onboardingPainFamily =>
      'Gia đình tôi không bao giờ nhìn thấy danh sách';

  @override
  String get onboardingPainOverspend => 'Tôi luôn vượt quá ngân sách';

  @override
  String get onboardingPainRepeat => 'Một chuyến đi không bao giờ là đủ';
}
