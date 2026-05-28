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
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'Mặc định hệ thống';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

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
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

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
  String get newChat => 'New Chat';

  @override
  String get noHistory => 'No chat history';

  @override
  String get deleteSession => 'Delete Chat';

  @override
  String get deleteSessionConfirm =>
      'Are you sure you want to delete this chat? The messages will be permanently lost.';

  @override
  String get clearHistory => 'Xóa lịch sử';

  @override
  String get clearHistoryConfirm => 'Xóa tất cả tin nhắn trong phiên này?';

  @override
  String get chatHint => 'Nhập tin nhắn của bạn...';

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
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'Đăng nhập để mở khóa\ntính năng cao cấp';

  @override
  String get signInGoogle => 'Đăng nhập bằng Google';

  @override
  String get signInApple => 'Đăng nhập bằng Apple';

  @override
  String get continueAsGuest => 'Tiếp tục với tư cách khách';

  @override
  String loginError(String error) {
    return 'Lỗi đăng nhập: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

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
      'Nói tự nhiên để quản lý danh sách của bạn!\n\nVí dụ:\n• \'Thêm bánh mì, phô mai và giăm bông\'\n• \'Xóa bột giặt\'\n• \'Đổi chủ đề thành xanh dương\'\n\nĐây là tính năng độc quyền của Lista Plus Premium.';

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
      'Phản hồi của bạn đã được nhận và giúp chúng tôi cải thiện Lista Plus cho mọi người.';

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
}
