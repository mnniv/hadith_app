import 'package:dartz/dartz.dart';
import 'package:gharib/core/Netwirking/checkinternet.dart';
import 'package:gharib/core/errors/failure.dart';
import 'package:gharib/src/home/domin/entity/search_resault_entity.dart';
import '../../domin/repostreis/home_repostreis.dart';
import '../datasource/home_local_data_source.dart';
import '../datasource/home_remote_data_source.dart';

class HomeRepostreisImpl extends HomeRepostreis {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepostreisImpl({
    required this.homeLocalDataSource,
    required this.homeRemoteDataSource,
  });

  @override
  Future<Either<Failure, SearchResult>> searchHadith(String query) async {
    if (await NetworkUtil.hasInternet()) {
      try {
        final response = await homeRemoteDataSource.SearchHadith(query: query);

        return Right(response);
      } catch (e) {
        return Left(Failure(errMessage: e.toString()));
      }
    } else {
      return Left(Failure(errMessage: "No internet connection"));
    }
  }
}
