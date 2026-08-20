import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'package:gharib/src/favorite/presentation/widgets/Empty_favorite.dart';
import 'package:gharib/src/favorite/presentation/widgets/favorite_card.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'المفضلة',
                  style: TextStyleManger.BlackTitle.copyWith(
                    color: AppColors.foreground,
                    fontSize: 22.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  'محفوظة على جهازك فقط .',
                  style: TextStyleManger.BlackTitle.copyWith(
                    color: AppColors.gold,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 20.h),

                //FavoriteCard(),
                EmptyFavorite(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
