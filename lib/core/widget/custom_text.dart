import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.fontsize,
    this.color,
  });

  final String text;
  final double fontsize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .5,
      child: Text(
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        text,
        style: GoogleFonts.montserrat(
            color: color, fontWeight: FontWeight.bold, fontSize: fontsize),
      ),
    );
  }
}
