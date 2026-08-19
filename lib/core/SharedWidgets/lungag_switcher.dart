// lib/common/widgets/language_switcher.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    // Current locale from GetX
    Locale currentLocale = Get.locale ?? const Locale('en');

    return Container(
      margin: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: DropdownButton<Locale>(
        isDense: false,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        underline: const SizedBox(),
        borderRadius: BorderRadius.circular(20),
        style: GoogleFonts.roboto(
          textStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
        ),

        icon: Icon(Icons.language, size: 25.sp, color: Colors.black),
        value: currentLocale,
        onChanged: (Locale? newLocale) {
          if (newLocale != null) {
            Get.updateLocale(newLocale); // Change language globally with GetX
          }
        },
        items: const [
          DropdownMenuItem<Locale>(value: Locale('en'), child: Text('English')),

          DropdownMenuItem<Locale>(value: Locale('ar'), child: Text('العربية')),
          DropdownMenuItem<Locale>(value: Locale('fr'), child: Text('frencais')),
        ],
      ),
    );
  }
}
