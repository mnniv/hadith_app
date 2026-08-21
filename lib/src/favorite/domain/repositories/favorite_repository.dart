import 'package:dartz/dartz.dart';
import 'package:gharib/src/home/data/model/hadith_model.dart';
import 'package:gharib/src/home/domin/entity/hadith_entity.dart';
import '../../../../../core/errors/failure.dart';

abstract class FavoriteRepository {
  Future<Either<Failure,  List<HadithModel>>> getFavoriteHadiths();
  Future<Either<Failure,  bool>> addToFavorite(HadithEntity Hadith);
  Future<Either<Failure,  bool>> deleteFavorite(String hadithText);
  Future<Either<Failure,  bool>> isHadithFavorited(String hadithText);
}
