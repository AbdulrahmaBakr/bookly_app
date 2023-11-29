import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.bgColor,
      this.textColor,
      required this.text,
      this.borderRadius});
  final Color? bgColor;
  final Color? textColor;
  final String text;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 48,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: borderRadius,
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.montserrat(
              color: textColor, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
// Montserrat-Bold