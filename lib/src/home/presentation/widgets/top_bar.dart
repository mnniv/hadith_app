import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'package:google_fonts/google_fonts.dart';

class TopNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const TopNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {'label': 'البحث'},
      {'label': 'المفضلة'},
      {'label': 'كيف نتحقق؟'},
    ];

    return Container(
      margin: EdgeInsets.all(8.r),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.goldForeground,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.gold, width: 0.4.w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // عنوان مشكاة
          const PulsingMishkatText(),

          SizedBox(width: 4.w),

          // عناصر القائمة مغلفة بـ Flexible لمنع الـ Overflow على الشاشات الصغرى
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: List.generate(items.length, (index) {
                final isSelected = selectedIndex == index;
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: InkWell(
                    onTap: () => onTabSelected(index),
                    borderRadius: BorderRadius.circular(8.r),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: EdgeInsets.symmetric(
                        horizontal:
                            8.w, // تقليل الحشو ليتناسب مع الشاشات الضيقة
                        vertical: 6.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            items[index]['label'] as String,
                            style: TextStyleManger.BlackTitle.copyWith(
                              fontSize:
                                  12.sp, // تقليل حجم الخط قليلاً للـ Responsive
                              fontWeight: FontWeight.w500,
                              color: isSelected
                                  ? AppColors.accentForeground
                                  : AppColors.mutedForeground,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          isSelected
                              ? Container(
                                  height: 5.r,
                                  width: 5.r,
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
                              : SizedBox(
                                  height: 5.r,
                                ), // تثبيت الارتفاع لمنع اهتزاز النص
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class PulsingMishkatText extends StatefulWidget {
  const PulsingMishkatText({Key? key}) : super(key: key);

  @override
  State<PulsingMishkatText> createState() => _PulsingMishkatTextState();
}

class _PulsingMishkatTextState extends State<PulsingMishkatText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _glowAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);

    _glowAnimation = Tween<double>(
      begin: 2.0,
      end: 12.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _glowAnimation,
      builder: (context, child) {
        return Text(
          'مشكاة',
          style: TextStyleManger.BlackTitle.copyWith(
            fontSize: 18.sp, // تقليل الحجم ليتناسب مع الشاشات الصغيرة
            fontWeight: FontWeight.w500,
            fontFamily: GoogleFonts.amiri().fontFamily,
            color: AppColors.gold,
            shadows: [
              Shadow(
                color: AppColors.gold.withOpacity(0.8),
                blurRadius: _glowAnimation.value,
              ),
              Shadow(
                color: AppColors.gold.withOpacity(0.4),
                blurRadius: _glowAnimation.value * 2,
              ),
            ],
          ),
        );
      },
    );
  }
}
