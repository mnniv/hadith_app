import 'package:gharib/src/home/domin/entity/sub_entity/hadith_source.dart';

class HadithEntity {
  final String text;
  final String narrator;
  final String scholar;
  final String book;
  final String? numberOrPage;
  final String grade;
  final HadithSource source;

  const HadithEntity({
    required this.text,
    required this.narrator,
    required this.scholar,
    required this.book,
    this.numberOrPage,
    required this.grade,
    required this.source,
  });
}
