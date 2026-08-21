import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'package:google_fonts/google_fonts.dart';

class TopNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const TopNavigationBar({
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    final items = [
      {'label': 'البحث'},
      {'label': 'المفضلة'},
      {'label': 'كيف نتحقق؟'},
    ];

    return Container(
      margin: EdgeInsets.all(10.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.goldForeground,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.gold, width: 0.4.w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'غريب',
            style: TextStyleManger.BlackTitle.copyWith(
              fontSize: 22.sp,
              fontWeight: FontWeight.w500,
              fontFamily: GoogleFonts.amiri().fontFamily,
              color: AppColors.gold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(items.length, (index) {
              final isSelected = selectedIndex == index;
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4).w,
                child: InkWell(
                  onTap: () => onTabSelected(index),
                  borderRadius: BorderRadius.circular(8.r),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 8.h,
                    ),

                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          children: [
                            Text(
                              items[index]['label'] as String,
                              style: TextStyleManger.BlackTitle.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: isSelected
                                    ? AppColors.accentForeground
                                    : AppColors.mutedForeground,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            isSelected
                                ? Container(
                                    height: 6.h,
                                    width: 6.w,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: AppColors.gold,
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                        ),
                                      ],
                                      shape: BoxShape.circle,
                                      color: AppColors.gold,
                                    ),
                                  )
                                : SizedBox.shrink(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
