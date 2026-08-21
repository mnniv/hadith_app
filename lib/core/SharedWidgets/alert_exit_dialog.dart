import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/Theming/Colors/colors.dart';
import '../../../core/Theming/Fonts/TextStyleManger.dart';

Future<bool> showExitConfirmationDialog({
  required BuildContext context,
  String title = "exit_application",
  String content = "exit_confirmation",
  String confirmText = "yes_exit",
  String cancelText = "cancel",
  Function? bottonFunctionConfirmation,
  Function? bottonFunctionCansled,
}) async {
  final Function confirmAction =
      bottonFunctionConfirmation ??
      () {
        print("Default confirm action executed.");
        Navigator.of(context).pop(true);
      };
  final Function bottocanleactionn =
      bottonFunctionCansled ??
      () {
        print("Default confirm action executed.");
        Navigator.of(context).pop(false);
      };

  bool? result = await showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return PopScope(
        canPop: false,
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
          backgroundColor: AppColors.card,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 320.w, minWidth: 280.w),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 12.h),
                    child: Text(
                      title.tr,
                      style: TextStyleManger.Mediem25afacadablac.copyWith(
                        fontSize: 20.sp,
                        color: AppColors.foreground,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 24.h),
                    child: Text(
                      content.tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        height: 1.4,
                        color: AppColors.mutedForeground,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        _DialogButton(
                          text: confirmText.tr,
                          backgroundColor: AppColors.gold,
                          textColor: AppColors.background,
                          onPressed: () {
                            confirmAction();
                          },
                        ),
                        SizedBox(height: 10.h),
                        _DialogButton(
                          text: cancelText.tr,
                          backgroundColor: ColorManger.BlacColor,
                          textColor: Colors.white,
                          onPressed: () {
                            bottocanleactionn();
                          },
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
  );

  return result ?? false;
}

class _DialogButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final bool hasBorder;
  final VoidCallback onPressed;

  const _DialogButton({
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.hasBorder = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 272.w,
      height: 45.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
            side: hasBorder
                ? BorderSide(color: ColorManger.primaryColor, width: 1.5.w)
                : BorderSide.none,
          ),
        ),
        child: Text(
          text,
          style: TextStyleManger.BlackTitle.copyWith(
            color: textColor,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
