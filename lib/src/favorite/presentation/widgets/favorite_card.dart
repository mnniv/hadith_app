import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'package:gharib/core/routing/Routes.dart';
import 'package:gharib/src/home/domin/entity/hadith_entity.dart';
import 'package:gharib/src/home/presentation/widgets/container_card.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteCard extends StatelessWidget {
  final HadithEntity hadith;
  final VoidCallback onDelete;
  const FavoriteCard({super.key, required this.hadith, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: AppColors.daif,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
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
          SizedBox(height: 10.h),

          Text(
            hadith.text,
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontSize: 14.sp,
              fontFamily: GoogleFonts.amiri().fontFamily,
            ),
          ),
          SizedBox(height: 20.h),

          Text(
            hadith.book,
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.background,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(height: 10.h),

          Row(
            children: [
              InkWell(
                onTap: () => context.push(Routes.hadithDetails, extra: hadith),
                child: Text(
                  'فتح التفاصيل',
                  style: TextStyleManger.BlackTitle.copyWith(
                    color: AppColors.gold,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              InkWell(
                onTap: onDelete,
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.trash,
                      size: 18.sp,
                      color: AppColors.chart5,
                    ),
                    Text(
                      'إزالة',
                      style: TextStyleManger.BlackTitle.copyWith(
                        color: AppColors.chart5,
                        fontSize: 12.sp,
                      ),
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
