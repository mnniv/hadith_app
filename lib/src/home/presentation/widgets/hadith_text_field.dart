import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'container_card.dart';

class HadithTextField extends StatelessWidget {
  const HadithTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      child: Column(
        children: [
          TextField(
            maxLines: 5,
            style: TextStyleManger.BlackTitle.copyWith(
              color: ColorManger.whiteColor,
              fontSize: 14.sp,
            ),
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              hint: Text(
                'من كذب علي ...',
                style: TextStyleManger.BlackTitle.copyWith(
                  color: ColorManger.whiteColor,
                  fontSize: 20.sp,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            width: 130.w,
            decoration: BoxDecoration(
              color: AppColors.chart1,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'تحقق',
                  textDirection: TextDirection.rtl,
                  style: TextStyleManger.BlackTitle.copyWith(fontSize: 14.sp),
                ),
                SizedBox(width: 6.w),
                Icon(CupertinoIcons.search, size: 17.sp),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
