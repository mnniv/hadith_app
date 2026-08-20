import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'package:gharib/src/home/presentation/main_bloc/main_bloc.dart';
import 'package:gharib/src/home/presentation/main_bloc/main_event.dart';
import 'package:gharib/src/home/presentation/main_bloc/main_state.dart';

class CustomBnvb extends StatelessWidget {
  CustomBnvb({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarBloc, NavBarState>(
      builder: (context, state) {
        return Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            // Background bar
            Container(
              margin: EdgeInsets.only(
                left: 10.w,
                right: 10.w,
                top: 10.h,
                bottom: 20.h,
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 7.h),
              height: 80.h,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    color: ColorManger.Shadow.withOpacity(0.3),
                    offset: const Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavItem(
                    context,
                    CupertinoIcons.home,
                    0,
                    'الرئيسية'.tr,
                    state.selectedIndex,
                  ),
                  _buildNavItem(
                    context,
                    CupertinoIcons.heart,
                    1,
                    'المفضلة'.tr,
                    state.selectedIndex,
                  ),
                  _buildNavItem(
                    context,
                    CupertinoIcons.settings,
                    2,
                    'الاعدادات'.tr,
                    state.selectedIndex,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildNavItem(
    BuildContext context,
    IconData icon,
    int index,
    String label,
    int currentIndex,
  ) {
    final bool isActive = index == currentIndex;
    final color = isActive ? AppColors.foreground : AppColors.muted;

    return GestureDetector(
      onTap: () {
        context.read<NavBarBloc>().add(NavBarItemSelected(index, context));
      },
      child: Container(
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: isActive ? AppColors.primaryForeground : AppColors.primary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 22.sp, color: color),
            SizedBox(height: 4.h),
            Text(
              label,
              style: TextStyleManger.BlackSmall.copyWith(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
