import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'package:gharib/src/home/presentation/widgets/container_card.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'تفاصيل الحديث',
                      style: TextStyleManger.BlackTitle.copyWith(
                        color: AppColors.gold,
                        fontSize: 18.sp,
                      ),
                    ),
                    Icon(
                      CupertinoIcons.chevron_back,
                      size: 28.sp,
                      color: AppColors.gold,
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 10.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.daif,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.info, size: 18.sp, color: AppColors.gold),
                          SizedBox(width: 6.w),
                          Text(
                            'حديث ضعيف',
                            style: TextStyleManger.BlackTitle.copyWith(
                              color: AppColors.gold,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                            color: AppColors.card,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: AppColors.foreground,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                            color: AppColors.card,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Icon(
                            Icons.my_library_books,
                            color: AppColors.foreground,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),

                ContainerCard(
                  child: Container(
                    height: 300.h,
                    width: double.infinity,
                    color: ColorManger.whiteColor,
                    child: Text('hadith here '),
                  ),
                ),
                SizedBox(height: 20.h),

                ContainerCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.book,
                            color: AppColors.background,
                            size: 18.sp,
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            'المصدر',
                            style: TextStyleManger.BlackTitle.copyWith(
                              color: AppColors.background,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),

                      Text(
                        'صحيح البخاري',
                        style: TextStyleManger.BlackTitle.copyWith(
                          color: AppColors.foreground,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 6.h),

                      Row(
                        children: [
                          Text(
                            'رقم الحديث : 1',
                            style: TextStyleManger.BlackTitle.copyWith(
                              color: AppColors.foreground,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            'الصفحة : 9',
                            style: TextStyleManger.BlackTitle.copyWith(
                              color: AppColors.foreground,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),

                ContainerCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.person,
                            color: AppColors.background,
                            size: 18.sp,
                          ),
                          Text(
                            'الراوي',
                            style: TextStyleManger.BlackTitle.copyWith(
                              color: AppColors.background,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),

                      Text(
                        'عمر بن الخطاب',
                        style: TextStyleManger.BlackTitle.copyWith(
                          color: AppColors.foreground,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),

                ContainerCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.handyman_sharp,
                            color: AppColors.background,
                            size: 18.sp,
                          ),
                          Text(
                            'حكم العلماء',
                            style: TextStyleManger.BlackTitle.copyWith(
                              color: AppColors.background,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),

                      Text(
                        'الحكم',
                        style: TextStyleManger.BlackTitle.copyWith(
                          color: AppColors.foreground,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
