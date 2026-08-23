import 'package:flutter/material.dart';
import 'package:gharib/core/routing/Routes.dart';
import 'package:gharib/src/hadith_details/presentation/hadith_details.dart';
import 'package:gharib/src/home/domin/entity/hadith_entity.dart';
import 'package:gharib/src/home/presentation/screens/main_page.dart';
import 'package:go_router/go_router.dart';
import '../../src/home/presentation/screens/home_page.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorkey =
      GlobalKey<NavigatorState>();

  static GoRouter buildRouter(String startRoute) {
    return GoRouter(
      navigatorKey: navigatorkey,
      initialLocation: startRoute,
      routes: [
        GoRoute(
          path: Routes.home,
          name: 'home',
          builder: (context, state) => HomePage(),
        ),

      
        GoRoute(
          path: Routes.main,
          name: 'main',
          builder: (context, state) => MainPage(),
        ),
        GoRoute(
          path: Routes.hadithDetails,
          name: 'hadithDetails',
          builder: (context, state) {
            final hadith = state.extra as HadithEntity;
            return HadithDetails(hadith: hadith);
          },
        ),
      ],
    );
  }
}
