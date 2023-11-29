import 'package:bookly_app/core/utils/constant/AppAssets.dart';
import 'package:flutter/material.dart';

class CustomBookCard extends StatelessWidget {
  const CustomBookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage('assets/images/cover.jpg'),
          ),
        ),
      ),
    );
  }
}
