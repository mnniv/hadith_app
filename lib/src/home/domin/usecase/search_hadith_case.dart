import 'package:dartz/dartz.dart';
import 'package:gharib/src/home/domin/entity/search_resault_entity.dart';
import '../../../../core/errors/failure.dart';
import '../repostreis/home_repostreis.dart';

class SearchHadithCase {
  final HomeRepostreis repostris;
  SearchHadithCase({required this.repostris});
  Future<Either<Failure, SearchResult?>> call(String query) async {
    return repostris.searchHadith(query);
  }
}
