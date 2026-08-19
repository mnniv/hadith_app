import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/Theming/Colors/colors.dart';
import '../../../core/Theming/Fonts/TextStyleManger.dart';

class CustomAlertDialog {
  static void show({
    required String title,
    required String content,
    required String confirmText,
    required String cancelText,
    required Color confirmColor,
    required Color cancelColor,
    required VoidCallback onConfirm,
    required VoidCallback onCancel,
    bool barrierDismissible = false,
  }) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
        backgroundColor: Colors.white,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyleManger.Mediem25afacadablac,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              SingleChildScrollView(
                child: Text(
                  content,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              SizedBox(height: 20.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (cancelText.isNotEmpty)
                    _buildButton(
                      text: cancelText,
                      color: cancelColor,
                      onTap: onCancel,
                    ),
                  SizedBox(height:  10.h),
                  _buildButton(
                    text: confirmText,
                    color: confirmColor,
                    onTap: onConfirm,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: barrierDismissible,
    );
  }

  static Widget _buildButton({
    required String text,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Container(
      height: 45.h,
      width: 242.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          style: BorderStyle.solid,
          color: color,
          width: 1,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            text,
            style: TextStyleManger.Bold20AlegreyaSansWhite,
          ),
        ),
      ),
    );
  }
}
class CustomAlertDialogonbotton {
  static void show({
    required String title,
    required String content,
    required String cancelText,
    required Color cancelColor,
    required VoidCallback onCancel,
    bool barrierDismissible = false,
  }) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
        backgroundColor: Colors.white,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyleManger.Mediem25afacadablac,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              SingleChildScrollView(
                child: Text(
                  content,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              SizedBox(height: 20.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (cancelText.isNotEmpty)
                    _buildButton(
                      text: cancelText,
                      color: cancelColor,
                      onTap: onCancel,
                    ),
                  SizedBox(height:  10.h),

                ],
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: barrierDismissible,
    );
  }

  static Widget _buildButton({
    required String text,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Container(
      height: 45.h,
      width: 242.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          style: BorderStyle.solid,
          color: color,
          width: 1,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            text,
            style: TextStyleManger.Bold20AlegreyaSansWhite,
          ),
        ),
      ),
    );
  }
}