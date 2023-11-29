import 'package:bookly_app/core/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      height: 130,
      child: Row(
        children: [
          Image.asset(
            'assets/images/bg_test.png',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: 'Harry Potter and the Goblet of Fire',
                  fontsize: 20,
                ),
                const SizedBox(height: 10),
                const CustomText(
                  text: 'J.K. Rowling',
                  fontsize: 18,
                  color: Color.fromARGB(125, 255, 255, 255),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(width: 39),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 13,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '4.6',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '(2390)',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: const Color.fromARGB(125, 255, 255, 255),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
