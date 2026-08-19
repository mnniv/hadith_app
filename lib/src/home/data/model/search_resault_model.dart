import 'package:gharib/src/home/data/model/hadith_model.dart';
import 'package:gharib/src/home/domin/entity/search_resault_entity.dart';

class SearchResultModel extends SearchResult {
  const SearchResultModel({
    required super.hadiths,
    required super.total,
    required super.page,
    required super.hasNextPage,
    required super.hasPreviousPage,
  });
factory SearchResultModel.fromJson(Map<String, dynamic> json) {
  final metadata =
      json['metadata'] as Map<String, dynamic>? ?? {};

  final data =
      json['data'] as List<dynamic>? ?? [];

  return SearchResultModel(
    hadiths: data
        .whereType<Map<String, dynamic>>()
        .map(HadithModel.fromJson)
        .toList(),

    total: _parseInt(metadata['length']),

    page: _parseInt(metadata['page'], fallback: 1),

    hasNextPage: metadata['hasNextPage'] == true,

    hasPreviousPage: metadata['hasPrevPage'] == true,
  );
}

static int _parseInt(
  dynamic value, {
  int fallback = 0,
}) {
  if (value is int) {
    return value;
  }

  if (value is String) {
    return int.tryParse(value) ?? fallback;
  }

  return fallback;
}

  Map<String, dynamic> toJson() {
    return {
      'metadata': {
        'length': total,
        'page': page,
        'hasNextPage': hasNextPage,
        'hasPrevPage': hasPreviousPage,
      },
      'data': hadiths
          .map((hadith) => (hadith as HadithModel).toJson())
          .toList(),
    };
  }
}
