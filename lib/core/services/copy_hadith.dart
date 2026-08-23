import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gharib/core/SharedWidgets/simple_snackbar.dart';
import 'package:gharib/src/home/domin/entity/hadith_entity.dart';

void copyHadithToClipboard(BuildContext context, HadithEntity hadith) {
  // Format the text cleanly for sharing
  final String formattedText =
      '''
"${hadith.text}"

الراوي: ${hadith.narrator}
المحدث: ${hadith.scholar}
المصدر: ${hadith.book}
الصفحة أو الرقم: ${hadith.numberOrPage}
حكم الحديث: ${hadith.grade}
  '''
          .trim();

  // Copy to System Clipboard
  Clipboard.setData(ClipboardData(text: formattedText)).then((_) {
    if (!context.mounted) return;

    // Show feedback SnackBar
    ScaffoldMessenger.of(context).clearSnackBars();

    showSnackbar(context, '', 'تم نسخ الحديث بنجاح');
  });
}
