import 'package:dartz/dartz.dart';
import 'package:gharib/src/home/domin/entity/search_resault_entity.dart';
import '../../../../core/errors/failure.dart';

abstract class HomeRepostreis {
  Future<Either<Failure, SearchResult>> searchHadith(String query);
}
