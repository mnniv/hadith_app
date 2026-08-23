import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'package:gharib/src/home/presentation/main_bloc/main_bloc.dart';
import 'package:gharib/src/home/presentation/main_bloc/main_event.dart';
import 'container_card.dart';

class NoResultFound extends StatelessWidget {
  final VoidCallback? onHowWeVerifyTap;

  const NoResultFound({super.key, this.onHowWeVerifyTap});

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 8.h),

          // أيقونة البحث العصرية في خلفية دائريّة ملونة
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: AppColors.goldForeground.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: Icon(
              CupertinoIcons.search_circle_fill,
              size: 48.sp,
              color: AppColors.gold,
            ),
          ),

          SizedBox(height: 16.h),

          // العنوان الرئيسي
          Text(
            'لم نجد هذا النص في المصادر المتاحة',
            textAlign: TextAlign.center,
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 6.h),

          // Subtitle خفيف
          Text(
            'قد يكون السبب اختلاف صياغة الحديث أو الإملاء.',
            textAlign: TextAlign.center,
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.mutedForeground,
              fontSize: 12.sp,
            ),
          ),

          SizedBox(height: 18.h),

          // كارت التلميحات المخصص
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(14.w),
            decoration: BoxDecoration(
              color: AppColors.card,
              borderRadius: BorderRadius.circular(14.r),
              border: Border.all(color: AppColors.goldForeground, width: 1.w),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.lightbulb_fill,
                      size: 16.sp,
                      color: AppColors.gold,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      'مقترحات لتحسين البحث:',
                      style: TextStyleManger.BlackTitle.copyWith(
                        color: AppColors.gold,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                _buildTipItem('ابحث بكلمات أقل من بداية الحديث.'),
                SizedBox(height: 6.h),
                _buildTipItem('احذف التشكيل وعلامات الترقيم.'),
                SizedBox(height: 6.h),
                _buildTipItem('جرّب لفظاً آخر مشهوراً للحديث نفسه.'),
              ],
            ),
          ),

          SizedBox(height: 16.h),

          // التنويه السفلي مع الزر
          InkWell(
            onTap: () =>
                context.read<NavBarBloc>().add(NavBarItemSelected(2, context)),
            borderRadius: BorderRadius.circular(8.r),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
              child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'عدم العثور على النص لا يعني الحكم عليه؛ ',
                      style: TextStyleManger.BlackTitle.copyWith(
                        color: AppColors.mutedForeground,
                        fontSize: 12.sp,
                      ),
                    ),
                    TextSpan(
                      text: 'كيف نتحقق؟',
                      style: TextStyleManger.BlackTitle.copyWith(
                        color: AppColors.gold,
                        fontSize: 12.sp,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 4.h),
        ],
      ),
    );
  }

  // ودجت فرعية لبناء سطر التلميح بشكل نظيف وتفاعلي
  Widget _buildTipItem(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: Container(
            width: 5.w,
            height: 5.h,
            decoration: const BoxDecoration(
              color: AppColors.gold,
              shape: BoxShape.circle,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Text(
            text,
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontSize: 12.sp,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
