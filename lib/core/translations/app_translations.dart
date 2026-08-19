import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': {
      "upload_certificate": "Upload a certificate (optional)",
      "upload_certificate_desc":
          "Upload a clear and valid document (PDF, SVG, JPEG)",
      "upload_document": "Upload a document",
      "tips_title": "Keep these tips in mind:",
      "tip1": "- Make sure your document is visible & readable",
      "tip2": "- Capture the whole document in one frame",
      "tip3": "- Use scanning tools like CamScanner",
      "upload_your_id": "Upload your ID",
      "upload_id_desc":
          "Upload clear, visible and legit scan of your identity card",
      "upload_front_id": "Upload front of ID card",
      "upload_back_id": "Upload back of ID card",
      "continue": "Continue",
      "camera": "Camera",
      "gallery": "Gallery",
      "error": "Error",
      "upload_both_images": "Please upload both front and back images",
      "important_info":
          "Your information will be stored securely, host will check the provided information, the rest will remain private",

      'choose_role': 'Choose your role',
      'choose_role_desc':
          'Based on your identity choose your role and enjoy the experience',
      'client': 'Client',
      'provider': 'Provider',
      'filter_pending': 'Pending',
      "discount_badge": "20% Off",
      // Ads
      'home': 'Home',
      'requests': 'Requests',
      'chat': 'Chat',
      'settings': 'Settings',
      'special_offer': 'Special Offer',
      'ads':
          'Get Your First repair with a special -20% discount on your repair.',
      'request_now': 'Request Now',
      // ================= Onboarding =================
      'onboarding_title_1': 'Welcome to Akhdem',
      'onboarding_desc_1':
          'Discover the best services around you with just a few taps.',

      'onboarding_title_2': 'Find Trusted Providers',
      'onboarding_desc_2':
          'Browse verified professionals and book the service you need instantly.',

      'onboarding_title_3': 'Easy & Secure Booking',
      'onboarding_desc_3':
          'Enjoy a seamless experience with secure payments and real-time tracking.',

      // ================= Auth =================
      'login': 'Login',
      'welcome_back': 'Welcome Back! Make sure to enter your login details.',
      'email_address': 'Email Address',
      'email_hint': 'example@gmail.com',
      'password': 'Password',
      'enter_password': 'Enter your password',
      'forgot_password': 'Forgot password?',
      'dont_have_account': 'You don’t have an account?',
      'signup_now': 'Sign-up Now',
      'or': 'Or',
      'signup_google': 'Sign up with Google',
      'signup_facebook': 'Sign up with Facebook',
      'you_almost': 'You\'re almost there!',
      'plz_signup':
          'Please sign in or create an account to complete your reservation.',

      // ================= Buttons =================
      'next': 'Next',
      'get_started': 'Get Started',

      // ================= Exit Dialog =================
      'exit_application': 'Exit Application',
      'exit_confirmation': 'Are you sure you want to exit the application?',
      'yes_exit': 'Yes, Exit',
      'cancel': 'Cancel',

      // ================= Signup =================
      'signup': 'Sign Up',
      'signup_subtitle': 'Let’s get started with setting your account',
      'full_name': 'Full Name',
      'username_hint': 'User name',
      'email': 'Email Address',

      'create_password': 'Create Password',
      'password_hint': '********',
      'confirm_password': 'Confirm Password',
      'continue': 'Continue',
      'already_have_account': 'Already have an account? ',

      // ================= Phone Number =================
      'add_phone_number': 'Add phone number',
      'negociate': 'Negociate',
      'accept': 'Accept',

      'phone_number_subtitle':
          'Enter your phone number to confirm your requests easily',
      'phone_number': 'Phone number',
      'phone_hint': '(0) 5 25 35 56 98',
      'confirm': 'Confirm',

      // ================= Email Verification =================
      'verify_email_title': 'Verify your email address',
      'verify_email_subtitle': 'We sent a verification code to your email ',
      'didnt_receive_code': 'You didn’t receive the code? ',
      'resend_code': 'Resend code',
      'verify': 'Verify',

      // ================= Signup Done =================
      'signup_done_title': 'You have registered your account',
      'signup_done_subtitle': 'You can now log in with your new password.',
      'done': 'Done',

      // ================= Reset Password =================
      'reset_password_title': 'Reset password',
      'reset_password_subtitle':
          'Enter your email address linked to this account to reset your password.',
      'send': 'Send',

      // ================= OTP Reset =================
      'otp_verification_title': 'OTP Verification',
      'otp_verification_subtitle':
          'We have sent you a reset link. Check your inbox for the verification code.',
      'otp_not_received': 'You didn’t receive the code? ',

      // ================= Reset Password Done =================
      'reset_done_title': 'Password reset successful',
      'reset_done_subtitle': 'You can now log in with your new password.',

      'new_password': 'New password',

      'profile': 'Profile',
      'account': 'ACCOUNT',
      'personal_information': 'Personal Information',
      'manage_your_account_informations': 'Manage your account informations',
      'general': 'GENERAL',
      'your_address': 'Your Address',
      'notification_center': 'Notification Center',
      'support': 'Support',
      'terms_conditions': 'Terms & Conditions',
      'security_privacy': 'Security & Privacy',
      'log_out': 'Log out',
      'language': 'Language',

      'personal_info_subtitle':
          'Establish confidence with your personal information. All saved securely.',
      'username': 'Username',
      'birth_date': 'Date of Birth',
      'gender': 'Gender',
      'select_gender': 'Select Gender',
      'male': 'Male',
      'female': 'Female',
      'other': 'Other',
      'edit_information': 'Edit Information',

      'recent_request': 'Recent Request',
      'all': 'All',
      'active': 'Active',
      'up_coming': 'Up Coming',
      'completed': 'Completed',
      'search_by': 'Search By',

      'water_leak': "Water Leak",
      'service_provider_name': "Service Provider Name",

      'notifications': "Notifications",
      'unread': "Unread",
      'system': "System",
      'security': "Security",
      'new_sale': "New sale completed",
      'sale_recorded':
          "A sale of 5,600 DZD has been recorded on your POS terminal.",
      'maintenance_notice': "Maintenance notice",
      'service_unavailable':
          "Service temporarily unavailable on October 24th at 2:00 a.m.",
      'delete_all_notifications': "Delete all notifications",

      'search': 'Search',
      'looking_service': 'Looking for a service?',
      'im_looking_for': "I'M LOOKING FOR",
      'plumbing': 'Plumbing',
      'electrical': 'Electrical',
      'paint': 'Paint',
      'cleaning': 'Cleaning',
      'masonry': 'Masonry',
      'more': 'More',
      'recent_searches': 'RECENT SEARCHES',
      'fuite_deau': "Water Leak",
      'short_circuits': "Short circuits",

      'today_time': 'Today , @time',
      'deal_confirmed':
          '✅ Deal confirmed! You can now follow the booking progress and chat here if needed.',
      'chat_msg_hello': 'Hello 👋, are you available now?',
      'chat_msg_help': 'Yes! How can I help you?',
      'suggestion_earlier': 'Can you arrive earlier?',
      'suggestion_materials': 'Can you include materials in the price?',
      'suggestion_urgent': 'It’s urgent',

      'chat': 'Chat',
      'search_message': 'Search for a message',
      "no_chat": "No Chats Yet",
      "no_chat_msg": "You have no chats currently. Start a conversation now!",
      "status_online": "Online",

      "write_message": "Write a message...",

      "tech_dz": "Tech DZ",
      "plumber": "Plumber",
      "about_provider": "About Provider",
      "reviews": "Reviews",
      "rating": "Rating",
      "experience": "Experience",
      "distance": "Distance",
      "years": "Years",

      "Specialties": "Specialties",
      "Plombing": "Plumbing",
      "Leak Detection": "Leak Detection",
      "Water tank related problems": "Water tank related problems",
      "Rates": "Rates",
      "Prices depends on the type of service requested, complexity and travel costs.":
          "Prices depend on the type of service requested, complexity, and travel costs.",
      "Starting From": "Starting From",
      "hire": "Hire",
      "overview": "Overview",
      "overview_desc":
          "Experienced plumber with over 8 years of experience in the Oran region. Specialized in emergency repairs and sanitary installations.",
      "completed_work": "Completed Work",
      "languages": "Languages",
      "response_time": "Time to respond",
      "sort_by": "Sort By",
      "reviewer_name": "Ahmed Benali",
      "review_service": "Screen Repair",
      "review_date": "2 days ago",
      "review_message":
          "Excellent service! Ahmed was very professional and fixed my PC quickly. Now it’s working perfectly! Highly recommended.",
      // ================= Home =================
      'services': 'Services',
      'plumbing': 'Plumbing',
      'electrical': 'Electrical',
      'paint': 'Paint',
      'cleaning': 'Cleaning',
      'masonry': 'Masonry',
      'see_more': 'See more',
      'recent_requests': 'Recent Requests',
      // ================= Header =================
      'welcome_back_user': 'Welcome Back Ahmed!',
      'user_location': 'Oran, Oran - Algeria',
      'looking_for_service': 'Looking for a service?',

      // ================= Need Help Now =================
      'need_help_now': 'Need Help Now?',
      'need_help_desc':
          'Create your own service request and get offers from verified professionals in a few minutes',
      'create_new_request': 'Create a New Request',
      // ================= Recent Request =================
      'recent_request_title': 'Water leak',
      'service_provider_name': 'Service Provider Name',
      'recent_request_status_completed': 'Completed',
      // ================= My Requests =================
      'my_requests_title': 'My Requests',

      // Filters
      'filter_all': 'All',
      'filter_active': 'Active',
      'filter_completed': 'Completed',
      'filter_canceled': 'Canceled',

      // Search
      'search_by': 'Search by',
      // ================= Received Offers =================
      'received_offer_title': 'Request a Service',
      'received_offers_section': 'Received Offers',
      // ================= Request - Step 1 =================
      'request_service_title': 'Request a Service',

      'request_step1_title': 'Describe your problem',
      'request_step1_desc':
          'Tell us what needs fixing so we can match you with the right provider.',

      'problem_label': 'Problem',
      'problem_hint': 'Ex. fuite d’eau',

      'budget_range_label': 'Budget Range',
      'budget_min': 'Minimum',
      'budget_max': 'Maximum',

      'description_label': 'Description',
      'description_hint': 'Here',

      'upload_image': 'Upload Image',

      'reserve_service': 'Reserve service',
      'schedule_service': 'Schedule service',

      // ================= Request - Step 2 =================
      'request_step2_title': 'Service Details',
      'request_step2_desc':
          'Tell us when and where you need the service, and your expected budget.',

      'exact_address': 'Exact Address',
      'use_current_location': 'Use my current location',

      'date_label': 'Date',
      'date_hint': 'dd/mm/yyyy',

      'time_label': 'Time',
      'time_hint': '00:00',

      'reserve_provider': 'Reserve Provider',
      // ================= Request - Step 3 =================
      'request_step3_title': 'Review and confirm',
      'request_step3_desc': 'Check your request details before submitting.',

      'problem_label': 'Problem',
      'requested_service_label': 'Requested Service',
      'payment_method_label': 'Payment method',
      'total_amount_label': 'Total Amount',
      'time_label': 'Time',
      'date_label': 'Date',

      'track_request': 'Track your request',
      'booking_warning':
          'Once confirmed, this booking will be final. You’ll be able to track the progress of the work and contact the provider at any time.',

      'confirm_request_btn': 'Confirm Request | 0000 DA',
      'booking_confirmed_title': 'Booking Confirmed',
      'booking_confirmed_message':
          'You have successfully booked your service provider! Contact him anytime now',
      // ================= Requests Page =================
      'requests_page_title': 'Request a Service',
      'requests_search_hint': 'Looking for a service?',

      'request_card_plumbing': 'Plumbing',
      'request_card_electrical': 'Electrical',
      'request_card_paint': 'Paint',
      'request_card_cleaning': 'Cleaning',
      'request_card_masonry': 'Masonry',

      'continue_btn': 'Continue',
      // ================= Track Request Page =================
      'track_request_title': 'Track Request',
      'track_request_map_placeholder': 'Map Here',

      'request_status_section': 'Request Status',
      'request_summary_section': 'Request Summary',

      'report_issue': 'Report an issue',
      // ================= View Request Page =================
      'view_request_title': 'View Request',
      'view_request_map_placeholder': 'Map here',

      'request_status_section': 'Request Status',
      'request_summary_section': 'Request Summary',

      'report_issue': 'Report an issue',
      'cancel_request': 'Cancel Request',
      //// ==== Empty request ========
      'waiting_for_offers': 'Waiting for offers',
      'waiting_for_offers_desc':
          'We’re currently sending your service request to the available service providers ...',

      /// modifiez ladresse
      "enter_address": "Enter Address",
      "exact_address": "Exact Address",
      "use_current_location": "Use my current location",
      "confirm": "Confirm",

      // negociation
      "counter_offer": "Counter Offer",
      "amount_da": "2000 DA",
      "to_user": "à Ahmed Benali",
      "time_left": "time Left",
      "time_remaining": "10:00 min",
      "enter_your_offer": "Enter your Offer",
      "minimum_offer_warning": "minimium offer should be more than -----",
      "be_reasonable":
          "Be reasonable in your negociation to get the best service",
      "send_offer": "Send Offer",

      // request status config
      "completed": "Completed",
      "book_provider_again": "Book Provider Again",
      "canceled": "Canceled",
      "remove_request": "Remove Request",
      "active": "Active",
      "mark_as_completed": "Mark as Completed",
      "upcoming": "Up coming",
      "cancel": "Cancel",
      "view_offers": "View Offers",

      // Request Summary
      "request_id": "Request ID",
      "date_time": "Date & Time",
      "price": "Price",
      "location": "Location",
      "sample_request_number": "#ORN-2025-1234",
      "sample_date_time": "15 Oct 2025, 10:00",
      "sample_price": "2200 DA",
      "sample_location": "45 Rue Larbi Ben M'hidi",

      // timline
      "technician_booked": "Technician Booked",
      "technician_on_the_way": "Technician on the way",
      "arrived": "Arrived",
      "work_in_progress": "Work In progress",
      "work_done": "Work Done",
      "placeholder_date": "---",

      "header_title_1": "Electrical & Home Fixing",
      "header_subtitle_1": "Professional electricians\nat your service",

      "header_title_2": "Plumbing Services",
      "header_subtitle_2": "Expert plumbers\nnear you",

      "header_title_3": "Fast & Secure Service",
      "header_subtitle_3": "Trusted technicians\nanytime",
      "getting_location": "Getting location...",
      "location_service_disabled": "Location service is disabled",
      "location_permission_denied": "Location permission denied",
      "location_permission_denied_forever":
          "Location permission denied forever",
      "unknown_location": "Unknown location",
      "error_getting_location": "Error getting location",
      "Plumber": "Plumber",
      "pipe_installation": "Pipe Installation",
      "leak_fix": "Leak Fix",
      "water_heater": "Water Heater",

      "Electrician": "Electrician",
      "wire_installation": "Wire Installation",
      "switches_sockets": "Switches & Sockets",
      "electrical_repair": "Electrical Repair",

      "Painter": "Painter",
      "interior_painting": "Interior Painting",
      "exterior_painting": "Exterior Painting",
      "decorative_painting": "Decorative Painting",

      "Mason": "Mason",
      "wall_building": "Wall Building",
      "concrete_pouring": "Concrete Pouring",
      "brick_stone_work": "Brick & Stone Work",

      "Cleaning": "Cleaning",
      "home_cleaning": "Home Cleaning",
      "office_cleaning": "Office Cleaning",
      "garden_cleaning": "Garden Cleaning",

      "electricity_security": "Electricity & Security",
      "electricity": "Electricity",
      "parabole": "Satellite Dish Installation",
      "cctv": "Security Cameras",
      "electric_gate": "Electric Gate",
      "electric_shutter": "Electric Shutter",

      "plumbing_appliances_cooling": "Plumbing & Appliances",
      "general_plumbing": "General Plumbing",
      "appliance_repair": "Appliance Repair",
      "ac_heating": "AC & Heating",

      "decoration_design": "Decoration & Design",
      "painting": "Painting",
      "plaster": "Plaster & Drywall",
      "interior_decoration": "Interior Decoration",
      "facade_decoration": "Facade Decoration",
      "shop_facade": "Shop Facade",

      "construction": "Construction",
      "tiling_wall": "Tiling & Walls",
      "waterproofing": "Waterproofing",
      "masonry": "Masonry",
      'phone': 'Phone',

      "metalwork": "Metal Work",
      "welding": "Welding",
      "blacksmith": "Blacksmith",
      "locksmith": "Locksmith",
      "metal_structure": "Metal Structure",

      "carpentry_glass": "Carpentry & Glass",
      "wood_carpentry": "Wood Carpentry",
      "aluminum_pvc": "Aluminum & PVC",
      "glass_installation": "Glass Installation",
      "mirrors": "Mirrors",

      "automobile": "Automobile",
      "auto_mechanic": "Auto Mechanic",
      "auto_electricity": "Auto Electricity",
      "bodywork": "Bodywork",
      "car_glass": "Car Glass",

      "events_wedding": "Events & Wedding",
      "cakes": "Cakes",
      "home_hair_women": "Home Hairdresser (Women)",
      "makeup_home": "Home Makeup",
      "party_decoration": "Party Decoration",

      "various_services": "Various Services",
      "cleaning_lady": "Cleaning Lady",
      "babysitting": "Babysitting",
      "gardening": "Gardening",
      "cleaning": "Cleaning",
      "drain_cleaning": "Drain Cleaning",
      "roadside_assistance": "Roadside Assistance",
      "transport": "Transport",
      "delivery": "Delivery",
      "delivery_outside": "Outside City Delivery",
    },

    'ar': {
      "upload_certificate": "رفع شهادة (اختياري)",
      "upload_certificate_desc": "قم برفع مستند واضح وصحيح (PDF, SVG, JPEG)",
      "upload_document": "رفع مستند",
      "tips_title": "خذ هذه النصائح بعين الاعتبار:",
      "tip1": "- تأكد أن المستند واضح وقابل للقراءة",
      "tip2": "- قم بتصوير المستند بالكامل في صورة واحدة",
      "tip3": "- استخدم تطبيقات مثل CamScanner",
      "upload_your_id": "قم برفع بطاقة هويتك",
      "upload_id_desc": "قم برفع صورة واضحة ومرئية وصحيحة لبطاقة هويتك",
      "upload_front_id": "رفع الوجه الأمامي للبطاقة",
      "upload_back_id": "رفع الوجه الخلفي للبطاقة",
      "continue": "متابعة",
      "camera": "الكاميرا",
      "gallery": "المعرض",
      "error": "خطأ",
      "upload_both_images": "يرجى رفع صورتي الوجه الأمامي والخلفي",
      "important_info":
          "سيتم حفظ معلوماتك بشكل آمن، وسيقوم المسؤول بالتحقق منها، والباقي سيبقى خاصًا",
      'choose_role': 'اختر دورك',
      'choose_role_desc': 'بناءً على هويتك، اختر دورك واستمتع بالتجربة',
      'client': 'عميل',
      'provider': 'مقدم خدمة',
      "discount_badge": "تخفيضة 20%",
      'home': 'الرئيسية',
      'requests': 'الطلبات',
      'chat': 'الدردشة',
      'settings': 'الإعدادات',
      "electricity_security": "الكهرباء والأمن",
      "electricity": "كهرباء",
      "parabole": "تركيب بارابول",
      "cctv": "كاميرات مراقبة",
      "electric_gate": "بوابة كهربائية",
      "electric_shutter": "ستائر كهربائية",

      "plumbing_appliances_cooling": "السباكة والأجهزة",
      "general_plumbing": "سباكة عامة",
      "appliance_repair": "إصلاح الأجهزة الكهرومنزلية",
      "ac_heating": "تكييف وتدفئة",

      "decoration_design": "الديكور والتهيئة",
      "painting": "طلاء",
      "plaster": "جبس وجبس بورد",
      "interior_decoration": "ديكور داخلي",
      "facade_decoration": "تزيين الواجهات",
      "shop_facade": "واجهات المحلات",

      "construction": "البناء",
      "tiling_wall": "تركيب البلاط والجدران",
      "waterproofing": "العزل",
      "masonry": "البناء بالإسمنت",

      "metalwork": "الأشغال المعدنية",
      "welding": "لحام",
      "blacksmith": "حدادة",
      "locksmith": "أقفال",
      "metal_structure": "هياكل معدنية",

      "carpentry_glass": "النجارة والزجاج",
      "wood_carpentry": "نجارة خشب",
      "aluminum_pvc": "نجارة ألمنيوم وPVC",
      "glass_installation": "تركيب الزجاج",
      "mirrors": "مرايا",

      "automobile": "السيارات",
      "auto_mechanic": "ميكانيك سيارات",
      "auto_electricity": "كهرباء سيارات",
      "bodywork": "سمكرة",
      "car_glass": "زجاج السيارات",

      "events_wedding": "المناسبات والأعراس",
      "cakes": "حلويات",
      "home_hair_women": "حلاقة نسائية في المنزل",
      "makeup_home": "مكياج في المنزل",
      "party_decoration": "تزيين الحفلات",

      "various_services": "خدمات متعددة",
      "cleaning_lady": "عاملة تنظيف",
      "babysitting": "حاضنة أطفال",
      "gardening": "بستنة",
      "cleaning": "تنظيف",
      "drain_cleaning": "تسليك قنوات المياه",
      "roadside_assistance": "إسعاف سيارات",
      "transport": "نقل",
      "delivery": "توصيل",
      "delivery_outside": "توصيل خارج المدينة",
      // ================= Onboarding =================
      'onboarding_title_1': 'مرحباً بك في أخدم',
      'onboarding_desc_1': 'اكتشف أفضل الخدمات حولك ببضع نقرات فقط.',

      'onboarding_title_2': 'ابحث عن مقدمي خدمات موثوقين',
      'onboarding_desc_2':
          'تصفح المحترفين الموثقين واحجز الخدمة التي تحتاجها فوراً.',

      'onboarding_title_3': 'حجز سهل وآمن',
      'onboarding_desc_3':
          'استمتع بتجربة سلسة مع دفع آمن وتتبع في الوقت الفعلي.',

      // ================= Auth =================
      'login': 'تسجيل الدخول',
      'welcome_back': 'مرحباً بعودتك! تأكد من إدخال بيانات الدخول.',
      'email_address': 'البريد الإلكتروني',
      'email_hint': 'example@gmail.com',
      'password': 'كلمة المرور',
      'enter_password': 'أدخل كلمة المرور',
      'forgot_password': 'نسيت كلمة المرور؟',
      'dont_have_account': 'ليس لديك حساب؟',
      'signup_now': 'أنشئ حساب الآن',
      'or':' أو ',
      'signup_google': 'التسجيل باستخدام Google',
      'signup_facebook': 'التسجيل باستخدام Facebook',
      'you_almost': 'أنت على بعد خطوة واحدة فقط!',
      'plz_signup': 'يرجى تسجيل الدخول أو إنشاء حساب لإكمال حجزك.',

      // ================= Buttons =================
      'next': 'التالي',
      'get_started': 'ابدأ الآن',

      // ================= Exit Dialog =================
      'exit_application': 'الخروج من التطبيق',
      'exit_confirmation': 'هل أنت متأكد أنك تريد الخروج من التطبيق؟',
      'yes_exit': 'نعم، خروج',
      'cancel': 'إلغاء',
      // ================= Signup =================
      'signup': 'إنشاء حساب',
      'signup_subtitle': 'لنبدأ بإعداد حسابك',
      'full_name': 'الاسم الكامل',
      'username_hint': 'اسم المستخدم',
      'email': 'البريد الإلكتروني',

      'create_password': 'إنشاء كلمة مرور',
      'password_hint': '********',
      'confirm_password': 'تأكيد كلمة المرور',
      'continue': 'متابعة',
      'already_have_account': 'لديك حساب بالفعل؟ ',

      // ================= Phone Number =================
      'add_phone_number': 'إضافة رقم الهاتف',
      'phone_number_subtitle': 'أدخل رقم هاتفك لتأكيد الطلبات بسهولة',
      'phone_number': 'رقم الهاتف',
      'phone': 'الهاتف',
      'phone_hint': '(0) 5 25 35 56 98',
      'confirm': 'تأكيد',

      // ================= Email Verification =================
      'verify_email_title': 'تحقق من بريدك الإلكتروني',
      'verify_email_subtitle': 'لقد أرسلنا رمز تحقق إلى بريدك الإلكتروني ',
      'didnt_receive_code': 'لم تستلم الرمز؟ ',
      'resend_code': 'إعادة إرسال الرمز',
      'verify': 'تحقق',

      // ================= Signup Done =================
      'signup_done_title': 'تم إنشاء حسابك بنجاح',
      'signup_done_subtitle':
          'يمكنك الآن تسجيل الدخول باستخدام كلمة المرور الجديدة.',
      'done': 'تم',
      // ================= Reset Password =================
      'reset_password_title': 'إعادة تعيين كلمة المرور',
      'reset_password_subtitle':
          'أدخل عنوان البريد الإلكتروني المرتبط بهذا الحساب لإعادة تعيين كلمة المرور.',
      'send': 'إرسال',

      // ================= OTP Reset =================
      'otp_verification_title': 'التحقق من الرمز',
      'otp_verification_subtitle':
          'لقد أرسلنا لك رمز التحقق. تحقق من بريدك الإلكتروني.',
      'otp_not_received': 'لم تستلم الرمز؟ ',

      // ================= Reset Password Done =================
      'reset_done_title': 'تمت إعادة تعيين كلمة المرور بنجاح',
      'reset_done_subtitle':
          'يمكنك الآن تسجيل الدخول باستخدام كلمة المرور الجديدة.',

      'new_password': 'كلمة مرور جديدة',

      'profile': 'الملف الشخصي',
      'account': 'الحساب',
      'personal_information': 'المعلومات الشخصية',
      'manage_your_account_informations': 'إدارة معلومات حسابك',
      'general': 'عام',
      'your_address': 'عنوانك',
      'notification_center': 'مركز الإشعارات',
      'support': 'الدعم',
      'terms_conditions': 'الشروط والأحكام',
      'security_privacy': 'الأمان والخصوصية',
      'log_out': 'تسجيل الخروج',
      'language': 'اللغة',

      'personal_info_subtitle':
          'أنشئ ثقة بمعلوماتك الشخصية. جميع البيانات محفوظة بأمان.',
      'username': 'اسم المستخدم',
      'birth_date': 'تاريخ الميلاد',
      'gender': 'الجنس',
      'select_gender': 'اختر الجنس',
      'male': 'ذكر',
      'female': 'أنثى',
      'other': 'آخر',
      'edit_information': 'تعديل المعلومات',

      'recent_request': 'الطلبات الأخيرة',
      'all': 'الكل',
      'active': 'نشط',
      'up_coming': 'القادمة',
      'completed': 'مكتملة',
      'search_by': 'بحث حسب',

      'water_leak': "تسرب ماء",
      'service_provider_name': "اسم مزود الخدمة",

      'notifications': "الإشعارات",
      'unread': "غير مقروءة",
      'system': "النظام",
      'security': "الأمان",
      'new_sale': "تم إتمام البيع",
      'sale_recorded':
          "تم تسجيل بيع بمبلغ 5,600 دينار جزائري على جهاز نقاط البيع الخاص بك.",
      'maintenance_notice': "إشعار الصيانة",
      'service_unavailable':
          "الخدمة غير متاحة مؤقتًا في 24 أكتوبر الساعة 2:00 صباحًا.",
      'delete_all_notifications': "حذف جميع الإشعارات",

      'search': 'بحث',
      'looking_service': 'هل تبحث عن خدمة؟',
      'im_looking_for': 'أنا أبحث عن',
      'plumbing': 'السباكة',
      'electrical': 'الكهرباء',
      'paint': 'الدهان',
      'filter_pending': 'قيد الانتظار',

      'cleaning': 'التنظيف',
      'masonry': 'البناء',
      'more': 'المزيد',
      'recent_searches': 'عمليات البحث الأخيرة',
      'fuite_deau': 'تسرب المياه',
      'short_circuits': 'دوائر كهربائية قصيرة',

      'today_time': 'اليوم، @time',
      'deal_confirmed':
          '✅ تم تأكيد الصفقة! يمكنك متابعة التقدم في الحجز والدردشة هنا عند الحاجة.',
      'chat_msg_hello': 'مرحباً 👋، هل أنت متاح الآن؟',
      'chat_msg_help': 'نعم! كيف يمكنني مساعدتك؟',
      'suggestion_earlier': 'هل يمكنك الوصول مبكرًا؟',
      'suggestion_materials': 'هل يمكنك تضمين المواد في السعر؟',
      'suggestion_urgent': 'إنه عاجل',

      'chat': 'الدردشة',
      'search_message': 'ابحث عن رسالة',
      "no_chat": "لا توجد محادثات بعد",
      "no_chat_msg": "ليس لديك أي محادثات حالياً. ابدأ محادثة الآن!",
      "status_online": "متصل",
      "write_message": "اكتب رسالة...",

      "tech_dz": "تك دي زد",
      "plumber": "سباك",
      "about_provider": "عن المزود",
      "reviews": "المراجعات",
      "rating": "التقييم",
      "experience": "الخبرة",
      "distance": "المسافة",
      "years": "سنوات",

      "Specialties": "التخصصات",
      "Plombing": "السباكة",
      "Leak Detection": "كشف التسرب",
      "Water tank related problems": "مشاكل خزانات المياه",
      "Rates": "الأسعار",
      "Prices depends on the type of service requested, complexity and travel costs.":
          "تعتمد الأسعار على نوع الخدمة المطلوبة، التعقيد، وتكاليف التنقل.",
      "Starting From": "يبدأ من",
      "hire": "استئجار",
      "overview": "نظرة عامة",
      "overview_desc":
          "سباك ذو خبرة أكثر من 8 سنوات في منطقة وهران. متخصص في الإصلاحات الطارئة والتركيبات الصحية.",
      "completed_work": "الأعمال المنجزة",
      "languages": "اللغات",
      "response_time": "زمن الاستجابة",
      "sort_by": "ترتيب حسب",

      "reviewer_name": "أحمد بن علي",
      "review_service": "إصلاح الشاشة",
      "review_date": "منذ يومين",
      "review_message":
          "خدمة ممتازة! كان أحمد محترفًا جدًا وأصلح حاسوبي بسرعة. الآن يعمل بشكل مثالي! أنصح به بشدة.",

      // ================= Home =================
      'services': 'الخدمات',
      'plumbing': 'السباكة',
      'electrical': 'الكهرباء',
      'paint': 'الدهان',
      'cleaning': 'التنظيف',
      'masonry': 'البناء',
      'see_more': 'عرض المزيد',
      'recent_requests': 'الطلبات الأخيرة',
      // ================= Header =================
      'welcome_back_user': 'مرحباً بعودتك أحمد!',
      'user_location': 'وهران، وهران - الجزائر',
      'looking_for_service': 'هل تبحث عن خدمة؟',
      // ================= Need Help Now =================
      'need_help_now': 'هل تحتاج إلى مساعدة الآن؟',
      'need_help_desc':
          'أنشئ طلب خدمتك الخاص واحصل على عروض من محترفين موثوقين خلال دقائق',
      'create_new_request': 'إنشاء طلب جديد',
      // ================= Recent Request =================
      'recent_request_title': 'تسرب مياه',
      'service_provider_name': 'اسم مزود الخدمة',
      'recent_request_status_completed': 'مكتملة',
      // ================= My Requests =================
      'my_requests_title': 'طلباتي',
      'accept': 'قبولْ',

      // Filters
      'filter_all': 'الكل',
      'filter_active': 'نشطة',
      'filter_completed': 'مكتملة',
      'filter_canceled': 'ملغاة',

      // Search
      'search_by': 'بحث حسب',
      // ================= Received Offers =================
      'received_offer_title': 'طلب خدمة',
      'received_offers_section': 'العروض المستلمة',
      // ================= Request - Step 1 =================
      'request_service_title': 'طلب خدمة',

      'request_step1_title': 'صف مشكلتك',
      'request_step1_desc':
          'أخبرنا بما يحتاج إلى إصلاح حتى نتمكن من ربطك بمزود الخدمة المناسب.',

      'problem_label': 'المشكلة',
      'problem_hint': 'مثال: تسرب ماء',

      'budget_range_label': 'نطاق الميزانية',
      'budget_min': 'الحد الأدنى',
      'budget_max': 'الحد الأقصى',

      'description_label': 'الوصف',
      'description_hint': 'اكتب هنا',

      'upload_image': 'رفع صورة',

      'reserve_service': 'حجز الخدمة',
      'schedule_service': 'جدولة الخدمة',

      // ================= Request - Step 2 =================
      'request_step2_title': 'تفاصيل الخدمة',
      'request_step2_desc':
          'أخبرنا متى وأين تحتاج الخدمة، والميزانية المتوقعة.',

      'exact_address': 'العنوان الدقيق',
      'use_current_location': 'استخدم موقعي الحالي',

      'date_label': 'التاريخ',
      'date_hint': 'يوم/شهر/سنة',

      'time_label': 'الوقت',
      'time_hint': '00:00',

      'reserve_provider': 'حجز المزوّد',
      // ================= Request - Step 3 =================
      'request_step3_title': 'مراجعة وتأكيد',
      'request_step3_desc': 'تحقق من تفاصيل طلبك قبل الإرسال.',

      'problem_label': 'المشكلة',
      'requested_service_label': 'الخدمة المطلوبة',
      'payment_method_label': 'طريقة الدفع',
      'total_amount_label': 'المبلغ الإجمالي',
      'time_label': 'الوقت',
      'date_label': 'التاريخ',

      'track_request': 'تتبع طلبك',
      'booking_warning':
          'بمجرد التأكيد، سيكون هذا الحجز نهائيًا. ستتمكن من تتبع تقدم العمل والتواصل مع المزود في أي وقت.',

      'confirm_request_btn': 'تأكيد الطلب | 0000 دج',
      'booking_confirmed_title': 'تم تأكيد الحجز',
      'booking_confirmed_message':
          'لقد تم حجز مزود الخدمة بنجاح! يمكنك التواصل معه في أي وقت الآن',

      // Ads
      'special_offer': 'عرض خاص',
      'ads': 'احصل على أول عملية إصلاح بخصم خاص بنسبة 20% على عملية الإصلاح.',
      'request_now': 'طلب الآن',
      'negociate': 'تفاوض',

      // ================= Requests Page =================
      'requests_page_title': 'طلب خدمة',
      'requests_search_hint': 'بحث عن خدمة؟',

      'request_card_plumbing': 'السباكة',
      'request_card_electrical': 'الكهرباء',
      'request_card_paint': 'الدهان',
      'request_card_cleaning': 'التنظيف',
      'request_card_masonry': 'البناء',

      'continue_btn': 'متابعة',

      // ================= Track Request Page =================
      'track_request_title': 'تتبع الطلب',
      'track_request_map_placeholder': 'الخريطة هنا',

      'request_status_section': 'حالة الطلب',
      'request_summary_section': 'ملخص الطلب',

      'report_issue': 'الإبلاغ عن مشكلة',
      // ================= View Request Page =================
      'view_request_title': 'عرض الطلب',
      'view_request_map_placeholder': 'الخريطة هنا',

      'request_status_section': 'حالة الطلب',
      'request_summary_section': 'ملخص الطلب',

      'report_issue': 'الإبلاغ عن مشكلة',
      'cancel_request': 'إلغاء الطلب',

      // ========= Empty request =========
      'waiting_for_offers': 'في انتظار العروض',
      'waiting_for_offers_desc':
          'نحن نقوم حالياً بإرسال طلب الخدمة الخاص بك إلى مقدمي الخدمات المتاحين ...',

      // modifiez ladresse
      "enter_address": "أدخل العنوان",
      "exact_address": "العنوان الكامل",
      "use_current_location": "استخدام موقعي الحالي",
      "confirm": "تأكيد",

      // negociation
      "counter_offer": "عرض مضاد",
      "amount_da": "2000 دج",
      "to_user": "إلى أحمد بن علي",
      "time_left": "الوقت المتبقي",
      "time_remaining": "10:00 دقيقة",
      "enter_your_offer": "أدخل عرضك",
      "minimum_offer_warning": "يجب أن يكون الحد الأدنى للعرض أكبر من -----",
      "be_reasonable": "كن معقولاً في تفاوضك للحصول على أفضل خدمة",
      "send_offer": "إرسال العرض",

      // request status config
      "completed": "مكتمل",
      "book_provider_again": "حجز المزود مرة أخرى",
      "canceled": "ملغاة",
      "remove_request": "إزالة الطلب",
      "active": "نشط",
      "mark_as_completed": "تحديد كمكتمل",
      "upcoming": "قادم",
      "cancel": "إلغاء",
      "view_offers": "عرض العروض",

      // Request Summary
      "request_id": "رقم الطلب",
      "date_time": "التاريخ والوقت",
      "price": "السعر",
      "location": "الموقع",
      "sample_request_number": "#ORN-2025-1234",
      "sample_date_time": "15 أكتوبر 2025، 10:00",
      "sample_price": "2200 دج",
      "sample_location": "45 شارع العربي بن مهيدي",

      // timeline
      "technician_booked": "تم حجز الفني",
      "technician_on_the_way": "الفني في الطريق",
      "arrived": "وصل",
      "work_in_progress": "العمل جارٍ",
      "work_done": "اكتمل العمل",
      "placeholder_date": "---",

      "header_title_1": "خدمات الكهرباء والصيانة",
      "header_subtitle_1": "كهربائيون محترفون في خدمتك",

      "header_title_2": "خدمات السباكة",
      "header_subtitle_2": "سبّاكون محترفون قريبون منك",

      "header_title_3": "خدمة سريعة وآمنة",
      "header_subtitle_3": "تقنيون موثوقون في أي وقت",
      "getting_location": "جارٍ الحصول على الموقع...",
      "location_service_disabled": "خدمة الموقع معطلة",
      "location_permission_denied": "تم رفض صلاحية الموقع",
      "location_permission_denied_forever": "تم رفض صلاحية الموقع نهائيًا",
      "unknown_location": "الموقع غير معروف",
      "error_getting_location": "حدث خطأ أثناء جلب الموقع",

      "Plumber": "سباك",
      "pipe_installation": "تركيب الأنابيب",
      "leak_fix": "إصلاح التسريبات",
      "water_heater": "سخان المياه",

      "Electrician": "كهربائي",
      "wire_installation": "تركيب الأسلاك",
      "switches_sockets": "المفاتيح والمقابس",
      "electrical_repair": "إصلاح كهربائي",

      "Painter": "دهان",
      "interior_painting": "دهان داخلي",
      "exterior_painting": "دهان خارجي",
      "decorative_painting": "دهان زخرفي",

      "Mason": "بناء",
      "wall_building": "بناء الجدران",
      "concrete_pouring": "صب الخرسانة",
      "brick_stone_work": "أعمال الطوب والحجر",

      "Cleaning": "تنظيف",
      "home_cleaning": "تنظيف المنزل",
      "office_cleaning": "تنظيف المكتب",
      "garden_cleaning": "تنظيف الحديقة",
    },
    'fr': {
      "upload_certificate": "Télécharger un certificat (optionnel)",
      "upload_certificate_desc":
          "Téléchargez un document clair et valide (PDF, SVG, JPEG)",
      "upload_document": "Télécharger un document",
      "tips_title": "Gardez ces conseils à l'esprit :",
      "tip1": "- Assurez-vous que le document est lisible",
      "tip2": "- Capturez tout le document en une seule image",
      "tip3": "- Utilisez des outils comme CamScanner",
      "upload_your_id": "Téléchargez votre pièce d'identité",
      "upload_id_desc":
          "Téléchargez une image claire, visible et valide de votre carte d'identité",
      "upload_front_id": "Télécharger le recto de la carte",
      "upload_back_id": "Télécharger le verso de la carte",
      "continue": "Continuer",
      "camera": "Caméra",
      "gallery": "Galerie",
      "error": "Erreur",
      "upload_both_images": "Veuillez télécharger les images recto et verso",
      "important_info":
          "Vos informations seront stockées en toute sécurité, l'hôte vérifiera les informations fournies, le reste restera privé",
      'choose_role': 'Choisissez votre rôle',
      'choose_role_desc':
          'Selon votre profil, choisissez votre rôle et profitez de l’expérience',
      'client': 'Client',
      'provider': 'Prestataire',
      "discount_badge": "Remise 20%",

      'home': 'Accueil',
      'requests': 'Demandes',
      'chat': 'Discussion',
      'settings': 'Paramètres',
      // ================= Onboarding =================
      'onboarding_title_1': 'Bienvenue sur Dar El Djazair',
      'onboarding_desc_1':
          'Découvrez les meilleurs plats traditionnels algériens à portée de clic.',

      'onboarding_title_2': 'Trouvez des chefs experts',
      'onboarding_desc_2':
          'Parcourez nos chefs certifiés et réservez vos plats favoris.',

      'onboarding_title_3': 'Réservation facile et sécurisée',
      'onboarding_desc_3':
          'Profitez d\'une expérience fluide avec paiement sécurisé et suivi en temps réel.',

      // ================= Authentification =================
      'login': 'Connexion',
      'welcome_back': 'Bon retour ! Veuillez entrer vos identifiants.',
      'email_address': 'Adresse email',
      'email_hint': 'exemple@gmail.com',
      'password': 'Mot de passe',
      'enter_password': 'Entrez votre mot de passe',
      'forgot_password': 'Mot de passe oublié ?',
      'dont_have_account': 'Vous n\'avez pas de compte ?',
      'signup_now': 'Inscrivez',
      'or': 'Ou',
      'signup_google': 'S\'inscrire avec Google',
      'signup_facebook': 'S\'inscrire avec Facebook',

      // ================= Boutons =================
      'next': 'Suivant',
      'get_started': 'Commencer',

      // ================= Dialogue de sortie =================
      'exit_application': 'Quitter l\'application',
      'exit_confirmation': 'Êtes-vous sûr de vouloir quitter l\'application ?',
      'yes_exit': 'Oui, quitter',
      'cancel': 'Annuler',

      // ================= Inscription =================
      'signup': 'Créer un compte',
      'signup_subtitle': 'Commençons par configurer votre compte',
      'full_name': 'Nom complet',
      'username_hint': 'Nom d\'utilisateur',
      'email': 'Email',
      'create_password': 'Créer un mot de passe',
      'password_hint': '********',
      'confirm_password': 'Confirmer le mot de passe',
      'continue': 'Continuer',
      'already_have_account': 'Vous avez déjà un compte ? ',

      // ================= Numéro de téléphone =================
      'add_phone_number': 'Ajouter un numéro de téléphone',
      'phone_number_subtitle':
          'Entrez votre numéro de téléphone pour confirmer vos réservations',
      'phone_number': 'Numéro de téléphone',
      'phone_hint': '(0) 5 25 35 56 98',
      'confirm': 'Confirmer',

      // ================= Vérification d'email =================
      'verify_email_title': 'Vérifiez votre email',
      'verify_email_subtitle':
          'Nous avons envoyé un code de vérification à votre email ',
      'didnt_receive_code': 'Vous n\'avez pas reçu le code ? ',
      'resend_code': 'Renvoyer le code',
      'verify': 'Vérifier',

      // ================= Inscription terminée =================
      'signup_done_title': 'Votre compte a été créé avec succès',
      'signup_done_subtitle':
          'Vous pouvez maintenant vous connecter avec votre nouveau mot de passe.',
      'done': 'Terminé',

      // ================= Réinitialisation de mot de passe =================
      'reset_password_title': 'Réinitialiser le mot de passe',
      'reset_password_subtitle':
          'Entrez l\'adresse email associée à ce compte pour réinitialiser votre mot de passe.',
      'send': 'Envoyer',

      // ================= OTP Réinitialisation =================
      'otp_verification_title': 'Vérification du code',
      'otp_verification_subtitle':
          'Nous vous avons envoyé un code de vérification. Vérifiez votre email.',
      'otp_not_received': 'Vous n\'avez pas reçu le code ? ',

      // ================= Réinitialisation terminée =================
      'reset_done_title': 'Mot de passe réinitialisé avec succès',
      'reset_done_subtitle':
          'Vous pouvez maintenant vous connecter avec votre nouveau mot de passe.',
      'new_password': 'Nouveau mot de passe',

      // ================= Profil =================
      'profile': 'Profil',
      'account': 'Compte',
      'personal_information': 'Informations personnelles',
      'manage_your_account_informations':
          'Gérez les informations de votre compte',
      'general': 'Général',
      'your_address': 'Votre adresse',
      'notification_center': 'Centre de notifications',
      'support': 'Support',
      'terms_conditions': 'Conditions d\'utilisation',
      'security_privacy': 'Sécurité et confidentialité',
      'log_out': 'Déconnexion',
      'language': 'Langue',

      // ================= Informations personnelles =================
      'personal_info_subtitle':
          'Créez la confiance avec vos informations personnelles. Toutes les données sont stockées en sécurité.',
      'username': 'Nom d\'utilisateur',
      'birth_date': 'Date de naissance',
      'gender': 'Genre',
      'select_gender': 'Sélectionner le genre',
      'male': 'Homme',
      'female': 'Femme',
      'other': 'Autre',
      'edit_information': 'Modifier les informations',

      // ================= Demandes récentes =================
      'recent_request': 'Demandes récentes',
      'all': 'Toutes',
      'active': 'Actives',
      'up_coming': 'À venir',
      'completed': 'Terminées',
      'search_by': 'Rechercher par',

      'water_leak': 'Fuites d\'eau',
      'service_provider_name': 'Nom du prestataire',

      // ================= Notifications =================
      'notifications': 'Notifications',
      'unread': 'Non lues',
      'system': 'Système',
      'security': 'Sécurité',
      'new_sale': 'Vente effectuée',
      'sale_recorded':
          'Une vente de 5 600 DA a été enregistrée sur votre terminal.',
      'maintenance_notice': 'Avis de maintenance',
      'service_unavailable':
          'Service temporairement indisponible le 24 octobre à 2h00.',
      'delete_all_notifications': 'Supprimer toutes les notifications',

      // ================= Recherche =================
      'search': 'Rechercher',
      'looking_service': 'Vous cherchez un service ?',
      'im_looking_for': 'Je recherche',
      'plumbing': 'Plomberie',
      'electrical': 'Électricité',
      'paint': 'Peinture',
      'cleaning': 'Nettoyage',
      'masonry': 'Maçonnerie',
      'more': 'Plus',
      'recent_searches': 'Recherches récentes',
      'fuite_deau': 'Fuites d\'eau',
      'short_circuits': 'Courts-circuits électriques',

      // ================= Chat =================
      'today_time': 'Aujourd\'hui, @time',
      'deal_confirmed':
          '✅ Réservation confirmée ! Vous pouvez suivre l\'avancement et discuter ici.',
      'chat_msg_hello': 'Bonjour 👋, êtes-vous disponible maintenant ?',
      'chat_msg_help': 'Oui ! Comment puis-je vous aider ?',
      'suggestion_earlier': 'Pouvez-vous arriver plus tôt ?',
      'suggestion_materials':
          'Pouvez-vous inclure les matériaux dans le prix ?',
      'suggestion_urgent': 'C\'est urgent',

      'chat': 'Discussion',
      'search_message': 'Rechercher un message',
      'no_chat': 'Aucune discussion pour le moment',
      'no_chat_msg':
          'Vous n\'avez pas encore de discussions. Commencez une discussion maintenant !',
      'status_online': 'En ligne',
      'write_message': 'Écrivez un message...',

      // ================= Prestataires =================
      'tech_dz': 'Tech DZ',
      'plumber': 'Plombier',
      'about_provider': 'À propos du prestataire',
      'reviews': 'Avis',
      'rating': 'Note',
      'experience': 'Expérience',
      'distance': 'Distance',
      'years': 'années',

      'Specialties': 'Spécialités',
      'Plombing': 'Plomberie',
      'Leak Detection': 'Détection de fuites',
      'Water tank related problems': 'Problèmes liés aux réservoirs d\'eau',
      'Rates': 'Tarifs',
      'Prices depends on the type of service requested, complexity and travel costs.':
          'Les prix dépendent du type de service demandé, de la complexité et des frais de déplacement.',
      'Starting From': 'À partir de',
      'hire': 'Engager',
      'overview': 'Aperçu',
      'overview_desc':
          'Plombier avec plus de 8 ans d\'expérience dans la région d\'Oran. Spécialisé dans les réparations d\'urgence et les installations sanitaires.',
      'completed_work': 'Travaux réalisés',
      'languages': 'Langues',
      'response_time': 'Temps de réponse',
      'sort_by': 'Trier par',

      // ================= Avis =================
      'reviewer_name': 'Ahmed Ben Ali',
      'review_service': 'Réparation d\'écran',
      'review_date': 'Il y a 2 jours',
      'review_message':
          'Service excellent ! Ahmed était très professionnel et a réparé mon ordinateur rapidement. Il fonctionne parfaitement maintenant ! Je le recommande vivement.',

      // ================= Accueil =================
      'services': 'Services',
      'plumbing': 'Plomberie',
      'electrical': 'Électricité',
      'paint': 'Peinture',
      'cleaning': 'Nettoyage',
      'masonry': 'Maçonnerie',
      'see_more': 'Voir plus',
      'recent_requests': 'Demandes récentes',

      // ================= En-tête =================
      'welcome_back_user': 'Bon retour Ahmed !',
      'user_location': 'Oran, Algérie',
      'looking_for_service': 'Vous cherchez un service ?',

      // ================= Besoin d'aide =================
      'need_help_now': 'Besoin d\'aide maintenant ?',
      'need_help_desc':
          'Créez votre demande de service et recevez des offres de professionnels de confiance en quelques minutes',
      'create_new_request': 'Créer une nouvelle demande',

      // ================= Demande récente =================
      'recent_request_title': 'Fuites d\'eau',
      'service_provider_name': 'Nom du prestataire',
      'recent_request_status_completed': 'Terminée',

      // ================= Mes demandes =================
      'my_requests_title': 'Mes demandes',
      'accept': 'Accepter',

      // ================= Filtres =================
      'filter_all': 'Toutes',
      'filter_active': 'Actives',
      'filter_completed': 'Terminées',
      'filter_canceled': 'Annulées',

      'search_by': 'Rechercher par',

      // ================= Offres reçues =================
      'received_offer_title': 'Demande de service',
      'received_offers_section': 'Offres reçues',

      // ================= Demande - Étape 1 =================
      'request_service_title': 'Demander un service',
      'request_step1_title': 'Décrivez votre problème',
      'request_step1_desc':
          'Dites-nous ce qui doit être réparé pour que nous puissions vous mettre en relation avec le bon prestataire.',

      'problem_label': 'Problème',
      'problem_hint': 'Exemple : Fuite d\'eau',

      'budget_range_label': 'Fourchette de budget',
      'budget_min': 'Minimum',
      'budget_max': 'Maximum',

      'description_label': 'Description',
      'description_hint': 'Écrivez ici',

      'upload_image': 'Télécharger une image',

      'reserve_service': 'Réserver le service',
      'schedule_service': 'Planifier le service',

      // ================= Demande - Étape 2 =================
      'request_step2_title': 'Détails du service',
      'request_step2_desc':
          'Dites-nous quand et où vous avez besoin du service, et votre budget prévu.',

      'exact_address': 'Adresse exacte',
      'use_current_location': 'Utiliser ma position actuelle',

      'date_label': 'Date',
      'date_hint': 'Jour/Mois/Année',

      'time_label': 'Heure',
      'time_hint': '00:00',

      'reserve_provider': 'Réserver le prestataire',

      // ================= Demande - Étape 3 =================
      'request_step3_title': 'Vérification et confirmation',
      'request_step3_desc':
          'Vérifiez les détails de votre demande avant de l\'envoyer.',

      'requested_service_label': 'Service demandé',
      'payment_method_label': 'Méthode de paiement',
      'total_amount_label': 'Montant total',

      'track_request': 'Suivre votre demande',
      'booking_warning':
          'Une fois confirmée, cette réservation sera définitive. Vous pourrez suivre l\'avancement du travail et communiquer avec le prestataire à tout moment.',

      'confirm_request_btn': 'Confirmer la demande | 0000 DA',
      'booking_confirmed_title': 'Réservation confirmée',
      'booking_confirmed_message':
          'Le prestataire a été réservé avec succès ! Vous pouvez communiquer avec lui à tout moment maintenant',

      // ================= Publicités =================
      'special_offer': 'Offre spéciale',
      'ads':
          'Obtenez votre première réparation avec une réduction spéciale de 20% sur le service.',
      'request_now': 'Demander maintenant',
      'negociate': 'Négocier',

      // ================= Page des demandes =================
      'requests_page_title': 'Demander un service',
      'requests_search_hint': 'Rechercher un service ?',

      'request_card_plumbing': 'Plomberie',
      'request_card_electrical': 'Électricité',
      'request_card_paint': 'Peinture',
      'request_card_cleaning': 'Nettoyage',
      'request_card_masonry': 'Maçonnerie',

      'continue_btn': 'Continuer',

      // ================= Suivi de demande =================
      'track_request_title': 'Suivre la demande',
      'track_request_map_placeholder': 'Carte ici',

      'request_status_section': 'Statut de la demande',
      'request_summary_section': 'Résumé de la demande',

      'report_issue': 'Signaler un problème',

      // ================= Voir la demande =================
      'view_request_title': 'Voir la demande',
      'request_status_section': 'Statut de la demande',
      'request_summary_section': 'Résumé de la demande',

      'cancel_request': 'Annuler la demande',

      // ================= En attente d'offres =================
      'waiting_for_offers': 'En attente d\'offres',
      'waiting_for_offers_desc':
          'Nous envoyons actuellement votre demande de service aux prestataires disponibles...',

      // ================= Modifier l'adresse =================
      'enter_address': 'Entrer l\'adresse',
      'exact_address': 'Adresse complète',

      // ================= Négociation =================
      'counter_offer': 'Contre-offre',
      'amount_da': '2000 DA',
      'to_user': 'À Ahmed Ben Ali',
      'time_left': 'Temps restant',
      'time_remaining': '10:00 minutes',
      'enter_your_offer': 'Entrez votre offre',
      'minimum_offer_warning': 'L\'offre minimum doit être supérieure à -----',
      'be_reasonable':
          'Soyez raisonnable dans vos négociations pour obtenir le meilleur service',
      'send_offer': 'Envoyer l\'offre',

      // ================= Statuts de demande =================
      'completed': 'Terminée',
      'book_provider_again': 'Réserver à nouveau ce prestataire',
      'canceled': 'Annulée',
      'remove_request': 'Supprimer la demande',
      'active': 'Active',
      'mark_as_completed': 'Marquer comme terminée',
      'upcoming': 'À venir',
      'cancel': 'Annuler',
      'view_request': 'Voir la demande',

      // ================= Résumé de demande =================
      'request_id': 'Numéro de demande',
      'date_time': 'Date et heure',
      'price': 'Prix',
      'location': 'Emplacement',
      'sample_request_number': '#ORN-2025-1234',
      'sample_date_time': '15 octobre 2025, 10:00',
      'sample_price': '2200 DA',
      'sample_location': '45 Rue Arabi Ben M\'hidi',

      // ================= Chronologie =================
      'technician_booked': 'Technicien réservé',
      'technician_on_the_way': 'Technicien en route',
      'arrived': 'Arrivé',
      'work_in_progress': 'Travail en cours',
      'work_done': 'Travail terminé',
      'placeholder_date': '---',

      // ================= En-têtes de services =================
      'header_title_1': 'Services électriques et de maintenance',
      'header_subtitle_1': 'Électriciens professionnels à votre service',

      'header_title_2': 'Services de plomberie',
      'header_subtitle_2': 'Plombiers professionnels près de chez vous',

      'header_title_3': 'Service rapide et sécurisé',
      'header_subtitle_3': 'Techniciens de confiance à tout moment',

      // ================= Localisation =================
      'getting_location': 'Obtention de la localisation...',
      'location_service_disabled': 'Service de localisation désactivé',
      'location_permission_denied': 'Permission de localisation refusée',
      'location_permission_denied_forever':
          'Permission de localisation refusée définitivement',
      'unknown_location': 'Localisation inconnue',
      'error_getting_location':
          'Erreur lors de l\'obtention de la localisation',

      // ================= Services spécifiques =================
      'Plumber': 'Plombier',
      'pipe_installation': 'Installation de tuyaux',
      'leak_fix': 'Réparation de fuites',
      'water_heater': 'Chauffe-eau',

      'Electrician': 'Électricien',
      'wire_installation': 'Installation de câbles',
      'switches_sockets': 'Interrupteurs et prises',
      'electrical_repair': 'Réparation électrique',

      'Painter': 'Peintre',
      'interior_painting': 'Peinture intérieure',
      'exterior_painting': 'Peinture extérieure',
      'decorative_painting': 'Peinture décorative',

      'Mason': 'Maçon',
      'wall_building': 'Construction de murs',
      'concrete_pouring': 'Coulage de béton',
      'brick_stone_work': 'Travaux de brique et pierre',

      'Cleaning': 'Nettoyage',
      'home_cleaning': 'Nettoyage de maison',
      'office_cleaning': 'Nettoyage de bureau',
      'garden_cleaning': 'Nettoyage de jardin',

      "electricity_security": "Électricité et sécurité",
      "electricity": "Électricité",
      "parabole": "Installation de parabole",
      "cctv": "Caméras de surveillance",
      "electric_gate": "Portail électrique",
      "electric_shutter": "Rideaux électriques",

      "plumbing_appliances_cooling": "Plomberie et appareils",
      "general_plumbing": "Plomberie générale",
      "appliance_repair": "Réparation d’électroménager",
      "ac_heating": "Climatisation et chauffage",

      "decoration_design": "Décoration et aménagement",
      "painting": "Peinture",
      "plaster": "Plâtre et placoplâtre",
      "interior_decoration": "Décoration intérieure",
      "facade_decoration": "Décoration de façade",
      "shop_facade": "Façades de magasins",

      "construction": "Construction",
      "tiling_wall": "Carrelage et murs",
      "waterproofing": "Étanchéité",
      "masonry": "Maçonnerie",

      "metalwork": "Métallerie",
      "welding": "Soudure",
      "blacksmith": "Ferronnerie",
      "locksmith": "Serrurerie",
      "metal_structure": "Charpente métallique",

      "carpentry_glass": "Menuiserie et vitrerie",
      "wood_carpentry": "Menuiserie bois",
      "aluminum_pvc": "Menuiserie aluminium et PVC",
      "glass_installation": "Installation de verre",
      "mirrors": "Miroiterie",

      "automobile": "Automobile",
      "auto_mechanic": "Mécanique automobile",
      "auto_electricity": "Électricité automobile",
      "bodywork": "Tôlerie",
      "car_glass": "Vitrage automobile",

      "events_wedding": "Événements et mariages",
      "cakes": "Gâteaux",
      "home_hair_women": "Coiffure à domicile (femme)",
      "makeup_home": "Maquillage à domicile",
      "party_decoration": "Décoration de fêtes",

      "various_services": "Services divers",
      "cleaning_lady": "Femme de ménage",
      "babysitting": "Garde d’enfants",
      "gardening": "Jardinage",
      "cleaning": "Nettoyage",
      "drain_cleaning": "Débouchage des canalisations",
      "roadside_assistance": "Dépannage automobile",
      "transport": "Transport",
      "delivery": "Livraison",
      "delivery_outside": "Livraison hors ville",
    },
  };
}
