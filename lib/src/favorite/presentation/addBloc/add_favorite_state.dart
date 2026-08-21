import 'package:equatable/equatable.dart';

abstract class AddFavoriteState extends Equatable {
  const AddFavoriteState();
  @override
  List<Object> get props => [];
}

class AddFavoriteInitial extends AddFavoriteState {}

class AddFavoriteLoding extends AddFavoriteState {}

class AddFavoriteError extends AddFavoriteState {}

class AddFavoriteSeccess extends AddFavoriteState {
  AddFavoriteSeccess();
}
