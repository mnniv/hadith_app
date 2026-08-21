import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gharib/src/favorite/data/datasources/local_data_source.dart';
import 'package:gharib/src/favorite/data/datasources/remote_data_source.dart';
import 'package:gharib/src/favorite/data/repositories/favorite_repository_impl.dart';
import 'package:gharib/src/favorite/domain/usecases/get_favorite_hadiths_case.dart';
import 'package:gharib/src/favorite/presentation/bloc/favorite_state.dart';

import 'favorite_event.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(GetFavoriteInitial()) {
    on<GetFavorites>((event, emit) async {
      emit(GetFavoriteInitial());
      try {
        final failureOrGetFavorite = await GetFavoriteHadithsCase(
          repostris: FavoriteRepositoryImpl(
            localdatasource: LocalDataFavoritePage(),
            remotedatasource: RemoteDataFavoritePage(),
          ),
        ).call();
        failureOrGetFavorite.fold(
          (failure) {
            print(failure.errMessage);
            emit(FavoriteError());
          },
          (Favorite) {
            print(Favorite);
            emit(FavoriteSeccess(favorites: Favorite));
          },
        );
      } catch (e) {
        emit(FavoriteError());
      }
    });
  }
}
