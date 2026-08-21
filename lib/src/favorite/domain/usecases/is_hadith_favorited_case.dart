import 'package:dartz/dartz.dart';
import '../../../../../core/errors/failure.dart';
import '../repositories/favorite_repository.dart';

class IsHadithFavoritedCase {
  final FavoriteRepository repostris;
  IsHadithFavoritedCase({required this.repostris});
  Future<Either<Failure, bool>> call(String text) async {
    return repostris.isHadithFavorited(text);
  }
}
