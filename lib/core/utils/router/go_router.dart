import 'package:bookly_app/Features/Splash/splash_view.dart';
import 'package:bookly_app/Features/details/presentation/widget/details_body.dart';
 import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: '/HomeView',
        builder: (BuildContext context, GoRouterState state) {
          return const DetailsBodyView();
        },
      ),
    ],
  );
}
