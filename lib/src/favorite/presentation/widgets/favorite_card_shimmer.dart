import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/src/home/presentation/widgets/container_card.dart';
import 'package:shimmer/shimmer.dart';

class FavoriteCardShimmer extends StatelessWidget {
  const FavoriteCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        period: const Duration(milliseconds: 1400),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Grade badge
            Container(
              width: 105.w,
              height: 34.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),

            SizedBox(height: 14.h),

            // Hadith text
            _line(
              width: double.infinity,
              height: 16.h,
            ),
            SizedBox(height: 9.h),

            _line(
              width: double.infinity,
              height: 16.h,
            ),
            SizedBox(height: 9.h),

            _line(
              width: 0.82.sw,
              height: 16.h,
            ),
            SizedBox(height: 9.h),

            _line(
              width: 0.62.sw,
              height: 16.h,
            ),

            SizedBox(height: 22.h),

            // Book
            _line(
              width: 130.w,
              height: 13.h,
            ),

            SizedBox(height: 14.h),

            // Bottom actions
            Row(
              children: [
                Container(
                  width: 75.w,
                  height: 14.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),

                SizedBox(width: 18.w),

                Row(
                  children: [
                    Container(
                      width: 18.sp,
                      height: 18.sp,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Container(
                      width: 35.w,
                      height: 13.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _line({
    required double width,
    required double height,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
      ),
    );
  }
}