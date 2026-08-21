import 'package:equatable/equatable.dart';

abstract class FavoriteEvent extends Equatable {
  const FavoriteEvent();

  @override
  List<Object> get props => [];
}

class GetFavorites extends FavoriteEvent {
  GetFavorites();
  @override
  List<Object> get props => [];
}
