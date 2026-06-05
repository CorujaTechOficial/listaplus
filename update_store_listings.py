#!/usr/bin/env python3
"""Upload store listing translations for all Google Play supported locales."""

import json
import time
from google.oauth2 import service_account
from googleapiclient.discovery import build

SERVICE_ACCOUNT_FILE = "/Users/absondutragalvao/Downloads/listaplus-6547b-e019add29823.json"
PACKAGE_NAME = "br.com.curujatech.listaplus"
SCOPES = ["https://www.googleapis.com/auth/androidpublisher"]

# ─── TRANSLATIONS ───────────────────────────────────────────────────────────
# Title: max 30 chars | Short Description: max 80 chars
# Full Description: max 4000 chars (truncated in this dict for brevity)

LISTINGS = {
    "af": {
        "title": "KipiList: Inkopielys",
        "shortDescription": "Slim inkopielys & voorraadrekorder met KI-assistent en maandelikse begroting!",
    },
    "sq": {
        "title": "KipiList: Lista e Blerjeve",
        "shortDescription": "Lista inteligjente & gjurmues i qilarit me asistent AI dhe buxhet mujor!",
    },
    "am": {
        "title": "የሊስት ፕላስ፡ የግብዣ ዝርዝር",
        "shortDescription": "ብልህ የግብዣ ዝርዝር እና የመጋዘን መከታተያ ከ AI ረዳት እና ወርሃዊ በጀት ጋር!",
    },
    "ar": {
        "title": "قائمة بلس: قائمة التسوق",
        "shortDescription": "قائمة تسوق ذكية ومتتبع مخزن بمساعد ذكاء اصطناعي وميزانية شهرية!",
    },
    "hy_AM": {
        "title": "KipiList: Գնումների ցուցակ",
        "shortDescription": "Խելացի գնումների ցուցակ և մառանի հետևում AI օգնականով և ամսական բյուջեով!",
    },
    "az_AZ": {
        "title": "KipiList: Alış-veriş Siyahısı",
        "shortDescription": "Ağıllı alış-veriş siyahısı & anbar izləyicisi AI köməkçisi və aylıq büdcə ilə!",
    },
    "bn_BD": {
        "title": "লিস্ট প্লাস: শপিং লিস্ট",
        "shortDescription": "স্মার্ট শপিং লিস্ট ও প্যান্ট্রি ট্র্যাকার AI সহায়ক ও মাসিক বাজেট সহ!",
    },
    "eu_ES": {
        "title": "KipiList: Erosketa Zerrenda",
        "shortDescription": "Erosketa zerrenda adimenduna AI laguntzaile eta hileko aurrekontuarekin!",
    },
    "be": {
        "title": "KipiList: Спіс пакупак",
        "shortDescription": "Разумны спіс пакупак і кладоўка з AI-памочнікам і штомесячным бюджэтам!",
    },
    "bg": {
        "title": "KipiList: Пазарски списък",
        "shortDescription": "Умен пазарски списък и проследяване на килер с AI асистент и месечен бюджет!",
    },
    "my_MM": {
        "title": "KipiList: ဈေးဝယ်စာရင်း",
        "shortDescription": "AI အကူနှင့်လစဉ်ဘတ်ဂျက်ပါသော စမတ်ဈေးဝယ်စာရင်းနှင့်ဗီရိုခြေရာခံကိရိယာ!",
    },
    "ca": {
        "title": "KipiList: Llista de compra",
        "shortDescription": "Llista intel·ligent i gestor de rebost amb assistent d'IA i pressupost mensual!",
    },
    "zh_HK": {
        "title": "KipiList：購物清單",
        "shortDescription": "智能購物清單與食品儲藏室追蹤器，配備AI助手和每月預算！",
    },
    "zh_CN": {
        "title": "KipiList：购物清单",
        "shortDescription": "智能购物清单和食品储藏室追踪器，配备AI助手和每月预算！",
    },
    "zh_TW": {
        "title": "KipiList：購物清單",
        "shortDescription": "智慧購物清單與食品儲藏室追蹤器，配備AI助手和每月預算！",
    },
    "hr": {
        "title": "KipiList: Popis za kupnju",
        "shortDescription": "Pametni popis za kupnju s AI pomoćnikom i mjesečnim proračunom!",
    },
    "cs_CZ": {
        "title": "KipiList: Nákupní seznam",
        "shortDescription": "Chytrý nákupní seznam a sledování spíže s AI asistentem a měsíčním rozpočtem!",
    },
    "da_DK": {
        "title": "KipiList: Indkøbsliste",
        "shortDescription": "Smart indkøbsliste og spisekammer-tracker med AI-assistent og månedligt budget!",
    },
    "nl_NL": {
        "title": "KipiList: Boodschappenlijst",
        "shortDescription": "Slimme boodschappenlijst & voorraadtracker met AI en maandelijks budget!",
    },
    "en_AU": {
        "title": "KipiList: Shopping List",
        "shortDescription": "Smart shopping list & pantry tracker with an AI assistant and monthly budget!",
    },
    "en_CA": {
        "title": "KipiList: Shopping List",
        "shortDescription": "Smart shopping list & pantry tracker with an AI assistant and monthly budget!",
    },
    "en_GB": {
        "title": "KipiList: Shopping List",
        "shortDescription": "Smart shopping list & pantry tracker with an AI assistant and monthly budget!",
    },
    "en_IN": {
        "title": "KipiList: Shopping List",
        "shortDescription": "Smart shopping list & pantry tracker with an AI assistant and monthly budget!",
    },
    "en_SG": {
        "title": "KipiList: Shopping List",
        "shortDescription": "Smart shopping list & pantry tracker with an AI assistant and monthly budget!",
    },
    "en_ZA": {
        "title": "KipiList: Shopping List",
        "shortDescription": "Smart shopping list & pantry tracker with an AI assistant and monthly budget!",
    },
    "et": {
        "title": "KipiList: Ostunimekiri",
        "shortDescription": "Nutikas ostunimekiri ja sahvri jälgija AI abilise ja kuueelarvega!",
    },
    "fil": {
        "title": "KipiList: Lista ng Pamilihan",
        "shortDescription": "Matalinong listahan at pantry tracker na may AI assistant at buwanang budget!",
    },
    "fi_FI": {
        "title": "KipiList: Ostoslista",
        "shortDescription": "Älykäs ostoslista & ruokakomeron seuranta AI:llä ja budjetilla!",
    },
    "fr_CA": {
        "title": "KipiList: Liste d'épicerie",
        "shortDescription": "Liste intelligente et suivi du garde-manger avec assistant IA et budget mensuel!",
    },
    "fr_FR": {
        "title": "KipiList: Liste de courses",
        "shortDescription": "Liste de courses intelligente & suivi garde-manger avec IA et budget mensuel!",
    },
    "gl_ES": {
        "title": "KipiList: Lista da compra",
        "shortDescription": "Lista intelixente da compra con asistente IA e orzamento mensual!",
    },
    "ka_GE": {
        "title": "KipiList: სავაჭრო სია",
        "shortDescription": "ჭკვიანი სავაჭრო სია & საკუჭნაოს თვალყური AI ასისტენტით და ბიუჯეტით!",
    },
    "de_DE": {
        "title": "KipiList: Einkaufsliste",
        "shortDescription": "Intelligente Einkaufsliste & Vorrats-Tracker mit KI und Monatsbudget!",
    },
    "el_GR": {
        "title": "KipiList: Λίστα αγορών",
        "shortDescription": "Έξυπνη λίστα αγορών & ντουλαπιού με βοηθό AI και μηνιαίο προϋπολογισμό!",
    },
    "gu": {
        "title": "KipiList: શોપિંગ યાદી",
        "shortDescription": "સ્માર્ટ શોપિંગ યાદી અને પેન્ટ્રી ટ્રેકર AI સહાયક અને માસિક બજેટ સાથે!",
    },
    "iw_IL": {
        "title": "רשימת קניות: KipiList",
        "shortDescription": "רשימת קניות חכמה ומעקב מזווה עם עוזר AI ותקציב חודשי!",
    },
    "hi_IN": {
        "title": "KipiList: शॉपिंग लिस्ट",
        "shortDescription": "स्मार्ट शॉपिंग लिस्ट और पैंट्री ट्रैकर AI असिस्टेंट और मासिक बजट के साथ!",
    },
    "hu_HU": {
        "title": "KipiList: Bevásárlólista",
        "shortDescription": "Okos bevásárlólista és kamrakövető AI-asszisztenssel és havi költségvetéssel!",
    },
    "is_IS": {
        "title": "KipiList: Innkaupalisti",
        "shortDescription": "Snjall innkaupalisti & birgðarakning með AI aðstoðarmanni og fjárhagsáætlun!",
    },
    "id": {
        "title": "KipiList: Daftar Belanja",
        "shortDescription": "Daftar belanja pintar & pelacak dapur dengan asisten AI dan anggaran bulanan!",
    },
    "it_IT": {
        "title": "KipiList: Lista della spesa",
        "shortDescription": "Lista della spesa intelligente e dispensa con assistente AI e budget!",
    },
    "ja_JP": {
        "title": "KipiList：買い物リスト",
        "shortDescription": "AIアシスタントと月次予算を備えたスマートな買い物リストとパントリー管理！",
    },
    "kn_IN": {
        "title": "KipiList: ಶಾಪಿಂಗ್ ಪಟ್ಟಿ",
        "shortDescription": "AI ಸಹಾಯಕ ಮಱ್ಱು ಮಾಸಿಕ ಬಜೆಟ್ ಜೊತೆ ಸ್ಮಾರ್ಟ್ ಶಾಪಿಂಗ್ ಪಟ್ಟಿ & ಪ್ಯಾಂಟ್ರಿ ಟ್ರ್ಯಾಕರ್!",
    },
    "kk": {
        "title": "KipiList: Сатып алу тізімі",
        "shortDescription": "Қойма бақылаушысы мен AI бар ақылды тізім!",
    },
    "km_KH": {
        "title": "KipiList: បញ្ជីទិញទំនិញ",
        "shortDescription": "បញ្ជីទិញទំនិញឆ្លាតវៃ និងតាមដានបន្ទប់ដាក់អាហារ ជាមួយជំនួយការ AI និងថវិកាប្រចាំខែ!",
    },
    "ko_KR": {
        "title": "KipiList: 쇼핑 목록",
        "shortDescription": "AI 어시스턴트와 월간 예산이 포함된 스마트 쇼핑 목록 및 식료품 저장실 추적기!",
    },
    "ky_KG": {
        "title": "KipiList: Сатып алуу тизмеси",
        "shortDescription": "Акылдуу тізмеси & кампа көзөмөлү AI жана айлык бюджет менен!",
    },
    "lo_LA": {
        "title": "KipiList: ລາຍການຊື້ເຄື່ອງ",
        "shortDescription": "ທີ່ແຕກຕ່າງຕູ້ເກັບເຄື່ອງໃນເຮືອນ ດ້ວຍ AI ແລະ ງບປະມານປະຈຳເດືອນ!",
    },
    "lv": {
        "title": "KipiList: Iepirkumu saraksts",
        "shortDescription": "Vieds iepirkumu saraksts un pieliekamā izsekotājs ar AI un mēneša budžetu!",
    },
    "lt": {
        "title": "KipiList: Pirkinių sąrašas",
        "shortDescription": "Išmanusis pirkinių sąrašas ir sekiklis su AI asistentu ir mėnesio biudžetu!",
    },
    "mk_MK": {
        "title": "KipiList: Листа за купување",
        "shortDescription": "Паметна листа за купување и следење на оставата со AI асистент и месечен буџет!",
    },
    "ms_MY": {
        "title": "KipiList: Senarai Beli-belah",
        "shortDescription": "Senarai beli-belah pintar & penjejak pantry dengan AI dan bajet bulanan!",
    },
    "ms": {
        "title": "KipiList: Senarai Beli-belah",
        "shortDescription": "Senarai beli-belah pintar & penjejak pantry dengan AI dan bajet bulanan!",
    },
    "ml_IN": {
        "title": "KipiList: ഷോപ്പിംഗ് ലിസ്റ്റ്",
        "shortDescription": "AI സഹായകനും മാസ ബജററും സ്മാറ്റ് ഷോപ്പിങ്ങ് ലിസ്റ്റ് & പാൻറ്റി ട്രാക്കർ!",
    },
    "mr_IN": {
        "title": "KipiList: शॉपिंग यादी",
        "shortDescription": "AI सहायक आणि मासिक बजेटसह स्मार्ट शॉपिंग यादी आणि पॅन्ट्री ट्रॅकर!",
    },
    "mn_MN": {
        "title": "KipiList: Дэлгүүрийн жагсаалт",
        "shortDescription": "AI туслах, сарын төсөвтэй ухаалаг дэлгүүрийн жагсаалт ба агуулах хяналт!",
    },
    "ne_NP": {
        "title": "KipiList: किनमेल सूची",
        "shortDescription": "AI सहायक र मासिक बजेटको साथ स्मार्ट किनमेल सूची र प्यान्ट्री ट्र्याकर!",
    },
    "no_NO": {
        "title": "KipiList: Handleliste",
        "shortDescription": "Smart handleliste og spiskammer-sporer med AI-assistent og månedlig budsjett!",
    },
    "fa": {
        "title": "لیست پلاس: لیست خرید",
        "shortDescription": "لیست خرید هوشمند و ردیاب انبار با دستیار هوش مصنوعی و بودجه ماهانه!",
    },
    "fa_AE": {
        "title": "لیست پلاس: لیست خرید",
        "shortDescription": "لیست خرید هوشمند و ردیاب انبار با دستیار هوش مصنوعی و بودجه ماهانه!",
    },
    "fa_AF": {
        "title": "لیست پلاس: لیست خرید",
        "shortDescription": "لیست خرید هوشمند و ردیاب انبار با دستیار هوش مصنوعی و بودجه ماهانه!",
    },
    "fa_IR": {
        "title": "لیست پلاس: لیست خرید",
        "shortDescription": "لیست خرید هوشمند و ردیاب انبار با دستیار هوش مصنوعی و بودجه ماهانه!",
    },
    "pl_PL": {
        "title": "KipiList: Lista zakupów",
        "shortDescription": "Inteligentna lista zakupów & śledzenie spiżarni z asystentem AI i budżetem!",
    },
    "pt_BR": {
        "title": "KipiList: Lista de Compras",
        "shortDescription": "Lista de compras inteligente & gerenciador de despensa com IA e orçamento mensal",
    },
    "pt_PT": {
        "title": "KipiList: Lista de Compras",
        "shortDescription": "Lista de compras inteligente & gestor de despensa com IA e orçamento mensal!",
    },
    "pa": {
        "title": "KipiList: ਖਰੀਦਦਾਰੀ ਸੂਚੀ",
        "shortDescription": "AI ਸਹਾਇਕ ਅਤੇ ਮਹੀਨਾਵਾਰ ਬਜਟ ਨਾਲ ਸਮਾਰਟ ਖਰੀਦਦਾਰੀ ਸੂਚੀ ਅਤੇ ਪੈਂਟਰੀ ਟ੍ਰੈਕਰ!",
    },
    "ro": {
        "title": "KipiList: Lista cumpărături",
        "shortDescription": "Listă inteligentă de cumpărături & urmărire cămară cu AI și buget lunar!",
    },
    "rm": {
        "title": "KipiList: Glista da la spesa",
        "shortDescription": "Glista da la spesa & controll da la dispensa cun assistent AI e budget!",
    },
    "ru_RU": {
        "title": "KipiList: Список покупок",
        "shortDescription": "Умный список покупок & кладовая с ИИ и ежемесячным бюджетом!",
    },
    "sr": {
        "title": "KipiList: Листа за куповину",
        "shortDescription": "Паметна листа за куповину и праћење оставе са AI асистентом и месечним буџетом!",
    },
    "si_LK": {
        "title": "KipiList: සාප්පු ලැයිස්තුව",
        "shortDescription": "AI සහායක සහ මාසික අයවැය සහිත ස්මාර්ට් සාප්පු ලැයිස්තුව සහ පැන්ට්‍රි ලුහුබැඳීම!",
    },
    "sk": {
        "title": "KipiList: Nákupný zoznam",
        "shortDescription": "Inteligentný nákupný zoznam & sledovanie špajze s AI asistentom a rozpočTom!",
    },
    "sl": {
        "title": "KipiList: Nakupovalni seznam",
        "shortDescription": "Pameten nakupovalni seznam & sledilnik shrambe z AI in mesečnim proračunom!",
    },
    "es_419": {
        "title": "KipiList: Lista de compras",
        "shortDescription": "Lista de compras inteligente & control de despensa con IA y presupuesto mensual!",
    },
    "es_ES": {
        "title": "KipiList: Lista de la compra",
        "shortDescription": "Lista de compra inteligente y control de despensa con IA y presupuesto mensual!",
    },
    "es_US": {
        "title": "KipiList: Lista de compras",
        "shortDescription": "Lista de compras inteligente & control de despensa con IA y presupuesto mensual!",
    },
    "sw": {
        "title": "KipiList: Orodha ya Manunuzi",
        "shortDescription": "Orodha mahiri ya manunuzi & kifuatilia chumbani kwa AI na bajeti ya kila mwezi!",
    },
    "sv_SE": {
        "title": "KipiList: Inköpslista",
        "shortDescription": "Smart inköpslista och skafferi-spårare med AI-assistent och månadsbudget!",
    },
    "ta_IN": {
        "title": "KipiList: ஷாப்பிங் பட்டியல்",
        "shortDescription": "AI உதவியுடன் ஸ்மார்ட் பட்டியல் & பேன்ட்ரி ட்ராக்கர் மாத பட்ஜெட்!",
    },
    "te_IN": {
        "title": "KipiList: షాపింగ్ జాబితా",
        "shortDescription": "AI అసిస్టెంట్ & నెలవారీ బద్జెట్టో స్మార్ట్ షాపింగ్ జాబితా & ప్యాంట్రీ ట్రాకర్!",
    },
    "th": {
        "title": "KipiList: รายการช้อปปิ้ง",
        "shortDescription": "รายการช้อปปิ้งอัจฉริยะ & ตัวติดตามตู้กับข้าวด้วย AI และงบประมาณรายเดือน!",
    },
    "tr_TR": {
        "title": "KipiList: Alışveriş Listesi",
        "shortDescription": "AI asistanı ve aylık bütçe ile akıllı alışveriş listesi ve kiler takipçisi!",
    },
    "uk": {
        "title": "KipiList: Список покупок",
        "shortDescription": "Розумний список покупок & комора з ІІ і щомісячним бюджетом!",
    },
    "ur": {
        "title": "KipiList: خریداری کی فہرست",
        "shortDescription": "AI معاون اور ماہانہ بجٹ کے ساتھ سمارٹ شاپنگ لسٹ اور پینٹری ٹریکر!",
    },
    "vi": {
        "title": "KipiList: Danh sách mua sắm",
        "shortDescription": "Danh sách mua sắm thông minh & theo dõi tủ đồ với AI và ngân sách hàng tháng!",
    },
    "zu": {
        "title": "KipiList: Uhlu Lokuthenga",
        "shortDescription": "Uhlu lokuthenga oluhlakaniphile & umlandeleli wephentri nomsizi we-AI!",
    },
}

