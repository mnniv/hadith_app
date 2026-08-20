import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class NavBarEvent extends Equatable {
  const NavBarEvent();

  @override
  List<Object?> get props => [];
}

class NavBarItemSelected extends NavBarEvent {
  final int index;
  final BuildContext context;


  const NavBarItemSelected(this.index,this.context);

  @override
  List<Object?> get props => [index];
}
