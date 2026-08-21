import 'package:dartz/dartz.dart';
import 'package:gharib/src/favorite/domain/repositories/favorite_repository.dart';
import 'package:gharib/src/home/data/model/hadith_model.dart';
import 'package:gharib/src/home/domin/entity/hadith_entity.dart';
import '../../../../../core/errors/failure.dart';
import '../datasources/local_data_source.dart';
import '../datasources/remote_data_source.dart';

class FavoriteRepositoryImpl extends FavoriteRepository {
  final LocalDataFavoritePage localdatasource;
  final RemoteDataFavoritePage remotedatasource;
  FavoriteRepositoryImpl({
    required this.localdatasource,
    required this.remotedatasource,
  });

  @override
  Future<Either<Failure, List<HadithModel>>> getFavoriteHadiths() async {
    try {
      final HadithsList = await localdatasource.getCachedHadiths();
      return Right(HadithsList);
    } catch (e) {
      return Left(Failure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> addToFavorite(HadithEntity Hadith) async {
    try {
      await localdatasource.cacheHadith(Hadith);

      return Right(true);
    } catch (e) {
      return Left(Failure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteFavorite(String hadithText) async {
    try {
      await localdatasource.removeCachedHadith(hadithText);
      return Right(true);
    } catch (e) {
      return Left(Failure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> isHadithFavorited(String hadithText)  async {
    try {
      await localdatasource.isHadithFavorited(hadithText);
      return Right(true);
    } catch (e) {
      return Left(Failure(errMessage: e.toString()));
    }
  }
}
