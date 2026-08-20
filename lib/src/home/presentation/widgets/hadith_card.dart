import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'container_card.dart';

class HadithCard extends StatelessWidget {
  const HadithCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: AppColors.daif,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Row(
                  children: [
                    Icon(Icons.info, size: 18.sp, color: AppColors.gold),
                    SizedBox(width: 6.w),
                    Text(
                      'الحكم: ضعيف',
                      style: TextStyleManger.BlackTitle.copyWith(
                        color: AppColors.gold,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),

              Text(
                'مطابقة 100%',
                style: TextStyleManger.BlackTitle.copyWith(
                  color: AppColors.foreground,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),

          Text(
            'إنَّما الأعمالُ بالنياتِ . . . .',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(height: 20.h),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: AppColors.goldForeground,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Text.rich(
              style: TextStyleManger.BlackTitle.copyWith(
                color: AppColors.muted,
                fontSize: 12.sp,
              ),
              TextSpan(
                children: [
                  TextSpan(
                    text: 'نص الحكم كما ورد : ',
                    style: TextStyleManger.BlackTitle.copyWith(
                      color: AppColors.foreground,
                      fontSize: 12.sp,
                    ),
                  ),
                  TextSpan(
                    text:
                        'نص الحكم كما ورد: خطأ [يعني في إسناده] لا شك فيه عند أحد من أهل العلم بالحديث',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),

          Row(
            children: [
              Icon(
                CupertinoIcons.person,
                size: 16.sp,
                color: AppColors.foreground,
              ),
              SizedBox(width: 6.w),
              Text(
                'الراوي: أبو سعيد الخدري',
                style: TextStyleManger.BlackTitle.copyWith(
                  color: AppColors.foreground,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),

          Row(
            children: [
              Icon(
                CupertinoIcons.book,
                size: 16.sp,
                color: AppColors.foreground,
              ),
              SizedBox(width: 6.w),

              Text(
                'المصدر: التمهيد',
                style: TextStyleManger.BlackTitle.copyWith(
                  color: AppColors.foreground,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),

          Text(
            'المحدّث: ابن عبدالبر',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(height: 6.h),

          Text(
            'الصفحة أو الرقم: 21/270',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(height: 10.h),

          Container(
            height: 3.h,
            width: double.infinity,
            color: AppColors.goldForeground,
          ),
          SizedBox(height: 10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'الدرر السنية — الموسوعة الحديثية',
                style: TextStyleManger.BlackTitle.copyWith(
                  color: AppColors.foreground,
                  fontSize: 12.sp,
                ),
              ),
              Row(
                children: [
                  Text(
                    'التفاصيل',
                    style: TextStyleManger.BlackTitle.copyWith(
                      color: AppColors.gold,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(width: 6.w),
                  Icon(
                    CupertinoIcons.arrow_left,
                    color: AppColors.gold,
                    size: 16.sp,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
