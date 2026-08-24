import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gharib/src/home/data/datasource/home_local_data_source.dart';
import 'package:gharib/src/home/data/datasource/home_remote_data_source.dart';
import 'package:gharib/src/home/data/repostreis/home_repostreis_impl.dart';
import 'package:gharib/src/home/domin/entity/search_resault_entity.dart';
import 'package:gharib/src/home/domin/usecase/search_hadith_case.dart';
import 'package:gharib/src/home/presentation/bloc/search_event.dart';
import 'package:gharib/src/home/presentation/bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchHadithCase _searchHadithCase = SearchHadithCase(
    repostris: HomeRepostreisImpl(
      homeLocalDataSource: HomeLocalDataSource(),
      homeRemoteDataSource: HomeRemoteDataSource(),
    ),
  );

  // يتتبّع حالة البحث الحالي عبر الصفحات
  String _currentQuery = '';
  int _currentPage = 1;
  bool _hasNextPage = false;

  SearchBloc() : super(SearchInitial()) {
    on<SearchHadith>(_onSearchHadith);
    on<LoadMoreHadiths>(_onLoadMoreHadiths);
  }

  Future<void> _onSearchHadith(
    SearchHadith event,
    Emitter<SearchState> emit,
  ) async {
    emit(SearchLoading());

    _currentQuery = event.query;
    _currentPage = 1;
    _hasNextPage = false;

    try {
      final failureOrSecces = await _searchHadithCase.call(
        _currentQuery,
        _currentPage,
      );
      failureOrSecces.fold(
        (failure) {
          if (failure.errMessage == "No internet connection") {
            emit(NoInternet());
          } else if (failure.errMessage ==
              "No hadith found in the response") {
            emit(SearchEmpty());
            print(failure.errMessage);
          } else {
            print(failure.errMessage);
            emit(Error());
          }
        },
        (hadiths) {
          _hasNextPage = hadiths?.hasNextPage ?? false;
          emit(SearchSeccess(result: hadiths));
        },
      );
    } catch (e) {
      emit(Error());
    }
  }

  Future<void> _onLoadMoreHadiths(
    LoadMoreHadiths event,
    Emitter<SearchState> emit,
  ) async {
    final currentState = state;

    // لا يوجد شيء لتحميله إن لم نكن في حالة نجاح، أو لا توجد صفحة تالية،
    // أو هناك عملية تحميل جارية بالفعل
    if (currentState is! SearchSeccess) return;
    if (currentState.isLoadingMore) return;
    if (!_hasNextPage) return;

    emit(currentState.copyWith(isLoadingMore: true));

    final nextPage = _currentPage + 1;

    try {
      final failureOrSecces = await _searchHadithCase.call(
        _currentQuery,
        nextPage,
      );

      failureOrSecces.fold(
        (failure) {
          // نبقي على النتائج الحالية ونوقف مؤشر التحميل فقط عند الفشل
          print(failure.errMessage);
          emit(currentState.copyWith(isLoadingMore: false));
        },
        (newPageResult) {
          if (newPageResult == null || newPageResult.hadiths.isEmpty) {
            _hasNextPage = false;
            emit(currentState.copyWith(isLoadingMore: false));
            return;
          }

          _currentPage = nextPage;
          _hasNextPage = newPageResult.hasNextPage;

          final mergedHadiths = [
            ...?currentState.result?.hadiths,
            ...newPageResult.hadiths,
          ];

          final mergedResult = SearchResult(
            hadiths: mergedHadiths,
            total: newPageResult.total,
            page: newPageResult.page,
            hasNextPage: newPageResult.hasNextPage,
            hasPreviousPage: newPageResult.hasPreviousPage,
          );

          emit(SearchSeccess(result: mergedResult, isLoadingMore: false));
        },
      );
    } catch (e) {
      emit(currentState.copyWith(isLoadingMore: false));
    }
  }
}