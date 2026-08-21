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
    Color _getColor(String grade) {
      switch (grade) {
        case 'صحيح':
          return AppColors.sahih;
        case 'ضعيف':
          return AppColors.daif;

        case 'حسن':
          return AppColors.hasan;

        case 'موضوع':
          return AppColors.mawdu;
        default:
          return AppColors.daif;
      }
    }

    Color _getColorForground(String grade) {
      switch (grade) {
        case 'صحيح':
          return AppColors.sahihForeground;
        case 'ضعيف':
          return AppColors.daifForeground;

        case 'حسن':
          return AppColors.hasanForeground;

        case 'موضوع':
          return AppColors.mawduForeground;
        default:
          return AppColors.daifForeground;
      }
    }

    return ContainerCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: _getColorForground(hadith.grade),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.info, size: 18.sp, color: _getColor(hadith.grade)),
                SizedBox(width: 6.w),
                Flexible(
                  child: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    'الحكم: ${hadith.grade}',
                    style: TextStyleManger.BlackTitle.copyWith(
                      color: _getColor(hadith.grade),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: 48.w),
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
                color: AppColors.mutedForeground,
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
                  TextSpan(text: hadith.grade),
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
