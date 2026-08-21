import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'package:gharib/src/favorite/presentation/addBloc/add_favorite_bloc.dart';
import 'package:gharib/src/favorite/presentation/delete%20bloc/delete_favorite_bloc.dart';
import 'package:gharib/src/hadith_details/widgets/favorite_icon.dart';
import 'package:gharib/src/home/domin/entity/hadith_entity.dart';
import 'package:gharib/src/home/presentation/widgets/container_card.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HadithDetails extends StatelessWidget {
  final HadithEntity hadith;
  const HadithDetails({super.key, required this.hadith});

  @override
  Widget build(BuildContext context) {
    Color _getColor(String grade) {
      switch (grade) {
        case 'صحيح':
          return AppColors.sahih;
        case 'ضعيف':
          return AppColors.daif;

        case 'حسن':
          return AppColors.hasan;

        case 'موضوع':
          return AppColors.mawdu;
        default:
          return AppColors.daif;
      }
    }

    Color _getColorForground(String grade) {
      switch (grade) {
        case 'صحيح':
          return AppColors.sahihForeground;
        case 'ضعيف':
          return AppColors.daifForeground;

        case 'حسن':
          return AppColors.hasanForeground;

        case 'موضوع':
          return AppColors.mawduForeground;
        default:
          return AppColors.daifForeground;
      }
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddFavoriteBloc()),
        BlocProvider(create: (context) => DeleteFavoriteBloc()),
      ],
      child: Builder(
        builder: (context) {
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
                          InkWell(
                            onTap: () => context.pop(),
                            child: Icon(
                              CupertinoIcons.chevron_right,
                              size: 28.sp,
                              color: AppColors.gold,
                            ),
                          ),
                          Text(
                            'تفاصيل الحديث',
                            style: TextStyleManger.BlackTitle.copyWith(
                              color: AppColors.gold,
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(width: 48.w),
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
                              color: _getColorForground(hadith.grade),
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.info,
                                  size: 18.sp,
                                  color: _getColor(hadith.grade),
                                ),
                                SizedBox(width: 6.w),
                                Text(
                                  'حديث ${hadith.grade}',
                                  style: TextStyleManger.BlackTitle.copyWith(
                                    color: _getColor(hadith.grade),
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              FavoriteIconButton(hadith: hadith),
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
                        child: Text(
                          hadith.text,
                          style: TextStyleManger.BlackTitle.copyWith(
                            color: AppColors.gold,
                            fontSize: 18.sp,
                            fontFamily: GoogleFonts.amiri().fontFamily,
                          ),
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
                              hadith.book,
                              style: TextStyleManger.BlackTitle.copyWith(
                                color: AppColors.foreground,
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(height: 6.h),

                            Row(
                              children: [
                                Text(
                                  'رقم الحديث أو الصفحة : ${hadith.numberOrPage}',
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
                              hadith.scholar,
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
                              hadith.grade,
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
        },
      ),
    );
  }
}
