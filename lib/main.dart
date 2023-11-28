
import 'package:bookly_app/Features/Splash/widget/splash_body.dart';
import 'package:bookly_app/core/utils/constant/AppColors.dart';
import 'package:bookly_app/core/utils/router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: AppColors.primaryColor),
    );
  }
}
