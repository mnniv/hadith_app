import 'package:gharib/src/home/domin/entity/hadith_entity.dart';

class SearchResult {
  final List<HadithEntity> hadiths;
  final int total;
  final int page;
  final bool hasNextPage;
  final bool hasPreviousPage;

  const SearchResult({
    required this.hadiths,
    required this.total,
    required this.page,
    required this.hasNextPage,
    required this.hasPreviousPage,
  });
}
