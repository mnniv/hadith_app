import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'package:gharib/src/home/presentation/widgets/hadith_card.dart';
import 'package:gharib/src/home/presentation/widgets/no_resault.dart';

import '../widgets/hadith_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit_outlined, size: 40.sp),
                  SizedBox(height: 20.h),
                  Text(
                    'تحقق من حديث',
                    style: TextStyleManger.BlackTitle.copyWith(
                      color: ColorManger.whiteColor,
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(height: 20.h),

                  Text(
                    'منصة علمية للتخقق من صحة الأحاديث النبوية',
                    style: TextStyleManger.BlackTitle.copyWith(
                      color: ColorManger.whiteColor,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 20.h),

                  HadithTextField(),
                  SizedBox(height: 20.h),

                  NoResaultFound(),
                  // Column(
                  //   children: [
                  //     Text(
                  //       'وجدنا 12 نتيجة مشابهة، معروضة حسب نسبة المطابقة.',
                  //       style: TextStyleManger.BlackTitle.copyWith(
                  //         color: AppColors.foreground,
                  //         fontSize: 14.sp,
                  //       ),
                  //     ),
                  //     SizedBox(height: 20.h),
                  //     HadithCard(),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
