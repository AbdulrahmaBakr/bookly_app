import 'package:bookly_app/Features/home/presentaion/widget/home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBodyView(),
    );
  }
}
