import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gharib/src/home/data/datasource/home_local_data_source.dart';
import 'package:gharib/src/home/data/datasource/home_remote_data_source.dart';
import 'package:gharib/src/home/data/repostreis/home_repostreis_impl.dart';
import 'package:gharib/src/home/domin/usecase/search_hadith_case.dart';
import 'package:gharib/src/home/presentation/bloc/search_event.dart';
import 'package:gharib/src/home/presentation/bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<SearchHadith>((event, emit) async {
      emit(SearchInitial());

      try {
        final failureOrSecces = await SearchHadithCase(
          repostris: HomeRepostreisImpl(
            homeLocalDataSource: HomeLocalDataSource(),
            homeRemoteDataSource: HomeRemoteDataSource(),
          ),
        ).call(event.query);
        failureOrSecces.fold(
          (failure) {
            if (failure.errMessage == "No internet connection") {
              emit(NoInternet());
            } else {
              print(failure.errMessage);
              emit(Error());
            }
          },
          (hadiths) {
            emit(SearchSeccess(result: hadiths));
          },
        );
      } catch (e) {
        emit(Error());
      }
    });
  }
}
