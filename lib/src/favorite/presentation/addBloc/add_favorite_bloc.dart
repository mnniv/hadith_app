import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gharib/core/SharedWidgets/simple_snackbar.dart';
import 'package:gharib/src/favorite/data/datasources/local_data_source.dart';
import 'package:gharib/src/favorite/data/datasources/remote_data_source.dart';
import 'package:gharib/src/favorite/data/repositories/favorite_repository_impl.dart';
import 'package:gharib/src/favorite/domain/usecases/add_favorite_case.dart';
import 'package:gharib/src/favorite/presentation/addBloc/add_favorite_event.dart';
import 'package:gharib/src/favorite/presentation/addBloc/add_favorite_state.dart';
import 'package:gharib/src/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:gharib/src/favorite/presentation/bloc/favorite_event.dart';

class AddFavoriteBloc extends Bloc<AddFavoriteEvent, AddFavoriteState> {
  AddFavoriteBloc() : super(AddFavoriteInitial()) {
    on<AddFavorite>((event, emit) async {
      emit(AddFavoriteLoding());
      try {
        final failureOrAddFavorite = await AddFavoriteCase(
          repostris: FavoriteRepositoryImpl(
            localdatasource: LocalDataFavoritePage(),
            remotedatasource: RemoteDataFavoritePage(),
          ),
        ).call(event.hadith);
        failureOrAddFavorite.fold(
          (failure) {
            emit(AddFavoriteError());
          },
          (AddFavorite) {
            print(AddFavorite);
            emit(AddFavoriteSeccess());

            showSnackbar(event.context, '', 'تم إضافة الحديث الى المفضلة');
            event.context.read<FavoriteBloc>().add(GetFavorites());
          },
        );
      } catch (e) {
        emit(AddFavoriteError());
      }
    });
  }
}
