import 'package:flutter/material.dart';

class LikeDetailCard extends StatelessWidget {
  const LikeDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78,
      height: 124,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('assets/images/cover.jpg'),
        ),
      ),
    );
  }
}
