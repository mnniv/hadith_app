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
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      height: 150.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.gold, width: 0.4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(CupertinoIcons.heart, color: AppColors.foreground, size: 26.sp),
          SizedBox(height: 20.h),
          Text(
            'لم تحفظ أي حديث بعد.',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
