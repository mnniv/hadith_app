import 'package:dartz/dartz.dart';
import 'package:gharib/src/home/data/model/hadith_model.dart';
import '../../../../../core/errors/failure.dart';
import '../repositories/favorite_repository.dart';

class GetFavoriteHadithsCase {
  final FavoriteRepository repostris;
  GetFavoriteHadithsCase({required this.repostris});
  Future<Either<Failure, List<HadithModel>>> call() async {
    return repostris.getFavoriteHadiths();
  }
}
