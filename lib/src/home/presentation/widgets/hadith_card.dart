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

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // شارة الحكم
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: _getColorForground(hadith.grade),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.info, size: 16.sp, color: _getColor(hadith.grade)),
                SizedBox(width: 6.w),
                Flexible(
                  child: Text(
                    'الحكم: ${hadith.grade}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyleManger.BlackTitle.copyWith(
                      color: _getColor(hadith.grade),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 14.h),

          // نص الحديث
          Text(
            hadith.text,
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontFamily: GoogleFonts.amiri().fontFamily,
              fontSize: 15.sp,
              height: 1.6, // تحسين المسافة بين السطور للـ Arabic Text
            ),
          ),

          SizedBox(height: 14.h),

          // نص الحكم التفيصلي
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: AppColors.goldForeground,
              borderRadius: BorderRadius.circular(12.r),
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

          SizedBox(height: 14.h),

          // الراوي
          Row(
            children: [
              Icon(
                CupertinoIcons.person,
                size: 15.sp,
                color: AppColors.foreground,
              ),
              SizedBox(width: 6.w),
              Expanded(
                child: Text(
                  'الراوي: ${hadith.narrator}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyleManger.BlackTitle.copyWith(
                    color: AppColors.foreground,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),

          // المصدر / الكتاب
          Row(
            children: [
              Icon(
                CupertinoIcons.book,
                size: 15.sp,
                color: AppColors.foreground,
              ),
              SizedBox(width: 6.w),
              Expanded(
                child: Text(
                  'المصدر: ${hadith.book}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyleManger.BlackTitle.copyWith(
                    color: AppColors.foreground,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),

          // المحدث
          Text(
            'المحدّث: ${hadith.scholar}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(height: 6.h),

          // الصفحة أو الرقم
          Text(
            'الصفحة أو الرقم: ${hadith.numberOrPage}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(height: 10.h),

          // فاصل
          Container(
            height: 1.h,
            width: double.infinity,
            color: AppColors.goldForeground,
          ),
          SizedBox(height: 10.h),

          // الذيل السفلي (الدرر السنية + التفاصيل)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'الدرر السنية — الموسوعة الحديثية',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyleManger.BlackTitle.copyWith(
                    color: AppColors.foreground,
                    fontSize: 11.sp,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              InkWell(
                onTap: () => context.push(Routes.hadithDetails, extra: hadith),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'التفاصيل',
                      style: TextStyleManger.BlackTitle.copyWith(
                        color: AppColors.gold,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      CupertinoIcons.arrow_left,
                      color: AppColors.gold,
                      size: 14.sp,
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
