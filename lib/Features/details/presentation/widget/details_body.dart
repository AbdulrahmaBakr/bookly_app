import 'package:bookly_app/Features/details/presentation/widget/custom_button.dart';
import 'package:bookly_app/Features/details/presentation/widget/custom_like_card.dart';
import 'package:bookly_app/Features/home/presentaion/widget/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentaion/widget/custom_book_card.dart';
import 'package:bookly_app/core/utils/constant/AppString.dart';
import 'package:bookly_app/core/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsBodyView extends StatelessWidget {
  const DetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: IconButton(
            icon: const Icon(
              Icons.exit_to_app_outlined,
              size: 32,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.store_mall_directory,
              size: 32,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .2,
              ),
              child: const CustomBookCard(),
            ),
            const SizedBox(height: 48),
            Text(
              'The Jungle Book',
              style: GoogleFonts.aBeeZee(fontSize: 30),
            ),
            const SizedBox(height: 6),
            const CustomText(
              textAlign: TextAlign.center,
              text: 'Rudyard Kipling',
              fontsize: 18,
              color: Color.fromARGB(125, 255, 255, 255),
            ),
            const SizedBox(height: 17),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
            ),
            const SizedBox(height: 17),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: '19.99€',
                  bgColor: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  textColor: Colors.black,
                ),
                CustomButton(
                  text: 'Free preview',
                  bgColor: Color(0xffEF8262),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                )
              ],
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(fontsize: 14, text: 'You can also like')),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const LikeDetailCard();
                    },
                    separatorBuilder: (context, index) {
                      return const VerticalDivider(
                        width: 6,
                      );
                    },
                    itemCount: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
