import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';

class EmptyFavorite extends StatelessWidget {
  const EmptyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 36.h),
      decoration: BoxDecoration(
        color: AppColors.card.withOpacity(0.5),
        borderRadius: BorderRadius.circular(24.r),
        border: Border.all(color: AppColors.border, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Glowing Icon Container
          Container(
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.gold.withOpacity(0.1),
              border: Border.all(
                color: AppColors.gold.withOpacity(0.25),
                width: 1.5,
              ),
            ),
            child: Icon(
              CupertinoIcons.heart_slash,
              color: AppColors.gold,
              size: 32.sp,
            ),
          ),
          SizedBox(height: 20.h),

          // Main Title
          Text(
            'لا توجد أحاديث محفوظة',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),

          // Subtitle / Guidance
          Text(
            'اضغط على أيقونة المفضلة عند قراءة أي حديث لحفظه والرجوع إليه لاحقاً.',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.mutedForeground,
              fontSize: 12.sp,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
