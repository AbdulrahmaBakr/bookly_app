import 'package:bookly_app/Features/details/presentation/widget/details_body.dart';
import 'package:bookly_app/core/utils/constant/AppAssets.dart';
import 'package:bookly_app/core/utils/constant/AppString.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      Get.to(() => const DetailsBodyView(),
          transition: Transition.rightToLeft,
          duration: const Duration(milliseconds: 250));
    });
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
