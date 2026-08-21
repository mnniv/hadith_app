import 'package:equatable/equatable.dart';

abstract class DeleteFavoriteState extends Equatable {
  const DeleteFavoriteState();

  @override
  List<Object> get props => [];
}

class DeleteFavoriteInitial extends DeleteFavoriteState {}

class DeleteFavoriteError extends DeleteFavoriteState {}

class DeleteFavoriteSucces extends DeleteFavoriteState {
  DeleteFavoriteSucces();
}
