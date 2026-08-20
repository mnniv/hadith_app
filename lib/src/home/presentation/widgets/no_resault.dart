import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'container_card.dart';

class NoResaultFound extends StatelessWidget {
  const NoResaultFound({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Icon(
              Icons.search_off,
              size: 25.sp,
              color: AppColors.foreground,
            ),
          ),
          SizedBox(height: 10.h),
          Center(
            child: Text(
              'لم نجد هذا النص في المصادر المتاحة لدينا.',
              style: TextStyleManger.BlackTitle.copyWith(
                color: AppColors.foreground,
                fontSize: 17.sp,
              ),
            ),
          ),
          SizedBox(height: 10.h),

          Text(
            'قد يكون السبب اختلاف صياغة الحديث. جرّب ما يلي:',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.background,
              fontSize: 14.sp,
            ),
          ),
          SizedBox(height: 10.h),

          Text(
            '- ابحث بكلمات أقل من أول الحديث.',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.background,
              fontSize: 14.sp,
            ),
          ),
          Text(
            '- احذف التشكيل وعلامات الترقيم.',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.background,
              fontSize: 14.sp,
            ),
          ),
          Text(
            '- جرّب لفظًا آخر مشهورًا للحديث نفسه.',
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.background,
              fontSize: 14.sp,
            ),
          ),

          SizedBox(height: 10.h),

          Text.rich(
            style: TextStyleManger.BlackTitle.copyWith(
              color: AppColors.background,
              fontSize: 14.sp,
            ),
            textAlign: TextAlign.center,
            TextSpan(
              children: [
                TextSpan(text: 'عدم العثور على النص لا يعني الحكم عليه؛راجع'),
                TextSpan(
                  text: '  كيف نتحقق؟',
                  style: TextStyleManger.BlackTitle.copyWith(
                    color: AppColors.gold,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
