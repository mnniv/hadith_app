import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Theming/Colors/colors.dart';
import '../Theming/Fonts/TextStyleManger.dart';

void showSnackbar(BuildContext context, String title, String message) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        title != '' ? '$title: $message' : '$message',
        style: TextStyleManger.BlackTitle.copyWith(
          color: AppColors.background,
          fontSize: 14.sp,
        ),
        textDirection: TextDirection.rtl,
      ),
      backgroundColor: AppColors.gold,
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
    ),
  );
}
