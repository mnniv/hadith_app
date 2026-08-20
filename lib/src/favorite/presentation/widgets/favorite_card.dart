import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'package:gharib/src/home/presentation/widgets/container_card.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({super.key});

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
                  'الحكم: ضعيف',
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
            'طلب العلم فريضة...',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontSize: 14.sp,
            ),
          ),
          SizedBox(height: 20.h),

          Text(
            'الذهبي - تلخيص العلل المتناهية ',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.background,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(height: 10.h),

          Row(
            children: [
              Text(
                'فتح التفاصيل',
                style: TextStyleManger.BlackTitle.copyWith(
                  color: AppColors.gold,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(width: 10.w),
              Row(
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
            ],
          ),
        ],
      ),
    );
  }
}
