import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../../../core/Theming/Colors/colors.dart';
import '../../../core/Theming/Fonts/TextStyleManger.dart';
bool _isDialogOpen = false;
void showCustomDialog({
  required BuildContext context,
  required String title,
  required String content,
  required String bottonText,
  required VoidCallback bottonFunction,
}) {
  if (_isDialogOpen) return; // إذا فيه Dialog مفتوح ما نفتح جديد

  _isDialogOpen = true;

  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
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
              Container(
                height: 45.h,
                width: 242.w,
                decoration: BoxDecoration(
                  color: ColorManger.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: ColorManger.primaryColor,
                    width: 1,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    bottonFunction();
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Text(
                      bottonText,
                      style: TextStyleManger.Bold20AlegreyaSansWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  ).then((_) {
    _isDialogOpen = false; // بعد الإغلاق نرجع الفلاغ
  });
}

/// Shows a dialog with loading animation that can be updated later
/// Returns a function to update the dialog content
Function({String? newTitle, String? newContent, String? newButtonText, VoidCallback? newButtonFunction}) showLoadingDialogWithUpdate({
  required BuildContext context,
  required String title,
  String? content,
}) {
  // Create a key to access the dialog later
  final GlobalKey<_LoadingDialogContentState> dialogKey = GlobalKey<_LoadingDialogContentState>();

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
        backgroundColor: Colors.white,
        child: LoadingDialogContent(
          key: dialogKey,
          title: title,
          content: content,
        ),
      );
    },
  );

  // Return a function to update the dialog
  return ({String? newTitle, String? newContent, String? newButtonText, VoidCallback? newButtonFunction}) {
    if (dialogKey.currentState != null) {
      dialogKey.currentState!.updateContent(
        newTitle: newTitle,
        newContent: newContent,
        buttonText: newButtonText,
        buttonFunction: newButtonFunction,
      );
    }
  };
}

class LoadingDialogContent extends StatefulWidget {
  final String title;
  final String? content;

  const LoadingDialogContent({
    Key? key,
    required this.title,
    this.content,
  }) : super(key: key);

  @override
  _LoadingDialogContentState createState() => _LoadingDialogContentState();
}

class _LoadingDialogContentState extends State<LoadingDialogContent> {
  late String title;
  String? content;
  String? buttonText;
  VoidCallback? buttonFunction;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    title = widget.title;
    content = widget.content;
  }

  void updateContent({
    String? newTitle,
    String? newContent,
    String? buttonText,
    VoidCallback? buttonFunction,
  }) {
    setState(() {
      if (newTitle != null) title = newTitle;
      if (newContent != null) content = newContent;
      this.buttonText = buttonText;
      this.buttonFunction = buttonFunction;
      isLoading = buttonText == null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          if (isLoading) ...[
            SizedBox(height: 10.h),
            SpinKitFadingCube(
              color: ColorManger.primaryColor,
              size: 50.0,
            ),
            SizedBox(height: 10.h),
            if (content != null) ...[
              SingleChildScrollView(
                child: Text(
                  content!,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ] else ...[
            if (content != null) ...[
              SingleChildScrollView(
                child: Text(
                  content!,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              SizedBox(height: 20.h),
            ],
            if (buttonText != null && buttonFunction != null)
              Container(
                height: 45.h,
                width: 242.w,
                decoration: BoxDecoration(
                  color: ColorManger.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: ColorManger.primaryColor,
                    width: 1,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    buttonFunction!();
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Text(
                      buttonText!,
                      style: TextStyleManger.Bold20AlegreyaSansWhite,
                    ),
                  ),
                ),
              ),
          ],
        ],
      ),
    );
  }
}


class CustomAlertDialogWidget {
  static void show({
    required String title,
    required Widget content,
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
              content, // ← هنا نعرض الـ widget بدل النص
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (cancelText.isNotEmpty)
                    _buildButton(
                      text: cancelText,
                      color: cancelColor,
                      onTap: onCancel,
                    ),
                  if (confirmText.isNotEmpty)
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