def to_bcp47(locale):
    """Convert ARB-style locale (en_US) to BCP-47 (en-US)."""
    if "_" in locale:
        parts = locale.split("_")
        return f"{parts[0]}-{parts[1]}"
    return locale

def get_full_description(locale):
    """Return full description only for English locales; empty string for others."""
    english_locales = {"en_AU", "en_GB", "en_CA", "en_IN", "en_SG", "en_ZA"}
    if locale not in english_locales:
        return ""
    short = LISTINGS[locale]["shortDescription"]
    return (
        f"{short}\n\n"
        "Transform the way you grocery shop and manage your home with KipiList, the ultimate shopping list and smart pantry management app!\n\n"
        f"Tired of forgetting items at the supermarket, overspending, or running out of household essentials? "
        f"KipiList combines seamless organization, financial tracking, and advanced artificial intelligence "
        f"to save you time and money on every single shopping trip.\n\n"
        "✨ SMART ORGANIZATION WITH AN AI ASSISTANT\n"
        "Our built-in Personal AI Assistant is the perfect partner to optimize your household routine:\n"
        "• Smart Organization: Magically group and organize your shopping list by categories and market aisles with a single tap.\n"
        "• Quick Recipes: Get intelligent recipe suggestions based on the items currently on your list or what you already have at home.\n"
        "• Economy Tips: Ask the assistant for personalized insights and advice on how to save money on your current purchase.\n"
        "• AI Voice Command: Speak naturally to manage your products using our premium voice command feature.\n\n"
        "🛒 SHOPPING MODE & UNLIMITED LISTS\n"
        "• Create clean, intuitive, and unlimited shopping lists tailored to your needs.\n"
        "• Use the integrated Shopping Mode to easily check off items as you walk through store aisles.\n"
        "• Monitor your cart's total estimated price in real-time.\n"
        "• Filter items instantly by pending or purchased, and sort them by name, category, or creation date.\n\n"
        "📦 SMART PANTRY STOCK TRACKING\n"
        "• Keep a virtual pantry updated with everything you have at home.\n"
        "• Track your current quantity versus the ideal quantity for every product.\n"
        "• Automatic deficit calculation and smart shopping suggestions.\n\n"
        "💰 MONTHLY BUDGET & SPENDING ANALYSIS\n"
        "• Set a global monthly budget cap to stay in control of your finances.\n"
        "• Access an interactive Dashboard with clear visual data reports.\n"
        "• View detailed charts and spending analysis by category.\n\n"
        "👥 REAL-TIME SYNC & SHARING\n"
        "• Share lists easily with family or friends using a secure invite code.\n"
        "• Sync in real-time to manage groceries collaboratively.\n\n"
        f"Download now for free and bring the intelligence of KipiList to your next shopping trip!"
    )

