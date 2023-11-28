 import 'package:bookly_app/core/utils/constant/AppAssets.dart';
import 'package:flutter/material.dart';
 
class CustomBookCard extends StatelessWidget {
  const CustomBookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 129,
      height: 193,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.bgTest),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 15,
            right: 10,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(73, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
