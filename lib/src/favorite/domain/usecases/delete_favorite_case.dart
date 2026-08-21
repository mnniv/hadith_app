import 'package:dartz/dartz.dart';
import '../../../../../core/errors/failure.dart';
import '../repositories/favorite_repository.dart';

class DeleteFavoriteCase {
  final FavoriteRepository repostris;
  DeleteFavoriteCase({required this.repostris});
  Future<Either<Failure, bool>> call(String hadithText) async {
    return repostris.deleteFavorite(hadithText);
  }
}