def main():
    credentials = service_account.Credentials.from_service_account_file(
        SERVICE_ACCOUNT_FILE, scopes=SCOPES
    )
    service = build("androidpublisher", "v3", credentials=credentials)

    edit_request = service.edits().insert(body={}, packageName=PACKAGE_NAME)
    edit_response = edit_request.execute()
    edit_id = edit_response["id"]
    print(f"✅ Edit criada: {edit_id}")

    total = len(LISTINGS)
    for i, (locale, texts) in enumerate(LISTINGS.items(), 1):
        bcp47 = to_bcp47(locale)
        try:
            body = {
                "title": texts["title"],
                "shortDescription": texts["shortDescription"],
                "fullDescription": get_full_description(locale),
            }
            request = service.edits().listings().update(
                packageName=PACKAGE_NAME,
                editId=edit_id,
                language=bcp47,
                body=body,
            )
            request.execute()
            print(f"  [{i}/{total}] ✅ {bcp47} - {texts['title']}")
        except Exception as e:
            print(f"  [{i}/{total}] ❌ {bcp47} - {e}")

    commit_request = service.edits().commit(
        packageName=PACKAGE_NAME, editId=edit_id,
    )
    commit_response = commit_request.execute()
    print(f"\n✅ Edit commitada! Status: {commit_response.get('status')}")

if __name__ == "__main__":
    main()
