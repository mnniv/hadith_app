import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gharib/core/SharedWidgets/simple_snackbar.dart';
import 'package:gharib/src/favorite/data/datasources/local_data_source.dart';
import 'package:gharib/src/favorite/data/datasources/remote_data_source.dart';
import 'package:gharib/src/favorite/data/repositories/favorite_repository_impl.dart';
import 'package:gharib/src/favorite/domain/usecases/delete_favorite_case.dart';
import 'package:gharib/src/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:gharib/src/favorite/presentation/bloc/favorite_event.dart';
import 'package:gharib/src/favorite/presentation/delete%20bloc/delete_favorite_event.dart';
import 'package:gharib/src/favorite/presentation/delete%20bloc/delete_favorite_state.dart';
import 'package:go_router/go_router.dart';

class DeleteFavoriteBloc
    extends Bloc<DeleteFavoriteEvent, DeleteFavoriteState> {
  DeleteFavoriteBloc() : super(DeleteFavoriteInitial()) {
    on<DeleteFavorite>((event, emit) async {
      emit(DeleteFavoriteInitial());
      try {
        final failureOrDelete = await DeleteFavoriteCase(
          repostris: FavoriteRepositoryImpl(
            localdatasource: LocalDataFavoritePage(),
            remotedatasource: RemoteDataFavoritePage(),
          ),
        ).call(event.hadithText);
        failureOrDelete.fold(
          (failure) {
            print(failure.errMessage);
            emit(DeleteFavoriteError());
            showSnackbar(event.context, "Error", failure.errMessage);
          },
          (DeleteParfum) {
            emit(DeleteFavoriteSucces());
            showSnackbar(event.context, "", 'تم إزالة الحديث من المفضلة');

            event.context.read<FavoriteBloc>().add(GetFavorites());
          },
        );
      } catch (e) {
        emit(DeleteFavoriteError());
        showSnackbar(event.context, "Error", e.toString());
      }
    });
  }
}
