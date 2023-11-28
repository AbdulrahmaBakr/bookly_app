import 'package:bookly_app/Features/details/presentation/widget/details_body.dart';
import 'package:bookly_app/core/utils/constant/AppAssets.dart';
import 'package:bookly_app/core/utils/constant/AppString.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashBodyView extends StatefulWidget {
  const SplashBodyView({super.key});

  @override
  State<SplashBodyView> createState() => _SplashBodyViewState();
}

class _SplashBodyViewState extends State<SplashBodyView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 5),
      () {
        GoRouter.of(context).push('/HomeView');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.appLogo,
              width: 300,
            ),
            const SizedBox(height: 20),
            const Text(
              AppString.logoSign,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
