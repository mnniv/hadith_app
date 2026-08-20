import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gharib/src/home/presentation/main_bloc/main_event.dart';
import 'package:gharib/src/home/presentation/main_bloc/main_state.dart';

class NavBarBloc extends Bloc<NavBarEvent, NavBarState> {
  NavBarBloc() : super(const NavBarState(selectedIndex: 0)) {
    on<NavBarItemSelected>((event, emit) {
      emit(state.copyWith(selectedIndex: event.index));
    });
  }
}
