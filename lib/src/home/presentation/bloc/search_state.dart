import 'package:equatable/equatable.dart';
import 'package:gharib/src/home/domin/entity/search_resault_entity.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}
class SearchLoading extends SearchState {}

class NoInternet extends SearchState {}

class Error extends SearchState {}

class SearchSeccess extends SearchState {
  final SearchResult? result;

  @override
  SearchSeccess({required this.result});
}
