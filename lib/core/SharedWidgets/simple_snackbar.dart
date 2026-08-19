import 'package:flutter/material.dart';

import '../Theming/Colors/colors.dart';
import '../Theming/Fonts/TextStyleManger.dart';

void showSnackbar(BuildContext context, String title, String message) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        '$title: $message',
        style: TextStyleManger.WhiteSmall,
        textDirection: TextDirection.rtl,
      ),
      backgroundColor: ColorManger.primaryColor,
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
