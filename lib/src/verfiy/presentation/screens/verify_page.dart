import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'package:gharib/src/home/presentation/widgets/container_card.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'كيف نتحقق ؟',
                  style: TextStyleManger.BlackTitle.copyWith(
                    color: AppColors.foreground,
                    fontSize: 22.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  style: TextStyleManger.BlackTitle.copyWith(
                    color: AppColors.mutedForeground,
                    fontSize: 14.sp,
                  ),
                  'نحن لا نعتمد على الذكاء الاصطناعي  للحكم على الحديث. الحكم في هذا التطبيق منقول دائمًا من مصدر حديثي، ويُعرض باسم المحدّث والكتاب والصفحة، مع رابط يعود بك إلى المصدر.',
                ),
                SizedBox(height: 20.h),

                Container(height: 3.h, color: AppColors.card),
                SizedBox(height: 20.h),

                Text(
                  'خطوات التحقق',
                  style: TextStyleManger.BlackTitle.copyWith(
                    color: AppColors.foreground,
                    fontSize: 22.sp,
                  ),
                ),
                SizedBox(height: 20.h),

                _buildStep(
                  1,
                  'نأخذ نصك كما كتبته، ونطبّع نسخة داخلية منه (إزالة التشكيل وتوحيد الهمزات والتاء المربوطة) للبحث فقط.',
                ),
                _buildStep(
                  2,
                  'نرسل البحث إلى مصادر حديثية موثوقة، ونجمع ما تعيده من نصوص وأحكام.',
                ),
                _buildStep(
                  3,
                  'نوحّد صيغة النتائج ونحذف المكرر، ونرتّبها بنسبة مطابقة محسوبة حسابيًا.',
                ),
                _buildStep(
                  4,
                  'نعرض نص الحديث والراوي والمصدر ورقم الصفحة وحكم المحدّث كما ورد حرفيًا .',
                ),
                _buildStep(
                  5,
                  'إن لم نجد النص، نقول ذلك صراحة ولا نخترع حكمًا ولا مصدرًا.',
                ),
                SizedBox(height: 20.h),

                Text(
                  'اختلاف أحكام العلماء',
                  style: TextStyleManger.BlackTitle.copyWith(
                    color: AppColors.foreground,
                    fontSize: 22.sp,
                  ),
                ),
                SizedBox(height: 20.h),

                Text(
                  style: TextStyleManger.BlackTitle.copyWith(
                    color: AppColors.mutedForeground,
                    fontSize: 14.sp,
                  ),
                  'قد يُصحّح عالم حديثًا ويضعّفه آخر. لا نُخفي هذا الاختلاف، بل نعرض كل حكم باسم صاحبه ومصدره، دون ترجيح من عندنا.',
                ),
                SizedBox(height: 20.h),

                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 10.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.goldForeground,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Text(
                    'تنبيه: النتائج التقنية ليست بديلًا عن سؤال أهل العلم في المسائل التي تحتاج إلى فتوى أو تحقيق متخصص.',
                    style: TextStyleManger.BlackTitle.copyWith(
                      color: AppColors.gold,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStep(int numb, String step) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: ContainerCard(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: AppColors.gold,
                shape: BoxShape.circle,
              ),
              child: Text(
                numb.toString(),
                style: TextStyleManger.BlackTitle.copyWith(
                  color: AppColors.background,
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                step,
                style: TextStyleManger.BlackTitle.copyWith(
                  color: AppColors.mutedForeground,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
