import 'package:gharib/src/home/domin/entity/hadith_entity.dart';
import 'package:gharib/src/home/domin/entity/sub_entity/hadith_source.dart';

class HadithModel extends HadithEntity {
  const HadithModel({
    required super.text,
    required super.narrator,
    required super.scholar,
    required super.book,
    super.numberOrPage,
    required super.grade,
    required super.source,
  });

  factory HadithModel.fromJson(Map<String, dynamic> json) {
    return HadithModel(
      text: json['hadith'] as String? ?? '',
      narrator: json['rawi'] as String? ?? '',
      scholar: json['mohdith'] as String? ?? '',
      book: json['book'] as String? ?? '',
      numberOrPage: json['numberOrPage'] as String?,
      grade: json['grade'] as String? ?? '',
      source: const HadithSource(
        name: 'Dorar',
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'hadith': text,
      'rawi': narrator,
      'mohdith': scholar,
      'book': book,
      'numberOrPage': numberOrPage,
      'grade': grade,
      'source': {
        'name': source.name,
        'url': source.url,
      },
    };
  }
}