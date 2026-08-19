import 'package:flutter/material.dart';
import 'package:gharib/core/routing/Routes.dart';
import 'package:gharib/src/home/presentation/screens/test_page.dart';
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
          path: Routes.test,
          name: 'test',
          builder: (context, state) => TestPage(),
        ),
      ],
    );
  }
}
