import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:shimmer/shimmer.dart';
import 'container_card.dart';

class HadithCardShimmer extends StatelessWidget {
  const HadithCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.card.withOpacity(0.5),
      highlightColor: AppColors.goldForeground.withOpacity(0.3),
      child: ContainerCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. شارة الحكم (Grade Badge)
            Container(
              width: 90.w,
              height: 26.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            SizedBox(height: 14.h),

            // 2. أسطر نص الحديث (Hadith Text Lines)
            Container(
              width: double.infinity,
              height: 14.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
            SizedBox(height: 8.h),
            Container(
              width: double.infinity,
              height: 14.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
            SizedBox(height: 8.h),
            Container(
              width: 180.w,
              height: 14.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
            SizedBox(height: 14.h),

            // 3. كارت الحكم التفصيلي (Full Grade Box)
            Container(
              width: double.infinity,
              height: 32.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            SizedBox(height: 14.h),

            // 4. السطر الأول: الراوي
            Row(
              children: [
                Container(
                  width: 16.w,
                  height: 16.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 8.w),
                Container(
                  width: 140.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),

            // 5. السطر الثاني: المصدر
            Row(
              children: [
                Container(
                  width: 16.w,
                  height: 16.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 8.w),
                Container(
                  width: 180.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),

            // 6. السطر الثالث: المحدث
            Container(
              width: 130.w,
              height: 12.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
            SizedBox(height: 8.h),

            // 7. السطر الرابع: الصفحة أو الرقم
            Container(
              width: 110.w,
              height: 12.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
            SizedBox(height: 10.h),

            // 8. الخط الفاصل
            Container(height: 1.h, width: double.infinity, color: Colors.white),
            SizedBox(height: 10.h),

            // 9. الذيل السفلي (Footer Row)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 140.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                Container(
                  width: 60.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
