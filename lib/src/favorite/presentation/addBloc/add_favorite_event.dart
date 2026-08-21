import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:gharib/src/home/domin/entity/hadith_entity.dart';

abstract class AddFavoriteEvent extends Equatable {
  const AddFavoriteEvent();

  @override
  List<Object> get props => [];
}

class AddFavorite extends AddFavoriteEvent {
  final HadithEntity hadith;
  final BuildContext context ;
  AddFavorite({required this.hadith, required this.context});

  @override
  List<Object> get props => [hadith , context];
}
