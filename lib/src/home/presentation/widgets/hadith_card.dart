import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'package:gharib/core/routing/Routes.dart';
import 'package:gharib/src/home/domin/entity/hadith_entity.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'container_card.dart';

class HadithCard extends StatelessWidget {
  final HadithEntity hadith;
  const HadithCard({super.key, required this.hadith});

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
                      'الحكم: ${hadith.grade}',
                      style: TextStyleManger.BlackTitle.copyWith(
                        color: AppColors.gold,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 48.w),
            ],
          ),
          SizedBox(height: 20.h),

          Text(
            hadith.text,
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontFamily: GoogleFonts.amiri().fontFamily,
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
                'الراوي: ${hadith.narrator}',
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
                'المصدر: ${hadith.book}',
                style: TextStyleManger.BlackTitle.copyWith(
                  color: AppColors.foreground,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),

          Text(
            'المحدّث: ${hadith.scholar}',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(height: 6.h),

          Text(
            'الصفحة أو الرقم: ${hadith.numberOrPage}',
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
              InkWell(
                onTap: () => context.push(Routes.hadithDetails, extra: hadith),
                child: Row(
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
