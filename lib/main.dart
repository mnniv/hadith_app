import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gharib/core/routing/Routes.dart';
import 'package:gharib/src/App/app.dart';
import 'package:gharib/src/favorite/presentation/addBloc/add_favorite_bloc.dart';
import 'package:gharib/src/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:gharib/src/favorite/presentation/delete%20bloc/delete_favorite_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientations
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Set system UI overlay style
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(MultiBlocProvider(
    providers: [
        BlocProvider(create: (context) => AddFavoriteBloc()),
        BlocProvider(create: (context) => DeleteFavoriteBloc()),
        BlocProvider(create: (context) => FavoriteBloc()),
      ],
    child: MainApp(startRoute: Routes.main)));
}
