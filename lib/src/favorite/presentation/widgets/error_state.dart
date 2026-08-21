import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';

class ErrorFavorite extends StatelessWidget {
  final String? errorMessage;
  final VoidCallback? onRetry;

  const ErrorFavorite({
    super.key,
    this.errorMessage,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 36.h),
      decoration: BoxDecoration(
        color: AppColors.card.withOpacity(0.5),
        borderRadius: BorderRadius.circular(24.r),
        border: Border.all(
          color: AppColors.destructive.withOpacity(0.3),
          width: 1,
        ),
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
          // Glowing Error Icon Container
          Container(
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.destructive.withOpacity(0.12),
              border: Border.all(
                color: AppColors.destructive.withOpacity(0.3),
                width: 1.5,
              ),
            ),
            child: Icon(
              CupertinoIcons.exclamationmark_triangle,
              color: AppColors.destructive,
              size: 32.sp,
            ),
          ),
          SizedBox(height: 20.h),

          // Error Title
          Text(
            'حدث خطأ غير متوقع',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.foreground,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),

          // Detailed Message
          Text(
            errorMessage ?? 'فشل في تحميل الأحاديث المحفوظة. يرجى المحاولة مرة أخرى.',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.mutedForeground,
              fontSize: 12.sp,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),

          // Retry Button (Rendered if callback provided)
          if (onRetry != null) ...[
            SizedBox(height: 24.h),
            InkWell(
              onTap: onRetry,
              borderRadius: BorderRadius.circular(12.r),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: AppColors.destructive.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: AppColors.destructive.withOpacity(0.4),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      CupertinoIcons.refresh,
                      color: AppColors.destructiveForeground,
                      size: 16.sp,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'إعادة المحاولة',
                      style: TextStyleManger.BlackTitle.copyWith(
                        color: AppColors.destructiveForeground,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}