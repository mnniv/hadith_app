import 'package:equatable/equatable.dart';
import 'package:gharib/src/home/data/model/hadith_model.dart';

abstract class FavoriteState extends Equatable {
  const FavoriteState();

  @override
  List<Object> get props => [];
}

class GetFavoriteInitial extends FavoriteState {}



class FavoriteError extends FavoriteState {}

class FavoriteSeccess extends FavoriteState {
  final List<HadithModel> favorites;
  @override
  List<Object> get props => [favorites];
  FavoriteSeccess({required this.favorites});
}
