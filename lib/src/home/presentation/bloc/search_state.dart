import 'package:equatable/equatable.dart';
import 'package:gharib/src/home/domin/entity/search_resault_entity.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object?> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class NoInternet extends SearchState {}

class Error extends SearchState {}

class SearchEmpty extends SearchState {}

class SearchSeccess extends SearchState {
  final SearchResult? result;
  final bool isLoadingMore;

  const SearchSeccess({required this.result, this.isLoadingMore = false});

  SearchSeccess copyWith({SearchResult? result, bool? isLoadingMore}) {
    return SearchSeccess(
      result: result ?? this.result,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
    );
  }

  @override
  List<Object?> get props => [result, isLoadingMore];
}
