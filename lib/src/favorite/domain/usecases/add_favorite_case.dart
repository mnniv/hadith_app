import 'package:dartz/dartz.dart';
import 'package:gharib/src/home/domin/entity/hadith_entity.dart';
import '../../../../../core/errors/failure.dart';
import '../repositories/favorite_repository.dart';

class AddFavoriteCase {
  final FavoriteRepository repostris;
  AddFavoriteCase({required this.repostris});
  Future<Either<Failure, bool>> call(HadithEntity Hadith) async {
    return repostris.addToFavorite(Hadith);
  }
}
