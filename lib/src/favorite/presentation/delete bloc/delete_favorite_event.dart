import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class DeleteFavoriteEvent extends Equatable {
  const DeleteFavoriteEvent();

  @override
  List<Object> get props => [];
}

class DeleteFavorite extends DeleteFavoriteEvent {
  final String hadithText;
  final BuildContext context;
  DeleteFavorite({required this.hadithText, required this.context});
  @override
  List<Object> get props => [hadithText];
}


