// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'รายการช้อปปิ้ง';

  @override
  String get lists => 'รายการ';

  @override
  String get pantry => 'ตู้กับข้าว';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get save => 'บันทึก';

  @override
  String get create => 'สร้าง';

  @override
  String get add => 'เพิ่ม';

  @override
  String get remove => 'ลบออก';

  @override
  String get delete => 'ลบ';

  @override
  String get edit => 'แก้ไข';

  @override
  String get copy => 'คัดลอก';

  @override
  String get retry => 'ลองอีกครั้ง';

  @override
  String get regenerate => 'สร้างใหม่';

  @override
  String get copiedToClipboard => 'คัดลอกไปยังคลิปบอร์ดแล้ว';

  @override
  String get confirm => 'ยืนยัน';

  @override
  String get close => 'ปิด';

  @override
  String get import => 'นำเข้า';

  @override
  String get rename => 'เปลี่ยนชื่อ';

  @override
  String get upgrade => 'อัปเกรด';

  @override
  String get clear => 'ล้าง';

  @override
  String error(String message) {
    return 'ข้อผิดพลาด: $message';
  }

  @override
  String errorGeneric(String message) {
    return 'ข้อผิดพลาด: $message';
  }

  @override
  String get purchaseError =>
      'เกิดข้อผิดพลาดในการดำเนินการซื้อ กรุณาลองอีกครั้ง';

  @override
  String get restoreError =>
      'เกิดข้อผิดพลาดในการกู้คืนการซื้อ กรุณาลองอีกครั้ง';

  @override
  String get loading => 'กำลังโหลด...';

  @override
  String get fieldRequired => 'จำเป็นต้องกรอก';

  @override
  String get addedFeedback => 'เพิ่มแล้ว!';

  @override
  String selectedItems(int count) {
    return 'เลือก $count รายการ';
  }

  @override
  String get estimated => 'ประมาณการ';

  @override
  String get alreadyPurchased => 'ซื้อแล้ว';

  @override
  String get clearList => 'ล้างรายการ';

  @override
  String get clearPurchased => 'ล้างที่ซื้อแล้ว';

  @override
  String get share => 'แชร์';

  @override
  String get shareViaCode => 'แชร์ผ่านโค้ด';

  @override
  String get importViaCode => 'นำเข้าผ่านโค้ด';

  @override
  String get listAssistant => 'ผู้ช่วยรายการ';

  @override
  String get globalAssistant => 'ผู้ช่วยทั่วไป';

  @override
  String get becomePremium => 'เป็นพรีเมียม';

  @override
  String get manageSubscription => 'จัดการการสมัครสมาชิก';

  @override
  String get completePurchase => 'ดำเนินการซื้อให้เสร็จ';

  @override
  String get confirmClearList => 'ลบรายการทั้งหมด?';

  @override
  String get shareListTitle => 'แชร์รายการ';

  @override
  String get shareThisCode => 'แชร์โค้ดนี้:';

  @override
  String get validForLimitedTime => 'ใช้ได้ภายในเวลาที่กำหนด';

  @override
  String get importListTitle => 'นำเข้ารายการ';

  @override
  String get enterCodeHint => 'ป้อนโค้ด';

  @override
  String get confirmArchiveTitle => 'ดำเนินการซื้อให้เสร็จ';

  @override
  String get confirmArchiveContent => 'ดำเนินการซื้อนี้และเก็บรายการ?';

  @override
  String get complete => 'เสร็จสิ้น';

  @override
  String get listArchived => 'เก็บรายการสำเร็จแล้ว!';

  @override
  String listAdded(String listName) {
    return 'เพิ่ม $listName แล้ว!';
  }

  @override
  String get buy => 'ซื้อ';

  @override
  String get unmark => 'ยกเลิกเครื่องหมาย';

  @override
  String confirmDeleteItems(int count) {
    return 'ลบ $count รายการ?';
  }

  @override
  String get confirmDeleteTitle => 'ยืนยัน';

  @override
  String confirmContent(int count) {
    return 'ลบ $count รายการ?';
  }

  @override
  String get archiveList => 'เก็บรายการ';

  @override
  String get pantryAppBar => 'ตู้กับข้าว';

  @override
  String get generateShoppingList => 'สร้างรายการช้อปปิ้ง';

  @override
  String get pantryEmpty => 'ตู้กับข้าวว่าง';

  @override
  String get pantryEmptySubtitle => 'เพิ่มสินค้าที่คุณต้องการมีไว้ที่บ้าน';

  @override
  String itemsNeedPurchase(int deficit) {
    return 'ต้องซื้อ $deficit รายการ';
  }

  @override
  String get noItemsToBuy => 'ไม่มีรายการที่ต้องซื้อ';

  @override
  String get newPantryList => 'ช้อปปิ้งในตู้กับข้าว';

  @override
  String get newListTitle => 'รายการช้อปปิ้งใหม่';

  @override
  String itemsWillBeAdded(int count) {
    return 'จะเพิ่ม $count รายการ';
  }

  @override
  String get listNameLabel => 'ชื่อรายการ';

  @override
  String listCreated(String name, int count) {
    return 'สร้างรายการ \"$name\" พร้อม $count รายการแล้ว';
  }

  @override
  String get noTracking => 'ไม่ติดตาม';

  @override
  String get markAsPurchased => 'ทำเครื่องหมายว่าซื้อแล้ว';

  @override
  String editPantryItem(String name) {
    return 'แก้ไข $name';
  }

  @override
  String get idealQuantity => 'ปริมาณที่เหมาะสม';

  @override
  String get currentQuantity => 'ปริมาณปัจจุบัน';

  @override
  String get consumed => 'บริโภคแล้ว';

  @override
  String restocked(String name, int quantity, String unit) {
    return 'เติม $name เป็น $quantity $unit แล้ว';
  }

  @override
  String confirmRemovePantry(String name) {
    return 'ลบ \"$name\" ออกจากตู้กับข้าว?';
  }

  @override
  String pantryEditTitle(String name) {
    return 'แก้ไข $name';
  }

  @override
  String get settingsAppBar => 'การตั้งค่า';

  @override
  String get language => 'ภาษา';

  @override
  String get languagePortuguese => 'Português (Brasil)';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSystem => 'ค่าเริ่มต้นของระบบ';

  @override
  String get chooseLanguage => 'Select Language';

  @override
  String get searchLanguage => 'Search language...';

  @override
  String get appearance => 'ลักษณะ';

  @override
  String get light => 'สว่าง';

  @override
  String get system => 'ระบบ';

  @override
  String get dark => 'มืด';

  @override
  String get themeColor => 'สีธีม';

  @override
  String get dynamicColors => 'Dynamic colors';

  @override
  String get dynamicColorsSubtitle => 'Use colors based on your wallpaper';

  @override
  String get finance => 'การเงิน';

  @override
  String get monthlyBudgetNav => 'งบประมาณรายเดือน';

  @override
  String get budgetSubtitle => 'ติดตามค่าใช้จ่ายรายเดือนของคุณ';

  @override
  String get data => 'ข้อมูล';

  @override
  String get backupNav => 'สำรองข้อมูล';

  @override
  String get backupSubtitle => 'ส่งออกหรือนำเข้าข้อมูลของคุณ';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get version => 'เวอร์ชัน';

  @override
  String get privacy => 'ความเป็นส่วนตัว';

  @override
  String get termsOfUse => 'ข้อกำหนดในการใช้งาน';

  @override
  String get backupTitle => 'สำรองข้อมูล';

  @override
  String get backupPremiumDescription =>
      'การสำรองและส่งออกข้อมูลเป็นฟีเจอร์พรีเมียม';

  @override
  String get exportData => 'ส่งออกข้อมูล';

  @override
  String get exportDataSubtitle => 'บันทึกรายการทั้งหมดเป็น JSON';

  @override
  String get importData => 'นำเข้าข้อมูล';

  @override
  String get importDataSubtitle => 'กู้คืนรายการจาก JSON';

  @override
  String get importJsonTitle => 'นำเข้า JSON';

  @override
  String get importJsonHint => 'วาง JSON ที่สำรองไว้ที่นี่...';

  @override
  String get backupExported => 'ส่งออกข้อมูลสำรองแล้ว!';

  @override
  String get budgetAppBar => 'งบประมาณรายเดือน';

  @override
  String get budgetPremiumLocked => 'งบประมาณรายเดือนโดยรวมเป็นฟีเจอร์พรีเมียม';

  @override
  String get budgetUpgradePrompt => 'อัปเกรดเพื่อปลดล็อก';

  @override
  String get noBudgetDefined => 'ไม่ได้ตั้งงบประมาณ';

  @override
  String totalEstimated(String amount) {
    return 'ประมาณการรวม: $amount';
  }

  @override
  String get setBudgetButton => 'ตั้งงบประมาณ';

  @override
  String get budgetLists => 'รายการ';

  @override
  String get budgetValueLabel => 'จำนวนเงิน';

  @override
  String get setBudgetTitle => 'งบประมาณรายเดือน';

  @override
  String budgetAmountSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get filterAll => 'ทั้งหมด';

  @override
  String get filterPending => 'รอดำเนินการ';

  @override
  String get filterPurchased => 'ซื้อแล้ว';

  @override
  String get sortName => 'ชื่อ';

  @override
  String get sortCategory => 'หมวดหมู่';

  @override
  String get sortDate => 'วันที่';

  @override
  String get sortManual => 'ด้วยตนเอง';

  @override
  String get addItem => 'เพิ่มรายการ';

  @override
  String get itemName => 'ชื่อรายการ';

  @override
  String get quantityShort => 'จำนวน';

  @override
  String get unit => 'หน่วย';

  @override
  String get category => 'หมวดหมู่';

  @override
  String get estimatedPrice => 'ราคาประมาณ';

  @override
  String get addItemPrice => 'ราคาประมาณ';

  @override
  String get editItem => 'แก้ไขรายการ';

  @override
  String get quantityFull => 'ปริมาณ';

  @override
  String get editItemPrice => 'ราคาประมาณ';

  @override
  String get addToPantry => 'เพิ่มในตู้กับข้าว';

  @override
  String addToPantryPrompt(String name) {
    return 'เพิ่ม \"$name\" ในตู้กับข้าวของคุณ?';
  }

  @override
  String get yes => 'ใช่';

  @override
  String get productName => 'ชื่อสินค้า';

  @override
  String get idealQty => 'ปริมาณที่เหมาะสม';

  @override
  String get currentQty => 'ปริมาณปัจจุบัน';

  @override
  String get trackStock => 'ติดตามสต็อก';

  @override
  String get trackStockActive => 'แสดงในคำแนะนำการช้อปปิ้ง';

  @override
  String get trackStockInactive => 'ไม่สร้างคำแนะนำการช้อปปิ้ง';

  @override
  String get createListDialog => 'สร้างรายการ';

  @override
  String get renameListDialog => 'เปลี่ยนชื่อรายการ';

  @override
  String get listHistory => 'ประวัติรายการ';

  @override
  String get myLists => 'รายการของฉัน';

  @override
  String get viewActive => 'ดูที่ใช้งานอยู่';

  @override
  String get viewHistory => 'ดูประวัติ';

  @override
  String get noArchivedLists => 'ไม่มีรายการที่เก็บแล้ว';

  @override
  String get noActiveLists => 'ไม่มีรายการที่ใช้งานอยู่';

  @override
  String completedOn(String date) {
    return 'เสร็จสิ้นเมื่อ $date';
  }

  @override
  String get sharedLabel => 'แชร์แล้ว';

  @override
  String get restore => 'กู้คืน';

  @override
  String get removeSharedTooltip => 'ลบออก';

  @override
  String get deleteListTitle => 'ลบรายการ';

  @override
  String deleteListContent(String name) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการลบ \"$name\"? รายการทั้งหมดจะถูกลบออก';
  }

  @override
  String get removeSharedListTitle => 'ลบรายการที่แชร์';

  @override
  String removeSharedListContent(String name) {
    return 'ลบ \"$name\" ออกจากรายการของคุณ? รายการต้นฉบับจะไม่ได้รับผลกระทบ';
  }

  @override
  String get createNewList => 'สร้างรายการใหม่';

  @override
  String get aiAssistant => 'ผู้ช่วย AI';

  @override
  String get aiAssistantDescription =>
      'รับคำแนะนำอัจฉริยะ สูตรอาหาร และเคล็ดลับส่วนตัวกับผู้ช่วย AI ของเรา';

  @override
  String get generalAssistant => 'ผู้ช่วยทั่วไป';

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
  String get clearHistory => 'ล้างประวัติ';

  @override
  String get clearHistoryConfirm => 'ล้างข้อความทั้งหมดในเซสชันนี้?';

  @override
  String get chatHint => 'พิมพ์ข้อความของคุณ...';

  @override
  String chatError(String error) {
    return 'ข้อผิดพลาดในการโหลดแชท: $error';
  }

  @override
  String get listHelp => 'จะช่วยคุณเกี่ยวกับรายการของคุณได้อย่างไร?';

  @override
  String get generalHelp => 'วันนี้จะช่วยคุณเกี่ยวกับการช้อปปิ้งได้อย่างไร?';

  @override
  String get chatSubtitle =>
      'สอบถามคำแนะนำรายการ สูตรอาหาร หรือเคล็ดลับประหยัดเงิน';

  @override
  String get aiError =>
      'ขออภัย เกิดข้อผิดพลาดในการประมวลผลคำขอของคุณ โปรดตรวจสอบการเชื่อมต่อของคุณหรือลองอีกครั้งในภายหลัง';

  @override
  String get listaPlusTitle => 'Lista Plus';

  @override
  String get loginPrompt => 'เข้าสู่ระบบเพื่อปลดล็อก\nฟีเจอร์พรีเมียม';

  @override
  String get signInGoogle => 'เข้าสู่ระบบด้วย Google';

  @override
  String get signInApple => 'เข้าสู่ระบบด้วย Apple';

  @override
  String get continueAsGuest => 'ดำเนินการต่อในฐานะแขก';

  @override
  String loginError(String error) {
    return 'ข้อผิดพลาดในการเข้าสู่ระบบ: $error';
  }

  @override
  String get paywallTitle => 'Lista Plus Premium';

  @override
  String get premiumUpgrade => 'อัปเกรดเพื่อปลดล็อก';

  @override
  String get itemRemoved => 'ลบรายการแล้ว';

  @override
  String get undo => 'เลิกทำ';

  @override
  String get emptyListTitle => 'รายการของคุณว่างเปล่า';

  @override
  String get emptyListSubtitle => 'เพิ่มรายการเพื่อเริ่มต้น';

  @override
  String get noListFoundTitle => 'ไม่พบรายการ';

  @override
  String get noListFoundSubtitle => 'สร้างรายการแรกของคุณเพื่อเริ่มต้น';

  @override
  String get createFirstList => 'สร้างรายการแรก';

  @override
  String get listBudgetTitle => 'งบประมาณรายการ';

  @override
  String get budgetAmountLabel => 'วงเงินงบประมาณ';

  @override
  String get removeBudget => 'ลบออก';

  @override
  String get prefUnlimitedLists => 'รายการไม่จำกัด';

  @override
  String get prefSharing => 'แชร์รายการ';

  @override
  String get prefFullHistory => 'ประวัติทั้งหมด';

  @override
  String get prefExportData => 'ส่งออกข้อมูล';

  @override
  String get prefCustomThemes => 'ธีมที่กำหนดเอง';

  @override
  String get prefMonthlyBudget => 'งบประมาณรายเดือนโดยรวม';

  @override
  String get prefAIAssistant => 'ผู้ช่วย AI ส่วนตัว';

  @override
  String get prefUnlimitedPantry => 'ตู้กับข้าวไม่จำกัด';

  @override
  String get prefInteractiveArtifacts => 'สิ่งประดิษฐ์ AI แบบโต้ตอบ';

  @override
  String get themeGreen => 'เขียว';

  @override
  String get themeBlue => 'น้ำเงิน';

  @override
  String get themePurple => 'ม่วง';

  @override
  String get themeRed => 'แดง';

  @override
  String get themeOrange => 'ส้ม';

  @override
  String get themePink => 'ชมพู';

  @override
  String get themeIndigo => 'คราม';

  @override
  String get themeAmber => 'อำพัน';

  @override
  String get themeTeal => 'ทีล';

  @override
  String get themeBrown => 'น้ำตาล';

  @override
  String get catFruits => 'ผลไม้';

  @override
  String get catCleaning => 'ทำความสะอาด';

  @override
  String get catBeverages => 'เครื่องดื่ม';

  @override
  String get catBakery => 'เบเกอรี่';

  @override
  String get catOthers => 'อื่นๆ';

  @override
  String get unitPack => 'แพ็ค';

  @override
  String get shareSubject => 'รายการช้อปปิ้ง';

  @override
  String get monthlyBudgetTitle => 'งบประมาณรายเดือน';

  @override
  String monthlyBudgetSpent(String spent, String budget) {
    return '$spent / $budget';
  }

  @override
  String get deleteListConfirm => 'ลบรายการ';

  @override
  String get pantryItemRemoved => 'ลบรายการแล้ว';

  @override
  String deficitItems(int deficit) {
    return 'ต้องซื้อ $deficit รายการ';
  }

  @override
  String get cartTotal => 'ยอดรวมตะกร้า';

  @override
  String get restockLabel => 'เติมสต็อก';

  @override
  String get advancedFeatures => 'ฟีเจอร์ขั้นสูง';

  @override
  String get selectAll => 'เลือกทั้งหมด';

  @override
  String get deselectAll => 'ยกเลิกการเลือกทั้งหมด';

  @override
  String get monthlyBudgetAppBar => 'งบประมาณรายเดือน';

  @override
  String get budgetEditTitle => 'งบประมาณรายเดือน';

  @override
  String get budgetDashboardTitle => 'แดชบอร์ด';

  @override
  String get selectListForDashboard => 'เลือกรายการเพื่อดูแดชบอร์ด';

  @override
  String get spendingAnalysis => 'การวิเคราะห์ค่าใช้จ่าย';

  @override
  String get noItemsToAnalyze => 'ไม่มีรายการในรายการที่ต้องวิเคราะห์';

  @override
  String get markItemsToSeeAnalysis =>
      'ทำเครื่องหมายรายการว่าซื้อแล้วเพื่อดูการวิเคราะห์';

  @override
  String get totalSpending => 'ค่าใช้จ่ายทั้งหมด';

  @override
  String get spendingByCategory => 'ค่าใช้จ่ายตามหมวดหมู่';

  @override
  String get achievements => 'ความสำเร็จ';

  @override
  String get exportPdfExcel => 'ส่งออก PDF/Excel';

  @override
  String get exportPdf => 'ส่งออกเป็น PDF';

  @override
  String get exportExcel => 'ส่งออกเป็น Excel';

  @override
  String get organizingAi => 'กำลังจัดระเบียบด้วย AI...';

  @override
  String get yesLabel => 'ใช่';

  @override
  String get noLabel => 'ไม่';

  @override
  String get shareListText => 'รายการช้อปปิ้งของฉัน';

  @override
  String get emptyListAddItems =>
      'รายการของคุณว่างเปล่า! โปรดเพิ่มรายการก่อน ℹ️';

  @override
  String get listOrganizedMagic =>
      'จัดระเบียบรายการตามหมวดหมู่อย่างมหัศจรรย์! ✨';

  @override
  String get shoppingMode => 'โหมดช้อปปิ้ง';

  @override
  String get smartOrganization => 'การจัดระเบียบอัจฉริยะ';

  @override
  String get savings => 'การประหยัด';

  @override
  String get shoppingModeHeader => 'โหมดช้อปปิ้ง';

  @override
  String get shareAsText => 'ส่งรายการเป็นข้อความที่จัดรูปแบบแล้ว';

  @override
  String get shareRealtime => 'ซิงค์แบบเรียลไทม์กับผู้อื่น';

  @override
  String get quickRecipe => 'สูตรด่วน';

  @override
  String get quickRecipePrompt => 'แนะนำสูตรอาหารด้วยรายการจากรายการของฉัน';

  @override
  String get economyTips => 'เคล็ดลับประหยัด';

  @override
  String get economyTipsPrompt =>
      'ฉันจะประหยัดเงินในการซื้อครั้งนี้ได้อย่างไร?';

  @override
  String get organizeAisles => 'จัดเรียงตามโซน';

  @override
  String get organizeAislesPrompt => 'จัดเรียงตามโซนในร้าน';

  @override
  String get recipeSuggestion => 'คำแนะนำสูตรอาหาร';

  @override
  String aiCreditsRemaining(int remaining) {
    return 'เหลือ $remaining เครดิต';
  }

  @override
  String get addAllToList => 'เพิ่มทั้งหมดในรายการ';

  @override
  String get organizeByAisles => 'จัดเรียงตามโซน';

  @override
  String get voiceTranscriptionTooltip => 'พิมพ์ด้วยเสียง (ฟรี)';

  @override
  String get aiVoiceCommandTooltip => 'คำสั่งเสียง AI (พรีเมียม)';

  @override
  String get voiceCommandTitle => 'คำสั่งเสียง AI';

  @override
  String get voiceCommandContent =>
      'พูดอย่างเป็นธรรมชาติเพื่อจัดการรายการของคุณ!\n\nตัวอย่าง:\n• \'เพิ่มขนมปัง ชีส และแฮม\'\n• \'ลบน้ำยาซักผ้า\'\n• \'เปลี่ยนธีมเป็นสีน้ำเงิน\'\n\nนี่คือฟีเจอร์พิเศษของ Lista Plus Premium';

  @override
  String get voiceCommandPlanBtn => 'ดูแผน';

  @override
  String get itemsAddedSuccess => 'เพิ่มรายการในรายการสำเร็จแล้ว!';

  @override
  String get viewList => 'ดูรายการ';

  @override
  String get feedbackTitle => 'ส่งความคิดเห็น';

  @override
  String get feedbackPrompt => 'คุณต้องการแบ่งปันอะไร?';

  @override
  String get feedbackTypeBug => 'รายงานข้อบกพร่อง';

  @override
  String get feedbackTypeBugHint => 'มีบางอย่างทำงานไม่ถูกต้อง';

  @override
  String get feedbackTypeSuggestion => 'ข้อเสนอแนะ';

  @override
  String get feedbackTypeSuggestionHint => 'ไอเดียในการปรับปรุงแอป';

  @override
  String get feedbackTypeTranslation => 'ปัญหาการแปล';

  @override
  String get feedbackTypeTranslationHint =>
      'การแปลที่ไม่ถูกต้องหรือไม่เป็นธรรมชาติ';

  @override
  String get feedbackTypeFeature => 'ขอคุณสมบัติ';

  @override
  String get feedbackTypeFeatureHint => 'คุณสมบัติที่คุณอยากให้มี';

  @override
  String get feedbackTypeOther => 'อื่นๆ';

  @override
  String get feedbackTypeOtherHint => 'ความคิดเห็นประเภทอื่น';

  @override
  String get feedbackHint => 'อธิบายความคิดเห็นของคุณโดยละเอียด...';

  @override
  String get feedbackSend => 'ส่งความคิดเห็น';

  @override
  String get feedbackSending => 'กำลังส่ง...';

  @override
  String get feedbackThankYou => 'ขอบคุณ!';

  @override
  String get feedbackThankYouMessage =>
      'ความคิดเห็นของคุณได้รับแล้วและช่วยให้เราปรับปรุง Lista Plus สำหรับทุกคน';

  @override
  String get feedbackBack => 'กลับ';

  @override
  String feedbackError(String error) {
    return 'ข้อผิดพลาดในการส่ง: $error';
  }

  @override
  String get feedbackRetry => 'ลองอีกครั้ง';

  @override
  String get feedbackSettingsTitle => 'ส่งความคิดเห็น';

  @override
  String get feedbackSettingsSubtitle =>
      'รายงานข้อบกพร่อง แนะนำการปรับปรุง หรือแก้ไขการแปล';

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
  String get shareAppDescription => 'Invite friends to use Lista Plus';

  @override
  String shareReferralText(Object url) {
    return 'I\'m using Lista Plus to organize my shopping! Download via my link and we both get 7 days of Premium free: $url';
  }

  @override
  String get shareReferralSubject => 'Get 7 days of Lista Plus Premium!';
}
